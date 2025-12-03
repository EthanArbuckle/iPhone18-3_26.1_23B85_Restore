@interface OPTTSMutableAudioDescription
- (OPTTSMutableAudioDescription)init;
- (double)sample_rate;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)bits_per_channel;
- (unsigned)bytes_per_frame;
- (unsigned)bytes_per_packet;
- (unsigned)channels_per_frame;
- (unsigned)format_flags;
- (unsigned)format_id;
- (unsigned)frames_per_packet;
- (unsigned)reserved;
- (void)setBits_per_channel:(unsigned int)bits_per_channel;
- (void)setBytes_per_frame:(unsigned int)bytes_per_frame;
- (void)setBytes_per_packet:(unsigned int)bytes_per_packet;
- (void)setChannels_per_frame:(unsigned int)channels_per_frame;
- (void)setFormat_flags:(unsigned int)format_flags;
- (void)setFormat_id:(unsigned int)format_id;
- (void)setFrames_per_packet:(unsigned int)frames_per_packet;
- (void)setReserved:(unsigned int)reserved;
- (void)setSample_rate:(double)sample_rate;
@end

@implementation OPTTSMutableAudioDescription

- (void)setReserved:(unsigned int)reserved
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:reserved];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)reserved
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"reserved"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setBits_per_channel:(unsigned int)bits_per_channel
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:bits_per_channel];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)bits_per_channel
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"bits_per_channel"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setChannels_per_frame:(unsigned int)channels_per_frame
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:channels_per_frame];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)channels_per_frame
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"channels_per_frame"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setBytes_per_frame:(unsigned int)bytes_per_frame
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:bytes_per_frame];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)bytes_per_frame
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"bytes_per_frame"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setFrames_per_packet:(unsigned int)frames_per_packet
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:frames_per_packet];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)frames_per_packet
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"frames_per_packet"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setBytes_per_packet:(unsigned int)bytes_per_packet
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:bytes_per_packet];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)bytes_per_packet
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"bytes_per_packet"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setFormat_flags:(unsigned int)format_flags
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:format_flags];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)format_flags
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"format_flags"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setFormat_id:(unsigned int)format_id
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:format_id];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)format_id
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"format_id"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setSample_rate:(double)sample_rate
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:sample_rate];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)sample_rate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"sample_rate"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableAudioDescription)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableAudioDescription;
  v2 = [(OPTTSMutableAudioDescription *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end