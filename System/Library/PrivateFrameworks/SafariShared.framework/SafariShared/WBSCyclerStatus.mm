@interface WBSCyclerStatus
- (WBSCyclerStatus)initWithActiveTestSuiteName:(id)name seed:(unint64_t)seed isConnectedToTestTarget:(BOOL)target isRunning:(BOOL)running iterationCount:(unint64_t)count executionTime:(double)time;
- (WBSCyclerStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSCyclerStatus

- (WBSCyclerStatus)initWithActiveTestSuiteName:(id)name seed:(unint64_t)seed isConnectedToTestTarget:(BOOL)target isRunning:(BOOL)running iterationCount:(unint64_t)count executionTime:(double)time
{
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = WBSCyclerStatus;
  v15 = [(WBSCyclerStatus *)&v20 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    activeTestSuiteName = v15->_activeTestSuiteName;
    v15->_activeTestSuiteName = v16;

    v15->_connectedToTestTarget = target;
    v15->_running = running;
    v15->_seed = seed;
    v15->_iterationCount = count;
    v15->_executionTime = time;
    v18 = v15;
  }

  return v15;
}

- (WBSCyclerStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeTestSuiteName"];
  v6 = [coderCopy decodeIntegerForKey:@"seed"];
  v7 = [coderCopy decodeBoolForKey:@"connectedToTestTarget"];
  v8 = [coderCopy decodeBoolForKey:@"running"];
  v9 = [coderCopy decodeIntegerForKey:@"iterationCount"];
  [coderCopy decodeDoubleForKey:@"executionTime"];
  v11 = v10;

  v12 = [(WBSCyclerStatus *)self initWithActiveTestSuiteName:v5 seed:v6 isConnectedToTestTarget:v7 isRunning:v8 iterationCount:v9 executionTime:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  connectedToTestTarget = self->_connectedToTestTarget;
  coderCopy = coder;
  [coderCopy encodeBool:connectedToTestTarget forKey:@"connectedToTestTarget"];
  [coderCopy encodeBool:self->_running forKey:@"running"];
  [coderCopy encodeObject:self->_activeTestSuiteName forKey:@"activeTestSuiteName"];
  [coderCopy encodeInteger:self->_seed forKey:@"seed"];
  [coderCopy encodeInteger:self->_iterationCount forKey:@"iterationCount"];
  [coderCopy encodeDouble:@"executionTime" forKey:self->_executionTime];
}

@end