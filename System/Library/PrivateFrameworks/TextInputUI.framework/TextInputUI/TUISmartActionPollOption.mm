@interface TUISmartActionPollOption
- (BOOL)isEqual:(id)a3;
- (TUISmartActionPollOption)initWithCoder:(id)a3;
- (TUISmartActionPollOption)initWithOption:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TUISmartActionPollOption

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: option=%@>", v5, self->_option];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(NSString *)self->_option isEqualToString:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TUISmartActionPollOption)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TUISmartActionPollOption;
  v5 = [(TUISmartActionPollOption *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saPollOption"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F03BA8F8;
    }

    objc_storeStrong(&v5->_option, v8);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  option = self->_option;

  return [v4 initWithOption:option];
}

- (TUISmartActionPollOption)initWithOption:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUISmartActionPollOption;
  v5 = [(TUISmartActionPollOption *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    option = v5->_option;
    v5->_option = v6;
  }

  return v5;
}

@end