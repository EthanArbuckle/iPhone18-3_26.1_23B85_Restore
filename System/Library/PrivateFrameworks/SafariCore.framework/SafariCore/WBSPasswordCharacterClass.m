@interface WBSPasswordCharacterClass
+ (id)customCharacterClassWithValue:(id)a3;
+ (id)namedCharacterClassWithType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (WBSPasswordCharacterClass)initWithType:(int64_t)a3 value:(id)a4;
@end

@implementation WBSPasswordCharacterClass

+ (id)customCharacterClassWithValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:6 value:v4];

  return v5;
}

+ (id)namedCharacterClassWithType:(int64_t)a3
{
  v3 = [[a1 alloc] initWithType:a3 value:&stru_1F3064D08];

  return v3;
}

- (WBSPasswordCharacterClass)initWithType:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = WBSPasswordCharacterClass;
  v7 = [(WBSPasswordCharacterClass *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    value = v8->_value;
    v8->_value = v9;

    v11 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WBSPasswordCharacterClass *)v4 value];
      type = self->_type;
      if (type == [(WBSPasswordCharacterClass *)v4 type])
      {
        if (v5 == self->_value)
        {
          v7 = 1;
        }

        else
        {
          v7 = [(NSString *)v5 isEqualToString:?];
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