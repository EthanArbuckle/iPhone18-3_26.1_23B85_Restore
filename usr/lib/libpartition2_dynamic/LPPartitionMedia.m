@interface LPPartitionMedia
+ (id)primaryMedia;
+ (id)supportedContentTypes;
- (id)children;
@end

@implementation LPPartitionMedia

+ (id)supportedContentTypes
{
  if (objc_opt_class() == a1)
  {
    v3 = [a1 contentTypesForPartitionMedia];
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___LPPartitionMedia;
    v3 = objc_msgSendSuper2(&v5, sel_supportedContentTypes);
  }

  return v3;
}

+ (id)primaryMedia
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[LPMedia allMedia];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isPrimaryMedia])
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v7 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)children
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:16];
  v17 = 0;
  if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 1, &v17))
  {
    _os_log_pack_size();
    *_os_log_pack_fill() = 0;
    _LPLogPack(1);
    v4 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v5 = v17;
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3254779904;
    v14[2] = __28__LPPartitionMedia_children__block_invoke;
    v14[3] = &__block_descriptor_44_e8_32s_e8_v12__0I8l;
    v16 = v17;
    v15 = v3;
    v9 = MEMORY[0x29EDCA5F8];
    v10 = 3254779904;
    v11 = __28__LPPartitionMedia_children__block_invoke_12;
    v12 = &__block_descriptor_40_e8_32s_e5_v8__0l;
    v6 = v15;
    v13 = v6;
    iterateSafely(v5, 3, v14, &v9);
    IOObjectRelease(v17);
    v4 = [MEMORY[0x29EDB8D80] arrayWithArray:{v6, v9, v10, v11, v12}];
  }

  v7 = *MEMORY[0x29EDCA608];

  return v4;
}

void __28__LPPartitionMedia_children__block_invoke(uint64_t a1, uint64_t object)
{
  if (IOObjectConformsTo(object, "IOMedia"))
  {
    MEMORY[0x29C29F2C0](*(a1 + 40));
    v4 = [LPMedia mediaOfCorrectTypeGivenIOMedia:object];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

@end