@interface HVSearchableItemHelper
+ (BOOL)mailItemIsFromSupportedAccount:(id)account;
+ (BOOL)mailItemIsInDrafts:(id)drafts;
+ (BOOL)mailItemIsInDrafts:(id)drafts mailboxIdentifiers:(id)identifiers;
+ (BOOL)mailItemIsInSent:(id)sent;
+ (BOOL)mailItemIsInSent:(id)sent mailboxIdentifiers:(id)identifiers;
+ (BOOL)mailItemIsInTrash:(id)trash;
+ (BOOL)mailItemIsInTrash:(id)trash mailboxIdentifiers:(id)identifiers;
+ (BOOL)mailItemIsRecent:(id)recent;
+ (BOOL)mailItemIsRecent:(id)recent emailHeaders:(id)headers;
+ (BOOL)mailItemIsSPAM:(id)m;
+ (BOOL)mailItemIsSPAM:(id)m emailHeaders:(id)headers mailboxIdentifiers:(id)identifiers;
+ (BOOL)mailItemIsTooBig:(id)big;
+ (BOOL)mailItemIsValid:(id)valid;
+ (BOOL)mailItemIsValid:(id)valid emailHeaders:(id)headers mailboxIdentifiers:(id)identifiers;
+ (BOOL)searchableItemIsEmpty:(id)empty;
+ (BOOL)searchableItemIsOutgoing:(id)outgoing;
+ (id)deserializeAttributes:(id)attributes;
+ (id)deserializeAttributes:(id)attributes andBody:(id)body;
+ (id)deserializeAttributesAndBody:(id)body;
+ (id)htmlContentDataNoCopyRetainingBackingBuffer:(id)buffer;
+ (id)mailItemMessageIdHeaderValues:(id)values;
+ (id)messageIdHeaderValuesFromHeaders:(id)headers;
+ (id)serializeAttributesAndBody:(id)body;
+ (id)textContentNoCopyRetainingBackingBuffer:(id)buffer;
@end

@implementation HVSearchableItemHelper

uint64_t __42__HVSearchableItemHelper_sanitizeHandles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)deserializeAttributesAndBody:(id)body
{
  bodyCopy = body;
  attributeSetData = [bodyCopy attributeSetData];
  htmlContentData = [bodyCopy htmlContentData];

  v7 = [self deserializeAttributes:attributeSetData andBody:htmlContentData];

  return v7;
}

+ (id)deserializeAttributes:(id)attributes andBody:(id)body
{
  bodyCopy = body;
  v7 = [self deserializeAttributes:attributes];
  v8 = v7;
  if (v7)
  {
    uniqueIdentifier = [v7 uniqueIdentifier];
    domainIdentifier = [v8 domainIdentifier];
    v11 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:uniqueIdentifier domainIdentifier:domainIdentifier attributeSet:v8];
    v12 = v11;
    if (bodyCopy)
    {
      attributeSet = [v11 attributeSet];
      [attributeSet setHTMLContentData:bodyCopy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)deserializeAttributes:(id)attributes
{
  v3 = MEMORY[0x277CC33C8];
  attributesCopy = attributes;
  v5 = [[v3 alloc] initWithData:attributesCopy];

  decode = [v5 decode];

  return decode;
}

+ (id)serializeAttributesAndBody:(id)body
{
  bodyCopy = body;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  attributeSet = [bodyCopy attributeSet];
  [v5 encodeObject:attributeSet];

  v7 = [HVSearchableItemSerializedAttributes alloc];
  data = [v5 data];
  attributeSet2 = [bodyCopy attributeSet];
  hTMLContentDataNoCopy = [attributeSet2 HTMLContentDataNoCopy];
  v11 = [(HVSearchableItemSerializedAttributes *)v7 initWithAttributeSetData:data attributeSetCoder:v5 htmlContentData:hTMLContentDataNoCopy];

  objc_autoreleasePoolPop(v4);

  return v11;
}

+ (id)htmlContentDataNoCopyRetainingBackingBuffer:(id)buffer
{
  bufferCopy = buffer;
  v4 = objc_autoreleasePoolPush();
  attributeSet = [bufferCopy attributeSet];
  hTMLContentDataNoCopy = [attributeSet HTMLContentDataNoCopy];

  if (hTMLContentDataNoCopy)
  {
    if ([hTMLContentDataNoCopy length] < 0xC9)
    {
      attributeSet2 = [bufferCopy attributeSet];
      hTMLContentData = [attributeSet2 HTMLContentData];

      objc_autoreleasePoolPop(v4);
      goto LABEL_6;
    }

    objc_setAssociatedObject(hTMLContentDataNoCopy, sel_htmlContentDataNoCopyRetainingBackingBuffer_, bufferCopy, 1);
  }

  objc_autoreleasePoolPop(v4);
  hTMLContentData = hTMLContentDataNoCopy;
LABEL_6:

  return hTMLContentData;
}

+ (id)textContentNoCopyRetainingBackingBuffer:(id)buffer
{
  bufferCopy = buffer;
  v4 = objc_autoreleasePoolPush();
  attributeSet = [bufferCopy attributeSet];
  textContentNoCopy = [attributeSet textContentNoCopy];

  if (textContentNoCopy)
  {
    if ([(__CFString *)textContentNoCopy length]< 0xC9)
    {
      attributeSet2 = [bufferCopy attributeSet];
      textContent = [attributeSet2 textContent];

      objc_autoreleasePoolPop(v4);
      goto LABEL_7;
    }

    if (CFStringGetCharactersPtr(textContentNoCopy))
    {
      objc_setAssociatedObject(textContentNoCopy, sel_textContentNoCopyRetainingBackingBuffer_, bufferCopy, 1);
      [(__CFString *)textContentNoCopy _pas_setRetainsConmingledBackingStore:1];
    }
  }

  objc_autoreleasePoolPop(v4);
  textContent = textContentNoCopy;
LABEL_7:

  return textContent;
}

+ (BOOL)mailItemIsTooBig:(id)big
{
  v13 = *MEMORY[0x277D85DE8];
  bigCopy = big;
  attributeSet = [bigCopy attributeSet];
  hTMLContentDataNoCopy = [attributeSet HTMLContentDataNoCopy];
  v6 = [hTMLContentDataNoCopy length];

  if (v6 > 0xC8000)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [bigCopy uniqueIdentifier];
      v11 = 138543362;
      v12 = uniqueIdentifier;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is too big", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 > 0xC8000;
}

+ (BOOL)mailItemIsInTrash:(id)trash
{
  trashCopy = trash;
  attributeSet = [trashCopy attributeSet];
  mailboxIdentifiers = [attributeSet mailboxIdentifiers];
  LOBYTE(self) = [self mailItemIsInTrash:trashCopy mailboxIdentifiers:mailboxIdentifiers];

  return self;
}

+ (BOOL)mailItemIsInSent:(id)sent
{
  sentCopy = sent;
  attributeSet = [sentCopy attributeSet];
  mailboxIdentifiers = [attributeSet mailboxIdentifiers];
  LOBYTE(self) = [self mailItemIsInSent:sentCopy mailboxIdentifiers:mailboxIdentifiers];

  return self;
}

+ (BOOL)mailItemIsInDrafts:(id)drafts
{
  draftsCopy = drafts;
  attributeSet = [draftsCopy attributeSet];
  mailboxIdentifiers = [attributeSet mailboxIdentifiers];
  LOBYTE(self) = [self mailItemIsInDrafts:draftsCopy mailboxIdentifiers:mailboxIdentifiers];

  return self;
}

+ (BOOL)mailItemIsSPAM:(id)m
{
  mCopy = m;
  attributeSet = [mCopy attributeSet];
  emailHeaders = [attributeSet emailHeaders];
  attributeSet2 = [mCopy attributeSet];
  mailboxIdentifiers = [attributeSet2 mailboxIdentifiers];
  LOBYTE(self) = [self mailItemIsSPAM:mCopy emailHeaders:emailHeaders mailboxIdentifiers:mailboxIdentifiers];

  return self;
}

+ (BOOL)mailItemIsValid:(id)valid
{
  validCopy = valid;
  attributeSet = [validCopy attributeSet];
  emailHeaders = [attributeSet emailHeaders];
  attributeSet2 = [validCopy attributeSet];
  mailboxIdentifiers = [attributeSet2 mailboxIdentifiers];
  LOBYTE(self) = [self mailItemIsValid:validCopy emailHeaders:emailHeaders mailboxIdentifiers:mailboxIdentifiers];

  return self;
}

+ (BOOL)mailItemIsRecent:(id)recent
{
  recentCopy = recent;
  attributeSet = [recentCopy attributeSet];
  emailHeaders = [attributeSet emailHeaders];
  LOBYTE(self) = [self mailItemIsRecent:recentCopy emailHeaders:emailHeaders];

  return self;
}

+ (BOOL)mailItemIsSPAM:(id)m emailHeaders:(id)headers mailboxIdentifiers:(id)identifiers
{
  v77 = *MEMORY[0x277D85DE8];
  mCopy = m;
  headersCopy = headers;
  identifiersCopy = identifiers;
  if ([identifiersCopy containsObject:*MEMORY[0x277CC2330]])
  {
    v10 = hv_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [mCopy uniqueIdentifier];
      *buf = 138543362;
      v72 = uniqueIdentifier;
      v12 = "Item %{public}@ spam - in junk mailbox";
LABEL_45:
      _os_log_impl(&dword_2321EC000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (!headersCopy)
  {
    v10 = hv_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [mCopy uniqueIdentifier];
      *buf = 138543362;
      v72 = uniqueIdentifier;
      v12 = "invalid item %{public}@ - email headers are nil";
      goto LABEL_45;
    }

LABEL_46:
    v40 = 1;
    goto LABEL_47;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = hv_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [mCopy uniqueIdentifier];
      *buf = 138543362;
      v72 = uniqueIdentifier;
      v12 = "invalid item %{public}@ - email headers are not a dictionary";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = headersCopy;
  v13 = [v10 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (!v13)
  {
    v40 = 0;
    goto LABEL_47;
  }

  v14 = v13;
  v56 = identifiersCopy;
  v57 = headersCopy;
  v58 = mCopy;
  v15 = *v68;
LABEL_8:
  v16 = 0;
  while (1)
  {
    if (*v68 != v15)
    {
      objc_enumerationMutation(v10);
    }

    v17 = *(*(&v67 + 1) + 8 * v16);
    v18 = objc_autoreleasePoolPush();
    lowercaseString = [v17 lowercaseString];
    if ([lowercaseString isEqualToString:@"x-spam-level"])
    {
      v20 = [v10 objectForKeyedSubscript:v17];
      firstObject = [v20 firstObject];

      if ([firstObject hasPrefix:@"*****"])
      {
        v43 = hv_default_log_handle();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        mCopy = v58;
        if (!v44)
        {
          goto LABEL_62;
        }

        uniqueIdentifier2 = [v58 uniqueIdentifier];
        *buf = 138543362;
        v72 = uniqueIdentifier2;
        v46 = "Item %{public}@ spam - spam assasin header";
        goto LABEL_61;
      }

      goto LABEL_19;
    }

    if ([lowercaseString isEqualToString:@"x-ms-exchange-organization-pcl"])
    {
      v22 = [v10 objectForKeyedSubscript:v17];
      firstObject = [v22 firstObject];

      if ([firstObject integerValue] >= 4)
      {
        v43 = hv_default_log_handle();
        v49 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        mCopy = v58;
        if (!v49)
        {
          goto LABEL_62;
        }

        uniqueIdentifier2 = [v58 uniqueIdentifier];
        *buf = 138543362;
        v72 = uniqueIdentifier2;
        v46 = "Item %{public}@ spam - exchange pcl header";
        goto LABEL_61;
      }

      goto LABEL_19;
    }

    if ([lowercaseString isEqualToString:@"x-ms-exchange-organization-scl"])
    {
      v23 = [v10 objectForKeyedSubscript:v17];
      firstObject = [v23 firstObject];

      if ([firstObject integerValue] >= 5)
      {
        v43 = hv_default_log_handle();
        mCopy = v58;
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
LABEL_62:

          goto LABEL_63;
        }

        uniqueIdentifier2 = [v58 uniqueIdentifier];
        *buf = 138543362;
        v72 = uniqueIdentifier2;
        v46 = "Item %{public}@ spam - exchange scl header";
LABEL_61:
        _os_log_impl(&dword_2321EC000, v43, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);

        goto LABEL_62;
      }

LABEL_19:

      goto LABEL_20;
    }

    if (![lowercaseString isEqualToString:@"x-tm-as-result"])
    {
      if ([lowercaseString isEqualToString:@"x-proofpoint-spam-details"])
      {
        context = objc_autoreleasePoolPush();
        v29 = [v10 objectForKeyedSubscript:v17];
        firstObject2 = [v29 firstObject];

        v31 = context;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v54 = firstObject2;
        obj = [firstObject2 componentsSeparatedByString:@" "];
        v60 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
        if (v60)
        {
          v62 = *v64;
          v53 = v15;
          while (2)
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v64 != v62)
              {
                objc_enumerationMutation(obj);
              }

              v33 = *(*(&v63 + 1) + 8 * i);
              v34 = objc_autoreleasePoolPush();
              if (([v33 isEqualToString:@"rule=spam"] & 1) != 0 || objc_msgSend(v33, "isEqualToString:", @"rule=probablespam"))
              {
                v47 = hv_default_log_handle();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  mCopy = v58;
                  uniqueIdentifier3 = [v58 uniqueIdentifier];
                  *buf = 138543618;
                  v72 = uniqueIdentifier3;
                  v73 = 2112;
                  v74 = v33;
                  _os_log_impl(&dword_2321EC000, v47, OS_LOG_TYPE_DEFAULT, "Item %{public}@ spam - has x-proofpoint-spam-details rule match: %@", buf, 0x16u);

LABEL_58:
                  objc_autoreleasePoolPop(v34);

                  objc_autoreleasePoolPop(context);
                  goto LABEL_63;
                }

LABEL_57:
                mCopy = v58;
                goto LABEL_58;
              }

              if (([v33 hasPrefix:@"spamscore="] & 1) != 0 || objc_msgSend(v33, "hasPrefix:", @"phishscore="))
              {
                v35 = [v33 rangeOfString:@"=" options:2];
                v37 = [v33 substringFromIndex:v35 + v36];
                integerValue = [v37 integerValue];

                if (integerValue >= 80)
                {
                  v47 = hv_default_log_handle();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                  {
                    mCopy = v58;
                    uniqueIdentifier4 = [v58 uniqueIdentifier];
                    *buf = 138543618;
                    v72 = uniqueIdentifier4;
                    v73 = 2112;
                    v74 = v33;
                    _os_log_impl(&dword_2321EC000, v47, OS_LOG_TYPE_DEFAULT, "Item %{public}@ spam - has x-proofpoint-spam-details rule match: %@", buf, 0x16u);

                    goto LABEL_58;
                  }

                  goto LABEL_57;
                }
              }

              objc_autoreleasePoolPop(v34);
            }

            v15 = v53;
            v31 = context;
            v60 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
            if (v60)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(v31);
      }

      goto LABEL_20;
    }

    v61 = v18;
    v24 = v15;
    v25 = [v10 objectForKeyedSubscript:v17];
    firstObject3 = [v25 firstObject];

    lowercaseString2 = [firstObject3 lowercaseString];
    v28 = [lowercaseString2 hasPrefix:@"yes"];

    if (v28)
    {
      break;
    }

    v15 = v24;
    v18 = v61;
LABEL_20:

    objc_autoreleasePoolPop(v18);
    if (++v16 == v14)
    {
      v39 = [v10 countByEnumeratingWithState:&v67 objects:v76 count:16];
      v14 = v39;
      if (!v39)
      {
        v40 = 0;
        mCopy = v58;
        goto LABEL_64;
      }

      goto LABEL_8;
    }
  }

  v51 = hv_default_log_handle();
  mCopy = v58;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier5 = [v58 uniqueIdentifier];
    *buf = 138543362;
    v72 = uniqueIdentifier5;
    _os_log_impl(&dword_2321EC000, v51, OS_LOG_TYPE_DEFAULT, "Item %{public}@ spam - trend micro header", buf, 0xCu);
  }

  v18 = v61;
LABEL_63:

  objc_autoreleasePoolPop(v18);
  v40 = 1;
LABEL_64:
  identifiersCopy = v56;
  headersCopy = v57;
LABEL_47:

  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

+ (BOOL)searchableItemIsOutgoing:(id)outgoing
{
  v26 = *MEMORY[0x277D85DE8];
  outgoingCopy = outgoing;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  attributeSet = [outgoingCopy attributeSet];
  accountHandles = [attributeSet accountHandles];
  v7 = [v4 initWithArray:accountHandles];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  attributeSet2 = [outgoingCopy attributeSet];
  authorAddresses = [attributeSet2 authorAddresses];

  v10 = [authorAddresses countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(authorAddresses);
        }

        if ([v7 containsObject:*(*(&v17 + 1) + 8 * i)])
        {
          LODWORD(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [authorAddresses countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = hv_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [outgoingCopy uniqueIdentifier];
    *buf = 138543618;
    v22 = uniqueIdentifier;
    v23 = 1024;
    v24 = v10;
    _os_log_impl(&dword_2321EC000, v13, OS_LOG_TYPE_DEFAULT, "searchableItemIsOutgoing %{public}@: %d", buf, 0x12u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)searchableItemIsEmpty:(id)empty
{
  v14 = *MEMORY[0x277D85DE8];
  emptyCopy = empty;
  attributeSet = [emptyCopy attributeSet];
  hTMLContentDataNoCopy = [attributeSet HTMLContentDataNoCopy];
  if (hTMLContentDataNoCopy)
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  textContentNoCopy = [attributeSet textContentNoCopy];

  if (textContentNoCopy)
  {
    goto LABEL_4;
  }

  v10 = hv_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [emptyCopy uniqueIdentifier];
    v12 = 138543362;
    v13 = uniqueIdentifier;
    _os_log_impl(&dword_2321EC000, v10, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is empty", &v12, 0xCu);
  }

  v7 = 1;
LABEL_5:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)mailItemIsFromSupportedAccount:(id)account
{
  v13 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  attributeSet = [accountCopy attributeSet];
  accountType = [attributeSet accountType];

  if (!accountType)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [accountCopy uniqueIdentifier];
      v11 = 138543362;
      v12 = uniqueIdentifier;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ missing account type", &v11, 0xCu);
    }

    goto LABEL_8;
  }

  if ([accountType isEqual:*MEMORY[0x277CC2210]] & 1) != 0 || (objc_msgSend(accountType, "isEqual:", *MEMORY[0x277CC2220]))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = [accountType isEqual:*MEMORY[0x277CC2208]];
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)mailItemIsInTrash:(id)trash mailboxIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x277D85DE8];
  trashCopy = trash;
  v6 = [identifiers containsObject:*MEMORY[0x277CC2340]];
  if (v6)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [trashCopy uniqueIdentifier];
      v11 = 138543362;
      v12 = uniqueIdentifier;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ in trash mailbox", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)mailItemIsInSent:(id)sent mailboxIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x277D85DE8];
  sentCopy = sent;
  v6 = [identifiers containsObject:*MEMORY[0x277CC2338]];
  if (v6)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [sentCopy uniqueIdentifier];
      v11 = 138543362;
      v12 = uniqueIdentifier;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ in sent mailbox", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)mailItemIsInDrafts:(id)drafts mailboxIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x277D85DE8];
  draftsCopy = drafts;
  v6 = [identifiers containsObject:*MEMORY[0x277CC2320]];
  if (v6)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [draftsCopy uniqueIdentifier];
      v11 = 138543362;
      v12 = uniqueIdentifier;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is in draft mailbox", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)mailItemIsValid:(id)valid emailHeaders:(id)headers mailboxIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  identifiersCopy = identifiers;
  bundleID = [validCopy bundleID];

  if (!bundleID)
  {
    accountIdentifier = hv_default_log_handle();
    if (!os_log_type_enabled(accountIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    uniqueIdentifier = [validCopy uniqueIdentifier];
    v21 = 138543362;
    v22 = uniqueIdentifier;
    v16 = "Item %{public}@ is malformed - no bundleID";
LABEL_14:
    _os_log_impl(&dword_2321EC000, accountIdentifier, OS_LOG_TYPE_DEFAULT, v16, &v21, 0xCu);
    goto LABEL_15;
  }

  if (!headers)
  {
    accountIdentifier = hv_default_log_handle();
    if (!os_log_type_enabled(accountIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    uniqueIdentifier = [validCopy uniqueIdentifier];
    v21 = 138543362;
    v22 = uniqueIdentifier;
    v16 = "Item %{public}@ not valid - no value for emailHeaders";
    goto LABEL_14;
  }

  v11 = [self mailItemMessageIdHeaderValues:validCopy];

  if (!v11)
  {
    accountIdentifier = hv_default_log_handle();
    if (os_log_type_enabled(accountIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [validCopy uniqueIdentifier];
      v21 = 138543362;
      v22 = uniqueIdentifier;
      v16 = "Item %{public}@ not valid - no message-id header";
      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  attributeSet = [validCopy attributeSet];
  accountIdentifier = [attributeSet accountIdentifier];

  if (!accountIdentifier)
  {
    uniqueIdentifier = hv_default_log_handle();
    if (os_log_type_enabled(uniqueIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier2 = [validCopy uniqueIdentifier];
      v21 = 138543362;
      v22 = uniqueIdentifier2;
      v20 = "Item %{public}@ is malformed - no source";
LABEL_22:
      _os_log_impl(&dword_2321EC000, uniqueIdentifier, OS_LOG_TYPE_DEFAULT, v20, &v21, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (identifiersCopy && (objc_opt_respondsToSelector() & 1) == 0)
  {
    uniqueIdentifier = hv_default_log_handle();
    if (os_log_type_enabled(uniqueIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier2 = [validCopy uniqueIdentifier];
      v21 = 138543362;
      v22 = uniqueIdentifier2;
      v20 = "Item %{public}@ is malformed - mailbox list is present but is not an array";
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v14 = 1;
LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)messageIdHeaderValuesFromHeaders:(id)headers
{
  v20 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  v4 = objc_autoreleasePoolPush();
  v5 = [headersCopy objectForKeyedSubscript:@"message-id"];
  if (v5 || ([headersCopy objectForKeyedSubscript:@"Message-id"], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(headersCopy, "objectForKeyedSubscript:", @"Message-Id"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(headersCopy, "objectForKeyedSubscript:", @"MESSAGE-ID"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = headersCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if ([v14 length] == 10 && !objc_msgSend(v14, "caseInsensitiveCompare:", @"message-id"))
          {
            v6 = [v9 objectForKeyedSubscript:v14];
            goto LABEL_20;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_20:
  }

  objc_autoreleasePoolPop(v4);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)mailItemMessageIdHeaderValues:(id)values
{
  attributeSet = [values attributeSet];
  emailHeaders = [attributeSet emailHeaders];

  if (emailHeaders)
  {
    v6 = [self messageIdHeaderValuesFromHeaders:emailHeaders];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)mailItemIsRecent:(id)recent emailHeaders:(id)headers
{
  v49 = *MEMORY[0x277D85DE8];
  recentCopy = recent;
  headersCopy = headers;
  attributeSet = [recentCopy attributeSet];
  contentCreationDate = [attributeSet contentCreationDate];

  if (!contentCreationDate)
  {
    date = hv_default_log_handle();
    if (!os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    uniqueIdentifier = [recentCopy uniqueIdentifier];
    *buf = 138543362;
    v42 = uniqueIdentifier;
    _os_log_impl(&dword_2321EC000, date, OS_LOG_TYPE_DEFAULT, "No contentCreationDate on searchable item with id: %{public}@", buf, 0xCu);
LABEL_8:

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    date = [MEMORY[0x277CBEAA8] date];
    v10 = [date dateByAddingTimeInterval:-31536000.0];
    [contentCreationDate timeIntervalSince1970];
    v12 = v11;
    [v10 timeIntervalSince1970];
    if (v12 < v13)
    {
      v14 = hv_default_log_handle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:
        v17 = 0;
LABEL_32:

        goto LABEL_33;
      }

      uniqueIdentifier2 = [recentCopy uniqueIdentifier];
      *buf = 138544130;
      v42 = uniqueIdentifier2;
      v43 = 2114;
      v44 = contentCreationDate;
      v45 = 2114;
      v46 = date;
      v47 = 2114;
      v48 = v10;
      _os_log_impl(&dword_2321EC000, v14, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is older than a year (creationDate: %{public}@, now: %{public}@, cutoff: %{public}@)", buf, 0x2Au);
LABEL_28:

      goto LABEL_29;
    }

    v14 = [date dateByAddingTimeInterval:-2592000.0];
    [contentCreationDate timeIntervalSince1970];
    v19 = v18;
    [v14 timeIntervalSince1970];
    if (v19 < v20)
    {
      v21 = @"list-id";
      if (headersCopy)
      {
        v22 = [headersCopy objectForKey:@"list-id"];

        if (!v22)
        {
          v35 = v14;
          v36 = v10;
          context = objc_autoreleasePoolPush();
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          allKeys = [headersCopy allKeys];
          v24 = [allKeys countByEnumeratingWithState:&v37 objects:buf count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v38;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v38 != v26)
                {
                  objc_enumerationMutation(allKeys);
                }

                v28 = *(*(&v37 + 1) + 8 * i);
                v29 = objc_autoreleasePoolPush();
                v30 = [v28 caseInsensitiveCompare:@"list-id"];
                objc_autoreleasePoolPop(v29);
                if (!v30)
                {

                  objc_autoreleasePoolPop(context);
                  v14 = v35;
                  v10 = v36;
                  goto LABEL_26;
                }
              }

              v25 = [allKeys countByEnumeratingWithState:&v37 objects:buf count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          objc_autoreleasePoolPop(context);
          v17 = 1;
          v14 = v35;
          v10 = v36;
          goto LABEL_32;
        }

LABEL_26:
        uniqueIdentifier2 = hv_default_log_handle();
        if (os_log_type_enabled(uniqueIdentifier2, OS_LOG_TYPE_DEFAULT))
        {
          uniqueIdentifier3 = [recentCopy uniqueIdentifier];
          *buf = 138544130;
          v42 = uniqueIdentifier3;
          v43 = 2114;
          v44 = contentCreationDate;
          v45 = 2114;
          v46 = date;
          v47 = 2114;
          v48 = v14;
          _os_log_impl(&dword_2321EC000, uniqueIdentifier2, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is a group message older than a month (creationDate: %{public}@, now: %{public}@, cutoff: %{public}@)", buf, 0x2Au);
        }

        goto LABEL_28;
      }
    }

    v17 = 1;
    goto LABEL_32;
  }

  date = hv_default_log_handle();
  if (os_log_type_enabled(date, OS_LOG_TYPE_FAULT))
  {
    uniqueIdentifier = [recentCopy uniqueIdentifier];
    *buf = 138543362;
    v42 = uniqueIdentifier;
    _os_log_fault_impl(&dword_2321EC000, date, OS_LOG_TYPE_FAULT, "Invalid contentCreationDate on searchable item %{public}@ sent", buf, 0xCu);
    goto LABEL_8;
  }

LABEL_10:
  v17 = 0;
LABEL_33:

  v32 = *MEMORY[0x277D85DE8];
  return v17;
}

@end