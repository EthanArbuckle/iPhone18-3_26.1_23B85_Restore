@interface SiriCoreSiriConnectionInfo
- (id)description;
- (void)_appendPotentiallyNilString:(id)string toMutableString:(id)mutableString;
@end

@implementation SiriCoreSiriConnectionInfo

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  [v3 appendFormat:@": %p", self];
  [v3 appendString:@"\n\tURL: "];
  v5 = [(NSURL *)self->_url description];
  [(SiriCoreSiriConnectionInfo *)self _appendPotentiallyNilString:v5 toMutableString:v3];

  [v3 appendString:@"\n\tACE Host: "];
  [(SiriCoreSiriConnectionInfo *)self _appendPotentiallyNilString:self->_aceHost toMutableString:v3];
  [v3 appendString:@"\n\tLanguage Code: "];
  [(SiriCoreSiriConnectionInfo *)self _appendPotentiallyNilString:self->_languageCode toMutableString:v3];
  [v3 appendString:@"\n\tPrefers WWAN: "];
  if (self->_prefersWWAN)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendString:v6];
  [v3 appendString:@"\n\tTimeout: "];
  [v3 appendFormat:@"%.2f", *&self->_timeout];
  [v3 appendString:@"\n\tConnection Policy: "];
  v7 = [(SAConnectionPolicy *)self->_connectionPolicy description];
  [(SiriCoreSiriConnectionInfo *)self _appendPotentiallyNilString:v7 toMutableString:v3];

  [v3 appendString:@"\n\tConnection Policy Route: "];
  v8 = [(SAConnectionPolicyRoute *)self->_connectionPolicyRoute description];
  [(SiriCoreSiriConnectionInfo *)self _appendPotentiallyNilString:v8 toMutableString:v3];

  [v3 appendString:@">"];

  return v3;
}

- (void)_appendPotentiallyNilString:(id)string toMutableString:(id)mutableString
{
  if (!string)
  {
    string = @"(nil)";
  }

  [mutableString appendString:string];
}

@end