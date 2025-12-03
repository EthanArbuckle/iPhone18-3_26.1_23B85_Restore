@interface SiriContinuityContext
- (SiriContinuityContext)initWithCoder:(id)coder;
- (SiriContinuityContext)initWithRequestInfo:(id)info;
- (SiriContinuityContext)initWithSpeechRequestOptions:(id)options;
- (SiriContinuityContext)initWithUserActivity:(id)activity;
- (id)description;
- (id)speechRequestOptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriContinuityContext

- (SiriContinuityContext)initWithSpeechRequestOptions:(id)options
{
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = SiriContinuityContext;
  v5 = [(SiriContext *)&v16 initWithSpeechRequestOptions:optionsCopy];
  v6 = v5;
  if (v5)
  {
    isTemporaryDevice = v5->_isTemporaryDevice;
    v5->_isTemporaryDevice = MEMORY[0x1E695E110];

    activationDeviceIdentifier = [optionsCopy activationDeviceIdentifier];

    if (activationDeviceIdentifier)
    {
      activationDeviceIdentifier2 = [optionsCopy activationDeviceIdentifier];
      mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:activationDeviceIdentifier2];
      v12 = [mEMORY[0x1E698F468] deviceFromIdentifier:v11];

      if (v12)
      {
        [v12 device];
        BTDeviceIsTemporaryPaired();
        v13 = [MEMORY[0x1E696AD98] numberWithInt:0];
        v14 = v6->_isTemporaryDevice;
        v6->_isTemporaryDevice = v13;
      }
    }
  }

  return v6;
}

- (SiriContinuityContext)initWithRequestInfo:(id)info
{
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = SiriContinuityContext;
  v6 = [(SiriContinuityContext *)&v19 init];
  v7 = v6;
  if (v6)
  {
    isTemporaryDevice = v6->_isTemporaryDevice;
    v6->_isTemporaryDevice = MEMORY[0x1E695E110];

    speechRequestOptions = [infoCopy speechRequestOptions];
    activationDeviceIdentifier = [speechRequestOptions activationDeviceIdentifier];

    if (activationDeviceIdentifier)
    {
      speechRequestOptions2 = [infoCopy speechRequestOptions];
      activationDeviceIdentifier2 = [speechRequestOptions2 activationDeviceIdentifier];

      mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
      v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:activationDeviceIdentifier2];
      v15 = [mEMORY[0x1E698F468] deviceFromIdentifier:v14];

      if (v15)
      {
        [v15 device];
        BTDeviceIsTemporaryPaired();
        v16 = [MEMORY[0x1E696AD98] numberWithInt:0];
        v17 = v7->_isTemporaryDevice;
        v7->_isTemporaryDevice = v16;
      }
    }

    objc_storeStrong(&v7->_requestInfo, info);
  }

  return v7;
}

- (SiriContinuityContext)initWithUserActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = SiriContinuityContext;
  v6 = [(SiriContinuityContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userActivity, activity);
  }

  return v7;
}

- (id)speechRequestOptions
{
  v8.receiver = self;
  v8.super_class = SiriContinuityContext;
  speechRequestOptions = [(SiriContext *)&v8 speechRequestOptions];
  v4 = speechRequestOptions;
  if (speechRequestOptions)
  {
    speechRequestOptions2 = speechRequestOptions;
  }

  else
  {
    speechRequestOptions2 = [(AFRequestInfo *)self->_requestInfo speechRequestOptions];
  }

  v6 = speechRequestOptions2;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contextOverride = [(SiriContext *)self contextOverride];
  isTemporaryDevice = self->_isTemporaryDevice;
  speechRequestOptions = [(SiriContinuityContext *)self speechRequestOptions];
  requestInfo = self->_requestInfo;
  v8 = [v3 stringWithFormat:@"<SiriContinuityContext contextOverride:%@ isTemporaryDevice:%@ speechRequestOptions:%@ requestInfo:%@ userActivity:%@>", contextOverride, isTemporaryDevice, speechRequestOptions, requestInfo, self->_userActivity];

  return v8;
}

- (SiriContinuityContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = SiriContinuityContext;
  v5 = [(SiriContext *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isTemporaryDevice"];
    isTemporaryDevice = v5->_isTemporaryDevice;
    v5->_isTemporaryDevice = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestInfo"];
    requestInfo = v5->_requestInfo;
    v5->_requestInfo = v8;

    v23 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v23 setWithObjects:{v22, v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"userActivity"];
    userActivity = v5->_userActivity;
    v5->_userActivity = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SiriContinuityContext;
  coderCopy = coder;
  [(SiriContext *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_isTemporaryDevice forKey:{@"isTemporaryDevice", v7.receiver, v7.super_class}];
  requestInfo = [(SiriContinuityContext *)self requestInfo];
  [coderCopy encodeObject:requestInfo forKey:@"requestInfo"];

  userActivity = [(SiriContinuityContext *)self userActivity];
  [coderCopy encodeObject:userActivity forKey:@"userActivity"];
}

@end