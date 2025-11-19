@interface _UIDictationVoiceCommandMetadata
- (_UIDictationVoiceCommandMetadata)initWithTargetMetadata:(id)a3 expandedTargetMetadata:(id)a4 instrumentationMetadata:(id)a5;
@end

@implementation _UIDictationVoiceCommandMetadata

- (_UIDictationVoiceCommandMetadata)initWithTargetMetadata:(id)a3 expandedTargetMetadata:(id)a4 instrumentationMetadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UIDictationVoiceCommandMetadata;
  v12 = [(_UIDictationVoiceCommandMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_targetMetadata, a3);
    objc_storeStrong(&v13->_expandedTargetMetadata, a4);
    objc_storeStrong(&v13->_instrumentationMetadata, a5);
  }

  return v13;
}

@end