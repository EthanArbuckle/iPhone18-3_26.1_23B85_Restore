@interface TIKeyboardInteractionProtocolEventLayoutDidChange
- (TIKeyboardInteractionProtocolEventLayoutDidChange)initWithCoder:(id)coder;
- (TIKeyboardInteractionProtocolEventLayoutDidChange)initWithLayout:(id)layout keyboardState:(id)state;
- (void)encodeWithCoder:(id)coder;
- (void)sendTo:(id)to;
@end

@implementation TIKeyboardInteractionProtocolEventLayoutDidChange

- (void)sendTo:(id)to
{
  keyLayout = self->_keyLayout;
  toCopy = to;
  keyboardState = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [toCopy layoutDidChange:keyLayout keyboardState:keyboardState];
}

- (TIKeyboardInteractionProtocolEventLayoutDidChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventLayoutDidChange;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyLayout"];
    keyLayout = v5->_keyLayout;
    v5->_keyLayout = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventLayoutDidChange;
  coderCopy = coder;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_keyLayout forKey:{@"keyLayout", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventLayoutDidChange)initWithLayout:(id)layout keyboardState:(id)state
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = TIKeyboardInteractionProtocolEventLayoutDidChange;
  v8 = [(TIKeyboardInteractionProtocolBase *)&v11 initWithKeyboardState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyLayout, layout);
  }

  return v9;
}

@end