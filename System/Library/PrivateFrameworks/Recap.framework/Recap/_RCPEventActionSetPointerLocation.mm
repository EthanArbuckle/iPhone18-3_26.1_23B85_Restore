@interface _RCPEventActionSetPointerLocation
- (CGPoint)modelPoint;
- (_RCPEventActionSetPointerLocation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)play;
@end

@implementation _RCPEventActionSetPointerLocation

- (_RCPEventActionSetPointerLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _RCPEventActionSetPointerLocation;
  v5 = [(RCPEventAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"modelPointX"];
    v5->_modelPoint.x = v6;
    [coderCopy decodeDoubleForKey:@"modelPointY"];
    v5->_modelPoint.y = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = _RCPEventActionSetPointerLocation;
  coderCopy = coder;
  [(RCPEventAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"modelPointX" forKey:{*++selfCopy, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"modelPointY" forKey:selfCopy[1]];
}

- (void)play
{
  v3 = +[RCPEventEnvironment currentEnvironment];
  screens = [v3 screens];
  firstObject = [screens firstObject];

  [firstObject pointSize];
  x = self->_modelPoint.x;
  y = self->_modelPoint.y;
  v9 = v5 * x;
  v10 = v6 * y;
  if (_CLTLogLevel >= 2)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"set model point: %g, %g -> %g, %g \n", *&x, *&y, v5 * x, v6 * y];
    uTF8String = [v11 UTF8String];
    v13 = MEMORY[0x277D85E08];
    fputs(uTF8String, *MEMORY[0x277D85E08]);

    fflush(*v13);
  }

  mEMORY[0x277CF0720] = [MEMORY[0x277CF0720] sharedInstance];
  [mEMORY[0x277CF0720] setGlobalPointerPosition:{v9, v10}];
}

- (CGPoint)modelPoint
{
  x = self->_modelPoint.x;
  y = self->_modelPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end