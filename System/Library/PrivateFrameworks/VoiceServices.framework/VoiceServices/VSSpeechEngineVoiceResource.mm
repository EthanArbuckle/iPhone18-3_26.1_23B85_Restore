@interface VSSpeechEngineVoiceResource
- (id).cxx_construct;
- (shared_ptr<SiriTTS::VoiceResource>)resource;
@end

@implementation VSSpeechEngineVoiceResource

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (shared_ptr<SiriTTS::VoiceResource>)resource
{
  objc_copyCppObjectAtomic(v2, &self->_resource, __copy_helper_atomic_property_);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

@end