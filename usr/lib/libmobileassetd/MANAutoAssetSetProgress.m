@interface MANAutoAssetSetProgress
- (BOOL)isEqual:(id)a3;
- (MANAutoAssetSetProgress)init;
- (MANAutoAssetSetProgress)initWithCoder:(id)a3;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetProgress

- (MANAutoAssetSetProgress)init
{
  v3.receiver = self;
  v3.super_class = MANAutoAssetSetProgress;
  result = [(MANAutoAssetSetProgress *)&v3 init];
  if (result)
  {
    result->_isStalled = 0;
    *&result->_downloadedAssetCount = 0u;
    *&result->_totalExpectedBytes = 0u;
    result->_expectedTimeRemainingSecs = 0.0;
  }

  return result;
}

- (MANAutoAssetSetProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MANAutoAssetSetProgress;
  v5 = [(MANAutoAssetSetProgress *)&v8 init];
  if (v5)
  {
    v5->_downloadedAssetCount = [v4 decodeInt64ForKey:@"downloadedAssetCount"];
    v5->_remainingAssetCount = [v4 decodeInt64ForKey:@"remainingAssetCount"];
    v5->_totalExpectedBytes = [v4 decodeInt64ForKey:@"totalExpectedBytes"];
    v5->_totalWrittenBytes = [v4 decodeInt64ForKey:@"totalWrittenBytes"];
    v5->_isStalled = [v4 decodeBoolForKey:@"isStalled"];
    [v4 decodeFloatForKey:@"expectedTimeRemainingSecs"];
    v5->_expectedTimeRemainingSecs = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:-[MANAutoAssetSetProgress downloadedAssetCount](self forKey:{"downloadedAssetCount"), @"downloadedAssetCount"}];
  [v5 encodeInt64:-[MANAutoAssetSetProgress remainingAssetCount](self forKey:{"remainingAssetCount"), @"remainingAssetCount"}];
  [v5 encodeInt64:-[MANAutoAssetSetProgress totalExpectedBytes](self forKey:{"totalExpectedBytes"), @"totalExpectedBytes"}];
  [v5 encodeInt64:-[MANAutoAssetSetProgress totalWrittenBytes](self forKey:{"totalWrittenBytes"), @"totalWrittenBytes"}];
  [v5 encodeBool:-[MANAutoAssetSetProgress isStalled](self forKey:{"isStalled"), @"isStalled"}];
  [(MANAutoAssetSetProgress *)self expectedTimeRemainingSecs];
  *&v4 = v4;
  [v5 encodeFloat:@"expectedTimeRemainingSecs" forKey:v4];
}

- (id)copy
{
  v3 = objc_alloc_init(MANAutoAssetSetProgress);
  [(MANAutoAssetSetProgress *)v3 setDownloadedAssetCount:[(MANAutoAssetSetProgress *)self downloadedAssetCount]];
  [(MANAutoAssetSetProgress *)v3 setRemainingAssetCount:[(MANAutoAssetSetProgress *)self remainingAssetCount]];
  [(MANAutoAssetSetProgress *)v3 setTotalExpectedBytes:[(MANAutoAssetSetProgress *)self totalExpectedBytes]];
  [(MANAutoAssetSetProgress *)v3 setTotalWrittenBytes:[(MANAutoAssetSetProgress *)self totalWrittenBytes]];
  [(MANAutoAssetSetProgress *)v3 setIsStalled:[(MANAutoAssetSetProgress *)self isStalled]];
  [(MANAutoAssetSetProgress *)self expectedTimeRemainingSecs];
  [(MANAutoAssetSetProgress *)v3 setExpectedTimeRemainingSecs:?];
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MANAutoAssetSetProgress *)v5 downloadedAssetCount];
      if (v6 == [(MANAutoAssetSetProgress *)self downloadedAssetCount]&& (v7 = [(MANAutoAssetSetProgress *)v5 remainingAssetCount], v7 == [(MANAutoAssetSetProgress *)self remainingAssetCount]) && (v8 = [(MANAutoAssetSetProgress *)v5 totalExpectedBytes], v8 == [(MANAutoAssetSetProgress *)self totalExpectedBytes]) && (v9 = [(MANAutoAssetSetProgress *)v5 totalWrittenBytes], v9 == [(MANAutoAssetSetProgress *)self totalWrittenBytes]) && (v10 = [(MANAutoAssetSetProgress *)v5 isStalled], v10 == [(MANAutoAssetSetProgress *)self isStalled]))
      {
        [(MANAutoAssetSetProgress *)v5 expectedTimeRemainingSecs];
        v14 = v13;
        [(MANAutoAssetSetProgress *)self expectedTimeRemainingSecs];
        v11 = v14 == v15;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)summary
{
  v3 = [(MANAutoAssetSetProgress *)self downloadedAssetCount];
  v4 = [(MANAutoAssetSetProgress *)self remainingAssetCount];
  v5 = [(MANAutoAssetSetProgress *)self totalExpectedBytes];
  v6 = [(MANAutoAssetSetProgress *)self totalWrittenBytes];
  if ([(MANAutoAssetSetProgress *)self isStalled])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  [(MANAutoAssetSetProgress *)self expectedTimeRemainingSecs];
  return [NSString stringWithFormat:@"downloadedCount:%lld|remainingAssetCount:%lld|expectedBytes:%lld|writtenBytes:%lld|stalled:%@|timeRemainingSecs:%f", v3, v4, v5, v6, v7, v8];
}

@end