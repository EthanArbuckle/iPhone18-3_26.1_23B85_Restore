@interface CSDClient
- (BOOL)hasVoIPNetworkExtensionEntitlement;
- (BOOL)isProcessSuspended;
- (CSDClient)initWithObject:(id)object queue:(id)queue;
- (NSString)processBundleIdentifier;
- (NSString)processName;
- (NSString)propertiesDescription;
- (id)description;
- (int)processIdentifier;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block coalescedByIdentifier:(id)identifier;
@end

@implementation CSDClient

- (NSString)propertiesDescription
{
  object = [(CSDClient *)self object];
  processIdentifier = [(CSDClient *)self processIdentifier];
  processName = [(CSDClient *)self processName];
  processBundleIdentifier = [(CSDClient *)self processBundleIdentifier];
  v7 = [NSString stringWithFormat:@"object=%@ processIdentifier=%d processName=%@ processBundleIdentifier=%@", object, processIdentifier, processName, processBundleIdentifier];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  propertiesDescription = [(CSDClient *)self propertiesDescription];
  v5 = [NSString stringWithFormat:@"<%@: %p %@>", v3, self, propertiesDescription];

  return v5;
}

- (BOOL)isProcessSuspended
{
  processHandle = [(CSDClient *)self processHandle];

  if (!processHandle)
  {
    v4 = [RBSProcessIdentifier identifierWithPid:[(CSDClient *)self processIdentifier]];
    v5 = [RBSProcessHandle handleForIdentifier:v4 error:0];
    [(CSDClient *)self setProcessHandle:v5];
  }

  processHandle2 = [(CSDClient *)self processHandle];
  currentState = [processHandle2 currentState];
  v8 = [currentState taskState] == 3;

  return v8;
}

- (NSString)processName
{
  v2 = +[NSProcessInfo processInfo];
  processName = [v2 processName];

  return processName;
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

- (CSDClient)initWithObject:(id)object queue:(id)queue
{
  objectCopy = object;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CSDClient;
  v9 = [(CSDClient *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, object);
    objc_storeStrong(&v10->_queue, queue);
    v11 = +[NSMutableSet set];
    identifiersWithPendingCoalescingBlocks = v10->_identifiersWithPendingCoalescingBlocks;
    v10->_identifiersWithPendingCoalescingBlocks = v11;

    v13 = +[NSMutableDictionary dictionary];
    blockToExecuteAfterPendingCoalescingBlocksByIdentifier = v10->_blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
    v10->_blockToExecuteAfterPendingCoalescingBlocksByIdentifier = v13;
  }

  return v10;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  objectForBlock = [(CSDClient *)self objectForBlock];
  (*(block + 2))(blockCopy, self, objectForBlock);
}

- (void)performBlock:(id)block coalescedByIdentifier:(id)identifier
{
  blockCopy = block;
  identifierCopy = identifier;
  identifiersWithPendingCoalescingBlocks = [(CSDClient *)self identifiersWithPendingCoalescingBlocks];
  v9 = [identifiersWithPendingCoalescingBlocks containsObject:identifierCopy];

  if (v9)
  {
    v10 = objc_retainBlock(blockCopy);
    blockToExecuteAfterPendingCoalescingBlocksByIdentifier = [(CSDClient *)self blockToExecuteAfterPendingCoalescingBlocksByIdentifier];
    [blockToExecuteAfterPendingCoalescingBlocksByIdentifier setObject:v10 forKeyedSubscript:identifierCopy];
  }

  else
  {
    identifiersWithPendingCoalescingBlocks2 = [(CSDClient *)self identifiersWithPendingCoalescingBlocks];
    [identifiersWithPendingCoalescingBlocks2 addObject:identifierCopy];

    objectForBlock = [(CSDClient *)self objectForBlock];
    (*(blockCopy + 2))(blockCopy, self, objectForBlock);

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001E7F38;
    v14[3] = &unk_100619D88;
    v14[4] = self;
    v15 = identifierCopy;
    [(CSDClient *)self performBlockAfterCoalescing:v14];
  }
}

- (int)processIdentifier
{
  v2 = +[NSProcessInfo processInfo];
  processIdentifier = [v2 processIdentifier];

  return processIdentifier;
}

- (NSString)processBundleIdentifier
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

@end