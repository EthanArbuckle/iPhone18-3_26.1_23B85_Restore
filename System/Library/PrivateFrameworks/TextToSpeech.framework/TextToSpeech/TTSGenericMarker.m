@interface TTSGenericMarker
- (AVSpeechSynthesisMarker)avMark;
@end

@implementation TTSGenericMarker

- (AVSpeechSynthesisMarker)avMark
{
  v3 = objc_alloc(MEMORY[0x1E69584E0]);
  v8 = objc_msgSend_name(self, v4, v5, v6, v7);
  v13 = objc_msgSend_byteOffset(self, v9, v10, v11, v12);
  v16 = objc_msgSend_initWithBookmarkName_atByteSampleOffset_(v3, v14, v8, v13, v15);

  return v16;
}

@end