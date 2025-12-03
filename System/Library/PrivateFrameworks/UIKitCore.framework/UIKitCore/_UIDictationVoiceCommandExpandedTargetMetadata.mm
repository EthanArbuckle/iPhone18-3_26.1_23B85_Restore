@interface _UIDictationVoiceCommandExpandedTargetMetadata
- (_UIDictationVoiceCommandExpandedTargetMetadata)initWithExpandedTarget:(id)target expandedTargetStartIndex:(int)index expandedTargetLength:(int)length expandedTargetOffset:(int)offset expandedPayload:(id)payload;
@end

@implementation _UIDictationVoiceCommandExpandedTargetMetadata

- (_UIDictationVoiceCommandExpandedTargetMetadata)initWithExpandedTarget:(id)target expandedTargetStartIndex:(int)index expandedTargetLength:(int)length expandedTargetOffset:(int)offset expandedPayload:(id)payload
{
  targetCopy = target;
  payloadCopy = payload;
  v20.receiver = self;
  v20.super_class = _UIDictationVoiceCommandExpandedTargetMetadata;
  v14 = [(_UIDictationVoiceCommandExpandedTargetMetadata *)&v20 init];
  if (v14)
  {
    v15 = [targetCopy copy];
    expandedTarget = v14->_expandedTarget;
    v14->_expandedTarget = v15;

    v14->_expandedTargetStartIndex = index;
    v14->_expandedTargetLength = length;
    v14->_expandedTargetOffset = offset;
    v17 = [payloadCopy copy];
    expandedPayload = v14->_expandedPayload;
    v14->_expandedPayload = v17;
  }

  return v14;
}

@end