@interface _UIDictationVoiceCommandTargetMetadata
- (_UIDictationVoiceCommandTargetMetadata)initWithTarget:(id)target targetStartIndex:(int)index targetLength:(int)length targetOffset:(int)offset payload:(id)payload;
@end

@implementation _UIDictationVoiceCommandTargetMetadata

- (_UIDictationVoiceCommandTargetMetadata)initWithTarget:(id)target targetStartIndex:(int)index targetLength:(int)length targetOffset:(int)offset payload:(id)payload
{
  targetCopy = target;
  payloadCopy = payload;
  v20.receiver = self;
  v20.super_class = _UIDictationVoiceCommandTargetMetadata;
  v14 = [(_UIDictationVoiceCommandTargetMetadata *)&v20 init];
  if (v14)
  {
    v15 = [targetCopy copy];
    target = v14->_target;
    v14->_target = v15;

    v14->_targetStartIndex = index;
    v14->_targetLength = length;
    v14->_targetOffset = offset;
    v17 = [payloadCopy copy];
    payload = v14->_payload;
    v14->_payload = v17;
  }

  return v14;
}

@end