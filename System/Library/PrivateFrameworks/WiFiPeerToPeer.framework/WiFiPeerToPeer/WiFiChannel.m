@interface WiFiChannel
- (BOOL)isEqual:(id)a3;
- (WiFiChannel)initWithChannelNumber:(unsigned int)a3 bandwidth:(int64_t)a4 is2_4GHz:(BOOL)a5 is5GHz:(BOOL)a6 is6GHz:(BOOL)a7 isDFS:(BOOL)a8 extensionChannelAbove:(BOOL)a9;
- (WiFiChannel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiChannel

- (WiFiChannel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"WiFiChannel.channelNumberKey"];
  v6 = [v4 decodeIntegerForKey:@"WiFiChannel.bandwidthKey"];
  v7 = [v4 decodeBoolForKey:@"WiFiChannel.is2_4GHzKey"];
  v8 = [v4 decodeBoolForKey:@"WiFiChannel.is5GHzKey"];
  v9 = [v4 decodeBoolForKey:@"WiFiChannel.is6GHzKey"];
  v10 = [v4 decodeBoolForKey:@"WiFiChannel.isDFSKey"];
  v11 = [v4 decodeBoolForKey:@"WiFiChannel.extensionChannelAboveKey"];

  LOBYTE(v13) = v11;
  return [(WiFiChannel *)self initWithChannelNumber:v5 bandwidth:v6 is2_4GHz:v7 is5GHz:v8 is6GHz:v9 isDFS:v10 extensionChannelAbove:v13];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[WiFiChannel channelNumber](self forKey:{"channelNumber"), @"WiFiChannel.channelNumberKey"}];
  [v4 encodeInteger:-[WiFiChannel bandwidth](self forKey:{"bandwidth"), @"WiFiChannel.bandwidthKey"}];
  [v4 encodeBool:-[WiFiChannel is2_4GHz](self forKey:{"is2_4GHz"), @"WiFiChannel.is2_4GHzKey"}];
  [v4 encodeBool:-[WiFiChannel is5GHz](self forKey:{"is5GHz"), @"WiFiChannel.is5GHzKey"}];
  [v4 encodeBool:self->_is6GHz forKey:@"WiFiChannel.is6GHzKey"];
  [v4 encodeBool:-[WiFiChannel isDFS](self forKey:{"isDFS"), @"WiFiChannel.isDFSKey"}];
  [v4 encodeBool:-[WiFiChannel extensionChannelAbove](self forKey:{"extensionChannelAbove"), @"WiFiChannel.extensionChannelAboveKey"}];
}

- (WiFiChannel)initWithChannelNumber:(unsigned int)a3 bandwidth:(int64_t)a4 is2_4GHz:(BOOL)a5 is5GHz:(BOOL)a6 is6GHz:(BOOL)a7 isDFS:(BOOL)a8 extensionChannelAbove:(BOOL)a9
{
  v16.receiver = self;
  v16.super_class = WiFiChannel;
  result = [(WiFiChannel *)&v16 init];
  if (result)
  {
    result->_channelNumber = a3;
    result->_bandwidth = a4;
    result->_is2_4GHz = a5;
    result->_is5GHz = a6;
    result->_is6GHz = a7;
    result->_isDFS = a8;
    result->_extensionChannelAbove = a9;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[WiFiChannel channelNumber](self, "channelNumber")}];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = [(WiFiChannel *)self channelNumber];
  if (v6 == [v5 channelNumber])
  {
    v7 = [(WiFiChannel *)self bandwidth];
    if (v7 == [v5 bandwidth])
    {
      v8 = [(WiFiChannel *)self is2_4GHz];
      if (v8 == [v5 is2_4GHz])
      {
        v9 = [(WiFiChannel *)self is5GHz];
        if (v9 == [v5 is5GHz] && self->_is6GHz == v5[10])
        {
          v10 = [(WiFiChannel *)self isDFS];
          if (v10 == [v5 isDFS])
          {
            v11 = [(WiFiChannel *)self extensionChannelAbove];
            if (v11 == [v5 extensionChannelAbove])
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
  v3 = [(WiFiChannel *)self bandwidth];
  if ((v3 - 3) >= 3)
  {
    if (v3 == 2)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WiFiChannel alloc];
  v5 = [(WiFiChannel *)self channelNumber];
  v6 = [(WiFiChannel *)self bandwidth];
  v7 = [(WiFiChannel *)self is2_4GHz];
  v8 = [(WiFiChannel *)self is5GHz];
  is6GHz = self->_is6GHz;
  v10 = [(WiFiChannel *)self isDFS];
  LOBYTE(v12) = [(WiFiChannel *)self extensionChannelAbove];
  return [(WiFiChannel *)v4 initWithChannelNumber:v5 bandwidth:v6 is2_4GHz:v7 is5GHz:v8 is6GHz:is6GHz isDFS:v10 extensionChannelAbove:v12];
}

@end