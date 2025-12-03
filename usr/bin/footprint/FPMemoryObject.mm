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
- (id)copyWithZone:(_NSZone *)zone;
- (id)viewForProcess:(id)process;
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
    v3 = objc_alloc_init(NSMutableArray);
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
    firstObject = [(NSMutableArray *)self->_memoryRegions firstObject];
    v6 = firstObject;
    if (firstObject)
    {
      *(firstObject + 64) = firstObject;
    }

    processMemoryRegions = self->_processMemoryRegions;
    self->_processMemoryRegions = 0;

    memoryRegions = self->_memoryRegions;
    self->_memoryRegions = 0;
  }

  else
  {
    objc_opt_self();
    v4 = byte_100038638 == 1 && sub_10000EDEC();
    sub_1000030C4(self, v4);
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
      firstObject = [(NSMutableArray *)self->_memoryRegions firstObject];
      LODWORD(v3) = [firstObject totalRegions];
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)viewForProcess:(id)process
{
  processCopy = process;
  selfCopy = self;
  if ([(NSMutableDictionary *)selfCopy->_processMemoryRegions count])
  {
    processMemoryRegions = selfCopy->_processMemoryRegions;
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [processCopy pid]);
    v8 = [(NSMutableDictionary *)processMemoryRegions objectForKeyedSubscript:v7];

    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = objc_alloc_init(FPMemoryObject);

    v9->_ownerPid = selfCopy->_ownerPid;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          sub_100002E74(v9, *(*(&v18 + 1) + 8 * i), 0);
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    sub_1000030C4(v9, [processCopy breakDownPhysFootprint]);
  }

  else
  {
    v9 = selfCopy;
    if ((*(selfCopy + 8) & 2) != 0)
    {
      v9 = [(FPMemoryObject *)selfCopy copy];

      *(v9 + 8) |= 4u;
    }
  }

  if (selfCopy->_ownerPid != -1 && [processCopy pid] != selfCopy->_ownerPid)
  {
    if (v9 == selfCopy)
    {
      v15 = [(FPMemoryObject *)v9 copy];

      v9 = v15;
    }

    v9->_dirtySize = 0;
    v9->_swappedSize = 0;
    v9->_cleanSize += selfCopy->_swappedSize + selfCopy->_dirtySize;
  }

  selfCopy = v9;
LABEL_19:
  v16 = selfCopy;

  return v16;
}

- (BOOL)containsFakeRegion
{
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
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (v6 && *(v6 + 12) == -1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
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

LABEL_12:

  return v3;
}

- (NSString)name
{
  v2 = sub_1000037A4(self);
  name = [v2 name];

  return name;
}

- (NSString)detailedName
{
  v2 = sub_1000037A4(self);
  detailedName = [v2 detailedName];

  return detailedName;
}

- (NSString)fullName
{
  v2 = sub_1000037A4(self);
  fullName = [v2 fullName];

  return fullName;
}

- (BOOL)verbose
{
  firstObject = [(NSMutableArray *)self->_memoryRegions firstObject];
  verbose = [firstObject verbose];

  return verbose;
}

- (NSDictionary)auxData
{
  firstObject = [(NSMutableArray *)self->_memoryRegions firstObject];
  auxData = [firstObject auxData];

  return auxData;
}

- (NSDictionary)detailedAuxData
{
  firstObject = [(NSMutableArray *)self->_memoryRegions firstObject];
  detailedAuxData = [firstObject detailedAuxData];

  return detailedAuxData;
}

- (NSString)auxDataName
{
  firstObject = [(NSMutableArray *)self->_memoryRegions firstObject];
  auxDataName = [firstObject auxDataName];

  return auxDataName;
}

- (NSString)detailedAuxDataName
{
  firstObject = [(NSMutableArray *)self->_memoryRegions firstObject];
  detailedAuxDataName = [firstObject detailedAuxDataName];

  return detailedAuxDataName;
}

@end