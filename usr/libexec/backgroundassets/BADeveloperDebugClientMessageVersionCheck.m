@interface BADeveloperDebugClientMessageVersionCheck
- (BADeveloperDebugClientMessageVersionCheck)init;
@end

@implementation BADeveloperDebugClientMessageVersionCheck

- (BADeveloperDebugClientMessageVersionCheck)init
{
  v3.receiver = self;
  v3.super_class = BADeveloperDebugClientMessageVersionCheck;
  return [(BADeveloperDebugClientMessage *)&v3 initWithMessageOperation:1];
}

@end