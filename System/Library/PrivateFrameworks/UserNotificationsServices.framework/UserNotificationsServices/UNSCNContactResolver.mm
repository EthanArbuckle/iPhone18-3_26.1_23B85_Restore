@interface UNSCNContactResolver
- (UNSCNContactResolver)init;
- (id)_matchForContact:(id)a3 matchingLabel:(id)a4 matchType:(unint64_t)a5;
- (id)_matchThatMatchesEmailAddress:(id)a3 forContact:(id)a4;
- (id)_matchThatMatchesSocialProfile:(id)a3 bundleIdentifier:(id)a4 forContact:(id)a5;
- (id)bestMatchForEmailAddress:(id)a3;
- (id)bestMatchForPhoneNumber:(id)a3;
- (id)bestMatchForPredicate:(id)a3 contactToMatch:(id)a4;
- (id)bestMatchForSocialProfile:(id)a3 bundleIdentifier:(id)a4;
- (id)bestMatchForUserIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (id)bestMatchForUsername:(id)a3 bundleIdentifier:(id)a4;
- (id)confirm:(BOOL)a3 match:(id)a4;
- (id)contactForIdentifier:(id)a3;
- (id)matchThatMatchesPhoneNumber:(id)a3 forContact:(id)a4;
- (id)resultForContactIdentifier:(id)a3;
- (id)resultForContactIdentifier:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 userIdentifier:(id)a6 username:(id)a7 bundleIdentifier:(id)a8;
@end

@implementation UNSCNContactResolver

- (UNSCNContactResolver)init
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = UNSCNContactResolver;
  v2 = [(UNSCNContactResolver *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v4 = *MEMORY[0x277CBD098];
    v14[0] = v3;
    v14[1] = v4;
    v5 = *MEMORY[0x277CBD138];
    v14[2] = *MEMORY[0x277CBCFC0];
    v14[3] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
    contactStoreSearchKeys = v2->_contactStoreSearchKeys;
    v2->_contactStoreSearchKeys = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v8 setIncludeSuggestedContacts:1];
    [v8 setIncludeAcceptedIntroductions:1];
    v9 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v8];
    contactStore = v2->_contactStore;
    v2->_contactStore = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)resultForContactIdentifier:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 userIdentifier:(id)a6 username:(id)a7 bundleIdentifier:(id)a8
{
  v68 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v60 = a6;
  v17 = a7;
  v61 = a8;
  v57 = [MEMORY[0x277CBEAA8] now];
  v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v58 = v14;
  if ([v14 length])
  {
    v19 = [(UNSCNContactResolver *)self resultForContactIdentifier:v14];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tcontactIdentifier - %@: %@", v14, v19];
    [v18 appendString:v20];
  }

  else
  {
    v19 = 0;
  }

  v21 = v15;
  v59 = v17;
  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(v16, "length"))
  {
    v22 = v16;
    v23 = [(UNSCNContactResolver *)self bestMatchForPhoneNumber:v16];
    v24 = [v23 isStrongerMatchThanOtherMatch:v19];
    if (v24)
    {
      v25 = v23;

      v19 = v25;
    }

    v26 = MEMORY[0x277CCACA8];
    v16 = v22;
    v27 = [v22 un_logDigest];
    v28 = [v26 stringWithFormat:@"\tphoneNumber - %@: %@ preferResult:%d", v27, v23, v24];
    [v18 appendString:v28];

    v21 = v15;
    v17 = v59;
  }

  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(v21, "length"))
  {
    v29 = v16;
    v30 = [(UNSCNContactResolver *)self bestMatchForEmailAddress:v21];
    v31 = [v30 isStrongerMatchThanOtherMatch:v19];
    if (v31)
    {
      v32 = v30;

      v19 = v32;
    }

    v33 = MEMORY[0x277CCACA8];
    v34 = [v21 un_logDigest];
    v35 = [v33 stringWithFormat:@"\temailAddress - %@: %@ preferResult:%d", v34, v30, v31];
    [v18 appendString:v35];

    v21 = v15;
    v16 = v29;
    v17 = v59;
  }

  if (([v19 isStrongestMatch] & 1) == 0)
  {
    if ([v60 length])
    {
      v36 = v16;
      v37 = [(UNSCNContactResolver *)self bestMatchForUserIdentifier:v60 bundleIdentifier:v61];
      v38 = [v37 isStrongerMatchThanOtherMatch:v19];
      if (v38)
      {
        v39 = v37;

        v19 = v39;
      }

      v40 = MEMORY[0x277CCACA8];
      v41 = [v60 un_logDigest];
      v42 = [v40 stringWithFormat:@"\tuserIdentifier - %@: %@ preferResult:%d", v41, v37, v38];
      [v18 appendString:v42];

      v21 = v15;
      v16 = v36;
    }

    v17 = v59;
  }

  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(v17, "length"))
  {
    v43 = v16;
    v44 = [(UNSCNContactResolver *)self bestMatchForUsername:v17 bundleIdentifier:v61];
    v45 = [v44 isStrongerMatchThanOtherMatch:v19];
    if (v45)
    {
      v46 = v44;

      v19 = v46;
    }

    v47 = MEMORY[0x277CCACA8];
    v48 = [v17 un_logDigest];
    v49 = [v47 stringWithFormat:@"\tusername - %@: %@ preferResult:%d", v48, v44, v45];
    [v18 appendString:v49];

    v17 = v59;
    v21 = v15;
    v16 = v43;
  }

  if ([v19 isSuggestedContact])
  {
    v50 = UNSLogCommunicationNotifications();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270B08000, v50, OS_LOG_TYPE_DEFAULT, "_UNCNContactResolver rejecting pure suggested contact. Not yet supported.", buf, 2u);
    }

    v19 = 0;
  }

  v51 = [MEMORY[0x277CBEAA8] now];
  [v51 timeIntervalSinceDate:v57];
  v53 = v52;
  v54 = UNSLogCommunicationNotifications();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349570;
    v63 = v53;
    v64 = 2112;
    v65 = v19;
    v66 = 2112;
    v67 = v18;
    _os_log_impl(&dword_270B08000, v54, OS_LOG_TYPE_DEFAULT, "_UNCNContactResolver found results in %{public}fms:\n\tFinal match:%@\n%@", buf, 0x20u);
  }

  v55 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)confirm:(BOOL)a3 match:(id)a4
{
  v4 = a3;
  v103 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = @"reject";
  if (v4)
  {
    v7 = @"confirm";
  }

  v8 = v7;
  v9 = [v6 cnContactIdentifier];
  v10 = [(UNSCNContactResolver *)self contactForIdentifier:v9];

  if (v10)
  {
    v11 = [v6 identifierOfMatchLabel];
    v12 = [v6 matchType];
    v13 = [v6 isSuggestedContact];
    if (v13)
    {
      obj = v11;
      v76 = v10;
      v14 = v10;
      v15 = v14;
      v16 = self;
      if (v4)
      {
        v17 = [v14 copyWithCuratingAllSuggestions];
        v18 = [v17 mutableCopy];

        v19 = objc_alloc_init(MEMORY[0x277CBDBB8]);
LABEL_7:
        v20 = v13;
        [v19 confirmSuggestion:v15];
LABEL_33:
        contactStore = v16->_contactStore;
        v79 = 0;
        [(CNContactStore *)contactStore executeSaveRequest:v19 error:&v79];
        v30 = v79;
        v21 = 0;
        if (v30 || !v18)
        {
          goto LABEL_45;
        }

        v32 = objc_alloc_init(MEMORY[0x277CBDBA0]);
        v33 = v32;
        if (v20)
        {
          [v32 addContact:v18 toContainerWithIdentifier:0];
        }

        else
        {
          [v32 updateContact:v18];
        }

        v73 = v8;
        v34 = v16->_contactStore;
        v78 = 0;
        [(CNContactStore *)v34 executeSaveRequest:v33 error:&v78];
        v30 = v78;
        if (v30)
        {
          v35 = UNSLogCommunicationNotifications();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v70 = [v30 localizedDescription];
            *buf = 136446978;
            v93 = "[UNSCNContactResolver confirm:match:]";
            v94 = 2114;
            v95 = v73;
            v96 = 2114;
            v97 = v70;
            v98 = 2114;
            v99 = v6;
            _os_log_error_impl(&dword_270B08000, v35, OS_LOG_TYPE_ERROR, "%{public}s: Failed to %{public}@ match. Save request error %{public}@. Match:%{public}@", buf, 0x2Au);

            v8 = v73;
            v21 = 0;
            goto LABEL_44;
          }

          v21 = 0;
        }

        else
        {
          v36 = [v18 identifier];
          v37 = [(UNSCNContactResolver *)v16 _fullnameForCNContact:v18];
          v21 = [UNSCNContactResolverResult resultWithCNContactIdentifier:v36 cnContactFullname:v37 suggestedContact:0 matchType:0 matchTypeSuggested:0 identifierOfMatchLabel:0];

          v35 = UNSLogCommunicationNotifications();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v93 = "[UNSCNContactResolver confirm:match:]";
            v94 = 2114;
            v8 = v73;
            v95 = v73;
            v96 = 2114;
            v97 = v21;
            _os_log_impl(&dword_270B08000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: Succeeded to %{public}@ match. New match or nil:%{public}@", buf, 0x20u);
LABEL_44:

LABEL_45:
            v11 = obj;
            v10 = v76;
LABEL_46:

            goto LABEL_47;
          }
        }

        v8 = v73;
        goto LABEL_44;
      }

      v19 = objc_alloc_init(MEMORY[0x277CBDBB8]);
      v18 = 0;
LABEL_32:
      [v19 rejectSuggestion:v15];
      v20 = 0;
      goto LABEL_33;
    }

    if ([v6 isMatchTypeSuggested] && -[NSObject length](v11, "length"))
    {
      v18 = 0;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          obja = [v10 phoneNumbers];
          v48 = [obja countByEnumeratingWithState:&v80 objects:v100 count:16];
          if (v48)
          {
            v49 = v48;
            v77 = v10;
            v72 = v8;
            v50 = *v81;
LABEL_63:
            v51 = 0;
            while (1)
            {
              if (*v81 != v50)
              {
                objc_enumerationMutation(obja);
              }

              v52 = *(*(&v80 + 1) + 8 * v51);
              v53 = [v52 identifier];
              v54 = [v53 isEqualToString:v11];

              if (v54)
              {
                break;
              }

              if (v49 == ++v51)
              {
                v49 = [obja countByEnumeratingWithState:&v80 objects:v100 count:16];
                if (v49)
                {
                  goto LABEL_63;
                }

LABEL_69:
                v15 = 0;
                goto LABEL_78;
              }
            }

            v15 = v52;
            if (v4)
            {
              v10 = v77;
              v18 = [v77 mutableCopy];
              v66 = [v77 phoneNumbers];
              v67 = [v66 mutableCopy];

              v68 = objc_alloc(MEMORY[0x277CBDB20]);
              v69 = [v15 value];
              v59 = [v68 initWithLabel:0 value:v69];

              v60 = v67;
              [v67 addObject:v59];
              [v18 setPhoneNumbers:v67];
              goto LABEL_77;
            }

LABEL_78:
            v18 = 0;
            v8 = v72;
            v10 = v77;
            goto LABEL_79;
          }
        }

        else
        {
          if (v12 != 3)
          {
            goto LABEL_28;
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          obja = [v10 socialProfiles];
          v41 = [obja countByEnumeratingWithState:&v88 objects:v102 count:16];
          if (v41)
          {
            v42 = v41;
            v77 = v10;
            v72 = v8;
            v43 = *v89;
LABEL_52:
            v44 = 0;
            while (1)
            {
              if (*v89 != v43)
              {
                objc_enumerationMutation(obja);
              }

              v45 = *(*(&v88 + 1) + 8 * v44);
              v46 = [v45 identifier];
              v47 = [v46 isEqualToString:v11];

              if (v47)
              {
                break;
              }

              if (v42 == ++v44)
              {
                v42 = [obja countByEnumeratingWithState:&v88 objects:v102 count:16];
                if (v42)
                {
                  goto LABEL_52;
                }

                goto LABEL_69;
              }
            }

            v15 = v45;
            if (!v4)
            {
              goto LABEL_78;
            }

            v10 = v77;
            v18 = [v77 mutableCopy];
            v61 = [v77 socialProfiles];
            v71 = [v61 mutableCopy];

            v62 = [v15 value];
            v59 = [v62 service];

            v63 = objc_alloc(MEMORY[0x277CBDB20]);
            v64 = [v15 value];
            v65 = [v63 initWithLabel:v59 value:v64];

            v60 = v71;
            [v71 addObject:v65];
            [v18 setSocialProfiles:v71];

            goto LABEL_77;
          }
        }

LABEL_70:
        v15 = 0;
        v18 = 0;
        goto LABEL_80;
      }

      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_28;
        }

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        obja = [v10 emailAddresses];
        v22 = [obja countByEnumeratingWithState:&v84 objects:v101 count:16];
        if (v22)
        {
          v23 = v22;
          v77 = v10;
          v72 = v8;
          v24 = *v85;
LABEL_18:
          v25 = 0;
          while (1)
          {
            if (*v85 != v24)
            {
              objc_enumerationMutation(obja);
            }

            v26 = *(*(&v84 + 1) + 8 * v25);
            v27 = [v26 identifier];
            v28 = [v27 isEqualToString:v11];

            if (v28)
            {
              break;
            }

            if (v23 == ++v25)
            {
              v23 = [obja countByEnumeratingWithState:&v84 objects:v101 count:16];
              if (v23)
              {
                goto LABEL_18;
              }

              goto LABEL_69;
            }
          }

          v15 = v26;
          if (!v4)
          {
            goto LABEL_78;
          }

          v10 = v77;
          v18 = [v77 mutableCopy];
          v55 = [v77 emailAddresses];
          v56 = [v55 mutableCopy];

          v57 = objc_alloc(MEMORY[0x277CBDB20]);
          v58 = [v15 value];
          v59 = [v57 initWithLabel:0 value:v58];

          v60 = v56;
          [v56 addObject:v59];
          [v18 setEmailAddresses:v56];
LABEL_77:
          v8 = v72;

LABEL_79:
          v13 = 0;
LABEL_80:

          if (v15)
          {
            obj = v11;
            v76 = v10;
            v16 = self;
            v19 = objc_alloc_init(MEMORY[0x277CBDBB8]);
            if (v4)
            {
              goto LABEL_7;
            }

            goto LABEL_32;
          }

LABEL_28:
          v30 = UNSLogCommunicationNotifications();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [UNSCNContactResolver confirm:match:];
          }

          v15 = 0;
          v21 = 0;
          goto LABEL_46;
        }

        goto LABEL_70;
      }

      v29 = UNSLogCommunicationNotifications();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [UNSCNContactResolver confirm:match:];
      }
    }

    else
    {
      v29 = UNSLogCommunicationNotifications();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [UNSCNContactResolver confirm:match:];
      }
    }

    v18 = 0;
    goto LABEL_28;
  }

  v11 = UNSLogCommunicationNotifications();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [UNSCNContactResolver confirm:match:];
  }

  v15 = 0;
  v18 = 0;
  v21 = 0;
LABEL_47:

  v38 = v21;
  v39 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)resultForContactIdentifier:(id)a3
{
  v4 = [(UNSCNContactResolver *)self contactForIdentifier:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [(UNSCNContactResolver *)self _fullnameForCNContact:v5];
    v8 = [UNSCNContactResolverResult resultWithCNContactIdentifier:v6 cnContactFullname:v7 suggestedContact:[(UNSCNContactResolver *)self _isSuggestedForContact:v5] matchType:0 matchTypeSuggested:0 identifierOfMatchLabel:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bestMatchForPhoneNumber:(id)a3
{
  v4 = MEMORY[0x277CBDB70];
  v5 = a3;
  v6 = [[v4 alloc] initWithStringValue:v5];

  v7 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__UNSCNContactResolver_bestMatchForPhoneNumber___block_invoke;
  v11[3] = &unk_279E14320;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [(UNSCNContactResolver *)self bestMatchForPredicate:v7 contactToMatch:v11];

  return v9;
}

- (id)matchThatMatchesPhoneNumber:(id)a3 forContact:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v7 phoneNumbers];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v23 = self;
    v24 = v7;
    v25 = 0;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 value];
        v15 = [v14 lastFourDigits];
        v16 = [v6 lastFourDigits];
        if ([v15 isEqualToString:v16])
        {
          v17 = [v14 isLikePhoneNumber:v6];

          if (v17)
          {
            v18 = v13;

            if (![(UNSCNContactResolver *)v23 _isSuggestedForContact:v24]&& ![(UNSCNContactResolver *)v23 _isSuggestedForLabeledValue:v18])
            {

              v25 = v18;
              goto LABEL_16;
            }

            v25 = v18;
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_16:

    v19 = v25;
    if (v25)
    {
      v7 = v24;
      v20 = [(UNSCNContactResolver *)v23 _matchForContact:v24 matchingLabel:v25 matchType:2];
    }

    else
    {
      v20 = 0;
      v7 = v24;
    }
  }

  else
  {

    v19 = 0;
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)bestMatchForEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v4 groupIdentifiers:0 limitToOneResult:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__UNSCNContactResolver_bestMatchForEmailAddress___block_invoke;
  v9[3] = &unk_279E14320;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(UNSCNContactResolver *)self bestMatchForPredicate:v5 contactToMatch:v9];

  return v7;
}

- (id)_matchThatMatchesEmailAddress:(id)a3 forContact:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 emailAddresses];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 value];
        if (![v15 caseInsensitiveCompare:v6])
        {
          v16 = v14;

          if (![(UNSCNContactResolver *)self _isSuggestedForContact:v7]&& ![(UNSCNContactResolver *)self _isSuggestedForLabeledValue:v16])
          {

            v11 = v16;
            goto LABEL_14;
          }

          v11 = v16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_14:

    if (v11)
    {
      v17 = [(UNSCNContactResolver *)self _matchForContact:v7 matchingLabel:v11 matchType:1];
      goto LABEL_18;
    }
  }

  else
  {

    v11 = 0;
  }

  v17 = 0;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)bestMatchForUsername:(id)a3 bundleIdentifier:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDB68];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setUsername:v8];

  v14[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v9 setBundleIdentifiers:v10];

  v11 = [(UNSCNContactResolver *)self bestMatchForSocialProfile:v9 bundleIdentifier:v7];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)bestMatchForUserIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDB68];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setUserIdentifier:v8];

  v14[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v9 setBundleIdentifiers:v10];

  v11 = [(UNSCNContactResolver *)self bestMatchForSocialProfile:v9 bundleIdentifier:v7];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)bestMatchForSocialProfile:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingSocialProfile:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__UNSCNContactResolver_bestMatchForSocialProfile_bundleIdentifier___block_invoke;
  v13[3] = &unk_279E14348;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(UNSCNContactResolver *)self bestMatchForPredicate:v8 contactToMatch:v13];

  return v11;
}

- (id)_matchThatMatchesSocialProfile:(id)a3 bundleIdentifier:(id)a4 forContact:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v38 = a4;
  v7 = a5;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = [v7 socialProfiles];
  v31 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v31)
  {
    v9 = 0;
    obj = v8;
    v30 = *v46;
    v10 = v33;
    v35 = v7;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v11;
        v34 = *(*(&v45 + 1) + 8 * v11);
        v12 = [v34 value];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v37 = [v12 bundleIdentifiers];
        v40 = [v37 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v40)
        {
          v39 = *v42;
          v13 = v9;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v42 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v15 = [*(*(&v41 + 1) + 8 * i) isEqual:v38];
              v16 = [v12 username];
              if ([v16 length])
              {
                v17 = [v10 username];
                if ([v17 length])
                {
                  v18 = [v12 username];
                  v19 = [v10 username];
                  v20 = [v18 isEqualToString:v19];
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }

              v21 = [v12 userIdentifier];
              if ([v21 length])
              {
                v22 = [v10 userIdentifier];
                if ([v22 length])
                {
                  v23 = [v12 userIdentifier];
                  v24 = [v10 userIdentifier];
                  v25 = [v23 isEqualToString:v24];

                  v10 = v33;
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = 0;
              }

              if ((v15 & (v20 | v25)) == 1)
              {
                v9 = v34;

                if ([(UNSCNContactResolver *)self _isSuggestedForContact:v35])
                {
                  v13 = v9;
                }

                else
                {
                  v13 = v9;
                  if (![(UNSCNContactResolver *)self _isSuggestedForLabeledValue:v9])
                  {
                    goto LABEL_29;
                  }
                }
              }
            }

            v9 = v13;
            v40 = [v37 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v40);
        }

LABEL_29:

        v7 = v35;
        if (![(UNSCNContactResolver *)self _isSuggestedForContact:v35]&& v9 && ![(UNSCNContactResolver *)self _isSuggestedForLabeledValue:v9])
        {

          goto LABEL_37;
        }

        v11 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }

    if (!v9)
    {
      v26 = 0;
      goto LABEL_39;
    }

LABEL_37:
    v26 = [(UNSCNContactResolver *)self _matchForContact:v35 matchingLabel:v9 matchType:3];
  }

  else
  {

    v9 = 0;
    v26 = 0;
    v10 = v33;
  }

LABEL_39:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)bestMatchForPredicate:(id)a3 contactToMatch:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  contactStore = self->_contactStore;
  contactStoreSearchKeys = self->_contactStoreSearchKeys;
  v30 = 0;
  v25 = v6;
  v10 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v6 keysToFetch:contactStoreSearchKeys error:&v30];
  v11 = v30;
  if (v11)
  {
    v12 = UNSLogCommunicationNotifications();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [UNSCNContactResolver bestMatchForPredicate:v11 contactToMatch:v12];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v27;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v27 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = v7[2](v7, *(*(&v26 + 1) + 8 * v18));
      v20 = v19;
      if (v19 && [v19 isStrongerMatchThanOtherMatch:v16])
      {
        v21 = v20;

        v16 = v21;
      }

      v22 = [v16 isStrongestMatch];

      if (v22)
      {
        break;
      }

      if (v15 == ++v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)contactForIdentifier:(id)a3
{
  v4 = a3;
  contactStore = self->_contactStore;
  contactStoreSearchKeys = self->_contactStoreSearchKeys;
  v11 = 0;
  v7 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:v4 keysToFetch:contactStoreSearchKeys error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = UNSLogCommunicationNotifications();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [UNSCNContactResolver contactForIdentifier:];
    }
  }

  return v7;
}

- (id)_matchForContact:(id)a3 matchingLabel:(id)a4 matchType:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 identifier];
  v11 = [(UNSCNContactResolver *)self _fullnameForCNContact:v9];
  v12 = [(UNSCNContactResolver *)self _isSuggestedForContact:v9];

  v13 = [(UNSCNContactResolver *)self _isSuggestedForLabeledValue:v8];
  v14 = [v8 identifier];

  v15 = [UNSCNContactResolverResult resultWithCNContactIdentifier:v10 cnContactFullname:v11 suggestedContact:v12 matchType:a5 matchTypeSuggested:v13 identifierOfMatchLabel:v14];

  return v15;
}

- (void)confirm:match:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Cannot %{public}@ contact match on contact identifier. Contact identifiers can't be suggested. Match:%{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)confirm:match:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Nothing to %{public}@ on match. Match:%{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)confirm:match:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Could not create save request for %{public}@ match. Match:%{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)confirm:match:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Unable to find suggested contact to %{public}@ match. Match:%{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)bestMatchForPredicate:(void *)a1 contactToMatch:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 136446466;
  v6 = "[UNSCNContactResolver bestMatchForPredicate:contactToMatch:]";
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_270B08000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Error querying for contacts based on predicate. Error:%{public}@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)contactForIdentifier:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Error querying for contact based on identifier:%{public}@ error:%{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end