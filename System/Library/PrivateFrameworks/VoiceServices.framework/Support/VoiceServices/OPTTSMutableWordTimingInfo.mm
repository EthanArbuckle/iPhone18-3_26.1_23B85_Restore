@interface OPTTSMutableWordTimingInfo
- (OPTTSMutableWordTimingInfo)init;
- (float)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)length;
- (unsigned)offset;
- (unsigned)sample_idx;
- (void)setLength:(unsigned int)length;
- (void)setOffset:(unsigned int)offset;
- (void)setSample_idx:(unsigned int)sample_idx;
- (void)setTimestamp:(float)timestamp;
- (void)setWord:(id)word;
@end

@implementation OPTTSMutableWordTimingInfo

- (void)setTimestamp:(float)timestamp
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = timestamp;
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

- (void)setLength:(unsigned int)length
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:length];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)length
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"length"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setOffset:(unsigned int)offset
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:offset];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)offset
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"offset"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setSample_idx:(unsigned int)sample_idx
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:sample_idx];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)sample_idx
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"sample_idx"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setWord:(id)word
{
  v4 = [word copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableWordTimingInfo)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableWordTimingInfo;
  v2 = [(OPTTSMutableWordTimingInfo *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end