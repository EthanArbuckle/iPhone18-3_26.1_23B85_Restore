@interface CSSPUDM
- (CSSPUDM)initWithTimestamp:(unint64_t)a3 quaternion:(const float *)a4 rate:(const float *)a5;
- (CSSPUDM)initWithTimestamp:(unint64_t)a3 quaternion:(const float *)a4 rate:(const float *)a5 userAccel:(const float *)a6;
@end

@implementation CSSPUDM

- (CSSPUDM)initWithTimestamp:(unint64_t)a3 quaternion:(const float *)a4 rate:(const float *)a5
{
  v9.receiver = self;
  v9.super_class = CSSPUDM;
  result = [(CSSPUDM *)&v9 init];
  if (result)
  {
    *(&result->_c_struct.status + 1) = a3;
    result->_c_struct.quaternion[0] = *a4;
    result->_c_struct.quaternion[1] = a4[1];
    result->_c_struct.quaternion[2] = a4[2];
    result->_c_struct.quaternion[3] = a4[3];
    result->_c_struct.rotation[0] = *a5;
    result->_c_struct.rotation[1] = a5[1];
    result->_c_struct.rotation[2] = a5[2];
  }

  return result;
}

- (CSSPUDM)initWithTimestamp:(unint64_t)a3 quaternion:(const float *)a4 rate:(const float *)a5 userAccel:(const float *)a6
{
  v11.receiver = self;
  v11.super_class = CSSPUDM;
  result = [(CSSPUDM *)&v11 init];
  if (result)
  {
    *(&result->_c_struct.status + 1) = a3;
    result->_c_struct.quaternion[0] = *a4;
    result->_c_struct.quaternion[1] = a4[1];
    result->_c_struct.quaternion[2] = a4[2];
    result->_c_struct.quaternion[3] = a4[3];
    result->_c_struct.rotation[0] = *a5;
    result->_c_struct.rotation[1] = a5[1];
    result->_c_struct.rotation[2] = a5[2];
    result->_c_struct.userAccel[0] = *a6;
    result->_c_struct.userAccel[1] = a6[1];
    result->_c_struct.userAccel[2] = a6[2];
  }

  return result;
}

@end