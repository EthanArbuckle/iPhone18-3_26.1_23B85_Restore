@interface SXVideoPlayerVisibilityMonitor
- (BOOL)appeared;
- (SXVideoPlayerVisibilityMonitor)initWithVisibilityMonitor:(id)a3;
- (double)visiblePercentage;
- (id)object;
- (unint64_t)state;
- (void)configureVisibilityMonitor:(id)a3;
- (void)onDidAppear:(id)a3;
- (void)onDidDisappear:(id)a3;
- (void)onVisiblePercentageChange:(id)a3;
- (void)onWillAppear:(id)a3;
- (void)onWillDisappear:(id)a3;
- (void)setVisibilityMonitor:(id)a3;
@end

@implementation SXVideoPlayerVisibilityMonitor

- (SXVideoPlayerVisibilityMonitor)initWithVisibilityMonitor:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = SXVideoPlayerVisibilityMonitor;
  v6 = [(SXVideoPlayerVisibilityMonitor *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visibilityMonitor, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    willAppearBlocks = v7->_willAppearBlocks;
    v7->_willAppearBlocks = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    didAppearBlocks = v7->_didAppearBlocks;
    v7->_didAppearBlocks = v10;

    v12 = [MEMORY[0x1E695DF70] array];
    visiblePercentageBlocks = v7->_visiblePercentageBlocks;
    v7->_visiblePercentageBlocks = v12;

    v14 = [MEMORY[0x1E695DF70] array];
    willDisappearBlocks = v7->_willDisappearBlocks;
    v7->_willDisappearBlocks = v14;

    v16 = [MEMORY[0x1E695DF70] array];
    didDisappearBlocks = v7->_didDisappearBlocks;
    v7->_didDisappearBlocks = v16;

    [(SXVideoPlayerVisibilityMonitor *)v7 configureVisibilityMonitor:v5];
  }

  return v7;
}

- (void)setVisibilityMonitor:(id)a3
{
  v5 = a3;
  p_visibilityMonitor = &self->_visibilityMonitor;
  if (self->_visibilityMonitor != v5)
  {
    v7 = v5;
    objc_storeStrong(p_visibilityMonitor, a3);
    p_visibilityMonitor = [(SXVideoPlayerVisibilityMonitor *)self configureVisibilityMonitor:v7];
  }

  MEMORY[0x1EEE66BE0](p_visibilityMonitor);
}

- (void)configureVisibilityMonitor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke;
  v13[3] = &unk_1E84FFB98;
  objc_copyWeak(&v14, &location);
  [v4 onWillAppear:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke_2;
  v11[3] = &unk_1E84FFB98;
  objc_copyWeak(&v12, &location);
  [v4 onDidAppear:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke_3;
  v9[3] = &unk_1E84FFB98;
  objc_copyWeak(&v10, &location);
  [v4 onWillDisappear:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke_4;
  v7[3] = &unk_1E84FFB98;
  objc_copyWeak(&v8, &location);
  [v4 onDidDisappear:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke_5;
  v5[3] = &unk_1E84FFBC0;
  objc_copyWeak(&v6, &location);
  [v4 onVisiblePercentageChange:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained willAppearBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_loadWeakRetained((a1 + 32));
        (*(v9 + 16))(v9, v10);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained didAppearBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_loadWeakRetained((a1 + 32));
        (*(v9 + 16))(v9, v10);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained willDisappearBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_loadWeakRetained((a1 + 32));
        (*(v9 + 16))(v9, v10);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained didDisappearBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_loadWeakRetained((a1 + 32));
        (*(v9 + 16))(v9, v10);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __61__SXVideoPlayerVisibilityMonitor_configureVisibilityMonitor___block_invoke_5(uint64_t a1, double a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained visiblePercentageBlocks];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained((a1 + 32));
        (*(v11 + 16))(v11, v12, a2);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (unint64_t)state
{
  v2 = [(SXVideoPlayerVisibilityMonitor *)self visibilityMonitor];
  v3 = [v2 state];

  return v3;
}

- (BOOL)appeared
{
  v2 = [(SXVideoPlayerVisibilityMonitor *)self visibilityMonitor];
  v3 = [v2 appeared];

  return v3;
}

- (id)object
{
  v2 = [(SXVideoPlayerVisibilityMonitor *)self visibilityMonitor];
  v3 = [v2 object];

  return v3;
}

- (double)visiblePercentage
{
  v2 = [(SXVideoPlayerVisibilityMonitor *)self visibilityMonitor];
  [v2 visiblePercentage];
  v4 = v3;

  return v4;
}

- (void)onWillAppear:(id)a3
{
  v4 = a3;
  v6 = [(SXVideoPlayerVisibilityMonitor *)self willAppearBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)onDidAppear:(id)a3
{
  v4 = a3;
  v6 = [(SXVideoPlayerVisibilityMonitor *)self didAppearBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)onVisiblePercentageChange:(id)a3
{
  v4 = a3;
  v6 = [(SXVideoPlayerVisibilityMonitor *)self visiblePercentageBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)onWillDisappear:(id)a3
{
  v4 = a3;
  v6 = [(SXVideoPlayerVisibilityMonitor *)self willDisappearBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)onDidDisappear:(id)a3
{
  v4 = a3;
  v6 = [(SXVideoPlayerVisibilityMonitor *)self didDisappearBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

@end