@interface SiriTTSSynthesisEngineResource
- (id).cxx_construct;
- (shared_ptr<SiriTTS::VoiceResource>)handle;
@end

@implementation SiriTTSSynthesisEngineResource

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (shared_ptr<SiriTTS::VoiceResource>)handle
{
  objc_copyCppObjectAtomic(v2, &self->_handle, __copy_helper_atomic_property_);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

@end