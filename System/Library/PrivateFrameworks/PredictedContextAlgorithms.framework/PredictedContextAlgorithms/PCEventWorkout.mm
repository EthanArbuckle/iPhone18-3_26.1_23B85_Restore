@interface PCEventWorkout
- (PCEventWorkout)init;
- (PCEventWorkout)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCEventWorkout

- (PCEventWorkout)init
{
  v3.receiver = self;
  v3.super_class = PCEventWorkout;
  return [(PCEventWorkout *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  workoutType = self->_workoutType;
  v5 = a3;
  [v5 encodeObject:workoutType forKey:@"workoutType"];
  [v5 encodeObject:self->_workoutLocationStart forKey:@"workoutLocationStart"];
  [v5 encodeInteger:self->_workoutSessionLocationType forKey:@"workoutSessionLocationType"];
  [v5 encodeInteger:self->_workoutSwimmingLocationType forKey:@"workoutSwimmingLocationType"];
}

- (PCEventWorkout)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PCEventWorkout;
  v5 = [(PCEventWorkout *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutType"];
    workoutType = v5->_workoutType;
    v5->_workoutType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutLocationStart"];
    workoutLocationStart = v5->_workoutLocationStart;
    v5->_workoutLocationStart = v8;

    v5->_workoutSessionLocationType = [v4 decodeIntegerForKey:@"workoutSessionLocationType"];
    v5->_workoutSwimmingLocationType = [v4 decodeIntegerForKey:@"workoutSwimmingLocationType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PCEventWorkout);
  objc_storeStrong(&v4->_workoutType, self->_workoutType);
  objc_storeStrong(&v4->_workoutLocationStart, self->_workoutLocationStart);
  v4->_workoutSessionLocationType = self->_workoutSessionLocationType;
  v4->_workoutSwimmingLocationType = self->_workoutSwimmingLocationType;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  workoutType = self->_workoutType;
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  v8 = [(NSUUID *)self->_hkObjectIdentifier UUIDString];
  v9 = [v3 stringWithFormat:@"<%@ workoutType:%@, sourceBundleIdentifier:%@, hkObjectIdentifier:%@, workoutSessionLocationType:%d, workoutSwimmingLocationType:%d>", v5, workoutType, sourceBundleIdentifier, v8, self->_workoutSessionLocationType, self->_workoutSwimmingLocationType];

  return v9;
}

@end