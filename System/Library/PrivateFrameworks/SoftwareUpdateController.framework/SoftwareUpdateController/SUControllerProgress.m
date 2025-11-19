@interface SUControllerProgress
- (BOOL)isEqual:(id)a3;
- (BOOL)sameProgress:(id)a3 portion:(float)a4 remaining:(double)a5 isDone:(BOOL)a6;
- (BOOL)sameProgress:(id)a3 portion:(float)a4 remaining:(double)a5 isDone:(BOOL)a6 actionText:(id)a7;
- (BOOL)sameProgress:(id)a3 portion:(float)a4 remaining:(double)a5 isDone:(BOOL)a6 actionText:(id)a7 isStalled:(BOOL)a8;
- (SUControllerProgress)init;
- (SUControllerProgress)initWithCoder:(id)a3;
- (SUControllerProgress)initWithPhase:(id)a3 portion:(float)a4 remaining:(double)a5 isDone:(BOOL)a6;
- (id)copy;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (SUControllerProgress)initWithPhase:(id)a3 portion:(float)a4 remaining:(double)a5 isDone:(BOOL)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = SUControllerProgress;
  v11 = [(SUControllerProgress *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v10];
    phase = v11->_phase;
    v11->_phase = v12;

    v11->_portionComplete = a4;
    v11->_estimatedTimeRemaining = a5;
    v11->_isDone = a6;
  }

  return v11;
}

- (SUControllerProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUControllerProgress;
  v5 = [(SUControllerProgress *)&v13 init];
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
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionText"];
    actionText = v5->_actionText;
    v5->_actionText = v10;

    v5->_isStalled = [v4 decodeBoolForKey:@"isStalled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(SUControllerProgress *)self phase];
  [v7 encodeObject:v4 forKey:@"phase"];

  [(SUControllerProgress *)self portionComplete];
  [v7 encodeFloat:@"portionComplete" forKey:?];
  [(SUControllerProgress *)self estimatedTimeRemaining];
  *&v5 = v5;
  [v7 encodeFloat:@"estimatedTimeRemaining" forKey:v5];
  [v7 encodeBool:-[SUControllerProgress isDone](self forKey:{"isDone"), @"isDone"}];
  v6 = [(SUControllerProgress *)self actionText];
  [v7 encodeObject:v6 forKey:@"actionText"];

  [v7 encodeBool:-[SUControllerProgress isStalled](self forKey:{"isStalled"), @"isStalled"}];
}

- (BOOL)sameProgress:(id)a3 portion:(float)a4 remaining:(double)a5 isDone:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [(SUControllerProgress *)self phase];
  v12 = [v10 isEqualToString:v11];

  if (v12 && ([(SUControllerProgress *)self portionComplete], v13 == a4) && ([(SUControllerProgress *)self estimatedTimeRemaining], v14 == a5))
  {
    v15 = [(SUControllerProgress *)self isDone]^ v6 ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)sameProgress:(id)a3 portion:(float)a4 remaining:(double)a5 isDone:(BOOL)a6 actionText:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a3;
  v14 = [(SUControllerProgress *)self phase];
  v15 = [v13 isEqualToString:v14];

  if (v15 && ([(SUControllerProgress *)self portionComplete], v16 == a4) && ([(SUControllerProgress *)self estimatedTimeRemaining], v17 == a5) && [(SUControllerProgress *)self isDone]== v7)
  {
    v18 = [v12 isEqualToString:v12];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)sameProgress:(id)a3 portion:(float)a4 remaining:(double)a5 isDone:(BOOL)a6 actionText:(id)a7 isStalled:(BOOL)a8
{
  v8 = a8;
  v9 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [(SUControllerProgress *)self phase];
  v17 = [v15 isEqualToString:v16];

  if (v17 && ([(SUControllerProgress *)self portionComplete], v18 == a4) && ([(SUControllerProgress *)self estimatedTimeRemaining], v19 == a5) && [(SUControllerProgress *)self isDone]== v9 && [(SUControllerProgress *)self isStalled]== v8)
  {
    v20 = [v14 isEqualToString:v14];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUControllerProgress *)v5 phase];
      v7 = [(SUControllerProgress *)self phase];
      if (![v6 isEqualToString:v7])
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
        v18 = [(SUControllerProgress *)v5 actionText];
        v19 = [(SUControllerProgress *)self actionText];
        v16 = [v18 isEqualToString:v19];
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
  v3 = [(SUControllerProgress *)self actionText];

  v4 = MEMORY[0x277CCACA8];
  v5 = [(SUControllerProgress *)self phase];
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

  if (v3)
  {
    v12 = [(SUControllerProgress *)self actionText];
    v13 = [v4 stringWithFormat:@"Phase: %@\nPortion complete: %f\nEstimated time remaining: %f\nIs done: %@\nIs stalled: %@\nActionText: %@", v5, *&v7, v9, v11, v10, v12];
  }

  else
  {
    v13 = [v4 stringWithFormat:@"Phase: %@\nPortion complete: %f\nEstimated time remaining: %f\nIs done: %@\nIs stalled: %@", v5, *&v7, v9, v11, v10];
  }

  return v13;
}

@end