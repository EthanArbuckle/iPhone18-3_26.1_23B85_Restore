@interface REMXPCDaemonControllerPerformerResolver
- (NSString)name;
- (void)resolveWithDaemon:(id)daemon reason:(id)reason completion:(id)completion;
@end

@implementation REMXPCDaemonControllerPerformerResolver

- (NSString)name
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return 0;
}

- (void)resolveWithDaemon:(id)daemon reason:(id)reason completion:(id)completion
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  completionCopy = completion;
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"Abstract method called -[%@ %@]", v8, v9}];

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

@end