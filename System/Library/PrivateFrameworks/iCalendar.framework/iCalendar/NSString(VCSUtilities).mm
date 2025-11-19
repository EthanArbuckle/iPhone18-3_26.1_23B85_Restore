@interface NSString(VCSUtilities)
- (id)VCS_uncommentedAddress;
- (uint64_t)VCS_isPhoneNumber;
@end

@implementation NSString(VCSUtilities)

- (id)VCS_uncommentedAddress
{
  objc_sync_enter(@"AddressParsing");
  v2 = VCS_uncommentedAddress_uncommentedAddresses;
  if (!VCS_uncommentedAddress_uncommentedAddresses)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = VCS_uncommentedAddress_uncommentedAddresses;
    VCS_uncommentedAddress_uncommentedAddresses = v3;

    v2 = VCS_uncommentedAddress_uncommentedAddresses;
  }

  v5 = [v2 objectForKey:a1];
  objc_sync_exit(@"AddressParsing");
  if (!v5)
  {
    v6 = [a1 length];
    v7 = NSZoneMalloc(0, 2 * v6 + 2);
    v8 = v7;
    v9 = MEMORY[0x277D85DE0];
    v10 = v7;
    if (v6)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v23 = 0;
      v24 = 1;
      v10 = v7;
      do
      {
        v14 = [a1 characterAtIndex:v11];
        v15 = v14;
        if (v14 == 92)
        {
          if (v11 + 1 >= v6)
          {
            if ((v13 & 1) == 0)
            {
              if (v12 < 1)
              {
                goto LABEL_21;
              }

LABEL_18:
              v13 = 0;
              v12 -= v14 == 41;
              goto LABEL_27;
            }

LABEL_13:
            *v10 = v14;
            v10 += 2;
            v13 &= v14 != 34;
            goto LABEL_27;
          }

          *v10 = 92;
          *(v10 + 1) = [a1 characterAtIndex:v11 + 1];
          v10 += 4;
          ++v11;
        }

        else
        {
          if (v13)
          {
            goto LABEL_13;
          }

          if (v14 == 40)
          {
            v13 = 0;
            ++v12;
          }

          else
          {
            if (v12 > 0)
            {
              goto LABEL_18;
            }

            if (v14 != 60)
            {
              if ((v23 & (v14 == 62)) != 0)
              {
                break;
              }

              if (v14 > 0x7F)
              {
                if (__maskrune(v14, 0x4000uLL))
                {
LABEL_22:
                  v13 = 0;
                  if ((v24 & 1) == 0)
                  {
                    *v10 = 32;
                    v10 += 2;
                  }

                  v24 = 1;
                  goto LABEL_27;
                }
              }

              else
              {
LABEL_21:
                if ((*(v9 + 4 * v14 + 60) & 0x4000) != 0)
                {
                  goto LABEL_22;
                }
              }

              v24 = 0;
              *v10 = v15;
              v10 += 2;
              v13 |= v15 == 34;
              goto LABEL_27;
            }

            v13 = 0;
            v23 = 1;
            v10 = v8;
          }
        }

LABEL_27:
        ++v11;
      }

      while (v11 < v6);
    }

    v16 = v10 - v8;
    do
    {
      v17 = v10;
      v18 = v16;
      if (v10 <= v8)
      {
        break;
      }

      v10 -= 2;
      v19 = *(v17 - 1);
      v20 = v19 > 0x7F ? __maskrune(v19, 0x4000uLL) : *(v9 + 4 * v19 + 60) & 0x4000;
      v16 = v18 - 2;
    }

    while (v20);
    *v17 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v8 length:v18 >> 1];
    NSZoneFree(0, v8);
    objc_sync_enter(@"AddressParsing");
    [VCS_uncommentedAddress_uncommentedAddresses setObject:v5 forKey:a1];
    objc_sync_exit(@"AddressParsing");
  }

  v21 = v5;

  return v21;
}

- (uint64_t)VCS_isPhoneNumber
{
  v20 = *MEMORY[0x277D85DE8];
  if (VCS_isPhoneNumber_onceToken != -1)
  {
    [NSString(VCSUtilities) VCS_isPhoneNumber];
  }

  v2 = [a1 length];
  if (v2)
  {
    [VCS_isPhoneNumber_phoneNumberDetector matchesInString:a1 options:0 range:{0, v2}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v18 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([v8 resultType] == 32)
          {
            v9 = [v8 URL];
            v10 = [v9 scheme];
            v11 = [v10 isEqualToString:@"tel"];

            if (v11)
            {
              goto LABEL_16;
            }
          }

          else if ([v8 resultType] == 2048)
          {
LABEL_16:
            v12 = 1;
            goto LABEL_17;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_17:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end