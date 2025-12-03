@interface TISupplementalItem
- (BOOL)isEqual:(id)equal;
- (TISupplementalItem)init;
- (TISupplementalItem)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TISupplementalItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TISupplementalItem *)self isEqualToSupplementalItem:equalCopy];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  identifier = self->_identifier;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedLongLong:identifier];
  [coderCopy encodeObject:v6 forKey:@"identifier"];
}

- (TISupplementalItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TISupplementalItem *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v5->_identifier = [v6 unsignedLongLongValue];

    v7 = v5;
  }

  return v5;
}

- (TISupplementalItem)init
{
  v6.receiver = self;
  v6.super_class = TISupplementalItem;
  v2 = [(TISupplementalItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_identifier = ++generateIdentifier_count;
    v4 = v2;
  }

  return v3;
}

@end