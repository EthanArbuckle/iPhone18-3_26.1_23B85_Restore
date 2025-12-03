@interface WFContactComposeRecipient
- (WFContactComposeRecipient)initWithWFContact:(id)contact;
- (id)displayString;
- (id)wf_contactFieldEntry;
@end

@implementation WFContactComposeRecipient

- (id)wf_contactFieldEntry
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = getWFWFContactComposeRecipientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    wfContact = [(WFContactComposeRecipient *)self wfContact];
    v9 = 136315394;
    v10 = "[WFContactComposeRecipient wf_contactFieldEntry]";
    v11 = 2112;
    v12 = wfContact;
    _os_log_impl(&dword_2743F0000, v3, OS_LOG_TYPE_INFO, "%s Returning underlying contact: %@", &v9, 0x16u);
  }

  v5 = objc_alloc(MEMORY[0x277CFC2C0]);
  wfContact2 = [(WFContactComposeRecipient *)self wfContact];
  v7 = [v5 initWithContact:wfContact2];

  return v7;
}

- (id)displayString
{
  wfContact = [(WFContactComposeRecipient *)self wfContact];
  wfName = [wfContact wfName];

  return wfName;
}

- (WFContactComposeRecipient)initWithWFContact:(id)contact
{
  v42 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = contactCopy;
    propertyID = [v6 propertyID];
    multivalueIndex = [v6 multivalueIndex];
    if (propertyID == -1 || multivalueIndex == -1)
    {
      contact = [v6 contact];
      v17 = [contact isKeyAvailable:*MEMORY[0x277CBD098]];

      if (!v17)
      {
        contact2 = [v6 contact];
        v22 = [contact2 isKeyAvailable:*MEMORY[0x277CBCFC0]];

        if (!v22)
        {
          v29 = getWFWFContactComposeRecipientLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v37 = "WFCNContactRepresentedHandle";
            _os_log_impl(&dword_2743F0000, v29, OS_LOG_TYPE_ERROR, "%s Invalid recipient contact found. Contact doesn't have required contact information and the proceess is not authorized to access contact database", buf, 0xCu);
          }

          goto LABEL_25;
        }

LABEL_20:
        emailAddresses = [v6 emailAddresses];
        firstObject = [emailAddresses firstObject];
        value = [firstObject value];
        address = [value address];

        v13 = 0;
        goto LABEL_26;
      }
    }

    else if (propertyID != 3)
    {
      if (propertyID == 13)
      {
        instantMessageAddresses = [v6 instantMessageAddresses];
        firstObject2 = [instantMessageAddresses firstObject];
        value2 = [firstObject2 value];
        address = [value2 username];

        v13 = 2;
        goto LABEL_26;
      }

      if (propertyID != 4)
      {
LABEL_25:
        address = 0;
        v13 = 5;
LABEL_26:

        contact3 = [v6 contact];
        if (address)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_20;
    }

    phoneNumbers = [v6 phoneNumbers];
    firstObject3 = [phoneNumbers firstObject];
    value3 = [firstObject3 value];
    address = [value3 string];

    v13 = 1;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    contact3 = 0;
LABEL_27:
    address = 0;
    v13 = 5;
    goto LABEL_28;
  }

  person = [contactCopy person];
  personHandle = [person personHandle];

  type = [personHandle type];
  v12 = 5;
  if (type == 2)
  {
    v12 = 1;
  }

  if (type == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  address = [personHandle value];

  contact3 = 0;
  if (!address)
  {
    goto LABEL_27;
  }

LABEL_28:
  v30 = getWFWFContactComposeRecipientLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v37 = "[WFContactComposeRecipient initWithWFContact:]";
    v38 = 2112;
    v39 = contactCopy;
    v40 = 2112;
    v41 = address;
    _os_log_impl(&dword_2743F0000, v30, OS_LOG_TYPE_INFO, "%s Initializing with contact %@; identified handle %@", buf, 0x20u);
  }

  v35.receiver = self;
  v35.super_class = WFContactComposeRecipient;
  v31 = [(WFContactComposeRecipient *)&v35 initWithContact:contact3 address:address kind:v13];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_wfContact, contact);
    v33 = v32;
  }

  return v32;
}

@end