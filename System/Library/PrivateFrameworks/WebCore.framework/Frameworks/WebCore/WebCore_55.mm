uint64_t webrtc::RtpVideoStreamReceiver2::DeliverRtcp(webrtc::RtpVideoStreamReceiver2 *this, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(this + 480);
  if (v3 == 1)
  {
    if (!a3)
    {
      a2 = 0;
    }

    webrtc::RTCPReceiver::IncomingPacket(*(this + 62) + 768, a2, a3);
    Rtt = webrtc::ModuleRtpRtcpImpl2::LastRtt(*(this + 62));
    if (v6)
    {
      v7 = Rtt;
      v8 = *(this + 62);
      pthread_mutex_lock((v8 + 896));
      v9 = *(v8 + 976);
      if (v9)
      {
        v10 = *(v8 + 984);
        v11 = *(v8 + 992);
        pthread_mutex_unlock((v8 + 896));
        v12 = *(this + 10);
        v13 = (*(*v12 + 16))(v12);
        v14 = (*(*v12 + 24))(v12, v13);
        if ((1000 * (HIDWORD(v14) - HIDWORD(v9)) - (v9 / 4294967.3 + 0.5) + (v14 / 4294967.3 + 0.5)) <= 1)
        {
          webrtc::RemoteNtpTimeEstimator::UpdateRtcpTimestamp(this + 16, v7, v10, v11);
          if (*(this + 26) >= 3uLL)
          {
            v15 = *(this + 20);
            if (v15)
            {
              v15 = *(*(this + 21) + 32);
            }

            *(this + 169) = v15;
            *(this + 1360) = 1;
          }
        }
      }

      else
      {
        pthread_mutex_unlock((v8 + 896));
      }
    }
  }

  return v3;
}

void *webrtc::RtpVideoStreamReceiver2::FrameDecoded(void *this, uint64_t a2)
{
  v2 = this[109];
  if (v2)
  {
    v3 = this;
    v4 = this + 109;
    do
    {
      if (v2[4] >= a2)
      {
        v4 = v2;
      }

      v2 = v2[v2[4] < a2];
    }

    while (v2);
    if (v4 != this + 109 && v4[4] <= a2)
    {
      v5 = *(v4 + 20);
      v6 = this[108];
      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      if (v6 != v8)
      {
        do
        {
          v25 = v6[1];
          v26 = v6;
          if (v25)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v9 = *v27 == v26;
              v26 = v27;
            }

            while (!v9);
          }

          if (*(v3 + 864) == v6)
          {
            *(v3 + 864) = v27;
          }

          --*(v3 + 880);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(v3 + 872), v6);
          operator delete(v6);
          v6 = v27;
        }

        while (v27 != v8);
      }

      v10 = v5;
      if (*(v3 + 1458))
      {
        v11 = *(v3 + 1456);
        v12 = v5 >= v11;
        LODWORD(v13) = v5 - v11;
        v14 = v13 != 0 && v12;
        v15 = (v13 & 0x8000u) == 0;
        if (v13 == 0x8000)
        {
          v15 = v14;
        }

        if (v15)
        {
          v13 = v13;
        }

        else
        {
          v13 |= 0xFFFFFFFFFFFF0000;
        }

        v10 = v13 + *(v3 + 1448);
      }

      *(v3 + 1448) = v10;
      *(v3 + 1456) = v5;
      *(v3 + 1458) = 1;
      v16 = *(v3 + 1464);
      v17 = (v3 + 1472);
      for (i = *(v3 + 1472); i; i = i[v21])
      {
        v19 = i[4];
        v20 = v10 < v19;
        v21 = v10 >= v19;
        if (v20)
        {
          v17 = i;
        }
      }

      if (v16 != v17)
      {
        do
        {
          v28 = v16[1];
          v29 = v16;
          if (v28)
          {
            do
            {
              v30 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v30 = v29[2];
              v9 = *v30 == v29;
              v29 = v30;
            }

            while (!v9);
          }

          if (*(v3 + 1464) == v16)
          {
            *(v3 + 1464) = v30;
          }

          --*(v3 + 1480);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(v3 + 1472), v16);
          v31 = v16[6];
          if (v31)
          {
            v16[7] = v31;
            operator delete(v31);
          }

          operator delete(v16);
          v16 = v30;
        }

        while (v30 != v17);
      }

      webrtc::video_coding::PacketBuffer::ClearTo((v3 + 632), v5);
      v22 = *(v3 + 840);
      *v22 = v5;
      v23 = *(v22 + 16);
      v40 = v5;
      v24 = *(v23 + 77456);
      if (v24 == -1)
      {
        v32 = std::__throw_bad_variant_access[abi:sn200100]();
        return webrtc::RtpVideoStreamReceiver2::StartReceive(v32, v33, v34, v35, v36, v37, v38, v39);
      }

      else
      {
        v41 = &v40;
        return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100INS1_9__variant15__value_visitorIZN6webrtc8internal27RtpFrameReferenceFinderImpl7ClearToEtE14ClearToVisitorEEJRNS0_6__implIJNS_9monostateENS6_24RtpGenericFrameRefFinderENS6_23RtpFrameIdOnlyRefFinderENS6_22RtpSeqNumOnlyRefFinderENS6_15RtpVp8RefFinderENS6_15RtpVp9RefFinderEEEEEEEDcOT_DpOT0____fmatrix[v24])(&v41);
      }
    }
  }

  return this;
}

void *webrtc::RtpVideoStreamReceiver2::StartReceive(void *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (!this[92])
  {
    operator new();
  }

  if (this[60])
  {
    goto LABEL_22;
  }

  v9 = this[15];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = this[62];
  this = webrtc::PacketRouter::MaybeRemoveRembModuleCandidate(this[15], v10, 0, a4, a5, a6, a7, a8);
  v12 = *(v9 + 88);
  v11 = *(v9 + 96);
  if (v12 != v11)
  {
    v13 = *(v9 + 88);
    while (*v13 != v10)
    {
      v13 += 8;
      v12 += 8;
      if (v13 == v11)
      {
        v12 = *(v9 + 96);
        break;
      }
    }
  }

  if (v11 != v12)
  {
    v14 = (v11 - (v12 + 8));
    if (v11 != v12 + 8)
    {
      memmove(v12, v12 + 8, v11 - (v12 + 8));
    }

    *(v9 + 96) = &v14[v12];
    v15 = v8[15];
    v19 = v8[62];
    std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100](v15 + 11, &v19);
    v20 = v19;
    std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100](v15 + 17, &v20);
    v16 = v15[14];
    if (v16 == v15[15] && (v16 = v15[17], v16 == v15[18]))
    {
      v17 = 0;
      this = v15[20];
      if (!this)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *v16;
      this = v15[20];
      if (*v16 == this || this == 0)
      {
        goto LABEL_21;
      }
    }

    this = (*(*this + 32))(this);
LABEL_21:
    v15[20] = v17;
LABEL_22:
    *(v8 + 480) = 1;
    return this;
  }

  __break(1u);
  return this;
}

void non-virtual thunk towebrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::~RtcpFeedbackBuffer(webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer *this)
{
  *(this - 1) = &unk_28829E0B0;
  *this = &unk_28829E0E8;
  *(this + 1) = &unk_28829E110;
  v1 = *(this + 6);
  if (v1)
  {
    *(this + 7) = v1;
    operator delete(v1);
  }
}

{
  *(this - 1) = &unk_28829E0B0;
  *this = &unk_28829E0E8;
  *(this + 1) = &unk_28829E110;
  v1 = *(this + 6);
  if (v1)
  {
    *(this + 7) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x2743DA540);
}

{
  *(this - 2) = &unk_28829E0B0;
  *(this - 1) = &unk_28829E0E8;
  *this = &unk_28829E110;
  v1 = *(this + 5);
  if (v1)
  {
    *(this + 6) = v1;
    operator delete(v1);
  }
}

{
  *(this - 2) = &unk_28829E0B0;
  *(this - 1) = &unk_28829E0E8;
  *this = &unk_28829E110;
  v1 = *(this + 5);
  if (v1)
  {
    *(this + 6) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x2743DA540);
}

void std::__tree<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>>>::destroy(a1[1]);
    v2 = a1[8];
    a1[8] = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>>>::destroy(a1, a2[1]);
    v4 = a2[7];
    a2[7] = 0;
    if (v4)
    {
      MEMORY[0x2743DA520](v4, 0x1000C8077774924);
    }

    operator delete(a2);
  }
}

void *webrtc::scoped_refptr<webrtc::FinalRefCountedObject<webrtc::BufferT<unsigned char,false>>>::operator=(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3 && atomic_fetch_add((v3 + 24), 0xFFFFFFFF) == 1)
  {
    v4 = result;
    v5 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v5)
    {
      MEMORY[0x2743DA520](v5, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v3, 0x1010C40EE34DA14);
    return v4;
  }

  return result;
}

void std::vector<webrtc::RtpPacketReceived>::__emplace_back_slow_path<webrtc::RtpPacketReceived const&>(void *a1)
{
  v1 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v1)
    {
      v1 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v2 = 0x1C71C71C71C71C7;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned char,std::map<std::string,std::string>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<std::string,std::string>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<std::string,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned char,std::map<std::string,std::string>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<std::string,std::string>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<std::string,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned char,std::map<std::string,std::string>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<std::string,std::string>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<std::string,std::string>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<long long,webrtc::RtpPacketInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::RtpPacketInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::RtpPacketInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,webrtc::RtpPacketInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::RtpPacketInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::RtpPacketInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,webrtc::RtpPacketInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::RtpPacketInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::RtpPacketInfo>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

BOOL webrtc::RefCountedObject<webrtc::RtpVideoStreamReceiverFrameTransformerDelegate>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 13, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::RtpVideoStreamReceiverFrameTransformerDelegate>::~RefCountedObject(void *result)
{
  *result = &unk_28829E308;
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[2]);
    return v2;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::RtpVideoStreamReceiverFrameTransformerDelegate>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829E308;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(a1[2]);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(unint64_t *a1)
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
    v7 = v5 - 1;
    do
    {
      v8 = v7[v6];
      v7[v6] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      --v6;
    }

    while (v6);
    v4 = *a1 & 1;
  }

  if (v4)
  {
    v9 = *v3;

    operator delete(v9);
  }
}

uint64_t webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::TransformFrame(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48) != 1)
  {
    operator new();
  }

  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  (**v2)(v2, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::OnTransformedFrame(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    (**a1)(a1);
  }

  v4 = *(a1 + 24);
  v5 = *a2;
  *a2 = 0;
  v9[0] = a1;
  v9[1] = v5;
  v10 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>;
  v11 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0 &&>;
  (*(*v4 + 8))(v4, v9, &v8, &v7);
  return v10(1, v9, v9);
}

uint64_t webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::StartShortCircuiting(webrtc::RtpVideoStreamReceiverFrameTransformerDelegate *this)
{
  if (this)
  {
    (**this)(this);
  }

  v2 = *(this + 3);
  v6[0] = this;
  v7 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::StartShortCircuiting(void)::$_0>;
  v8 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::StartShortCircuiting(void)::$_0 &&>;
  (*(*v2 + 8))(v2, v6, &v5, &v4);
  return v7(1, v6, v6);
}

void webrtc::TransformableVideoReceiverFrame::~TransformableVideoReceiverFrame(webrtc::TransformableVideoReceiverFrame *this)
{
  webrtc::TransformableVideoReceiverFrame::~TransformableVideoReceiverFrame(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_28829E348;
  v2 = *(this + 227);
  if (v2)
  {
    *(this + 228) = v2;
    operator delete(v2);
  }

  v3 = *(this + 450);
  if (v3 != -1)
  {
    (off_28829E3F8[v3])(&v5, this + 160);
  }

  *(this + 450) = -1;
  if (*(this + 104))
  {
    operator delete(*(this + 14));
    if ((*(this + 56) & 1) == 0)
    {
LABEL_7:
      v4 = *(this + 1);
      *(this + 1) = 0;
      if (!v4)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 56) & 1) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(this + 8));
  v4 = *(this + 1);
  *(this + 1) = 0;
  if (!v4)
  {
    return;
  }

LABEL_8:
  (*(*v4 + 8))(v4);
}

uint64_t webrtc::TransformableVideoReceiverFrame::GetData(webrtc::TransformableVideoReceiverFrame *this)
{
  v1 = *(*(this + 1) + 144);
  if (v1)
  {
    (**v1)(*(*(this + 1) + 144));
  }

  v2 = (*(*v1 + 40))(v1);
  v3 = (*(*v1 + 48))(v1);
  (*(*v1 + 8))(v1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::TransformableVideoReceiverFrame::GetSsrc(webrtc::TransformableVideoReceiverFrame *this)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*this + 160))(v4);
  v1 = v11;
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10 != -1)
  {
    (off_28829E3F8[v10])(&v3, &v9);
  }

  v10 = -1;
  if (v7)
  {
    operator delete(__p);
    if ((v5 & 1) == 0)
    {
      return v1;
    }

LABEL_9:
    operator delete(v6);
    return v1;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  return v1;
}

void webrtc::TransformableVideoReceiverFrame::GetMimeType(webrtc::TransformableVideoReceiverFrame *this@<X0>, unint64_t a2@<X8>)
{
  v12 = 6;
  if (__p <= "video/" && __p + 6 > "video/")
  {
    goto LABEL_17;
  }

  strcpy(__p, "video/");
  v3 = *(*(this + 1) + 4552);
  if (v3 >= 6)
  {
    goto LABEL_18;
  }

  v4 = (&off_279E94A28)[v3];
  v5 = strlen(v4);
  v6 = v5 + 6;
  if (v5 + 6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v7 = v5;
  if (v6 > 0x16)
  {
    operator new();
  }

  if ((*(a2 + 8) = 0, *(a2 + 16) = 0, *a2 = 0, *(a2 + 23) = v6, this = (a2 + 6), __p >= a2) && this > __p || (v8 = __p[0], *(a2 + 4) = WORD2(__p[0]), *a2 = v8, (v7 & 0x8000000000000000) != 0) || ((v9 = this + v7, this <= v4) ? (v10 = v9 > v4) : (v10 = 0), v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
  }

  if (v7)
  {
    memcpy(this, v4, v7);
  }

  *v9 = 0;
}

uint64_t webrtc::TransformableVideoReceiverFrame::ReceiveTime(webrtc::TransformableVideoReceiverFrame *this)
{
  v1 = *(this + 1);
  if ((*(*v1 + 16))(v1) < 0)
  {
    return 0;
  }

  else
  {
    return 1000 * (*(*v1 + 16))(v1);
  }
}

unint64_t webrtc::TransformableVideoReceiverFrame::CaptureTime(webrtc::TransformableVideoReceiverFrame *this)
{
  v1 = *(this + 1);
  if (*(v1 + 4480) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 4456);
  if (v2)
  {
    return llround(v2 * 0.000232830644);
  }

  return v2;
}

unint64_t webrtc::TransformableVideoReceiverFrame::SenderCaptureTimeOffset(webrtc::TransformableVideoReceiverFrame *this)
{
  v1 = *(this + 1);
  if (*(v1 + 4480) == 1 && *(v1 + 4472) == 1)
  {
    return llround(*(v1 + 4464) * 0.000232830644);
  }

  else
  {
    return 0;
  }
}

unint64_t *webrtc::TransformableVideoReceiverFrame::Metadata@<X0>(webrtc::TransformableVideoReceiverFrame *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 7);
  v5 = *(this + 2);
  *a2 = *(this + 1);
  *(a2 + 16) = v5;
  *(a2 + 32) = *(this + 6);
  *(a2 + 40) = 0;
  if (v4 >= 2)
  {
    if (v4)
    {
      absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::InitFrom((a2 + 40), this + 7);
      *(a2 + 88) = 0;
      result = (a2 + 88);
      v8 = (this + 104);
      v9 = *(this + 13);
      if (v9 < 2)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    *(a2 + 40) = v4;
    v6 = *(this + 5);
    *(a2 + 48) = *(this + 4);
    *(a2 + 64) = v6;
    *(a2 + 80) = *(this + 12);
  }

  *(a2 + 88) = 0;
  result = (a2 + 88);
  v8 = (this + 104);
  v9 = *(this + 13);
  if (v9 < 2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v9)
  {
    result = absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom(result, v8);
  }

  else
  {
    *(a2 + 88) = v9;
    v10 = *(this + 8);
    *(a2 + 96) = *(this + 7);
    *(a2 + 112) = v10;
    *(a2 + 128) = *(this + 18);
  }

LABEL_10:
  *(a2 + 144) = 0;
  *(a2 + 136) = *(this + 19);
  *(a2 + 1784) = -1;
  v11 = *(this + 450);
  if (v11 != -1)
  {
    v14 = a2 + 144;
    result = (off_28829E418[v11])(&v14, this + 160);
    *(a2 + 1784) = v11;
  }

  *(a2 + 1792) = *(this + 452);
  *(a2 + 1800) = 0;
  *(a2 + 1816) = 0;
  *(a2 + 1808) = 0;
  v12 = *(this + 227);
  v13 = *(this + 228);
  if (v13 != v12)
  {
    if (((v13 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::TransformableVideoReceiverFrame::SetMetadata(webrtc::TransformableVideoReceiverFrame *this, const webrtc::VideoFrameMetadata *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  (*(*this + 160))(v11);
  v6 = *(a2 + 6);
  v5 = a2 + 48;
  v4 = v6;
  v7 = *(v5 - 3);
  v11[2] = *(v5 - 4);
  v12 = v7;
  v8 = *(v5 - 1);
  if ((v8 & 1) == 0)
  {
    v4 = v5;
  }

  if (v8 >= 2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<long long>,long long const*>>(v13, v9, v8 >> 1);
  webrtc::RTPVideoHeader::SetFromMetadata((*(this + 1) + 2512), v11);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v17 != -1)
  {
    (off_28829E3F8[v17])(&v10, &v16);
  }

  v17 = -1;
  if ((v14 & 1) == 0)
  {
    if ((v13[0] & 1) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(v13[1]);
    return;
  }

  operator delete(__p);
  if (v13[0])
  {
    goto LABEL_14;
  }
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJS8_SA_SB_SC_EEEEEEDcSM_DpT0_(void *result)
{
  if (!*result)
  {
    __break(1u);
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJS8_SA_SB_SC_EEEEEEDcSM_DpT0_(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *a2;
    *(v2 + 16) = *(a2 + 4);
    *v2 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJS8_SA_SB_SC_EEEEEEDcSM_DpT0_(void **a1, const void *a2)
{
  result = *a1;
  if (result)
  {
    return memcpy(result, a2, 0x668uLL);
  }

  __break(1u);
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJS8_SA_SB_SC_EEEEEEDcSM_DpT0_(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v2 = *a2;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(v2 + 32) = *(a2 + 32);
  return result;
}

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0 &&>(uint64_t *result)
{
  v33[228] = *MEMORY[0x277D85DE8];
  v2 = *result;
  v1 = result[1];
  result[1] = 0;
  if (*(v2 + 8))
  {
    if ((*(*v1 + 96))(v1) == 1)
    {
      v3 = v1[230];
      v4 = v1[1];
      v1[1] = 0;
      v5 = *(v2 + 8);
      if (v3 != v5)
      {
        v6 = v4[1248];
        v4[2278] = v6;
        v4[2279] = v6;
      }

      v17 = v4;
      (**v5)(v5, &v17);
      v7 = v17;
      v17 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      return (*(*v1 + 8))(v1);
    }

    else
    {
      if ((*(*v1 + 96))(v1) == 2)
      {
        (*(*v1 + 160))(v33, v1);
        v18[0] = 0;
        v18[144] = 0;
        memset(&v18[152], 0, 15);
        v19 = 1;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *&v23[6] = 0xFF000000000000;
        *v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        webrtc::RTPVideoHeader::SetFromMetadata(v18, v33);
        (*(*v1 + 16))(v1);
        (*(**(v2 + 40) + 16))(*(v2 + 40));
        (*(*v1 + 64))(v1);
        (*(*v1 + 32))(v1);
        operator new();
      }

      v9 = (*(*v1 + 96))(v1);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_video_stream_receiver_frame_transformer_delegate.cc", 223, "frame->GetDirection() == TransformableFrameInterface::Direction::kSender", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v10, v11, v12, v13, v9);
      return absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>(v14, v15, v16);
    }
  }

  else if (v1)
  {
    v8 = *(*v1 + 8);

    return v8(v1);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>(char a1, uint64_t *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v4 = *a2;
    *a2 = 0;
    a2[1] = 0;
    *a3 = v4;
  }

  v5 = a2[1];
  a2[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = *a2;
  if (*a2)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RtpVideoStreamReceiverFrameTransformerDelegate::StartShortCircuiting(void)::$_0>(char a1, uint64_t *a2, uint64_t *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *a2 = 0;
    *a3 = v3;
  }

  result = *a2;
  if (*a2)
  {
    return (*(*result + 8))();
  }

  return result;
}

void webrtc::RtpVp8RefFinder::ManageFrame(int64x2_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a2;
  if (*(*a2 + 4448) != 1)
  {
LABEL_70:
    std::__throw_bad_variant_access[abi:sn200100]();
    goto LABEL_71;
  }

  v8 = *(v5 + 2814);
  if (v8 != 255)
  {
    *(v5 + 200) = v8;
    *(v5 + 204) = 1;
  }

  v9 = *(v5 + 2812);
  v10 = *(v5 + 2812);
  if (a1[8].i8[1])
  {
    v11 = a1[8].u8[0];
    v12 = v9 >= v11;
    LODWORD(v13) = v9 - v11;
    v14 = v13 != 0 && v12;
    v15 = (v13 & 0x80u) == 0;
    if (v13 == 128)
    {
      v15 = v14;
    }

    if (v15)
    {
      v13 = v13;
    }

    else
    {
      v13 |= 0xFFFFFFFFFFFFFF00;
    }

    v10 = v13 + a1[7].i64[1];
  }

  a1[7].i64[1] = v10;
  a1[8].i16[0] = v9 | 0x100;
  webrtc::RtpVp8RefFinder::ManageFrameInternal(a1->i32, *a2, v5 + 2808, v10);
  *a3 = 0;
  if (v16 == 1)
  {
    a3[1] = *a2;
    *a2 = 0;
    *a3 = 2;
    v32 = a1[2].i64[1];
    v33 = a1[3].i64[0];
    v3 = 3;
    while (1)
    {
      v34 = a1[4].u64[0];
      v10 = v32 + 8 * (v34 >> 8);
      if (v33 == v32)
      {
        v35 = 0;
      }

      else
      {
        v35 = (*v10 + 16 * v34);
      }

      v36 = 0;
      while (v33 != v32)
      {
        v38 = a1[4].i64[1] + a1[4].i64[0];
        if (v35 == (*(v32 + ((v38 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v38))
        {
          goto LABEL_31;
        }

LABEL_43:
        v40 = v35 + 1;
        v39 = v35[1];
        if (*(v39 + 4448) != 1)
        {
          goto LABEL_70;
        }

        webrtc::RtpVp8RefFinder::ManageFrameInternal(a1->i32, v39, v39 + 2808, *v35);
        if (v41 == 2)
        {
          goto LABEL_37;
        }

        if (v41 == 1)
        {
          v42 = *a3;
          v43 = a3[1];
          if (*a3)
          {
            v44 = a3[2];
          }

          else
          {
            v43 = a3 + 1;
            v44 = 3;
          }

          if (v42 >> 1 == v44)
          {
            absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::EmplaceBackSlow<std::unique_ptr<webrtc::RtpFrameObject>>(a3);
          }

          if (!v43)
          {
            goto LABEL_61;
          }

          v45 = *v40;
          *v40 = 0;
          v43[v42 >> 1] = v45;
          *a3 = v42 + 2;
          v36 = 1;
LABEL_37:
          v10 = std::deque<webrtc::RtpVp8RefFinder::UnwrappedTl0Frame>::erase(a1 + 2, v10, v35);
          v35 = v37;
          goto LABEL_38;
        }

        v35 += 2;
        if ((v35 - *v10) == 4096)
        {
          v46 = *(v10 + 8);
          v10 += 8;
          v35 = v46;
        }

LABEL_38:
        v32 = a1[2].i64[1];
        v33 = a1[3].i64[0];
      }

      if (v35)
      {
        goto LABEL_43;
      }

LABEL_31:
      if ((v36 & 1) == 0)
      {
        return;
      }
    }
  }

  if (v16)
  {
    return;
  }

  v17 = a1[4].u64[1];
  if (v17 >= 0x65)
  {
    v18 = a1[4].i64[0];
    v19 = v17 - 1;
    v20 = v18 + v17 - 1;
    v21 = a1[2].i64[1];
    v22 = *(v21 + ((v20 >> 5) & 0x7FFFFFFFFFFFFF8));
    if (!v22)
    {
LABEL_61:
      __break(1u);
      a1[4].i64[0] += 256;
      goto LABEL_62;
    }

    v23 = v22 + 16 * v20;
    v24 = *(v23 + 8);
    *(v23 + 8) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
      v21 = a1[2].i64[1];
      v18 = a1[4].i64[0];
      v17 = a1[4].u64[1];
      v19 = v17 - 1;
    }

    v25 = a1[3].i64[0];
    a1[4].i64[1] = v19;
    if (v25 == v21)
    {
      v26 = 0;
    }

    else
    {
      v26 = 32 * (v25 - v21) - 1;
    }

    if (v26 - (v18 + v17) + 1 >= 0x200)
    {
      operator delete(*(v25 - 8));
      a1[3].i64[0] -= 8;
    }
  }

  v3 = *a2;
  *a2 = 0;
  v27 = a1[4].u64[0];
  if (!v27)
  {
    v29 = a1[2].i64[1];
    v28 = a1[3].i64[0];
    v30 = 32 * (v28 - v29) - 1;
    v31 = v28 - v29;
    if (v28 == v29)
    {
      v30 = 0;
    }

    if ((v30 - a1[4].i64[1]) >= 0x100)
    {
      a1[4].i64[0] = 256;
      v54 = *(v28 - 8);
      a1[3].i64[0] = v28 - 8;
      std::__split_buffer<std::unique_ptr<webrtc::RtpFrameObject> *,std::allocator<std::unique_ptr<webrtc::RtpFrameObject> *>>::emplace_front<std::unique_ptr<webrtc::RtpFrameObject> *>(&a1[2], &v54);
LABEL_62:
      v27 = a1[4].u64[0];
      goto LABEL_63;
    }

    v47 = a1[3].i64[1];
    v48 = a1[2].i64[0];
    if (v31 < v47 - v48)
    {
      operator new();
    }

    if (v47 == v48)
    {
      v49 = 1;
    }

    else
    {
      v49 = (v47 - v48) >> 2;
    }

    if (!(v49 >> 61))
    {
      operator new();
    }

LABEL_71:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_63:
  v50 = a1[2].i64[1];
  v51 = (v50 + 8 * (v27 >> 8));
  if (a1[3].i64[0] == v50)
  {
    v52 = 0;
  }

  else
  {
    v52 = *v51 + 16 * v27;
  }

  if (v52 == *v51)
  {
    v52 = *(v51 - 1) + 4096;
  }

  *(v52 - 16) = v10;
  *(v52 - 8) = v3;
  v53 = a1[4].i64[1] + 1;
  a1[4].i64[0] = v27 - 1;
  a1[4].i64[1] = v53;
}

void webrtc::RtpVp8RefFinder::ManageFrameInternal(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 6) > 4u)
  {
    return;
  }

  *(a2 + 192) = 0;
  *(a2 + 196) = 1;
  v8 = *(a3 + 2) & 0x7FFF;
  *(a2 + 2496) = v8;
  LODWORD(v9) = *a1;
  if (*a1 == -1)
  {
    *a1 = v8;
    LODWORD(v9) = v8;
  }

  if (v8 >= 0x64)
  {
    v10 = -100;
  }

  else
  {
    v10 = 32668;
  }

  v11 = v10 + v8;
  v13 = a1 + 4;
  v12 = *(a1 + 2);
  v14 = (a1 + 2);
  v15 = a1 + 4;
  if (v12)
  {
    v15 = a1 + 4;
    do
    {
      while (1)
      {
        v22 = *(v12 + 13);
        if (v22 != v11)
        {
          break;
        }

        v15 = v12;
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_27;
        }
      }

      v16 = v22 - v11;
      if (v11 > *(v12 + 13))
      {
        v16 = (v22 - v11) ^ 0x8000;
      }

      v17 = v11 - v22;
      if (*(v12 + 13) > v11)
      {
        v17 ^= 0x8000u;
      }

      if (v17 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      v19 = v17 <= 0x4000u;
      if (v18 == 0x4000)
      {
        v19 = v11 > *(v12 + 13);
      }

      v20 = !v19;
      if (v19)
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v15 = v12;
      }

      v12 = *&v12[v21];
    }

    while (v12);
  }

LABEL_27:
  v23 = *v14;
  if (*v14 == v15)
  {
    v24 = v11;
    if (v11 == v9)
    {
      goto LABEL_50;
    }
  }

  else
  {
    do
    {
      v26 = v23[1];
      v27 = v23;
      if (v26)
      {
        do
        {
          v28 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v28 = v27[2];
          v20 = *v28 == v27;
          v27 = v28;
        }

        while (!v20);
      }

      if (*v14 == v23)
      {
        *v14 = v28;
      }

      v25 = *(a1 + 2);
      --*(a1 + 3);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v25, v23);
      operator delete(v23);
      v23 = v28;
    }

    while (v28 != v15);
    LODWORD(v9) = *a1;
    v24 = v11;
    if (v11 == *a1)
    {
      goto LABEL_50;
    }
  }

  LOWORD(v29) = v9 - v11;
  v30 = v11 - v9;
  v31 = v24 > v9;
  if (v31)
  {
    LOWORD(v29) = (v9 - v11) ^ 0x8000;
  }

  v29 = v29;
  if (v24 < v9)
  {
    v30 ^= 0x8000u;
  }

  if (v30 < v29)
  {
    v29 = v30;
  }

  v32 = v30 <= 0x4000u;
  if (v29 == 0x4000)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = v9;
  if (v33 == 1)
  {
    LODWORD(v9) = v11;
    *a1 = v11;
LABEL_50:
    v34 = v11;
  }

  v35 = *(a2 + 2496);
  if (v35 != v34)
  {
    v40 = v34;
    v36 = v34 - v35;
    v37 = v35 - v34;
    v94 = v40 >= v35;
    v38 = v40 > v35;
    v39 = v40 < v35;
    LOWORD(v40) = v36 ^ 0x8000;
    if (v94)
    {
      LOWORD(v40) = v36;
    }

    v40 = v40;
    if (v38)
    {
      v37 ^= 0x8000u;
    }

    if (v37 < v40)
    {
      v40 = v37;
    }

    v41 = v37 <= 0x4000u;
    if (v40 == 0x4000)
    {
      v41 = v39;
    }

    if (v41)
    {
      do
      {
        if (v9 < 0x7FFF)
        {
          v42 = 1;
        }

        else
        {
          v42 = -32767;
        }

        v43 = v42 + v9;
        *a1 = v43;
        v119 = v43;
        std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)32768>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>((a1 + 2), &v119);
        v9 = *a1;
      }

      while (*(a2 + 2496) != v9);
    }
  }

  v45 = a1 + 22;
  v44 = *(a1 + 11);
  v46 = a1 + 22;
  if (v44)
  {
    v47 = a4 - 50;
    v46 = a1 + 22;
    do
    {
      if (*(v44 + 32) >= v47)
      {
        v46 = v44;
      }

      v44 = *(v44 + 8 * (*(v44 + 32) < v47));
    }

    while (v44);
  }

  v48 = *(a1 + 10);
  if (v48 != v46)
  {
    do
    {
      v51 = v48[1];
      v52 = v48;
      if (v51)
      {
        do
        {
          v53 = v51;
          v51 = *v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          v53 = v52[2];
          v20 = *v53 == v52;
          v52 = v53;
        }

        while (!v20);
      }

      if (*(a1 + 10) == v48)
      {
        *(a1 + 10) = v53;
      }

      v50 = *(a1 + 11);
      --*(a1 + 12);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v50, v48);
      operator delete(v48);
      v48 = v53;
    }

    while (v53 != v46);
  }

  v49 = *(a3 + 6);
  if (*(a2 + 2664) == 3)
  {
    if (*(a3 + 6))
    {
      return;
    }

    *(a2 + 352) = 0;
    v58 = *v45;
    if (!*v45)
    {
LABEL_98:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v59 = v58;
        v60 = *(v58 + 4);
        if (v60 <= a4)
        {
          break;
        }

        v58 = *v59;
        if (!*v59)
        {
          goto LABEL_98;
        }
      }

      if (v60 >= a4)
      {
        break;
      }

      v58 = *(v59 + 1);
      if (!v58)
      {
        goto LABEL_98;
      }
    }

    LODWORD(v49) = 0;
    *(v59 + 9) = -1;
    *&v70 = -1;
    *(&v70 + 1) = -1;
    *(v59 + 14) = v70;
    *(v59 + 10) = v70;
    goto LABEL_120;
  }

  v54 = *v45;
  if (*v45)
  {
    v55 = a4 - (v49 == 0);
    v56 = a1 + 22;
    v57 = *v45;
    do
    {
      if (*(v57 + 4) >= v55)
      {
        v56 = v57;
      }

      v57 = *&v57[2 * (*(v57 + 4) < v55)];
    }

    while (v57);
    if (v56 != v45 && v55 >= *(v56 + 4))
    {
      if (*(a3 + 6))
      {
        v61 = v56 + 10;
        if (*(a3 + 7) == 1)
        {
          *(a2 + 352) = 1;
          if (v49 < 5)
          {
            v62 = v61[v49];
            if (v62 == -1)
            {
              goto LABEL_113;
            }

            v63 = *(a2 + 2496);
            v64 = v63 - v62;
            if (v61[v49] > v63)
            {
              v64 = (v63 - v62) ^ 0x8000;
            }

            v65 = v62 - v63;
            if (v63 > v61[v49])
            {
              v65 ^= 0x8000u;
            }

            v66 = v65 >= v64 ? v64 : v65;
            v67 = v65 <= 0x4000u;
            if (v66 == 0x4000)
            {
              v67 = v61[v49] > v63;
            }

            if (!v67)
            {
LABEL_113:
              *(a2 + 360) = *v61;
LABEL_183:
              v71 = a1;
              v72 = a2;
              v73 = a4;
              goto LABEL_121;
            }

            return;
          }
        }

        else
        {
          v74 = 0;
          *(a2 + 352) = 0;
          while (v74 != 5)
          {
            v75 = v61[v74];
            if (v75 == -1)
            {
              return;
            }

            v76 = *(a2 + 2496);
            if (v76 != v75)
            {
              LOWORD(v77) = v76 - v75;
              if (v61[v74] > v76)
              {
                LOWORD(v77) = (v76 - v75) ^ 0x8000;
              }

              v77 = v77;
              if (v76 <= v61[v74])
              {
                v78 = v75 - v76;
              }

              else
              {
                v78 = (v75 - v76) ^ 0x8000;
              }

              if (v78 < v77)
              {
                v77 = v78;
              }

              v79 = v78 <= 0x4000u;
              if (v77 == 0x4000)
              {
                v79 = v61[v74] > v76;
              }

              if (v79)
              {
                return;
              }
            }

            v80 = *v13;
            if (*v13)
            {
              v81 = a1 + 4;
              do
              {
                v82 = *(v80 + 26);
                LOWORD(v83) = v75 - v82;
                v84 = v82 - v75;
                v31 = v82 > v75;
                v85 = v31;
                if (v31)
                {
                  LOWORD(v83) = (v75 - v82) ^ 0x8000;
                }

                v83 = v83;
                if (v82 < v75)
                {
                  v84 ^= 0x8000u;
                }

                if (v84 < v83)
                {
                  v83 = v84;
                }

                v86 = v84 <= 0x4000u;
                if (v83 != 0x4000)
                {
                  v85 = v86;
                }

                v87 = v85 == 0;
                if (v85)
                {
                  v88 = 0;
                }

                else
                {
                  v88 = 8;
                }

                v89 = (v80 + v88);
                if (v87)
                {
                  v90 = v81;
                }

                else
                {
                  v90 = v80;
                }

                v91 = (v80 + 8);
                if (v82 != v75)
                {
                  v91 = v89;
                  v81 = v90;
                }

                v80 = *v91;
              }

              while (v80);
              if (v81 != v13)
              {
                v92 = *(v81 + 13);
                if (v92 != v76)
                {
                  v93 = v76 - v92;
                  v94 = v92 >= v76;
                  v96 = v92 - v76;
                  v95 = v96 != 0 && v94;
                  v97 = !v94;
                  if (!v94)
                  {
                    LOWORD(v96) = v96 ^ 0x8000;
                  }

                  v96 = v96;
                  if (v95)
                  {
                    v93 ^= 0x8000u;
                  }

                  if (v93 < v96)
                  {
                    v96 = v93;
                  }

                  v98 = v93 <= 0x4000u;
                  v99 = v96 == 0x4000 ? v97 : v98;
                  if (v99)
                  {
                    return;
                  }
                }
              }
            }

            if (v76 == v75)
            {
              goto LABEL_184;
            }

            v100 = v75 - v76;
            v101 = v76 > v61[v74];
            if (v76 > v61[v74])
            {
              v100 = (v75 - v76) ^ 0x8000;
            }

            if (v61[v74] <= v76)
            {
              v102 = v76 - v75;
            }

            else
            {
              v102 = (v76 - v75) ^ 0x8000;
            }

            if (v102 >= v100)
            {
              v103 = v100;
            }

            else
            {
              v103 = v102;
            }

            v104 = v102 <= 0x4000u;
            if (v103 == 0x4000)
            {
              v104 = v101;
            }

            if (!v104)
            {
LABEL_184:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v105, v106, v107, v108, v109, v110, v111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_vp8_ref_finder.cc");
              }

              return;
            }

            *(a2 + 360 + 8 * v74) = v75;
            *(a2 + 352) = ++v74;
            if (v74 == (v49 + 1))
            {
              goto LABEL_183;
            }
          }
        }

        __break(1u);
        return;
      }

      while (1)
      {
        while (1)
        {
          v68 = v54;
          v69 = *(v54 + 4);
          if (v69 <= a4)
          {
            break;
          }

          v54 = *v68;
          if (!*v68)
          {
            goto LABEL_186;
          }
        }

        if (v69 >= a4)
        {
          break;
        }

        v54 = v68[1];
        if (!v54)
        {
LABEL_186:
          operator new();
        }
      }

      *(a2 + 352) = 1;
      v112 = v68[5];
      v113 = *(a2 + 2496);
      v114 = v113 - v112;
      v115 = v112 > v113;
      if (v112 > v113)
      {
        v114 ^= 0x8000u;
      }

      if (v113 <= v112)
      {
        v116 = v112 - v113;
      }

      else
      {
        v116 = (v112 - v113) ^ 0x8000;
      }

      if (v116 >= v114)
      {
        v117 = v114;
      }

      else
      {
        v117 = v116;
      }

      v118 = v116 <= 0x4000u;
      if (v117 == 0x4000)
      {
        v118 = v115;
      }

      if (!v118)
      {
        *(a2 + 360) = v112;
        LODWORD(v49) = *(a3 + 6);
LABEL_120:
        v71 = a1;
        v72 = a2;
        v73 = a4;
LABEL_121:
        webrtc::RtpVp8RefFinder::UpdateLayerInfoVp8(v71, v72, v73, v49);
      }
    }
  }
}

uint64_t **webrtc::RtpVp8RefFinder::UpdateLayerInfoVp8(uint64_t **this, webrtc::RtpFrameObject *a2, uint64_t a3, unsigned int a4)
{
  v5 = this;
  v6 = this + 11;
  v7 = this[11];
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = this + 11;
  v9 = this[11];
  do
  {
    if (v9[4] >= a3)
    {
      v8 = v9;
    }

    v9 = v9[v9[4] < a3];
  }

  while (v9);
  if (v8 == v6 || v8[4] > a3)
  {
LABEL_27:
    v47 = *(a2 + 312);
    this = std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)32768>,std::allocator<unsigned short>>::__erase_unique<unsigned short>(this + 1, &v47);
    if (*(a2 + 44))
    {
      LODWORD(v20) = *(a2 + 180);
      v21 = *(a2 + 180);
      if (*(v5 + 114))
      {
        v22 = *(v5 + 56);
        v23 = v20 - v22;
        v24 = (v20 - v22) ^ 0x8000;
        v25 = v22 >= v20;
        v26 = v22 - v20;
        if (v26 != 0 && v25)
        {
          v23 = v24;
        }

        v27 = !v25;
        if (!v25)
        {
          LOWORD(v26) = v26 ^ 0x8000;
        }

        v26 = v26;
        if (v23 < v26)
        {
          v26 = v23;
        }

        if (v26 == 0x4000)
        {
          v28 = v27;
        }

        else
        {
          v28 = v23 <= 0x4000u;
        }

        if (v28)
        {
          v29 = v23;
        }

        else
        {
          v29 = v23 - 0x8000;
        }

        v21 = (v5[13] + v29);
      }

      v5[13] = v21;
      *(v5 + 56) = v20;
      *(v5 + 114) = 1;
      *(a2 + 45) = v21;
      if (*(a2 + 44) < 2uLL)
      {
        LODWORD(v32) = v20;
      }

      else
      {
        v30 = (a2 + 368);
        v31 = 1;
        do
        {
          LODWORD(v32) = *v30;
          v33 = v20;
          v34 = v32 - v20;
          v35 = (v32 - v20) ^ 0x8000;
          LOWORD(v20) = v20 - v32;
          v36 = v33 >= v32;
          if (v33 <= v32)
          {
            v37 = v34;
          }

          else
          {
            v37 = v35;
          }

          v38 = !v36;
          if (!v36)
          {
            LOWORD(v20) = v20 ^ 0x8000;
          }

          LODWORD(v20) = v20;
          if (v37 < v20)
          {
            LODWORD(v20) = v37;
          }

          if (v20 == 0x4000)
          {
            v39 = v38;
          }

          else
          {
            v39 = v37 <= 0x4000u;
          }

          if (v39)
          {
            v40 = v37;
          }

          else
          {
            v40 = v37 - 0x8000;
          }

          v20 = (v5[13] + v40);
          v5[13] = v20;
          *(v5 + 56) = v32;
          *(v5 + 114) = 1;
          *v30++ = v20;
          ++v31;
          LOWORD(v20) = v32;
        }

        while (v31 < *(a2 + 44));
      }

      v41 = *(a2 + 1248);
    }

    else
    {
      v41 = *(a2 + 1248);
      if ((*(v5 + 114) & 1) == 0)
      {
        v46 = *(a2 + 1248);
LABEL_84:
        v5[13] = v46;
        *(v5 + 56) = v41;
        *(v5 + 114) = 1;
        *(a2 + 312) = v46;
        return this;
      }

      LODWORD(v32) = *(v5 + 56);
    }

    LOWORD(v42) = v32 - v41;
    v43 = v32 >= v41;
    if (v32 <= v41)
    {
      LOWORD(v32) = v41 - v32;
    }

    else
    {
      LOWORD(v32) = (v41 - v32) ^ 0x8000;
    }

    v32 = v32;
    v44 = !v43;
    if (!v43)
    {
      LOWORD(v42) = v42 ^ 0x8000;
    }

    v42 = v42;
    if (v32 < v42)
    {
      v42 = v32;
    }

    v45 = v32 <= 0x4000u;
    if (v42 == 0x4000)
    {
      v45 = v44;
    }

    if (!v45)
    {
      v32 = v32 - 0x8000;
    }

    v46 = (v5[13] + v32);
    goto LABEL_84;
  }

  if (a4 <= 4)
  {
    do
    {
      v10 = v8 + 5;
      v11 = v10[a4];
      v12 = *(a2 + 312);
      if (v11 != -1)
      {
        v13 = v10[a4];
        if (v13 != v12)
        {
          v14 = v12 - v11;
          v15 = v13 > *(a2 + 312);
          if (v13 > *(a2 + 312))
          {
            v14 = (v12 - v11) ^ 0x8000;
          }

          v16 = v11 - v12;
          if (*(a2 + 312) > v13)
          {
            v16 ^= 0x8000u;
          }

          if (v16 >= v14)
          {
            v17 = v14;
          }

          else
          {
            v17 = v16;
          }

          v18 = v16 <= 0x4000u;
          if (v17 == 0x4000)
          {
            v18 = v15;
          }

          if (v18)
          {
            break;
          }
        }
      }

      v10[a4] = v12;
      v8 = this + 11;
      v19 = v7;
      do
      {
        if (v19[4] > a3)
        {
          v8 = v19;
        }

        v19 = v19[v19[4] <= a3];
      }

      while (v19);
      if (v8 == v6)
      {
        break;
      }

      ++a3;
    }

    while (a3 >= v8[4]);
    goto LABEL_27;
  }

  __break(1u);
  return this;
}

int64x2_t *std::deque<webrtc::RtpVp8RefFinder::UnwrappedTl0Frame>::erase(int64x2_t *result, char *a2, char *a3)
{
  v3 = a3;
  v5 = result[2].u64[0];
  v4 = result[2].i64[1];
  v6 = v5 + v4;
  v7 = result->i64[1];
  v8 = result[1].i64[0];
  v9 = (v7 + 8 * ((v5 + v4) >> 8));
  v112 = result;
  if (v8 == v7)
  {
    if (!a3)
    {
      goto LABEL_151;
    }

    v12 = 0;
    v15 = 0;
    v10 = (v7 + 8 * (v5 >> 8));
    v11 = *v10;
  }

  else
  {
    if (&(*v9)[16 * v6] == a3)
    {
      goto LABEL_151;
    }

    v10 = (v7 + 8 * (v5 >> 8));
    v11 = *v10;
    v12 = &(*v10)[16 * v5];
    if (a3 == v12)
    {
      v13 = (v7 + 8 * (v5 >> 8));
      v110 = a3;
      v111 = 0;
      v109 = 1;
      v14 = (a3 - v11) >> 4;
      if (v14 < 0)
      {
LABEL_26:
        v30 = 254 - v14;
        v31 = ~v30;
        v19 = &v13[-(v30 >> 8)];
        v20 = *v19;
        v21 = *v19 + 16 * v31;
        if (v10 != v13)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }

LABEL_13:
      v18 = v14 + 1;
      v19 = &v13[(v14 + 1) >> 8];
      v20 = *v19;
      v21 = *v19 + 16 * v18;
      if (v10 != v13)
      {
LABEL_27:
        if (v11 != v3)
        {
          while (1)
          {
            v32 = (v21 - v20) >> 4;
            if ((v3 - v11) >> 4 >= v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = (v3 - v11) >> 4;
            }

            if (v33)
            {
              v34 = v3 - 8;
              v35 = -16 * v33;
              do
              {
                v36 = *v34;
                *(v21 - 16) = *(v34 - 1);
                v21 -= 16;
                *v34 = 0;
                result = *(v21 + 8);
                *(v21 + 8) = v36;
                if (result)
                {
                  result = (*(result->i64[0] + 8))(result);
                }

                v34 -= 16;
                v35 += 16;
              }

              while (v35);
            }

            v3 -= 16 * v33;
            if (v3 == v11)
            {
              break;
            }

            v37 = *--v19;
            v20 = v37;
            v21 = v37 + 4096;
          }

          v20 = *v19;
          if (*v19 + 4096 == v21)
          {
            v38 = v19[1];
            ++v19;
            v20 = v38;
            v21 = v38;
          }
        }

        for (i = v13 - 1; i != v10; --i)
        {
          v40 = *i;
          v41 = (*i + 4096);
          while (1)
          {
            v42 = (v21 - v20) >> 4;
            if ((v41 - v40) >> 4 >= v42)
            {
              v43 = v42;
            }

            else
            {
              v43 = (v41 - v40) >> 4;
            }

            if (v43)
            {
              v44 = (v41 - 8);
              v45 = -16 * v43;
              do
              {
                v46 = *v44;
                *(v21 - 16) = *(v44 - 1);
                v21 -= 16;
                *v44 = 0;
                result = *(v21 + 8);
                *(v21 + 8) = v46;
                if (result)
                {
                  result = (*(result->i64[0] + 8))(result);
                }

                v44 -= 2;
                v45 += 16;
              }

              while (v45);
            }

            v41 -= 16 * v43;
            if (v41 == v40)
            {
              break;
            }

            v47 = *--v19;
            v20 = v47;
            v21 = v47 + 4096;
          }

          v20 = *v19;
          if (*v19 + 4096 == v21)
          {
            v48 = v19[1];
            ++v19;
            v20 = v48;
            v21 = v48;
          }
        }

        v49 = (*i + 4096);
        if (v49 != v12)
        {
          while (1)
          {
            v50 = (v21 - v20) >> 4;
            if ((v49 - v12) >> 4 >= v50)
            {
              v51 = v50;
            }

            else
            {
              v51 = (v49 - v12) >> 4;
            }

            if (v51)
            {
              v52 = (v21 - 8);
              v53 = (v49 - 8);
              v54 = -16 * v51;
              do
              {
                v55 = *(v53 - 1);
                v56 = *v53;
                *v53 = 0;
                result = *v52;
                *(v52 - 1) = v55;
                *v52 = v56;
                if (result)
                {
                  result = (*(result->i64[0] + 8))(result);
                }

                v52 -= 2;
                v53 -= 2;
                v54 += 16;
              }

              while (v54);
            }

            v49 -= 16 * v51;
            if (v49 == v12)
            {
              break;
            }

            v57 = *--v19;
            v20 = v57;
            v21 = v57 + 4096;
          }
        }

        goto LABEL_67;
      }

LABEL_14:
      if (v12 != v3)
      {
        while (1)
        {
          v22 = (v21 - v20) >> 4;
          if (&v3[-v12] >> 4 >= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = &v3[-v12] >> 4;
          }

          if (v23)
          {
            v24 = (v21 - 8);
            v25 = (v3 - 8);
            v26 = -16 * v23;
            do
            {
              v27 = *(v25 - 1);
              v28 = *v25;
              *v25 = 0;
              result = *v24;
              *(v24 - 1) = v27;
              *v24 = v28;
              if (result)
              {
                result = (*(result->i64[0] + 8))(result);
              }

              v24 -= 2;
              v25 -= 2;
              v26 += 16;
            }

            while (v26);
          }

          v3 -= 16 * v23;
          if (v3 == v12)
          {
            break;
          }

          v29 = *--v19;
          v20 = v29;
          v21 = v29 + 4096;
        }
      }

LABEL_67:
      if (v110)
      {
        v58 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v58)
        {
          (*(*v58 + 8))(v58);
        }

        v59 = v112;
        v60 = vaddq_s64(v112[2], xmmword_273B93620);
        v112[2] = v60;
        v61 = v60.i64[0];
        v62 = v112->i64[1];
        v63 = v109;
        if (v60.i64[0] < 0x200uLL)
        {
LABEL_142:
          result = &v62[v61 >> 8];
          if (v59[1].i64[0] == v62)
          {
            goto LABEL_146;
          }
        }

        else
        {
          operator delete(*v62);
          v64 = v112->i64[1] + 8;
          v112->i64[1] = v64;
          v61 = v112[2].i64[0] - 256;
          v112[2].i64[0] = v61;
          result = (v64 + 8 * (v61 >> 8));
          if (v112[1].i64[0] == v64)
          {
            goto LABEL_146;
          }
        }

        goto LABEL_143;
      }

      goto LABEL_151;
    }

    v15 = &(*v10)[16 * v5];
  }

  v13 = v10;
  v16 = (&a3[-*a2] >> 4) + 32 * (a2 - v10);
  v17 = v16 == (v15 - v11) >> 4;
  v111 = v16 - ((v15 - v11) >> 4);
  if (!v111)
  {
    v3 = v12;
    v110 = v15;
    v109 = v16 == (v15 - v11) >> 4;
    v14 = (v12 - v11) >> 4;
    if (v14 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if (v16 < 1)
  {
    v65 = 255 - v16;
    v13 = &v10[-(v65 >> 8)];
    v11 = *v13;
    v3 = &(*v13)[16 * ~v65];
    if (v111 <= (v4 - 1) >> 1)
    {
LABEL_12:
      v110 = v15;
      v109 = v17;
      v14 = (v3 - v11) >> 4;
      if (v14 < 0)
      {
        goto LABEL_26;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v13 = &v10[v16 >> 8];
    v11 = *v13;
    v3 = &(*v13)[16 * v16];
    if (v111 <= (v4 - 1) >> 1)
    {
      goto LABEL_12;
    }
  }

  v66 = (v3 - v11) >> 4;
  if (v66 < 0)
  {
    v95 = 254 - v66;
    v96 = ~v95;
    v68 = &v13[-(v95 >> 8)];
    v69 = *v68;
    v70 = &(*v68)[16 * v96];
    if (v8 != v7)
    {
LABEL_76:
      v71 = &(*v9)[16 * v6];
      if (v68 != v9)
      {
        goto LABEL_77;
      }

LABEL_121:
      if (v71 == v70)
      {
        goto LABEL_135;
      }

      while (1)
      {
        v98 = (v11 - v3 + 4096) >> 4;
        if ((v71 - v70) >> 4 < v98)
        {
          v98 = (v71 - v70) >> 4;
        }

        if (v98)
        {
          v99 = &v70[16 * v98];
          do
          {
            v100 = *v70;
            v101 = *(v70 + 1);
            *(v70 + 1) = 0;
            result = *(v3 + 1);
            *v3 = v100;
            *(v3 + 1) = v101;
            if (result)
            {
              result = (*(result->i64[0] + 8))(result);
            }

            v70 += 16;
            v3 += 16;
          }

          while (v70 != v99);
          if (v99 == v71)
          {
LABEL_133:
            if (v3 == *v13 + 4096)
            {
              v3 = v13[1];
            }

            goto LABEL_135;
          }
        }

        else
        {
          v99 = v70;
        }

        v97 = v13[1];
        ++v13;
        v11 = v97;
        v70 = v99;
        v3 = v97;
      }
    }
  }

  else
  {
    v67 = v66 + 1;
    v68 = &v13[(v66 + 1) >> 8];
    v69 = *v68;
    v70 = &(*v68)[16 * v67];
    if (v8 != v7)
    {
      goto LABEL_76;
    }
  }

  v71 = 0;
  if (v68 == v9)
  {
    goto LABEL_121;
  }

LABEL_77:
  v72 = v69 + 4096;
  if (v69 + 4096 == v70)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v74 = (v11 - v3 + 4096) >> 4;
    if ((v72 - v70) >> 4 < v74)
    {
      v74 = (v72 - v70) >> 4;
    }

    if (!v74)
    {
      v75 = v70;
      goto LABEL_80;
    }

    v75 = &v70[16 * v74];
    do
    {
      v76 = *v70;
      v77 = *(v70 + 1);
      *(v70 + 1) = 0;
      result = *(v3 + 1);
      *v3 = v76;
      *(v3 + 1) = v77;
      if (result)
      {
        result = (*(result->i64[0] + 8))(result);
      }

      v70 += 16;
      v3 += 16;
    }

    while (v70 != v75);
    if (v75 == v72)
    {
      break;
    }

LABEL_80:
    v73 = v13[1];
    ++v13;
    v11 = v73;
    v70 = v75;
    v3 = v73;
  }

  v11 = *v13;
  if (v3 == *v13 + 4096)
  {
    v78 = v13[1];
    ++v13;
    v11 = v78;
    v3 = v78;
  }

LABEL_91:
  v79 = (v68 + 1);
  if (v68 + 1 == v9)
  {
    goto LABEL_107;
  }

  while (2)
  {
    while (2)
    {
      v80 = 0;
      v81 = *v79;
      while (2)
      {
        v83 = (v11 - v3 + 4096) >> 4;
        if ((4096 - v80) >> 4 < v83)
        {
          v83 = (4096 - v80) >> 4;
        }

        if (!v83)
        {
          v84 = v80;
LABEL_97:
          v82 = v13[1];
          ++v13;
          v11 = v82;
          v80 = v84;
          v3 = v82;
          continue;
        }

        break;
      }

      v84 = v80 + 16 * v83;
      v85 = (v81 + v80);
      do
      {
        v86 = *v85;
        v87 = v85[1];
        v85[1] = 0;
        result = *(v3 + 1);
        *v3 = v86;
        *(v3 + 1) = v87;
        if (result)
        {
          result = (*(result->i64[0] + 8))(result);
        }

        v85 += 2;
        v3 += 16;
      }

      while (v85 != (v81 + v84));
      if (v84 != 4096)
      {
        goto LABEL_97;
      }

      v11 = *v13;
      if (v3 == *v13 + 4096)
      {
        v88 = v13[1];
        ++v13;
        v11 = v88;
        v3 = v88;
        if (++v79 == v9)
        {
          goto LABEL_107;
        }

        continue;
      }

      break;
    }

    if (++v79 != v9)
    {
      continue;
    }

    break;
  }

LABEL_107:
  v89 = *v9;
  if (*v9 != v71)
  {
    while (1)
    {
      v91 = (v11 - v3 + 4096) >> 4;
      if ((v71 - v89) >> 4 < v91)
      {
        v91 = (v71 - v89) >> 4;
      }

      if (v91)
      {
        v92 = &v89[16 * v91];
        do
        {
          v93 = *v89;
          v94 = *(v89 + 1);
          *(v89 + 1) = 0;
          result = *(v3 + 1);
          *v3 = v93;
          *(v3 + 1) = v94;
          if (result)
          {
            result = (*(result->i64[0] + 8))(result);
          }

          v89 += 16;
          v3 += 16;
        }

        while (v89 != v92);
        if (v92 == v71)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v92 = v89;
      }

      v90 = v13[1];
      ++v13;
      v11 = v90;
      v89 = v92;
      v3 = v90;
    }
  }

LABEL_135:
  if (!v3)
  {
LABEL_151:
    __break(1u);
    return result;
  }

  v102 = *(v3 + 1);
  *(v3 + 1) = 0;
  v59 = v112;
  if (v102)
  {
    (*(*v102 + 8))(v102);
  }

  v62 = v112->i64[1];
  v103 = v112[1].i64[0];
  v61 = v112[2].u64[0];
  v104 = v112[2].i64[1];
  v112[2].i64[1] = v104 - 1;
  v105 = 32 * (v103 - v62) - 1;
  if (v103 == v62)
  {
    v105 = 0;
  }

  if (v105 - (v104 + v61) + 1 < 0x200)
  {
    v63 = 0;
    goto LABEL_142;
  }

  operator delete(*(v103 - 1));
  v63 = 0;
  v107 = v112->i64[1];
  v112[1].i64[0] -= 8;
  v61 = v112[2].u64[0];
  result = (v107 + 8 * (v61 >> 8));
  if (v112[1].i64[0] == v107)
  {
LABEL_146:
    v106 = 0;
    if (!v63)
    {
      goto LABEL_147;
    }

    return result;
  }

LABEL_143:
  v106 = result->i64[0] + 16 * v61;
  if (!v63)
  {
LABEL_147:
    v108 = v111 + ((v106 - result->i64[0]) >> 4);
    if (v108 < 1)
    {
      return (result - 8 * ((255 - v108) >> 8));
    }

    else
    {
      return (result + 8 * (v108 >> 8));
    }
  }

  return result;
}

uint64_t **std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)32768>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_21:
    operator new();
  }

  v3 = *a2;
  v4 = *(v2 + 13);
  if (v4 == v3)
  {
    return v2;
  }

  do
  {
    v7 = v3 - v4;
    v8 = v4 > v3;
    if (v4 > v3)
    {
      v7 = (v3 - v4) ^ 0x8000;
    }

    if (v3 <= v4)
    {
      LOWORD(v9) = v4 - v3;
    }

    else
    {
      LOWORD(v9) = (v4 - v3) ^ 0x8000;
    }

    v10 = v9;
    if (v9 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v9;
    }

    v11 = v10 <= 0x4000;
    if (v9 != 0x4000)
    {
      v8 = v11;
    }

    if (v8)
    {
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = v3 > v4;
      v13 = v7 <= 0x4000u;
      if (v9 != 0x4000)
      {
        v12 = v13;
      }

      if (!v12)
      {
        return v2;
      }

      v6 = v2[1];
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v4 = *(v6 + 13);
    v2 = v6;
  }

  while (v4 != v3);
  return v6;
}

uint64_t **std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)32768>,std::allocator<unsigned short>>::__erase_unique<unsigned short>(uint64_t **a1, unsigned __int16 *a2)
{
  v4 = a1 + 1;
  result = a1[1];
  if (result)
  {
    v5 = *a2;
    v6 = v4;
    v7 = result;
    do
    {
      while (1)
      {
        v8 = *(v7 + 13);
        if (v5 != v8)
        {
          break;
        }

        v6 = v7;
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_21;
        }
      }

      v9 = v8 - v5;
      if (*a2 > *(v7 + 13))
      {
        v9 = (v8 - v5) ^ 0x8000;
      }

      v10 = v5 - v8;
      if (*(v7 + 13) > *a2)
      {
        v10 ^= 0x8000u;
      }

      if (v10 >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      v12 = v10 <= 0x4000u;
      if (v11 == 0x4000)
      {
        v12 = *a2 > *(v7 + 13);
      }

      v13 = !v12;
      v14 = v12;
      if (v13)
      {
        v6 = v7;
      }

      v7 = v7[v14];
    }

    while (v7);
LABEL_21:
    if (v6 == v4)
    {
      return 0;
    }

    v15 = *(v6 + 13);
    if (v15 == v5)
    {
      goto LABEL_34;
    }

    v16 = v5 - v15;
    v17 = v15 - v5;
    v18 = v15 > v5;
    if (v15 > v5)
    {
      v16 = (v5 - v15) ^ 0x8000;
    }

    v19 = v5 > v15;
    v20 = v16;
    v21 = v17 ^ 0x8000;
    if (!v19)
    {
      v21 = v17;
    }

    if (v21 < v16)
    {
      v20 = v21;
    }

    v22 = v21 <= 0x4000u;
    if (v20 == 0x4000 ? v18 : v22)
    {
      return 0;
    }

    else
    {
LABEL_34:
      v24 = v6[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        v26 = v6;
        do
        {
          v25 = v26[2];
          v13 = *v25 == v26;
          v26 = v25;
        }

        while (!v13);
      }

      if (*a1 == v6)
      {
        *a1 = v25;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(result, v6);
      operator delete(v6);
      return 1;
    }
  }

  return result;
}

void webrtc::RtpVp9RefFinder::ManageFrame(webrtc::RtpVp9RefFinder *this@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t *a7@<X8>)
{
  v13 = *a2;
  if (*(*a2 + 4448) != 2)
  {
LABEL_88:
    v89 = std::__throw_bad_variant_access[abi:sn200100]();
    v95 = 8 * v10 + v89;
    v96 = v91;
    if ((v95 - v93) < 0x20)
    {
      goto LABEL_111;
    }

    v97 = (v94 >> 3) + 1;
    v98 = v97 & 0x3FFFFFFFFFFFFFFCLL;
    v96 = &v91[v98];
    v99 = &v93[v98];
    v100 = (v93 + 2);
    v101 = (v95 + 16);
    v102 = v97 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v103 = *v100;
      *(v101 - 1) = *(v100 - 1);
      *v101 = v103;
      v100 += 2;
      v101 += 2;
      v102 -= 4;
    }

    while (v102);
    v93 = v99;
    if (v97 != (v97 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_111:
      do
      {
        v104 = *v93++;
        *v96++ = v104;
      }

      while (v96 != v90);
    }

    v105 = *v7;
    *v7 = v89;
    *(v7 + 1) = v91;
    *(v7 + 2) = v90;
    *(v7 + 3) = v92;
    if (v105)
    {
      operator delete(v105);
      v90 = *(v7 + 2);
    }

    if (v90)
    {
      *v90 = v9;
      v111 = v9;
      *(v7 + 2) = v90;
      std::__split_buffer<std::unique_ptr<webrtc::RtpFrameObject> *,std::allocator<std::unique_ptr<webrtc::RtpFrameObject> *>>::emplace_front<std::unique_ptr<webrtc::RtpFrameObject> *>(v7, &v111);
      if (*(v7 + 2) - *(v7 + 1) == 8)
      {
        v106 = 128;
LABEL_100:
        *(v7 + 4) = v106;
        goto LABEL_101;
      }

LABEL_99:
      v106 = *(v7 + 4) + 256;
      goto LABEL_100;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v7 = this;
  v14 = *(v13 + 2820);
  v15 = *a2;
  if (v14 != 255)
  {
    *(v13 + 200) = v14;
    *(v13 + 204) = 1;
    v15 = *a2;
  }

  v16 = *(v13 + 2821);
  *(v15 + 196) = 1;
  *(v15 + 192) = v16;
  v17 = *a2;
  *(*a2 + 2496) = *(v13 + 2814) & 0x7FFF;
  if (*(v13 + 2820) > 4u || *(v13 + 2821) > 4u)
  {
    goto LABEL_9;
  }

  if (*(v13 + 2809) == 1)
  {
    v19 = *(v13 + 2825);
    if (v19 <= 5)
    {
      v20 = a2;
      *(v17 + 44) = v19;
      if (v19)
      {
        v21 = *(v17 + 312);
        v22 = *(v13 + 2826);
        v23 = v21 >= v22;
        v24 = v21 - v22;
        if (!v23)
        {
          v24 += 0x8000;
        }

        *(v17 + 45) = v24;
        if (v19 != 1)
        {
          v25 = *(v17 + 312);
          v26 = *(v13 + 2827);
          v23 = v25 >= v26;
          v27 = v25 - v26;
          if (!v23)
          {
            v27 += 0x8000;
          }

          *(v17 + 46) = v27;
          if (v19 != 2)
          {
            v28 = *(v17 + 312);
            v29 = *(v13 + 2828);
            v23 = v28 >= v29;
            v30 = v28 - v29;
            if (!v23)
            {
              v30 += 0x8000;
            }

            *(v17 + 47) = v30;
            if (v19 != 3)
            {
              v31 = *(v17 + 312);
              v32 = *(v13 + 2829);
              v23 = v31 >= v32;
              v33 = v31 - v32;
              if (!v23)
              {
                v33 += 0x8000;
              }

              *(v17 + 48) = v33;
              if (v19 != 4)
              {
                v34 = *(v17 + 312);
                v35 = *(v13 + 2830);
                v23 = v34 >= v35;
                v36 = v34 - v35;
                if (!v23)
                {
                  v36 += 0x8000;
                }

                *(v17 + 49) = v36;
              }
            }
          }
        }
      }

      webrtc::RtpVp9RefFinder::FlattenFrameIdAndRefs(this, v17, *(v13 + 2823));
      goto LABEL_43;
    }

    goto LABEL_9;
  }

  v41 = *(v13 + 2818);
  if (v41 == 0xFFFF)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_vp9_ref_finder.cc");
    }

    goto LABEL_9;
  }

  if (*(this + 77449))
  {
    v42 = *(this + 77448);
    v43 = v41 - v42;
    v44 = (v41 - v42);
    v45 = (v41 - v42);
    v46 = *(v13 + 2818);
    v47 = v42 < v41;
    if (*(v13 + 2818) - v42 != 128)
    {
      v47 = v44 >= 0;
    }

    if (v47)
    {
      v48 = v45;
    }

    else
    {
      v48 = v43 | 0xFFFFFFFFFFFFFF00;
    }

    v8 = v48 + *(this + 9680);
  }

  else
  {
    v46 = *(v13 + 2818);
    v8 = *(v13 + 2818);
  }

  *(this + 9680) = v8;
  *(this + 38724) = v46 | 0x100;
  v20 = a2;
  v56 = webrtc::RtpVp9RefFinder::ManageFrameGof(this, *a2, v13 + 2808, v8, a3, a4, a5, a6);
  if (!v56)
  {
    v70 = *(v7 + 5);
    v71 = v20;
    if (v70 < 0x65)
    {
LABEL_76:
      v11 = *v71;
      *v71 = 0;
      v81 = *(v7 + 4);
      if (v81)
      {
LABEL_102:
        v107 = *(v7 + 1);
        v108 = (v107 + 8 * (v81 >> 8));
        if (*(v7 + 2) == v107)
        {
          v109 = 0;
        }

        else
        {
          v109 = *v108 + 16 * v81;
        }

        if (v109 == *v108)
        {
          v109 = *(v108 - 1) + 4096;
        }

        *(v109 - 16) = v8;
        *(v109 - 8) = v11;
        v110 = *(v7 + 5) + 1;
        *(v7 + 4) = v81 - 1;
        *(v7 + 5) = v110;
LABEL_9:
        *a7 = 0;
        return;
      }

      v83 = *(v7 + 1);
      v82 = *(v7 + 2);
      v84 = 32 * (v82 - v83) - 1;
      v85 = v82 - v83;
      if (v82 == v83)
      {
        v84 = 0;
      }

      if ((v84 - *(v7 + 5)) < 0x100)
      {
        v86 = *(v7 + 3);
        v87 = v86 - *v7;
        if (v85 < v87)
        {
          operator new();
        }

        if (v86 == *v7)
        {
          v88 = 1;
        }

        else
        {
          v88 = v87 >> 2;
        }

        if (!(v88 >> 61))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      *(v7 + 4) = 256;
      v111 = *(v82 - 8);
      *(v7 + 2) = v82 - 8;
      std::__split_buffer<std::unique_ptr<webrtc::RtpFrameObject> *,std::allocator<std::unique_ptr<webrtc::RtpFrameObject> *>>::emplace_front<std::unique_ptr<webrtc::RtpFrameObject> *>(v7, &v111);
LABEL_101:
      v81 = *(v7 + 4);
      goto LABEL_102;
    }

    v72 = *(v7 + 4);
    v73 = v70 - 1;
    v74 = v72 + v70 - 1;
    v75 = *(v7 + 1);
    v76 = *(v75 + ((v74 >> 5) & 0x7FFFFFFFFFFFFF8));
    if (v76)
    {
      v77 = v76 + 16 * v74;
      v78 = *(v77 + 8);
      *(v77 + 8) = 0;
      if (v78)
      {
        (*(*v78 + 8))(v78);
        v71 = v20;
        v75 = *(v7 + 1);
        v72 = *(v7 + 4);
        v70 = *(v7 + 5);
        v73 = v70 - 1;
      }

      v79 = *(v7 + 2);
      *(v7 + 5) = v73;
      if (v79 == v75)
      {
        v80 = 0;
      }

      else
      {
        v80 = 32 * (v79 - v75) - 1;
      }

      if (v80 - (v72 + v70) + 1 >= 0x200)
      {
        operator delete(*(v79 - 8));
        v71 = v20;
        *(v7 + 2) -= 8;
      }

      goto LABEL_76;
    }

    goto LABEL_98;
  }

  *a7 = 0;
  if (v56 == 1)
  {
LABEL_43:
    a7[1] = *v20;
    v10 = a7 + 1;
    *v20 = 0;
    *a7 = 2;
    v57 = *(v7 + 1);
    v58 = *(v7 + 2);
    do
    {
      v59 = *(v7 + 4);
      v8 = v57 + 8 * (v59 >> 8);
      if (v58 == v57)
      {
        v9 = 0;
      }

      else
      {
        v9 = (*v8 + 16 * v59);
      }

      v11 = 0;
      while (v58 != v57)
      {
        v61 = *(v7 + 5) + *(v7 + 4);
        if (v9 == (*(v57 + ((v61 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v61))
        {
          goto LABEL_44;
        }

LABEL_56:
        v63 = v9 + 1;
        v62 = v9[1];
        if (*(v62 + 4448) != 2)
        {
          goto LABEL_88;
        }

        v64 = webrtc::RtpVp9RefFinder::ManageFrameGof(v7, v62, v62 + 2808, *v9, v37, v38, v39, v40);
        if (v64 == 2)
        {
          goto LABEL_50;
        }

        if (v64 == 1)
        {
          v65 = *a7;
          v66 = a7[1];
          if (*a7)
          {
            v67 = a7[2];
          }

          else
          {
            v66 = a7 + 1;
            v67 = 3;
          }

          if (v65 >> 1 == v67)
          {
            absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::EmplaceBackSlow<std::unique_ptr<webrtc::RtpFrameObject>>(a7);
          }

          if (!v66)
          {
            goto LABEL_98;
          }

          v68 = *v63;
          *v63 = 0;
          v66[v65 >> 1] = v68;
          *a7 = v65 + 2;
          v11 = 1;
LABEL_50:
          v8 = std::deque<webrtc::RtpVp8RefFinder::UnwrappedTl0Frame>::erase(v7, v8, v9);
          v9 = v60;
          goto LABEL_51;
        }

        v9 += 2;
        if ((v9 - *v8) == 4096)
        {
          v69 = *(v8 + 8);
          v8 += 8;
          v9 = v69;
        }

LABEL_51:
        v57 = *(v7 + 1);
        v58 = *(v7 + 2);
      }

      if (v9)
      {
        goto LABEL_56;
      }

LABEL_44:
      ;
    }

    while ((v11 & 1) != 0);
  }
}

uint64_t webrtc::RtpVp9RefFinder::ManageFrameGof(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v296 = *MEMORY[0x277D85DE8];
  v12 = a1 + 73728;
  if (*(a3 + 4) != 1)
  {
    if (*(a2 + 2664) == 3)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_vp9_ref_finder.cc");
        return 2;
      }

      return 2;
    }

    if (*(a3 + 12))
    {
      v23 = 0;
    }

    else
    {
      v23 = *(a3 + 15) ^ 1;
    }

    v24 = *(a1 + 77264);
    if (!v24)
    {
      return 0;
    }

    v25 = a4 - v23;
    v26 = a1 + 77264;
    v27 = *(a1 + 77264);
    do
    {
      if (*(v27 + 32) >= v25)
      {
        v26 = v27;
      }

      v27 = *(v27 + 8 * (*(v27 + 32) < v25));
    }

    while (v27);
    if (v26 == a1 + 77264 || v25 < *(v26 + 32))
    {
      return 0;
    }

    v28 = v26 + 40;
    if (!*(a3 + 12))
    {
      v29 = *(a1 + 77264);
      while (1)
      {
        while (1)
        {
          v30 = v29;
          v31 = v29[4];
          if (v31 <= a4)
          {
            break;
          }

          v29 = *v30;
          if (!*v30)
          {
            goto LABEL_57;
          }
        }

        if (v31 >= a4)
        {
          break;
        }

        v29 = v30[1];
        if (!v29)
        {
LABEL_57:
          operator new();
        }
      }

      v28 = (v30 + 5);
    }

    goto LABEL_58;
  }

  if (*(a3 + 12))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_vp9_ref_finder.cc");
    }
  }

  else
  {
    v32 = *(a3 + 88);
    if (v32 > 0xFF)
    {
      return 2;
    }

    if (v32)
    {
      v33 = (a3 + 606);
      v34 = *(a3 + 88);
      do
      {
        v35 = *v33++;
        if (v35 > 3)
        {
          return 2;
        }
      }

      while (--v34);
    }

    v249 = *(a3 + 96);
    v36 = *(a3 + 305);
    v293 = *(a3 + 289);
    v294 = v36;
    v295[0] = *(a3 + 321);
    *(v295 + 14) = *(a3 + 335);
    v37 = *(a3 + 241);
    v289 = *(a3 + 225);
    v290 = v37;
    v38 = *(a3 + 273);
    v291 = *(a3 + 257);
    v292 = v38;
    v39 = *(a3 + 177);
    v285 = *(a3 + 161);
    v286 = v39;
    v40 = *(a3 + 209);
    v287 = *(a3 + 193);
    v288 = v40;
    v41 = *(a3 + 113);
    v281 = *(a3 + 97);
    v282 = v41;
    v42 = *(a3 + 145);
    v283 = *(a3 + 129);
    v284 = v42;
    v247 = *(a3 + 351);
    v43 = *(a3 + 560);
    v278 = *(a3 + 544);
    v279 = v43;
    v280[0] = *(a3 + 576);
    *(v280 + 14) = *(a3 + 590);
    v44 = *(a3 + 496);
    v274 = *(a3 + 480);
    v275 = v44;
    v45 = *(a3 + 528);
    v276 = *(a3 + 512);
    v277 = v45;
    v46 = *(a3 + 432);
    v270 = *(a3 + 416);
    v271 = v46;
    v47 = *(a3 + 464);
    v272 = *(a3 + 448);
    v273 = v47;
    v48 = *(a3 + 368);
    v266 = *(a3 + 352);
    v267 = v48;
    v49 = *(a3 + 400);
    v268 = *(a3 + 384);
    v269 = v49;
    v248 = *(a3 + 606);
    v50 = *(a3 + 815);
    v263 = *(a3 + 799);
    v264 = v50;
    v265[0] = *(a3 + 831);
    *(v265 + 14) = *(a3 + 845);
    v51 = *(a3 + 751);
    v259 = *(a3 + 735);
    v260 = v51;
    v52 = *(a3 + 783);
    v261 = *(a3 + 767);
    v262 = v52;
    v53 = *(a3 + 687);
    v255 = *(a3 + 671);
    v256 = v53;
    v54 = *(a3 + 719);
    v257 = *(a3 + 703);
    v258 = v54;
    v55 = *(a3 + 623);
    v251 = *(a3 + 607);
    v252 = v55;
    v56 = *(a3 + 655);
    v253 = *(a3 + 639);
    v254 = v56;
    v57 = *(a3 + 861);
    memcpy(__dst, (a3 + 862), sizeof(__dst));
    if (v32)
    {
      v59 = v248;
      v58 = v249;
      v60 = v57;
      v61 = v247;
    }

    else
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v62, v63, v64, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_vp9_ref_finder.cc");
      }

      v58 = 0;
      v32 = 1;
      v61 = 1;
      v59 = 1;
      v60 = 1;
    }

    v69 = *(a1 + 48);
    if (v69 < 0x31)
    {
      v70 = v69 + 1;
    }

    else
    {
      v70 = v69 - 49;
    }

    *(a1 + 48) = v70;
    if (v70 >= 0x32uLL)
    {
      __break(1u);
    }

    v71 = a1 + 1544 * v70;
    *(v71 + 56) = v32;
    v71 += 56;
    *(v71 + 8) = v58;
    v72 = v294;
    *(v71 + 201) = v293;
    *(v71 + 217) = v72;
    *(v71 + 233) = v295[0];
    *(v71 + 247) = *(v295 + 14);
    v73 = v290;
    *(v71 + 137) = v289;
    *(v71 + 153) = v73;
    v74 = v292;
    *(v71 + 169) = v291;
    *(v71 + 185) = v74;
    v75 = v286;
    *(v71 + 73) = v285;
    *(v71 + 89) = v75;
    v76 = v288;
    *(v71 + 105) = v287;
    *(v71 + 121) = v76;
    v77 = v282;
    *(v71 + 9) = v281;
    *(v71 + 25) = v77;
    v78 = v284;
    *(v71 + 41) = v283;
    *(v71 + 57) = v78;
    *(v71 + 263) = v61;
    v79 = v279;
    *(v71 + 456) = v278;
    *(v71 + 472) = v79;
    *(v71 + 488) = v280[0];
    *(v71 + 502) = *(v280 + 14);
    v80 = v275;
    *(v71 + 392) = v274;
    *(v71 + 408) = v80;
    v81 = v277;
    *(v71 + 424) = v276;
    *(v71 + 440) = v81;
    v82 = v271;
    *(v71 + 328) = v270;
    *(v71 + 344) = v82;
    v83 = v273;
    *(v71 + 360) = v272;
    *(v71 + 376) = v83;
    v84 = v267;
    *(v71 + 264) = v266;
    *(v71 + 280) = v84;
    v85 = v269;
    *(v71 + 296) = v268;
    *(v71 + 312) = v85;
    *(v71 + 518) = v59;
    v86 = v264;
    *(v71 + 711) = v263;
    *(v71 + 727) = v86;
    *(v71 + 743) = v265[0];
    *(v71 + 757) = *(v265 + 14);
    v87 = v260;
    *(v71 + 647) = v259;
    *(v71 + 663) = v87;
    v88 = v262;
    *(v71 + 679) = v261;
    *(v71 + 695) = v88;
    v89 = v256;
    *(v71 + 583) = v255;
    *(v71 + 599) = v89;
    v90 = v258;
    *(v71 + 615) = v257;
    *(v71 + 631) = v90;
    v91 = v252;
    *(v71 + 519) = v251;
    *(v71 + 535) = v91;
    v92 = v254;
    *(v71 + 551) = v253;
    *(v71 + 567) = v92;
    *(v71 + 773) = v60;
    memcpy((v71 + 774), __dst, 0x302uLL);
    *(v71 + 1538) = *(a2 + 2496);
    v93 = *(v12 + 3536);
    if (!v93)
    {
LABEL_47:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v94 = v93;
        v95 = v93[4];
        if (v95 <= a4)
        {
          break;
        }

        v93 = *v94;
        if (!*v94)
        {
          goto LABEL_47;
        }
      }

      if (v95 >= a4)
      {
        break;
      }

      v93 = v94[1];
      if (!v93)
      {
        goto LABEL_47;
      }
    }
  }

  v24 = *(v12 + 3536);
  if (!v24)
  {
    return 0;
  }

  v96 = v12 + 3536;
  v97 = *(v12 + 3536);
  do
  {
    if (*(v97 + 32) >= a4)
    {
      v96 = v97;
    }

    v97 = *(v97 + 8 * (*(v97 + 32) < a4));
  }

  while (v97);
  if (v96 == v12 + 3536 || *(v96 + 32) > a4)
  {
    return 0;
  }

  v28 = v96 + 40;
  if (*(a2 + 2664) != 3)
  {
LABEL_58:
    v98 = (v12 + 3536);
    v99 = a4 - 50;
    do
    {
      if (v24[4] >= v99)
      {
        v98 = v24;
      }

      v24 = v24[v24[4] < v99];
    }

    while (v24);
    v100 = *(v12 + 3528);
    if (v100 != v98)
    {
      do
      {
        v114 = v100[1];
        v115 = v100;
        if (v114)
        {
          do
          {
            v116 = v114;
            v114 = *v114;
          }

          while (v114);
        }

        else
        {
          do
          {
            v116 = v115[2];
            v118 = *v116 == v115;
            v115 = v116;
          }

          while (!v118);
        }

        if (*(v12 + 3528) == v100)
        {
          *(v12 + 3528) = v116;
        }

        --*(v12 + 3544);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(v12 + 3536), v100);
        operator delete(v100);
        v100 = v116;
      }

      while (v116 != v98);
    }

    webrtc::RtpVp9RefFinder::FrameReceivedVp9(a1, *(a2 + 2496), v28, a4, a5, a6, a7, a8);
    v101 = *(a2 + 2496);
    v102 = *v28;
    v103 = *(*v28 + 1538);
    if (v103 <= v101)
    {
      v104 = v101 - v103;
    }

    else
    {
      v104 = (v101 - v103) ^ 0x8000;
    }

    v105 = v104 % *v102;
    v106 = *(v102 + v105 + 8);
    if (v106 >= 5)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v107, v108, v109, v110, v111, v112, v113, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_vp9_ref_finder.cc");
        return 0;
      }

      return 0;
    }

    v117 = *(v102 + v105 + 518);
    if (*(v102 + v105 + 518))
    {
      v118 = v106 == 0;
    }

    else
    {
      v118 = 1;
    }

    if (!v118)
    {
      v119 = 0;
      v120 = (v12 + 3608);
      v121 = (v12 + 3632);
      v122 = (v12 + 3656);
      v123 = v102 + 3 * v105 + 773;
      do
      {
        v124 = *(v123 + v119);
        v125 = *(a2 + 2496) >= v124 ? v101 - v124 : (v101 - v124) ^ 0x8000;
        if (*(v12 + 3584))
        {
          v126 = v12 + 3584;
          v127 = *(v12 + 3584);
          do
          {
            while (1)
            {
              v137 = *(v127 + 13);
              if (v137 != v125)
              {
                break;
              }

              v126 = v127;
              v127 = *v127;
              if (!v127)
              {
                goto LABEL_108;
              }
            }

            v128 = *(v127 + 13);
            LOWORD(v129) = v137 - v125;
            v130 = v125 - v137;
            v131 = v128 >= v125;
            v132 = v128 > v125;
            v133 = v128 < v125;
            if (!v131)
            {
              LOWORD(v129) = v129 ^ 0x8000;
            }

            v129 = v129;
            if (v132)
            {
              v130 ^= 0x8000u;
            }

            if (v130 < v129)
            {
              v129 = v130;
            }

            v134 = v130 <= 0x4000u;
            if (v129 == 0x4000)
            {
              v134 = v133;
            }

            v135 = !v134;
            v136 = v134;
            if (v135)
            {
              v126 = v127;
            }

            v127 = v127[v136];
          }

          while (v127);
LABEL_108:
          if (v126 != v12 + 3584)
          {
            v138 = *(v126 + 26);
            if (v138 != v101)
            {
              LOWORD(v139) = v138 - v101;
              v140 = v101 - v138;
              v131 = v138 >= v101;
              v141 = v138 > v101;
              v142 = v138 < v101;
              if (!v131)
              {
                LOWORD(v139) = v139 ^ 0x8000;
              }

              v139 = v139;
              if (v141)
              {
                v140 ^= 0x8000u;
              }

              if (v140 < v139)
              {
                v139 = v140;
              }

              v143 = v140 <= 0x4000u;
              if (v139 != 0x4000)
              {
                v142 = v143;
              }

              if (v142)
              {
                return 0;
              }
            }
          }
        }

        if (v106 != 1)
        {
          v144 = *v120;
          if (*v120)
          {
            v145 = v12 + 3608;
            do
            {
              while (1)
              {
                v154 = *(v144 + 13);
                if (v154 != v125)
                {
                  break;
                }

                v145 = v144;
                v144 = *v144;
                if (!v144)
                {
                  goto LABEL_139;
                }
              }

              v146 = *(v144 + 13);
              LOWORD(v147) = v154 - v125;
              v148 = v125 - v154;
              v131 = v146 >= v125;
              v149 = v146 > v125;
              v150 = v146 < v125;
              if (!v131)
              {
                LOWORD(v147) = v147 ^ 0x8000;
              }

              v147 = v147;
              if (v149)
              {
                v148 ^= 0x8000u;
              }

              if (v148 < v147)
              {
                v147 = v148;
              }

              v151 = v148 <= 0x4000u;
              if (v147 == 0x4000)
              {
                v151 = v150;
              }

              v152 = !v151;
              v153 = v151;
              if (v152)
              {
                v145 = v144;
              }

              v144 = v144[v153];
            }

            while (v144);
LABEL_139:
            if (v145 != v120)
            {
              v155 = *(v145 + 26);
              if (v155 != v101)
              {
                LOWORD(v156) = v155 - v101;
                v157 = v101 - v155;
                v131 = v155 >= v101;
                v158 = v155 > v101;
                v159 = v155 < v101;
                if (!v131)
                {
                  LOWORD(v156) = v156 ^ 0x8000;
                }

                v156 = v156;
                if (v158)
                {
                  v157 ^= 0x8000u;
                }

                if (v157 < v156)
                {
                  v156 = v157;
                }

                v160 = v157 <= 0x4000u;
                if (v156 != 0x4000)
                {
                  v159 = v160;
                }

                if (v159)
                {
                  return 0;
                }
              }
            }
          }

          if (v106 != 2)
          {
            v161 = *v121;
            if (*v121)
            {
              v162 = v12 + 3632;
              do
              {
                while (1)
                {
                  v171 = *(v161 + 13);
                  if (v171 != v125)
                  {
                    break;
                  }

                  v162 = v161;
                  v161 = *v161;
                  if (!v161)
                  {
                    goto LABEL_170;
                  }
                }

                v163 = *(v161 + 13);
                LOWORD(v164) = v171 - v125;
                v165 = v125 - v171;
                v131 = v163 >= v125;
                v166 = v163 > v125;
                v167 = v163 < v125;
                if (!v131)
                {
                  LOWORD(v164) = v164 ^ 0x8000;
                }

                v164 = v164;
                if (v166)
                {
                  v165 ^= 0x8000u;
                }

                if (v165 < v164)
                {
                  v164 = v165;
                }

                v168 = v165 <= 0x4000u;
                if (v164 == 0x4000)
                {
                  v168 = v167;
                }

                v169 = !v168;
                v170 = v168;
                if (v169)
                {
                  v162 = v161;
                }

                v161 = v161[v170];
              }

              while (v161);
LABEL_170:
              if (v162 != v121)
              {
                v172 = *(v162 + 26);
                if (v172 != v101)
                {
                  LOWORD(v173) = v172 - v101;
                  v174 = v101 - v172;
                  v131 = v172 >= v101;
                  v175 = v172 > v101;
                  v176 = v172 < v101;
                  if (!v131)
                  {
                    LOWORD(v173) = v173 ^ 0x8000;
                  }

                  v173 = v173;
                  if (v175)
                  {
                    v174 ^= 0x8000u;
                  }

                  if (v174 < v173)
                  {
                    v173 = v174;
                  }

                  v177 = v174 <= 0x4000u;
                  if (v173 != 0x4000)
                  {
                    v176 = v177;
                  }

                  if (v176)
                  {
                    return 0;
                  }
                }
              }
            }

            if (v106 != 3)
            {
              v178 = *v122;
              if (*v122)
              {
                v179 = v12 + 3656;
                do
                {
                  while (1)
                  {
                    v188 = *(v178 + 13);
                    if (v188 != v125)
                    {
                      break;
                    }

                    v179 = v178;
                    v178 = *v178;
                    if (!v178)
                    {
                      goto LABEL_201;
                    }
                  }

                  v180 = *(v178 + 13);
                  LOWORD(v181) = v188 - v125;
                  v182 = v125 - v188;
                  v131 = v180 >= v125;
                  v183 = v180 > v125;
                  v184 = v180 < v125;
                  if (!v131)
                  {
                    LOWORD(v181) = v181 ^ 0x8000;
                  }

                  v181 = v181;
                  if (v183)
                  {
                    v182 ^= 0x8000u;
                  }

                  if (v182 < v181)
                  {
                    v181 = v182;
                  }

                  v185 = v182 <= 0x4000u;
                  if (v181 == 0x4000)
                  {
                    v185 = v184;
                  }

                  v186 = !v185;
                  v187 = v185;
                  if (v186)
                  {
                    v179 = v178;
                  }

                  v178 = v178[v187];
                }

                while (v178);
LABEL_201:
                if (v179 != v122)
                {
                  v189 = *(v179 + 26);
                  if (v189 != v101)
                  {
                    LOWORD(v190) = v189 - v101;
                    v191 = v101 - v189;
                    v131 = v189 >= v101;
                    v192 = v189 > v101;
                    v193 = v189 < v101;
                    if (!v131)
                    {
                      LOWORD(v190) = v190 ^ 0x8000;
                    }

                    v190 = v190;
                    if (v192)
                    {
                      v191 ^= 0x8000u;
                    }

                    if (v191 < v190)
                    {
                      v190 = v191;
                    }

                    v194 = v191 <= 0x4000u;
                    if (v190 != 0x4000)
                    {
                      v193 = v194;
                    }

                    if (v193)
                    {
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      while (++v119 != v117);
    }

    if (*(a3 + 14) == 1)
    {
      operator new();
    }

    v195 = *(a2 + 2496);
    if (v195 >= 0x32)
    {
      v196 = -50;
    }

    else
    {
      v196 = 32718;
    }

    v197 = (v12 + 3560);
    v198 = *(v12 + 3560);
    v199 = (v12 + 3560);
    if (v198)
    {
      v200 = v196 + v195;
      v199 = (v12 + 3560);
      do
      {
        while (1)
        {
          v209 = *(v198 + 13);
          if (v209 != v200)
          {
            break;
          }

          v199 = v198;
          v198 = *v198;
          if (!v198)
          {
            goto LABEL_235;
          }
        }

        v201 = *(v198 + 13);
        LOWORD(v202) = v209 - v200;
        v203 = v200 - v209;
        v131 = v201 >= v200;
        v204 = v201 > v200;
        v205 = v201 < v200;
        if (!v131)
        {
          LOWORD(v202) = v202 ^ 0x8000;
        }

        v202 = v202;
        if (v204)
        {
          v203 ^= 0x8000u;
        }

        if (v203 < v202)
        {
          v202 = v203;
        }

        v206 = v203 <= 0x4000u;
        if (v202 == 0x4000)
        {
          v206 = v205;
        }

        v207 = !v206;
        v208 = v206;
        if (v207)
        {
          v199 = v198;
        }

        v198 = v198[v208];
      }

      while (v198);
    }

LABEL_235:
    v210 = *(v12 + 3552);
    if (v210 != v199)
    {
      do
      {
        v221 = v210[1];
        v222 = v210;
        if (v221)
        {
          do
          {
            v223 = v221;
            v221 = *v221;
          }

          while (v221);
        }

        else
        {
          do
          {
            v223 = v222[2];
            v118 = *v223 == v222;
            v222 = v223;
          }

          while (!v118);
        }

        if (*(v12 + 3552) == v210)
        {
          *(v12 + 3552) = v223;
        }

        --*(v12 + 3568);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(v12 + 3560), v210);
        operator delete(v210);
        v210 = v223;
      }

      while (v223 != v199);
    }

    if (*a3 != 1)
    {
      *(a2 + 352) = 0;
      goto LABEL_252;
    }

    v211 = *v28;
    v212 = *(*v28 + 1538);
    v213 = *(a2 + 2496);
    if (v212 <= v213)
    {
      v214 = v213 - v212;
    }

    else
    {
      v214 = (v213 - v212) ^ 0x8000;
    }

    v215 = v214 % *v211;
    v216 = *(v211 + v215 + 518);
    if (v216 <= 5)
    {
      *(a2 + 352) = v216;
      if (v216)
      {
        v217 = 0;
        v218 = *(a3 + 12);
        v219 = *v197;
        v220 = v211 + 3 * v215 + 773;
        do
        {
          v224 = *(v220 + v217);
          v131 = v213 >= v224;
          v225 = v213 - v224;
          if (v131)
          {
            v226 = v225;
          }

          else
          {
            v226 = v225 + 0x8000;
          }

          *(a2 + 360 + 8 * v217) = v226;
          v213 = *(a2 + 2496);
          if (v219)
          {
            v227 = (v12 + 3560);
            v228 = v219;
            do
            {
              v229 = *(v228 + 26);
              LOWORD(v230) = v226 - v229;
              v231 = v229 - v226;
              v132 = v229 > v226;
              v232 = v132;
              if (v132)
              {
                LOWORD(v230) = (v226 - v229) ^ 0x8000;
              }

              v230 = v230;
              if (v229 < v226)
              {
                v231 ^= 0x8000u;
              }

              if (v231 < v230)
              {
                v230 = v231;
              }

              v233 = v231 <= 0x4000u;
              if (v230 != 0x4000)
              {
                v232 = v233;
              }

              v234 = v232 == 0;
              if (v232)
              {
                v235 = 0;
              }

              else
              {
                v235 = 8;
              }

              v236 = (v228 + v235);
              if (v234)
              {
                v237 = v227;
              }

              else
              {
                v237 = v228;
              }

              v238 = (v228 + 8);
              if (v229 != v226)
              {
                v238 = v236;
                v227 = v237;
              }

              v228 = *v238;
            }

            while (v228);
            if (v227 != v197)
            {
              do
              {
                v239 = *(v227 + 13);
                if (v239 == v213)
                {
                  break;
                }

                LOWORD(v240) = v239 - v213;
                v241 = v213 - v239;
                v131 = v239 >= v213;
                v242 = v239 > v213;
                v243 = v239 < v213;
                if (!v131)
                {
                  LOWORD(v240) = v240 ^ 0x8000;
                }

                v240 = v240;
                if (v242)
                {
                  v241 ^= 0x8000u;
                }

                if (v241 < v240)
                {
                  v240 = v241;
                }

                v244 = v241 <= 0x4000u;
                if (v240 != 0x4000)
                {
                  v243 = v244;
                }

                if (!v243)
                {
                  break;
                }

                if (*(v227 + 28) < v218)
                {
                  *(a2 + 352) = --v216;
                  break;
                }

                v245 = v227[1];
                if (v245)
                {
                  do
                  {
                    v246 = v245;
                    v245 = *v245;
                  }

                  while (v245);
                }

                else
                {
                  do
                  {
                    v246 = v227[2];
                    v118 = *v246 == v227;
                    v227 = v246;
                  }

                  while (!v118);
                }

                v227 = v246;
              }

              while (v246 != v197);
            }
          }

          ++v217;
        }

        while (v217 < v216);
      }

      goto LABEL_252;
    }

    return 2;
  }

  *(a2 + 352) = 0;
  webrtc::RtpVp9RefFinder::FrameReceivedVp9(a1, *(a2 + 2496), v28, a4, a5, a6, a7, a8);
LABEL_252:
  webrtc::RtpVp9RefFinder::FlattenFrameIdAndRefs(a1, a2, *(a3 + 15));
  return 1;
}

uint64_t webrtc::RtpVp9RefFinder::FlattenFrameIdAndRefs(uint64_t this, webrtc::RtpFrameObject *a2, char a3)
{
  if (*(a2 + 44))
  {
    v3 = (this + 77424);
    v4 = (this + 77432);
    v5 = (this + 77434);
    LODWORD(v6) = *(a2 + 180);
    v7 = *(a2 + 180);
    if (*(this + 77434))
    {
      v8 = *v4;
      v9 = v6 - v8;
      v10 = (v6 - v8) ^ 0x8000;
      v11 = v8 >= v6;
      v12 = v8 - v6;
      if (v12 != 0 && v11)
      {
        v9 = v10;
      }

      v13 = !v11;
      if (!v11)
      {
        LOWORD(v12) = v12 ^ 0x8000;
      }

      v12 = v12;
      if (v9 < v12)
      {
        v12 = v9;
      }

      if (v12 == 0x4000)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9 <= 0x4000u;
      }

      if (v14)
      {
        v15 = v9;
      }

      else
      {
        v15 = v9 - 0x8000;
      }

      v7 = v15 + *v3;
    }

    *v3 = v7;
    *v4 = v6;
    *v5 = 1;
    v16 = *(a2 + 24);
    if ((v16 & 0x100000000) == 0)
    {
      goto LABEL_65;
    }

    *(a2 + 45) = 5 * v7 + v16;
    if (*(a2 + 44) >= 2uLL)
    {
      v17 = (a2 + 368);
      v18 = 1;
      while (1)
      {
        LODWORD(v19) = *v17;
        v20 = v6;
        v21 = v19 - v6;
        v22 = (v19 - v6) ^ 0x8000;
        LOWORD(v6) = v6 - v19;
        v23 = v20 >= v19;
        if (v20 <= v19)
        {
          v24 = v21;
        }

        else
        {
          v24 = v22;
        }

        this = !v23;
        if (!v23)
        {
          LOWORD(v6) = v6 ^ 0x8000;
        }

        LODWORD(v6) = v6;
        if (v24 < v6)
        {
          LODWORD(v6) = v24;
        }

        v25 = v6 == 0x4000 ? this : v24 <= 0x4000u;
        v26 = v25 ? v24 : v24 - 0x8000;
        v6 = v26 + *v3;
        *v3 = v6;
        *v4 = v19;
        *v5 = 1;
        v27 = *(a2 + 24);
        if ((v27 & 0x100000000) == 0)
        {
          goto LABEL_65;
        }

        *v17++ = 5 * v6 + v27;
        ++v18;
        LOWORD(v6) = v19;
        if (v18 >= *(a2 + 44))
        {
          goto LABEL_44;
        }
      }
    }

    LODWORD(v19) = v6;
LABEL_44:
    v28 = (a2 + 2496);
    LOWORD(v29) = *(a2 + 1248);
    goto LABEL_45;
  }

  v5 = (this + 77434);
  v3 = (this + 77424);
  v28 = (a2 + 2496);
  v29 = *(a2 + 1248);
  v4 = (this + 77432);
  if (*(this + 77434))
  {
    LODWORD(v19) = *v4;
LABEL_45:
    LOWORD(v30) = v19 - v29;
    v31 = v19 >= v29;
    if (v19 <= v29)
    {
      LOWORD(v19) = v29 - v19;
    }

    else
    {
      LOWORD(v19) = (v29 - v19) ^ 0x8000;
    }

    v19 = v19;
    v32 = !v31;
    if (!v31)
    {
      LOWORD(v30) = v30 ^ 0x8000;
    }

    v30 = v30;
    if (v19 < v30)
    {
      v30 = v19;
    }

    v33 = v19 <= 0x4000u;
    if (v30 == 0x4000)
    {
      v33 = v32;
    }

    if (!v33)
    {
      v19 = v19 - 0x8000;
    }

    v34 = v19 + *v3;
    *v3 = v34;
    *v4 = v29;
    *v5 = 1;
    v35 = *(a2 + 24);
    if ((v35 & 0x100000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_65:
    __break(1u);
    return this;
  }

  v34 = *(a2 + 1248);
  *v3 = v29;
  *v4 = v29;
  *v5 = 1;
  v35 = *(a2 + 24);
  if ((v35 & 0x100000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_60:
  v36 = 5 * v34 + v35;
  *v28 = v36;
  if (a3)
  {
    v37 = *(a2 + 44);
    if ((v37 + 1) <= 5)
    {
      *(a2 + v37 + 45) = v36 - 1;
      *(a2 + 44) = v37 + 1;
    }
  }

  return this;
}

void webrtc::RtpVp9RefFinder::FrameReceivedVp9(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a2;
  v9 = *(a3 + 8);
  v10 = *a3;
  if (**a3 >= 0xFFuLL)
  {
    v11 = 255;
  }

  else
  {
    v11 = **a3;
  }

  if (a2 != v9)
  {
    LOWORD(v12) = v9 - a2;
    if (v9 < a2)
    {
      LOWORD(v12) = (v9 - a2) ^ 0x8000;
    }

    v12 = v12;
    v13 = a2 - v9;
    if (a2 < v9)
    {
      v13 = (a2 - v9) ^ 0x8000;
    }

    if (v13 < v12)
    {
      v12 = v13;
    }

    v14 = v13 <= 0x4000u;
    v15 = v12 == 0x4000 ? v9 < a2 : v14;
    if (v15 == 1)
    {
      if (v9 < 0x7FFF)
      {
        v17 = 1;
      }

      else
      {
        v17 = -32767;
      }

      v18 = v17 + v9;
      if (v17 + v9 == a2)
      {
LABEL_32:
        *(a3 + 8) = v18;
        return;
      }

      v19 = *(v10 + 769);
      v20 = v9 >= v19;
      v21 = v9 - v19;
      if (!v20)
      {
        v21 ^= 0x8000u;
      }

      v22 = v21 % v11;
      v23 = a1 + 77304;
      while (1)
      {
        if (v22 + 1 == v11)
        {
          v22 = 0;
        }

        else
        {
          ++v22;
        }

        if (v22 >= 0xFF)
        {
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_vp9_ref_finder.cc", 274, "gof_idx < kMaxVp9FramesInGof", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v37);
          webrtc::RttFilter::Update(v36, v40);
          return;
        }

        if (*(*a3 + v22 + 8) >= 5uLL)
        {
          break;
        }

        v24 = v23 + 24 * *(*a3 + v22 + 8);
        v38 = v18;
        std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)32768>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(v24, &v38);
        if (v18 < 0x7FFF)
        {
          v25 = 1;
        }

        else
        {
          v25 = -32767;
        }

        v18 += v25;
        if (v18 == a2)
        {
          LOWORD(v18) = a2;
          goto LABEL_32;
        }
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return;
      }

LABEL_38:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_vp9_ref_finder.cc");
      return;
    }
  }

  v26 = *(v10 + 769);
  v20 = a2 >= v26;
  v27 = a2 - v26;
  if (!v20)
  {
    v27 ^= 0x8000u;
  }

  v28 = *(v10 + v27 % v11 + 8);
  if (v28 < 5)
  {
    std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)32768>,std::allocator<unsigned short>>::__erase_unique<unsigned short>((a1 + 24 * v28 + 77304), &v39);
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    goto LABEL_38;
  }
}

uint64_t webrtc::RttFilter::Update(uint64_t this, TimeDelta a2)
{
  v2 = this;
  if ((*this & 1) == 0)
  {
    if (!a2.var0)
    {
      return this;
    }

    *this = 1;
  }

  if (a2.var0 >= 3000000)
  {
    var0 = 3000000;
  }

  else
  {
    var0 = a2.var0;
  }

  v4 = *(this + 32);
  v5 = 0.0;
  if (v4 >= 2)
  {
    v5 = (v4 - 1) / v4;
  }

  if (v4 + 1 < 0x23)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = 35;
  }

  *(this + 32) = v6;
  v7 = *(this + 8);
  v8 = *(this + 16);
  v9 = llround(v5 * v7);
  v10 = llround((1.0 - v5) * var0);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(this + 8) = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x8000000000000000;
    goto LABEL_18;
  }

  if (v9 != 0x8000000000000000 && v10 != 0x8000000000000000)
  {
    v18 = v9 + v10;
    *(this + 8) = v18;
    if (v18 == 0x8000000000000000)
    {
      goto LABEL_29;
    }

    v12 = 0x8000000000000000;
    if (a2.var0 != 0x8000000000000000 && v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = var0 - v18;
      if ((var0 - v18) >= 0)
      {
        goto LABEL_30;
      }
    }

LABEL_18:
    v13 = -v12;
    v14 = v13 / 0x3E8;
    if (v13 % 0x3E8 <= 0x1F4)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 - v14;
    goto LABEL_33;
  }

  *(this + 8) = 0x8000000000000000;
LABEL_29:
  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
  if (v12 % 0x3E8 <= 0x1F3)
  {
    v16 = v12 / 0x3E8;
  }

  else
  {
    v16 = v12 / 0x3E8 + 1;
  }

LABEL_33:
  v19 = ((1.0 - v5) * (v16 * v16) + v5 * v8);
  v20 = *(this + 24);
  if (var0 > v20)
  {
    v20 = var0;
  }

  *(this + 16) = v19;
  *(this + 24) = v20;
  v21.var0 = var0;
  this = webrtc::RttFilter::JumpDetection(this, v21);
  if (this)
  {
    v22.var0 = var0;

    return webrtc::RttFilter::DriftDetection(v2, v22);
  }

  else
  {
    *(v2 + 8) = v7;
    *(v2 + 16) = v8;
  }

  return this;
}

uint64_t webrtc::RttFilter::JumpDetection(webrtc::RttFilter *this, TimeDelta a2)
{
  v2 = *(this + 1);
  v3 = v2 - a2.var0;
  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL || v2 == 0x8000000000000000)
  {
    v3 = 0x8000000000000000;
  }

  if (v2 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 == 0x8000000000000000)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v7 = sqrt(*(this + 2)) * 2.5 * 1000.0;
  if (v7 == INFINITY || v7 != -INFINITY && (v6 >= 0 ? (v11 = v6) : (v11 = -v6), v11 <= v7))
  {
    v8 = (this + 40);
    if ((*(this + 40) & 1) == 0)
    {
      goto LABEL_16;
    }

    v9 = *(this + 6);
LABEL_15:
    operator delete(v9);
    goto LABEL_16;
  }

  v12 = v6 >= 0;
  v8 = (this + 40);
  v13 = *(this + 5);
  if (v13 >= 2)
  {
    goto LABEL_28;
  }

  v14 = 0;
  while (1)
  {
    v15 = (this + 48);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v13 = *(this + 7);
    if (v14 == v13)
    {
      absl::inlined_vector_internal::Storage<webrtc::TimeDelta,5ul,std::allocator<webrtc::TimeDelta>>::EmplaceBackSlow<webrtc::TimeDelta const&>(this + 5);
    }

    v15 = *v15;
    if (v15)
    {
      break;
    }

    __break(1u);
LABEL_28:
    if (*(this + 36) != v12)
    {
      if (v13)
      {
        v16 = this;
        var0 = a2.var0;
        operator delete(*(this + 6));
        a2.var0 = var0;
        this = v16;
      }

      v14 = 0;
      *(this + 5) = 0;
      v15 = (this + 48);
      break;
    }

    v14 = v13 >> 1;
    if (v13 > 9)
    {
      goto LABEL_36;
    }
  }

  v15[v14] = a2.var0;
  v13 = *v8 + 2;
  *v8 = v13;
  *(this + 36) = v12;
  if (v13 < 0xA)
  {
    return 0;
  }

  v14 = v13 >> 1;
LABEL_36:
  v18 = 0;
  v19 = 0;
  v20 = (this + 48);
  v9 = *(this + 6);
  *(this + 3) = 0;
  *(this + 1) = 0;
  if (v13)
  {
    v20 = v9;
  }

  v21 = 8 * v14;
  do
  {
    v26 = *v20;
    if (*v20 > v19)
    {
      *(this + 3) = v26;
      v22 = *v20;
      v19 = v26;
    }

    else
    {
      v22 = *v20;
    }

    v23 = v22 == 0x8000000000000000 || v18 == 0x8000000000000000;
    v24 = v22 + v18;
    if (v23)
    {
      v24 = 0x8000000000000000;
    }

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v25;
    }

    *(this + 1) = v18;
    ++v20;
    v21 -= 8;
  }

  while (v21);
  *(this + 1) = llround(v18 / v14);
  *(this + 8) = 6;
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_16:
  *v8 = 0;
  return 1;
}

uint64_t webrtc::RttFilter::DriftDetection(uint64_t this, TimeDelta a2)
{
  v2 = sqrt(*(this + 16)) * 3.5 * 1000.0;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v2 != INFINITY)
  {
    if (v2 == -INFINITY)
    {
      v4 = 0x8000000000000000;
    }

    else
    {
      v4 = v2;
    }
  }

  v5 = *(this + 8);
  v6 = *(this + 24);
  v7 = v6 - v5;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x8000000000000000)
  {
    v7 = 0x8000000000000000;
  }

  if (v5 == 0x8000000000000000)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v9;
  }

  v11 = (this + 88);
  v10 = *(this + 88);
  if (v3 <= v4)
  {
    if ((v10 & 1) == 0)
    {
LABEL_44:
      *v11 = 0;
      return 1;
    }

    v16 = *(this + 96);
LABEL_43:
    operator delete(v16);
    goto LABEL_44;
  }

  v12 = v10 >> 1;
  if (v10 > 9)
  {
LABEL_22:
    v14 = 0;
    v15 = 0;
    v17 = (this + 96);
    v16 = *(this + 96);
    *(this + 24) = 0;
    *(this + 8) = 0;
    if (v10)
    {
      v17 = v16;
    }

    v18 = 8 * v12;
    do
    {
      v23 = *v17;
      if (*v17 > v15)
      {
        *(this + 24) = v23;
        v19 = *v17;
        v15 = v23;
      }

      else
      {
        v19 = *v17;
      }

      v20 = v19 == 0x8000000000000000 || v14 == 0x8000000000000000;
      v21 = v19 + v14;
      if (v20)
      {
        v21 = 0x8000000000000000;
      }

      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v22;
      }

      *(this + 8) = v14;
      ++v17;
      v18 -= 8;
    }

    while (v18);
    *(this + 8) = llround(v14 / v12);
    *(this + 32) = 6;
    if ((v10 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v13 = (this + 96);
  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v12 == *(this + 104))
  {
    absl::inlined_vector_internal::Storage<webrtc::TimeDelta,5ul,std::allocator<webrtc::TimeDelta>>::EmplaceBackSlow<webrtc::TimeDelta const&>((this + 88));
  }

  v13 = *v13;
  if (v13)
  {
LABEL_20:
    v13[v12] = a2.var0;
    v10 = *v11 + 2;
    *v11 = v10;
    if (v10 < 0xA)
    {
      return 1;
    }

    v12 = v10 >> 1;
    goto LABEL_22;
  }

  __break(1u);
  return this;
}

void absl::inlined_vector_internal::Storage<webrtc::TimeDelta,5ul,std::allocator<webrtc::TimeDelta>>::EmplaceBackSlow<webrtc::TimeDelta const&>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void webrtc::RtxReceiveStream::~RtxReceiveStream(webrtc::RtxReceiveStream *this)
{
  *this = &unk_28829E448;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 16, *(this + 3));
}

{
  *this = &unk_28829E448;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 16, *(this + 3));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtxReceiveStream::OnRtpPacket(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result)
  {
    result = (*(*(result + 8) + 16))();
  }

  if (*(a2 + 24) >= 2uLL)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a2 + 1);
      v7 = a1 + 24;
      do
      {
        if (*(v5 + 28) >= v6)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 28) < v6));
      }

      while (v5);
      if (v7 != a1 + 24 && *(v7 + 28) <= v6)
      {
        operator new();
      }
    }
  }

  return result;
}

void dcsctp::SackChunk::Parse(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (a2 >= 0x10 && *v7 == 3 && ((v8 = *(v7 + 3), v9 = v8 | (*(v7 + 2) << 8), (v8 & 3) == 0) ? (v10 = v9 >= 0x10) : (v10 = 0), v10 ? (v11 = a2 >= v9) : (v11 = 0), v11 ? (v12 = a2 - v9 >= 4) : (v12 = 1), !v12 && (v13 = __rev16(*(v7 + 12)), v30 = __rev16(*(v7 + 14)), v9 - 16 == 4 * (v30 + v13))))
  {
    v27 = *(v7 + 8);
    v28 = *(v7 + 4);
    if (v13)
    {
      operator new();
    }

    v43[0] = 0;
    v43[1] = 0;
    v42 = v43;
    if (v30)
    {
      if (v9 < 0x14)
      {
        webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_reader.h", 81, "FixedSize + variable_offset + SubSize <= data_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a3, a4, a5, a6, v26);
      }

      else if (v9 - 16 > 3)
      {
        operator new();
      }

      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_reader.h", 56, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a3, a4, a5, a6, v26);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v14 = bswap32(v28);
    v15 = bswap32(v27);
    v32 = 0;
    v33 = 0;
    v31 = &v32;
    v16 = v42;
    if (v42 == v43)
    {
      v17 = 0;
      v18 = 0;
      v19 = &v32;
    }

    else
    {
      do
      {
        if (!*std::__tree<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>::__find_equal<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>(&v31, &v32, &v34, &v44, v16 + 7))
        {
          operator new();
        }

        v20 = *(v16 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v16 + 2);
            v22 = *v21 == v16;
            v16 = v21;
          }

          while (!v22);
        }

        v16 = v21;
      }

      while (v21 != v43);
      v19 = v31;
      v18 = v32;
      v17 = v33;
    }

    v34 = &unk_28829E470;
    v35 = __PAIR64__(v15, v14);
    v39 = v19;
    v40 = v18;
    v41 = v17;
    if (v17)
    {
      v18[2] = &v40;
      v31 = &v32;
      v32 = 0;
      v33 = 0;
      v23 = v39;
    }

    else
    {
      v39 = &v40;
      v23 = &v40;
    }

    v24 = v35;
    *a7 = &unk_28829E470;
    *(a7 + 8) = v24;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    v37 = 0;
    v38 = 0;
    __p = 0;
    *(a7 + 32) = 0;
    *(a7 + 40) = v23;
    *(a7 + 48) = v18;
    v25 = a7 + 48;
    *(a7 + 56) = v17;
    if (v17)
    {
      v18[2] = v25;
      v18 = 0;
      v39 = &v40;
      v40 = 0;
      v41 = 0;
    }

    else
    {
      *(a7 + 40) = v25;
    }

    *(a7 + 64) = 1;
    v34 = &unk_28829E470;
    std::__tree<sigslot::_signal_base_interface *>::destroy(&v39, v18);
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    std::__tree<sigslot::_signal_base_interface *>::destroy(&v31, v32);
    std::__tree<sigslot::_signal_base_interface *>::destroy(&v42, v43[0]);
  }

  else
  {
    *a7 = 0;
    *(a7 + 64) = 0;
  }
}

void dcsctp::SackChunk::~SackChunk(dcsctp::SackChunk *this)
{
  *this = &unk_28829E470;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 40, *(this + 6));
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_28829E470;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 40, *(this + 6));
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::SackChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24) - *(a1 + 16);
  v11 = *(a1 + 56);
  v12 = (v10 << 30 >> 30) + 4 * v11;
  v13 = *a2;
  v14 = a2[1] - *a2;
  v15 = v12 + 16;
  v16 = v12 + 16 + v14;
  if (v14 >= v16)
  {
    if (v14 > v16)
    {
      a2[1] = v13 + v16;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v12 + 16);
    v13 = *a2;
  }

  v17 = (v13 + v14);
  *v17 = 3;
  v17[2] = BYTE1(v15);
  v17[3] = v15;
  if (v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_28:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v33);
LABEL_29:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 84, "FixedSize + variable_offset + SubSize <= data_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v33);
    dcsctp::SackChunk::ToString(v32);
    return;
  }

  v18 = *a2;
  v19 = *a2 + v14;
  *(v19 + 4) = bswap32(*(a1 + 8));
  v20 = *(a1 + 12);
  *(v19 + 8) = HIBYTE(v20);
  *(v19 + 9) = BYTE2(v20);
  *(v19 + 10) = BYTE1(v20);
  *(v19 + 11) = v20;
  *(v19 + 12) = (v10 >> 2) >> 8;
  *(v19 + 13) = v10 >> 2;
  *(v19 + 14) = BYTE1(v11);
  *(v19 + 15) = v11;
  if ((v10 >> 2) >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = v14 + v18 + 16;
    v24 = (v10 << 30 >> 30) + 4 * v11;
    while (v22 + 20 <= v15)
    {
      if (v24 <= 3)
      {
        goto LABEL_28;
      }

      v25 = *(a1 + 16);
      if (v21 >= (*(a1 + 24) - v25) >> 2 || (*(v23 + v22) = bswap32(*(v25 + v22)) >> 16, v26 = *(a1 + 16), v21 >= (*(a1 + 24) - v26) >> 2))
      {
        __break(1u);
        goto LABEL_28;
      }

      *(v23 + v22 + 2) = bswap32(*(v26 + v22 + 2)) >> 16;
      v22 += 4;
      ++v21;
      v24 -= 4;
      if ((v10 & 0x1FFFFFFFCLL) == v22)
      {
        v27 = *(a1 + 40);
        v28 = (a1 + 48);
        if (v27 != (a1 + 48))
        {
          goto LABEL_18;
        }

        return;
      }
    }

    goto LABEL_29;
  }

  v22 = 0;
  v27 = *(a1 + 40);
  v28 = (a1 + 48);
  if (v27 != (a1 + 48))
  {
LABEL_18:
    while (v22 + 20 <= v15)
    {
      if (v15 <= v22 + 16 || v12 - v22 <= 3)
      {
        goto LABEL_28;
      }

      *(v19 + v22 + 16) = bswap32(*(v27 + 7));
      v29 = v27[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v27[2];
          v31 = *v30 == v27;
          v27 = v30;
        }

        while (!v31);
      }

      v22 += 4;
      v27 = v30;
      if (v30 == v28)
      {
        return;
      }
    }

    goto LABEL_29;
  }
}

void dcsctp::SackChunk::ToString(dcsctp::SackChunk *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v65.__r_.__value_.__r.__words[2] = 0x1200000000000000;
  if (&v65 <= "SACK, cum_ack_tsn=" && &v65.__r_.__value_.__r.__words[2] + 2 > "SACK, cum_ack_tsn=")
  {
    goto LABEL_149;
  }

  LOWORD(v65.__r_.__value_.__r.__words[2]) = 15726;
  *&v65.__r_.__value_.__l.__data_ = *"SACK, cum_ack_tsn=";
  v4 = webrtc::StringBuilder::operator<<(&v65, *(this + 2), a2);
  v6 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = 22;
  }

  else
  {
    v7 = (v4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v6 >= 0)
  {
    size = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v4->__r_.__value_.__l.__size_;
  }

  if (v7 - size >= 9)
  {
    if (v6 >= 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = v4->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (v14 + size <= ", a_rwnd=" && &v14->__r_.__value_.__r.__words[1] + size + 1 > ", a_rwnd=")
    {
      goto LABEL_149;
    }

    *(v15 + 8) = 61;
    *v15 = *", a_rwnd=";
    v17 = size + 9;
    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      v4->__r_.__value_.__l.__size_ = v17;
      v14->__r_.__value_.__s.__data_[v17] = 0;
      webrtc::StringBuilder::operator<<(v4, *(this + 3), v5);
      v12 = *(this + 2);
      for (i = *(this + 3); v12 != i; v12 += 2)
      {
LABEL_26:
        v21 = *(this + 2);
        v22 = *v12;
        v23 = v12[1];
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = 22;
        }

        else
        {
          v24 = (v65.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = v65.__r_.__value_.__l.__size_;
        }

        if (v24 - v25 >= 6)
        {
          v26 = &v65;
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v65.__r_.__value_.__r.__words[0];
          }

          v27 = v26 + v25;
          if (v26 + v25 <= ", gap=" && v26->__r_.__value_.__r.__words + v25 + 6 > ", gap=")
          {
            goto LABEL_149;
          }

          *(v27 + 2) = 15728;
          *v27 = 1634148396;
          v29 = v25 + 6;
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            v65.__r_.__value_.__l.__size_ = v25 + 6;
          }

          else
          {
            *(&v65.__r_.__value_.__s + 23) = v29 & 0x7F;
          }

          v26->__r_.__value_.__s.__data_[v29] = 0;
        }

        else
        {
          std::string::__grow_by_and_replace(&v65, v24, v25 - v24 + 6, v25, v25, 0, 6uLL, ", gap=");
        }

        v20 = webrtc::StringBuilder::operator<<(&v65, (v21 + v22), v11);
        v30 = SHIBYTE(v20->__r_.__value_.__r.__words[2]);
        if (v30 >= 0)
        {
          v31 = 22;
        }

        else
        {
          v31 = (v20->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v30 >= 0)
        {
          v32 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = v20->__r_.__value_.__l.__size_;
        }

        if (v31 - v32 < 2)
        {
          v18 = v20;
          std::string::__grow_by_and_replace(v20, v31, v32 - v31 + 2, v32, v32, 0, 2uLL, "--");
          v20 = v18;
        }

        else
        {
          if (v30 >= 0)
          {
            v33 = v20;
          }

          else
          {
            v33 = v20->__r_.__value_.__r.__words[0];
          }

          if (v33 + v32 <= "--" && &v33->__r_.__value_.__s.__data_[v32 + 2] > "--")
          {
            goto LABEL_149;
          }

          *(&v33->__r_.__value_.__l.__data_ + v32) = 11565;
          v35 = v32 + 2;
          if (SHIBYTE(v20->__r_.__value_.__r.__words[2]) < 0)
          {
            v20->__r_.__value_.__l.__size_ = v35;
          }

          else
          {
            *(&v20->__r_.__value_.__s + 23) = v35 & 0x7F;
          }

          v33->__r_.__value_.__s.__data_[v35] = 0;
        }

        webrtc::StringBuilder::operator<<(v20, (v21 + v23), v19);
      }
    }

    else
    {
      *(&v4->__r_.__value_.__s + 23) = v17 & 0x7F;
      v14->__r_.__value_.__s.__data_[v17] = 0;
      webrtc::StringBuilder::operator<<(v4, *(this + 3), v5);
      v12 = *(this + 2);
      i = *(this + 3);
      if (v12 != i)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v9 = v4;
    std::string::__grow_by_and_replace(v4, v7, size - v7 + 9, size, size, 0, 9uLL, ", a_rwnd=");
    webrtc::StringBuilder::operator<<(v9, *(this + 3), v10);
    v12 = *(this + 2);
    i = *(this + 3);
    if (v12 != i)
    {
      goto LABEL_26;
    }
  }

  if (!*(this + 7))
  {
    goto LABEL_146;
  }

  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = 22;
  }

  else
  {
    v36 = (v65.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v65.__r_.__value_.__l.__size_;
  }

  if (v36 - v37 >= 0xB)
  {
    v40 = &v65;
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = v65.__r_.__value_.__r.__words[0];
    }

    v41 = v40 + v37;
    if (v40 + v37 <= ", dup_tsns=" && v41 + 11 > ", dup_tsns=")
    {
      goto LABEL_149;
    }

    *(v41 + 7) = 1030975091;
    *v41 = *", dup_tsns=";
    v42 = v37 + 11;
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      v65.__r_.__value_.__l.__size_ = v37 + 11;
    }

    else
    {
      *(&v65.__r_.__value_.__s + 23) = v42 & 0x7F;
    }

    v40->__r_.__value_.__s.__data_[v42] = 0;
    memset(&v66, 0, sizeof(v66));
    v38 = *(this + 5);
    v39 = this + 48;
    if (v38 == this + 48)
    {
      goto LABEL_116;
    }

    goto LABEL_80;
  }

  std::string::__grow_by_and_replace(&v65, v36, v37 - v36 + 11, v37, v37, 0, 0xBuLL, ", dup_tsns=");
  memset(&v66, 0, sizeof(v66));
  v38 = *(this + 5);
  v39 = this + 48;
  if (v38 != this + 48)
  {
LABEL_80:
    if (!",")
    {
      webrtc::StringBuilder::operator<<(&v66, *(v38 + 7), v11);
      v52 = *(v38 + 1);
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = *(v38 + 2);
          v56 = *v53 == v38;
          v38 = v53;
        }

        while (!v56);
      }

      if (v53 != v39)
      {
        goto LABEL_149;
      }

      goto LABEL_116;
    }

    v43 = 0;
    while (1)
    {
      if (!v43)
      {
        goto LABEL_103;
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = 22;
      }

      else
      {
        v44 = (v66.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v66.__r_.__value_.__l.__size_;
      }

      if (v44 == v45)
      {
        std::string::__grow_by_and_replace(&v66, v44, v45 + 1 - v44, v45, v45, 0, 1uLL, ",");
        webrtc::StringBuilder::operator<<(&v66, *(v38 + 7), v46);
        v47 = *(v38 + 1);
        if (v47)
        {
          goto LABEL_104;
        }

        goto LABEL_107;
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v66;
      }

      else
      {
        v48 = v66.__r_.__value_.__r.__words[0];
      }

      if (v48 + v45 <= "," && &v48->__r_.__value_.__l.__data_ + v45 + 1 > ",")
      {
        goto LABEL_149;
      }

      memmove(v48 + v45, ",", 1uLL);
      v50 = v45 + 1;
      if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      v66.__r_.__value_.__l.__size_ = v45 + 1;
      v48->__r_.__value_.__s.__data_[v50] = 0;
      webrtc::StringBuilder::operator<<(&v66, *(v38 + 7), v11);
      v47 = *(v38 + 1);
      if (v47)
      {
        do
        {
LABEL_104:
          v51 = v47;
          v47 = *v47;
        }

        while (v47);
        goto LABEL_83;
      }

      do
      {
LABEL_107:
        v51 = *(v38 + 2);
        v56 = *v51 == v38;
        v38 = v51;
      }

      while (!v56);
LABEL_83:
      ++v43;
      v38 = v51;
      if (v51 == v39)
      {
        goto LABEL_116;
      }
    }

    *(&v66.__r_.__value_.__s + 23) = v50 & 0x7F;
    v48->__r_.__value_.__s.__data_[v50] = 0;
LABEL_103:
    webrtc::StringBuilder::operator<<(&v66, *(v38 + 7), v11);
    v47 = *(v38 + 1);
    if (v47)
    {
      goto LABEL_104;
    }

    goto LABEL_107;
  }

LABEL_116:
  __p = v66;
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v66.__r_.__value_.__r.__words[0];
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v66.__r_.__value_.__l.__size_;
  }

  if (p_p)
  {
    v56 = 1;
  }

  else
  {
    v56 = v55 == 0;
  }

  if (!v56)
  {
    goto LABEL_149;
  }

  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = 22;
  }

  else
  {
    v57 = (v65.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v58 = v65.__r_.__value_.__l.__size_;
  }

  if (v57 - v58 < v55)
  {
    std::string::__grow_by_and_replace(&v65, v57, v58 + v55 - v57, v58, v58, 0, v55, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_135:
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_146:
    *a3 = v65;
    return;
  }

  if (!v55)
  {
LABEL_145:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_135;
  }

  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v65;
  }

  else
  {
    v59 = v65.__r_.__value_.__r.__words[0];
  }

  if ((v55 & 0x8000000000000000) == 0)
  {
    v60 = v59 + v58;
    if ((v59 + v58) > p_p || &v60[v55] <= p_p)
    {
      v61 = v55;
      memmove(v60, p_p, v55);
      v62 = v58 + v61;
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        v65.__r_.__value_.__l.__size_ = v58 + v61;
        v59->__r_.__value_.__s.__data_[v62] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_135;
      }

      *(&v65.__r_.__value_.__s + 23) = v62 & 0x7F;
      v59->__r_.__value_.__s.__data_[v62] = 0;
      goto LABEL_145;
    }
  }

LABEL_149:
  __break(1u);
}

void webrtc::anonymous namespace::SaturationProtectorImpl::~SaturationProtectorImpl(webrtc::_anonymous_namespace_::SaturationProtectorImpl *this)
{
  *this = &unk_28829E4A0;
}

{
  *this = &unk_28829E4A0;
  JUMPOUT(0x2743DA540);
}

__n128 webrtc::anonymous namespace::SaturationProtectorImpl::Analyze(webrtc::_anonymous_namespace_::SaturationProtectorImpl *this, __n128 result, float a3, float a4)
{
  if (result.n128_f32[0] >= 0.95)
  {
    v7 = *(this + 6) + 1;
    *(this + 6) = v7;
    v8 = *(this + 15);
    if (v8 < a3)
    {
      v8 = a3;
    }

    *(this + 15) = v8;
    v9 = *(this + 16);
    *(this + 16) = v9 + 10;
    if (v9 <= 390)
    {
      v11 = *(this + 14);
      if (!v11)
      {
LABEL_23:
        v13 = v8 - a4;
        v14 = *(this + 8);
        if (v13 <= v14)
        {
          v15 = (v13 * 0.00023025) + (v14 * 0.99977);
        }

        else
        {
          v15 = (v13 * 0.0011506) + (v14 * 0.99885);
        }

        v16 = 25.0;
        if (v15 < 25.0)
        {
          v16 = v15;
        }

        if (v15 > 12.0)
        {
          result.n128_f32[0] = v16;
        }

        else
        {
          result.n128_f32[0] = 12.0;
        }

        *(this + 8) = result.n128_u32[0];
        if (v7 >= *(this + 5))
        {
          *(this + 7) = result.n128_u32[0];
        }

        return result;
      }
    }

    else
    {
      v10 = *(this + 13);
      *(this + 13) = v10 + 1;
      if (v10 >= 4)
      {
        goto LABEL_20;
      }

      *(this + v10 + 9) = v8;
      if (v10 == 3)
      {
        *(this + 13) = 0;
      }

      v11 = *(this + 14);
      if (v11 <= 3)
      {
        *(this + 14) = ++v11;
      }

      *(this + 60) = 3266617016;
      v8 = -90.31;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    if (v11 != 4)
    {
LABEL_21:
      v12 = 0;
      goto LABEL_22;
    }

    v12 = *(this + 13);
    if (v12 < 4)
    {
LABEL_22:
      v8 = *(this + v12 + 9);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = *(this + 5);
  if (v4 < 2)
  {
LABEL_6:
    *(this + 6) = 0;
    return result;
  }

  v5 = *(this + 6);
  if (v5 < v4)
  {
    if (v5 >= 1)
    {
      result = *(this + 68);
      v6 = *(this + 84);
      *(this + 2) = result;
      *(this + 3) = v6;
      *(this + 16) = *(this + 25);
    }

    goto LABEL_6;
  }

  result = *(this + 2);
  v17 = *(this + 3);
  *(this + 68) = result;
  *(this + 84) = v17;
  *(this + 25) = *(this + 16);
  *(this + 6) = 0;
  return result;
}

float webrtc::anonymous namespace::SaturationProtectorImpl::Reset(webrtc::_anonymous_namespace_::SaturationProtectorImpl *this)
{
  *(this + 6) = 0;
  result = *(this + 4);
  *(this + 7) = result;
  *(this + 8) = result;
  *(this + 52) = 0;
  *(this + 60) = 3266617016;
  *(this + 17) = result;
  *(this + 11) = 0;
  *(this + 12) = 3266617016;
  return result;
}

char *webrtc::ScalabilityModeToString(webrtc::webrtc_checks_impl *a1)
{
  if (a1 >= 0x22)
  {
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  return off_279E94A58[a1];
}

uint64_t webrtc::ScalabilityModeToInterLayerPredMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < 0x22)
  {
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a1);
  return webrtc::ScalabilityModeToNumSpatialLayers();
}

uint64_t webrtc::ScalabilityModeToNumSpatialLayers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 0x22)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a1);
    JUMPOUT(0x273432F08);
  }
}

uint64_t webrtc::ScalabilityStructureFullSvc::StreamConfig@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(a2 + 12) = v2;
  *(a2 + 28) = v2;
  v3 = *(this + 8);
  *a2 = v3;
  v4 = 4 * v3 - 4;
  *(a2 + 12 + v4) = 1;
  *(a2 + 28 + v4) = 1;
  if (v3 >= 2)
  {
    v5 = *(this + 16);
    v6 = *(this + 20);
    v7 = a2 + 4 * v3;
    v8 = *(v7 + 8);
    v9 = v3 + 1;
    v10 = (v7 + 24);
    do
    {
      v8 *= v5;
      *(v10 - 1) = *v10 * v6;
      *(--v10 - 4) = v8;
      --v9;
    }

    while (v9 > 2);
  }

  *(a2 + 8) = v3 > 1;
  return this;
}

void webrtc::ScalabilityStructureFullSvc::NextFrameConfig(webrtc::ScalabilityStructureFullSvc *this@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  v73 = 0;
  v74 = 0;
  v75 = 0;
  if (!*(this + 12))
  {
    *(this + 6) = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    return;
  }

  std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::reserve(&v73, *(this + 2));
  v6 = *(this + 6);
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = 1;
  }

  if (v7 == 1)
  {
    *(this + 4) &= 0xFFFFFFFFFFFFFFF8;
    *(this + 6) = 0;
    v8 = 1;
    goto LABEL_43;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v10 = *(this + 3);
      if (v10 >= 3)
      {
        v9 = *(this + 2);
        if (v9 >= 1)
        {
          v17 = 0;
          v18 = *(this + 2);
          v8 = 5;
          while (1)
          {
            if (v17 >= 0x1E)
            {
              goto LABEL_170;
            }

            if (((*(this + 6) >> v17) & 4) != 0)
            {
              break;
            }

            v17 += v10;
            if (!--v18)
            {
              goto LABEL_43;
            }
          }

          v68 = a2;
          v33 = 4;
          v32 = 1;
          goto LABEL_88;
        }

LABEL_83:
        *(this + 5) &= 0xFFFFFFFFFFFFFFF8;
        goto LABEL_166;
      }

      goto LABEL_42;
    }

    if (v6 == 4)
    {
      goto LABEL_42;
    }

    if (v6 != 5)
    {
      goto LABEL_166;
    }

    goto LABEL_22;
  }

  if (v6 == 1)
  {
LABEL_22:
    v10 = *(this + 3);
    if (v10 > 2)
    {
      v9 = *(this + 2);
      if (v9 >= 1)
      {
        v13 = 0;
        v14 = *(this + 2);
        while (1)
        {
          if (v13 >= 0x1E)
          {
            goto LABEL_170;
          }

          if (((*(this + 6) >> v13) & 4) != 0)
          {
            break;
          }

          v13 += v10;
          if (!--v14)
          {
            goto LABEL_28;
          }
        }

        v68 = a2;
        v32 = 0;
        v33 = 2;
LABEL_88:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v10 = (*(this + 3) * v37 + 2);
          if (v10 >= 0x20)
          {
            goto LABEL_170;
          }

          v10 = *(this + 6) >> (*(this + 12) * v37 + 2);
          if (v10)
          {
            if (v37 >= 3)
            {
              goto LABEL_170;
            }

            if ((*(this + 4) & (1 << v37)) != 0)
            {
              break;
            }
          }

LABEL_125:
          if (++v37 >= v9)
          {
LABEL_165:
            LOBYTE(a2) = v68;
            goto LABEL_166;
          }
        }

        v10 = v74;
        v9 = v75;
        if (v74 >= v75)
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(&v73);
        }

        if (!v74)
        {
          goto LABEL_170;
        }

        v74[10] = 0;
        *(v10 + 48) = 0u;
        *(v10 + 64) = 0u;
        *(v10 + 16) = 0u;
        *(v10 + 32) = 0u;
        v50 = (v10 + 88);
        *v10 = 0u;
        v74 = (v10 + 88);
        v10 = v73;
        if (v73 == v50)
        {
          goto LABEL_170;
        }

        *(v50 - 22) = v33;
        *(v50 - 20) = v37;
        *(v50 - 19) = 2;
        if (v32 && (*(this + 5) & (1 << v37)) != 0)
        {
          v9 = v37 + *(this + 2);
          LODWORD(v70[0]) = v37 + *(this + 2);
          v10 = (v50 - 18);
          v51 = *(v50 - 9);
          if (v51)
          {
            v52 = *(v50 - 8);
            v53 = *(v50 - 7);
          }

          else
          {
            v52 = v50 - 16;
            v53 = 8;
          }

          if (v51 >> 1 == v53)
          {
            goto LABEL_163;
          }

          if (!v52)
          {
            goto LABEL_170;
          }

          v57 = &v52[2 * (v51 >> 1)];
          *v57 = v9;
          *(v57 + 2) = 1;
          *v10 = v51 + 2;
          if (v38)
          {
LABEL_150:
            LODWORD(v70[0]) = v39;
            v10 = (v50 - 18);
            v9 = *(v50 - 9);
            if (v9)
            {
              v58 = *(v50 - 8);
              v59 = *(v50 - 7);
            }

            else
            {
              v58 = v50 - 16;
              v59 = 8;
            }

            if (v9 >> 1 == v59)
            {
              absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v50 - 9);
            }

            if (!v58)
            {
              goto LABEL_170;
            }

            v60 = &v58[2 * (v9 >> 1)];
            *v60 = v39;
            *(v60 + 2) = 1;
            *v10 = v9 + 2;
          }
        }

        else
        {
          LODWORD(v70[0]) = v37;
          v10 = (v50 - 18);
          v9 = *(v50 - 9);
          if (v9)
          {
            v54 = *(v50 - 8);
            v55 = *(v50 - 7);
          }

          else
          {
            v54 = v50 - 16;
            v55 = 8;
          }

          if (v9 >> 1 == v55)
          {
LABEL_163:
            absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v10);
          }

          if (!v54)
          {
            goto LABEL_170;
          }

          v56 = &v54[2 * (v9 >> 1)];
          *v56 = v37;
          *(v56 + 2) = 1;
          *v10 = v9 + 2;
          if (v38)
          {
            goto LABEL_150;
          }
        }

        v9 = *(this + 2);
        if (v37 < (v9 - 1))
        {
          LODWORD(v70[0]) = v37 + 2 * v9;
          v10 = (v50 - 18);
          v61 = *(v50 - 9);
          if (v61)
          {
            v62 = *(v50 - 8);
            v63 = *(v50 - 7);
          }

          else
          {
            v62 = v50 - 16;
            v63 = 8;
          }

          if (v61 >> 1 == v63)
          {
            absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v50 - 9);
          }

          if (!v62)
          {
            goto LABEL_170;
          }

          v64 = &v62[2 * (v61 >> 1)];
          *v64 = v37 + 2 * v9;
          *(v64 + 2) = 256;
          *v10 = v61 + 2;
        }

        v39 = v37 + 2 * v9;
        v38 = 1;
        goto LABEL_125;
      }

      goto LABEL_83;
    }

LABEL_28:
    if (v10 > 1)
    {
      v9 = *(this + 2);
      if (v9 < 1)
      {
        goto LABEL_83;
      }

      v15 = 0;
      v16 = *(this + 2);
      v8 = 5;
      while (v15 < 0x1F)
      {
        if (((*(this + 6) >> v15) & 2) != 0)
        {
          v10 = *(this + 2);
          goto LABEL_86;
        }

        v15 += v10;
        if (!--v16)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_170;
    }

    goto LABEL_42;
  }

  if (v6 != 2)
  {
    goto LABEL_166;
  }

  v9 = *(this + 3);
  if (v9 > 1)
  {
    v10 = *(this + 2);
    if (v10 < 1)
    {
      goto LABEL_83;
    }

    v11 = 0;
    v12 = *(this + 2);
    v8 = 5;
    while (v11 < 0x1F)
    {
      if (((*(this + 6) >> v11) & 2) != 0)
      {
LABEL_86:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          v9 = (*(this + 3) * v34 + 1);
          if (v9 >= 0x20)
          {
            goto LABEL_170;
          }

          v9 = *(this + 6) >> (*(this + 12) * v34 + 1);
          if (v9)
          {
            if (v34 >= 3)
            {
              goto LABEL_170;
            }

            if ((*(this + 4) >> v34))
            {
              v10 = v74;
              v9 = v75;
              if (v74 >= v75)
              {
                std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(&v73);
              }

              if (!v74)
              {
                goto LABEL_170;
              }

              v74[10] = 0;
              *(v10 + 48) = 0u;
              *(v10 + 64) = 0u;
              *(v10 + 16) = 0u;
              *(v10 + 32) = 0u;
              v40 = (v10 + 88);
              *v10 = 0u;
              v74 = (v10 + 88);
              v10 = v73;
              if (v73 == v40)
              {
                goto LABEL_170;
              }

              *(v40 - 22) = 3;
              *(v40 - 20) = v34;
              *(v40 - 19) = 1;
              LODWORD(v70[0]) = v34;
              v41 = (v40 - 18);
              v10 = *(v40 - 9);
              v42 = v40 - 16;
              if (v10)
              {
                v9 = *(v40 - 8);
                v43 = *(v40 - 7);
              }

              else
              {
                v9 = (v40 - 16);
                v43 = 8;
              }

              if (v10 >> 1 == v43)
              {
                absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v40 - 9);
              }

              if (!v9)
              {
                goto LABEL_170;
              }

              v44 = v9 + 8 * (v10 >> 1);
              *v44 = v34;
              *(v44 + 4) = 1;
              *v41 = v10 + 2;
              if (v35)
              {
                LODWORD(v70[0]) = v36;
                v10 = *v41;
                if (*v41)
                {
                  v9 = *(v40 - 8);
                  v45 = *(v40 - 7);
                }

                else
                {
                  v9 = (v40 - 16);
                  v45 = 8;
                }

                if (v10 >> 1 == v45)
                {
                  absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v41);
                }

                if (!v9)
                {
                  goto LABEL_170;
                }

                v46 = v9 + 8 * (v10 >> 1);
                *v46 = v36;
                *(v46 + 4) = 1;
                *v41 = v10 + 2;
              }

              v10 = *(this + 2);
              if (*(this + 3) > 2 || v34 < v10 - 1)
              {
                v9 = v34 + v10;
                LODWORD(v70[0]) = v34 + v10;
                v47 = *v41;
                if (*v41)
                {
                  v42 = *(v40 - 8);
                  v48 = *(v40 - 7);
                }

                else
                {
                  v48 = 8;
                }

                if (v47 >> 1 == v48)
                {
                  absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v41);
                }

                if (!v42)
                {
                  goto LABEL_170;
                }

                v49 = &v42[2 * (v47 >> 1)];
                *v49 = v9;
                *(v49 + 2) = 256;
                *v41 = v47 + 2;
              }

              v36 = v34 + v10;
              v35 = 1;
            }
          }

          if (++v34 >= v10)
          {
            goto LABEL_166;
          }
        }
      }

      v11 += v9;
      if (!--v12)
      {
        goto LABEL_43;
      }
    }

LABEL_170:
    __break(1u);
LABEL_171:
    *a3 = v10;
    a3[1] = v9;
    a3[2] = v75;
    return;
  }

LABEL_42:
  v8 = 5;
LABEL_43:
  v19 = *(this + 2);
  v9 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  *(this + 5) = v9;
  if (v19 >= 1)
  {
    v68 = a2;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      while (1)
      {
        v10 = (*(this + 3) * v20);
        if (v10 >= 0x20)
        {
          goto LABEL_170;
        }

        if ((*(this + 6) >> (*(this + 12) * v20)))
        {
          break;
        }

        if (v20 >= 3)
        {
          abort();
        }

        v9 = *(this + 4);
        *(this + 4) = v9 & ~(1 << v20++);
        if (v20 >= *(this + 2))
        {
          goto LABEL_165;
        }
      }

      v10 = v74;
      v9 = v75;
      if (v74 >= v75)
      {
        std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(&v73);
      }

      if (!v74)
      {
        goto LABEL_170;
      }

      v74[10] = 0;
      *(v10 + 48) = 0u;
      *(v10 + 64) = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0u;
      v23 = (v10 + 88);
      *v10 = 0u;
      v74 = (v10 + 88);
      v10 = v73;
      if (v73 == v23)
      {
        goto LABEL_170;
      }

      *(v23 - 22) = v8;
      *(v23 - 20) = v20;
      *(v23 - 19) = 0;
      if (v21)
      {
        LODWORD(v70[0]) = v22;
        v10 = (v23 - 18);
        v9 = *(v23 - 9);
        if (v9)
        {
          v24 = *(v23 - 8);
          v25 = *(v23 - 7);
        }

        else
        {
          v24 = v23 - 16;
          v25 = 8;
        }

        if (v9 >> 1 == v25)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v23 - 9);
        }

        if (!v24)
        {
          goto LABEL_170;
        }

        v26 = &v24[2 * (v9 >> 1)];
        *v26 = v22;
        *(v26 + 2) = 1;
        v9 += 2;
        *v10 = v9;
      }

      else if (v7)
      {
        *(v23 - 84) = 1;
        if (v20 >= 3)
        {
          goto LABEL_170;
        }

        goto LABEL_66;
      }

      if (v20 >= 3)
      {
        goto LABEL_170;
      }

LABEL_66:
      v10 = (v23 - 18);
      v9 = (v23 - 16);
      if ((*(this + 4) >> v20))
      {
        LODWORD(v70[0]) = v20;
        v27 = *v10;
        if (*v10)
        {
          v9 = *(v23 - 8);
          v28 = *(v23 - 7);
        }

        else
        {
          v28 = 8;
        }

        if (v27 >> 1 == v28)
        {
          goto LABEL_81;
        }

        if (!v9)
        {
          goto LABEL_170;
        }

        v30 = v9 + 8 * (v27 >> 1);
        *v30 = v20;
        *(v30 + 4) = 257;
      }

      else
      {
        LODWORD(v70[0]) = v20;
        v27 = *v10;
        if (*v10)
        {
          v9 = *(v23 - 8);
          v29 = *(v23 - 7);
        }

        else
        {
          v29 = 8;
        }

        if (v27 >> 1 == v29)
        {
LABEL_81:
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v23 - 9);
        }

        if (!v9)
        {
          goto LABEL_170;
        }

        v31 = v9 + 8 * (v27 >> 1);
        *v31 = v20;
        *(v31 + 4) = 256;
      }

      v9 = v27 + 2;
      *v10 = v27 + 2;
      v21 = 1;
      v22 = v20++;
      if (v20 >= *(this + 2))
      {
        goto LABEL_165;
      }
    }
  }

LABEL_166:
  v10 = v73;
  v9 = v74;
  if (v73 != v74 || (a2 & 1) != 0)
  {
    goto LABEL_171;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    v70[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_structure_full_svc.cc";
    v70[1] = 1906;
    v70[2] = &v69;
    v71[0] = "Failed to generate configuration for L";
    v71[1] = v70;
    v72[0] = *(this + 2);
    v72[1] = v71;
    v72[2] = "T";
    v72[3] = v72;
    operator new();
  }

  (*(*this + 40))(this, 1);
  v65 = v73;
  if (v73)
  {
    v66 = v74;
    v67 = v73;
    if (v74 != v73)
    {
      do
      {
        if (*(v66 - 9))
        {
          operator delete(*(v66 - 8));
        }

        v66 -= 11;
      }

      while (v66 != v65);
      v67 = v73;
    }

    v74 = v65;
    operator delete(v67);
  }
}

void *std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::ScalabilityStructureFullSvc::OnEncodeDone(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + 24) = *a2;
  v7 = *(a2 + 8);
  v6 = *(a2 + 12);
  if (v6 == 1)
  {
    if (v7 < 3)
    {
      v8 = 40;
      goto LABEL_7;
    }

LABEL_77:
    abort();
  }

  if (!v6)
  {
    if (v7 < 3)
    {
      v8 = 32;
LABEL_7:
      *(a1 + v8) |= 1 << v7;
      goto LABEL_8;
    }

    goto LABEL_77;
  }

LABEL_8:
  *(a3 + 56) = 0;
  *(a3 + 8) = 0;
  v9 = (a3 + 8);
  *(a3 + 104) = 0;
  *(a3 + 80) = 0;
  *(a3 + 176) = 0;
  v10 = a3 + 176;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0xFFFFFFFFLL;
  *a3 = v7;
  *(a3 + 4) = v6;
  if (a3 + 104 == a2 + 16)
  {
    goto LABEL_75;
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = *(a2 + 24);
  }

  else
  {
    v12 = (a2 + 24);
  }

  absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::CodecBufferUsage>,webrtc::CodecBufferUsage const*>>((a3 + 104), v12, v11 >> 1);
  for (i = *v9; ; LOBYTE(i) = 0)
  {
    v14 = *(a1 + 8);
    v15 = *(a1 + 12) * v14;
    v16 = 10;
    if (i)
    {
      v16 = *(a3 + 24);
    }

    if (v16 < v15)
    {
      if (2 * v16 <= v15)
      {
        v17 = *(a1 + 12) * v14;
      }

      else
      {
        v17 = 2 * v16;
      }

      if (!(v17 >> 62))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v39 = v10;
    if (v14 >= 1)
    {
      v18 = *(a1 + 12);
      if (v18 >= 1)
      {
        v19 = 0;
        v10 = 2;
        do
        {
          v20 = *(a2 + 8);
          if (v20 <= v19 && *(a2 + 12) <= 0)
          {
            if (v20 == v19 || (*(a2 + 4) & 1) != 0)
            {
              v22 = 2;
            }

            else if (*a2 == 1)
            {
              v22 = 2;
            }

            else
            {
              v22 = 3;
            }
          }

          else
          {
            v22 = 0;
          }

          v41 = v22;
          v23 = *(a3 + 8);
          v24 = *(a3 + 16);
          if (v23)
          {
            v25 = *(a3 + 24);
          }

          else
          {
            v24 = a3 + 16;
            v25 = 10;
          }

          if (v23 >> 1 == v25)
          {
            absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>((a3 + 8));
          }

          if (!v24)
          {
            goto LABEL_74;
          }

          *(v24 + 4 * (v23 >> 1)) = v22;
          *v9 = v23 + 2;
          if (v18 >= 2)
          {
            v26 = 1;
            do
            {
              v27 = *(a2 + 8);
              if (v27 <= v19 && (v28 = *(a2 + 12), v28 <= v26))
              {
                if (v27 == v19)
                {
                  v29 = v26 == v28 ? 1 : 2;
                }

                else if (*(a2 + 4))
                {
                  v29 = 2;
                }

                else
                {
                  v29 = *a2 == 1 ? 2 : 3;
                }
              }

              else
              {
                v29 = 0;
              }

              v41 = v29;
              v30 = *(a3 + 8);
              v31 = *(a3 + 16);
              if (v30)
              {
                v32 = *(a3 + 24);
              }

              else
              {
                v31 = a3 + 16;
                v32 = 10;
              }

              if (v30 >> 1 == v32)
              {
                absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>((a3 + 8));
              }

              if (!v31)
              {
                goto LABEL_74;
              }

              *(v31 + 4 * (v30 >> 1)) = v29;
              *v9 = v30 + 2;
            }

            while (++v26 < v18);
          }

          v14 = *(a1 + 8);
        }

        while (++v19 < v14);
      }
    }

    if (*(a2 + 12))
    {
      break;
    }

    std::vector<BOOL>::resize(v39, v14, 0);
    v33 = *(a1 + 8);
    if (v33 < 1)
    {
      goto LABEL_66;
    }

    v34 = 0;
    v35 = *(a2 + 8);
    v36 = *(a3 + 176);
    while (*(a3 + 184) > v34)
    {
      v37 = v34 >> 6;
      v38 = 1 << v34;
      if (v34 < v35)
      {
        *(v36 + 8 * v37) &= ~v38;
        if (v33 == ++v34)
        {
          goto LABEL_66;
        }
      }

      else
      {
        *(v36 + 8 * v37) |= v38;
        if (v33 == ++v34)
        {
          goto LABEL_66;
        }
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v40 = 0;
  std::vector<BOOL>::assign(v39, v14, &v40);
LABEL_66:
  *(a3 + 200) = *(a1 + 48);
}

void std::vector<BOOL>::assign(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  *(a1 + 8) = 0;
  if (!a2)
  {
    return;
  }

  v5 = *(a1 + 16);
  v6 = v5 << 6;
  if (v5 << 6 >= a2)
  {
    *(a1 + 8) = a2;
    v14 = *a1;
    v16 = a2 >> 6;
    if (*a3 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v8 = v5 << 7;
    if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v6 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v18, v9);
    v11 = v18;
    v12 = *(&v19 + 1);
    v18 = *a1;
    v10 = v18;
    v13 = *(a1 + 8);
    *a1 = v11;
    *(a1 + 8) = a2;
    *(a1 + 16) = v12;
    v19 = v13;
    if (v10)
    {
      operator delete(v10);
    }

    v14 = *a1;
    v15 = *a3;
    v16 = a2 >> 6;
    if (v15 != 1)
    {
LABEL_12:
      if (a2 >= 0x40)
      {
        bzero(v14, 8 * v16);
      }

      if ((a2 & 0x3F) != 0)
      {
        v17 = *(v14 + v16) & ~(0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
LABEL_21:
        *(v14 + v16) = v17;
        return;
      }

      return;
    }
  }

  if (a2 >= 0x40)
  {
    memset(v14, 255, 8 * v16);
  }

  if ((a2 & 0x3F) != 0)
  {
    v17 = *(v14 + v16) | (0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
    goto LABEL_21;
  }
}

uint64_t webrtc::ScalabilityStructureFullSvc::OnRatesUpdated(uint64_t this, const webrtc::VideoBitrateAllocation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 8);
  if (v8 < 1)
  {
    return this;
  }

  v9 = *(this + 12);
  if (v9 < 1)
  {
    return this;
  }

  v10 = 0;
  v11 = a2 + 4;
  v12 = 5;
  while (v10 <= 4)
  {
    v13 = v9 * v10;
    v14 = &v11[32 * v10];
    if ((v14[4] & 1) == 0)
    {
      if (v13 > 0x1F)
      {
        goto LABEL_45;
      }

      v15 = 1 << v13;
      v16 = *(this + 48);
LABEL_24:
      v17 = v16 & ~v15;
      *(this + 48) = v17;
      if (v9 == 1)
      {
        goto LABEL_4;
      }

      if (v13 > 0x1E)
      {
        goto LABEL_45;
      }

      goto LABEL_26;
    }

    if (v13 > 0x1F)
    {
      goto LABEL_45;
    }

    v15 = 1 << v13;
    v16 = *(this + 48);
    if (!*v14)
    {
      goto LABEL_24;
    }

    v17 = v16 | v15;
    *(this + 48) = v17;
    if (v9 == 1)
    {
      goto LABEL_4;
    }

    if ((v14[12] & 1) == 0)
    {
      if (v13 == 31)
      {
        goto LABEL_45;
      }

LABEL_26:
      v18 = 1 << (v13 + 1);
LABEL_27:
      v19 = v17 & ~v18;
      *(this + 48) = v19;
      if (v9 == 2)
      {
        goto LABEL_4;
      }

LABEL_28:
      if (v13 > 0x1D)
      {
        goto LABEL_45;
      }

      v20 = 1 << (v13 + 2);
LABEL_30:
      v21 = v19 & ~v20;
      *(this + 48) = v21;
      if (v9 == 3)
      {
        goto LABEL_4;
      }

      if (v13 > 0x1C)
      {
        goto LABEL_45;
      }

LABEL_32:
      v23 = 1 << (v13 + 3);
LABEL_33:
      v25 = 0;
      v24 = v21 & ~v23;
      goto LABEL_34;
    }

    if (v13 == 31)
    {
      goto LABEL_45;
    }

    v18 = 1 << (v13 + 1);
    if (!*(v14 + 2))
    {
      goto LABEL_27;
    }

    v19 = v17 | v18;
    *(this + 48) = v19;
    if (v9 == 2)
    {
      goto LABEL_4;
    }

    if ((v14[20] & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v13 > 0x1D)
    {
      goto LABEL_45;
    }

    v20 = 1 << (v13 + 2);
    if (!*(v14 + 4))
    {
      goto LABEL_30;
    }

    v21 = v19 | v20;
    *(this + 48) = v21;
    if (v9 == 3)
    {
      goto LABEL_4;
    }

    if ((v14[28] & 1) == 0)
    {
      if (v13 == 29)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    if (v13 == 29)
    {
      goto LABEL_45;
    }

    v22 = *(v14 + 6);
    v23 = 1 << (v13 + 3);
    if (!v22)
    {
      goto LABEL_33;
    }

    v24 = v21 | v23;
    v25 = 1;
LABEL_34:
    *(this + 48) = v24;
    if (v9 != 4)
    {
      if (v25)
      {
        goto LABEL_48;
      }

      if (v13 > 0x1B)
      {
        goto LABEL_45;
      }

      v26 = v24 & ~(1 << (v13 + 4));
      *(this + 48) = v26;
      if (v9 != 5)
      {
        v27 = v12;
        v28 = v9 - 5;
        while (v27 <= 0x1F)
        {
          v26 &= ~(1 << v27);
          *(this + 48) = v26;
          ++v27;
          if (!--v28)
          {
            goto LABEL_4;
          }
        }

LABEL_45:
        abort();
      }
    }

LABEL_4:
    ++v10;
    v12 += v9;
    if (v10 == v8)
    {
      return this;
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 59, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v10);
LABEL_48:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 60, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 4);
  return webrtc::ScalabilityStructureL1T2::DependencyStructure(v29);
}

void webrtc::ScalabilityStructureL1T2::DependencyStructure(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x100000002;
  *&v11 = 0;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v11, 2uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 3uLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_11;
  }

  *(v4 + 4) = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 4;
  *(v4 + 16) = 0x200000002;
  *(v4 + 24) = v11;
  *(v4 + 40) = v12;
  LODWORD(v11) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), &v11, 1uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 1)
  {
    goto LABEL_11;
  }

  *(v5 + 108) = 0;
  if (*(v5 + 112))
  {
    operator delete(*(v5 + 120));
  }

  *(v5 + 112) = 4;
  *(v5 + 120) = 0x200000002;
  v6 = v12;
  *(v5 + 128) = v11;
  *(v5 + 144) = v6;
  LODWORD(v11) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 184), &v11, 1uLL);
  v10 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 160), &v10, 1uLL);
  v8 = a1 + 104;
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v8 + 8) - v7) >> 3)) <= 2)
  {
LABEL_11:
    __break(1u);
  }

  *(v7 + 212) = 1;
  if (*(v7 + 216))
  {
    operator delete(*(v7 + 224));
  }

  *(v7 + 216) = 4;
  *(v7 + 224) = 0x100000000;
  v9 = v12;
  *(v7 + 232) = v11;
  *(v7 + 248) = v9;
  LODWORD(v11) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 288), &v11, 1uLL);
  v10 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 264), &v10, 1uLL);
}

void webrtc::ScalabilityStructureL1T3::DependencyStructure(uint64_t a1@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x100000003;
  *v11 = 0;
  *&v11[8] = 0;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), v11, 3uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 5uLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_17;
  }

  *(v4 + 4) = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 6;
  *(v4 + 16) = 0x200000002;
  *(v4 + 24) = 2;
  *(v4 + 28) = *v11;
  *(v4 + 40) = *&v11[12];
  *v11 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), v11, 1uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 1)
  {
    goto LABEL_17;
  }

  *(v5 + 108) = 0;
  if (*(v5 + 112))
  {
    operator delete(*(v5 + 120));
  }

  *(v5 + 112) = 6;
  *(v5 + 120) = 0x200000002;
  *(v5 + 128) = 2;
  *(v5 + 132) = *v11;
  *(v5 + 144) = *&v11[12];
  *v11 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 184), v11, 1uLL);
  v10 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 160), &v10, 1uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 2)
  {
    goto LABEL_17;
  }

  *(v6 + 212) = 1;
  if (*(v6 + 216))
  {
    operator delete(*(v6 + 224));
  }

  *(v6 + 216) = 6;
  *(v6 + 224) = 0x100000000;
  *(v6 + 232) = 2;
  *(v6 + 236) = *v11;
  *(v6 + 248) = *&v11[12];
  *v11 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 288), v11, 1uLL);
  v10 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 264), &v10, 1uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 3)
  {
    goto LABEL_17;
  }

  *(v7 + 316) = 2;
  if (*(v7 + 320))
  {
    operator delete(*(v7 + 328));
  }

  *(v7 + 320) = 6;
  *(v7 + 328) = 0;
  *(v7 + 336) = 1;
  *(v7 + 352) = *&v11[12];
  *(v7 + 340) = *v11;
  *v11 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 392), v11, 1uLL);
  v10 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 368), &v10, 1uLL);
  v9 = a1 + 104;
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v9 + 8) - v8) >> 3)) <= 4)
  {
LABEL_17:
    __break(1u);
  }

  *(v8 + 420) = 2;
  if (*(v8 + 424))
  {
    operator delete(*(v8 + 432));
  }

  *(v8 + 424) = 6;
  *(v8 + 432) = 0;
  *(v8 + 440) = 1;
  *(v8 + 444) = *v11;
  *(v8 + 456) = *&v11[12];
  *v11 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 496), v11, 1uLL);
  v10 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 472), &v10, 1uLL);
}

void webrtc::ScalabilityStructureL2T1::DependencyStructure(uint64_t a1@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x200000002;
  *&v13 = 0x100000000;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v13, 2uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 4uLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_14;
  }

  *v4 = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 4;
  *(v4 + 16) = 0x300000002;
  *(v4 + 24) = v13;
  *(v4 + 40) = v14;
  *&v13 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), &v13, 2uLL);
  LODWORD(v12) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 56), &v12, 1uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 1)
  {
    goto LABEL_14;
  }

  *(v5 + 104) = 0;
  if (*(v5 + 112))
  {
    operator delete(*(v5 + 120));
  }

  *(v5 + 112) = 4;
  *(v5 + 120) = 0x200000002;
  v6 = v14;
  *(v5 + 128) = v13;
  *(v5 + 144) = v6;
  *&v13 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 184), &v13, 2uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 2)
  {
    goto LABEL_14;
  }

  *(v7 + 208) = 1;
  if (*(v7 + 216))
  {
    operator delete(*(v7 + 224));
  }

  *(v7 + 216) = 4;
  *(v7 + 224) = 0x200000000;
  v8 = v14;
  *(v7 + 232) = v13;
  *(v7 + 248) = v8;
  *&v13 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 288), &v13, 2uLL);
  v12 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 264), &v12, 2uLL);
  v10 = a1 + 104;
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v10 + 8) - v9) >> 3)) <= 3)
  {
LABEL_14:
    __break(1u);
  }

  *(v9 + 312) = 1;
  if (*(v9 + 320))
  {
    operator delete(*(v9 + 328));
  }

  *(v9 + 320) = 4;
  *(v9 + 328) = 0x200000000;
  v11 = v14;
  *(v9 + 336) = v13;
  *(v9 + 352) = v11;
  *&v13 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 392), &v13, 2uLL);
  LODWORD(v12) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 368), &v12, 1uLL);
}

void webrtc::ScalabilityStructureL2T2::DependencyStructure(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x200000004;
  v16 = xmmword_273BA3AF0;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v16, 4uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 6uLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_20;
  }

  *v4 = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 8;
  *&v5 = 0x200000002;
  *(&v5 + 1) = 0x200000002;
  v6 = v16;
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  *(v4 + 48) = v17;
  *&v16 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), &v16, 2uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 1)
  {
    goto LABEL_20;
  }

  *(v7 + 104) = 0;
  if (*(v7 + 112))
  {
    operator delete(*(v7 + 120));
  }

  *(v7 + 112) = 8;
  *(v7 + 120) = xmmword_273BA3B00;
  *(v7 + 136) = v16;
  *(v7 + 152) = v17;
  *&v16 = 0x300000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 184), &v16, 2uLL);
  LODWORD(v15) = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 160), &v15, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 2)
  {
    goto LABEL_20;
  }

  *(v8 + 208) = 0x100000000;
  if (*(v8 + 216))
  {
    operator delete(*(v8 + 224));
  }

  *(v8 + 216) = 8;
  v9 = v16;
  *(v8 + 224) = xmmword_273BA3B10;
  *(v8 + 240) = v9;
  *(v8 + 256) = v17;
  *&v16 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 288), &v16, 2uLL);
  LODWORD(v15) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 264), &v15, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 3)
  {
    goto LABEL_20;
  }

  *(v10 + 312) = 1;
  if (*(v10 + 320))
  {
    operator delete(*(v10 + 328));
  }

  *(v10 + 320) = 8;
  *(v10 + 328) = xmmword_273BA3B20;
  *(v10 + 360) = v17;
  *(v10 + 344) = v16;
  *&v16 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 392), &v16, 2uLL);
  LODWORD(v15) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 368), &v15, 1uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 4)
  {
    goto LABEL_20;
  }

  *(v11 + 416) = 1;
  if (*(v11 + 424))
  {
    operator delete(*(v11 + 432));
  }

  *(v11 + 424) = 8;
  v12 = v16;
  *(v11 + 432) = xmmword_273BA3B20;
  *(v11 + 448) = v12;
  *(v11 + 464) = v17;
  *&v16 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 496), &v16, 2uLL);
  v15 = 0x100000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 472), &v15, 2uLL);
  v14 = a1 + 104;
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v14 + 8) - v13) >> 3)) <= 5)
  {
LABEL_20:
    __break(1u);
  }

  *(v13 + 520) = 0x100000001;
  if (*(v13 + 528))
  {
    operator delete(*(v13 + 536));
  }

  *(v13 + 528) = 8;
  *(v13 + 536) = xmmword_273B8E9C0;
  *(v13 + 568) = v17;
  *(v13 + 552) = v16;
  *&v16 = 0x200000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 600), &v16, 2uLL);
  v15 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 576), &v15, 2uLL);
}

void webrtc::ScalabilityStructureL2T3::DependencyStructure(uint64_t a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x200000006;
  v17 = xmmword_273BA3C18;
  v18 = 0x100000001;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v17, 6uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 0xAuLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_32;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 12;
  *&v5 = 0x200000002;
  *(&v5 + 1) = 0x200000002;
  *(v4 + 120) = v5;
  *(v4 + 136) = 0x200000002;
  *(v4 + 144) = v17;
  *&v17 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), &v17, 2uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 6)
  {
    goto LABEL_32;
  }

  *(v6 + 624) = 1;
  if (*(v6 + 632))
  {
    operator delete(*(v6 + 640));
  }

  *(v6 + 632) = 12;
  *(v6 + 640) = xmmword_273BA3B30;
  *(v6 + 656) = 0x200000002;
  *(v6 + 664) = v17;
  *&v17 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 704), &v17, 2uLL);
  LODWORD(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 680), &v16, 1uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 3)
  {
    goto LABEL_32;
  }

  *(v7 + 312) = 0x200000000;
  if (*(v7 + 320))
  {
    operator delete(*(v7 + 328));
  }

  *(v7 + 320) = 12;
  *(v7 + 328) = xmmword_273B92130;
  *(v7 + 344) = 0x300000000;
  *(v7 + 352) = v17;
  *&v17 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 392), &v17, 2uLL);
  LODWORD(v16) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 368), &v16, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 8)
  {
    goto LABEL_32;
  }

  *(v8 + 832) = 0x200000001;
  if (*(v8 + 840))
  {
    operator delete(*(v8 + 848));
  }

  *(v8 + 840) = 12;
  *(v8 + 848) = 0u;
  *(v8 + 864) = 0x100000000;
  *(v8 + 872) = v17;
  *&v17 = 0x200000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 912), &v17, 2uLL);
  v16 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 888), &v16, 2uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 2)
  {
    goto LABEL_32;
  }

  *(v9 + 208) = 0x100000000;
  if (*(v9 + 216))
  {
    operator delete(*(v9 + 224));
  }

  *(v9 + 216) = 12;
  *(v9 + 224) = xmmword_273BA3B40;
  *(v9 + 240) = 0x300000003;
  *(v9 + 248) = v17;
  *&v17 = 0x300000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 288), &v17, 2uLL);
  LODWORD(v16) = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 264), &v16, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 7)
  {
    goto LABEL_32;
  }

  *(v10 + 728) = 0x100000001;
  if (*(v10 + 736))
  {
    operator delete(*(v10 + 744));
  }

  *(v10 + 736) = 12;
  *(v10 + 744) = 0u;
  *(v10 + 760) = 0x200000001;
  *(v10 + 768) = v17;
  *&v17 = 0x400000005;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 808), &v17, 2uLL);
  v16 = 0x100000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 784), &v16, 2uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 4)
  {
    goto LABEL_32;
  }

  *(v11 + 416) = 0x200000000;
  if (*(v11 + 424))
  {
    operator delete(*(v11 + 432));
  }

  *(v11 + 424) = 12;
  *(v11 + 432) = xmmword_273B92130;
  *(v11 + 448) = 0x300000000;
  *(v11 + 456) = v17;
  *&v17 = 0x500000006;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 496), &v17, 2uLL);
  LODWORD(v16) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 472), &v16, 1uLL);
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v12) >> 3)) <= 9)
  {
    goto LABEL_32;
  }

  *(v12 + 936) = 0x200000001;
  if (*(v12 + 944))
  {
    operator delete(*(v12 + 952));
  }

  *(v12 + 944) = 12;
  *(v12 + 952) = 0u;
  *(v12 + 968) = 0x100000000;
  *(v12 + 976) = v17;
  *&v17 = 0x600000007;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 1016), &v17, 2uLL);
  v16 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 992), &v16, 2uLL);
  v13 = *(a1 + 104);
  if (*(a1 + 112) == v13)
  {
    goto LABEL_32;
  }

  *v13 = 0;
  if (*(v13 + 8))
  {
    operator delete(*(v13 + 16));
  }

  *(v13 + 8) = 12;
  *(v13 + 16) = xmmword_273BA3B50;
  *(v13 + 32) = 0x300000003;
  *(v13 + 40) = v17;
  *&v17 = 0x700000008;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 80), &v17, 2uLL);
  LODWORD(v16) = 8;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 56), &v16, 1uLL);
  v15 = a1 + 104;
  v14 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v15 + 8) - v14) >> 3)) <= 5)
  {
LABEL_32:
    __break(1u);
  }

  *(v14 + 520) = 1;
  if (*(v14 + 528))
  {
    operator delete(*(v14 + 536));
  }

  *(v14 + 528) = 12;
  *(v14 + 536) = xmmword_273BA3B30;
  *(v14 + 552) = 0x200000002;
  *(v14 + 560) = v17;
  *&v17 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 600), &v17, 2uLL);
  v16 = 0x100000008;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 576), &v16, 2uLL);
}

void webrtc::ScalabilityStructureL3T1::DependencyStructure(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x300000003;
  *v12 = 0x100000000;
  *&v12[8] = 2;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), v12, 3uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 6uLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_20;
  }

  *v4 = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 6;
  *(v4 + 16) = 0x300000002;
  *(v4 + 24) = 3;
  *(v4 + 28) = *v12;
  *(v4 + 40) = *&v12[12];
  *v12 = 0x200000003;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), v12, 3uLL);
  LODWORD(v11) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 56), &v11, 1uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 1)
  {
    goto LABEL_20;
  }

  *(v5 + 104) = 0;
  if (*(v5 + 112))
  {
    operator delete(*(v5 + 120));
  }

  *(v5 + 112) = 6;
  *(v5 + 120) = 0x200000002;
  *(v5 + 128) = 2;
  *(v5 + 132) = *v12;
  *(v5 + 144) = *&v12[12];
  *v12 = 0;
  *&v12[8] = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 184), v12, 3uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 2)
  {
    goto LABEL_20;
  }

  *(v6 + 208) = 1;
  if (*(v6 + 216))
  {
    operator delete(*(v6 + 224));
  }

  *(v6 + 216) = 6;
  *(v6 + 224) = 0x200000000;
  *(v6 + 232) = 3;
  *(v6 + 236) = *v12;
  *(v6 + 248) = *&v12[12];
  *v12 = 0x100000001;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 288), v12, 3uLL);
  v11 = 0x100000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 264), &v11, 2uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 3)
  {
    goto LABEL_20;
  }

  *(v7 + 312) = 1;
  if (*(v7 + 320))
  {
    operator delete(*(v7 + 328));
  }

  *(v7 + 320) = 6;
  *(v7 + 328) = 0x200000000;
  *(v7 + 336) = 2;
  *(v7 + 352) = *&v12[12];
  *(v7 + 340) = *v12;
  *v12 = 0x100000001;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 392), v12, 3uLL);
  LODWORD(v11) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 368), &v11, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 4)
  {
    goto LABEL_20;
  }

  *(v8 + 416) = 2;
  if (*(v8 + 424))
  {
    operator delete(*(v8 + 432));
  }

  *(v8 + 424) = 6;
  *(v8 + 432) = 0;
  *(v8 + 440) = 2;
  *(v8 + 444) = *v12;
  *(v8 + 456) = *&v12[12];
  *v12 = 0x100000002;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 496), v12, 3uLL);
  v11 = 0x100000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 472), &v11, 2uLL);
  v10 = a1 + 104;
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v10 + 8) - v9) >> 3)) <= 5)
  {
LABEL_20:
    __break(1u);
  }

  *(v9 + 520) = 2;
  if (*(v9 + 528))
  {
    operator delete(*(v9 + 536));
  }

  *(v9 + 528) = 6;
  *(v9 + 536) = 0;
  *(v9 + 544) = 2;
  *(v9 + 560) = *&v12[12];
  *(v9 + 548) = *v12;
  *v12 = 0x100000002;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 600), v12, 3uLL);
  LODWORD(v11) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 576), &v11, 1uLL);
}

void webrtc::ScalabilityStructureL3T2::DependencyStructure(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *a1 = 0x600000000;
  *(a1 + 8) = 3;
  v16 = xmmword_273BA3C30;
  v17 = 0x200000002;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v16, 6uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 9uLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_29;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 12;
  *&v5 = 0x200000002;
  *(&v5 + 1) = 0x200000002;
  *(v4 + 120) = v5;
  *(v4 + 136) = 0x200000002;
  *(v4 + 144) = v16;
  *&v16 = 0;
  DWORD2(v16) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), &v16, 3uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 4)
  {
    goto LABEL_29;
  }

  *(v6 + 416) = 1;
  if (*(v6 + 424))
  {
    operator delete(*(v6 + 432));
  }

  *(v6 + 424) = 12;
  *(v6 + 432) = xmmword_273BA3B20;
  *(v6 + 448) = 0x200000002;
  *(v6 + 456) = v16;
  *&v16 = 0x100000001;
  DWORD2(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 496), &v16, 3uLL);
  LODWORD(v15) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 472), &v15, 1uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 7)
  {
    goto LABEL_29;
  }

  *(v7 + 728) = 2;
  if (*(v7 + 736))
  {
    operator delete(*(v7 + 744));
  }

  *(v7 + 736) = 12;
  *(v7 + 744) = 0u;
  *(v7 + 760) = 0x200000002;
  *(v7 + 768) = v16;
  *&v16 = 0x100000002;
  DWORD2(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 808), &v16, 3uLL);
  LODWORD(v15) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 784), &v15, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 2)
  {
    goto LABEL_29;
  }

  *(v8 + 208) = 0x100000000;
  if (*(v8 + 216))
  {
    operator delete(*(v8 + 224));
  }

  *(v8 + 216) = 12;
  *(v8 + 224) = xmmword_273BA3B10;
  *(v8 + 240) = 0x300000000;
  *(v8 + 248) = v16;
  *&v16 = 0x200000003;
  DWORD2(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 288), &v16, 3uLL);
  LODWORD(v15) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 264), &v15, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 5)
  {
    goto LABEL_29;
  }

  *(v9 + 520) = 0x100000001;
  if (*(v9 + 528))
  {
    operator delete(*(v9 + 536));
  }

  *(v9 + 528) = 12;
  *(v9 + 536) = xmmword_273B8E9C0;
  *(v9 + 552) = 0x300000000;
  *(v9 + 560) = v16;
  *&v16 = 0x300000004;
  DWORD2(v16) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 600), &v16, 3uLL);
  v15 = 0x100000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 576), &v15, 2uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 8)
  {
    goto LABEL_29;
  }

  *(v10 + 832) = 0x100000002;
  if (*(v10 + 840))
  {
    operator delete(*(v10 + 848));
  }

  *(v10 + 840) = 12;
  *(v10 + 848) = 0u;
  *(v10 + 864) = 0x100000000;
  *(v10 + 872) = v16;
  *&v16 = 0x400000005;
  DWORD2(v16) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 912), &v16, 3uLL);
  v15 = 0x100000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 888), &v15, 2uLL);
  v11 = *(a1 + 104);
  if (*(a1 + 112) == v11)
  {
    goto LABEL_29;
  }

  *v11 = 0;
  if (*(v11 + 8))
  {
    operator delete(*(v11 + 16));
  }

  *(v11 + 8) = 12;
  *(v11 + 16) = xmmword_273BA3B00;
  *(v11 + 32) = 0x300000003;
  *(v11 + 40) = v16;
  *&v16 = 0x500000006;
  DWORD2(v16) = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 80), &v16, 3uLL);
  LODWORD(v15) = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 56), &v15, 1uLL);
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v12) >> 3)) <= 3)
  {
    goto LABEL_29;
  }

  *(v12 + 312) = 1;
  if (*(v12 + 320))
  {
    operator delete(*(v12 + 328));
  }

  *(v12 + 320) = 12;
  *(v12 + 328) = xmmword_273BA3B20;
  *(v12 + 344) = 0x300000003;
  *(v12 + 352) = v16;
  *&v16 = 0x100000001;
  DWORD2(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 392), &v16, 3uLL);
  v15 = 0x100000006;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 368), &v15, 2uLL);
  v14 = a1 + 104;
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v14 + 8) - v13) >> 3)) <= 6)
  {
LABEL_29:
    __break(1u);
  }

  *(v13 + 624) = 2;
  if (*(v13 + 632))
  {
    operator delete(*(v13 + 640));
  }

  *(v13 + 632) = 12;
  *(v13 + 640) = 0u;
  *(v13 + 656) = 0x200000002;
  *(v13 + 664) = v16;
  *&v16 = 0x100000002;
  DWORD2(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 704), &v16, 3uLL);
  v15 = 0x100000006;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 680), &v15, 2uLL);
}

void webrtc::ScalabilityStructureL3T3::DependencyStructure(uint64_t a1@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x300000009;
  v24[0] = xmmword_273BA3C48;
  v24[1] = unk_273BA3C58;
  v25 = 2;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), v24, 9uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 0xFuLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_47;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 18;
  *&v5 = 0x200000002;
  *(&v5 + 1) = 0x200000002;
  *(v4 + 120) = v5;
  *(v4 + 136) = v5;
  *(v4 + 152) = 2;
  *&v24[0] = 0;
  DWORD2(v24[0]) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), v24, 3uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 6)
  {
    goto LABEL_47;
  }

  *(v6 + 624) = 1;
  if (*(v6 + 632))
  {
    operator delete(*(v6 + 640));
  }

  *(v6 + 632) = 18;
  *&v7 = 0x200000002;
  *(&v7 + 1) = 0x200000002;
  *(v6 + 640) = xmmword_273BA3B30;
  *(v6 + 656) = v7;
  *(v6 + 672) = 2;
  *&v24[0] = 0x100000001;
  DWORD2(v24[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 704), v24, 3uLL);
  LODWORD(v23) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 680), &v23, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 0xB)
  {
    goto LABEL_47;
  }

  *(v8 + 1144) = 2;
  if (*(v8 + 1152))
  {
    operator delete(*(v8 + 1160));
  }

  *(v8 + 1152) = 18;
  *(v8 + 1160) = 0;
  *(v8 + 1168) = 0;
  *(v8 + 1176) = xmmword_273BA3B20;
  *(v8 + 1192) = 2;
  *&v24[0] = 0x100000002;
  DWORD2(v24[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 1224), v24, 3uLL);
  LODWORD(v23) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 1200), &v23, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 3)
  {
    goto LABEL_47;
  }

  *(v9 + 312) = 0x200000000;
  if (*(v9 + 320))
  {
    operator delete(*(v9 + 328));
  }

  *(v9 + 320) = 18;
  *(v9 + 328) = xmmword_273B92130;
  *(v9 + 344) = xmmword_273BA3B60;
  *(v9 + 360) = 3;
  *&v24[0] = 0x200000003;
  DWORD2(v24[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 392), v24, 3uLL);
  LODWORD(v23) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 368), &v23, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 8)
  {
    goto LABEL_47;
  }

  *(v10 + 832) = 0x200000001;
  if (*(v10 + 840))
  {
    operator delete(*(v10 + 848));
  }

  *(v10 + 840) = 18;
  *(v10 + 848) = 0u;
  *(v10 + 864) = xmmword_273BA3B70;
  *(v10 + 880) = 3;
  *&v24[0] = 0x300000004;
  DWORD2(v24[0]) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 912), v24, 3uLL);
  v23 = 0x100000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 888), &v23, 2uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 0xD)
  {
    goto LABEL_47;
  }

  *(v11 + 1352) = 0x200000002;
  if (*(v11 + 1360))
  {
    operator delete(*(v11 + 1368));
  }

  *(v11 + 1360) = 18;
  *(v11 + 1368) = 0u;
  *(v11 + 1384) = 0u;
  *(v11 + 1400) = 1;
  *&v24[0] = 0x400000005;
  DWORD2(v24[0]) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 1432), v24, 3uLL);
  v23 = 0x100000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 1408), &v23, 2uLL);
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v12) >> 3)) <= 2)
  {
    goto LABEL_47;
  }

  *(v12 + 208) = 0x100000000;
  if (*(v12 + 216))
  {
    operator delete(*(v12 + 224));
  }

  *(v12 + 216) = 18;
  *(v12 + 224) = xmmword_273BA3B40;
  *(v12 + 240) = xmmword_273BA3B80;
  *(v12 + 256) = 3;
  *&v24[0] = 0x500000006;
  DWORD2(v24[0]) = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 288), v24, 3uLL);
  LODWORD(v23) = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 264), &v23, 1uLL);
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v13) >> 3)) <= 7)
  {
    goto LABEL_47;
  }

  *(v13 + 728) = 0x100000001;
  if (*(v13 + 736))
  {
    operator delete(*(v13 + 744));
  }

  *(v13 + 736) = 18;
  *(v13 + 744) = 0;
  *(v13 + 752) = 0;
  *(v13 + 760) = xmmword_273BA3B90;
  *(v13 + 776) = 3;
  *&v24[0] = 0x600000007;
  DWORD2(v24[0]) = 5;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 808), v24, 3uLL);
  v23 = 0x100000006;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 784), &v23, 2uLL);
  v14 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v14) >> 3)) <= 0xC)
  {
    goto LABEL_47;
  }

  *(v14 + 1248) = 0x100000002;
  if (*(v14 + 1256))
  {
    operator delete(*(v14 + 1264));
  }

  *(v14 + 1256) = 18;
  *(v14 + 1264) = 0u;
  *(v14 + 1280) = xmmword_273B8E9C0;
  *(v14 + 1296) = 2;
  *&v24[0] = 0x700000008;
  DWORD2(v24[0]) = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 1328), v24, 3uLL);
  v23 = 0x100000006;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 1304), &v23, 2uLL);
  v15 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v15) >> 3)) <= 4)
  {
    goto LABEL_47;
  }

  *(v15 + 416) = 0x200000000;
  if (*(v15 + 424))
  {
    operator delete(*(v15 + 432));
  }

  *(v15 + 424) = 18;
  *(v15 + 432) = xmmword_273B92130;
  *(v15 + 448) = xmmword_273BA3B60;
  *(v15 + 464) = 3;
  *&v24[0] = 0x800000009;
  DWORD2(v24[0]) = 7;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v15 + 496), v24, 3uLL);
  LODWORD(v23) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v15 + 472), &v23, 1uLL);
  v16 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v16) >> 3)) <= 9)
  {
    goto LABEL_47;
  }

  *(v16 + 936) = 0x200000001;
  if (*(v16 + 944))
  {
    operator delete(*(v16 + 952));
  }

  *(v16 + 944) = 18;
  *(v16 + 952) = 0;
  *(v16 + 960) = 0;
  *(v16 + 968) = xmmword_273BA3B70;
  *(v16 + 984) = 3;
  *&v24[0] = 0x90000000ALL;
  DWORD2(v24[0]) = 8;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v16 + 1016), v24, 3uLL);
  v23 = 0x100000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v16 + 992), &v23, 2uLL);
  v17 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v17) >> 3)) <= 0xE)
  {
    goto LABEL_47;
  }

  *(v17 + 1456) = 0x200000002;
  if (*(v17 + 1464))
  {
    operator delete(*(v17 + 1472));
  }

  *(v17 + 1464) = 18;
  *(v17 + 1472) = 0u;
  *(v17 + 1488) = 0u;
  *(v17 + 1504) = 1;
  *&v24[0] = 0xA0000000BLL;
  DWORD2(v24[0]) = 9;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v17 + 1536), v24, 3uLL);
  v23 = 0x100000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v17 + 1512), &v23, 2uLL);
  v18 = *(a1 + 104);
  if (*(a1 + 112) == v18)
  {
    goto LABEL_47;
  }

  *v18 = 0;
  if (*(v18 + 8))
  {
    operator delete(*(v18 + 16));
  }

  *(v18 + 8) = 18;
  *&v19 = 0x300000003;
  *(&v19 + 1) = 0x300000003;
  *(v18 + 16) = xmmword_273BA3B50;
  *(v18 + 32) = v19;
  *(v18 + 48) = 3;
  *&v24[0] = 0xB0000000CLL;
  DWORD2(v24[0]) = 10;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v18 + 80), v24, 3uLL);
  LODWORD(v23) = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v18 + 56), &v23, 1uLL);
  v20 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v20) >> 3)) <= 5)
  {
    goto LABEL_47;
  }

  *(v20 + 520) = 1;
  if (*(v20 + 528))
  {
    operator delete(*(v20 + 536));
  }

  *(v20 + 528) = 18;
  *(v20 + 536) = xmmword_273BA3B30;
  *(v20 + 552) = xmmword_273BA3B00;
  *(v20 + 568) = 3;
  *&v24[0] = 0x100000001;
  DWORD2(v24[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v20 + 600), v24, 3uLL);
  v23 = 0x10000000CLL;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v20 + 576), &v23, 2uLL);
  v22 = a1 + 104;
  v21 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v22 + 8) - v21) >> 3)) <= 0xA)
  {
LABEL_47:
    __break(1u);
  }

  *(v21 + 1040) = 2;
  if (*(v21 + 1048))
  {
    operator delete(*(v21 + 1056));
  }

  *(v21 + 1048) = 18;
  *(v21 + 1056) = 0u;
  *(v21 + 1072) = xmmword_273BA3B20;
  *(v21 + 1088) = 2;
  *&v24[0] = 0x100000002;
  DWORD2(v24[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v21 + 1120), v24, 3uLL);
  v23 = 0x10000000CLL;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v21 + 1096), &v23, 2uLL);
}