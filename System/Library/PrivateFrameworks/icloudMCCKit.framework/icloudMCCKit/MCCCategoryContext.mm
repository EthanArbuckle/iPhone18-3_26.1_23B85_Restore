@interface MCCCategoryContext
- (MCCCategoryContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MCCCategoryContext

- (MCCCategoryContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MCCCategoryContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_senderNAme"];
    senderName = v5->_senderName;
    v5->_senderName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_senderEmail"];
    senderEmail = v5->_senderEmail;
    v5->_senderEmail = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recipientEmail"];
    receiverEmail = v5->_receiverEmail;
    v5->_receiverEmail = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_subject"];
    emailSubject = v5->_emailSubject;
    v5->_emailSubject = v12;

    v5->_isUnsubscribeHeaderPresent = [v4 decodeBoolForKey:@"_unsubscribed"];
    v5->_isSenderVIP = [v4 decodeBoolForKey:@"_isVIP"];
    v5->_isSenderInAddressBook = [v4 decodeBoolForKey:@"_inAddressBook"];
    v5->_isSenderRecentContact = [v4 decodeBoolForKey:@"_recentContact"];
    v5->_isSenderPrimary = [v4 decodeBoolForKey:@"_senderPrimary"];
    v5->_isNonPersonalAccount = [v4 decodeBoolForKey:@"_isNonPersonalAccount"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localRuleCategory"];
    localRuleCategory = v5->_localRuleCategory;
    v5->_localRuleCategory = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  senderName = self->_senderName;
  v5 = a3;
  [v5 encodeObject:senderName forKey:@"_senderNAme"];
  [v5 encodeObject:self->_senderEmail forKey:@"_senderEmail"];
  [v5 encodeObject:self->_receiverEmail forKey:@"_recipientEmail"];
  [v5 encodeObject:self->_emailSubject forKey:@"_subject"];
  [v5 encodeBool:self->_isUnsubscribeHeaderPresent forKey:@"_unsubscribed"];
  [v5 encodeBool:self->_isSenderVIP forKey:@"_isVIP"];
  [v5 encodeBool:self->_isSenderInAddressBook forKey:@"_inAddressBook"];
  [v5 encodeBool:self->_isSenderRecentContact forKey:@"_recentContact"];
  [v5 encodeBool:self->_isSenderPrimary forKey:@"_senderPrimary"];
  [v5 encodeBool:self->_isNonPersonalAccount forKey:@"_isNonPersonalAccount"];
  [v5 encodeObject:self->_localRuleCategory forKey:@"_localRuleCategory"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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