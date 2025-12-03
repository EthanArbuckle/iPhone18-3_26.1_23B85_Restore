@interface _UIPhysicalButtonBehaviorOptions
+ (id)behaviorOptions;
- (BOOL)isEqual:(id)equal;
- (_UIPhysicalButtonBehaviorOptions)init;
- (_UIPhysicalButtonBehaviorOptions)initWithBSXPCCoder:(id)coder;
- (_UIPhysicalButtonBehaviorOptions)initWithCoder:(id)coder;
- (_UIPhysicalButtonBehaviorOptions)initWithXPCDictionary:(id)dictionary;
- (id)_initWithBehavior:(unint64_t)behavior;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation _UIPhysicalButtonBehaviorOptions

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:self->_behavior];
  v5 = [builder hash];

  return v5;
}

+ (id)behaviorOptions
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:305 description:{@"%s: behaviorOptions is not allowed on %@", "+[_UIPhysicalButtonBehaviorOptions behaviorOptions]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonBehaviorOptions)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:310 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonBehaviorOptions init]", objc_opt_class()}];

  return 0;
}

- (id)_initWithBehavior:(unint64_t)behavior
{
  if (behavior >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:316 description:{@"Invalid behavior: %lu", behavior}];
  }

  v6 = objc_opt_class();
  if (v6 != _UIPhysicalButtonBehaviorOptionsClassForBehavior(behavior))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromClass(v6);
    v11 = v10;
    if (behavior > 2)
    {
      v12 = &stru_1EFB14550;
    }

    else
    {
      v12 = off_1E70F48B8[behavior];
    }

    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:320 description:{@"Invalid behavior options class for button behavior: class: %@; behavior: %@", v10, v12}];
  }

  v13.receiver = self;
  v13.super_class = _UIPhysicalButtonBehaviorOptions;
  result = [(_UIPhysicalButtonBehaviorOptions *)&v13 init];
  if (result)
  {
    *(result + 1) = behavior;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal || !_NSIsNSObject())
  {
    return 0;
  }

  equalCopy = equal;
  v6 = objc_opt_class();
  v8 = v6 == objc_opt_class() && (v7 = -[_UIPhysicalButtonBehaviorOptions hash](self, "hash"), v7 == [equalCopy hash]) && self->_behavior == equalCopy[1];

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPhysicalButtonBehaviorOptions *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonBehaviorOptions *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonBehaviorOptions *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIPhysicalButtonBehaviorOptions alloc];
  behavior = self->_behavior;

  return [(_UIPhysicalButtonBehaviorOptions *)v4 _initWithBehavior:behavior];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_behavior];
  [coder encodeObject:v4 forKey:@"behavior"];
}

- (_UIPhysicalButtonBehaviorOptions)initWithCoder:(id)coder
{
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"behavior"];
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
    selfCopy = self;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:407 description:{@"Invalid encoded behavior options: %@", coder}];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  uTF8String = [@"behavior" UTF8String];
  behavior = self->_behavior;

  xpc_dictionary_set_uint64(dictionary, uTF8String, behavior);
}

- (_UIPhysicalButtonBehaviorOptions)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = _UIPhysicalButtonBehaviorOptions;
  v4 = [(_UIPhysicalButtonBehaviorOptions *)&v6 init];
  if (v4)
  {
    v4->_behavior = xpc_dictionary_get_uint64(dictionary, [@"behavior" UTF8String]);
  }

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_behavior];
  [coder encodeObject:v4 forKey:@"behavior"];
}

- (_UIPhysicalButtonBehaviorOptions)initWithBSXPCCoder:(id)coder
{
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"behavior"];
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
    selfCopy = self;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButton.m" lineNumber:448 description:{@"Invalid encoded behavior options: %@", coder}];

    selfCopy = 0;
  }

  return selfCopy;
}

@end