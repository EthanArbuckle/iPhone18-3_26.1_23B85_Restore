@interface PGRunLoopObserver
- (void)dealloc;
- (void)setActions:(id)actions;
@end

@implementation PGRunLoopObserver

- (void)dealloc
{
  [(PGRunLoopObserver *)self setActions:0];
  v3.receiver = self;
  v3.super_class = PGRunLoopObserver;
  [(PGRunLoopObserver *)&v3 dealloc];
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  v5 = MEMORY[0x1BFB0C680]();
  actions = self->_actions;
  self->_actions = v5;

  if (!self->_runLoopObserver)
  {
    if (!self->_actions)
    {
      goto LABEL_7;
    }

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __32__PGRunLoopObserver_setActions___block_invoke;
    v13 = &unk_1E7F329E0;
    objc_copyWeak(&v14, &location);
    v7 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0x7FFFFFFFLL, &v10);
    [(PGRunLoopObserver *)self setRunLoopObserver:v7, v10, v11, v12, v13];
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_runLoopObserver, *MEMORY[0x1E695E8D0]);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  if (!self->_actions)
  {
    runLoopObserver = self->_runLoopObserver;
    if (runLoopObserver)
    {
      CFRunLoopObserverInvalidate(runLoopObserver);
      CFRelease(self->_runLoopObserver);
      [(PGRunLoopObserver *)self setRunLoopObserver:0];
    }
  }

LABEL_7:
}

void __32__PGRunLoopObserver_setActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained actions];
    [v3 setActions:0];
    if (v2)
    {
      v2[2](v2);
    }

    WeakRetained = v3;
  }
}

@end