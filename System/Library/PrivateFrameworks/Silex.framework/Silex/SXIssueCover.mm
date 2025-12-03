@interface SXIssueCover
- (SXIssueCover)initWithIssueIdentifier:(id)identifier;
@end

@implementation SXIssueCover

- (SXIssueCover)initWithIssueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SXIssueCover;
  v5 = [(SXIssueCover *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    issueIdentifier = v5->_issueIdentifier;
    v5->_issueIdentifier = v6;
  }

  return v5;
}

@end