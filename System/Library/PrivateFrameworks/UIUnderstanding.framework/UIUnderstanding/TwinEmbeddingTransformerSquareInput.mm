@interface TwinEmbeddingTransformerSquareInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation TwinEmbeddingTransformerSquareInput

- (NSSet)featureNames
{

  sub_270286820(&unk_288035C38);
  swift_arrayDestroy();

  v2 = sub_2702B424C();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_2702B402C();
  v5 = v4;

  v6 = sub_270257038(v3, v5);

  return v6;
}

@end