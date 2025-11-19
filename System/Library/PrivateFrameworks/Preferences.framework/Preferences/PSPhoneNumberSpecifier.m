@interface PSPhoneNumberSpecifier
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation PSPhoneNumberSpecifier

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"cellObject"])
  {
    v8 = [v6 editableTextField];
    [v8 setDelegate:self];
  }

  v9.receiver = self;
  v9.super_class = PSPhoneNumberSpecifier;
  [(PSSpecifier *)&v9 setProperty:v6 forKey:v7];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [v9 text];
  if (location + length <= [v11 length])
  {
    v35 = v10;
    v12 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v11, "length")}];
    v13 = [v11 length];
    if (v13 - 1 >= 0)
    {
      v14 = v13;
      do
      {
        v15 = [v11 substringWithRange:{--v14, 1}];
        if ([@"()- /" rangeOfString:v15] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 insertString:v15 atIndex:0];
        }

        else if (v14 >= location)
        {
          length = (__PAIR128__(length, v14) - (length + location)) >> 64;
        }

        else
        {
          --location;
        }
      }

      while (v14 > 0);
    }

    v16 = [v12 stringByReplacingCharactersInRange:location withString:{length, v35}];

    v17 = v16;
    v18 = [v35 length];
    v19 = [(PSPhoneNumberSpecifier *)self countryCode];
    v20 = PSPNCreateFormattedStringWithCountry(v17, [v19 lowercaseString]);

    v21 = 0;
    if ([v17 length])
    {
      v22 = v18 + location;
      if (v18 + location)
      {
        v23 = 0;
        v21 = 0;
        do
        {
          v24 = [v17 characterAtIndex:v23];
          while (v21 < [v20 length] && objc_msgSend(v20, "characterAtIndex:", v21) != v24)
          {
            ++v21;
          }

          ++v21;
          ++v23;
        }

        while (v23 < [v17 length] && v23 < v22);
      }
    }

    if (!textField_shouldChangeCharactersInRange_replacementString__asciiMaker)
    {
      v25 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v26 = textField_shouldChangeCharactersInRange_replacementString__asciiMaker;
      textField_shouldChangeCharactersInRange_replacementString__asciiMaker = v25;
    }

    v27 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v20, "length")}];
    if ([v20 length])
    {
      v28 = 0;
      do
      {
        v29 = [v20 substringWithRange:{v28, 1}];
        v30 = [textField_shouldChangeCharactersInRange_replacementString__asciiMaker numberFromString:v29];
        v31 = v30;
        if (v30)
        {
          v32 = [v30 stringValue];
          [v27 appendString:v32];
        }

        else
        {
          [v27 appendString:v29];
        }

        ++v28;
      }

      while (v28 < [v20 length]);
    }

    v11 = v27;

    [v9 setText:v11];
    [v9 setSelectionRange:{v21, 0}];
    v33 = [MEMORY[0x1E696AD88] defaultCenter];
    [v33 postNotificationName:*MEMORY[0x1E69DE5C0] object:v9];

    v10 = v35;
  }

  return 0;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [(PSPhoneNumberSpecifier *)self countryCode];
  v7 = PSPNCreateFormattedStringWithCountry(v5, [v6 lowercaseString]);

  [v4 setText:v7];
}

@end