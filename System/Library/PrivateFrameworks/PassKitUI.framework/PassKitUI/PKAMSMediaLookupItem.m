@interface PKAMSMediaLookupItem
- (BOOL)isEqual:(id)a3;
- (PKAMSMediaLookupItem)initWithCoder:(id)a3;
- (PKAMSMediaLookupItemMusic)musicItem;
- (id)_initWithType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PKAMSMediaLookupItem

- (id)_initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKAMSMediaLookupItem;
  result = [(PKAMSMediaLookupItem *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (PKAMSMediaLookupItemMusic)musicItem
{
  if (self->_type <= 2)
  {
    v3 = self;
  }

  return self;
}

- (PKAMSMediaLookupItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  if (v5 <= 2 && (v6 = v5, objc_opt_class()) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    self = [(PKAMSMediaLookupItem *)self _initWithType:v6];
    v7 = self;
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKAMSMediaLookupItem: Unexpected type during initialization", v11, 2u);
    }

    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKAMSMediaLookupItem" code:0 userInfo:0];
    [v4 failWithError:v9];

    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PKAMSMediaLookupItem allocWithZone:a3];
  type = self->_type;

  return [(PKAMSMediaLookupItem *)v4 _initWithType:type];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAMSMediaLookupItem *)self isEqualToItem:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [v3 safelyAddObject:v4];

  v5 = PKCombinedHash();
  return v5;
}

@end