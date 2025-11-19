@interface SXFollowingCondition
- (SXFollowingCondition)initWithFollowing:(BOOL)a3 tagIdentifier:(id)a4;
@end

@implementation SXFollowingCondition

- (SXFollowingCondition)initWithFollowing:(BOOL)a3 tagIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SXFollowingCondition;
  v8 = [(SXFollowingCondition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_following = a3;
    objc_storeStrong(&v8->_tagIdentifier, a4);
  }

  return v9;
}

@end