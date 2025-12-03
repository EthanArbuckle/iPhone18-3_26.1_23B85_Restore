@interface WBSPasswordCharacterClass
+ (id)customCharacterClassWithValue:(id)value;
+ (id)namedCharacterClassWithType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (WBSPasswordCharacterClass)initWithType:(int64_t)type value:(id)value;
@end

@implementation WBSPasswordCharacterClass

+ (id)customCharacterClassWithValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithType:6 value:valueCopy];

  return v5;
}

+ (id)namedCharacterClassWithType:(int64_t)type
{
  v3 = [[self alloc] initWithType:type value:&stru_1F3064D08];

  return v3;
}

- (WBSPasswordCharacterClass)initWithType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = WBSPasswordCharacterClass;
  v7 = [(WBSPasswordCharacterClass *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v9;

    v11 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [(WBSPasswordCharacterClass *)equalCopy value];
      type = self->_type;
      if (type == [(WBSPasswordCharacterClass *)equalCopy type])
      {
        if (value == self->_value)
        {
          v7 = 1;
        }

        else
        {
          v7 = [(NSString *)value isEqualToString:?];
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end