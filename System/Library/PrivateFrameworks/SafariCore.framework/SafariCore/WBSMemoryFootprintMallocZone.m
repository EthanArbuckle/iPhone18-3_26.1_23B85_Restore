@interface WBSMemoryFootprintMallocZone
- (WBSMemoryFootprintMallocZone)initWithCoder:(id)a3;
- (WBSMemoryFootprintMallocZone)initWithMallocZone:(_malloc_zone_t *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSMemoryFootprintMallocZone

- (WBSMemoryFootprintMallocZone)initWithMallocZone:(_malloc_zone_t *)a3
{
  v11.receiver = self;
  v11.super_class = WBSMemoryFootprintMallocZone;
  v4 = [(WBSMemoryFootprintMallocZone *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_addr = a3;
    zone_name = malloc_get_zone_name(a3);
    if (zone_name)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:zone_name];
      name = v5->_name;
      v5->_name = v7;
    }

    malloc_zone_statistics(a3, &v5->_statistics);
    v9 = v5;
  }

  return v5;
}

- (WBSMemoryFootprintMallocZone)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WBSMemoryFootprintMallocZone;
  v5 = [(WBSMemoryFootprintMallocZone *)&v13 init];
  if (v5)
  {
    v5->_addr = [v4 decodeIntegerForKey:@"addr"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stats"];
    if ([v8 length] >= 0x20)
    {
      v9 = [v8 bytes];
      v10 = v9[1];
      *&v5->_statistics.blocks_in_use = *v9;
      *&v5->_statistics.max_size_in_use = v10;
    }

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  addr = self->_addr;
  v5 = a3;
  [v5 encodeInteger:addr forKey:@"addr"];
  [v5 encodeObject:self->_name forKey:@"name"];
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_statistics length:32];
  [v5 encodeObject:v6 forKey:@"stats"];
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