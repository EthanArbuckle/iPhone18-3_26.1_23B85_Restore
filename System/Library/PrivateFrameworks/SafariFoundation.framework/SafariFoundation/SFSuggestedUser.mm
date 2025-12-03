@interface SFSuggestedUser
+ (id)suggestedUserWithValue:(id)value type:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (SFSuggestedUser)initWithCoder:(id)coder;
- (SFSuggestedUser)initWithValue:(id)value type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSuggestedUser

+ (id)suggestedUserWithValue:(id)value type:(int64_t)type
{
  valueCopy = value;
  v7 = [[self alloc] initWithValue:valueCopy type:type];

  return v7;
}

- (SFSuggestedUser)initWithValue:(id)value type:(int64_t)type
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = SFSuggestedUser;
  v7 = [(SFSuggestedUser *)&v12 init];
  if (v7)
  {
    v8 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_type = type;
    v10 = v7;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"suggestedUserValue"];
  [coderCopy encodeInt64:self->_type forKey:@"suggestedUserType"];
  [coderCopy encodeInt64:self->_usageFrequency forKey:@"suggestedUserUsageFrequency"];
}

- (SFSuggestedUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedUserValue"];
  v6 = [coderCopy decodeInt64ForKey:@"suggestedUserType"];
  if (v6 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = [coderCopy decodeInt64ForKey:@"suggestedUserUsageFrequency"];

  v9 = [(SFSuggestedUser *)self initWithValue:v5 type:v7];
  v10 = v9;
  if (v9)
  {
    v9->_usageFrequency = v8;
    v11 = v9;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[SFSuggestedUser alloc] initWithValue:self->_value type:self->_type];
  *(result + 3) = self->_usageFrequency;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [equalCopy value];
    value = self->_value;
    if (value == value)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)value isEqualToString:value];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  usageFrequency = [compareCopy usageFrequency];
  usageFrequency = self->_usageFrequency;
  if (usageFrequency > usageFrequency)
  {
    goto LABEL_2;
  }

  if (usageFrequency < usageFrequency)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v9 = [(NSString *)self->_value length];
  value = [compareCopy value];
  v11 = [value length];

  if (v9 >= v11)
  {
    if (v9 <= v11)
    {
      value = self->_value;
      value2 = [compareCopy value];
      v7 = [(NSString *)value compare:value2];

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