@interface FPMemoryRegion
+ (id)vmLedgerNameForTag:(unint64_t)a3;
- (BOOL)eligibleForSubrangesUsingPageSize:(unint64_t)a3;
- (BOOL)privateSharedCacheRegion;
- (NSString)description;
- (NSString)extendedInfo;
- (NSString)fullName;
- (id)ensureMemoryObject;
- (unint64_t)end;
- (unint64_t)wiredSize;
- (void)addSubrange:(_NSRange)a3 memoryTotal:(id *)a4;
- (void)setEnd:(unint64_t)a3;
- (void)setExtendedInfo:(id)a3;
- (void)setInSharedCache:(BOOL)a3;
- (void)setOwnedExclusivelyByParentProcess:(BOOL)a3;
- (void)setUnusedSharedCacheRegion:(BOOL)a3;
- (void)setVerbose:(BOOL)a3;
@end

@implementation FPMemoryRegion

- (void)setInSharedCache:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setUnusedSharedCacheRegion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setOwnedExclusivelyByParentProcess:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setVerbose:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xEF | v3;
}

- (unint64_t)end
{
  result = [(FPMemoryRegion *)self start];
  if (result != -1)
  {
    v4 = [(FPMemoryRegion *)self start];
    return [(FPMemoryRegion *)self size]+ v4;
  }

  return result;
}

- (void)setEnd:(unint64_t)a3
{
  if ([(FPMemoryRegion *)self start]> a3)
  {
    __assert_rtn("[FPMemoryRegion setEnd:]", "FPMemoryRegion.m", 185, "end >= self.start");
  }

  v5 = a3 - [(FPMemoryRegion *)self start];

  [(FPMemoryRegion *)self setSize:v5];
}

- (unint64_t)wiredSize
{
  if ([(FPMemoryRegion *)self wired])
  {
    return self->_size;
  }

  else
  {
    return 0;
  }
}

- (void)addSubrange:(_NSRange)a3 memoryTotal:(id *)a4
{
  length = a3.length;
  location = a3.location;
  subrangeList = self->_subrangeList;
  if (!subrangeList)
  {
    v9 = objc_alloc_init(FPRangeList);
    v10 = self->_subrangeList;
    self->_subrangeList = v9;

    subrangeList = self->_subrangeList;
  }

  sub_297E25A38(subrangeList, location, length, a4);
}

+ (id)vmLedgerNameForTag:(unint64_t)a3
{
  if (a3 > 5)
  {
    v3 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"VM ledger tag %llu", a3];
  }

  else
  {
    v3 = qword_29EE853C8[a3];
  }

  return v3;
}

- (NSString)fullName
{
  v3 = self->_detailedName;
  v4 = v3;
  if (v3 && [(NSString *)v3 length])
  {
    v5 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@ %@", self->_name, v4];
  }

  else
  {
    v5 = self->_name;
  }

  v6 = v5;

  return v6;
}

- (BOOL)eligibleForSubrangesUsingPageSize:(unint64_t)a3
{
  if (![(FPMemoryRegion *)self isFake])
  {
    v5 = [(FPMemoryRegion *)self eligibleForProcessView];
    if (!v5)
    {
      return v5;
    }

    if (self->_size > a3 && ![(FPMemoryRegion *)self ownedExclusivelyByParentProcess])
    {
      dirtySize = self->_dirtySize;
      size = self->_size;
      if (dirtySize != size)
      {
        swappedSize = self->_swappedSize;
        if (swappedSize != size)
        {
          cleanSize = self->_cleanSize;
          if (cleanSize != size)
          {
            reclaimableSize = self->_reclaimableSize;
            if (reclaimableSize != size)
            {
              LOBYTE(v5) = (swappedSize | dirtySize | cleanSize | reclaimableSize) != 0;
              return v5;
            }
          }
        }
      }
    }
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (BOOL)privateSharedCacheRegion
{
  if ((*(self + 8) & 2) == 0)
  {
    return 0;
  }

  segment = self->_segment;
  if (segment == 2 || segment == 4)
  {
    return 0;
  }

  if (self->_dirtySize)
  {
    return 1;
  }

  return self->_swappedSize != 0;
}

- (NSString)description
{
  offset = self->_offset;
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [(FPMemoryRegion *)self fullName];
  if (offset)
  {
    v6 = self->_offset;
    start = self->_start;
    v8 = [(FPMemoryRegion *)self end];
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_size];
    [v4 stringWithFormat:@"%@ Offset %#llx [%#llx - %#llx](%@)", v5, v6, start, v8, v9];
  }

  else
  {
    v10 = self->_start;
    v11 = [(FPMemoryRegion *)self end];
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_size];
    [v4 stringWithFormat:@"%@ [%#llx - %#llx](%@)", v5, v10, v11, v9, v14];
  }
  v12 = ;

  return v12;
}

- (id)ensureMemoryObject
{
  v3 = objc_alloc_init(FPMemoryObject);
  v4 = v3;
  self->_memoryObject = v3;
  if (v3)
  {
    sub_297E33A08(v3, self, 0);
  }

  return v4;
}

- (NSString)extendedInfo
{
  os_unfair_lock_lock(&unk_2A18A6030);
  if (qword_2A18A6048[0] != -1)
  {
    dispatch_once(qword_2A18A6048, &unk_2A1E8FA50);
  }

  v3 = [qword_2A18A6040 objectForKey:self];
  os_unfair_lock_unlock(&unk_2A18A6030);

  return v3;
}

- (void)setExtendedInfo:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&unk_2A18A6030);
  if (qword_2A18A6048[0] != -1)
  {
    dispatch_once(qword_2A18A6048, &unk_2A1E8FA50);
  }

  [qword_2A18A6040 setObject:v4 forKey:self];

  os_unfair_lock_unlock(&unk_2A18A6030);
}

@end