@interface WBSCyclerStatus
- (WBSCyclerStatus)initWithActiveTestSuiteName:(id)a3 seed:(unint64_t)a4 isConnectedToTestTarget:(BOOL)a5 isRunning:(BOOL)a6 iterationCount:(unint64_t)a7 executionTime:(double)a8;
- (WBSCyclerStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSCyclerStatus

- (WBSCyclerStatus)initWithActiveTestSuiteName:(id)a3 seed:(unint64_t)a4 isConnectedToTestTarget:(BOOL)a5 isRunning:(BOOL)a6 iterationCount:(unint64_t)a7 executionTime:(double)a8
{
  v14 = a3;
  v20.receiver = self;
  v20.super_class = WBSCyclerStatus;
  v15 = [(WBSCyclerStatus *)&v20 init];
  if (v15)
  {
    v16 = [v14 copy];
    activeTestSuiteName = v15->_activeTestSuiteName;
    v15->_activeTestSuiteName = v16;

    v15->_connectedToTestTarget = a5;
    v15->_running = a6;
    v15->_seed = a4;
    v15->_iterationCount = a7;
    v15->_executionTime = a8;
    v18 = v15;
  }

  return v15;
}

- (WBSCyclerStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeTestSuiteName"];
  v6 = [v4 decodeIntegerForKey:@"seed"];
  v7 = [v4 decodeBoolForKey:@"connectedToTestTarget"];
  v8 = [v4 decodeBoolForKey:@"running"];
  v9 = [v4 decodeIntegerForKey:@"iterationCount"];
  [v4 decodeDoubleForKey:@"executionTime"];
  v11 = v10;

  v12 = [(WBSCyclerStatus *)self initWithActiveTestSuiteName:v5 seed:v6 isConnectedToTestTarget:v7 isRunning:v8 iterationCount:v9 executionTime:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  connectedToTestTarget = self->_connectedToTestTarget;
  v5 = a3;
  [v5 encodeBool:connectedToTestTarget forKey:@"connectedToTestTarget"];
  [v5 encodeBool:self->_running forKey:@"running"];
  [v5 encodeObject:self->_activeTestSuiteName forKey:@"activeTestSuiteName"];
  [v5 encodeInteger:self->_seed forKey:@"seed"];
  [v5 encodeInteger:self->_iterationCount forKey:@"iterationCount"];
  [v5 encodeDouble:@"executionTime" forKey:self->_executionTime];
}

@end