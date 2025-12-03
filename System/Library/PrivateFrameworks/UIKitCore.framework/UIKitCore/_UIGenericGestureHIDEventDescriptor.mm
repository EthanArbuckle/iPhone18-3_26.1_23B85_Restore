@interface _UIGenericGestureHIDEventDescriptor
+ (_UIGenericGestureHIDEventDescriptor)descriptorWithEvent:(__IOHIDEvent *)event;
- (BOOL)isEqual:(id)equal;
- (_UIGenericGestureHIDEventDescriptor)init;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation _UIGenericGestureHIDEventDescriptor

+ (_UIGenericGestureHIDEventDescriptor)descriptorWithEvent:(__IOHIDEvent *)event
{
  Type = IOHIDEventGetType();
  if (event && Type == 39)
  {
    SenderID = IOHIDEventGetSenderID();
    IntegerValue = IOHIDEventGetIntegerValue();
    v9 = IOHIDEventGetIntegerValue();
    v10 = [_UIGenericGestureHIDEventDescriptor alloc];
    if (v10)
    {
      v13.receiver = v10;
      v13.super_class = _UIGenericGestureHIDEventDescriptor;
      v10 = objc_msgSendSuper2(&v13, sel_initWithSenderID_eventType_, SenderID, 39);
      if (v10)
      {
        v10->_gestureType = IntegerValue;
        v10->_tapCount = v9;
      }
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIGenericGestureHIDEventDescriptor.m" lineNumber:25 description:{@"Invalid event for %@: %@", self, event}];

    v10 = 0;
  }

  return v10;
}

- (_UIGenericGestureHIDEventDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIGenericGestureHIDEventDescriptor.m" lineNumber:36 description:{@"%s: init is not allowed on %@", "-[_UIGenericGestureHIDEventDescriptor init]", objc_opt_class()}];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = _UIGenericGestureHIDEventDescriptor;
  v5 = [(_UIHIDEventSenderDescriptor *)&v7 isEqual:?];
  if (v5)
  {
    LOBYTE(v5) = self->_gestureType == *(equal + 6) && self->_tapCount == *(equal + 4);
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = _UIGenericGestureHIDEventDescriptor;
  v3 = [(_UIHIDEventSenderDescriptor *)&v10 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_gestureType];
  v5 = [v4 hash] ^ v3;

  v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_tapCount];
  v7 = v5 ^ [v6 hash];

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  return v8 ^ (v8 >> 31);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIGenericGestureHIDEventDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(_UIGenericGestureHIDEventDescriptor *)self appendDescriptionToFormatter:v3];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIGenericGestureHIDEventDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68___UIGenericGestureHIDEventDescriptor_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E70F35B8;
  v3[4] = formatter;
  v3[5] = self;
  [formatter appendProem:self block:v3];
}

@end