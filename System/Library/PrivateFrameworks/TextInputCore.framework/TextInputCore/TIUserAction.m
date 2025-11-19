@interface TIUserAction
- (TIUserAction)initWithCoder:(id)a3;
- (TIUserAction)initWithTIKeyboardState:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIUserAction

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TIUserAction *)self documentState];
  v4 = [v3 contextBeforeInput];
  v5 = [v2 stringWithFormat:@"%@<>", v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startTime = self->_startTime;
  v5 = a3;
  [v5 encodeDouble:@"startTime" forKey:startTime];
  [v5 encodeDouble:@"endTime" forKey:self->_endTime];
  [v5 encodeDouble:@"occurenceTime" forKey:self->_occurenceTime];
  [v5 encodeInt:self->_actionType forKey:@"actionType"];
  [v5 encodeObject:self->_documentState forKey:@"documentState"];
  [v5 encodeObject:self->_keyboardState forKey:@"keyboardState"];
}

- (TIUserAction)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TIUserAction;
  v5 = [(TIUserAction *)&v14 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"startTime"];
    v5->_startTime = v6;
    [v4 decodeDoubleForKey:@"endTime"];
    v5->_endTime = v7;
    [v4 decodeDoubleForKey:@"occurenceTime"];
    v5->_occurenceTime = v8;
    v5->_actionType = [v4 decodeIntForKey:@"actionType"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v11;
  }

  return v5;
}

- (TIUserAction)initWithTIKeyboardState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIUserAction;
  v6 = [(TIUserAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyboardState, a3);
    v7->_occurenceTime = -1.0;
  }

  return v7;
}

@end