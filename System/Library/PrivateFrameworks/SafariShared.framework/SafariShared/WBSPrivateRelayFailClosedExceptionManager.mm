@interface WBSPrivateRelayFailClosedExceptionManager
+ (WBSPrivateRelayFailClosedExceptionManager)sharedManager;
- (WBSPrivateRelayFailClosedExceptionManager)init;
- (void)clearPrivateRelayFailClosedExceptionIfNecessaryForURL:(id)l;
- (void)rememberPrivateRelayFailClosedExceptionForURL:(id)l;
@end

@implementation WBSPrivateRelayFailClosedExceptionManager

+ (WBSPrivateRelayFailClosedExceptionManager)sharedManager
{
  if (+[WBSPrivateRelayFailClosedExceptionManager sharedManager]::onceToken != -1)
  {
    +[WBSPrivateRelayFailClosedExceptionManager sharedManager];
  }

  v3 = +[WBSPrivateRelayFailClosedExceptionManager sharedManager]::manager;

  return v3;
}

void __58__WBSPrivateRelayFailClosedExceptionManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSPrivateRelayFailClosedExceptionManager);
  v1 = +[WBSPrivateRelayFailClosedExceptionManager sharedManager]::manager;
  +[WBSPrivateRelayFailClosedExceptionManager sharedManager]::manager = v0;
}

- (WBSPrivateRelayFailClosedExceptionManager)init
{
  v9.receiver = self;
  v9.super_class = WBSPrivateRelayFailClosedExceptionManager;
  v2 = [(WBSPrivateRelayFailClosedExceptionManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    privateRelayFailClosedExceptions = v2->_privateRelayFailClosedExceptions;
    v2->_privateRelayFailClosedExceptions = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    clearedExceptionsForBrowsingSession = v2->_clearedExceptionsForBrowsingSession;
    v2->_clearedExceptionsForBrowsingSession = v5;

    v7 = v2;
  }

  return v2;
}

- (void)rememberPrivateRelayFailClosedExceptionForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    [(NSMutableSet *)self->_clearedExceptionsForBrowsingSession removeObject:lCopy];
    [(NSMutableSet *)self->_privateRelayFailClosedExceptions addObject:lCopy];
  }
}

- (void)clearPrivateRelayFailClosedExceptionIfNecessaryForURL:(id)l
{
  lCopy = l;
  if (lCopy && ([(NSMutableSet *)self->_privateRelayFailClosedExceptions containsObject:lCopy]& 1) != 0)
  {
    [(NSMutableSet *)self->_privateRelayFailClosedExceptions removeObject:lCopy];
    [(NSMutableSet *)self->_clearedExceptionsForBrowsingSession addObject:lCopy];
  }
}

@end