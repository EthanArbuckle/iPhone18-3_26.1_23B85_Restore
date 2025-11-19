@interface PCSMTT
- (PCSMTT)init;
- (PCSMTT)initWithCoder:(id)a3;
- (PCSMTT)initWithMTT:(id)a3;
- (id)description;
- (id)jsonDict;
- (id)measurePoint:(id)a3;
- (void)completePoint:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)measure:(id)a3 block:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation PCSMTT

- (PCSMTT)init
{
  v9.receiver = self;
  v9.super_class = PCSMTT;
  v2 = [(PCSMTT *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;

    objc_storeStrong(&v2->_parentUUID, v2->_UUID);
    v5 = objc_opt_new();
    completedPoints = v2->_completedPoints;
    v2->_completedPoints = v5;

    [(PCSMTT *)v2 start];
    v7 = v2;
  }

  return v2;
}

- (PCSMTT)initWithMTT:(id)a3
{
  v4 = a3;
  v5 = [(PCSMTT *)self init];
  if (v5)
  {
    v6 = [v4 UUID];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v6;
  }

  return v5;
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"[MTT:%@:%lf", self->_UUID, *&self->_time];
  if ([(NSMutableArray *)self->_completedPoints count])
  {
    [v3 appendString:@"<"];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_completedPoints;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendFormat:@"%@", *(*(&v11 + 1) + 8 * i)];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [v3 appendString:@">"];
  }

  [v3 appendString:@"]"];
  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)jsonDict
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(PCSMTT *)self completedPoints];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(PCSMTT *)self completedPoints];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * i) jsonDict];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  v24[0] = @"uuid";
  v12 = [(PCSMTT *)self UUID];
  v13 = [v12 UUIDString];
  v25[0] = v13;
  v24[1] = @"time";
  v14 = MEMORY[0x1E696AD98];
  [(PCSMTT *)self time];
  v15 = [v14 numberWithDouble:?];
  v25[1] = v15;
  v25[2] = v5;
  v24[2] = @"completedPoints";
  v24[3] = @"returnedExistingIdentity";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PCSMTT returnedExistingIdentity](self, "returnedExistingIdentity")}];
  v25[3] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)start
{
  v3 = [MEMORY[0x1E695DF00] date];
  startTime = self->_startTime;
  self->_startTime = v3;

  MEMORY[0x1EEE66BB8]();
}

- (void)stop
{
  if (self->_startTime)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceDate:self->_startTime];
    self->_time = v4 + self->_time;

    startTime = self->_startTime;
    self->_startTime = 0;
  }
}

- (void)measure:(id)a3 block:(id)a4
{
  v6 = a4;
  v8 = [(PCSMTT *)self measurePoint:a3];
  v7 = v6[2](v6);

  [v8 complete:v7];
}

- (id)measurePoint:(id)a3
{
  v4 = a3;
  v5 = [[PCSMTTPoint alloc] initWithMTT:self name:v4];

  return v5;
}

- (void)completePoint:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (completePoint__onceToken != -1)
  {
    [PCSMTT completePoint:];
  }

  v5 = completePoint__log;
  if (os_log_type_enabled(completePoint__log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(PCSMTT *)self UUID];
    v8 = [(PCSMTT *)self parentUUID];
    v9 = [v4 name];
    [v4 time];
    v12 = 138413314;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    v20 = 1024;
    v21 = [v4 success];
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "measure:%@:%@:%@:%f:%d", &v12, 0x30u);
  }

  [(NSMutableArray *)self->_completedPoints addObject:v4];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __24__PCSMTT_completePoint___block_invoke()
{
  completePoint__log = os_log_create("PCSMTT", "PCSMTT");

  return MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_parentUUID forKey:@"parentUUID"];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_time];
  [v5 encodeObject:v6 forKey:@"time"];

  [v5 encodeObject:self->_completedPoints forKey:@"points"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PCSMTT returnedExistingIdentity](self, "returnedExistingIdentity")}];
  [v5 encodeObject:v7 forKey:@"returnedExistingIdentity"];
}

- (PCSMTT)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PCSMTT *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentUUID"];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    [v10 doubleValue];
    v5->_time = v11;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"points"];
    completedPoints = v5->_completedPoints;
    v5->_completedPoints = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"returnedExistingIdentity"];
    -[PCSMTT setReturnedExistingIdentity:](v5, "setReturnedExistingIdentity:", [v17 BOOLValue]);

    v18 = v5;
  }

  return v5;
}

@end