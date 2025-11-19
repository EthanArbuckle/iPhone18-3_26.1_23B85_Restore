@interface _PSContact
- (_PSContact)initWithCNContact:(id)a3 isChild:(BOOL)a4;
@end

@implementation _PSContact

- (_PSContact)initWithCNContact:(id)a3 isChild:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _PSContact;
  v8 = [(_PSContact *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cnContact, a3);
    v9->_isChild = a4;
  }

  return v9;
}

@end