@interface TIUserAction
- (TIUserAction)initWithCoder:(id)coder;
- (TIUserAction)initWithTIKeyboardState:(id)state;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIUserAction

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  documentState = [(TIUserAction *)self documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  v5 = [v2 stringWithFormat:@"%@<>", contextBeforeInput];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startTime = self->_startTime;
  coderCopy = coder;
  [coderCopy encodeDouble:@"startTime" forKey:startTime];
  [coderCopy encodeDouble:@"endTime" forKey:self->_endTime];
  [coderCopy encodeDouble:@"occurenceTime" forKey:self->_occurenceTime];
  [coderCopy encodeInt:self->_actionType forKey:@"actionType"];
  [coderCopy encodeObject:self->_documentState forKey:@"documentState"];
  [coderCopy encodeObject:self->_keyboardState forKey:@"keyboardState"];
}

- (TIUserAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = TIUserAction;
  v5 = [(TIUserAction *)&v14 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"startTime"];
    v5->_startTime = v6;
    [coderCopy decodeDoubleForKey:@"endTime"];
    v5->_endTime = v7;
    [coderCopy decodeDoubleForKey:@"occurenceTime"];
    v5->_occurenceTime = v8;
    v5->_actionType = [coderCopy decodeIntForKey:@"actionType"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v11;
  }

  return v5;
}

- (TIUserAction)initWithTIKeyboardState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = TIUserAction;
  v6 = [(TIUserAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyboardState, state);
    v7->_occurenceTime = -1.0;
  }

  return v7;
}

@end