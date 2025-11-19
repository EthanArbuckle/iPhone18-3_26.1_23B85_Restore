@interface WiFiUsageChannel
+ (id)channelWithBssDetails:(id)a3;
+ (id)channelWithChannelInfo:(id)a3;
+ (id)channelWithScanChannel:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChannel:(id)a3;
- (WiFiUsageChannel)initWithChannel:(unint64_t)a3 flags:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)updateDFSInfoFromSupportedChannels:(id)a3;
@end

@implementation WiFiUsageChannel

- (WiFiUsageChannel)initWithChannel:(unint64_t)a3 flags:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = WiFiUsageChannel;
  v6 = [(WiFiUsageChannel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(WiFiUsageChannel *)v6 setChannel:a3];
    [(WiFiUsageChannel *)v7 setChannelFlags:a4];
    [(WiFiUsageChannel *)v7 setBand:[WiFiUsagePrivacyFilter bandFromFlags:a4]];
    [(WiFiUsageChannel *)v7 setChannelWidth:[WiFiUsagePrivacyFilter channelWidthFromFlags:a4]];
  }

  return v7;
}

+ (id)channelWithBssDetails:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 channel];
  v7 = [v4 channelFlags];
  v8 = [v4 band];
  v9 = [v4 channelWidth];

  v10 = [v5 initWithChannel:v6 flags:v7 band:v8 width:v9 isDFS:0];

  return v10;
}

+ (id)channelWithChannelInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"CHANNELINFO_CH_NUM"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:@"CHANNELINFO_DFS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[a1 alloc] initWithChannel:objc_msgSend(v5 flags:"integerValue") band:0 width:+[WiFiUsagePrivacyFilter bandFromChanInfo:](WiFiUsagePrivacyFilter isDFS:{"bandFromChanInfo:", v4), 0, objc_msgSend(v6, "BOOLValue")}];
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

+ (id)channelWithScanChannel:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"CHANNEL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[a1 alloc] initWithChannel:objc_msgSend(v5 flags:{"integerValue"), objc_msgSend(v6, "integerValue")}];
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

- (void)updateDFSInfoFromSupportedChannels:(id)a3
{
  v4 = [a3 member:self];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WiFiUsageChannel *)self isEqualToChannel:v4];

  return v5;
}

- (BOOL)isEqualToChannel:(id)a3
{
  v4 = a3;
  v5 = [v4 channel];
  if (v5 == [(WiFiUsageChannel *)self channel])
  {
    v6 = [v4 band];
    v7 = v6 == [(WiFiUsageChannel *)self band];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v5 = [(WiFiUsageChannel *)self channel];
  v6 = [(WiFiUsageChannel *)self isDFSChannel];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"{band:%@ channel:%lu isDFS:%@}", v4, v5, v7];

  return v8;
}

@end