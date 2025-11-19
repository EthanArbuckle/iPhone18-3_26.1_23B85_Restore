@interface NSXPCConnection(PGAdditions)
- (id)PG_remoteObjectProxyWithDebugMethodAndPointerProem:()PGAdditions errorHandler:;
- (uint64_t)PG_hasScreenSharingEntitlement;
@end

@implementation NSXPCConnection(PGAdditions)

- (id)PG_remoteObjectProxyWithDebugMethodAndPointerProem:()PGAdditions errorHandler:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__NSXPCConnection_PGAdditions__PG_remoteObjectProxyWithDebugMethodAndPointerProem_errorHandler___block_invoke;
  v12[3] = &unk_1E7F33E78;
  v13 = v6;
  v14 = a1;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [a1 remoteObjectProxyWithErrorHandler:v12];

  return v10;
}

- (uint64_t)PG_hasScreenSharingEntitlement
{
  v1 = [a1 valueForEntitlement:@"com.apple.pegasus.canShowScreenSharing"];
  v2 = [v1 isEqualToNumber:MEMORY[0x1E695E118]];

  return v2;
}

@end