@interface STGenericIntentRequest
- (STGenericIntentRequest)initWithAppIdentifier:(id)a3 intentString:(id)a4 utterance:(id)a5 info:(id)a6;
- (STGenericIntentRequest)initWithCoder:(id)a3;
- (id)_af_analyticsContextDescription;
- (id)responseWithCode:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STGenericIntentRequest

- (STGenericIntentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STGenericIntentRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_intentString"];
    intentString = v5->_intentString;
    v5->_intentString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_utterance"];
    utterance = v5->_utterance;
    v5->_utterance = v8;

    v10 = [v4 decodePropertyListForKey:@"_info"];
    info = v5->_info;
    v5->_info = v10;

    v5->__launchToForeground = [v4 decodeBoolForKey:@"__launchToForeground"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STGenericIntentRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_intentString forKey:{@"_intentString", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_utterance forKey:@"_utterance"];
  [v4 encodeObject:self->_info forKey:@"_info"];
  [v4 encodeBool:self->__launchToForeground forKey:@"__launchToForeground"];
}

- (id)responseWithCode:(int64_t)a3
{
  if (a3)
  {
    v4 = [(AFSiriResponse *)[STGenericIntentResponse alloc] _initWithRequest:self];
    [v4 setResponseCode:a3];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];
  }

  return v4;
}

- (STGenericIntentRequest)initWithAppIdentifier:(id)a3 intentString:(id)a4 utterance:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = STGenericIntentRequest;
  v14 = [(AFSiriRequest *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    appIdentifier = v14->_appIdentifier;
    v14->_appIdentifier = v15;

    v17 = [v11 copy];
    intentString = v14->_intentString;
    v14->_intentString = v17;

    v19 = [v12 copy];
    utterance = v14->_utterance;
    v14->_utterance = v19;

    v21 = [v13 copy];
    info = v14->_info;
    v14->_info = v21;

    v14->__launchToForeground = 0;
  }

  return v14;
}

- (id)_af_analyticsContextDescription
{
  v10.receiver = self;
  v10.super_class = STGenericIntentRequest;
  v3 = [(AFSiriRequest *)&v10 _af_analyticsContextDescription];
  v4 = [(STGenericIntentRequest *)self appIdentifier];
  if (v4)
  {
    [v3 setObject:v4 forKey:*MEMORY[0x277CEEFA0]];
  }

  v5 = [(STGenericIntentRequest *)self _launchToForeground];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:!v5];
  [v3 setObject:v6 forKey:@"backgroundLaunch"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[STGenericIntentRequest _launchToForeground](self, "_launchToForeground")}];
  [v3 setObject:v7 forKey:@"presentsResults"];

  v8 = [(STGenericIntentRequest *)self intentString];
  if (v8)
  {
    [v3 setObject:v8 forKey:@"intentString"];
  }

  return v3;
}

@end