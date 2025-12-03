@interface SUCoreProgress
- (BOOL)isEqual:(id)equal;
- (BOOL)sameProgress:(id)progress isStalled:(BOOL)stalled portion:(float)portion remaining:(double)remaining;
- (BOOL)sameProgress:(id)progress isStalled:(BOOL)stalled portion:(float)portion remaining:(double)remaining actionText:(id)text;
- (SUCoreProgress)initWithCoder:(id)coder;
- (SUCoreProgress)initWithPhase:(id)phase isStalled:(BOOL)stalled portionComplete:(float)complete totalWrittenBytes:(int64_t)bytes totalExpectedBytes:(int64_t)expectedBytes remaining:(double)remaining actionText:(id)text taskDescription:(id)self0;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreProgress

- (SUCoreProgress)initWithPhase:(id)phase isStalled:(BOOL)stalled portionComplete:(float)complete totalWrittenBytes:(int64_t)bytes totalExpectedBytes:(int64_t)expectedBytes remaining:(double)remaining actionText:(id)text taskDescription:(id)self0
{
  phaseCopy = phase;
  textCopy = text;
  descriptionCopy = description;
  v25.receiver = self;
  v25.super_class = SUCoreProgress;
  v22 = [(SUCoreProgress *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_phase, phase);
    v23->_isStalled = stalled;
    v23->_portionComplete = complete;
    v23->_totalWrittenBytes = bytes;
    v23->_totalExpectedBytes = expectedBytes;
    v23->_estimatedTimeRemaining = remaining;
    objc_storeStrong(&v23->_actionText, text);
    v23->_disableVerboseLogging = 0;
    objc_storeStrong(&v23->_taskDescription, description);
  }

  return v23;
}

- (SUCoreProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SUCoreProgress;
  v5 = [(SUCoreProgress *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    phase = v5->_phase;
    v5->_phase = v6;

    v5->_isStalled = [coderCopy decodeBoolForKey:@"isStalled"];
    [coderCopy decodeFloatForKey:@"portionComplete"];
    v5->_portionComplete = v8;
    v5->_totalWrittenBytes = [coderCopy decodeInt64ForKey:@"totalWrittenBytes"];
    v5->_totalExpectedBytes = [coderCopy decodeInt64ForKey:@"totalExpectedBytes"];
    [coderCopy decodeFloatForKey:@"estimatedTimeRemaining"];
    v5->_estimatedTimeRemaining = v9;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionText"];
    actionText = v5->_actionText;
    v5->_actionText = v10;

    v5->_disableVerboseLogging = [coderCopy decodeBoolForKey:@"disableVerboseLogging"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskDescription"];
    taskDescription = v5->_taskDescription;
    v5->_taskDescription = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phase = [(SUCoreProgress *)self phase];
  [coderCopy encodeObject:phase forKey:@"phase"];

  [coderCopy encodeBool:-[SUCoreProgress isStalled](self forKey:{"isStalled"), @"isStalled"}];
  [(SUCoreProgress *)self portionComplete];
  [coderCopy encodeFloat:@"portionComplete" forKey:?];
  [coderCopy encodeInt64:-[SUCoreProgress totalWrittenBytes](self forKey:{"totalWrittenBytes"), @"totalWrittenBytes"}];
  [coderCopy encodeInt64:-[SUCoreProgress totalExpectedBytes](self forKey:{"totalExpectedBytes"), @"totalExpectedBytes"}];
  [(SUCoreProgress *)self estimatedTimeRemaining];
  *&v6 = v6;
  [coderCopy encodeFloat:@"estimatedTimeRemaining" forKey:v6];
  actionText = [(SUCoreProgress *)self actionText];
  [coderCopy encodeObject:actionText forKey:@"actionText"];

  [coderCopy encodeBool:-[SUCoreProgress disableVerboseLogging](self forKey:{"disableVerboseLogging"), @"disableVerboseLogging"}];
  taskDescription = [(SUCoreProgress *)self taskDescription];
  [coderCopy encodeObject:taskDescription forKey:@"taskDescription"];
}

- (BOOL)sameProgress:(id)progress isStalled:(BOOL)stalled portion:(float)portion remaining:(double)remaining
{
  stalledCopy = stalled;
  progressCopy = progress;
  phase = [(SUCoreProgress *)self phase];
  v12 = [SUCore stringIsEqual:progressCopy to:phase];

  if (v12 && [(SUCoreProgress *)self isStalled]== stalledCopy && ([(SUCoreProgress *)self portionComplete], v13 == portion))
  {
    [(SUCoreProgress *)self estimatedTimeRemaining];
    v15 = v14 == remaining;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)sameProgress:(id)progress isStalled:(BOOL)stalled portion:(float)portion remaining:(double)remaining actionText:(id)text
{
  stalledCopy = stalled;
  textCopy = text;
  progressCopy = progress;
  phase = [(SUCoreProgress *)self phase];
  v15 = [SUCore stringIsEqual:progressCopy to:phase];

  if (v15 && [(SUCoreProgress *)self isStalled]== stalledCopy && ([(SUCoreProgress *)self portionComplete], v16 == portion) && ([(SUCoreProgress *)self estimatedTimeRemaining], v17 == remaining))
  {
    actionText = [(SUCoreProgress *)self actionText];
    v19 = [SUCore stringIsEqual:textCopy to:actionText];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      phase = [(SUCoreProgress *)self phase];
      phase2 = [(SUCoreProgress *)v5 phase];
      if (![SUCore stringIsEqual:phase to:phase2])
      {
        goto LABEL_13;
      }

      isStalled = [(SUCoreProgress *)v5 isStalled];
      if (isStalled != [(SUCoreProgress *)self isStalled])
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

      totalWrittenBytes = [(SUCoreProgress *)v5 totalWrittenBytes];
      if (totalWrittenBytes == [(SUCoreProgress *)self totalWrittenBytes]&& (v13 = [(SUCoreProgress *)v5 totalExpectedBytes], v13 == [(SUCoreProgress *)self totalExpectedBytes]) && ([(SUCoreProgress *)v5 estimatedTimeRemaining], v15 = v14, [(SUCoreProgress *)self estimatedTimeRemaining], v15 == v16))
      {
        actionText = [(SUCoreProgress *)self actionText];
        actionText2 = [(SUCoreProgress *)v5 actionText];
        if ([SUCore stringIsEqual:actionText to:actionText2])
        {
          taskDescription = [(SUCoreProgress *)self taskDescription];
          taskDescription2 = [(SUCoreProgress *)v5 taskDescription];
          v21 = [SUCore stringIsEqual:taskDescription to:taskDescription2];
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
  phase = [(SUCoreProgress *)self phase];
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
  totalWrittenBytes = [(SUCoreProgress *)self totalWrittenBytes];
  totalExpectedBytes = [(SUCoreProgress *)self totalExpectedBytes];
  [(SUCoreProgress *)self estimatedTimeRemaining];
  v11 = v10;
  actionText = [(SUCoreProgress *)self actionText];
  if ([(SUCoreProgress *)self disableVerboseLogging])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  taskDescription = [(SUCoreProgress *)self taskDescription];
  if (taskDescription)
  {
    taskDescription2 = [(SUCoreProgress *)self taskDescription];
    v16 = [v3 initWithFormat:@"phase:%@ stalled:%@ portionComplete:%f totalWrittenBytes:%lld totalExpectedBytes:%lld estimatedTimeRemaining:%f actionText:%@ disableVerboseLogging:%@ CFNetworkTask:%@", phase, v5, *&v7, totalWrittenBytes, totalExpectedBytes, v11, actionText, v13, taskDescription2];
  }

  else
  {
    v16 = [v3 initWithFormat:@"phase:%@ stalled:%@ portionComplete:%f totalWrittenBytes:%lld totalExpectedBytes:%lld estimatedTimeRemaining:%f actionText:%@ disableVerboseLogging:%@ CFNetworkTask:%@", phase, v5, *&v7, totalWrittenBytes, totalExpectedBytes, v11, actionText, v13, @"NO"];
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
  phase = [(SUCoreProgress *)self phase];
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
  taskDescription = [(SUCoreProgress *)self taskDescription];
  actionText = [(SUCoreProgress *)self actionText];
  v13 = [v4 initWithFormat:@"phase:%@ stalled:%@ portionComplete:%f %@estimatedTimeRemaining:%f task:%@ actionText:%@", phase, v6, *&v8, v3, v10, taskDescription, actionText];

  return v13;
}

@end