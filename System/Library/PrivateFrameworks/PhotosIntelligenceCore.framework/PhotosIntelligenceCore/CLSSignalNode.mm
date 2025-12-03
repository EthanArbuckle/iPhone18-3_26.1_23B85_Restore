@interface CLSSignalNode
- (BOOL)failsHighPrecisionWithSignal:(id)signal;
- (BOOL)failsHighRecallWithSignal:(id)signal;
- (BOOL)failsWithSignal:(id)signal;
- (BOOL)passesHighPrecisionWithSignal:(id)signal;
- (BOOL)passesHighRecallWithSignal:(id)signal;
- (BOOL)passesWithSignal:(id)signal;
- (CLSSignalNode)initWithIdentifier:(unint64_t)identifier name:(id)name operatingPoint:(double)point highPrecisionOperatingPoint:(double)operatingPoint highRecallOperatingPoint:(double)recallOperatingPoint;
@end

@implementation CLSSignalNode

- (BOOL)failsHighRecallWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 < self->_highRecallOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)failsHighPrecisionWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 < self->_highPrecisionOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)failsWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 < self->_operatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesHighRecallWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 >= self->_highRecallOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesHighPrecisionWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 >= self->_highPrecisionOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 >= self->_operatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CLSSignalNode)initWithIdentifier:(unint64_t)identifier name:(id)name operatingPoint:(double)point highPrecisionOperatingPoint:(double)operatingPoint highRecallOperatingPoint:(double)recallOperatingPoint
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = CLSSignalNode;
  v14 = [(CLSSignalNode *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_identifier = identifier;
    objc_storeStrong(&v14->_name, name);
    v15->_operatingPoint = point;
    v15->_highPrecisionOperatingPoint = operatingPoint;
    v15->_highRecallOperatingPoint = recallOperatingPoint;
    if (point > operatingPoint)
    {
      __assert_rtn("[CLSSignalNode initWithIdentifier:name:operatingPoint:highPrecisionOperatingPoint:highRecallOperatingPoint:]", "CLSSignalModel.m", 31, "_operatingPoint <= _highPrecisionOperatingPoint");
    }

    if (point < recallOperatingPoint)
    {
      __assert_rtn("[CLSSignalNode initWithIdentifier:name:operatingPoint:highPrecisionOperatingPoint:highRecallOperatingPoint:]", "CLSSignalModel.m", 32, "_operatingPoint >= _highRecallOperatingPoint");
    }
  }

  return v15;
}

@end