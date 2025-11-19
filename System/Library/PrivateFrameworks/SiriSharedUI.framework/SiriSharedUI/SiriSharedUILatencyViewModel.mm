@interface SiriSharedUILatencyViewModel
- (BOOL)_hasContent;
- (BOOL)isEqualToViewModel:(id)a3;
- (BOOL)shouldDisplay;
- (BOOL)viewShouldUpdateFromOldModel:(id)a3;
- (SiriSharedUILatencyViewModel)initWithUserUtterance:(id)a3 shouldSuppress:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SiriSharedUILatencyViewModel

- (SiriSharedUILatencyViewModel)initWithUserUtterance:(id)a3 shouldSuppress:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SiriSharedUILatencyViewModel;
  v8 = [(SiriSharedUILatencyViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userUtterance, a3);
    v9->_shouldSuppress = a4;
  }

  return v9;
}

- (BOOL)isEqualToViewModel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SiriSharedUILatencyViewModel *)self userUtterance];

    if (v5)
    {
      v6 = [(SiriSharedUILatencyViewModel *)self userUtterance];
      v7 = [v4 userUtterance];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(SiriSharedUILatencyViewModel *)self shouldSuppress];
        v9 = v8 ^ [v4 shouldSuppress] ^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      v6 = [v4 userUtterance];
      if (v6)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v11 = [(SiriSharedUILatencyViewModel *)self shouldSuppress];
        v9 = v11 ^ [v4 shouldSuppress] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)viewShouldUpdateFromOldModel:(id)a3
{
  v4 = a3;
  if ([(SiriSharedUILatencyViewModel *)self isEqualToViewModel:v4])
  {
    LOBYTE(self) = 0;
  }

  else if (v4 && ([v4 shouldDisplay] & 1) != 0)
  {
    if ([(SiriSharedUILatencyViewModel *)self shouldDisplay])
    {
      v5 = [(SiriSharedUILatencyViewModel *)self userUtterance];
      v6 = [v4 userUtterance];
      LODWORD(self) = [v5 isEqualToString:v6] ^ 1;
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  else
  {
    LOBYTE(self) = [(SiriSharedUILatencyViewModel *)self shouldDisplay];
  }

  return self;
}

- (BOOL)shouldDisplay
{
  if ([(SiriSharedUILatencyViewModel *)self shouldSuppress])
  {
    return 0;
  }

  return [(SiriSharedUILatencyViewModel *)self _hasContent];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SiriSharedUILatencyViewModel alloc];
  userUtterance = self->_userUtterance;
  shouldSuppress = self->_shouldSuppress;

  return [(SiriSharedUILatencyViewModel *)v4 initWithUserUtterance:userUtterance shouldSuppress:shouldSuppress];
}

- (BOOL)_hasContent
{
  v3 = [(SiriSharedUILatencyViewModel *)self userUtterance];
  if (v3)
  {
    v4 = [(SiriSharedUILatencyViewModel *)self userUtterance];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end