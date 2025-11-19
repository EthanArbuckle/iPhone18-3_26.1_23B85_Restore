@interface CSDClient
- (BOOL)hasVoIPNetworkExtensionEntitlement;
- (BOOL)isProcessSuspended;
- (CSDClient)initWithObject:(id)a3 queue:(id)a4;
- (NSString)processBundleIdentifier;
- (NSString)processName;
- (NSString)propertiesDescription;
- (id)description;
- (int)processIdentifier;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 coalescedByIdentifier:(id)a4;
@end

@implementation CSDClient

- (NSString)propertiesDescription
{
  v3 = [(CSDClient *)self object];
  v4 = [(CSDClient *)self processIdentifier];
  v5 = [(CSDClient *)self processName];
  v6 = [(CSDClient *)self processBundleIdentifier];
  v7 = [NSString stringWithFormat:@"object=%@ processIdentifier=%d processName=%@ processBundleIdentifier=%@", v3, v4, v5, v6];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(CSDClient *)self propertiesDescription];
  v5 = [NSString stringWithFormat:@"<%@: %p %@>", v3, self, v4];

  return v5;
}

- (BOOL)isProcessSuspended
{
  v3 = [(CSDClient *)self processHandle];

  if (!v3)
  {
    v4 = [RBSProcessIdentifier identifierWithPid:[(CSDClient *)self processIdentifier]];
    v5 = [RBSProcessHandle handleForIdentifier:v4 error:0];
    [(CSDClient *)self setProcessHandle:v5];
  }

  v6 = [(CSDClient *)self processHandle];
  v7 = [v6 currentState];
  v8 = [v7 taskState] == 3;

  return v8;
}

- (NSString)processName
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processName];

  return v3;
}

- (BOOL)hasVoIPNetworkExtensionEntitlement
{
  v2 = [(CSDClient *)self valueForEntitlement:@"com.apple.developer.networking.networkextension"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 containsObject:@"app-push-provider"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CSDClient)initWithObject:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CSDClient;
  v9 = [(CSDClient *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, a3);
    objc_storeStrong(&v10->_queue, a4);
    v11 = +[NSMutableSet set];
    identifiersWithPendingCoalescingBlocks = v10->_identifiersWithPendingCoalescingBlocks;
    v10->_identifiersWithPendingCoalescingBlocks = v11;

    v13 = +[NSMutableDictionary dictionary];
    blockToExecuteAfterPendingCoalescingBlocksByIdentifier = v10->_blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
    v10->_blockToExecuteAfterPendingCoalescingBlocksByIdentifier = v13;
  }

  return v10;
}

- (void)performBlock:(id)a3
{
  v5 = a3;
  v6 = [(CSDClient *)self objectForBlock];
  (*(a3 + 2))(v5, self, v6);
}

- (void)performBlock:(id)a3 coalescedByIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDClient *)self identifiersWithPendingCoalescingBlocks];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v10 = objc_retainBlock(v6);
    v11 = [(CSDClient *)self blockToExecuteAfterPendingCoalescingBlocksByIdentifier];
    [v11 setObject:v10 forKeyedSubscript:v7];
  }

  else
  {
    v12 = [(CSDClient *)self identifiersWithPendingCoalescingBlocks];
    [v12 addObject:v7];

    v13 = [(CSDClient *)self objectForBlock];
    (*(v6 + 2))(v6, self, v13);

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001E7F38;
    v14[3] = &unk_100619D88;
    v14[4] = self;
    v15 = v7;
    [(CSDClient *)self performBlockAfterCoalescing:v14];
  }
}

- (int)processIdentifier
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processIdentifier];

  return v3;
}

- (NSString)processBundleIdentifier
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end