@interface SFSuggestedUser
+ (id)suggestedUserWithValue:(id)a3 type:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (SFSuggestedUser)initWithCoder:(id)a3;
- (SFSuggestedUser)initWithValue:(id)a3 type:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSuggestedUser

+ (id)suggestedUserWithValue:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithValue:v6 type:a4];

  return v7;
}

- (SFSuggestedUser)initWithValue:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SFSuggestedUser;
  v7 = [(SFSuggestedUser *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_type = a4;
    v10 = v7;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"suggestedUserValue"];
  [v5 encodeInt64:self->_type forKey:@"suggestedUserType"];
  [v5 encodeInt64:self->_usageFrequency forKey:@"suggestedUserUsageFrequency"];
}

- (SFSuggestedUser)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedUserValue"];
  v6 = [v4 decodeInt64ForKey:@"suggestedUserType"];
  if (v6 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v4 decodeInt64ForKey:@"suggestedUserUsageFrequency"];

  v9 = [(SFSuggestedUser *)self initWithValue:v5 type:v7];
  v10 = v9;
  if (v9)
  {
    v9->_usageFrequency = v8;
    v11 = v9;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[SFSuggestedUser alloc] initWithValue:self->_value type:self->_type];
  *(result + 3) = self->_usageFrequency;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 value];
    value = self->_value;
    if (value == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)value isEqualToString:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [v4 usageFrequency];
  usageFrequency = self->_usageFrequency;
  if (usageFrequency > v5)
  {
    goto LABEL_2;
  }

  if (usageFrequency < v5)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v9 = [(NSString *)self->_value length];
  v10 = [v4 value];
  v11 = [v10 length];

  if (v9 >= v11)
  {
    if (v9 <= v11)
    {
      value = self->_value;
      v13 = [v4 value];
      v7 = [(NSString *)value compare:v13];

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_2:
  v7 = -1;
LABEL_6:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  value = self->_value;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_usageFrequency];
  v8 = [v3 stringWithFormat:@"<%@ %p: value=%@ type=%@; usageFrequency=%@>", v4, self, value, v6, v7];;

  return v8;
}

@end