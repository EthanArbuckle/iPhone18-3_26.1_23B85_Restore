@interface NSString(UISafeInstantiators)
- (uint64_t)_initWithUTF8String:()UISafeInstantiators maxLength:;
@end

@implementation NSString(UISafeInstantiators)

- (uint64_t)_initWithUTF8String:()UISafeInstantiators maxLength:
{
  v7 = memchr(__s, 0, __n);
  if (v7)
  {
    v8 = v7 - __s;
  }

  else
  {
    v8 = __n;
  }

  return [self initWithBytes:__s length:v8 encoding:4];
}

@end