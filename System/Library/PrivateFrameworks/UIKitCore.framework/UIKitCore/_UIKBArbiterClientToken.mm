@interface _UIKBArbiterClientToken
+ (id)uniqueToken;
- (BOOL)isEqual:(id)a3;
- (_UIKBArbiterClientToken)init;
- (id)description;
@end

@implementation _UIKBArbiterClientToken

+ (id)uniqueToken
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (_UIKBArbiterClientToken)init
{
  v5.receiver = self;
  v5.super_class = _UIKBArbiterClientToken;
  v2 = [(_UIKBArbiterClientToken *)&v5 init];
  if (v2)
  {
    if (qword_1ED49C1F0 != -1)
    {
      dispatch_once(&qword_1ED49C1F0, &__block_literal_global_731);
    }

    v3 = _MergedGlobals_15_12++;
    v2->_identifier = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == v4[2];

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIKBArbiterClientToken;
  v3 = [(_UIKBArbiterClientToken *)&v7 description];
  v4 = [(_UIKBArbiterClientToken *)self sceneIdentityString];
  v5 = [v3 stringByAppendingFormat:@" scene identity string %@", v4];

  return v5;
}

@end