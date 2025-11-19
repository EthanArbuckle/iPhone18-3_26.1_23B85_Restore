@interface SBSStatusBarBackgroundActivityTapContextImpl
- (SBSStatusBarBackgroundActivityTapContextImpl)initWithBackgroundActivityIdentifier:(id)a3;
- (SBSStatusBarBackgroundActivityTapContextImpl)initWithCoder:(id)a3;
@end

@implementation SBSStatusBarBackgroundActivityTapContextImpl

- (SBSStatusBarBackgroundActivityTapContextImpl)initWithBackgroundActivityIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSStatusBarBackgroundActivityTapContextImpl;
  v6 = [(SBSStatusBarBackgroundActivityTapContextImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backgroundActivityIdentifier, a3);
  }

  return v7;
}

- (SBSStatusBarBackgroundActivityTapContextImpl)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSStatusBarBackgroundActivityTapContextImpl;
  v5 = [(SBSStatusBarBackgroundActivityTapContextImpl *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSBSStatusBarTapContextBackgroundActivityIdentifierKey"];
    backgroundActivityIdentifier = v5->_backgroundActivityIdentifier;
    v5->_backgroundActivityIdentifier = v6;
  }

  return v5;
}

@end