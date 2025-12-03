@interface RBSRequest
- (RBSRequest)init;
- (id)_init;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSRequest

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RBSRequest;
  return [(RBSRequest *)&v3 init];
}

- (RBSRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSRequest.m" lineNumber:23 description:@"-init is not allowed on RBSRequest"];

  return 0;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5 = objc_opt_class();

  MEMORY[0x1EEDC70C8](self, a2, v5);
}

@end