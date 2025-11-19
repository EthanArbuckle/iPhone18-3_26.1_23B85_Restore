@interface CNComposeRecipient(CNContactFieldEntry)
+ (WFContactComposeRecipient)wf_composeRecipientForContact:()CNContactFieldEntry;
- (id)wf_contactFieldEntry;
@end

@implementation CNComposeRecipient(CNContactFieldEntry)

- (id)wf_contactFieldEntry
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [a1 contact];

  if (v2)
  {
    v3 = [a1 contact];
    v4 = [a1 kind];
    v5 = [a1 valueIdentifier];
    v6 = v3;
    v7 = v5;
    if (v4 > 2)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = dword_2746607B0[v4];
    }

    v16 = CNContactPropertyKeyFromWFContactPropertyID();
    if ([v6 isKeyAvailable:v16])
    {
      v17 = [v6 valueForKey:v16];
      *v31 = MEMORY[0x277D85DD0];
      *&v31[8] = 3221225472;
      *&v31[16] = __WFContactForSpecificHandle_block_invoke;
      v32 = &unk_279EDBF80;
      v33 = v7;
      v18 = [v17 indexOfObjectPassingTest:v31];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0;
      }

      else
      {
        v12 = [MEMORY[0x277CFC278] contactWithCNContact:v6 propertyID:v8 multivalueIndex:{v18, *v31, *&v31[8], *&v31[16], v32}];
      }
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v19 = MEMORY[0x277CFC278];
      v20 = [a1 contact];
      v12 = [v19 contactWithCNContact:v20];
    }

    v21 = getWFWFContactFieldEntryLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v31 = 136315650;
      *&v31[4] = "[CNComposeRecipient(CNContactFieldEntry) wf_contactFieldEntry]";
      *&v31[12] = 2112;
      *&v31[14] = a1;
      *&v31[22] = 2112;
      v32 = v12;
      _os_log_impl(&dword_2743F0000, v21, OS_LOG_TYPE_INFO, "%s Converting from CNComposeRecipient to WFContact: %@ -> %@", v31, 0x20u);
    }

    v22 = [objc_alloc(MEMORY[0x277CFC2C0]) initWithContact:v12];
    goto LABEL_34;
  }

  v9 = [a1 kind];
  v10 = [a1 address];
  v11 = [MEMORY[0x277CCA900] controlCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  if (![v12 length])
  {
    v23 = getWFWFContactFieldEntryLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [a1 address];
      *v31 = 136315650;
      *&v31[4] = "[CNComposeRecipient(CNContactFieldEntry) wf_contactFieldEntry]";
      *&v31[12] = 2112;
      *&v31[14] = a1;
      *&v31[22] = 2112;
      v32 = v24;
      v25 = "%s Failed converting to WFContact from: %@ - reason: empty normalized address (source %@)";
      v26 = v23;
      v27 = OS_LOG_TYPE_INFO;
LABEL_32:
      _os_log_impl(&dword_2743F0000, v26, v27, v25, v31, 0x20u);
    }

LABEL_33:

    v22 = 0;
    goto LABEL_34;
  }

  switch(v9)
  {
    case 0:
      v28 = objc_alloc(MEMORY[0x277CFC2C0]);
      v14 = [MEMORY[0x277CFC3B0] addressWithEmailAddress:v12];
      v15 = [v28 initWithEmailAddress:v14];
      goto LABEL_25;
    case 2:
      v22 = [objc_alloc(MEMORY[0x277CFC2C0]) initWithCustomHandle:v12];
      goto LABEL_27;
    case 1:
      v13 = objc_alloc(MEMORY[0x277CFC2C0]);
      v14 = [MEMORY[0x277CFC4B0] phoneNumberWithPhoneNumberString:v12];
      v15 = [v13 initWithPhoneNumber:v14];
LABEL_25:
      v22 = v15;

      goto LABEL_27;
  }

  v22 = 0;
LABEL_27:
  v29 = getWFWFContactFieldEntryLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *v31 = 136315650;
    *&v31[4] = "[CNComposeRecipient(CNContactFieldEntry) wf_contactFieldEntry]";
    *&v31[12] = 2112;
    *&v31[14] = a1;
    *&v31[22] = 2112;
    v32 = v22;
    _os_log_impl(&dword_2743F0000, v29, OS_LOG_TYPE_INFO, "%s Converting from CNComposeRecipient to WFContactFieldEntry: %@ -> %@", v31, 0x20u);
  }

  if (!v22)
  {
    v23 = getWFWFContactFieldEntryLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [a1 address];
      *v31 = 136315650;
      *&v31[4] = "[CNComposeRecipient(CNContactFieldEntry) wf_contactFieldEntry]";
      *&v31[12] = 2112;
      *&v31[14] = a1;
      *&v31[22] = 2112;
      v32 = v24;
      v25 = "%s Failed converting to WFContact from: %@ - reason: no entry found for address: %@";
      v26 = v23;
      v27 = OS_LOG_TYPE_ERROR;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

LABEL_34:

  return v22;
}

+ (WFContactComposeRecipient)wf_composeRecipientForContact:()CNContactFieldEntry
{
  v3 = a3;
  v4 = [[WFContactComposeRecipient alloc] initWithWFContact:v3];

  return v4;
}

@end