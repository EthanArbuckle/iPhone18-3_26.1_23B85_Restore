@interface TUContinuityFavorite
- (NSString)displayName;
- (TUContinuityFavorite)initWithCoder:(id)a3;
- (TUContinuityFavorite)initWithContact:(id)a3 contactIdentifier:(id)a4 anonym:(id)a5 actionType:(id)a6 bundleIdentifier:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUContinuityFavorite

- (TUContinuityFavorite)initWithContact:(id)a3 contactIdentifier:(id)a4 anonym:(id)a5 actionType:(id)a6 bundleIdentifier:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = TUContinuityFavorite;
  v17 = [(TUContinuityFavorite *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contact, a3);
    objc_storeStrong(&v18->_contactIdentifier, a4);
    objc_storeStrong(&v18->_anonym, a5);
    objc_storeStrong(&v18->_actionType, a6);
    objc_storeStrong(&v18->_bundleIdentifier, a7);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" contact=%@", self->_contact];
  [v6 appendFormat:@" contactIdentifier=%@", self->_contactIdentifier];
  [v6 appendFormat:@" anonym=%@", self->_anonym];
  [v6 appendFormat:@" actionType=%@", self->_actionType];
  [v6 appendFormat:@" bundleIdentifier=%@", self->_bundleIdentifier];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

- (NSString)displayName
{
  v3 = [(TUContinuityFavorite *)self contact];
  v4 = [v3 displayName];

  if (v4 && [v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(TUContinuityFavorite *)self contact];
    v7 = [v6 organizationName];

    if (v7 && [v7 length])
    {
      v5 = v7;
    }

    else
    {
      v5 = &stru_1F098C218;
    }
  }

  return v5;
}

- (TUContinuityFavorite)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_contact);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_contactIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_anonym);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_actionType);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_bundleIdentifier);
  v19 = [v4 decodeObjectOfClass:v17 forKey:v18];

  v20 = [(TUContinuityFavorite *)self initWithContact:v7 contactIdentifier:v10 anonym:v13 actionType:v16 bundleIdentifier:v19];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  contact = self->_contact;
  v5 = a3;
  v6 = NSStringFromSelector(sel_contact);
  [v5 encodeObject:contact forKey:v6];

  contactIdentifier = self->_contactIdentifier;
  v8 = NSStringFromSelector(sel_contactIdentifier);
  [v5 encodeObject:contactIdentifier forKey:v8];

  anonym = self->_anonym;
  v10 = NSStringFromSelector(sel_anonym);
  [v5 encodeObject:anonym forKey:v10];

  actionType = self->_actionType;
  v12 = NSStringFromSelector(sel_actionType);
  [v5 encodeObject:actionType forKey:v12];

  bundleIdentifier = self->_bundleIdentifier;
  v14 = NSStringFromSelector(sel_bundleIdentifier);
  [v5 encodeObject:bundleIdentifier forKey:v14];
}

@end