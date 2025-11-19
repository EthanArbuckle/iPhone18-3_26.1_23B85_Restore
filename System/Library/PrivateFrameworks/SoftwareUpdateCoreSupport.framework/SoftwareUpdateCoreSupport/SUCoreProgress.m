@interface SUCoreProgress
- (BOOL)isEqual:(id)a3;
- (BOOL)sameProgress:(id)a3 isStalled:(BOOL)a4 portion:(float)a5 remaining:(double)a6;
- (BOOL)sameProgress:(id)a3 isStalled:(BOOL)a4 portion:(float)a5 remaining:(double)a6 actionText:(id)a7;
- (SUCoreProgress)initWithCoder:(id)a3;
- (SUCoreProgress)initWithPhase:(id)a3 isStalled:(BOOL)a4 portionComplete:(float)a5 totalWrittenBytes:(int64_t)a6 totalExpectedBytes:(int64_t)a7 remaining:(double)a8 actionText:(id)a9 taskDescription:(id)a10;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreProgress

- (SUCoreProgress)initWithPhase:(id)a3 isStalled:(BOOL)a4 portionComplete:(float)a5 totalWrittenBytes:(int64_t)a6 totalExpectedBytes:(int64_t)a7 remaining:(double)a8 actionText:(id)a9 taskDescription:(id)a10
{
  v19 = a3;
  v20 = a9;
  v21 = a10;
  v25.receiver = self;
  v25.super_class = SUCoreProgress;
  v22 = [(SUCoreProgress *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_phase, a3);
    v23->_isStalled = a4;
    v23->_portionComplete = a5;
    v23->_totalWrittenBytes = a6;
    v23->_totalExpectedBytes = a7;
    v23->_estimatedTimeRemaining = a8;
    objc_storeStrong(&v23->_actionText, a9);
    v23->_disableVerboseLogging = 0;
    objc_storeStrong(&v23->_taskDescription, a10);
  }

  return v23;
}

- (SUCoreProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUCoreProgress;
  v5 = [(SUCoreProgress *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    phase = v5->_phase;
    v5->_phase = v6;

    v5->_isStalled = [v4 decodeBoolForKey:@"isStalled"];
    [v4 decodeFloatForKey:@"portionComplete"];
    v5->_portionComplete = v8;
    v5->_totalWrittenBytes = [v4 decodeInt64ForKey:@"totalWrittenBytes"];
    v5->_totalExpectedBytes = [v4 decodeInt64ForKey:@"totalExpectedBytes"];
    [v4 decodeFloatForKey:@"estimatedTimeRemaining"];
    v5->_estimatedTimeRemaining = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionText"];
    actionText = v5->_actionText;
    v5->_actionText = v10;

    v5->_disableVerboseLogging = [v4 decodeBoolForKey:@"disableVerboseLogging"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskDescription"];
    taskDescription = v5->_taskDescription;
    v5->_taskDescription = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreProgress *)self phase];
  [v4 encodeObject:v5 forKey:@"phase"];

  [v4 encodeBool:-[SUCoreProgress isStalled](self forKey:{"isStalled"), @"isStalled"}];
  [(SUCoreProgress *)self portionComplete];
  [v4 encodeFloat:@"portionComplete" forKey:?];
  [v4 encodeInt64:-[SUCoreProgress totalWrittenBytes](self forKey:{"totalWrittenBytes"), @"totalWrittenBytes"}];
  [v4 encodeInt64:-[SUCoreProgress totalExpectedBytes](self forKey:{"totalExpectedBytes"), @"totalExpectedBytes"}];
  [(SUCoreProgress *)self estimatedTimeRemaining];
  *&v6 = v6;
  [v4 encodeFloat:@"estimatedTimeRemaining" forKey:v6];
  v7 = [(SUCoreProgress *)self actionText];
  [v4 encodeObject:v7 forKey:@"actionText"];

  [v4 encodeBool:-[SUCoreProgress disableVerboseLogging](self forKey:{"disableVerboseLogging"), @"disableVerboseLogging"}];
  v8 = [(SUCoreProgress *)self taskDescription];
  [v4 encodeObject:v8 forKey:@"taskDescription"];
}

- (BOOL)sameProgress:(id)a3 isStalled:(BOOL)a4 portion:(float)a5 remaining:(double)a6
{
  v8 = a4;
  v10 = a3;
  v11 = [(SUCoreProgress *)self phase];
  v12 = [SUCore stringIsEqual:v10 to:v11];

  if (v12 && [(SUCoreProgress *)self isStalled]== v8 && ([(SUCoreProgress *)self portionComplete], v13 == a5))
  {
    [(SUCoreProgress *)self estimatedTimeRemaining];
    v15 = v14 == a6;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)sameProgress:(id)a3 isStalled:(BOOL)a4 portion:(float)a5 remaining:(double)a6 actionText:(id)a7
{
  v9 = a4;
  v12 = a7;
  v13 = a3;
  v14 = [(SUCoreProgress *)self phase];
  v15 = [SUCore stringIsEqual:v13 to:v14];

  if (v15 && [(SUCoreProgress *)self isStalled]== v9 && ([(SUCoreProgress *)self portionComplete], v16 == a5) && ([(SUCoreProgress *)self estimatedTimeRemaining], v17 == a6))
  {
    v18 = [(SUCoreProgress *)self actionText];
    v19 = [SUCore stringIsEqual:v12 to:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)copy
{
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCoreProgress *)self phase];
      v7 = [(SUCoreProgress *)v5 phase];
      if (![SUCore stringIsEqual:v6 to:v7])
      {
        goto LABEL_13;
      }

      v8 = [(SUCoreProgress *)v5 isStalled];
      if (v8 != [(SUCoreProgress *)self isStalled])
      {
        goto LABEL_13;
      }

      [(SUCoreProgress *)v5 portionComplete];
      v10 = v9;
      [(SUCoreProgress *)self portionComplete];
      if (v10 != v11)
      {
        goto LABEL_13;
      }

      v12 = [(SUCoreProgress *)v5 totalWrittenBytes];
      if (v12 == [(SUCoreProgress *)self totalWrittenBytes]&& (v13 = [(SUCoreProgress *)v5 totalExpectedBytes], v13 == [(SUCoreProgress *)self totalExpectedBytes]) && ([(SUCoreProgress *)v5 estimatedTimeRemaining], v15 = v14, [(SUCoreProgress *)self estimatedTimeRemaining], v15 == v16))
      {
        v17 = [(SUCoreProgress *)self actionText];
        v18 = [(SUCoreProgress *)v5 actionText];
        if ([SUCore stringIsEqual:v17 to:v18])
        {
          v19 = [(SUCoreProgress *)self taskDescription];
          v20 = [(SUCoreProgress *)v5 taskDescription];
          v21 = [SUCore stringIsEqual:v19 to:v20];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
LABEL_13:
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SUCoreProgress *)self phase];
  if ([(SUCoreProgress *)self isStalled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [(SUCoreProgress *)self portionComplete];
  v7 = v6;
  v8 = [(SUCoreProgress *)self totalWrittenBytes];
  v9 = [(SUCoreProgress *)self totalExpectedBytes];
  [(SUCoreProgress *)self estimatedTimeRemaining];
  v11 = v10;
  v12 = [(SUCoreProgress *)self actionText];
  if ([(SUCoreProgress *)self disableVerboseLogging])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [(SUCoreProgress *)self taskDescription];
  if (v14)
  {
    v15 = [(SUCoreProgress *)self taskDescription];
    v16 = [v3 initWithFormat:@"phase:%@ stalled:%@ portionComplete:%f totalWrittenBytes:%lld totalExpectedBytes:%lld estimatedTimeRemaining:%f actionText:%@ disableVerboseLogging:%@ CFNetworkTask:%@", v4, v5, *&v7, v8, v9, v11, v12, v13, v15];
  }

  else
  {
    v16 = [v3 initWithFormat:@"phase:%@ stalled:%@ portionComplete:%f totalWrittenBytes:%lld totalExpectedBytes:%lld estimatedTimeRemaining:%f actionText:%@ disableVerboseLogging:%@ CFNetworkTask:%@", v4, v5, *&v7, v8, v9, v11, v12, v13, @"NO"];
  }

  return v16;
}

- (id)summary
{
  if ([(SUCoreProgress *)self totalWrittenBytes]|| [(SUCoreProgress *)self totalExpectedBytes])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"totalWrittenBytes:%lld totalExpectedBytes:%lld ", -[SUCoreProgress totalWrittenBytes](self, "totalWrittenBytes"), -[SUCoreProgress totalExpectedBytes](self, "totalExpectedBytes")];
  }

  else
  {
    v3 = &stru_1F5BDE410;
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(SUCoreProgress *)self phase];
  if ([(SUCoreProgress *)self isStalled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [(SUCoreProgress *)self portionComplete];
  v8 = v7;
  [(SUCoreProgress *)self estimatedTimeRemaining];
  v10 = v9;
  v11 = [(SUCoreProgress *)self taskDescription];
  v12 = [(SUCoreProgress *)self actionText];
  v13 = [v4 initWithFormat:@"phase:%@ stalled:%@ portionComplete:%f %@estimatedTimeRemaining:%f task:%@ actionText:%@", v5, v6, *&v8, v3, v10, v11, v12];

  return v13;
}

@end