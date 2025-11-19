@interface CLSSignalNode
- (BOOL)failsHighPrecisionWithSignal:(id)a3;
- (BOOL)failsHighRecallWithSignal:(id)a3;
- (BOOL)failsWithSignal:(id)a3;
- (BOOL)passesHighPrecisionWithSignal:(id)a3;
- (BOOL)passesHighRecallWithSignal:(id)a3;
- (BOOL)passesWithSignal:(id)a3;
- (CLSSignalNode)initWithIdentifier:(unint64_t)a3 name:(id)a4 operatingPoint:(double)a5 highPrecisionOperatingPoint:(double)a6 highRecallOperatingPoint:(double)a7;
@end

@implementation CLSSignalNode

- (BOOL)failsHighRecallWithSignal:(id)a3
{
  v4 = a3;
  if ([v4 extendedSceneIdentifier] == self->_identifier)
  {
    [v4 confidence];
    v6 = v5 < self->_highRecallOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)failsHighPrecisionWithSignal:(id)a3
{
  v4 = a3;
  if ([v4 extendedSceneIdentifier] == self->_identifier)
  {
    [v4 confidence];
    v6 = v5 < self->_highPrecisionOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)failsWithSignal:(id)a3
{
  v4 = a3;
  if ([v4 extendedSceneIdentifier] == self->_identifier)
  {
    [v4 confidence];
    v6 = v5 < self->_operatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesHighRecallWithSignal:(id)a3
{
  v4 = a3;
  if ([v4 extendedSceneIdentifier] == self->_identifier)
  {
    [v4 confidence];
    v6 = v5 >= self->_highRecallOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesHighPrecisionWithSignal:(id)a3
{
  v4 = a3;
  if ([v4 extendedSceneIdentifier] == self->_identifier)
  {
    [v4 confidence];
    v6 = v5 >= self->_highPrecisionOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesWithSignal:(id)a3
{
  v4 = a3;
  if ([v4 extendedSceneIdentifier] == self->_identifier)
  {
    [v4 confidence];
    v6 = v5 >= self->_operatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CLSSignalNode)initWithIdentifier:(unint64_t)a3 name:(id)a4 operatingPoint:(double)a5 highPrecisionOperatingPoint:(double)a6 highRecallOperatingPoint:(double)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = CLSSignalNode;
  v14 = [(CLSSignalNode *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_identifier = a3;
    objc_storeStrong(&v14->_name, a4);
    v15->_operatingPoint = a5;
    v15->_highPrecisionOperatingPoint = a6;
    v15->_highRecallOperatingPoint = a7;
    if (a5 > a6)
    {
      __assert_rtn("[CLSSignalNode initWithIdentifier:name:operatingPoint:highPrecisionOperatingPoint:highRecallOperatingPoint:]", "CLSSignalModel.m", 31, "_operatingPoint <= _highPrecisionOperatingPoint");
    }

    if (a5 < a7)
    {
      __assert_rtn("[CLSSignalNode initWithIdentifier:name:operatingPoint:highPrecisionOperatingPoint:highRecallOperatingPoint:]", "CLSSignalModel.m", 32, "_operatingPoint >= _highRecallOperatingPoint");
    }
  }

  return v15;
}

@end