@interface TIKeyboardInput
- (TIKeyboardInput)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setAutoshifted:(BOOL)a3;
- (void)setDoubleSpace:(BOOL)a3;
- (void)setExpandSegment:(BOOL)a3;
- (void)setFlick:(BOOL)a3;
- (void)setGesture:(BOOL)a3;
- (void)setMultitap:(BOOL)a3;
- (void)setObject:(id)a3;
- (void)setPopupVariant:(BOOL)a3;
- (void)setRapidDelete:(BOOL)a3;
- (void)setShiftDown:(BOOL)a3;
- (void)setShrinkSegment:(BOOL)a3;
- (void)setSynthesizedByAcceptingCandidate:(BOOL)a3;
@end

@implementation TIKeyboardInput

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(TIKeyboardInput *)self string];
  [v3 appendFormat:@"; string = %@", v4];

  v5 = [(TIKeyboardInput *)self output];
  [v3 appendFormat:@"; output = %@", v5];

  v6 = [(TIKeyboardInput *)self object];
  [v3 appendFormat:@"; object = %@", v6];

  v7 = [(TIKeyboardInput *)self isBackspace];
  v8 = "NO";
  if (v7)
  {
    v8 = "YES";
  }

  [v3 appendFormat:@"; backspace = %s", v8];
  objc_msgSend(v3, "appendString:", @"; flags =(");
  if ([(TIKeyboardInput *)self isUppercase])
  {
    [v3 appendString:@"isUpperCase "];
  }

  if ([(TIKeyboardInput *)self isAutoshifted])
  {
    [v3 appendString:@"isAutoshifted "];
  }

  if ([(TIKeyboardInput *)self isPopupVariant])
  {
    [v3 appendString:@"isPopupVariant "];
  }

  if ([(TIKeyboardInput *)self isMultitap])
  {
    [v3 appendString:@"isMultitap "];
  }

  if ([(TIKeyboardInput *)self isFlick])
  {
    [v3 appendString:@"isFlick"];
  }

  if ([(TIKeyboardInput *)self isGesture])
  {
    [v3 appendString:@"isGesture"];
  }

  if ([(TIKeyboardInput *)self isSynthesizedByAcceptingCandidate])
  {
    [v3 appendString:@"isSynthesizedByAcceptingCandidate "];
  }

  if ([(TIKeyboardInput *)self isDoubleSpace])
  {
    [v3 appendString:@"isDoubleSpace "];
  }

  if ([(TIKeyboardInput *)self isRapidDelete])
  {
    [v3 appendString:@"isRapidDelete "];
  }

  if ([(TIKeyboardInput *)self isShiftDown])
  {
    [v3 appendString:@"isShiftDown "];
  }

  [v3 appendString:@""]);
  v9 = [(TIKeyboardInput *)self touchEvent];
  [v3 appendFormat:@"; touchEvent = %@", v9];

  v10 = [(TIKeyboardInput *)self acceptedCandidate];
  [v3 appendFormat:@"; acceptedCandidate = %@", v10];

  v11 = [(TIKeyboardInput *)self inputManagerHint];
  [v3 appendFormat:@"; inputManagerHint = %@", v11];

  [v3 appendFormat:@"; transliterateType = %ld", -[TIKeyboardInput transliterationType](self, "transliterationType")];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  string = self->_string;
  v13 = v4;
  if (string)
  {
    [v4 encodeObject:string forKey:@"string"];
    v4 = v13;
  }

  output = self->_output;
  if (output)
  {
    [v13 encodeObject:output forKey:@"output"];
    v4 = v13;
  }

  handwritingStrokes = self->_handwritingStrokes;
  if (handwritingStrokes)
  {
    [v13 encodeObject:handwritingStrokes forKey:@"handwritingStrokes"];
    v4 = v13;
  }

  if (self->_backspace)
  {
    [v13 encodeBool:1 forKey:@"backspace"];
    v4 = v13;
  }

  integerValue = self->_flags.integerValue;
  if (integerValue)
  {
    [v13 encodeInteger:integerValue forKey:@"flags"];
    v4 = v13;
  }

  touchEvent = self->_touchEvent;
  if (touchEvent)
  {
    [v13 encodeObject:touchEvent forKey:@"touchEvent"];
    v4 = v13;
  }

  acceptedCandidate = self->_acceptedCandidate;
  if (acceptedCandidate)
  {
    [v13 encodeObject:acceptedCandidate forKey:@"acceptedCandidate"];
    v4 = v13;
  }

  inputManagerHint = self->_inputManagerHint;
  if (inputManagerHint)
  {
    [v13 encodeObject:inputManagerHint forKey:@"inputManagerHint"];
    v4 = v13;
  }

  transliterationType = self->_transliterationType;
  if (transliterationType)
  {
    [v13 encodeInteger:transliterationType forKey:@"transliterateType"];
    v4 = v13;
  }
}

- (TIKeyboardInput)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TIKeyboardInput;
  v5 = [(TIKeyboardInput *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v5->_string;
    v5->_string = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"output"];
    output = v5->_output;
    v5->_output = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handwritingStrokes"];
    handwritingStrokes = v5->_handwritingStrokes;
    v5->_handwritingStrokes = v10;

    v5->_backspace = [v4 decodeBoolForKey:@"backspace"];
    v5->_flags.integerValue = [v4 decodeIntegerForKey:@"flags"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"touchEvent"];
    touchEvent = v5->_touchEvent;
    v5->_touchEvent = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acceptedCandidate"];
    acceptedCandidate = v5->_acceptedCandidate;
    v5->_acceptedCandidate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputManagerHint"];
    inputManagerHint = v5->_inputManagerHint;
    v5->_inputManagerHint = v16;

    v5->_transliterationType = [v4 decodeIntForKey:@"transliterateType"];
    v18 = v5;
  }

  return v5;
}

- (void)setObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();
  handwritingStrokes = self->_handwritingStrokes;
  self->_handwritingStrokes = v4;
}

- (void)setSynthesizedByAcceptingCandidate:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFBF | v3;
}

- (void)setShrinkSegment:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xF7FF | v3;
}

- (void)setShiftDown:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFDFF | v3;
}

- (void)setRapidDelete:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFEFF | v3;
}

- (void)setPopupVariant:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFFB | v3;
}

- (void)setMultitap:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFF7 | v3;
}

- (void)setGesture:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFDF | v3;
}

- (void)setFlick:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFEF | v3;
}

- (void)setExpandSegment:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFBFF | v3;
}

- (void)setDoubleSpace:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFF7F | v3;
}

- (void)setAutoshifted:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFFD | v3;
}

@end