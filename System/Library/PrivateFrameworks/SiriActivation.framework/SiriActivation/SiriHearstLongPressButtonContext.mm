@interface SiriHearstLongPressButtonContext
- (SiriHearstLongPressButtonContext)initWithCoder:(id)coder;
- (SiriHearstLongPressButtonContext)initWithSpeechRequestOptions:(id)options;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriHearstLongPressButtonContext

- (SiriHearstLongPressButtonContext)initWithSpeechRequestOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = SiriHearstLongPressButtonContext;
  v5 = [(SiriContext *)&v12 initWithSpeechRequestOptions:optionsCopy];
  v6 = v5;
  if (v5)
  {
    v5->_isTemporaryDevice = 0;
    activationDeviceIdentifier = [optionsCopy activationDeviceIdentifier];
    if (activationDeviceIdentifier)
    {
      mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:activationDeviceIdentifier];
      v10 = [mEMORY[0x1E698F468] deviceFromIdentifier:v9];

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
  contextOverride = [(SiriContext *)self contextOverride];
  isTemporaryDevice = self->_isTemporaryDevice;
  v6 = NSStringFromBOOL();
  speechRequestOptions = [(SiriContext *)self speechRequestOptions];
  v8 = [v3 stringWithFormat:@"<SiriHearstLongPressButtonContext contextOverride:%@ isTemporaryDevice:%@ speechRequestOptions:%@>", contextOverride, v6, speechRequestOptions];

  return v8;
}

- (SiriHearstLongPressButtonContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SiriHearstLongPressButtonContext;
  v5 = [(SiriLongPressButtonContext *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_isTemporaryDevice = [coderCopy decodeBoolForKey:@"isTemporaryDevice"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SiriHearstLongPressButtonContext;
  coderCopy = coder;
  [(SiriLongPressButtonContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_isTemporaryDevice forKey:{@"isTemporaryDevice", v5.receiver, v5.super_class}];
}

@end