@interface TITypologyRecordPhraseBoundaryAdjustment
- (TITypologyRecordPhraseBoundaryAdjustment)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)a3;
@end

@implementation TITypologyRecordPhraseBoundaryAdjustment

- (void)replaceDocumentState:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyRecordPhraseBoundaryAdjustment *)self keyboardState];
  [v5 setDocumentState:v4];
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

  v5 = [(TITypologyRecordPhraseBoundaryAdjustment *)self granularity];
  v6 = [(TITypologyRecordPhraseBoundaryAdjustment *)self keyboardConfig];
  v7 = [v6 intermediateText];
  v8 = [v3 stringWithFormat:@"ADJUST PHRASE BOUNDARY forward = %s granularity = %d; %@", v4, v5, v7];;

  return v8;
}

- (void)removeContextFromKeyboardState
{
  v3 = [(TITypologyRecordPhraseBoundaryAdjustment *)self keyboardState];
  v4 = [v3 copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordPhraseBoundaryAdjustment *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordPhraseBoundaryAdjustment;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_forwardAdjustment forKey:{@"forwardAdjustment", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_granularity forKey:@"granularity"];
  [v4 encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [v4 encodeObject:self->_keyboardConfig forKey:@"keyboardConfig"];
}

- (TITypologyRecordPhraseBoundaryAdjustment)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TITypologyRecordPhraseBoundaryAdjustment;
  v5 = [(TITypologyRecord *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_forwardAdjustment = [v4 decodeBoolForKey:@"forwardAdjustment"];
    v5->_granularity = [v4 decodeIntegerForKey:@"granularity"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardConfig"];
    keyboardConfig = v5->_keyboardConfig;
    v5->_keyboardConfig = v8;
  }

  return v5;
}

@end