@interface PGRankedZeroKeyword
- (BOOL)isEqual:(id)a3;
- (PGRankedZeroKeyword)initWithKeyword:(id)a3 score:(double)a4;
@end

@implementation PGRankedZeroKeyword

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PGRankedZeroKeyword *)self zeroKeyword];
  v6 = [v4 zeroKeyword];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (PGRankedZeroKeyword)initWithKeyword:(id)a3 score:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGRankedZeroKeyword;
  v8 = [(PGRankedZeroKeyword *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_zeroKeyword, a3);
    v9->_score = a4;
  }

  return v9;
}

@end