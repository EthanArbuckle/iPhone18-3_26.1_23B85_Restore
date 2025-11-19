@interface REMMigrationResult
- (REMMigrationResult)initWithCoder:(id)a3;
- (REMMigrationResult)initWithState:(id)a3 IsObserver:(BOOL)a4 timeElapsed:(double)a5 listsMigrated:(unint64_t)a6 remindersMigrated:(unint64_t)a7 log:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMMigrationResult

- (REMMigrationResult)initWithState:(id)a3 IsObserver:(BOOL)a4 timeElapsed:(double)a5 listsMigrated:(unint64_t)a6 remindersMigrated:(unint64_t)a7 log:(id)a8
{
  v15 = a3;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = REMMigrationResult;
  v17 = [(REMMigrationResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_state, a3);
    v18->_isObserver = a4;
    v18->_timeElapsed = a5;
    v18->_listsMigrated = a6;
    v18->_remindersMigrated = a7;
    objc_storeStrong(&v18->_log, a8);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMMigrationResult *)self state];
  [v4 encodeObject:v5 forKey:@"state"];

  [v4 encodeBool:-[REMMigrationResult isObserver](self forKey:{"isObserver"), @"isObserver"}];
  [(REMMigrationResult *)self timeElapsed];
  [v4 encodeDouble:@"timeElapsed" forKey:?];
  [v4 encodeInteger:-[REMMigrationResult listsMigrated](self forKey:{"listsMigrated"), @"listsMigrated"}];
  [v4 encodeInteger:-[REMMigrationResult remindersMigrated](self forKey:{"remindersMigrated"), @"remindersMigrated"}];
  v6 = [(REMMigrationResult *)self log];
  [v4 encodeObject:v6 forKey:@"log"];
}

- (REMMigrationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  v6 = [v4 decodeBoolForKey:@"isObserver"];
  [v4 decodeDoubleForKey:@"timeElapsed"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"listsMigrated"];
  v10 = [v4 decodeIntegerForKey:@"remindersMigrated"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"log"];

  v12 = [(REMMigrationResult *)self initWithState:v5 IsObserver:v6 timeElapsed:v9 listsMigrated:v10 remindersMigrated:v11 log:v8];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p ("), v5, self;

  v7 = [(REMMigrationResult *)self state];
  [v6 appendFormat:@"state: %@, ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMMigrationResult isObserver](self, "isObserver")}];
  [v6 appendFormat:@"isObserver: %@, ", v8];

  v9 = MEMORY[0x1E696AD98];
  [(REMMigrationResult *)self timeElapsed];
  v10 = [v9 numberWithDouble:?];
  [v6 appendFormat:@"timeElapsed: %@, ", v10];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[REMMigrationResult listsMigrated](self, "listsMigrated")}];
  [v6 appendFormat:@"listsMigrated: %@, ", v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[REMMigrationResult remindersMigrated](self, "remindersMigrated")}];
  [v6 appendFormat:@"remindersMigrated: %@, ", v12];

  v13 = [(REMMigrationResult *)self log];
  [v6 appendFormat:@"log: %@>"], v13);

  return v6;
}

@end