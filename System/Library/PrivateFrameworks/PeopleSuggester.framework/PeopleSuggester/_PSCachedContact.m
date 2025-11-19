@interface _PSCachedContact
- (_PSCachedContact)initWithExpirationDate:(id)a3 contact:(id)a4;
@end

@implementation _PSCachedContact

- (_PSCachedContact)initWithExpirationDate:(id)a3 contact:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PSCachedContact;
  v9 = [(_PSCachedContact *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expirationDate, a3);
    objc_storeStrong(&v10->_contact, a4);
  }

  return v10;
}

@end