@interface SXIssueCover
- (SXIssueCover)initWithIssueIdentifier:(id)a3;
@end

@implementation SXIssueCover

- (SXIssueCover)initWithIssueIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SXIssueCover;
  v5 = [(SXIssueCover *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    issueIdentifier = v5->_issueIdentifier;
    v5->_issueIdentifier = v6;
  }

  return v5;
}

@end