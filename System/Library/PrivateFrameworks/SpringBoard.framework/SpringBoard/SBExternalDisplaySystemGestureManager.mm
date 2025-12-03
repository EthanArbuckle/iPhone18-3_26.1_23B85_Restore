@interface SBExternalDisplaySystemGestureManager
- (BOOL)_shouldEnableSystemGestureWithType:(unint64_t)type;
- (SBExternalDisplaySystemGestureManager)initWithDisplayIdentity:(id)identity;
@end

@implementation SBExternalDisplaySystemGestureManager

- (SBExternalDisplaySystemGestureManager)initWithDisplayIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [(SBExternalDisplaySystemGestureManager *)a2 initWithDisplayIdentity:?];
  }

  v10.receiver = self;
  v10.super_class = SBExternalDisplaySystemGestureManager;
  v7 = [(SBSystemGestureManager *)&v10 _initWithDisplayIdentity:identityCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 23, identity);
  }

  return v8;
}

- (BOOL)_shouldEnableSystemGestureWithType:(unint64_t)type
{
  result = 1;
  v5 = type - 8;
  if (type - 8 <= 0x3F)
  {
    if (((1 << v5) & 0x800091804EFA04D1) != 0)
    {
      return result;
    }

    if (((1 << v5) & 0x60000000000) != 0)
    {

      return SBFIsChamoisOverflowGestureAvailable();
    }

    if (type == 16)
    {
      windowSceneManager = [SBApp windowSceneManager];
      v7 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];
      supportsMultitasking = [v7 supportsMultitasking];

      return supportsMultitasking;
    }
  }

  v9 = type - 112;
  if (type - 112 > 0x20)
  {
    return 0;
  }

  if (((1 << v9) & 0x100000003) != 0)
  {
    return result;
  }

  if (((1 << v9) & 0xC0000000) == 0)
  {
    return 0;
  }

  return _UIEnhancedMainMenuEnabled();
}

- (void)initWithDisplayIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBExternalDisplaySystemGestureManager.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];
}

@end