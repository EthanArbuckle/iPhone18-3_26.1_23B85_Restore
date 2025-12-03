@interface WBSMemoryFootprintMallocZone
- (WBSMemoryFootprintMallocZone)initWithCoder:(id)coder;
- (WBSMemoryFootprintMallocZone)initWithMallocZone:(_malloc_zone_t *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSMemoryFootprintMallocZone

- (WBSMemoryFootprintMallocZone)initWithMallocZone:(_malloc_zone_t *)zone
{
  v11.receiver = self;
  v11.super_class = WBSMemoryFootprintMallocZone;
  v4 = [(WBSMemoryFootprintMallocZone *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_addr = zone;
    zone_name = malloc_get_zone_name(zone);
    if (zone_name)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:zone_name];
      name = v5->_name;
      v5->_name = v7;
    }

    malloc_zone_statistics(zone, &v5->_statistics);
    v9 = v5;
  }

  return v5;
}

- (WBSMemoryFootprintMallocZone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WBSMemoryFootprintMallocZone;
  v5 = [(WBSMemoryFootprintMallocZone *)&v13 init];
  if (v5)
  {
    v5->_addr = [coderCopy decodeIntegerForKey:@"addr"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stats"];
    if ([v8 length] >= 0x20)
    {
      bytes = [v8 bytes];
      v10 = bytes[1];
      *&v5->_statistics.blocks_in_use = *bytes;
      *&v5->_statistics.max_size_in_use = v10;
    }

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  addr = self->_addr;
  coderCopy = coder;
  [coderCopy encodeInteger:addr forKey:@"addr"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_statistics length:32];
  [coderCopy encodeObject:v6 forKey:@"stats"];
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_addr];
  [v3 setObject:v4 forKeyedSubscript:@"addr"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_statistics.blocks_in_use];
  [v3 setObject:v5 forKeyedSubscript:@"blocks_in_use"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_statistics.max_size_in_use];
  [v3 setObject:v6 forKeyedSubscript:@"max_size_in_use"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_statistics.size_allocated];
  [v3 setObject:v7 forKeyedSubscript:@"size_allocated"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_statistics.size_in_use];
  [v3 setObject:v8 forKeyedSubscript:@"size_in_use"];

  [v3 setObject:self->_name forKeyedSubscript:@"name"];

  return v3;
}

@end