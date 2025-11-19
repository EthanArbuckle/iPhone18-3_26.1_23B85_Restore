@interface _REElementRankerWrapper
- (BOOL)shouldHideElement:(id)a3;
@end

@implementation _REElementRankerWrapper

- (BOOL)shouldHideElement:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  featureMapGenerator = self->_featureMapGenerator;
  if (!featureMapGenerator)
  {
    return 0;
  }

  v5 = featureMapGenerator[2];
  v6 = a3;
  v7 = v5(featureMapGenerator, v6);
  v8 = [REMLElement alloc];
  v9 = [v6 identifier];

  v10 = [(REMLElement *)v8 initWithIdentifier:v9 featureMap:v7];
  v11 = [(REMLElementComparator *)self->_comparator shouldHideElement:v10];

  return v11;
}

@end