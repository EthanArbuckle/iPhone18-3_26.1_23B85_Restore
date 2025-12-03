@interface VMVoicemailCapabilities
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCapabilities:(id)capabilities;
- (VMVoicemailCapabilities)init;
- (VMVoicemailCapabilities)initWithCapabilities:(id)capabilities;
- (VMVoicemailCapabilities)initWithCoder:(id)coder;
- (VMVoicemailCapabilities)initWithTranscriptionEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMVoicemailCapabilities

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_transcriptionEnabled);
  isTranscriptionEnabled = [(VMVoicemailCapabilities *)self isTranscriptionEnabled];
  v6 = @"NO";
  if (isTranscriptionEnabled)
  {
    v6 = @"YES";
  }

  [v3 appendFormat:@"%@=%@", v4, v6];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (VMVoicemailCapabilities)init
{
  [(VMVoicemailCapabilities *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMVoicemailCapabilities)initWithTranscriptionEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = VMVoicemailCapabilities;
  result = [(VMVoicemailCapabilities *)&v5 init];
  if (result)
  {
    result->_transcriptionEnabled = enabled;
  }

  return result;
}

- (VMVoicemailCapabilities)initWithCapabilities:(id)capabilities
{
  isTranscriptionEnabled = [capabilities isTranscriptionEnabled];

  return [(VMVoicemailCapabilities *)self initWithTranscriptionEnabled:isTranscriptionEnabled];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithCapabilities:self];
}

- (void)encodeWithCoder:(id)coder
{
  transcriptionEnabled = self->_transcriptionEnabled;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_transcriptionEnabled);
  [coderCopy encodeBool:transcriptionEnabled forKey:v5];
}

- (VMVoicemailCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VMVoicemailCapabilities;
  v5 = [(VMVoicemailCapabilities *)&v8 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_transcriptionEnabled);
    v5->_transcriptionEnabled = [coderCopy decodeBoolForKey:v6];
  }

  return v5;
}

- (unint64_t)hash
{
  if ([(VMVoicemailCapabilities *)self isTranscriptionEnabled])
  {
    return 1231;
  }

  else
  {
    return 1237;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(VMVoicemailCapabilities *)self isEqualToCapabilities:equalCopy];

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  LOBYTE(self) = [(VMVoicemailCapabilities *)self isTranscriptionEnabled];
  isTranscriptionEnabled = [capabilitiesCopy isTranscriptionEnabled];

  return self ^ isTranscriptionEnabled ^ 1;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end