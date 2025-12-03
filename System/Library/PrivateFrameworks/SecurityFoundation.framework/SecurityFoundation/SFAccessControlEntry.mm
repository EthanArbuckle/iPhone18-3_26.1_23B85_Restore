@interface SFAccessControlEntry
- (NSString)bundleID;
- (SFAccessControlEntry)initWithBundleID:(id)d owner:(BOOL)owner canRead:(BOOL)read canWrite:(BOOL)write;
- (SFAccessControlEntry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBundleID:(id)d;
- (void)setCanRead:(BOOL)read;
- (void)setCanWrite:(BOOL)write;
@end

@implementation SFAccessControlEntry

- (SFAccessControlEntry)initWithBundleID:(id)d owner:(BOOL)owner canRead:(BOOL)read canWrite:(BOOL)write
{
  writeCopy = write;
  readCopy = read;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = SFAccessControlEntry;
  v11 = [(SFAccessControlEntry *)&v18 init];
  if (v11)
  {
    v12 = [dCopy copy];
    accessControlEntryInternal = v11->_accessControlEntryInternal;
    v14 = accessControlEntryInternal[1];
    accessControlEntryInternal[1] = v12;

    *(v11->_accessControlEntryInternal + 16) = *(v11->_accessControlEntryInternal + 16) & 0xFE | owner;
    if (readCopy)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *(v11->_accessControlEntryInternal + 16) = *(v11->_accessControlEntryInternal + 16) & 0xFD | v15;
    if (writeCopy)
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    *(v11->_accessControlEntryInternal + 16) = *(v11->_accessControlEntryInternal + 16) & 0xFB | v16;
  }

  return v11;
}

- (SFAccessControlEntry)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFAccessControlEntry;
  return [(SFAccessControlEntry *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  accessControlEntryInternal = self->_accessControlEntryInternal;
  v6 = accessControlEntryInternal[1];
  v7 = *(accessControlEntryInternal + 16);

  return [v4 initWithBundleID:v6 owner:v7 & 1 canRead:(v7 >> 1) & 1 canWrite:(v7 >> 2) & 1];
}

- (void)setCanRead:(BOOL)read
{
  if (read)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self->_accessControlEntryInternal + 16) = *(self->_accessControlEntryInternal + 16) & 0xFD | v3;
}

- (void)setCanWrite:(BOOL)write
{
  if (write)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self->_accessControlEntryInternal + 16) = *(self->_accessControlEntryInternal + 16) & 0xFB | v3;
}

- (NSString)bundleID
{
  v2 = [*(self->_accessControlEntryInternal + 1) copy];

  return v2;
}

- (void)setBundleID:(id)d
{
  v4 = [d copy];
  accessControlEntryInternal = self->_accessControlEntryInternal;
  v6 = accessControlEntryInternal[1];
  accessControlEntryInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end