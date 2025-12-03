@interface STGenericIntentRequest
- (STGenericIntentRequest)initWithAppIdentifier:(id)identifier intentString:(id)string utterance:(id)utterance info:(id)info;
- (STGenericIntentRequest)initWithCoder:(id)coder;
- (id)_af_analyticsContextDescription;
- (id)responseWithCode:(int64_t)code;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STGenericIntentRequest

- (STGenericIntentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STGenericIntentRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_intentString"];
    intentString = v5->_intentString;
    v5->_intentString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_utterance"];
    utterance = v5->_utterance;
    v5->_utterance = v8;

    v10 = [coderCopy decodePropertyListForKey:@"_info"];
    info = v5->_info;
    v5->_info = v10;

    v5->__launchToForeground = [coderCopy decodeBoolForKey:@"__launchToForeground"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STGenericIntentRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_intentString forKey:{@"_intentString", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_utterance forKey:@"_utterance"];
  [coderCopy encodeObject:self->_info forKey:@"_info"];
  [coderCopy encodeBool:self->__launchToForeground forKey:@"__launchToForeground"];
}

- (id)responseWithCode:(int64_t)code
{
  if (code)
  {
    v4 = [(AFSiriResponse *)[STGenericIntentResponse alloc] _initWithRequest:self];
    [v4 setResponseCode:code];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];
  }

  return v4;
}

- (STGenericIntentRequest)initWithAppIdentifier:(id)identifier intentString:(id)string utterance:(id)utterance info:(id)info
{
  identifierCopy = identifier;
  stringCopy = string;
  utteranceCopy = utterance;
  infoCopy = info;
  v24.receiver = self;
  v24.super_class = STGenericIntentRequest;
  v14 = [(AFSiriRequest *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    appIdentifier = v14->_appIdentifier;
    v14->_appIdentifier = v15;

    v17 = [stringCopy copy];
    intentString = v14->_intentString;
    v14->_intentString = v17;

    v19 = [utteranceCopy copy];
    utterance = v14->_utterance;
    v14->_utterance = v19;

    v21 = [infoCopy copy];
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
  _af_analyticsContextDescription = [(AFSiriRequest *)&v10 _af_analyticsContextDescription];
  appIdentifier = [(STGenericIntentRequest *)self appIdentifier];
  if (appIdentifier)
  {
    [_af_analyticsContextDescription setObject:appIdentifier forKey:*MEMORY[0x277CEEFA0]];
  }

  _launchToForeground = [(STGenericIntentRequest *)self _launchToForeground];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:!_launchToForeground];
  [_af_analyticsContextDescription setObject:v6 forKey:@"backgroundLaunch"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[STGenericIntentRequest _launchToForeground](self, "_launchToForeground")}];
  [_af_analyticsContextDescription setObject:v7 forKey:@"presentsResults"];

  intentString = [(STGenericIntentRequest *)self intentString];
  if (intentString)
  {
    [_af_analyticsContextDescription setObject:intentString forKey:@"intentString"];
  }

  return _af_analyticsContextDescription;
}

@end