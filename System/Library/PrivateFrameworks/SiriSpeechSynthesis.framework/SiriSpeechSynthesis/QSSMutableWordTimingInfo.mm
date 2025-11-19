@interface QSSMutableWordTimingInfo
- (QSSMutableWordTimingInfo)init;
- (float)timestamp;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)length;
- (unsigned)offset;
- (unsigned)sample_idx;
- (void)setLength:(unsigned int)a3;
- (void)setOffset:(unsigned int)a3;
- (void)setSample_idx:(unsigned int)a3;
- (void)setTimestamp:(float)a3;
- (void)setWord:(id)a3;
@end

@implementation QSSMutableWordTimingInfo

- (void)setTimestamp:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)timestamp
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"timestamp"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setLength:(unsigned int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)length
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"length"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setOffset:(unsigned int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)offset
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"offset"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setSample_idx:(unsigned int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)sample_idx
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"sample_idx"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setWord:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableWordTimingInfo)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableWordTimingInfo;
  v2 = [(QSSMutableWordTimingInfo *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end