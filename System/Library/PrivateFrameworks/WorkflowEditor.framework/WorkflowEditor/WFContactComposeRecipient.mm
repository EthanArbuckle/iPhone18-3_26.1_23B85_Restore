@interface WFContactComposeRecipient
- (WFContactComposeRecipient)initWithWFContact:(id)a3;
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
    v4 = [(WFContactComposeRecipient *)self wfContact];
    v9 = 136315394;
    v10 = "[WFContactComposeRecipient wf_contactFieldEntry]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2743F0000, v3, OS_LOG_TYPE_INFO, "%s Returning underlying contact: %@", &v9, 0x16u);
  }

  v5 = objc_alloc(MEMORY[0x277CFC2C0]);
  v6 = [(WFContactComposeRecipient *)self wfContact];
  v7 = [v5 initWithContact:v6];

  return v7;
}

- (id)displayString
{
  v2 = [(WFContactComposeRecipient *)self wfContact];
  v3 = [v2 wfName];

  return v3;
}

- (WFContactComposeRecipient)initWithWFContact:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 propertyID];
    v8 = [v6 multivalueIndex];
    if (v7 == -1 || v8 == -1)
    {
      v16 = [v6 contact];
      v17 = [v16 isKeyAvailable:*MEMORY[0x277CBD098]];

      if (!v17)
      {
        v21 = [v6 contact];
        v22 = [v21 isKeyAvailable:*MEMORY[0x277CBCFC0]];

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
        v23 = [v6 emailAddresses];
        v24 = [v23 firstObject];
        v25 = [v24 value];
        v14 = [v25 address];

        v13 = 0;
        goto LABEL_26;
      }
    }

    else if (v7 != 3)
    {
      if (v7 == 13)
      {
        v26 = [v6 instantMessageAddresses];
        v27 = [v26 firstObject];
        v28 = [v27 value];
        v14 = [v28 username];

        v13 = 2;
        goto LABEL_26;
      }

      if (v7 != 4)
      {
LABEL_25:
        v14 = 0;
        v13 = 5;
LABEL_26:

        v15 = [v6 contact];
        if (v14)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v18 = [v6 phoneNumbers];
    v19 = [v18 firstObject];
    v20 = [v19 value];
    v14 = [v20 string];

    v13 = 1;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
LABEL_27:
    v14 = 0;
    v13 = 5;
    goto LABEL_28;
  }

  v9 = [v5 person];
  v10 = [v9 personHandle];

  v11 = [v10 type];
  v12 = 5;
  if (v11 == 2)
  {
    v12 = 1;
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v10 value];

  v15 = 0;
  if (!v14)
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
    v39 = v5;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_2743F0000, v30, OS_LOG_TYPE_INFO, "%s Initializing with contact %@; identified handle %@", buf, 0x20u);
  }

  v35.receiver = self;
  v35.super_class = WFContactComposeRecipient;
  v31 = [(WFContactComposeRecipient *)&v35 initWithContact:v15 address:v14 kind:v13];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_wfContact, a3);
    v33 = v32;
  }

  return v32;
}

@end