@interface FPMemoryRegion
- (BOOL)containsFakeRegion;
- (NSString)description;
- (NSString)extendedInfo;
- (NSString)fullName;
- (id)ensureMemoryObject;
- (unint64_t)wiredSize;
- (void)setExtendedInfo:(id)info;
- (void)setVerbose:(BOOL)verbose;
@end

@implementation FPMemoryRegion

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

- (unint64_t)wiredSize
{
  if (self)
  {
    if (*(self + 8))
    {
      return *(self + 88);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (NSString)fullName
{
  v3 = self->_detailedName;
  v4 = v3;
  if (v3 && [(NSString *)v3 length])
  {
    v5 = [[NSString alloc] initWithFormat:@"%@ %@", self->_name, v4];
  }

  else
  {
    v5 = self->_name;
  }

  v6 = v5;

  return v6;
}

- (NSString)description
{
  offset = self->_offset;
  fullName = [(FPMemoryRegion *)self fullName];
  if (offset)
  {
    v5 = self->_offset;
    start = self->_start;
    if (start == -1)
    {
      v7 = -1;
    }

    else
    {
      v7 = self->_size + start;
    }

    v8 = [NSNumber numberWithUnsignedLongLong:?];
    [NSString stringWithFormat:@"%@ Offset %#llx [%#llx - %#llx](%@)", fullName, v5, start, v7, v8];
  }

  else
  {
    v9 = self->_start;
    if (v9 == -1)
    {
      v10 = -1;
    }

    else
    {
      v10 = self->_size + v9;
    }

    v8 = [NSNumber numberWithUnsignedLongLong:?];
    [NSString stringWithFormat:@"%@ [%#llx - %#llx](%@)", fullName, v9, v10, v8, v13];
  }
  v11 = ;

  return v11;
}

- (BOOL)containsFakeRegion
{
  if (self)
  {
    LOBYTE(self) = self->_user_tag == -1;
  }

  return self;
}

- (id)ensureMemoryObject
{
  v3 = objc_alloc_init(FPMemoryObject);
  v4 = v3;
  self->_memoryObject = v3;
  if (v3)
  {
    sub_100002E74(v3, self, 0);
  }

  return v4;
}

- (NSString)extendedInfo
{
  os_unfair_lock_lock(&unk_1000344F8);
  if (qword_100034510[0] != -1)
  {
    dispatch_once(qword_100034510, &stru_1000290E8);
  }

  v3 = [qword_100034508 objectForKey:self];
  os_unfair_lock_unlock(&unk_1000344F8);

  return v3;
}

- (void)setExtendedInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock(&unk_1000344F8);
  if (qword_100034510[0] != -1)
  {
    dispatch_once(qword_100034510, &stru_1000290E8);
  }

  [qword_100034508 setObject:infoCopy forKey:self];

  os_unfair_lock_unlock(&unk_1000344F8);
}

@end