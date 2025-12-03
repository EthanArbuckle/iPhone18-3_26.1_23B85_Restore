@interface FPMemoryRegion
+ (id)vmLedgerNameForTag:(unint64_t)tag;
- (BOOL)eligibleForSubrangesUsingPageSize:(unint64_t)size;
- (BOOL)privateSharedCacheRegion;
- (NSString)description;
- (NSString)extendedInfo;
- (NSString)fullName;
- (id)ensureMemoryObject;
- (unint64_t)end;
- (unint64_t)wiredSize;
- (void)addSubrange:(_NSRange)subrange memoryTotal:(id *)total;
- (void)setEnd:(unint64_t)end;
- (void)setExtendedInfo:(id)info;
- (void)setInSharedCache:(BOOL)cache;
- (void)setOwnedExclusivelyByParentProcess:(BOOL)process;
- (void)setUnusedSharedCacheRegion:(BOOL)region;
- (void)setVerbose:(BOOL)verbose;
@end

@implementation FPMemoryRegion

- (void)setInSharedCache:(BOOL)cache
{
  if (cache)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setUnusedSharedCacheRegion:(BOOL)region
{
  if (region)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setOwnedExclusivelyByParentProcess:(BOOL)process
{
  if (process)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setVerbose:(BOOL)verbose
{
  if (verbose)
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
    start = [(FPMemoryRegion *)self start];
    return [(FPMemoryRegion *)self size]+ start;
  }

  return result;
}

- (void)setEnd:(unint64_t)end
{
  if ([(FPMemoryRegion *)self start]> end)
  {
    __assert_rtn("[FPMemoryRegion setEnd:]", "FPMemoryRegion.m", 185, "end >= self.start");
  }

  v5 = end - [(FPMemoryRegion *)self start];

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

- (void)addSubrange:(_NSRange)subrange memoryTotal:(id *)total
{
  length = subrange.length;
  location = subrange.location;
  subrangeList = self->_subrangeList;
  if (!subrangeList)
  {
    v9 = objc_alloc_init(FPRangeList);
    v10 = self->_subrangeList;
    self->_subrangeList = v9;

    subrangeList = self->_subrangeList;
  }

  sub_297E25A38(subrangeList, location, length, total);
}

+ (id)vmLedgerNameForTag:(unint64_t)tag
{
  if (tag > 5)
  {
    v3 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"VM ledger tag %llu", tag];
  }

  else
  {
    v3 = qword_29EE853C8[tag];
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

- (BOOL)eligibleForSubrangesUsingPageSize:(unint64_t)size
{
  if (![(FPMemoryRegion *)self isFake])
  {
    eligibleForProcessView = [(FPMemoryRegion *)self eligibleForProcessView];
    if (!eligibleForProcessView)
    {
      return eligibleForProcessView;
    }

    if (self->_size > size && ![(FPMemoryRegion *)self ownedExclusivelyByParentProcess])
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
              LOBYTE(eligibleForProcessView) = (swappedSize | dirtySize | cleanSize | reclaimableSize) != 0;
              return eligibleForProcessView;
            }
          }
        }
      }
    }
  }

  LOBYTE(eligibleForProcessView) = 0;
  return eligibleForProcessView;
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
  fullName = [(FPMemoryRegion *)self fullName];
  if (offset)
  {
    v6 = self->_offset;
    start = self->_start;
    v8 = [(FPMemoryRegion *)self end];
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_size];
    [v4 stringWithFormat:@"%@ Offset %#llx [%#llx - %#llx](%@)", fullName, v6, start, v8, v9];
  }

  else
  {
    v10 = self->_start;
    v11 = [(FPMemoryRegion *)self end];
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_size];
    [v4 stringWithFormat:@"%@ [%#llx - %#llx](%@)", fullName, v10, v11, v9, v14];
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

- (void)setExtendedInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock(&unk_2A18A6030);
  if (qword_2A18A6048[0] != -1)
  {
    dispatch_once(qword_2A18A6048, &unk_2A1E8FA50);
  }

  [qword_2A18A6040 setObject:infoCopy forKey:self];

  os_unfair_lock_unlock(&unk_2A18A6030);
}

@end