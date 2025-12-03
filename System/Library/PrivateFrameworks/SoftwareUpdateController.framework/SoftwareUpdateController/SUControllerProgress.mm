@interface SUControllerProgress
- (BOOL)isEqual:(id)equal;
- (BOOL)sameProgress:(id)progress portion:(float)portion remaining:(double)remaining isDone:(BOOL)done;
- (BOOL)sameProgress:(id)progress portion:(float)portion remaining:(double)remaining isDone:(BOOL)done actionText:(id)text;
- (BOOL)sameProgress:(id)progress portion:(float)portion remaining:(double)remaining isDone:(BOOL)done actionText:(id)text isStalled:(BOOL)stalled;
- (SUControllerProgress)init;
- (SUControllerProgress)initWithCoder:(id)coder;
- (SUControllerProgress)initWithPhase:(id)phase portion:(float)portion remaining:(double)remaining isDone:(BOOL)done;
- (id)copy;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUControllerProgress

- (SUControllerProgress)init
{
  v7.receiver = self;
  v7.super_class = SUControllerProgress;
  v2 = [(SUControllerProgress *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", @"None"];
    phase = v2->_phase;
    v2->_phase = v3;

    v2->_portionComplete = -1.0;
    v2->_isDone = 0;
    actionText = v2->_actionText;
    v2->_estimatedTimeRemaining = -1.0;
    v2->_actionText = 0;

    v2->_isStalled = 0;
  }

  return v2;
}

- (SUControllerProgress)initWithPhase:(id)phase portion:(float)portion remaining:(double)remaining isDone:(BOOL)done
{
  phaseCopy = phase;
  v15.receiver = self;
  v15.super_class = SUControllerProgress;
  v11 = [(SUControllerProgress *)&v15 init];
  if (v11)
  {
    phaseCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", phaseCopy];
    phase = v11->_phase;
    v11->_phase = phaseCopy;

    v11->_portionComplete = portion;
    v11->_estimatedTimeRemaining = remaining;
    v11->_isDone = done;
  }

  return v11;
}

- (SUControllerProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SUControllerProgress;
  v5 = [(SUControllerProgress *)&v13 init];
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
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionText"];
    actionText = v5->_actionText;
    v5->_actionText = v10;

    v5->_isStalled = [coderCopy decodeBoolForKey:@"isStalled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phase = [(SUControllerProgress *)self phase];
  [coderCopy encodeObject:phase forKey:@"phase"];

  [(SUControllerProgress *)self portionComplete];
  [coderCopy encodeFloat:@"portionComplete" forKey:?];
  [(SUControllerProgress *)self estimatedTimeRemaining];
  *&v5 = v5;
  [coderCopy encodeFloat:@"estimatedTimeRemaining" forKey:v5];
  [coderCopy encodeBool:-[SUControllerProgress isDone](self forKey:{"isDone"), @"isDone"}];
  actionText = [(SUControllerProgress *)self actionText];
  [coderCopy encodeObject:actionText forKey:@"actionText"];

  [coderCopy encodeBool:-[SUControllerProgress isStalled](self forKey:{"isStalled"), @"isStalled"}];
}

- (BOOL)sameProgress:(id)progress portion:(float)portion remaining:(double)remaining isDone:(BOOL)done
{
  doneCopy = done;
  progressCopy = progress;
  phase = [(SUControllerProgress *)self phase];
  v12 = [progressCopy isEqualToString:phase];

  if (v12 && ([(SUControllerProgress *)self portionComplete], v13 == portion) && ([(SUControllerProgress *)self estimatedTimeRemaining], v14 == remaining))
  {
    v15 = [(SUControllerProgress *)self isDone]^ doneCopy ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)sameProgress:(id)progress portion:(float)portion remaining:(double)remaining isDone:(BOOL)done actionText:(id)text
{
  doneCopy = done;
  textCopy = text;
  progressCopy = progress;
  phase = [(SUControllerProgress *)self phase];
  v15 = [progressCopy isEqualToString:phase];

  if (v15 && ([(SUControllerProgress *)self portionComplete], v16 == portion) && ([(SUControllerProgress *)self estimatedTimeRemaining], v17 == remaining) && [(SUControllerProgress *)self isDone]== doneCopy)
  {
    v18 = [textCopy isEqualToString:textCopy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)sameProgress:(id)progress portion:(float)portion remaining:(double)remaining isDone:(BOOL)done actionText:(id)text isStalled:(BOOL)stalled
{
  stalledCopy = stalled;
  doneCopy = done;
  textCopy = text;
  progressCopy = progress;
  phase = [(SUControllerProgress *)self phase];
  v17 = [progressCopy isEqualToString:phase];

  if (v17 && ([(SUControllerProgress *)self portionComplete], v18 == portion) && ([(SUControllerProgress *)self estimatedTimeRemaining], v19 == remaining) && [(SUControllerProgress *)self isDone]== doneCopy && [(SUControllerProgress *)self isStalled]== stalledCopy)
  {
    v20 = [textCopy isEqualToString:textCopy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      phase = [(SUControllerProgress *)v5 phase];
      phase2 = [(SUControllerProgress *)self phase];
      if (![phase isEqualToString:phase2])
      {
        goto LABEL_8;
      }

      [(SUControllerProgress *)v5 portionComplete];
      v9 = v8;
      [(SUControllerProgress *)self portionComplete];
      if (v9 != v10)
      {
        goto LABEL_8;
      }

      [(SUControllerProgress *)v5 estimatedTimeRemaining];
      v12 = v11;
      [(SUControllerProgress *)self estimatedTimeRemaining];
      if (v12 == v13 && (v14 = [(SUControllerProgress *)v5 isDone], v14 == [(SUControllerProgress *)self isDone]) && (v15 = [(SUControllerProgress *)v5 isStalled], v15 == [(SUControllerProgress *)self isStalled]))
      {
        actionText = [(SUControllerProgress *)v5 actionText];
        actionText2 = [(SUControllerProgress *)self actionText];
        v16 = [actionText isEqualToString:actionText2];
      }

      else
      {
LABEL_8:
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)description
{
  actionText = [(SUControllerProgress *)self actionText];

  v4 = MEMORY[0x277CCACA8];
  phase = [(SUControllerProgress *)self phase];
  [(SUControllerProgress *)self portionComplete];
  v7 = v6;
  [(SUControllerProgress *)self estimatedTimeRemaining];
  v9 = v8;
  v10 = @"NO";
  if ([(SUControllerProgress *)self isDone])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(SUControllerProgress *)self isStalled])
  {
    v10 = @"YES";
  }

  if (actionText)
  {
    actionText2 = [(SUControllerProgress *)self actionText];
    v13 = [v4 stringWithFormat:@"Phase: %@\nPortion complete: %f\nEstimated time remaining: %f\nIs done: %@\nIs stalled: %@\nActionText: %@", phase, *&v7, v9, v11, v10, actionText2];
  }

  else
  {
    v13 = [v4 stringWithFormat:@"Phase: %@\nPortion complete: %f\nEstimated time remaining: %f\nIs done: %@\nIs stalled: %@", phase, *&v7, v9, v11, v10];
  }

  return v13;
}

@end