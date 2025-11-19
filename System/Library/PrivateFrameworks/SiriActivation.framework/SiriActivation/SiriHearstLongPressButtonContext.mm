@interface SiriHearstLongPressButtonContext
- (SiriHearstLongPressButtonContext)initWithCoder:(id)a3;
- (SiriHearstLongPressButtonContext)initWithSpeechRequestOptions:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriHearstLongPressButtonContext

- (SiriHearstLongPressButtonContext)initWithSpeechRequestOptions:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SiriHearstLongPressButtonContext;
  v5 = [(SiriContext *)&v12 initWithSpeechRequestOptions:v4];
  v6 = v5;
  if (v5)
  {
    v5->_isTemporaryDevice = 0;
    v7 = [v4 activationDeviceIdentifier];
    if (v7)
    {
      v8 = [MEMORY[0x1E698F468] sharedInstance];
      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v10 = [v8 deviceFromIdentifier:v9];

      if (v10)
      {
        [v10 device];
        BTDeviceIsTemporaryPaired();
        v6->_isTemporaryDevice = 0;
      }
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  isTemporaryDevice = self->_isTemporaryDevice;
  v6 = NSStringFromBOOL();
  v7 = [(SiriContext *)self speechRequestOptions];
  v8 = [v3 stringWithFormat:@"<SiriHearstLongPressButtonContext contextOverride:%@ isTemporaryDevice:%@ speechRequestOptions:%@>", v4, v6, v7];

  return v8;
}

- (SiriHearstLongPressButtonContext)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SiriHearstLongPressButtonContext;
  v5 = [(SiriLongPressButtonContext *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_isTemporaryDevice = [v4 decodeBoolForKey:@"isTemporaryDevice"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SiriHearstLongPressButtonContext;
  v4 = a3;
  [(SiriLongPressButtonContext *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_isTemporaryDevice forKey:{@"isTemporaryDevice", v5.receiver, v5.super_class}];
}

@end