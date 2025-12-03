@interface TUConversationUnreliableMessengerConfig
+ (id)shared;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationUnreliableMessengerConfig:(id)config;
- (TUConversationUnreliableMessengerConfig)initWithCoder:(id)coder;
- (TUConversationUnreliableMessengerConfig)initWithEstablishChannelMaxAttempts:(unint64_t)attempts establishChannelRetryIntervalMillis:(unint64_t)millis egressMessagePayloadMaxSizeBytes:(unint64_t)bytes channelStreamMaxQueueSize:(unint64_t)size channelStreamMaxTries:(unint64_t)tries channelStreamRetryIntervalMillis:(unint64_t)intervalMillis seqNumBufferSize:(unint64_t)bufferSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationUnreliableMessengerConfig

- (TUConversationUnreliableMessengerConfig)initWithEstablishChannelMaxAttempts:(unint64_t)attempts establishChannelRetryIntervalMillis:(unint64_t)millis egressMessagePayloadMaxSizeBytes:(unint64_t)bytes channelStreamMaxQueueSize:(unint64_t)size channelStreamMaxTries:(unint64_t)tries channelStreamRetryIntervalMillis:(unint64_t)intervalMillis seqNumBufferSize:(unint64_t)bufferSize
{
  v16.receiver = self;
  v16.super_class = TUConversationUnreliableMessengerConfig;
  result = [(TUConversationUnreliableMessengerConfig *)&v16 init];
  if (result)
  {
    result->_establishChannelMaxAttempts = attempts;
    result->_establishChannelRetryIntervalMillis = millis;
    result->_egressMessagePayloadMaxSizeBytes = bytes;
    result->_channelStreamMaxQueueSize = size;
    result->_channelStreamMaxTries = tries;
    result->_channelStreamRetryIntervalMillis = intervalMillis;
    result->_seqNumBufferSize = bufferSize;
  }

  return result;
}

+ (id)shared
{
  v2 = [[self alloc] initWithEstablishChannelMaxAttempts:3 establishChannelRetryIntervalMillis:1000 egressMessagePayloadMaxSizeBytes:1180 channelStreamMaxQueueSize:1000 channelStreamMaxTries:3 channelStreamRetryIntervalMillis:3000 seqNumBufferSize:1024];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" establishChannelMaxAttempts=%lu", -[TUConversationUnreliableMessengerConfig establishChannelMaxAttempts](self, "establishChannelMaxAttempts")];
  [v3 appendFormat:@" establishChannelRetryIntervalMillis=%lu", -[TUConversationUnreliableMessengerConfig establishChannelRetryIntervalMillis](self, "establishChannelRetryIntervalMillis")];
  [v3 appendFormat:@" egressMessagePayloadMaxSizeBytes=%lu", -[TUConversationUnreliableMessengerConfig egressMessagePayloadMaxSizeBytes](self, "egressMessagePayloadMaxSizeBytes")];
  [v3 appendFormat:@" channelStreamMaxQueueSize=%lu", -[TUConversationUnreliableMessengerConfig channelStreamMaxQueueSize](self, "channelStreamMaxQueueSize")];
  [v3 appendFormat:@" channelStreamMaxTries=%lu", -[TUConversationUnreliableMessengerConfig channelStreamMaxTries](self, "channelStreamMaxTries")];
  [v3 appendFormat:@" channelStreamRetryIntervalMillis=%lu", -[TUConversationUnreliableMessengerConfig channelStreamRetryIntervalMillis](self, "channelStreamRetryIntervalMillis")];
  [v3 appendFormat:@" seqNumBufferSize=%lu", -[TUConversationUnreliableMessengerConfig seqNumBufferSize](self, "seqNumBufferSize")];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationUnreliableMessengerConfig *)self isEqualToConversationUnreliableMessengerConfig:equalCopy];

  return v5;
}

- (BOOL)isEqualToConversationUnreliableMessengerConfig:(id)config
{
  configCopy = config;
  establishChannelMaxAttempts = [(TUConversationUnreliableMessengerConfig *)self establishChannelMaxAttempts];
  if (establishChannelMaxAttempts == [configCopy establishChannelMaxAttempts] && (v6 = -[TUConversationUnreliableMessengerConfig establishChannelRetryIntervalMillis](self, "establishChannelRetryIntervalMillis"), v6 == objc_msgSend(configCopy, "establishChannelRetryIntervalMillis")) && (v7 = -[TUConversationUnreliableMessengerConfig egressMessagePayloadMaxSizeBytes](self, "egressMessagePayloadMaxSizeBytes"), v7 == objc_msgSend(configCopy, "egressMessagePayloadMaxSizeBytes")) && (v8 = -[TUConversationUnreliableMessengerConfig channelStreamMaxQueueSize](self, "channelStreamMaxQueueSize"), v8 == objc_msgSend(configCopy, "channelStreamMaxQueueSize")) && (v9 = -[TUConversationUnreliableMessengerConfig channelStreamMaxTries](self, "channelStreamMaxTries"), v9 == objc_msgSend(configCopy, "channelStreamMaxTries")) && (v10 = -[TUConversationUnreliableMessengerConfig channelStreamRetryIntervalMillis](self, "channelStreamRetryIntervalMillis"), v10 == objc_msgSend(configCopy, "channelStreamRetryIntervalMillis")) && (v11 = -[TUConversationUnreliableMessengerConfig seqNumBufferSize](self, "seqNumBufferSize"), v11 == objc_msgSend(configCopy, "seqNumBufferSize")))
  {
    idsAliasingSalt = [(TUConversationUnreliableMessengerConfig *)self idsAliasingSalt];
    idsAliasingSalt2 = [configCopy idsAliasingSalt];
    if (idsAliasingSalt == idsAliasingSalt2)
    {
      v16 = 1;
    }

    else
    {
      idsAliasingSalt3 = [(TUConversationUnreliableMessengerConfig *)self idsAliasingSalt];
      idsAliasingSalt4 = [configCopy idsAliasingSalt];
      v16 = [idsAliasingSalt3 isEqualToData:idsAliasingSalt4];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  establishChannelMaxAttempts = [(TUConversationUnreliableMessengerConfig *)self establishChannelMaxAttempts];
  v4 = [(TUConversationUnreliableMessengerConfig *)self establishChannelRetryIntervalMillis]^ establishChannelMaxAttempts;
  egressMessagePayloadMaxSizeBytes = [(TUConversationUnreliableMessengerConfig *)self egressMessagePayloadMaxSizeBytes];
  v6 = v4 ^ egressMessagePayloadMaxSizeBytes ^ [(TUConversationUnreliableMessengerConfig *)self channelStreamMaxQueueSize];
  channelStreamMaxTries = [(TUConversationUnreliableMessengerConfig *)self channelStreamMaxTries];
  v8 = channelStreamMaxTries ^ [(TUConversationUnreliableMessengerConfig *)self channelStreamRetryIntervalMillis];
  v9 = v6 ^ v8 ^ [(TUConversationUnreliableMessengerConfig *)self seqNumBufferSize];
  idsAliasingSalt = [(TUConversationUnreliableMessengerConfig *)self idsAliasingSalt];
  v11 = [idsAliasingSalt hash];

  return v9 ^ v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithEstablishChannelMaxAttempts:establishChannelRetryIntervalMillis:egressMessagePayloadMaxSizeBytes:channelStreamMaxQueueSize:channelStreamMaxTries:channelStreamRetryIntervalMillis:seqNumBufferSize:", -[TUConversationUnreliableMessengerConfig establishChannelMaxAttempts](self, "establishChannelMaxAttempts"), -[TUConversationUnreliableMessengerConfig establishChannelRetryIntervalMillis](self, "establishChannelRetryIntervalMillis"), -[TUConversationUnreliableMessengerConfig egressMessagePayloadMaxSizeBytes](self, "egressMessagePayloadMaxSizeBytes"), -[TUConversationUnreliableMessengerConfig channelStreamMaxQueueSize](self, "channelStreamMaxQueueSize"), -[TUConversationUnreliableMessengerConfig channelStreamMaxTries](self, "channelStreamMaxTries"), -[TUConversationUnreliableMessengerConfig channelStreamRetryIntervalMillis](self, "channelStreamRetryIntervalMillis"), -[TUConversationUnreliableMessengerConfig seqNumBufferSize](self, "seqNumBufferSize")}];
  idsAliasingSalt = [(TUConversationUnreliableMessengerConfig *)self idsAliasingSalt];
  [v4 setIdsAliasingSalt:idsAliasingSalt];

  return v4;
}

- (TUConversationUnreliableMessengerConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_establishChannelMaxAttempts);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = NSStringFromSelector(sel_establishChannelRetryIntervalMillis);
  v8 = [coderCopy decodeIntegerForKey:v7];

  v9 = NSStringFromSelector(sel_egressMessagePayloadMaxSizeBytes);
  v10 = [coderCopy decodeIntegerForKey:v9];

  v11 = NSStringFromSelector(sel_channelStreamMaxQueueSize);
  v12 = [coderCopy decodeIntegerForKey:v11];

  v13 = NSStringFromSelector(sel_channelStreamMaxTries);
  v14 = [coderCopy decodeIntegerForKey:v13];

  v15 = NSStringFromSelector(sel_channelStreamRetryIntervalMillis);
  v16 = [coderCopy decodeIntegerForKey:v15];

  v17 = NSStringFromSelector(sel_seqNumBufferSize);
  v18 = [coderCopy decodeIntegerForKey:v17];

  v19 = [(TUConversationUnreliableMessengerConfig *)self initWithEstablishChannelMaxAttempts:v6 establishChannelRetryIntervalMillis:v8 egressMessagePayloadMaxSizeBytes:v10 channelStreamMaxQueueSize:v12 channelStreamMaxTries:v14 channelStreamRetryIntervalMillis:v16 seqNumBufferSize:v18];
  if (v19)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_idsAliasingSalt);
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
    [(TUConversationUnreliableMessengerConfig *)v19 setIdsAliasingSalt:v22];
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  establishChannelMaxAttempts = [(TUConversationUnreliableMessengerConfig *)self establishChannelMaxAttempts];
  v6 = NSStringFromSelector(sel_establishChannelMaxAttempts);
  [coderCopy encodeInteger:establishChannelMaxAttempts forKey:v6];

  establishChannelRetryIntervalMillis = [(TUConversationUnreliableMessengerConfig *)self establishChannelRetryIntervalMillis];
  v8 = NSStringFromSelector(sel_establishChannelRetryIntervalMillis);
  [coderCopy encodeInteger:establishChannelRetryIntervalMillis forKey:v8];

  egressMessagePayloadMaxSizeBytes = [(TUConversationUnreliableMessengerConfig *)self egressMessagePayloadMaxSizeBytes];
  v10 = NSStringFromSelector(sel_egressMessagePayloadMaxSizeBytes);
  [coderCopy encodeInteger:egressMessagePayloadMaxSizeBytes forKey:v10];

  channelStreamMaxQueueSize = [(TUConversationUnreliableMessengerConfig *)self channelStreamMaxQueueSize];
  v12 = NSStringFromSelector(sel_channelStreamMaxQueueSize);
  [coderCopy encodeInteger:channelStreamMaxQueueSize forKey:v12];

  channelStreamMaxTries = [(TUConversationUnreliableMessengerConfig *)self channelStreamMaxTries];
  v14 = NSStringFromSelector(sel_channelStreamMaxTries);
  [coderCopy encodeInteger:channelStreamMaxTries forKey:v14];

  channelStreamRetryIntervalMillis = [(TUConversationUnreliableMessengerConfig *)self channelStreamRetryIntervalMillis];
  v16 = NSStringFromSelector(sel_channelStreamRetryIntervalMillis);
  [coderCopy encodeInteger:channelStreamRetryIntervalMillis forKey:v16];

  seqNumBufferSize = [(TUConversationUnreliableMessengerConfig *)self seqNumBufferSize];
  v18 = NSStringFromSelector(sel_seqNumBufferSize);
  [coderCopy encodeInteger:seqNumBufferSize forKey:v18];

  idsAliasingSalt = [(TUConversationUnreliableMessengerConfig *)self idsAliasingSalt];
  v19 = NSStringFromSelector(sel_idsAliasingSalt);
  [coderCopy encodeObject:idsAliasingSalt forKey:v19];
}

@end