@interface _PSPriorityContact
- (_PSPriorityContact)initWithCoder:(id)a3;
- (_PSPriorityContact)initWithContact:(id)a3;
- (_PSPriorityContact)initWithIdentifier:(id)a3 contact:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSPriorityContact

- (_PSPriorityContact)initWithContact:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(_PSPriorityContact *)self initWithIdentifier:v5 contact:v4];

  return v6;
}

- (_PSPriorityContact)initWithIdentifier:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _PSPriorityContact;
  v8 = [(_PSPriorityContact *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_contact, a4);
  }

  return v8;
}

- (_PSPriorityContact)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _PSPriorityContact;
  v5 = [(_PSPriorityContact *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
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
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_contact forKey:@"contact"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E6997908];
  v6 = [(_PSPriorityContact *)self identifier];
  v7 = [v5 descriptionOfObject:v6 redacted:0];
  v8 = MEMORY[0x1E6997908];
  v9 = [(_PSPriorityContact *)self contact];
  v10 = [v8 descriptionOfObject:v9 redacted:0];
  v11 = [v3 stringWithFormat:@"<%@ %p> identifier: %@, contact: %@", v4, self, v7, v10];

  return v11;
}

@end