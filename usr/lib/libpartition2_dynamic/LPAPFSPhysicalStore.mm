@interface LPAPFSPhysicalStore
+ (id)supportedContentTypes;
- (id)container;
- (id)parent;
- (int)role;
@end

@implementation LPAPFSPhysicalStore

+ (id)supportedContentTypes
{
  v7[3] = *MEMORY[0x29EDCA608];
  if (objc_opt_class() == a1)
  {
    v7[0] = LPAPFSPhysicalStoreMediaUUID[0];
    v7[1] = LPAPFSPhysicalStoreDiagsMediaUUID[0];
    v7[2] = LPAPFSPhysicalStoreRecoveryMediaUUID[0];
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___LPAPFSPhysicalStore;
    v3 = objc_msgSendSuper2(&v6, sel_supportedContentTypes);
  }

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (int)role
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = [(LPMedia *)self content];
  v3 = v2;
  if (!v2)
  {
    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315138;
    *(v5 + 4) = "[LPAPFSPhysicalStore role]";
    _LPLogPack(1);
    goto LABEL_7;
  }

  if (([v2 isEqualToString:LPAPFSPhysicalStoreDiagsMediaUUID[0]] & 1) == 0)
  {
    if ([v3 isEqualToString:LPAPFSPhysicalStoreRecoveryMediaUUID[0]])
    {
      v4 = 2;
      goto LABEL_8;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

- (id)parent
{
  v25 = *MEMORY[0x29EDCA608];
  v23 = 0;
  if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 3, &v23))
  {
    _os_log_pack_size();
    v2 = _os_log_pack_fill();
    *v2 = 136315138;
    *(v2 + 4) = "[LPAPFSPhysicalStore parent]";
    _LPLogPack(1);
LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

  v6 = IOIteratorNext(v23);
  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = v6;
  v3 = 0;
  do
  {
    if (IOObjectConformsTo(v7, "IOMedia") && (CFProperty = IORegistryEntryCreateCFProperty(v7, @"Content", 0, 0)) != 0)
    {
      v9 = CFProperty;
      v10 = CFGetTypeID(CFProperty);
      if (v10 == CFStringGetTypeID())
      {
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v11 = +[LPPartitionMedia contentTypesForPartitionMedia];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v20;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v11);
              }

              if (CFStringCompare(*(*(&v19 + 1) + 8 * i), v9, 0) == kCFCompareEqualTo)
              {
                v17 = [(LPMedia *)[LPPartitionMedia alloc] initWithIOMediaObject:v7];

                v14 = 1;
                v3 = v17;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      v14 = 0;
    }

    v18 = IOIteratorNext(v23);
    if (!v18)
    {
      break;
    }

    v7 = v18;
  }

  while ((v14 & 1) == 0);
LABEL_4:
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)container
{
  v18[3] = *MEMORY[0x29EDCA608];
  v12 = 0;
  IORegistryEntryGetRegistryEntryID([(LPMedia *)self ioMedia], &v12);
  v17[0] = @"IOParentMatch";
  v15 = @"IORegistryEntryID";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v12];
  v16 = v2;
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v3;
  v18[1] = @"IOMedia";
  v17[1] = @"IOProviderClass";
  v17[2] = @"IOPropertyMatch";
  v13 = @"Content";
  v14 = LPAPFSContainerMediaTypeUUID[0];
  v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v18[2] = v4;
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  LODWORD(v3) = +[LPMedia IOMainPort];
  v6 = v5;
  MatchingService = IOServiceGetMatchingService(v3, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    v9 = [(LPMedia *)[LPAPFSContainer alloc] initWithIOMediaObject:MatchingService];
    IOObjectRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

@end