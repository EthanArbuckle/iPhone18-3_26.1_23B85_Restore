@interface NSUserActivity(SYDocumentWorkflows_Internal)
- (void)loadDocumentWithHandler:()SYDocumentWorkflows_Internal;
@end

@implementation NSUserActivity(SYDocumentWorkflows_Internal)

- (void)loadDocumentWithHandler:()SYDocumentWorkflows_Internal
{
  v8 = a3;
  v4 = [(NSUserActivity *)a1 _syDocument];
  if (!v4)
  {
    v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [NSUserActivity(SYDocumentWorkflows_Internal) loadDocumentWithHandler:v6];
    }

    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"user activity doesn't have a document." userInfo:0];
    objc_exception_throw(v7);
  }

  v5 = v4;
  v8[2](v8, v4);
}

@end