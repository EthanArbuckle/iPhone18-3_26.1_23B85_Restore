@interface SXIssueCoverLayoutAttributesFactory
- (id)createAttributesWithIssueCover:(id)a3 options:(id)a4;
@end

@implementation SXIssueCoverLayoutAttributesFactory

- (id)createAttributesWithIssueCover:(id)a3 options:(id)a4
{
  v4 = a4;
  v5 = [SXIssueCoverLayoutAttributes alloc];
  [v4 boundingWidth];
  v7 = v6;
  [v4 boundingWidth];
  v9 = v8;

  v10 = [(SXIssueCoverLayoutAttributes *)v5 initWithFrame:0.0, 0.0, v7, v9 / 0.75];

  return v10;
}

@end