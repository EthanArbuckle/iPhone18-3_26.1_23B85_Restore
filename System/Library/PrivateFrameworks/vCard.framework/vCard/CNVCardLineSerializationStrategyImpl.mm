@interface CNVCardLineSerializationStrategyImpl
+ (id)serializerWithStorage:(id)storage;
- (CNVCardLineSerializationStrategyImpl)initWithStorage:(id)storage;
- (void)insertLine:(id)line atMarker:(id)marker;
- (void)serializeLine:(id)line;
- (void)serializeOpaqueValue:(id)value;
@end

@implementation CNVCardLineSerializationStrategyImpl

+ (id)serializerWithStorage:(id)storage
{
  storageCopy = storage;
  v5 = [[self alloc] initWithStorage:storageCopy];

  return v5;
}

- (CNVCardLineSerializationStrategyImpl)initWithStorage:(id)storage
{
  storageCopy = storage;
  v6 = [(CNVCardLineSerializationStrategyImpl *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, storage);
    v8 = v7;
  }

  return v7;
}

- (void)serializeLine:(id)line
{
  lineCopy = line;
  if ([lineCopy canSerializeWithStrategy:self])
  {
    [(CNVCardLineSerializationStrategyImpl *)self willSerializeValue];
    groupingName = [lineCopy groupingName];
    [(CNVCardLineSerializationStrategyImpl *)self serializeGroupingName:groupingName];

    name = [lineCopy name];
    [(CNVCardLineSerializationStrategyImpl *)self serializeName:name];

    parameters = [lineCopy parameters];
    [(CNVCardLineSerializationStrategyImpl *)self serializeParameters:parameters];

    [lineCopy serializeValueWithStrategy:self];
    [(CNVCardSerializationStorage *)self->_storage appendString:CNVCardLineDelimiter];
    groupedLines = [lineCopy groupedLines];
    groupingName2 = [lineCopy groupingName];
    [(CNVCardLineSerializationStrategyImpl *)self serializeGroupedLines:groupedLines withGroupingName:groupingName2];
  }
}

- (void)serializeOpaqueValue:(id)value
{
  valueCopy = value;
  if (((*(*MEMORY[0x277CFBD00] + 16))() & 1) == 0)
  {
    [(CNVCardSerializationStorage *)self->_storage appendData:valueCopy];
    [(CNVCardSerializationStorage *)self->_storage appendString:CNVCardLineDelimiter];
  }
}

- (void)insertLine:(id)line atMarker:(id)marker
{
  v6 = MEMORY[0x277CCAB68];
  markerCopy = marker;
  lineCopy = line;
  string = [v6 string];
  v9 = [CNVCardSerializationStorage storageWithString:string];
  v10 = [objc_alloc(objc_opt_class()) initWithStorage:v9];
  [lineCopy serializeWithStrategy:v10];

  [(CNVCardSerializationStorage *)self->_storage insertString:string atMarker:markerCopy];
}

@end