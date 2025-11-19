@interface IntDictionaryFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation IntDictionaryFeatureProvider

- (NSSet)featureNames
{
  v2 = *(self + 3);

  v3 = sub_269854E34();

  return v3;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_269854A94();
  v5 = v4;

  v6 = sub_2697E30F0(v3, v5);

  return v6;
}

@end