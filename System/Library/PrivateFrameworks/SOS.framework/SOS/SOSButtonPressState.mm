@interface SOSButtonPressState
- (SOSButtonPressState)initWithCoder:(id)coder;
- (SOSButtonPressState)initWithVolumeUpPressed:(BOOL)pressed Timestamp:(double)timestamp VolumeDownPressed:(BOOL)downPressed Timestamp:(double)a6 LockPressedTimestamp:(double)pressedTimestamp;
- (double)getButtonPressGap;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOSButtonPressState

- (SOSButtonPressState)initWithVolumeUpPressed:(BOOL)pressed Timestamp:(double)timestamp VolumeDownPressed:(BOOL)downPressed Timestamp:(double)a6 LockPressedTimestamp:(double)pressedTimestamp
{
  v13.receiver = self;
  v13.super_class = SOSButtonPressState;
  result = [(SOSButtonPressState *)&v13 init];
  if (result)
  {
    result->_volumeUpPressed = pressed;
    result->_volumeDownPressed = downPressed;
    result->_volumeUpPressedMCTTimestamp = timestamp;
    result->_volumeDownPressedMCTTimestamp = a6;
    result->_lockPressedMCTTimestamp = pressedTimestamp;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  volumeUpPressed = self->_volumeUpPressed;
  coderCopy = coder;
  [coderCopy encodeBool:volumeUpPressed forKey:@"volumeUpPressed"];
  [coderCopy encodeBool:self->_volumeDownPressed forKey:@"volumeDownPressed"];
  [coderCopy encodeDouble:@"volumeUpPressedMCTTimestamp" forKey:self->_volumeUpPressedMCTTimestamp];
  [coderCopy encodeDouble:@"volumeDownPressedMCTTimestamp" forKey:self->_volumeDownPressedMCTTimestamp];
  [coderCopy encodeDouble:@"lockPressedMCTTimestamp" forKey:self->_lockPressedMCTTimestamp];
}

- (SOSButtonPressState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SOSButtonPressState;
  v5 = [(SOSButtonPressState *)&v10 init];
  if (v5)
  {
    v5->_volumeUpPressed = [coderCopy decodeBoolForKey:@"volumeUpPressed"];
    v5->_volumeDownPressed = [coderCopy decodeBoolForKey:@"volumeDownPressed"];
    [coderCopy decodeDoubleForKey:@"volumeUpPressedMCTTimestamp"];
    v5->_volumeUpPressedMCTTimestamp = v6;
    [coderCopy decodeDoubleForKey:@"volumeDownPressedMCTTimestamp"];
    v5->_volumeDownPressedMCTTimestamp = v7;
    [coderCopy decodeDoubleForKey:@"lockPressedMCTTimestamp"];
    v5->_lockPressedMCTTimestamp = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  volumeUpPressed = [(SOSButtonPressState *)self volumeUpPressed];
  [(SOSButtonPressState *)self volumeUpPressedMCTTimestamp];
  v6 = v5;
  volumeDownPressed = [(SOSButtonPressState *)self volumeDownPressed];
  [(SOSButtonPressState *)self volumeDownPressedMCTTimestamp];
  v9 = v8;
  [(SOSButtonPressState *)self lockPressedMCTTimestamp];
  return [v3 stringWithFormat:@"SOSButtonPressState, volumeUpPressed, %d, volumeUpPressedMCTTimestamp, %f, volumeDownPressed, %d, volumeDownPressedMCTTimestamp, %f, lockPressedMCTTimestamp, %f", volumeUpPressed, v6, volumeDownPressed, v9, v10];
}

- (double)getButtonPressGap
{
  if ([(SOSButtonPressState *)self volumeUpPressed])
  {
    [(SOSButtonPressState *)self volumeUpPressedMCTTimestamp];
    v4 = v3 > 0.0;
  }

  else
  {
    v4 = 0;
  }

  if ([(SOSButtonPressState *)self volumeDownPressed])
  {
    [(SOSButtonPressState *)self volumeDownPressedMCTTimestamp];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  [(SOSButtonPressState *)self lockPressedMCTTimestamp];
  if (v7 <= 0.0 || !v4 && !v6)
  {
    return -1.0;
  }

  if (!v6)
  {
    [(SOSButtonPressState *)self lockPressedMCTTimestamp];
    v14 = v13;
    [(SOSButtonPressState *)self volumeUpPressedMCTTimestamp];
    return vabdd_f64(v14, v15);
  }

  if (!v4)
  {
    [(SOSButtonPressState *)self lockPressedMCTTimestamp];
    v14 = v16;
    [(SOSButtonPressState *)self volumeDownPressedMCTTimestamp];
    return vabdd_f64(v14, v15);
  }

  [(SOSButtonPressState *)self volumeUpPressedMCTTimestamp];
  v9 = v8;
  [(SOSButtonPressState *)self volumeDownPressedMCTTimestamp];
  if (v9 <= v10)
  {
    [(SOSButtonPressState *)self volumeUpPressedMCTTimestamp];
  }

  else
  {
    [(SOSButtonPressState *)self volumeDownPressedMCTTimestamp];
  }

  v17 = v11;
  [(SOSButtonPressState *)self lockPressedMCTTimestamp];
  return vabdd_f64(v18, v17);
}

@end