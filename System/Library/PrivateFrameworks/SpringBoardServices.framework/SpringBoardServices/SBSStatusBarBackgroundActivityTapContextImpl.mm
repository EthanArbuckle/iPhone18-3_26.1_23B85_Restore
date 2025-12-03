@interface SBSStatusBarBackgroundActivityTapContextImpl
- (SBSStatusBarBackgroundActivityTapContextImpl)initWithBackgroundActivityIdentifier:(id)identifier;
- (SBSStatusBarBackgroundActivityTapContextImpl)initWithCoder:(id)coder;
@end

@implementation SBSStatusBarBackgroundActivityTapContextImpl

- (SBSStatusBarBackgroundActivityTapContextImpl)initWithBackgroundActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBSStatusBarBackgroundActivityTapContextImpl;
  v6 = [(SBSStatusBarBackgroundActivityTapContextImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backgroundActivityIdentifier, identifier);
  }

  return v7;
}

- (SBSStatusBarBackgroundActivityTapContextImpl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SBSStatusBarBackgroundActivityTapContextImpl;
  v5 = [(SBSStatusBarBackgroundActivityTapContextImpl *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSBSStatusBarTapContextBackgroundActivityIdentifierKey"];
    backgroundActivityIdentifier = v5->_backgroundActivityIdentifier;
    v5->_backgroundActivityIdentifier = v6;
  }

  return v5;
}

@end