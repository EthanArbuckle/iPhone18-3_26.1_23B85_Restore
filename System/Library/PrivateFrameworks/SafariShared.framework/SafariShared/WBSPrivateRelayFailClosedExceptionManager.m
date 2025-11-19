@interface WBSPrivateRelayFailClosedExceptionManager
+ (WBSPrivateRelayFailClosedExceptionManager)sharedManager;
- (WBSPrivateRelayFailClosedExceptionManager)init;
- (void)clearPrivateRelayFailClosedExceptionIfNecessaryForURL:(id)a3;
- (void)rememberPrivateRelayFailClosedExceptionForURL:(id)a3;
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

- (void)rememberPrivateRelayFailClosedExceptionForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->_clearedExceptionsForBrowsingSession removeObject:v4];
    [(NSMutableSet *)self->_privateRelayFailClosedExceptions addObject:v4];
  }
}

- (void)clearPrivateRelayFailClosedExceptionIfNecessaryForURL:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableSet *)self->_privateRelayFailClosedExceptions containsObject:v4]& 1) != 0)
  {
    [(NSMutableSet *)self->_privateRelayFailClosedExceptions removeObject:v4];
    [(NSMutableSet *)self->_clearedExceptionsForBrowsingSession addObject:v4];
  }
}

@end