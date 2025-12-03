@interface CNVCardLineSerializationStrategy
+ (id)version21StrategyWithDataStorage:(id)storage encodings:(id)encodings;
+ (id)version21StrategyWithStringStorage:(id)storage encodings:(id)encodings;
+ (id)version30StrategyWithDataStorage:(id)storage;
+ (id)version30StrategyWithStringStorage:(id)storage;
@end

@implementation CNVCardLineSerializationStrategy

+ (id)version30StrategyWithStringStorage:(id)storage
{
  v3 = [CNVCardSerializationStorage storageWithString:storage];
  v4 = [(CNVCardLineSerializationStrategyImpl *)CNVCardLine30SerializationStrategy serializerWithStorage:v3];

  return v4;
}

+ (id)version21StrategyWithStringStorage:(id)storage encodings:(id)encodings
{
  encodingsCopy = encodings;
  v6 = [CNVCardSerializationStorage storageWithString:storage];
  if (![encodingsCopy count])
  {
    v7 = +[CNVCardEncoding standardEncodings];

    encodingsCopy = v7;
  }

  v8 = [CNVCardLine21SerializationStrategy serializerWithStorage:v6 encodings:encodingsCopy];

  return v8;
}

+ (id)version30StrategyWithDataStorage:(id)storage
{
  v3 = [CNVCardSerializationStorage storageWithData:storage];
  v4 = [(CNVCardLineSerializationStrategyImpl *)CNVCardLine30SerializationStrategy serializerWithStorage:v3];

  return v4;
}

+ (id)version21StrategyWithDataStorage:(id)storage encodings:(id)encodings
{
  encodingsCopy = encodings;
  v6 = [CNVCardSerializationStorage storageWithData:storage];
  if (![encodingsCopy count])
  {
    v7 = +[CNVCardEncoding standardEncodings];

    encodingsCopy = v7;
  }

  v8 = [CNVCardLine21SerializationStrategy serializerWithStorage:v6 encodings:encodingsCopy];

  return v8;
}

@end