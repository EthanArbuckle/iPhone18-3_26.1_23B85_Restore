@interface TTSMauiVoiceResource
- (_VE_HSAFE)voiceResourceHandle;
@end

@implementation TTSMauiVoiceResource

- (_VE_HSAFE)voiceResourceHandle
{
  v2 = *&self->_voiceResourceHandle.u32Check;
  pHandleData = self->_voiceResourceHandle.pHandleData;
  result.u32Check = v2;
  result.pHandleData = pHandleData;
  return result;
}

@end