@interface PSKeychainSyncPhoneNumber
+ (id)phoneNumberWithDigits:(id)a3 countryInfo:(id)a4;
- (id)_stringByAddingDialingPrefixToString:(id)a3;
- (id)formattedAndObfuscatedString;
- (id)formattedString;
- (id)formattedStringWithDialingPrefix;
@end

@implementation PSKeychainSyncPhoneNumber

+ (id)phoneNumberWithDigits:(id)a3 countryInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PSKeychainSyncPhoneNumber);
  [(PSKeychainSyncPhoneNumber *)v7 setDigits:v6];

  [(PSKeychainSyncPhoneNumber *)v7 setCountryInfo:v5];

  return v7;
}

- (id)_stringByAddingDialingPrefixToString:(id)a3
{
  v4 = a3;
  v5 = [(PSKeychainSyncPhoneNumber *)self countryInfo];
  v6 = [v5 dialingPrefix];
  v7 = [v6 length];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(PSKeychainSyncPhoneNumber *)self countryInfo];
    v10 = [v9 dialingPrefix];
    v11 = [v8 stringWithFormat:@"+%@ %@", v10, v4];

    v4 = v11;
  }

  return v4;
}

- (id)formattedString
{
  v3 = [(PSKeychainSyncPhoneNumber *)self digits];
  v4 = [(PSKeychainSyncPhoneNumber *)self countryInfo];
  v5 = [v4 countryCode];

  if ([v5 length])
  {
    v6 = [v5 lowercaseString];
    v7 = [(PSKeychainSyncPhoneNumber *)self digits];
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
      v10 = v8(0, v7, v6);
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
        v3 = v14;
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

  return v3;
}

- (id)formattedStringWithDialingPrefix
{
  v3 = [(PSKeychainSyncPhoneNumber *)self formattedString];
  v4 = [(PSKeychainSyncPhoneNumber *)self _stringByAddingDialingPrefixToString:v3];

  return v4;
}

- (id)formattedAndObfuscatedString
{
  v3 = [(PSKeychainSyncPhoneNumber *)self formattedString];
  if ([v3 length] < 3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 mutableCopy];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 9679];
    v6 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v7 = [v4 length];
    if (v7 - 1 >= 0)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        if ([v6 characterIsMember:{objc_msgSend(v4, "characterAtIndex:", --v8)}])
        {
          if (v9 > 1)
          {
            [v4 replaceCharactersInRange:v8 withString:{1, v5}];
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