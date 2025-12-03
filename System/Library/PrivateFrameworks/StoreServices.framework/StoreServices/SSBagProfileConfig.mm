@interface SSBagProfileConfig
- (BOOL)isEqual:(id)equal;
- (NSArray)bagKeys;
- (SSBagProfileConfig)init;
- (id)bagKeyForStringRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
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
  bagKeysDictionary = [(SSBagProfileConfig *)self bagKeysDictionary];
  allKeys = [bagKeysDictionary allKeys];

  return allKeys;
}

- (id)bagKeyForStringRepresentation:(id)representation
{
  representationCopy = representation;
  bagKeysDictionary = [(SSBagProfileConfig *)self bagKeysDictionary];
  v6 = [bagKeysDictionary objectForKeyedSubscript:representationCopy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = SSBagProfileConfig;
  v4 = [(SSBagProfileConfig *)&v9 description];
  v5 = [v3 stringWithFormat:@"%@: {\n", v4];

  profile = [(SSBagProfileConfig *)self profile];
  [v5 appendFormat:@"  profile: %@\n", profile];

  profileVersion = [(SSBagProfileConfig *)self profileVersion];
  [v5 appendFormat:@"  profileVersion: %@\n", profileVersion];

  [v5 appendString:@"}"];

  return v5;
}

- (unint64_t)hash
{
  profile = [(SSBagProfileConfig *)self profile];
  v4 = [profile hash];
  profileVersion = [(SSBagProfileConfig *)self profileVersion];
  v6 = [profileVersion hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[SSBagProfileConfig profile](self, "profile"), v5 = objc_claimAutoreleasedReturnValue(), -[SSBagProfileConfig profile](equalCopy, "profile"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, v5, v7))
    {
      profileVersion = [(SSBagProfileConfig *)self profileVersion];
      profileVersion2 = [(SSBagProfileConfig *)equalCopy profileVersion];
      v10 = [profileVersion isEqualToString:profileVersion2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[SSBagProfileConfig allocWithZone:](SSBagProfileConfig init];
  bagKeysDictionary = [(SSBagProfileConfig *)self bagKeysDictionary];
  v7 = [bagKeysDictionary copyWithZone:zone];
  bagKeysDictionary = v5->_bagKeysDictionary;
  v5->_bagKeysDictionary = v7;

  [(SSBagProfileConfig *)self bagLoadTimeout];
  v5->_bagLoadTimeout = v9;
  profile = [(SSBagProfileConfig *)self profile];
  v11 = [profile copyWithZone:zone];
  profile = v5->_profile;
  v5->_profile = v11;

  profileVersion = [(SSBagProfileConfig *)self profileVersion];
  v14 = [profileVersion copyWithZone:zone];
  profileVersion = v5->_profileVersion;
  v5->_profileVersion = v14;

  return v5;
}

@end