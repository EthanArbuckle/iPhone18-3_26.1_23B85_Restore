@interface TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount
- (TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount)initWithCoder:(id)a3;
- (TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount)initWithSyllableCount:(unint64_t)a3 keyboardState:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)sendTo:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount

- (void)sendTo:(id)a3
{
  syllableCount = self->_syllableCount;
  v5 = a3;
  v6 = [(NSNumber *)syllableCount unsignedIntegerValue];
  v7 = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [v5 addDrawInputWithSyllableCount:v6 keyboardState:v7];
}

- (TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syllableCount"];
    syllableCount = v5->_syllableCount;
    v5->_syllableCount = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount;
  v4 = a3;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_syllableCount forKey:{@"syllableCount", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount)initWithSyllableCount:(unint64_t)a3 keyboardState:(id)a4
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddDrawInputWithSyllableCount;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithKeyboardState:a4];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    syllableCount = v5->_syllableCount;
    v5->_syllableCount = v6;
  }

  return v5;
}

@end