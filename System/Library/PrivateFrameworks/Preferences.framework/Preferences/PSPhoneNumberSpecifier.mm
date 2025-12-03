@interface PSPhoneNumberSpecifier
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)setProperty:(id)property forKey:(id)key;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation PSPhoneNumberSpecifier

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"cellObject"])
  {
    editableTextField = [propertyCopy editableTextField];
    [editableTextField setDelegate:self];
  }

  v9.receiver = self;
  v9.super_class = PSPhoneNumberSpecifier;
  [(PSSpecifier *)&v9 setProperty:propertyCopy forKey:keyCopy];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  if (location + length <= [text length])
  {
    v35 = stringCopy;
    v12 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(text, "length")}];
    v13 = [text length];
    if (v13 - 1 >= 0)
    {
      v14 = v13;
      do
      {
        v15 = [text substringWithRange:{--v14, 1}];
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
    countryCode = [(PSPhoneNumberSpecifier *)self countryCode];
    v20 = PSPNCreateFormattedStringWithCountry(v17, [countryCode lowercaseString]);

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
          stringValue = [v30 stringValue];
          [v27 appendString:stringValue];
        }

        else
        {
          [v27 appendString:v29];
        }

        ++v28;
      }

      while (v28 < [v20 length]);
    }

    text = v27;

    [fieldCopy setText:text];
    [fieldCopy setSelectionRange:{v21, 0}];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x1E69DE5C0] object:fieldCopy];

    stringCopy = v35;
  }

  return 0;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  text = [editingCopy text];
  countryCode = [(PSPhoneNumberSpecifier *)self countryCode];
  v7 = PSPNCreateFormattedStringWithCountry(text, [countryCode lowercaseString]);

  [editingCopy setText:v7];
}

@end