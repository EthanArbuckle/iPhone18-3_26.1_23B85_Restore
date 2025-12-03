@interface SXTagSubscriptionStatus
- (BOOL)isEqual:(id)equal;
- (SXTagSubscriptionStatus)initWithFollowing:(BOOL)following tags:(id)tags;
- (id)description;
@end

@implementation SXTagSubscriptionStatus

- (SXTagSubscriptionStatus)initWithFollowing:(BOOL)following tags:(id)tags
{
  tagsCopy = tags;
  v11.receiver = self;
  v11.super_class = SXTagSubscriptionStatus;
  v8 = [(SXTagSubscriptionStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_following = following;
    objc_storeStrong(&v8->_tags, tags);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if (self->_following == equalCopy->_following)
  {
    v5 = [(NSArray *)self->_tags isEqualToArray:equalCopy->_tags];
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