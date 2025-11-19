@interface _RCPEventActionSetPointerLocation
- (CGPoint)modelPoint;
- (_RCPEventActionSetPointerLocation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)play;
@end

@implementation _RCPEventActionSetPointerLocation

- (_RCPEventActionSetPointerLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _RCPEventActionSetPointerLocation;
  v5 = [(RCPEventAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"modelPointX"];
    v5->_modelPoint.x = v6;
    [v4 decodeDoubleForKey:@"modelPointY"];
    v5->_modelPoint.y = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = self;
  v5.receiver = self;
  v5.super_class = _RCPEventActionSetPointerLocation;
  v4 = a3;
  [(RCPEventAction *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"modelPointX" forKey:{*++v3, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"modelPointY" forKey:v3[1]];
}

- (void)play
{
  v3 = +[RCPEventEnvironment currentEnvironment];
  v4 = [v3 screens];
  v15 = [v4 firstObject];

  [v15 pointSize];
  x = self->_modelPoint.x;
  y = self->_modelPoint.y;
  v9 = v5 * x;
  v10 = v6 * y;
  if (_CLTLogLevel >= 2)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"set model point: %g, %g -> %g, %g \n", *&x, *&y, v5 * x, v6 * y];
    v12 = [v11 UTF8String];
    v13 = MEMORY[0x277D85E08];
    fputs(v12, *MEMORY[0x277D85E08]);

    fflush(*v13);
  }

  v14 = [MEMORY[0x277CF0720] sharedInstance];
  [v14 setGlobalPointerPosition:{v9, v10}];
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