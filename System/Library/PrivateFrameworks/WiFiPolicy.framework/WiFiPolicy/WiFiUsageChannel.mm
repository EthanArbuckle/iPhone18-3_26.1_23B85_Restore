@interface WiFiUsageChannel
+ (id)channelWithBssDetails:(id)details;
+ (id)channelWithChannelInfo:(id)info;
+ (id)channelWithScanChannel:(id)channel;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChannel:(id)channel;
- (WiFiUsageChannel)initWithChannel:(unint64_t)channel flags:(unint64_t)flags;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)updateDFSInfoFromSupportedChannels:(id)channels;
@end

@implementation WiFiUsageChannel

- (WiFiUsageChannel)initWithChannel:(unint64_t)channel flags:(unint64_t)flags
{
  v9.receiver = self;
  v9.super_class = WiFiUsageChannel;
  v6 = [(WiFiUsageChannel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(WiFiUsageChannel *)v6 setChannel:channel];
    [(WiFiUsageChannel *)v7 setChannelFlags:flags];
    [(WiFiUsageChannel *)v7 setBand:[WiFiUsagePrivacyFilter bandFromFlags:flags]];
    [(WiFiUsageChannel *)v7 setChannelWidth:[WiFiUsagePrivacyFilter channelWidthFromFlags:flags]];
  }

  return v7;
}

+ (id)channelWithBssDetails:(id)details
{
  detailsCopy = details;
  v5 = [self alloc];
  channel = [detailsCopy channel];
  channelFlags = [detailsCopy channelFlags];
  band = [detailsCopy band];
  channelWidth = [detailsCopy channelWidth];

  v10 = [v5 initWithChannel:channel flags:channelFlags band:band width:channelWidth isDFS:0];

  return v10;
}

+ (id)channelWithChannelInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"CHANNELINFO_CH_NUM"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [infoCopy objectForKeyedSubscript:@"CHANNELINFO_DFS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[self alloc] initWithChannel:objc_msgSend(v5 flags:"integerValue") band:0 width:+[WiFiUsagePrivacyFilter bandFromChanInfo:](WiFiUsagePrivacyFilter isDFS:{"bandFromChanInfo:", infoCopy), 0, objc_msgSend(v6, "BOOLValue")}];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)channelWithScanChannel:(id)channel
{
  channelCopy = channel;
  v5 = [channelCopy objectForKeyedSubscript:@"CHANNEL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [channelCopy objectForKeyedSubscript:@"CHANNEL_FLAGS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[self alloc] initWithChannel:objc_msgSend(v5 flags:{"integerValue"), objc_msgSend(v6, "integerValue")}];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateDFSInfoFromSupportedChannels:(id)channels
{
  v4 = [channels member:self];
  if (v4)
  {
    v5 = v4;
    -[WiFiUsageChannel setIsDFSChannel:](self, "setIsDFSChannel:", [v4 isDFSChannel]);
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%Xu_%lu", self->_band, self->_channel];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WiFiUsageChannel *)self isEqualToChannel:equalCopy];

  return v5;
}

- (BOOL)isEqualToChannel:(id)channel
{
  channelCopy = channel;
  channel = [channelCopy channel];
  if (channel == [(WiFiUsageChannel *)self channel])
  {
    band = [channelCopy band];
    v7 = band == [(WiFiUsageChannel *)self band];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 2) = self->_channel;
  *(result + 3) = self->_channelFlags;
  *(result + 3) = self->_band;
  *(result + 4) = self->_channelWidth;
  *(result + 8) = self->_isDFSChannel;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [WiFiUsagePrivacyFilter bandAsString:[(WiFiUsageChannel *)self band]];
  channel = [(WiFiUsageChannel *)self channel];
  isDFSChannel = [(WiFiUsageChannel *)self isDFSChannel];
  v7 = @"NO";
  if (isDFSChannel)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"{band:%@ channel:%lu isDFS:%@}", v4, channel, v7];

  return v8;
}

@end