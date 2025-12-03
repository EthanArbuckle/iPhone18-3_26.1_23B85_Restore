@interface POAlgorithmUtil
+ (id)bestEncryptionAlgorithm:(id)algorithm or:(id)or;
+ (id)bestSigningAlgorithm:(id)algorithm or:(id)or;
+ (id)deviceEncryptionAlgorithmToUse:(id)use deviceConfiguration:(id)configuration;
+ (id)deviceSigningAlgorithmToUse:(id)use deviceConfiguration:(id)configuration;
+ (id)userSigningAlgorithmToUse:(id)use userConfiguration:(id)configuration;
@end

@implementation POAlgorithmUtil

+ (id)deviceSigningAlgorithmToUse:(id)use deviceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  supportedDeviceSigningAlgorithms = [use supportedDeviceSigningAlgorithms];
  if (![supportedDeviceSigningAlgorithms count])
  {
    signingAlgorithm = [configurationCopy signingAlgorithm];
    signingAlgorithm3 = signingAlgorithm;
    v13 = *MEMORY[0x277D3D278];
    if (signingAlgorithm)
    {
      v13 = signingAlgorithm;
    }

    v14 = v13;
    goto LABEL_8;
  }

  v8 = *MEMORY[0x277D3D280];
  if ([supportedDeviceSigningAlgorithms containsObject:*MEMORY[0x277D3D280]] || (v8 = *MEMORY[0x277D3D278], objc_msgSend(supportedDeviceSigningAlgorithms, "containsObject:", *MEMORY[0x277D3D278])))
  {
    signingAlgorithm2 = [configurationCopy signingAlgorithm];
    v10 = [self bestSigningAlgorithm:v8 or:signingAlgorithm2];

    goto LABEL_9;
  }

  v16 = *MEMORY[0x277D3D288];
  if ([supportedDeviceSigningAlgorithms containsObject:*MEMORY[0x277D3D288]])
  {
    signingAlgorithm3 = [configurationCopy signingAlgorithm];
    v14 = [self bestSigningAlgorithm:v16 or:signingAlgorithm3];
LABEL_8:
    v10 = v14;

    goto LABEL_9;
  }

  v10 = v8;
LABEL_9:

  return v10;
}

+ (id)bestSigningAlgorithm:(id)algorithm or:(id)or
{
  algorithmCopy = algorithm;
  orCopy = or;
  v7 = *MEMORY[0x277D3D280];
  v8 = algorithmCopy;
  if (([algorithmCopy isEqualToNumber:*MEMORY[0x277D3D280]] & 1) == 0)
  {
    v8 = orCopy;
    if (([orCopy isEqualToNumber:v7] & 1) == 0)
    {
      v9 = *MEMORY[0x277D3D278];
      v8 = algorithmCopy;
      if (([algorithmCopy isEqualToNumber:*MEMORY[0x277D3D278]] & 1) == 0)
      {
        v8 = orCopy;
        if (([orCopy isEqualToNumber:v9] & 1) == 0)
        {
          v10 = *MEMORY[0x277D3D288];
          v8 = algorithmCopy;
          if (([algorithmCopy isEqualToNumber:*MEMORY[0x277D3D288]] & 1) == 0)
          {
            if ([orCopy isEqualToNumber:v10])
            {
              v8 = orCopy;
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

+ (id)deviceEncryptionAlgorithmToUse:(id)use deviceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  supportedDeviceEncryptionAlgorithms = [use supportedDeviceEncryptionAlgorithms];
  if ([supportedDeviceEncryptionAlgorithms count])
  {
    v8 = *MEMORY[0x277D3D270];
    if ([supportedDeviceEncryptionAlgorithms containsObject:*MEMORY[0x277D3D270]] || (v8 = *MEMORY[0x277D3D268], objc_msgSend(supportedDeviceEncryptionAlgorithms, "containsObject:", *MEMORY[0x277D3D268])) || (v8 = *MEMORY[0x277D3D260], objc_msgSend(supportedDeviceEncryptionAlgorithms, "containsObject:", *MEMORY[0x277D3D260])) || (v8 = *MEMORY[0x277D3D258], objc_msgSend(supportedDeviceEncryptionAlgorithms, "containsObject:", *MEMORY[0x277D3D258])))
    {
      encryptionAlgorithm = [configurationCopy encryptionAlgorithm];
      v10 = [self bestEncryptionAlgorithm:v8 or:encryptionAlgorithm];
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    encryptionAlgorithm2 = [configurationCopy encryptionAlgorithm];
    v12 = encryptionAlgorithm2;
    v13 = *MEMORY[0x277D3D258];
    if (encryptionAlgorithm2)
    {
      v13 = encryptionAlgorithm2;
    }

    v10 = v13;
  }

  return v10;
}

+ (id)bestEncryptionAlgorithm:(id)algorithm or:(id)or
{
  algorithmCopy = algorithm;
  orCopy = or;
  v7 = *MEMORY[0x277D3D270];
  v8 = algorithmCopy;
  if (([algorithmCopy isEqualToNumber:*MEMORY[0x277D3D270]] & 1) == 0)
  {
    v8 = orCopy;
    if (([orCopy isEqualToNumber:v7] & 1) == 0)
    {
      v9 = *MEMORY[0x277D3D268];
      v8 = algorithmCopy;
      if (([algorithmCopy isEqualToNumber:*MEMORY[0x277D3D268]] & 1) == 0)
      {
        v8 = orCopy;
        if (([orCopy isEqualToNumber:v9] & 1) == 0)
        {
          v10 = *MEMORY[0x277D3D260];
          v8 = algorithmCopy;
          if (([algorithmCopy isEqualToNumber:*MEMORY[0x277D3D260]] & 1) == 0)
          {
            v8 = orCopy;
            if (([orCopy isEqualToNumber:v10] & 1) == 0)
            {
              v11 = *MEMORY[0x277D3D258];
              v8 = algorithmCopy;
              if (([algorithmCopy isEqualToNumber:*MEMORY[0x277D3D258]] & 1) == 0)
              {
                if ([orCopy isEqualToNumber:v11])
                {
                  v8 = orCopy;
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

+ (id)userSigningAlgorithmToUse:(id)use userConfiguration:(id)configuration
{
  configurationCopy = configuration;
  supportedUserSecureEnclaveKeySigningAlgorithms = [use supportedUserSecureEnclaveKeySigningAlgorithms];
  if (![supportedUserSecureEnclaveKeySigningAlgorithms count])
  {
    signingAlgorithm = [configurationCopy signingAlgorithm];
    signingAlgorithm3 = signingAlgorithm;
    v13 = *MEMORY[0x277D3D278];
    if (signingAlgorithm)
    {
      v13 = signingAlgorithm;
    }

    v14 = v13;
    goto LABEL_8;
  }

  v8 = *MEMORY[0x277D3D280];
  if ([supportedUserSecureEnclaveKeySigningAlgorithms containsObject:*MEMORY[0x277D3D280]] || (v8 = *MEMORY[0x277D3D278], objc_msgSend(supportedUserSecureEnclaveKeySigningAlgorithms, "containsObject:", *MEMORY[0x277D3D278])))
  {
    signingAlgorithm2 = [configurationCopy signingAlgorithm];
    v10 = [self bestSigningAlgorithm:v8 or:signingAlgorithm2];

    goto LABEL_9;
  }

  v16 = *MEMORY[0x277D3D288];
  if ([supportedUserSecureEnclaveKeySigningAlgorithms containsObject:*MEMORY[0x277D3D288]])
  {
    signingAlgorithm3 = [configurationCopy signingAlgorithm];
    v14 = [self bestSigningAlgorithm:v16 or:signingAlgorithm3];
LABEL_8:
    v10 = v14;

    goto LABEL_9;
  }

  v10 = v8;
LABEL_9:

  return v10;
}

@end