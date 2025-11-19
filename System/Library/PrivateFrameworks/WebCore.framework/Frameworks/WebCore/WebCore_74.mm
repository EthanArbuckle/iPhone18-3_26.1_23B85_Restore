uint64_t webrtc::anonymous namespace::MinReceiveTime(webrtc::_anonymous_namespace_ *this, const webrtc::EncodedFrame *a2)
{
  v2 = *(this + 39);
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (v3 == v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 0x2808D2000uLL;
  {
    v13 = this;
    v6 = 0x2808D2000;
    v11 = v10;
    this = v13;
    if (v11)
    {
      operator new();
    }
  }

  v7 = *(this + 39);
  v3 = **(v6 + 1232);
  if (v7)
  {
    v4 = *(v7 + 16);
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (v3 == v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  {
    v14 = v3;
    v6 = 0x2808D2000;
    v3 = v14;
    if (v12)
    {
      operator new();
    }
  }

  v4 = *(*(v6 + 1232) + 8);
  for (result = 0x7FFFFFFFFFFFFFFFLL; v3 != v4; v3 += 104)
  {
LABEL_10:
    v8 = *(v3 + 40);
    v9 = v8 + 0x7FFFFFFFFFFFFFFFLL;
    if (v8 >= result)
    {
      v8 = result;
    }

    if (v9 < 0xFFFFFFFFFFFFFFFELL)
    {
      result = v8;
    }
  }

  return result;
}

void webrtc::VideoStreamBufferController::FrameReadyForDecode(webrtc::VideoStreamBufferController *this, unsigned int a2, Timestamp a3)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v4 = *(this + 106);
  if (*(v4 + 18))
  {
    v5 = this;
    webrtc::FrameBuffer::ExtractNextDecodableTemporalUnit(v4, v43);
    v12 = v43[0];
    if (v43[0] <= 1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_buffer_controller.cc");
      }

      goto LABEL_19;
    }

    if (v43[0])
    {
      v41[1] = v43[1];
      v41[2] = v43[2];
      v41[0] = v43[0];
      v43[0] = 0;
      webrtc::VideoStreamBufferController::OnFrameReady(v5, v41, a3.var0, v7, v8, v9, v10, v11);
      if (!v41[0])
      {
LABEL_19:
        if (v43[0])
        {
          absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(v43);
        }

        return;
      }

LABEL_18:
      absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(v41);
      goto LABEL_19;
    }

    v27 = v43[0] >> 1;
    if (v43[0] >= 8)
    {
      v28 = v27 & 0x7FFFFFFFFFFFFFFCLL;
      v29 = &v43[v27 & 0x7FFFFFFFFFFFFFFCLL];
      v32 = v44;
      v33 = &v42;
      v34 = v27 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v35 = *(v32 - 1);
        v36 = *v32;
        *(v32 - 1) = 0uLL;
        *v32 = 0uLL;
        *(v33 - 1) = v35;
        *v33 = v36;
        v32 += 2;
        v33 += 4;
        v34 -= 4;
      }

      while (v34);
      var0 = a3.var0;
      v31 = v5;
      if (v27 == v28)
      {
LABEL_17:
        v41[0] = v12;
        webrtc::VideoStreamBufferController::OnFrameReady(v31, v41, var0, v7, v8, v9, v10, v11);
        if (!v41[0])
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v28 = 0;
      v29 = v43;
      var0 = a3.var0;
      v31 = v5;
    }

    v37 = v27 - v28;
    v38 = &v41[v28 + 1];
    v39 = v29 + 1;
    do
    {
      v40 = *v39;
      *v39++ = 0;
      *v38++ = v40;
      --v37;
    }

    while (v37);
    goto LABEL_17;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_buffer_controller.cc");
  }
}

void webrtc::VideoStreamBufferController::~VideoStreamBufferController(webrtc::VideoStreamBufferController *this)
{
  webrtc::VideoStreamBufferController::~VideoStreamBufferController(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_2882A30E8;
  v2 = *(this + 131);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) != 1)
  {
    *(this + 123) = &unk_288293910;
    if ((*(this + 1039) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    operator delete(*(this + 127));
    v3 = *(this + 124);
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MEMORY[0x2743DA540]();
  *(this + 123) = &unk_288293910;
  if (*(this + 1039) < 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v3 = *(this + 124);
  if (v3)
  {
LABEL_4:
    *(this + 125) = v3;
    operator delete(v3);
  }

LABEL_5:
  v4 = *(this + 117);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v5 = *(this + 116);
  if (v5 == (this + 904))
  {
    (*(*v5 + 32))(v5);
    v6 = *(this + 106);
    *(this + 106) = 0;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    v6 = *(this + 106);
    *(this + 106) = 0;
    if (!v6)
    {
LABEL_12:
      webrtc::JitterEstimator::~JitterEstimator((this + 56));
      v7 = *(this + 6);
      *(this + 6) = 0;
      if (!v7)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  v8 = *(v6 + 112);
  if (v8)
  {
    operator delete(v8);
  }

  std::__tree<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>>>::destroy(v6 + 16, *(v6 + 24));
  MEMORY[0x2743DA540](v6, 0x1032C4039095F6DLL);
  webrtc::JitterEstimator::~JitterEstimator((this + 56));
  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
LABEL_13:
    (*(*v7 + 8))(v7);
  }
}

__n128 std::__function::__func<std::__bind_front_t<void (webrtc::VideoStreamBufferController::*)(webrtc::TimeDelta),webrtc::VideoStreamBufferController*>,std::allocator<std::__bind_front_t<void (webrtc::VideoStreamBufferController::*)(webrtc::TimeDelta),webrtc::VideoStreamBufferController*>>,void ()(webrtc::TimeDelta)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882A3108;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind_front_t<void (webrtc::VideoStreamBufferController::*)(webrtc::TimeDelta),webrtc::VideoStreamBufferController*>,std::allocator<std::__bind_front_t<void (webrtc::VideoStreamBufferController::*)(webrtc::TimeDelta),webrtc::VideoStreamBufferController*>>,void ()(webrtc::TimeDelta)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    return (*(*v4 + v3))();
  }

  else
  {
    return v3(v4, *a2);
  }
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,std::__bind_front_t<void (webrtc::VideoStreamBufferController::*)(unsigned int,webrtc::Timestamp),webrtc::VideoStreamBufferController*> &&,unsigned int,webrtc::Timestamp>(uint64_t (***a1)(void *, uint64_t, void), uint64_t a2, void *a3)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = ((*a1)[2] + (v4 >> 1));
  if (v4)
  {
    return (*(*v5 + v3))();
  }

  else
  {
    return v3(v5, a2, *a3);
  }
}

void webrtc::internal::VideoStreamDecoder::~VideoStreamDecoder(webrtc::internal::VideoStreamDecoder *this)
{
  *this = &unk_2882A3150;
  *(*(this + 1) + 32) = 0;
}

{
  *this = &unk_2882A3150;
  *(*(this + 1) + 32) = 0;
  JUMPOUT(0x2743DA540);
}

void webrtc::VideoStreamEncoder::VideoStreamEncoder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_2882A3190;
  *(a1 + 8) = &unk_2882A3228;
  *(a1 + 16) = &unk_2882A3258;
  v10 = *a2;
  *(a1 + 24) = *a2;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 1);
  *(a1 + 48) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = 0;
  v13 = *(a5 + 32);
  v14 = *(a5 + 16);
  *(a1 + 88) = *a5;
  *(a1 + 104) = v14;
  *(a1 + 120) = v13;
  *(a1 + 128) = v15;
  webrtc::RateControlSettings::RateControlSettings(a1 + 136, *(a1 + 32));
}

void webrtc::VideoStreamEncoder::~VideoStreamEncoder(webrtc::VideoStreamEncoder *this)
{
  *this = &unk_2882A3190;
  *(this + 1) = &unk_2882A3228;
  *(this + 2) = &unk_2882A3258;
  (***(this + 705))(*(this + 705));
  v2 = *(this + 706);
  *(this + 5640) = 0u;
  if (v2)
  {
    std::default_delete<webrtc::FrameInstrumentationGenerator>::operator()[abi:sn200100](v2);
    v3 = *(this + 705);
    *(this + 705) = 0;
    if (v3)
    {
      (**v3)(v3);
    }
  }

  v4 = *(this + 704);
  *(v4 + 4) = 0;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v5 = *(this + 690);
  if (v5)
  {
    v6 = *(this + 691);
    v7 = *(this + 690);
    if (v6 != v5)
    {
      do
      {
        v9 = *--v6;
        v8 = v9;
        *v6 = 0;
        if (v9)
        {
          std::deque<int>::~deque[abi:sn200100]((v8 + 40));
          MEMORY[0x2743DA540](v8, 0x1080C40B7DF58E9);
        }
      }

      while (v6 != v5);
      v7 = *(this + 690);
    }

    *(this + 691) = v5;
    operator delete(v7);
  }

  webrtc::H265BitstreamParser::~H265BitstreamParser((this + 5408));
  pthread_mutex_destroy((this + 5344));
  webrtc::H265BitstreamParser::~H265BitstreamParser((this + 5248));
  pthread_mutex_destroy(this + 81);
  webrtc::H265BitstreamParser::~H265BitstreamParser((this + 5088));
  pthread_mutex_destroy((this + 5024));
  *(this + 614) = &unk_2882941B0;
  pthread_mutex_destroy((this + 4848));
  *(this + 592) = &unk_2882941B0;
  pthread_mutex_destroy(this + 73);
  *(this + 570) = &unk_2882941B0;
  pthread_mutex_destroy((this + 4496));
  v10 = *(this + 556);
  if (v10)
  {
    *(this + 557) = v10;
    operator delete(v10);
  }

  v11 = *(this + 540);
  if (v11)
  {
    v12 = *(this + 541);
    v13 = *(this + 540);
    if (v12 != v11)
    {
      do
      {
        v15 = *(v12 - 8);
        v12 -= 8;
        v14 = v15;
        if (v15)
        {
          (*(*v14 + 8))(v14);
        }
      }

      while (v12 != v11);
      v13 = *(this + 540);
    }

    *(this + 541) = v11;
    operator delete(v13);
  }

  webrtc::VideoStreamEncoderResourceManager::~VideoStreamEncoderResourceManager((this + 2824));
  v16 = *(this + 350);
  if (v16)
  {
    *(this + 351) = v16;
    operator delete(v16);
  }

  v17 = *(this + 349);
  *(this + 349) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 348);
  *(this + 348) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 347);
  *(this + 347) = 0;
  if (v19)
  {
    v20 = v19[23];
    if (v20)
    {
      v19[24] = v20;
      operator delete(v20);
    }

    v21 = v19[20];
    if (v21)
    {
      v19[21] = v21;
      operator delete(v21);
    }

    v22 = v19[2];
    if (v22)
    {
      v19[3] = v22;
      operator delete(v22);
    }

    MEMORY[0x2743DA540](v19, 0x10E0C40A6556F9CLL);
  }

  *(this + 332) = &unk_2882A33E8;
  pthread_mutex_destroy((this + 2664));
  v23 = *(this + 326);
  if (v23)
  {
    std::vector<webrtc::FrameEncodeMetadataWriter::TimingFramesLayerInfo>::__base_destruct_at_end[abi:sn200100](this + 326, v23);
    operator delete(*(this + 326));
  }

  pthread_mutex_destroy((this + 2136));
  v24 = *(this + 264);
  if (v24)
  {
    *(this + 265) = v24;
    operator delete(v24);
  }

  v25 = *(this + 263);
  *(this + 263) = 0;
  if (v25)
  {
    webrtc::EncoderBitrateAdjuster::~EncoderBitrateAdjuster(v25);
    MEMORY[0x2743DA540]();
  }

  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(this + 170);
  if (*(this + 1280) == 1)
  {
    v26 = *(this + 156);
    if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
    {
      v27 = *(v26 + 8);
      if (v27)
      {
        v28 = *(v26 + 16);
        v29 = *(v26 + 8);
        if (v28 != v27)
        {
          do
          {
            v30 = *(v28 - 96);
            if (v30)
            {
              *(v28 - 88) = v30;
              operator delete(v30);
            }

            v28 -= 104;
          }

          while (v28 != v27);
          v29 = *(v26 + 8);
        }

        *(v26 + 16) = v27;
        operator delete(v29);
      }

      MEMORY[0x2743DA540](v26, 0x1020C40E72D6CFBLL);
    }

    v31 = *(this + 134);
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  if (*(this + 65))
  {
    _ZN4absl23inlined_vector_internal7StorageINS_12AnyInvocableIFvN6webrtc8RTCErrorEOEEELm2ENSt3__19allocatorIS6_EEE15DestroyContentsEv(this + 65);
  }

  v32 = *(this + 63);
  *(this + 63) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 61);
  *(this + 61) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  webrtc::VideoEncoderConfig::~VideoEncoderConfig((this + 280));
  v34 = *(this + 34);
  *(this + 34) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(this + 29);
  *(this + 29) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(this + 3);
  if (v36)
  {
    if (atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v36 + 8))(v36);
    }
  }
}

{
  webrtc::VideoStreamEncoder::~VideoStreamEncoder(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::VideoStreamEncoder::~VideoStreamEncoder(webrtc::VideoStreamEncoder *this)
{
  webrtc::VideoStreamEncoder::~VideoStreamEncoder((this - 8));
}

{
  webrtc::VideoStreamEncoder::~VideoStreamEncoder((this - 16));
}

{
  webrtc::VideoStreamEncoder::~VideoStreamEncoder((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::VideoStreamEncoder::~VideoStreamEncoder((this - 16));

  JUMPOUT(0x2743DA540);
}

void webrtc::VideoStreamEncoder::Stop(webrtc::VideoStreamEncoder *this)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(this + 544);
  *(this + 544) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2, *(this + 543));
  }

  webrtc::Event::Event(&v3, 0, 0);
  operator new();
}

uint64_t webrtc::VideoStreamEncoder::SetFecControllerOverride(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 5640);
  v6[0] = a1;
  v6[1] = a2;
  v7 = absl::internal_any_invocable::LocalManagerTrivial;
  v8 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::SetFecControllerOverride(webrtc::FecControllerOverride *)::$_0 &&>;
  (*(*v2 + 8))(v2, v6, &v5, &v4);
  return (v7)(1, v6, v6);
}

uint64_t webrtc::VideoStreamEncoder::AddAdaptationResource(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 5640);
  v3 = *a2;
  *a2 = 0;
  v7[0] = a1;
  v7[1] = v3;
  v8 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::VideoStreamEncoder::AddAdaptationResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0>;
  v9 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::AddAdaptationResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0 &&>;
  (*(*v2 + 8))(v2, v7, &v6, &v5);
  return v8(1, v7, v7);
}

uint64_t webrtc::VideoStreamEncoder::GetAdaptationResources@<X0>(webrtc::VideoStreamEncoder *this@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  webrtc::Event::Event(&v14, 0, 0);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(this + 705);
  v5 = operator new(0x18uLL);
  *v5 = this;
  v5[1] = a2;
  v5[2] = &v14;
  v11[0] = v5;
  v11[1] = 24;
  v12 = absl::internal_any_invocable::RemoteManagerTrivial;
  v13 = absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::GetAdaptationResources(void)::$_0 &&>;
  (*(*v4 + 8))(v4, v11, &v10, &v9);
  v12(1, v11, v11);
  v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v7.var0 = 3000000;
  webrtc::Event::Wait(&v14, v6, v7);
  pthread_mutex_destroy(&v14);
  return pthread_cond_destroy(&v15);
}

uint64_t webrtc::VideoStreamEncoder::SetSource(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a1 + 4352);
  *(a1 + 4352) = a2;
  if (v6 != a2 && v6 != 0)
  {
    (*(*v6 + 24))(v6, *(a1 + 4344));
  }

  if (a2)
  {
    v8 = *(a1 + 4344);
    webrtc::VideoSourceSinkController::CurrentSettingsToSinkWants((a1 + 4344), &v14);
    (*(*a2 + 16))(a2, v8, &v14);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  pthread_mutex_lock((a1 + 2664));
  *(a1 + 2736) = a2 != 0;
  pthread_mutex_unlock((a1 + 2664));
  v9 = *(a1 + 5640);
  v10 = *a3;
  v14 = a1;
  v15 = v10;
  v16 = absl::internal_any_invocable::LocalManagerTrivial;
  __p = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::SetSource(webrtc::VideoSourceInterface<webrtc::VideoFrame> *,webrtc::DegradationPreference const&)::$_0 &&>;
  (*(*v9 + 8))(v9, &v14, &v13, &v12);
  return (v16)(1, &v14, &v14);
}

uint64_t webrtc::VideoStreamEncoder::SetSink(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 4440) = a3;
  if (*(a1 + 4352))
  {
    webrtc::VideoSourceSinkController::CurrentSettingsToSinkWants((a1 + 4344), v9);
    (*(**(a1 + 4352) + 16))(*(a1 + 4352), *(a1 + 4344), v9);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  v5 = *(a1 + 5640);
  v9[0] = a1;
  v9[1] = a2;
  v10 = absl::internal_any_invocable::LocalManagerTrivial;
  __p = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::SetSink(webrtc::VideoStreamEncoderInterface::EncoderSink *,BOOL)::$_0 &&>;
  (*(*v5 + 8))(v5, v9, &v8, &v7);
  return (v10)(1, v9, v9);
}

uint64_t webrtc::VideoStreamEncoder::SetStartBitrate(webrtc::VideoStreamEncoder *this, int a2)
{
  v2 = *(this + 705);
  v6 = this;
  v7 = a2;
  v8 = absl::internal_any_invocable::LocalManagerTrivial;
  v9 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::SetStartBitrate(int)::$_0 &&>;
  (*(*v2 + 8))(v2, &v6, &v5, &v4);
  return (v8)(1, &v6, &v6);
}

void webrtc::VideoStreamEncoder::ConfigureEncoder(uint64_t a1, int *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  *(a2 + 3) = 0;
  v18 = v3;
  v19 = v4;
  v5 = a2 + 10;
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v20[0] = v6;
  v20[1] = v7;
  if (v7)
  {
    *(v6 + 16) = v20;
    *(a2 + 4) = v5;
    *v5 = 0;
    *(a2 + 6) = 0;
  }

  else
  {
    v19 = v20;
  }

  v20[2] = *(a2 + 7);
  v8 = *(a2 + 5);
  v21 = *(a2 + 4);
  v22 = v8;
  v23 = *(a2 + 12);
  *(a2 + 7) = 0;
  v9 = *(a2 + 26);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v24 = v9;
  v25 = *(a2 + 30);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v10 = a2[34];
  v27 = *(a2 + 140);
  v26 = v10;
  v11 = *(a2 + 18);
  *(a2 + 18) = 0;
  v29 = *(a2 + 38);
  v30 = *(a2 + 42);
  v12 = *(a2 + 23);
  v28 = v11;
  v31 = v12;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  v32 = *(a2 + 12);
  v14 = absl::internal_any_invocable::EmptyManager;
  v15 = 0;
  (*(*a1 + 96))(a1, &v16, a3, v13);
  (v14)(1, v13, v13);
  webrtc::VideoEncoderConfig::~VideoEncoderConfig(&v16);
}

void webrtc::VideoStreamEncoder::ConfigureEncoder(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 21);
  v9 = *(a2 + 22);
  v10 = a2 + 42;
  if (v8 == v9)
  {
    v19 = (a1 + 4344);
    if (*(a1 + 4484))
    {
      LOBYTE(v11) = 0;
      LOBYTE(v12) = 0;
      v21 = 0;
      v14 = -1;
      goto LABEL_28;
    }

    v21 = 0;
    LOBYTE(v12) = 0;
    LOBYTE(v11) = 0;
    v14 = -1;
    if (*(a1 + 4472))
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  LOBYTE(v11) = 0;
  v12 = 0;
  v13 = 0;
  v14 = -1;
  while (1)
  {
    v15 = *(v8 + 82);
    if (v15 == 1)
    {
      break;
    }

    if (*(v8 + 92) == 1)
    {
      goto LABEL_10;
    }

LABEL_3:
    v11 = v15 | v11 & 1;
    v8 += 96;
    if (v8 == v9)
    {
      v19 = (a1 + 4344);
      v20 = *(a1 + 4484);
      if ((v12 & 1) == 0 || (v20 & 1) == 0)
      {
        if (((v12 ^ v20) & 1) == 0)
        {
          goto LABEL_22;
        }

        v21 = v13.i32[0];
        v9 = v13.u32[1];
        goto LABEL_28;
      }

      v21 = v13.i32[0];
      v9 = v13.u32[1];
      if (*&v13 != *(a1 + 4476))
      {
        goto LABEL_28;
      }

LABEL_22:
      v21 = v13.i32[0];
      v9 = v13.u32[1];
      if ((v11 ^ *(a1 + 4472)))
      {
LABEL_28:
        *(v19 + 132) = v21 | (v9 << 32);
        *(v19 + 140) = v12;
        v23 = v14;
        if (v14 < 0)
        {
          v23 = 0.0;
        }

        *(v19 + 10) = v23;
        *(v19 + 88) = v14 >= 0;
        *(v19 + 128) = v11;
        if (v19[1])
        {
          webrtc::VideoSourceSinkController::CurrentSettingsToSinkWants(v19, &v35);
          (*(*v19[1] + 16))(v19[1], *v19, &v35);
          if (*(&v37 + 1))
          {
            v38 = *(&v37 + 1);
            operator delete(*(&v37 + 1));
          }
        }

        goto LABEL_33;
      }

LABEL_25:
      v22 = *(a1 + 4424);
      if ((*(a1 + 4432) & 1) == 0)
      {
        v22 = -1.0;
      }

      if (v22 != v14)
      {
        goto LABEL_28;
      }

LABEL_33:
      v35 = a1;
      v36 = *a2;
      v37 = *(a2 + 2);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      v24 = *(a2 + 3);
      v25 = *(a2 + 4);
      *(a2 + 3) = 0;
      v38 = v24;
      v39 = v25;
      v26 = a2 + 10;
      v27 = *(a2 + 5);
      v28 = *(a2 + 6);
      v40[0] = v27;
      v40[1] = v28;
      if (v28)
      {
        *(v27 + 16) = v40;
        *(a2 + 4) = v26;
        *v26 = 0;
        *(a2 + 6) = 0;
      }

      else
      {
        v39 = v40;
      }

      v40[2] = *(a2 + 7);
      v29 = *(a2 + 5);
      v41 = *(a2 + 4);
      v42 = v29;
      v43 = *(a2 + 12);
      *(a2 + 7) = 0;
      v30 = *(a2 + 26);
      *(a2 + 13) = 0;
      *(a2 + 14) = 0;
      v31 = *(a2 + 30);
      v44 = v30;
      v45 = v31;
      *(a2 + 15) = 0;
      *(a2 + 16) = 0;
      v32 = a2[34];
      v47 = *(a2 + 140);
      v46 = v32;
      v33 = *(a2 + 18);
      *(a2 + 18) = 0;
      v48 = v33;
      v34 = *(a2 + 42);
      v49 = *(a2 + 38);
      v50 = v34;
      v51 = *(a2 + 23);
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v52 = *(a2 + 12);
      v53 = a3;
      (*(a4 + 16))(0, a4, v54);
      v54[1] = *(a4 + 16);
      *(a4 + 16) = absl::internal_any_invocable::EmptyManager;
      *(a4 + 24) = 0;
      operator new();
    }
  }

  if (*(v8 + 16) > v14)
  {
    v14 = *(v8 + 16);
  }

  if (*(v8 + 92) != 1)
  {
    goto LABEL_3;
  }

LABEL_10:
  v16 = *(v8 + 84);
  v17 = vmax_s32(v16, v13);
  if (v12)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v13 = vbsl_s8(vdup_n_s32(v18), v17, v16);
  v12 = 1;
  goto LABEL_3;
}

void webrtc::VideoStreamEncoder::ReconfigureEncoder(webrtc::VideoStreamEncoder *this, uint64_t a2, uint64_t a3)
{
  v8 = MEMORY[0x28223BE20](this, a2, a3);
  v332 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (v3 = __p, webrtc::VideoEncoderConfig::ToString((v8 + 280), __p), webrtc::webrtc_logging_impl::Log("\r\t\t\t\n\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc"), SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (*(v8 + 517) != 1)
    {
      goto LABEL_16;
    }
  }

  else if (*(v8 + 517) != 1)
  {
    goto LABEL_16;
  }

  v16 = *(v8 + 488);
  *(v8 + 488) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  (*(**(v8 + 96) + 24))(&v320);
  webrtc::MaybeCreateFrameDumpingEncoderWrapper(&v320, *(v8 + 32), __p);
  v17 = __p[0].__r_.__value_.__r.__words[0];
  __p[0].__r_.__value_.__r.__words[0] = 0;
  v18 = *(v8 + 488);
  *(v8 + 488) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v19 = __p[0].__r_.__value_.__r.__words[0];
    __p[0].__r_.__value_.__r.__words[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v320;
  v320 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(v8 + 488);
  if (!v21)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::SdpVideoFormat::ToString((v8 + 288), __p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    webrtc::VideoStreamEncoder::RequestEncoderSwitch(v8);
    return;
  }

  v22 = *(v8 + 240);
  if (v22)
  {
    (*(*v22 + 16))(*(v8 + 240), v8 + 288);
    v21 = *(v8 + 488);
  }

  (*(*v21 + 16))(v21, *(v8 + 1320));
LABEL_16:
  (*(**(v8 + 488) + 96))(__p);
  v23 = v8 + 280;
  webrtc::AlignmentAdjuster::GetAlignmentAndMaybeAdjustScaleFactors(__p, (v8 + 280), 0, 0);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&__p[0].__r_.__value_.__l.__data_);
  memset(&v319, 0, sizeof(v319));
  v24 = *(v8 + 384);
  if (!v24)
  {
    (*(**(v8 + 488) + 96))(__p);
    operator new();
  }

  if ((*(v8 + 604) & 1) == 0)
  {
    goto LABEL_490;
  }

  (*(*v24 + 32))(__p);
  v319 = __p[0];
  (*(**(v8 + 488) + 96))(__p);
  AlignmentAndMaybeAdjustScaleFactors = webrtc::AlignmentAdjuster::GetAlignmentAndMaybeAdjustScaleFactors(__p, (v8 + 280), 0xAAAAAAAAAAAAAAABLL * ((v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0]) >> 5), 1);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&__p[0].__r_.__value_.__l.__data_);
  v29 = v319.__r_.__value_.__r.__words[0];
  if (v319.__r_.__value_.__r.__words[0] != v319.__r_.__value_.__l.__size_)
  {
    for (i = (v319.__r_.__value_.__r.__words[0] + 96); i != v319.__r_.__value_.__l.__size_; i += 12)
    {
      if (*v29 >= *i)
      {
        v31 = 1;
      }

      else
      {
        v31 = -1;
      }

      if (*v29 == *i)
      {
        v32 = v29[1];
        v33 = i[1];
        v34 = v32 == v33;
        v31 = v32 >= v33 ? 1 : -1;
        if (v34)
        {
          v31 = 0;
        }
      }

      if (v31 < 0)
      {
        v29 = i;
      }
    }
  }

  if ((*(v8 + 604) & 1) == 0)
  {
    goto LABEL_490;
  }

  v35 = *(v8 + 592);
  v36 = v35 - *v29;
  if (v35 < *v29)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc", 1103, "last_frame_info_->width >= highest_stream_width", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v25, v26, v27, v28, *(v8 + 592));
    goto LABEL_499;
  }

  v37 = *(v29 + 2);
  v38 = *(v8 + 596);
  if (v38 < v37)
  {
LABEL_499:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc", 1104, "last_frame_info_->height >= highest_stream_height", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v25, v26, v27, v28, v38);
    goto LABEL_500;
  }

  v6 = v331;
  *(v8 + 608) = v36;
  *(v8 + 612) = v38 - v37;
  (*(**(v8 + 488) + 96))(__p);
  v39 = v330;
  LODWORD(v3) = v329;
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&__p[0].__r_.__value_.__l.__data_);
  if (v39 != 1 || (v3 & 1) != 0)
  {
    (*(**(v8 + 488) + 96))(__p);
    if ((*(v8 + 604) & 1) == 0)
    {
      goto LABEL_490;
    }

    AlignmentAndMaybeAdjustScaleFactors = v328 - v327;
    if (v328 != v327)
    {
      if ((AlignmentAndMaybeAdjustScaleFactors & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_503:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    LODWORD(v3) = 0;
    std::__introsort<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,false>(0, 0, 0, 1, v41);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&__p[0].__r_.__value_.__l.__data_);
  }

  else
  {
    (*(**(v8 + 488) + 96))(__p);
    if (v327 == v328)
    {
      operator new();
    }

    (*(**(v8 + 488) + 96))(v331);
    v322[0] = v331[11];
    *&v322[1] = *&v331[12];
    memset(&v331[11], 0, 24);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v331);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&__p[0].__r_.__value_.__l.__data_);
    if ((*(v8 + 604) & 1) == 0)
    {
      goto LABEL_490;
    }

    webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted((*(v8 + 596) * *(v8 + 592)) | 0x100000000, v322, __p, v40);
    if (__p[0].__r_.__value_.__s.__data_[16] == 1)
    {
      size = v319.__r_.__value_.__l.__size_;
      if (v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0] == 96 && *(v8 + 456) - *(v8 + 448) == 96)
      {
        if (v319.__r_.__value_.__r.__words[0] == v319.__r_.__value_.__l.__size_)
        {
          goto LABEL_490;
        }

        v50 = (v319.__r_.__value_.__l.__size_ - 68);
        v51 = *(v319.__r_.__value_.__l.__size_ - 68);
        if (SHIDWORD(__p[0].__r_.__value_.__r.__words[1]) < v51)
        {
          v51 = HIDWORD(__p[0].__r_.__value_.__r.__words[1]);
        }

        *v50 = v51;
        v52 = __p[0].__r_.__value_.__r.__words[1];
        if (SLODWORD(__p[0].__r_.__value_.__r.__words[1]) >= v51)
        {
          v52 = v51;
        }

        *(size - 76) = v52;
        if (*(v8 + 416) == 1)
        {
          if (v51 >= 1200000)
          {
            v53 = (size - 68);
          }

          else
          {
          }

          v51 = *v53;
          *v50 = v51;
        }

        *(size - 72) = v51;
      }
    }

    if (*&v322[0])
    {
      *(&v322[0] + 1) = *&v322[0];
      operator delete(*&v322[0]);
    }
  }

  v5 = (v8 + 4096);
  (*(**(v8 + 488) + 96))(v331);
  v55 = v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0];
  v56 = 0xAAAAAAAAAAAAAAABLL * ((v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0]) >> 5);
  if (v56 < 2 || v319.__r_.__value_.__r.__words[0] == v319.__r_.__value_.__l.__size_)
  {
LABEL_75:
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&__p[0].__r_.__value_.__l.__data_);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v331);
    webrtc::VideoCodecInitializer::SetupCodec(*(v8 + 32), v8 + 280, &v319, v58, v59, v60, v61, v62, v331);
    v67 = *(v8 + 280);
    if (v67 > 5 || ((1 << v67) & 0x2C) == 0)
    {
LABEL_142:
      v302 = (v8 + 280);
      v317 = __p;
      strcpy(__p, "ReconfigureEncoder: simulcast streams: ");
      v318 = xmmword_273BA6290;
      if (LOBYTE(v331[2]))
      {
        AlignmentAndMaybeAdjustScaleFactors = 0;
        v5 = &v331[4] + 1;
        do
        {
          v143 = v318;
          v144 = *(&v318 + 1) + 1;
          memcpy(v317 + *(&v318 + 1), "{", v318 != *(&v318 + 1) + 1);
          v145 = *(&v318 + 1);
          if (v143 != v144)
          {
            v145 = *(&v318 + 1) + 1;
          }

          *(&v318 + 1) = v145;
          v317->__r_.__value_.__s.__data_[v145] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%lu", AlignmentAndMaybeAdjustScaleFactors);
          if (v318 + ~*(&v318 + 1) >= 2uLL)
          {
            v146 = 2;
          }

          else
          {
            v146 = v318 + ~*(&v318 + 1);
          }

          memcpy(v317 + *(&v318 + 1), ": ", v146);
          *(&v318 + 1) += v146;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%d", *(v5 - 8));
          v147 = v318;
          v148 = *(&v318 + 1) + 1;
          memcpy(v317 + *(&v318 + 1), "x", v318 != *(&v318 + 1) + 1);
          v149 = *(&v318 + 1);
          if (v147 != v148)
          {
            v149 = *(&v318 + 1) + 1;
          }

          *(&v318 + 1) = v149;
          v317->__r_.__value_.__s.__data_[v149] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%d", *(v5 - 7));
          v150 = v318;
          v151 = *(&v318 + 1) + 1;
          v152 = memcpy(v317 + *(&v318 + 1), " ", v318 != *(&v318 + 1) + 1);
          v153 = *(&v318 + 1);
          if (v150 != v151)
          {
            v153 = *(&v318 + 1) + 1;
          }

          *(&v318 + 1) = v153;
          v317->__r_.__value_.__s.__data_[v153] = 0;
          v154 = *(v5 - 20);
          if ((v154 - 4) < 0xFFFFFFFD)
          {
            v127 = "nullopt";
            v128 = 7;
          }

          else
          {
            v155 = webrtc::SimulcastStream::GetScalabilityMode(void)const::scalability_modes[v154 - 1];
            if (v155 >= 0x22)
            {
              goto LABEL_495;
            }

            v127 = off_279E95B58[v155];
            v128 = qword_273BA6378[v155];
          }

          if (v128 >= v318 + ~*(&v318 + 1))
          {
            v129 = v318 + ~*(&v318 + 1);
          }

          else
          {
            v129 = v128;
          }

          memcpy(v317 + *(&v318 + 1), v127, v129);
          *(&v318 + 1) += v129;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          if (v318 + ~*(&v318 + 1) >= 0xCuLL)
          {
            v130 = 12;
          }

          else
          {
            v130 = v318 + ~*(&v318 + 1);
          }

          memcpy(v317 + *(&v318 + 1), ", min_kbps: ", v130);
          *(&v318 + 1) += v130;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%u", *(v5 - 2));
          if (v318 + ~*(&v318 + 1) >= 0xFuLL)
          {
            v131 = 15;
          }

          else
          {
            v131 = v318 + ~*(&v318 + 1);
          }

          memcpy(v317 + *(&v318 + 1), ", target_kbps: ", v131);
          *(&v318 + 1) += v131;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%u", *(v5 - 3));
          if (v318 + ~*(&v318 + 1) >= 0xCuLL)
          {
            v132 = 12;
          }

          else
          {
            v132 = v318 + ~*(&v318 + 1);
          }

          memcpy(v317 + *(&v318 + 1), ", max_kbps: ", v132);
          *(&v318 + 1) += v132;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%u", *(v5 - 4));
          if (v318 + ~*(&v318 + 1) >= 0xBuLL)
          {
            v133 = 11;
          }

          else
          {
            v133 = v318 + ~*(&v318 + 1);
          }

          memcpy(v317 + *(&v318 + 1), ", max_fps: ", v133);
          *(&v318 + 1) += v133;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%g", *(v5 - 6));
          if (v318 + ~*(&v318 + 1) >= 0xAuLL)
          {
            v134 = 10;
          }

          else
          {
            v134 = v318 + ~*(&v318 + 1);
          }

          memcpy(v317 + *(&v318 + 1), ", max_qp: ", v134);
          *(&v318 + 1) += v134;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%u", *(v5 - 1));
          if (v318 + ~*(&v318 + 1) >= 0xAuLL)
          {
            v135 = 10;
          }

          else
          {
            v135 = v318 + ~*(&v318 + 1);
          }

          memcpy(v317 + *(&v318 + 1), ", num_tl: ", v135);
          *(&v318 + 1) += v135;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v317, "%d", *(v5 - 20));
          if (v318 + ~*(&v318 + 1) >= 0xAuLL)
          {
            v136 = 10;
          }

          else
          {
            v136 = v318 + ~*(&v318 + 1);
          }

          memcpy(v317 + *(&v318 + 1), ", active: ", v136);
          *(&v318 + 1) += v136;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          v137 = *v5;
          v5 += 9;
          v138 = 4;
          if (v137)
          {
            v139 = "true";
          }

          else
          {
            v138 = 5;
            v139 = "false";
          }

          if (v138 >= v318 + ~*(&v318 + 1))
          {
            v140 = v318 + ~*(&v318 + 1);
          }

          else
          {
            v140 = v138;
          }

          memcpy(v317 + *(&v318 + 1), v139, v140);
          *(&v318 + 1) += v140;
          v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
          v141 = v318;
          v3 = *(&v318 + 1) + 1;
          memcpy(v317 + *(&v318 + 1), "}", v318 != *(&v318 + 1) + 1);
          v142 = *(&v318 + 1);
          if (v141 != v3)
          {
            v142 = *(&v318 + 1) + 1;
          }

          *(&v318 + 1) = v142;
          v317->__r_.__value_.__s.__data_[v142] = 0;
          ++AlignmentAndMaybeAdjustScaleFactors;
        }

        while (AlignmentAndMaybeAdjustScaleFactors < LOBYTE(v331[2]));
      }

      if (*v302 <= 5u && ((1 << *v302) & 0x2C) != 0)
      {
        if (v318 + ~*(&v318 + 1) >= 0x12uLL)
        {
          v3 = 18;
        }

        else
        {
          v3 = v318 + ~*(&v318 + 1);
        }

        memcpy(v317 + *(&v318 + 1), ", spatial layers: ", v3);
        v156 = 0;
        *(&v318 + 1) += v3;
        v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
        v157 = &v331[11];
        LODWORD(v3) = 12;
        v5 = ", active: ";
        v158 = v331[0];
        if (LODWORD(v331[0]) == 3)
        {
          goto LABEL_199;
        }

        while (v158 != 2)
        {
LABEL_200:
          if (v156 >= (v158 == 5))
          {
            goto LABEL_242;
          }

          while (1)
          {
LABEL_204:
            v159 = v318;
            v160 = *(&v318 + 1) + 1;
            memcpy(v317 + *(&v318 + 1), "{", v318 != *(&v318 + 1) + 1);
            v161 = *(&v318 + 1);
            if (v159 != v160)
            {
              v161 = *(&v318 + 1) + 1;
            }

            *(&v318 + 1) = v161;
            v317->__r_.__value_.__s.__data_[v161] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%d", v156);
            if (v318 + ~*(&v318 + 1) >= 2uLL)
            {
              v162 = 2;
            }

            else
            {
              v162 = v318 + ~*(&v318 + 1);
            }

            memcpy(v317 + *(&v318 + 1), ": ", v162);
            *(&v318 + 1) += v162;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%d", *(v157 - 8));
            v163 = v318;
            v164 = *(&v318 + 1) + 1;
            memcpy(v317 + *(&v318 + 1), "x", v318 != *(&v318 + 1) + 1);
            v165 = *(&v318 + 1);
            if (v163 != v164)
            {
              v165 = *(&v318 + 1) + 1;
            }

            *(&v318 + 1) = v165;
            v317->__r_.__value_.__s.__data_[v165] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%d", *(v157 - 7));
            if (v318 + ~*(&v318 + 1) >= 0xCuLL)
            {
              v166 = 12;
            }

            else
            {
              v166 = v318 + ~*(&v318 + 1);
            }

            memcpy(v317 + *(&v318 + 1), ", min_kbps: ", v166);
            *(&v318 + 1) += v166;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%u", *(v157 - 2));
            if (v318 + ~*(&v318 + 1) >= 0xFuLL)
            {
              v167 = 15;
            }

            else
            {
              v167 = v318 + ~*(&v318 + 1);
            }

            memcpy(v317 + *(&v318 + 1), ", target_kbps: ", v167);
            *(&v318 + 1) += v167;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%u", *(v157 - 3));
            if (v318 + ~*(&v318 + 1) >= 0xCuLL)
            {
              v168 = 12;
            }

            else
            {
              v168 = v318 + ~*(&v318 + 1);
            }

            memcpy(v317 + *(&v318 + 1), ", max_kbps: ", v168);
            *(&v318 + 1) += v168;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%u", *(v157 - 4));
            if (v318 + ~*(&v318 + 1) >= 0xBuLL)
            {
              v169 = 11;
            }

            else
            {
              v169 = v318 + ~*(&v318 + 1);
            }

            memcpy(v317 + *(&v318 + 1), ", max_fps: ", v169);
            *(&v318 + 1) += v169;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%g", *(v157 - 6));
            if (v318 + ~*(&v318 + 1) >= 0xAuLL)
            {
              v170 = 10;
            }

            else
            {
              v170 = v318 + ~*(&v318 + 1);
            }

            memcpy(v317 + *(&v318 + 1), ", max_qp: ", v170);
            *(&v318 + 1) += v170;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%u", *(v157 - 1));
            if (v318 + ~*(&v318 + 1) >= 0xAuLL)
            {
              v171 = 10;
            }

            else
            {
              v171 = v318 + ~*(&v318 + 1);
            }

            memcpy(v317 + *(&v318 + 1), ", num_tl: ", v171);
            *(&v318 + 1) += v171;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&v317, "%d", *(v157 - 20));
            if (v318 + ~*(&v318 + 1) >= 0xAuLL)
            {
              v172 = 10;
            }

            else
            {
              v172 = v318 + ~*(&v318 + 1);
            }

            memcpy(v317 + *(&v318 + 1), ", active: ", v172);
            *(&v318 + 1) += v172;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            v173 = *v157;
            v157 += 36;
            v174 = 4;
            if (v173)
            {
              v175 = "true";
            }

            else
            {
              v174 = 5;
              v175 = "false";
            }

            if (v174 >= v318 + ~*(&v318 + 1))
            {
              v176 = v318 + ~*(&v318 + 1);
            }

            else
            {
              v176 = v174;
            }

            memcpy(v317 + *(&v318 + 1), v175, v176);
            *(&v318 + 1) += v176;
            v317->__r_.__value_.__s.__data_[*(&v318 + 1)] = 0;
            v177 = v318;
            AlignmentAndMaybeAdjustScaleFactors = *(&v318 + 1) + 1;
            memcpy(v317 + *(&v318 + 1), "}", v318 != *(&v318 + 1) + 1);
            v178 = *(&v318 + 1);
            if (v177 != AlignmentAndMaybeAdjustScaleFactors)
            {
              v178 = *(&v318 + 1) + 1;
            }

            *(&v318 + 1) = v178;
            v317->__r_.__value_.__s.__data_[v178] = 0;
            ++v156;
            v158 = v331[0];
            if (LODWORD(v331[0]) != 3)
            {
              break;
            }

LABEL_199:
            if ((WORD2(v331[23]) & 0x100) == 0)
            {
              goto LABEL_200;
            }

            v95 = BYTE4(v331[23]);
            if (BYTE4(v331[23]) >= 0x22u)
            {
              goto LABEL_496;
            }

            {
              goto LABEL_242;
            }
          }
        }

        if (v156 < BYTE14(v331[22]))
        {
          goto LABEL_204;
        }
      }

LABEL_242:
      v23 = v8;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v179, v180, v181, v182, v183, v184, v185, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
      }

      v7 = v331;
      if (*(v8 + 620) == 1)
      {
        v186 = *(v8 + 616) / 0x3E8u;
      }

      else
      {
        v186 = 0;
      }

      if (v186 <= LODWORD(v331[1]))
      {
        v186 = v331[1];
      }

      if (HIDWORD(v331[0]) < v186)
      {
        v186 = HIDWORD(v331[0]);
      }

      DWORD2(v331[0]) = v186;
      v6 = (v8 + 280);
      if (*(v8 + 604))
      {
        BYTE8(v331[20]) = *(v8 + 600);
        *(v8 + 512) = DWORD1(v331[1]);
        if (BYTE4(v331[4]))
        {
          operator new();
        }

        if (BYTE8(v331[6]) == 1)
        {
          operator new();
        }

        if (BYTE12(v331[8]) != 1)
        {
          v187 = *(v8 + 5632);
          if (v187)
          {
            atomic_fetch_add_explicit(v187, 1u, memory_order_relaxed);
          }

          operator new();
        }

        operator new();
      }

      goto LABEL_490;
    }

    if ((*(v8 + 604) & 1) == 0)
    {
      goto LABEL_490;
    }

    v68 = *(v8 + 592);
    v69 = v68 - WORD2(v331[0]);
    if (v68 < WORD2(v331[0]))
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc", 1231, "last_frame_info_->width >= codec.width", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v63, v64, v65, v66, *(v8 + 592));
    }

    else
    {
      v70 = *(v8 + 596);
      v71 = v70 - WORD3(v331[0]);
      if (v70 >= WORD3(v331[0]))
      {
        *(v8 + 608) = v69;
        *(v8 + 612) = v71;
        (*(**(v8 + 488) + 96))(v322);
        if (LODWORD(v331[0]) != 3)
        {
          if (LODWORD(v331[0]) == 2)
          {
            if (!BYTE14(v331[22]))
            {
              goto LABEL_141;
            }

            goto LABEL_100;
          }

LABEL_87:
          if (LODWORD(v331[0]) != 5)
          {
            goto LABEL_141;
          }

LABEL_100:
          v97 = *(v8 + 448);
          v96 = *(v8 + 456);
          if (v97 == v96)
          {
            v99 = v96 - v97;
LABEL_110:
            if (0xAAAAAAAAAAAAAAABLL * (v99 >> 5) < 2)
            {
              goto LABEL_141;
            }

            v104.n128_f64[0] = webrtc::VideoStreamAdapter::GetSingleActiveLayerPixels(v331, v72, v73, v74, v75, v76, v77, v78);
            if ((v103 & 0x100000000) == 0)
            {
              goto LABEL_141;
            }

            LODWORD(v3) = v103;
            if (v328 != v327)
            {
              if (((v328 - v327) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              goto LABEL_503;
            }

            AlignmentAndMaybeAdjustScaleFactors = 0;
            std::__introsort<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,false>(0, 0, 0, 1, v104);
            v5 = (v8 + 4096);
LABEL_141:
            webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&__p[0].__r_.__value_.__l.__data_);
            webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v322);
            goto LABEL_142;
          }

          v98 = 0;
          if (v97[81] != 1 || LOBYTE(v331[2]) != 1)
          {
LABEL_105:
            v99 = v96 - v97;
            v100 = v96 - v97 - 96;
            if (v96 - v97 == 96 || !v98 && (v97[82] & 1) != 0)
            {
              goto LABEL_141;
            }

            if (v100 >= 0x60)
            {
              v105 = 0;
              v106 = 0;
              v107 = v100 / 0x60 + 1;
              v102 = &v97[96 * (v107 & 0x7FFFFFFFFFFFFFELL)];
              v108 = v97 + 178;
              v109 = v107 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                v110 = *(v108 - 96);
                v111 = *v108;
                v108 += 192;
                v105 += v110;
                v106 += v111;
                v109 -= 2;
              }

              while (v109);
              v101 = v106 + v105;
              if (v107 == (v107 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_119:
                if (v101 > 1)
                {
                  goto LABEL_141;
                }

                goto LABEL_110;
              }
            }

            else
            {
              v101 = 0;
              v102 = *(v8 + 448);
            }

            do
            {
              v101 += v102[82];
              v102 += 96;
            }

            while (v102 != v96);
            goto LABEL_119;
          }

          if (v97[80] < 0x22u)
          {
            goto LABEL_105;
          }

          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v75, v76, v77, v78, v97[80]);
LABEL_497:
          __asm { BL              ___stack_chk_fail }
        }

        if ((WORD2(v331[23]) & 0x100) == 0)
        {
          goto LABEL_87;
        }

        v95 = BYTE4(v331[23]);
        if (BYTE4(v331[23]) < 0x22u)
        {
          {
            goto LABEL_141;
          }

          goto LABEL_100;
        }

LABEL_496:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v75, v76, v77, v78, v95);
        goto LABEL_497;
      }
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc", 1232, "last_frame_info_->height >= codec.height", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v63, v64, v65, v66, v70);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v79 = v55 - 96;
  if (v55 - 96 < 0x60)
  {
    v80 = 0;
    v81 = v319.__r_.__value_.__r.__words[0];
    do
    {
LABEL_92:
      v80 += *(v81 + 82);
      v81 += 96;
    }

    while (v81 != v319.__r_.__value_.__l.__size_);
    goto LABEL_93;
  }

  v82 = 0;
  v83 = 0;
  v84 = v79 / 0x60 + 1;
  v81 = v319.__r_.__value_.__r.__words[0] + 96 * (v84 & 0x7FFFFFFFFFFFFFELL);
  v85 = (v319.__r_.__value_.__r.__words[0] + 178);
  v86 = v84 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v87 = *(v85 - 96);
    v88 = *v85;
    v85 += 192;
    v82 += v87;
    v83 += v88;
    v86 -= 2;
  }

  while (v86);
  v80 = v83 + v82;
  if (v84 != (v84 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_92;
  }

LABEL_93:
  if (v80 != 1)
  {
    goto LABEL_75;
  }

  if (*(v319.__r_.__value_.__r.__words[0] + 82))
  {
    goto LABEL_75;
  }

  v89 = *(v8 + 448);
  v90 = *(v8 + 456);
  if (v89 == v90)
  {
    goto LABEL_75;
  }

  v91 = v90 - v89;
  v92 = v90 - v89 - 96;
  if (v92 < 0x60)
  {
    v93 = 0;
    v94 = *(v8 + 448);
    do
    {
LABEL_124:
      v93 += *(v94 + 82);
      v94 += 96;
    }

    while (v94 != v90);
    goto LABEL_125;
  }

  v112 = 0;
  v113 = 0;
  v114 = v92 / 0x60 + 1;
  v94 = v89 + 96 * (v114 & 0x7FFFFFFFFFFFFFELL);
  v115 = (v89 + 178);
  v116 = v114 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v117 = *(v115 - 96);
    v118 = *v115;
    v115 += 192;
    v112 += v117;
    v113 += v118;
    v116 -= 2;
  }

  while (v116);
  v93 = v113 + v112;
  if (v114 != (v114 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_124;
  }

LABEL_125:
  if (v93 != 1)
  {
    goto LABEL_75;
  }

  v119 = 0;
  v3 = 0;
  v120 = 0xAAAAAAAAAAAAAAABLL * (v91 >> 5);
  if (v120 <= 1)
  {
    v120 = 1;
  }

  v121 = (v89 + 82);
  do
  {
    v122 = *v121;
    v121 += 96;
    if (v122)
    {
      v3 = v119;
    }

    ++v119;
  }

  while (v120 != v119);
  if (v56 < v3 + 1)
  {
    goto LABEL_75;
  }

  if (v56 <= v3)
  {
    goto LABEL_490;
  }

  if (*(v319.__r_.__value_.__r.__words[0] + 96 * v3 + 82) != 1)
  {
    goto LABEL_75;
  }

  webrtc::VideoEncoder::EncoderInfo::GetEncoderBitrateLimitsForResolution(__p, v322, v54);
  if (LOBYTE(v322[1]) != 1)
  {
    goto LABEL_75;
  }

  v123 = *(v8 + 448);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 456) - v123) >> 5) <= v3)
  {
    goto LABEL_490;
  }

  v124 = v123 + 96 * v3;
  v125 = *(v124 + 20);
  if (v125 <= 0)
  {
    v126 = v322 + 2;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0]) >> 5) <= v3)
    {
      goto LABEL_490;
    }

    v126 = (v319.__r_.__value_.__r.__words[0] + 96 * v3 + 20);
  }

  v188 = *v126;
  if (*(v124 + 28) <= 0)
  {
    v191 = v322 + 3;
    v189 = v319.__r_.__value_.__r.__words[0];
    v190 = 0xAAAAAAAAAAAAAAABLL * ((v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0]) >> 5);
  }

  else
  {
    v189 = v319.__r_.__value_.__r.__words[0];
    v190 = 0xAAAAAAAAAAAAAAABLL * ((v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0]) >> 5);
    if (v190 <= v3)
    {
      goto LABEL_490;
    }

    v191 = (v319.__r_.__value_.__r.__words[0] + 96 * v3 + 28);
  }

  v192 = *v191;
  if (v188 <= v192)
  {
    v193 = v192;
  }

  else
  {
    v193 = v188;
  }

  if (v192 >= v188)
  {
    v194 = v188;
  }

  else
  {
    v194 = v192;
  }

  if (v125 <= 0)
  {
    v195 = v194;
  }

  else
  {
    v192 = v193;
    v195 = v188;
  }

  if (v190 > v3)
  {
    v196 = (v189 + 96 * v3);
    v196[5] = v195;
    v196[7] = v192;
    if (v192 >= v195)
    {
      v197 = v196[6];
      if (v192 >= v197)
      {
        v198 = v196[6];
      }

      else
      {
        v198 = v192;
      }

      if (v197 >= v195)
      {
        v195 = v198;
      }

      v196[6] = v195;
      goto LABEL_75;
    }
  }

LABEL_490:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          __break(1u);
          v299 = *(v23 + 1988);
          v300 = WORD2(v331[23]) & 0x100;
          if ((v300 & v299) != 0)
          {
            v301 = BYTE4(v331[23]) != v299;
          }

          else
          {
            v301 = (v300 ^ v299 & 0x100u) >> 8;
          }

          if (v3 == 2)
          {
            v199 = *(v23 + 72);
            if (*(v5 + 1464) == 1)
            {
              if (v199 > *(v23 + 5556))
              {
                goto LABEL_289;
              }
            }

            else if (v199 > 0)
            {
              goto LABEL_289;
            }

            DWORD2(v331[23]) = -1;
          }

LABEL_289:
          v200 = v7[32];
          (*(**(v23 + 488) + 96))(v322);
          webrtc::QualityConvergenceController::Initialize((v23 + 5512), v200, *(AlignmentAndMaybeAdjustScaleFactors + 244), v331[0], *(v23 + 32), v201, v202, v203);
          webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v322);
          v3 = v23 + 1616;
          memcpy((v23 + 1616), v331, 0x17DuLL);
          if (!v301)
          {
            goto LABEL_323;
          }

          v204 = *(v23 + 488);
          if (v204)
          {
            if (*(v23 + 496) == 1)
            {
              (*(*v204 + 48))(v204);
              *(v23 + 496) = 0;
              v205 = *(v23 + 5648);
              *(v23 + 5648) = 0;
              if (v205)
              {
                std::default_delete<webrtc::FrameInstrumentationGenerator>::operator()[abi:sn200100](v205);
              }
            }
          }

          v206 = *(v23 + 624);
          if (!v206)
          {
            v206 = 1440;
          }

          v207 = *(v23 + 72);
          LOBYTE(v322[0]) = *(v23 + 120);
          DWORD1(v322[0]) = v207;
          *(&v322[0] + 1) = v206;
          LODWORD(v322[1]) = *(v23 + 5564);
          BYTE4(v322[1]) = *(v23 + 5568);
          if ((*(**(v23 + 488) + 32))(*(v23 + 488), v23 + 1616, v322))
          {
            v152 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
            if ((v152 & 1) == 0)
            {
              if (*v3 >= 6u)
              {
                goto LABEL_495;
              }

              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v208, v209, v210, v211, v212, v213, v214, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
            }

            v215 = *(v23 + 488);
            if (v215)
            {
              if (*(v23 + 496) == 1)
              {
                (*(*v215 + 48))(v215);
                *(v23 + 496) = 0;
                v216 = *(v23 + 5648);
                *(v23 + 5648) = 0;
                if (v216)
                {
                  std::default_delete<webrtc::FrameInstrumentationGenerator>::operator()[abi:sn200100](v216);
                }
              }
            }

            goto LABEL_320;
          }

          *(v23 + 496) = 1;
          (*(**(v23 + 488) + 40))(*(v23 + 488), v23 + 8);
          webrtc::FrameEncodeMetadataWriter::OnEncoderInit((v23 + 2136), (v23 + 1616));
          v217 = *(v23 + 2112);
          *(v23 + 2120) = v217;
          if (v7[32] <= 1u)
          {
            v218 = 1;
          }

          else
          {
            v218 = v7[32];
          }

          v219 = *(v23 + 2128) - v217;
          if (v218 > v219 >> 2)
          {
            v220 = v219 >> 1;
            if (v219 >> 1 <= v218)
            {
              v220 = v218;
            }

            if (v219 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v220 = 0x3FFFFFFFFFFFFFFFLL;
            }

            if (!(v220 >> 62))
            {
              operator new();
            }

LABEL_500:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v221 = 4 * v218;
          v222 = &v217[v218];
          do
          {
            if (!v217)
            {
              goto LABEL_490;
            }

            *v217++ = 3;
            v221 -= 4;
          }

          while (v221);
          *(v23 + 2120) = v222;
          if (*(v23 + 121) == 1)
          {
            operator new();
          }

LABEL_320:
          webrtc::FrameEncodeMetadataWriter::Reset((v23 + 2136));
          if (*(v23 + 1352) == 1)
          {
            *(v23 + 1352) = 0;
          }

          *(v23 + 1017) = 0;
LABEL_323:
          webrtc::VideoStreamEncoder::OnEncoderSettingsChanged(v23);
          if (*(v23 + 496) == 1)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v223, v224, v225, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
            }
          }

          else
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log("\r\t", v223, v224, v225, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
            }

            v226 = *(v23 + 504);
            *(v23 + 504) = 0;
            if (v226)
            {
              (*(*v226 + 8))(v226);
            }
          }

          if (*(v23 + 517) == 1)
          {
            webrtc::VideoStreamEncoderResourceManager::ConfigureEncodeUsageResource((v23 + 2824), v223, v224, v225, v75, v76, v77, v78);
            *(v23 + 517) = 0;
          }

          if (SLODWORD(v331[0]) <= 2)
          {
            if (LODWORD(v331[0]) == 1 || LODWORD(v331[0]) == 2)
            {
              LODWORD(v3) = v7[356];
              goto LABEL_347;
            }

            goto LABEL_344;
          }

          if (LODWORD(v331[0]) != 3)
          {
            if (LODWORD(v331[0]) == 4)
            {
              LODWORD(v3) = v7[360];
              goto LABEL_347;
            }

            if (LODWORD(v331[0]) != 5)
            {
LABEL_344:
              LODWORD(v3) = 1;
              if (!LODWORD(v331[0]) && v7[32])
              {
                LODWORD(v3) = v7[48];
              }

              goto LABEL_347;
            }
          }

          if ((WORD2(v331[23]) & 0x100) != 0)
          {
            v95 = BYTE4(v331[23]);
            if (BYTE4(v331[23]) >= 0x22u)
            {
              goto LABEL_496;
            }
          }

          else
          {
            LODWORD(v3) = 1;
          }

LABEL_347:
          *(v23 + 2000) = 1065185444;
          v227 = *(v23 + 2008);
          if (v227 >= 0.0033333 || v227 == -1.0)
          {
            v227 = 0.0033333;
          }

          *(v23 + 2004) = v227;
          *(v23 + 2012) = 0xBF8000003F666666;
          *(v23 + 2032) = 0;
          *(v23 + 2024) = 1097859072;
          *(v23 + 2048) = 0;
          *(v23 + 2052) = 1063675494;
          v229 = *(v23 + 2060);
          if (v229 >= 0.0 || v229 == -1.0)
          {
            v229 = 0.0;
          }

          *(v23 + 2056) = v229;
          *(v23 + 2064) = 0;
          *(v23 + 2072) = 1;
          v231 = DWORD2(v331[0]);
          v232 = *(v23 + 512);
          *(v23 + 2040) = DWORD2(v331[0]) * 0.5;
          *(v23 + 2044) = v231;
          *(v23 + 2068) = v232;
          (*(**(v23 + 32) + 16))(v322);
          v233 = 0;
          v234 = BYTE7(v322[1]);
          if (SBYTE7(v322[1]) < 0)
          {
            v234 = *(&v322[0] + 1);
          }

          if (v234 < 8)
          {
            if ((SBYTE7(v322[1]) & 0x80000000) == 0)
            {
              goto LABEL_363;
            }

LABEL_368:
            operator delete(*&v322[0]);
            if (v233)
            {
              goto LABEL_364;
            }

            goto LABEL_369;
          }

          v236 = *&v322[0];
          if ((SBYTE7(v322[1]) & 0x80u) == 0)
          {
            v236 = v322;
          }

          v233 = *v236 == 0x64656C6261736944;
          if (SBYTE7(v322[1]) < 0)
          {
            goto LABEL_368;
          }

LABEL_363:
          if (v233)
          {
LABEL_364:
            v235 = 1;
            goto LABEL_375;
          }

LABEL_369:
          v235 = v3 > 1 && DWORD1(v331[20]) == 1;
LABEL_375:
          *(v23 + 2080) = v235;
          (*(**(v23 + 488) + 96))(v323);
          if (*(v23 + 214) == 1)
          {
            operator new();
          }

          if (*(v23 + 504) && *(v23 + 1008) == 1)
          {
            *&v322[0] = &unk_2882A1B60;
            memcpy(v322 + 8, (v23 + 640), 0x170uLL);
            *(v23 + 1008) = 0;
            if (*(v23 + 512) == -1)
            {
              LODWORD(v3) = 30;
            }

            else
            {
              LODWORD(v3) = *(v23 + 512);
            }

            v238 = *(v23 + 272);
            if (v238)
            {
              v239 = (*(*v238 + 56))(v238);
              if ((v239 & 0x100000000) != 0)
              {
                if (v239)
                {
                  LODWORD(v3) = v239;
                }
              }
            }

            *(&v322[21] + 1) = v3;
            webrtc::VideoStreamEncoder::UpdateBitrateAllocation(&v321, v23, v322);
            webrtc::VideoStreamEncoder::SetEncoderRates(v23, &v321);
          }

          (*(**(v23 + 248) + 56))(*(v23 + 248), v6, &v319);
          v241 = 0;
          *(v23 + 516) = 0;
          v242 = *(v23 + 472);
          if (v242 >= 2)
          {
            v243 = *(v23 + 448);
            if (0xAAAAAAAAAAAAAAABLL * ((*(v23 + 456) - v243) >> 5) <= 1)
            {
              v244 = 1;
            }

            else
            {
              v244 = 0xAAAAAAAAAAAAAAABLL * ((*(v23 + 456) - v243) >> 5);
            }

            v245 = (v243 + 178);
            v246 = v242 - 1;
            v241 = 1;
            v247 = 1 - v244;
            v248 = 2;
            do
            {
              if (v247 + v248 == 2)
              {
                goto LABEL_490;
              }

              if (*v245 == 1)
              {
                break;
              }

              v241 = v248 < v242;
              v245 += 96;
              ++v248;
              --v246;
            }

            while (v246);
          }

          if (*v6 > 5u || ((1 << *v6) & 0x2C) == 0)
          {
            v251 = 0;
            v250 = v319.__r_.__value_.__l.__size_;
            v3 = v319.__r_.__value_.__r.__words[0];
            goto LABEL_446;
          }

          v250 = v319.__r_.__value_.__l.__size_;
          v3 = v319.__r_.__value_.__r.__words[0];
          if (v241)
          {
            v251 = 0;
            goto LABEL_446;
          }

          if (v319.__r_.__value_.__l.__size_ == v319.__r_.__value_.__r.__words[0])
          {
            continue;
          }

          break;
        }

        NumLayers = webrtc::SvcRateAllocator::GetNumLayers(v331, v240);
        v254 = 0;
        if (NumLayers)
        {
          v255 = &v331[11];
          while (1)
          {
            v256 = *v255;
            v255 += 36;
            if (v256)
            {
              break;
            }

            if (NumLayers == ++v254)
            {
              goto LABEL_413;
            }
          }
        }

        if (v254 >= NumLayers)
        {
          goto LABEL_413;
        }

        v257 = &v331[11] + 36 * v254;
        v258 = v254;
        while (1)
        {
          v259 = *v257;
          v257 += 36;
          if (v259 != 1)
          {
            break;
          }

          if (NumLayers == ++v258)
          {
            v258 = NumLayers;
            break;
          }
        }

        v260 = v258 - v254;
        if (v258 == v254)
        {
LABEL_413:
          v261 = 0;
        }

        else
        {
          v261 = 0;
          v272 = &v331[10] + 9 * v254;
          do
          {
            v273 = *v272;
            v272 += 9;
            v274 = v261 + 1000 * v273;
            if (v261 == 0x8000000000000000)
            {
              v274 = 0x8000000000000000;
            }

            if (v261 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v261 = v274;
            }

            --v260;
          }

          while (v260);
        }

        v262 = v319.__r_.__value_.__r.__words[0];
        if (v319.__r_.__value_.__l.__size_ == v319.__r_.__value_.__r.__words[0])
        {
          continue;
        }

        break;
      }

      v263 = 1000 * HIDWORD(v331[0]);
      if (v263 >= v261)
      {
        LODWORD(v263) = v261;
      }

      if (HIDWORD(v331[0]))
      {
        LODWORD(v261) = v263;
      }

      if (*(v3 + 28) < v261)
      {
        LODWORD(v261) = *(v3 + 28);
      }

      *(v319.__r_.__value_.__r.__words[0] + 28) = v261;
      *(v262 + 20) = 1000 * DWORD2(v331[10]);
      webrtc::SvcRateAllocator::GetLayerStartBitrates(v331, v253, v322);
      if (*&v322[0] < 2uLL)
      {
        v268 = 0;
        if (!*&v322[0])
        {
          goto LABEL_429;
        }

LABEL_428:
        operator delete(*(&v322[0] + 1));
        goto LABEL_429;
      }

      v269 = v322 + 8;
      if (v322[0])
      {
        v269 = *(&v322[0] + 1);
      }

      v268 = *&v269[8 * (*&v322[0] >> 1) - 8];
      if (v322[0])
      {
        goto LABEL_428;
      }

LABEL_429:
      v250 = v319.__r_.__value_.__l.__size_;
      v3 = v319.__r_.__value_.__r.__words[0];
      v270 = v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0];
      if (v319.__r_.__value_.__l.__size_ == v319.__r_.__value_.__r.__words[0])
      {
        continue;
      }

      break;
    }

    *(v319.__r_.__value_.__r.__words[0] + 24) = v268;
    *v3 = *(v250 - 96);
    if (LODWORD(v331[0]) == 3)
    {
      if ((WORD2(v331[23]) & 0x100) != 0)
      {
        if (BYTE4(v331[23]) >= 0x22u)
        {
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v264, v265, v266, v267, BYTE4(v331[23]));
          goto LABEL_497;
        }

        goto LABEL_444;
      }
    }

    else if (LODWORD(v331[0]) == 2)
    {
      v271 = v7[366];
      goto LABEL_444;
    }

    v271 = LODWORD(v331[0]) == 5;
LABEL_444:
    v251 = v271 > 1;
    if (0xAAAAAAAAAAAAAAABLL * (v270 >> 5) >= 2)
    {
      v250 = v3 + 96;
      v319.__r_.__value_.__l.__size_ = v3 + 96;
    }

LABEL_446:
    v275 = *(v23 + 80);
    v314 = v3;
    v315 = v250;
    v316 = v319.__r_.__value_.__r.__words[2];
    memset(&v319, 0, sizeof(v319));
    (*(*v275 + 32))(v275, &v314, v251, *(v23 + 416), *(v23 + 432));
    if (v314)
    {
      v315 = v314;
      operator delete(v314);
    }

    webrtc::VideoStreamEncoderResourceManager::ConfigureQualityScaler((v23 + 2824), v323);
    if ((*(v23 + 2944) & 0xFFFFFFFD) != 1)
    {
      v276 = 0;
      v277 = 0;
      if ((v5[48] & 1) == 0)
      {
        goto LABEL_457;
      }

      goto LABEL_456;
    }

    if (v5[48])
    {
      if (*(v23 + 3897) == 1)
      {
        v276 = v325 & (v324 ^ 1);
      }

      else
      {
        v276 = 0;
      }

LABEL_456:
      v277 = v276;
      goto LABEL_457;
    }

    v277 = 0;
LABEL_457:
    webrtc::VideoStreamEncoderResourceManager::UpdateBandwidthQualityScalerSettings((v23 + 2824), v277 & 1);
    v278 = *(v23 + 2944);
    v279 = v278 & 0xFFFFFFFD;
    v280 = v278 & 0xFFFFFFFE;
    if (*(*(v23 + 2880) + 120) || *(*(v23 + 2896) + 120))
    {
      v281 = (v279 == 1) | ((v280 == 2) << 8);
      v282 = v281;
    }

    else
    {
      v282 = 0;
      v281 = (v279 == 1) | ((v280 == 2) << 8);
    }

    (*(**(v23 + 2936) + 80))(*(v23 + 2936), v281, v282);
    v283 = 0;
    LODWORD(v322[0]) = 0;
    *(AlignmentAndMaybeAdjustScaleFactors + 3) = 0;
    LODWORD(v321.__sig) = 0;
    BYTE4(v321.__sig) = 0;
    if (*(v23 + 496))
    {
LABEL_466:
      v291 = *(v23 + 520);
      if (v291 < 2)
      {
        goto LABEL_486;
      }

      goto LABEL_467;
    }

    v152 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
    if ((v152 & 1) == 0)
    {
      if (LODWORD(v331[0]) < 6)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v284, v285, v286, v287, v288, v289, v290, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
        goto LABEL_464;
      }

LABEL_495:
      webrtc::webrtc_checks_impl::UnreachableCodeReached(v152);
    }

LABEL_464:
    if (*(v5 + 1456) == 1)
    {
      webrtc::VideoStreamEncoder::RequestEncoderSwitch(v23);
      v283 = 0;
      goto LABEL_466;
    }

    *(AlignmentAndMaybeAdjustScaleFactors + 3) = 0;
    LODWORD(v322[0]) = 0;
    LODWORD(v321.__sig) = 0;
    v283 = 1;
    BYTE4(v321.__sig) = 0;
    v291 = *(v23 + 520);
    if (v291 < 2)
    {
      goto LABEL_486;
    }

LABEL_467:
    v292 = (v23 + 528);
    v3 = v23 + 528;
    if (v291)
    {
      v3 = *v292;
    }

    v5 = &v303;
    v293 = (16 * v291) & 0xFFFFFFFFFFFFFFE0;
    do
    {
      while (1)
      {
        v303 = v283;
        v304 = 0;
        v305 = 0;
        *v306 = v322[0];
        *&v306[3] = *(AlignmentAndMaybeAdjustScaleFactors + 3);
        v307 = 0;
        sig = v321.__sig;
        v309 = WORD2(v321.__sig);
        v310 = 0;
        webrtc::InvokeSetParametersCallback(v3, &v303, v311);
        if ((v313 & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v312);
        if (v307 < 0)
        {
          goto LABEL_474;
        }

LABEL_471:
        v3 += 32;
        v293 -= 32;
        if (!v293)
        {
          goto LABEL_475;
        }
      }

      if ((v307 & 0x80000000) == 0)
      {
        goto LABEL_471;
      }

LABEL_474:
      operator delete(v304);
      v3 += 32;
      v293 -= 32;
    }

    while (v293);
LABEL_475:
    v294 = *(v23 + 520);
    v295 = v294 & 1;
    v296 = (v23 + 528);
    if (v294)
    {
      v296 = *v292;
    }

    if (v294 >= 2)
    {
      if (v296)
      {
        v297 = v294 >> 1;
        v298 = v296 + 32 * (v294 >> 1) - 32;
        do
        {
          --v297;
          (*(v298 + 16))(1, v298, v298);
          v298 -= 32;
        }

        while (v297);
        v295 = *(v23 + 520) & 1;
        break;
      }

      continue;
    }

    break;
  }

  if (v295)
  {
    operator delete(*v292);
  }

  *(v23 + 520) = 0;
LABEL_486:
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v323);
  if (v319.__r_.__value_.__r.__words[0])
  {
    v319.__r_.__value_.__l.__size_ = v319.__r_.__value_.__r.__words[0];
    operator delete(v319.__r_.__value_.__l.__data_);
  }
}

void webrtc::VideoStreamEncoder::RequestEncoderSwitch(webrtc::VideoStreamEncoder *this)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *(this + 13);
  v4 = *(this + 30);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
  }

  if (v3)
  {
    LOBYTE(v31) = 0;
    v40 = 0;
    if (!v4)
    {
      goto LABEL_32;
    }

    (*(**(this + 30) + 40))(v21);
    if (v40 == v30)
    {
      if (v40)
      {
        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31);
        }

        v31 = *v21;
        v32 = v22;
        HIBYTE(v22) = 0;
        LOBYTE(v21[0]) = 0;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v33, v34);
        v33 = v23;
        v34 = v24;
        v35 = i;
        if (i)
        {
          *(v24 + 16) = &v34;
          v23 = &v24;
          v24 = 0;
          i = 0;
          if ((v36 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v33 = &v34;
          if ((v36 & 1) == 0)
          {
LABEL_12:
            v37 = *__p;
            v38 = v28;
            v36 = v26;
            v39 = v29;
            v26 = 0;
            if (v30 != 1)
            {
              goto LABEL_31;
            }

            goto LABEL_21;
          }
        }

        operator delete(v37);
        goto LABEL_12;
      }
    }

    else
    {
      if (!v40)
      {
        v31 = *v21;
        v12 = v22;
        v21[1] = 0;
        v22 = 0;
        v21[0] = 0;
        v32 = v12;
        v33 = v23;
        v34 = v24;
        v35 = i;
        if (i)
        {
          *(v24 + 16) = &v34;
          v23 = &v24;
          v24 = 0;
          i = 0;
        }

        else
        {
          v33 = &v34;
        }

        v37 = *__p;
        v38 = v28;
        v36 = v26;
        v39 = v29;
        v26 = 0;
        v40 = 1;
        if (v30 != 1)
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

      if (v36)
      {
        operator delete(v37);
      }

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v33, v34);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31);
      }

      v40 = 0;
    }

    if (v30 != 1)
    {
      goto LABEL_31;
    }

LABEL_21:
    if (v26)
    {
      operator delete(__p[0]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v23, v24);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

LABEL_31:
    if (v40)
    {
LABEL_64:
      (*(**(this + 13) + 24))(*(this + 13), &v31, 1);
      if (v40 != 1)
      {
        return;
      }

      goto LABEL_65;
    }

LABEL_32:
    (*(**(this + 4) + 16))(v21);
    v13 = HIBYTE(v22);
    if (v22 < 0)
    {
      v13 = v21[1];
    }

    if (v13 >= 7)
    {
      v15 = v21[0];
      if (v22 >= 0)
      {
        v15 = v21;
      }

      v16 = *v15;
      v17 = *(v15 + 3);
      v14 = (v16 == 1650552389 && v17 == 1684368482);
      if (SHIBYTE(v22) < 0)
      {
LABEL_49:
        operator delete(v21[0]);
        if (!v14)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v14 = 0;
      if (SHIBYTE(v22) < 0)
      {
        goto LABEL_49;
      }
    }

    if (!v14)
    {
LABEL_50:
      HIBYTE(v20) = 3;
      {
        goto LABEL_71;
      }

      strcpy(v19, "VP8");
      *v21 = *v19;
      v14 = v21;
      i = 0;
      v26 = 0;
      v23 = &v24;
      v24 = 0;
      v22 = v20;
      if ((v40 & 1) == 0)
      {
        v31 = *v19;
        v21[0] = 0;
        v21[1] = 0;
        v35 = 0;
        v36 = 0;
        v33 = &v34;
        v34 = 0;
        v32 = v20;
        v22 = 0;
        v26 = 0;
        v40 = 1;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v23, v24);
        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31);
      }

      v31 = *v21;
      v32 = v22;
      HIBYTE(v22) = 0;
      LOBYTE(v21[0]) = 0;
      v1 = &v34;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v33, v34);
      v33 = v23;
      v34 = v24;
      v35 = i;
      if (!i)
      {
        goto LABEL_72;
      }

      *(v24 + 16) = &v34;
      v23 = &v24;
      v24 = 0;
      for (i = 0; (v36 & 1) == 0; v33 = v1)
      {
LABEL_58:
        v37 = *__p;
        v38 = v28;
        v36 = v26;
        v39 = v29;
        v26 = 0;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v14 + 3), v24);
        if (SHIBYTE(v22) < 0)
        {
LABEL_61:
          operator delete(v21[0]);
        }

LABEL_62:
        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
          if (v40)
          {
            goto LABEL_64;
          }
        }

        else if (v40)
        {
          goto LABEL_64;
        }

LABEL_71:
        __break(1u);
LABEL_72:
        ;
      }

      operator delete(v37);
      goto LABEL_58;
    }

LABEL_47:
    *(this + 2768) = 1;
    (*(**(this + 13) + 16))(*(this + 13));
    if (v40 != 1)
    {
      return;
    }

LABEL_65:
    if (v36)
    {
      operator delete(v37);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v33, v34);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }
  }
}

webrtc::VideoEncoder::EncoderInfo *webrtc::anonymous namespace::GetEncoderInfoWithBitrateLimitUpdate(webrtc::_anonymous_namespace_ *this, const webrtc::VideoEncoder::EncoderInfo *a2, const webrtc::VideoEncoderConfig *a3, int a4)
{
  v5 = *(a2 + 23);
  v4 = *(a2 + 22);
  if (v4 == v5)
  {
LABEL_4:
    if (a4 && 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 22) - *(a3 + 21)) >> 5) > 1)
    {
      webrtc::VideoEncoder::EncoderInfo::EncoderInfo(this, a2);
      operator new();
    }
  }

  else
  {
    while (!*(v4 + 8))
    {
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }

  return webrtc::VideoEncoder::EncoderInfo::EncoderInfo(this, a2);
}

void webrtc::VideoStreamEncoder::OnEncoderSettingsChanged(webrtc::VideoStreamEncoder *this)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = this + 2760;
  (*(**(this + 61) + 96))(v46);
  webrtc::VideoEncoderConfig::VideoEncoderConfig(&v27, (this + 280));
  memcpy(__dst, this + 1616, sizeof(__dst));
  webrtc::VideoEncoder::EncoderInfo::EncoderInfo(v48, v47);
  v49 = v27;
  v50 = v28;
  v28 = 0uLL;
  v3 = v29;
  v29 = 0;
  v51 = v3;
  v52 = v30;
  v53[0] = v31;
  v53[1] = v32;
  if (v32)
  {
    *(v31 + 16) = v53;
    v30 = &v31;
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v52 = v53;
  }

  v53[2] = v33;
  v54 = v34;
  v55 = v35;
  v56 = v36;
  v4 = v37;
  v33 = 0;
  v37 = 0uLL;
  v57 = v4;
  v58 = v38;
  v38 = 0uLL;
  v60 = v40;
  v59 = v39;
  v62 = v42;
  v5 = v41;
  v41 = 0;
  v63 = v43;
  v61 = v5;
  v64 = v44;
  v43 = 0uLL;
  v44 = 0;
  v65 = v45;
  memcpy(v66, __dst, sizeof(v66));
  webrtc::VideoEncoderConfig::~VideoEncoderConfig(&v27);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v47);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v46);
  webrtc::VideoEncoder::EncoderInfo::EncoderInfo(v24, v48);
  webrtc::VideoEncoderConfig::VideoEncoderConfig(v25, &v49);
  memcpy(v26, v66, sizeof(v26));
  webrtc::VideoStreamEncoderResourceManager::SetEncoderSettings(this + 2824, v24);
  webrtc::VideoEncoderConfig::~VideoEncoderConfig(v25);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v24);
  webrtc::VideoEncoder::EncoderInfo::EncoderInfo(&v20, v48);
  webrtc::VideoEncoderConfig::VideoEncoderConfig(v22, &v49);
  memcpy(v23, v66, sizeof(v23));
  pthread_mutex_lock((this + 2664));
  v6 = v21;
  *(this + 688) = v22[0];
  *(this + 689) = v6;
  webrtc::VideoStreamAdapter::GetSingleActiveLayerPixels(v23, v7, v8, v9, v10, v11, v12, v13);
  v2[4] = BYTE4(v14) & 1;
  *v2 = v14 & ((v14 >> 1) >> 31);
  pthread_mutex_unlock((this + 2664));
  webrtc::VideoEncoderConfig::~VideoEncoderConfig(v22);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&v20);
  v15 = v59;
  v16 = v59 == 1;
  v17 = *(this + 349);
  *(v17 + 12) = v59 == 1;
  if (v16 && *(v17 + 8) == 3)
  {
    v18 = 2;
  }

  else
  {
    v18 = *(v17 + 8);
  }

  if (v18 != *(v17 + 16))
  {
    *(v17 + 16) = v18;
    webrtc::VideoStreamAdapter::SetDegradationPreference(*(v17 + 24), v18);
  }

  if (v15 == 1)
  {
    (*(**(this + 34) + 48))(*(this + 34), *(this + 1648), 1);
  }

  webrtc::VideoEncoderConfig::~VideoEncoderConfig(&v49);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v48);
}

void webrtc::VideoStreamEncoder::SetEncoderRates(uint64_t a1, uint64_t a2)
{
  v143[28] = *MEMORY[0x277D85DE8];
  if (*(a1 + 1008) != 1)
  {
    v5 = 1;
    v4 = 1;
    goto LABEL_7;
  }

  if (webrtc::VideoBitrateAllocation::operator==(a2 + 176, a1 + 808) && *(a2 + 344) == *(a1 + 976))
  {
    v4 = *(a2 + 352) != *(a1 + 984);
    if ((*(a1 + 1008) & 1) == 0)
    {
LABEL_5:
      v5 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 1;
    if ((*(a1 + 1008) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (webrtc::VideoBitrateAllocation::operator==(a1 + 640, a2 + 8))
  {
    if ((*(a1 + 1008) & 1) == 0)
    {
LABEL_254:
      __break(1u);
    }

    v5 = *(a1 + 976) != *(a2 + 344);
  }

  else
  {
    v5 = 1;
    if ((*(a1 + 1008) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (webrtc::VideoBitrateAllocation::operator==(a1 + 808, a2 + 176) && *(a1 + 976) == *(a2 + 344) && *(a1 + 984) == *(a2 + 352) && *(a1 + 992) == *(a2 + 360) && *(a1 + 1000) == *(a2 + 368))
  {
LABEL_9:
    if (!*(a1 + 488))
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_7:
  if (*(a1 + 1008) == 1)
  {
    memcpy((a1 + 640), (a2 + 8), 0x170uLL);
    goto LABEL_9;
  }

  *(a1 + 632) = &unk_2882A1B60;
  memcpy((a1 + 640), (a2 + 8), 0x170uLL);
  *(a1 + 1008) = 1;
  if (!*(a1 + 488))
  {
    return;
  }

LABEL_12:
  if (*(a1 + 1648))
  {
    v6 = *(a2 + 16) ? *(a2 + 12) : 0;
    v7 = *(a2 + 24) ? *(a2 + 20) : 0;
    v8 = *(a2 + 32) ? *(a2 + 28) : 0;
    v9 = *(a2 + 40) ? *(a2 + 36) : 0;
    (*(**(a1 + 272) + 72))(*(a1 + 272), 0, v7 + v6 + v8 + v9 != 0);
    if (*(a1 + 1648) != 1)
    {
      v10 = *(a2 + 48) ? *(a2 + 44) : 0;
      v11 = *(a2 + 56) ? *(a2 + 52) : 0;
      v12 = *(a2 + 64) ? *(a2 + 60) : 0;
      v13 = *(a2 + 72) ? *(a2 + 68) : 0;
      (*(**(a1 + 272) + 72))(*(a1 + 272), 1, v11 + v10 + v12 + v13 != 0);
      if (*(a1 + 1648) != 2)
      {
        v14 = *(a2 + 80) ? *(a2 + 76) : 0;
        v15 = *(a2 + 88) ? *(a2 + 84) : 0;
        v16 = *(a2 + 96) ? *(a2 + 92) : 0;
        v17 = *(a2 + 104) ? *(a2 + 100) : 0;
        (*(**(a1 + 272) + 72))(*(a1 + 272), 2, v15 + v14 + v16 + v17 != 0);
        if (*(a1 + 1648) != 3)
        {
          v18 = *(a2 + 112) ? *(a2 + 108) : 0;
          v19 = *(a2 + 120) ? *(a2 + 116) : 0;
          v20 = *(a2 + 128) ? *(a2 + 124) : 0;
          v21 = *(a2 + 136) ? *(a2 + 132) : 0;
          (*(**(a1 + 272) + 72))(*(a1 + 272), 3, v19 + v18 + v20 + v21 != 0);
          if (*(a1 + 1648) != 4)
          {
            v22 = *(a2 + 144) ? *(a2 + 140) : 0;
            v23 = *(a2 + 152) ? *(a2 + 148) : 0;
            v24 = *(a2 + 160) ? *(a2 + 156) : 0;
            v25 = *(a2 + 168) ? *(a2 + 164) : 0;
            (*(**(a1 + 272) + 72))(*(a1 + 272), 4, v23 + v22 + v24 + v25 != 0);
            if (*(a1 + 1648) != 5)
            {
              webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 78, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v26, v27, v28, v29, 5);
              webrtc::VideoStreamEncoder::UpdateBitrateAllocation();
              return;
            }
          }
        }
      }
    }
  }

  if (!*(a2 + 176))
  {
    return;
  }

  if (v4)
  {
    (*(**(a1 + 488) + 64))(*(a1 + 488), a2);
    (*(**(a1 + 248) + 112))(*(a1 + 248), a1 + 1616, a2 + 176);
    webrtc::FrameEncodeMetadataWriter::OnSetRates((a1 + 2136), (a2 + 176), (*(a2 + 344) + 0.5));
    if (*(a1 + 3432) == 1)
    {
      memcpy((a1 + 3080), (a2 + 8), 0x160uLL);
      *(*(a1 + 3048) + 576) = *(a2 + 352);
      if (!v5)
      {
        goto LABEL_207;
      }
    }

    else
    {
      *(a1 + 3072) = &unk_2882A1B60;
      memcpy((a1 + 3080), (a2 + 8), 0x160uLL);
      *(a1 + 3432) = 1;
      *(*(a1 + 3048) + 576) = *(a2 + 352);
      if (!v5)
      {
        goto LABEL_207;
      }
    }

    if (*(a1 + 128) == 2)
    {
      v126 = *(a1 + 80);
      v30 = (*(**(a1 + 488) + 96))(v138);
      v140 = 0;
      v141 = 0;
      v142 = 0;
      if (*(a2 + 8))
      {
        v35 = *(a1 + 1648);
        if (v35 >= 2)
        {
          v36 = 0;
          v37 = 0;
          v141 = 1;
          v38 = v139;
          v39 = (a1 + 1664);
          while (1)
          {
            if (v36 == 160)
            {
              webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 67, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v31, v32, v33, v34, 5);
LABEL_256:
              webrtc::webrtc_checks_impl::UnreachableCodeReached(v30);
            }

            v41 = a2 + v36;
            if (*(a2 + v36 + 16))
            {
              v42 = (a2 + 12 + 32 * v37);
              v43 = *(v41 + 12);
              v44 = a2 + v36;
              if (*(a2 + v36 + 24) == 1)
              {
                goto LABEL_107;
              }
            }

            else
            {
              if ((*(v41 + 24) & 1) == 0 && (*(a2 + v36 + 32) & 1) == 0 && *(a2 + v36 + 40) != 1)
              {
                goto LABEL_103;
              }

              v43 = 0;
              v42 = (a2 + v36 + 12);
              v44 = a2 + v36;
              if (*(a2 + v36 + 24) == 1)
              {
LABEL_107:
                v45 = *(v44 + 20);
                if (*(v44 + 32) != 1)
                {
                  goto LABEL_108;
                }

                goto LABEL_116;
              }
            }

            v45 = 0;
            if (*(v44 + 32) != 1)
            {
LABEL_108:
              v46 = 0;
              v47 = a2 + v36;
              if (*(a2 + v36 + 40) == 1)
              {
                goto LABEL_117;
              }

              goto LABEL_109;
            }

LABEL_116:
            v46 = *(v44 + 28);
            v47 = a2 + v36;
            if (*(a2 + v36 + 40) == 1)
            {
LABEL_117:
              if (!(v45 + v43 + v46 + *(v47 + 36)))
              {
                goto LABEL_103;
              }

              goto LABEL_118;
            }

LABEL_109:
            if (!(v45 + v43 + v46))
            {
              goto LABEL_103;
            }

LABEL_118:
            v48 = v143[0];
            v49 = v143[1];
            if ((v142 & 1) == 0)
            {
              v48 = v143;
              v49 = 4;
            }

            if (v142 >> 1 == v49)
            {
              absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::EmplaceBackSlow<>(&v142);
            }

            if (!v48)
            {
              goto LABEL_254;
            }

            v50 = &v48[7 * (v142 >> 1)];
            v50[6] = 0;
            *(v50 + 1) = 0uLL;
            *(v50 + 2) = 0uLL;
            *v50 = 0uLL;
            v51 = v142 + 2;
            v142 = v51;
            if (v51 <= 1)
            {
              goto LABEL_254;
            }

            v52 = v143[0];
            if ((v51 & 1) == 0)
            {
              v52 = v143;
            }

            v53 = &v52[7 * (v51 >> 1)];
            *(v53 - 4) = *(v39 - 3);
            *(v53 - 3) = *(v39 - 2);
            *(v53 - 14) = v37;
            *(v53 - 13) = 0;
            v54 = *v38;
            if ((*v38 & 0xFFFFFFFFFFFFFFFELL) != 2)
            {
              if (*v39 && (*(v41 + 16) & 1) != 0)
              {
                v62 = v38 + 1;
                if (v54 >= 2)
                {
                  v69 = (v38 + 1);
                  if (v54)
                  {
                    v69 = *v62;
                  }

                  v63 = *v69;
                }

                else
                {
                  v63 = 255;
                }

                v30 = (v53 - 6);
                v70 = v53 - 5;
                v71 = *v42;
                *&v127 = v71;
                v72 = *(v53 - 6);
                if (v72)
                {
                  v73 = *(v53 - 5);
                  v74 = *(v53 - 4);
                }

                else
                {
                  v73 = v53 - 5;
                  v74 = 4;
                }

                v75 = v72 >> 1;
                if (v75 == v74)
                {
                  absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::EmplaceBackSlow<webrtc::RenderResolution const&>(v30);
                }

                if (!v73)
                {
                  goto LABEL_254;
                }

                v73[v75] = v71;
                *v30 += 2;
                if (*v39 >= 2u && *(a2 + v36 + 24) == 1)
                {
                  if (*v38 >= 4)
                  {
                    v76 = v38 + 1;
                    if (*v38)
                    {
                      v76 = *v62;
                    }

                    v63 = *(v76 + 1);
                  }

                  v77 = (*(v44 + 20) + v71);
                  *&v127 = v77;
                  if (*v30)
                  {
                    v78 = *(v53 - 5);
                    v79 = *(v53 - 4);
                  }

                  else
                  {
                    v78 = v53 - 5;
                    v79 = 4;
                  }

                  v80 = *v30 >> 1;
                  if (v80 == v79)
                  {
                    absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::EmplaceBackSlow<webrtc::RenderResolution const&>(v30);
                  }

                  if (!v78)
                  {
                    goto LABEL_254;
                  }

                  v78[v80] = v77;
                  *v30 += 2;
                  if (*v39 >= 3u && *(a2 + v36 + 32) == 1)
                  {
                    if (*v38 >= 6)
                    {
                      v81 = v38 + 1;
                      if (*v38)
                      {
                        v81 = *v62;
                      }

                      v63 = *(v81 + 2);
                    }

                    v82 = (*(v44 + 28) + v77);
                    *&v127 = v82;
                    if (*v30)
                    {
                      v83 = *(v53 - 5);
                      v84 = *(v53 - 4);
                    }

                    else
                    {
                      v83 = v53 - 5;
                      v84 = 4;
                    }

                    v85 = *v30 >> 1;
                    if (v85 == v84)
                    {
                      absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::EmplaceBackSlow<webrtc::RenderResolution const&>(v30);
                    }

                    if (!v83)
                    {
                      goto LABEL_254;
                    }

                    v83[v85] = v82;
                    *v30 += 2;
                    if (*v39 >= 4u && *(a2 + v36 + 40) == 1)
                    {
                      if (*v38 >= 8)
                      {
                        if (*v38)
                        {
                          v62 = *v62;
                        }

                        v63 = *(v62 + 3);
                      }

                      v86 = (*(v47 + 36) + v82);
                      *&v127 = v86;
                      if (*v30)
                      {
                        v70 = *(v53 - 5);
                        v87 = *(v53 - 4);
                      }

                      else
                      {
                        v87 = 4;
                      }

                      v88 = *v30 >> 1;
                      if (v88 == v87)
                      {
                        absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::EmplaceBackSlow<webrtc::RenderResolution const&>(v30);
                      }

                      if (!v70)
                      {
                        goto LABEL_254;
                      }

                      v70[v88] = v86;
                      *v30 += 2;
                      if (*v39 > 4u)
                      {
                        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 53, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v31, v32, v33, v34, 4);
                        break;
                      }
                    }
                  }
                }
              }

              else
              {
                v63 = 255;
              }

              goto LABEL_148;
            }

            if (*(v41 + 16) == 1)
            {
              v55 = *v42;
              if (*(v44 + 24) != 1)
              {
                goto LABEL_128;
              }
            }

            else
            {
              v55 = 0;
              if (*(v44 + 24) != 1)
              {
LABEL_128:
                v56 = 0;
                if (*(v44 + 32) != 1)
                {
                  goto LABEL_129;
                }

                goto LABEL_139;
              }
            }

            v56 = *(v44 + 20);
            if (*(v44 + 32) != 1)
            {
LABEL_129:
              v57 = 0;
              if (*(v47 + 40) != 1)
              {
                goto LABEL_130;
              }

              goto LABEL_140;
            }

LABEL_139:
            v57 = *(v44 + 28);
            if (*(v47 + 40) != 1)
            {
LABEL_130:
              v58 = (v56 + v55 + v57);
              *&v127 = v58;
              v59 = *(v53 - 6);
              if ((v59 & 1) == 0)
              {
                goto LABEL_141;
              }

              goto LABEL_131;
            }

LABEL_140:
            v58 = (v56 + v55 + v57 + *(v47 + 36));
            *&v127 = v58;
            v59 = *(v53 - 6);
            if ((v59 & 1) == 0)
            {
LABEL_141:
              v60 = v53 - 5;
              v61 = 4;
              goto LABEL_142;
            }

LABEL_131:
            v60 = *(v53 - 5);
            v61 = *(v53 - 4);
LABEL_142:
            v30 = (v53 - 6);
            v64 = v59 >> 1;
            if (v64 == v61)
            {
              absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::EmplaceBackSlow<webrtc::RenderResolution const&>(v30);
            }

            if (!v60)
            {
              goto LABEL_254;
            }

            v60[v64] = v58;
            *v30 += 2;
            if (*v38 <= 1)
            {
              goto LABEL_254;
            }

            v65 = (v38 + 1);
            if (*v38)
            {
              v65 = *v65;
            }

            v63 = *v65;
LABEL_148:
            v66 = *(v39 - 1);
            v67 = *(a2 + 344) * v63 / 255.0;
            v68 = (v67 < 0.0) | (2 * (v67 > 255.0));
            if (v68 > 1)
            {
              if (v68 != 2)
              {
                goto LABEL_256;
              }

              v40 = 255;
            }

            else if (v68)
            {
              v40 = 0;
            }

            else
            {
              v40 = v67;
            }

            if (v40 >= v66)
            {
              LOBYTE(v40) = v66;
            }

            *(v53 - 4) = v40;
            v35 = *(a1 + 1648);
LABEL_103:
            ++v37;
            v36 += 32;
            v39 += 36;
            v38 += 3;
            if (v37 >= v35)
            {
              goto LABEL_204;
            }
          }
        }

        if (v35 == 1)
        {
          v141 = 1;
          operator new();
        }
      }

LABEL_204:
      (*(*v126 + 48))(v126, &v140);
      if (v142)
      {
        absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(&v142);
      }

      webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v138);
    }
  }

LABEL_207:
  v89 = *(a1 + 128);
  if (!v89 || v89 == 1 && *(a1 + 416) == 1)
  {
    v90 = *(a1 + 80);
    (*(**(a1 + 488) + 96))(v138);
    if (*(a2 + 8))
    {
      v91 = 0;
      v92 = 0;
      LODWORD(v127) = 0;
      BYTE4(v127) = 0;
      BYTE8(v127) = 0;
      BYTE12(v127) = 0;
      LOBYTE(v128) = 0;
      BYTE4(v128) = 0;
      BYTE8(v128) = 0;
      BYTE12(v128) = 0;
      LOBYTE(v129) = 0;
      BYTE4(v129) = 0;
      BYTE8(v129) = 0;
      BYTE12(v129) = 0;
      LOBYTE(v130) = 0;
      BYTE4(v130) = 0;
      BYTE8(v130) = 0;
      BYTE12(v130) = 0;
      LOBYTE(v131) = 0;
      BYTE4(v131) = 0;
      BYTE8(v131) = 0;
      BYTE12(v131) = 0;
      LOBYTE(v132) = 0;
      BYTE4(v132) = 0;
      BYTE8(v132) = 0;
      BYTE12(v132) = 0;
      LOBYTE(v133) = 0;
      BYTE4(v133) = 0;
      BYTE8(v133) = 0;
      BYTE12(v133) = 0;
      LOBYTE(v134) = 0;
      BYTE4(v134) = 0;
      BYTE8(v134) = 0;
      BYTE12(v134) = 0;
      LOBYTE(v135) = 0;
      BYTE4(v135) = 0;
      BYTE8(v135) = 0;
      BYTE12(v135) = 0;
      LOBYTE(v136) = 0;
      BYTE4(v136) = 0;
      BYTE8(v136) = 0;
      v93 = v139;
      BYTE12(v136) = 0;
      LOBYTE(v137) = 0;
      while (1)
      {
        v94 = *v93;
        v93 += 3;
        if ((v94 & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          if (*(a2 + v91 + 16))
          {
            v103 = &v127 + v91;
            v104 = v92;
            if (*(&v127 + v91 + 8) == 1)
            {
              v104 = v92 - *(v103 + 1);
            }

            v105 = *(a2 + v91 + 12);
            v106 = v104 + v105;
            if (v106 <= 0xFFFFFFFFLL)
            {
              *(v103 + 1) = v105;
              v103[8] = 1;
              v92 = v106;
              LODWORD(v127) = v106;
            }
          }

LABEL_225:
          v107 = a2 + v91;
          if (*(a2 + v91 + 24) == 1)
          {
            v108 = &v127 + v91;
            v109 = v92;
            if (*(&v127 + v91 + 16) == 1)
            {
              v109 = v92 - *(v108 + 3);
            }

            v110 = *(v107 + 20);
            v111 = v109 + v110;
            if (v111 <= 0xFFFFFFFFLL)
            {
              *(v108 + 3) = v110;
              v108[16] = 1;
              v92 = v111;
              LODWORD(v127) = v111;
            }
          }

          if (*(v107 + 32) == 1)
          {
            v112 = &v127 + v91;
            v113 = v92;
            if (*(&v128 + v91 + 8) == 1)
            {
              v113 = v92 - *(v112 + 5);
            }

            v114 = *(a2 + v91 + 28);
            v115 = v113 + v114;
            if (v115 <= 0xFFFFFFFFLL)
            {
              *(v112 + 5) = v114;
              v112[24] = 1;
              v92 = v115;
              LODWORD(v127) = v115;
            }
          }

          if (*(a2 + v91 + 40) == 1)
          {
            v116 = &v127 + v91;
            v117 = v92;
            if (*(&v129 + v91) == 1)
            {
              v117 = v92 - *(v116 + 7);
            }

            v118 = *(a2 + v91 + 36);
            if (v117 + v118 <= 0xFFFFFFFFLL)
            {
              *(v116 + 7) = v118;
              v116[32] = 1;
              v92 = (v117 + v118);
              LODWORD(v127) = v117 + v118;
            }
          }

          goto LABEL_212;
        }

        if (*(a2 + v91 + 16))
        {
          v95 = *(a2 + v91 + 12);
          v96 = a2 + v91;
          if (*(a2 + v91 + 24) == 1)
          {
            goto LABEL_216;
          }
        }

        else
        {
          if ((*(a2 + v91 + 24) & 1) == 0 && (*(a2 + v91 + 32) & 1) == 0 && (*(a2 + v91 + 40) & 1) == 0)
          {
            goto LABEL_225;
          }

          v95 = 0;
          v96 = a2 + v91;
          if (*(a2 + v91 + 24) == 1)
          {
LABEL_216:
            v97 = *(v96 + 20);
            if (*(v96 + 32) != 1)
            {
              goto LABEL_217;
            }

            goto LABEL_245;
          }
        }

        v97 = 0;
        if (*(v96 + 32) != 1)
        {
LABEL_217:
          v98 = 0;
          v99 = a2 + v91;
          if (*(a2 + v91 + 40) == 1)
          {
            goto LABEL_246;
          }

          goto LABEL_218;
        }

LABEL_245:
        v98 = *(v96 + 28);
        v99 = a2 + v91;
        if (*(a2 + v91 + 40) == 1)
        {
LABEL_246:
          v100 = *(v99 + 36);
          v101 = &v127 + v91;
          v102 = v92;
          if (*(&v127 + v91 + 8) != 1)
          {
            goto LABEL_248;
          }

LABEL_247:
          v102 = v92 - *(v101 + 1);
          goto LABEL_248;
        }

LABEL_218:
        v100 = 0;
        v101 = &v127 + v91;
        v102 = v92;
        if (*(&v127 + v91 + 8) == 1)
        {
          goto LABEL_247;
        }

LABEL_248:
        v119 = v97 + v95 + v98 + v100;
        v120 = v102 + v119;
        if (v120 <= 0xFFFFFFFFLL)
        {
          *(v101 + 1) = v119;
          v101[8] = 1;
          v92 = v120;
          LODWORD(v127) = v102 + v119;
        }

LABEL_212:
        v91 += 32;
        if (v91 == 160)
        {
          BYTE4(v137) = *(a2 + 172);
          goto LABEL_252;
        }
      }
    }

    v121 = *(a2 + 152);
    v135 = *(a2 + 136);
    v136 = v121;
    v137 = *(a2 + 168);
    v122 = *(a2 + 88);
    v131 = *(a2 + 72);
    v132 = v122;
    v123 = *(a2 + 120);
    v133 = *(a2 + 104);
    v134 = v123;
    v124 = *(a2 + 24);
    v127 = *(a2 + 8);
    v128 = v124;
    v125 = *(a2 + 56);
    v129 = *(a2 + 40);
    v130 = v125;
LABEL_252:
    (*(*v90 + 40))(v90, &v127);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v138);
  }
}

void webrtc::VideoStreamEncoder::UpdateBitrateAllocation(uint64_t a1, uint64_t a2, void *a3)
{
  LODWORD(v57) = 0;
  BYTE4(v57) = 0;
  BYTE8(v57) = 0;
  BYTE12(v57) = 0;
  LOBYTE(v58) = 0;
  BYTE4(v58) = 0;
  BYTE8(v58) = 0;
  BYTE12(v58) = 0;
  LOBYTE(v59) = 0;
  BYTE4(v59) = 0;
  BYTE8(v59) = 0;
  BYTE12(v59) = 0;
  LOBYTE(v60) = 0;
  BYTE4(v60) = 0;
  BYTE8(v60) = 0;
  BYTE12(v60) = 0;
  LOBYTE(v61) = 0;
  BYTE4(v61) = 0;
  BYTE8(v61) = 0;
  BYTE12(v61) = 0;
  LOBYTE(v62) = 0;
  BYTE4(v62) = 0;
  BYTE8(v62) = 0;
  BYTE12(v62) = 0;
  LOBYTE(v63) = 0;
  BYTE4(v63) = 0;
  BYTE8(v63) = 0;
  BYTE12(v63) = 0;
  LOBYTE(v64) = 0;
  BYTE4(v64) = 0;
  BYTE8(v64) = 0;
  BYTE12(v64) = 0;
  LOBYTE(v65) = 0;
  BYTE4(v65) = 0;
  BYTE8(v65) = 0;
  BYTE12(v65) = 0;
  v66[0] = 0;
  v66[4] = 0;
  v66[8] = 0;
  v66[12] = 0;
  v66[16] = 0;
  v66[20] = 0;
  v6 = *(a2 + 504);
  if (v6 && a3[45] >= 1)
  {
    v7 = a3[46];
    v8 = a3[43];
    v44 = a3[45];
    v45 = v7;
    v46 = v8;
    (*(*v6 + 24))(&v47);
    v65 = v55;
    *v66 = *v56;
    *&v66[13] = *&v56[13];
    v61 = v51;
    v62 = v52;
    v63 = v53;
    v64 = v54;
    v57 = v47;
    v58 = v48;
    v59 = v49;
    v60 = v50;
  }

  *a1 = &unk_2882A1B60;
  memcpy((a1 + 8), a3 + 1, 0x170uLL);
  v9 = v65;
  *(a1 + 120) = v64;
  v10 = v64;
  v11 = v65;
  *(a1 + 136) = v9;
  v12 = *v66;
  *(a1 + 152) = *v66;
  v13 = v61;
  *(a1 + 56) = v60;
  v14 = v60;
  v15 = v61;
  *(a1 + 72) = v13;
  v16 = v63;
  *(a1 + 88) = v62;
  v17 = v62;
  v18 = v63;
  *(a1 + 104) = v16;
  v19 = v58;
  *(a1 + 8) = v57;
  v20 = v57;
  *(a1 + 24) = v58;
  v21 = v59;
  *(a1 + 40) = v59;
  *(a1 + 304) = v11;
  *(a1 + 320) = v12;
  *(a1 + 240) = v15;
  *(a1 + 256) = v17;
  *(a1 + 272) = v18;
  *(a1 + 288) = v10;
  *(a1 + 176) = v20;
  *(a1 + 192) = v19;
  *(a1 + 165) = *&v66[13];
  *(a1 + 333) = *&v66[13];
  *(a1 + 208) = v21;
  *(a1 + 224) = v14;
  v22 = *(a1 + 176);
  if (*(a1 + 352) > v22)
  {
    v22 = *(a1 + 352);
  }

  *(a1 + 352) = v22;
  v23 = *(a2 + 2104);
  if (v23)
  {
    webrtc::EncoderBitrateAdjuster::AdjustRateAllocation(v23, a1, &v47);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      v41 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc";
      v42 = 13728;
      v43 = &v40;
      webrtc::VideoBitrateAllocation::ToString(&v57, &v38);
      webrtc::VideoBitrateAllocation::ToString(&v47, &__p);
      webrtc::webrtc_logging_impl::Log("\r\t\a\t\n\t\n", v24, v25, v26, v27, v28, v29, v30, v41);
      if (v37 < 0)
      {
        operator delete(__p);
        if ((v39 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v38);
    }

LABEL_10:
    v31 = *v56;
    *(a1 + 304) = v55;
    *(a1 + 320) = v31;
    *(a1 + 333) = *&v56[13];
    v32 = v52;
    *(a1 + 240) = v51;
    *(a1 + 256) = v32;
    v33 = v54;
    *(a1 + 272) = v53;
    *(a1 + 288) = v33;
    v34 = v48;
    *(a1 + 176) = v47;
    *(a1 + 192) = v34;
    v35 = v50;
    *(a1 + 208) = v49;
    *(a1 + 224) = v35;
  }
}

uint64_t webrtc::VideoStreamEncoder::DropDueToSize(webrtc::VideoStreamEncoder *this, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  result = *(this + 61);
  if (result)
  {
    v4 = *(this + 381);
    if (*(v4 + 560) > 3)
    {
      return 0;
    }

    if (*(this + 620) == 1)
    {
      v5 = *(v4 + 564);
      if ((v5 & 0x100000000) == 0)
      {
        return 0;
      }

      if (v5 >= a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = *(v4 + 564);
      }

      if (*(v4 + 572) == 1 && (v7 = *(v4 + 576), v7 >= 1))
      {
        v8 = this;
      }

      else
      {
        v8 = this;
        LODWORD(v7) = *(this + 154);
      }

      (*(*result + 96))(v13);
      if (v16 != v15)
      {
        if (((v16 - v15) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      std::__introsort<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,false>(0, 0, 0, 1, v9);
      webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v14);
      webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v13);
      v11 = v6 > 307200 && v7 < 0x7A120;
      if (v7 <= 0x493DF)
      {
        return v6 > 76800;
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void webrtc::VideoStreamEncoder::EncodeVideoFrame(webrtc::VideoStreamEncoder *this, const webrtc::VideoFrame *a2, uint64_t a3)
{
  v173 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
  }

  if ((*(this + 2768) & 1) == 0 && *(this + 496) == 1)
  {
    v13 = *(this + 61);
    if (v13)
    {
      *(this + 1016) = 0;
      (*(*v13 + 96))(&v156);
      if ((v159 & 0x80u) == 0)
      {
        v14 = v159;
      }

      else
      {
        v14 = v158[1];
      }

      v15 = *(this + 1407);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(this + 174);
      }

      if (v14 != v15 || ((v159 & 0x80u) == 0 ? (v17 = v158) : (v17 = v158[0]), v16 >= 0 ? (v18 = this + 1384) : (v18 = *(this + 173)), memcmp(v17, v18, v14) || v160 != *(this + 1409)))
      {
        (*(**(this + 31) + 40))(*(this + 31), v158, v160);
        v19 = *(this + 263);
        if (v19)
        {
          webrtc::EncoderBitrateAdjuster::Reset(v19);
        }
      }

      if (webrtc::VideoEncoder::EncoderInfo::operator==(this + 1360, &v156))
      {
LABEL_37:
        v34 = *(this + 263);
        if (v34)
        {
          v35 = *(this + 177);
          if (v161 >> 1 != v35 >> 1 || ((v35 & 1) != 0 ? (v36 = *(this + 178)) : (v36 = this + 1424), (v161 & 1) != 0 ? (v37 = v162) : (v37 = &v162), memcmp(v37, v36, v161 >> 1) || (v38 = *(this + 180), v163 >> 1 != v38 >> 1) || ((v38 & 1) != 0 ? (v39 = *(this + 181)) : (v39 = this + 1448), (v163 & 1) != 0 ? (v40 = v164) : (v40 = &v164), memcmp(v40, v39, v163 >> 1) || (v41 = *(this + 183), v165 >> 1 != v41 >> 1) || ((v41 & 1) != 0 ? (v42 = *(this + 184)) : (v42 = this + 1472), (v165 & 1) != 0 ? (v43 = v166) : (v43 = &v166), memcmp(v43, v42, v165 >> 1) || (v44 = *(this + 186), v167 >> 1 != v44 >> 1) || ((v44 & 1) != 0 ? (v45 = *(this + 187)) : (v45 = this + 1496), (v167 & 1) != 0 ? (v46 = v168) : (v46 = &v168), memcmp(v46, v45, v167 >> 1) || (v47 = *(this + 189), v169 >> 1 != v47 >> 1) || ((v47 & 1) != 0 ? (v48 = *(this + 190)) : (v48 = this + 1520), (v169 & 1) != 0 ? (v49 = v170) : (v49 = &v170), memcmp(v49, v48, v169 >> 1)))))))
          {
            webrtc::EncoderBitrateAdjuster::OnEncoderInfo(v34, &v156);
          }
        }

        webrtc::VideoEncoder::EncoderInfo::operator=(this + 1360, &v156);
        v50 = (*(**(this + 5) + 16))(*(this + 5));
        v51 = v50 / 0x3E8uLL;
        if (v50 % 0x3E8uLL > 0x1F3)
        {
          ++v51;
        }

        if (-v50 % 0x3E8uLL <= 0x1F4)
        {
          v52 = 0;
        }

        else
        {
          v52 = -1;
        }

        if (v50 < 0)
        {
          v51 = v52 - -v50 / 0x3E8uLL;
        }

        *(this + 168) = v51;
        *(this + 1352) = 1;
        LOWORD(__p) = *a2;
        v53 = *(a2 + 1);
        v142 = v53;
        if (v53)
        {
          (**v53)(v53);
        }

        v54 = *(a2 + 2);
        v143 = *(a2 + 1);
        v144 = v54;
        *v145 = *(a2 + 3);
        *&v145[12] = *(a2 + 60);
        LOBYTE(v146) = 0;
        v151 = 0;
        if (*(a2 + 144) == 1)
        {
          v147 = *(a2 + 92);
          v148 = *(a2 + 108);
          v149 = *(a2 + 124);
          v150 = *(a2 + 140);
          v146 = *(a2 + 76);
          v151 = 1;
        }

        *v152 = *(a2 + 148);
        *&v152[13] = *(a2 + 161);
        v55 = *(a2 + 23);
        v153 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(v55, 1u, memory_order_relaxed);
        }

        v154 = *(a2 + 12);
        v155 = *(a2 + 26);
        if (*(this + 152) <= 0 && *(this + 153) < 1)
        {
          goto LABEL_98;
        }

        if (v142)
        {
          (**v142)(v142);
        }

        v56 = ((*v142)[4])(v142);
        v57 = v157;
        (*v142)[1](v142);
        if (!v56 && (v57 & 1) != 0)
        {
LABEL_98:
          if (*(this + 1312))
          {
LABEL_99:
            if ((*(this + 326) || *(this + 327)) && v152[28] == 1)
            {
              v58 = (this + 1296);
              v122.__r_.__value_.__r.__words[0] = webrtc::VideoFrame::update_rect(&__p);
              v122.__r_.__value_.__l.__size_ = v59;
              v60 = webrtc::VideoFrame::UpdateRect::Union(this + 162, &v122);
              v122.__r_.__value_.__r.__words[0] = 0;
              v61 = v142;
              if (v142)
              {
                v62 = ((*v142)[5])(v142, v60);
                v61 = v142;
                LODWORD(v122.__r_.__value_.__r.__words[1]) = v62;
                if (v142)
                {
                  v61 = ((*v142)[6])(v142);
                }
              }

              else
              {
                LODWORD(v122.__r_.__value_.__r.__words[1]) = 0;
              }

              HIDWORD(v122.__r_.__value_.__r.__words[1]) = v61;
              webrtc::VideoFrame::UpdateRect::Intersect(this + 324, &v122);
              *&v152[12] = *v58;
              if ((v152[28] & 1) == 0)
              {
                v152[28] = 1;
              }

              *v58 = 0;
              *(this + 163) = 0;
            }

LABEL_152:
            *(this + 1312) = 1;
            webrtc::OveruseFrameDetector::FrameCaptured(*(*(this + 359) + 120), &__p, a3);
            webrtc::FrameEncodeMetadataWriter::OnEncodeStarted((this + 2136), &__p);
            v93 = *(this + 706);
            if (v93)
            {
              v123 = __p;
              v124 = v142;
              if (v142)
              {
                (**v142)(v142);
              }

              v125 = v143;
              v126 = v144;
              *v127 = *v145;
              *&v127[12] = *&v145[12];
              LOBYTE(v128) = 0;
              v133 = 0;
              if (v151 == 1)
              {
                v129 = v147;
                v130 = v148;
                v131 = v149;
                v132 = v150;
                v128 = v146;
                v133 = 1;
              }

              *v134 = *v152;
              *&v134[13] = *&v152[13];
              v135 = v153;
              if (v153)
              {
                atomic_fetch_add_explicit(v153, 1u, memory_order_relaxed);
              }

              v136 = v154;
              v137 = v155;
              webrtc::FrameInstrumentationGenerator::OnCapturedFrame(v93, &v123);
              v94 = v135;
              if (v135 && atomic_fetch_add(v135, 0xFFFFFFFF) == 1)
              {
                v95 = *(v94 + 1);
                if (v95)
                {
                  v96 = *(v94 + 2);
                  v97 = *(v94 + 1);
                  if (v96 != v95)
                  {
                    do
                    {
                      v98 = *(v96 - 96);
                      if (v98)
                      {
                        *(v96 - 88) = v98;
                        operator delete(v98);
                      }

                      v96 -= 104;
                    }

                    while (v96 != v95);
                    v97 = *(v94 + 1);
                  }

                  *(v94 + 2) = v95;
                  operator delete(v97);
                }

                MEMORY[0x2743DA540](v94, 0x1020C40E72D6CFBLL);
              }

              if (v124)
              {
                (*v124)[1](v124);
              }
            }

            v107 = (*(**(this + 61) + 56))(*(this + 61), &__p, this + 2112);
            *(this + 1017) = 1;
            if (v107 < 0)
            {
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
              {
                webrtc::SdpVideoFormat::ToString((this + 288), &v122);
                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v110, v111, v112, v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
                if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v122.__r_.__value_.__l.__data_);
                }
              }

              webrtc::VideoStreamEncoder::RequestEncoderSwitch(this);
              v106 = v153;
              if (!v153)
              {
                goto LABEL_194;
              }

              goto LABEL_184;
            }

            v108 = *(this + 264);
            v109 = *(this + 265);
            if (v108 != v109)
            {
              memset_pattern16(v108, &unk_273B92CD0, v109 - v108);
            }

            goto LABEL_178;
          }

LABEL_150:
          if (v152[28] == 1)
          {
            v152[28] = 0;
          }

          goto LABEL_152;
        }

        v63 = *(a2 + 1);
        if (v63)
        {
          v64 = (*(*v63 + 40))(v63);
          v65 = *(a2 + 1);
          v66 = (v64 - *(this + 152));
          if (v65)
          {
            v67 = (*(*v65 + 48))(v65);
            v68 = *(a2 + 1);
            v69 = (this + 612);
            v70 = (v67 - *(this + 153));
            if (v68)
            {
              v71 = (*(*v68 + 40))(v68);
              v72 = *(a2 + 1);
              if (v72)
              {
                v73 = (*(*v72 + 48))(v72) << 32;
                goto LABEL_119;
              }
            }

            else
            {
              v71 = 0;
            }

            v73 = 0;
LABEL_119:
            v74 = v73 | v71;
            if (*(a2 + 176))
            {
              v75 = *(a2 + 21);
            }

            else
            {
              v75 = v74;
            }

            if (*(a2 + 176))
            {
              v76 = *(a2 + 20);
            }

            else
            {
              v76 = 0;
            }

            v122.__r_.__value_.__r.__words[0] = v76;
            v122.__r_.__value_.__l.__size_ = v75;
            v77 = *(this + 152);
            if (v77 >= 4)
            {
              v79 = *(a2 + 1);
            }

            else
            {
              v78 = *v69;
              v79 = *(a2 + 1);
              if (v78 <= 3)
              {
                v80 = (v77 + 1) / 2;
                v81 = (v78 + 1) / 2;
                v82 = v80 & 1;
                if (v80 < 0)
                {
                  v82 = -v82;
                }

                v83 = (v80 - v82);
                v84 = v81 & 1;
                if (v81 < 0)
                {
                  v84 = -v84;
                }

                v85 = (v81 - v84);
                if (v79)
                {
                  (**v79)(v79);
                }

                (*(*v79 + 72))(&v138, v79, v83, v85, v66, v70, v66, v70);
                v121 = v70;
                v86 = v83;
                v87 = v138;
                v138 = 0;
                (*(*v79 + 8))(v79);
                LODWORD(v122.__r_.__value_.__l.__data_) = v76 - v86;
                HIDWORD(v122.__r_.__value_.__r.__words[0]) = HIDWORD(v76) - v85;
                v138 = 0;
                v139 = v66;
                v140 = v121;
                webrtc::VideoFrame::UpdateRect::Intersect(&v122, &v138);
                goto LABEL_139;
              }
            }

            if (v79)
            {
              (**v79)(v79);
            }

            v88 = (*(*v79 + 40))(v79);
            v89 = (*(*v79 + 48))(v79);
            (*(*v79 + 72))(&v138, v79, 0, 0, v88, v89, v66, v70);
            v87 = v138;
            v138 = 0;
            (*(*v79 + 8))(v79);
            if (v75)
            {
              v122.__r_.__value_.__r.__words[0] = 0;
              v122.__r_.__value_.__l.__size_ = __PAIR64__(v70, v66);
            }

LABEL_139:
            if (!v87)
            {
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log("\r\t", v99, v100, v101, v102, v103, v104, v105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
                v106 = v153;
                if (!v153)
                {
LABEL_194:
                  if (v142)
                  {
                    (*v142)[1](v142);
                  }

                  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&v156);
                  return;
                }

LABEL_184:
                if (atomic_fetch_add(v106, 0xFFFFFFFF) == 1)
                {
                  v117 = *(v106 + 1);
                  if (v117)
                  {
                    v118 = *(v106 + 2);
                    v119 = *(v106 + 1);
                    if (v118 != v117)
                    {
                      do
                      {
                        v120 = *(v118 - 96);
                        if (v120)
                        {
                          *(v118 - 88) = v120;
                          operator delete(v120);
                        }

                        v118 -= 104;
                      }

                      while (v118 != v117);
                      v119 = *(v106 + 1);
                    }

                    *(v106 + 2) = v117;
                    operator delete(v119);
                  }

                  MEMORY[0x2743DA540](v106, 0x1020C40E72D6CFBLL);
                }

                goto LABEL_194;
              }

LABEL_178:
              v106 = v153;
              if (!v153)
              {
                goto LABEL_194;
              }

              goto LABEL_184;
            }

            (**v87)(v87);
            if (v142)
            {
              (*v142)[1](v142);
            }

            v142 = v87;
            *&v152[12] = *&v122.__r_.__value_.__l.__data_;
            if ((v152[28] & 1) == 0)
            {
              v152[28] = 1;
            }

            v90 = *(a2 + 5);
            *(&v143 + 1) = *(a2 + 3);
            *(&v144 + 1) = v90;
            v145[0] = *(a2 + 48);
            if (*(this + 326) || *(this + 327))
            {
              v91 = ((*v87)[5])(v87);
              v92 = v142;
              if (v142)
              {
                v92 = ((*v142)[6])(v142);
              }

              *(this + 162) = 0;
              *(this + 326) = v91;
              *(this + 327) = v92;
              *(this + 1312) = 0;
            }

            (*v87)[1](v87);
            if (*(this + 1312))
            {
              goto LABEL_99;
            }

            goto LABEL_150;
          }
        }

        else
        {
          v66 = -*(this + 152);
        }

        v71 = 0;
        v73 = 0;
        v69 = (this + 612);
        v70 = -*(this + 153);
        goto LABEL_119;
      }

      webrtc::VideoStreamEncoder::OnEncoderSettingsChanged(this);
      webrtc::VideoStreamEncoderResourceManager::ConfigureEncodeUsageResource((this + 2824), v20, v21, v22, v23, v24, v25, v26);
      webrtc::VideoStreamEncoderResourceManager::ConfigureQualityScaler((this + 2824), &v156);
      if ((*(this + 736) & 0xFFFFFFFD) == 1)
      {
        if ((*(this + 4288) & 1) == 0)
        {
          v28 = 0;
LABEL_32:
          webrtc::VideoStreamEncoderResourceManager::UpdateBandwidthQualityScalerSettings(this + 353, v28 & 1);
          v29 = *(this + 736);
          v30 = v29 & 0xFFFFFFFD;
          v31 = v29 & 0xFFFFFFFE;
          if (*(*(this + 360) + 120) || *(*(this + 362) + 120))
          {
            v32 = (v30 == 1) | ((v31 == 2) << 8);
            v33 = v32;
          }

          else
          {
            v33 = 0;
            v32 = (v30 == 1) | ((v31 == 2) << 8);
          }

          (*(**(this + 367) + 80))(*(this + 367), v32, v33);
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::VideoEncoder::EncoderInfo::ToString(&v156);
          }

          goto LABEL_37;
        }

        if (*(this + 3897) == 1)
        {
          v27 = v172 & (v171 ^ 1);
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
        if ((*(this + 4288) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v28 = v27;
      goto LABEL_32;
    }
  }
}

uint64_t webrtc::VideoFrame::update_rect(webrtc::VideoFrame *this)
{
  v6 = 0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 40))(v2);
    v3 = *(this + 1);
    if (v3)
    {
      (*(*v3 + 48))(v3);
    }
  }

  v4 = this + 160;
  if (!*(this + 176))
  {
    v4 = &v6;
  }

  return *v4;
}

void webrtc::VideoStreamEncoder::SendKeyFrame(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[705];
  {
    v11 = v10[1];
    if (v11 != *v10)
    {
      if (((v11 - *v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    operator new();
  }

  v12 = a1[34];
  if (v12)
  {
    v13 = v10;
    (*(*v12 + 88))(v12);
    v10 = v13;
  }

  if (a1[61])
  {
    v14 = *v10;
    v15 = v10[1];
    if (*v10 == v15)
    {
      v32 = a1[264];
      v33 = a1[265] - v32;
      if (v33 >= 1)
      {

        memset_pattern16(v32, &unk_273BA4650, v33);
      }
    }

    else
    {
      v16 = 0;
      v17 = (v15 - v14) >> 2;
      v18 = a1[264];
      v19 = (a1[265] - v18) >> 2;
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v20 = v17 - 1;
      if (v17 - 1 >= v19)
      {
        v20 = (a1[265] - v18) >> 2;
      }

      if (v20 >= 8 && (v18 - v14) >= 0x20)
      {
        v21 = v20 + 1;
        v22 = (v20 + 1) & 7;
        if (!v22)
        {
          v22 = 8;
        }

        v16 = v21 - v22;
        v23 = (v14 + 16);
        v24 = (v18 + 16);
        v25 = v16;
        do
        {
          v26 = *v23;
          *(v24 - 1) = *(v23 - 1);
          *v24 = v26;
          v23 += 2;
          v24 += 2;
          v25 -= 8;
        }

        while (v25);
      }

      v27 = (v14 + 4 * v16);
      v28 = (v18 + 4 * v16);
      v29 = v17 - v16;
      v30 = v19 - v16;
      do
      {
        if (!v30)
        {
          break;
        }

        v31 = *v27++;
        *v28++ = v31;
        --v30;
        --v29;
      }

      while (v29);
    }
  }
}

uint64_t webrtc::VideoStreamEncoder::OnLossNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 5640);
  {
    result = *(a1 + 488);
    if (result)
    {
      v14 = *(*result + 88);

      return v14();
    }
  }

  else
  {
    v16 = *v10;
    v17 = *(v10 + 2);
    v11 = operator new(0x18uLL);
    v12 = v16;
    *v11 = a1;
    v11[1] = v12;
    *(v11 + 4) = v17;
    v19[0] = v11;
    v19[1] = 24;
    v20 = absl::internal_any_invocable::RemoteManagerTrivial;
    v21 = absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::OnLossNotification(webrtc::VideoEncoder::LossNotification const&)::$_0 &&>;
    (*(*v9 + 8))(v9, v19, &v18, &v15);
    return (v20)(1, v19, v19);
  }

  return result;
}

void webrtc::VideoStreamEncoder::AugmentEncodedImage(unsigned __int8 **this, const webrtc::EncodedImage *a2, const webrtc::CodecSpecificInfo *a3, const webrtc::CodecSpecificInfo *a4)
{
  webrtc::EncodedImage::EncodedImage(this, a3);
  v8 = *(a3 + 23);
  v9 = *(a3 + 156);
  if ((v9 & 0x100000000) == 0)
  {
    LODWORD(v9) = 0;
  }

  if ((v8 & 0x100000000) == 0)
  {
    LODWORD(v8) = v9;
  }

  v10 = v8;
  webrtc::FrameEncodeMetadataWriter::FillMetadataAndTimingInfo((a2 + 2136), v8, this);
  webrtc::FrameEncodeMetadataWriter::UpdateBitstream((a2 + 2136), a4, this);
  if (a4)
  {
    LODWORD(a4) = *a4;
  }

  if ((*(this + 9) & 0x80000000) != 0 && *(a2 + 5504) == 1)
  {
    v14 = this[17];
    if (v14)
    {
      v15 = (*(*v14 + 40))(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = webrtc::QpParser::Parse(a2 + 4496, a4, v10, v15, this[18], v11, v12, v13);
    if ((v16 & 0x100000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = -1;
    }

    *(this + 9) = v17;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
  }
}

void webrtc::VideoStreamEncoder::OnEncodedImage(webrtc::VideoStreamEncoder *this, const webrtc::EncodedImage *a2, const webrtc::CodecSpecificInfo *a3)
{
  v6 = *(a2 + 156) & ((*(a2 + 156) << 31) >> 63);
  if (a3)
  {
    v7 = *a3;
    webrtc::VideoStreamEncoder::AugmentEncodedImage(v43, this, a2, a3);
  }

  else
  {
    webrtc::VideoStreamEncoder::AugmentEncodedImage(v43, this, a2, 0);
    v7 = 0;
  }

  v8 = *(this + 705);
  v9 = v44;
  v10 = v47;
  v11 = v43[0];
  v12 = operator new(0x28uLL);
  *v12 = this;
  *(v12 + 2) = v7;
  *(v12 + 12) = v11;
  *(v12 + 3) = v6;
  *(v12 + 8) = v9;
  v12[36] = v10;
  *&v40 = v12;
  *(&v40 + 1) = 40;
  v35 = v40;
  v36 = absl::internal_any_invocable::RemoteManagerTrivial;
  v37 = absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::OnEncodedImage(webrtc::EncodedImage const&,webrtc::CodecSpecificInfo const*)::$_0 &&>;
  v41 = absl::internal_any_invocable::EmptyManager;
  v42 = 0;
  (*(*v8 + 8))(v8, &v35, &v48, &v39);
  v36(1, &v35, &v35);
  (v41)(1, &v40, &v40);
  (*(**(this + 31) + 32))(*(this + 31), v43, a3);
  if (a3)
  {
    v13 = *(this + 706);
    if (v13)
    {
      webrtc::FrameInstrumentationGenerator::OnEncodedImage(v13, v43, &v35);
      if (*(a3 + 2056) == 1)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc", 2264, "!codec_specific_info->frame_instrumentation_data.has_value()", "\t", v14, v15, v16, v17, "CodecSpecificInfo must not have frame_instrumentation_data set.");
        webrtc::VideoStreamEncoder::RunPostEncode(v27, v28, v29, v30, v31, v32, v33, v34);
        return;
      }

      if (v38 == 1)
      {
        operator new();
      }
    }
  }

  v18 = (*(**(this + 10) + 16))(*(this + 10), v43, a3);
  v19 = v46;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v45 = 0;
  v46 = 0;
  v20 = *(a2 + 24);
  if ((v20 & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    if (*a3 == 1)
    {
      LODWORD(v20) = *(a3 + 9);
LABEL_19:
      if (v20 == 255)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      goto LABEL_22;
    }

    if (*a3 == 2)
    {
      LODWORD(v20) = *(a3 + 13);
      goto LABEL_19;
    }
  }

  v21 = 0;
LABEL_22:
  v22 = (*(**(this + 5) + 16))(*(this + 5));
  webrtc::VideoStreamEncoder::RunPostEncode(this, v43, v22, v21, v19, v23, v24, v25);
  if (!v18)
  {
    v26 = atomic_load(this + 521);
    if (v26 >= 1)
    {
      atomic_fetch_add(this + 521, 0xFFFFFFFF);
    }
  }

  webrtc::EncodedImage::~EncodedImage(v43);
}

void webrtc::VideoStreamEncoder::RunPostEncode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v12 = a1[705];
  {
    webrtc::EncodedImage::EncodedImage(v22, v13);
    v22[43] = a3;
    v23 = v9;
    v24 = a5;
    operator new();
  }

  if (*(v13 + 40) != 255)
  {
    v14 = (1000 * (*(v13 + 56) - *(v13 + 48))) & 0xFFFFFF00;
    v15 = (-24 * (*(v13 + 56) - *(v13 + 48)));
    v16 = 0x100000000;
    v17 = v13;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v16 = 0;
  v15 = 0;
  v14 = 0;
  v17 = v13;
  if (a5)
  {
LABEL_6:
    webrtc::FrameDropper::Fill((a1 + 250), a5, *(v13 + 24) != 3);
    v13 = v17;
  }

LABEL_7:
  webrtc::VideoStreamEncoderResourceManager::OnEncodeCompleted(a1 + 353, v13, a3, v16 | v14 | v15, a5);
  v18 = a1[263];
  if (v18)
  {
    v19 = *(v17 + 156);
    if ((v19 & 0x100000000) == 0)
    {
      LODWORD(v19) = 0;
    }

    v20 = *(v17 + 184);
    if ((v20 & 0x100000000) == 0)
    {
      LODWORD(v20) = 0;
    }

    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    webrtc::EncoderBitrateAdjuster::OnEncodedFrame(v18, a5, v21, v9);
  }
}

uint64_t webrtc::VideoStreamEncoder::OnDroppedFrame(uint64_t a1, char a2)
{
  (*(**(a1 + 80) + 24))(*(a1 + 80));
  v4 = *(a1 + 5640);
  v8 = a1;
  v9 = a2;
  v10 = absl::internal_any_invocable::LocalManagerTrivial;
  v11 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::OnDroppedFrame(webrtc::EncodedImageCallback::DropReason)::$_0 &&>;
  (*(*v4 + 8))(v4, &v8, &v7, &v6);
  return (v10)(1, &v8, &v8);
}

uint64_t non-virtual thunk towebrtc::VideoStreamEncoder::OnDroppedFrame(uint64_t a1, char a2)
{
  v4 = a1 - 8;
  (*(**(a1 + 72) + 24))(*(a1 + 72));
  v5 = *(a1 + 5632);
  v9 = v4;
  v10 = a2;
  v11 = absl::internal_any_invocable::LocalManagerTrivial;
  v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::OnDroppedFrame(webrtc::EncodedImageCallback::DropReason)::$_0 &&>;
  (*(*v5 + 8))(v5, &v9, &v8, &v7);
  return (v11)(1, &v9, &v9);
}

void webrtc::VideoStreamEncoder::OnBitrateUpdated(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v11 = a5;
  v149 = *MEMORY[0x277D85DE8];
  v63 = a4;
  v16 = *(a1 + 5640);
  {
    v17 = operator new(0x38uLL);
    *v17 = a1;
    v17[1] = a2;
    v17[2] = a3;
    v17[3] = a4;
    *(v17 + 32) = v11;
    v17[5] = a6;
    *(v17 + 6) = a9;
    v65 = v17;
    v66 = 56;
    v67 = absl::internal_any_invocable::RemoteManagerTrivial;
    v68 = absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::OnBitrateUpdated(webrtc::DataRate,webrtc::DataRate,webrtc::DataRate,unsigned char,long long,double)::$_0 &&>;
    (*(*v16 + 8))(v16, &v65, v62, &v64);
    v67(1, &v65, &v65);
    return;
  }

  if (*(a1 + 1008) == 1)
  {
    v18 = *(a1 + 992) == 0;
    v19 = a2 == 0;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = 1;
    v19 = a2 == 0;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  if (*(a1 + 104))
  {
    v20 = *(a1 + 240);
    if (v20)
    {
      (*(*v20 + 24))(&v65);
      if (v83 == 1)
      {
        (*(**(a1 + 104) + 24))(*(a1 + 104), &v65, 0);
        if (v83)
        {
          if (v72)
          {
            operator delete(__p);
          }

          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v68, v69);
          if (SHIBYTE(v67) < 0)
          {
            operator delete(v65);
          }
        }
      }
    }
  }

LABEL_15:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
  }

  v28 = *(a1 + 488);
  if (v28)
  {
    (*(*v28 + 72))(v28, vcvts_n_f32_u32(v11, 8uLL));
    (*(**(a1 + 488) + 80))(*(a1 + 488), a6);
  }

  if (*(a1 + 512) == -1)
  {
    v29 = 30;
  }

  else
  {
    v29 = *(a1 + 512);
  }

  v30 = *(a1 + 272);
  if (v30)
  {
    v31 = (*(*v30 + 56))(v30);
    if ((v31 & 0x100000000) != 0)
    {
      if (v31)
      {
        v29 = v31;
      }
    }
  }

  v32 = (a2 + 500) / 1000;
  v33 = v32;
  v34 = vcvts_n_f32_s64(v32, 1uLL);
  *(a1 + 2040) = v34;
  v35 = *(a1 + 2044);
  v36 = *(a1 + 2036);
  if (v35 > 0.0 && v35 > v33 && v36 > v34)
  {
    v36 = (v33 / v35) * v36;
    *(a1 + 2036) = v36;
  }

  *(a1 + 2044) = v33;
  v38 = v33 * 3.0;
  if (v36 > v38)
  {
    *(a1 + 2036) = v38;
  }

  *(a1 + 2068) = v29;
  v65 = &unk_2882A1B60;
  LODWORD(v66) = 0;
  BYTE4(v66) = 0;
  LOBYTE(v67) = 0;
  BYTE4(v67) = 0;
  LOBYTE(v68) = 0;
  BYTE4(v68) = 0;
  LOBYTE(v69) = 0;
  BYTE4(v69) = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  LOBYTE(__p) = 0;
  BYTE4(__p) = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = v29;
  v146 = v63;
  v147 = a2;
  v148 = a3;
  webrtc::VideoStreamEncoder::UpdateBitrateAllocation(v62, a1, &v65);
  webrtc::VideoStreamEncoder::SetEncoderRates(a1, v62);
  if (a2)
  {
    if ((*(a1 + 620) & 1) == 0)
    {
      *(a1 + 620) = 1;
    }

    *(a1 + 616) = a2;
    v39 = (a1 + 3060);
    if ((*(a1 + 3064) & 1) == 0)
    {
      *(a1 + 3064) = 1;
    }

    *(a1 + 3060) = a2;
    v40 = *(a1 + 2856);
    v41 = *v39;
    *(v40 + 864) = *v39;
    *(v40 + 868) = BYTE4(v41);
    v42 = *(a1 + 2864);
    v43 = *v39;
    *(v42 + 8) = v43;
    *(v42 + 12) = BYTE4(v43);
  }

  v44 = v19 ^ v18;
  v45 = *(a1 + 3048);
  v46 = (*(**(a1 + 3032) + 16))(*(a1 + 3032));
  if ((v46 & 0x8000000000000000) != 0)
  {
    if (-v46 % 0x3E8uLL <= 0x1F4)
    {
      v48 = 0;
    }

    else
    {
      v48 = -1;
    }

    webrtc::VideoStreamEncoderResourceManager::InitialFrameDropper::SetTargetBitrate(v45, a2, v48 - -v46 / 0x3E8uLL);
    if (!v44)
    {
      return;
    }
  }

  else
  {
    if (v46 % 0x3E8 <= 0x1F3)
    {
      v47 = v46 / 0x3E8;
    }

    else
    {
      v47 = v46 / 0x3E8 + 1;
    }

    webrtc::VideoStreamEncoderResourceManager::InitialFrameDropper::SetTargetBitrate(v45, a2, v47);
    if (!v44)
    {
      return;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
  }

  (*(**(a1 + 248) + 104))(*(a1 + 248), a2 == 0);
  if (a2)
  {
    if (*(a1 + 1280) != 1)
    {
LABEL_59:
      if (*(a1 + 1016) == 1)
      {
        v59 = *(a1 + 5632);
        if (v59)
        {
          atomic_fetch_add_explicit(v59, 1u, memory_order_relaxed);
        }

        operator new();
      }

      return;
    }

    v56 = *(a1 + 1072);
    if (v56)
    {
      v57 = (*(*v56 + 40))(v56);
      v58 = *(a1 + 1072);
      if (v58)
      {
        LODWORD(v58) = (*(*v58 + 48))(v58);
      }

      if (webrtc::VideoStreamEncoder::DropDueToSize(a1, v58 * v57))
      {
LABEL_58:
        if (*(a1 + 1280))
        {
          return;
        }

        goto LABEL_59;
      }
    }

    else if (webrtc::VideoStreamEncoder::DropDueToSize(a1, 0))
    {
      goto LABEL_58;
    }

    v60 = (*(**(a1 + 40) + 16))(*(a1 + 40));
    v61 = *(a1 + 1288);
    if (v60 - v61 <= 999999)
    {
      if ((*(a1 + 1280) & 1) == 0)
      {
        __break(1u);
      }

      webrtc::VideoStreamEncoder::EncodeVideoFrame(a1, (a1 + 1064), v61);
    }

    if (*(a1 + 1280) == 1)
    {
      webrtc::VideoFrame::~VideoFrame((a1 + 1064));
      *(a1 + 1280) = 0;
    }
  }
}

uint64_t webrtc::VideoStreamEncoder::OnVideoSourceRestrictionsUpdated(uint64_t a1, webrtc::VideoSourceRestrictions *a2, uint64_t a3, uint64_t *a4)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_9;
  }

  result = *a4;
  if (*a4)
  {
    (*(*result + 32))(__p);
LABEL_7:
    webrtc::VideoSourceRestrictions::ToString(a2, v7, v8, &v34);
    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SBYTE7(v32) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_26:
      operator delete(__p[0]);
      v17 = a1 + 4096;
      v18 = *(a1 + 272);
      if (!v18)
      {
LABEL_11:
        v19 = (a1 + 5576);
        if (*(v17 + 1528) == 1)
        {
          v20 = *(v17 + 1488) ^ *(a2 + 8);
          if (*(v17 + 1488) & 1) != 0 && (*(a2 + 8))
          {
            v20 = *v19 != *a2;
          }

          v21 = *a2;
          v22 = *(a2 + 2);
          *(a1 + 5592) = *(a2 + 1);
          *(a1 + 5608) = v22;
          *v19 = v21;
          if (!*(a1 + 488))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v20 = *(a2 + 8);
          v23 = *a2;
          v24 = *(a2 + 2);
          *(a1 + 5592) = *(a2 + 1);
          *(a1 + 5608) = v24;
          *v19 = v23;
          *(v17 + 1528) = 1;
          if (!*(a1 + 488))
          {
            goto LABEL_22;
          }
        }

        if (v20)
        {
          v25 = *(a1 + 448);
          v26 = *(a1 + 456);
          if (v25 != v26)
          {
            while (*(v25 + 92) != 1)
            {
              v25 += 96;
              if (v25 == v26)
              {
                goto LABEL_22;
              }
            }

            *(a1 + 516) = 1;
            v27 = *(a1 + 5632);
            if (!v27)
            {
LABEL_24:
              v28 = *(a2 + 1);
              *__p = *a2;
              v32 = v28;
              v33 = *(a2 + 2);
              v29 = operator new(0x38uLL);
              *v29 = a1;
              v30 = v32;
              *(v29 + 8) = *__p;
              *(v29 + 24) = v30;
              *(v29 + 40) = v33;
              operator new();
            }

LABEL_23:
            atomic_fetch_add_explicit(v27, 1u, memory_order_relaxed);
            goto LABEL_24;
          }
        }

LABEL_22:
        v27 = *(a1 + 5632);
        if (!v27)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_10:
      (*(*v18 + 80))(v18, *(a2 + 4), *(a2 + 5));
      goto LABEL_11;
    }

    operator delete(v34.__r_.__value_.__l.__data_);
    if (SBYTE7(v32) < 0)
    {
      goto LABEL_26;
    }

LABEL_9:
    v17 = a1 + 4096;
    v18 = *(a1 + 272);
    if (!v18)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  BYTE7(v32) = 6;
  if (__p > "<null>" || __p + 6 <= "<null>")
  {
    strcpy(__p, "<null>");
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t webrtc::VideoStreamEncoder::CadenceCallback::OnFrame(webrtc::VideoStreamEncoder::CadenceCallback *this, Timestamp a2, char a3, const webrtc::VideoFrame *a4)
{
  v225[46] = *MEMORY[0x277D85DE8];
  v7 = *(this + 1);
  v208 = *a4;
  v8 = *(a4 + 1);
  v209 = v8;
  if (v8)
  {
    (**v8)(v8);
  }

  v9 = *(a4 + 2);
  v210 = *(a4 + 1);
  v211 = v9;
  *v212 = *(a4 + 3);
  *&v212[12] = *(a4 + 60);
  LOBYTE(v213) = 0;
  v218 = 0;
  if (*(a4 + 144) == 1)
  {
    v214 = *(a4 + 92);
    v215 = *(a4 + 108);
    v216 = *(a4 + 124);
    v217 = *(a4 + 140);
    v213 = *(a4 + 76);
    v218 = 1;
  }

  *v219 = *(a4 + 148);
  *&v219[13] = *(a4 + 161);
  v10 = *(a4 + 23);
  v220 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
  }

  v221 = *(a4 + 12);
  v222 = *(a4 + 26);
  if (v211 > a2.var0)
  {
    *&v211 = a2;
  }

  v11 = *(a4 + 3);
  if (v11 <= 0)
  {
    v12 = *(a4 + 4);
    v13 = v12 / 1000;
    v14 = v12 + 999;
    v15 = a2.var0 / 0x3E8;
    if (a2.var0 % 0x3E8 > 0x1F3)
    {
      ++v15;
    }

    if (-a2.var0 % 0x3E8uLL <= 0x1F4)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 - -a2.var0 / 0x3E8uLL;
    if (a2.var0 >= 0)
    {
      v17 = v15;
    }

    if (v14 <= 0x7CE)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    v11 = *(v7 + 1032) + v18;
  }

  LODWORD(v210) = 90 * v11;
  v19 = *(a4 + 5);
  *(&v210 + 1) = v11;
  *(&v211 + 1) = v19;
  v212[0] = *(a4 + 48);
  if (v11 > *(v7 + 1024))
  {
    v20 = *(v7 + 1040);
    if (a2.var0 < 0)
    {
      v36 = -a2.var0 / 0x3E8uLL;
      if (-a2.var0 % 0x3E8uLL <= 0x1F4)
      {
        v37 = 0;
      }

      else
      {
        v37 = -1;
      }

      if ((v37 - (v36 + v20)) > 60000)
      {
        *(v7 + 1040) = v37 - v36;
        v22 = 1;
        *(v7 + 1024) = v11;
        v23 = *(v7 + 248);
        v24 = v209;
        if (!v209)
        {
          goto LABEL_27;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v21 = a2.var0 / 0x3E8;
      if (a2.var0 % 0x3E8 > 0x1F3)
      {
        ++v21;
      }

      if ((v21 - v20) > 60000)
      {
        *(v7 + 1040) = v21;
        v22 = 1;
        *(v7 + 1024) = v11;
        v23 = *(v7 + 248);
        v24 = v209;
        if (!v209)
        {
LABEL_27:
          v25 = 0;
          v26 = 0;
          goto LABEL_40;
        }

LABEL_39:
        v25 = (*(*v24 + 40))(v24);
        v26 = (*(*v24 + 48))(v24);
LABEL_40:
        (*(*v23 + 24))(v23, v25, v26);
        ++*(v7 + 1048);
        if (*(v7 + 2092) == 1)
        {
          v38 = *(v7 + 2096);
          *(v7 + 2096) = v38 + 1;
          v39 = v38 % *(v7 + 2088);
          if ((a3 & 1) != 0 || !v39)
          {
            if (!v39)
            {
              ++*(v7 + 1052);
              if (!v24)
              {
LABEL_45:
                v40 = 0;
LABEL_51:
                v49 = v219[28];
                v50 = *&v219[20];
                if (v219[28])
                {
                  v51 = *&v219[12];
                }

                else
                {
                  v50 = v40;
                  v51 = 0;
                }

                v52 = HIDWORD(v50);
                if (HIDWORD(v50) || v50)
                {
                  if (*(v7 + 1304))
                  {
                    v67 = HIDWORD(v51);
                    v68 = *(v7 + 1296);
                    v69 = v51 + v50;
                    if (v68 + *(v7 + 1304) > v69)
                    {
                      v69 = v68 + *(v7 + 1304);
                    }

                    v70 = *(v7 + 1300);
                    v71 = HIDWORD(v51) + v52;
                    if (v70 + *(v7 + 1308) > v71)
                    {
                      v71 = v70 + *(v7 + 1308);
                    }

                    if (v51 >= v68)
                    {
                      LODWORD(v51) = *(v7 + 1296);
                    }

                    *(v7 + 1296) = v51;
                    if (v67 >= v70)
                    {
                      v72 = v70;
                    }

                    else
                    {
                      v72 = v67;
                    }

                    *(v7 + 1300) = v72;
                    *(v7 + 1304) = v69 - v51;
                    *(v7 + 1308) = v71 - v72;
                    *(v7 + 1312) &= v49;
                  }

                  else
                  {
                    *(v7 + 1296) = v51;
                    *(v7 + 1304) = v50;
                    *(v7 + 1312) &= v49;
                  }
                }

                else
                {
                  *(v7 + 1312) &= v219[28];
                }

                v73 = *(**(v7 + 248) + 48);
                goto LABEL_312;
              }

LABEL_50:
              v48 = (*(*v24 + 40))(v24);
              v40 = v48 | ((*(*v24 + 48))(v24) << 32);
              goto LABEL_51;
            }

LABEL_47:
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log("\r\t", v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
            }

            ++*(v7 + 1056);
            if (!v24)
            {
              goto LABEL_45;
            }

            goto LABEL_50;
          }
        }

        else if (a3)
        {
          goto LABEL_47;
        }

        if (v24)
        {
          v53 = (*(*v24 + 40))(v24);
          v54 = ((*(*v24 + 48))(v24) * v53) | 0x100000000;
        }

        else
        {
          v54 = 0x100000000;
        }

        pthread_mutex_lock((v7 + 2664));
        *(v7 + 2744) = BYTE4(v54);
        *(v7 + 2740) = v54;
        pthread_mutex_unlock((v7 + 2664));
        if (*(v7 + 604) != 1)
        {
          goto LABEL_110;
        }

        if (v24)
        {
          v65 = (*(*v24 + 40))(v24);
          if ((*(v7 + 604) & 1) == 0)
          {
            goto LABEL_340;
          }

          if (v65 != *(v7 + 592))
          {
            goto LABEL_103;
          }

          v66 = (*(*v24 + 48))(v24);
          if ((*(v7 + 604) & 1) == 0)
          {
            goto LABEL_340;
          }

          if (v66 != *(v7 + 596))
          {
            goto LABEL_103;
          }

          (**v24)(v24);
        }

        else
        {
          if (*(v7 + 592))
          {
            goto LABEL_110;
          }

          if (*(v7 + 596))
          {
            goto LABEL_108;
          }
        }

        v74 = (*(*v24 + 32))(v24);
        (*(*v24 + 8))(v24);
        if ((*(v7 + 604) & 1) == 0)
        {
          goto LABEL_340;
        }

        if (*(v7 + 600) == (v74 == 0))
        {
          goto LABEL_135;
        }

LABEL_103:
        v75 = (*(*v24 + 40))(v24);
        if ((*(v7 + 604) & 1) == 0)
        {
          goto LABEL_340;
        }

        if (v75 != *(v7 + 592))
        {
          goto LABEL_110;
        }

        if (v24)
        {
          v76 = (*(*v24 + 48))(v24);
          if ((*(v7 + 604) & 1) == 0)
          {
LABEL_340:
            __break(1u);
          }

LABEL_109:
          if (v76 == *(v7 + 596))
          {
LABEL_122:
            *(v7 + 516) = 1;
            if (v24 && (LODWORD(v24) = (*(*v24 + 40))(v24), v209))
            {
              v80 = (*(*v209 + 48))(v209);
              v81 = v209;
              (**v209)(v209);
            }

            else
            {
              v80 = 0;
              v81 = 0;
            }

            v82 = (*(*v81 + 32))(v81);
            (*(*v81 + 8))(v81);
            if ((*(v7 + 604) & 1) == 0)
            {
              *(v7 + 604) = 1;
            }

            *(v7 + 592) = v24;
            *(v7 + 596) = v80;
            *(v7 + 600) = v82 == 0;
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              if ((*(v7 + 604) & 1) == 0)
              {
                goto LABEL_340;
              }

              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v83, v84, v85, v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
            }

            v90 = v209;
            if (v209)
            {
              v91 = (*(*v209 + 40))(v209);
              v90 = (*(*v209 + 48))(v209);
            }

            else
            {
              v91 = 0;
            }

            *(v7 + 1296) = 0;
            *(v7 + 1304) = v91;
            *(v7 + 1308) = v90;
LABEL_135:
            if (*(v7 + 512) == -1)
            {
              v92 = 30;
            }

            else
            {
              v92 = *(v7 + 512);
            }

            v93 = *(v7 + 272);
            if (v93)
            {
              v94 = (*(*v93 + 56))(v93);
              if ((v94 & 0x100000000) != 0)
              {
                if (v94)
                {
                  v92 = v94;
                }
              }
            }

            v95 = (*(**(v7 + 40) + 16))(*(v7 + 40));
            if ((v95 & 0x8000000000000000) != 0)
            {
              if (-v95 % 0x3E8uLL <= 0x1F4)
              {
                v101 = 0;
              }

              else
              {
                v101 = -1;
              }

              v98 = v101 - -v95 / 0x3E8uLL;
              if (*(v7 + 516) == 1)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v95 % 0x3E8 <= 0x1F3)
              {
                v98 = v95 / 0x3E8;
              }

              else
              {
                v98 = v95 / 0x3E8 + 1;
              }

              if (*(v7 + 516) == 1)
              {
LABEL_147:
                webrtc::VideoStreamEncoder::ReconfigureEncoder(v7, v96, v97);
                v99 = (v7 + 1328);
                v100 = (v7 + 1336);
                goto LABEL_156;
              }
            }

            v99 = (v7 + 1328);
            if (*(v7 + 1336) == 1 && (v98 - *v99) < 1000)
            {
              if (*(v7 + 1280) != 1)
              {
LABEL_157:
                v102 = v209;
                if (v209)
                {
                  goto LABEL_158;
                }

                goto LABEL_205;
              }

LABEL_169:
              v116 = *(v7 + 1072);
              if (v116)
              {
                v117 = (*(*v116 + 40))(v116);
                v118 = *(v7 + 1072);
                if (v118)
                {
                  v119 = (*(*v118 + 48))(v118) << 32;
                  goto LABEL_177;
                }
              }

              else
              {
                v117 = 0;
              }

              v119 = 0;
LABEL_177:
              v121 = *(v7 + 1240);
              v122 = *(v7 + 1232);
              v123 = v119 | v117;
              if (!v121)
              {
                v122 = v123;
              }

              v124 = *(v7 + 1224);
              if (!*(v7 + 1240))
              {
                v124 = 0;
              }

              v125 = HIDWORD(v122);
              if (HIDWORD(v122) || v122)
              {
                if (*(v7 + 1304))
                {
                  v131 = HIDWORD(v124);
                  v132 = *(v7 + 1296);
                  v133 = v124 + v122;
                  if (v132 + *(v7 + 1304) > v133)
                  {
                    v133 = v132 + *(v7 + 1304);
                  }

                  v134 = *(v7 + 1300);
                  v135 = HIDWORD(v124) + v125;
                  if (v134 + *(v7 + 1308) > v135)
                  {
                    v135 = v134 + *(v7 + 1308);
                  }

                  if (v124 >= v132)
                  {
                    LODWORD(v124) = *(v7 + 1296);
                  }

                  *(v7 + 1296) = v124;
                  if (v131 >= v134)
                  {
                    v136 = v134;
                  }

                  else
                  {
                    v136 = v131;
                  }

                  *(v7 + 1300) = v136;
                  *(v7 + 1304) = v133 - v124;
                  *(v7 + 1308) = v135 - v136;
                }

                else
                {
                  *(v7 + 1296) = v124;
                  *(v7 + 1304) = v122;
                }
              }

              *(v7 + 1312) &= v121;
              (*(**(v7 + 248) + 48))(*(v7 + 248), 2);
              v102 = v209;
              if (v209)
              {
LABEL_158:
                v103 = (*(*v102 + 40))(v102);
                v104 = (*(*v209 + 48))(v209);
                if (webrtc::VideoStreamEncoder::DropDueToSize(v7, v104 * v103))
                {
                  goto LABEL_159;
                }

                goto LABEL_206;
              }

LABEL_205:
              if (webrtc::VideoStreamEncoder::DropDueToSize(v7, 0))
              {
LABEL_159:
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
                {
                  webrtc::webrtc_logging_impl::Log("\r\t", v105, v106, v107, v108, v109, v110, v111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
                }

                ++*(*(v7 + 3048) + 560);
                webrtc::VideoStreamAdapter::GetAdaptDownResolution(*(v7 + 2928), &v224);
                if (!HIDWORD(v224))
                {
                  v113 = *(v7 + 2928);
                  v114 = *(v7 + 2880);
                  v223[0] = v114;
                  if (v114)
                  {
                    v112 = (**v114)(v114);
                  }

                  v115 = webrtc::VideoStreamAdapter::ApplyAdaptation(v113, &v224, v223, v112);
                  if (v223[0])
                  {
                    (*(*v223[0] + 1))(v223[0], v115);
                  }
                }

                if (v209)
                {
                  (**v209)(v209);
                }

                v120 = (*(*v209 + 32))(v209);
                (*(*v209 + 8))(v209);
                if (v120)
                {
                  if (!*(v7 + 1280))
                  {
                    goto LABEL_223;
                  }

                  goto LABEL_222;
                }

                if (*(v7 + 1280))
                {
                  v126 = *(v7 + 1248);
                  if (v126 && atomic_fetch_add(v126, 0xFFFFFFFF) == 1)
                  {
                    v127 = *(v126 + 8);
                    if (v127)
                    {
                      v128 = *(v126 + 16);
                      v129 = *(v126 + 8);
                      if (v128 != v127)
                      {
                        do
                        {
                          v130 = *(v128 - 96);
                          if (v130)
                          {
                            *(v128 - 88) = v130;
                            operator delete(v130);
                          }

                          v128 -= 104;
                        }

                        while (v128 != v127);
                        v129 = *(v126 + 8);
                      }

                      *(v126 + 16) = v127;
                      operator delete(v129);
                    }

                    MEMORY[0x2743DA540](v126, 0x1020C40E72D6CFBLL);
                  }

                  v154 = *(v7 + 1072);
                  if (v154)
                  {
                    (*(*v154 + 8))(v154);
                  }

                  *(v7 + 1280) = 0;
                }

                v155 = v209;
                if (v209)
                {
LABEL_246:
                  v156 = (*(*v155 + 40))(v155);
                  v157 = (*(*v209 + 48))(v209) << 32;
LABEL_292:
                  v178 = v219[28];
                  v179 = v157 | v156;
                  v180 = *&v219[20];
                  if (v219[28])
                  {
                    v181 = *&v219[12];
                  }

                  else
                  {
                    v180 = v179;
                    v181 = 0;
                  }

                  v182 = HIDWORD(v180);
                  if (HIDWORD(v180))
                  {
                    v183 = 0;
                  }

                  else
                  {
                    v183 = v180 == 0;
                  }

                  if (!v183)
                  {
                    if (*(v7 + 1304))
                    {
                      v184 = HIDWORD(v181);
                      v185 = *(v7 + 1296);
                      v186 = v181 + v180;
                      if (v185 + *(v7 + 1304) > v186)
                      {
                        v186 = v185 + *(v7 + 1304);
                      }

                      v187 = *(v7 + 1300);
                      v188 = HIDWORD(v181) + v182;
                      if (v187 + *(v7 + 1308) > v188)
                      {
                        v188 = v187 + *(v7 + 1308);
                      }

                      if (v181 >= v185)
                      {
                        LODWORD(v181) = *(v7 + 1296);
                      }

                      *(v7 + 1296) = v181;
                      if (v184 >= v187)
                      {
                        v189 = v187;
                      }

                      else
                      {
                        v189 = v184;
                      }

                      *(v7 + 1300) = v189;
                      *(v7 + 1304) = v186 - v181;
                      *(v7 + 1308) = v188 - v189;
                    }

                    else
                    {
                      *(v7 + 1296) = v181;
                      *(v7 + 1304) = v180;
                    }
                  }

                  *(v7 + 1312) &= v178;
                  v73 = *(**(v7 + 248) + 48);
                  goto LABEL_312;
                }

LABEL_291:
                v156 = 0;
                v157 = 0;
                goto LABEL_292;
              }

LABEL_206:
              v137 = *(v7 + 3048);
              *(v137 + 560) = 4;
              *(v137 + 572) = 0;
              if (*(v7 + 1008) != 1 || !*(v7 + 992))
              {
                if (v209)
                {
                  (**v209)(v209);
                }

                v143 = (*(*v209 + 32))(v209);
                (*(*v209 + 8))(v209);
                if (v143)
                {
                  if (!*(v7 + 1280))
                  {
LABEL_223:
                    *(v7 + 1064) = v208;
                    v144 = v209;
                    *(v7 + 1072) = v209;
                    if (v144)
                    {
                      (**v144)(v144);
                    }

                    v145 = v211;
                    *(v7 + 1080) = v210;
                    *(v7 + 1096) = v145;
                    *(v7 + 1112) = *v212;
                    *(v7 + 1124) = *&v212[12];
                    *(v7 + 1140) = 0;
                    *(v7 + 1208) = 0;
                    if (v218 == 1)
                    {
                      v146 = v214;
                      v147 = v216;
                      *(v7 + 1172) = v215;
                      *(v7 + 1188) = v147;
                      *(v7 + 1204) = v217;
                      *(v7 + 1140) = v213;
                      *(v7 + 1156) = v146;
                      *(v7 + 1208) = 1;
                    }

                    *(v7 + 1212) = *v219;
                    *(v7 + 1225) = *&v219[13];
                    v148 = v220;
                    *(v7 + 1248) = v220;
                    if (v148)
                    {
                      atomic_fetch_add_explicit(v148, 1u, memory_order_relaxed);
                    }

                    *(v7 + 1256) = v221;
                    *(v7 + 1272) = v222;
                    *(v7 + 1280) = 1;
                    *(v7 + 1288) = a2;
                    goto LABEL_313;
                  }

                  *(v7 + 1016) = 1;
LABEL_222:
                  webrtc::VideoFrame::operator=(v7 + 1064, &v208);
                  *(v7 + 1288) = a2;
                  goto LABEL_313;
                }

                if (*(v7 + 1280))
                {
                  v149 = *(v7 + 1248);
                  if (v149 && atomic_fetch_add(v149, 0xFFFFFFFF) == 1)
                  {
                    v150 = *(v149 + 8);
                    if (v150)
                    {
                      v151 = *(v149 + 16);
                      v152 = *(v149 + 8);
                      if (v151 != v150)
                      {
                        do
                        {
                          v153 = *(v151 - 96);
                          if (v153)
                          {
                            *(v151 - 88) = v153;
                            operator delete(v153);
                          }

                          v151 -= 104;
                        }

                        while (v151 != v150);
                        v152 = *(v149 + 8);
                      }

                      *(v149 + 16) = v150;
                      operator delete(v152);
                    }

                    MEMORY[0x2743DA540](v149, 0x1020C40E72D6CFBLL);
                  }

                  v177 = *(v7 + 1072);
                  if (v177)
                  {
                    (*(*v177 + 8))(v177);
                  }

                  *(v7 + 1280) = 0;
                }

                *(v7 + 1016) = 1;
                v155 = v209;
                if (v209)
                {
                  goto LABEL_246;
                }

                goto LABEL_291;
              }

              if (*(v7 + 1280) == 1)
              {
                v138 = *(v7 + 1248);
                if (v138 && atomic_fetch_add(v138, 0xFFFFFFFF) == 1)
                {
                  v139 = *(v138 + 8);
                  if (v139)
                  {
                    v140 = *(v138 + 16);
                    v141 = *(v138 + 8);
                    if (v140 != v139)
                    {
                      do
                      {
                        v142 = *(v140 - 96);
                        if (v142)
                        {
                          *(v140 - 88) = v142;
                          operator delete(v142);
                        }

                        v140 -= 104;
                      }

                      while (v140 != v139);
                      v141 = *(v138 + 8);
                    }

                    *(v138 + 16) = v139;
                    operator delete(v141);
                  }

                  MEMORY[0x2743DA540](v138, 0x1020C40E72D6CFBLL);
                }

                v158 = *(v7 + 1072);
                if (v158)
                {
                  (*(*v158 + 8))(v158);
                }

                *(v7 + 1280) = 0;
              }

              webrtc::FrameDropper::Leak(v7 + 2000, v92);
              if (*(v7 + 2080))
              {
                *(v7 + 2073) = 0;
LABEL_283:
                webrtc::VideoStreamEncoder::EncodeVideoFrame(v7, &v208, a2.var0);
                goto LABEL_313;
              }

              v159 = *(v7 + 1408);
              *(v7 + 2073) = v159 ^ 1;
              if (v159)
              {
                goto LABEL_283;
              }

              if (*(v7 + 2048) == 1)
              {
                *(v7 + 2048) = 0;
                *(v7 + 2064) = 0;
              }

              v160 = *(v7 + 2056);
              if (v160 >= 0.5)
              {
                v165 = 1.0 - v160;
                v166 = (((1.0 / v165) + -1.0) + 0.5);
                if (v165 < 0.00001)
                {
                  v166 = 99999;
                }

                if (v166 >= (*(v7 + 2068) * *(v7 + 2076)))
                {
                  v166 = (*(v7 + 2068) * *(v7 + 2076));
                }

                v167 = *(v7 + 2064);
                if (v167 < 0)
                {
                  v167 = -v167;
                }

                v168 = v167 < v166;
                if (v167 < v166)
                {
                  v169 = v167 + 1;
                }

                else
                {
                  v169 = 0;
                }

                *(v7 + 2064) = v169;
                if (!v168)
                {
                  goto LABEL_283;
                }

                if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
                {
                  goto LABEL_331;
                }
              }

              else
              {
                if (v160 <= 0.0 || v160 >= 0.5)
                {
                  goto LABEL_282;
                }

                v161 = (((1.0 / v160) + -1.0) + 0.5);
                if (v160 < 0.00001)
                {
                  v161 = 99999;
                }

                v162 = -v161;
                v163 = *(v7 + 2064);
                v164 = v163 >= 0 ? *(v7 + 2064) : -v163;
                if (-v164 <= v162)
                {
LABEL_282:
                  *(v7 + 2064) = 0;
                  goto LABEL_283;
                }

                if (v163)
                {
                  *(v7 + 2064) = ~v164;
                  goto LABEL_283;
                }

                *(v7 + 2064) = -1;
                if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
                {
LABEL_331:
                  if (v209)
                  {
                    v203 = (*(*v209 + 40))(v209);
                    v204 = (*(*v209 + 48))(v209) << 32;
                  }

                  else
                  {
                    v203 = 0;
                    v204 = 0;
                  }

                  v205 = v204 | v203;
                  if (v219[28])
                  {
                    v205 = *&v219[20];
                    v206 = *&v219[12];
                  }

                  else
                  {
                    v206 = 0;
                  }

                  v224 = v206;
                  v225[0] = v205;
                  v207 = webrtc::VideoFrame::UpdateRect::Union((v7 + 1296), &v224);
                  *(v7 + 1312) &= v219[28];
                  (*(*v7 + 128))(v7, 0, v207);
                  v73 = *(**(v7 + 248) + 48);
LABEL_312:
                  v73();
LABEL_313:
                  if (v22)
                  {
                    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
                    {
                      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v190, v191, v192, v193, v194, v195, v196, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
                    }

                    *(v7 + 1048) = 0;
                    *(v7 + 1056) = 0;
                  }

                  goto LABEL_317;
                }
              }

              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v170, v171, v172, v173, v174, v175, v176, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
              goto LABEL_331;
            }

            v100 = (v7 + 1336);
            if (*(v7 + 1008) == 1)
            {
              v224 = &unk_2882A1B60;
              memcpy(v225, (v7 + 640), 0x170uLL);
              *&v225[42] = v92;
              webrtc::VideoStreamEncoder::UpdateBitrateAllocation(v223, v7, &v224);
              webrtc::VideoStreamEncoder::SetEncoderRates(v7, v223);
            }

LABEL_156:
            *v99 = v98;
            *v100 = 1;
            if (*(v7 + 1280) != 1)
            {
              goto LABEL_157;
            }

            goto LABEL_169;
          }

LABEL_110:
          if (*(v7 + 104))
          {
            v77 = *(v7 + 240);
            if (v77)
            {
              if (v24)
              {
                v78 = (*(*v24 + 40))(v24);
                v79 = (*(*v24 + 48))(v24);
              }

              else
              {
                v78 = 0;
                v79 = 0;
              }

              v223[0] = __PAIR64__(v79, v78);
              (*(*v77 + 32))(&v224, v77, v223);
              if (LOBYTE(v225[11]) == 1)
              {
                (*(**(v7 + 104) + 24))(*(v7 + 104), &v224, 0);
                if (v225[11])
                {
                  if (v225[5])
                  {
                    operator delete(v225[6]);
                  }

                  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v225[2], v225[3]);
                  if (SHIBYTE(v225[1]) < 0)
                  {
                    operator delete(v224);
                  }
                }
              }

              v24 = v209;
            }
          }

          goto LABEL_122;
        }

LABEL_108:
        v76 = 0;
        goto LABEL_109;
      }
    }

    v22 = 0;
    *(v7 + 1024) = v11;
    v23 = *(v7 + 248);
    v24 = v209;
    if (!v209)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
  }

  if (v209)
  {
    v34 = (*(*v209 + 40))(v209);
    v35 = v34 | ((*(*v209 + 48))(v209) << 32);
  }

  else
  {
    v35 = 0;
  }

  v55 = v219[28];
  v56 = *&v219[20];
  if (v219[28])
  {
    v57 = *&v219[12];
  }

  else
  {
    v56 = v35;
    v57 = 0;
  }

  v58 = HIDWORD(v56);
  if (HIDWORD(v56) || v56)
  {
    if (*(v7 + 1304))
    {
      v59 = HIDWORD(v57);
      v60 = *(v7 + 1296);
      v61 = v57 + v56;
      if (v60 + *(v7 + 1304) > v61)
      {
        v61 = v60 + *(v7 + 1304);
      }

      v62 = *(v7 + 1300);
      v63 = HIDWORD(v57) + v58;
      if (v62 + *(v7 + 1308) > v63)
      {
        v63 = v62 + *(v7 + 1308);
      }

      if (v57 >= v60)
      {
        LODWORD(v57) = *(v7 + 1296);
      }

      *(v7 + 1296) = v57;
      if (v59 >= v62)
      {
        v64 = v62;
      }

      else
      {
        v64 = v59;
      }

      *(v7 + 1300) = v64;
      *(v7 + 1304) = v61 - v57;
      *(v7 + 1308) = v63 - v64;
    }

    else
    {
      *(v7 + 1296) = v57;
      *(v7 + 1304) = v56;
    }
  }

  *(v7 + 1312) &= v55;
  (*(**(v7 + 248) + 48))(*(v7 + 248), 1);
LABEL_317:
  v197 = v220;
  if (v220 && atomic_fetch_add(v220, 0xFFFFFFFF) == 1)
  {
    v198 = *(v197 + 1);
    if (v198)
    {
      v199 = *(v197 + 2);
      v200 = *(v197 + 1);
      if (v199 != v198)
      {
        do
        {
          v201 = *(v199 - 96);
          if (v201)
          {
            *(v199 - 88) = v201;
            operator delete(v201);
          }

          v199 -= 104;
        }

        while (v199 != v198);
        v200 = *(v197 + 1);
      }

      *(v197 + 2) = v198;
      operator delete(v200);
    }

    MEMORY[0x2743DA540](v197, 0x1020C40E72D6CFBLL);
  }

  result = v209;
  if (v209)
  {
    return (*(*v209 + 8))(v209);
  }

  return result;
}

void webrtc::VideoStreamEncoder::CadenceCallback::RequestRefreshFrame(webrtc::VideoStreamEncoder::CadenceCallback *this)
{
  v1 = *(*(this + 1) + 5632);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void std::default_delete<webrtc::FrameInstrumentationGenerator>::operator()[abi:sn200100](uint64_t a1)
{
  pthread_mutex_destroy((a1 + 80));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(a1 + 56));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v3 = *(a1 + 8);
    *(a1 + 40) = 0;
    v15 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x12];
    v6 = *v5 + 216 * (v4 % 0x12);
    v7 = v2[(*(a1 + 40) + v4) / 0x12] + 216 * ((*(a1 + 40) + v4) % 0x12);
    if (v6 != v7)
    {
      while (v6)
      {
        v8 = *(v6 + 184);
        if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
        {
          v9 = *(v8 + 8);
          if (v9)
          {
            v10 = *(v8 + 16);
            v11 = *(v8 + 8);
            if (v10 != v9)
            {
              do
              {
                v12 = *(v10 - 96);
                if (v12)
                {
                  *(v10 - 88) = v12;
                  operator delete(v12);
                }

                v10 -= 104;
              }

              while (v10 != v9);
              v11 = *(v8 + 8);
            }

            *(v8 + 16) = v9;
            operator delete(v11);
          }

          MEMORY[0x2743DA540](v8, 0x1020C40E72D6CFBLL);
        }

        v13 = *(v6 + 8);
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        v6 += 216;
        if (v6 - *v5 == 3888)
        {
          v14 = v5[1];
          ++v5;
          v6 = v14;
        }

        if (v6 == v7)
        {
          v2 = *(a1 + 8);
          v3 = *(a1 + 16);
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_40:
      JUMPOUT(0x2743DA540);
    }

LABEL_22:
    *(a1 + 40) = 0;
    v15 = v3 - v2;
    if (v15 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v15 = v3 - v2;
      }

      while (v15 > 2);
    }
  }

  if (v15 == 1)
  {
    v16 = 9;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_30;
    }

    v16 = 18;
  }

  *(a1 + 32) = v16;
LABEL_30:
  if (v2 != v3)
  {
    do
    {
      v17 = *v2++;
      operator delete(v17);
    }

    while (v2 != v3);
    v19 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v18 != v19)
    {
      *(a1 + 16) = v18 + ((v19 - v18 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  goto LABEL_40;
}

void std::vector<webrtc::VideoStream>::__append(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) < a2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 5);
    v5 = v4 + a2;
    if (v4 + a2 <= 0x2AAAAAAAAAAAAAALL)
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
      if (2 * v6 > v5)
      {
        v5 = 2 * v6;
      }

      if (v6 >= 0x155555555555555)
      {
        v7 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v7 = v5;
      }

      if (v7)
      {
        if (v7 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v9 = 96 * v4 + 96 * a2;
      v10 = 96 * v4;
      do
      {
        if (!v10)
        {
          goto LABEL_32;
        }

        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 16) = -1;
        *(v10 + 24) = -1;
        *(v10 + 32) = 0xBFF0000000000000;
        *(v10 + 40) = -1;
        *(v10 + 48) = 0;
        *(v10 + 56) = 0;
        *(v10 + 64) = 0;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 82) = 1;
        *(v10 + 84) = 0;
        *(v10 + 92) = 0;
        v10 += 96;
      }

      while (v10 != v9);
      v11 = *a1;
      v12 = a1[1];
      v13 = 96 * v4 + *a1 - v12;
      if (v12 != *a1)
      {
        v14 = *a1;
        v15 = (96 * v4 + *a1 - v12);
        do
        {
          if (!v15)
          {
            goto LABEL_32;
          }

          v16 = v14[1];
          *v15 = *v14;
          v15[1] = v16;
          v17 = v14[2];
          v18 = v14[3];
          v19 = v14[4];
          *(v15 + 77) = *(v14 + 77);
          v15[3] = v18;
          v15[4] = v19;
          v15[2] = v17;
          v14 += 6;
          v15 += 6;
        }

        while (v14 != v12);
        do
        {
          if (!v11)
          {
            goto LABEL_32;
          }

          v11 += 6;
        }

        while (v11 != v12);
        v11 = *a1;
      }

      *a1 = v13;
      a1[1] = v9;
      a1[2] = 0;
      if (v11)
      {

        operator delete(v11);
      }

      return;
    }

LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v8 = v2 + 96 * a2;
  do
  {
    if (!v2)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = -1;
    *(v2 + 24) = -1;
    *(v2 + 32) = 0xBFF0000000000000;
    *(v2 + 40) = -1;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 82) = 1;
    *(v2 + 84) = 0;
    *(v2 + 92) = 0;
    v2 += 96;
  }

  while (v2 != v8);
  v2 = v8;
LABEL_16:
  a1[1] = v2;
}

void _ZN4absl23inlined_vector_internal7StorageINS_12AnyInvocableIFvN6webrtc8RTCErrorEOEEELm2ENSt3__19allocatorIS6_EEE15DestroyContentsEv(unint64_t *a1)
{
  v3 = a1 + 1;
  v2 = *a1;
  v4 = *a1 & 1;
  v5 = a1 + 1;
  if (*a1)
  {
    v5 = *v3;
  }

  if (v2 >= 2)
  {
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v2 >> 1;
    v7 = &v5[4 * (v2 >> 1) - 4];
    do
    {
      --v6;
      (*(v7 + 16))(1, v7, v7);
      v7 -= 32;
    }

    while (v6);
    v4 = *a1 & 1;
  }

  if (v4)
  {
    v8 = *v3;

    operator delete(v8);
  }
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::Stop(void)::$_1 &&>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 2784))
  {
    v2 = *(v1 + 2776);
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    if (v3 == v4)
    {
      v5 = *(v2 + 160);
    }

    else
    {
      v5 = *(v2 + 160);
      v6 = v5;
      while (*v6 != v1 + 16)
      {
        v6 += 8;
        v5 += 8;
        if (v6 == v4)
        {
          v5 = *(v2 + 168);
          break;
        }
      }
    }

    if (v4 == v5)
    {
      goto LABEL_57;
    }

    v7 = v4 - (v5 + 8);
    if (v4 == v5 + 8)
    {
      v8 = *(v1 + 2776);
    }

    else
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
      v8 = *(v1 + 2776);
      v3 = *(v8 + 160);
    }

    *(v2 + 168) = &v5[v7];
    v9 = *(v8 + 168);
    v10 = v3;
    if (v3 != v9)
    {
      v10 = v3;
      v11 = v3;
      while (*v11 != v1 + 2824)
      {
        v11 += 8;
        v10 += 8;
        if (v11 == v9)
        {
          v10 = *(v8 + 168);
          break;
        }
      }
    }

    if (v9 == v10)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v12 = v10;
    v13 = (v9 - (v10 + 8));
    if (v9 != v10 + 8)
    {
      memmove(v10, v10 + 8, v9 - (v10 + 8));
    }

    *(v8 + 168) = &v13[v12];
    (*(**(v1 + 2784) + 24))(*(v1 + 2784), v1 + 2832);
    webrtc::VideoStreamEncoderResourceManager::StopManagedResources((v1 + 2824));
    v14 = *(v1 + 2800);
    v15 = *(v1 + 2808);
    while (v14 != v15)
    {
      v16 = *(v1 + 2776);
      v18 = *(v16 + 184);
      v17 = *(v16 + 192);
      if (v18 != v17)
      {
        v19 = *(v16 + 184);
        while (*v19 != *v14)
        {
          v19 += 8;
          v18 += 8;
          if (v19 == v17)
          {
            v18 = *(v16 + 192);
            break;
          }
        }
      }

      if (v17 == v18)
      {
        goto LABEL_57;
      }

      v20 = (v17 - (v18 + 8));
      if (v17 != v18 + 8)
      {
        memmove(v18, v18 + 8, v17 - (v18 + 8));
      }

      *(v16 + 192) = &v20[v18];
      ++v14;
    }

    v21 = *(v1 + 4320);
    v22 = *(v1 + 4328);
    if (v21 != v22)
    {
      do
      {
        v23 = *v21;
        v33 = v23;
        if (v23)
        {
          (**v23)(v23);
        }

        webrtc::VideoStreamEncoderResourceManager::RemoveResource((v1 + 2824), &v33);
        if (v33)
        {
          (*v33)[1](v33);
        }

        ++v21;
      }

      while (v21 != v22);
      v22 = *(v1 + 4328);
      v21 = *(v1 + 4320);
    }

    while (v22 != v21)
    {
      v25 = *--v22;
      v24 = v25;
      if (v25)
      {
        (*(*v24 + 8))(v24);
      }
    }

    *(v1 + 4328) = v21;
    *(v1 + 2920) = 0u;
    v26 = *(v1 + 2784);
    *(v1 + 2784) = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  v27 = *(v1 + 504);
  *(v1 + 504) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(v1 + 488);
  if (v28)
  {
    if (*(v1 + 496) == 1)
    {
      (*(*v28 + 48))(v28);
      *(v1 + 496) = 0;
      v29 = *(v1 + 5648);
      *(v1 + 5648) = 0;
      if (v29)
      {
        std::default_delete<webrtc::FrameInstrumentationGenerator>::operator()[abi:sn200100](v29);
      }
    }

    v30 = *(v1 + 488);
    *(v1 + 488) = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  v31 = *(v1 + 272);
  *(v1 + 272) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(v1 + 5648);
  *(v1 + 5648) = 0;
  if (v32)
  {
    std::default_delete<webrtc::FrameInstrumentationGenerator>::operator()[abi:sn200100](v32);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::VideoStreamEncoder::Stop(void)::$_1>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 8) == 1)
      {
        v4 = *(v3 + 16);
        pthread_mutex_lock(v4);
        *(v4 + 113) = 1;
        pthread_cond_broadcast((v4 + 64));
        pthread_mutex_unlock(v4);
        *(v3 + 8) = 0;
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::SetFecControllerOverride(webrtc::FecControllerOverride *)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 1320) = a1[1];
  result = *(v1 + 488);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void (***absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::AddAdaptationResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0 &&>(void (***result)(void)))(void)
{
  v1 = (result + 1);
  v2 = *result;
  v3 = (*result)[541];
  if (v3 >= (*result)[542])
  {
    std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>((v2 + 4320));
  }

  if (v3)
  {
    v4 = *v1;
    *v3 = *v1;
    if (v4)
    {
      (**v4)(v4);
    }

    *(v2 + 4328) = v3 + 1;
    v5 = *v1;
    v6 = v5;
    if (v5)
    {
      (**v5)(v5);
    }

    webrtc::VideoStreamEncoderResourceManager::AddResource(v2 + 2824, &v6);
    result = v6;
    if (v6)
    {
      return ((*v6)[1])(v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::VideoStreamEncoder::AddAdaptationResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::GetAdaptationResources(void)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  (*(**(**a1 + 2784) + 40))(&v10);
  v2 = *(v1 + 8);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = *v2;
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *v2;
    }

    v2[1] = v3;
    operator delete(v5);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  *v2 = v10;
  v2[2] = v11;
  v8 = *(v1 + 16);
  pthread_mutex_lock(v8);
  *(v8 + 113) = 1;
  pthread_cond_broadcast((v8 + 64));
  return pthread_mutex_unlock(v8);
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::SetSource(webrtc::VideoSourceInterface<webrtc::VideoFrame> *,webrtc::DegradationPreference const&)::$_0 &&>(_DWORD *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(*a1 + 2792);
  v3 = a1[2];
  *(v2 + 8) = v3;
  if (((v3 == 3) & *(v2 + 12)) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (v4 != *(v2 + 16))
  {
    *(v2 + 16) = v4;
    webrtc::VideoStreamAdapter::SetDegradationPreference(*(v2 + 24), v4);
    v3 = a1[2];
  }

  *(v1 + 2944) = v3;
  v6 = v3 & 0xFFFFFFFD;
  v7 = v3 & 0xFFFFFFFE;
  if (*(*(v1 + 2880) + 120) || *(*(v1 + 2896) + 120))
  {
    v8 = (v6 == 1) | ((v7 == 2) << 8);
    v9 = v8;
  }

  else
  {
    v9 = 0;
    v8 = (v6 == 1) | ((v7 == 2) << 8);
  }

  (*(**(v1 + 2936) + 80))(*(v1 + 2936), v8, v9);
  v10 = *(v1 + 488);
  if (v10)
  {
    (*(*v10 + 96))(v18);
    webrtc::VideoStreamEncoderResourceManager::ConfigureQualityScaler((v1 + 2824), v18);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v18);
    (*(**(v1 + 488) + 96))(v18);
    if ((*(v1 + 2944) & 0xFFFFFFFD) == 1)
    {
      if ((*(v1 + 4288) & 1) == 0)
      {
        v12 = 0;
        goto LABEL_20;
      }

      if (*(v1 + 3897) == 1)
      {
        v11 = v20 & (v19 ^ 1);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      if ((*(v1 + 4288) & 1) == 0)
      {
LABEL_20:
        webrtc::VideoStreamEncoderResourceManager::UpdateBandwidthQualityScalerSettings((v1 + 2824), v12 & 1);
        v13 = *(v1 + 2944);
        v14 = v13 & 0xFFFFFFFD;
        v15 = v13 & 0xFFFFFFFE;
        if (*(*(v1 + 2880) + 120) || *(*(v1 + 2896) + 120))
        {
          v16 = (v14 == 1) | ((v15 == 2) << 8);
          v17 = v16;
        }

        else
        {
          v17 = 0;
          v16 = (v14 == 1) | ((v15 == 2) << 8);
        }

        (*(**(v1 + 2936) + 80))(*(v1 + 2936), v16, v17);
        webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v18);
        return;
      }
    }

    v12 = v11;
    goto LABEL_20;
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::SetStartBitrate(int)::$_0 &&>(uint64_t *a1)
{
  v2 = *a1;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
  }

  v10 = *(a1 + 2);
  *(v2 + 616) = v10;
  *(v2 + 620) = v10 != 0;
  v11 = *(a1 + 2);
  v12 = v11;
  if (v11)
  {
    v13 = (v2 + 3060);
    if ((*(v2 + 3064) & 1) == 0)
    {
      *(v2 + 3064) = 1;
    }

    *(v2 + 3060) = v11;
    v14 = *(v2 + 2856);
    v15 = *v13;
    *(v14 + 864) = *v13;
    *(v14 + 868) = BYTE4(v15);
    v16 = *(v2 + 2864);
    v17 = *v13;
    *(v16 + 8) = v17;
    *(v16 + 12) = BYTE4(v17);
  }

  v18 = *(v2 + 3048);
  result = (*(**(v2 + 3032) + 16))(*(v2 + 3032));
  *(v18 + 544) = v12;
  *(v18 + 552) = result;
  return result;
}

void _ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZN6webrtc18VideoStreamEncoder16ConfigureEncoderENS2_18VideoEncoderConfigEmNS_12AnyInvocableIFvNS2_8RTCErrorEOEEEE3__0JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_encoder.cc");
  }

  (*(**(v2 + 272) + 48))(*(v2 + 272), 0, *(v1 + 36) == 1);
  v10 = !*(v2 + 488) || !webrtc::operator==((v2 + 288), v1 + 2) || *(v2 + 624) != v1[27];
  *(v2 + 517) = v10;
  webrtc::VideoEncoderConfig::operator=(v2 + 280, (v1 + 1));
  *(v2 + 624) = v1[27];
  *(v2 + 516) = 1;
  if (*(v2 + 604) != 1)
  {
    v18 = 0;
    v21[14] = 0;
    v20 = 0;
    memset(v21, 0, 13);
    v19 = 0;
    webrtc::InvokeSetParametersCallback((v1 + 28), &v18, v22);
    if (v24 < 0)
    {
      operator delete(__p);
      if ((v21[7] & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((v21[7] & 0x80000000) == 0)
    {
      return;
    }

    operator delete(v19);
    return;
  }

  if (v1[31])
  {
    v13 = *(v2 + 520);
    if (v13)
    {
      v14 = *(v2 + 528);
      v15 = *(v2 + 536);
    }

    else
    {
      v14 = v2 + 528;
      v15 = 2;
    }

    v16 = v13 >> 1;
    if (v16 == v15)
    {
      _ZN4absl23inlined_vector_internal7StorageINS_12AnyInvocableIFvN6webrtc8RTCErrorEOEEELm2ENSt3__19allocatorIS6_EEE15EmplaceBackSlowIJS6_EEERS6_DpOT_((v2 + 520));
    }

    if (!v14)
    {
      __break(1u);
      return;
    }

    v17 = v14 + 32 * v16;
    (v1[30])(0, v1 + 28, v17);
    *(v17 + 16) = *(v1 + 15);
    v1[30] = absl::internal_any_invocable::EmptyManager;
    v1[31] = 0;
    *(v2 + 520) += 2;
  }

  webrtc::VideoStreamEncoder::ReconfigureEncoder(v2, v11, v12);
}

uint64_t _ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZN6webrtc18VideoStreamEncoder16ConfigureEncoderENS2_18VideoEncoderConfigEmNS_12AnyInvocableIFvNS2_8RTCErrorEOEEEE3__0EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESC_(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (*(v3 + 240))(1, v3 + 224, v3 + 224);
      webrtc::VideoEncoderConfig::~VideoEncoderConfig((v3 + 8));

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void _ZN4absl23inlined_vector_internal7StorageINS_12AnyInvocableIFvN6webrtc8RTCErrorEOEEELm2ENSt3__19allocatorIS6_EEE15EmplaceBackSlowIJS6_EEERS6_DpOT_(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 58) & 0x1FLL) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

BOOL webrtc::RefCountedObject<webrtc::EncoderStreamFactory>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 18, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::ReconfigureEncoder(void)::$_1 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = (*a1)[3];
  if (v3 == *(v2 + 4444))
  {
    v5 = v1[2];
    v6 = v4 - v5;
    v7 = *(v2 + 4448);
    if (v4 - v5 == *(v2 + 4456) - v7)
    {
      if (v5 == v4)
      {
        return;
      }

      for (i = 0; ; i += 8)
      {
        v9 = v5 + i;
        if (*(v5 + i) != *(v7 + i) || *(v5 + i + 4) != *(v7 + i + 4))
        {
          break;
        }

        if (v9 + 8 == v4)
        {
          return;
        }
      }
    }
  }

  else
  {
    v5 = v1[2];
    v6 = v4 - v5;
  }

  *(v2 + 4444) = v3;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = *(v2 + 4448);
  if (v11)
  {
    *(v2 + 4456) = v11;
    operator delete(v11);
  }

  *(v2 + 4448) = 0;
  *(v2 + 4456) = 0;
  *(v2 + 4464) = 0;
  if (*(v2 + 4352))
  {
    webrtc::VideoSourceSinkController::CurrentSettingsToSinkWants((v2 + 4344), v12);
    (*(**(v2 + 4352) + 16))(*(v2 + 4352), *(v2 + 4344), v12);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::VideoStreamEncoder::ReconfigureEncoder(void)::$_1>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        *(v3 + 24) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::RequestRefreshFrame(void)::$_0 &&>(uint64_t a1)
{
  result = *(*a1 + 4352);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::VideoStreamEncoder::SendKeyFrame(std::vector<webrtc::VideoFrameType> const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        *(v3 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::OnEncodedImage(webrtc::EncodedImage const&,webrtc::CodecSpecificInfo const*)::$_0 &&>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = **a1;
  if ((*(v9 + 5512) & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = v8[3];
  if ((v10 & 0x80000000) == 0)
  {
    v11 = *(v9 + 5516);
    if (v11 > v10)
    {
      v12 = *(v9 + 5520);
      v13 = (*(v9 + 5528) - v12) >> 3;
      if (v11 == v13)
      {
        v14 = v8[3] & 0x7FFFFFFF;
        if (v13 > v14)
        {
          webrtc::QualityConvergenceMonitor::AddSample(*(v12 + 8 * v14), *(v8 + 8), *(v8 + 36), a4, a5, a6, a7, a8);
          v15 = *(v9 + 5520);
          if (v14 < (*(v9 + 5528) - v15) >> 3)
          {
            v16 = *(*(v15 + 8 * v14) + 32);
            result = *(v9 + 272);
            if (!result)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_22:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/quality_convergence_controller.cc", 107, "initialized_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v21);
        return absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoStreamEncoder::OnDroppedFrame(webrtc::EncodedImageCallback::DropReason)::$_0 &&>();
      }
    }
  }

  v16 = 0;
  result = *(v9 + 272);
  if (result)
  {
LABEL_10:
    result = (*(*result + 64))(result, v8[3], v16 & 1);
  }

LABEL_11:
  if (*(v8 + 2) == 2 && *(v9 + 1981) == 1)
  {
    v18 = *(v9 + 1982);
    if (*(v9 + 1982))
    {
      v19 = v9 + 1760;
      do
      {
        v19 += 36;
        --v18;
      }

      while (v18);
    }

    v20 = *(**(v9 + 248) + 120);

    return v20();
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::OnBitrateUpdated(webrtc::DataRate,webrtc::DataRate,webrtc::DataRate,unsigned char,long long,double)::$_0 &&>(double **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 1);
  v4 = v1[6];
  v5 = v4 <= 0.01 || v3 < 1;
  if (v5 || (v6 = *(v2 + 1632), v3 <= (1000 * v6)) || ((v7 = (v4 * v3), LODWORD(v8) = v3 - 1000 * v6, v8 >= v7) ? (v8 = v7) : (v8 = v8), v8 < 1))
  {
    if (*(v2 + 2092) == 1)
    {
      *(v2 + 2092) = 0;
    }

    v10 = v3;
  }

  else
  {
    v9 = v3 / v8;
    if (v9 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v9;
    }

    *(v2 + 2088) = v9;
    *(v2 + 2092) = 1;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v3 - v3 / v9;
    }
  }

  return (*(*v2 + 72))(v2, v10, *(v1 + 2), *(v1 + 3), *(v1 + 32), *(v1 + 5), v1[6]);
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoStreamEncoder::OnVideoSourceRestrictionsUpdated(webrtc::VideoSourceRestrictions,webrtc::VideoAdaptationCounters const&,webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoSourceRestrictions const&)::$_0 &&>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1 + 1);
  v3 = *(*a1 + 5);
  *(v1 + 4376) = *(*a1 + 3);
  *(v1 + 4392) = v3;
  *(v1 + 4360) = v2;
  if (*(v1 + 4352))
  {
    webrtc::VideoSourceSinkController::CurrentSettingsToSinkWants((v1 + 4344), v4);
    (*(**(v1 + 4352) + 16))(*(v1 + 4352), *(v1 + 4344), v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::VideoStreamEncoder::RunPostEncode(webrtc::EncodedImage const&,long long,int,webrtc::DataSize)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      webrtc::EncodedImage::~EncodedImage((v3 + 8));

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t webrtc::VideoStreamEncoderResource::SetResourceListener(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 8));
  *(a1 + 104) = a2;

  return pthread_mutex_unlock((a1 + 8));
}

void webrtc::VideoStreamEncoderResource::Name(webrtc::VideoStreamEncoderResource *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

void webrtc::VideoStreamEncoderResourceManager::VideoStreamEncoderResourceManager(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_2882A3390;
  a1[1] = &unk_2882A33C0;
  a1[2] = a8;
  a1[3] = a7;
  operator new();
}

void webrtc::VideoStreamEncoderResourceManager::~VideoStreamEncoderResourceManager(webrtc::VideoStreamEncoderResourceManager *this)
{
  *this = &unk_2882A3390;
  *(this + 1) = &unk_2882A33C0;
  std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::Resource>,std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::less<webrtc::scoped_refptr<webrtc::Resource>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>>>::destroy(*(this + 185));
  if (*(this + 1464) == 1)
  {
    webrtc::VideoEncoderConfig::~VideoEncoderConfig((this + 872));
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(this + 77);
  }

  v2 = *(this + 28);
  *(this + 28) = 0;
  if (v2)
  {
    v3 = v2[73];
    if (v3)
    {
      operator delete(v3);
    }

    v2[57] = &unk_288293910;
    if (*(v2 + 511) < 0)
    {
      operator delete(v2[61]);
    }

    v4 = v2[58];
    if (v4)
    {
      v2[59] = v4;
      operator delete(v4);
    }

    v2[48] = &unk_288293910;
    if (*(v2 + 439) < 0)
    {
      operator delete(v2[52]);
    }

    v5 = v2[49];
    if (v5)
    {
      v2[50] = v5;
      operator delete(v5);
    }

    v2[38] = &unk_288293910;
    if (*(v2 + 359) < 0)
    {
      operator delete(v2[42]);
    }

    v6 = v2[39];
    if (v6)
    {
      v2[40] = v6;
      operator delete(v6);
    }

    v2[28] = &unk_288293910;
    if (*(v2 + 279) < 0)
    {
      operator delete(v2[32]);
    }

    v7 = v2[29];
    if (v7)
    {
      v2[30] = v7;
      operator delete(v7);
    }

    v2[19] = &unk_288293910;
    if (*(v2 + 207) < 0)
    {
      operator delete(v2[23]);
    }

    v8 = v2[20];
    if (v8)
    {
      v2[21] = v8;
      operator delete(v8);
    }

    v2[10] = &unk_288293910;
    if (*(v2 + 135) < 0)
    {
      operator delete(v2[14]);
    }

    v9 = v2[11];
    if (v9)
    {
      v2[12] = v9;
      operator delete(v9);
    }

    v2[1] = &unk_288293910;
    if (*(v2 + 63) < 0)
    {
      operator delete(v2[5]);
    }

    v10 = v2[2];
    if (v10)
    {
      v2[3] = v10;
      operator delete(v10);
    }

    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x2743DA540](v2, 0x10B2C40B8A090A8);
  }

  v11 = *(this + 23);
  if (v11)
  {
    *(this + 24) = v11;
    operator delete(v11);
  }

  v12 = *(this + 9);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 8);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 6);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 5);
  *(this + 5) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 4);
  *(this + 4) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }
}

{
  webrtc::VideoStreamEncoderResourceManager::~VideoStreamEncoderResourceManager(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::VideoStreamEncoderResourceManager::~VideoStreamEncoderResourceManager(webrtc::VideoStreamEncoderResourceManager *this)
{
  webrtc::VideoStreamEncoderResourceManager::~VideoStreamEncoderResourceManager((this - 8));
}

{
  webrtc::VideoStreamEncoderResourceManager::~VideoStreamEncoderResourceManager((this - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoStreamEncoderResourceManager::ConfigureEncodeUsageResource(webrtc::VideoStreamEncoderResourceManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 6);
  if (*(v9 + 128) == 1)
  {
    v10 = *(v9 + 120);
    result = *(v10 + 80);
    if (result)
    {
      *(result + 4) = 0;
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        result = MEMORY[0x2743DA540]();
      }

      *(v10 + 80) = 0;
    }

    *(v9 + 128) = 0;
  }

  else
  {
    v17 = *(this + 6);
    (**v9)(v9);
    webrtc::VideoStreamEncoderResourceManager::AddResource(this, &v17);
    result = (*(*v9 + 8))(v9);
  }

  v14 = xmmword_273BA0220;
  v15 = 0x200000003;
  LODWORD(v16) = 0;
  if (*(this + 1464))
  {
    if (*(this + 665) == 1)
    {
      *&v14 = 0x96000000C8;
    }

    if (*(this + 216) == 1)
    {
      LODWORD(v16) = 5000;
    }

    webrtc::OveruseFrameDetector::StartCheckForOveruse(v13, *v12, &v14);
  }

  __break(1u);
  return result;
}

uint64_t webrtc::VideoStreamEncoderResourceManager::AddResource(uint64_t a1, void (****a2)(void))
{
  v3 = *(a1 + 1480);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v7 = *(a1 + 96);
  v9 = *a2;
  if (v4)
  {
    (**v4)(v4);
  }

  (*(*v7 + 32))(v7, &v9);
  result = v9;
  if (v9)
  {
    return ((*v9)[1])(v9);
  }

  return result;
}

void webrtc::VideoStreamEncoderResourceManager::MaybeInitializePixelLimitResource(webrtc::VideoStreamEncoderResourceManager *this)
{
  if (*(this + 233) == 1)
  {
    v21 = v1;
    v22 = v2;
    v20 = 0;
    (*(**(this + 2) + 16))(v18);
    if (v19 >= 0)
    {
      v3 = v18;
    }

    else
    {
      v3 = v18[0];
    }

    if (sscanf(v3, "Enabled-%d", &v20) == 1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/adaptation/video_stream_encoder_resource_manager.cc");
      }

      operator new();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\t\n", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/adaptation/video_stream_encoder_resource_manager.cc");
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }
}

uint64_t webrtc::VideoStreamEncoderResourceManager::StopManagedResources(webrtc::VideoStreamEncoderResourceManager *this)
{
  v2 = *(this + 6);
  if (*(v2 + 128) == 1)
  {
    v3 = *(v2 + 120);
    v4 = *(v3 + 80);
    if (v4)
    {
      *(v4 + 4) = 0;
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      *(v3 + 80) = 0;
      v5 = *(this + 6);
      *(v2 + 128) = 0;
      v18 = v5;
      v2 = v5;
      if (!v5)
      {
        webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, &v18);
        goto LABEL_9;
      }
    }

    else
    {
      *(v2 + 128) = 0;
      v18 = v2;
    }

    (**v2)(v2);
    webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, &v18);
    (*(*v2 + 8))(v2);
  }

LABEL_9:
  v6 = *(this + 7);
  v7 = *(v6 + 120);
  if (v7)
  {
    *(v6 + 120) = 0;
    (*(*v7 + 8))(v7);
    v8 = *(this + 7);
    v17 = v8;
    if (!v8)
    {
      webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, &v17);
      v9 = *(this + 8);
      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    (**v8)(v8);
    webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, &v17);
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 8);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_13:
  v16 = v9;
  (**v9)(v9);
  webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, &v16);
  (*(*v9 + 8))(v9);
  v10 = *(this + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 8) = 0;
LABEL_16:
  v11 = *(this + 9);
  result = *(v11 + 120);
  if (result)
  {
    *(v11 + 120) = 0;
    (*(*result + 8))(result);
    v13 = *(this + 9);
    v15 = v13;
    if (v13)
    {
      (**v13)(v13);
      webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, &v15);
      v14 = *(*v13 + 8);

      return v14(v13);
    }

    else
    {
      return webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, &v15);
    }
  }

  return result;
}

uint64_t webrtc::VideoStreamEncoderResourceManager::RemoveResource(void *a1, void *a2)
{
  v4 = a1 + 185;
  v5 = a1[185];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *a2;
  v7 = v4;
  v8 = v5;
  do
  {
    v9 = v8[4];
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v7 = v8;
    }

    v8 = v8[v11];
  }

  while (v8);
  if (v7 == v4 || v6 < v7[4])
  {
LABEL_9:
    v7 = v4;
  }

  v12 = v7[1];
  if (v12)
  {
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v14 = v7;
    do
    {
      v13 = v14[2];
      v15 = *v13 == v14;
      v14 = v13;
    }

    while (!v15);
  }

  if (a1[184] == v7)
  {
    a1[184] = v13;
  }

  --a1[186];
  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v5, v7);
  v16 = v7[4];
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  operator delete(v7);
  v17 = a1[12];
  v18 = *a2;
  v20 = v18;
  if (v18)
  {
    (**v18)(v18);
  }

  (*(*v17 + 48))(v17, &v20);
  result = v20;
  if (v20)
  {
    return ((*v20)[1])(v20);
  }

  return result;
}

void webrtc::VideoStreamEncoderResourceManager::SetEncoderSettings(uint64_t a1, webrtc::VideoEncoder::EncoderInfo *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 1464) & 1) == 0)
  {
    webrtc::VideoEncoder::EncoderInfo::EncoderInfo((a1 + 616), a2);
    webrtc::VideoEncoderConfig::VideoEncoderConfig((a1 + 872), (a2 + 256));
    memcpy((a1 + 1080), a2 + 464, 0x180uLL);
    *(a1 + 1464) = 1;
    v5 = *(a1 + 32);
    LOBYTE(v14[0]) = 0;
    v17 = 0;
    goto LABEL_5;
  }

  webrtc::VideoEncoder::EncoderInfo::operator=(a1 + 616, a2);
  webrtc::VideoEncoderConfig::VideoEncoderConfig(v18, (a2 + 256));
  webrtc::VideoEncoderConfig::operator=(a1 + 872, v18);
  webrtc::VideoEncoderConfig::~VideoEncoderConfig(v18);
  memcpy((a1 + 1080), a2 + 464, 0x17DuLL);
  v4 = *(a1 + 1464);
  v5 = *(a1 + 32);
  LOBYTE(v14[0]) = 0;
  v17 = 0;
  if (v4)
  {
LABEL_5:
    webrtc::VideoEncoder::EncoderInfo::EncoderInfo(v14, (a1 + 616));
    webrtc::VideoEncoderConfig::VideoEncoderConfig(v15, (a1 + 872));
    memcpy(v16, (a1 + 1080), sizeof(v16));
    v17 = 1;
  }

  webrtc::BitrateConstraint::OnEncoderSettingsUpdated(v5, v14);
  if (v17 == 1)
  {
    webrtc::VideoEncoderConfig::~VideoEncoderConfig(v15);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v14);
  }

  if ((*(a1 + 1464) & 1) == 0)
  {
    __break(1u);
  }

  webrtc::VideoStreamEncoderResourceManager::InitialFrameDropper::OnEncoderSettingsUpdated(*(a1 + 224), (a1 + 1080), (a1 + 176));
  if (*(a1 + 1464) == 1)
  {
    LODWORD(v6) = *(a1 + 1100);
    v7 = v6;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 0.0;
  }

  v9 = *(a1 + 168);
  v10 = (v8 & (v7 < *(a1 + 160)) | ((v9 & 1) == 0)) == 0;
  if (!(v8 & (v7 < *(a1 + 160)) | ((v9 & 1) == 0)))
  {
    v7 = *(a1 + 160);
  }

  v11 = *(a1 + 48);
  if (v10)
  {
    v8 = *(a1 + 168);
  }

  v12 = *(v11 + 144);
  if (v12 == 1 && (v8 & 1) != 0)
  {
    if (*(v11 + 136) == v7)
    {
      return;
    }
  }

  else if (v12 == (v8 & 1))
  {
    return;
  }

  *(v11 + 136) = v7;
  *(v11 + 144) = v8;
  if (*(v11 + 128) == 1)
  {
    if (v8)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0x7FFFFFFFLL;
    }

    (*(**(v11 + 120) + 16))(*(v11 + 120), v13);
  }
}

void webrtc::VideoStreamEncoderResourceManager::InitialFrameDropper::OnEncoderSettingsUpdated(webrtc::VideoStreamEncoderResourceManager::InitialFrameDropper *this, const webrtc::VideoCodec *a2, const webrtc::VideoAdaptationCounters *a3)
{
  *(this + 624) = 0;
  __src = 0;
  v37 = 0;
  v38 = 0;
  if (*a2 == 2)
  {
    std::vector<BOOL>::resize(&__src, *(a2 + 366), 0);
    v13 = v37;
    if (v37)
    {
      v14 = 0;
      v15 = __src;
      v16 = a2 + 176;
      do
      {
        while (1)
        {
          v17 = *v16;
          v16 += 36;
          v18 = v14 >> 6;
          v19 = 1 << v14;
          if (v17 == 1)
          {
            break;
          }

          v15[v18] &= ~v19;
          ++v14;
          v13 = v37;
          if (v14 >= v37)
          {
            goto LABEL_13;
          }
        }

        v15[v18] |= v19;
        ++v14;
        v13 = v37;
      }

      while (v14 < v37);
    }
  }

  else
  {
    std::vector<BOOL>::resize(&__src, *(a2 + 32), 0);
    v13 = v37;
    if (v37)
    {
      v20 = 0;
      v21 = __src;
      v22 = a2 + 68;
      do
      {
        while (1)
        {
          v23 = *v22;
          v22 += 36;
          v24 = v20 >> 6;
          v25 = 1 << v20;
          if (v23 == 1)
          {
            break;
          }

          v21[v24] &= ~v25;
          ++v20;
          v13 = v37;
          if (v20 >= v37)
          {
            goto LABEL_13;
          }
        }

        v21[v24] |= v25;
        ++v20;
        v13 = v37;
      }

      while (v20 < v37);
    }
  }

LABEL_13:
  if (*(this + 154) == *(a2 + 2) && *(this + 155) == *(a2 + 3))
  {
    v26 = 0;
    if (v13 != *(this + 74))
    {
      goto LABEL_28;
    }

LABEL_18:
    if (v13 < 1)
    {
      goto LABEL_24;
    }

    v27 = __src;
    v28 = *(this + 73);
    if (v13 < 0x40)
    {
      LOBYTE(v29) = v13;
    }

    else
    {
      do
      {
        if (*v28 != *v27)
        {
          goto LABEL_28;
        }

        v29 = v13 - 64;
        ++v27;
        ++v28;
        v30 = v13 <= 127;
        v13 -= 64;
      }

      while (!v30);
      if (v29 + 64 < 65)
      {
LABEL_24:
        if (!v26)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }
    }

    if ((*v27 ^ *v28) << -v29 == 0 && !v26)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v26 = *a3 == *(this + 152);
  if (v13 == *(this + 74))
  {
    goto LABEL_18;
  }

LABEL_28:
  *(this + 624) = 1;
  if (*(*this + 120))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/adaptation/video_stream_encoder_resource_manager.cc");
    }

    *(this + 140) = 0;
    if (*(this + 568) == 1)
    {
      webrtc::VideoStreamAdapter::GetSingleActiveLayerPixels(a2, v6, v7, v8, v9, v10, v11, v12);
      if ((*(this + 568) & 1) == 0)
      {
        __break(1u);
        goto LABEL_49;
      }

      if ((v31 & 0x100000000) != 0 && *(this + 141) < v31)
      {
        *(this + 572) = 1;
      }
    }
  }

LABEL_36:
  *(this + 76) = *a3;
  if ((this + 584) != &__src)
  {
    v32 = v37;
    if (v37)
    {
      v33 = *(this + 73);
      if (v37 > *(this + 75) << 6)
      {
        if (v33)
        {
          operator delete(v33);
          *(this + 73) = 0;
          *(this + 74) = 0;
          *(this + 75) = 0;
          v32 = v37;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_49:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      memmove(v33, __src, (((v37 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v32 = v37;
    }

    *(this + 74) = v32;
  }

  *(this + 154) = *(a2 + 2);
  *(this + 155) = *(a2 + 3);
  webrtc::VideoStreamAdapter::GetSingleActiveLayerPixels(a2, v6, v7, v8, v9, v10, v11, v12);
  *(this + 141) = v34;
  *(this + 568) = v35;
  if (__src)
  {
    operator delete(__src);
  }
}

void webrtc::VideoStreamEncoderResourceManager::InitialFrameDropper::SetTargetBitrate(uint64_t a1, int64_t a2, uint64_t a3)
{
  if (*(a1 + 544) < 1 || (*(a1 + 536) & 1) != 0 || !*(*a1 + 120))
  {
    return;
  }

  if (*(a1 + 448) == 1 && (*(a1 + 444) & 0x80000000) != 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_20;
  }

  v3 = *(a1 + 444);
  if ((v3 & 0x100000000) == 0)
  {
    return;
  }

  if (*(a1 + 528) == 1 && *(a1 + 520) < 0.01)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

LABEL_20:
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/quality_scaler_settings.cc");
    return;
  }

  if ((*(a1 + 528) & 1) == 0)
  {
    return;
  }

  if ((v3 & 0x80000000) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/quality_scaler_settings.cc");
    }

    goto LABEL_24;
  }

  if (a3 - *(a1 + 552) >= (*(a1 + 444) & 0x7FFFFFFFLL))
  {
    return;
  }

  v13 = COERCE_DOUBLE(webrtc::QualityScalerSettings::InitialBitrateFactor((a1 + 8)));
  if ((v14 & 1) == 0)
  {
LABEL_24:
    v29 = std::__throw_bad_optional_access[abi:sn200100]();
    webrtc::VideoStreamEncoderResourceManager::OnEncodeCompleted(v29, v30, v31, v32, v33);
    return;
  }

  if (llround(v13 * *(a1 + 544)) > a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/adaptation/video_stream_encoder_resource_manager.cc");
    }

    *(a1 + 560) = 0;
    *(a1 + 536) = 1;
  }
}

void webrtc::VideoStreamEncoderResourceManager::OnEncodeCompleted(void *a1, int *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *(a1[6] + 120);
  v10 = (*(**(v9 + 160) + 24))(*(v9 + 160), a2[38], a3, 1000 * *(a2 + 2), a4);
  if ((v10 & 0x100000000) != 0)
  {
    v11 = (v10 / 1000);
    v12 = (*(**(v9 + 160) + 32))(*(v9 + 160));
    *(v9 + 96) = v12;
    *(v9 + 100) = 1;
    (*(**(v9 + 88) + 16))(*(v9 + 88), v11, v12);
  }

  v13 = *(a1[7] + 120);
  if (v13)
  {
    v14 = a2[9];
    if ((v14 & 0x80000000) == 0)
    {
      webrtc::QualityScaler::ReportQp(v13, v14, a3);
    }
  }

  v15 = *(a1[9] + 120);
  if (v15)
  {
    v16 = *a2;
    v17 = a2[1];
    *(v15 + 16) = a3 / 1000;
    *(v15 + 24) = 1;
    if ((*(v15 + 132) & 1) == 0)
    {
      *(v15 + 132) = 1;
    }

    *(v15 + 128) = v17 * v16;

    webrtc::RateStatistics::Update((v15 + 32), a5, a3 / 1000);
  }
}

uint64_t webrtc::VideoStreamEncoderResourceManager::UpdateBandwidthQualityScalerSettings(void *a1, char a2)
{
  v3 = a1[9];
  result = *(v3 + 120);
  if (a2)
  {
    if (!result)
    {
      v7 = v3;
      (**v3)(v3);
      webrtc::VideoStreamEncoderResourceManager::AddResource(a1, &v7);
      (*(*v3 + 8))(v3);

      webrtc::BandwidthQualityScalerResource::StartCheckForOveruse();
    }
  }

  else if (result)
  {
    *(v3 + 120) = 0;
    (*(*result + 8))(result);
    v5 = a1[9];
    v8 = v5;
    if (v5)
    {
      (**v5)(v5);
      webrtc::VideoStreamEncoderResourceManager::RemoveResource(a1, &v8);
      v6 = *(*v5 + 8);

      return v6(v5);
    }

    else
    {
      return webrtc::VideoStreamEncoderResourceManager::RemoveResource(a1, &v8);
    }
  }

  return result;
}