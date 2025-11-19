@interface SSBagProfileConfig
- (BOOL)isEqual:(id)a3;
- (NSArray)bagKeys;
- (SSBagProfileConfig)init;
- (id)bagKeyForStringRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SSBagProfileConfig

- (SSBagProfileConfig)init
{
  v3.receiver = self;
  v3.super_class = SSBagProfileConfig;
  result = [(SSBagProfileConfig *)&v3 init];
  if (result)
  {
    result->_bagLoadTimeout = 60.0;
  }

  return result;
}

- (NSArray)bagKeys
{
  v2 = [(SSBagProfileConfig *)self bagKeysDictionary];
  v3 = [v2 allKeys];

  return v3;
}

- (id)bagKeyForStringRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(SSBagProfileConfig *)self bagKeysDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = SSBagProfileConfig;
  v4 = [(SSBagProfileConfig *)&v9 description];
  v5 = [v3 stringWithFormat:@"%@: {\n", v4];

  v6 = [(SSBagProfileConfig *)self profile];
  [v5 appendFormat:@"  profile: %@\n", v6];

  v7 = [(SSBagProfileConfig *)self profileVersion];
  [v5 appendFormat:@"  profileVersion: %@\n", v7];

  [v5 appendString:@"}"];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SSBagProfileConfig *)self profile];
  v4 = [v3 hash];
  v5 = [(SSBagProfileConfig *)self profileVersion];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[SSBagProfileConfig profile](self, "profile"), v5 = objc_claimAutoreleasedReturnValue(), -[SSBagProfileConfig profile](v4, "profile"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, v5, v7))
    {
      v8 = [(SSBagProfileConfig *)self profileVersion];
      v9 = [(SSBagProfileConfig *)v4 profileVersion];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[SSBagProfileConfig allocWithZone:](SSBagProfileConfig init];
  v6 = [(SSBagProfileConfig *)self bagKeysDictionary];
  v7 = [v6 copyWithZone:a3];
  bagKeysDictionary = v5->_bagKeysDictionary;
  v5->_bagKeysDictionary = v7;

  [(SSBagProfileConfig *)self bagLoadTimeout];
  v5->_bagLoadTimeout = v9;
  v10 = [(SSBagProfileConfig *)self profile];
  v11 = [v10 copyWithZone:a3];
  profile = v5->_profile;
  v5->_profile = v11;

  v13 = [(SSBagProfileConfig *)self profileVersion];
  v14 = [v13 copyWithZone:a3];
  profileVersion = v5->_profileVersion;
  v5->_profileVersion = v14;

  return v5;
}

@end