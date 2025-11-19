@interface VSPresynthesizedAudioRequest
- (AudioStreamBasicDescription)decoderStreamDescription;
- (AudioStreamBasicDescription)playerStreamDescription;
- (BOOL)hasValidAudio;
- (VSPresynthesizedAudioRequest)initWithAudioData:(id)a3 decoderStreamDescription:(AudioStreamBasicDescription *)a4 playerStreamDescription:(AudioStreamBasicDescription *)a5;
- (VSPresynthesizedAudioRequest)initWithAudioData:(id)a3 playerStreamDescription:(AudioStreamBasicDescription *)a4;
- (VSPresynthesizedAudioRequest)initWithCoder:(id)a3;
- (VSPresynthesizedAudioRequest)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)logText;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessoryID:(id)a3;
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
  v15 = [(VSPresynthesizedAudioRequest *)self logText];
  identifier = self->_identifier;
  v17 = [v10 stringWithFormat:@"sessionId %u, clientId %@, %@ bytes, input format %@, output format %@, requestCreatedTime %@, text '%@', identifier: %@, accessoryID:%@", audioSessionID, clientBundleIdentifier, v13, v6, v9, v14, v15, identifier, self->_accessoryID];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (VSPresynthesizedAudioRequest)initWithCoder:(id)a3
{
  v4 = a3;
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
    [v4 decodeValueOfObjCType:"{AudioStreamBasicDescription=dIIIIIIII}" at:&v5->_decoderStreamDescription size:40];
    [v4 decodeValueOfObjCType:"{AudioStreamBasicDescription=dIIIIIIII}" at:&v6->_playerStreamDescription size:40];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_audioData"];
    audioData = v6->_audioData;
    v6->_audioData = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleIdentifier"];
    clientBundleIdentifier = v6->_clientBundleIdentifier;
    v6->_clientBundleIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    text = v6->_text;
    v6->_text = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accessoryID"];
    accessoryID = v6->_accessoryID;
    v6->_accessoryID = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_siriRequestId"];
    siriRequestId = v6->_siriRequestId;
    v6->_siriRequestId = v17;

    v6->_audioSessionID = [v4 decodeInt32ForKey:@"_audioSessionID"];
    v6->_enqueue = [v4 decodeBoolForKey:@"_enqueue"];
    v6->_requestCreatedTimestamp = [v4 decodeInt64ForKey:@"_requestCreatedTimestamp"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeValueOfObjCType:"{AudioStreamBasicDescription=dIIIIIIII}" at:&self->_decoderStreamDescription];
  [v4 encodeValueOfObjCType:"{AudioStreamBasicDescription=dIIIIIIII}" at:&self->_playerStreamDescription];
  [v4 encodeObject:self->_audioData forKey:@"_audioData"];
  [v4 encodeObject:self->_clientBundleIdentifier forKey:@"_clientBundleIdentifier"];
  [v4 encodeObject:self->_text forKey:@"_text"];
  [v4 encodeObject:self->_identifier forKey:@"_identifier"];
  [v4 encodeObject:self->_accessoryID forKey:@"_accessoryID"];
  [v4 encodeObject:self->_siriRequestId forKey:@"_siriRequestId"];
  [v4 encodeInt32:self->_audioSessionID forKey:@"_audioSessionID"];
  [v4 encodeBool:self->_enqueue forKey:@"_enqueue"];
  [v4 encodeInt64:self->_requestCreatedTimestamp forKey:@"_requestCreatedTimestamp"];
}

- (void)setAccessoryID:(id)a3
{
  if (a3)
  {
    self->_enqueue = 1;
  }

  v4 = [a3 copy];
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
  v3 = [(VSPresynthesizedAudioRequest *)self canLogRequestText];

  return VSLoggingStringForUtterance(text, v3);
}

- (VSPresynthesizedAudioRequest)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VSPresynthesizedAudioRequest;
  v6 = [(VSPresynthesizedAudioRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (VSPresynthesizedAudioRequest)initWithAudioData:(id)a3 decoderStreamDescription:(AudioStreamBasicDescription *)a4 playerStreamDescription:(AudioStreamBasicDescription *)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = VSPresynthesizedAudioRequest;
  v10 = [(VSPresynthesizedAudioRequest *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_audioData, a3);
    v12 = *&a4->mSampleRate;
    v13 = *&a4->mBytesPerPacket;
    *&v11->_decoderStreamDescription.mBitsPerChannel = *&a4->mBitsPerChannel;
    *&v11->_decoderStreamDescription.mBytesPerPacket = v13;
    *&v11->_decoderStreamDescription.mSampleRate = v12;
    v14 = *&a5->mSampleRate;
    v15 = *&a5->mBytesPerPacket;
    *&v11->_playerStreamDescription.mBitsPerChannel = *&a5->mBitsPerChannel;
    *&v11->_playerStreamDescription.mSampleRate = v14;
    *&v11->_playerStreamDescription.mBytesPerPacket = v15;
  }

  return v11;
}

- (VSPresynthesizedAudioRequest)initWithAudioData:(id)a3 playerStreamDescription:(AudioStreamBasicDescription *)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = VSPresynthesizedAudioRequest;
  v8 = [(VSPresynthesizedAudioRequest *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audioData, a3);
    *&v9->_decoderStreamDescription.mBitsPerChannel = 0;
    *&v9->_decoderStreamDescription.mSampleRate = VSAudioFormat48khzOpus;
    *&v9->_decoderStreamDescription.mBytesPerPacket = unk_272896F90;
    v11 = *&a4->mSampleRate;
    v10 = *&a4->mBytesPerPacket;
    *&v9->_playerStreamDescription.mBitsPerChannel = *&a4->mBitsPerChannel;
    *&v9->_playerStreamDescription.mSampleRate = v11;
    *&v9->_playerStreamDescription.mBytesPerPacket = v10;
  }

  return v9;
}

@end