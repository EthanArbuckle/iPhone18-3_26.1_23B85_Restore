@interface _REElementRankerWrapper
- (BOOL)shouldHideElement:(id)element;
@end

@implementation _REElementRankerWrapper

- (BOOL)shouldHideElement:(id)element
{
  if (!element)
  {
    return 0;
  }

  featureMapGenerator = self->_featureMapGenerator;
  if (!featureMapGenerator)
  {
    return 0;
  }

  v5 = featureMapGenerator[2];
  elementCopy = element;
  v7 = v5(featureMapGenerator, elementCopy);
  v8 = [REMLElement alloc];
  identifier = [elementCopy identifier];

  v10 = [(REMLElement *)v8 initWithIdentifier:identifier featureMap:v7];
  v11 = [(REMLElementComparator *)self->_comparator shouldHideElement:v10];

  return v11;
}

@end