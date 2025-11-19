@interface TUContinuitySessionContact
- (NSString)displayName;
- (TUContinuitySessionContact)initWithCoder:(id)a3;
- (TUContinuitySessionContact)initWithContact:(id)a3 contactIdentifier:(id)a4 anonyms:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUContinuitySessionContact

- (TUContinuitySessionContact)initWithContact:(id)a3 contactIdentifier:(id)a4 anonyms:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUContinuitySessionContact;
  v12 = [(TUContinuitySessionContact *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, a3);
    objc_storeStrong(&v13->_contactIdentifier, a4);
    objc_storeStrong(&v13->_anonyms, a5);
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
  v3 = [(TUContinuitySessionContact *)self contact];
  v4 = [v3 displayName];

  if (v4 && [v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(TUContinuitySessionContact *)self contact];
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

- (TUContinuitySessionContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_contact);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_contactIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = NSStringFromSelector(sel_anonyms);
  v15 = [v4 decodeObjectOfClasses:v13 forKey:v14];

  v16 = [(TUContinuitySessionContact *)self initWithContact:v7 contactIdentifier:v10 anonyms:v15];
  return v16;
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

  anonyms = self->_anonyms;
  v10 = NSStringFromSelector(sel_anonyms);
  [v5 encodeObject:anonyms forKey:v10];
}

@end