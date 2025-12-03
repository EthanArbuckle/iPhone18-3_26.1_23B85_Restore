@interface STShowDraftMessageUsageResult
- (STShowDraftMessageUsageResult)initWithCoder:(id)coder;
- (id)_resultDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowDraftMessageUsageResult

- (STShowDraftMessageUsageResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STShowDraftMessageUsageResult;
  v5 = [(AFSiriTaskUsageResult *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_resultCode = [coderCopy decodeIntegerForKey:@"ResultCodeKeyIdentifier"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowDraftMessageUsageResult;
  coderCopy = coder;
  [(AFSiriTaskUsageResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_resultCode forKey:{@"ResultCodeKeyIdentifier", v5.receiver, v5.super_class}];
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
  _resultDescription = [(STShowDraftMessageUsageResult *)self _resultDescription];
  [v4 appendString:_resultDescription];

  return v4;
}

@end