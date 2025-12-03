@interface FPMemoryCategory
- (NSDictionary)auxData;
- (NSString)auxDataFullName;
- (NSString)detailedName;
- (NSString)fullName;
- (NSString)name;
- (id)initSummary:(BOOL)summary;
- (void)addMemoryObject:(id)object;
@end

@implementation FPMemoryCategory

- (id)initSummary:(BOOL)summary
{
  v5.receiver = self;
  v5.super_class = FPMemoryCategory;
  result = [(FPMemoryCategory *)&v5 init];
  if (result)
  {
    *(result + 8) = summary;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *(result + 8) = 0;
  }

  return result;
}

- (NSString)name
{
  name = self->_name;
  if (!name)
  {
    name = [(FPMemoryObject *)self->_firstMemoryObject name];
    v5 = self->_name;
    self->_name = name;

    name = self->_name;
  }

  return name;
}

- (NSString)detailedName
{
  if (self->_isSummary)
  {
    detailedName = 0;
  }

  else
  {
    detailedName = [(FPMemoryObject *)self->_firstMemoryObject detailedName];
  }

  return detailedName;
}

- (NSString)fullName
{
  if (self->_isSummary)
  {
    [(FPMemoryCategory *)self name];
  }

  else
  {
    [(FPMemoryObject *)self->_firstMemoryObject fullName];
  }
  v2 = ;

  return v2;
}

- (NSDictionary)auxData
{
  auxData = [(FPMemoryObject *)self->_firstMemoryObject auxData];
  v4 = auxData;
  if (self->_isSummary)
  {
    detailedAuxData = auxData;
  }

  else
  {
    detailedAuxData = [(FPMemoryObject *)self->_firstMemoryObject detailedAuxData];
    if (v4)
    {
      v6 = [v4 fp_mergeWithData:detailedAuxData forceAggregate:1];

      detailedAuxData = v6;
    }
  }

  return detailedAuxData;
}

- (NSString)auxDataFullName
{
  auxDataName = [(FPMemoryObject *)self->_firstMemoryObject auxDataName];
  v4 = auxDataName;
  if (self->_isSummary)
  {
    v5 = auxDataName;
  }

  else
  {
    detailedAuxDataName = [(FPMemoryObject *)self->_firstMemoryObject detailedAuxDataName];
    if ([detailedAuxDataName length])
    {
      v7 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@ %@", v4, detailedAuxDataName];
    }

    else
    {
      v7 = v4;
    }

    v5 = v7;
  }

  return v5;
}

- (void)addMemoryObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (!self->_firstMemoryObject)
  {
    objc_storeStrong(&self->_firstMemoryObject, object);
    objectCopy = v6;
  }

  self->_totalDirtySize += [objectCopy dirtySize];
  self->_totalSwappedSize += [v6 swappedSize];
  self->_totalCleanSize += [v6 cleanSize];
  self->_totalReclaimableSize += [v6 reclaimableSize];
  self->_totalWiredSize += [v6 wiredSize];
  self->_totalRegions += [v6 totalRegions];
}

@end