@interface _UIDictationVoiceCommandTargetMetadata
- (_UIDictationVoiceCommandTargetMetadata)initWithTarget:(id)a3 targetStartIndex:(int)a4 targetLength:(int)a5 targetOffset:(int)a6 payload:(id)a7;
@end

@implementation _UIDictationVoiceCommandTargetMetadata

- (_UIDictationVoiceCommandTargetMetadata)initWithTarget:(id)a3 targetStartIndex:(int)a4 targetLength:(int)a5 targetOffset:(int)a6 payload:(id)a7
{
  v12 = a3;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = _UIDictationVoiceCommandTargetMetadata;
  v14 = [(_UIDictationVoiceCommandTargetMetadata *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    target = v14->_target;
    v14->_target = v15;

    v14->_targetStartIndex = a4;
    v14->_targetLength = a5;
    v14->_targetOffset = a6;
    v17 = [v13 copy];
    payload = v14->_payload;
    v14->_payload = v17;
  }

  return v14;
}

@end