@interface _UIPhysicalButtonBehaviorOptions
+ (id)behaviorOptions;
- (BOOL)isEqual:(id)a3;
- (_UIPhysicalButtonBehaviorOptions)init;
- (_UIPhysicalButtonBehaviorOptions)initWithBSXPCCoder:(id)a3;
- (_UIPhysicalButtonBehaviorOptions)initWithCoder:(id)a3;
- (_UIPhysicalButtonBehaviorOptions)initWithXPCDictionary:(id)a3;
- (id)_initWithBehavior:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation _UIPhysicalButtonBehaviorOptions

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:self->_behavior];
  v5 = [v3 hash];

  return v5;
}

+ (id)behaviorOptions
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"_UIPhysicalButton.m" lineNumber:305 description:{@"%s: behaviorOptions is not allowed on %@", "+[_UIPhysicalButtonBehaviorOptions behaviorOptions]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonBehaviorOptions)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:310 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonBehaviorOptions init]", objc_opt_class()}];

  return 0;
}

- (id)_initWithBehavior:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:316 description:{@"Invalid behavior: %lu", a3}];
  }

  v6 = objc_opt_class();
  if (v6 != _UIPhysicalButtonBehaviorOptionsClassForBehavior(a3))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromClass(v6);
    v11 = v10;
    if (a3 > 2)
    {
      v12 = &stru_1EFB14550;
    }

    else
    {
      v12 = off_1E70F48B8[a3];
    }

    [v9 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:320 description:{@"Invalid behavior options class for button behavior: class: %@; behavior: %@", v10, v12}];
  }

  v13.receiver = self;
  v13.super_class = _UIPhysicalButtonBehaviorOptions;
  result = [(_UIPhysicalButtonBehaviorOptions *)&v13 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3 || !_NSIsNSObject())
  {
    return 0;
  }

  v5 = a3;
  v6 = objc_opt_class();
  v8 = v6 == objc_opt_class() && (v7 = -[_UIPhysicalButtonBehaviorOptions hash](self, "hash"), v7 == [v5 hash]) && self->_behavior == v5[1];

  return v8;
}

- (id)succinctDescription
{
  v2 = [(_UIPhysicalButtonBehaviorOptions *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  behavior = self->_behavior;
  if (behavior > 2)
  {
    v6 = &stru_1EFB14550;
  }

  else
  {
    v6 = off_1E70F48B8[behavior];
  }

  [v3 appendString:v6 withName:@"behavior"];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonBehaviorOptions *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonBehaviorOptions *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  behavior = self->_behavior;
  if (behavior > 2)
  {
    v7 = &stru_1EFB14550;
  }

  else
  {
    v7 = off_1E70F48B8[behavior];
  }

  [v5 appendString:v7 withName:@"behavior"];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIPhysicalButtonBehaviorOptions alloc];
  behavior = self->_behavior;

  return [(_UIPhysicalButtonBehaviorOptions *)v4 _initWithBehavior:behavior];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_behavior];
  [a3 encodeObject:v4 forKey:@"behavior"];
}

- (_UIPhysicalButtonBehaviorOptions)initWithCoder:(id)a3
{
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"behavior"];
  if (v6)
  {
    v11.receiver = self;
    v11.super_class = _UIPhysicalButtonBehaviorOptions;
    v7 = [(_UIPhysicalButtonBehaviorOptions *)&v11 init];
    if (v7)
    {
      v7->_behavior = [v6 unsignedIntegerValue];
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:407 description:{@"Invalid encoded behavior options: %@", a3}];

    v8 = 0;
  }

  return v8;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5 = [@"behavior" UTF8String];
  behavior = self->_behavior;

  xpc_dictionary_set_uint64(a3, v5, behavior);
}

- (_UIPhysicalButtonBehaviorOptions)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIPhysicalButtonBehaviorOptions;
  v4 = [(_UIPhysicalButtonBehaviorOptions *)&v6 init];
  if (v4)
  {
    v4->_behavior = xpc_dictionary_get_uint64(a3, [@"behavior" UTF8String]);
  }

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_behavior];
  [a3 encodeObject:v4 forKey:@"behavior"];
}

- (_UIPhysicalButtonBehaviorOptions)initWithBSXPCCoder:(id)a3
{
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"behavior"];
  if (v6)
  {
    v11.receiver = self;
    v11.super_class = _UIPhysicalButtonBehaviorOptions;
    v7 = [(_UIPhysicalButtonBehaviorOptions *)&v11 init];
    if (v7)
    {
      v7->_behavior = [v6 unsignedIntegerValue];
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:448 description:{@"Invalid encoded behavior options: %@", a3}];

    v8 = 0;
  }

  return v8;
}

@end