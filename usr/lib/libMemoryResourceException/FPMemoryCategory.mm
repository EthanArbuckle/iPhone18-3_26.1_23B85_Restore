@interface FPMemoryCategory
- (NSDictionary)auxData;
- (NSString)auxDataFullName;
- (NSString)detailedName;
- (NSString)fullName;
- (NSString)name;
- (id)initSummary:(BOOL)a3;
- (void)addMemoryObject:(id)a3;
@end

@implementation FPMemoryCategory

- (id)initSummary:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = FPMemoryCategory;
  result = [(FPMemoryCategory *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
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
    v4 = [(FPMemoryObject *)self->_firstMemoryObject name];
    v5 = self->_name;
    self->_name = v4;

    name = self->_name;
  }

  return name;
}

- (NSString)detailedName
{
  if (self->_isSummary)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(FPMemoryObject *)self->_firstMemoryObject detailedName];
  }

  return v4;
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
  v3 = [(FPMemoryObject *)self->_firstMemoryObject auxData];
  v4 = v3;
  if (self->_isSummary)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FPMemoryObject *)self->_firstMemoryObject detailedAuxData];
    if (v4)
    {
      v6 = [v4 fp_mergeWithData:v5 forceAggregate:1];

      v5 = v6;
    }
  }

  return v5;
}

- (NSString)auxDataFullName
{
  v3 = [(FPMemoryObject *)self->_firstMemoryObject auxDataName];
  v4 = v3;
  if (self->_isSummary)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(FPMemoryObject *)self->_firstMemoryObject detailedAuxDataName];
    if ([v6 length])
    {
      v7 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@ %@", v4, v6];
    }

    else
    {
      v7 = v4;
    }

    v5 = v7;
  }

  return v5;
}

- (void)addMemoryObject:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_firstMemoryObject)
  {
    objc_storeStrong(&self->_firstMemoryObject, a3);
    v5 = v6;
  }

  self->_totalDirtySize += [v5 dirtySize];
  self->_totalSwappedSize += [v6 swappedSize];
  self->_totalCleanSize += [v6 cleanSize];
  self->_totalReclaimableSize += [v6 reclaimableSize];
  self->_totalWiredSize += [v6 wiredSize];
  self->_totalRegions += [v6 totalRegions];
}

@end