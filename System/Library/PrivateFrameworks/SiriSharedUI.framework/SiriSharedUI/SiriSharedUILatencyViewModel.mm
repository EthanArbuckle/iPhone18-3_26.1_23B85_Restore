@interface SiriSharedUILatencyViewModel
- (BOOL)_hasContent;
- (BOOL)isEqualToViewModel:(id)model;
- (BOOL)shouldDisplay;
- (BOOL)viewShouldUpdateFromOldModel:(id)model;
- (SiriSharedUILatencyViewModel)initWithUserUtterance:(id)utterance shouldSuppress:(BOOL)suppress;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SiriSharedUILatencyViewModel

- (SiriSharedUILatencyViewModel)initWithUserUtterance:(id)utterance shouldSuppress:(BOOL)suppress
{
  utteranceCopy = utterance;
  v11.receiver = self;
  v11.super_class = SiriSharedUILatencyViewModel;
  v8 = [(SiriSharedUILatencyViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userUtterance, utterance);
    v9->_shouldSuppress = suppress;
  }

  return v9;
}

- (BOOL)isEqualToViewModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    userUtterance = [(SiriSharedUILatencyViewModel *)self userUtterance];

    if (userUtterance)
    {
      userUtterance2 = [(SiriSharedUILatencyViewModel *)self userUtterance];
      userUtterance3 = [modelCopy userUtterance];
      if ([userUtterance2 isEqualToString:userUtterance3])
      {
        shouldSuppress = [(SiriSharedUILatencyViewModel *)self shouldSuppress];
        v9 = shouldSuppress ^ [modelCopy shouldSuppress] ^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      userUtterance2 = [modelCopy userUtterance];
      if (userUtterance2)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        shouldSuppress2 = [(SiriSharedUILatencyViewModel *)self shouldSuppress];
        v9 = shouldSuppress2 ^ [modelCopy shouldSuppress] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)viewShouldUpdateFromOldModel:(id)model
{
  modelCopy = model;
  if ([(SiriSharedUILatencyViewModel *)self isEqualToViewModel:modelCopy])
  {
    LOBYTE(self) = 0;
  }

  else if (modelCopy && ([modelCopy shouldDisplay] & 1) != 0)
  {
    if ([(SiriSharedUILatencyViewModel *)self shouldDisplay])
    {
      userUtterance = [(SiriSharedUILatencyViewModel *)self userUtterance];
      userUtterance2 = [modelCopy userUtterance];
      LODWORD(self) = [userUtterance isEqualToString:userUtterance2] ^ 1;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SiriSharedUILatencyViewModel alloc];
  userUtterance = self->_userUtterance;
  shouldSuppress = self->_shouldSuppress;

  return [(SiriSharedUILatencyViewModel *)v4 initWithUserUtterance:userUtterance shouldSuppress:shouldSuppress];
}

- (BOOL)_hasContent
{
  userUtterance = [(SiriSharedUILatencyViewModel *)self userUtterance];
  if (userUtterance)
  {
    userUtterance2 = [(SiriSharedUILatencyViewModel *)self userUtterance];
    v5 = [userUtterance2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end