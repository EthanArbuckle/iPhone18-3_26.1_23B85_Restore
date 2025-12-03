@interface SUBProgress
- (SUBProgress)initWithCoder:(id)coder;
- (id)copy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUBProgress

- (SUBProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SUBProgress;
  v5 = [(SUBProgress *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    phase = v5->_phase;
    v5->_phase = v6;

    [coderCopy decodeFloatForKey:@"portionComplete"];
    v5->_portionComplete = v8;
    [coderCopy decodeFloatForKey:@"estimatedTimeRemaining"];
    v5->_estimatedTimeRemaining = v9;
    v5->_isDone = [coderCopy decodeBoolForKey:@"isDone"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskID"];
    taskID = v5->_taskID;
    v5->_taskID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  phase = self->_phase;
  coderCopy = coder;
  [coderCopy encodeObject:phase forKey:@"phase"];
  *&v5 = self->_portionComplete;
  [coderCopy encodeFloat:@"portionComplete" forKey:v5];
  estimatedTimeRemaining = self->_estimatedTimeRemaining;
  *&estimatedTimeRemaining = estimatedTimeRemaining;
  [coderCopy encodeFloat:@"estimatedTimeRemaining" forKey:estimatedTimeRemaining];
  [coderCopy encodeBool:self->_isDone forKey:@"isDone"];
  [coderCopy encodeObject:self->_taskID forKey:@"taskID"];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

@end