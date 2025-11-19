@interface PLMoviePlayerControllerManager
- (PLMoviePlayerControllerManager)init;
- (void)dealloc;
- (void)moveControllerToTopOfStack:(id)a3;
- (void)removeControllerFromStack:(id)a3;
@end

@implementation PLMoviePlayerControllerManager

- (void)removeControllerFromStack:(id)a3
{
  if ([(NSMutableArray *)self->_playerStack lastObject]== a3)
  {
    [a3 willResignAsActiveController];
    [(NSMutableArray *)self->_playerStack removeObject:a3];
    v6 = [(NSMutableArray *)self->_playerStack lastObject];
    if (v6)
    {

      [v6 didBecomeActiveController];
    }
  }

  else
  {
    playerStack = self->_playerStack;

    [(NSMutableArray *)playerStack removeObject:a3];
  }
}

- (void)moveControllerToTopOfStack:(id)a3
{
  v5 = [(NSMutableArray *)self->_playerStack lastObject];
  if (v5 != a3)
  {
    [v5 willResignAsActiveController];
    [(NSMutableArray *)self->_playerStack removeObject:a3];
    [(NSMutableArray *)self->_playerStack addObject:a3];

    [a3 didBecomeActiveController];
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