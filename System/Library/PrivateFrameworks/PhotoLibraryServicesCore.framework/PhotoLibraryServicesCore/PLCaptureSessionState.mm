@interface PLCaptureSessionState
+ (id)lockedWithSessionIdentifier:(id)a3;
+ (id)none;
+ (id)unknown;
+ (id)unlockedWithSessionIdentifier:(id)a3;
- (PLCaptureSessionState)initWithType:(unint64_t)a3;
@end

@implementation PLCaptureSessionState

- (PLCaptureSessionState)initWithType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PLCaptureSessionState;
  v4 = [(PLCaptureSessionState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = v4;
  }

  return v5;
}

+ (id)unknown
{
  pl_dispatch_once(&unknown_pl_once_token_16, &__block_literal_global_65_12470);
  v2 = unknown_pl_once_object_16;

  return v2;
}

uint64_t __42__PLCaptureSessionState_Creation__unknown__block_invoke()
{
  unknown_pl_once_object_16 = objc_alloc_init(PLCaptureSessionStateUnknown);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)unlockedWithSessionIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[PLCaptureSessionStateUnlocked alloc] initWithSessionIdentifier:v3];

  return v4;
}

+ (id)lockedWithSessionIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[PLCaptureSessionStateLocked alloc] initWithSessionIdentifier:v3];

  return v4;
}

+ (id)none
{
  pl_dispatch_once(&none_pl_once_token_15, &__block_literal_global_12472);
  v2 = none_pl_once_object_15;

  return v2;
}

uint64_t __39__PLCaptureSessionState_Creation__none__block_invoke()
{
  none_pl_once_object_15 = objc_alloc_init(PLCaptureSessionStateNone);

  return MEMORY[0x1EEE66BB8]();
}

@end