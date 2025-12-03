@interface VSCredentialEntryField
- (NSString)recentsMessage;
- (NSString)recentsTitle;
- (VSCredentialEntryField)init;
@end

@implementation VSCredentialEntryField

- (VSCredentialEntryField)init
{
  v10.receiver = self;
  v10.super_class = VSCredentialEntryField;
  v2 = [(VSCredentialEntryField *)&v10 init];
  v3 = v2;
  if (v2)
  {
    text = v2->_text;
    v2->_text = &stru_2880B8BB0;

    title = v3->_title;
    v3->_title = &stru_2880B8BB0;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = uUIDString;
  }

  return v3;
}

- (NSString)recentsTitle
{
  v2 = self->_recentsTitle;
  if (!v2)
  {
    v2 = &stru_2880B8BB0;
  }

  return v2;
}

- (NSString)recentsMessage
{
  v2 = self->_recentsMessage;
  if (!v2)
  {
    v2 = &stru_2880B8BB0;
  }

  return v2;
}

@end