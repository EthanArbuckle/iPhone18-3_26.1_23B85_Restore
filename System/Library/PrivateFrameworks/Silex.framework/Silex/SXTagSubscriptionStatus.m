@interface SXTagSubscriptionStatus
- (BOOL)isEqual:(id)a3;
- (SXTagSubscriptionStatus)initWithFollowing:(BOOL)a3 tags:(id)a4;
- (id)description;
@end

@implementation SXTagSubscriptionStatus

- (SXTagSubscriptionStatus)initWithFollowing:(BOOL)a3 tags:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SXTagSubscriptionStatus;
  v8 = [(SXTagSubscriptionStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_following = a3;
    objc_storeStrong(&v8->_tags, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if (self->_following == v4->_following)
  {
    v5 = [(NSArray *)self->_tags isEqualToArray:v4->_tags];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = v3;
  if (self->_following)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"; following: %@", v5];
  [v4 appendFormat:@"; tags: %@", self->_tags];
  [v4 appendString:@">"];

  return v4;
}

@end