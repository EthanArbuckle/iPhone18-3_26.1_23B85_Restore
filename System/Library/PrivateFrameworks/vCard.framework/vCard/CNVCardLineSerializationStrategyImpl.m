@interface CNVCardLineSerializationStrategyImpl
+ (id)serializerWithStorage:(id)a3;
- (CNVCardLineSerializationStrategyImpl)initWithStorage:(id)a3;
- (void)insertLine:(id)a3 atMarker:(id)a4;
- (void)serializeLine:(id)a3;
- (void)serializeOpaqueValue:(id)a3;
@end

@implementation CNVCardLineSerializationStrategyImpl

+ (id)serializerWithStorage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStorage:v4];

  return v5;
}

- (CNVCardLineSerializationStrategyImpl)initWithStorage:(id)a3
{
  v5 = a3;
  v6 = [(CNVCardLineSerializationStrategyImpl *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
    v8 = v7;
  }

  return v7;
}

- (void)serializeLine:(id)a3
{
  v9 = a3;
  if ([v9 canSerializeWithStrategy:self])
  {
    [(CNVCardLineSerializationStrategyImpl *)self willSerializeValue];
    v4 = [v9 groupingName];
    [(CNVCardLineSerializationStrategyImpl *)self serializeGroupingName:v4];

    v5 = [v9 name];
    [(CNVCardLineSerializationStrategyImpl *)self serializeName:v5];

    v6 = [v9 parameters];
    [(CNVCardLineSerializationStrategyImpl *)self serializeParameters:v6];

    [v9 serializeValueWithStrategy:self];
    [(CNVCardSerializationStorage *)self->_storage appendString:CNVCardLineDelimiter];
    v7 = [v9 groupedLines];
    v8 = [v9 groupingName];
    [(CNVCardLineSerializationStrategyImpl *)self serializeGroupedLines:v7 withGroupingName:v8];
  }
}

- (void)serializeOpaqueValue:(id)a3
{
  v4 = a3;
  if (((*(*MEMORY[0x277CFBD00] + 16))() & 1) == 0)
  {
    [(CNVCardSerializationStorage *)self->_storage appendData:v4];
    [(CNVCardSerializationStorage *)self->_storage appendString:CNVCardLineDelimiter];
  }
}

- (void)insertLine:(id)a3 atMarker:(id)a4
{
  v6 = MEMORY[0x277CCAB68];
  v7 = a4;
  v8 = a3;
  v11 = [v6 string];
  v9 = [CNVCardSerializationStorage storageWithString:v11];
  v10 = [objc_alloc(objc_opt_class()) initWithStorage:v9];
  [v8 serializeWithStrategy:v10];

  [(CNVCardSerializationStorage *)self->_storage insertString:v11 atMarker:v7];
}

@end