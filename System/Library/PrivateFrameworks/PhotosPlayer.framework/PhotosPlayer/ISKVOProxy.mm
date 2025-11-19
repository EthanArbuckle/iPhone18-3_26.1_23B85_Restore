@interface ISKVOProxy
- (ISKVOProxy)initWithTarget:(id)a3 keyPaths:(id)a4 identifier:(id)a5 delegate:(id)a6;
- (ISKVOProxyDelegate)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startObservingTarget;
- (void)stopObservingTarget;
@end

@implementation ISKVOProxy

- (ISKVOProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_keyPaths;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [self->_target removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = ISKVOProxy;
  [(ISKVOProxy *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a5;
  v9 = a3;
  v10 = [(ISKVOProxy *)self delegate];
  [v10 observeChangeforKVOProxyIdentifier:self->_identifier keyPath:v9 change:v8];
}

- (void)stopObservingTarget
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_keyPaths;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [self->_target removeObserver:self forKeyPath:{*(*(&v11 + 1) + 8 * v7++), v11}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  keyPaths = self->_keyPaths;
  self->_keyPaths = 0;

  target = self->_target;
  self->_target = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startObservingTarget
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_keyPaths;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [self->_target addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) options:5 context:{0, v9}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (ISKVOProxy)initWithTarget:(id)a3 keyPaths:(id)a4 identifier:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = ISKVOProxy;
  v15 = [(ISKVOProxy *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, v14);
    objc_storeStrong(&v16->_target, a3);
    v17 = [v12 copy];
    keyPaths = v16->_keyPaths;
    v16->_keyPaths = v17;

    v19 = [v13 copy];
    identifier = v16->_identifier;
    v16->_identifier = v19;
  }

  return v16;
}

@end