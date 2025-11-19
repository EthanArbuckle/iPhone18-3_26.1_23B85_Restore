@interface VMVoicemailCapabilities
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCapabilities:(id)a3;
- (VMVoicemailCapabilities)init;
- (VMVoicemailCapabilities)initWithCapabilities:(id)a3;
- (VMVoicemailCapabilities)initWithCoder:(id)a3;
- (VMVoicemailCapabilities)initWithTranscriptionEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMVoicemailCapabilities

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_transcriptionEnabled);
  v5 = [(VMVoicemailCapabilities *)self isTranscriptionEnabled];
  v6 = @"NO";
  if (v5)
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

- (VMVoicemailCapabilities)initWithTranscriptionEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VMVoicemailCapabilities;
  result = [(VMVoicemailCapabilities *)&v5 init];
  if (result)
  {
    result->_transcriptionEnabled = a3;
  }

  return result;
}

- (VMVoicemailCapabilities)initWithCapabilities:(id)a3
{
  v4 = [a3 isTranscriptionEnabled];

  return [(VMVoicemailCapabilities *)self initWithTranscriptionEnabled:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithCapabilities:self];
}

- (void)encodeWithCoder:(id)a3
{
  transcriptionEnabled = self->_transcriptionEnabled;
  v4 = a3;
  v5 = NSStringFromSelector(sel_transcriptionEnabled);
  [v4 encodeBool:transcriptionEnabled forKey:v5];
}

- (VMVoicemailCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VMVoicemailCapabilities;
  v5 = [(VMVoicemailCapabilities *)&v8 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_transcriptionEnabled);
    v5->_transcriptionEnabled = [v4 decodeBoolForKey:v6];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(VMVoicemailCapabilities *)self isEqualToCapabilities:v4];

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(VMVoicemailCapabilities *)self isTranscriptionEnabled];
  v5 = [v4 isTranscriptionEnabled];

  return self ^ v5 ^ 1;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAAC8];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end