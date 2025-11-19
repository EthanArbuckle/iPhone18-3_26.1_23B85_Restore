@interface NSError(VVError)
+ (id)errorWithDomain:()VVError code:localizedDescription:;
+ (id)errorWithStreamDomain:()VVError code:localizedDescription:;
- (BOOL)isConnectivityError;
- (BOOL)isEqualToError:()VVError;
- (BOOL)isExpiredPasswordError;
- (BOOL)isInvalidSubscriberError;
- (BOOL)isNewPasswordError;
- (BOOL)isPasswordMismatchError;
- (BOOL)isSecurityError;
- (BOOL)isStreamDomain:()VVError error:;
- (uint64_t)isServerError;
- (uint64_t)shouldPresentErrorForTaskType:()VVError;
@end

@implementation NSError(VVError)

+ (id)errorWithDomain:()VVError code:localizedDescription:
{
  v7 = a3;
  if (a5)
  {
    v8 = MEMORY[0x277CBEAC0];
    v9 = a5;
    v10 = [v8 alloc];
    a5 = [v10 initWithObjectsAndKeys:{v9, *MEMORY[0x277CCA450], 0}];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a4 userInfo:a5];

  return v11;
}

+ (id)errorWithStreamDomain:()VVError code:localizedDescription:
{
  if (a3 == 1)
  {
    v8 = MEMORY[0x277CCA5B8];
LABEL_9:
    v9 = *v8;
    goto LABEL_10;
  }

  if (*MEMORY[0x277CBF060] == a3)
  {
    v8 = MEMORY[0x277CCA670];
    goto LABEL_9;
  }

  if (*MEMORY[0x277CBAD38] == a3)
  {
    v8 = MEMORY[0x277CCA4A8];
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v8 = MEMORY[0x277CCA590];
    goto LABEL_9;
  }

  if (*MEMORY[0x277CBAD40] == a3)
  {
    v9 = @"NetDB";
  }

  else
  {
    v12 = @"*Unknown*";
    if (a3 == -1)
    {
      v12 = @"VVErrorDomain";
    }

    if (*MEMORY[0x277CBAD48] == a3)
    {
      v9 = @"SystemConfiguration";
    }

    else
    {
      v9 = v12;
    }
  }

LABEL_10:
  v10 = [a1 errorWithDomain:v9 code:a4 localizedDescription:a5];

  return v10;
}

- (BOOL)isEqualToError:()VVError
{
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v4 domain];
  if ([v5 isEqualToString:v6])
  {
    v7 = [a1 code];
    v8 = v7 == [v4 code];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isStreamDomain:()VVError error:
{
  if (a3 == 1)
  {
    v6 = MEMORY[0x277CCA5B8];
  }

  else if (*MEMORY[0x277CBF060] == a3)
  {
    v6 = MEMORY[0x277CCA670];
  }

  else if (*MEMORY[0x277CBAD38] == a3)
  {
    v6 = MEMORY[0x277CCA4A8];
  }

  else
  {
    if (a3 != 2)
    {
      if (*MEMORY[0x277CBAD40] == a3)
      {
        v7 = @"NetDB";
      }

      else
      {
        v11 = @"*Unknown*";
        if (a3 == -1)
        {
          v11 = @"VVErrorDomain";
        }

        if (*MEMORY[0x277CBAD48] == a3)
        {
          v7 = @"SystemConfiguration";
        }

        else
        {
          v7 = v11;
        }
      }

      goto LABEL_10;
    }

    v6 = MEMORY[0x277CCA590];
  }

  v7 = *v6;
  if (!v7)
  {
    return 0;
  }

LABEL_10:
  v8 = [a1 domain];
  if ([(__CFString *)v7 isEqualToString:v8])
  {
    v9 = [a1 code] == a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isPasswordMismatchError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"VVErrorDomain"];

  return v3 && ([a1 code] - 1006) > 0xFFFFFFFFFFFFFFFCLL;
}

- (BOOL)isExpiredPasswordError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"VVErrorDomain"])
  {
    v3 = [a1 code] == 1005;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isNewPasswordError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"VVErrorDomain"];

  return v3 && ([a1 code] & 0xFFFFFFFFFFFFFFF8) == 0x400;
}

- (BOOL)isInvalidSubscriberError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"VVErrorDomain"];

  return v3 && [a1 code] == 1006;
}

- (BOOL)isConnectivityError
{
  v2 = [a1 domain];
  v3 = streamDomains();
  v4 = [v3 containsObject:v2];

  if (v4)
  {
    goto LABEL_2;
  }

  if (![v2 isEqualToString:@"VVErrorDomain"])
  {
    v5 = 0;
    goto LABEL_7;
  }

  if ([a1 code] == 1011)
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    v5 = [a1 code] == 1023;
  }

LABEL_7:

  return v5;
}

- (uint64_t)isServerError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"VVErrorDomain"];

  if (v3)
  {
    v4 = [a1 code];
    v5 = 0xBu >> ((v4 + 7) & 0xF);
    if ((v4 - 1017) > 3)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)isSecurityError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCA670]])
  {
    v3 = [a1 code] == -9829;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)shouldPresentErrorForTaskType:()VVError
{
  v3 = 0;
  if (a3 > 7)
  {
    return v3;
  }

  if (((1 << a3) & 0xCC) != 0)
  {
    if (([a1 isConnectivityError] & 1) == 0)
    {
      v5 = [a1 domain];
      if ([v5 isEqualToString:@"VVErrorDomain"])
      {
        v3 = [a1 isPasswordMismatchError] ^ 1;
      }

      else
      {
        v3 = 0;
      }

LABEL_17:

      return v3;
    }

    return 1;
  }

  if (((1 << a3) & 0x12) == 0)
  {
    if (a3 == 5)
    {
      v5 = [a1 domain];
      if ([v5 isEqualToString:@"VVErrorDomain"])
      {
        v3 = 1;
      }

      else
      {
        v3 = [a1 isConnectivityError];
      }

      goto LABEL_17;
    }

    return v3;
  }

  if ([a1 isServerError])
  {
    return 1;
  }

  return [a1 isSecurityError];
}

@end