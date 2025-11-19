@interface PGZeroKeywordMapping
- (PGZeroKeywordMapping)initWithDisplayNode:(id)a3 mappedMeaningNodes:(id)a4;
@end

@implementation PGZeroKeywordMapping

- (PGZeroKeywordMapping)initWithDisplayNode:(id)a3 mappedMeaningNodes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGZeroKeywordMapping;
  v9 = [(PGZeroKeywordMapping *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayNode, a3);
    objc_storeStrong(&v10->_mappedMeaningNodes, a4);
  }

  return v10;
}

@end