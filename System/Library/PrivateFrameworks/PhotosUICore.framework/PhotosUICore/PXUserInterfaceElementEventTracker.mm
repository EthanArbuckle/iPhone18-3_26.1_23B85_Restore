@interface PXUserInterfaceElementEventTracker
- (NSMutableDictionary)payload;
- (PXUserInterfaceElementEventTracker)init;
- (double)timeIntervalSinceTimestamp:(double)timestamp;
- (id)finalPayloadWithPayload:(id)payload;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillResignActive:(id)active;
- (void)_invalidateIsVisible;
- (void)_updateIsVisible;
- (void)didAppear;
- (void)didDisappear;
- (void)didPerformChanges;
- (void)setHasAppeared:(BOOL)appeared;
- (void)setIsAppActive:(BOOL)active;
- (void)setIsVisible:(BOOL)visible;
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
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v5 = [mEMORY[0x1E69DC668] applicationState] == 0;

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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationWillResignActive_ name:v9 object:0];
    [defaultCenter addObserver:v2 selector:sel__applicationDidBecomeActive_ name:v11 object:0];
  }

  return v2;
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXUserInterfaceElementEventTracker;
  [(PXUserInterfaceElementEventTracker *)&v4 didPerformChanges];
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater updateIfNeeded];
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
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsVisible];
}

- (void)_updateIsVisible
{
  if ([(PXUserInterfaceElementEventTracker *)self isAppActive])
  {
    hasAppeared = [(PXUserInterfaceElementEventTracker *)self hasAppeared];
  }

  else
  {
    hasAppeared = 0;
  }

  [(PXUserInterfaceElementEventTracker *)self setIsVisible:hasAppeared];
}

- (void)_applicationWillResignActive:(id)active
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__PXUserInterfaceElementEventTracker__applicationWillResignActive___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXUserInterfaceElementEventTracker *)self performChanges:v3];
}

- (void)_applicationDidBecomeActive:(id)active
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PXUserInterfaceElementEventTracker__applicationDidBecomeActive___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXUserInterfaceElementEventTracker *)self performChanges:v3];
}

- (double)timeIntervalSinceTimestamp:(double)timestamp
{
  [(PXUserInterfaceElementEventTracker *)self currentTimestamp];

  [(PXUserInterfaceElementEventTracker *)self timeIntervalBetweenTimestamp:timestamp andTimestamp:v5];
  return result;
}

- (void)setIsAppActive:(BOOL)active
{
  if (self->_isAppActive != active)
  {
    self->_isAppActive = active;
    [(PXUserInterfaceElementEventTracker *)self signalChange:4];

    [(PXUserInterfaceElementEventTracker *)self _invalidateIsVisible];
  }
}

- (void)setHasAppeared:(BOOL)appeared
{
  if (self->_hasAppeared != appeared)
  {
    self->_hasAppeared = appeared;
    [(PXUserInterfaceElementEventTracker *)self signalChange:2];

    [(PXUserInterfaceElementEventTracker *)self _invalidateIsVisible];
  }
}

- (void)setIsVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
    [(PXUserInterfaceElementEventTracker *)self signalChange:1];
  }
}

- (id)finalPayloadWithPayload:(id)payload
{
  payloadCopy = payload;
  if (![(NSMutableDictionary *)self->_payload count])
  {
    v9 = [payloadCopy copy];
    v7 = v9;
    v10 = MEMORY[0x1E695E0F8];
    if (v9)
    {
      v10 = v9;
    }

    v8 = v10;
    goto LABEL_7;
  }

  v5 = [payloadCopy count];
  payload = self->_payload;
  if (v5)
  {
    v7 = [(NSMutableDictionary *)payload mutableCopy];
    [v7 addEntriesFromDictionary:payloadCopy];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_payload;
    self->_payload = dictionary;

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