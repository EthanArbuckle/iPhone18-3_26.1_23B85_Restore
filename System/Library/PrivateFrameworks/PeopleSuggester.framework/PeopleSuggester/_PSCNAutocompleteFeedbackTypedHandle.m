@interface _PSCNAutocompleteFeedbackTypedHandle
- (_PSCNAutocompleteFeedbackTypedHandle)initWithCoder:(id)a3;
- (_PSCNAutocompleteFeedbackTypedHandle)initWithContact:(id)a3 viaContactPicker:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSCNAutocompleteFeedbackTypedHandle

- (_PSCNAutocompleteFeedbackTypedHandle)initWithContact:(id)a3 viaContactPicker:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _PSCNAutocompleteFeedbackTypedHandle;
  v8 = [(_PSCNAutocompleteFeedbackTypedHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contact, a3);
    v9->_viaContactPicker = a4;
  }

  return v9;
}

- (_PSCNAutocompleteFeedbackTypedHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _PSCNAutocompleteFeedbackTypedHandle;
  v5 = [(_PSCNAutocompleteFeedbackTypedHandle *)&v10 init];
  if (v5)
  {
    getCNContactClass_0();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v6;

    v5->_viaContactPicker = [v4 decodeBoolForKey:@"viaContactPicker"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contact = self->_contact;
  v5 = a3;
  [v5 encodeObject:contact forKey:@"contact"];
  [v5 encodeBool:self->_viaContactPicker forKey:@"viaContactPicker"];
}

@end