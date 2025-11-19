@interface MTDefaultsChangeNotifier
- (MTDefaultsChangeNotifier)initWithProperties:(id)a3 defaults:(id)a4;
- (void)_defaultsChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)start;
- (void)stop;
@end

@implementation MTDefaultsChangeNotifier

- (MTDefaultsChangeNotifier)initWithProperties:(id)a3 defaults:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTDefaultsChangeNotifier;
  v8 = [(MTDictionaryDiff *)&v11 initWithProperties:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaults, a4);
  }

  return v9;
}

- (void)dealloc
{
  [(MTDefaultsChangeNotifier *)self stop];
  v3.receiver = self;
  v3.super_class = MTDefaultsChangeNotifier;
  [(MTDefaultsChangeNotifier *)&v3 dealloc];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(MTDefaultsChangeNotifier *)self isRunning])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(MTDictionaryDiff *)self properties];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(NSUserDefaults *)self->_defaults addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) options:0 context:self];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(MTDefaultsChangeNotifier *)self setRunning:1];
    [(MTDefaultsChangeNotifier *)self _defaultsChanged];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(MTDefaultsChangeNotifier *)self isRunning])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(MTDictionaryDiff *)self properties];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(NSUserDefaults *)self->_defaults removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:self];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(MTDefaultsChangeNotifier *)self setRunning:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == self)
  {
    [(MTDefaultsChangeNotifier *)self _defaultsChanged:a3];
  }
}

- (void)_defaultsChanged
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSUserDefaults *)v2->_defaults dictionaryRepresentation];
  v4.receiver = v2;
  v4.super_class = MTDefaultsChangeNotifier;
  [(MTDictionaryDiff *)&v4 setDictionary:v3];

  objc_sync_exit(v2);
}

@end