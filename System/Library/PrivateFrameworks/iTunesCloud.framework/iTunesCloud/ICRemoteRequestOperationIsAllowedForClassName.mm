@interface ICRemoteRequestOperationIsAllowedForClassName
@end

@implementation ICRemoteRequestOperationIsAllowedForClassName

void ___ICRemoteRequestOperationIsAllowedForClassName_block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v6[0] = v1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v5 = _ICRemoteRequestOperationIsAllowedForClassName_sAllowableRemoteRequestOperationClassNames;
  _ICRemoteRequestOperationIsAllowedForClassName_sAllowableRemoteRequestOperationClassNames = v4;
}

@end