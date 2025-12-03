@interface PLXPCCoder
+ (id)userInfoForCoder:(id)coder;
@end

@implementation PLXPCCoder

+ (id)userInfoForCoder:(id)coder
{
  coderCopy = coder;
  if (coderCopy)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertRespondsToSelector(id  _Nullable __strong, SEL _Nonnull)"}];
      v9 = NSStringFromSelector(sel_userInfo);
      [currentHandler handleFailureInFunction:v8 file:@"PLHelperExtension.h" lineNumber:91 description:{@"Object does not respond to selector %@: %@", v9, coderCopy}];
    }

    v4 = coderCopy;
  }

  userInfo = [coderCopy userInfo];

  return userInfo;
}

@end