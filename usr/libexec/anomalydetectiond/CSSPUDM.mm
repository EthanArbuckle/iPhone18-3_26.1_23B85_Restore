@interface CSSPUDM
- (CSSPUDM)initWithTimestamp:(unint64_t)timestamp quaternion:(const float *)quaternion rate:(const float *)rate;
- (CSSPUDM)initWithTimestamp:(unint64_t)timestamp quaternion:(const float *)quaternion rate:(const float *)rate userAccel:(const float *)accel;
@end

@implementation CSSPUDM

- (CSSPUDM)initWithTimestamp:(unint64_t)timestamp quaternion:(const float *)quaternion rate:(const float *)rate
{
  v9.receiver = self;
  v9.super_class = CSSPUDM;
  result = [(CSSPUDM *)&v9 init];
  if (result)
  {
    *(&result->_c_struct.status + 1) = timestamp;
    result->_c_struct.quaternion[0] = *quaternion;
    result->_c_struct.quaternion[1] = quaternion[1];
    result->_c_struct.quaternion[2] = quaternion[2];
    result->_c_struct.quaternion[3] = quaternion[3];
    result->_c_struct.rotation[0] = *rate;
    result->_c_struct.rotation[1] = rate[1];
    result->_c_struct.rotation[2] = rate[2];
  }

  return result;
}

- (CSSPUDM)initWithTimestamp:(unint64_t)timestamp quaternion:(const float *)quaternion rate:(const float *)rate userAccel:(const float *)accel
{
  v11.receiver = self;
  v11.super_class = CSSPUDM;
  result = [(CSSPUDM *)&v11 init];
  if (result)
  {
    *(&result->_c_struct.status + 1) = timestamp;
    result->_c_struct.quaternion[0] = *quaternion;
    result->_c_struct.quaternion[1] = quaternion[1];
    result->_c_struct.quaternion[2] = quaternion[2];
    result->_c_struct.quaternion[3] = quaternion[3];
    result->_c_struct.rotation[0] = *rate;
    result->_c_struct.rotation[1] = rate[1];
    result->_c_struct.rotation[2] = rate[2];
    result->_c_struct.userAccel[0] = *accel;
    result->_c_struct.userAccel[1] = accel[1];
    result->_c_struct.userAccel[2] = accel[2];
  }

  return result;
}

@end