@interface REMMigrationResult
- (REMMigrationResult)initWithCoder:(id)coder;
- (REMMigrationResult)initWithState:(id)state IsObserver:(BOOL)observer timeElapsed:(double)elapsed listsMigrated:(unint64_t)migrated remindersMigrated:(unint64_t)remindersMigrated log:(id)log;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMMigrationResult

- (REMMigrationResult)initWithState:(id)state IsObserver:(BOOL)observer timeElapsed:(double)elapsed listsMigrated:(unint64_t)migrated remindersMigrated:(unint64_t)remindersMigrated log:(id)log
{
  stateCopy = state;
  logCopy = log;
  v20.receiver = self;
  v20.super_class = REMMigrationResult;
  v17 = [(REMMigrationResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_state, state);
    v18->_isObserver = observer;
    v18->_timeElapsed = elapsed;
    v18->_listsMigrated = migrated;
    v18->_remindersMigrated = remindersMigrated;
    objc_storeStrong(&v18->_log, log);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  state = [(REMMigrationResult *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  [coderCopy encodeBool:-[REMMigrationResult isObserver](self forKey:{"isObserver"), @"isObserver"}];
  [(REMMigrationResult *)self timeElapsed];
  [coderCopy encodeDouble:@"timeElapsed" forKey:?];
  [coderCopy encodeInteger:-[REMMigrationResult listsMigrated](self forKey:{"listsMigrated"), @"listsMigrated"}];
  [coderCopy encodeInteger:-[REMMigrationResult remindersMigrated](self forKey:{"remindersMigrated"), @"remindersMigrated"}];
  v6 = [(REMMigrationResult *)self log];
  [coderCopy encodeObject:v6 forKey:@"log"];
}

- (REMMigrationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  v6 = [coderCopy decodeBoolForKey:@"isObserver"];
  [coderCopy decodeDoubleForKey:@"timeElapsed"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"listsMigrated"];
  v10 = [coderCopy decodeIntegerForKey:@"remindersMigrated"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"log"];

  v12 = [(REMMigrationResult *)self initWithState:v5 IsObserver:v6 timeElapsed:v9 listsMigrated:v10 remindersMigrated:v11 log:v8];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p ("), v5, self;

  state = [(REMMigrationResult *)self state];
  [v6 appendFormat:@"state: %@, ", state];

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