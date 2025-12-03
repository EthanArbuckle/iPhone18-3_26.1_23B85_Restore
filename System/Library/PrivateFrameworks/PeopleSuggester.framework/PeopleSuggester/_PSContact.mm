@interface _PSContact
- (_PSContact)initWithCNContact:(id)contact isChild:(BOOL)child;
@end

@implementation _PSContact

- (_PSContact)initWithCNContact:(id)contact isChild:(BOOL)child
{
  contactCopy = contact;
  v11.receiver = self;
  v11.super_class = _PSContact;
  v8 = [(_PSContact *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cnContact, contact);
    v9->_isChild = child;
  }

  return v9;
}

@end