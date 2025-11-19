@interface _UIPhysicalButtonBehaviorCameraShutterOptions
+ (id)behaviorOptions;
- (BOOL)isEqual:(id)a3;
- (_UIPhysicalButtonBehaviorCameraShutterOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _UIPhysicalButtonBehaviorCameraShutterOptions

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v7.receiver = self;
  v7.super_class = _UIPhysicalButtonBehaviorCameraShutterOptions;
  v4 = [v3 appendUnsignedInteger:{-[_UIPhysicalButtonBehaviorOptions hash](&v7, sel_hash)}];
  v5 = [v3 hash];

  return v5;
}

+ (id)behaviorOptions
{
  v2 = [(_UIPhysicalButtonBehaviorOptions *)[_UIPhysicalButtonBehaviorCameraShutterOptions alloc] _initWithBehavior:0];

  return v2;
}

- (_UIPhysicalButtonBehaviorCameraShutterOptions)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:474 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonBehaviorCameraShutterOptions init]", objc_opt_class()}];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIPhysicalButtonBehaviorCameraShutterOptions;
  return [(_UIPhysicalButtonBehaviorOptions *)&v4 isEqual:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIPhysicalButtonBehaviorCameraShutterOptions alloc];
  v5 = [(_UIPhysicalButtonBehaviorOptions *)self _behavior];

  return [(_UIPhysicalButtonBehaviorOptions *)v4 _initWithBehavior:v5];
}

@end