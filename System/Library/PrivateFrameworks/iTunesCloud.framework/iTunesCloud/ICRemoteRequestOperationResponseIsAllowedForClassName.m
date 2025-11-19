@interface ICRemoteRequestOperationResponseIsAllowedForClassName
@end

@implementation ICRemoteRequestOperationResponseIsAllowedForClassName

void ___ICRemoteRequestOperationResponseIsAllowedForClassName_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v3 = _ICRemoteRequestOperationResponseIsAllowedForClassName_sAllowableRemoteRequestOperationResponseClassNames;
  _ICRemoteRequestOperationResponseIsAllowedForClassName_sAllowableRemoteRequestOperationResponseClassNames = v2;
}

@end