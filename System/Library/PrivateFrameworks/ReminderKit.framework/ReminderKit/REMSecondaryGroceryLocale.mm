@interface REMSecondaryGroceryLocale
- (BOOL)isEqual:(id)a3;
- (REMSecondaryGroceryLocale)initWithCoder:(id)a3;
- (REMSecondaryGroceryLocale)initWithLocale:(id)a3 isAutomatic:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSecondaryGroceryLocale

- (REMSecondaryGroceryLocale)initWithLocale:(id)a3 isAutomatic:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMSecondaryGroceryLocale;
  v8 = [(REMSecondaryGroceryLocale *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, a3);
    v9->_isAutomatic = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMSecondaryGroceryLocale *)self locale];
  v6 = [v4 locale];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  v8 = [(REMSecondaryGroceryLocale *)self locale];
  v9 = [v4 locale];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
LABEL_6:
    v12 = [(REMSecondaryGroceryLocale *)self isAutomatic];
    v11 = v12 ^ [v4 isAutomatic] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(REMSecondaryGroceryLocale *)self locale];
  v6 = [v4 initWithLocale:v5 isAutomatic:{-[REMSecondaryGroceryLocale isAutomatic](self, "isAutomatic")}];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  locale = self->_locale;
  v5 = a3;
  [v5 encodeObject:locale forKey:@"locale"];
  [v5 encodeBool:self->_isAutomatic forKey:@"isAutomatic"];
}

- (REMSecondaryGroceryLocale)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  v6 = [v4 decodeBoolForKey:@"isAutomatic"];

  v7 = [(REMSecondaryGroceryLocale *)self initWithLocale:v5 isAutomatic:v6];
  return v7;
}

@end