@interface _SFSymmetricKeySpecifier
- (int64_t)keyLengthInBytes;
@end

@implementation _SFSymmetricKeySpecifier

- (int64_t)keyLengthInBytes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"SFKey.m" lineNumber:223 description:{@"%@ key specifiers are not yet supported", v6}];

  return 0;
}

@end