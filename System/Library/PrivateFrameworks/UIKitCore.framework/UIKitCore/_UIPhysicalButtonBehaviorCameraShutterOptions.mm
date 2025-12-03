@interface _UIPhysicalButtonBehaviorCameraShutterOptions
+ (id)behaviorOptions;
- (BOOL)isEqual:(id)equal;
- (_UIPhysicalButtonBehaviorCameraShutterOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _UIPhysicalButtonBehaviorCameraShutterOptions

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v7.receiver = self;
  v7.super_class = _UIPhysicalButtonBehaviorCameraShutterOptions;
  v4 = [builder appendUnsignedInteger:{-[_UIPhysicalButtonBehaviorOptions hash](&v7, sel_hash)}];
  v5 = [builder hash];

  return v5;
}

+ (id)behaviorOptions
{
  v2 = [(_UIPhysicalButtonBehaviorOptions *)[_UIPhysicalButtonBehaviorCameraShutterOptions alloc] _initWithBehavior:0];

  return v2;
}

- (_UIPhysicalButtonBehaviorCameraShutterOptions)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:474 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonBehaviorCameraShutterOptions init]", objc_opt_class()}];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = _UIPhysicalButtonBehaviorCameraShutterOptions;
  return [(_UIPhysicalButtonBehaviorOptions *)&v4 isEqual:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIPhysicalButtonBehaviorCameraShutterOptions alloc];
  _behavior = [(_UIPhysicalButtonBehaviorOptions *)self _behavior];

  return [(_UIPhysicalButtonBehaviorOptions *)v4 _initWithBehavior:_behavior];
}

@end