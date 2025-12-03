@interface _PSCNAutocompleteFeedbackErasedHandle
- (_PSCNAutocompleteFeedbackErasedHandle)initWithCoder:(id)coder;
- (_PSCNAutocompleteFeedbackErasedHandle)initWithContact:(id)contact;
@end

@implementation _PSCNAutocompleteFeedbackErasedHandle

- (_PSCNAutocompleteFeedbackErasedHandle)initWithContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = _PSCNAutocompleteFeedbackErasedHandle;
  v6 = [(_PSCNAutocompleteFeedbackErasedHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
  }

  return v7;
}

- (_PSCNAutocompleteFeedbackErasedHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _PSCNAutocompleteFeedbackErasedHandle;
  v5 = [(_PSCNAutocompleteFeedbackErasedHandle *)&v10 init];
  if (v5)
  {
    getCNContactClass_0();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = v5;
  }

  return v5;
}

@end