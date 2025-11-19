@interface SKGProcessor(People)
- (SKGPersonComponents)personWithName:()People alternateName:contactIdentifier:personIdentifier:emails:phones:addresses:;
- (id)accountOwnerFromRecord:()People;
- (id)authorFromMessageRecord:()People;
- (id)authorsFromPhoneRecord:()People;
- (id)contactFromRecord:()People;
- (id)createdScoreFromRecord:()People;
- (id)lastEditorFromRecord:()People;
- (id)ownerFromRecord:()People;
- (id)peopleForAttributeKey:()People fromRecord:;
- (id)peopleForSharedAttributeKey:()People fromRecord:;
- (id)peopleFromNotesRecord:()People;
- (id)peopleFromPhotoRecord:()People;
- (id)recipientsFromPhoneRecord:()People;
- (id)scoreFromDate:()People;
- (id)viewedScoreFromRecord:()People;
- (uint64_t)generateMegadomePeopleUsingBlock:()People cancelBlock:;
- (uint64_t)generatePeopleForRecord:()People processedItem:processedItemBlock:cancelBlock:;
@end

@implementation SKGProcessor(People)

- (id)scoreFromDate:()People
{
  if (a3)
  {
    MEMORY[0x238376E40](a3);
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  else
  {
    v4 = &unk_2846E88B0;
  }

  return v4;
}

- (id)createdScoreFromRecord:()People
{
  v4 = a3;
  if (v4 && ((v5 = copyDateValueForKey()) != 0 || (v5 = copyDateValueForKey()) != 0 || (v5 = copyDateValueForKey()) != 0 || (v5 = copyDateValueForKey()) != 0))
  {
    v6 = v5;
    v7 = [a1 scoreFromDate:v5];
  }

  else
  {
    v7 = &unk_2846E88B0;
  }

  return v7;
}

- (id)viewedScoreFromRecord:()People
{
  v4 = a3;
  if (v4 && ((v5 = copyDateValueForKey()) != 0 || (v5 = copyDateValueForKey()) != 0))
  {
    v6 = v5;
    v7 = [a1 scoreFromDate:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contactFromRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyStringValueForKey();
  v7 = copyStringValueForKey();
  v8 = copyArrayValueForKey();
  v9 = copyArrayValueForKey();
  v10 = copyArrayValueForKey();
  v11 = 0;
  if (v6 && v7 && v8)
  {
    if ([v8 count] < 2 || !objc_msgSend(v9, "count") && !objc_msgSend(v10, "count"))
    {
      v11 = 0;
      goto LABEL_16;
    }

    v11 = [a1 personWithName:v7 alternateName:0 contactIdentifier:v6 personIdentifier:0 emails:v9 phones:v10 addresses:0];
    v12 = [v11 nameComponents];
    v13 = [v12 firstObject];

    v14 = [v13 givenName];
    if (v14)
    {
      v25 = v14;
      v15 = [v13 givenName];
      v16 = [v8 firstObject];
      v26 = v15;
      v17 = v15;
      v18 = v16;
      if ([v17 isEqualToString:v16] && (objc_msgSend(v13, "familyName"), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = v19;
        v24 = [v13 familyName];
        v21 = [v8 lastObject];
        v22 = [v24 isEqualToString:v21];

        if (v22)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v13 = v11;
    v11 = 0;
LABEL_15:
  }

LABEL_16:

  objc_autoreleasePoolPop(v5);

  return v11;
}

- (id)authorFromMessageRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyStringValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = copyArrayValueForKey();
  v10 = copyArrayValueForKey();
  v11 = copyArrayValueForKey();
  v12 = v11;
  if (!v6 && !v7 && !v8 && !v10 && !v11)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v14 = [v7 count];
  if (v14)
  {
    v18 = [v7 firstObject];
  }

  else
  {
    v18 = 0;
  }

  if ([v12 count])
  {
    [v12 firstObject];
    v15 = v17 = v5;
    v13 = [a1 personWithName:v18 alternateName:v6 contactIdentifier:v15 personIdentifier:0 emails:v8 phones:v9 addresses:v10];

    v5 = v17;
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = [a1 personWithName:v18 alternateName:v6 contactIdentifier:0 personIdentifier:0 emails:v8 phones:v9 addresses:v10];
  if (v14)
  {
LABEL_12:
  }

LABEL_13:

  objc_autoreleasePoolPop(v5);

  return v13;
}

- (id)peopleFromPhotoRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = copyArrayValueForKey();
  v10 = copyArrayValueForKey();
  v11 = v10;
  if (v6 || v7 || v8 || v9 || v10)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__23;
    v20 = __Block_byref_object_dispose__23;
    v21 = 0;
    v13 = objc_autoreleasePoolPush();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__SKGProcessor_People__peopleFromPhotoRecord___block_invoke;
    v15[3] = &unk_27893F058;
    v15[4] = a1;
    v15[5] = &v16;
    enumerateParallelContactInfo(v6, v7, v8, 0, v9, v11, v15);
    objc_autoreleasePoolPop(v13);
    v12 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (id)authorsFromPhoneRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v6 count];
    if (v10 == [(__CFArray *)v7 count])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__23;
      v18 = __Block_byref_object_dispose__23;
      v19 = 0;
      v11 = objc_autoreleasePoolPush();
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__SKGProcessor_People__authorsFromPhoneRecord___block_invoke;
      v13[3] = &unk_27893F058;
      v13[4] = a1;
      v13[5] = &v14;
      enumerateParallelContactInfo(v6, v7, 0, 0, v8, 0, v13);
      objc_autoreleasePoolPop(v11);
      v9 = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return v9;
}

- (id)recipientsFromPhoneRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v6 count];
    if (v10 == [(__CFArray *)v7 count])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__23;
      v18 = __Block_byref_object_dispose__23;
      v19 = 0;
      v11 = objc_autoreleasePoolPush();
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __50__SKGProcessor_People__recipientsFromPhoneRecord___block_invoke;
      v13[3] = &unk_27893F058;
      v13[4] = a1;
      v13[5] = &v14;
      enumerateParallelContactInfo(v6, v7, 0, 0, v8, 0, v13);
      objc_autoreleasePoolPop(v11);
      v9 = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return v9;
}

- (id)peopleFromNotesRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = v8;
  if (v6 || v7 || v8)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__23;
    v18 = __Block_byref_object_dispose__23;
    v19 = 0;
    v11 = objc_autoreleasePoolPush();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__SKGProcessor_People__peopleFromNotesRecord___block_invoke;
    v13[3] = &unk_27893F058;
    v13[4] = a1;
    v13[5] = &v14;
    enumerateParallelContactInfo(v6, v7, v9, 0, 0, 0, v13);
    objc_autoreleasePoolPop(v11);
    v10 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)accountOwnerFromRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  if (v6)
  {
    v7 = [a1 personWithName:0 alternateName:0 contactIdentifier:0 personIdentifier:0 emails:v6 phones:0 addresses:0];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)ownerFromRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyStringValueForKey();
  if (v6)
  {
    v7 = [a1 personWithName:v6 alternateName:0 contactIdentifier:0 personIdentifier:0 emails:0 phones:0 addresses:0];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)lastEditorFromRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyStringValueForKey();
  if (v6)
  {
    v7 = [a1 personWithName:v6 alternateName:0 contactIdentifier:0 personIdentifier:0 emails:0 phones:0 addresses:0];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)peopleForAttributeKey:()People fromRecord:
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 isEqualToString:@"People"];
  v9 = @"s";
  if (v8)
  {
    v9 = &stru_2846CE8D8;
  }

  v31 = v9;
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@%@", v5, v31];
  v10 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@EmailAddresses", v5];
  v11 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@PhoneNumbers", v5];
  v12 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@Addresses", v5];
  v32 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@ContactIdentifiers", v5];
  v13 = copyArrayValueForKey();
  if ([v5 isEqualToString:@"Recipient"])
  {
    v29 = v7;
    [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemPrimary%@EmailAddresses", v5];
    v14 = copyArrayValueForKey();
    v15 = v14;
    if (v14)
    {
      if (!v10 || (v16 = [v14 count], v16 == objc_msgSend(v10, "count")))
      {
        v17 = v15;

        v11 = v17;
      }
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemPrimary%@PhoneNumbers", v5];
    v18 = copyArrayValueForKey();
    v19 = v18;
    if (v18)
    {
      if (!v10 || (v20 = [v18 count], v20 == objc_msgSend(v10, "count")))
      {
        v21 = v19;

        v12 = v21;
      }
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemPrimary%@Addresses", v5];
    v22 = copyArrayValueForKey();
    v23 = v22;
    if (v22 && (!v10 || (v24 = [v22 count], v24 == objc_msgSend(v10, "count"))))
    {
      v25 = v23;
    }

    else
    {
      v25 = v32;
    }

    v7 = v29;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v25 = v32;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  if (!v11 && !v12 && !v13)
  {
    v26 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__23;
  v38 = __Block_byref_object_dispose__23;
  v39 = 0;
  v27 = objc_autoreleasePoolPush();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __57__SKGProcessor_People__peopleForAttributeKey_fromRecord___block_invoke;
  v33[3] = &unk_27893F058;
  v33[4] = a1;
  v33[5] = &v34;
  enumerateParallelContactInfo(v10, v11, v12, v25, v13, 0, v33);
  objc_autoreleasePoolPop(v27);
  v26 = v35[5];
  _Block_object_dispose(&v34, 8);

LABEL_25:
  objc_autoreleasePoolPop(v7);

  return v26;
}

- (id)peopleForSharedAttributeKey:()People fromRecord:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemUserShared%@", v6];
  v9 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemUserShared%@Handle", v6];
  v10 = copyArrayValueForKey();
  if (v9 | v10)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__23;
    v19 = __Block_byref_object_dispose__23;
    v20 = 0;
    v12 = objc_autoreleasePoolPush();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__SKGProcessor_People__peopleForSharedAttributeKey_fromRecord___block_invoke;
    v14[3] = &unk_27893F058;
    v14[4] = a1;
    v14[5] = &v15;
    enumerateParallelContactInfo(v9, v10, 0, 0, 0, 0, v14);
    objc_autoreleasePoolPop(v12);
    v11 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (SKGPersonComponents)personWithName:()People alternateName:contactIdentifier:personIdentifier:emails:phones:addresses:
{
  v94 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v14 = a4;
  v45 = a5;
  v46 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__23;
  v89 = __Block_byref_object_dispose__23;
  v90 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__23;
  v83 = __Block_byref_object_dispose__23;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__23;
  v77 = __Block_byref_object_dispose__23;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__23;
  v71 = __Block_byref_object_dispose__23;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__23;
  v65 = __Block_byref_object_dispose__23;
  v66 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__SKGProcessor_People__personWithName_alternateName_contactIdentifier_personIdentifier_emails_phones_addresses___block_invoke;
  aBlock[3] = &unk_27893F080;
  aBlock[4] = &v85;
  aBlock[5] = &v79;
  aBlock[6] = &v73;
  aBlock[7] = &v67;
  aBlock[8] = &v61;
  v18 = _Block_copy(aBlock);
  context = objc_autoreleasePoolPush();
  enumerateInfoInString(v47, v18);
  enumerateInfoInString(v14, v18);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v56 objects:v93 count:16];
  if (v20)
  {
    v21 = *v57;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(v19);
        }

        enumerateInfoInString(*(*(&v56 + 1) + 8 * i), v18);
      }

      v20 = [v19 countByEnumeratingWithState:&v56 objects:v93 count:{16, context}];
    }

    while (v20);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v52 objects:v92 count:16];
  if (v24)
  {
    v25 = *v53;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v53 != v25)
        {
          objc_enumerationMutation(v23);
        }

        enumerateInfoInString(*(*(&v52 + 1) + 8 * j), v18);
      }

      v24 = [v23 countByEnumeratingWithState:&v52 objects:v92 count:16];
    }

    while (v24);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = v17;
  v28 = [v27 countByEnumeratingWithState:&v48 objects:v91 count:16];
  if (v28)
  {
    v29 = *v49;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v27);
        }

        enumerateInfoInString(*(*(&v48 + 1) + 8 * k), v18);
      }

      v28 = [v27 countByEnumeratingWithState:&v48 objects:v91 count:16];
    }

    while (v28);
  }

  if (v80[5] && v86[5] && v74[5] || [v68[5] count] || objc_msgSend(v62[5], "count"))
  {
    v31 = [SKGPersonComponents alloc];
    v32 = [(SKGPersonComponents *)v31 initWithEmailAddresses:v68[5] phoneNumbers:v62[5]];
    if ([v80[5] count])
    {
      v33 = [v80[5] count];
      if (v33 == [v74[5] count])
      {
        v34 = [v80[5] count];
        if (v34 == [v86[5] count])
        {
          for (m = 0; m < [v80[5] count]; ++m)
          {
            v36 = [v80[5] objectAtIndexedSubscript:m];
            v37 = [v74[5] objectAtIndexedSubscript:m];
            v38 = [v86[5] objectAtIndexedSubscript:m];
            v39 = v38;
            if (v36)
            {
              v40 = v38 == 0;
            }

            else
            {
              v40 = 1;
            }

            if (!v40 && v37 != 0)
            {
              [(SKGPersonComponents *)v32 addName:v36 nameComponents:v38 displayName:v37];
            }
          }
        }
      }
    }

    [(SKGPersonComponents *)v32 setContactIdentifier:v45, context];
    [(SKGPersonComponents *)v32 setPhotosPersonIdentifier:v46];
  }

  else
  {
    v32 = 0;
  }

  objc_autoreleasePoolPop(context);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v85, 8);
  v42 = *MEMORY[0x277D85DE8];

  return v32;
}

- (uint64_t)generatePeopleForRecord:()People processedItem:processedItemBlock:cancelBlock:
{
  v126[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [v11 bundleIdentifier];
    v16 = [v15 isEqualToString:@"com.apple.MobileAddressBook"];

    if (v16)
    {
      v17 = [a1 contactFromRecord:v10];
      v18 = v17;
      if (v17)
      {
        v126[0] = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:1];
        [v11 addParticipants:v19];
      }

      v20 = [v11 participants];

      if (!v20)
      {
        goto LABEL_43;
      }

      v21 = [a1 viewedScoreFromRecord:v10];
      if (!v21)
      {
        goto LABEL_15;
      }

LABEL_14:
      [v11 addInteraction:@"viewedDate" score:v21];
LABEL_15:

LABEL_43:
      goto LABEL_44;
    }

    v23 = [v11 bundleIdentifier];
    v24 = [v23 isEqualToString:@"com.apple.mobilenotes"];

    if (v24)
    {
      v25 = [a1 peopleFromNotesRecord:v10];
      goto LABEL_11;
    }

    v29 = [v11 bundleIdentifier];
    v30 = [v29 isEqualToString:@"com.apple.mobilephone"];

    if (v30)
    {
      v18 = [a1 authorsFromPhoneRecord:v10];
      if ([v18 count])
      {
        [v11 addAuthors:v18];
      }

      else
      {
        v45 = [a1 recipientsFromPhoneRecord:v10];
        if ([v45 count])
        {
          [v11 addRecipients:v45];
        }
      }

      v46 = [v11 authors];
      if ([v46 count])
      {
      }

      else
      {
        v47 = [v11 recipients];
        v48 = [v47 count];

        if (!v48)
        {
          goto LABEL_43;
        }
      }

      v36 = [a1 createdScoreFromRecord:v10];
      [v11 addInteraction:@"creationDate" score:v36];
      v49 = [a1 viewedScoreFromRecord:v10];
      v50 = v49;
      if (v49 && ([v49 isEqualToNumber:v36] & 1) == 0)
      {
        [v11 addInteraction:@"viewedDate" score:v50];
      }

LABEL_42:
      goto LABEL_43;
    }

    v31 = [v11 bundleIdentifier];
    v32 = [v31 isEqualToString:@"com.apple.MobileSMS"];

    if (v32)
    {
      v33 = [a1 accountOwnerFromRecord:v10];
      v18 = v33;
      if (v33)
      {
        v125 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
        [v11 addOwners:v34];
      }

      v35 = [a1 authorFromMessageRecord:v10];
      v36 = v35;
      if (v35)
      {
        v124 = v35;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
        [v11 addAuthors:v37];
      }

      v38 = [a1 peopleForAttributeKey:@"Recipient" fromRecord:v10];
      [v11 addRecipients:v38];

      v39 = [v11 owners];
      if (v39)
      {
      }

      else
      {
        v73 = [v11 authors];
        if (!v73)
        {
          goto LABEL_42;
        }

        v74 = v73;
        v75 = [v11 recipients];

        if (!v75)
        {
          goto LABEL_42;
        }
      }

      v40 = [a1 createdScoreFromRecord:v10];
      [v11 addInteraction:@"creationDate" score:v40];
      v41 = [a1 viewedScoreFromRecord:v10];
      v42 = v41;
      if (v41 && ([v41 isEqualToNumber:v40] & 1) == 0)
      {
        [v11 addInteraction:@"viewedDate" score:v42];
      }

      goto LABEL_42;
    }

    v43 = [v11 bundleIdentifier];
    v44 = [v43 isEqualToString:@"com.apple.mobileslideshow"];

    if (v44)
    {
      v25 = [a1 peopleFromPhotoRecord:v10];
LABEL_11:
      v26 = v25;
      [v11 addParticipants:v25];

      v27 = [v11 participants];

      if (!v27)
      {
LABEL_44:
        objc_autoreleasePoolPop(v14);
        v22 = v12[2](v12, v11);
        goto LABEL_45;
      }

      v18 = [a1 createdScoreFromRecord:v10];
      [v11 addInteraction:@"creationDate" score:v18];
      v28 = [a1 viewedScoreFromRecord:v10];
      v21 = v28;
      if (!v28 || ([v28 isEqualToNumber:v18] & 1) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v53 = [a1 peopleForSharedAttributeKey:@"ReceivedSender" fromRecord:v10];
    v54 = [a1 peopleForSharedAttributeKey:@"ReceivedRecipient" fromRecord:v10];
    v55 = [a1 peopleForSharedAttributeKey:@"SentSender" fromRecord:v10];
    v115 = [a1 peopleForSharedAttributeKey:@"SentRecipient" fromRecord:v10];
    context = v14;
    v106 = v55;
    if (v53)
    {
      v56 = [v53 count];
      if (v56 == [v54 count])
      {
        v108 = copyArrayValueForKey();
        v107 = copyArrayValueForKey();
        v93 = [v108 count];
        if ([v107 count] == v93 && v93 == objc_msgSend(v53, "count") && v93)
        {
          v57 = 0;
          v91 = (v12 + 2);
          v101 = v54;
          v103 = v53;
          do
          {
            v112 = [v53 objectAtIndexedSubscript:{v57, v91}];
            v109 = [v54 objectAtIndexedSubscript:v57];
            v97 = [v107 objectAtIndexedSubscript:v57];
            v99 = [v108 objectAtIndexedSubscript:v57];
            v95 = [a1 scoreFromDate:v99];
            v58 = [v11 referenceIdentifier];
            v59 = [v11 bundleIdentifier];
            v60 = [v11 protectionClass];
            v61 = [a1 itemFromRecord:v10 referenceIdentifier:v58 bundleIdentifier:v59 protectionClass:v60];

            v123 = v112;
            v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
            [v61 addAuthors:v62];

            v122 = v109;
            v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v122 count:1];
            [v61 addRecipients:v63];

            [v61 addInteraction:v97 score:v95];
            LOBYTE(v63) = v12[2](v12, v61);

            if ((v63 & 1) == 0)
            {
              goto LABEL_84;
            }

            ++v57;
            v54 = v101;
            v53 = v103;
          }

          while (v93 != v57);
        }

        v14 = context;
        v55 = v106;
      }
    }

    if (v55)
    {
      v64 = [v55 count];
      v65 = v64 == [v115 count];
      v14 = context;
      if (!v65)
      {
        goto LABEL_66;
      }

      v101 = v54;
      v103 = v53;
      v108 = copyArrayValueForKey();
      v107 = copyArrayValueForKey();
      v94 = [v108 count];
      if ([v107 count] == v94 && v94 == objc_msgSend(v106, "count") && v94)
      {
        v66 = 0;
        v92 = (v12 + 2);
        while (1)
        {
          v113 = [v106 objectAtIndexedSubscript:{v66, v92}];
          v110 = [v115 objectAtIndexedSubscript:v66];
          v98 = [v107 objectAtIndexedSubscript:v66];
          v100 = [v108 objectAtIndexedSubscript:v66];
          v96 = [a1 scoreFromDate:v100];
          v67 = [v11 referenceIdentifier];
          v68 = [v11 bundleIdentifier];
          v69 = [v11 protectionClass];
          v70 = [a1 itemFromRecord:v10 referenceIdentifier:v67 bundleIdentifier:v68 protectionClass:v69];

          v121 = v113;
          v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
          [v70 addAuthors:v71];

          v120 = v110;
          v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
          [v70 addRecipients:v72];

          [v70 addInteraction:v98 score:v96];
          LOBYTE(v72) = v12[2](v12, v70);

          if ((v72 & 1) == 0)
          {
            break;
          }

          if (v94 == ++v66)
          {
            goto LABEL_64;
          }
        }

LABEL_84:

        objc_autoreleasePoolPop(context);
        v22 = 0;
        goto LABEL_45;
      }

LABEL_64:

      v53 = v103;
      v14 = context;
      v54 = v101;
      v55 = v106;
    }

    if (v53 | v55)
    {
LABEL_66:

      goto LABEL_44;
    }

    v102 = v54;
    v114 = [a1 peopleForAttributeKey:@"Author" fromRecord:v10];
    [v11 addAuthors:?];
    v111 = [a1 peopleForAttributeKey:@"Recipient" fromRecord:v10];
    [v11 addRecipients:?];
    v76 = [a1 accountOwnerFromRecord:v10];
    v77 = v76;
    if (v76)
    {
      v119 = v76;
      v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
      [v11 addOwners:v78];

      v14 = context;
    }

    v104 = v53;
    v79 = [a1 ownerFromRecord:v10];
    v80 = v79;
    if (v79)
    {
      v118 = v79;
      v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
      [v11 addParticipants:v81];

      v14 = context;
    }

    v82 = [a1 lastEditorFromRecord:v10];
    v83 = v82;
    if (v80 && v82)
    {
      v117[0] = v80;
      v117[1] = v82;
      v84 = MEMORY[0x277CBEA60];
      v85 = v117;
      v86 = 2;
    }

    else
    {
      if (!v82)
      {
        goto LABEL_80;
      }

      v116 = v82;
      v84 = MEMORY[0x277CBEA60];
      v85 = &v116;
      v86 = 1;
    }

    v87 = [v84 arrayWithObjects:v85 count:v86];
    [v11 addParticipants:v87];

LABEL_80:
    v88 = [a1 createdScoreFromRecord:v10];
    [v11 addInteraction:@"creationDate" score:v88];
    v89 = [a1 viewedScoreFromRecord:v10];
    v90 = v89;
    if (v89 && ([v89 isEqualToNumber:v88] & 1) == 0)
    {
      [v11 addInteraction:@"viewedDate" score:v90];
    }

    goto LABEL_44;
  }

  v22 = 1;
LABEL_45:

  v51 = *MEMORY[0x277D85DE8];
  return v22;
}

- (uint64_t)generateMegadomePeopleUsingBlock:()People cancelBlock:
{
  v5 = a3;
  v6 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D1F480] defaultService];
  v23 = 0;
  v9 = [v8 visualIdentifierViewWithError:&v23];
  v10 = v23;
  v11 = v25;
  v12 = *(v25 + 24);
  if (v6 && (v12 & 1) != 0)
  {
    v13 = v6[2](v6, @"processPeopleFromRecord:megadome") ^ 1;
    v11 = v25;
  }

  else
  {
    v13 = v12 != 0;
  }

  *(v11 + 24) = v13;
  if (!v10 && v13)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SKGProcessor_People__generateMegadomePeopleUsingBlock_cancelBlock___block_invoke;
    v16[3] = &unk_27893F0A8;
    v17 = v5;
    v19 = v21;
    v20 = &v24;
    v18 = v6;
    [v9 enumeratePeopleWithBlock:v16];

    _Block_object_dispose(v21, 8);
  }

  objc_autoreleasePoolPop(v7);
  v14 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return v14;
}

@end