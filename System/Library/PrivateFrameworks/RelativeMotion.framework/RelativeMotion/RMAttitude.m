@interface RMAttitude
- ($01BB1521EC52D44A8E7628F5261DCEC8)quaternion;
- (RMAttitude)initWithCoder:(id)a3;
- (id)_initWithQuaternion:(id)a3 timestamp:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMAttitude

- (id)_initWithQuaternion:(id)a3 timestamp:(double)a4
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v9.receiver = self;
  v9.super_class = RMAttitude;
  result = [(RMLogItem *)&v9 _initWithTimestamp:a4];
  if (result)
  {
    *(result + 2) = var0;
    *(result + 3) = var1;
    *(result + 4) = var2;
    *(result + 5) = var3;
  }

  return result;
}

- (RMAttitude)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RMAttitude;
  v5 = [(RMLogItem *)&v11 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"kRMAttitudeCodingKeyQuaternionX"];
    v5->_quaternion.x = v6;
    [v4 decodeDoubleForKey:@"kRMAttitudeCodingKeyQuaternionY"];
    v5->_quaternion.y = v7;
    [v4 decodeDoubleForKey:@"kRMAttitudeCodingKeyQuaternionZ"];
    v5->_quaternion.z = v8;
    [v4 decodeDoubleForKey:@"kRMAttitudeCodingKeyQuaternionW"];
    v5->_quaternion.w = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = self;
  v5.receiver = self;
  v5.super_class = RMAttitude;
  v4 = a3;
  [(RMLogItem *)&v5 encodeWithCoder:v4];
  v3 += 2;
  [v4 encodeDouble:@"kRMAttitudeCodingKeyQuaternionX" forKey:{*v3, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"kRMAttitudeCodingKeyQuaternionY" forKey:v3[1]];
  [v4 encodeDouble:@"kRMAttitudeCodingKeyQuaternionZ" forKey:v3[2]];
  [v4 encodeDouble:@"kRMAttitudeCodingKeyQuaternionW" forKey:v3[3]];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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