@interface POConstantCoreUtil
+ (__CFString)algorithmForString:(id)string;
+ (id)stringForEncryptionAlgorithm:(id)algorithm;
+ (id)stringForKeyType:(int64_t)type;
+ (id)stringForLoginPolicy:(unint64_t)policy;
+ (id)stringForLoginPolicyState:(unint64_t)state;
+ (id)stringForLoginResult:(unint64_t)result;
+ (id)stringForLoginType:(unint64_t)type;
+ (id)stringForSEPBiometricPolicy:(unint64_t)policy;
+ (id)stringForSigningAlgorithm:(id)algorithm;
+ (id)stringForUserAuthorizationMode:(int64_t)mode;
+ (id)stringForUserState:(int64_t)state;
+ (int64_t)userAuthorizationModeWithString:(id)string;
@end

@implementation POConstantCoreUtil

+ (id)stringForSEPBiometricPolicy:(unint64_t)policy
{
  if (!policy)
  {
    v4 = @"None";
    goto LABEL_20;
  }

  if ((policy & 1) == 0)
  {
    if ((policy & 2) == 0)
    {
      if ((policy & 4) == 0)
      {
        v4 = &stru_28708EE58;
        if ((policy & 8) == 0)
        {
          goto LABEL_20;
        }

LABEL_19:
        v9 = [(__CFString *)v4 stringByAppendingString:@"PasswordFallback"];

        v4 = v9;
        goto LABEL_20;
      }

      v7 = &stru_28708EE58;
      goto LABEL_17;
    }

    v6 = &stru_28708EE58;
LABEL_14:
    v4 = [(__CFString *)v6 stringByAppendingString:@"TouchIDOrWatchAny"];

    if ((policy & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v5 = [&stru_28708EE58 stringByAppendingString:@"TouchIDOrWatchCurrentSet"];
  v4 = v5;
  if ((policy & 2) != 0)
  {
    v6 = [(__CFString *)v5 stringByAppendingString:@", "];

    goto LABEL_14;
  }

  if ((policy & 4) != 0)
  {
LABEL_15:
    v7 = [(__CFString *)v4 stringByAppendingString:@", "];

LABEL_17:
    v4 = [(__CFString *)v7 stringByAppendingString:@"ReuseDuringUnlock"];

    if ((policy & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_10:
  if ((policy & 8) != 0)
  {
LABEL_18:
    v8 = [(__CFString *)v4 stringByAppendingString:@", "];

    v4 = v8;
    goto LABEL_19;
  }

LABEL_20:
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:policy];
  v12 = [v10 stringWithFormat:@"%@ (%@)", v4, v11];

  return v12;
}

+ (id)stringForLoginType:(unint64_t)type
{
  v3 = @"POLoginTypeRefresh";
  v4 = @"POLoginTypePlatformSSOToken";
  if (type != 101)
  {
    v4 = 0;
  }

  if (type != 100)
  {
    v3 = v4;
  }

  v5 = @"POLoginTypeSmartCard";
  v6 = @"POLoginTypeAccessKey";
  if (type != 4)
  {
    v6 = 0;
  }

  if (type != 3)
  {
    v5 = v6;
  }

  if (type <= 99)
  {
    v3 = v5;
  }

  v7 = @"POLoginTypeNone";
  v8 = @"POLoginTypePassword";
  v9 = @"POLoginTypeUserSecureEnclaveKey";
  if (type != 2)
  {
    v9 = 0;
  }

  if (type != 1)
  {
    v8 = v9;
  }

  if (type)
  {
    v7 = v8;
  }

  if (type <= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v3;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v13 = [v11 stringWithFormat:@"%@ (%@)", v10, v12];

  return v13;
}

+ (id)stringForUserState:(int64_t)state
{
  if (state > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3E148[state];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForLoginResult:(unint64_t)result
{
  if (result > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3E180[result];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForKeyType:(int64_t)type
{
  if ((type - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return off_279A3E1B8[type - 1];
  }
}

+ (__CFString)algorithmForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"ECIESEncryptionStandardX963SHA512AESGCM"])
  {
    v4 = MEMORY[0x277CDC348];
LABEL_5:
    v5 = *v4;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"ECIESEncryptionStandardX963SHA384AESGCM"])
  {
    v4 = MEMORY[0x277CDC340];
    goto LABEL_5;
  }

  if ([stringCopy isEqualToString:@"ECIESEncryptionStandardX963SHA256AESGCM"])
  {
    v5 = *MEMORY[0x277CDC338];
  }

  else
  {
    v5 = 0;
  }

LABEL_9:

  return v5;
}

+ (int64_t)userAuthorizationModeWithString:(id)string
{
  stringCopy = string;
  lowercaseString = [stringCopy lowercaseString];
  v5 = [lowercaseString isEqualToString:@"none"];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    lowercaseString2 = [stringCopy lowercaseString];
    v8 = [lowercaseString2 isEqualToString:@"standard"];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      lowercaseString3 = [stringCopy lowercaseString];
      v10 = [lowercaseString3 isEqualToString:@"admin"];

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        lowercaseString4 = [stringCopy lowercaseString];
        v12 = [lowercaseString4 isEqualToString:@"groups"];

        if (v12)
        {
          v6 = 3;
        }

        else
        {
          lowercaseString5 = [stringCopy lowercaseString];
          v14 = [lowercaseString5 isEqualToString:@"temporary"];

          if (v14)
          {
            v6 = 4;
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }
  }

  return v6;
}

+ (id)stringForUserAuthorizationMode:(int64_t)mode
{
  if (mode > 4)
  {
    return 0;
  }

  else
  {
    return off_279A3E258[mode];
  }
}

+ (id)stringForSigningAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if ([algorithmCopy isEqualToNumber:0x2870A9198])
  {
    v4 = @"ES256";
  }

  else if ([algorithmCopy isEqualToNumber:0x2870A91B0])
  {
    v4 = @"ES384";
  }

  else if ([algorithmCopy isEqualToNumber:0x2870A91C8])
  {
    v4 = @"Ed25519";
  }

  else if (algorithmCopy)
  {
    v4 = @"unknown signing algorithm";
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

+ (id)stringForEncryptionAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if ([algorithmCopy isEqualToNumber:0x2870A9198])
  {
    v4 = @"ECDHE-A256GCM";
  }

  else if ([algorithmCopy isEqualToNumber:0x2870A91B0])
  {
    v4 = @"HPKE-P256-SHA256-A256GCM";
  }

  else if ([algorithmCopy isEqualToNumber:0x2870A91C8])
  {
    v4 = @"HPKE-P384-SHA384-A256GCM";
  }

  else if ([algorithmCopy isEqualToNumber:0x2870A91E0])
  {
    v4 = @"HPKE-X25519-SHA256-ChaCha20Poly1305";
  }

  else if (algorithmCopy)
  {
    v4 = @"unknown encryption algorithm";
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

+ (id)stringForLoginPolicy:(unint64_t)policy
{
  if (!policy)
  {
    v4 = @"None";
    goto LABEL_24;
  }

  if ((policy & 1) == 0)
  {
    if ((policy & 2) == 0)
    {
      if ((policy & 4) == 0)
      {
        if ((policy & 8) == 0)
        {
          v4 = &stru_28708EE58;
          if ((policy & 0x10) == 0)
          {
            goto LABEL_24;
          }

LABEL_23:
          v10 = [(__CFString *)v4 stringByAppendingString:@"AllowTouchIDOrWatchForUnlock"];

          v4 = v10;
          goto LABEL_24;
        }

        v8 = &stru_28708EE58;
        goto LABEL_21;
      }

      v7 = &stru_28708EE58;
LABEL_19:
      v4 = [(__CFString *)v7 stringByAppendingString:@"AllowOfflineGracePeriod"];

      if ((policy & 8) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v6 = &stru_28708EE58;
LABEL_16:
    v4 = [(__CFString *)v6 stringByAppendingString:@"RequireAuthentication"];

    if ((policy & 4) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v5 = [&stru_28708EE58 stringByAppendingString:@"AttemptAuthentication"];
  v4 = v5;
  if ((policy & 2) != 0)
  {
    v6 = [(__CFString *)v5 stringByAppendingString:@", "];

    goto LABEL_16;
  }

  if ((policy & 4) != 0)
  {
LABEL_17:
    v7 = [(__CFString *)v4 stringByAppendingString:@", "];

    goto LABEL_19;
  }

LABEL_11:
  if ((policy & 8) != 0)
  {
LABEL_20:
    v8 = [(__CFString *)v4 stringByAppendingString:@", "];

LABEL_21:
    v4 = [(__CFString *)v8 stringByAppendingString:@"AllowAuthenticationGracePeriod"];

    if ((policy & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_12:
  if ((policy & 0x10) != 0)
  {
LABEL_22:
    v9 = [(__CFString *)v4 stringByAppendingString:@", "];

    v4 = v9;
    goto LABEL_23;
  }

LABEL_24:
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:policy];
  v13 = [v11 stringWithFormat:@"%@ (%@)", v4, v12];

  return v13;
}

+ (id)stringForLoginPolicyState:(unint64_t)state
{
  if (state > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3E280[state];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

@end