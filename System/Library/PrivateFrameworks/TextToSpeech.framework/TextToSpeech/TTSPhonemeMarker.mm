@interface TTSPhonemeMarker
- (AVSpeechSynthesisMarker)avMark;
- (id)toAVMarkAtOffset:(int64_t)a3;
@end

@implementation TTSPhonemeMarker

- (id)toAVMarkAtOffset:(int64_t)a3
{
  v5 = objc_alloc(MEMORY[0x1E69584E0]);
  v10 = objc_msgSend_phoneme(self, v6, v7, v8, v9);
  v13 = objc_msgSend_initWithPhonemeString_atByteSampleOffset_(v5, v11, v10, a3, v12);

  return v13;
}

- (AVSpeechSynthesisMarker)avMark
{
  v3 = objc_alloc(MEMORY[0x1E69584E0]);
  v8 = objc_msgSend_phoneme(self, v4, v5, v6, v7);
  v13 = objc_msgSend_byteOffset(self, v9, v10, v11, v12);
  v16 = objc_msgSend_initWithPhonemeString_atByteSampleOffset_(v3, v14, v8, v13, v15);

  return v16;
}

@end