@interface PGRankedZeroKeyword
- (BOOL)isEqual:(id)equal;
- (PGRankedZeroKeyword)initWithKeyword:(id)keyword score:(double)score;
@end

@implementation PGRankedZeroKeyword

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  zeroKeyword = [(PGRankedZeroKeyword *)self zeroKeyword];
  zeroKeyword2 = [equalCopy zeroKeyword];

  LOBYTE(equalCopy) = [zeroKeyword isEqual:zeroKeyword2];
  return equalCopy;
}

- (PGRankedZeroKeyword)initWithKeyword:(id)keyword score:(double)score
{
  keywordCopy = keyword;
  v11.receiver = self;
  v11.super_class = PGRankedZeroKeyword;
  v8 = [(PGRankedZeroKeyword *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_zeroKeyword, keyword);
    v9->_score = score;
  }

  return v9;
}

@end