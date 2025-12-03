@interface REMSecondaryGroceryLocale
- (BOOL)isEqual:(id)equal;
- (REMSecondaryGroceryLocale)initWithCoder:(id)coder;
- (REMSecondaryGroceryLocale)initWithLocale:(id)locale isAutomatic:(BOOL)automatic;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSecondaryGroceryLocale

- (REMSecondaryGroceryLocale)initWithLocale:(id)locale isAutomatic:(BOOL)automatic
{
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = REMSecondaryGroceryLocale;
  v8 = [(REMSecondaryGroceryLocale *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, locale);
    v9->_isAutomatic = automatic;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  locale = [(REMSecondaryGroceryLocale *)self locale];
  locale2 = [equalCopy locale];
  v7 = locale2;
  if (locale == locale2)
  {

    goto LABEL_6;
  }

  locale3 = [(REMSecondaryGroceryLocale *)self locale];
  locale4 = [equalCopy locale];
  v10 = [locale3 isEqual:locale4];

  if (v10)
  {
LABEL_6:
    isAutomatic = [(REMSecondaryGroceryLocale *)self isAutomatic];
    v11 = isAutomatic ^ [equalCopy isAutomatic] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  locale = [(REMSecondaryGroceryLocale *)self locale];
  v6 = [v4 initWithLocale:locale isAutomatic:{-[REMSecondaryGroceryLocale isAutomatic](self, "isAutomatic")}];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  locale = self->_locale;
  coderCopy = coder;
  [coderCopy encodeObject:locale forKey:@"locale"];
  [coderCopy encodeBool:self->_isAutomatic forKey:@"isAutomatic"];
}

- (REMSecondaryGroceryLocale)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  v6 = [coderCopy decodeBoolForKey:@"isAutomatic"];

  v7 = [(REMSecondaryGroceryLocale *)self initWithLocale:v5 isAutomatic:v6];
  return v7;
}

@end