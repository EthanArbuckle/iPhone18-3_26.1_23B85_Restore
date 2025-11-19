@interface STEmailMessage
- (STEmailMessage)initWithCoder:(id)a3;
- (id)_aceContextObjectValue;
- (id)_personAttributesForRecipients:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STEmailMessage

- (STEmailMessage)initWithCoder:(id)a3
{
  v40[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = STEmailMessage;
  v5 = [(STSiriModelObject *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_messageBody"];
    messageBody = v5->_messageBody;
    v5->_messageBody = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_subject"];
    subject = v5->_subject;
    v5->_subject = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_messageIdentifier"];
    messageIdentifier = v5->_messageIdentifier;
    v5->_messageIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sender"];
    sender = v5->_sender;
    v5->_sender = v12;

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v14 = MEMORY[0x277CBEB98];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_toRecipients"];
    toRecipients = v5->_toRecipients;
    v5->_toRecipients = v17;

    v19 = MEMORY[0x277CBEB98];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v21 = [v19 setWithArray:v20];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"_ccRecipients"];
    ccRecipients = v5->_ccRecipients;
    v5->_ccRecipients = v22;

    v24 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v26 = [v24 setWithArray:v25];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"_bccRecipients"];
    bccRecipients = v5->_bccRecipients;
    v5->_bccRecipients = v27;

    v29 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v31 = [v29 setWithArray:v30];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"_receivingAddresses"];
    receivingAddresses = v5->_receivingAddresses;
    v5->_receivingAddresses = v32;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STEmailMessage;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_messageBody forKey:{@"_messageBody", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_subject forKey:@"_subject"];
  [v4 encodeObject:self->_messageIdentifier forKey:@"_messageIdentifier"];
  [v4 encodeObject:self->_sender forKey:@"_sender"];
  [v4 encodeInteger:self->_type forKey:@"_type"];
  [v4 encodeObject:self->_toRecipients forKey:@"_toRecipients"];
  [v4 encodeObject:self->_ccRecipients forKey:@"_ccRecipients"];
  [v4 encodeObject:self->_bccRecipients forKey:@"_bccRecipients"];
  [v4 encodeObject:self->_receivingAddresses forKey:@"_receivingAddresses"];
}

- (id)_personAttributesForRecipients:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v3;
  v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v29)
  {
    v28 = *v37;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * i);
        v6 = objc_alloc_init(MEMORY[0x277D47638]);
        v7 = objc_alloc_init(MEMORY[0x277D47630]);
        v8 = [v5 fullName];
        v30 = v7;
        [v7 setFullName:v8];

        v9 = [v5 fullName];
        v31 = v6;
        [v6 setDisplayText:v9];

        v10 = MEMORY[0x277CBEB18];
        v11 = [v5 contactHandles];
        v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = [v5 contactHandles];
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v33;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v32 + 1) + 8 * j);
              if (![v18 type])
              {
                v19 = objc_alloc_init(MEMORY[0x277D472D8]);
                v20 = [v18 handle];
                [v19 setEmailAddress:v20];

                v21 = [v18 label];
                [v19 setLabel:v21];

                if (v19)
                {
                  [v12 addObject:v19];
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v15);
        }

        [v30 setEmails:v12];
        v22 = [v12 firstObject];
        v23 = [v22 emailAddress];
        [v31 setData:v23];

        [v31 setObject:v30];
        if (v31)
        {
          [v27 addObject:v31];
        }
      }

      v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v29);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_aceContextObjectValue
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D472E0]);
  [v3 setMessage:self->_messageBody];
  [v3 setSubject:self->_subject];
  type = self->_type;
  if (type > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = **(&unk_279C52568 + type);
  }

  [v3 setType:v5];
  [v3 setIdentifier:self->_messageIdentifier];
  [v3 setReceivingAddresses:self->_receivingAddresses];
  v6 = [(STEmailMessage *)self _personAttributesForRecipients:self->_toRecipients];
  [v3 setRecipientsTo:v6];

  v7 = [(STEmailMessage *)self _personAttributesForRecipients:self->_ccRecipients];
  [v3 setRecipientsCc:v7];

  v8 = [(STEmailMessage *)self _personAttributesForRecipients:self->_bccRecipients];
  [v3 setRecipientsBcc:v8];

  if (self->_sender)
  {
    v14[0] = self->_sender;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v10 = [(STEmailMessage *)self _personAttributesForRecipients:v9];
    v11 = [v10 firstObject];
    [v3 setFromEmail:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

@end