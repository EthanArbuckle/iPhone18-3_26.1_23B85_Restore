@interface VSPresynthesizedAudioRequest
- (AudioStreamBasicDescription)decoderStreamDescription;
- (AudioStreamBasicDescription)playerStreamDescription;
- (BOOL)hasValidAudio;
- (VSPresynthesizedAudioRequest)initWithAudioData:(id)data decoderStreamDescription:(AudioStreamBasicDescription *)description playerStreamDescription:(AudioStreamBasicDescription *)streamDescription;
- (VSPresynthesizedAudioRequest)initWithAudioData:(id)data playerStreamDescription:(AudioStreamBasicDescription *)description;
- (VSPresynthesizedAudioRequest)initWithCoder:(id)coder;
- (VSPresynthesizedAudioRequest)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)logText;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessoryID:(id)d;
@end

@implementation VSPresynthesizedAudioRequest

- (AudioStreamBasicDescription)playerStreamDescription
{
  v3 = *&self[3].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[3].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[4].mSampleRate;
  return self;
}

- (AudioStreamBasicDescription)decoderStreamDescription
{
  v3 = *&self[2].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[2].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[3].mSampleRate;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_decoderStreamDescription.mFormatID == 1869641075)
  {
    v4 = @"Opus";
  }

  else
  {
    v4 = @"PCM";
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_decoderStreamDescription.mSampleRate];
  v6 = [v3 stringWithFormat:@"%@%@kHz", v4, v5];

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_playerStreamDescription.mSampleRate];
  v9 = [v7 stringWithFormat:@"PCM%@KHz", v8];

  v10 = MEMORY[0x277CCACA8];
  clientBundleIdentifier = self->_clientBundleIdentifier;
  audioSessionID = self->_audioSessionID;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSData length](self->_audioData, "length")}];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_requestCreatedTimestamp];
  logText = [(VSPresynthesizedAudioRequest *)self logText];
  identifier = self->_identifier;
  v17 = [v10 stringWithFormat:@"sessionId %u, clientId %@, %@ bytes, input format %@, output format %@, requestCreatedTime %@, text '%@', identifier: %@, accessoryID:%@", audioSessionID, clientBundleIdentifier, v13, v6, v9, v14, logText, identifier, self->_accessoryID];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VSPresynthesizedAudioRequest alloc];
  audioData = self->_audioData;
  v6 = *&self->_decoderStreamDescription.mBytesPerPacket;
  v11[0] = *&self->_decoderStreamDescription.mSampleRate;
  v11[1] = v6;
  v12 = *&self->_decoderStreamDescription.mBitsPerChannel;
  v7 = *&self->_playerStreamDescription.mBytesPerPacket;
  v9[0] = *&self->_playerStreamDescription.mSampleRate;
  v9[1] = v7;
  v10 = *&self->_playerStreamDescription.mBitsPerChannel;
  return [(VSPresynthesizedAudioRequest *)v4 initWithAudioData:audioData decoderStreamDescription:v11 playerStreamDescription:v9];
}

- (VSPresynthesizedAudioRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22[0] = VSAudioFormat48khzOpus;
  v22[1] = unk_272896F90;
  v23 = 0;
  v20[0] = VSAudioFormat48khzPCM;
  v20[1] = unk_272896F40;
  v21 = 16;
  v5 = [(VSPresynthesizedAudioRequest *)self initWithAudioData:0 decoderStreamDescription:v22 playerStreamDescription:v20];
  v6 = v5;
  if (v5)
  {
    [coderCopy decodeValueOfObjCType:"{AudioStreamBasicDescription=dIIIIIIII}" at:&v5->_decoderStreamDescription size:40];
    [coderCopy decodeValueOfObjCType:"{AudioStreamBasicDescription=dIIIIIIII}" at:&v6->_playerStreamDescription size:40];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_audioData"];
    audioData = v6->_audioData;
    v6->_audioData = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleIdentifier"];
    clientBundleIdentifier = v6->_clientBundleIdentifier;
    v6->_clientBundleIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    text = v6->_text;
    v6->_text = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accessoryID"];
    accessoryID = v6->_accessoryID;
    v6->_accessoryID = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_siriRequestId"];
    siriRequestId = v6->_siriRequestId;
    v6->_siriRequestId = v17;

    v6->_audioSessionID = [coderCopy decodeInt32ForKey:@"_audioSessionID"];
    v6->_enqueue = [coderCopy decodeBoolForKey:@"_enqueue"];
    v6->_requestCreatedTimestamp = [coderCopy decodeInt64ForKey:@"_requestCreatedTimestamp"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeValueOfObjCType:"{AudioStreamBasicDescription=dIIIIIIII}" at:&self->_decoderStreamDescription];
  [coderCopy encodeValueOfObjCType:"{AudioStreamBasicDescription=dIIIIIIII}" at:&self->_playerStreamDescription];
  [coderCopy encodeObject:self->_audioData forKey:@"_audioData"];
  [coderCopy encodeObject:self->_clientBundleIdentifier forKey:@"_clientBundleIdentifier"];
  [coderCopy encodeObject:self->_text forKey:@"_text"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_accessoryID forKey:@"_accessoryID"];
  [coderCopy encodeObject:self->_siriRequestId forKey:@"_siriRequestId"];
  [coderCopy encodeInt32:self->_audioSessionID forKey:@"_audioSessionID"];
  [coderCopy encodeBool:self->_enqueue forKey:@"_enqueue"];
  [coderCopy encodeInt64:self->_requestCreatedTimestamp forKey:@"_requestCreatedTimestamp"];
}

- (void)setAccessoryID:(id)d
{
  if (d)
  {
    self->_enqueue = 1;
  }

  v4 = [d copy];
  accessoryID = self->_accessoryID;
  self->_accessoryID = v4;
}

- (BOOL)hasValidAudio
{
  audioData = self->_audioData;
  if (audioData)
  {
    audioData = [(NSData *)audioData length];
    if (audioData)
    {
      mFormatID = self->_decoderStreamDescription.mFormatID;
      LOBYTE(audioData) = (mFormatID == 1869641075 || mFormatID == 1819304813) && self->_playerStreamDescription.mFormatID == 1819304813;
    }
  }

  return audioData;
}

- (id)logText
{
  text = self->_text;
  canLogRequestText = [(VSPresynthesizedAudioRequest *)self canLogRequestText];

  return VSLoggingStringForUtterance(text, canLogRequestText);
}

- (VSPresynthesizedAudioRequest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = VSPresynthesizedAudioRequest;
  v6 = [(VSPresynthesizedAudioRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (VSPresynthesizedAudioRequest)initWithAudioData:(id)data decoderStreamDescription:(AudioStreamBasicDescription *)description playerStreamDescription:(AudioStreamBasicDescription *)streamDescription
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = VSPresynthesizedAudioRequest;
  v10 = [(VSPresynthesizedAudioRequest *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_audioData, data);
    v12 = *&description->mSampleRate;
    v13 = *&description->mBytesPerPacket;
    *&v11->_decoderStreamDescription.mBitsPerChannel = *&description->mBitsPerChannel;
    *&v11->_decoderStreamDescription.mBytesPerPacket = v13;
    *&v11->_decoderStreamDescription.mSampleRate = v12;
    v14 = *&streamDescription->mSampleRate;
    v15 = *&streamDescription->mBytesPerPacket;
    *&v11->_playerStreamDescription.mBitsPerChannel = *&streamDescription->mBitsPerChannel;
    *&v11->_playerStreamDescription.mSampleRate = v14;
    *&v11->_playerStreamDescription.mBytesPerPacket = v15;
  }

  return v11;
}

- (VSPresynthesizedAudioRequest)initWithAudioData:(id)data playerStreamDescription:(AudioStreamBasicDescription *)description
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = VSPresynthesizedAudioRequest;
  v8 = [(VSPresynthesizedAudioRequest *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audioData, data);
    *&v9->_decoderStreamDescription.mBitsPerChannel = 0;
    *&v9->_decoderStreamDescription.mSampleRate = VSAudioFormat48khzOpus;
    *&v9->_decoderStreamDescription.mBytesPerPacket = unk_272896F90;
    v11 = *&description->mSampleRate;
    v10 = *&description->mBytesPerPacket;
    *&v9->_playerStreamDescription.mBitsPerChannel = *&description->mBitsPerChannel;
    *&v9->_playerStreamDescription.mSampleRate = v11;
    *&v9->_playerStreamDescription.mBytesPerPacket = v10;
  }

  return v9;
}

@end