@interface PXUserInterfaceElementEventTracker
- (NSMutableDictionary)payload;
- (PXUserInterfaceElementEventTracker)init;
- (double)timeIntervalSinceTimestamp:(double)a3;
- (id)finalPayloadWithPayload:(id)a3;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_invalidateIsVisible;
- (void)_updateIsVisible;
- (void)didAppear;
- (void)didDisappear;
- (void)didPerformChanges;
- (void)setHasAppeared:(BOOL)a3;
- (void)setIsAppActive:(BOOL)a3;
- (void)setIsVisible:(BOOL)a3;
@end

@implementation PXUserInterfaceElementEventTracker

- (PXUserInterfaceElementEventTracker)init
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PXUserInterfaceElementEventTracker;
  v2 = [(PXUserInterfaceElementEventTracker *)&v15 init];
  if (v2)
  {
    v3 = [[off_1E7721940 alloc] initWithTarget:v2 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v2->_updater;
    v2->_updater = v3;

    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateIsVisible];
    if (_UIApplicationIsExtension())
    {
      v5 = 1;
      v6 = MEMORY[0x1E696A2C0];
      v7 = MEMORY[0x1E696A2D8];
    }

    else
    {
      v8 = [MEMORY[0x1E69DC668] sharedApplication];
      v5 = [v8 applicationState] == 0;

      v6 = MEMORY[0x1E69DDAB0];
      v7 = MEMORY[0x1E69DDBC8];
    }

    v9 = *v7;
    v10 = *v6;
    v11 = v10;
    v2->_isAppActive = v5;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      PXAssertGetLog();
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v2 selector:sel__applicationWillResignActive_ name:v9 object:0];
    [v13 addObserver:v2 selector:sel__applicationDidBecomeActive_ name:v11 object:0];
  }

  return v2;
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXUserInterfaceElementEventTracker;
  [(PXUserInterfaceElementEventTracker *)&v4 didPerformChanges];
  v3 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v3 updateIfNeeded];
}

- (void)didAppear
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__PXUserInterfaceElementEventTracker_didAppear__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXUserInterfaceElementEventTracker *)self performChanges:v2];
}

- (void)_invalidateIsVisible
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsVisible];
}

- (void)_updateIsVisible
{
  if ([(PXUserInterfaceElementEventTracker *)self isAppActive])
  {
    v3 = [(PXUserInterfaceElementEventTracker *)self hasAppeared];
  }

  else
  {
    v3 = 0;
  }

  [(PXUserInterfaceElementEventTracker *)self setIsVisible:v3];
}

- (void)_applicationWillResignActive:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__PXUserInterfaceElementEventTracker__applicationWillResignActive___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXUserInterfaceElementEventTracker *)self performChanges:v3];
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PXUserInterfaceElementEventTracker__applicationDidBecomeActive___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXUserInterfaceElementEventTracker *)self performChanges:v3];
}

- (double)timeIntervalSinceTimestamp:(double)a3
{
  [(PXUserInterfaceElementEventTracker *)self currentTimestamp];

  [(PXUserInterfaceElementEventTracker *)self timeIntervalBetweenTimestamp:a3 andTimestamp:v5];
  return result;
}

- (void)setIsAppActive:(BOOL)a3
{
  if (self->_isAppActive != a3)
  {
    self->_isAppActive = a3;
    [(PXUserInterfaceElementEventTracker *)self signalChange:4];

    [(PXUserInterfaceElementEventTracker *)self _invalidateIsVisible];
  }
}

- (void)setHasAppeared:(BOOL)a3
{
  if (self->_hasAppeared != a3)
  {
    self->_hasAppeared = a3;
    [(PXUserInterfaceElementEventTracker *)self signalChange:2];

    [(PXUserInterfaceElementEventTracker *)self _invalidateIsVisible];
  }
}

- (void)setIsVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    [(PXUserInterfaceElementEventTracker *)self signalChange:1];
  }
}

- (id)finalPayloadWithPayload:(id)a3
{
  v4 = a3;
  if (![(NSMutableDictionary *)self->_payload count])
  {
    v9 = [v4 copy];
    v7 = v9;
    v10 = MEMORY[0x1E695E0F8];
    if (v9)
    {
      v10 = v9;
    }

    v8 = v10;
    goto LABEL_7;
  }

  v5 = [v4 count];
  payload = self->_payload;
  if (v5)
  {
    v7 = [(NSMutableDictionary *)payload mutableCopy];
    [v7 addEntriesFromDictionary:v4];
    v8 = [v7 copy];
LABEL_7:
    v11 = v8;

    goto LABEL_9;
  }

  v11 = [(NSMutableDictionary *)payload copy];
LABEL_9:

  return v11;
}

- (NSMutableDictionary)payload
{
  payload = self->_payload;
  if (!payload)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_payload;
    self->_payload = v4;

    payload = self->_payload;
  }

  return payload;
}

- (void)didDisappear
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__PXUserInterfaceElementEventTracker_didDisappear__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXUserInterfaceElementEventTracker *)self performChanges:v2];
}

@end