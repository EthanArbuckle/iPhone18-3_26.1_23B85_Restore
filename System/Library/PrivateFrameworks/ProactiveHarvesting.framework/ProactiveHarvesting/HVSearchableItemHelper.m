@interface HVSearchableItemHelper
+ (BOOL)mailItemIsFromSupportedAccount:(id)a3;
+ (BOOL)mailItemIsInDrafts:(id)a3;
+ (BOOL)mailItemIsInDrafts:(id)a3 mailboxIdentifiers:(id)a4;
+ (BOOL)mailItemIsInSent:(id)a3;
+ (BOOL)mailItemIsInSent:(id)a3 mailboxIdentifiers:(id)a4;
+ (BOOL)mailItemIsInTrash:(id)a3;
+ (BOOL)mailItemIsInTrash:(id)a3 mailboxIdentifiers:(id)a4;
+ (BOOL)mailItemIsRecent:(id)a3;
+ (BOOL)mailItemIsRecent:(id)a3 emailHeaders:(id)a4;
+ (BOOL)mailItemIsSPAM:(id)a3;
+ (BOOL)mailItemIsSPAM:(id)a3 emailHeaders:(id)a4 mailboxIdentifiers:(id)a5;
+ (BOOL)mailItemIsTooBig:(id)a3;
+ (BOOL)mailItemIsValid:(id)a3;
+ (BOOL)mailItemIsValid:(id)a3 emailHeaders:(id)a4 mailboxIdentifiers:(id)a5;
+ (BOOL)searchableItemIsEmpty:(id)a3;
+ (BOOL)searchableItemIsOutgoing:(id)a3;
+ (id)deserializeAttributes:(id)a3;
+ (id)deserializeAttributes:(id)a3 andBody:(id)a4;
+ (id)deserializeAttributesAndBody:(id)a3;
+ (id)htmlContentDataNoCopyRetainingBackingBuffer:(id)a3;
+ (id)mailItemMessageIdHeaderValues:(id)a3;
+ (id)messageIdHeaderValuesFromHeaders:(id)a3;
+ (id)serializeAttributesAndBody:(id)a3;
+ (id)textContentNoCopyRetainingBackingBuffer:(id)a3;
@end

@implementation HVSearchableItemHelper

uint64_t __42__HVSearchableItemHelper_sanitizeHandles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)deserializeAttributesAndBody:(id)a3
{
  v4 = a3;
  v5 = [v4 attributeSetData];
  v6 = [v4 htmlContentData];

  v7 = [a1 deserializeAttributes:v5 andBody:v6];

  return v7;
}

+ (id)deserializeAttributes:(id)a3 andBody:(id)a4
{
  v6 = a4;
  v7 = [a1 deserializeAttributes:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 uniqueIdentifier];
    v10 = [v8 domainIdentifier];
    v11 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v9 domainIdentifier:v10 attributeSet:v8];
    v12 = v11;
    if (v6)
    {
      v13 = [v11 attributeSet];
      [v13 setHTMLContentData:v6];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)deserializeAttributes:(id)a3
{
  v3 = MEMORY[0x277CC33C8];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4];

  v6 = [v5 decode];

  return v6;
}

+ (id)serializeAttributesAndBody:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = [v3 attributeSet];
  [v5 encodeObject:v6];

  v7 = [HVSearchableItemSerializedAttributes alloc];
  v8 = [v5 data];
  v9 = [v3 attributeSet];
  v10 = [v9 HTMLContentDataNoCopy];
  v11 = [(HVSearchableItemSerializedAttributes *)v7 initWithAttributeSetData:v8 attributeSetCoder:v5 htmlContentData:v10];

  objc_autoreleasePoolPop(v4);

  return v11;
}

+ (id)htmlContentDataNoCopyRetainingBackingBuffer:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 attributeSet];
  v6 = [v5 HTMLContentDataNoCopy];

  if (v6)
  {
    if ([v6 length] < 0xC9)
    {
      v7 = [v3 attributeSet];
      v8 = [v7 HTMLContentData];

      objc_autoreleasePoolPop(v4);
      goto LABEL_6;
    }

    objc_setAssociatedObject(v6, sel_htmlContentDataNoCopyRetainingBackingBuffer_, v3, 1);
  }

  objc_autoreleasePoolPop(v4);
  v8 = v6;
LABEL_6:

  return v8;
}

+ (id)textContentNoCopyRetainingBackingBuffer:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 attributeSet];
  v6 = [v5 textContentNoCopy];

  if (v6)
  {
    if ([(__CFString *)v6 length]< 0xC9)
    {
      v7 = [v3 attributeSet];
      v8 = [v7 textContent];

      objc_autoreleasePoolPop(v4);
      goto LABEL_7;
    }

    if (CFStringGetCharactersPtr(v6))
    {
      objc_setAssociatedObject(v6, sel_textContentNoCopyRetainingBackingBuffer_, v3, 1);
      [(__CFString *)v6 _pas_setRetainsConmingledBackingStore:1];
    }
  }

  objc_autoreleasePoolPop(v4);
  v8 = v6;
LABEL_7:

  return v8;
}

+ (BOOL)mailItemIsTooBig:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 attributeSet];
  v5 = [v4 HTMLContentDataNoCopy];
  v6 = [v5 length];

  if (v6 > 0xC8000)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 uniqueIdentifier];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is too big", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 > 0xC8000;
}

+ (BOOL)mailItemIsInTrash:(id)a3
{
  v4 = a3;
  v5 = [v4 attributeSet];
  v6 = [v5 mailboxIdentifiers];
  LOBYTE(a1) = [a1 mailItemIsInTrash:v4 mailboxIdentifiers:v6];

  return a1;
}

+ (BOOL)mailItemIsInSent:(id)a3
{
  v4 = a3;
  v5 = [v4 attributeSet];
  v6 = [v5 mailboxIdentifiers];
  LOBYTE(a1) = [a1 mailItemIsInSent:v4 mailboxIdentifiers:v6];

  return a1;
}

+ (BOOL)mailItemIsInDrafts:(id)a3
{
  v4 = a3;
  v5 = [v4 attributeSet];
  v6 = [v5 mailboxIdentifiers];
  LOBYTE(a1) = [a1 mailItemIsInDrafts:v4 mailboxIdentifiers:v6];

  return a1;
}

+ (BOOL)mailItemIsSPAM:(id)a3
{
  v4 = a3;
  v5 = [v4 attributeSet];
  v6 = [v5 emailHeaders];
  v7 = [v4 attributeSet];
  v8 = [v7 mailboxIdentifiers];
  LOBYTE(a1) = [a1 mailItemIsSPAM:v4 emailHeaders:v6 mailboxIdentifiers:v8];

  return a1;
}

+ (BOOL)mailItemIsValid:(id)a3
{
  v4 = a3;
  v5 = [v4 attributeSet];
  v6 = [v5 emailHeaders];
  v7 = [v4 attributeSet];
  v8 = [v7 mailboxIdentifiers];
  LOBYTE(a1) = [a1 mailItemIsValid:v4 emailHeaders:v6 mailboxIdentifiers:v8];

  return a1;
}

+ (BOOL)mailItemIsRecent:(id)a3
{
  v4 = a3;
  v5 = [v4 attributeSet];
  v6 = [v5 emailHeaders];
  LOBYTE(a1) = [a1 mailItemIsRecent:v4 emailHeaders:v6];

  return a1;
}

+ (BOOL)mailItemIsSPAM:(id)a3 emailHeaders:(id)a4 mailboxIdentifiers:(id)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 containsObject:*MEMORY[0x277CC2330]])
  {
    v10 = hv_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 uniqueIdentifier];
      *buf = 138543362;
      v72 = v11;
      v12 = "Item %{public}@ spam - in junk mailbox";
LABEL_45:
      _os_log_impl(&dword_2321EC000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (!v8)
  {
    v10 = hv_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 uniqueIdentifier];
      *buf = 138543362;
      v72 = v11;
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
      v11 = [v7 uniqueIdentifier];
      *buf = 138543362;
      v72 = v11;
      v12 = "invalid item %{public}@ - email headers are not a dictionary";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = v8;
  v13 = [v10 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (!v13)
  {
    v40 = 0;
    goto LABEL_47;
  }

  v14 = v13;
  v56 = v9;
  v57 = v8;
  v58 = v7;
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
    v19 = [v17 lowercaseString];
    if ([v19 isEqualToString:@"x-spam-level"])
    {
      v20 = [v10 objectForKeyedSubscript:v17];
      v21 = [v20 firstObject];

      if ([v21 hasPrefix:@"*****"])
      {
        v43 = hv_default_log_handle();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        v7 = v58;
        if (!v44)
        {
          goto LABEL_62;
        }

        v45 = [v58 uniqueIdentifier];
        *buf = 138543362;
        v72 = v45;
        v46 = "Item %{public}@ spam - spam assasin header";
        goto LABEL_61;
      }

      goto LABEL_19;
    }

    if ([v19 isEqualToString:@"x-ms-exchange-organization-pcl"])
    {
      v22 = [v10 objectForKeyedSubscript:v17];
      v21 = [v22 firstObject];

      if ([v21 integerValue] >= 4)
      {
        v43 = hv_default_log_handle();
        v49 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        v7 = v58;
        if (!v49)
        {
          goto LABEL_62;
        }

        v45 = [v58 uniqueIdentifier];
        *buf = 138543362;
        v72 = v45;
        v46 = "Item %{public}@ spam - exchange pcl header";
        goto LABEL_61;
      }

      goto LABEL_19;
    }

    if ([v19 isEqualToString:@"x-ms-exchange-organization-scl"])
    {
      v23 = [v10 objectForKeyedSubscript:v17];
      v21 = [v23 firstObject];

      if ([v21 integerValue] >= 5)
      {
        v43 = hv_default_log_handle();
        v7 = v58;
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
LABEL_62:

          goto LABEL_63;
        }

        v45 = [v58 uniqueIdentifier];
        *buf = 138543362;
        v72 = v45;
        v46 = "Item %{public}@ spam - exchange scl header";
LABEL_61:
        _os_log_impl(&dword_2321EC000, v43, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);

        goto LABEL_62;
      }

LABEL_19:

      goto LABEL_20;
    }

    if (![v19 isEqualToString:@"x-tm-as-result"])
    {
      if ([v19 isEqualToString:@"x-proofpoint-spam-details"])
      {
        context = objc_autoreleasePoolPush();
        v29 = [v10 objectForKeyedSubscript:v17];
        v30 = [v29 firstObject];

        v31 = context;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v54 = v30;
        obj = [v30 componentsSeparatedByString:@" "];
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
                  v7 = v58;
                  v48 = [v58 uniqueIdentifier];
                  *buf = 138543618;
                  v72 = v48;
                  v73 = 2112;
                  v74 = v33;
                  _os_log_impl(&dword_2321EC000, v47, OS_LOG_TYPE_DEFAULT, "Item %{public}@ spam - has x-proofpoint-spam-details rule match: %@", buf, 0x16u);

LABEL_58:
                  objc_autoreleasePoolPop(v34);

                  objc_autoreleasePoolPop(context);
                  goto LABEL_63;
                }

LABEL_57:
                v7 = v58;
                goto LABEL_58;
              }

              if (([v33 hasPrefix:@"spamscore="] & 1) != 0 || objc_msgSend(v33, "hasPrefix:", @"phishscore="))
              {
                v35 = [v33 rangeOfString:@"=" options:2];
                v37 = [v33 substringFromIndex:v35 + v36];
                v38 = [v37 integerValue];

                if (v38 >= 80)
                {
                  v47 = hv_default_log_handle();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                  {
                    v7 = v58;
                    v50 = [v58 uniqueIdentifier];
                    *buf = 138543618;
                    v72 = v50;
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
    v26 = [v25 firstObject];

    v27 = [v26 lowercaseString];
    v28 = [v27 hasPrefix:@"yes"];

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
        v7 = v58;
        goto LABEL_64;
      }

      goto LABEL_8;
    }
  }

  v51 = hv_default_log_handle();
  v7 = v58;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [v58 uniqueIdentifier];
    *buf = 138543362;
    v72 = v52;
    _os_log_impl(&dword_2321EC000, v51, OS_LOG_TYPE_DEFAULT, "Item %{public}@ spam - trend micro header", buf, 0xCu);
  }

  v18 = v61;
LABEL_63:

  objc_autoreleasePoolPop(v18);
  v40 = 1;
LABEL_64:
  v9 = v56;
  v8 = v57;
LABEL_47:

  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

+ (BOOL)searchableItemIsOutgoing:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [v3 attributeSet];
  v6 = [v5 accountHandles];
  v7 = [v4 initWithArray:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v3 attributeSet];
  v9 = [v8 authorAddresses];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([v7 containsObject:*(*(&v17 + 1) + 8 * i)])
        {
          LODWORD(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
    v14 = [v3 uniqueIdentifier];
    *buf = 138543618;
    v22 = v14;
    v23 = 1024;
    v24 = v10;
    _os_log_impl(&dword_2321EC000, v13, OS_LOG_TYPE_DEFAULT, "searchableItemIsOutgoing %{public}@: %d", buf, 0x12u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)searchableItemIsEmpty:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 attributeSet];
  v5 = [v4 HTMLContentDataNoCopy];
  if (v5)
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [v4 textContentNoCopy];

  if (v6)
  {
    goto LABEL_4;
  }

  v10 = hv_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 uniqueIdentifier];
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_2321EC000, v10, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is empty", &v12, 0xCu);
  }

  v7 = 1;
LABEL_5:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)mailItemIsFromSupportedAccount:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 attributeSet];
  v5 = [v4 accountType];

  if (!v5)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 uniqueIdentifier];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ missing account type", &v11, 0xCu);
    }

    goto LABEL_8;
  }

  if ([v5 isEqual:*MEMORY[0x277CC2210]] & 1) != 0 || (objc_msgSend(v5, "isEqual:", *MEMORY[0x277CC2220]))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = [v5 isEqual:*MEMORY[0x277CC2208]];
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)mailItemIsInTrash:(id)a3 mailboxIdentifiers:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 containsObject:*MEMORY[0x277CC2340]];
  if (v6)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 uniqueIdentifier];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ in trash mailbox", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)mailItemIsInSent:(id)a3 mailboxIdentifiers:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 containsObject:*MEMORY[0x277CC2338]];
  if (v6)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 uniqueIdentifier];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ in sent mailbox", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)mailItemIsInDrafts:(id)a3 mailboxIdentifiers:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 containsObject:*MEMORY[0x277CC2320]];
  if (v6)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 uniqueIdentifier];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is in draft mailbox", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)mailItemIsValid:(id)a3 emailHeaders:(id)a4 mailboxIdentifiers:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 bundleID];

  if (!v10)
  {
    v13 = hv_default_log_handle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v15 = [v8 uniqueIdentifier];
    v21 = 138543362;
    v22 = v15;
    v16 = "Item %{public}@ is malformed - no bundleID";
LABEL_14:
    _os_log_impl(&dword_2321EC000, v13, OS_LOG_TYPE_DEFAULT, v16, &v21, 0xCu);
    goto LABEL_15;
  }

  if (!a4)
  {
    v13 = hv_default_log_handle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v15 = [v8 uniqueIdentifier];
    v21 = 138543362;
    v22 = v15;
    v16 = "Item %{public}@ not valid - no value for emailHeaders";
    goto LABEL_14;
  }

  v11 = [a1 mailItemMessageIdHeaderValues:v8];

  if (!v11)
  {
    v13 = hv_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 uniqueIdentifier];
      v21 = 138543362;
      v22 = v15;
      v16 = "Item %{public}@ not valid - no message-id header";
      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v12 = [v8 attributeSet];
  v13 = [v12 accountIdentifier];

  if (!v13)
  {
    v15 = hv_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 uniqueIdentifier];
      v21 = 138543362;
      v22 = v19;
      v20 = "Item %{public}@ is malformed - no source";
LABEL_22:
      _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, v20, &v21, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v9 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = hv_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 uniqueIdentifier];
      v21 = 138543362;
      v22 = v19;
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

+ (id)messageIdHeaderValuesFromHeaders:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 objectForKeyedSubscript:@"message-id"];
  if (v5 || ([v3 objectForKeyedSubscript:@"Message-id"], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "objectForKeyedSubscript:", @"Message-Id"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "objectForKeyedSubscript:", @"MESSAGE-ID"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v3;
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

+ (id)mailItemMessageIdHeaderValues:(id)a3
{
  v4 = [a3 attributeSet];
  v5 = [v4 emailHeaders];

  if (v5)
  {
    v6 = [a1 messageIdHeaderValuesFromHeaders:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)mailItemIsRecent:(id)a3 emailHeaders:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 attributeSet];
  v8 = [v7 contentCreationDate];

  if (!v8)
  {
    v9 = hv_default_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v16 = [v5 uniqueIdentifier];
    *buf = 138543362;
    v42 = v16;
    _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "No contentCreationDate on searchable item with id: %{public}@", buf, 0xCu);
LABEL_8:

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v9 dateByAddingTimeInterval:-31536000.0];
    [v8 timeIntervalSince1970];
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

      v15 = [v5 uniqueIdentifier];
      *buf = 138544130;
      v42 = v15;
      v43 = 2114;
      v44 = v8;
      v45 = 2114;
      v46 = v9;
      v47 = 2114;
      v48 = v10;
      _os_log_impl(&dword_2321EC000, v14, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is older than a year (creationDate: %{public}@, now: %{public}@, cutoff: %{public}@)", buf, 0x2Au);
LABEL_28:

      goto LABEL_29;
    }

    v14 = [v9 dateByAddingTimeInterval:-2592000.0];
    [v8 timeIntervalSince1970];
    v19 = v18;
    [v14 timeIntervalSince1970];
    if (v19 < v20)
    {
      v21 = @"list-id";
      if (v6)
      {
        v22 = [v6 objectForKey:@"list-id"];

        if (!v22)
        {
          v35 = v14;
          v36 = v10;
          context = objc_autoreleasePoolPush();
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v23 = [v6 allKeys];
          v24 = [v23 countByEnumeratingWithState:&v37 objects:buf count:16];
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
                  objc_enumerationMutation(v23);
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

              v25 = [v23 countByEnumeratingWithState:&v37 objects:buf count:16];
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
        v15 = hv_default_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v5 uniqueIdentifier];
          *buf = 138544130;
          v42 = v31;
          v43 = 2114;
          v44 = v8;
          v45 = 2114;
          v46 = v9;
          v47 = 2114;
          v48 = v14;
          _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "Item %{public}@ is a group message older than a month (creationDate: %{public}@, now: %{public}@, cutoff: %{public}@)", buf, 0x2Au);
        }

        goto LABEL_28;
      }
    }

    v17 = 1;
    goto LABEL_32;
  }

  v9 = hv_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v16 = [v5 uniqueIdentifier];
    *buf = 138543362;
    v42 = v16;
    _os_log_fault_impl(&dword_2321EC000, v9, OS_LOG_TYPE_FAULT, "Invalid contentCreationDate on searchable item %{public}@ sent", buf, 0xCu);
    goto LABEL_8;
  }

LABEL_10:
  v17 = 0;
LABEL_33:

  v32 = *MEMORY[0x277D85DE8];
  return v17;
}

@end