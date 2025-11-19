@interface TwinEmbeddingTransformerPortraitInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation TwinEmbeddingTransformerPortraitInput

- (NSSet)featureNames
{

  sub_270286820(&unk_288035BD8);
  swift_arrayDestroy();

  v2 = sub_2702B424C();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_2702B402C();
  v5 = v4;

  v6 = sub_270257038(v3, v5);

  return v6;
}

@end