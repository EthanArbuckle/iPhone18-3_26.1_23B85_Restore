@interface TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount
- (TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount)initWithCoder:(id)coder;
- (TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount)initWithSyllableCount:(unint64_t)count keyboardState:(id)state;
- (void)encodeWithCoder:(id)coder;
- (void)sendTo:(id)to;
@end

@implementation TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount

- (void)sendTo:(id)to
{
  syllableCount = self->_syllableCount;
  toCopy = to;
  unsignedIntegerValue = [(NSNumber *)syllableCount unsignedIntegerValue];
  keyboardState = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [toCopy addDrawInputWithSyllableCount:unsignedIntegerValue keyboardState:keyboardState];
}

- (TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syllableCount"];
    syllableCount = v5->_syllableCount;
    v5->_syllableCount = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount;
  coderCopy = coder;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_syllableCount forKey:{@"syllableCount", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount)initWithSyllableCount:(unint64_t)count keyboardState:(id)state
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithKeyboardState:state];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    syllableCount = v5->_syllableCount;
    v5->_syllableCount = v6;
  }

  return v5;
}

@end