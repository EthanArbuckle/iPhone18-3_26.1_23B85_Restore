@interface OpenURLTarget
- (OpenURLTarget)initWithTargetIdentifier:(id)identifier;
- (id)copyURLForURL:(id)l;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation OpenURLTarget

- (OpenURLTarget)initWithTargetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = OpenURLTarget;
  v5 = [(OpenURLTarget *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_applicationState = 0;
    v5->_targetIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [objc_alloc(MEMORY[0x277CEEE90]) initWithBundleIDs:0 states:0];
    v8 = 0;
    v9 = &__OpenURLTargetData;
    do
    {
      if ([identifierCopy isEqualToString:*v9])
      {
        v6->_applicationState = [v7 applicationStateForApplication:identifierCopy];
        *&v6->_targetData.clientIdentifier = *v9;
        v6->_targetData.secureScheme = *(v9 + 2);
        v6->_targetIndex = v8;
        goto LABEL_8;
      }

      ++v8;
      v9 = (v9 + 24);
    }

    while (v8 != 9);
    if (v6->_targetIndex == 0x7FFFFFFFFFFFFFFFLL)
    {

      v6 = 0;
    }

LABEL_8:
    [v7 invalidate];
  }

  return v6;
}

- (int64_t)compare:(id)compare
{
  applicationState = self->_applicationState;
  v5 = applicationState == 8 || applicationState == 32;
  v6 = *(compare + 2);
  v8 = v6 != 8 && v6 != 32;
  if (v5 == v8)
  {
    if (v5)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    targetIndex = self->_targetIndex;
    v10 = *(compare + 5);
    v11 = targetIndex == v10;
    v12 = targetIndex < v10;
    v13 = -1;
    if (!v12)
    {
      v13 = 1;
    }

    if (v11)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

- (id)copyURLForURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"http"])
  {
    v6 = 24;
  }

  else
  {
    if (![scheme isEqualToString:@"https"])
    {
      v7 = 0;
LABEL_9:
      v11 = [lCopy copy];
      goto LABEL_10;
    }

    v6 = 32;
  }

  v7 = *(&self->super.isa + v6);
  if (!v7)
  {
    goto LABEL_9;
  }

  absoluteString = [lCopy absoluteString];
  v9 = [absoluteString substringFromIndex:{objc_msgSend(scheme, "length")}];
  v10 = [v7 stringByAppendingString:v9];

  v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (id)description
{
  applicationState = self->_applicationState;
  v4 = @"Unknown";
  v5 = @"Foreground Running";
  v6 = @"Process Server";
  v7 = @"Foreground Running Obscured";
  if (applicationState != 32)
  {
    v7 = @"Unknown";
  }

  if (applicationState != 16)
  {
    v6 = v7;
  }

  if (applicationState != 8)
  {
    v5 = v6;
  }

  if (applicationState == 4)
  {
    v4 = @"Background Running";
  }

  if (applicationState == 2)
  {
    v4 = @"Background Task Suspended";
  }

  if (applicationState == 1)
  {
    v4 = @"Terminated";
  }

  if (applicationState <= 7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = OpenURLTarget;
  v10 = [(OpenURLTarget *)&v13 description];
  v11 = [v9 stringWithFormat:@"%@: (%@, %@)", v10, self->_targetData.clientIdentifier, v8];

  return v11;
}

@end