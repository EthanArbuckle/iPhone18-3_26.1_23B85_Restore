@interface SOSButtonPressState
- (SOSButtonPressState)initWithCoder:(id)a3;
- (SOSButtonPressState)initWithVolumeUpPressed:(BOOL)a3 Timestamp:(double)a4 VolumeDownPressed:(BOOL)a5 Timestamp:(double)a6 LockPressedTimestamp:(double)a7;
- (double)getButtonPressGap;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOSButtonPressState

- (SOSButtonPressState)initWithVolumeUpPressed:(BOOL)a3 Timestamp:(double)a4 VolumeDownPressed:(BOOL)a5 Timestamp:(double)a6 LockPressedTimestamp:(double)a7
{
  v13.receiver = self;
  v13.super_class = SOSButtonPressState;
  result = [(SOSButtonPressState *)&v13 init];
  if (result)
  {
    result->_volumeUpPressed = a3;
    result->_volumeDownPressed = a5;
    result->_volumeUpPressedMCTTimestamp = a4;
    result->_volumeDownPressedMCTTimestamp = a6;
    result->_lockPressedMCTTimestamp = a7;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  volumeUpPressed = self->_volumeUpPressed;
  v5 = a3;
  [v5 encodeBool:volumeUpPressed forKey:@"volumeUpPressed"];
  [v5 encodeBool:self->_volumeDownPressed forKey:@"volumeDownPressed"];
  [v5 encodeDouble:@"volumeUpPressedMCTTimestamp" forKey:self->_volumeUpPressedMCTTimestamp];
  [v5 encodeDouble:@"volumeDownPressedMCTTimestamp" forKey:self->_volumeDownPressedMCTTimestamp];
  [v5 encodeDouble:@"lockPressedMCTTimestamp" forKey:self->_lockPressedMCTTimestamp];
}

- (SOSButtonPressState)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SOSButtonPressState;
  v5 = [(SOSButtonPressState *)&v10 init];
  if (v5)
  {
    v5->_volumeUpPressed = [v4 decodeBoolForKey:@"volumeUpPressed"];
    v5->_volumeDownPressed = [v4 decodeBoolForKey:@"volumeDownPressed"];
    [v4 decodeDoubleForKey:@"volumeUpPressedMCTTimestamp"];
    v5->_volumeUpPressedMCTTimestamp = v6;
    [v4 decodeDoubleForKey:@"volumeDownPressedMCTTimestamp"];
    v5->_volumeDownPressedMCTTimestamp = v7;
    [v4 decodeDoubleForKey:@"lockPressedMCTTimestamp"];
    v5->_lockPressedMCTTimestamp = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SOSButtonPressState *)self volumeUpPressed];
  [(SOSButtonPressState *)self volumeUpPressedMCTTimestamp];
  v6 = v5;
  v7 = [(SOSButtonPressState *)self volumeDownPressed];
  [(SOSButtonPressState *)self volumeDownPressedMCTTimestamp];
  v9 = v8;
  [(SOSButtonPressState *)self lockPressedMCTTimestamp];
  return [v3 stringWithFormat:@"SOSButtonPressState, volumeUpPressed, %d, volumeUpPressedMCTTimestamp, %f, volumeDownPressed, %d, volumeDownPressedMCTTimestamp, %f, lockPressedMCTTimestamp, %f", v4, v6, v7, v9, v10];
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