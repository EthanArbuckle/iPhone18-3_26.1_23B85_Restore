@interface _UIDictationVoiceCommandExpandedTargetMetadata
- (_UIDictationVoiceCommandExpandedTargetMetadata)initWithExpandedTarget:(id)a3 expandedTargetStartIndex:(int)a4 expandedTargetLength:(int)a5 expandedTargetOffset:(int)a6 expandedPayload:(id)a7;
@end

@implementation _UIDictationVoiceCommandExpandedTargetMetadata

- (_UIDictationVoiceCommandExpandedTargetMetadata)initWithExpandedTarget:(id)a3 expandedTargetStartIndex:(int)a4 expandedTargetLength:(int)a5 expandedTargetOffset:(int)a6 expandedPayload:(id)a7
{
  v12 = a3;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = _UIDictationVoiceCommandExpandedTargetMetadata;
  v14 = [(_UIDictationVoiceCommandExpandedTargetMetadata *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    expandedTarget = v14->_expandedTarget;
    v14->_expandedTarget = v15;

    v14->_expandedTargetStartIndex = a4;
    v14->_expandedTargetLength = a5;
    v14->_expandedTargetOffset = a6;
    v17 = [v13 copy];
    expandedPayload = v14->_expandedPayload;
    v14->_expandedPayload = v17;
  }

  return v14;
}

@end