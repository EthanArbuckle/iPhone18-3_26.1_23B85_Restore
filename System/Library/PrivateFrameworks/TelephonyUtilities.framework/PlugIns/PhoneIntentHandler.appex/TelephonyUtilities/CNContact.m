@interface CNContact
- (BOOL)tu_labeledValue:(id)a3 matchesPersonHandleLabel:(id)a4;
- (id)tu_emailAddressesMatchingPersonHandleLabel:(id)a3;
- (id)tu_personHandleMatchingHandle:(id)a3 isoCountryCodes:(id)a4;
- (id)tu_phoneNumbersMatchingPersonHandleLabel:(id)a3;
@end

@implementation CNContact

- (id)tu_phoneNumbersMatchingPersonHandleLabel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CNContact *)self phoneNumbers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![v4 length] || -[CNContact tu_labeledValue:matchesPersonHandleLabel:](self, "tu_labeledValue:matchesPersonHandleLabel:", v11, v4))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)tu_emailAddressesMatchingPersonHandleLabel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CNContact *)self emailAddresses];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![v4 length] || -[CNContact tu_labeledValue:matchesPersonHandleLabel:](self, "tu_labeledValue:matchesPersonHandleLabel:", v11, v4))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (BOOL)tu_labeledValue:(id)a3 matchesPersonHandleLabel:(id)a4
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
    v8 = [v5 label];
    if ([v8 length] && !objc_msgSend(v8, "caseInsensitiveCompare:", v6))
    {
      v10 = 1;
    }

    else
    {
      v9 = [CNLabeledValue localizedStringForLabel:v8];
      v10 = [v9 length] && !objc_msgSend(v9, "caseInsensitiveCompare:", v6);
    }
  }

  return v10;
}

- (id)tu_personHandleMatchingHandle:(id)a3 isoCountryCodes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = &AnalyticsSendEventLazy_ptr;
  v9 = [INPersonHandle alloc];
  v10 = [v9 tu_initUnlabledPersonHandleWithTUHandle:v6 isoCountryCodes:v7];

  if ([v10 type] == 2)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [(CNContact *)self phoneNumbers];
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v29 = v7;
      v30 = v10;
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = [TUHandle alloc];
          v17 = [v15 value];
          v18 = [v17 stringValue];
          v19 = [v16 initWithType:2 value:v18];

          if (TUHandlesAreCanonicallyEqual())
          {
            v7 = v29;
            goto LABEL_22;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v7 = v29;
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
    v11 = [(CNContact *)self emailAddresses];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
            objc_enumerationMutation(v11);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          v23 = [TUHandle alloc];
          v24 = [v22 value];
          v19 = [v23 initWithType:3 value:v24];

          if (TUHandlesAreCanonicallyEqual())
          {
LABEL_22:
            v12 = INPersonHandleLabelForCNLabeledValue();

            goto LABEL_23;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
  v26 = [v10 value];
  v27 = [v25 initWithValue:v26 type:objc_msgSend(v10 label:{"type"), v12}];

  return v27;
}

@end