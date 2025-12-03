@interface RMAttitude
- ($01BB1521EC52D44A8E7628F5261DCEC8)quaternion;
- (RMAttitude)initWithCoder:(id)coder;
- (id)_initWithQuaternion:(id)quaternion timestamp:(double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMAttitude

- (id)_initWithQuaternion:(id)quaternion timestamp:(double)timestamp
{
  var3 = quaternion.var3;
  var2 = quaternion.var2;
  var1 = quaternion.var1;
  var0 = quaternion.var0;
  v9.receiver = self;
  v9.super_class = RMAttitude;
  result = [(RMLogItem *)&v9 _initWithTimestamp:timestamp];
  if (result)
  {
    *(result + 2) = var0;
    *(result + 3) = var1;
    *(result + 4) = var2;
    *(result + 5) = var3;
  }

  return result;
}

- (RMAttitude)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RMAttitude;
  v5 = [(RMLogItem *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"kRMAttitudeCodingKeyQuaternionX"];
    v5->_quaternion.x = v6;
    [coderCopy decodeDoubleForKey:@"kRMAttitudeCodingKeyQuaternionY"];
    v5->_quaternion.y = v7;
    [coderCopy decodeDoubleForKey:@"kRMAttitudeCodingKeyQuaternionZ"];
    v5->_quaternion.z = v8;
    [coderCopy decodeDoubleForKey:@"kRMAttitudeCodingKeyQuaternionW"];
    v5->_quaternion.w = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = RMAttitude;
  coderCopy = coder;
  [(RMLogItem *)&v5 encodeWithCoder:coderCopy];
  selfCopy += 2;
  [coderCopy encodeDouble:@"kRMAttitudeCodingKeyQuaternionX" forKey:{*selfCopy, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"kRMAttitudeCodingKeyQuaternionY" forKey:selfCopy[1]];
  [coderCopy encodeDouble:@"kRMAttitudeCodingKeyQuaternionZ" forKey:selfCopy[2]];
  [coderCopy encodeDouble:@"kRMAttitudeCodingKeyQuaternionW" forKey:selfCopy[3]];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(RMLogItem *)self timestamp];
  v5 = [v4 _initWithTimestamp:?];
  v6 = v5;
  if (v5)
  {
    v7 = (v5 + 16);
    [(RMAttitude *)self quaternion];
    *v7 = v8;
    v6[3] = v9;
    v6[4] = v10;
    v6[5] = v11;
  }

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v7 = *&self->_quaternion.x;
  z = self->_quaternion.z;
  w = self->_quaternion.w;
  [(RMLogItem *)self timestamp];
  return [v2 stringWithFormat:@"Quaternion: <%f, %f, %f, %f> Timestamp %f", v7, *&z, *&w, v5];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)quaternion
{
  x = self->_quaternion.x;
  y = self->_quaternion.y;
  z = self->_quaternion.z;
  w = self->_quaternion.w;
  result.var3 = w;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end