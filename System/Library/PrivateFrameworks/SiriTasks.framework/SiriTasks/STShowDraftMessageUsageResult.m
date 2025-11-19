@interface STShowDraftMessageUsageResult
- (STShowDraftMessageUsageResult)initWithCoder:(id)a3;
- (id)_resultDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowDraftMessageUsageResult

- (STShowDraftMessageUsageResult)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STShowDraftMessageUsageResult;
  v5 = [(AFSiriTaskUsageResult *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_resultCode = [v4 decodeIntegerForKey:@"ResultCodeKeyIdentifier"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowDraftMessageUsageResult;
  v4 = a3;
  [(AFSiriTaskUsageResult *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_resultCode forKey:{@"ResultCodeKeyIdentifier", v5.receiver, v5.super_class}];
}

- (id)_resultDescription
{
  v2 = self->_resultCode - 1;
  if (v2 > 4)
  {
    return @"NotSet";
  }

  else
  {
    return off_279C52538[v2];
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = STShowDraftMessageUsageResult;
  v3 = [(AFSiriTaskUsageResult *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 appendString:@" result: "];
  v5 = [(STShowDraftMessageUsageResult *)self _resultDescription];
  [v4 appendString:v5];

  return v4;
}

@end