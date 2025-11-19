@interface ICRemoteRequestOperationExecuting
+ (id)serviceInterface;
@end

@implementation ICRemoteRequestOperationExecuting

+ (id)serviceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCF118];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_performRemoteRequestOperationWithExecutionContext_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_performRemoteRequestOperationWithExecutionContext_completionHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

@end