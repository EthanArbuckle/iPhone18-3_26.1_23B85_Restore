@interface PLCaptureSessionState
+ (id)lockedWithSessionIdentifier:(id)identifier;
+ (id)none;
+ (id)unknown;
+ (id)unlockedWithSessionIdentifier:(id)identifier;
- (PLCaptureSessionState)initWithType:(unint64_t)type;
@end

@implementation PLCaptureSessionState

- (PLCaptureSessionState)initWithType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = PLCaptureSessionState;
  v4 = [(PLCaptureSessionState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
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

+ (id)unlockedWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[PLCaptureSessionStateUnlocked alloc] initWithSessionIdentifier:identifierCopy];

  return v4;
}

+ (id)lockedWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[PLCaptureSessionStateLocked alloc] initWithSessionIdentifier:identifierCopy];

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