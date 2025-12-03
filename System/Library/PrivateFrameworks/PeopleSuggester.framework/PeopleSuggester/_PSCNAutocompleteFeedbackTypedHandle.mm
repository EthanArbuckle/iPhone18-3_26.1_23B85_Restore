@interface _PSCNAutocompleteFeedbackTypedHandle
- (_PSCNAutocompleteFeedbackTypedHandle)initWithCoder:(id)coder;
- (_PSCNAutocompleteFeedbackTypedHandle)initWithContact:(id)contact viaContactPicker:(BOOL)picker;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSCNAutocompleteFeedbackTypedHandle

- (_PSCNAutocompleteFeedbackTypedHandle)initWithContact:(id)contact viaContactPicker:(BOOL)picker
{
  contactCopy = contact;
  v11.receiver = self;
  v11.super_class = _PSCNAutocompleteFeedbackTypedHandle;
  v8 = [(_PSCNAutocompleteFeedbackTypedHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contact, contact);
    v9->_viaContactPicker = picker;
  }

  return v9;
}

- (_PSCNAutocompleteFeedbackTypedHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _PSCNAutocompleteFeedbackTypedHandle;
  v5 = [(_PSCNAutocompleteFeedbackTypedHandle *)&v10 init];
  if (v5)
  {
    getCNContactClass_0();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v6;

    v5->_viaContactPicker = [coderCopy decodeBoolForKey:@"viaContactPicker"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contact = self->_contact;
  coderCopy = coder;
  [coderCopy encodeObject:contact forKey:@"contact"];
  [coderCopy encodeBool:self->_viaContactPicker forKey:@"viaContactPicker"];
}

@end