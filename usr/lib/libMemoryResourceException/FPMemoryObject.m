@interface FPMemoryObject
- (BOOL)containsFakeRegion;
- (BOOL)finalizeObject;
- (BOOL)verbose;
- (FPMemoryObject)init;
- (NSDictionary)auxData;
- (NSDictionary)detailedAuxData;
- (NSString)auxDataName;
- (NSString)detailedAuxDataName;
- (NSString)detailedName;
- (NSString)fullName;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)a3;
- (id)viewForProcess:(id)a3;
- (unsigned)totalRegions;
@end

@implementation FPMemoryObject

- (FPMemoryObject)init
{
  v6.receiver = self;
  v6.super_class = FPMemoryObject;
  v2 = [(FPMemoryObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    memoryRegions = v2->_memoryRegions;
    v2->_memoryRegions = v3;

    v2->_ownerPid = -1;
  }

  return v2;
}

- (BOOL)finalizeObject
{
  v3 = [(NSMutableArray *)self->_memoryRegions count];
  if (v3 == 1)
  {
    v5 = [(NSMutableArray *)self->_memoryRegions firstObject];
    [v5 setMemoryObject:v5];
    processMemoryRegions = self->_processMemoryRegions;
    self->_processMemoryRegions = 0;

    memoryRegions = self->_memoryRegions;
    self->_memoryRegions = 0;
  }

  else
  {
    if (+[FPFootprint isSharingAnalysisDisabled])
    {
      v4 = +[FPFootprint breakDownPhysFootprint];
    }

    else
    {
      v4 = 0;
    }

    sub_297E33BFC(self, v4);
  }

  return v3 != 1;
}

- (unsigned)totalRegions
{
  if ((*(self + 8) & 4) != 0)
  {
    LODWORD(v3) = 1;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_memoryRegions count];
    if (v3 == 1)
    {
      v4 = [(NSMutableArray *)self->_memoryRegions firstObject];
      LODWORD(v3) = [v4 totalRegions];
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (*(self + 8))
  {
    v4 = objc_alloc_init(FPMemoryObject);
    v4->_dirtySize = self->_dirtySize;
    v4->_swappedSize = self->_swappedSize;
    v4->_cleanSize = self->_cleanSize;
    v4->_wiredSize = self->_wiredSize;
    v4->_reclaimableSize = self->_reclaimableSize;
    objc_storeStrong(&v4->_memoryRegions, self->_memoryRegions);
    v5 = *(v4 + 8) & 0xFE | *(self + 8) & 1;
    *(v4 + 8) = v5;
    *(v4 + 8) = v5 & 0xFD | *(self + 8) & 2;
    v4->_ownerPid = self->_ownerPid;
    processMemoryRegions = v4->_processMemoryRegions;
    v4->_processMemoryRegions = 0;

    return v4;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

- (id)viewForProcess:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = self;
  if ([(NSMutableDictionary *)v5->_processMemoryRegions count])
  {
    processMemoryRegions = v5->_processMemoryRegions;
    v7 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v4, "pid")}];
    v8 = [(NSMutableDictionary *)processMemoryRegions objectForKeyedSubscript:v7];

    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = objc_alloc_init(FPMemoryObject);

    v9->_ownerPid = v5->_ownerPid;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          sub_297E33A08(v9, *(*(&v19 + 1) + 8 * i), 0);
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    sub_297E33BFC(v9, [v4 breakDownPhysFootprint]);
  }

  else
  {
    v9 = v5;
    if ((*(v5 + 8) & 2) != 0)
    {
      v9 = [(FPMemoryObject *)v5 copy];

      *(v9 + 8) |= 4u;
    }
  }

  if (v5->_ownerPid != -1 && [v4 pid] != v5->_ownerPid)
  {
    if (v9 == v5)
    {
      v15 = [(FPMemoryObject *)v9 copy];

      v9 = v15;
    }

    v9->_dirtySize = 0;
    v9->_swappedSize = 0;
    v9->_cleanSize += v5->_swappedSize + v5->_dirtySize;
  }

  v5 = v9;
LABEL_19:
  v16 = v5;

  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

- (BOOL)containsFakeRegion
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_memoryRegions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isFake])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

- (NSString)name
{
  v2 = sub_297E342D0(self);
  v3 = [v2 name];

  return v3;
}

- (NSString)detailedName
{
  v2 = sub_297E342D0(self);
  v3 = [v2 detailedName];

  return v3;
}

- (NSString)fullName
{
  v2 = sub_297E342D0(self);
  v3 = [v2 fullName];

  return v3;
}

- (BOOL)verbose
{
  v2 = [(NSMutableArray *)self->_memoryRegions firstObject];
  v3 = [v2 verbose];

  return v3;
}

- (NSDictionary)auxData
{
  v2 = [(NSMutableArray *)self->_memoryRegions firstObject];
  v3 = [v2 auxData];

  return v3;
}

- (NSDictionary)detailedAuxData
{
  v2 = [(NSMutableArray *)self->_memoryRegions firstObject];
  v3 = [v2 detailedAuxData];

  return v3;
}

- (NSString)auxDataName
{
  v2 = [(NSMutableArray *)self->_memoryRegions firstObject];
  v3 = [v2 auxDataName];

  return v3;
}

- (NSString)detailedAuxDataName
{
  v2 = [(NSMutableArray *)self->_memoryRegions firstObject];
  v3 = [v2 detailedAuxDataName];

  return v3;
}

@end