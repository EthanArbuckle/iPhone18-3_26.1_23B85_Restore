@interface SUBProgress
- (SUBProgress)initWithCoder:(id)a3;
- (id)copy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUBProgress

- (SUBProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUBProgress;
  v5 = [(SUBProgress *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    phase = v5->_phase;
    v5->_phase = v6;

    [v4 decodeFloatForKey:@"portionComplete"];
    v5->_portionComplete = v8;
    [v4 decodeFloatForKey:@"estimatedTimeRemaining"];
    v5->_estimatedTimeRemaining = v9;
    v5->_isDone = [v4 decodeBoolForKey:@"isDone"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskID"];
    taskID = v5->_taskID;
    v5->_taskID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  phase = self->_phase;
  v7 = a3;
  [v7 encodeObject:phase forKey:@"phase"];
  *&v5 = self->_portionComplete;
  [v7 encodeFloat:@"portionComplete" forKey:v5];
  estimatedTimeRemaining = self->_estimatedTimeRemaining;
  *&estimatedTimeRemaining = estimatedTimeRemaining;
  [v7 encodeFloat:@"estimatedTimeRemaining" forKey:estimatedTimeRemaining];
  [v7 encodeBool:self->_isDone forKey:@"isDone"];
  [v7 encodeObject:self->_taskID forKey:@"taskID"];
}

- (id)copy
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

@end