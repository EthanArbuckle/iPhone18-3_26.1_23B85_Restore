@interface RTFavoritesEntry
- (RTFavoritesEntry)initWithContact:(id)contact value:(id)value;
- (id)description;
@end

@implementation RTFavoritesEntry

- (RTFavoritesEntry)initWithContact:(id)contact value:(id)value
{
  contactCopy = contact;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = RTFavoritesEntry;
  v8 = [(RTFavoritesEntry *)&v14 init];
  if (v8)
  {
    v9 = [contactCopy copy];
    contact = v8->_contact;
    v8->_contact = v9;

    v11 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_new();
  contact = [(RTFavoritesEntry *)self contact];
  value = [(RTFavoritesEntry *)self value];
  [v3 appendFormat:@"contact, %@, value, %@", contact, value];

  return v3;
}

@end