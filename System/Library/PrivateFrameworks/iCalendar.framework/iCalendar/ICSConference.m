@interface ICSConference
- (BOOL)isEqualToConference:(id)a3;
- (ICSConference)initWithValue:(id)a3 type:(unint64_t)a4;
- (unint64_t)currentHash;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSConference

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v9 = a4;
  v6 = [(ICSProperty *)self value];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 absoluteString], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    [(ICSProperty *)self _ICSStringWithOptions:a3 appendingToString:v9 additionalParameters:0];
    [v9 appendString:@":"];
    [v8 _ICSStringWithOptions:a3 appendingToString:v9];
  }

  else
  {
    NSLog(&cfstr_IgnoringConfer.isa, self);
    [v9 appendString:@":"];
  }
}

- (ICSConference)initWithValue:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = ICSConference;
  v4 = [(ICSProperty *)&v7 initWithValue:a3 type:a4];
  v5 = v4;
  if (v4)
  {
    [(ICSProperty *)v4 setParameterValue:@"URI" forName:@"VALUE"];
  }

  return v5;
}

- (unint64_t)currentHash
{
  v2 = [(ICSProperty *)self value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToConference:(id)a3
{
  v4 = a3;
  v5 = [(ICSProperty *)self value];
  v6 = [v4 value];
  if ([v5 isEqual:v6])
  {
    v7 = [(ICSProperty *)self parameters];
    v8 = [v4 parameters];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end