@interface SFSSCacheItem
+ (id)generateCacheKey:(id)key text:(id)text;
- (AudioStreamBasicDescription)asbd;
- (SFSSCacheItem)initWithText:(id)text voiceName:(id)name voiceKey:(id)key resourceKey:(id)resourceKey asbd:(AudioStreamBasicDescription *)asbd rawAudio:(id)audio;
@end

@implementation SFSSCacheItem

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[1].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[2].mSampleRate;
  return self;
}

- (SFSSCacheItem)initWithText:(id)text voiceName:(id)name voiceKey:(id)key resourceKey:(id)resourceKey asbd:(AudioStreamBasicDescription *)asbd rawAudio:(id)audio
{
  textCopy = text;
  nameCopy = name;
  keyCopy = key;
  resourceKeyCopy = resourceKey;
  audioCopy = audio;
  v31.receiver = self;
  v31.super_class = SFSSCacheItem;
  v19 = [(SFSSCacheItem *)&v31 init];
  if (v19)
  {
    v20 = [textCopy copy];
    text = v19->_text;
    v19->_text = v20;

    v22 = [keyCopy copy];
    voiceKey = v19->_voiceKey;
    v19->_voiceKey = v22;

    v24 = [resourceKeyCopy copy];
    resourceKey = v19->_resourceKey;
    v19->_resourceKey = v24;

    v26 = *&asbd->mSampleRate;
    v27 = *&asbd->mBytesPerPacket;
    *&v19->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
    *&v19->_asbd.mSampleRate = v26;
    *&v19->_asbd.mBytesPerPacket = v27;
    objc_storeStrong(&v19->_rawAudio, audio);
    v28 = [SFSSCacheItem generateCacheKey:nameCopy text:v19->_text];
    key = v19->_key;
    v19->_key = v28;
  }

  return v19;
}

+ (id)generateCacheKey:(id)key text:(id)text
{
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{key, text, 0}];
  v5 = [v4 componentsJoinedByString:@":"];

  return v5;
}

@end