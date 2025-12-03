@interface _WBSSavedAccountPartialCredential
- (_WBSSavedAccountPartialCredential)initWithProtectionSpace:(id)space modificationDate:(id)date creationDate:(id)creationDate persistentIdentifier:(id)identifier isDefaultCredentialForProtectionSpace:(BOOL)protectionSpace;
@end

@implementation _WBSSavedAccountPartialCredential

- (_WBSSavedAccountPartialCredential)initWithProtectionSpace:(id)space modificationDate:(id)date creationDate:(id)creationDate persistentIdentifier:(id)identifier isDefaultCredentialForProtectionSpace:(BOOL)protectionSpace
{
  spaceCopy = space;
  dateCopy = date;
  creationDateCopy = creationDate;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = _WBSSavedAccountPartialCredential;
  v17 = [(_WBSSavedAccountPartialCredential *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_protectionSpace, space);
    objc_storeStrong(&v18->_modificationDate, date);
    objc_storeStrong(&v18->_creationDate, creationDate);
    objc_storeStrong(&v18->_persistentIdentifier, identifier);
    v18->_defaultCredentialForProtectionSpace = protectionSpace;
    v19 = v18;
  }

  return v18;
}

@end