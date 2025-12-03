@interface TUContinuityFavorite
- (NSString)displayName;
- (TUContinuityFavorite)initWithCoder:(id)coder;
- (TUContinuityFavorite)initWithContact:(id)contact contactIdentifier:(id)identifier anonym:(id)anonym actionType:(id)type bundleIdentifier:(id)bundleIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuityFavorite

- (TUContinuityFavorite)initWithContact:(id)contact contactIdentifier:(id)identifier anonym:(id)anonym actionType:(id)type bundleIdentifier:(id)bundleIdentifier
{
  contactCopy = contact;
  identifierCopy = identifier;
  anonymCopy = anonym;
  typeCopy = type;
  bundleIdentifierCopy = bundleIdentifier;
  v21.receiver = self;
  v21.super_class = TUContinuityFavorite;
  v17 = [(TUContinuityFavorite *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contact, contact);
    objc_storeStrong(&v18->_contactIdentifier, identifier);
    objc_storeStrong(&v18->_anonym, anonym);
    objc_storeStrong(&v18->_actionType, type);
    objc_storeStrong(&v18->_bundleIdentifier, bundleIdentifier);
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
  contact = [(TUContinuityFavorite *)self contact];
  displayName = [contact displayName];

  if (displayName && [displayName length])
  {
    v5 = displayName;
  }

  else
  {
    contact2 = [(TUContinuityFavorite *)self contact];
    organizationName = [contact2 organizationName];

    if (organizationName && [organizationName length])
    {
      v5 = organizationName;
    }

    else
    {
      v5 = &stru_1F098C218;
    }
  }

  return v5;
}

- (TUContinuityFavorite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_contact);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_contactIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_anonym);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_actionType);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_bundleIdentifier);
  v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];

  v20 = [(TUContinuityFavorite *)self initWithContact:v7 contactIdentifier:v10 anonym:v13 actionType:v16 bundleIdentifier:v19];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  contact = self->_contact;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_contact);
  [coderCopy encodeObject:contact forKey:v6];

  contactIdentifier = self->_contactIdentifier;
  v8 = NSStringFromSelector(sel_contactIdentifier);
  [coderCopy encodeObject:contactIdentifier forKey:v8];

  anonym = self->_anonym;
  v10 = NSStringFromSelector(sel_anonym);
  [coderCopy encodeObject:anonym forKey:v10];

  actionType = self->_actionType;
  v12 = NSStringFromSelector(sel_actionType);
  [coderCopy encodeObject:actionType forKey:v12];

  bundleIdentifier = self->_bundleIdentifier;
  v14 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v14];
}

@end