@interface PKAMSMediaLookupItem
- (BOOL)isEqual:(id)equal;
- (PKAMSMediaLookupItem)initWithCoder:(id)coder;
- (PKAMSMediaLookupItemMusic)musicItem;
- (id)_initWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PKAMSMediaLookupItem

- (id)_initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKAMSMediaLookupItem;
  result = [(PKAMSMediaLookupItem *)&v5 init];
  if (result)
  {
    *(result + 1) = type;
  }

  return result;
}

- (PKAMSMediaLookupItemMusic)musicItem
{
  if (self->_type <= 2)
  {
    selfCopy = self;
  }

  return self;
}

- (PKAMSMediaLookupItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  if (v5 <= 2 && (v6 = v5, objc_opt_class()) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    self = [(PKAMSMediaLookupItem *)self _initWithType:v6];
    selfCopy = self;
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
    [coderCopy failWithError:v9];

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PKAMSMediaLookupItem allocWithZone:zone];
  type = self->_type;

  return [(PKAMSMediaLookupItem *)v4 _initWithType:type];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAMSMediaLookupItem *)self isEqualToItem:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [array safelyAddObject:v4];

  v5 = PKCombinedHash();
  return v5;
}

@end