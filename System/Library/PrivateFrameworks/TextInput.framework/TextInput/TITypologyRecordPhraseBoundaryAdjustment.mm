@interface TITypologyRecordPhraseBoundaryAdjustment
- (TITypologyRecordPhraseBoundaryAdjustment)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordPhraseBoundaryAdjustment

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordPhraseBoundaryAdjustment *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(TITypologyRecordPhraseBoundaryAdjustment *)self forwardAdjustment])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  granularity = [(TITypologyRecordPhraseBoundaryAdjustment *)self granularity];
  keyboardConfig = [(TITypologyRecordPhraseBoundaryAdjustment *)self keyboardConfig];
  intermediateText = [keyboardConfig intermediateText];
  v8 = [v3 stringWithFormat:@"ADJUST PHRASE BOUNDARY forward = %s granularity = %d; %@", v4, granularity, intermediateText];;

  return v8;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordPhraseBoundaryAdjustment *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordPhraseBoundaryAdjustment *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordPhraseBoundaryAdjustment;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_forwardAdjustment forKey:{@"forwardAdjustment", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_granularity forKey:@"granularity"];
  [coderCopy encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [coderCopy encodeObject:self->_keyboardConfig forKey:@"keyboardConfig"];
}

- (TITypologyRecordPhraseBoundaryAdjustment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TITypologyRecordPhraseBoundaryAdjustment;
  v5 = [(TITypologyRecord *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_forwardAdjustment = [coderCopy decodeBoolForKey:@"forwardAdjustment"];
    v5->_granularity = [coderCopy decodeIntegerForKey:@"granularity"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardConfig"];
    keyboardConfig = v5->_keyboardConfig;
    v5->_keyboardConfig = v8;
  }

  return v5;
}

@end