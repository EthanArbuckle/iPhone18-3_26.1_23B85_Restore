@interface NSUserActivity(CSSearchableItemAttributeSet)
- (id)contentAttributeSet;
- (void)setContentAttributeSet:()CSSearchableItemAttributeSet;
@end

@implementation NSUserActivity(CSSearchableItemAttributeSet)

- (id)contentAttributeSet
{
  _internalUserActivity = [self _internalUserActivity];
  contentAttributeSet = [_internalUserActivity contentAttributeSet];

  return contentAttributeSet;
}

- (void)setContentAttributeSet:()CSSearchableItemAttributeSet
{
  v5 = a3;
  _internalUserActivity = [self _internalUserActivity];
  [_internalUserActivity setContentAttributeSet:v5];
}

@end