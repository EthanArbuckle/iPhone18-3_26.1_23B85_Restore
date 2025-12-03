@interface WiFiChannel
- (BOOL)isEqual:(id)equal;
- (WiFiChannel)initWithChannelNumber:(unsigned int)number bandwidth:(int64_t)bandwidth is2_4GHz:(BOOL)hz is5GHz:(BOOL)gHz is6GHz:(BOOL)is6GHz isDFS:(BOOL)s extensionChannelAbove:(BOOL)above;
- (WiFiChannel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiChannel

- (WiFiChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"WiFiChannel.channelNumberKey"];
  v6 = [coderCopy decodeIntegerForKey:@"WiFiChannel.bandwidthKey"];
  v7 = [coderCopy decodeBoolForKey:@"WiFiChannel.is2_4GHzKey"];
  v8 = [coderCopy decodeBoolForKey:@"WiFiChannel.is5GHzKey"];
  v9 = [coderCopy decodeBoolForKey:@"WiFiChannel.is6GHzKey"];
  v10 = [coderCopy decodeBoolForKey:@"WiFiChannel.isDFSKey"];
  v11 = [coderCopy decodeBoolForKey:@"WiFiChannel.extensionChannelAboveKey"];

  LOBYTE(v13) = v11;
  return [(WiFiChannel *)self initWithChannelNumber:v5 bandwidth:v6 is2_4GHz:v7 is5GHz:v8 is6GHz:v9 isDFS:v10 extensionChannelAbove:v13];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[WiFiChannel channelNumber](self forKey:{"channelNumber"), @"WiFiChannel.channelNumberKey"}];
  [coderCopy encodeInteger:-[WiFiChannel bandwidth](self forKey:{"bandwidth"), @"WiFiChannel.bandwidthKey"}];
  [coderCopy encodeBool:-[WiFiChannel is2_4GHz](self forKey:{"is2_4GHz"), @"WiFiChannel.is2_4GHzKey"}];
  [coderCopy encodeBool:-[WiFiChannel is5GHz](self forKey:{"is5GHz"), @"WiFiChannel.is5GHzKey"}];
  [coderCopy encodeBool:self->_is6GHz forKey:@"WiFiChannel.is6GHzKey"];
  [coderCopy encodeBool:-[WiFiChannel isDFS](self forKey:{"isDFS"), @"WiFiChannel.isDFSKey"}];
  [coderCopy encodeBool:-[WiFiChannel extensionChannelAbove](self forKey:{"extensionChannelAbove"), @"WiFiChannel.extensionChannelAboveKey"}];
}

- (WiFiChannel)initWithChannelNumber:(unsigned int)number bandwidth:(int64_t)bandwidth is2_4GHz:(BOOL)hz is5GHz:(BOOL)gHz is6GHz:(BOOL)is6GHz isDFS:(BOOL)s extensionChannelAbove:(BOOL)above
{
  v16.receiver = self;
  v16.super_class = WiFiChannel;
  result = [(WiFiChannel *)&v16 init];
  if (result)
  {
    result->_channelNumber = number;
    result->_bandwidth = bandwidth;
    result->_is2_4GHz = hz;
    result->_is5GHz = gHz;
    result->_is6GHz = is6GHz;
    result->_isDFS = s;
    result->_extensionChannelAbove = above;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[WiFiChannel channelNumber](self, "channelNumber")}];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
LABEL_12:
    v12 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v5 = equalCopy;
  channelNumber = [(WiFiChannel *)self channelNumber];
  if (channelNumber == [v5 channelNumber])
  {
    bandwidth = [(WiFiChannel *)self bandwidth];
    if (bandwidth == [v5 bandwidth])
    {
      is2_4GHz = [(WiFiChannel *)self is2_4GHz];
      if (is2_4GHz == [v5 is2_4GHz])
      {
        is5GHz = [(WiFiChannel *)self is5GHz];
        if (is5GHz == [v5 is5GHz] && self->_is6GHz == v5[10])
        {
          isDFS = [(WiFiChannel *)self isDFS];
          if (isDFS == [v5 isDFS])
          {
            extensionChannelAbove = [(WiFiChannel *)self extensionChannelAbove];
            if (extensionChannelAbove == [v5 extensionChannelAbove])
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)description
{
  bandwidth = [(WiFiChannel *)self bandwidth];
  if ((bandwidth - 3) >= 3)
  {
    if (bandwidth == 2)
    {
      if ([(WiFiChannel *)self extensionChannelAbove])
      {
        v4 = @"+";
      }

      else
      {
        v4 = @"-";
      }
    }

    else
    {
      v4 = &stru_2841A3278;
    }
  }

  else
  {
    v4 = @"yy";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%u%@", -[WiFiChannel channelNumber](self, "channelNumber"), v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WiFiChannel alloc];
  channelNumber = [(WiFiChannel *)self channelNumber];
  bandwidth = [(WiFiChannel *)self bandwidth];
  is2_4GHz = [(WiFiChannel *)self is2_4GHz];
  is5GHz = [(WiFiChannel *)self is5GHz];
  is6GHz = self->_is6GHz;
  isDFS = [(WiFiChannel *)self isDFS];
  LOBYTE(v12) = [(WiFiChannel *)self extensionChannelAbove];
  return [(WiFiChannel *)v4 initWithChannelNumber:channelNumber bandwidth:bandwidth is2_4GHz:is2_4GHz is5GHz:is5GHz is6GHz:is6GHz isDFS:isDFS extensionChannelAbove:v12];
}

@end