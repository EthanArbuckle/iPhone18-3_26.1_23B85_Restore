@interface TTSWordMarker
- (AVSpeechSynthesisMarker)avMark;
- (_NSRange)wordRange;
@end

@implementation TTSWordMarker

- (AVSpeechSynthesisMarker)avMark
{
  v3 = objc_alloc(MEMORY[0x1E69584E0]);
  v8 = objc_msgSend_wordRange(self, v4, v5, v6, v7);
  v10 = v9;
  v14 = objc_msgSend_byteOffset(self, v9, v11, v12, v13);
  v16 = objc_msgSend_initWithWordRange_atByteSampleOffset_(v3, v15, v8, v10, v14);

  return v16;
}

- (_NSRange)wordRange
{
  length = self->_wordRange.length;
  location = self->_wordRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end