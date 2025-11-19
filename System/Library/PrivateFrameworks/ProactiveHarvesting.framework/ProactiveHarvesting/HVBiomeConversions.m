@interface HVBiomeConversions
+ (id)_bmNamedHandleFromCSPerson:(uint64_t)a1;
+ (id)_bmNamedHandlesFromCSPersons:(uint64_t)a1;
+ (id)_generateRandomVersionString;
+ (id)_messagesContentEventFromSearchableItem:(id)a3 error:(id *)a4;
+ (id)_safariPageViewFromSearchableItem:(void *)a3 error:;
+ (id)_thirdPartyAppContentEventFromSearchableItem:(uint64_t)a1 error:(void *)a2;
+ (id)biomeEventFromSearchableItem:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
@end

@implementation HVBiomeConversions

+ (id)_messagesContentEventFromSearchableItem:(id)a3 error:(id *)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __68__HVBiomeConversions__messagesContentEventFromSearchableItem_error___block_invoke;
  v101[3] = &unk_2789697F8;
  v7 = v6;
  v102 = v7;
  v8 = MEMORY[0x238381E60](v101);
  v9 = [v7 attributeSet];
  v10 = [v7 domainIdentifier];
  v11 = [v10 isEqualToString:@"attachmentDomain"];

  if (v11)
  {
    v12 = [v9 accountIdentifier];
    v13 = [v9 contentURL];
    v14 = [v13 lastPathComponent];

    if ([v14 length])
    {
      v15 = objc_alloc(MEMORY[0x277CF1928]);
      v16 = [v9 contentURL];
      v17 = [v16 absoluteString];
      v18 = [v15 initWithType:@"application/octet-stream" filename:v14 path:v17];
    }

    else
    {
      v18 = 0;
    }

    if (!v12)
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

      if (a4)
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
    v12 = [v7 domainIdentifier];
    v18 = 0;
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  v19 = [v9 authors];
  v20 = [v19 count];

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

    if (a4)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = 4;
LABEL_19:
      [v24 errorWithDomain:@"HVErrorDomain" code:v25 userInfo:0];
      *a4 = v27 = 0;
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
      v100 = [v9 valueForCustomKey:v22];
    }

    else
    {
      v100 = 0;
    }

    v29 = [v9 primaryRecipients];
    v30 = [(HVBiomeConversions *)a1 _bmNamedHandlesFromCSPersons:v29];

    v99 = v30;
    if ([v30 count])
    {
      v76 = objc_alloc(MEMORY[0x277CF19C8]);
      v97 = [v7 uniqueIdentifier];
      v96 = [v7 domainIdentifier];
      v95 = +[HVBiomeConversions _generateRandomVersionString];
      v80 = [v9 contentCreationDate];
      [v80 timeIntervalSinceReferenceDate];
      v32 = v31;
      v79 = [v9 authors];
      v78 = [v79 firstObject];
      v94 = [(HVBiomeConversions *)a1 _bmNamedHandleFromCSPerson:v78];
      v93 = [v9 attributeForKey:*MEMORY[0x277CC3330]];
      v92 = [v9 accountHandles];
      v91 = [v9 accountType];
      v90 = [v9 URL];
      v89 = [v7 protection];
      v88 = [v9 isNew];
      v87 = [v9 isTwoFactorCode];
      v84 = [v9 isFromMe];
      v77 = v84;
      if (!v84)
      {
        v33 = v22;
        v34 = [v9 attributeForKey:@"com_apple_mobilesms_fromMe"];
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

        v84 = v37;

        v22 = v33;
      }

      v81 = v22;
      v83 = [v9 isGroupThread];
      v75 = v83;
      if (!v83)
      {
        v40 = [v9 attributeForKey:@"com_apple_mobilesms_isGroupChat"];
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

        v83 = v43;
      }

      v44 = [v9 isLikelyJunk];
      v86 = [v9 messageRead];
      v72 = [v9 isPinned];
      v45 = [v9 attributeForKey:@"com_apple_mobilesms_businessChat"];
      v46 = NSClassFromString(&cfstr_Nsnumber.isa);
      v47 = v45;
      v82 = v8;
      v74 = v44;
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

      v70 = [v9 tapbackAssociatedMessageID];
      v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "messageTapbackType")}];
      v68 = [v9 messageType];
      v49 = [v9 messageService];
      v50 = v49;
      if (!v49)
      {
        v51 = [v9 attributeForKey:@"com_apple_mobilesms_service"];
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

      v85 = v12;
      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "messageEffectType")}];
      v66 = [v9 isMessageFromKnownSender];
      v55 = [v9 attributeForKey:@"com_apple_mobilesms_chatUniqueIdentifier"];
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

      v59 = v72;
      v73 = v58;

      v27 = [v76 initWithUniqueId:v97 domainId:v96 personaId:v95 absoluteTimestamp:v85 conversationId:v94 fromHandle:v30 toHandles:v32 suggestedNickname:v93 suggestedPhotoPath:v100 content:v98 accountIdentifier:&stru_28474C1D0 accountHandles:v92 accountType:v91 attachment:v18 URL:v90 contentProtection:v89 isNew:v88 isTwoFactorCode:v87 isFromMe:v84 isGroupThread:v83 isJunk:v74 isRead:v86 isPinned:v59 isBusinessChat:v71 tapbackAssociatedMessageID:v70 tapbackType:v69 messageType:v68 messagesService:v50 messageEffect:v67 isKnownSender:v66 conversationUUID:v73];
      if (!v49)
      {
      }

      v22 = v81;
      if (!v75)
      {
      }

      v8 = v82;
      v21 = v98;
      v12 = v85;
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
      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
        *a4 = v27 = 0;
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

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
      *a4 = v27 = 0;
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

+ (id)_bmNamedHandlesFromCSPersons:(uint64_t)a1
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

+ (id)_bmNamedHandleFromCSPerson:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x277CF19E8]);
  v4 = [v2 displayName];
  v5 = [v2 handleIdentifier];
  v6 = [v2 handles];
  v7 = [v6 firstObject];
  v8 = [v2 contactIdentifier];

  v9 = [v3 initWithName:v4 handleType:v5 handle:v7 contactIdentifier:v8];

  return v9;
}

+ (id)biomeEventFromSearchableItem:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v206 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:@"com.apple.mobilemail"])
  {
    v10 = v8;
    v11 = objc_opt_self();
    v12 = [v10 attributeSet];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v197 = __64__HVBiomeConversions__mailContentEventFromSearchableItem_error___block_invoke;
    v198 = &unk_2789697A8;
    v13 = v12;
    v199 = v13;
    v14 = v10;
    v200 = v14;
    v15 = MEMORY[0x238381E60](&buf);
    v16 = [v13 accountIdentifier];

    if (!v16)
    {
      v42 = hv_default_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v130 = v15[2](v15);
        *v201 = 138543362;
        *&v201[4] = v130;
        _os_log_error_impl(&dword_2321EC000, v42, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with no account identifier.", v201, 0xCu);
      }

      if (a5)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:5 userInfo:0];
        *a5 = v27 = 0;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_82;
    }

    v17 = [v13 emailHeaders];
    if (v17)
    {
      v18 = [v13 authors];
      v19 = [v18 count];

      if (v19)
      {
        v183 = v17;
        v186 = v15;
        v20 = objc_alloc(MEMORY[0x277CCAB00]);
        v21 = [MEMORY[0x277CCAB00] hv_headerKeyFunctions];
        v22 = [MEMORY[0x277CCAB00] hv_headerValueFunctions];
        v23 = [v20 initWithKeyPointerFunctions:v21 valuePointerFunctions:v22 capacity:{objc_msgSend(v17, "count")}];

        v24 = v23;
        [v23 hv_addEntriesFromHeadersDictionary:v17];
        v25 = [v13 mailMessageID];
        if (v25)
        {
          v175 = v25;
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

            if (a5)
            {
              [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:5 userInfo:0];
              *a5 = v27 = 0;
            }

            else
            {
              v27 = 0;
            }

            goto LABEL_80;
          }

          v175 = v77;
        }

        v78 = [v13 HTMLContentDataNoCopy];

        if (v78)
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
            v91 = [v89 firstObject];
            v171 = [v90 initWithString:v91];
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
          v170 = [v14 uniqueIdentifier];
          v169 = [v14 domainIdentifier];
          v168 = +[HVBiomeConversions _generateRandomVersionString];
          v150 = [v13 contentCreationDate];
          [v150 timeIntervalSinceReferenceDate];
          v98 = v97;
          v167 = [v13 accountIdentifier];
          v149 = [v13 authors];
          v148 = [v149 firstObject];
          v166 = [(HVBiomeConversions *)v11 _bmNamedHandleFromCSPerson:v148];
          v147 = [v13 primaryRecipients];
          v165 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:v147];
          v146 = [v13 additionalRecipients];
          v164 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:v146];
          v145 = [v13 hiddenAdditionalRecipients];
          v163 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:v145];
          v99 = [v13 subject];
          v100 = &stru_28474C1D0;
          v143 = v99;
          if (v99)
          {
            v100 = v99;
          }

          v141 = v100;
          v142 = [v13 isPartiallyDownloaded];
          v140 = [v142 BOOLValue] ^ 1;
          v162 = [v13 securityMethod];
          v161 = [v13 accountHandles];
          v160 = [v13 mailboxIdentifiers];
          v159 = [v13 accountType];
          v101 = v13;
          objc_opt_self();
          v102 = [v101 attachmentTypes];
          v103 = [v102 count];

          v104 = [v101 attachmentNames];
          v105 = [v104 count];

          v106 = [v101 attachmentPaths];
          v107 = [v106 count];

          v192 = v8;
          v179 = v9;
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
                v110 = [v101 attachmentTypes];
                v111 = [v110 objectAtIndexedSubscript:i];
                v112 = [v101 attachmentNames];
                v113 = [v112 objectAtIndexedSubscript:i];
                v114 = [v101 attachmentPaths];
                v115 = [v114 objectAtIndexedSubscript:i];
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

          v158 = [v14 protection];
          v156 = [v101 mailConversationID];
          v155 = [v101 mailDateReceived];
          v139 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v101, "mailCategories")}];
          v118 = [v101 isNew];
          v138 = [v101 isTwoFactorCode];
          v137 = [v101 isFromMe];
          v119 = [v101 isLikelyJunk];
          v120 = [v101 mailRead];
          v121 = [v101 mailVIP];
          v122 = [v101 mailFlagged];
          v92 = v174;
          LOBYTE(v136) = v140;
          v27 = [v144 initWithUniqueId:v170 domainId:v169 personaId:v168 absoluteTimestamp:v167 accountIdentifier:v175 messageIdentifier:v166 fromHandle:v98 toHandles:v165 ccHandles:v164 bccHandles:v163 headers:v183 subject:v141 htmlContent:v174 textContent:v182 isFullyDownloaded:v136 securityMethod:v162 accountHandles:v161 replyTo:v172 mailboxIdentifiers:v160 listId:v171 accountType:v159 attachments:v195 contentProtection:v158 conversationId:v156 dateReceived:v155 mailCategories:v139 isNew:v118 isTwoFactorCode:v138 isFromMe:v137 isJunk:v119 isRead:v120 isVIP:v121 isFlagged:v122];

          v17 = v183;
          v93 = v175;

          v14 = v154;
          v9 = v179;
          v94 = v182;
          v15 = v186;
          v8 = v192;
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

          if (a5)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
            *a5 = v27 = 0;
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

        if (a5)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
          *a5 = v27 = 0;
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

  if ([v9 isEqualToString:@"com.apple.MobileSMS"])
  {
    v26 = [a1 _messagesContentEventFromSearchableItem:v8 error:a5];
LABEL_9:
    v27 = v26;
    goto LABEL_83;
  }

  if ([v9 isEqualToString:@"com.apple.news"])
  {
    v28 = v8;
    objc_opt_self();
    v29 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v28];
    if (v29)
    {
      v30 = [v28 attributeSet];
      v180 = objc_alloc(MEMORY[0x277CF19F0]);
      v187 = [v28 uniqueIdentifier];
      [v28 domainIdentifier];
      v189 = v8;
      v31 = v193 = v28;
      v32 = +[HVBiomeConversions _generateRandomVersionString];
      v184 = [v30 contentCreationDate];
      [v184 timeIntervalSinceReferenceDate];
      v34 = v33;
      v35 = [v30 title];
      v36 = [v30 contentDescription];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = &stru_28474C1D0;
      }

      v39 = [v30 namedLocation];
      [v193 protection];
      v41 = v40 = v9;
      v27 = [v180 initWithUniqueId:v187 domainId:v31 personaId:v32 absoluteTimestamp:v35 title:v29 content:v38 summary:v34 publication:v39 contentProtection:v41];

      v9 = v40;
      v8 = v189;
      v28 = v193;
    }

    else
    {
      v74 = hv_default_log_handle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_2321EC000, v74, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _newsArticleViewFromSearchableItem: received news item with no content: %@", &buf, 0xCu);
      }

      if (a5)
      {
        v75 = MEMORY[0x277CCA9B8];
        *v201 = *MEMORY[0x277CCA450];
        *&buf = @"received news item with no content";
        v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v201 count:1];
        *a5 = [v75 errorWithDomain:@"HVErrorDomain" code:4 userInfo:v76];
      }

      v27 = 0;
    }

    goto LABEL_58;
  }

  if ([v9 isEqualToString:@"com.apple.mobilenotes"])
  {
    v28 = v8;
    objc_opt_self();
    v43 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v28];
    if (v43)
    {
      v44 = [v28 attributeSet];
      v45 = v43;
      v46 = objc_alloc(MEMORY[0x277CF1A00]);
      [v28 uniqueIdentifier];
      v47 = v177 = v9;
      [v28 domainIdentifier];
      v48 = v190 = v8;
      v49 = +[HVBiomeConversions _generateRandomVersionString];
      v50 = [v44 contentCreationDate];
      [v50 timeIntervalSinceReferenceDate];
      v52 = v51;
      v53 = [v44 title];
      v54 = [v28 protection];
      v55 = v46;
      v43 = v45;
      v27 = [v55 initWithUniqueId:v47 domainId:v48 personaId:v49 absoluteTimestamp:v53 title:v45 content:v54 contentProtection:v52];

      v8 = v190;
      v9 = v177;
    }

    else
    {
      v86 = hv_default_log_handle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_2321EC000, v86, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _notesContentEventFromSearchableItem: received notes item with no content: %@", &buf, 0xCu);
      }

      if (a5)
      {
        v87 = MEMORY[0x277CCA9B8];
        *v201 = *MEMORY[0x277CCA450];
        *&buf = @"received notes item with no content";
        v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v201 count:1];
        *a5 = [v87 errorWithDomain:@"HVErrorDomain" code:4 userInfo:v88];

        v43 = 0;
      }

      v27 = 0;
    }

    goto LABEL_58;
  }

  if ([v9 isEqualToString:@"com.apple.reminders"])
  {
    v59 = v8;
    objc_opt_self();
    v28 = [v59 attributeSet];
    v60 = objc_alloc(MEMORY[0x277CF1A70]);
    v194 = [v59 uniqueIdentifier];
    v61 = [v59 domainIdentifier];
    v62 = +[HVBiomeConversions _generateRandomVersionString];
    v188 = [v28 contentCreationDate];
    [v188 timeIntervalSinceReferenceDate];
    v64 = v63;
    v181 = [v28 title];
    v176 = [v28 comment];
    v185 = [v28 allDay];
    v173 = [v185 BOOLValue];
    [v28 completionDate];
    v65 = v178 = v9;
    [v65 timeIntervalSinceReferenceDate];
    v67 = v66;
    v68 = [v28 dueDate];
    [v68 timeIntervalSinceReferenceDate];
    v70 = v69;
    [v28 rankingHint];
    v71 = v191 = v8;
    v72 = [v71 intValue];
    v73 = [v59 protection];

    LODWORD(v135) = v72;
    v27 = [v60 initWithUniqueId:v194 domainId:v61 personaId:v62 absoluteTimestamp:v181 title:v176 notes:v173 isAllDay:v64 completionDateTimestamp:v67 dueDateTimestamp:v70 priority:v135 contentProtection:v73];

    v8 = v191;
    v9 = v178;

LABEL_58:
    goto LABEL_83;
  }

  if ([v9 isEqualToString:@"com.apple.mobilesafari"])
  {
    v26 = [(HVBiomeConversions *)a1 _safariPageViewFromSearchableItem:v8 error:a5];
    goto LABEL_9;
  }

  if ([v9 isEqualToString:@"com.apple.usernotificationsd"])
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
    if (![v9 hasPrefix:@"com.apple."])
    {
      v26 = [HVBiomeConversions _thirdPartyAppContentEventFromSearchableItem:a1 error:v8];
      goto LABEL_9;
    }

    v126 = hv_default_log_handle();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
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

+ (id)_safariPageViewFromSearchableItem:(void *)a3 error:
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  v5 = [v4 attributeSet];
  v6 = [v5 textContentDataSource];
  v7 = [v6 isEqualToString:@"ReaderText"];

  v8 = [v5 contentURL];
  v9 = [v8 absoluteString];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v4];
    if (v11)
    {
      v36 = v11;
      v12 = [v5 lastUsedDate];
      if (!v12)
      {
        v13 = hv_default_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2321EC000, v13, OS_LOG_TYPE_FAULT, "HVBiomeConversions: attributes.lastUsedDate nil on Safari event", buf, 2u);
        }

        v12 = [MEMORY[0x277CBEAA8] date];
      }

      v14 = objc_alloc(MEMORY[0x277CF1AA8]);
      v35 = [v4 uniqueIdentifier];
      v15 = [v4 domainIdentifier];
      v16 = +[HVBiomeConversions _generateRandomVersionString];
      [v12 timeIntervalSinceReferenceDate];
      v18 = v17;
      v19 = [v5 title];
      [v4 protection];
      v20 = v4;
      v22 = v21 = v5;
      v23 = v14;
      v24 = v36;
      v25 = [v23 initWithUniqueId:v35 domainId:v15 personaId:v16 absoluteTimestamp:v19 title:v36 content:v7 contentIsReaderText:v18 url:v8 contentProtection:v22];

      v5 = v21;
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

    if (a3)
    {
      v32 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"received item with no content";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v30 = [v32 errorWithDomain:@"HVErrorDomain" code:4 userInfo:v12];
      v24 = 0;
      goto LABEL_16;
    }

    v24 = 0;
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v27 = [v4 uniqueIdentifier];
    v24 = [v26 initWithFormat:@"ignoring CSSI %@ due to missing contentURL", v27];

    v28 = hv_default_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v24;
      _os_log_error_impl(&dword_2321EC000, v28, OS_LOG_TYPE_ERROR, "HVBiomeConversions: safariPageViewFromSearchableItem: %@", buf, 0xCu);
    }

    if (a3)
    {
      v29 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v40 = v24;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v30 = [v29 errorWithDomain:@"HVErrorDomain" code:7 userInfo:v12];
LABEL_16:
      v25 = 0;
      *a3 = v30;
LABEL_17:

      goto LABEL_20;
    }
  }

  v25 = 0;
LABEL_20:

  v33 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_thirdPartyAppContentEventFromSearchableItem:(uint64_t)a1 error:(void *)a2
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 attributeSet];
  v4 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v2];
  v5 = objc_alloc(MEMORY[0x277CF1B60]);
  v17 = [v2 uniqueIdentifier];
  v16 = [v2 domainIdentifier];
  v15 = [v2 bundleID];
  v6 = +[HVBiomeConversions _generateRandomVersionString];
  v18 = [v3 contentCreationDate];
  [v18 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [v3 title];
  v10 = [v3 contentDescription];
  v11 = [v3 comment];
  v12 = [v2 protection];

  v14 = [v5 initWithUniqueId:v17 domainId:v16 bundleId:v15 personaId:v6 absoluteTimestamp:v9 title:v10 desc:v8 comment:v11 content:v4 contentProtection:v12];

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