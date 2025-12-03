@interface NSMutableArray(RemoteUIAdditions)
- (void)_remoteUI_addObjectIfNotNil:()RemoteUIAdditions;
@end

@implementation NSMutableArray(RemoteUIAdditions)

- (void)_remoteUI_addObjectIfNotNil:()RemoteUIAdditions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end