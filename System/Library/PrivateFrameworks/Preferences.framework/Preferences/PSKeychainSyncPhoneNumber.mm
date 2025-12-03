@interface PSKeychainSyncPhoneNumber
+ (id)phoneNumberWithDigits:(id)digits countryInfo:(id)info;
- (id)_stringByAddingDialingPrefixToString:(id)string;
- (id)formattedAndObfuscatedString;
- (id)formattedString;
- (id)formattedStringWithDialingPrefix;
@end

@implementation PSKeychainSyncPhoneNumber

+ (id)phoneNumberWithDigits:(id)digits countryInfo:(id)info
{
  infoCopy = info;
  digitsCopy = digits;
  v7 = objc_alloc_init(PSKeychainSyncPhoneNumber);
  [(PSKeychainSyncPhoneNumber *)v7 setDigits:digitsCopy];

  [(PSKeychainSyncPhoneNumber *)v7 setCountryInfo:infoCopy];

  return v7;
}

- (id)_stringByAddingDialingPrefixToString:(id)string
{
  stringCopy = string;
  countryInfo = [(PSKeychainSyncPhoneNumber *)self countryInfo];
  dialingPrefix = [countryInfo dialingPrefix];
  v7 = [dialingPrefix length];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    countryInfo2 = [(PSKeychainSyncPhoneNumber *)self countryInfo];
    dialingPrefix2 = [countryInfo2 dialingPrefix];
    stringCopy = [v8 stringWithFormat:@"+%@ %@", dialingPrefix2, stringCopy];

    stringCopy = stringCopy;
  }

  return stringCopy;
}

- (id)formattedString
{
  digits = [(PSKeychainSyncPhoneNumber *)self digits];
  countryInfo = [(PSKeychainSyncPhoneNumber *)self countryInfo];
  countryCode = [countryInfo countryCode];

  if ([countryCode length])
  {
    lowercaseString = [countryCode lowercaseString];
    digits2 = [(PSKeychainSyncPhoneNumber *)self digits];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v8 = getCFPhoneNumberCreateSymbolLoc_ptr;
    v20 = getCFPhoneNumberCreateSymbolLoc_ptr;
    if (!getCFPhoneNumberCreateSymbolLoc_ptr)
    {
      v9 = PhoneNumbersLibrary_0();
      v18[3] = dlsym(v9, "CFPhoneNumberCreate");
      getCFPhoneNumberCreateSymbolLoc_ptr = v18[3];
      v8 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (v8)
    {
      v10 = v8(0, digits2, lowercaseString);
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = v10;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v12 = getCFPhoneNumberCreateStringSymbolLoc_ptr;
      v20 = getCFPhoneNumberCreateStringSymbolLoc_ptr;
      if (!getCFPhoneNumberCreateStringSymbolLoc_ptr)
      {
        v13 = PhoneNumbersLibrary_0();
        v18[3] = dlsym(v13, "CFPhoneNumberCreateString");
        getCFPhoneNumberCreateStringSymbolLoc_ptr = v18[3];
        v12 = v18[3];
      }

      _Block_object_dispose(&v17, 8);
      if (v12)
      {
        v14 = v12(0, v11, 1);

        CFRelease(v11);
        digits = v14;
        goto LABEL_10;
      }
    }

    else
    {
      [PSContactsAuthorizationLevelController dealloc];
    }

    v16 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v16);
  }

LABEL_10:

  return digits;
}

- (id)formattedStringWithDialingPrefix
{
  formattedString = [(PSKeychainSyncPhoneNumber *)self formattedString];
  v4 = [(PSKeychainSyncPhoneNumber *)self _stringByAddingDialingPrefixToString:formattedString];

  return v4;
}

- (id)formattedAndObfuscatedString
{
  formattedString = [(PSKeychainSyncPhoneNumber *)self formattedString];
  if ([formattedString length] < 3)
  {
    v4 = formattedString;
  }

  else
  {
    v4 = [formattedString mutableCopy];
    9679 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 9679];
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v7 = [v4 length];
    if (v7 - 1 >= 0)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        if ([decimalDigitCharacterSet characterIsMember:{objc_msgSend(v4, "characterAtIndex:", --v8)}])
        {
          if (v9 > 1)
          {
            [v4 replaceCharactersInRange:v8 withString:{1, 9679}];
          }

          else
          {
            ++v9;
          }
        }
      }

      while (v8 > 0);
    }
  }

  v10 = [(PSKeychainSyncPhoneNumber *)self _stringByAddingDialingPrefixToString:v4];

  return v10;
}

@end