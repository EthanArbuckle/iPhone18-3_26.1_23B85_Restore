@interface UNSCNContactResolver
- (UNSCNContactResolver)init;
- (id)_matchForContact:(id)contact matchingLabel:(id)label matchType:(unint64_t)type;
- (id)_matchThatMatchesEmailAddress:(id)address forContact:(id)contact;
- (id)_matchThatMatchesSocialProfile:(id)profile bundleIdentifier:(id)identifier forContact:(id)contact;
- (id)bestMatchForEmailAddress:(id)address;
- (id)bestMatchForPhoneNumber:(id)number;
- (id)bestMatchForPredicate:(id)predicate contactToMatch:(id)match;
- (id)bestMatchForSocialProfile:(id)profile bundleIdentifier:(id)identifier;
- (id)bestMatchForUserIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (id)bestMatchForUsername:(id)username bundleIdentifier:(id)identifier;
- (id)confirm:(BOOL)confirm match:(id)match;
- (id)contactForIdentifier:(id)identifier;
- (id)matchThatMatchesPhoneNumber:(id)number forContact:(id)contact;
- (id)resultForContactIdentifier:(id)identifier;
- (id)resultForContactIdentifier:(id)identifier emailAddress:(id)address phoneNumber:(id)number userIdentifier:(id)userIdentifier username:(id)username bundleIdentifier:(id)bundleIdentifier;
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

- (id)resultForContactIdentifier:(id)identifier emailAddress:(id)address phoneNumber:(id)number userIdentifier:(id)userIdentifier username:(id)username bundleIdentifier:(id)bundleIdentifier
{
  v68 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  addressCopy = address;
  numberCopy = number;
  userIdentifierCopy = userIdentifier;
  usernameCopy = username;
  bundleIdentifierCopy = bundleIdentifier;
  v57 = [MEMORY[0x277CBEAA8] now];
  v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v58 = identifierCopy;
  if ([identifierCopy length])
  {
    v19 = [(UNSCNContactResolver *)self resultForContactIdentifier:identifierCopy];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tcontactIdentifier - %@: %@", identifierCopy, v19];
    [v18 appendString:v20];
  }

  else
  {
    v19 = 0;
  }

  v21 = addressCopy;
  v59 = usernameCopy;
  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(numberCopy, "length"))
  {
    v22 = numberCopy;
    v23 = [(UNSCNContactResolver *)self bestMatchForPhoneNumber:numberCopy];
    v24 = [v23 isStrongerMatchThanOtherMatch:v19];
    if (v24)
    {
      v25 = v23;

      v19 = v25;
    }

    v26 = MEMORY[0x277CCACA8];
    numberCopy = v22;
    un_logDigest = [v22 un_logDigest];
    v28 = [v26 stringWithFormat:@"\tphoneNumber - %@: %@ preferResult:%d", un_logDigest, v23, v24];
    [v18 appendString:v28];

    v21 = addressCopy;
    usernameCopy = v59;
  }

  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(v21, "length"))
  {
    v29 = numberCopy;
    v30 = [(UNSCNContactResolver *)self bestMatchForEmailAddress:v21];
    v31 = [v30 isStrongerMatchThanOtherMatch:v19];
    if (v31)
    {
      v32 = v30;

      v19 = v32;
    }

    v33 = MEMORY[0x277CCACA8];
    un_logDigest2 = [v21 un_logDigest];
    v35 = [v33 stringWithFormat:@"\temailAddress - %@: %@ preferResult:%d", un_logDigest2, v30, v31];
    [v18 appendString:v35];

    v21 = addressCopy;
    numberCopy = v29;
    usernameCopy = v59;
  }

  if (([v19 isStrongestMatch] & 1) == 0)
  {
    if ([userIdentifierCopy length])
    {
      v36 = numberCopy;
      v37 = [(UNSCNContactResolver *)self bestMatchForUserIdentifier:userIdentifierCopy bundleIdentifier:bundleIdentifierCopy];
      v38 = [v37 isStrongerMatchThanOtherMatch:v19];
      if (v38)
      {
        v39 = v37;

        v19 = v39;
      }

      v40 = MEMORY[0x277CCACA8];
      un_logDigest3 = [userIdentifierCopy un_logDigest];
      v42 = [v40 stringWithFormat:@"\tuserIdentifier - %@: %@ preferResult:%d", un_logDigest3, v37, v38];
      [v18 appendString:v42];

      v21 = addressCopy;
      numberCopy = v36;
    }

    usernameCopy = v59;
  }

  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(usernameCopy, "length"))
  {
    v43 = numberCopy;
    v44 = [(UNSCNContactResolver *)self bestMatchForUsername:usernameCopy bundleIdentifier:bundleIdentifierCopy];
    v45 = [v44 isStrongerMatchThanOtherMatch:v19];
    if (v45)
    {
      v46 = v44;

      v19 = v46;
    }

    v47 = MEMORY[0x277CCACA8];
    un_logDigest4 = [usernameCopy un_logDigest];
    v49 = [v47 stringWithFormat:@"\tusername - %@: %@ preferResult:%d", un_logDigest4, v44, v45];
    [v18 appendString:v49];

    usernameCopy = v59;
    v21 = addressCopy;
    numberCopy = v43;
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

- (id)confirm:(BOOL)confirm match:(id)match
{
  confirmCopy = confirm;
  v103 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  v7 = @"reject";
  if (confirmCopy)
  {
    v7 = @"confirm";
  }

  v8 = v7;
  cnContactIdentifier = [matchCopy cnContactIdentifier];
  v10 = [(UNSCNContactResolver *)self contactForIdentifier:cnContactIdentifier];

  if (v10)
  {
    identifierOfMatchLabel = [matchCopy identifierOfMatchLabel];
    matchType = [matchCopy matchType];
    isSuggestedContact = [matchCopy isSuggestedContact];
    if (isSuggestedContact)
    {
      obj = identifierOfMatchLabel;
      v76 = v10;
      v14 = v10;
      v15 = v14;
      selfCopy2 = self;
      if (confirmCopy)
      {
        copyWithCuratingAllSuggestions = [v14 copyWithCuratingAllSuggestions];
        v18 = [copyWithCuratingAllSuggestions mutableCopy];

        v19 = objc_alloc_init(MEMORY[0x277CBDBB8]);
LABEL_7:
        v20 = isSuggestedContact;
        [v19 confirmSuggestion:v15];
LABEL_33:
        contactStore = selfCopy2->_contactStore;
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
        v34 = selfCopy2->_contactStore;
        v78 = 0;
        [(CNContactStore *)v34 executeSaveRequest:v33 error:&v78];
        v30 = v78;
        if (v30)
        {
          v35 = UNSLogCommunicationNotifications();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v30 localizedDescription];
            *buf = 136446978;
            v93 = "[UNSCNContactResolver confirm:match:]";
            v94 = 2114;
            v95 = v73;
            v96 = 2114;
            v97 = localizedDescription;
            v98 = 2114;
            v99 = matchCopy;
            _os_log_error_impl(&dword_270B08000, v35, OS_LOG_TYPE_ERROR, "%{public}s: Failed to %{public}@ match. Save request error %{public}@. Match:%{public}@", buf, 0x2Au);

            v8 = v73;
            v21 = 0;
            goto LABEL_44;
          }

          v21 = 0;
        }

        else
        {
          identifier = [v18 identifier];
          v37 = [(UNSCNContactResolver *)selfCopy2 _fullnameForCNContact:v18];
          v21 = [UNSCNContactResolverResult resultWithCNContactIdentifier:identifier cnContactFullname:v37 suggestedContact:0 matchType:0 matchTypeSuggested:0 identifierOfMatchLabel:0];

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
            identifierOfMatchLabel = obj;
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

    if ([matchCopy isMatchTypeSuggested] && -[NSObject length](identifierOfMatchLabel, "length"))
    {
      v18 = 0;
      if (matchType > 1)
      {
        if (matchType == 2)
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
              identifier2 = [v52 identifier];
              v54 = [identifier2 isEqualToString:identifierOfMatchLabel];

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
            if (confirmCopy)
            {
              v10 = v77;
              v18 = [v77 mutableCopy];
              phoneNumbers = [v77 phoneNumbers];
              v67 = [phoneNumbers mutableCopy];

              v68 = objc_alloc(MEMORY[0x277CBDB20]);
              value = [v15 value];
              service = [v68 initWithLabel:0 value:value];

              v60 = v67;
              [v67 addObject:service];
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
          if (matchType != 3)
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
              identifier3 = [v45 identifier];
              v47 = [identifier3 isEqualToString:identifierOfMatchLabel];

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
            if (!confirmCopy)
            {
              goto LABEL_78;
            }

            v10 = v77;
            v18 = [v77 mutableCopy];
            socialProfiles = [v77 socialProfiles];
            v71 = [socialProfiles mutableCopy];

            value2 = [v15 value];
            service = [value2 service];

            v63 = objc_alloc(MEMORY[0x277CBDB20]);
            value3 = [v15 value];
            v65 = [v63 initWithLabel:service value:value3];

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

      if (matchType)
      {
        if (matchType != 1)
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
            identifier4 = [v26 identifier];
            v28 = [identifier4 isEqualToString:identifierOfMatchLabel];

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
          if (!confirmCopy)
          {
            goto LABEL_78;
          }

          v10 = v77;
          v18 = [v77 mutableCopy];
          emailAddresses = [v77 emailAddresses];
          v56 = [emailAddresses mutableCopy];

          v57 = objc_alloc(MEMORY[0x277CBDB20]);
          value4 = [v15 value];
          service = [v57 initWithLabel:0 value:value4];

          v60 = v56;
          [v56 addObject:service];
          [v18 setEmailAddresses:v56];
LABEL_77:
          v8 = v72;

LABEL_79:
          isSuggestedContact = 0;
LABEL_80:

          if (v15)
          {
            obj = identifierOfMatchLabel;
            v76 = v10;
            selfCopy2 = self;
            v19 = objc_alloc_init(MEMORY[0x277CBDBB8]);
            if (confirmCopy)
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

  identifierOfMatchLabel = UNSLogCommunicationNotifications();
  if (os_log_type_enabled(identifierOfMatchLabel, OS_LOG_TYPE_ERROR))
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

- (id)resultForContactIdentifier:(id)identifier
{
  v4 = [(UNSCNContactResolver *)self contactForIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    identifier = [v4 identifier];
    v7 = [(UNSCNContactResolver *)self _fullnameForCNContact:v5];
    v8 = [UNSCNContactResolverResult resultWithCNContactIdentifier:identifier cnContactFullname:v7 suggestedContact:[(UNSCNContactResolver *)self _isSuggestedForContact:v5] matchType:0 matchTypeSuggested:0 identifierOfMatchLabel:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bestMatchForPhoneNumber:(id)number
{
  v4 = MEMORY[0x277CBDB70];
  numberCopy = number;
  v6 = [[v4 alloc] initWithStringValue:numberCopy];

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

- (id)matchThatMatchesPhoneNumber:(id)number forContact:(id)contact
{
  v31 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  contactCopy = contact;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  phoneNumbers = [contactCopy phoneNumbers];
  v9 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    selfCopy = self;
    v24 = contactCopy;
    v25 = 0;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        value = [v13 value];
        lastFourDigits = [value lastFourDigits];
        lastFourDigits2 = [numberCopy lastFourDigits];
        if ([lastFourDigits isEqualToString:lastFourDigits2])
        {
          v17 = [value isLikePhoneNumber:numberCopy];

          if (v17)
          {
            v18 = v13;

            if (![(UNSCNContactResolver *)selfCopy _isSuggestedForContact:v24]&& ![(UNSCNContactResolver *)selfCopy _isSuggestedForLabeledValue:v18])
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

      v10 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v30 count:16];
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
      contactCopy = v24;
      v20 = [(UNSCNContactResolver *)selfCopy _matchForContact:v24 matchingLabel:v25 matchType:2];
    }

    else
    {
      v20 = 0;
      contactCopy = v24;
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

- (id)bestMatchForEmailAddress:(id)address
{
  addressCopy = address;
  v5 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:addressCopy groupIdentifiers:0 limitToOneResult:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__UNSCNContactResolver_bestMatchForEmailAddress___block_invoke;
  v9[3] = &unk_279E14320;
  v9[4] = self;
  v10 = addressCopy;
  v6 = addressCopy;
  v7 = [(UNSCNContactResolver *)self bestMatchForPredicate:v5 contactToMatch:v9];

  return v7;
}

- (id)_matchThatMatchesEmailAddress:(id)address forContact:(id)contact
{
  v25 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  contactCopy = contact;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v9 = [emailAddresses countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(emailAddresses);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        value = [v14 value];
        if (![value caseInsensitiveCompare:addressCopy])
        {
          v16 = v14;

          if (![(UNSCNContactResolver *)self _isSuggestedForContact:contactCopy]&& ![(UNSCNContactResolver *)self _isSuggestedForLabeledValue:v16])
          {

            v11 = v16;
            goto LABEL_14;
          }

          v11 = v16;
        }
      }

      v10 = [emailAddresses countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_14:

    if (v11)
    {
      v17 = [(UNSCNContactResolver *)self _matchForContact:contactCopy matchingLabel:v11 matchType:1];
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

- (id)bestMatchForUsername:(id)username bundleIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDB68];
  identifierCopy = identifier;
  usernameCopy = username;
  v9 = objc_alloc_init(v6);
  [v9 setUsername:usernameCopy];

  v14[0] = identifierCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v9 setBundleIdentifiers:v10];

  v11 = [(UNSCNContactResolver *)self bestMatchForSocialProfile:v9 bundleIdentifier:identifierCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)bestMatchForUserIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDB68];
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v9 = objc_alloc_init(v6);
  [v9 setUserIdentifier:identifierCopy];

  v14[0] = bundleIdentifierCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v9 setBundleIdentifiers:v10];

  v11 = [(UNSCNContactResolver *)self bestMatchForSocialProfile:v9 bundleIdentifier:bundleIdentifierCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)bestMatchForSocialProfile:(id)profile bundleIdentifier:(id)identifier
{
  profileCopy = profile;
  identifierCopy = identifier;
  v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingSocialProfile:profileCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__UNSCNContactResolver_bestMatchForSocialProfile_bundleIdentifier___block_invoke;
  v13[3] = &unk_279E14348;
  v13[4] = self;
  v14 = profileCopy;
  v15 = identifierCopy;
  v9 = identifierCopy;
  v10 = profileCopy;
  v11 = [(UNSCNContactResolver *)self bestMatchForPredicate:v8 contactToMatch:v13];

  return v11;
}

- (id)_matchThatMatchesSocialProfile:(id)profile bundleIdentifier:(id)identifier forContact:(id)contact
{
  v51 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  identifierCopy = identifier;
  contactCopy = contact;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  socialProfiles = [contactCopy socialProfiles];
  v31 = [socialProfiles countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v31)
  {
    v9 = 0;
    obj = socialProfiles;
    v30 = *v46;
    v10 = profileCopy;
    v35 = contactCopy;
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
        value = [v34 value];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        bundleIdentifiers = [value bundleIdentifiers];
        v40 = [bundleIdentifiers countByEnumeratingWithState:&v41 objects:v49 count:16];
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
                objc_enumerationMutation(bundleIdentifiers);
              }

              v15 = [*(*(&v41 + 1) + 8 * i) isEqual:identifierCopy];
              username = [value username];
              if ([username length])
              {
                username2 = [v10 username];
                if ([username2 length])
                {
                  username3 = [value username];
                  username4 = [v10 username];
                  v20 = [username3 isEqualToString:username4];
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

              userIdentifier = [value userIdentifier];
              if ([userIdentifier length])
              {
                userIdentifier2 = [v10 userIdentifier];
                if ([userIdentifier2 length])
                {
                  userIdentifier3 = [value userIdentifier];
                  userIdentifier4 = [v10 userIdentifier];
                  v25 = [userIdentifier3 isEqualToString:userIdentifier4];

                  v10 = profileCopy;
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
            v40 = [bundleIdentifiers countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v40);
        }

LABEL_29:

        contactCopy = v35;
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
    v10 = profileCopy;
  }

LABEL_39:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)bestMatchForPredicate:(id)predicate contactToMatch:(id)match
{
  v32 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  matchCopy = match;
  contactStore = self->_contactStore;
  contactStoreSearchKeys = self->_contactStoreSearchKeys;
  v30 = 0;
  v25 = predicateCopy;
  v10 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:predicateCopy keysToFetch:contactStoreSearchKeys error:&v30];
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

      v19 = matchCopy[2](matchCopy, *(*(&v26 + 1) + 8 * v18));
      v20 = v19;
      if (v19 && [v19 isStrongerMatchThanOtherMatch:v16])
      {
        v21 = v20;

        v16 = v21;
      }

      isStrongestMatch = [v16 isStrongestMatch];

      if (isStrongestMatch)
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

- (id)contactForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactStore = self->_contactStore;
  contactStoreSearchKeys = self->_contactStoreSearchKeys;
  v11 = 0;
  v7 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:identifierCopy keysToFetch:contactStoreSearchKeys error:&v11];
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

- (id)_matchForContact:(id)contact matchingLabel:(id)label matchType:(unint64_t)type
{
  labelCopy = label;
  contactCopy = contact;
  identifier = [contactCopy identifier];
  v11 = [(UNSCNContactResolver *)self _fullnameForCNContact:contactCopy];
  v12 = [(UNSCNContactResolver *)self _isSuggestedForContact:contactCopy];

  v13 = [(UNSCNContactResolver *)self _isSuggestedForLabeledValue:labelCopy];
  identifier2 = [labelCopy identifier];

  v15 = [UNSCNContactResolverResult resultWithCNContactIdentifier:identifier cnContactFullname:v11 suggestedContact:v12 matchType:type matchTypeSuggested:v13 identifierOfMatchLabel:identifier2];

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