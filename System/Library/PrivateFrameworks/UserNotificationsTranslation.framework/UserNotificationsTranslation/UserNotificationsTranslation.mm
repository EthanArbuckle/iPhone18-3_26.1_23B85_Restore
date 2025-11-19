id UNContactFromBBContact(void *a1)
{
  v1 = a1;
  v2 = [v1 handleType];
  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (v2 == 2);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE2050]);
  v5 = [v1 handle];
  [v4 setHandle:v5];

  [v4 setHandleType:v3];
  v6 = [v1 displayName];
  [v4 setDisplayName:v6];

  [v4 setDisplayNameSuggested:{objc_msgSend(v1, "isDisplayNameSuggested")}];
  v7 = [v1 serviceName];
  [v4 setServiceName:v7];

  v8 = [v1 customIdentifier];
  [v4 setCustomIdentifier:v8];

  v9 = [v1 cnContactIdentifier];
  [v4 setCnContactIdentifier:v9];

  v10 = [v1 cnContactFullname];
  [v4 setCnContactFullname:v10];

  v11 = [v1 isCNContactIdentifierSuggested];
  [v4 setCnContactIdentifierSuggested:v11];

  return v4;
}

id UNCommunicationContextFromBBCommunicationContext(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CE2048]);
  v3 = [v1 recipients];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = UNContactFromBBContact(*(*(&v22 + 1) + 8 * i));
        [v4 addObject:{v10, v22}];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v11 = [v1 identifier];
  [v2 setIdentifier:v11];

  v12 = [v1 associatedObjectUri];
  [v2 setAssociatedObjectUri:v12];

  v13 = [v1 bundleIdentifier];
  [v2 setBundleIdentifier:v13];

  v14 = [v1 displayName];
  [v2 setDisplayName:v14];

  v15 = [v1 sender];

  if (v15)
  {
    v16 = [v1 sender];
    v17 = UNContactFromBBContact(v16);

    [v2 setSender:v17];
  }

  [v2 setRecipients:{v4, v22}];
  v18 = [v1 contentURL];
  [v2 setContentURL:v18];

  v19 = [v1 imageName];
  [v2 setImageName:v19];

  [v2 setSystemImage:{objc_msgSend(v1, "systemImage")}];
  [v2 setMentionsCurrentUser:{objc_msgSend(v1, "mentionsCurrentUser")}];
  [v2 setNotifyRecipientAnyway:{objc_msgSend(v1, "notifyRecipientAnyway")}];
  [v2 setReplyToCurrentUser:{objc_msgSend(v1, "isReplyToCurrentUser")}];
  [v2 setRecipientCount:{objc_msgSend(v1, "recipientCount")}];
  [v2 setCapabilities:{objc_msgSend(v1, "capabilities") & 1}];
  [v2 setBusinessCorrespondence:{objc_msgSend(v1, "isBusinessCorrespondence")}];

  v20 = *MEMORY[0x277D85DE8];

  return v2;
}