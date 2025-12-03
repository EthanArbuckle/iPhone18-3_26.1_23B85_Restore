@interface SXIssueCoverLayoutAttributesFactory
- (id)createAttributesWithIssueCover:(id)cover options:(id)options;
@end

@implementation SXIssueCoverLayoutAttributesFactory

- (id)createAttributesWithIssueCover:(id)cover options:(id)options
{
  optionsCopy = options;
  v5 = [SXIssueCoverLayoutAttributes alloc];
  [optionsCopy boundingWidth];
  v7 = v6;
  [optionsCopy boundingWidth];
  v9 = v8;

  v10 = [(SXIssueCoverLayoutAttributes *)v5 initWithFrame:0.0, 0.0, v7, v9 / 0.75];

  return v10;
}

@end