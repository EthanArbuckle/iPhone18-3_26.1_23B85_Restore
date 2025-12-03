@interface W5WiFiChannel
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChannel:(id)channel;
- (W5WiFiChannel)initWithChannel:(int64_t)channel flags:(unsigned int)flags;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)band;
- (int64_t)channelWidth;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5WiFiChannel

- (W5WiFiChannel)initWithChannel:(int64_t)channel flags:(unsigned int)flags
{
  v7.receiver = self;
  v7.super_class = W5WiFiChannel;
  result = [(W5WiFiChannel *)&v7 init];
  if (result)
  {
    result->_channel = channel;
    result->_flags = flags;
  }

  return result;
}

- (int64_t)channelWidth
{
  flags = self->_flags;
  v3 = 80;
  v4 = 40;
  v5 = 20;
  if ((flags & 2) == 0)
  {
    v5 = -1;
  }

  if ((flags & 4) == 0)
  {
    v4 = v5;
  }

  if ((flags & 0x400) == 0)
  {
    v3 = v4;
  }

  if ((flags & 0x800) != 0)
  {
    return 160;
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  if (!objc_opt_class())
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%ldg%ld/%ld", -[W5WiFiChannel band](self, "band"), -[W5WiFiChannel channel](self, "channel"), -[W5WiFiChannel channelWidth](self, "channelWidth")];
  }

  v3 = objc_alloc_init(MEMORY[0x277D02AF8]);
  [v3 setChannel:{-[W5WiFiChannel channel](self, "channel")}];
  [v3 setFlags:{-[W5WiFiChannel flags](self, "flags")}];

  return [v3 description];
}

- (int64_t)band
{
  flags = self->_flags;
  v3 = 5;
  v4 = 6;
  if ((flags & 0x2000) == 0)
  {
    v4 = -1;
  }

  if ((flags & 0x10) == 0)
  {
    v3 = v4;
  }

  if ((flags & 8) != 0)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5WiFiChannel;
  if (-[W5WiFiChannel conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToChannel:(id)channel
{
  channel = self->_channel;
  if (channel != [channel channel])
  {
    return 0;
  }

  flags = self->_flags;
  return flags == [channel flags];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5WiFiChannel *)self isEqualToChannel:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [W5WiFiChannel allocWithZone:zone];
  channel = self->_channel;
  flags = self->_flags;

  return [(W5WiFiChannel *)v4 initWithChannel:channel flags:flags];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_channel forKey:@"_channel"];
  flags = self->_flags;

  [coder encodeInt:flags forKey:@"_flags"];
}

@end