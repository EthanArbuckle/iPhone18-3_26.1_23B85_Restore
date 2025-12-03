@interface TUContinuitySessionContact
- (NSString)displayName;
- (TUContinuitySessionContact)initWithCoder:(id)coder;
- (TUContinuitySessionContact)initWithContact:(id)contact contactIdentifier:(id)identifier anonyms:(id)anonyms;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuitySessionContact

- (TUContinuitySessionContact)initWithContact:(id)contact contactIdentifier:(id)identifier anonyms:(id)anonyms
{
  contactCopy = contact;
  identifierCopy = identifier;
  anonymsCopy = anonyms;
  v15.receiver = self;
  v15.super_class = TUContinuitySessionContact;
  v12 = [(TUContinuitySessionContact *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, contact);
    objc_storeStrong(&v13->_contactIdentifier, identifier);
    objc_storeStrong(&v13->_anonyms, anonyms);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" contact=%@", self->_contact];
  [v6 appendFormat:@" contactIdentifier=%@", self->_contactIdentifier];
  [v6 appendFormat:@" anonyms=%@", self->_anonyms];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

- (NSString)displayName
{
  contact = [(TUContinuitySessionContact *)self contact];
  displayName = [contact displayName];

  if (displayName && [displayName length])
  {
    v5 = displayName;
  }

  else
  {
    contact2 = [(TUContinuitySessionContact *)self contact];
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

- (TUContinuitySessionContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_contact);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_contactIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = NSStringFromSelector(sel_anonyms);
  v15 = [coderCopy decodeObjectOfClasses:v13 forKey:v14];

  v16 = [(TUContinuitySessionContact *)self initWithContact:v7 contactIdentifier:v10 anonyms:v15];
  return v16;
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

  anonyms = self->_anonyms;
  v10 = NSStringFromSelector(sel_anonyms);
  [coderCopy encodeObject:anonyms forKey:v10];
}

@end