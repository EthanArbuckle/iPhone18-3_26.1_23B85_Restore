@interface POConstantCoreUtil
+ (__CFString)algorithmForString:(id)a3;
+ (id)stringForEncryptionAlgorithm:(id)a3;
+ (id)stringForKeyType:(int64_t)a3;
+ (id)stringForLoginPolicy:(unint64_t)a3;
+ (id)stringForLoginPolicyState:(unint64_t)a3;
+ (id)stringForLoginResult:(unint64_t)a3;
+ (id)stringForLoginType:(unint64_t)a3;
+ (id)stringForSEPBiometricPolicy:(unint64_t)a3;
+ (id)stringForSigningAlgorithm:(id)a3;
+ (id)stringForUserAuthorizationMode:(int64_t)a3;
+ (id)stringForUserState:(int64_t)a3;
+ (int64_t)userAuthorizationModeWithString:(id)a3;
@end

@implementation POConstantCoreUtil

+ (id)stringForSEPBiometricPolicy:(unint64_t)a3
{
  if (!a3)
  {
    v4 = @"None";
    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a3 & 2) == 0)
    {
      if ((a3 & 4) == 0)
      {
        v4 = &stru_28708EE58;
        if ((a3 & 8) == 0)
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

    if ((a3 & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v5 = [&stru_28708EE58 stringByAppendingString:@"TouchIDOrWatchCurrentSet"];
  v4 = v5;
  if ((a3 & 2) != 0)
  {
    v6 = [(__CFString *)v5 stringByAppendingString:@", "];

    goto LABEL_14;
  }

  if ((a3 & 4) != 0)
  {
LABEL_15:
    v7 = [(__CFString *)v4 stringByAppendingString:@", "];

LABEL_17:
    v4 = [(__CFString *)v7 stringByAppendingString:@"ReuseDuringUnlock"];

    if ((a3 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_10:
  if ((a3 & 8) != 0)
  {
LABEL_18:
    v8 = [(__CFString *)v4 stringByAppendingString:@", "];

    v4 = v8;
    goto LABEL_19;
  }

LABEL_20:
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12 = [v10 stringWithFormat:@"%@ (%@)", v4, v11];

  return v12;
}

+ (id)stringForLoginType:(unint64_t)a3
{
  v3 = @"POLoginTypeRefresh";
  v4 = @"POLoginTypePlatformSSOToken";
  if (a3 != 101)
  {
    v4 = 0;
  }

  if (a3 != 100)
  {
    v3 = v4;
  }

  v5 = @"POLoginTypeSmartCard";
  v6 = @"POLoginTypeAccessKey";
  if (a3 != 4)
  {
    v6 = 0;
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 <= 99)
  {
    v3 = v5;
  }

  v7 = @"POLoginTypeNone";
  v8 = @"POLoginTypePassword";
  v9 = @"POLoginTypeUserSecureEnclaveKey";
  if (a3 != 2)
  {
    v9 = 0;
  }

  if (a3 != 1)
  {
    v8 = v9;
  }

  if (a3)
  {
    v7 = v8;
  }

  if (a3 <= 2)
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

+ (id)stringForUserState:(int64_t)a3
{
  if (a3 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3E148[a3];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForLoginResult:(unint64_t)a3
{
  if (a3 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3E180[a3];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForKeyType:(int64_t)a3
{
  if ((a3 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return off_279A3E1B8[a3 - 1];
  }
}

+ (__CFString)algorithmForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ECIESEncryptionStandardX963SHA512AESGCM"])
  {
    v4 = MEMORY[0x277CDC348];
LABEL_5:
    v5 = *v4;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"ECIESEncryptionStandardX963SHA384AESGCM"])
  {
    v4 = MEMORY[0x277CDC340];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"ECIESEncryptionStandardX963SHA256AESGCM"])
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

+ (int64_t)userAuthorizationModeWithString:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"none"];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 lowercaseString];
    v8 = [v7 isEqualToString:@"standard"];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = [v3 lowercaseString];
      v10 = [v9 isEqualToString:@"admin"];

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v11 = [v3 lowercaseString];
        v12 = [v11 isEqualToString:@"groups"];

        if (v12)
        {
          v6 = 3;
        }

        else
        {
          v13 = [v3 lowercaseString];
          v14 = [v13 isEqualToString:@"temporary"];

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

+ (id)stringForUserAuthorizationMode:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_279A3E258[a3];
  }
}

+ (id)stringForSigningAlgorithm:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToNumber:0x2870A9198])
  {
    v4 = @"ES256";
  }

  else if ([v3 isEqualToNumber:0x2870A91B0])
  {
    v4 = @"ES384";
  }

  else if ([v3 isEqualToNumber:0x2870A91C8])
  {
    v4 = @"Ed25519";
  }

  else if (v3)
  {
    v4 = @"unknown signing algorithm";
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

+ (id)stringForEncryptionAlgorithm:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToNumber:0x2870A9198])
  {
    v4 = @"ECDHE-A256GCM";
  }

  else if ([v3 isEqualToNumber:0x2870A91B0])
  {
    v4 = @"HPKE-P256-SHA256-A256GCM";
  }

  else if ([v3 isEqualToNumber:0x2870A91C8])
  {
    v4 = @"HPKE-P384-SHA384-A256GCM";
  }

  else if ([v3 isEqualToNumber:0x2870A91E0])
  {
    v4 = @"HPKE-X25519-SHA256-ChaCha20Poly1305";
  }

  else if (v3)
  {
    v4 = @"unknown encryption algorithm";
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

+ (id)stringForLoginPolicy:(unint64_t)a3
{
  if (!a3)
  {
    v4 = @"None";
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
    if ((a3 & 2) == 0)
    {
      if ((a3 & 4) == 0)
      {
        if ((a3 & 8) == 0)
        {
          v4 = &stru_28708EE58;
          if ((a3 & 0x10) == 0)
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

      if ((a3 & 8) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v6 = &stru_28708EE58;
LABEL_16:
    v4 = [(__CFString *)v6 stringByAppendingString:@"RequireAuthentication"];

    if ((a3 & 4) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v5 = [&stru_28708EE58 stringByAppendingString:@"AttemptAuthentication"];
  v4 = v5;
  if ((a3 & 2) != 0)
  {
    v6 = [(__CFString *)v5 stringByAppendingString:@", "];

    goto LABEL_16;
  }

  if ((a3 & 4) != 0)
  {
LABEL_17:
    v7 = [(__CFString *)v4 stringByAppendingString:@", "];

    goto LABEL_19;
  }

LABEL_11:
  if ((a3 & 8) != 0)
  {
LABEL_20:
    v8 = [(__CFString *)v4 stringByAppendingString:@", "];

LABEL_21:
    v4 = [(__CFString *)v8 stringByAppendingString:@"AllowAuthenticationGracePeriod"];

    if ((a3 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_12:
  if ((a3 & 0x10) != 0)
  {
LABEL_22:
    v9 = [(__CFString *)v4 stringByAppendingString:@", "];

    v4 = v9;
    goto LABEL_23;
  }

LABEL_24:
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v13 = [v11 stringWithFormat:@"%@ (%@)", v4, v12];

  return v13;
}

+ (id)stringForLoginPolicyState:(unint64_t)a3
{
  if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3E280[a3];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

@end