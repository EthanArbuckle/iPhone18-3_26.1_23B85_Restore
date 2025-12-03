@interface _UIDictationVoiceCommandMetadata
- (_UIDictationVoiceCommandMetadata)initWithTargetMetadata:(id)metadata expandedTargetMetadata:(id)targetMetadata instrumentationMetadata:(id)instrumentationMetadata;
@end

@implementation _UIDictationVoiceCommandMetadata

- (_UIDictationVoiceCommandMetadata)initWithTargetMetadata:(id)metadata expandedTargetMetadata:(id)targetMetadata instrumentationMetadata:(id)instrumentationMetadata
{
  metadataCopy = metadata;
  targetMetadataCopy = targetMetadata;
  instrumentationMetadataCopy = instrumentationMetadata;
  v15.receiver = self;
  v15.super_class = _UIDictationVoiceCommandMetadata;
  v12 = [(_UIDictationVoiceCommandMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_targetMetadata, metadata);
    objc_storeStrong(&v13->_expandedTargetMetadata, targetMetadata);
    objc_storeStrong(&v13->_instrumentationMetadata, instrumentationMetadata);
  }

  return v13;
}

@end