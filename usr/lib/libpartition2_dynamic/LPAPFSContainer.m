@interface LPAPFSContainer
+ (id)_containerWithPhysticalStoreRole:(int)a3;
+ (id)allAPFSContainers;
+ (id)supportedContentTypes;
- (id)physicalStores;
@end

@implementation LPAPFSContainer

+ (id)supportedContentTypes
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = LPAPFSContainerMediaTypeUUID[0];
  v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

+ (id)allAPFSContainers
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = +[LPMedia allMedia];
  v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v13}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x29EDB8D80] arrayWithArray:v3];
  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

+ (id)_containerWithPhysticalStoreRole:(int)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = +[LPPartitionMedia primaryMedia];
  v5 = v4;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v4 children];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 role] == a3)
          {
            v12 = [v11 container];
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  else
  {
    _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "+[LPAPFSContainer _containerWithPhysticalStoreRole:]";
    _LPLogPack(1);
    v12 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];

  return v12;
}

void __41__LPAPFSContainer_volumesWithRole_group___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(LPMedia *)[LPAPFSVolume alloc] initWithIOMediaObject:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)physicalStores
{
  v19[2] = *MEMORY[0x29EDCA608];
  v3 = [(LPMedia *)self BSDName];
  [LPMedia waitForIOMediaWithDevNode:v3];

  v4 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:2];
  v18[1] = @"IOPropertyMatch";
  v19[0] = @"IOMedia";
  v18[0] = @"IOProviderClass";
  v16 = @"Content";
  v17 = LPAPFSPhysicalStoreMediaUUID[0];
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[1] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v15 = 0;
  if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 3, &v15))
  {
    _os_log_pack_size();
    v7 = _os_log_pack_fill();
    *v7 = 136315138;
    *(v7 + 4) = "[LPAPFSContainer physicalStores]";
    _LPLogPack(1);
    v8 = 0;
  }

  else
  {
    v9 = IOIteratorNext(v15);
    if (v9)
    {
      v10 = v9;
      do
      {
        if (IOObjectConformsTo(v10, "IOMedia"))
        {
          MEMORY[0x29C29F2C0](v15);
        }

        matches = 0;
        IOServiceMatchPropertyTable(v10, v6, &matches);
        if (matches)
        {
          v11 = [(LPMedia *)[LPAPFSPhysicalStore alloc] initWithIOMediaObject:v10];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }

        IOObjectRelease(v10);
        v10 = IOIteratorNext(v15);
      }

      while (v10);
    }

    if (v15)
    {
      IOObjectRelease(v15);
    }

    v8 = [MEMORY[0x29EDB8D80] arrayWithArray:v4];
  }

  v12 = *MEMORY[0x29EDCA608];

  return v8;
}

@end