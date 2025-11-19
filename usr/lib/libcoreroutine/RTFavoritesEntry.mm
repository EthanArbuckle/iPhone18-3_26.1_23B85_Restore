@interface RTFavoritesEntry
- (RTFavoritesEntry)initWithContact:(id)a3 value:(id)a4;
- (id)description;
@end

@implementation RTFavoritesEntry

- (RTFavoritesEntry)initWithContact:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RTFavoritesEntry;
  v8 = [(RTFavoritesEntry *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    contact = v8->_contact;
    v8->_contact = v9;

    v11 = [v7 copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = [(RTFavoritesEntry *)self contact];
  v5 = [(RTFavoritesEntry *)self value];
  [v3 appendFormat:@"contact, %@, value, %@", v4, v5];

  return v3;
}

@end