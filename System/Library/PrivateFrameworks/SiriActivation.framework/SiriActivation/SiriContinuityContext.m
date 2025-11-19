@interface SiriContinuityContext
- (SiriContinuityContext)initWithCoder:(id)a3;
- (SiriContinuityContext)initWithRequestInfo:(id)a3;
- (SiriContinuityContext)initWithSpeechRequestOptions:(id)a3;
- (SiriContinuityContext)initWithUserActivity:(id)a3;
- (id)description;
- (id)speechRequestOptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriContinuityContext

- (SiriContinuityContext)initWithSpeechRequestOptions:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SiriContinuityContext;
  v5 = [(SiriContext *)&v16 initWithSpeechRequestOptions:v4];
  v6 = v5;
  if (v5)
  {
    isTemporaryDevice = v5->_isTemporaryDevice;
    v5->_isTemporaryDevice = MEMORY[0x1E695E110];

    v8 = [v4 activationDeviceIdentifier];

    if (v8)
    {
      v9 = [v4 activationDeviceIdentifier];
      v10 = [MEMORY[0x1E698F468] sharedInstance];
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
      v12 = [v10 deviceFromIdentifier:v11];

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

- (SiriContinuityContext)initWithRequestInfo:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = SiriContinuityContext;
  v6 = [(SiriContinuityContext *)&v19 init];
  v7 = v6;
  if (v6)
  {
    isTemporaryDevice = v6->_isTemporaryDevice;
    v6->_isTemporaryDevice = MEMORY[0x1E695E110];

    v9 = [v5 speechRequestOptions];
    v10 = [v9 activationDeviceIdentifier];

    if (v10)
    {
      v11 = [v5 speechRequestOptions];
      v12 = [v11 activationDeviceIdentifier];

      v13 = [MEMORY[0x1E698F468] sharedInstance];
      v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
      v15 = [v13 deviceFromIdentifier:v14];

      if (v15)
      {
        [v15 device];
        BTDeviceIsTemporaryPaired();
        v16 = [MEMORY[0x1E696AD98] numberWithInt:0];
        v17 = v7->_isTemporaryDevice;
        v7->_isTemporaryDevice = v16;
      }
    }

    objc_storeStrong(&v7->_requestInfo, a3);
  }

  return v7;
}

- (SiriContinuityContext)initWithUserActivity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriContinuityContext;
  v6 = [(SiriContinuityContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userActivity, a3);
  }

  return v7;
}

- (id)speechRequestOptions
{
  v8.receiver = self;
  v8.super_class = SiriContinuityContext;
  v3 = [(SiriContext *)&v8 speechRequestOptions];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(AFRequestInfo *)self->_requestInfo speechRequestOptions];
  }

  v6 = v5;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  isTemporaryDevice = self->_isTemporaryDevice;
  v6 = [(SiriContinuityContext *)self speechRequestOptions];
  requestInfo = self->_requestInfo;
  v8 = [v3 stringWithFormat:@"<SiriContinuityContext contextOverride:%@ isTemporaryDevice:%@ speechRequestOptions:%@ requestInfo:%@ userActivity:%@>", v4, isTemporaryDevice, v6, requestInfo, self->_userActivity];

  return v8;
}

- (SiriContinuityContext)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SiriContinuityContext;
  v5 = [(SiriContext *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isTemporaryDevice"];
    isTemporaryDevice = v5->_isTemporaryDevice;
    v5->_isTemporaryDevice = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestInfo"];
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
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"userActivity"];
    userActivity = v5->_userActivity;
    v5->_userActivity = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SiriContinuityContext;
  v4 = a3;
  [(SiriContext *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_isTemporaryDevice forKey:{@"isTemporaryDevice", v7.receiver, v7.super_class}];
  v5 = [(SiriContinuityContext *)self requestInfo];
  [v4 encodeObject:v5 forKey:@"requestInfo"];

  v6 = [(SiriContinuityContext *)self userActivity];
  [v4 encodeObject:v6 forKey:@"userActivity"];
}

@end