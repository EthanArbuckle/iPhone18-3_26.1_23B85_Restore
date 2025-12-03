@interface TIKeyboardInput
- (TIKeyboardInput)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setAutoshifted:(BOOL)autoshifted;
- (void)setDoubleSpace:(BOOL)space;
- (void)setExpandSegment:(BOOL)segment;
- (void)setFlick:(BOOL)flick;
- (void)setGesture:(BOOL)gesture;
- (void)setMultitap:(BOOL)multitap;
- (void)setObject:(id)object;
- (void)setPopupVariant:(BOOL)variant;
- (void)setRapidDelete:(BOOL)delete;
- (void)setShiftDown:(BOOL)down;
- (void)setShrinkSegment:(BOOL)segment;
- (void)setSynthesizedByAcceptingCandidate:(BOOL)candidate;
@end

@implementation TIKeyboardInput

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  string = [(TIKeyboardInput *)self string];
  [v3 appendFormat:@"; string = %@", string];

  output = [(TIKeyboardInput *)self output];
  [v3 appendFormat:@"; output = %@", output];

  object = [(TIKeyboardInput *)self object];
  [v3 appendFormat:@"; object = %@", object];

  isBackspace = [(TIKeyboardInput *)self isBackspace];
  v8 = "NO";
  if (isBackspace)
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
  touchEvent = [(TIKeyboardInput *)self touchEvent];
  [v3 appendFormat:@"; touchEvent = %@", touchEvent];

  acceptedCandidate = [(TIKeyboardInput *)self acceptedCandidate];
  [v3 appendFormat:@"; acceptedCandidate = %@", acceptedCandidate];

  inputManagerHint = [(TIKeyboardInput *)self inputManagerHint];
  [v3 appendFormat:@"; inputManagerHint = %@", inputManagerHint];

  [v3 appendFormat:@"; transliterateType = %ld", -[TIKeyboardInput transliterationType](self, "transliterationType")];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = self->_string;
  v13 = coderCopy;
  if (string)
  {
    [coderCopy encodeObject:string forKey:@"string"];
    coderCopy = v13;
  }

  output = self->_output;
  if (output)
  {
    [v13 encodeObject:output forKey:@"output"];
    coderCopy = v13;
  }

  handwritingStrokes = self->_handwritingStrokes;
  if (handwritingStrokes)
  {
    [v13 encodeObject:handwritingStrokes forKey:@"handwritingStrokes"];
    coderCopy = v13;
  }

  if (self->_backspace)
  {
    [v13 encodeBool:1 forKey:@"backspace"];
    coderCopy = v13;
  }

  integerValue = self->_flags.integerValue;
  if (integerValue)
  {
    [v13 encodeInteger:integerValue forKey:@"flags"];
    coderCopy = v13;
  }

  touchEvent = self->_touchEvent;
  if (touchEvent)
  {
    [v13 encodeObject:touchEvent forKey:@"touchEvent"];
    coderCopy = v13;
  }

  acceptedCandidate = self->_acceptedCandidate;
  if (acceptedCandidate)
  {
    [v13 encodeObject:acceptedCandidate forKey:@"acceptedCandidate"];
    coderCopy = v13;
  }

  inputManagerHint = self->_inputManagerHint;
  if (inputManagerHint)
  {
    [v13 encodeObject:inputManagerHint forKey:@"inputManagerHint"];
    coderCopy = v13;
  }

  transliterationType = self->_transliterationType;
  if (transliterationType)
  {
    [v13 encodeInteger:transliterationType forKey:@"transliterateType"];
    coderCopy = v13;
  }
}

- (TIKeyboardInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = TIKeyboardInput;
  v5 = [(TIKeyboardInput *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v5->_string;
    v5->_string = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"output"];
    output = v5->_output;
    v5->_output = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handwritingStrokes"];
    handwritingStrokes = v5->_handwritingStrokes;
    v5->_handwritingStrokes = v10;

    v5->_backspace = [coderCopy decodeBoolForKey:@"backspace"];
    v5->_flags.integerValue = [coderCopy decodeIntegerForKey:@"flags"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"touchEvent"];
    touchEvent = v5->_touchEvent;
    v5->_touchEvent = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acceptedCandidate"];
    acceptedCandidate = v5->_acceptedCandidate;
    v5->_acceptedCandidate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputManagerHint"];
    inputManagerHint = v5->_inputManagerHint;
    v5->_inputManagerHint = v16;

    v5->_transliterationType = [coderCopy decodeIntForKey:@"transliterateType"];
    v18 = v5;
  }

  return v5;
}

- (void)setObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  objc_opt_isKindOfClass();
  handwritingStrokes = self->_handwritingStrokes;
  self->_handwritingStrokes = objectCopy;
}

- (void)setSynthesizedByAcceptingCandidate:(BOOL)candidate
{
  if (candidate)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFBF | v3;
}

- (void)setShrinkSegment:(BOOL)segment
{
  if (segment)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xF7FF | v3;
}

- (void)setShiftDown:(BOOL)down
{
  if (down)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFDFF | v3;
}

- (void)setRapidDelete:(BOOL)delete
{
  if (delete)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFEFF | v3;
}

- (void)setPopupVariant:(BOOL)variant
{
  if (variant)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFFB | v3;
}

- (void)setMultitap:(BOOL)multitap
{
  if (multitap)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFF7 | v3;
}

- (void)setGesture:(BOOL)gesture
{
  if (gesture)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFDF | v3;
}

- (void)setFlick:(BOOL)flick
{
  if (flick)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFFEF | v3;
}

- (void)setExpandSegment:(BOOL)segment
{
  if (segment)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFBFF | v3;
}

- (void)setDoubleSpace:(BOOL)space
{
  if (space)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_flags.integerValue) = self->_flags.integerValue & 0xFF7F | v3;
}

- (void)setAutoshifted:(BOOL)autoshifted
{
  if (autoshifted)
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