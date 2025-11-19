@interface POAlgorithmUtil
+ (id)bestEncryptionAlgorithm:(id)a3 or:(id)a4;
+ (id)bestSigningAlgorithm:(id)a3 or:(id)a4;
+ (id)deviceEncryptionAlgorithmToUse:(id)a3 deviceConfiguration:(id)a4;
+ (id)deviceSigningAlgorithmToUse:(id)a3 deviceConfiguration:(id)a4;
+ (id)userSigningAlgorithmToUse:(id)a3 userConfiguration:(id)a4;
@end

@implementation POAlgorithmUtil

+ (id)deviceSigningAlgorithmToUse:(id)a3 deviceConfiguration:(id)a4
{
  v6 = a4;
  v7 = [a3 supportedDeviceSigningAlgorithms];
  if (![v7 count])
  {
    v11 = [v6 signingAlgorithm];
    v12 = v11;
    v13 = *MEMORY[0x277D3D278];
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;
    goto LABEL_8;
  }

  v8 = *MEMORY[0x277D3D280];
  if ([v7 containsObject:*MEMORY[0x277D3D280]] || (v8 = *MEMORY[0x277D3D278], objc_msgSend(v7, "containsObject:", *MEMORY[0x277D3D278])))
  {
    v9 = [v6 signingAlgorithm];
    v10 = [a1 bestSigningAlgorithm:v8 or:v9];

    goto LABEL_9;
  }

  v16 = *MEMORY[0x277D3D288];
  if ([v7 containsObject:*MEMORY[0x277D3D288]])
  {
    v12 = [v6 signingAlgorithm];
    v14 = [a1 bestSigningAlgorithm:v16 or:v12];
LABEL_8:
    v10 = v14;

    goto LABEL_9;
  }

  v10 = v8;
LABEL_9:

  return v10;
}

+ (id)bestSigningAlgorithm:(id)a3 or:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D3D280];
  v8 = v5;
  if (([v5 isEqualToNumber:*MEMORY[0x277D3D280]] & 1) == 0)
  {
    v8 = v6;
    if (([v6 isEqualToNumber:v7] & 1) == 0)
    {
      v9 = *MEMORY[0x277D3D278];
      v8 = v5;
      if (([v5 isEqualToNumber:*MEMORY[0x277D3D278]] & 1) == 0)
      {
        v8 = v6;
        if (([v6 isEqualToNumber:v9] & 1) == 0)
        {
          v10 = *MEMORY[0x277D3D288];
          v8 = v5;
          if (([v5 isEqualToNumber:*MEMORY[0x277D3D288]] & 1) == 0)
          {
            if ([v6 isEqualToNumber:v10])
            {
              v8 = v6;
            }

            else
            {
              v8 = v9;
            }
          }
        }
      }
    }
  }

  v11 = v8;

  return v8;
}

+ (id)deviceEncryptionAlgorithmToUse:(id)a3 deviceConfiguration:(id)a4
{
  v6 = a4;
  v7 = [a3 supportedDeviceEncryptionAlgorithms];
  if ([v7 count])
  {
    v8 = *MEMORY[0x277D3D270];
    if ([v7 containsObject:*MEMORY[0x277D3D270]] || (v8 = *MEMORY[0x277D3D268], objc_msgSend(v7, "containsObject:", *MEMORY[0x277D3D268])) || (v8 = *MEMORY[0x277D3D260], objc_msgSend(v7, "containsObject:", *MEMORY[0x277D3D260])) || (v8 = *MEMORY[0x277D3D258], objc_msgSend(v7, "containsObject:", *MEMORY[0x277D3D258])))
    {
      v9 = [v6 encryptionAlgorithm];
      v10 = [a1 bestEncryptionAlgorithm:v8 or:v9];
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    v11 = [v6 encryptionAlgorithm];
    v12 = v11;
    v13 = *MEMORY[0x277D3D258];
    if (v11)
    {
      v13 = v11;
    }

    v10 = v13;
  }

  return v10;
}

+ (id)bestEncryptionAlgorithm:(id)a3 or:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D3D270];
  v8 = v5;
  if (([v5 isEqualToNumber:*MEMORY[0x277D3D270]] & 1) == 0)
  {
    v8 = v6;
    if (([v6 isEqualToNumber:v7] & 1) == 0)
    {
      v9 = *MEMORY[0x277D3D268];
      v8 = v5;
      if (([v5 isEqualToNumber:*MEMORY[0x277D3D268]] & 1) == 0)
      {
        v8 = v6;
        if (([v6 isEqualToNumber:v9] & 1) == 0)
        {
          v10 = *MEMORY[0x277D3D260];
          v8 = v5;
          if (([v5 isEqualToNumber:*MEMORY[0x277D3D260]] & 1) == 0)
          {
            v8 = v6;
            if (([v6 isEqualToNumber:v10] & 1) == 0)
            {
              v11 = *MEMORY[0x277D3D258];
              v8 = v5;
              if (([v5 isEqualToNumber:*MEMORY[0x277D3D258]] & 1) == 0)
              {
                if ([v6 isEqualToNumber:v11])
                {
                  v8 = v6;
                }

                else
                {
                  v8 = v11;
                }
              }
            }
          }
        }
      }
    }
  }

  v12 = v8;

  return v8;
}

+ (id)userSigningAlgorithmToUse:(id)a3 userConfiguration:(id)a4
{
  v6 = a4;
  v7 = [a3 supportedUserSecureEnclaveKeySigningAlgorithms];
  if (![v7 count])
  {
    v11 = [v6 signingAlgorithm];
    v12 = v11;
    v13 = *MEMORY[0x277D3D278];
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;
    goto LABEL_8;
  }

  v8 = *MEMORY[0x277D3D280];
  if ([v7 containsObject:*MEMORY[0x277D3D280]] || (v8 = *MEMORY[0x277D3D278], objc_msgSend(v7, "containsObject:", *MEMORY[0x277D3D278])))
  {
    v9 = [v6 signingAlgorithm];
    v10 = [a1 bestSigningAlgorithm:v8 or:v9];

    goto LABEL_9;
  }

  v16 = *MEMORY[0x277D3D288];
  if ([v7 containsObject:*MEMORY[0x277D3D288]])
  {
    v12 = [v6 signingAlgorithm];
    v14 = [a1 bestSigningAlgorithm:v16 or:v12];
LABEL_8:
    v10 = v14;

    goto LABEL_9;
  }

  v10 = v8;
LABEL_9:

  return v10;
}

@end