@interface _PSPriorityContact
- (_PSPriorityContact)initWithCoder:(id)coder;
- (_PSPriorityContact)initWithContact:(id)contact;
- (_PSPriorityContact)initWithIdentifier:(id)identifier contact:(id)contact;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSPriorityContact

- (_PSPriorityContact)initWithContact:(id)contact
{
  contactCopy = contact;
  identifier = [contactCopy identifier];
  v6 = [(_PSPriorityContact *)self initWithIdentifier:identifier contact:contactCopy];

  return v6;
}

- (_PSPriorityContact)initWithIdentifier:(id)identifier contact:(id)contact
{
  identifierCopy = identifier;
  contactCopy = contact;
  v12.receiver = self;
  v12.super_class = _PSPriorityContact;
  v8 = [(_PSPriorityContact *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_contact, contact);
  }

  return v8;
}

- (_PSPriorityContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _PSPriorityContact;
  v5 = [(_PSPriorityContact *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v8 = getCNContactClass_softClass_3;
    v19 = getCNContactClass_softClass_3;
    if (!getCNContactClass_softClass_3)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getCNContactClass_block_invoke_3;
      v15[3] = &unk_1E7C23BF0;
      v15[4] = &v16;
      __getCNContactClass_block_invoke_3(v15);
      v8 = v17[3];
    }

    v9 = v8;
    _Block_object_dispose(&v16, 8);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_contact forKey:@"contact"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E6997908];
  identifier = [(_PSPriorityContact *)self identifier];
  v7 = [v5 descriptionOfObject:identifier redacted:0];
  v8 = MEMORY[0x1E6997908];
  contact = [(_PSPriorityContact *)self contact];
  v10 = [v8 descriptionOfObject:contact redacted:0];
  v11 = [v3 stringWithFormat:@"<%@ %p> identifier: %@, contact: %@", v4, self, v7, v10];

  return v11;
}

@end