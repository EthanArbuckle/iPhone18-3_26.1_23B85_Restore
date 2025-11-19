@interface CNVCardLine21SerializationStrategy
+ (id)serializerWithStorage:(id)a3 encodings:(id)a4;
- (CNVCardLine21SerializationStrategy)initWithStorage:(id)a3;
- (CNVCardLine21SerializationStrategy)initWithStorage:(id)a3 encodings:(id)a4;
- (id)detectedTypeOfData:(id)a3;
- (id)necessaryEncodingForValue:(id)a3;
- (void)_addAutomagicParametersForData:(id)a3;
- (void)serializeArray:(id)a3 withItemSeparator:(id)a4;
- (void)serializeData:(id)a3;
- (void)serializeParameters:(id)a3;
- (void)serializeString:(id)a3;
@end

@implementation CNVCardLine21SerializationStrategy

+ (id)serializerWithStorage:(id)a3 encodings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithStorage:v7 encodings:v6];

  return v8;
}

- (CNVCardLine21SerializationStrategy)initWithStorage:(id)a3
{
  v4 = a3;
  v5 = +[CNVCardEncoding encodingsFromUserDefaults];
  v6 = [(CNVCardLine21SerializationStrategy *)self initWithStorage:v4 encodings:v5];

  return v6;
}

- (CNVCardLine21SerializationStrategy)initWithStorage:(id)a3 encodings:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CNVCardLine21SerializationStrategy;
  v7 = [(CNVCardLineSerializationStrategyImpl *)&v12 initWithStorage:a3];
  if (v7)
  {
    v8 = [v6 copy];
    encodings = v7->_encodings;
    v7->_encodings = v8;

    v10 = v7;
  }

  return v7;
}

- (void)serializeParameters:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 _cn_map:&__block_literal_global_134];
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

- (void)serializeString:(id)a3
{
  v4 = a3;
  v11 = [(CNVCardLine21SerializationStrategy *)self necessaryEncodingForValue:v4];
  v5 = [v11 name];
  v6 = [v5 isEqualToString:@"ASCII"];

  if ((v6 & 1) == 0)
  {
    storage = self->super._storage;
    v8 = [v11 name];
    [(CNVCardSerializationStorage *)storage appendFormat:@";CHARSET=%@", v8];
  }

  [(CNVCardSerializationStorage *)self->super._storage appendString:@":"];
  v9 = self->super._storage;
  v10 = [CNVCardValueEncoder encodeValue:v4];

  -[CNVCardSerializationStorage appendString:usingEncoding:](v9, "appendString:usingEncoding:", v10, [v11 stringEncoding]);
}

- (void)serializeArray:(id)a3 withItemSeparator:(id)a4
{
  v14 = a4;
  v6 = [a3 _cn_map:&__block_literal_global_142];
  if (v14)
  {
    v7 = v14;
  }

  else
  {
    v7 = @";";
  }

  v8 = [v6 componentsJoinedByString:v7];
  v9 = [(CNVCardLine21SerializationStrategy *)self necessaryEncodingForValue:v8];
  v10 = [v9 name];
  v11 = [v10 isEqualToString:@"ASCII"];

  if ((v11 & 1) == 0)
  {
    storage = self->super._storage;
    v13 = [v9 name];
    [(CNVCardSerializationStorage *)storage appendFormat:@";CHARSET=%@", v13];
  }

  [(CNVCardSerializationStorage *)self->super._storage appendString:@":"];
  -[CNVCardSerializationStorage appendString:usingEncoding:](self->super._storage, "appendString:usingEncoding:", v8, [v9 stringEncoding]);
}

- (void)serializeData:(id)a3
{
  v4 = a3;
  [(CNVCardLine21SerializationStrategy *)self _addAutomagicParametersForData:v4];
  [(CNVCardSerializationStorage *)self->super._storage appendFormat:@":%@ ", CNVCardLineDelimiter];
  v6 = [v4 _cn_encodeVCardBase64DataWithInitialLength:1];

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:1];
  [(CNVCardSerializationStorage *)self->super._storage appendString:v5];
}

- (void)_addAutomagicParametersForData:(id)a3
{
  storage = self->super._storage;
  v5 = a3;
  [(CNVCardSerializationStorage *)storage appendString:@";ENCODING=BASE64"];
  v6 = [(CNVCardLine21SerializationStrategy *)self detectedTypeOfData:v5];

  if (v6)
  {
    [(CNVCardSerializationStorage *)self->super._storage appendFormat:@";TYPE=%@", v6];
  }

  MEMORY[0x2821F96F8]();
}

- (id)detectedTypeOfData:(id)a3
{
  if ([CNVCardData isJPEGData:a3])
  {
    return @"JPEG";
  }

  else
  {
    return 0;
  }
}

- (id)necessaryEncodingForValue:(id)a3
{
  v4 = a3;
  encodings = self->_encodings;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CNVCardLine21SerializationStrategy_necessaryEncodingForValue___block_invoke;
  v9[3] = &unk_27A711198;
  v6 = v4;
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