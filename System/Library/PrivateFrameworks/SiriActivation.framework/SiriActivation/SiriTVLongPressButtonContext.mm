@interface SiriTVLongPressButtonContext
- (BOOL)isPTTEligible;
- (SiriTVLongPressButtonContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)isPTTEligible;
@end

@implementation SiriTVLongPressButtonContext

- (SiriTVLongPressButtonContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SiriTVLongPressButtonContext;
  v5 = [(SiriLongPressButtonContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonDownTimestamp"];
    [v6 doubleValue];
    [(SiriLongPressButtonContext *)v5 setButtonDownTimestamp:?];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeDeviceBluetoothIdentifier"];
    v8 = [(__CFString *)v7 length];
    v9 = &stru_1F47C3998;
    if (v8)
    {
      v9 = v7;
    }

    v10 = v9;

    [(SiriTVLongPressButtonContext *)v5 setActiveDeviceBluetoothIdentifier:v10];
    -[SiriTVLongPressButtonContext setRemoteType:](v5, "setRemoteType:", [v4 decodeIntegerForKey:@"remoteType"]);
    -[SiriTVLongPressButtonContext setIsListening:](v5, "setIsListening:", [v4 decodeBoolForKey:@"isListening"]);
    -[SiriTVLongPressButtonContext setIsSourcePTTEligible:](v5, "setIsSourcePTTEligible:", [v4 decodeBoolForKey:@"isSourcePTTEligible"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SiriTVLongPressButtonContext;
  v4 = a3;
  [(SiriLongPressButtonContext *)&v8 encodeWithCoder:v4];
  v5 = MEMORY[0x1E696AD98];
  [(SiriLongPressButtonContext *)self buttonDownTimestamp:v8.receiver];
  v6 = [v5 numberWithDouble:?];
  [v4 encodeObject:v6 forKey:@"buttonDownTimestamp"];

  v7 = [(SiriTVLongPressButtonContext *)self activeDeviceBluetoothIdentifier];
  [v4 encodeObject:v7 forKey:@"activeDeviceBluetoothIdentifier"];

  [v4 encodeInteger:-[SiriTVLongPressButtonContext remoteType](self forKey:{"remoteType"), @"remoteType"}];
  [v4 encodeBool:-[SiriTVLongPressButtonContext isListening](self forKey:{"isListening"), @"isListening"}];
  [v4 encodeBool:-[SiriTVLongPressButtonContext isSourcePTTEligible](self forKey:{"isSourcePTTEligible"), @"isSourcePTTEligible"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  v5 = MEMORY[0x1E696AD98];
  [(SiriLongPressButtonContext *)self buttonDownTimestamp];
  v6 = [v5 numberWithDouble:?];
  v7 = [(SiriTVLongPressButtonContext *)self activeDeviceBluetoothIdentifier];
  v8 = SiriTVStringForRemoteType([(SiriTVLongPressButtonContext *)self remoteType]);
  v9 = [v3 stringWithFormat:@"<SiriTVLongPressButtonContext contextOverride:%@ buttonDownTimestamp:%@, activeDeviceBluetoothIdentifier:%@, remoteType:%@, isListening:%d, isSourcePTTEligible:%d>", v4, v6, v7, v8, -[SiriTVLongPressButtonContext isListening](self, "isListening"), -[SiriTVLongPressButtonContext isSourcePTTEligible](self, "isSourcePTTEligible")];

  return v9;
}

- (BOOL)isPTTEligible
{
  if ([MEMORY[0x1E698D148] isTVPushToTalkEnabled] && _os_feature_enabled_impl())
  {
    if (MGGetBoolAnswer() && (v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.internal"], v4 = objc_msgSend(v3, "BOOLForKey:", @"ForcePTTEligibility"), v3, v4))
    {
      v5 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
      {
        [(SiriTVLongPressButtonContext *)self isPTTEligible];
      }

      v6 = 1;
    }

    else
    {
      v8 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
      {
        [(SiriTVLongPressButtonContext *)v8 isPTTEligible];
      }

      v6 = self->_isSourcePTTEligible | ([(SiriTVLongPressButtonContext *)self remoteType]== 6);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)isPTTEligible
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 49);
  v4 = 136315394;
  v5 = "[SiriTVLongPressButtonContext isPTTEligible]";
  v6 = 1024;
  v7 = v2;
  _os_log_debug_impl(&dword_1C8137000, a2, OS_LOG_TYPE_DEBUG, "%s #ptt Overriding PTT eligibility from %d to true", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

@end