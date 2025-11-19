@interface NWUUIDMapper
- (id)description;
@end

@implementation NWUUIDMapper

- (id)description
{
  v3 = formattedDateStringForTimeInterval(self->_lastAccessDate);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  usageFlags = self->_usageFlags;
  v6 = " nw-activity";
  if ((usageFlags & 2) == 0)
  {
    v6 = "";
  }

  v7 = " nw-parent";
  if ((usageFlags & 4) == 0)
  {
    v7 = "";
  }

  v8 = " nw-epilogue";
  if ((usageFlags & 8) == 0)
  {
    v8 = "";
  }

  v9 = " nw-epi-parent";
  if ((usageFlags & 0x10) == 0)
  {
    v9 = "";
  }

  v10 = " nw-libnetcore";
  if ((usageFlags & 0x20) == 0)
  {
    v10 = "";
  }

  v11 = " nw-cfnet";
  if ((usageFlags & 0x40) == 0)
  {
    v11 = "";
  }

  v12 = " nw-wifi";
  if ((usageFlags & 0x200) == 0)
  {
    v12 = "";
  }

  v13 = " nw-cell";
  if ((usageFlags & 0x400) == 0)
  {
    v13 = "";
  }

  v14 = " conn-cfnet";
  if ((usageFlags & 0x80) == 0)
  {
    v14 = "";
  }

  v15 = " conn-libnetcore";
  if ((usageFlags & 0x100) == 0)
  {
    v15 = "";
  }

  v16 = " client-metric";
  if ((usageFlags & 0x800) == 0)
  {
    v16 = "";
  }

  if ((usageFlags & 0x8000) != 0)
  {
    v17 = " null-uuid";
  }

  else
  {
    v17 = "";
  }

  v18 = [v4 initWithFormat:@"NWUUIDMapper at %p external UUID %@ lastAccess %@ %s%s%s%s%s%s%s%s%s%s%s%s", self, @"<private>", v3, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17];

  return v18;
}

@end