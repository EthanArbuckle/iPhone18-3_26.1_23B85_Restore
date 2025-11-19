@interface PKPaymentSetupFieldsModel(PKUIAdditions)
- (double)minimumRequiredWidthForFieldIdentifiers:()PKUIAdditions withFont:;
@end

@implementation PKPaymentSetupFieldsModel(PKUIAdditions)

- (double)minimumRequiredWidthForFieldIdentifiers:()PKUIAdditions withFont:
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKUIGetMinScreenWidthType();
  v26 = *MEMORY[0x1E69DB648];
  v27[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [a1 paymentSetupFieldWithIdentifier:{*(*(&v21 + 1) + 8 * i), v21}];
        if (([v16 isFieldTypeLabel] & 1) == 0)
        {
          if (v8)
          {
            [v16 localizedDisplayName];
          }

          else
          {
            [v16 compactLocalizedDisplayName];
          }
          v17 = ;
          [v17 sizeWithAttributes:v9];
          v19 = v18;

          if (v19 > v14)
          {
            v14 = v19;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  return v14;
}

@end