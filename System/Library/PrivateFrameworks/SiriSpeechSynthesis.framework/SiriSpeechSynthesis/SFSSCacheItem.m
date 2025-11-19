@interface SFSSCacheItem
+ (id)generateCacheKey:(id)a3 text:(id)a4;
- (AudioStreamBasicDescription)asbd;
- (SFSSCacheItem)initWithText:(id)a3 voiceName:(id)a4 voiceKey:(id)a5 resourceKey:(id)a6 asbd:(AudioStreamBasicDescription *)a7 rawAudio:(id)a8;
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

- (SFSSCacheItem)initWithText:(id)a3 voiceName:(id)a4 voiceKey:(id)a5 resourceKey:(id)a6 asbd:(AudioStreamBasicDescription *)a7 rawAudio:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = SFSSCacheItem;
  v19 = [(SFSSCacheItem *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    text = v19->_text;
    v19->_text = v20;

    v22 = [v16 copy];
    voiceKey = v19->_voiceKey;
    v19->_voiceKey = v22;

    v24 = [v17 copy];
    resourceKey = v19->_resourceKey;
    v19->_resourceKey = v24;

    v26 = *&a7->mSampleRate;
    v27 = *&a7->mBytesPerPacket;
    *&v19->_asbd.mBitsPerChannel = *&a7->mBitsPerChannel;
    *&v19->_asbd.mSampleRate = v26;
    *&v19->_asbd.mBytesPerPacket = v27;
    objc_storeStrong(&v19->_rawAudio, a8);
    v28 = [SFSSCacheItem generateCacheKey:v15 text:v19->_text];
    key = v19->_key;
    v19->_key = v28;
  }

  return v19;
}

+ (id)generateCacheKey:(id)a3 text:(id)a4
{
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{a3, a4, 0}];
  v5 = [v4 componentsJoinedByString:@":"];

  return v5;
}

@end