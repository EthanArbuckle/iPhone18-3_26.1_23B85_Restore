@interface WFContactFieldEntry(CNComposeRecipient)
- (id)composeRecipient;
@end

@implementation WFContactFieldEntry(CNComposeRecipient)

- (id)composeRecipient
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 type];
  v3 = 0;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v13 = objc_alloc(MEMORY[0x277CFBCA0]);
      v5 = [v1 emailAddress];
      v6 = [v5 address];
      v7 = v13;
      v8 = v6;
      v9 = 0;
LABEL_11:
      v3 = [v7 initWithContact:0 address:v8 kind:v9];

      goto LABEL_12;
    }

    if (v2 != 3)
    {
      goto LABEL_13;
    }

    v10 = objc_alloc(MEMORY[0x277CFBCA0]);
    v5 = [v1 customHandle];
    v11 = [v10 initWithContact:0 address:v5 kind:2];
  }

  else
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_13;
      }

      v4 = objc_alloc(MEMORY[0x277CFBCA0]);
      v5 = [v1 phoneNumber];
      v6 = [v5 string];
      v7 = v4;
      v8 = v6;
      v9 = 1;
      goto LABEL_11;
    }

    v12 = [WFContactComposeRecipient alloc];
    v5 = [v1 contact];
    v11 = [(WFContactComposeRecipient *)v12 initWithWFContact:v5];
  }

  v3 = v11;
LABEL_12:

LABEL_13:
  v14 = getWFWFContactFieldEntryLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "[WFContactFieldEntry(CNComposeRecipient) composeRecipient]";
    v18 = 2112;
    v19 = v1;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_2743F0000, v14, OS_LOG_TYPE_INFO, "%s Converting from WFContactFieldEntry to CNComposeRecipient: %@ -> %@", &v16, 0x20u);
  }

  return v3;
}

@end