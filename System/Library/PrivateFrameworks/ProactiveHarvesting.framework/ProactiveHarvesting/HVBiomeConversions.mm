@interface HVBiomeConversions
+ (id)_bmNamedHandleFromCSPerson:(uint64_t)person;
+ (id)_bmNamedHandlesFromCSPersons:(uint64_t)persons;
+ (id)_generateRandomVersionString;
+ (id)_messagesContentEventFromSearchableItem:(id)item error:(id *)error;
+ (id)_safariPageViewFromSearchableItem:(void *)item error:;
+ (id)_thirdPartyAppContentEventFromSearchableItem:(uint64_t)item error:(void *)error;
+ (id)biomeEventFromSearchableItem:(id)item bundleIdentifier:(id)identifier error:(id *)error;
@end

@implementation HVBiomeConversions

+ (id)_messagesContentEventFromSearchableItem:(id)item error:(id *)error
{
  v105 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __68__HVBiomeConversions__messagesContentEventFromSearchableItem_error___block_invoke;
  v101[3] = &unk_2789697F8;
  v7 = itemCopy;
  v102 = v7;
  v8 = MEMORY[0x238381E60](v101);
  attributeSet = [v7 attributeSet];
  domainIdentifier = [v7 domainIdentifier];
  v11 = [domainIdentifier isEqualToString:@"attachmentDomain"];

  if (v11)
  {
    accountIdentifier = [attributeSet accountIdentifier];
    contentURL = [attributeSet contentURL];
    lastPathComponent = [contentURL lastPathComponent];

    if ([lastPathComponent length])
    {
      v15 = objc_alloc(MEMORY[0x277CF1928]);
      contentURL2 = [attributeSet contentURL];
      absoluteString = [contentURL2 absoluteString];
      v18 = [v15 initWithType:@"application/octet-stream" filename:lastPathComponent path:absoluteString];
    }

    else
    {
      v18 = 0;
    }

    if (!accountIdentifier)
    {
LABEL_15:
      v26 = hv_default_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v39 = v8[2](v8);
        *buf = 138543362;
        v104 = v39;
        _os_log_error_impl(&dword_2321EC000, v26, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _messagesContentEventFromSearchableItem: ignoring CSSI %{public}@ with missing conversation identifier.", buf, 0xCu);
      }

      if (error)
      {
        v24 = MEMORY[0x277CCA9B8];
        v25 = 5;
        goto LABEL_19;
      }

LABEL_20:
      v27 = 0;
      goto LABEL_73;
    }
  }

  else
  {
    accountIdentifier = [v7 domainIdentifier];
    v18 = 0;
    if (!accountIdentifier)
    {
      goto LABEL_15;
    }
  }

  authors = [attributeSet authors];
  v20 = [authors count];

  if (!v20)
  {
    v23 = hv_default_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v62 = v8[2](v8);
      *buf = 138543362;
      v104 = v62;
      _os_log_error_impl(&dword_2321EC000, v23, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _messagesContentEventFromSearchableItem: ignoring CSSI %{public}@ with no authors.", buf, 0xCu);
    }

    if (error)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = 4;
LABEL_19:
      [v24 errorWithDomain:@"HVErrorDomain" code:v25 userInfo:0];
      *error = v27 = 0;
      goto LABEL_73;
    }

    goto LABEL_20;
  }

  v21 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v7];
  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilesms_suggested_contact_photo" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    v98 = v21;
    if (v22)
    {
      v100 = [attributeSet valueForCustomKey:v22];
    }

    else
    {
      v100 = 0;
    }

    primaryRecipients = [attributeSet primaryRecipients];
    v30 = [(HVBiomeConversions *)self _bmNamedHandlesFromCSPersons:primaryRecipients];

    v99 = v30;
    if ([v30 count])
    {
      v76 = objc_alloc(MEMORY[0x277CF19C8]);
      uniqueIdentifier = [v7 uniqueIdentifier];
      domainIdentifier2 = [v7 domainIdentifier];
      v95 = +[HVBiomeConversions _generateRandomVersionString];
      contentCreationDate = [attributeSet contentCreationDate];
      [contentCreationDate timeIntervalSinceReferenceDate];
      v32 = v31;
      authors2 = [attributeSet authors];
      firstObject = [authors2 firstObject];
      v94 = [(HVBiomeConversions *)self _bmNamedHandleFromCSPerson:firstObject];
      v93 = [attributeSet attributeForKey:*MEMORY[0x277CC3330]];
      accountHandles = [attributeSet accountHandles];
      accountType = [attributeSet accountType];
      v90 = [attributeSet URL];
      protection = [v7 protection];
      isNew = [attributeSet isNew];
      isTwoFactorCode = [attributeSet isTwoFactorCode];
      isFromMe = [attributeSet isFromMe];
      v77 = isFromMe;
      if (!isFromMe)
      {
        v33 = v22;
        v34 = [attributeSet attributeForKey:@"com_apple_mobilesms_fromMe"];
        v35 = NSClassFromString(&cfstr_Nsnumber.isa);
        v36 = v34;
        if (v35)
        {
          if (objc_opt_isKindOfClass())
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }
        }

        else
        {
          v37 = 0;
        }

        isFromMe = v37;

        v22 = v33;
      }

      v81 = v22;
      isGroupThread = [attributeSet isGroupThread];
      v75 = isGroupThread;
      if (!isGroupThread)
      {
        v40 = [attributeSet attributeForKey:@"com_apple_mobilesms_isGroupChat"];
        v41 = NSClassFromString(&cfstr_Nsnumber.isa);
        v42 = v40;
        if (v41)
        {
          if (objc_opt_isKindOfClass())
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = 0;
        }

        isGroupThread = v43;
      }

      isLikelyJunk = [attributeSet isLikelyJunk];
      messageRead = [attributeSet messageRead];
      isPinned = [attributeSet isPinned];
      v45 = [attributeSet attributeForKey:@"com_apple_mobilesms_businessChat"];
      v46 = NSClassFromString(&cfstr_Nsnumber.isa);
      v47 = v45;
      v82 = v8;
      v74 = isLikelyJunk;
      if (v46)
      {
        if (objc_opt_isKindOfClass())
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }
      }

      else
      {
        v48 = 0;
      }

      v71 = v48;

      tapbackAssociatedMessageID = [attributeSet tapbackAssociatedMessageID];
      v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(attributeSet, "messageTapbackType")}];
      messageType = [attributeSet messageType];
      messageService = [attributeSet messageService];
      v50 = messageService;
      if (!messageService)
      {
        v51 = [attributeSet attributeForKey:@"com_apple_mobilesms_service"];
        v52 = NSClassFromString(&cfstr_Nsstring.isa);
        v53 = v51;
        if (v52)
        {
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        v50 = v54;
      }

      v85 = accountIdentifier;
      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(attributeSet, "messageEffectType")}];
      isMessageFromKnownSender = [attributeSet isMessageFromKnownSender];
      v55 = [attributeSet attributeForKey:@"com_apple_mobilesms_chatUniqueIdentifier"];
      v56 = NSClassFromString(&cfstr_Nsstring.isa);
      v57 = v55;
      if (v56)
      {
        if (objc_opt_isKindOfClass())
        {
          v58 = v57;
        }

        else
        {
          v58 = 0;
        }
      }

      else
      {
        v58 = 0;
      }

      v59 = isPinned;
      v73 = v58;

      v27 = [v76 initWithUniqueId:uniqueIdentifier domainId:domainIdentifier2 personaId:v95 absoluteTimestamp:v85 conversationId:v94 fromHandle:v30 toHandles:v32 suggestedNickname:v93 suggestedPhotoPath:v100 content:v98 accountIdentifier:&stru_28474C1D0 accountHandles:accountHandles accountType:accountType attachment:v18 URL:v90 contentProtection:protection isNew:isNew isTwoFactorCode:isTwoFactorCode isFromMe:isFromMe isGroupThread:isGroupThread isJunk:v74 isRead:messageRead isPinned:v59 isBusinessChat:v71 tapbackAssociatedMessageID:tapbackAssociatedMessageID tapbackType:v69 messageType:messageType messagesService:v50 messageEffect:v67 isKnownSender:isMessageFromKnownSender conversationUUID:v73];
      if (!messageService)
      {
      }

      v22 = v81;
      if (!v75)
      {
      }

      v8 = v82;
      v21 = v98;
      accountIdentifier = v85;
      if (!v77)
      {
      }
    }

    else
    {
      v38 = hv_default_log_handle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v8[2](v8);
        v65 = v64 = v22;
        *buf = 138543362;
        v104 = v65;
        _os_log_error_impl(&dword_2321EC000, v38, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _messagesContentEventFromSearchableItem: ignoring CSSI %{public}@ missing recipients.", buf, 0xCu);

        v22 = v64;
      }

      v21 = v98;
      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v28 = hv_default_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v63 = v8[2](v8);
      *buf = 138543362;
      v104 = v63;
      _os_log_error_impl(&dword_2321EC000, v28, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _messagesContentEventFromSearchableItem: ignoring CSSI %{public}@ missing text content.", buf, 0xCu);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

LABEL_73:
  v60 = *MEMORY[0x277D85DE8];

  return v27;
}

id __68__HVBiomeConversions__messagesContentEventFromSearchableItem_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) bundleID];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [*(a1 + 32) domainIdentifier];
  v6 = [v2 initWithFormat:@"bid:%@, uid:%@, did:%@", v3, v4, v5];

  return v6;
}

+ (id)_bmNamedHandlesFromCSPersons:(uint64_t)persons
{
  v2 = a2;
  v3 = objc_opt_self();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HVBiomeConversions__bmNamedHandlesFromCSPersons___block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__CSPerson_8l;
  v6[4] = v3;
  v4 = [v2 _pas_mappedArrayWithTransform:v6];

  return v4;
}

+ (id)_generateRandomVersionString
{
  objc_opt_self();
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%08x", arc4random()];

  return v0;
}

+ (id)_bmNamedHandleFromCSPerson:(uint64_t)person
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x277CF19E8]);
  displayName = [v2 displayName];
  handleIdentifier = [v2 handleIdentifier];
  handles = [v2 handles];
  firstObject = [handles firstObject];
  contactIdentifier = [v2 contactIdentifier];

  v9 = [v3 initWithName:displayName handleType:handleIdentifier handle:firstObject contactIdentifier:contactIdentifier];

  return v9;
}

+ (id)biomeEventFromSearchableItem:(id)item bundleIdentifier:(id)identifier error:(id *)error
{
  v206 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.mobilemail"])
  {
    v10 = itemCopy;
    v11 = objc_opt_self();
    attributeSet = [v10 attributeSet];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v197 = __64__HVBiomeConversions__mailContentEventFromSearchableItem_error___block_invoke;
    v198 = &unk_2789697A8;
    v13 = attributeSet;
    v199 = v13;
    v14 = v10;
    v200 = v14;
    v15 = MEMORY[0x238381E60](&buf);
    accountIdentifier = [v13 accountIdentifier];

    if (!accountIdentifier)
    {
      v42 = hv_default_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v130 = v15[2](v15);
        *v201 = 138543362;
        *&v201[4] = v130;
        _os_log_error_impl(&dword_2321EC000, v42, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with no account identifier.", v201, 0xCu);
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:5 userInfo:0];
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_82;
    }

    emailHeaders = [v13 emailHeaders];
    if (emailHeaders)
    {
      authors = [v13 authors];
      v19 = [authors count];

      if (v19)
      {
        v183 = emailHeaders;
        v186 = v15;
        v20 = objc_alloc(MEMORY[0x277CCAB00]);
        hv_headerKeyFunctions = [MEMORY[0x277CCAB00] hv_headerKeyFunctions];
        hv_headerValueFunctions = [MEMORY[0x277CCAB00] hv_headerValueFunctions];
        v23 = [v20 initWithKeyPointerFunctions:hv_headerKeyFunctions valuePointerFunctions:hv_headerValueFunctions capacity:{objc_msgSend(emailHeaders, "count")}];

        v24 = v23;
        [v23 hv_addEntriesFromHeadersDictionary:emailHeaders];
        mailMessageID = [v13 mailMessageID];
        if (mailMessageID)
        {
          v175 = mailMessageID;
          v15 = v186;
        }

        else
        {
          v77 = [v23 hv_firstHeaderForKey:@"message-id"];
          v15 = v186;
          if (!v77)
          {
            v125 = hv_default_log_handle();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              v186[2](v186);
              v134 = v133 = v24;
              *v201 = 138543362;
              *&v201[4] = v134;
              _os_log_error_impl(&dword_2321EC000, v125, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with missing message identifier.", v201, 0xCu);

              v24 = v133;
            }

            if (error)
            {
              [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:5 userInfo:0];
              *error = v27 = 0;
            }

            else
            {
              v27 = 0;
            }

            goto LABEL_80;
          }

          v175 = v77;
        }

        hTMLContentDataNoCopy = [v13 HTMLContentDataNoCopy];

        if (hTMLContentDataNoCopy)
        {
          v79 = [HVSearchableItemHelper htmlContentDataNoCopyRetainingBackingBuffer:v14];
          v80 = 0;
        }

        else
        {
          v80 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v14];
          v79 = 0;
        }

        v174 = v79;
        v182 = v80;
        if (v79 | v80)
        {
          v81 = [v24 objectForKey:@"reply-to"];
          v152 = v81;
          if ([v81 count])
          {
            v82 = objc_alloc(MEMORY[0x277CF19E8]);
            [v81 firstObject];
            v84 = v83 = v24;
            v172 = [v82 initWithString:v84];

            v24 = v83;
          }

          else
          {
            v172 = 0;
          }

          v153 = v24;
          v89 = [v24 objectForKey:@"list-id"];
          v151 = v89;
          if ([v89 count])
          {
            v90 = objc_alloc(MEMORY[0x277CF19E8]);
            firstObject = [v89 firstObject];
            v171 = [v90 initWithString:firstObject];
          }

          else
          {
            v171 = 0;
          }

          v95 = hv_default_log_handle();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v96 = v15[2](v15);
            *v201 = 138543362;
            *&v201[4] = v96;
            _os_log_impl(&dword_2321EC000, v95, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _mailContentEventFromSearchableItem: CSSI %{public}@ will be queued by ProactiveHarvesting", v201, 0xCu);
          }

          v144 = objc_alloc(MEMORY[0x277CF19B8]);
          uniqueIdentifier = [v14 uniqueIdentifier];
          domainIdentifier = [v14 domainIdentifier];
          v168 = +[HVBiomeConversions _generateRandomVersionString];
          contentCreationDate = [v13 contentCreationDate];
          [contentCreationDate timeIntervalSinceReferenceDate];
          v98 = v97;
          accountIdentifier2 = [v13 accountIdentifier];
          authors2 = [v13 authors];
          firstObject2 = [authors2 firstObject];
          v166 = [(HVBiomeConversions *)v11 _bmNamedHandleFromCSPerson:firstObject2];
          primaryRecipients = [v13 primaryRecipients];
          v165 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:primaryRecipients];
          additionalRecipients = [v13 additionalRecipients];
          v164 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:additionalRecipients];
          hiddenAdditionalRecipients = [v13 hiddenAdditionalRecipients];
          v163 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:hiddenAdditionalRecipients];
          subject = [v13 subject];
          v100 = &stru_28474C1D0;
          v143 = subject;
          if (subject)
          {
            v100 = subject;
          }

          v141 = v100;
          isPartiallyDownloaded = [v13 isPartiallyDownloaded];
          v140 = [isPartiallyDownloaded BOOLValue] ^ 1;
          securityMethod = [v13 securityMethod];
          accountHandles = [v13 accountHandles];
          mailboxIdentifiers = [v13 mailboxIdentifiers];
          accountType = [v13 accountType];
          v101 = v13;
          objc_opt_self();
          attachmentTypes = [v101 attachmentTypes];
          v103 = [attachmentTypes count];

          attachmentNames = [v101 attachmentNames];
          v105 = [attachmentNames count];

          attachmentPaths = [v101 attachmentPaths];
          v107 = [attachmentPaths count];

          v192 = itemCopy;
          v179 = identifierCopy;
          v154 = v14;
          if (v103 == v105 && v103 == v107)
          {
            v195 = objc_opt_new();
            if (v103)
            {
              v157 = v13;
              for (i = 0; i != v103; ++i)
              {
                v109 = objc_alloc(MEMORY[0x277CF1928]);
                attachmentTypes2 = [v101 attachmentTypes];
                v111 = [attachmentTypes2 objectAtIndexedSubscript:i];
                attachmentNames2 = [v101 attachmentNames];
                v113 = [attachmentNames2 objectAtIndexedSubscript:i];
                attachmentPaths2 = [v101 attachmentPaths];
                v115 = [attachmentPaths2 objectAtIndexedSubscript:i];
                v116 = [v109 initWithType:v111 filename:v113 path:v115];
                [v195 addObject:v116];
              }

              v13 = v157;
              v14 = v154;
            }
          }

          else
          {
            v117 = hv_default_log_handle();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              *v201 = 134218496;
              *&v201[4] = v103;
              v202 = 2048;
              v203 = v105;
              v204 = 2048;
              v205 = v107;
              _os_log_error_impl(&dword_2321EC000, v117, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _bmAttachmentsFromSearchableItemAttributes: attachment info length mismatch: %tu types, %tu names, %tu paths", v201, 0x20u);
            }

            v195 = 0;
          }

          protection = [v14 protection];
          mailConversationID = [v101 mailConversationID];
          mailDateReceived = [v101 mailDateReceived];
          v139 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v101, "mailCategories")}];
          isNew = [v101 isNew];
          isTwoFactorCode = [v101 isTwoFactorCode];
          isFromMe = [v101 isFromMe];
          isLikelyJunk = [v101 isLikelyJunk];
          mailRead = [v101 mailRead];
          mailVIP = [v101 mailVIP];
          mailFlagged = [v101 mailFlagged];
          v92 = v174;
          LOBYTE(v136) = v140;
          v27 = [v144 initWithUniqueId:uniqueIdentifier domainId:domainIdentifier personaId:v168 absoluteTimestamp:accountIdentifier2 accountIdentifier:v175 messageIdentifier:v166 fromHandle:v98 toHandles:v165 ccHandles:v164 bccHandles:v163 headers:v183 subject:v141 htmlContent:v174 textContent:v182 isFullyDownloaded:v136 securityMethod:securityMethod accountHandles:accountHandles replyTo:v172 mailboxIdentifiers:mailboxIdentifiers listId:v171 accountType:accountType attachments:v195 contentProtection:protection conversationId:mailConversationID dateReceived:mailDateReceived mailCategories:v139 isNew:isNew isTwoFactorCode:isTwoFactorCode isFromMe:isFromMe isJunk:isLikelyJunk isRead:mailRead isVIP:mailVIP isFlagged:mailFlagged];

          emailHeaders = v183;
          v93 = v175;

          v14 = v154;
          identifierCopy = v179;
          v94 = v182;
          v15 = v186;
          itemCopy = v192;
          v24 = v153;
        }

        else
        {
          v85 = hv_default_log_handle();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v15[2](v15);
            v132 = v131 = v24;
            *v201 = 138543362;
            *&v201[4] = v132;
            _os_log_error_impl(&dword_2321EC000, v85, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ missing html and text content.", v201, 0xCu);

            v24 = v131;
          }

          if (error)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
            *error = v27 = 0;
          }

          else
          {
            v27 = 0;
          }

          v92 = v174;
          v93 = v175;
          v94 = v182;
        }

LABEL_80:
LABEL_81:

LABEL_82:
        goto LABEL_83;
      }

      v56 = hv_default_log_handle();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
          *error = v27 = 0;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_81;
      }

      v57 = v15[2](v15);
      *v201 = 138543362;
      *&v201[4] = v57;
      v58 = "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with no authors.";
    }

    else
    {
      v56 = hv_default_log_handle();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v57 = v15[2](v15);
      *v201 = 138543362;
      *&v201[4] = v57;
      v58 = "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with no email headers.";
    }

    _os_log_error_impl(&dword_2321EC000, v56, OS_LOG_TYPE_ERROR, v58, v201, 0xCu);

    goto LABEL_26;
  }

  if ([identifierCopy isEqualToString:@"com.apple.MobileSMS"])
  {
    v26 = [self _messagesContentEventFromSearchableItem:itemCopy error:error];
LABEL_9:
    v27 = v26;
    goto LABEL_83;
  }

  if ([identifierCopy isEqualToString:@"com.apple.news"])
  {
    attributeSet4 = itemCopy;
    objc_opt_self();
    v29 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:attributeSet4];
    if (v29)
    {
      attributeSet2 = [attributeSet4 attributeSet];
      v180 = objc_alloc(MEMORY[0x277CF19F0]);
      uniqueIdentifier2 = [attributeSet4 uniqueIdentifier];
      [attributeSet4 domainIdentifier];
      v189 = itemCopy;
      v31 = v193 = attributeSet4;
      v32 = +[HVBiomeConversions _generateRandomVersionString];
      contentCreationDate2 = [attributeSet2 contentCreationDate];
      [contentCreationDate2 timeIntervalSinceReferenceDate];
      v34 = v33;
      title = [attributeSet2 title];
      contentDescription = [attributeSet2 contentDescription];
      v37 = contentDescription;
      if (contentDescription)
      {
        v38 = contentDescription;
      }

      else
      {
        v38 = &stru_28474C1D0;
      }

      namedLocation = [attributeSet2 namedLocation];
      [v193 protection];
      v41 = v40 = identifierCopy;
      v27 = [v180 initWithUniqueId:uniqueIdentifier2 domainId:v31 personaId:v32 absoluteTimestamp:title title:v29 content:v38 summary:v34 publication:namedLocation contentProtection:v41];

      identifierCopy = v40;
      itemCopy = v189;
      attributeSet4 = v193;
    }

    else
    {
      v74 = hv_default_log_handle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = attributeSet4;
        _os_log_impl(&dword_2321EC000, v74, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _newsArticleViewFromSearchableItem: received news item with no content: %@", &buf, 0xCu);
      }

      if (error)
      {
        v75 = MEMORY[0x277CCA9B8];
        *v201 = *MEMORY[0x277CCA450];
        *&buf = @"received news item with no content";
        v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v201 count:1];
        *error = [v75 errorWithDomain:@"HVErrorDomain" code:4 userInfo:v76];
      }

      v27 = 0;
    }

    goto LABEL_58;
  }

  if ([identifierCopy isEqualToString:@"com.apple.mobilenotes"])
  {
    attributeSet4 = itemCopy;
    objc_opt_self();
    v43 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:attributeSet4];
    if (v43)
    {
      attributeSet3 = [attributeSet4 attributeSet];
      v45 = v43;
      v46 = objc_alloc(MEMORY[0x277CF1A00]);
      [attributeSet4 uniqueIdentifier];
      v47 = v177 = identifierCopy;
      [attributeSet4 domainIdentifier];
      v48 = v190 = itemCopy;
      v49 = +[HVBiomeConversions _generateRandomVersionString];
      contentCreationDate3 = [attributeSet3 contentCreationDate];
      [contentCreationDate3 timeIntervalSinceReferenceDate];
      v52 = v51;
      title2 = [attributeSet3 title];
      protection2 = [attributeSet4 protection];
      v55 = v46;
      v43 = v45;
      v27 = [v55 initWithUniqueId:v47 domainId:v48 personaId:v49 absoluteTimestamp:title2 title:v45 content:protection2 contentProtection:v52];

      itemCopy = v190;
      identifierCopy = v177;
    }

    else
    {
      v86 = hv_default_log_handle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = attributeSet4;
        _os_log_impl(&dword_2321EC000, v86, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _notesContentEventFromSearchableItem: received notes item with no content: %@", &buf, 0xCu);
      }

      if (error)
      {
        v87 = MEMORY[0x277CCA9B8];
        *v201 = *MEMORY[0x277CCA450];
        *&buf = @"received notes item with no content";
        v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v201 count:1];
        *error = [v87 errorWithDomain:@"HVErrorDomain" code:4 userInfo:v88];

        v43 = 0;
      }

      v27 = 0;
    }

    goto LABEL_58;
  }

  if ([identifierCopy isEqualToString:@"com.apple.reminders"])
  {
    v59 = itemCopy;
    objc_opt_self();
    attributeSet4 = [v59 attributeSet];
    v60 = objc_alloc(MEMORY[0x277CF1A70]);
    uniqueIdentifier3 = [v59 uniqueIdentifier];
    domainIdentifier2 = [v59 domainIdentifier];
    v62 = +[HVBiomeConversions _generateRandomVersionString];
    contentCreationDate4 = [attributeSet4 contentCreationDate];
    [contentCreationDate4 timeIntervalSinceReferenceDate];
    v64 = v63;
    title3 = [attributeSet4 title];
    comment = [attributeSet4 comment];
    allDay = [attributeSet4 allDay];
    bOOLValue = [allDay BOOLValue];
    [attributeSet4 completionDate];
    v65 = v178 = identifierCopy;
    [v65 timeIntervalSinceReferenceDate];
    v67 = v66;
    dueDate = [attributeSet4 dueDate];
    [dueDate timeIntervalSinceReferenceDate];
    v70 = v69;
    [attributeSet4 rankingHint];
    v71 = v191 = itemCopy;
    intValue = [v71 intValue];
    protection3 = [v59 protection];

    LODWORD(v135) = intValue;
    v27 = [v60 initWithUniqueId:uniqueIdentifier3 domainId:domainIdentifier2 personaId:v62 absoluteTimestamp:title3 title:comment notes:bOOLValue isAllDay:v64 completionDateTimestamp:v67 dueDateTimestamp:v70 priority:v135 contentProtection:protection3];

    itemCopy = v191;
    identifierCopy = v178;

LABEL_58:
    goto LABEL_83;
  }

  if ([identifierCopy isEqualToString:@"com.apple.mobilesafari"])
  {
    v26 = [(HVBiomeConversions *)self _safariPageViewFromSearchableItem:itemCopy error:error];
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"com.apple.usernotificationsd"])
  {
    v126 = hv_default_log_handle();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v127 = "HVBiomeConversions: biomeEventFromSearchableItem: harvesting notifications is no longer supported";
      v128 = v126;
      v129 = 2;
LABEL_96:
      _os_log_impl(&dword_2321EC000, v128, OS_LOG_TYPE_INFO, v127, &buf, v129);
    }
  }

  else
  {
    if (![identifierCopy hasPrefix:@"com.apple."])
    {
      v26 = [HVBiomeConversions _thirdPartyAppContentEventFromSearchableItem:self error:itemCopy];
      goto LABEL_9;
    }

    v126 = hv_default_log_handle();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      v127 = "HVBiomeConversions: biomeEventFromSearchableItem: ignoring CSSI from unsupported first party app: %@.";
      v128 = v126;
      v129 = 12;
      goto LABEL_96;
    }
  }

  v27 = 0;
LABEL_83:

  v123 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_safariPageViewFromSearchableItem:(void *)item error:
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  attributeSet = [v4 attributeSet];
  textContentDataSource = [attributeSet textContentDataSource];
  v7 = [textContentDataSource isEqualToString:@"ReaderText"];

  contentURL = [attributeSet contentURL];
  absoluteString = [contentURL absoluteString];
  v10 = [absoluteString length];

  if (v10)
  {
    v11 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v4];
    if (v11)
    {
      v36 = v11;
      lastUsedDate = [attributeSet lastUsedDate];
      if (!lastUsedDate)
      {
        v13 = hv_default_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2321EC000, v13, OS_LOG_TYPE_FAULT, "HVBiomeConversions: attributes.lastUsedDate nil on Safari event", buf, 2u);
        }

        lastUsedDate = [MEMORY[0x277CBEAA8] date];
      }

      v14 = objc_alloc(MEMORY[0x277CF1AA8]);
      uniqueIdentifier = [v4 uniqueIdentifier];
      domainIdentifier = [v4 domainIdentifier];
      v16 = +[HVBiomeConversions _generateRandomVersionString];
      [lastUsedDate timeIntervalSinceReferenceDate];
      v18 = v17;
      title = [attributeSet title];
      [v4 protection];
      v20 = v4;
      v22 = v21 = attributeSet;
      v23 = v14;
      v24 = v36;
      v25 = [v23 initWithUniqueId:uniqueIdentifier domainId:domainIdentifier personaId:v16 absoluteTimestamp:title title:v36 content:v7 contentIsReaderText:v18 url:contentURL contentProtection:v22];

      attributeSet = v21;
      v4 = v20;

      goto LABEL_17;
    }

    v31 = hv_default_log_handle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v4;
      _os_log_impl(&dword_2321EC000, v31, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _safariPageViewFromSearchableItem: received item with no content: %@", buf, 0xCu);
    }

    if (item)
    {
      v32 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"received item with no content";
      lastUsedDate = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v30 = [v32 errorWithDomain:@"HVErrorDomain" code:4 userInfo:lastUsedDate];
      v24 = 0;
      goto LABEL_16;
    }

    v24 = 0;
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    uniqueIdentifier2 = [v4 uniqueIdentifier];
    v24 = [v26 initWithFormat:@"ignoring CSSI %@ due to missing contentURL", uniqueIdentifier2];

    v28 = hv_default_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v24;
      _os_log_error_impl(&dword_2321EC000, v28, OS_LOG_TYPE_ERROR, "HVBiomeConversions: safariPageViewFromSearchableItem: %@", buf, 0xCu);
    }

    if (item)
    {
      v29 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v40 = v24;
      lastUsedDate = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v30 = [v29 errorWithDomain:@"HVErrorDomain" code:7 userInfo:lastUsedDate];
LABEL_16:
      v25 = 0;
      *item = v30;
LABEL_17:

      goto LABEL_20;
    }
  }

  v25 = 0;
LABEL_20:

  v33 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_thirdPartyAppContentEventFromSearchableItem:(uint64_t)item error:(void *)error
{
  errorCopy = error;
  objc_opt_self();
  attributeSet = [errorCopy attributeSet];
  v4 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:errorCopy];
  v5 = objc_alloc(MEMORY[0x277CF1B60]);
  uniqueIdentifier = [errorCopy uniqueIdentifier];
  domainIdentifier = [errorCopy domainIdentifier];
  bundleID = [errorCopy bundleID];
  v6 = +[HVBiomeConversions _generateRandomVersionString];
  contentCreationDate = [attributeSet contentCreationDate];
  [contentCreationDate timeIntervalSinceReferenceDate];
  v8 = v7;
  title = [attributeSet title];
  contentDescription = [attributeSet contentDescription];
  comment = [attributeSet comment];
  protection = [errorCopy protection];

  v14 = [v5 initWithUniqueId:uniqueIdentifier domainId:domainIdentifier bundleId:bundleID personaId:v6 absoluteTimestamp:title title:contentDescription desc:v8 comment:comment content:v4 contentProtection:protection];

  return v14;
}

id __64__HVBiomeConversions__mailContentEventFromSearchableItem_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 32) emailHeaders];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        if (![@"message-id" caseInsensitiveCompare:v7])
        {
          v9 = [*(a1 + 32) emailHeaders];
          v10 = [v9 objectForKeyedSubscript:v7];
          v8 = [v10 _pas_componentsJoinedByString:{@", "}];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [*(a1 + 40) bundleID];
  v13 = [*(a1 + 40) uniqueIdentifier];
  v14 = [*(a1 + 40) domainIdentifier];
  v15 = v14;
  v16 = @"UNKNOWN!";
  if (v8)
  {
    v16 = v8;
  }

  v17 = [v11 initWithFormat:@"bid:%@, uid:%@, did:%@, mid:%@", v12, v13, v14, v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end