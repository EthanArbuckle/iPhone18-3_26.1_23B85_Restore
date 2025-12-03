@interface NSString
- (NSUUID)vm_UUIDv5;
- (id)pstnAddress;
@end

@implementation NSString

- (NSUUID)vm_UUIDv5
{
  v3 = [[NSUUID alloc] initWithUUIDString:self];
  if (!v3)
  {
    v3 = [NSUUID vm_UUIDv5ForString:self];
  }

  return v3;
}

- (id)pstnAddress
{
  mf_uncommentedAddress = [(NSString *)self mf_uncommentedAddress];
  v3 = [(__CFString *)mf_uncommentedAddress rangeOfString:@"@"];
  v4 = [(__CFString *)mf_uncommentedAddress length];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v4;
  }

  if (v3)
  {
    if (![(__CFString *)mf_uncommentedAddress compare:@"blocked" options:1 range:0, v3]|| ![(__CFString *)mf_uncommentedAddress compare:@"unknown" options:1 range:0, v3])
    {
      v11 = 0;
      goto LABEL_47;
    }

    v5 = [(__CFString *)mf_uncommentedAddress rangeOfString:@"/" options:8 range:0, v3];
    v7 = 0;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 -= v6;
      if (!v3)
      {
        goto LABEL_46;
      }

      v7 = &v5[v6];
    }

    v8 = [(__CFString *)mf_uncommentedAddress rangeOfString:@"/" options:0 range:v7, v3];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v3 = (v8 - v7), v8 != v7))
    {
      v9 = [(__CFString *)mf_uncommentedAddress rangeOfString:@"=" options:0 range:v7, v3];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v3 = 0;
        goto LABEL_46;
      }

      v12 = &v9[v10];
      v13 = &v3[v7 - &v9[v10]];
      v3 = [(__CFString *)mf_uncommentedAddress substringWithRange:&v9[v10], v13];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      theString = mf_uncommentedAddress;
      v43 = v12;
      v44 = v13;
      CharactersPtr = CFStringGetCharactersPtr(mf_uncommentedAddress);
      v14 = CharactersPtr ? 0 : CFStringGetCStringPtr(mf_uncommentedAddress, 0x600u);
      v45 = 0;
      v46 = 0;
      v42 = v14;
      if (v13)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 64;
        while (1)
        {
          v20 = v16 >= 4 ? 4 : v16;
          v21 = v44;
          if (v44 > v16)
          {
            break;
          }

LABEL_32:
          ++v16;
          --v15;
          ++v19;
          if (v13 == v16)
          {
            if (v17)
            {
              v30 = v17;

              v3 = v30;
            }

            goto LABEL_46;
          }
        }

        if (CharactersPtr)
        {
          v22 = &CharactersPtr[v43];
        }

        else
        {
          if (v42)
          {
            v23 = v43[v42 + v16];
LABEL_28:
            if ((v23 - 45) <= 1u)
            {
              if (!v17)
              {
                v17 = [v3 mutableCopy];
              }

              [v17 deleteCharactersInRange:{v16 - v18++, 1, v32, v33, v34, v35, v36, v37, v38, v39}];
            }

            goto LABEL_32;
          }

          v24 = v45;
          if (v46 <= v16 || v45 > v16)
          {
            v26 = v16 - v20;
            v27 = v20 + v15;
            v28 = v19 - v20;
            v29 = v26 + 64;
            if (v26 + 64 >= v44)
            {
              v29 = v44;
            }

            v45 = v26;
            v46 = v29;
            if (v44 >= v28)
            {
              v21 = v28;
            }

            v48.location = &v43[v26];
            v48.length = v21 + v27;
            CFStringGetCharacters(theString, v48, &v32);
            v24 = v45;
          }

          v22 = &v32 - v24;
        }

        v23 = v22[v16];
        goto LABEL_28;
      }
    }
  }

LABEL_46:
  v11 = v3;
LABEL_47:

  return v11;
}

@end