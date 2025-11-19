@interface _WBSSavedAccountPartialCredential
- (_WBSSavedAccountPartialCredential)initWithProtectionSpace:(id)a3 modificationDate:(id)a4 creationDate:(id)a5 persistentIdentifier:(id)a6 isDefaultCredentialForProtectionSpace:(BOOL)a7;
@end

@implementation _WBSSavedAccountPartialCredential

- (_WBSSavedAccountPartialCredential)initWithProtectionSpace:(id)a3 modificationDate:(id)a4 creationDate:(id)a5 persistentIdentifier:(id)a6 isDefaultCredentialForProtectionSpace:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v21.receiver = self;
  v21.super_class = _WBSSavedAccountPartialCredential;
  v17 = [(_WBSSavedAccountPartialCredential *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_protectionSpace, a3);
    objc_storeStrong(&v18->_modificationDate, a4);
    objc_storeStrong(&v18->_creationDate, a5);
    objc_storeStrong(&v18->_persistentIdentifier, a6);
    v18->_defaultCredentialForProtectionSpace = a7;
    v19 = v18;
  }

  return v18;
}

@end