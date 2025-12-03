@interface ICSConference
- (BOOL)isEqualToConference:(id)conference;
- (ICSConference)initWithValue:(id)value type:(unint64_t)type;
- (unint64_t)currentHash;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSConference

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  value = [(ICSProperty *)self value];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([value absoluteString], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    [(ICSProperty *)self _ICSStringWithOptions:options appendingToString:stringCopy additionalParameters:0];
    [stringCopy appendString:@":"];
    [v8 _ICSStringWithOptions:options appendingToString:stringCopy];
  }

  else
  {
    NSLog(&cfstr_IgnoringConfer.isa, self);
    [stringCopy appendString:@":"];
  }
}

- (ICSConference)initWithValue:(id)value type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = ICSConference;
  v4 = [(ICSProperty *)&v7 initWithValue:value type:type];
  v5 = v4;
  if (v4)
  {
    [(ICSProperty *)v4 setParameterValue:@"URI" forName:@"VALUE"];
  }

  return v5;
}

- (unint64_t)currentHash
{
  value = [(ICSProperty *)self value];
  v3 = [value hash];

  return v3;
}

- (BOOL)isEqualToConference:(id)conference
{
  conferenceCopy = conference;
  value = [(ICSProperty *)self value];
  value2 = [conferenceCopy value];
  if ([value isEqual:value2])
  {
    parameters = [(ICSProperty *)self parameters];
    parameters2 = [conferenceCopy parameters];
    v9 = [parameters isEqual:parameters2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end