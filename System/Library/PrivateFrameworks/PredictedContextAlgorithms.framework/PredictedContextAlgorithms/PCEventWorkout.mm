@interface PCEventWorkout
- (PCEventWorkout)init;
- (PCEventWorkout)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCEventWorkout

- (PCEventWorkout)init
{
  v3.receiver = self;
  v3.super_class = PCEventWorkout;
  return [(PCEventWorkout *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  workoutType = self->_workoutType;
  coderCopy = coder;
  [coderCopy encodeObject:workoutType forKey:@"workoutType"];
  [coderCopy encodeObject:self->_workoutLocationStart forKey:@"workoutLocationStart"];
  [coderCopy encodeInteger:self->_workoutSessionLocationType forKey:@"workoutSessionLocationType"];
  [coderCopy encodeInteger:self->_workoutSwimmingLocationType forKey:@"workoutSwimmingLocationType"];
}

- (PCEventWorkout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PCEventWorkout;
  v5 = [(PCEventWorkout *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutType"];
    workoutType = v5->_workoutType;
    v5->_workoutType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutLocationStart"];
    workoutLocationStart = v5->_workoutLocationStart;
    v5->_workoutLocationStart = v8;

    v5->_workoutSessionLocationType = [coderCopy decodeIntegerForKey:@"workoutSessionLocationType"];
    v5->_workoutSwimmingLocationType = [coderCopy decodeIntegerForKey:@"workoutSwimmingLocationType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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
  uUIDString = [(NSUUID *)self->_hkObjectIdentifier UUIDString];
  v9 = [v3 stringWithFormat:@"<%@ workoutType:%@, sourceBundleIdentifier:%@, hkObjectIdentifier:%@, workoutSessionLocationType:%d, workoutSwimmingLocationType:%d>", v5, workoutType, sourceBundleIdentifier, uUIDString, self->_workoutSessionLocationType, self->_workoutSwimmingLocationType];

  return v9;
}

@end