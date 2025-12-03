@interface SXFollowingCondition
- (SXFollowingCondition)initWithFollowing:(BOOL)following tagIdentifier:(id)identifier;
@end

@implementation SXFollowingCondition

- (SXFollowingCondition)initWithFollowing:(BOOL)following tagIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SXFollowingCondition;
  v8 = [(SXFollowingCondition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_following = following;
    objc_storeStrong(&v8->_tagIdentifier, identifier);
  }

  return v9;
}

@end