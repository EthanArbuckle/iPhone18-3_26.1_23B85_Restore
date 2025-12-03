@interface MANAutoAssetSetInfoEnd
- (MANAutoAssetSetInfoEnd)initWithCoder:(id)coder;
- (MANAutoAssetSetInfoEnd)initWithLockReason:(id)reason endingLockCount:(int64_t)count;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetInfoEnd

- (MANAutoAssetSetInfoEnd)initWithLockReason:(id)reason endingLockCount:(int64_t)count
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSetInfoEnd;
  v8 = [(MANAutoAssetSetInfoEnd *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endLockReason, reason);
    v9->_endLockCount = count;
  }

  return v9;
}

- (MANAutoAssetSetInfoEnd)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MANAutoAssetSetInfoEnd;
  v5 = [(MANAutoAssetSetInfoEnd *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endLockReason"];
    endLockReason = v5->_endLockReason;
    v5->_endLockReason = v6;

    v5->_endLockCount = [coderCopy decodeIntegerForKey:@"endLockCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endLockReason = [(MANAutoAssetSetInfoEnd *)self endLockReason];
  [coderCopy encodeObject:endLockReason forKey:@"endLockReason"];

  [coderCopy encodeInteger:-[MANAutoAssetSetInfoEnd endLockCount](self forKey:{"endLockCount"), @"endLockCount"}];
}

- (id)summary
{
  v3 = [[NSString alloc] initWithFormat:@"%ld", -[MANAutoAssetSetInfoEnd endLockCount](self, "endLockCount")];
  if ([(MANAutoAssetSetInfoEnd *)self endLockCount]== -1)
  {

    v3 = @"ALL";
  }

  endLockReason = [(MANAutoAssetSetInfoEnd *)self endLockReason];
  v5 = [NSString stringWithFormat:@"endLockReason:%@|endLockCount:%@", endLockReason, v3];

  return v5;
}

@end