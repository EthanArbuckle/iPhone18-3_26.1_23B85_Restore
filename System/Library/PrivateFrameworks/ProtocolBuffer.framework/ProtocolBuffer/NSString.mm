@interface NSString
- (id)camelCase;
@end

@implementation NSString

- (id)camelCase
{
  if (self)
  {
    self = [self _pb_fixCase:0];
    v1 = vars8;
  }

  return self;
}

@end