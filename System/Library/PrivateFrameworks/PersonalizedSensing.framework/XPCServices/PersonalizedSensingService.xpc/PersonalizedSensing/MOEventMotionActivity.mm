@interface MOEventMotionActivity
+ (id)descriptionOfMotionType:(unint64_t)a3;
- (MOEventMotionActivity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventMotionActivity

+ (id)descriptionOfMotionType:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1000B51C0 + a3);
  }
}

- (void)encodeWithCoder:(id)a3
{
  motionStepCount = self->_motionStepCount;
  v5 = a3;
  [v5 encodeObject:motionStepCount forKey:@"motionStepCount"];
  [v5 encodeInteger:self->_motionType forKey:@"motionType"];
  [(NSNumber *)self->_motionDistance doubleValue];
  [v5 encodeDouble:@"motionDistance" forKey:?];
}

- (MOEventMotionActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOEventMotionActivity;
  v5 = [(MOEventMotionActivity *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"motionStepCount"];
    motionStepCount = v5->_motionStepCount;
    v5->_motionStepCount = v6;

    v5->_motionType = [v4 decodeIntForKey:@"motionType"];
    [v4 decodeDoubleForKey:@"motionDistance"];
    v8 = [NSNumber numberWithDouble:?];
    motionDistance = v5->_motionDistance;
    v5->_motionDistance = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventMotionActivity);
  v4->_motionType = self->_motionType;
  objc_storeStrong(&v4->_motionStepCount, self->_motionStepCount);
  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [MOEventMotionActivity descriptionOfMotionType:[(MOEventMotionActivity *)self motionType]];
  v5 = [v3 initWithFormat:@"motion type, %@", v4];

  return v5;
}

@end