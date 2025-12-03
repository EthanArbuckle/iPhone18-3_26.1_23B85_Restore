@interface TTSSiriVoiceResource
- (id).cxx_construct;
- (shared_ptr<SiriTTS::VoiceResource>)siriVoiceResource;
- (void)setSiriVoiceResource:(shared_ptr<SiriTTS::VoiceResource>)resource;
@end

@implementation TTSSiriVoiceResource

- (shared_ptr<SiriTTS::VoiceResource>)siriVoiceResource
{
  cntrl = self->_siriVoiceResource.__cntrl_;
  *v2 = self->_siriVoiceResource.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setSiriVoiceResource:(shared_ptr<SiriTTS::VoiceResource>)resource
{
  v4 = *resource.__ptr_;
  v3 = *(resource.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_siriVoiceResource.__cntrl_;
  self->_siriVoiceResource.__ptr_ = v4;
  self->_siriVoiceResource.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end