@interface CNVCardLine21SerializationStrategy
+ (id)serializerWithStorage:(id)storage encodings:(id)encodings;
- (CNVCardLine21SerializationStrategy)initWithStorage:(id)storage;
- (CNVCardLine21SerializationStrategy)initWithStorage:(id)storage encodings:(id)encodings;
- (id)detectedTypeOfData:(id)data;
- (id)necessaryEncodingForValue:(id)value;
- (void)_addAutomagicParametersForData:(id)data;
- (void)serializeArray:(id)array withItemSeparator:(id)separator;
- (void)serializeData:(id)data;
- (void)serializeParameters:(id)parameters;
- (void)serializeString:(id)string;
@end

@implementation CNVCardLine21SerializationStrategy

+ (id)serializerWithStorage:(id)storage encodings:(id)encodings
{
  encodingsCopy = encodings;
  storageCopy = storage;
  v8 = [[self alloc] initWithStorage:storageCopy encodings:encodingsCopy];

  return v8;
}

- (CNVCardLine21SerializationStrategy)initWithStorage:(id)storage
{
  storageCopy = storage;
  v5 = +[CNVCardEncoding encodingsFromUserDefaults];
  v6 = [(CNVCardLine21SerializationStrategy *)self initWithStorage:storageCopy encodings:v5];

  return v6;
}

- (CNVCardLine21SerializationStrategy)initWithStorage:(id)storage encodings:(id)encodings
{
  encodingsCopy = encodings;
  v12.receiver = self;
  v12.super_class = CNVCardLine21SerializationStrategy;
  v7 = [(CNVCardLineSerializationStrategyImpl *)&v12 initWithStorage:storage];
  if (v7)
  {
    v8 = [encodingsCopy copy];
    encodings = v7->_encodings;
    v7->_encodings = v8;

    v10 = v7;
  }

  return v7;
}

- (void)serializeParameters:(id)parameters
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [parameters _cn_map:&__block_literal_global_134];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CNVCardSerializationStorage *)self->super._storage appendFormat:@";%@", *(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __58__CNVCardLine21SerializationStrategy_serializeParameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [CNVCardParameterEncoder encodeParameterValue:v2];

  return v3;
}

- (void)serializeString:(id)string
{
  stringCopy = string;
  v11 = [(CNVCardLine21SerializationStrategy *)self necessaryEncodingForValue:stringCopy];
  name = [v11 name];
  v6 = [name isEqualToString:@"ASCII"];

  if ((v6 & 1) == 0)
  {
    storage = self->super._storage;
    name2 = [v11 name];
    [(CNVCardSerializationStorage *)storage appendFormat:@";CHARSET=%@", name2];
  }

  [(CNVCardSerializationStorage *)self->super._storage appendString:@":"];
  v9 = self->super._storage;
  v10 = [CNVCardValueEncoder encodeValue:stringCopy];

  -[CNVCardSerializationStorage appendString:usingEncoding:](v9, "appendString:usingEncoding:", v10, [v11 stringEncoding]);
}

- (void)serializeArray:(id)array withItemSeparator:(id)separator
{
  separatorCopy = separator;
  v6 = [array _cn_map:&__block_literal_global_142];
  if (separatorCopy)
  {
    v7 = separatorCopy;
  }

  else
  {
    v7 = @";";
  }

  v8 = [v6 componentsJoinedByString:v7];
  v9 = [(CNVCardLine21SerializationStrategy *)self necessaryEncodingForValue:v8];
  name = [v9 name];
  v11 = [name isEqualToString:@"ASCII"];

  if ((v11 & 1) == 0)
  {
    storage = self->super._storage;
    name2 = [v9 name];
    [(CNVCardSerializationStorage *)storage appendFormat:@";CHARSET=%@", name2];
  }

  [(CNVCardSerializationStorage *)self->super._storage appendString:@":"];
  -[CNVCardSerializationStorage appendString:usingEncoding:](self->super._storage, "appendString:usingEncoding:", v8, [v9 stringEncoding]);
}

- (void)serializeData:(id)data
{
  dataCopy = data;
  [(CNVCardLine21SerializationStrategy *)self _addAutomagicParametersForData:dataCopy];
  [(CNVCardSerializationStorage *)self->super._storage appendFormat:@":%@ ", CNVCardLineDelimiter];
  v6 = [dataCopy _cn_encodeVCardBase64DataWithInitialLength:1];

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:1];
  [(CNVCardSerializationStorage *)self->super._storage appendString:v5];
}

- (void)_addAutomagicParametersForData:(id)data
{
  storage = self->super._storage;
  dataCopy = data;
  [(CNVCardSerializationStorage *)storage appendString:@";ENCODING=BASE64"];
  v6 = [(CNVCardLine21SerializationStrategy *)self detectedTypeOfData:dataCopy];

  if (v6)
  {
    [(CNVCardSerializationStorage *)self->super._storage appendFormat:@";TYPE=%@", v6];
  }

  MEMORY[0x2821F96F8]();
}

- (id)detectedTypeOfData:(id)data
{
  if ([CNVCardData isJPEGData:data])
  {
    return @"JPEG";
  }

  else
  {
    return 0;
  }
}

- (id)necessaryEncodingForValue:(id)value
{
  valueCopy = value;
  encodings = self->_encodings;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CNVCardLine21SerializationStrategy_necessaryEncodingForValue___block_invoke;
  v9[3] = &unk_27A711198;
  v6 = valueCopy;
  v10 = v6;
  v7 = [(NSArray *)encodings _cn_firstObjectPassingTest:v9];
  if (!v7)
  {
    v7 = +[CNVCardEncoding utf8Encoding];
  }

  return v7;
}

uint64_t __64__CNVCardLine21SerializationStrategy_necessaryEncodingForValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringEncoding];

  return [v2 canBeConvertedToEncoding:v3];
}

@end