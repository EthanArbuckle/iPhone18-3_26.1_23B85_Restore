@interface MCCCategoryContext
- (MCCCategoryContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MCCCategoryContext

- (MCCCategoryContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MCCCategoryContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_senderNAme"];
    senderName = v5->_senderName;
    v5->_senderName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_senderEmail"];
    senderEmail = v5->_senderEmail;
    v5->_senderEmail = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recipientEmail"];
    receiverEmail = v5->_receiverEmail;
    v5->_receiverEmail = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_subject"];
    emailSubject = v5->_emailSubject;
    v5->_emailSubject = v12;

    v5->_isUnsubscribeHeaderPresent = [coderCopy decodeBoolForKey:@"_unsubscribed"];
    v5->_isSenderVIP = [coderCopy decodeBoolForKey:@"_isVIP"];
    v5->_isSenderInAddressBook = [coderCopy decodeBoolForKey:@"_inAddressBook"];
    v5->_isSenderRecentContact = [coderCopy decodeBoolForKey:@"_recentContact"];
    v5->_isSenderPrimary = [coderCopy decodeBoolForKey:@"_senderPrimary"];
    v5->_isNonPersonalAccount = [coderCopy decodeBoolForKey:@"_isNonPersonalAccount"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localRuleCategory"];
    localRuleCategory = v5->_localRuleCategory;
    v5->_localRuleCategory = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  senderName = self->_senderName;
  coderCopy = coder;
  [coderCopy encodeObject:senderName forKey:@"_senderNAme"];
  [coderCopy encodeObject:self->_senderEmail forKey:@"_senderEmail"];
  [coderCopy encodeObject:self->_receiverEmail forKey:@"_recipientEmail"];
  [coderCopy encodeObject:self->_emailSubject forKey:@"_subject"];
  [coderCopy encodeBool:self->_isUnsubscribeHeaderPresent forKey:@"_unsubscribed"];
  [coderCopy encodeBool:self->_isSenderVIP forKey:@"_isVIP"];
  [coderCopy encodeBool:self->_isSenderInAddressBook forKey:@"_inAddressBook"];
  [coderCopy encodeBool:self->_isSenderRecentContact forKey:@"_recentContact"];
  [coderCopy encodeBool:self->_isSenderPrimary forKey:@"_senderPrimary"];
  [coderCopy encodeBool:self->_isNonPersonalAccount forKey:@"_isNonPersonalAccount"];
  [coderCopy encodeObject:self->_localRuleCategory forKey:@"_localRuleCategory"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_senderName copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(NSString *)self->_senderEmail copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(NSString *)self->_receiverEmail copy];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(NSString *)self->_emailSubject copy];
  v12 = *(v4 + 40);
  *(v4 + 40) = v11;

  *(v4 + 8) = self->_isUnsubscribeHeaderPresent;
  *(v4 + 9) = self->_isSenderVIP;
  *(v4 + 10) = self->_isSenderInAddressBook;
  *(v4 + 11) = self->_isSenderRecentContact;
  *(v4 + 12) = self->_isSenderPrimary;
  *(v4 + 13) = self->_isNonPersonalAccount;
  v13 = [(NSString *)self->_localRuleCategory copy];
  v14 = *(v4 + 48);
  *(v4 + 48) = v13;

  return v4;
}

- (id)stringValue
{
  v2 = "no";
  if (self->_isUnsubscribeHeaderPresent)
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  if (self->_isSenderVIP)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  if (self->_isSenderInAddressBook)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (self->_isSenderRecentContact)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (self->_isSenderPrimary)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (self->_isNonPersonalAccount)
  {
    v2 = "yes";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"senderName:    %@\nsenderEmail:   %@\nreceiverEmail: %@\nemailSubject:  %@\nunsub header:  %s\nsender VIP:    %s\nsender in book:%s\nsender recent: %s\nsender primary:%s\nnon personal account:%s\nlocal rule category:%@\n", *&self->_senderName, self->_receiverEmail, self->_emailSubject, v3, v4, v5, v6, v7, v2, self->_localRuleCategory];
}

@end