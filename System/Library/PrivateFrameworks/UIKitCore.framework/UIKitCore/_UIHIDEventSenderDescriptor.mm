@interface _UIHIDEventSenderDescriptor
+ (id)descriptorWithEvent:(__IOHIDEvent *)event;
- (BOOL)isEqual:(id)equal;
- (_UIHIDEventSenderDescriptor)init;
- (_UIHIDEventSenderDescriptor)initWithSenderID:(unint64_t)d eventType:(unsigned int)type;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation _UIHIDEventSenderDescriptor

+ (id)descriptorWithEvent:(__IOHIDEvent *)event
{
  if (event)
  {
    SenderID = IOHIDEventGetSenderID();
    v5 = [[_UIHIDEventSenderDescriptor alloc] initWithSenderID:SenderID eventType:IOHIDEventGetType()];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIHIDEventSenderDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHIDEventSenderDescriptor.m" lineNumber:32 description:{@"%s: init is not allowed on %@", "-[_UIHIDEventSenderDescriptor init]", objc_opt_class()}];

  return 0;
}

- (_UIHIDEventSenderDescriptor)initWithSenderID:(unint64_t)d eventType:(unsigned int)type
{
  v7.receiver = self;
  v7.super_class = _UIHIDEventSenderDescriptor;
  result = [(_UIHIDEventSenderDescriptor *)&v7 init];
  if (result)
  {
    result->_senderID = d;
    result->_eventType = type;
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
  v8 = v6 == objc_opt_class() && (v7 = -[_UIHIDEventSenderDescriptor hash](self, "hash"), v7 == [equalCopy hash]) && self->_senderID == *(equalCopy + 2) && self->_eventType == *(equalCopy + 2);

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_senderID];
  v4 = [v3 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_eventType];
  v6 = [v5 hash] ^ v4;

  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  return v7 ^ (v7 >> 31);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIHIDEventSenderDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(_UIHIDEventSenderDescriptor *)self appendDescriptionToFormatter:v3];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIHIDEventSenderDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60___UIHIDEventSenderDescriptor_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E70F35B8;
  v3[4] = formatter;
  v3[5] = self;
  [formatter appendProem:self block:v3];
}

@end