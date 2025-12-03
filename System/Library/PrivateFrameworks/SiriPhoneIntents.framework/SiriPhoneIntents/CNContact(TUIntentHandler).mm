@interface CNContact(TUIntentHandler)
- (BOOL)tu_labeledValue:()TUIntentHandler matchesPersonHandleLabel:;
- (id)tu_emailAddressesMatchingPersonHandleLabel:()TUIntentHandler;
- (id)tu_personHandleMatchingHandle:()TUIntentHandler isoCountryCodes:;
- (id)tu_phoneNumbersMatchingPersonHandleLabel:()TUIntentHandler;
@end

@implementation CNContact(TUIntentHandler)

- (id)tu_phoneNumbersMatchingPersonHandleLabel:()TUIntentHandler
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  phoneNumbers = [self phoneNumbers];
  v7 = [phoneNumbers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (![v4 length] || objc_msgSend(self, "tu_labeledValue:matchesPersonHandleLabel:", v11, v4))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [phoneNumbers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)tu_emailAddressesMatchingPersonHandleLabel:()TUIntentHandler
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  emailAddresses = [self emailAddresses];
  v7 = [emailAddresses countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (![v4 length] || objc_msgSend(self, "tu_labeledValue:matchesPersonHandleLabel:", v11, v4))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [emailAddresses countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)tu_labeledValue:()TUIntentHandler matchesPersonHandleLabel:
{
  v5 = a3;
  v6 = a4;
  v7 = INPersonHandleLabelForCNLabeledValue();
  if ([v7 length] && !objc_msgSend(v7, "caseInsensitiveCompare:", v6))
  {
    v10 = 1;
  }

  else
  {
    label = [v5 label];
    if ([label length] && !objc_msgSend(label, "caseInsensitiveCompare:", v6))
    {
      v10 = 1;
    }

    else
    {
      v9 = [MEMORY[0x277CBDB20] localizedStringForLabel:label];
      v10 = [v9 length] && !objc_msgSend(v9, "caseInsensitiveCompare:", v6);
    }
  }

  return v10;
}

- (id)tu_personHandleMatchingHandle:()TUIntentHandler isoCountryCodes:
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = 0x277CD3000uLL;
  v9 = objc_alloc(MEMORY[0x277CD3E98]);
  v10 = [v9 tu_initUnlabledPersonHandleWithTUHandle:v6 isoCountryCodes:v7];

  if ([v10 type] == 2)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    phoneNumbers = [self phoneNumbers];
    v12 = [phoneNumbers countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v12)
    {
      v30 = v7;
      v31 = v10;
      v13 = *v37;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = objc_alloc(MEMORY[0x277D6EEE8]);
          value = [v15 value];
          stringValue = [value stringValue];
          v19 = [v16 initWithType:2 value:stringValue];

          if (TUHandlesAreCanonicallyEqual())
          {
            v7 = v30;
            goto LABEL_22;
          }
        }

        v12 = [phoneNumbers countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v7 = v30;
LABEL_23:
      v10 = v31;
      v8 = 0x277CD3000;
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if ([v10 type] == 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    phoneNumbers = [self emailAddresses];
    v12 = [phoneNumbers countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v12)
    {
      v31 = v10;
      v20 = *v33;
      while (2)
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v22 = *(*(&v32 + 1) + 8 * j);
          v23 = objc_alloc(MEMORY[0x277D6EEE8]);
          value2 = [v22 value];
          v19 = [v23 initWithType:3 value:value2];

          if (TUHandlesAreCanonicallyEqual())
          {
LABEL_22:
            v12 = INPersonHandleLabelForCNLabeledValue();

            goto LABEL_23;
          }
        }

        v12 = [phoneNumbers countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v12)
        {
          continue;
        }

        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_26;
  }

  v12 = 0;
LABEL_26:
  v25 = objc_alloc(*(v8 + 3736));
  value3 = [v10 value];
  v27 = [v25 initWithValue:value3 type:objc_msgSend(v10 label:{"type"), v12}];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

@end