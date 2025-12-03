@interface PLMoviePlayerControllerManager
- (PLMoviePlayerControllerManager)init;
- (void)dealloc;
- (void)moveControllerToTopOfStack:(id)stack;
- (void)removeControllerFromStack:(id)stack;
@end

@implementation PLMoviePlayerControllerManager

- (void)removeControllerFromStack:(id)stack
{
  if ([(NSMutableArray *)self->_playerStack lastObject]== stack)
  {
    [stack willResignAsActiveController];
    [(NSMutableArray *)self->_playerStack removeObject:stack];
    lastObject = [(NSMutableArray *)self->_playerStack lastObject];
    if (lastObject)
    {

      [lastObject didBecomeActiveController];
    }
  }

  else
  {
    playerStack = self->_playerStack;

    [(NSMutableArray *)playerStack removeObject:stack];
  }
}

- (void)moveControllerToTopOfStack:(id)stack
{
  lastObject = [(NSMutableArray *)self->_playerStack lastObject];
  if (lastObject != stack)
  {
    [lastObject willResignAsActiveController];
    [(NSMutableArray *)self->_playerStack removeObject:stack];
    [(NSMutableArray *)self->_playerStack addObject:stack];

    [stack didBecomeActiveController];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLMoviePlayerControllerManager;
  [(PLMoviePlayerControllerManager *)&v3 dealloc];
}

- (PLMoviePlayerControllerManager)init
{
  v4.receiver = self;
  v4.super_class = PLMoviePlayerControllerManager;
  v2 = [(PLMoviePlayerControllerManager *)&v4 init];
  if (v2)
  {
    v2->_playerStack = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

PLMoviePlayerControllerManager *__48__PLMoviePlayerControllerManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(PLMoviePlayerControllerManager);
  sharedInstance___manager = result;
  return result;
}

@end