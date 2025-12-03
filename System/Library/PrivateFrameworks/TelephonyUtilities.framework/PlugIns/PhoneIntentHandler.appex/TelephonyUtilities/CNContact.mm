@interface CNContact
- (BOOL)tu_labeledValue:(id)value matchesPersonHandleLabel:(id)label;
- (id)tu_emailAddressesMatchingPersonHandleLabel:(id)label;
- (id)tu_personHandleMatchingHandle:(id)handle isoCountryCodes:(id)codes;
- (id)tu_phoneNumbersMatchingPersonHandleLabel:(id)label;
@end

@implementation CNContact

- (id)tu_phoneNumbersMatchingPersonHandleLabel:(id)label
{
  labelCopy = label;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  phoneNumbers = [(CNContact *)self phoneNumbers];
  v7 = [phoneNumbers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![labelCopy length] || -[CNContact tu_labeledValue:matchesPersonHandleLabel:](self, "tu_labeledValue:matchesPersonHandleLabel:", v11, labelCopy))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [phoneNumbers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)tu_emailAddressesMatchingPersonHandleLabel:(id)label
{
  labelCopy = label;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  emailAddresses = [(CNContact *)self emailAddresses];
  v7 = [emailAddresses countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![labelCopy length] || -[CNContact tu_labeledValue:matchesPersonHandleLabel:](self, "tu_labeledValue:matchesPersonHandleLabel:", v11, labelCopy))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [emailAddresses countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (BOOL)tu_labeledValue:(id)value matchesPersonHandleLabel:(id)label
{
  valueCopy = value;
  labelCopy = label;
  v7 = INPersonHandleLabelForCNLabeledValue();
  if ([v7 length] && !objc_msgSend(v7, "caseInsensitiveCompare:", labelCopy))
  {
    v10 = 1;
  }

  else
  {
    label = [valueCopy label];
    if ([label length] && !objc_msgSend(label, "caseInsensitiveCompare:", labelCopy))
    {
      v10 = 1;
    }

    else
    {
      v9 = [CNLabeledValue localizedStringForLabel:label];
      v10 = [v9 length] && !objc_msgSend(v9, "caseInsensitiveCompare:", labelCopy);
    }
  }

  return v10;
}

- (id)tu_personHandleMatchingHandle:(id)handle isoCountryCodes:(id)codes
{
  handleCopy = handle;
  codesCopy = codes;
  v8 = &AnalyticsSendEventLazy_ptr;
  v9 = [INPersonHandle alloc];
  v10 = [v9 tu_initUnlabledPersonHandleWithTUHandle:handleCopy isoCountryCodes:codesCopy];

  if ([v10 type] == 2)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    phoneNumbers = [(CNContact *)self phoneNumbers];
    v12 = [phoneNumbers countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v29 = codesCopy;
      v30 = v10;
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = [TUHandle alloc];
          value = [v15 value];
          stringValue = [value stringValue];
          v19 = [v16 initWithType:2 value:stringValue];

          if (TUHandlesAreCanonicallyEqual())
          {
            codesCopy = v29;
            goto LABEL_22;
          }
        }

        v12 = [phoneNumbers countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      codesCopy = v29;
LABEL_23:
      v10 = v30;
      v8 = &AnalyticsSendEventLazy_ptr;
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if ([v10 type] == 1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    phoneNumbers = [(CNContact *)self emailAddresses];
    v12 = [phoneNumbers countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v12)
    {
      v30 = v10;
      v20 = *v32;
      while (2)
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          v23 = [TUHandle alloc];
          value2 = [v22 value];
          v19 = [v23 initWithType:3 value:value2];

          if (TUHandlesAreCanonicallyEqual())
          {
LABEL_22:
            v12 = INPersonHandleLabelForCNLabeledValue();

            goto LABEL_23;
          }
        }

        v12 = [phoneNumbers countByEnumeratingWithState:&v31 objects:v39 count:16];
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
  v25 = objc_alloc(v8[272]);
  value3 = [v10 value];
  v27 = [v25 initWithValue:value3 type:objc_msgSend(v10 label:{"type"), v12}];

  return v27;
}

@end