uint64_t webrtc::anonymous namespace::TaskQueueGcd::DeleteQueue(uint64_t this, void *a2)
{
  if (this)
  {
    JUMPOUT(0x2743DA540);
  }

  return this;
}

void webrtc::anonymous namespace::TaskQueueGcd::Delete(dispatch_queue_t *this)
{
  v2 = this[1];

  dispatch_release(v2);
}

uint64_t webrtc::anonymous namespace::TaskQueueGcd::RunTask(void (**this)(char *), void *a2)
{
  v4 = *v3;
  *v3 = v5;
  if (*(v5 + 16) == 1)
  {
    this[4](this + 8);
  }

  (this[3])(1, this + 8, this + 8);
  result = MEMORY[0x2743DA540](this, 0x10E2C40E82BB0D6);
  *v3 = v4;
  return result;
}

void webrtc::TaskQueuePacedSender::~TaskQueuePacedSender(webrtc::TaskQueuePacedSender *this)
{
  *this = &unk_2882A0A70;
  *(this + 1) = &unk_2882A0B08;
  *(this + 889) = 1;
  v2 = *(this + 120);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::PacingController::~PacingController((this + 40));
}

{
  *this = &unk_2882A0A70;
  *(this + 1) = &unk_2882A0B08;
  *(this + 889) = 1;
  v2 = *(this + 120);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::PacingController::~PacingController((this + 40));

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::TaskQueuePacedSender::~TaskQueuePacedSender(webrtc::TaskQueuePacedSender *this)
{
  *(this - 1) = &unk_2882A0A70;
  *this = &unk_2882A0B08;
  *(this + 881) = 1;
  v2 = *(this + 119);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::PacingController::~PacingController((this + 32));
}

{
  *(this - 1) = &unk_2882A0A70;
  *this = &unk_2882A0B08;
  *(this + 881) = 1;
  v2 = *(this + 119);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::PacingController::~PacingController((this + 32));

  JUMPOUT(0x2743DA540);
}

_BYTE *webrtc::TaskQueuePacedSender::MaybeProcessPackets(_BYTE *this, Timestamp a2)
{
  if ((this[889] & 1) == 0)
  {
    v2 = this;
    if (this[888] == 1)
    {
      this[952] = 1;
      SendTime = webrtc::PacingController::NextSendTime((this + 40));
      v5 = (*(**(v2 + 16) + 16))(*(v2 + 16));
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        while (1)
        {
          webrtc::PacingController::ProcessPackets((v2 + 40));
          webrtc::PacingController::NextSendTime((v2 + 40));
        }
      }

      v6 = v5;
      v7 = *(v2 + 152);
      v8 = 1000;
      if (v7 != 2)
      {
        v8 = 0;
      }

      if (v5 == 0x8000000000000000)
      {
        this = SendTime;
        if (SendTime == 0x8000000000000000)
        {
          do
          {
            webrtc::PacingController::ProcessPackets((v2 + 40));
            this = webrtc::PacingController::NextSendTime((v2 + 40));
          }

          while (this == 0x8000000000000000);
          v7 = *(v2 + 152);
          v8 = 1000;
          if (v7 != 2)
          {
            v8 = 0;
          }
        }
      }

      else
      {
        this = SendTime;
        while (v8 + v6 >= this)
        {
          webrtc::PacingController::ProcessPackets((v2 + 40));
          this = webrtc::PacingController::NextSendTime((v2 + 40));
          v7 = *(v2 + 152);
          if (v7 == 2)
          {
            v8 = 1000;
          }

          else
          {
            v8 = 0;
          }
        }
      }

      v9 = *(v2 + 512);
      v10 = v9;
      if (*(v2 + 873) == 1)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(v2 + 80) * *(v2 + 488);
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = v11 == 0x8000000000000000 || v9 == 0x8000000000000000;
            v13 = v11 + v9;
            if (v12)
            {
              v10 = 0x8000000000000000;
            }

            else
            {
              v10 = v13;
            }
          }
        }
      }

      v14 = *(v2 + 136);
      v15 = 8000000 * v10;
      if (*(v2 + 848))
      {
        v16 = *(*(v2 + 840) + 16);
        v17 = *(v2 + 392);
        v18 = *(v2 + 400);
        v19 = v15 / v14;
        if (!*(v2 + 873))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v16 = 0x8000000000000000;
        v17 = *(v2 + 392);
        v18 = *(v2 + 400);
        v19 = v15 / v14;
        if (!*(v2 + 873))
        {
          goto LABEL_40;
        }
      }

      v20 = *(v2 + 80) * *(v2 + 488);
      v21 = 0x8000000000000000;
      if (v20 != 0x8000000000000000 && v9 != 0x8000000000000000)
      {
        v21 = v20 + v9;
      }

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v23;
      }

LABEL_40:
      *(v2 + 912) = v16;
      *(v2 + 920) = v9;
      *(v2 + 928) = v19;
      *(v2 + 936) = v17;
      *(v2 + 944) = v18;
      if ((a2.var0 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*(v2 + 880) != a2.var0)
        {
LABEL_79:
          *(v2 + 952) = 0;
          return this;
        }

        *(v2 + 880) = 0x8000000000000000;
      }

      if (v7 == 2)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v2 + 24);
        v25 = *(v2 + 32);
        if (v25 != -1)
        {
          v26 = *(v2 + 896);
          if (v26 != -1.0)
          {
            if (v26 == INFINITY)
            {
              v27 = -8000000;
            }

            else
            {
              v27 = v26 == -INFINITY ? 0 : 8000000 * v26;
            }

            v28 = v27 / v14 * v25;
            if (v28 < v24)
            {
              v24 = v28;
            }
          }
        }
      }

      v29 = 0x7FFFFFFFFFFFFFFFLL;
      if (v6 != 0x8000000000000000 && this != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = &this[-v6 - v8];
        if (&this[-v6] == 0x8000000000000000)
        {
          v30 = 0x8000000000000000;
        }

        if (&this[-v6] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v30;
        }
      }

      if (v24 <= v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v24;
      }

      v32 = v31 == 0x8000000000000000 || v6 == 0x8000000000000000;
      v33 = v31 + v6;
      if (v32)
      {
        v33 = 0x8000000000000000;
      }

      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v33;
      }

      v35 = *(v2 + 880);
      if (v35 == 0x8000000000000000 || v35 > v34)
      {
        v36 = *(v2 + 960);
        if (v36)
        {
          atomic_fetch_add_explicit(v36, 1u, memory_order_relaxed);
        }

        operator new();
      }

      goto LABEL_79;
    }
  }

  return this;
}

void webrtc::TaskQueuePacedSender::CreateProbeClusters(webrtc::TaskQueuePacedSender *this, __int128 **a2)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v5 = *a2;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = (v5 + v4);
    do
    {
      v7 = *v3;
      v8 = v3[1];
      v11 = *(v3 + 4);
      v10[0] = v7;
      v10[1] = v8;
      webrtc::BitrateProber::CreateProbeCluster(this + 152, v10);
      v3 = (v3 + 40);
    }

    while (v3 != v6);
  }

  if ((*(this + 952) & 1) == 0)
  {
    v9.var0 = 0x8000000000000000;

    webrtc::TaskQueuePacedSender::MaybeProcessPackets(this, v9);
  }
}

uint64_t webrtc::TaskQueuePacedSender::Pause(webrtc::TaskQueuePacedSender *this)
{
  if ((*(this + 104) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
  }

  *(this + 104) = 1;
  v9.var0 = webrtc::PacingController::CurrentTime((this + 40));
  result = webrtc::PrioritizedPacketQueue::UpdateAverageQueueTime(this + 416, v9);
  *(this + 528) = 1;
  return result;
}

_BYTE *webrtc::TaskQueuePacedSender::Resume(webrtc::TaskQueuePacedSender *this)
{
  if (*(this + 104) == 1 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
  }

  *(this + 104) = 0;
  v9.var0 = webrtc::PacingController::CurrentTime((this + 40));
  webrtc::PrioritizedPacketQueue::UpdateAverageQueueTime(this + 416, v9);
  *(this + 528) = 0;
  v10.var0 = 0x8000000000000000;

  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this, v10);
}

Timestamp *webrtc::TaskQueuePacedSender::SetCongested(Timestamp *this, char a2)
{
  if (LOBYTE(this[107].var0) == 1 && (a2 & 1) == 0)
  {
    v3 = this;
    v4.var0 = webrtc::PacingController::CurrentTime(&this[5]);
    Elapsed = webrtc::PacingController::UpdateTimeAndGetElapsed(v3 + 5, v4);
    this = v3;
    v6.i64[0] = v3[17].var0 * Elapsed;
    v6.i64[1] = v3[18].var0 * Elapsed;
    v7 = vaddq_s64(v6, vdupq_n_s64(0x3D0900uLL));
    v7.i64[0] /= 8000000;
    v7.i64[1] /= 8000000;
    v8 = *&v3[14].var0;
    v9 = vcgtq_u64(vdupq_n_s64(2uLL), vaddq_s64(v8, vdupq_n_s64(0x8000000000000001)));
    v10 = vnegq_f64(0);
    v11 = vbslq_s8(vceqq_s64(v8, v10), v10, vsubq_s64(v8, vbslq_s8(vcgtq_s64(v8, v7), v7, v8)));
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    *&v3[14].var0 = vbslq_s8(v9, vnegq_f64(v8), v11);
  }

  LOBYTE(this[107].var0) = a2;
  if ((this[119].var0 & 1) == 0)
  {
    v12.var0 = 0x8000000000000000;

    return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this, v12);
  }

  return this;
}

void webrtc::TaskQueuePacedSender::SetPacingRates(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  webrtc::PacingController::SetPacingRates((a1 + 40), a2, a3);
  if ((a1[952] & 1) == 0)
  {
    v4.var0 = 0x8000000000000000;

    webrtc::TaskQueuePacedSender::MaybeProcessPackets(a1, v4);
  }
}

void webrtc::TaskQueuePacedSender::EnqueuePackets(uint64_t a1, void *a2)
{
  v2 = *(a1 + 960);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void non-virtual thunk towebrtc::TaskQueuePacedSender::EnqueuePackets(uint64_t a1, void *a2)
{
  v2 = *(a1 + 952);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void webrtc::TaskQueuePacedSender::RemovePacketsForSsrc(webrtc::TaskQueuePacedSender *this)
{
  v1 = *(this + 120);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void non-virtual thunk towebrtc::TaskQueuePacedSender::RemovePacketsForSsrc(webrtc::TaskQueuePacedSender *this)
{
  v1 = *(this + 119);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

_BYTE *webrtc::TaskQueuePacedSender::SetAccountForAudioPackets(webrtc::TaskQueuePacedSender *this, char a2)
{
  *(this + 872) = a2;
  v2.var0 = 0x8000000000000000;
  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this, v2);
}

_BYTE *webrtc::TaskQueuePacedSender::SetIncludeOverhead(webrtc::TaskQueuePacedSender *this)
{
  *(this + 904) = 1;
  *(this + 873) = 1;
  v1.var0 = 0x8000000000000000;
  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this, v1);
}

_BYTE *webrtc::TaskQueuePacedSender::SetTransportOverhead(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 67) & 1) == 0)
  {
    *(a1 + 80) = a2;
  }

  v2.var0 = 0x8000000000000000;
  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(a1, v2);
}

_BYTE *webrtc::TaskQueuePacedSender::SetQueueTimeLimit(TimeDelta *this, TimeDelta a2)
{
  this[108].var0 = a2.var0;
  v2.var0 = 0x8000000000000000;
  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this, v2);
}

uint64_t webrtc::TaskQueuePacedSender::OldestPacketWaitTime(webrtc::TaskQueuePacedSender *this)
{
  v1 = *(this + 114);
  if ((v1 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
    return 0;
  }

  result = (*(**(this + 2) + 16))(*(this + 2));
  if (result < v1)
  {
    return 0;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result -= v1;
  }

  return result;
}

_BYTE *absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::TaskQueuePacedSender::EnqueuePackets(std::vector<std::unique_ptr<webrtc::RtpPacketToSend>>)::$_0 &&>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **a1;
  v9 = (*a1)[1];
  for (i = (*a1)[2]; v9 != i; ++v9)
  {
    v11 = *(*v9 + 24) + *(*v9 + 2);
    if (*(v8 + 904) == 1)
    {
      v11 += *(*v9 + 16);
    }

    v12 = v11;
    v13 = *(v8 + 896);
    if (v13 != -1.0)
    {
      v12 = ((1.0 - *(v8 + 892)) * v12) + (*(v8 + 892) * v13);
    }

    v14 = *(v8 + 900);
    if (v12 > v14 && v14 != -1.0)
    {
      v12 = *(v8 + 900);
    }

    *(v8 + 896) = v12;
    v16 = *v9;
    *v9 = 0;
    v24 = v16;
    webrtc::PacingController::EnqueuePacket((v8 + 40), &v24, a3, a4, a5, a6, a7, a8);
    v17 = v24;
    v24 = 0;
    if (v17)
    {
      v18 = v17[22];
      if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v18 + 8))(v18);
      }

      v19 = v17[11];
      if (v19 && atomic_fetch_add((v19 + 24), 0xFFFFFFFF) == 1)
      {
        v20 = *(v19 + 16);
        *(v19 + 16) = 0;
        if (v20)
        {
          MEMORY[0x2743DA520](v20, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v19, 0x1010C40EE34DA14);
      }

      v21 = v17[7];
      if (v21)
      {
        v17[8] = v21;
        operator delete(v21);
      }

      MEMORY[0x2743DA540](v17, 0x1020C4060F6C936);
    }
  }

  v22.var0 = 0x8000000000000000;
  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(v8, v22);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::TaskQueuePacedSender::EnqueuePackets(std::vector<std::unique_ptr<webrtc::RtpPacketToSend>>)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v3 + 16);
        v6 = *(v3 + 8);
        if (v5 != v4)
        {
          do
          {
            v8 = *--v5;
            v7 = v8;
            *v5 = 0;
            if (v8)
            {
              v9 = v7[22];
              if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 8))(v9);
              }

              v10 = v7[11];
              if (v10 && atomic_fetch_add((v10 + 24), 0xFFFFFFFF) == 1)
              {
                v11 = *(v10 + 16);
                *(v10 + 16) = 0;
                if (v11)
                {
                  MEMORY[0x2743DA520](v11, 0x1000C8077774924);
                }

                MEMORY[0x2743DA540](v10, 0x1010C40EE34DA14);
              }

              v12 = v7[7];
              if (v12)
              {
                v7[8] = v12;
                operator delete(v12);
              }

              MEMORY[0x2743DA540](v7, 0x1020C4060F6C936);
            }
          }

          while (v5 != v4);
          v6 = *(v3 + 8);
        }

        *(v3 + 16) = v4;
        operator delete(v6);
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

_BYTE *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TaskQueuePacedSender::RemovePacketsForSsrc(unsigned int)::$_0 &&>(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  webrtc::PrioritizedPacketQueue::RemovePacketsForSsrc((*a1 + 416), a1[2], a3, a4, a5, a6, a7, a8);
  v9.var0 = 0x8000000000000000;

  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(v8, v9);
}

void webrtc::anonymous namespace::TaskQueueStdlib::Delete(webrtc::_anonymous_namespace_::TaskQueueStdlib *this)
{
  pthread_mutex_lock(this + 2);
  *(this + 192) = 1;
  pthread_mutex_unlock(this + 2);
  pthread_mutex_lock((this + 8));
  *(this + 121) = 1;
  pthread_cond_broadcast((this + 72));
  pthread_mutex_unlock((this + 8));
  if (*(this + 288) == 1)
  {
    if (*(this + 296) != 1)
    {
      goto LABEL_5;
    }

    if (pthread_join(*(this + 35), 0))
    {
      if (*(this + 288))
      {
        pthread_join(*(this + 35), 0);
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/platform_thread.cc", 174, "0 == pthread_join(*handle_, nullptr)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v2, v3, v4, v5, 0);
      }

      __break(1u);
LABEL_12:
      JUMPOUT(0x2743DA540);
    }

    if (*(this + 288))
    {
LABEL_5:
      *(this + 288) = 0;
    }
  }

  _ZNSt3__16__treeINS_12__value_typeIN6webrtc12_GLOBAL__N_115TaskQueueStdlib19DelayedEntryTimeoutEN4absl12AnyInvocableIFvvOEEEEENS_19__map_value_compareIS5_SA_NS_4lessIS5_EELb1EEENS_9allocatorISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(*(this + 33));
  _ZNSt3__15queueINS_4pairIyN4absl12AnyInvocableIFvvOEEEEENS_5dequeIS6_NS_9allocatorIS6_EEEEED1Ev(this + 26);
  pthread_mutex_destroy(this + 2);
  pthread_mutex_destroy((this + 8));
  pthread_cond_destroy((this + 72));

  goto LABEL_12;
}

uint64_t webrtc::anonymous namespace::TaskQueueStdlib::PostTaskImpl(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 128));
  v4 = *(a1 + 200) + 1;
  *(a1 + 200) = v4;
  v18 = v4;
  (*(a2 + 16))(0, a2, v19);
  v5 = *(a1 + 216);
  v6 = *(a1 + 224);
  v20 = *(a2 + 16);
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 102 * ((v6 - v5) >> 3) - 1;
  }

  v8 = *(a1 + 240);
  if (v7 == *(a1 + 248) + v8)
  {
    v9 = v8 >= 0x66;
    v10 = v8 - 102;
    if (!v9)
    {
      v11 = *(a1 + 232);
      v12 = *(a1 + 208);
      if (v6 - v5 < (v11 - v12))
      {
        operator new();
      }

      if (v11 == v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = (v11 - v12) >> 2;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

LABEL_19:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 240) = v10;
    v21 = *v5;
    *(a1 + 216) = v5 + 8;
    std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>((a1 + 208), &v21);
    v5 = *(a1 + 216);
    v6 = *(a1 + 224);
  }

  if (v6 == v5 || (v14 = *(a1 + 248) + *(a1 + 240), (v15 = *&v5[8 * (v14 / 0x66)]) == 0))
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15 + 40 * (v14 % 0x66);
  *v16 = v18;
  (v20)(0, v19, v16 + 8);
  *(v16 + 24) = v20;
  ++*(a1 + 248);
  pthread_mutex_unlock((a1 + 128));
  pthread_mutex_lock((a1 + 8));
  *(a1 + 121) = 1;
  pthread_cond_broadcast((a1 + 72));
  return pthread_mutex_unlock((a1 + 8));
}

uint64_t webrtc::anonymous namespace::TaskQueueStdlib::PostDelayedTaskImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (webrtc::g_clock)
  {
    v6 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v6 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v7 = v6 / 1000 + a3;
  pthread_mutex_lock((a1 + 128));
  v8 = *(a1 + 200) + 1;
  *(a1 + 200) = v8;
  v9 = *(a1 + 264);
  if (!v9)
  {
LABEL_16:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = v9[4];
      v12 = v10[5];
      v13 = v12 > v8;
      if (v11 != v7)
      {
        v13 = v11 > v7;
      }

      if (!v13)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_16;
      }
    }

    v14 = v12 < v8;
    v15 = v11 == v7;
    v16 = v11 < v7;
    if (v15)
    {
      v16 = v14;
    }

    if (!v16)
    {
      break;
    }

    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  (v10[8])(1, v10 + 6, v10 + 6);
  v10[8] = absl::internal_any_invocable::EmptyManager;
  v10[9] = 0;
  (*(a2 + 16))(0, a2, v10 + 6);
  *(v10 + 4) = *(a2 + 16);
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  pthread_mutex_unlock((a1 + 128));
  pthread_mutex_lock((a1 + 8));
  *(a1 + 121) = 1;
  pthread_cond_broadcast((a1 + 72));

  return pthread_mutex_unlock((a1 + 8));
}

void webrtc::anonymous namespace::TaskQueueStdlib::~TaskQueueStdlib(webrtc::_anonymous_namespace_::TaskQueueStdlib *this)
{
  if (*(this + 288) != 1)
  {
    goto LABEL_6;
  }

  if (*(this + 296) != 1)
  {
    goto LABEL_5;
  }

  if (!pthread_join(*(this + 35), 0))
  {
    if ((*(this + 288) & 1) == 0)
    {
LABEL_6:
      _ZNSt3__16__treeINS_12__value_typeIN6webrtc12_GLOBAL__N_115TaskQueueStdlib19DelayedEntryTimeoutEN4absl12AnyInvocableIFvvOEEEEENS_19__map_value_compareIS5_SA_NS_4lessIS5_EELb1EEENS_9allocatorISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(*(this + 33));
      _ZNSt3__15queueINS_4pairIyN4absl12AnyInvocableIFvvOEEEEENS_5dequeIS6_NS_9allocatorIS6_EEEEED1Ev(this + 26);
      pthread_mutex_destroy(this + 2);
      pthread_mutex_destroy((this + 8));
      pthread_cond_destroy((this + 72));
      return;
    }

LABEL_5:
    *(this + 288) = 0;
    goto LABEL_6;
  }

  if (*(this + 288))
  {
    pthread_join(*(this + 35), 0);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/platform_thread.cc", 174, "0 == pthread_join(*handle_, nullptr)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v2, v3, v4, v5, 0);
  }

  __break(1u);
}

{
  if (*(this + 288) == 1)
  {
    if (*(this + 296) != 1)
    {
      goto LABEL_5;
    }

    if (pthread_join(*(this + 35), 0))
    {
      if (*(this + 288))
      {
        pthread_join(*(this + 35), 0);
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/platform_thread.cc", 174, "0 == pthread_join(*handle_, nullptr)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v2, v3, v4, v5, 0);
      }

      __break(1u);
LABEL_12:
      JUMPOUT(0x2743DA540);
    }

    if (*(this + 288))
    {
LABEL_5:
      *(this + 288) = 0;
    }
  }

  _ZNSt3__16__treeINS_12__value_typeIN6webrtc12_GLOBAL__N_115TaskQueueStdlib19DelayedEntryTimeoutEN4absl12AnyInvocableIFvvOEEEEENS_19__map_value_compareIS5_SA_NS_4lessIS5_EELb1EEENS_9allocatorISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(*(this + 33));
  _ZNSt3__15queueINS_4pairIyN4absl12AnyInvocableIFvvOEEEEENS_5dequeIS6_NS_9allocatorIS6_EEEEED1Ev(this + 26);
  pthread_mutex_destroy(this + 2);
  pthread_mutex_destroy((this + 8));
  pthread_cond_destroy((this + 72));

  goto LABEL_12;
}

__n128 std::__function::__func<webrtc::anonymous namespace::TaskQueueStdlib::InitializeThread(webrtc::anonymous namespace::TaskQueueStdlib*,std::string_view,webrtc::ThreadPriority)::$_0,std::allocator<webrtc::anonymous namespace::TaskQueueStdlib::InitializeThread(webrtc::anonymous namespace::TaskQueueStdlib*,std::string_view,webrtc::ThreadPriority)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882A0B98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void **std::__function::__func<webrtc::anonymous namespace::TaskQueueStdlib::InitializeThread(webrtc::anonymous namespace::TaskQueueStdlib*,std::string_view,webrtc::ThreadPriority)::$_0,std::allocator<webrtc::anonymous namespace::TaskQueueStdlib::InitializeThread(webrtc::anonymous namespace::TaskQueueStdlib*,std::string_view,webrtc::ThreadPriority)::$_0>,void ()(void)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = *v9;
  v50 = v9;
  *v9 = v10;
  v11 = *(a1 + 8);
  pthread_mutex_lock(v11);
  *(v11 + 113) = 1;
  pthread_cond_broadcast((v11 + 64));
  pthread_mutex_unlock(v11);
  v12 = *(a1 + 16);
  while (1)
  {
    LOBYTE(v55) = 0;
    *&v56[8] = absl::internal_any_invocable::EmptyManager;
    *&v56[16] = 0;
    *&v56[24] = 0x7FFFFFFFFFFFFFFFLL;
    if (!webrtc::g_clock)
    {
      break;
    }

    v15 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    pthread_mutex_lock((v12 + 128));
    v16 = *(v12 + 192);
    if (v16 == 1)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (!*(v12 + 272))
    {
      goto LABEL_17;
    }

    v17 = v15 / 1000;
    v18 = *(v12 + 256);
    v19 = *(v18 + 32);
    if (v19 > v17)
    {
      v20 = v19 - v17;
      if (v20 % 1000 <= 0)
      {
        v21 = v20 / 1000;
      }

      else
      {
        v21 = v20 / 1000 + 1;
      }

      *&v56[24] = 1000 * v21;
LABEL_17:
      if (*(v12 + 248))
      {
        v22 = *(*(v12 + 216) + 8 * (*(v12 + 240) / 0x66uLL)) + 40 * (*(v12 + 240) % 0x66uLL);
LABEL_19:
        *&v56[8] = absl::internal_any_invocable::EmptyManager;
        *&v56[16] = 0;
        (*(v22 + 24))(0, v22 + 8, &v55 + 8);
        *&v56[8] = *(v22 + 24);
        *(v22 + 24) = absl::internal_any_invocable::EmptyManager;
        *(v22 + 32) = 0;
        if (!*(v12 + 248) || (v23 = *(v12 + 240), (v24 = *(*(v12 + 216) + 8 * (v23 / 0x66))) == 0))
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        (*(v24 + 40 * (v23 % 0x66) + 24))(1, v24 + 40 * (v23 % 0x66) + 8, v24 + 40 * (v23 % 0x66) + 8);
        v25 = vaddq_s64(*(v12 + 240), xmmword_273B93620);
        *(v12 + 240) = v25;
        if (v25.i64[0] >= 0xCCuLL)
        {
          operator delete(**(v12 + 216));
          *(v12 + 216) += 8;
          *(v12 + 240) -= 102;
        }
      }

      pthread_mutex_unlock((v12 + 128));
      if (v55)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    if (*(v12 + 248))
    {
      v22 = *(*(v12 + 216) + 8 * (*(v12 + 240) / 0x66uLL)) + 40 * (*(v12 + 240) % 0x66uLL);
      if (*v22 < *(v18 + 40))
      {
        goto LABEL_19;
      }
    }

    *&v56[8] = absl::internal_any_invocable::EmptyManager;
    *&v56[16] = 0;
    (*(v18 + 64))(0, v18 + 48, &v55 + 8);
    *&v56[8] = *(v18 + 64);
    *(v18 + 64) = absl::internal_any_invocable::EmptyManager;
    *(v18 + 72) = 0;
    v26 = *(v18 + 8);
    v27 = v18;
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
        v29 = *v28 == v27;
        v27 = v28;
      }

      while (!v29);
    }

    if (*(v12 + 256) == v18)
    {
      *(v12 + 256) = v28;
    }

    v30 = *(v12 + 264);
    --*(v12 + 272);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v30, v18);
    (*(v18 + 64))(1, v18 + 48, v18 + 48);
    operator delete(v18);
    pthread_mutex_unlock((v12 + 128));
    if (v55)
    {
      goto LABEL_36;
    }

LABEL_24:
    if (*&v56[16])
    {
      (*&v56[16])(&v55 + 8);
    }

    else
    {
      v13.var0 = *&v56[24];
      v14.var0 = *&v56[24];
      webrtc::Event::Wait((v12 + 8), v13, v14);
    }

    (*&v56[8])(1, &v55 + 8, &v55 + 8);
  }

  if (!dword_28100D8E4)
  {
    mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
  }

  v15 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  pthread_mutex_lock((v12 + 128));
  v16 = *(v12 + 192);
  if (v16 != 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  LOBYTE(v55) = v16;
  pthread_mutex_unlock((v12 + 128));
LABEL_36:
  (*&v56[8])(1, &v55 + 8, &v55 + 8);
  pthread_mutex_lock((v12 + 128));
  v31 = *(v12 + 216);
  *&v55 = *(v12 + 208);
  *(&v55 + 1) = v31;
  v51 = *(v12 + 224);
  *(v12 + 208) = 0u;
  *(v12 + 224) = 0u;
  *v56 = v51;
  v32 = *(v12 + 240);
  v33 = *(v12 + 248);
  *(v12 + 240) = 0u;
  *&v56[16] = v32;
  *&v56[24] = v33;
  pthread_mutex_unlock((v12 + 128));
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v34 = v51;
  if (v51 == v31)
  {
    *&v56[24] = 0;
  }

  else
  {
    v35 = &v31[v32 / 0x66];
    v36 = *v35 + 40 * (v32 % 0x66);
    v37 = v31[(v33 + v32) / 0x66] + 40 * ((v33 + v32) % 0x66);
    v38 = v51;
    if (v36 != v37)
    {
      do
      {
        if (!v36)
        {
          goto LABEL_69;
        }

        (*(v36 + 24))(1, v36 + 8, v36 + 8);
        v36 += 40;
        if (v36 - *v35 == 4080)
        {
          v39 = v35[1];
          ++v35;
          v36 = v39;
        }
      }

      while (v36 != v37);
      v31 = *(&v55 + 1);
      v34 = *v56;
      v38 = *v56;
    }

    *&v56[24] = 0;
    if ((v38 - v31) >= 0x11)
    {
      v40 = v34 - v31;
      do
      {
        v41 = *v31++;
        operator delete(v41);
        *(&v55 + 1) = v31;
        v40 -= 8;
      }

      while (v40 > 0x10);
    }
  }

  while (v34 != v31)
  {
    v42 = *--v34;
    operator delete(v42);
  }

  *&v56[16] = 0;
  v43 = *&v56[8];
  v44 = v34 - v31;
  if (*&v56[8] - v55 <= (v34 - v31))
  {
    v45 = v55;
  }

  else
  {
    if (v34 != v31)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_70;
    }

    v45 = 0;
    v34 = (v34 - v31);
    v43 = v44;
    if (v55)
    {
      operator delete(v55);
    }

    v31 = 0;
  }

  if (v34 == v31)
  {
    v46 = 0;
  }

  else
  {
    v46 = (v31 - v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  v47 = v34 + v46 - v31;
  if (v43 - v45 > v47)
  {
    if ((v34 + v46) != v31)
    {
      if ((v47 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_70:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(&v55 + 1) = 0;
    *v56 = v34 + v46 - v31;
    *&v56[8] = *v56;
    if (v45)
    {
      operator delete(v45);
    }
  }

  v55 = v52;
  *v56 = v53;
  v52 = 0u;
  v53 = 0u;
  *&v56[16] = v54;
  v54 = 0uLL;
  _ZNSt3__15queueINS_4pairIyN4absl12AnyInvocableIFvvOEEEEENS_5dequeIS6_NS_9allocatorIS6_EEEEED1Ev(&v52);
  result = _ZNSt3__15queueINS_4pairIyN4absl12AnyInvocableIFvvOEEEEENS_5dequeIS6_NS_9allocatorIS6_EEEEED1Ev(&v55);
  *v50 = v49;
  return result;
}

void **_ZNSt3__15queueINS_4pairIyN4absl12AnyInvocableIFvvOEEEEENS_5dequeIS6_NS_9allocatorIS6_EEEEED1Ev(void **result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v3 == v2)
  {
    v3 = result[1];
    result[5] = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v4 = result[4];
  v5 = &v2[v4 / 0x66];
  v6 = *v5 + 40 * (v4 % 0x66);
  v7 = v2[(result[5] + v4) / 0x66] + 40 * ((result[5] + v4) % 0x66);
  if (v6 == v7)
  {
LABEL_9:
    v1[5] = 0;
    v9 = v3 - v2;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = v1[2];
        v2 = (v1[1] + 8);
        v1[1] = v2;
        v9 = v3 - v2;
      }

      while (v9 > 2);
    }

LABEL_11:
    if (v9 == 1)
    {
      v10 = 51;
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_17;
      }

      v10 = 102;
    }

    v1[4] = v10;
LABEL_17:
    if (v2 != v3)
    {
      do
      {
        v11 = *v2++;
        operator delete(v11);
      }

      while (v2 != v3);
      v13 = v1[1];
      v12 = v1[2];
      if (v12 != v13)
      {
        v1[2] = &v12[(v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8];
      }
    }

    if (*v1)
    {
      operator delete(*v1);
    }

    return v1;
  }

  while (v6)
  {
    result = (*(v6 + 24))(1, v6 + 8, v6 + 8);
    v6 += 40;
    if (v6 - *v5 == 4080)
    {
      v8 = v5[1];
      ++v5;
      v6 = v8;
    }

    if (v6 == v7)
    {
      v2 = v1[1];
      v3 = v1[2];
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void _ZNSt3__16__treeINS_12__value_typeIN6webrtc12_GLOBAL__N_115TaskQueueStdlib19DelayedEntryTimeoutEN4absl12AnyInvocableIFvvOEEEEENS_19__map_value_compareIS5_SA_NS_4lessIS5_EELb1EEENS_9allocatorISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(void *a1)
{
  if (a1)
  {
    _ZNSt3__16__treeINS_12__value_typeIN6webrtc12_GLOBAL__N_115TaskQueueStdlib19DelayedEntryTimeoutEN4absl12AnyInvocableIFvvOEEEEENS_19__map_value_compareIS5_SA_NS_4lessIS5_EELb1EEENS_9allocatorISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(*a1);
    _ZNSt3__16__treeINS_12__value_typeIN6webrtc12_GLOBAL__N_115TaskQueueStdlib19DelayedEntryTimeoutEN4absl12AnyInvocableIFvvOEEEEENS_19__map_value_compareIS5_SA_NS_4lessIS5_EELb1EEENS_9allocatorISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(a1[1]);
    (a1[8])(1, a1 + 6, a1 + 6);

    operator delete(a1);
  }
}

void dcsctp::TaskQueueTimeoutFactory::TaskQueueTimeout::~TaskQueueTimeout(dcsctp::TaskQueueTimeoutFactory::TaskQueueTimeout *this)
{
  *this = &unk_2882A0BE0;
  v1 = *(this + 3);
  *(v1 + 4) = 0;
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
  }
}

{
  *this = &unk_2882A0BE0;
  v2 = *(this + 3);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t dcsctp::TaskQueueTimeoutFactory::TaskQueueTimeout::Start(void *a1, int a2, uint64_t a3)
{
  v4 = *(a1[1] + 32);
  if (v4)
  {
    result = (*(*v4 + 48))(v4);
    if (a2 == 0x7FFFFFFF)
    {
      a1[5] = 0x7FFFFFFFFFFFFFFFLL;
      a1[6] = a3;
    }

    else
    {
      v8 = 1000 * (result + a2);
      a1[5] = v8;
      a1[6] = a3;
      v9 = a1[4];
      if (v8 < v9)
      {
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(a1[3] + 4) = 0;
          operator new();
        }

        a1[4] = v8;
        v10 = a1[3];
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
        }

        operator new();
      }
    }
  }

  else
  {
    v11 = std::__throw_bad_function_call[abi:sn200100]();
    return dcsctp::TaskQueueTimeoutFactory::TaskQueueTimeout::Stop(v11);
  }

  return result;
}

uint64_t dcsctp::Timeout::Restart(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(*a1 + 24))(a1);
  v6 = *(*a1 + 16);

  return v6(a1, a2, a3);
}

void absl::internal_any_invocable::LocalInvoker<false,void,dcsctp::TaskQueueTimeoutFactory::TaskQueueTimeout::Start(dcsctp::DurationMs,webrtc::StrongAlias<dcsctp::TimeoutTag,unsigned long long>)::$_0 &&>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v1[4] = 0x7FFFFFFFFFFFFFFFLL;
  if (v1[5] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v2 = *(v1[1] + 32);
  if (!v2)
  {
LABEL_17:
    v12 = std::__throw_bad_function_call[abi:sn200100]();
    webrtc::TCPPort::TryCreateServerSocket(v12);
    return;
  }

  v3 = (*(*v2 + 48))(v2);
  v4 = v1[5];
  if (v4 == 0x8000000000000000)
  {
    v1[5] = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
    v10 = v1[1];
    v13 = v1[6];
    v11 = *(v10 + 64);
    if (v11)
    {
      (*(*v11 + 48))(v11, &v13);
      return;
    }

    goto LABEL_17;
  }

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4 - 1000 * v3;
    v1[5] = 0x7FFFFFFFFFFFFFFFLL;
    if (v5 >= 1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v1[5] = 0x7FFFFFFFFFFFFFFFLL;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
  v6 = v5 / 0x3E8uLL;
  if (v5 % 0x3E8uLL <= 0x1F3)
  {
    v7 = v6;
  }

  else
  {
    v7 = (v6 + 1);
  }

  v8 = v1[6];
  v9 = *(*v1 + 16);

  v9(v1, v7, v8);
}

void webrtc::TCPPort::TryCreateServerSocket(webrtc::TCPPort *this)
{
  v2 = (*(*this + 216))(this);
  v3 = (*(*this + 24))(this);
  webrtc::Network::GetBestIP(v3, v13);
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  v18 = &unk_28828CE50;
  v23 = 0;
  v19 = v14;
  v20 = v15;
  v22 = 0;
  v21 = 0;
  v4 = (*(*v2 + 24))(v2, __p, *(this + 292), *(this + 293), 0);
  v5 = *(this + 103);
  *(this + 103) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (*(this + 103))
    {
LABEL_5:
      operator new();
    }
  }

  else if (*(this + 103))
  {
    goto LABEL_5;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    (*(*this + 176))(__p, this);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void webrtc::TCPPort::~TCPPort(webrtc::TCPPort *this)
{
  *this = &unk_2882A0C18;
  *(this + 29) = &unk_2882A0D90;
  v2 = *(this + 103);
  *(this + 103) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this + 864;
  for (i = *(this + 109); i != v3; i = *(i + 8))
  {
    v5 = *(i + 88);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  if (*(this + 110))
  {
    v6 = *(this + 109);
    v7 = *(*(this + 108) + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(this + 110) = 0;
    if (v6 != v3)
    {
      do
      {
        v9 = *(v6 + 1);
        if (v6[39] < 0)
        {
          v10 = v6;
          operator delete(*(v6 + 2));
          v6 = v10;
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != v3);
      if (*(this + 110))
      {
        v11 = *(this + 109);
        v12 = *(*(this + 108) + 8);
        v13 = *v11;
        *(v13 + 8) = v12;
        *v12 = v13;
        *(this + 110) = 0;
        if (v11 != v3)
        {
          do
          {
            v16 = *(v11 + 1);
            if (v11[39] < 0)
            {
              v17 = v11;
              operator delete(*(v11 + 2));
              v11 = v17;
            }

            operator delete(v11);
            v11 = v16;
          }

          while (v16 != v3);
        }
      }
    }
  }

  v14 = *(this + 104);
  if (v14)
  {
    *(this + 105) = v14;
    operator delete(v14);
  }

  v15 = *(this + 103);
  *(this + 103) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  webrtc::Port::~Port(this);
}

{
  webrtc::TCPPort::~TCPPort(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::TCPPort::~TCPPort(webrtc::TCPPort *this)
{
  webrtc::TCPPort::~TCPPort((this - 232));
}

{
  webrtc::TCPPort::~TCPPort((this - 232));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::TCPPort::CreateConnection(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = (a2 + 32);
  v7 = *(a2 + 55);
  v8 = *(a2 + 40);
  if ((v7 & 0x80u) == 0)
  {
    v9 = a2 + 32;
  }

  else
  {
    v9 = *(a2 + 32);
  }

  if ((v7 & 0x80u) == 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (!(*(*a1 + 72))(a1, v9, v10))
  {
    return 0;
  }

  v11 = (a2 + 352);
  v12 = *(a2 + 375);
  if (v12 < 0)
  {
    v14 = *(a2 + 360);
    if (v14 != 6)
    {
      goto LABEL_22;
    }

    v11 = *v11;
    goto LABEL_15;
  }

  if (v12 == 6)
  {
LABEL_15:
    if (*v11 ^ *"active" | *(v11 + 2) ^ *"ve")
    {
      v15 = 1;
    }

    else
    {
      v15 = *(a2 + 208) == 2;
    }

    if (!v15)
    {
      return 0;
    }

    if ((v12 & 0x80000000) != 0)
    {
      if (*(a2 + 360))
      {
LABEL_23:
        if (a3 == 1)
        {
          return 0;
        }

LABEL_28:
        v16 = *(a2 + 55);
        if (v16 < 0)
        {
          if (*(a2 + 40) != 6)
          {
            goto LABEL_37;
          }

          v6 = *v6;
        }

        else if (v16 != 6)
        {
          goto LABEL_37;
        }

        v17 = bswap64(*v6 | (*(v6 + 2) << 32));
        v18 = bswap64(*"ssltcp" | (*"cp" << 32));
        v19 = v17 >= v18;
        v20 = v17 > v18;
        v21 = !v19;
        if (!((v20 - v21) | a3))
        {
          return 0;
        }

LABEL_37:
        webrtc::Network::GetBestIP(a1[72], &v27);
        v22 = *(a2 + 112);
        if (v22 == v28 && (v22 != 30 || ((v29 & 0xC0FF) == 33022) == ((*(a2 + 116) & 0xC0FFLL) == 33022)))
        {
          v23 = a1[109];
          if (v23 != a1 + 108)
          {
            while (!webrtc::SocketAddress::operator==((v23 + 2), a2 + 80))
            {
              v23 = v23[1];
              if (v23 == a1 + 108)
              {
                goto LABEL_44;
              }
            }

            v24 = v23[11];
            v26 = *v23;
            v25 = v23[1];
            *(v26 + 8) = v25;
            *v25 = v26;
            --a1[110];
            if (*(v23 + 39) < 0)
            {
              operator delete(v23[2]);
            }

            operator delete(v23);
            if (v24)
            {
              webrtc::AsyncPacketSocket::DeregisterReceivedPacketCallback(v24);
              operator new();
            }
          }

LABEL_44:
          operator new();
        }

        return 0;
      }

      goto LABEL_26;
    }
  }

  v14 = *(a2 + 375);
LABEL_22:
  if (v14)
  {
    goto LABEL_23;
  }

LABEL_26:
  result = 0;
  if (a3 != 1 && *(a2 + 136))
  {
    goto LABEL_28;
  }

  return result;
}

void webrtc::TCPPort::PrepareAddress(webrtc::TCPPort *this)
{
  if (*(this + 103))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      (*(**(this + 103) + 16))(*(this + 103));
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
    }

    (*(**(this + 103) + 24))(&v39);
    (*(**(this + 103) + 24))(v31);
    memset(&__p, 0, sizeof(__p));
    v25 = &unk_28828CE50;
    v30 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v26 = 0;
    v27 = 0u;
    v28 = 0;
    v29 = 0;
    webrtc::Port::AddAddress(this, &v39, v31, &__p, &webrtc::TCP_PROTOCOL_NAME, 3uLL, "", 0, "passive", 7uLL, 0, 90, 0, "", 0, 1u);
  }

  else
  {
    if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      (*(*this + 176))(&v39, this);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39);
      }
    }

    v16 = (*(*this + 24))(this);
    webrtc::Network::GetBestIP(v16, v21);
    v39 = 0uLL;
    v40 = 0;
    v41 = &unk_28828CE50;
    v46 = 0;
    v42 = v22;
    v43 = v23;
    v45 = 0;
    v44 = 9;
    v17 = (*(*this + 24))(this);
    webrtc::Network::GetBestIP(v17, v18);
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    v33 = &unk_28828CE50;
    v38 = 0;
    v34 = v19;
    v35 = v20;
    v37 = 0;
    v36 = 0;
    memset(&__p, 0, sizeof(__p));
    v25 = &unk_28828CE50;
    v30 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v26 = 0;
    v27 = 0u;
    v28 = 0;
    v29 = 0;
    webrtc::Port::AddAddress(this, &v39, v31, &__p, &webrtc::TCP_PROTOCOL_NAME, 3uLL, "", 0, "active", 6uLL, 0, 90, 0, "", 0, 1u);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        return;
      }

LABEL_15:
      operator delete(v39);
      return;
    }
  }

  else if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v31[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_15;
  }
}

uint64_t webrtc::TCPPort::SendTo(webrtc::TCPPort *this, const void *a2, uint64_t a3, const webrtc::SocketAddress *a4, const webrtc::AsyncSocketPacketOptions *a5)
{
  v10 = (*(*this + 88))(this, a4);
  if (v10)
  {
    if ((*(v10 + 2333) & 1) == 0)
    {
      if ((*(v10 + 2957) & 1) == 0 && *(v10 + 2956) == 1)
      {
        v27 = v10;
        v28 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
        v29 = v27;
        if ((v28 & 1) == 0)
        {
          webrtc::Connection::ToString(v27, &__p);
          webrtc::webrtc_logging_impl::Log("\r\n\t", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v29 = v27;
        }

        webrtc::TCPConnection::CreateOutgoingTcpSocket(v29);
      }

      return 0xFFFFFFFFLL;
    }

    v11 = *(v10 + 2944);
    if (!v11)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        (*(*this + 176))(&__p, this);
        webrtc::SocketAddress::ToSensitiveString(a4, v62);
        webrtc::webrtc_logging_impl::Log("\r\n\t\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
        if ((v63 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

LABEL_12:
        operator delete(v62[0]);
LABEL_13:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v19 = *(this + 109);
    if (v19 == (this + 864))
    {
      goto LABEL_10;
    }

    while (!webrtc::SocketAddress::operator==((v19 + 2), a4))
    {
      v19 = v19[1];
      if (v19 == (this + 864))
      {
        goto LABEL_10;
      }
    }

    v11 = v19[11];
    if (!v11)
    {
LABEL_10:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        (*(*this + 176))(&__p, this);
        webrtc::SocketAddress::ToSensitiveString(a4, v62);
        webrtc::webrtc_logging_impl::Log("\r\n\t\n", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
        if ((v63 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

LABEL_15:
      *(this + 214) = 65;
      return 0xFFFFFFFFLL;
    }
  }

  *&__p.__r_.__value_.__l.__data_ = *a5;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = *(a5 + 4);
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v39 = *(a5 + 3);
  v38 = *(a5 + 4);
  if (v38 != v39)
  {
    if (((v38 - v39) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v40 = *(a5 + 4);
  v57 = *(a5 + 3);
  v58 = v40;
  v59 = *(a5 + 5);
  v60 = *(a5 + 12);
  v61 = *(a5 + 52);
  v41 = (*(*this + 128))(this);
  if (v41 < 4)
  {
    v42 = v41 + 1;
  }

  else
  {
    v42 = 0;
  }

  DWORD2(v58) = v42;
  WORD6(v58) = *((*(*this + 24))(this) + 286);
  BYTE14(v58) = 1;
  result = (*(*v11 + 32))(v11, a2, a3, &__p);
  if ((result & 0x80000000) != 0)
  {
    v43 = result;
    *(this + 214) = (*(*v11 + 80))(v11);
    v44 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
    result = v43;
    if ((v44 & 1) == 0)
    {
      (*(*this + 176))(v62, this);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      result = v43;
    }
  }

  if (v54)
  {
    v55 = v54;
    v52 = result;
    operator delete(v54);
    return v52;
  }

  return result;
}

uint64_t webrtc::TCPPort::GetOption(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 832);
  v4 = *(a1 + 840);
  if (v4 == v3)
  {
    v3 = *(a1 + 840);
    v10 = v3;
  }

  else
  {
    v5 = (v4 - v3) >> 3;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    v10 = v3;
    if (v4 != v3)
    {
      v10 = v3 + 8;
      if (*v3 > a2)
      {
        v10 = v3;
      }
    }
  }

  if (v3 == v10)
  {
    v3 = *(a1 + 840);
  }

  if (v4 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = *(v3 + 1);
  return result;
}

uint64_t webrtc::TCPPort::SetOption(void *a1, int a2, int a3)
{
  v5 = a1[104];
  v6 = a1[105];
  v7 = v6 - v5;
  if (v6 == v5)
  {
    v9 = a1[105];
    v14 = 0;
  }

  else
  {
    v8 = v7 >> 3;
    v9 = a1[104];
    do
    {
      v10 = v8 >> 1;
      v11 = &v9[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = v11 + 8;
      v8 += ~(v8 >> 1);
      if (v13 < a2)
      {
        v9 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v8);
    v14 = v6 - v9;
    if (v6 != v9)
    {
      v15 = v9;
      if (*v9 <= a2)
      {
        goto LABEL_37;
      }
    }
  }

  v16 = a1[106];
  if (v6 < v16)
  {
    if (v9 != v6)
    {
      v17 = (v6 - 8);
      v18 = a1[105];
      if (v6 >= 8)
      {
        *v6 = *v17;
        v18 = v6 + 8;
      }

      a1[105] = v18;
      if (v6 != v9 + 8)
      {
        v19 = v14 - 16;
        if (v19 < 0xB8)
        {
          goto LABEL_17;
        }

        v32 = (v6 - 16 - v9) & 0xFFFFFFFFFFFFFFF8;
        v33 = v6 - v32 - 8;
        v34 = v6 - 16 - v32;
        v35 = v6 - v32 - 4;
        v36 = v6 - 12 - v32;
        v37 = v35 >= v17 || v36 >= v6;
        v38 = !v37;
        if (v34 < v6 - 4 && v33 < v6 - 12)
        {
          goto LABEL_17;
        }

        if (v38)
        {
          goto LABEL_17;
        }

        v40 = (v19 >> 3) + 1;
        v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
        v42 = v6 - v41;
        v43 = &v17[-v41];
        v44 = (v6 - 40);
        v45 = (v6 - 32);
        v46 = v40 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = *v44;
          v48 = v44[1];
          v44 -= 2;
          *v45 = v47;
          v45[1] = v48;
          v45 -= 2;
          v46 -= 4;
        }

        while (v46);
        v6 = v42;
        v17 = v43;
        if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_17:
          v20 = (v6 - 8);
          do
          {
            v21 = *(v17 - 1);
            v17 -= 8;
            *v20-- = v21;
          }

          while (v17 != v9);
        }
      }

      *v9 = a2;
      *(v9 + 1) = 0;
      v15 = v9;
      goto LABEL_37;
    }

    if (v5)
    {
      *v6 = a2;
      *(v6 + 4) = 0;
      a1[105] = v6 + 8;
      v15 = v9;
      goto LABEL_37;
    }

    goto LABEL_59;
  }

  v22 = (v7 >> 3) + 1;
  if (v22 >> 61)
  {
    goto LABEL_60;
  }

  if ((v16 - v5) >> 2 > v22)
  {
    v22 = (v16 - v5) >> 2;
  }

  if (v16 - v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v23 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    if (!(v23 >> 61))
    {
      operator new();
    }

    goto LABEL_61;
  }

  v24 = v9 - v5;
  v25 = (v9 - v5) >> 3;
  v15 = (8 * v25);
  if (!v25)
  {
    if (v24 < 1)
    {
      v49 = v24 >> 2;
      if (v9 == v5)
      {
        v50 = 1;
      }

      else
      {
        v50 = v49;
      }

      if (!(v50 >> 61))
      {
        operator new();
      }

LABEL_61:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v15 = (v15 - (((v24 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
  }

  if (!v15)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v15 = a2;
  v15[1] = 0;
  v26 = a1[105] - v9;
  memcpy(v15 + 2, v9, v26);
  a1[105] = v9;
  v27 = a1[104];
  v28 = v9 - v27;
  v29 = v15 - (v9 - v27);
  memcpy(v29, v27, v28);
  v30 = a1[104];
  a1[104] = v29;
  a1[105] = v15 + v26 + 8;
  a1[106] = 0;
  if (v30)
  {
    operator delete(v30);
  }

LABEL_37:
  v15[1] = a3;
  return 0;
}

BOOL webrtc::TCPPort::SupportsProtocol(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a3 == 6)
  {
    return *a2 == *"ssltcp" && a2[2] == *"cp";
  }

  if (a3 == 3)
  {
    return *a2 == webrtc::TCP_PROTOCOL_NAME && *(a2 + 2) == 112;
  }

  return 0;
}

void webrtc::TCPPort::OnNewConnection(webrtc::TCPPort *this, webrtc::AsyncListenSocket *a2, webrtc::AsyncPacketSocket *a3)
{
  v5 = *(this + 104);
  v6 = *(this + 105);
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = v5[1];
    v5 += 2;
    (*(*a3 + 72))(a3, v7, v8);
  }

  memset(&__dst, 0, sizeof(__dst));
  v28 = &unk_28828CE50;
  v33 = 0;
  *&__p.__r_.__value_.__r.__words[1] = 0uLL;
  v21 = 0;
  v29 = 0;
  v30 = 0u;
  v31 = 0;
  v32 = 0;
  (*(*a3 + 24))(&__p, a3, a2);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(&__dst, p_p, size);
  }

  else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p;
  }

  v29 = v22;
  v30 = v23;
  v31 = v24;
  v33 = v26;
  v32 = v25;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v34 = a3;
  v17.n128_u64[0] = this;
  v19 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TCPPort::OnNewConnection(webrtc::AsyncListenSocket *,webrtc::AsyncPacketSocket *)::$_0 &,webrtc::AsyncPacketSocket *,webrtc::ReceivedIpPacket const&>;
  v18 = absl::internal_any_invocable::LocalManagerTrivial;
  webrtc::AsyncPacketSocket::RegisterReceivedPacketCallback(a3, &v17, v9, v10, v11, v12, v13, v14);
  v18(1, &v17, &v17);
  operator new();
}

void *webrtc::TCPPort::OnReadyToSend(void *this, webrtc::AsyncPacketSocket *a2)
{
  v2 = this[87];
  v3 = this + 88;
  if (v2 != this + 88)
  {
    do
    {
      v4 = v2[13];
      this = v4[18];
      for (v4[20] = this; this != v4 + 17; this = v4[20])
      {
        v6 = this[2];
        v5 = this + 2;
        v4[20] = *(v5 - 1);
        v6(v5, v4);
      }

      v7 = v2[1];
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
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  return this;
}

uint64_t webrtc::TCPPort::OnSentPacket(webrtc::TCPPort *this, webrtc::AsyncPacketSocket *a2, const webrtc::SentPacketInfo *a3)
{
  v4 = this + 192;
  result = *(this + 25);
  for (*(this + 27) = result; result != v4; result = *(this + 27))
  {
    v8 = *(result + 16);
    v7 = result + 16;
    *(this + 27) = *(v7 - 8);
    v8(v7, a3);
  }

  return result;
}

void webrtc::TCPConnection::TCPConnection(uint64_t a1, __int128 *a2, std::string *a3)
{
  v3 = *a2;
  *a2 = 0;
  v4 = v3;
  webrtc::Connection::Connection(a1, &v4, 0, a3);
}

uint64_t *webrtc::TCPConnection::OnDestroyed(uint64_t *this, webrtc::Connection *a2)
{
  v2 = this[368];
  if (v2)
  {
    return webrtc::TCPConnection::DisconnectSocketSignals(this, v2);
  }

  return this;
}

void webrtc::TCPConnection::CreateOutgoingTcpSocket(webrtc::TCPConnection *this)
{
  v2 = (*(*this + 24))(this);
  v3 = v2 + 32;
  v4 = *(v2 + 55);
  if (v4 < 0)
  {
    if (*(v2 + 40) != 6)
    {
      goto LABEL_30;
    }

    v3 = *v3;
  }

  else if (v4 != 6)
  {
LABEL_30:
    v8 = 0;
    v9 = *(this + 368);
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = *v3;
  v6 = *(v3 + 4);
  v8 = v5 == *"ssltcp" && v6 == *"cp";
  v9 = *(this + 368);
  if (!v9)
  {
LABEL_14:
    v79 = 0;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = v8;
    v10 = (*(**(this + 32) + 216))(*(this + 32));
    v11 = (*(**(this + 32) + 24))(*(this + 32));
    webrtc::Network::GetBestIP(v11, &v65);
    memset(&__p, 0, sizeof(__p));
    v69 = &unk_28828CE50;
    v74 = 0;
    v70 = v66;
    v71 = v67;
    v73 = 0;
    v72 = 0;
    v12 = (*(*this + 24))(this);
    v13 = (*(*v10 + 32))(v10, &__p, v12 + 80, &v75);
    v14 = *(this + 368);
    *(this + 368) = v13;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (*(this + 368))
      {
LABEL_18:
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
        {
          goto LABEL_23;
        }

        v21 = webrtc::Connection::ToString(this, &v65);
        (*(**(this + 368) + 16))(&__p, v21);
        webrtc::SocketAddress::ToSensitiveString(&__p, &v63);
        v22 = (*(*this + 24))(this);
        webrtc::SocketAddress::ToSensitiveString((v22 + 80), &v61);
        webrtc::webrtc_logging_impl::Log("\r\n\t\n\t\n", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
        if (v62 < 0)
        {
          operator delete(v61);
          if ((v64 & 0x80000000) == 0)
          {
LABEL_21:
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_42;
          }
        }

        else if ((v64 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        operator delete(v63);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_22:
          if ((SBYTE11(v67) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_43;
        }

LABEL_42:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SBYTE11(v67) & 0x80000000) == 0)
        {
LABEL_23:
          v30 = *(this + 2333);
          *(this + 2333) = 0;
          if (!v30)
          {
            goto LABEL_29;
          }

LABEL_24:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
          {
            webrtc::Connection::ToString(this, &__p);
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          v38 = *(this + 4);
          for (*(this + 6) = v38; v38 != (this + 24); v38 = *(this + 6))
          {
            v40 = v38[2];
            v39 = v38 + 2;
            *(this + 6) = *(v39 - 1);
            v40(v39, this);
          }

LABEL_29:
          *(this + 2957) = 1;
          webrtc::TCPConnection::ConnectSocketSignals(this, *(this + 368), v15, v16, v17, v18, v19, v20);
        }

LABEL_43:
        operator delete(v65);
        v58 = *(this + 2333);
        *(this + 2333) = 0;
        if (!v58)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    else if (*(this + 368))
    {
      goto LABEL_18;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      v41 = webrtc::Connection::ToString(this, &__p);
      v42 = (*(*this + 24))(this, v41);
      webrtc::SocketAddress::ToSensitiveString((v42 + 80), &v65);
      webrtc::webrtc_logging_impl::Log("\r\n\t\n", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
      if ((SBYTE11(v67) & 0x80000000) == 0)
      {
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_46:
        operator delete(__p.__r_.__value_.__l.__data_);
        v59 = *(this + 640);
        *(this + 640) = 3;
        if (v59 == 3)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      operator delete(v65);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_46;
      }
    }

LABEL_36:
    v50 = *(this + 640);
    *(this + 640) = 3;
    if (v50 == 3)
    {
      goto LABEL_47;
    }

LABEL_37:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::Connection::ToString(this, &__p);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v51, v52, v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_47:
    v60 = *(this + 371);
    if (v60)
    {
      atomic_fetch_add_explicit(v60, 1u, memory_order_relaxed);
    }

    operator new();
  }

LABEL_13:
  webrtc::TCPConnection::DisconnectSocketSignals(this, v9);
  goto LABEL_14;
}

void webrtc::TCPConnection::ConnectSocketSignals(webrtc::TCPConnection *this, webrtc::AsyncPacketSocket *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 2956) == 1)
  {
    operator new();
  }

  v10.n128_u64[0] = this;
  v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_0 &,webrtc::AsyncPacketSocket *,webrtc::ReceivedIpPacket const&>;
  v11 = absl::internal_any_invocable::LocalManagerTrivial;
  webrtc::AsyncPacketSocket::RegisterReceivedPacketCallback(a2, &v10, a3, a4, a5, a6, a7, a8);
  v11(1, &v10, &v10);
  v9 = *(this + 371);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::TCPConnection::~TCPConnection(webrtc::TCPConnection *this)
{
  *this = &unk_2882A0DB0;
  v2 = this + 2888;
  *(this + 361) = &unk_2882A0E10;
  v3 = *(this + 371);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 368);
  *(this + 368) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 361) = &unk_28828CEE0;
  (*(this + 364))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 2920, *(this + 366));

  webrtc::Connection::~Connection(this);
}

{
  *this = &unk_2882A0DB0;
  v2 = this + 2888;
  *(this + 361) = &unk_2882A0E10;
  v3 = *(this + 371);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 368);
  *(this + 368) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 361) = &unk_28828CEE0;
  (*(this + 364))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 2920, *(this + 366));
  webrtc::Connection::~Connection(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::TCPConnection::~TCPConnection(webrtc::TCPConnection *this)
{
  v2 = (this - 2888);
  *(this - 361) = &unk_2882A0DB0;
  *this = &unk_2882A0E10;
  v3 = *(this + 10);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));

  webrtc::Connection::~Connection(v2);
}

{
  v2 = (this - 2888);
  *(this - 361) = &unk_2882A0DB0;
  *this = &unk_2882A0E10;
  v3 = *(this + 10);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
  webrtc::Connection::~Connection(v2);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::TCPConnection::Send(webrtc::TCPConnection *this, const void *a2, uint64_t a3, const webrtc::AsyncSocketPacketOptions *a4)
{
  if (!*(this + 368))
  {
    goto LABEL_5;
  }

  if ((*(this + 2333) & 1) == 0)
  {
    if ((*(this + 2957) & 1) == 0 && *(this + 2956) == 1)
    {
      v6 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
      v7 = this;
      if ((v6 & 1) == 0)
      {
        webrtc::Connection::ToString(this, &__p);
        webrtc::webrtc_logging_impl::Log("\r\n\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = this;
      }

      webrtc::TCPConnection::CreateOutgoingTcpSocket(v7);
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(this + 2958) & 1) != 0 || *(this + 582))
  {
LABEL_5:
    *(this + 738) = 57;
    return 0xFFFFFFFFLL;
  }

  ++*(this + 147);
  *&__p.__r_.__value_.__l.__data_ = *a4;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = *(a4 + 4);
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v16 = *(a4 + 3);
  v15 = *(a4 + 4);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v17 = *(a4 + 4);
  v40 = *(a4 + 3);
  v41 = v17;
  v42 = *(a4 + 5);
  v43 = *(a4 + 12);
  v44 = *(a4 + 52);
  v18 = *(this + 31);
  if (v18 && *v18 == 1)
  {
    v19 = a2;
    v20 = a3;
    v21 = this;
    v22 = *(this + 32);
  }

  else
  {
    v19 = a2;
    v20 = a3;
    v21 = this;
    v22 = 0;
  }

  v23 = (*(*v22 + 128))(v22);
  if (v23 < 4)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 0;
  }

  DWORD2(v41) = v24;
  WORD6(v41) = *((*(*v22 + 24))(v22) + 286);
  BYTE14(v41) = 1;
  v25 = (*(**(v21 + 368) + 32))(*(v21 + 368), v19, v20, &__p);
  if (webrtc::g_clock)
  {
    v26 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v26 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v27 = v26 / 1000000;
  if ((v25 & 0x80000000) != 0)
  {
    ++*(v21 + 146);
    v35 = (*(**(v21 + 368) + 80))(*(v21 + 368));
    result = v25;
    *(v21 + 738) = v35;
  }

  else
  {
    result = v25;
    if (*(v21 + 288) == -1)
    {
      v28 = (*(*(v21 + 282) + 16))();
      result = v25;
      *(v21 + 289) = v28;
      *(v21 + 288) = v28;
      *(v21 + 287) = 0;
      **(v21 + 285) = 0;
    }

    v29 = 0;
    v30 = *(v21 + 284);
    while (1)
    {
      v31 = *(v21 + 288);
      v32 = *(v21 + 283);
      if (v32 + v31 > v27)
      {
        break;
      }

      *(v21 + 288) = v32 + v31;
      v33 = (*(v21 + 287) + 1) % (v30 + 1);
      *(v21 + 287) = v33;
      v34 = *(v21 + 285);
      *(v34 + 8 * v33) = 0;
      if (++v29 > v30)
      {
        v32 = *(v21 + 283);
        v31 = *(v21 + 288);
        goto LABEL_39;
      }
    }

    v34 = *(v21 + 285);
    v33 = *(v21 + 287);
LABEL_39:
    *(v21 + 288) = v31 + (v27 - v31) / v32 * v32;
    *(v34 + 8 * v33) += v25;
    *(v21 + 286) += v25;
  }

  *(v21 + 290) = v27;
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
    return v25;
  }

  return result;
}

void *webrtc::TCPConnection::OnSentPacket(void *this, webrtc::AsyncPacketSocket *a2, const webrtc::SentPacketInfo *a3)
{
  v3 = this[31];
  if (v3)
  {
    if (*v3 == 1)
    {
      v4 = this[32];
      if (v4)
      {
        this = v4[25];
        for (v4[27] = this; this != v4 + 24; this = v4[27])
        {
          v7 = this[2];
          v6 = this + 2;
          v4[27] = *(v6 - 1);
          v7(v6, a3);
        }
      }
    }
  }

  return this;
}

void webrtc::TCPConnection::OnConnectionRequestResponse(webrtc::TCPConnection *this, webrtc::StunRequest *a2, webrtc::StunMessage *a3)
{
  webrtc::Connection::OnConnectionRequestResponse(this, a2, a3);
  if (*(this + 2958) == 1)
  {
    v4 = *(this + 18);
    for (*(this + 20) = v4; v4 != (this + 136); v4 = *(this + 20))
    {
      v6 = v4[2];
      v5 = v4 + 2;
      *(this + 20) = *(v5 - 1);
      v6(v5, this);
    }
  }

  *(this + 2958) = 0;
}

void webrtc::TCPConnection::OnConnect(webrtc::TCPConnection *this, webrtc::AsyncPacketSocket *a2)
{
  v2 = *(this + 31);
  if (!v2 || *v2 != 1 || !*(this + 32))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
    }

    return;
  }

  (*(*a2 + 16))(v87, a2);
  v5 = (*(**(this + 32) + 24))(*(this + 32));
  memset(__p, 0, 24);
  memset(&__p[32], 0, 20);
  *&__p[24] = &unk_28828CE50;
  if (SHIBYTE(v88) < 0)
  {
    v13 = v5;
    std::string::__assign_no_alias<true>(__p, v87[0], v87[1]);
    v5 = v13;
  }

  else
  {
    *__p = *v87;
    *&__p[16] = v88;
  }

  v14 = v90;
  *&__p[32] = v90;
  *&__p[36] = v91;
  v15 = v92;
  v84 = v92;
  v16 = v94;
  v86 = v94;
  v17 = v93;
  v85 = v93;
  v19 = *(v5 + 240);
  v18 = *(v5 + 248);
  memset(__dst, 0, 24);
  memset(&__dst[4], 0, 20);
  __dst[3] = &unk_28828CE50;
  if ((__p[23] & 0x80000000) != 0)
  {
    std::string::__assign_no_alias<true>(__dst, *__p, *&__p[8]);
    v14 = *&__p[32];
    v15 = v84;
    v16 = v86;
    v17 = v85;
  }

  else
  {
    *__dst = *__p;
    __dst[2] = *&__p[16];
  }

  LODWORD(__dst[4]) = v14;
  *(&__dst[4] + 4) = *&__p[36];
  v96 = v15;
  v98 = v16;
  v97 = v17;
  if (v19 == v18)
  {
    goto LABEL_36;
  }

  if (v14 == 30)
  {
    v26 = (v19 + 12);
    while (*(v26 - 1) != 30 || *(&__dst[4] + 4) != *v26 || *(&__dst[5] + 4) != v26[1])
    {
      v27 = v26 + 20;
      v26 += 4;
      if (v27 == v18)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

  if (v14 == 2)
  {
    v24 = v19 + 12;
    while (__PAIR64__(HIDWORD(__dst[4]), 2) != *(v24 - 4))
    {
      v25 = (v24 + 20);
      v24 += 32;
      if (v25 == v18)
      {
        goto LABEL_36;
      }
    }

LABEL_35:
    v22 = 1;
    goto LABEL_37;
  }

  if (v14)
  {
LABEL_36:
    v22 = 0;
    goto LABEL_37;
  }

  v20 = (v19 + 32);
  do
  {
    v21 = *(v20 - 6);
    v22 = v21 == 0;
    if (v21)
    {
      v23 = v20 == v18;
    }

    else
    {
      v23 = 1;
    }

    v20 += 32;
  }

  while (!v23);
LABEL_37:
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
    if ((__p[23] & 0x80000000) == 0)
    {
LABEL_39:
      if (v22)
      {
        goto LABEL_40;
      }

      goto LABEL_47;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(*__p);
  if (v22)
  {
LABEL_40:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      goto LABEL_82;
    }

    v29 = webrtc::Connection::ToString(this, __p);
    (*(*a2 + 24))(__dst, a2, v29);
    webrtc::SocketAddress::ToSensitiveString(__dst, &v79);
    webrtc::webrtc_logging_impl::Log("\r\n\t\n", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
    if (SBYTE3(v82) < 0)
    {
      operator delete(v79);
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
LABEL_43:
        if ((__p[23] & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

LABEL_69:
        operator delete(*__p);
        goto LABEL_82;
      }
    }

    else if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(__dst[0]);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_69;
  }

LABEL_47:
  (*(*a2 + 16))(__dst, a2);
  IsLoopbackIP = webrtc::SocketAddress::IsLoopbackIP(__dst);
  v38 = IsLoopbackIP;
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
    if (v38)
    {
LABEL_49:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_82;
      }

      webrtc::IPAddress::ToSensitiveString(&v89, __dst);
      v39 = (*(**(this + 32) + 24))(*(this + 32));
      webrtc::Network::ToString(v39, __p);
      webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t", v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else if (IsLoopbackIP)
  {
    goto LABEL_49;
  }

  v47 = (*(**(this + 32) + 24))(*(this + 32));
  webrtc::Network::GetBestIP(v47, &v79);
  if (v80 == 2)
  {
    v50 = v81;
  }

  else
  {
    if (v80 != 30)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_79;
      }

LABEL_75:
      webrtc::IPAddress::ToSensitiveString(&v89, __dst);
      v52 = (*(**(this + 32) + 24))(*(this + 32));
      webrtc::Network::ToString(v52, __p);
      webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v53, v54, v55, v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
      }

LABEL_79:
      webrtc::TCPConnection::OnClose(this, 0);
      if ((SHIBYTE(v88) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_89;
    }

    *(&__dst[1] + 4) = *MEMORY[0x277D85EE8];
    if (v81 == *(&__dst[1] + 4) && v82 == *(&__dst[2] + 4))
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_82;
      }

      goto LABEL_92;
    }

    *&__p[12] = webrtc::kV4MappedPrefix;
    v50 = v81 != webrtc::kV4MappedPrefix || v82 != *(&webrtc::kV4MappedPrefix + 1);
  }

  v51 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
  if (v50)
  {
    if (v51)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  if (v51)
  {
    goto LABEL_82;
  }

LABEL_92:
  webrtc::IPAddress::ToSensitiveString(&v89, __dst);
  v71 = (*(**(this + 32) + 24))(*(this + 32));
  webrtc::Network::ToString(v71, __p);
  webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t", v72, v73, v74, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_51:
    operator delete(*__p);
  }

LABEL_52:
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_82:
  v60 = *(this + 2333);
  *(this + 2333) = 1;
  if ((v60 & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::Connection::ToString(this, __dst);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v61, v62, v63, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    v68 = *(this + 4);
    for (*(this + 6) = v68; v68 != (this + 24); v68 = *(this + 6))
    {
      v70 = v68[2];
      v69 = v68 + 2;
      *(this + 6) = *(v69 - 1);
      v70(v69, this);
    }
  }

  *(this + 2957) = 0;
  if (SHIBYTE(v88) < 0)
  {
LABEL_89:
    operator delete(v87[0]);
  }
}

void webrtc::TCPConnection::OnClose(webrtc::TCPConnection *this, webrtc::AsyncPacketSocket *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::Connection::ToString(this, &__p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc"), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v10 = *(this + 31);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *(this + 31);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (*v10 == 1 && *(this + 32))
  {
    if (*(this + 2333) == 1)
    {
      *(this + 2333) = 0;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        webrtc::Connection::ToString(this, &__p);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v18 = *(this + 4);
      for (*(this + 6) = v18; v18 != (this + 24); v18 = *(this + 6))
      {
        v20 = v18[2];
        v19 = v18 + 2;
        *(this + 6) = *(v19 - 1);
        v20(v19, this);
      }

      *(this + 2958) = 1;
      v21 = *(this + 371);
      if (v21)
      {
        atomic_fetch_add_explicit(v21, 1u, memory_order_relaxed);
      }

      operator new();
    }

    if ((*(this + 2958) & 1) == 0)
    {
      webrtc::TCPConnection::DisconnectSocketSignals(this, *(this + 368));
      (*(**(this + 32) + 200))(*(this + 32), this);
    }

    return;
  }

LABEL_17:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
  }
}

uint64_t *webrtc::TCPConnection::DisconnectSocketSignals(webrtc::TCPConnection *this, webrtc::AsyncPacketSocket *a2)
{
  if (*(this + 2956) == 1)
  {
    v4 = this + 2888;
    v5 = *(a2 + 31);
    if (v5 != (a2 + 240))
    {
      while (v5[3] != v4)
      {
        v5 = v5[1];
        if (v5 == (a2 + 240))
        {
          goto LABEL_9;
        }
      }

      v6 = *v5;
      v7 = v5[1];
      *(v6 + 8) = v7;
      *v7 = v6;
      v8 = *(a2 + 33);
      --*(a2 + 32);
      operator delete(v5);
      if (v8 == v5)
      {
        *(a2 + 33) = v7;
      }

      (*(this + 363))(this + 2888, a2 + 224);
    }

LABEL_9:
    v9 = *(a2 + 17);
    if (v9 != (a2 + 128))
    {
      while (v9[3] != v4)
      {
        v9 = v9[1];
        if (v9 == (a2 + 128))
        {
          goto LABEL_16;
        }
      }

      v10 = *v9;
      v11 = v9[1];
      *(v10 + 8) = v11;
      *v11 = v10;
      v12 = *(a2 + 19);
      --*(a2 + 18);
      operator delete(v9);
      if (v12 == v9)
      {
        *(a2 + 19) = v11;
      }

      (*(this + 363))(this + 2888, a2 + 112);
    }

LABEL_16:
    v13 = *(a2 + 10);
    if (v13 != (a2 + 72))
    {
      while (v13[3] != v4)
      {
        v13 = v13[1];
        if (v13 == (a2 + 72))
        {
          goto LABEL_23;
        }
      }

      v14 = *v13;
      v15 = v13[1];
      *(v14 + 8) = v15;
      *v15 = v14;
      v16 = *(a2 + 12);
      --*(a2 + 11);
      operator delete(v13);
      if (v16 == v13)
      {
        *(a2 + 12) = v15;
      }

      (*(this + 363))(this + 2888, a2 + 56);
    }
  }

LABEL_23:
  webrtc::AsyncPacketSocket::DeregisterReceivedPacketCallback(a2);

  return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(a2 + 35, this);
}

uint64_t webrtc::TCPConnection::OnReadyToSend(webrtc::TCPConnection *this, webrtc::AsyncPacketSocket *a2)
{
  v3 = this + 136;
  result = *(this + 18);
  for (*(this + 20) = result; result != v3; result = *(this + 20))
  {
    v6 = *(result + 16);
    v5 = result + 16;
    *(this + 20) = *(v5 - 8);
    v6(v5, this);
  }

  return result;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::TCPPort,webrtc::AsyncPacketSocket *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 232;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::TCPPort,webrtc::AsyncPacketSocket *,webrtc::SentPacketInfo const&>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 232;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::TCPPort,webrtc::AsyncListenSocket *,webrtc::AsyncPacketSocket *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 232;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::TCPConnection,webrtc::Connection *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 2888;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TCPConnection::OnClose(webrtc::AsyncPacketSocket *,int)::$_0 &&>(uint64_t result)
{
  v1 = *result;
  if (*(*result + 2958) == 1)
  {
    v2 = *(v1 + 248);
    if (v2)
    {
      if (*v2 == 1)
      {
        result = *(v1 + 256);
        if (result)
        {
          return (*(*result + 192))();
        }
      }
    }
  }

  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TCPConnection::CreateOutgoingTcpSocket(void)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 248);
  if (v2 && *v2 == 1 && *(v1 + 256))
  {
    v3 = *(v1 + 2560);
    *(v1 + 2560) = 3;
    if (v3 != 3 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::Connection::ToString(v1, &__p);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    webrtc::Connection::Prune(v1);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::TCPConnection,webrtc::AsyncPacketSocket *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 2888;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::TCPConnection,webrtc::AsyncPacketSocket *,webrtc::SentPacketInfo const&>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 2888;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_0 &,webrtc::AsyncPacketSocket *,webrtc::ReceivedIpPacket const&>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(v3 + 248);
  if (v4 && *v4 == 1 && *(v3 + 256))
  {

    webrtc::Connection::OnReadPacket(v3, a3);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/tcp_port.cc");
  }
}

void *std::__function::__func<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1,std::allocator<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1>,void ()(webrtc::AsyncPacketSocket *,int)>::~__func(void *result)
{
  *result = &unk_2882A0E30;
  v1 = result[2];
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1,std::allocator<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1>,void ()(webrtc::AsyncPacketSocket *,int)>::~__func(void *a1)
{
  *a1 = &unk_2882A0E30;
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1,std::allocator<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1>,void ()(webrtc::AsyncPacketSocket *,int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2882A0E30;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *std::__function::__func<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1,std::allocator<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1>,void ()(webrtc::AsyncPacketSocket *,int)>::destroy(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

void std::__function::__func<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1,std::allocator<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1>,void ()(webrtc::AsyncPacketSocket *,int)>::destroy_deallocate(void *a1)
{
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = a1;
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
    a1 = v3;
  }

  operator delete(a1);
}

void std::__function::__func<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1,std::allocator<webrtc::TCPConnection::ConnectSocketSignals(webrtc::AsyncPacketSocket *)::$_1>,void ()(webrtc::AsyncPacketSocket *,int)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*(*(a1 + 16) + 4) == 1)
  {
    webrtc::TCPConnection::OnClose(*(a1 + 8), *a3);
  }
}

uint64_t webrtc::TemporalLayersChecker::CheckTemporalConfig(uint64_t a1, int a2, uint64_t a3)
{
  if (*a3)
  {
    return 1;
  }

  v3 = *(a3 + 20);
  if (v3 == 255)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 36) + 1;
  *(a1 + 36) = v6;
  if (v3 >= v5)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_86:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/temporal_layers_checker.cc");
    }

    return 0;
  }

  v7 = v3 > 0;
  v8 = *(a3 + 4);
  if (v8)
  {
    v17 = *(a1 + 9);
    if (*(a1 + 9))
    {
      v18 = 0;
    }

    else
    {
      v18 = v3 > 0;
    }

    if (!*(a1 + 9) || (v9 = v6, (*(a1 + 8) & 1) == 0))
    {
      v9 = v6;
      if (((v17 == 0) & *(a1 + 8)) == 0)
      {
        v9 = v6;
        if ((a2 & 1) == 0)
        {
          if (*(a1 + 12) >= v6)
          {
            v9 = v6;
          }

          else
          {
            v9 = *(a1 + 12);
          }
        }
      }

      v7 = v18;
      if (v17 > v3 && (a2 & 1) == 0)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/temporal_layers_checker.cc");
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          return 0;
        }

LABEL_80:
        webrtc::webrtc_logging_impl::Log("\r\t", v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/temporal_layers_checker.cc");
        return 0;
      }
    }
  }

  else
  {
    v9 = v6;
  }

  if ((v8 & 2) == 0)
  {
    if (a2)
    {
      goto LABEL_16;
    }

LABEL_19:
    v19 = *(a3 + 8);
    if (v19)
    {
      goto LABEL_20;
    }

LABEL_25:
    v21 = v7;
    goto LABEL_26;
  }

  *(a1 + 9) = v3;
  *(a1 + 12) = v6;
  *(a1 + 8) = a2;
  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_16:
  *(a1 + 8) = 1;
  v19 = *(a3 + 8);
  if ((v19 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v20 = *(a1 + 25);
  if (*(a1 + 25))
  {
    v21 = 0;
  }

  else
  {
    v21 = v7;
  }

  if (*(a1 + 25) && (*(a1 + 24) & 1) != 0)
  {
    goto LABEL_25;
  }

  if (((v20 == 0) & *(a1 + 24)) == 0 && (a2 & 1) == 0 && *(a1 + 28) < v9)
  {
    v9 = *(a1 + 28);
  }

  if (v20 > v3 && (a2 & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/temporal_layers_checker.cc");
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_80;
  }

LABEL_26:
  if ((v19 & 2) == 0)
  {
    if (a2)
    {
      goto LABEL_28;
    }

LABEL_31:
    v22 = *(a3 + 12);
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_37:
    v24 = v21;
    goto LABEL_38;
  }

  *(a1 + 25) = v3;
  *(a1 + 28) = v6;
  *(a1 + 24) = a2;
  if (!a2)
  {
    goto LABEL_31;
  }

LABEL_28:
  *(a1 + 24) = 1;
  v22 = *(a3 + 12);
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  v23 = *(a1 + 17);
  if (*(a1 + 17))
  {
    v24 = 0;
  }

  else
  {
    v24 = v21;
  }

  if (*(a1 + 17) && (*(a1 + 16) & 1) != 0)
  {
    goto LABEL_37;
  }

  if (((v23 == 0) & *(a1 + 16)) == 0 && (a2 & 1) == 0 && *(a1 + 20) < v9)
  {
    v9 = *(a1 + 20);
  }

  if (v23 > v3 && (a2 & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v54, v55, v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/temporal_layers_checker.cc");
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_80;
  }

LABEL_38:
  if ((v22 & 2) != 0)
  {
    *(a1 + 17) = v3;
    *(a1 + 20) = v6;
    *(a1 + 16) = a2;
  }

  if (a2)
  {
    *(a1 + 16) = 1;
    v25 = (a1 + 40);
  }

  else
  {
    v25 = (a1 + 40);
    if (v9 < *(a1 + 40))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/temporal_layers_checker.cc");
      }

      return 0;
    }
  }

  if (*(a3 + 20))
  {
    if (a2)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *(a1 + 44) = v6;
    if (a2)
    {
LABEL_47:
      *v25 = v6;
      if (!v24)
      {
        goto LABEL_48;
      }

LABEL_83:
      *(a1 + 40) = *(a1 + 44);
      result = 1;
      if (v24 == *(a3 + 24))
      {
        return result;
      }

LABEL_84:
      if (a2)
      {
        return result;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return 0;
      }

      goto LABEL_86;
    }
  }

  if (v24)
  {
    goto LABEL_83;
  }

LABEL_48:
  result = 1;
  if (v24 != *(a3 + 24))
  {
    goto LABEL_84;
  }

  return result;
}

void dcsctp::TextPcapPacketObserver::OnSentPacket(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *(a1 + 31);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
  }

  else
  {
    v6 = (a1 + 8);
  }

  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  dcsctp::TextPcapPacketObserver::PrintPacket("O ", 2uLL, v6, v5, a2, v7, a4);
}

void dcsctp::TextPcapPacketObserver::PrintPacket(char *__src, size_t __len, const std::string::value_type *a3, std::string::size_type a4, int a5, unsigned __int8 *a6, uint64_t a7)
{
  memset(&v37, 0, sizeof(v37));
  if (&v37 <= "\n" && &v37.__r_.__value_.__l.__data_ + 1 > "\n")
  {
    goto LABEL_81;
  }

  v37.__r_.__value_.__s.__data_[0] = 10;
  *(&v37.__r_.__value_.__s + 23) = 1;
  if (!__src)
  {
    if (__len)
    {
      goto LABEL_81;
    }
  }

  if (__len > 0x15)
  {
    if (__len - 0x7FFFFFFFFFFFFFF6 > 0x800000000000001ELL)
    {
      operator new();
    }

LABEL_82:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len)
  {
    if (&v37.__r_.__value_.__l.__data_ + 1 <= __src && &v37.__r_.__value_.__l.__data_ + __len + 1 > __src)
    {
      goto LABEL_81;
    }

    memmove(&v37.__r_.__value_.__l.__data_ + 1, __src, __len);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      v37.__r_.__value_.__l.__size_ = __len + 1;
    }

    else
    {
      *(&v37.__r_.__value_.__s + 23) = __len + 1;
    }

    v37.__r_.__value_.__s.__data_[__len + 1] = 0;
  }

  webrtc::StringBuilder::AppendFormat(&v37, "%02d:%02d:%02d.%03d", a5 % 86400000 / 3600000, a5 % 86400000 % 3600000 / 60000, a5 % 86400000 % 3600000 % 60000 / 1000, a5 % 86400000 % 3600000 % 60000 % 1000);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = 22;
  }

  else
  {
    v14 = (v37.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  if (v14 - size < 5)
  {
    std::string::__grow_by_and_replace(&v37, v14, size - v14 + 5, size, size, 0, 5uLL, " 0000");
    if (!a7)
    {
      goto LABEL_36;
    }

    do
    {
LABEL_35:
      v19 = *a6++;
      webrtc::StringBuilder::AppendFormat(&v37, " %02x", v19);
      --a7;
    }

    while (a7);
    goto LABEL_36;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v37;
  }

  else
  {
    v16 = v37.__r_.__value_.__r.__words[0];
  }

  v17 = v16 + size;
  if (v16 + size <= " 0000" && v17 + 5 > " 0000")
  {
    goto LABEL_81;
  }

  v17[4] = 48;
  *v17 = 808464416;
  v18 = size + 5;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    v37.__r_.__value_.__l.__size_ = size + 5;
    v16->__r_.__value_.__s.__data_[v18] = 0;
    if (!a7)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  *(&v37.__r_.__value_.__s + 23) = v18 & 0x7F;
  v16->__r_.__value_.__s.__data_[v18] = 0;
  if (a7)
  {
    goto LABEL_35;
  }

LABEL_36:
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = 22;
  }

  else
  {
    v20 = (v37.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v37.__r_.__value_.__l.__size_;
  }

  if (v20 - v21 >= 0xF)
  {
    v22 = &v37;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v37.__r_.__value_.__r.__words[0];
    }

    if (v22 + v21 <= " # SCTP_PACKET " && &v22->__r_.__value_.__r.__words[1] + v21 + 7 > " # SCTP_PACKET ")
    {
      goto LABEL_81;
    }

    qmemcpy(v22 + v21, " # SCTP_PACKET ", 15);
    v24 = v21 + 15;
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      v37.__r_.__value_.__l.__size_ = v21 + 15;
      v22->__r_.__value_.__s.__data_[v24] = 0;
      if (a3)
      {
        goto LABEL_56;
      }
    }

    else
    {
      *(&v37.__r_.__value_.__s + 23) = v24 & 0x7F;
      v22->__r_.__value_.__s.__data_[v24] = 0;
      if (a3)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v37, v20, v21 - v20 + 15, v21, v21, 0, 0xFuLL, " # SCTP_PACKET ");
    if (a3)
    {
      goto LABEL_56;
    }
  }

  if (a4)
  {
    goto LABEL_81;
  }

LABEL_56:
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = 22;
  }

  else
  {
    v25 = (v37.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v37.__r_.__value_.__l.__size_;
  }

  if (v25 - v26 < a4)
  {
    std::string::__grow_by_and_replace(&v37, v25, v26 + a4 - v25, v26, v26, 0, a4, a3);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      goto LABEL_76;
    }

LABEL_75:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/net/dcsctp/public/text_pcap_packet_observer.cc");
    goto LABEL_76;
  }

  if (!a4)
  {
LABEL_74:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v37;
  }

  else
  {
    v34 = v37.__r_.__value_.__r.__words[0];
  }

  if ((a4 & 0x8000000000000000) != 0 || (v35 = v34 + v26, v34 + v26 <= a3) && &v35[a4] > a3)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  memmove(v35, a3, a4);
  v36 = v26 + a4;
  if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v37.__r_.__value_.__s + 23) = v36 & 0x7F;
    v34->__r_.__value_.__s.__data_[v36] = 0;
    goto LABEL_74;
  }

  v37.__r_.__value_.__l.__size_ = v26 + a4;
  v34->__r_.__value_.__s.__data_[v36] = 0;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_76:
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void dcsctp::TextPcapPacketObserver::OnReceivedPacket(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *(a1 + 31);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
  }

  else
  {
    v6 = (a1 + 8);
  }

  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  dcsctp::TextPcapPacketObserver::PrintPacket("I ", 2uLL, v6, v5, a2, v7, a4);
}

void dcsctp::TextPcapPacketObserver::~TextPcapPacketObserver(void **this)
{
  *this = &unk_2882A0EA0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2882A0EA0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743DA540);
}

webrtc::ThreadManager *webrtc::ThreadManager::ThreadManager(webrtc::ThreadManager *this)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init((this + 24), &v3);
  pthread_mutexattr_destroy(&v3);
  InitCocoaMultiThreading();
  pthread_key_create(this + 11, 0);
  return this;
}

uint64_t webrtc::ThreadManager::Add(webrtc::ThreadManager *this, webrtc::Thread *a2)
{
  {
    v5 = this;
    this = v5;
    if (v4)
    {
      operator new();
    }
  }

  v2 = webrtc::ThreadManager::Instance(void)::thread_manager;
  v6 = this;
  pthread_mutex_lock((webrtc::ThreadManager::Instance(void)::thread_manager + 24));
  std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100](v2, &v6);
  return pthread_mutex_unlock((v2 + 24));
}

void webrtc::Thread::ProcessMessages(webrtc::Thread *this, int a2)
{
  if (a2 == -1)
  {
    LODWORD(v64) = 0;
  }

  else
  {
    if (webrtc::g_clock)
    {
      v3 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v3 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v64 = v3 / 1000000;
  }

  v69 = a2;
  while (2)
  {
    context = objc_autoreleasePoolPush();
    if (webrtc::g_clock)
    {
      v4 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v4 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v5 = 0;
    v67 = v4 / 1000000;
    v6 = v4 / 1000000;
    while (1)
    {
      v68 = v5;
      pthread_mutex_lock((this + 96));
      v7 = *(this + 7);
      if (v7 == *(this + 8))
      {
LABEL_51:
        v9 = -1;
      }

      else
      {
        v70 = v6;
        while (1)
        {
          v8 = *(v7 + 8);
          v9 = v8 - v6;
          if (v8 > v6)
          {
            break;
          }

          v10 = *(this + 2);
          v11 = *(this + 3);
          v12 = 16 * (v11 - v10) - 1;
          if (v11 == v10)
          {
            v12 = 0;
          }

          if (v12 == *(this + 6) + *(this + 5))
          {
            _ZNSt3__15dequeIN4absl12AnyInvocableIFvvOEEENS_9allocatorIS4_EEE19__add_back_capacityEv(this + 1);
            v10 = *(this + 2);
            v11 = *(this + 3);
          }

          if (v11 == v10)
          {
            goto LABEL_106;
          }

          v13 = *(this + 6) + *(this + 5);
          v14 = *(v10 + ((v13 >> 4) & 0xFFFFFFFFFFFFFF8));
          if (!v14)
          {
            goto LABEL_106;
          }

          v15 = v14 + 32 * (v13 & 0x7F);
          (*(v7 + 40))(0, v7 + 24, v15);
          *(v15 + 16) = *(v7 + 40);
          *(v7 + 40) = absl::internal_any_invocable::EmptyManager;
          *(v7 + 48) = 0;
          v16 = *(this + 7);
          ++*(this + 6);
          v17 = *(this + 8);
          v18 = v17 - v16;
          if (v17 - v16 <= 0)
          {
            goto LABEL_106;
          }

          if (v18 != 56)
          {
            v19 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 3);
            v20 = *v16;
            v74 = *(v16 + 4);
            v73 = v20;
            (*(v16 + 5))(0, v16 + 24, v75);
            v21 = 0;
            v76 = *(v16 + 40);
            *(v16 + 5) = absl::internal_any_invocable::EmptyManager;
            *(v16 + 6) = 0;
            v22 = v16;
            do
            {
              v24 = v22;
              v22 = (v22 + 56 * v21 + 56);
              v25 = 2 * v21;
              v21 = (2 * v21) | 1;
              v26 = v25 + 2;
              if (v26 < v19)
              {
                v27 = *(v22 + 8);
                v28 = *(v22 + 1);
                if (v27 < v28 || v27 == v28 && *(v22 + 18) < *(v22 + 4))
                {
                  v22 = (v22 + 56);
                  v21 = v26;
                }
              }

              v23 = *v22;
              *(v24 + 4) = *(v22 + 4);
              *v24 = v23;
              *(v24 + 5) = absl::internal_any_invocable::EmptyManager;
              *(v24 + 6) = 0;
              (*(v22 + 5))(0, v22 + 24, v24 + 24);
              *(v24 + 40) = *(v22 + 40);
              *(v22 + 5) = absl::internal_any_invocable::EmptyManager;
              *(v22 + 6) = 0;
            }

            while (v21 <= ((v19 - 2) >> 1));
            v29 = (v17 - 56);
            if (v22 == (v17 - 56))
            {
              v42 = v73;
              *(v22 + 4) = v74;
              *v22 = v42;
              *(v22 + 5) = absl::internal_any_invocable::EmptyManager;
              *(v22 + 6) = 0;
              (v76)(0, v75, v22 + 24);
              *(v22 + 40) = v76;
              v76 = absl::internal_any_invocable::EmptyManager;
              (absl::internal_any_invocable::EmptyManager)(1, v75, v75);
            }

            else
            {
              v30 = *v29;
              *(v22 + 4) = *(v17 - 10);
              *v22 = v30;
              *(v22 + 5) = absl::internal_any_invocable::EmptyManager;
              *(v22 + 6) = 0;
              (*(v17 - 2))(0, v17 - 2, v22 + 24);
              *(v22 + 40) = *(v17 - 1);
              v31 = v73;
              *(v17 - 10) = v74;
              *v29 = v31;
              *(v17 - 2) = absl::internal_any_invocable::EmptyManager;
              *(v17 - 1) = 0;
              (v76)(0, v75, v17 - 2);
              *(v17 - 1) = v76;
              v76 = absl::internal_any_invocable::EmptyManager;
              v32 = v22 - v16 + 56;
              if (v32 >= 57 && ((v33 = (0x6DB6DB6DB6DB6DB7 * (v32 >> 3) - 2) >> 1, v34 = (v16 + 56 * v33), v35 = *(v22 + 1), v36 = *(v34 + 1), v35 < v36) || v35 == v36 && *(v22 + 4) < *(v34 + 4)))
              {
                v37 = *v22;
                LODWORD(v78) = *(v22 + 4);
                v77 = v37;
                (*(v22 + 5))(0, v22 + 24, &v78 + 8);
                v79 = *(v22 + 40);
                *(v22 + 5) = absl::internal_any_invocable::EmptyManager;
                *(v22 + 6) = 0;
                while (1)
                {
                  v38 = v34;
                  v39 = *v34;
                  *(v22 + 4) = *(v34 + 4);
                  *v22 = v39;
                  *(v22 + 5) = absl::internal_any_invocable::EmptyManager;
                  *(v22 + 6) = 0;
                  (*(v34 + 5))(0, v34 + 24, v22 + 24);
                  *(v22 + 40) = *(v34 + 40);
                  *(v34 + 5) = absl::internal_any_invocable::EmptyManager;
                  *(v34 + 6) = 0;
                  if (!v33)
                  {
                    break;
                  }

                  v33 = (v33 - 1) >> 1;
                  v34 = (v16 + 56 * v33);
                  v40 = *(v34 + 1);
                  v22 = v38;
                  if (*(&v77 + 1) >= v40)
                  {
                    if (*(&v77 + 1) != v40)
                    {
                      break;
                    }

                    v22 = v38;
                    if (v78 >= *(v34 + 4))
                    {
                      break;
                    }
                  }
                }

                v41 = v77;
                *(v38 + 4) = v78;
                *v38 = v41;
                *(v38 + 5) = absl::internal_any_invocable::EmptyManager;
                *(v38 + 6) = 0;
                (v79)(0, &v78 + 8, v38 + 24);
                *(v38 + 40) = v79;
                (v76)(1, v75, v75);
              }

              else
              {
                (absl::internal_any_invocable::EmptyManager)(1, v75, v75);
              }
            }

            v16 = *(this + 7);
            v17 = *(this + 8);
            v6 = v70;
          }

          if (v16 == v17)
          {
            goto LABEL_106;
          }

          (*(v17 - 2))(1, v17 - 2, v17 - 2);
          v43 = v17 - 56;
          *(this + 8) = v17 - 56;
          v7 = *(this + 7);
          if (v7 == v43)
          {
            goto LABEL_51;
          }
        }
      }

      if (*(this + 6))
      {
        break;
      }

      pthread_mutex_unlock((this + 96));
      if ((*(*this + 48))(this))
      {
        *&v78 = absl::internal_any_invocable::EmptyManager;
        *(&v78 + 1) = 0;
        goto LABEL_84;
      }

      if (v69 != -1)
      {
        if (v9 >= ((v69 - v68) & ~((v69 - v68) >> 63)))
        {
          v44 = (v69 - v68) & ~((v69 - v68) >> 63);
        }

        else
        {
          v44 = v9;
        }

        if (v9 == -1)
        {
          v9 = (v69 - v68) & ~((v69 - v68) >> 63);
        }

        else
        {
          v9 = v44;
        }

        v45 = *(this + 21);
LABEL_63:
        v46 = 1000 * v9;
        goto LABEL_64;
      }

      v45 = *(this + 21);
      if (v9 != -1)
      {
        goto LABEL_63;
      }

      v46 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_64:
      if ((*(*v45 + 32))(v45, v46, 1))
      {
        if (webrtc::g_clock)
        {
          v47 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
        }

        else
        {
          if (!dword_28100D8E4)
          {
            mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
          }

          v47 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
        }

        v6 = v47 / 1000000;
        v5 = v47 / 1000000 - v67;
        if (v69 == -1 || v5 < v69)
        {
          continue;
        }
      }

      *&v78 = absl::internal_any_invocable::EmptyManager;
      *(&v78 + 1) = 0;
      goto LABEL_84;
    }

    v48 = *(*(this + 2) + ((*(this + 5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(this + 5) & 0x7FLL);
    (*(v48 + 16))(0, v48, &v77);
    v78 = *(v48 + 16);
    *(v48 + 16) = absl::internal_any_invocable::EmptyManager;
    *(v48 + 24) = 0;
    if (!*(this + 6) || (v49 = *(*(this + 2) + ((*(this + 5) >> 4) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
LABEL_106:
      __break(1u);
      return;
    }

    (*(v49 + 32 * (*(this + 5) & 0x7FLL) + 16))(1, v49 + 32 * (*(this + 5) & 0x7FLL), v49 + 32 * (*(this + 5) & 0x7FLL));
    v50 = vaddq_s64(*(this + 40), xmmword_273B93620);
    *(this + 40) = v50;
    if (v50.i64[0] >= 0x100uLL)
    {
      operator delete(**(this + 2));
      *(this + 2) += 8;
      *(this + 5) -= 128;
    }

    pthread_mutex_unlock((this + 96));
    if (!*(&v78 + 1))
    {
LABEL_84:
      (*(*this + 48))(this);
      goto LABEL_85;
    }

    (v78)(0, &v77, v71);
    v72 = v78;
    *&v78 = absl::internal_any_invocable::EmptyManager;
    *(&v78 + 1) = 0;
    if (webrtc::g_clock)
    {
      v51 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      (*(&v72 + 1))(v71);
      v52 = webrtc::g_clock;
      if (webrtc::g_clock)
      {
        goto LABEL_82;
      }

LABEL_91:
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v53 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v51 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      (*(&v72 + 1))(v71);
      v52 = webrtc::g_clock;
      if (!webrtc::g_clock)
      {
        goto LABEL_91;
      }

LABEL_82:
      v53 = (*(*v52 + 16))(v52);
    }

    v55 = v53 / 1000000 + v51 / -1000000;
    if (v55 >= *(this + 58))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/thread.cc");
      }

      *(this + 58) = v55 + 1;
    }

    (v72)(1, v71, v71);
    if (a2 != -1)
    {
      if (webrtc::g_clock)
      {
        LODWORD(v63) = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!dword_28100D8E4)
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v63 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      v69 = v63 / -1000000 + v64;
      if (v69 < 0)
      {
LABEL_85:
        v54 = 0;
        goto LABEL_86;
      }
    }

    v54 = 1;
LABEL_86:
    (v78)(1, &v77, &v77);
    objc_autoreleasePoolPop(context);
    if (v54)
    {
      continue;
    }

    break;
  }
}

uint64_t webrtc::ThreadManager::SetCurrentThread(webrtc::ThreadManager *this, webrtc::Thread *a2)
{
  if (a2)
  {
    operator new();
  }

  v4 = pthread_getspecific(*(this + 11));
  if (v4)
  {
    v12 = v4[28];
    v4[28] = 0;
    if (v12)
    {
      *v13 = v14;
      MEMORY[0x2743DA540](v15, 0x60C4044C4A2DFLL);
    }
  }

  v16 = *(this + 11);

  return pthread_setspecific(v16, 0);
}

void *webrtc::ThreadManager::WrapCurrentThread(webrtc::ThreadManager *this)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = pthread_getspecific(*(this + 11));
  if (!v1)
  {
    operator new();
  }

  return v1;
}

uint64_t webrtc::Thread::UnwrapCurrent(webrtc::Thread *this)
{
  {
    operator new();
  }

  v2 = webrtc::ThreadManager::Instance(void)::thread_manager;
  v3 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  if (v3)
  {
    v11 = v3[28];
    v3[28] = 0;
    if (v11)
    {
      *v12 = v13;
      MEMORY[0x2743DA540](v14, 0x60C4044C4A2DFLL);
    }
  }

  result = pthread_setspecific(*(v2 + 88), 0);
  *(this + 26) = 0;
  return result;
}

_BYTE *webrtc::Thread::Thread(_BYTE *a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882A0ED0;
  *(a1 + 22) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 9) = 0;
  pthread_mutexattr_init(&v8);
  pthread_mutexattr_setpolicy_np(&v8, 3);
  pthread_mutex_init((a1 + 96), &v8);
  pthread_mutexattr_destroy(&v8);
  *(a1 + 80) = 0;
  *(a1 + 41) = 0;
  *(a1 + 21) = a2;
  *(a1 + 26) = 0;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 108) = 257;
  *(a1 + 28) = 0;
  *(a1 + 58) = 50;
  (*(*a2 + 24))(a2, a1);
  webrtc::Thread::SetName(a1, "Thread", 6uLL, a1);
  if (a3 && (a1[160] & 1) == 0)
  {
    a1[160] = 1;
    webrtc::ThreadManager::Add(a1, v6);
  }

  return a1;
}

uint64_t webrtc::Thread::SetName(uint64_t a1, char *a2, size_t a3, const void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_29:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v16) = a3;
  v6 = &__str[a3];
  if (__str <= a2 && v6 > a2)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    memmove(__str, a2, a3);
  }

  *v6 = 0;
  v7 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    operator delete(*v7);
    *v7 = *__str;
    *(a1 + 200) = v16;
    if (!a4)
    {
      return 1;
    }
  }

  else
  {
    *v7 = *__str;
    *(a1 + 200) = v16;
    if (!a4)
    {
      return 1;
    }
  }

  snprintf(__str, 0x1EuLL, " 0x%p", a4);
  v8 = strlen(__str);
  v9 = v8;
  v10 = *(a1 + 207);
  if (v10 < 0)
  {
    v12 = *(a1 + 192);
    v11 = (*(a1 + 200) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - v12 < v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 22;
    v12 = *(a1 + 207);
    if (22 - v10 < v8)
    {
LABEL_15:
      std::string::__grow_by_and_replace((a1 + 184), v11, v8 - v11 + v12, v12, v12, 0, v8, __str);
      return 1;
    }
  }

  if (!v8)
  {
    return 1;
  }

  if ((v10 & 0x80000000) != 0)
  {
    v7 = *v7;
  }

  if ((v8 & 0x8000000000000000) != 0 || v7 + v12 <= __str && v7 + v12 + v8 > __str)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  memmove(v7 + v12, __str, v8);
  v13 = v12 + v9;
  if (*(a1 + 207) < 0)
  {
    *(a1 + 192) = v13;
  }

  else
  {
    *(a1 + 207) = v13 & 0x7F;
  }

  *(v7 + v13) = 0;
  return 1;
}

void webrtc::Thread::~Thread(webrtc::Thread *this)
{
  *this = &unk_2882A0ED0;
  atomic_store(1u, this + 41);
  (*(**(this + 21) + 40))(*(this + 21));
  webrtc::Thread::Join(this);
  webrtc::Thread::DoDestroy(this);
  v9 = *(this + 28);
  *(this + 28) = 0;
  if (v9)
  {
    *v10 = v11;
    MEMORY[0x2743DA540](v12, 0x60C4044C4A2DFLL);
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  v13 = *(this + 22);
  *(this + 22) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  pthread_mutex_destroy((this + 96));
  v14 = *(this + 7);
  if (v14)
  {
    v15 = *(this + 8);
    v16 = *(this + 7);
    if (v15 != v14)
    {
      do
      {
        v17 = v15 - 56;
        (*(v15 - 16))(1, v15 - 32, v15 - 32);
        v15 = v17;
      }

      while (v17 != v14);
      v16 = *(this + 7);
    }

    *(this + 8) = v14;
    operator delete(v16);
  }

  _ZNSt3__15queueIN4absl12AnyInvocableIFvvOEEENS_5dequeIS4_NS_9allocatorIS4_EEEEED1Ev(this + 1);
}

{
  webrtc::Thread::~Thread(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::Thread::DoDestroy(webrtc::Thread *this)
{
  if (*(this + 161))
  {
    return;
  }

  *(this + 161) = 1;
  v2 = *(this + 21);
  if (v2)
  {
    (*(*v2 + 24))(v2, 0);
  }

  v3 = &unk_280905000;
  {
    goto LABEL_51;
  }

  while (1)
  {
    v4 = v3[403];
    pthread_mutex_lock((v4 + 24));
    v6 = *v4;
    v5 = *(v4 + 8);
    if (*v4 != v5)
    {
      while (*v6 != this)
      {
        if (++v6 == v5)
        {
          goto LABEL_13;
        }
      }
    }

    if (v6 != v5)
    {
      v7 = v5 - (v6 + 1);
      if (v5 != v6 + 1)
      {
        memmove(v6, v6 + 1, v5 - (v6 + 1));
      }

      *(v4 + 8) = v6 + v7;
    }

LABEL_13:
    pthread_mutex_unlock((v4 + 24));
    v15 = *v3;
    *v3 = this;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v17 = *(this + 2);
    v16 = *(this + 3);
    if (v16 == v17)
    {
      *(this + 6) = 0;
      v23 = 0;
      goto LABEL_23;
    }

    v18 = *(this + 5);
    v19 = &v17[v18 >> 7];
    v20 = *v19 + 32 * (v18 & 0x7F);
    v21 = *(v17 + (((*(this + 6) + v18) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 6) + v18) & 0x7F);
    if (v20 == v21)
    {
      break;
    }

    while (v20)
    {
      (*(v20 + 16))(1, v20, v20);
      v20 += 32;
      if (v20 - *v19 == 4096)
      {
        v22 = v19[1];
        ++v19;
        v20 = v22;
      }

      if (v20 == v21)
      {
        v17 = *(this + 2);
        v16 = *(this + 3);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_51:
    {
      operator new();
    }
  }

LABEL_21:
  *(this + 6) = 0;
  v23 = (v16 - v17) >> 3;
  if (v23 >= 3)
  {
    do
    {
      operator delete(*v17);
      v16 = *(this + 3);
      v17 = (*(this + 2) + 8);
      *(this + 2) = v17;
      v23 = (v16 - v17) >> 3;
    }

    while (v23 > 2);
  }

LABEL_23:
  if (v23 == 1)
  {
    v24 = 64;
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_29;
    }

    v24 = 128;
  }

  *(this + 5) = v24;
LABEL_29:
  v25 = *(this + 6);
  if (v25)
  {
    v26 = *(this + 5);
    if (v26 >= 0x80)
    {
      operator delete(*v17);
      v16 = *(this + 3);
      v17 = (*(this + 2) + 8);
      *(this + 2) = v17;
      v25 = *(this + 6);
      v26 = *(this + 5) - 128;
      *(this + 5) = v26;
    }

    if (v16 == v17)
    {
      v27 = 0;
    }

    else
    {
      v27 = 16 * (v16 - v17) - 1;
    }

    if (v27 - (v26 + v25) >= 0x80)
    {
      operator delete(*(v16 - 8));
      *(this + 3) -= 8;
    }

    _ZNSt3__114__split_bufferIPN4absl12AnyInvocableIFvvOEEENS_9allocatorIS5_EEE13shrink_to_fitEv(this + 8);
    v29 = *(this + 2);
    v28 = *(this + 3);
    if (v28 == v29)
    {
      goto LABEL_39;
    }
  }

  else
  {
    while (v16 != v17)
    {
      operator delete(*(v16 - 8));
      v17 = *(this + 2);
      v16 = *(this + 3) - 8;
      *(this + 3) = v16;
    }

    *(this + 5) = 0;
    _ZNSt3__114__split_bufferIPN4absl12AnyInvocableIFvvOEEENS_9allocatorIS5_EEE13shrink_to_fitEv(this + 8);
    v29 = *(this + 2);
    v28 = *(this + 3);
    if (v28 == v29)
    {
      goto LABEL_39;
    }
  }

  *(this + 3) = v28 + ((v29 - v28 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_39:
  _ZNSt3__114__split_bufferIPN4absl12AnyInvocableIFvvOEEENS_9allocatorIS5_EEE13shrink_to_fitEv(this + 8);
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v35 = 0u;
  v36 = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v37 = 0uLL;
  _ZNSt3__15queueIN4absl12AnyInvocableIFvvOEEENS_5dequeIS4_NS_9allocatorIS4_EEEEED1Ev(&v35);
  v30 = (this + 56);
  v31 = *(this + 7);
  if (v31)
  {
    v32 = *(this + 8);
    v33 = *(this + 7);
    if (v32 != v31)
    {
      do
      {
        v34 = v32 - 56;
        (*(v32 - 16))(1, v32 - 32, v32 - 32);
        v32 = v34;
      }

      while (v34 != v31);
      v33 = *v30;
    }

    *(this + 8) = v31;
    operator delete(v33);
  }

  *v30 = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *v3 = v15;
}

void **_ZNSt3__15queueIN4absl12AnyInvocableIFvvOEEENS_5dequeIS4_NS_9allocatorIS4_EEEEED1Ev(void **result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v3 == v2)
  {
    v3 = result[1];
    result[5] = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v4 = result[4];
  v5 = &v2[v4 >> 7];
  v6 = *v5 + 32 * (v4 & 0x7F);
  v7 = *(v2 + (((result[5] + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((result[5] + v4) & 0x7F);
  if (v6 == v7)
  {
LABEL_9:
    v1[5] = 0;
    v9 = v3 - v2;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = v1[2];
        v2 = (v1[1] + 8);
        v1[1] = v2;
        v9 = v3 - v2;
      }

      while (v9 > 2);
    }

LABEL_11:
    if (v9 == 1)
    {
      v10 = 64;
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_17;
      }

      v10 = 128;
    }

    v1[4] = v10;
LABEL_17:
    if (v2 != v3)
    {
      do
      {
        v11 = *v2++;
        operator delete(v11);
      }

      while (v2 != v3);
      v13 = v1[1];
      v12 = v1[2];
      if (v12 != v13)
      {
        v1[2] = &v12[(v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8];
      }
    }

    if (*v1)
    {
      operator delete(*v1);
    }

    return v1;
  }

  while (v6)
  {
    result = (*(v6 + 16))(1, v6, v6);
    v6 += 32;
    if (v6 - *v5 == 4096)
    {
      v8 = v5[1];
      ++v5;
      v6 = v8;
    }

    if (v6 == v7)
    {
      v2 = v1[1];
      v3 = v1[2];
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t webrtc::Thread::PostTaskImpl(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 48))(a1);
  if ((result & 1) == 0)
  {
    result = pthread_mutex_lock((a1 + 96));
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = 16 * (v6 - v5) - 1;
    if (v6 == v5)
    {
      v7 = 0;
    }

    if (v7 == *(a1 + 48) + *(a1 + 40))
    {
      result = _ZNSt3__15dequeIN4absl12AnyInvocableIFvvOEEENS_9allocatorIS4_EEE19__add_back_capacityEv((a1 + 8));
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
    }

    if (v6 == v5 || (v8 = *(a1 + 48) + *(a1 + 40), (v9 = *(v5 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8))) == 0))
    {
      __break(1u);
    }

    else
    {
      v10 = v9 + 32 * (v8 & 0x7F);
      (*(a2 + 16))(0, a2, v10);
      *(v10 + 16) = *(a2 + 16);
      *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
      *(a2 + 24) = 0;
      ++*(a1 + 48);
      pthread_mutex_unlock((a1 + 96));
      v11 = *(**(a1 + 168) + 40);

      return v11();
    }
  }

  return result;
}

uint64_t webrtc::Thread::PostDelayedTaskImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 48))(a1);
  if (result)
  {
    return result;
  }

  v7 = 1000 * ((a3 + 999) / 1000);
  v8 = ((((125 * ((a3 + 999) / 1000)) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
  if (v7 - 1000 * v8 > 0x1F3)
  {
    LODWORD(v8) = v8 + 1;
  }

  v9 = ((((0x1FFFFFFFFFFFFF83 * ((a3 + 999) / 1000)) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
  if (-1000 * ((a3 + 999) / 1000) - 1000 * v9 <= 0x1F4)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 - v9;
  if (v7 < 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;
  if (webrtc::g_clock)
  {
    v14 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v14 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v15 = v14 / 1000000 + v13;
  pthread_mutex_lock((a1 + 96));
  *&v35 = v13;
  *(&v35 + 1) = v15;
  v36 = *(a1 + 88);
  (*(a2 + 16))(0, a2, v37);
  v38 = *(a2 + 16);
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  v17 = *(a1 + 64);
  v16 = *(a1 + 72);
  if (v17 >= v16)
  {
    v19 = *(a1 + 56);
    v20 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v19) >> 3) + 1;
    if (v20 > 0x492492492492492)
    {
      goto LABEL_40;
    }

    v21 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v19) >> 3);
    v22 = 2 * v21;
    if (2 * v21 <= v20)
    {
      v22 = v20;
    }

    if (v21 >= 0x249249249249249)
    {
      v23 = 0x492492492492492;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      if (v23 <= 0x492492492492492)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_39:
    __break(1u);
LABEL_40:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v17)
  {
    goto LABEL_39;
  }

  *(v17 + 16) = v36;
  *v17 = v35;
  (v38)(0, v37, v17 + 24);
  *(v17 + 40) = v38;
  *&v38 = absl::internal_any_invocable::EmptyManager;
  *(&v38 + 1) = 0;
  v18 = v17 + 56;
  *(a1 + 64) = v18;
  v24 = *(a1 + 56);
  if ((v18 - v24) >= 57)
  {
    v25 = (0x6DB6DB6DB6DB6DB7 * ((v18 - v24) >> 3) - 2) >> 1;
    v26 = (v24 + 56 * v25);
    v27 = *(v18 - 48);
    v28 = *(v26 + 1);
    if (v27 < v28 || v27 == v28 && *(v18 - 40) < *(v26 + 4))
    {
      v29 = (v18 - 56);
      v30 = *(v18 - 56);
      v40 = *(v18 - 40);
      v39 = v30;
      (*(v18 - 16))(0, v18 - 32, v41);
      v42 = *(v18 - 16);
      *(v18 - 16) = absl::internal_any_invocable::EmptyManager;
      *(v18 - 8) = 0;
      while (1)
      {
        v31 = v26;
        v32 = *v26;
        *(v29 + 4) = *(v26 + 4);
        *v29 = v32;
        *(v29 + 5) = absl::internal_any_invocable::EmptyManager;
        *(v29 + 6) = 0;
        (*(v26 + 5))(0, v26 + 24, v29 + 24);
        *(v29 + 40) = *(v26 + 40);
        *(v26 + 5) = absl::internal_any_invocable::EmptyManager;
        *(v26 + 6) = 0;
        if (!v25)
        {
          break;
        }

        v25 = (v25 - 1) >> 1;
        v26 = (v24 + 56 * v25);
        v33 = *(v26 + 1);
        v29 = v31;
        if (*(&v39 + 1) >= v33)
        {
          if (*(&v39 + 1) != v33)
          {
            break;
          }

          v29 = v31;
          if (v40 >= *(v26 + 4))
          {
            break;
          }
        }
      }

      v34 = v39;
      *(v31 + 4) = v40;
      *v31 = v34;
      *(v31 + 5) = absl::internal_any_invocable::EmptyManager;
      *(v31 + 6) = 0;
      (v42)(0, v41, v31 + 24);
      *(v31 + 40) = v42;
    }
  }

  (v38)(1, v37, v37);
  ++*(a1 + 88);
  pthread_mutex_unlock((a1 + 96));
  return (*(**(a1 + 168) + 40))(*(a1 + 168));
}

uint64_t webrtc::Thread::GetDelay(webrtc::Thread *this)
{
  pthread_mutex_lock((this + 96));
  if (*(this + 6))
  {
    pthread_mutex_unlock((this + 96));
    return 0;
  }

  else
  {
    v3 = *(this + 7);
    if (v3 == *(this + 8))
    {
      pthread_mutex_unlock((this + 96));
      return 0xFFFFFFFFLL;
    }

    else
    {
      v4 = *(v3 + 8);
      if (webrtc::g_clock)
      {
        LODWORD(v5) = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!dword_28100D8E4)
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v5 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      v6 = (v5 / -1000000 + v4) & ~((v5 / -1000000 + v4) >> 31);
      pthread_mutex_unlock((this + 96));
      return v6;
    }
  }
}

BOOL webrtc::Thread::IsCurrent(webrtc::Thread *this)
{
  v2 = &unk_280905000;
  {
    v2 = &unk_280905000;
    if (v4)
    {
      operator new();
    }
  }

  return pthread_getspecific(*(v2[403] + 88)) == this;
}

webrtc::Thread *webrtc::Thread::SetDispatchWarningMs(webrtc::Thread *this, int a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v6)
    {
      operator new();
    }
  }

  result = pthread_getspecific(*(v4[403] + 88));
  if (result == this)
  {
    *(this + 58) = a2;
  }

  else
  {
    v9 = this;
    v10 = a2;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::Thread::SetDispatchWarningMs(int)::$_0 &&>;
    (*(*this + 8))(this, &v9, &v8, &v7);
    return (v11)(1, &v9, &v9);
  }

  return result;
}

BOOL webrtc::Thread::Start(webrtc::Thread *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = (this + 208);
  if (*(this + 26))
  {
    return 0;
  }

  (*(*this + 56))(this);
  {
    operator new();
  }

  *(this + 216) = 1;
  pthread_attr_init(&v12);
  v4 = pthread_create(v1, &v12, webrtc::Thread::PreRun, this);
  result = v4 == 0;
  if (v4)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/thread.cc");
    }

    *v1 = 0;
    return 0;
  }

  return result;
}

uint64_t webrtc::Thread::PreRun(webrtc::Thread *this, void *a2)
{
  {
    operator new();
  }

  webrtc::ThreadManager::SetCurrentThread(webrtc::ThreadManager::Instance(void)::thread_manager, this);
  v3 = this + 184;
  if (*(this + 207) < 0)
  {
    v3 = *v3;
  }

  pthread_setname_np(v3);
  v4 = objc_autoreleasePoolPush();
  (*(*this + 88))(this);
  {
    operator new();
  }

  v5 = webrtc::ThreadManager::Instance(void)::thread_manager;
  v6 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  if (v6)
  {
    v14 = v6[28];
    v6[28] = 0;
    if (v14)
    {
      *v15 = v16;
      MEMORY[0x2743DA540](v17, 0x60C4044C4A2DFLL);
    }
  }

  pthread_setspecific(*(v5 + 88), 0);
  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t webrtc::Thread::Join(uint64_t this)
{
  if (*(this + 208))
  {
    v1 = this;
    {
      operator new();
    }

    if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)))
    {
      {
        operator new();
      }

      if ((*(pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) + 217) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/thread.cc");
      }
    }

    this = pthread_join(*(v1 + 208), 0);
    *(v1 + 208) = 0;
  }

  return this;
}

uint64_t webrtc::Thread::Stop(webrtc::Thread *this)
{
  atomic_store(1u, this + 41);
  (*(**(this + 21) + 40))(*(this + 21));

  return webrtc::Thread::Join(this);
}

uint64_t webrtc::Thread::BlockingCallImpl(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v8 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 48))(a1);
  if ((result & 1) == 0)
  {
    {
      operator new();
    }

    if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) != a1)
    {
      webrtc::Event::Event(&v7, 0, 0);
      operator new();
    }

    return a3(a2);
  }

  return result;
}

uint64_t webrtc::Thread::Delete(webrtc::Thread *this)
{
  (*(*this + 80))(this);
  v2 = *(*this + 32);

  return v2(this);
}

uint64_t webrtc::Thread::IsProcessingMessagesForTesting(webrtc::Thread *this)
{
  if (*(this + 216))
  {
    return (*(*this + 48))(this) ^ 1;
  }

  v1 = this;
  v2 = &unk_280905000;
  {
    v2 = &unk_280905000;
    if (v5)
    {
      operator new();
    }
  }

  v3 = pthread_getspecific(*(v2[403] + 88));
  this = v1;
  if (v3 == v1)
  {
    return (*(*this + 48))(this) ^ 1;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__114__split_bufferIPN4absl12AnyInvocableIFvvOEEENS_9allocatorIS5_EEE13shrink_to_fitEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

LABEL_14:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 16) - *(a1 + 8);
      if (v9)
      {
        __break(1u);
        goto LABEL_14;
      }

      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = v9;
      *(a1 + 24) = 8 * v8;
      if (v4)
      {

        operator delete(v4);
      }
    }
  }
}

void *_ZNSt3__15dequeIN4absl12AnyInvocableIFvvOEEENS_9allocatorIS4_EEE19__add_back_capacityEv(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v11);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::Thread::BlockingCallImpl(webrtc::FunctionView<void ()(void)>,webrtc::Location const&)::$_1>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 16) == 1)
      {
        v4 = *(v3 + 24);
        pthread_mutex_lock(v4);
        *(v4 + 113) = 1;
        pthread_cond_broadcast((v4 + 64));
        pthread_mutex_unlock(v4);
        *(v3 + 16) = 0;
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

void webrtc::ThreeBandFilterBank::Analysis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 >= 1)
  {
    bzero(*a3, 4 * v5);
  }

  v6 = *(a3 + 24);
  if (v6 >= 1)
  {
    bzero(*(a3 + 16), 4 * v6);
  }

  v7 = *(a3 + 40);
  if (v7 >= 1)
  {
    bzero(*(a3 + 32), 4 * v7);
  }

  v8 = 0;
  v9 = (a2 + 56);
  v126 = a2 + 8;
  v128 = a3;
LABEL_9:
  v10 = 0;
  v127 = v9;
  do
  {
    v11 = v9 - 12;
    v12 = vld3q_f32(v11);
    v13 = vld3q_f32(v9);
    v14 = &v170[v10 + 1].i64[1];
    *v14 = v12;
    *(v14 + 1) = v13;
    v9 += 24;
    v10 += 2;
  }

  while (v10 != 38);
  v15 = 0;
  v16 = *(v126 + 4 * (459 - v8));
  HIDWORD(v172) = *(v126 + 4 * (456 - v8));
  *v173 = v16;
  *&v173[4] = *(v126 + 4 * (462 - v8));
  v17 = *(v126 + 4 * (468 - v8));
  *&v173[8] = *(v126 + 4 * (465 - v8));
  *&v173[12] = v17;
  *&v173[16] = *(v126 + 4 * (471 - v8));
  *&v173[20] = *(v126 + 4 * (474 - v8));
  v18 = &v131;
  v19 = v171;
  v20 = v8;
  v21 = 15;
  *&v173[24] = *(v126 + 4 * (477 - v8));
  v130 = v8;
  while (1)
  {
    v88 = 3 * v15 + v8;
    if (v88 != 3 && v88 != 9)
    {
      break;
    }

LABEL_12:
    ++v15;
    --v21;
    v18 = (v18 + 4);
    v20 += 3;
    v19 -= 4;
    if (v15 == 4)
    {
      ++v8;
      v9 = v127 - 1;
      if (v8 == 3)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  if (v88 >= 9)
  {
    v90 = -2;
  }

  else
  {
    v90 = -1;
  }

  if (v88 >= 3)
  {
    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

  v92 = v91 + v88;
  if ((v91 + v88) < 0xA)
  {
    v94 = (a1 + 60 * v92);
    bzero(&v131, 0x280uLL);
    if (v15)
    {
      v95 = (v94 - 1);
      v96 = (v94 - 2);
      v97 = (v94 - 3);
      v99 = *v93;
      v98 = v93[1];
      v101 = v93[2];
      v100 = v93[3];
      v131.f32[0] = (((v131.f32[0] + (*(v94 + v21) * *v93)) + (*(v94 + v21 - 4) * v98)) + (*(v94 + v21 - 8) * v101)) + (*(v94 + v21 - 12) * v100);
      if (v15 != 1)
      {
        v131.f32[1] = (((v131.f32[1] + (*(v94 + v21 + 1) * v99)) + (v95[v21 + 1] * v98)) + (v96[v21 + 1] * v101)) + (v97[v21 + 1] * v100);
        if (v15 != 2)
        {
          v131.f32[2] = (((v131.f32[2] + (*(v94 + v21 + 2) * v99)) + (v95[v21 + 2] * v98)) + (v96[v21 + 2] * v101)) + (v97[v21 + 2] * v100);
        }
      }
    }

    v102 = 0;
    v103 = *v93;
    v104 = &v170[0].f32[2];
    v105 = a1 + 44 + 60 * (v20 + v91);
    do
    {
      v106 = v102 >> 2;
      if (v102 >> 2 >= 3)
      {
        v106 = 3;
      }

      v107 = v18->f32[v102] + (v104[4] * v103);
      if (v102 > 3)
      {
        v108 = v106 + 1;
        v107 = v107 + (*v104 * v93[1]);
        if (v108 != 2)
        {
          v107 = v107 + (*(v104 - 4) * v93[2]);
          if (v108 != 3)
          {
            v107 = v107 + (*(v104 - 8) * v93[3]);
          }
        }
      }

      v18->f32[v102] = v107;
      if (v102 <= 0xB)
      {
        v109 = (v105 - ((4 * v102) & 0xFFFFFFFFFFFFFFF0));
        v110 = v102 >> 2;
        if (v102 >> 2 >= 3)
        {
          v110 = 3;
        }

        v111 = v107 + (*v109 * v93[v110 + 1]);
        if (v102 < 8)
        {
          v111 = v111 + (*(v109 - 4) * v93[v110 + 2]);
          if (v102 <= 3)
          {
            v111 = v111 + (*(v109 - 8) * v93[3]);
          }
        }

        v18->f32[v102] = v111;
      }

      ++v102;
      v105 += 4;
      ++v104;
    }

    while (v15 + v102 != 16);
    v112 = 0;
    v113 = v93 + 3;
    v114 = v93 + 2;
    v116 = vld1q_dup_f32(v93);
    v115 = v93 + 1;
    v117 = vld1q_dup_f32(v115);
    v118 = vld1q_dup_f32(v114);
    v119 = vld1q_dup_f32(v113);
    do
    {
      v120 = (&v131 + v112);
      v121 = *&v19[v112 + 16];
      v122 = *&v19[v112];
      v123 = vmlaq_f32(vmlaq_f32(*(&v135 + v112), v116, v121), v117, v122);
      v124 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*(&v136 + v112), v116, *&v19[v112 + 32]), v117, v121), v118, v122);
      v125 = *&v19[v112 - 16];
      v120[4] = vmlaq_f32(vmlaq_f32(v123, v118, v125), v119, *&v19[v112 - 32]);
      v120[5] = vmlaq_f32(v124, v119, v125);
      v112 += 32;
    }

    while (v112 != 576);
    v22 = v172;
    *v94 = *&v171[532];
    v94[1] = v22;
    v94[2] = *v173;
    *(v94 + 44) = *&v173[12];
    v24 = vld1q_dup_f32(v23++);
    v25 = *v128;
    v26 = vmlaq_f32((*v128)[1], v132, v24);
    *v25 = vmlaq_f32(**v128, v131, v24);
    v25[1] = v26;
    v27 = vmlaq_f32(v25[3], v134, v24);
    v25[2] = vmlaq_f32(v25[2], v133, v24);
    v25[3] = v27;
    v28 = vmlaq_f32(v25[5], v136, v24);
    v25[4] = vmlaq_f32(v25[4], v135, v24);
    v25[5] = v28;
    v29 = vmlaq_f32(v25[7], v138, v24);
    v25[6] = vmlaq_f32(v25[6], v137, v24);
    v25[7] = v29;
    v30 = vmlaq_f32(v25[9], v140, v24);
    v25[8] = vmlaq_f32(v25[8], v139, v24);
    v25[9] = v30;
    v31 = vmlaq_f32(v25[11], v142, v24);
    v25[10] = vmlaq_f32(v25[10], v141, v24);
    v25[11] = v31;
    v32 = vmlaq_f32(v25[13], v144, v24);
    v25[12] = vmlaq_f32(v25[12], v143, v24);
    v25[13] = v32;
    v33 = vmlaq_f32(v25[15], v146, v24);
    v25[14] = vmlaq_f32(v25[14], v145, v24);
    v25[15] = v33;
    v34 = vmlaq_f32(v25[17], v148, v24);
    v25[16] = vmlaq_f32(v25[16], v147, v24);
    v25[17] = v34;
    v35 = vmlaq_f32(v25[19], v150, v24);
    v25[18] = vmlaq_f32(v25[18], v149, v24);
    v25[19] = v35;
    v36 = vmlaq_f32(v25[21], v152, v24);
    v25[20] = vmlaq_f32(v25[20], v151, v24);
    v25[21] = v36;
    v37 = vmlaq_f32(v25[23], v154, v24);
    v25[22] = vmlaq_f32(v25[22], v153, v24);
    v25[23] = v37;
    v38 = vmlaq_f32(v25[25], v156, v24);
    v25[24] = vmlaq_f32(v25[24], v155, v24);
    v25[25] = v38;
    v39 = vmlaq_f32(v25[27], v158, v24);
    v25[26] = vmlaq_f32(v25[26], v157, v24);
    v25[27] = v39;
    v40 = vmlaq_f32(v25[29], v160, v24);
    v25[28] = vmlaq_f32(v25[28], v159, v24);
    v25[29] = v40;
    v41 = vmlaq_f32(v25[31], v162, v24);
    v25[30] = vmlaq_f32(v25[30], v161, v24);
    v25[31] = v41;
    v42 = vmlaq_f32(v25[33], v164, v24);
    v25[32] = vmlaq_f32(v25[32], v163, v24);
    v25[33] = v42;
    v43 = vmlaq_f32(v25[35], v166, v24);
    v25[34] = vmlaq_f32(v25[34], v165, v24);
    v25[35] = v43;
    v44 = vmlaq_f32(v25[37], v168, v24);
    v25[36] = vmlaq_f32(v25[36], v167, v24);
    v25[37] = v44;
    v45 = vmlaq_f32(v25[39], v170[0], v24);
    v25[38] = vmlaq_f32(v25[38], v169, v24);
    v25[39] = v45;
    v24.f32[0] = *v23;
    v46 = v128[2];
    v47 = vmlaq_n_f32(v46[1], v132, v24.f32[0]);
    *v46 = vmlaq_n_f32(*v46, v131, v24.f32[0]);
    v46[1] = v47;
    v48 = vmlaq_n_f32(v46[3], v134, v24.f32[0]);
    v46[2] = vmlaq_n_f32(v46[2], v133, v24.f32[0]);
    v46[3] = v48;
    v49 = vmlaq_n_f32(v46[5], v136, v24.f32[0]);
    v46[4] = vmlaq_n_f32(v46[4], v135, v24.f32[0]);
    v46[5] = v49;
    v50 = vmlaq_n_f32(v46[7], v138, v24.f32[0]);
    v46[6] = vmlaq_n_f32(v46[6], v137, v24.f32[0]);
    v46[7] = v50;
    v51 = vmlaq_n_f32(v46[9], v140, v24.f32[0]);
    v46[8] = vmlaq_n_f32(v46[8], v139, v24.f32[0]);
    v46[9] = v51;
    v52 = vmlaq_n_f32(v46[11], v142, v24.f32[0]);
    v46[10] = vmlaq_n_f32(v46[10], v141, v24.f32[0]);
    v46[11] = v52;
    v53 = vmlaq_n_f32(v46[13], v144, v24.f32[0]);
    v46[12] = vmlaq_n_f32(v46[12], v143, v24.f32[0]);
    v46[13] = v53;
    v54 = vmlaq_n_f32(v46[15], v146, v24.f32[0]);
    v46[14] = vmlaq_n_f32(v46[14], v145, v24.f32[0]);
    v46[15] = v54;
    v55 = vmlaq_n_f32(v46[17], v148, v24.f32[0]);
    v46[16] = vmlaq_n_f32(v46[16], v147, v24.f32[0]);
    v46[17] = v55;
    v56 = vmlaq_n_f32(v46[19], v150, v24.f32[0]);
    v46[18] = vmlaq_n_f32(v46[18], v149, v24.f32[0]);
    v46[19] = v56;
    v57 = vmlaq_n_f32(v46[21], v152, v24.f32[0]);
    v46[20] = vmlaq_n_f32(v46[20], v151, v24.f32[0]);
    v46[21] = v57;
    v58 = vmlaq_n_f32(v46[23], v154, v24.f32[0]);
    v46[22] = vmlaq_n_f32(v46[22], v153, v24.f32[0]);
    v46[23] = v58;
    v59 = vmlaq_n_f32(v46[25], v156, v24.f32[0]);
    v46[24] = vmlaq_n_f32(v46[24], v155, v24.f32[0]);
    v46[25] = v59;
    v60 = vmlaq_n_f32(v46[27], v158, v24.f32[0]);
    v46[26] = vmlaq_n_f32(v46[26], v157, v24.f32[0]);
    v46[27] = v60;
    v61 = vmlaq_n_f32(v46[29], v160, v24.f32[0]);
    v46[28] = vmlaq_n_f32(v46[28], v159, v24.f32[0]);
    v46[29] = v61;
    v62 = vmlaq_n_f32(v46[31], v162, v24.f32[0]);
    v46[30] = vmlaq_n_f32(v46[30], v161, v24.f32[0]);
    v46[31] = v62;
    v63 = vmlaq_n_f32(v46[33], v164, v24.f32[0]);
    v46[32] = vmlaq_n_f32(v46[32], v163, v24.f32[0]);
    v46[33] = v63;
    v64 = vmlaq_n_f32(v46[35], v166, v24.f32[0]);
    v46[34] = vmlaq_n_f32(v46[34], v165, v24.f32[0]);
    v46[35] = v64;
    v65 = vmlaq_n_f32(v46[37], v168, v24.f32[0]);
    v46[36] = vmlaq_n_f32(v46[36], v167, v24.f32[0]);
    v46[37] = v65;
    v66 = vmlaq_n_f32(v46[39], v170[0], v24.f32[0]);
    v46[38] = vmlaq_n_f32(v46[38], v169, v24.f32[0]);
    v46[39] = v66;
    v67 = v128[4];
    v68 = vmlaq_n_f32(v67[1], v132, v24.f32[0]);
    *v67 = vmlaq_n_f32(*v67, v131, v24.f32[0]);
    v67[1] = v68;
    v69 = vmlaq_n_f32(v67[3], v134, v24.f32[0]);
    v67[2] = vmlaq_n_f32(v67[2], v133, v24.f32[0]);
    v67[3] = v69;
    v70 = vmlaq_n_f32(v67[5], v136, v24.f32[0]);
    v67[4] = vmlaq_n_f32(v67[4], v135, v24.f32[0]);
    v67[5] = v70;
    v71 = vmlaq_n_f32(v67[7], v138, v24.f32[0]);
    v67[6] = vmlaq_n_f32(v67[6], v137, v24.f32[0]);
    v67[7] = v71;
    v72 = vmlaq_n_f32(v67[9], v140, v24.f32[0]);
    v67[8] = vmlaq_n_f32(v67[8], v139, v24.f32[0]);
    v67[9] = v72;
    v73 = vmlaq_n_f32(v67[11], v142, v24.f32[0]);
    v67[10] = vmlaq_n_f32(v67[10], v141, v24.f32[0]);
    v67[11] = v73;
    v74 = vmlaq_n_f32(v67[13], v144, v24.f32[0]);
    v67[12] = vmlaq_n_f32(v67[12], v143, v24.f32[0]);
    v67[13] = v74;
    v75 = vmlaq_n_f32(v67[15], v146, v24.f32[0]);
    v67[14] = vmlaq_n_f32(v67[14], v145, v24.f32[0]);
    v67[15] = v75;
    v76 = vmlaq_n_f32(v67[17], v148, v24.f32[0]);
    v67[16] = vmlaq_n_f32(v67[16], v147, v24.f32[0]);
    v67[17] = v76;
    v77 = vmlaq_n_f32(v67[19], v150, v24.f32[0]);
    v67[18] = vmlaq_n_f32(v67[18], v149, v24.f32[0]);
    v67[19] = v77;
    v78 = vmlaq_n_f32(v67[21], v152, v24.f32[0]);
    v67[20] = vmlaq_n_f32(v67[20], v151, v24.f32[0]);
    v67[21] = v78;
    v79 = vmlaq_n_f32(v67[23], v154, v24.f32[0]);
    v67[22] = vmlaq_n_f32(v67[22], v153, v24.f32[0]);
    v67[23] = v79;
    v80 = vmlaq_n_f32(v67[25], v156, v24.f32[0]);
    v67[24] = vmlaq_n_f32(v67[24], v155, v24.f32[0]);
    v67[25] = v80;
    v81 = vmlaq_n_f32(v67[27], v158, v24.f32[0]);
    v67[26] = vmlaq_n_f32(v67[26], v157, v24.f32[0]);
    v67[27] = v81;
    v82 = vmlaq_n_f32(v67[29], v160, v24.f32[0]);
    v67[28] = vmlaq_n_f32(v67[28], v159, v24.f32[0]);
    v67[29] = v82;
    v83 = vmlaq_n_f32(v67[31], v162, v24.f32[0]);
    v67[30] = vmlaq_n_f32(v67[30], v161, v24.f32[0]);
    v67[31] = v83;
    v84 = vmlaq_n_f32(v67[33], v164, v24.f32[0]);
    v67[32] = vmlaq_n_f32(v67[32], v163, v24.f32[0]);
    v67[33] = v84;
    v85 = vmlaq_n_f32(v67[35], v166, v24.f32[0]);
    v67[34] = vmlaq_n_f32(v67[34], v165, v24.f32[0]);
    v67[35] = v85;
    v86 = vmlaq_n_f32(v67[37], v168, v24.f32[0]);
    v67[36] = vmlaq_n_f32(v67[36], v167, v24.f32[0]);
    v67[37] = v86;
    v87 = vmlaq_n_f32(v67[39], v170[0], v24.f32[0]);
    v67[38] = vmlaq_n_f32(v67[38], v169, v24.f32[0]);
    v67[39] = v87;
    v8 = v130;
    goto LABEL_12;
  }

  __break(1u);
}

void webrtc::ThreeBandFilterBank::Synthesis(uint64_t a1, float32x4_t **a2, char *a3)
{
  v3 = a3;
  bzero(a3, 0x780uLL);
  v5 = 0;
  v118 = a1 + 600;
  v117 = a1 + 644;
LABEL_3:
  v6 = 0;
  v7 = &v123;
  v8 = &v131;
  v9 = v5;
  v10 = 15;
  v120 = v5;
  v121 = v3;
  while (1)
  {
    v11 = 3 * v6 + v5;
    if (v11 != 3 && v11 != 9)
    {
      break;
    }

LABEL_4:
    ++v6;
    --v10;
    ++v7;
    v9 += 3;
    v8 = (v8 - 4);
    if (v6 == 4)
    {
      ++v5;
      ++v3;
      if (v5 == 3)
      {
        return;
      }

      goto LABEL_3;
    }
  }

  if (v11 >= 9)
  {
    v13 = -2;
  }

  else
  {
    v13 = -1;
  }

  if (v11 < 3)
  {
    v13 = 0;
  }

  v14 = v13 + v11;
  if ((v13 + v11) < 0xA)
  {
    v122 = v13;
    bzero(&v128, 0x280uLL);
    v17 = vld1q_dup_f32(v16++);
    v18 = *a2;
    v19 = vmlaq_f32(v129, (*a2)[1], v17);
    v128 = vmlaq_f32(v128, **a2, v17);
    v129 = v19;
    v20 = vmlaq_f32(v131, v18[3], v17);
    v130 = vmlaq_f32(v130, v18[2], v17);
    v131 = v20;
    v21 = vmlaq_f32(v133, v18[5], v17);
    v132 = vmlaq_f32(v132, v18[4], v17);
    v133 = v21;
    v22 = vmlaq_f32(v135, v18[7], v17);
    v134 = vmlaq_f32(v134, v18[6], v17);
    v135 = v22;
    v23 = vmlaq_f32(v137, v18[9], v17);
    v136 = vmlaq_f32(v136, v18[8], v17);
    v137 = v23;
    v24 = vmlaq_f32(v139, v18[11], v17);
    v138 = vmlaq_f32(v138, v18[10], v17);
    v139 = v24;
    v25 = vmlaq_f32(v141, v18[13], v17);
    v140 = vmlaq_f32(v140, v18[12], v17);
    v141 = v25;
    v26 = vmlaq_f32(v143, v18[15], v17);
    v142 = vmlaq_f32(v142, v18[14], v17);
    v143 = v26;
    v27 = vmlaq_f32(v145, v18[17], v17);
    v144 = vmlaq_f32(v144, v18[16], v17);
    v145 = v27;
    v28 = vmlaq_f32(v147, v18[19], v17);
    v146 = vmlaq_f32(v146, v18[18], v17);
    v147 = v28;
    v29 = vmlaq_f32(v149, v18[21], v17);
    v148 = vmlaq_f32(v148, v18[20], v17);
    v149 = v29;
    v30 = vmlaq_f32(v151, v18[23], v17);
    v150 = vmlaq_f32(v150, v18[22], v17);
    v151 = v30;
    v31 = vmlaq_f32(v153, v18[25], v17);
    v152 = vmlaq_f32(v152, v18[24], v17);
    v153 = v31;
    v32 = vmlaq_f32(v155, v18[27], v17);
    v154 = vmlaq_f32(v154, v18[26], v17);
    v155 = v32;
    v33 = vmlaq_f32(v157, v18[29], v17);
    v156 = vmlaq_f32(v156, v18[28], v17);
    v157 = v33;
    v34 = vmlaq_f32(v159, v18[31], v17);
    v158 = vmlaq_f32(v158, v18[30], v17);
    v159 = v34;
    v35 = vmlaq_f32(v161, v18[33], v17);
    v160 = vmlaq_f32(v160, v18[32], v17);
    v161 = v35;
    v36 = vmlaq_f32(v163, v18[35], v17);
    v162 = vmlaq_f32(v162, v18[34], v17);
    v163 = v36;
    v37 = vmlaq_f32(*&v164[16], v18[37], v17);
    *v164 = vmlaq_f32(*v164, v18[36], v17);
    *&v164[16] = v37;
    v38 = vmlaq_f32(*&v164[48], v18[39], v17);
    *&v164[32] = vmlaq_f32(*&v164[32], v18[38], v17);
    *&v164[48] = v38;
    v17.f32[0] = *v16;
    v39 = a2[2];
    v40 = vmlaq_n_f32(v129, v39[1], v17.f32[0]);
    v128 = vmlaq_n_f32(v128, *v39, v17.f32[0]);
    v129 = v40;
    v41 = vmlaq_n_f32(v131, v39[3], v17.f32[0]);
    v130 = vmlaq_n_f32(v130, v39[2], v17.f32[0]);
    v131 = v41;
    v42 = vmlaq_n_f32(v133, v39[5], v17.f32[0]);
    v132 = vmlaq_n_f32(v132, v39[4], v17.f32[0]);
    v133 = v42;
    v43 = vmlaq_n_f32(v135, v39[7], v17.f32[0]);
    v134 = vmlaq_n_f32(v134, v39[6], v17.f32[0]);
    v135 = v43;
    v44 = vmlaq_n_f32(v137, v39[9], v17.f32[0]);
    v136 = vmlaq_n_f32(v136, v39[8], v17.f32[0]);
    v137 = v44;
    v45 = vmlaq_n_f32(v139, v39[11], v17.f32[0]);
    v138 = vmlaq_n_f32(v138, v39[10], v17.f32[0]);
    v139 = v45;
    v46 = vmlaq_n_f32(v141, v39[13], v17.f32[0]);
    v140 = vmlaq_n_f32(v140, v39[12], v17.f32[0]);
    v141 = v46;
    v47 = vmlaq_n_f32(v143, v39[15], v17.f32[0]);
    v142 = vmlaq_n_f32(v142, v39[14], v17.f32[0]);
    v143 = v47;
    v48 = vmlaq_n_f32(v145, v39[17], v17.f32[0]);
    v144 = vmlaq_n_f32(v144, v39[16], v17.f32[0]);
    v145 = v48;
    v49 = vmlaq_n_f32(v147, v39[19], v17.f32[0]);
    v146 = vmlaq_n_f32(v146, v39[18], v17.f32[0]);
    v147 = v49;
    v50 = vmlaq_n_f32(v149, v39[21], v17.f32[0]);
    v148 = vmlaq_n_f32(v148, v39[20], v17.f32[0]);
    v149 = v50;
    v51 = vmlaq_n_f32(v151, v39[23], v17.f32[0]);
    v150 = vmlaq_n_f32(v150, v39[22], v17.f32[0]);
    v151 = v51;
    v52 = vmlaq_n_f32(v153, v39[25], v17.f32[0]);
    v152 = vmlaq_n_f32(v152, v39[24], v17.f32[0]);
    v153 = v52;
    v53 = vmlaq_n_f32(v155, v39[27], v17.f32[0]);
    v154 = vmlaq_n_f32(v154, v39[26], v17.f32[0]);
    v155 = v53;
    v54 = vmlaq_n_f32(v157, v39[29], v17.f32[0]);
    v156 = vmlaq_n_f32(v156, v39[28], v17.f32[0]);
    v157 = v54;
    v55 = vmlaq_n_f32(v159, v39[31], v17.f32[0]);
    v158 = vmlaq_n_f32(v158, v39[30], v17.f32[0]);
    v159 = v55;
    v56 = vmlaq_n_f32(v161, v39[33], v17.f32[0]);
    v160 = vmlaq_n_f32(v160, v39[32], v17.f32[0]);
    v161 = v56;
    v57 = vmlaq_n_f32(v163, v39[35], v17.f32[0]);
    v162 = vmlaq_n_f32(v162, v39[34], v17.f32[0]);
    v163 = v57;
    v58 = vmlaq_n_f32(*&v164[16], v39[37], v17.f32[0]);
    *v164 = vmlaq_n_f32(*v164, v39[36], v17.f32[0]);
    *&v164[16] = v58;
    v59 = vmlaq_n_f32(*&v164[48], v39[39], v17.f32[0]);
    *&v164[32] = vmlaq_n_f32(*&v164[32], v39[38], v17.f32[0]);
    *&v164[48] = v59;
    v60 = a2[4];
    v61 = vmlaq_n_f32(v129, v60[1], v17.f32[0]);
    v128 = vmlaq_n_f32(v128, *v60, v17.f32[0]);
    v129 = v61;
    v62 = vmlaq_n_f32(v131, v60[3], v17.f32[0]);
    v130 = vmlaq_n_f32(v130, v60[2], v17.f32[0]);
    v131 = v62;
    v63 = vmlaq_n_f32(v133, v60[5], v17.f32[0]);
    v132 = vmlaq_n_f32(v132, v60[4], v17.f32[0]);
    v133 = v63;
    v64 = vmlaq_n_f32(v135, v60[7], v17.f32[0]);
    v134 = vmlaq_n_f32(v134, v60[6], v17.f32[0]);
    v135 = v64;
    v65 = vmlaq_n_f32(v137, v60[9], v17.f32[0]);
    v136 = vmlaq_n_f32(v136, v60[8], v17.f32[0]);
    v137 = v65;
    v66 = vmlaq_n_f32(v139, v60[11], v17.f32[0]);
    v138 = vmlaq_n_f32(v138, v60[10], v17.f32[0]);
    v139 = v66;
    v67 = vmlaq_n_f32(v141, v60[13], v17.f32[0]);
    v140 = vmlaq_n_f32(v140, v60[12], v17.f32[0]);
    v141 = v67;
    v68 = vmlaq_n_f32(v143, v60[15], v17.f32[0]);
    v142 = vmlaq_n_f32(v142, v60[14], v17.f32[0]);
    v143 = v68;
    v69 = vmlaq_n_f32(v145, v60[17], v17.f32[0]);
    v144 = vmlaq_n_f32(v144, v60[16], v17.f32[0]);
    v145 = v69;
    v70 = vmlaq_n_f32(v147, v60[19], v17.f32[0]);
    v146 = vmlaq_n_f32(v146, v60[18], v17.f32[0]);
    v147 = v70;
    v71 = vmlaq_n_f32(v149, v60[21], v17.f32[0]);
    v148 = vmlaq_n_f32(v148, v60[20], v17.f32[0]);
    v149 = v71;
    v72 = vmlaq_n_f32(v151, v60[23], v17.f32[0]);
    v150 = vmlaq_n_f32(v150, v60[22], v17.f32[0]);
    v151 = v72;
    v73 = vmlaq_n_f32(v153, v60[25], v17.f32[0]);
    v152 = vmlaq_n_f32(v152, v60[24], v17.f32[0]);
    v153 = v73;
    v74 = vmlaq_n_f32(v155, v60[27], v17.f32[0]);
    v154 = vmlaq_n_f32(v154, v60[26], v17.f32[0]);
    v155 = v74;
    v75 = vmlaq_n_f32(v157, v60[29], v17.f32[0]);
    v156 = vmlaq_n_f32(v156, v60[28], v17.f32[0]);
    v157 = v75;
    v76 = vmlaq_n_f32(v159, v60[31], v17.f32[0]);
    v158 = vmlaq_n_f32(v158, v60[30], v17.f32[0]);
    v159 = v76;
    v77 = vmlaq_n_f32(v161, v60[33], v17.f32[0]);
    v160 = vmlaq_n_f32(v160, v60[32], v17.f32[0]);
    v161 = v77;
    v78 = vmlaq_n_f32(v163, v60[35], v17.f32[0]);
    v162 = vmlaq_n_f32(v162, v60[34], v17.f32[0]);
    v163 = v78;
    v79 = vmlaq_n_f32(*&v164[16], v60[37], v17.f32[0]);
    *v164 = vmlaq_n_f32(*v164, v60[36], v17.f32[0]);
    *&v164[16] = v79;
    v80 = vmlaq_n_f32(*&v164[48], v60[39], v17.f32[0]);
    v81 = (v118 + 60 * v14);
    *&v164[32] = vmlaq_n_f32(*&v164[32], v60[38], v17.f32[0]);
    *&v164[48] = v80;
    bzero(&v123, 0x280uLL);
    if (v6)
    {
      v82 = (v81 - 1);
      v83 = (v81 - 2);
      v84 = (v81 - 3);
      v86 = *v15;
      v85 = v15[1];
      v88 = v15[2];
      v87 = v15[3];
      v123 = (((v123 + (*(v81 + v10) * *v15)) + (*(v81 + v10 - 4) * v85)) + (*(v81 + v10 - 8) * v88)) + (*(v81 + v10 - 12) * v87);
      if (v6 != 1)
      {
        v124 = (((v124 + (*(v81 + v10 + 1) * v86)) + (v82[v10 + 1] * v85)) + (v83[v10 + 1] * v88)) + (v84[v10 + 1] * v87);
        if (v6 != 2)
        {
          v125 = (((v125 + (*(v81 + v10 + 2) * v86)) + (v82[v10 + 2] * v85)) + (v83[v10 + 2] * v88)) + (v84[v10 + 2] * v87);
        }
      }
    }

    v89 = 0;
    v90 = *v15;
    v91 = v117 + 60 * (v9 + v122);
    v92 = &v127;
    do
    {
      v93 = v89 >> 2;
      if (v89 >> 2 >= 3)
      {
        v93 = 3;
      }

      v94 = v7[v89] + (v92[4] * v90);
      if (v89 > 3)
      {
        v95 = v93 + 1;
        v94 = v94 + (*v92 * v15[1]);
        if (v95 != 2)
        {
          v94 = v94 + (*(v92 - 4) * v15[2]);
          if (v95 != 3)
          {
            v94 = v94 + (*(v92 - 8) * v15[3]);
          }
        }
      }

      v7[v89] = v94;
      if (v89 <= 0xB)
      {
        v96 = (v91 - ((4 * v89) & 0xFFFFFFFFFFFFFFF0));
        v97 = v89 >> 2;
        if (v89 >> 2 >= 3)
        {
          v97 = 3;
        }

        v98 = v94 + (*v96 * v15[v97 + 1]);
        if (v89 < 8)
        {
          v98 = v98 + (*(v96 - 4) * v15[v97 + 2]);
          if (v89 <= 3)
          {
            v98 = v98 + (*(v96 - 8) * v15[3]);
          }
        }

        v7[v89] = v98;
      }

      ++v89;
      v91 += 4;
      ++v92;
    }

    while (v6 + v89 != 16);
    v99 = 0;
    v100 = v15 + 3;
    v101 = v15 + 2;
    v103 = vld1q_dup_f32(v15);
    v102 = v15 + 1;
    v104 = vld1q_dup_f32(v102);
    v105 = vld1q_dup_f32(v101);
    v106 = vld1q_dup_f32(v100);
    do
    {
      v107 = (&v123 + v99 * 16);
      v108 = v8[v99 + 1];
      v109 = v8[v99];
      v110 = vmlaq_f32(vmlaq_f32(*&v126[v99 * 16], v103, v108), v104, v109);
      v111 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*&v126[v99 * 16 + 16], v103, v8[v99 + 2]), v104, v108), v105, v109);
      v112 = v8[v99 - 1];
      v107[4] = vmlaq_f32(vmlaq_f32(v110, v105, v112), v106, v8[v99 - 2]);
      v107[5] = vmlaq_f32(v111, v106, v112);
      v99 += 2;
    }

    while (v99 != 36);
    v113 = 0;
    v114 = *&v164[20];
    *v81 = *&v164[4];
    v81[1] = v114;
    v81[2] = *&v164[36];
    *(v81 + 44) = *&v164[48];
    v3 = v121;
    v115 = v121;
    do
    {
      v116 = v115[3] + (*(&v123 + v113 + 4) * 3.0);
      *v115 = *v115 + (*(&v123 + v113) * 3.0);
      v115[3] = v116;
      v113 += 8;
      v115 += 6;
    }

    while (v113 != 640);
    v5 = v120;
    goto LABEL_4;
  }

  __break(1u);
}

unint64_t webrtc::ToString@<X0>(webrtc *this@<X0>, TimeDelta a2@<0:X1>, char *a3@<X8>)
{
  *&v25[57] = *MEMORY[0x277D85DE8];
  __s = v24;
  v23 = xmmword_273B91D00;
  v24[0] = 0;
  if (this == 0x8000000000000000)
  {
    qmemcpy(v24, "-inf ms", sizeof(v24));
    *(&v23 + 1) = 7;
    v4 = v25;
    goto LABEL_12;
  }

  if (!this)
  {
    goto LABEL_7;
  }

  if (this != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (__ROR8__(0x1CAC083126E978D5 * this + 0x10624DD2F1A9FB8, 3) >= 0x4189374BC6A7EFuLL)
    {
LABEL_7:
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", this);
      v5 = *(&v23 + 1);
      v6 = __s;
      if (v23 + ~*(&v23 + 1) >= 3uLL)
      {
        v7 = 3;
      }

      else
      {
        v7 = v23 + ~*(&v23 + 1);
      }

      v8 = " us";
LABEL_11:
      memcpy(&v6[v5], v8, v7);
      *(&v23 + 1) += v7;
      v4 = &__s[*(&v23 + 1)];
      goto LABEL_12;
    }

    if ((this & 0x8000000000000000) != 0)
    {
      v15 = -this;
      v16 = -this / 0x3E8uLL;
      v17 = -this % 0x3E8uLL;
      if (v17 <= 0x1F4)
      {
        v18 = -this / 0x3E8uLL;
      }

      else
      {
        v18 = v16 + 1;
      }

      if (__ROR8__(0x1CAC083126E978D5 * v18, 3) < 0x4189374BC6A7F0uLL)
      {
        v20 = v15 / 0xF4240;
        if (v15 % 0xF4240 <= 0x7A120)
        {
          v21 = 0;
        }

        else
        {
          v21 = -1;
        }

        v14 = v21 - v20;
LABEL_47:
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", v14);
        v5 = *(&v23 + 1);
        v6 = __s;
        if (v23 + ~*(&v23 + 1) >= 2uLL)
        {
          v7 = 2;
        }

        else
        {
          v7 = v23 + ~*(&v23 + 1);
        }

        v8 = " s";
        goto LABEL_11;
      }

      if (v17 <= 0x1F4)
      {
        v19 = 0;
      }

      else
      {
        v19 = -1;
      }

      v13 = v19 - v16;
    }

    else
    {
      v13 = this / 0x3E8;
      if (this % 0x3E8 > 0x1F3)
      {
        ++v13;
      }

      if (__ROR8__(0x1CAC083126E978D5 * v13, 3) < 0x4189374BC6A7F0uLL)
      {
        v14 = this / 0xF4240;
        if (this % 0xF4240 > 0x7A11F)
        {
          ++v14;
        }

        goto LABEL_47;
      }
    }

    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", v13);
    v5 = *(&v23 + 1);
    v6 = __s;
    if (v23 + ~*(&v23 + 1) >= 3uLL)
    {
      v7 = 3;
    }

    else
    {
      v7 = v23 + ~*(&v23 + 1);
    }

    v8 = " ms";
    goto LABEL_11;
  }

  qmemcpy(v24, "+inf ms", sizeof(v24));
  *(&v23 + 1) = 7;
  v4 = v25;
LABEL_12:
  *v4 = 0;
  v9 = __s;
  if (!__s)
  {
    goto LABEL_51;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_52;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a3[23] = result;
  v11 = &a3[result];
  if (a3 <= v9 && v11 > v9)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a3, v9, result);
  }

  *v11 = 0;
  return result;
}

uint64_t webrtc::TimeStretch::Process(webrtc::TimeStretch *this, int16x8_t *a2, unint64_t a3, unsigned int a4, webrtc::AudioMultiVector *a5, unint64_t *a6)
{
  v103 = *MEMORY[0x277D85DE8];
  if (*(this + 2) != 1)
  {
    operator new[]();
  }

  v9 = 15 * *(this + 3);
  v10 = WebRtcSpl_MaxAbsValueW16(a2, a3);
  *(this + 16) = v10;
  v11 = *(this + 2);
  if (v11 > 31999)
  {
    if (v11 == 32000)
    {
      v12 = 8;
      v13 = &webrtc::DspHelper::kDownsample32kHzTbl;
    }

    else
    {
      if (v11 != 48000)
      {
        goto LABEL_15;
      }

      v12 = 12;
      v13 = &webrtc::DspHelper::kDownsample48kHzTbl;
    }

    v14 = 4;
    v15 = 7;
  }

  else if (v11 == 8000)
  {
    v14 = 2;
    v13 = &webrtc::DspHelper::kDownsample8kHzTbl;
    v15 = 3;
    v12 = 2;
  }

  else
  {
    if (v11 != 16000)
    {
      goto LABEL_15;
    }

    v12 = 4;
    v13 = &webrtc::DspHelper::kDownsample16kHzTbl;
    v14 = 3;
    v15 = 5;
  }

  WebRtcSpl_DownsampleFast(a2->i64 + 2 * v15 - 2, a3 - v15 + 1, this + 17, 110, v13, v15, v12, v14);
LABEL_15:
  v16 = *(this + 218);
  v17 = *(this + 186);
  v18 = *(this + 154);
  v19 = *(this + 234);
  v20 = *(this + 202);
  v21 = *(this + 170);
  v22 = vminq_s16(vminq_s16(v16, vminq_s16(v17, v18)), vminq_s16(v19, vminq_s16(v20, v21)));
  v22.i16[0] = vminvq_s16(v22);
  v23 = vmaxq_s16(vmaxq_s16(v16, vmaxq_s16(v17, v18)), vmaxq_s16(v19, vmaxq_s16(v20, v21)));
  v23.i16[0] = vmaxvq_s16(v23);
  v17.i32[0] = *(this + 125);
  v17.i32[1] = *(this + 126);
  *v18.i8 = vmin_s32(*v17.i8, vshr_n_s32(vshl_n_s32(vdup_n_s32(v22.u32[0]), 0x10uLL), 0x10uLL));
  *v23.i8 = vmax_s32(*v17.i8, vshr_n_s32(vshl_n_s32(vdup_n_s32(v23.u32[0]), 0x10uLL), 0x10uLL));
  v24 = vpmax_s32(*v23.i8, *v23.i8).u16[0];
  v25 = vpmin_s32(*v18.i8, *v18.i8).u16[0];
  v23.i32[0] = *(this + 114);
  v23.i32[1] = *(this + 115);
  v26 = *(this + 196);
  v27 = *(this + 164);
  v28 = *(this + 132);
  v29 = *(this + 100);
  v30 = *(this + 68);
  v31 = *(this + 36);
  v32 = *(this + 212);
  v33 = *(this + 180);
  v34 = *(this + 148);
  v35 = *(this + 116);
  v36 = *(this + 84);
  v37 = *(this + 52);
  v38 = vminq_s16(vminq_s16(v26, vminq_s16(v27, vminq_s16(v28, vminq_s16(v29, vminq_s16(v30, v31))))), vminq_s16(v32, vminq_s16(v33, vminq_s16(v34, vminq_s16(v35, vminq_s16(v36, v37))))));
  v38.i16[0] = vminvq_s16(v38);
  *v38.i8 = vmin_s32(*v23.i8, vshr_n_s32(vshl_n_s32(vdup_n_s32(v38.u32[0]), 0x10uLL), 0x10uLL));
  v39 = vpmin_s32(*v38.i8, *v38.i8).i16[0];
  v40 = vmaxq_s16(vmaxq_s16(v26, vmaxq_s16(v27, vmaxq_s16(v28, vmaxq_s16(v29, vmaxq_s16(v30, v31))))), vmaxq_s16(v32, vmaxq_s16(v33, vmaxq_s16(v34, vmaxq_s16(v35, vmaxq_s16(v36, v37))))));
  v40.i16[0] = vmaxvq_s16(v40);
  *v23.i8 = vmax_s32(*v23.i8, vshr_n_s32(vshl_n_s32(vdup_n_s32(v40.u32[0]), 0x10uLL), 0x10uLL));
  v41 = vpmax_s32(*v23.i8, *v23.i8).i16[0];
  v42 = *(this + 116);
  if (v42 < v39)
  {
    LOWORD(v39) = *(this + 116);
  }

  if (v42 > v41)
  {
    LOWORD(v41) = *(this + 116);
  }

  if (v25 < -v24 || v25 == v24)
  {
    v24 = v25;
  }

  if (v39 < -v41 || v39 == v41)
  {
    v45 = v39;
  }

  else
  {
    v45 = v41;
  }

  v46 = v45 * v24;
  if (v46 < 0)
  {
    v46 = -v46;
  }

  v47 = 32 - __clz((50 * v46) >> 31);
  if (v46 >= 0x28F5C29)
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  WebRtcSpl_CrossCorrelation(v101, (this + 154), (this + 134), 0x32uLL, 50, v48, -1);
  v49 = WebRtcSpl_MaxAbsValueW32(v101, 0x32uLL);
  v51 = __clz(v49 ^ (v49 >> 31));
  v52 = (18 - v51) & ~((18 - v51) >> 31);
  if (!v49)
  {
    v52 = 17;
  }

  v53 = vdupq_n_s32(v52);
  v54 = vnegq_s32(v53);
  v55 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(v101[2], v54)), vshlq_s32(v101[3], v54));
  *(this + 254) = vqmovn_high_s32(vqmovn_s32(vshlq_s32(v101[0], v54)), vshlq_s32(v101[1], v54));
  v56 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(v101[4], v54)), vshlq_s32(v101[5], v54));
  v57 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(v101[6], v54)), vshlq_s32(v101[7], v54));
  *(this + 270) = v55;
  *(this + 286) = v56;
  v58 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(v101[8], v54)), vshlq_s32(v101[9], v54));
  v59 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(v101[10], v54)), vshlq_s32(v101[11], v54));
  *(this + 302) = v57;
  *(this + 318) = v58;
  *(this + 334) = v59;
  *v53.i8 = vmin_s32(vmax_s32(vshl_s32(v102, vneg_s32(*v53.i8)), 0x7F0000007FLL), 0x7F0000007FLL);
  *(this + 176) = v53.i16[2];
  *(this + 175) = v53.i16[0];
  v101[0].i64[0] = 0;
  v100 = 0;
  webrtc::DspHelper::PeakDetection((this + 254), 0x32, 1, *(this + 3), v101[0].i16, &v100, v50);
  v60 = v101[0].i64[0] + 20 * *(this + 3);
  v101[0].i64[0] = v60;
  v61 = 32 - __clz(*(this + 16) * *(this + 16));
  if (*(this + 16))
  {
    v62 = v61;
  }

  else
  {
    v62 = 31;
  }

  v63 = __clz(v60 ^ (v60 >> 31)) - 1;
  if (!v60)
  {
    v63 = 0;
  }

  v64 = (v62 - v63) & ~((v62 - v63) >> 31);
  v65 = (a2 + 2 * (v9 * 8 - v60));
  v66 = &a2[v9];
  v67 = WebRtcSpl_DotProductWithScale(v65, v65, v60, (v62 - v63) & ~((v62 - v63) >> 31));
  v68 = WebRtcSpl_DotProductWithScale(v66, v66, v60, v64);
  v69 = WebRtcSpl_DotProductWithScale(v65, v66, v60, v64);
  v70 = *(this + 3);
  if (*(v70 + 24) == 1)
  {
    v71 = **(v70 + 16);
    v72 = 17 - __clz(v71 ^ (v71 >> 31));
    if (!v71)
    {
      v72 = 16;
    }
  }

  else
  {
    v72 = 2;
    v71 = 75000;
  }

  v73 = v72 & ~(v72 >> 31);
  v74 = ((v68 + v67) / 16) >> v73;
  v75 = (v71 >> v73) * v60;
  v76 = __clz(v74 ^ (v74 >> 31)) - 1;
  if (!v74)
  {
    v76 = 0;
  }

  v77 = 2 * v64;
  v78 = 2 * v64 - v76;
  if (2 * v64 <= v76)
  {
    v78 = 0;
  }

  v79 = v75 >> v78;
  if (v77 >= v76)
  {
    v80 = v76;
  }

  else
  {
    v80 = v77;
  }

  v81 = v74 << v80;
  v99 = 0;
  if (v74 << v80 <= v79)
  {
    (*(*this + 16))(this, a3, &v99, v101);
    LOWORD(v87) = v99;
    v60 = v101[0].i64[0];
    v88 = a5;
    v89 = a4;
    v90 = a2;
    v91 = a3;
  }

  else
  {
    v82 = vbsl_s8(vceqz_s32(__PAIR64__(v67, v68)), 0x1000000010, vmax_s32(vsub_s32(0x1100000011, vclz_s32(veor_s8(vcltz_s32(__PAIR64__(v67, v68)), __PAIR64__(v67, v68)))), 0));
    v83 = v82.i32[0];
    v84 = ((v82.i8[0] + v82.i8[4]) & 1) + v82.i32[1];
    v85 = WebRtcSpl_SqrtFloor((v67 >> (((v82.i8[0] + v82.i8[4]) & 1) + v82.i8[4])) * (v68 >> v82.i8[0]));
    if (v85)
    {
      if ((v84 + v83) >= 0x1E)
      {
        v86 = v69 >> (((v84 + v83) >> 1) - 14);
      }

      else
      {
        v86 = v69 << (14 - ((v84 + v83) >> 1));
      }

      v87 = (v86 & ~(v86 >> 31)) / v85;
    }

    else
    {
      LOWORD(v87) = -1;
    }

    v88 = a5;
    v89 = a4;
    v90 = a2;
    v91 = a3;
    if (v87 >= 0x4000)
    {
      LOWORD(v87) = 0x4000;
    }

    v99 = v87;
  }

  result = (*(*this + 24))(this, v90, v91, v60, v87, v81 > v79, v89, v88);
  v93 = 0;
  if (result <= 0)
  {
    if (result != -1)
    {
      if (result)
      {
        return result;
      }

      goto LABEL_72;
    }

    goto LABEL_73;
  }

  if (result == 1)
  {
LABEL_72:
    v93 = v101[0].i64[0];
    goto LABEL_73;
  }

  if (result == 2)
  {
LABEL_73:
    *a6 = v93;
  }

  return result;
}

uint64_t webrtc::TimeMillis(webrtc *this)
{
  if (webrtc::g_clock)
  {
    v1 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v1 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  return v1 / 1000000;
}

uint64_t webrtc::TimeMicros(webrtc *this)
{
  if (webrtc::g_clock)
  {
    v1 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v1 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  return v1 / 1000;
}

uint64_t webrtc::TimeUTCMicros(webrtc *this)
{
  if (webrtc::g_clock)
  {
    return (*(*webrtc::g_clock + 16))(webrtc::g_clock) / 1000;
  }

  gettimeofday(&v2, 0);
  return v2.tv_usec + 1000000 * v2.tv_sec;
}

void dcsctp::Timer::~Timer(dcsctp::Timer *this)
{
  if (*(this + 156) == 1)
  {
    (*(**(this + 17) + 24))(*(this + 17));
    *(this + 40) = 0;
    *(this + 156) = 0;
  }

  v2 = *(this + 16);
  if (!v2)
  {
    v6 = std::__throw_bad_function_call[abi:sn200100]();
    dcsctp::Timer::Start(v6);
    return;
  }

  (*(*v2 + 48))(v2);
  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 16);
  if (v4 == (this + 104))
  {
    (*(*v4 + 32))(v4);
    v5 = *(this + 12);
    if (v5 != (this + 72))
    {
      goto LABEL_10;
    }

LABEL_15:
    (*(*v5 + 32))(v5);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(*(this + 1));
    return;
  }

  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 12);
  if (v5 == (this + 72))
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  if (*(this + 31) < 0)
  {
    goto LABEL_16;
  }
}

uint64_t dcsctp::Timer::Start(dcsctp::Timer *this)
{
  *(this + 40) = 0;
  if (*(this + 156))
  {
    v1 = (*(this + 38) + 1);
    *(this + 38) = v1;
    v2 = *(this + 18);
    if ((v2 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
    {
      v7 = v2 / 0x3E8uLL;
      if (v2 % 0x3E8uLL > 0x1F3)
      {
        LODWORD(v7) = v7 + 1;
      }

      if (-v2 % 0x3E8uLL <= 0x1F4)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (v2 < 0)
      {
        v9 = v8 - -v2 / 0x3E8uLL;
      }

      else
      {
        v9 = v7;
      }

      v3 = v9;
    }

    else
    {
      v3 = 0x7FFFFFFFLL;
    }

    return (*(**(this + 17) + 32))(*(this + 17), v3, v1 | (*this << 32));
  }

  else
  {
    *(this + 156) = 1;
    v4 = (*(this + 38) + 1);
    *(this + 38) = v4;
    v5 = *(this + 18);
    if ((v5 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
    {
      v11 = v5 / 0x3E8uLL;
      if (v5 % 0x3E8uLL > 0x1F3)
      {
        LODWORD(v11) = v11 + 1;
      }

      if (-v5 % 0x3E8uLL <= 0x1F4)
      {
        v12 = 0;
      }

      else
      {
        v12 = -1;
      }

      if (v5 < 0)
      {
        v13 = v12 - -v5 / 0x3E8uLL;
      }

      else
      {
        v13 = v11;
      }

      v6 = v13;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    return (*(**(this + 17) + 16))(*(this + 17), v6, v4 | (*this << 32));
  }
}

uint64_t dcsctp::Timer::Trigger(uint64_t result, int a2)
{
  if (*(result + 156) == 1)
  {
    v2 = result;
    if (*(result + 152) == a2)
    {
      v3 = *(result + 160);
      v4 = v3 + 1;
      *(result + 160) = v3 + 1;
      *(result + 156) = 0;
      if (*(result + 48) != 1 || v3 < *(result + 44))
      {
        *(result + 156) = 1;
        v5 = *(result + 144);
        if (*(result + 40) == 1)
        {
          while (1)
          {
            v6 = __OFSUB__(v4, 1);
            if (--v4 < 0 != v6 || v5 >= 86400000000)
            {
              break;
            }

            v5 *= 2;
            if (v5 > *(result + 56))
            {
              v5 = *(result + 56);
              goto LABEL_12;
            }
          }

          if (v5 >= 86400000000)
          {
            v5 = 86400000000;
          }
        }

LABEL_12:
        v7 = (a2 + 1);
        *(result + 152) = v7;
        v8 = *(result + 136);
        if ((v5 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
        {
          v10 = v5 / 0x3E8uLL;
          if (v5 % 0x3E8uLL > 0x1F3)
          {
            LODWORD(v10) = v10 + 1;
          }

          if (-v5 % 0x3E8uLL <= 0x1F4)
          {
            v11 = 0;
          }

          else
          {
            v11 = -1;
          }

          if (v5 < 0)
          {
            v12 = v11 - -v5 / 0x3E8uLL;
          }

          else
          {
            v12 = v10;
          }

          v9 = v12;
        }

        else
        {
          v9 = 0x7FFFFFFFLL;
        }

        (*(*v8 + 16))(v8, v9, v7 | (*v2 << 32));
      }

      v13 = *(v2 + 12);
      if (!v13)
      {
        v17 = std::__throw_bad_function_call[abi:sn200100]();
        dcsctp::TimerManager::CreateTimer(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      result = (*(*v13 + 48))(v13);
      if (result >= 1 && result != *(v2 + 18))
      {
        *(v2 + 18) = result;
        if (*(v2 + 156) == 1)
        {
          (*(**(v2 + 17) + 24))(*(v2 + 17));
          v14 = *(v2 + 18);
          if (v2[10] == 1)
          {
            v15 = v2[40];
            do
            {
              v6 = __OFSUB__(v15--, 1);
              if (v15 < 0 != v6)
              {
                break;
              }

              if (v14 >= 86400000000)
              {
                break;
              }

              v14 *= 2;
            }

            while (v14 <= *(v2 + 7));
          }

          ++v2[38];
          v16 = *(**(v2 + 17) + 16);

          return v16();
        }
      }
    }
  }

  return result;
}

void dcsctp::TimerManager::CreateTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 56);
  *(a1 + 56) = v8 + 1;
  if (v8 == -2)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/net/dcsctp/timer/timer.cc", 148, "*id != std::numeric_limits<uint32_t>::max()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 0xFFFFFFFFLL);
  }

  else
  {
    v16 = *(a5 + 32);
    v9 = *(a1 + 24);
    if (v9)
    {
      (*(*v9 + 48))(&v15);
      if (v15)
      {
        operator new();
      }

LABEL_7:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/net/dcsctp/timer/timer.cc", 150, "timeout != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v10, v11, v12, v13, v14);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  std::__throw_bad_function_call[abi:sn200100]();
  goto LABEL_7;
}

__n128 std::__function::__func<dcsctp::TimerManager::CreateTimer(std::string_view,std::function<webrtc::TimeDelta ()(void)>,dcsctp::TimerOptions const&)::$_0,std::allocator<dcsctp::TimerManager::CreateTimer(std::string_view,std::function<webrtc::TimeDelta ()(void)>,dcsctp::TimerOptions const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882A0F48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<dcsctp::TimerManager::CreateTimer(std::string_view,std::function<webrtc::TimeDelta ()(void)>,dcsctp::TimerOptions const&)::$_0,std::allocator<dcsctp::TimerManager::CreateTimer(std::string_view,std::function<webrtc::TimeDelta ()(void)>,dcsctp::TimerOptions const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v2[5];
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = v2 + 5;
    v6 = v2[5];
    do
    {
      v7 = *(v6 + 32);
      v8 = v7 >= v4;
      v9 = v7 < v4;
      if (v8)
      {
        v5 = v6;
      }

      v6 = *(v6 + 8 * v9);
    }

    while (v6);
    if (v5 != v2 + 5 && *(v5 + 8) <= v4)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (v2[4] == v5)
      {
        v2[4] = v11;
      }

      --v2[6];
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

uint64_t webrtc::TimestampExtrapolator::Update(uint64_t this, Timestamp a2, unsigned int a3)
{
  v3 = *(this + 56);
  v4 = a2.var0 == 0x7FFFFFFFFFFFFFFFLL || v3 == 0x8000000000000000;
  if (!v4 && (a2.var0 == 0x8000000000000000 || (v3 != 0x7FFFFFFFFFFFFFFFLL ? (v5 = a2.var0 - v3 < 10000001) : (v5 = 1), v5)))
  {
    *(this + 56) = a2;
    var0 = *(this + 48);
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(this + 48) = a2;
    *(this + 56) = a2;
    if (*(this + 72) == 1)
    {
      *(this + 72) = 0;
    }

    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    *this = xmmword_273BA54F0;
    *(this + 32) = 0;
    *(this + 40) = 0x4202A05F20000000;
    *(this + 16) = 0x3FF0000000000000;
    *(this + 24) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
    *(this + 112) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
    var0 = a2.var0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }
  }

  v8 = 0x8000000000000000;
  if (var0 != 0x8000000000000000)
  {
    if (a2.var0 == 0x8000000000000000 || var0 == 0x7FFFFFFFFFFFFFFFLL || (v8 = a2.var0 - var0, v7 = a2.var0 - var0, a2.var0 - var0 < 0))
    {
      v15 = -v8;
      v16 = -v8 / 0x3E8uLL;
      if (v15 % 0x3E8 <= 0x1F4)
      {
        v17 = 0;
      }

      else
      {
        v17 = -1;
      }

      v9 = v17 - v16;
      if (*(this + 92))
      {
        goto LABEL_25;
      }

LABEL_37:
      v14 = a3;
      goto LABEL_38;
    }
  }

LABEL_21:
  if (v7 % 0x3E8 <= 0x1F3)
  {
    v9 = v7 / 0x3E8;
  }

  else
  {
    v9 = v7 / 0x3E8 + 1;
  }

  if ((*(this + 92) & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_25:
  v10 = *(this + 88);
  v11 = a3 >= v10;
  v12 = a3 - v10;
  v13 = v12 != 0 && v11;
  if (v12 != 0x80000000)
  {
    v13 = v12 >= 0;
  }

  if (!v13)
  {
    v12 |= 0xFFFFFFFF00000000;
  }

  v14 = v12 + *(this + 80);
LABEL_38:
  v18 = v9;
  *(this + 80) = v14;
  *(this + 88) = a3;
  *(this + 92) = 1;
  if (*(this + 72) == 1)
  {
    v19 = *(this + 64);
    v21 = *this;
    v20 = *(this + 8);
  }

  else
  {
    v21 = *this;
    v20 = -(*this * v18);
    *(this + 8) = v20;
    *(this + 64) = v14;
    *(this + 72) = 1;
    v19 = v14;
  }

  v22 = v14 - v19 - v18 * v21 - v20;
  v38 = v22;
  if (v22 <= 0.0)
  {
    v37 = 0xC0BB580000000000;
    v23 = &v38;
    if (v22 < -7000.0)
    {
      v23 = &v37;
    }
  }

  else
  {
    if (v22 <= 7000.0)
    {
      v23 = &v38;
    }
  }

  v24 = *v23;
  v25 = (this + 120);
  v26 = v24 + *(this + 120) + -6600.0;
  if (v26 < 0.0)
  {
    v26 = 0.0;
  }

  v27 = v24 + *(this + 128) + 6600.0;
  if (v27 > 0.0)
  {
    v27 = 0.0;
  }

  *v25 = v26;
  *(this + 128) = v27;
  if (v26 > 60000.0 || v27 < -60000.0)
  {
    *v25 = 0.0;
    *(this + 128) = 0;
    if (*(this + 112) >= 2)
    {
      *(this + 40) = 0x4202A05F20000000;
    }
  }

  if (*(this + 104) != 1 || v14 >= *(this + 96))
  {
    v29 = *(this + 16);
    v30 = *(this + 32);
    v31 = *(this + 24) + v29.f64[0] * v18;
    v32 = *(this + 40) + v30.f64[0] * v18;
    v33 = v18 * v31 + 1.0 + v32;
    v34 = v31 / v33;
    v35 = v32 / v33;
    *this = v21 + v34 * v22;
    *(this + 8) = v20 + v35 * v22;
    *(this + 16) = vsubq_f64(v29, vmlaq_n_f64(vmulq_n_f64(v30, v34), v29, v34 * v18));
    *(this + 32) = vsubq_f64(v30, vmlaq_n_f64(vmulq_n_f64(v30, v35), v29, v35 * v18));
    *(this + 96) = v14;
    *(this + 104) = 1;
    v36 = *(this + 112);
    if (v36 <= 2999)
    {
      *(this + 112) = v36 + 1;
    }
  }

  return this;
}

unint64_t webrtc::TimestampExtrapolator::ExtrapolateLocalTime(unint64_t this, unsigned int a2)
{
  if (*(this + 92))
  {
    v2 = *(this + 88);
    v3 = a2 >= v2;
    v4 = a2 - v2;
    v5 = v4 != 0 && v3;
    if (v4 != 0x80000000)
    {
      v5 = v4 >= 0;
    }

    if (!v5)
    {
      v4 |= 0xFFFFFFFF00000000;
    }

    v6 = v4 + *(this + 80);
    if (*(this + 72) != 1)
    {
      return 0;
    }
  }

  else
  {
    v6 = a2;
    if (*(this + 72) != 1)
    {
      return 0;
    }
  }

  if (*(this + 112) <= 1)
  {
    if ((*(this + 104) & 1) == 0)
    {
      __break(1u);
      return this;
    }

    v7 = (v6 - *(this + 96)) / 90.0 * 1000.0;
    if (v7 == INFINITY)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = *(this + 56);
      v10 = v9 + 0x7FFFFFFFFFFFFFFFLL;
      if (v9 + 0x7FFFFFFFFFFFFFFFLL < 0)
      {
        return 0;
      }

      goto LABEL_27;
    }

    if (v7 == -INFINITY)
    {
      v8 = 0x8000000000000000;
      v9 = *(this + 56);
      v10 = v9 + 0x8000000000000000;
      if ((v9 + 0x8000000000000000) >= 0)
      {
LABEL_27:
        if (v9 == 0x8000000000000000 || v8 == 0x8000000000000000)
        {
          v10 = 0x8000000000000000;
        }

        if (v9 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          return v10;
        }
      }
    }

    else
    {
      v8 = v7;
      v9 = *(this + 56);
      v10 = v9 + v7;
      if (v10 >= 0)
      {
        goto LABEL_27;
      }
    }

    return 0;
  }

  if (*this < 0.001)
  {
    return *(this + 48) & 0xFFFFFFFFFFFFFF00 | *(this + 48);
  }

  v11 = ((v6 - *(this + 64)) - *(this + 8)) / *this + 0.5;
  v12 = *(this + 48);
  v13 = v12 + 1000 * v11;
  if ((v13 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if (v12 == 0x8000000000000000)
  {
    v13 = 0x8000000000000000;
  }

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v13;
  }

  return v12;
}

uint64_t webrtc::TimestampScaler::ToInternal(uint64_t result, unsigned int *a2)
{
  if (a2)
  {
    result = (*(*result + 40))(result, *a2, *(a2 + 6));
    *a2 = result;
  }

  return result;
}

uint64_t webrtc::TimestampScaler::ToInternal(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = (*(*v4 + 24))(v4, v2 + 16);
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t webrtc::TimestampScaler::ToInternal(webrtc::TimestampScaler *this, uint64_t a2, uint64_t a3)
{
  result = (*(**(this + 4) + 64))(*(this + 4), a3);
  if (!result)
  {
    return a2;
  }

  if (*(result + 144) - 1 <= 1)
  {
    v6 = *(this + 3);
    v7 = *(this + 4);
    if (v6 == v7)
    {
      return a2;
    }

    goto LABEL_9;
  }

  if (*(result + 144))
  {
    goto LABEL_6;
  }

  v11 = *(result + 128);
  v12 = result;
  if (v11)
  {
    goto LABEL_20;
  }

  (*(**(result + 120) + 48))(&v15, *(result + 120), result, result + 40, *(result + 104), *(result + 112));
  v11 = v15;
  v15 = 0;
  v13 = *(v12 + 128);
  *(v12 + 128) = v11;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v14 = v15;
    v15 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v12;
    v11 = *(v12 + 128);
  }

  else
  {
    result = v12;
  }

  if (v11)
  {
LABEL_20:
    v6 = (*(*v11 + 88))(v11);
    *(this + 3) = v6;
    v7 = *(v12 + 64);
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_6:
    if ((*(result + 140) & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v6 = *(result + 136);
    *(this + 3) = v6;
    v7 = *(result + 64);
    if (!v7)
    {
LABEL_21:
      *(this + 4) = v6;
      return a2;
    }
  }

  *(this + 4) = v7;
  if (v6 == v7)
  {
    return a2;
  }

LABEL_9:
  if (*(this + 8) == 1)
  {
    v9 = *(this + 5);
    v8 = *(this + 6);
  }

  else
  {
    *(this + 8) = 1;
    v8 = a2;
    v9 = a2;
  }

  *(this + 5) = a2;
  v10 = ((a2 - v9) * v6) / v7;
  *(this + 6) = v8 + v10;
  return (v8 + v10);
}

uint64_t webrtc::TimestampScaler::ToExternal(webrtc::TimestampScaler *this, uint64_t a2)
{
  if (*(this + 8) == 1)
  {
    v2 = *(this + 3);
    v3 = *(this + 4);
    if (v2 != v3)
    {
      return *(this + 5) + (((a2 - *(this + 6)) * v3) / v2);
    }
  }

  return a2;
}

void webrtc::VCMTiming::VCMTiming(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882A0FD8;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_setpolicy_np(&v4, 3);
  pthread_mutex_init((a1 + 8), &v4);
  pthread_mutexattr_destroy(&v4);
  *(a1 + 72) = a2;
  (*(*a2 + 16))(a2);
  operator new();
}

void webrtc::VCMTiming::Reset(webrtc::VCMTiming *this)
{
  pthread_mutex_lock((this + 8));
  v2 = *(this + 10);
  v3 = (*(**(this + 9) + 16))(*(this + 9));
  *(v2 + 48) = v3;
  *(v2 + 56) = v3;
  if (*(v2 + 72) == 1)
  {
    *(v2 + 72) = 0;
  }

  if (*(v2 + 104) == 1)
  {
    *(v2 + 104) = 0;
  }

  *v2 = xmmword_273BA54F0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0x4202A05F20000000;
  *(v2 + 16) = 0x3FF0000000000000;
  *(v2 + 24) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  operator new();
}

uint64_t webrtc::VCMTiming::set_min_playout_delay(webrtc::VCMTiming *this, TimeDelta a2)
{
  pthread_mutex_lock((this + 8));
  if (*(this + 13) != a2.var0)
  {
    v23 = *(this + 14);
    var0 = a2.var0;
    if (v23 < a2.var0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v16[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/timing/timing.cc";
      v16[1] = 331;
      v16[2] = &v15;
      v17[0] = "Playout delays set incorrectly: min playout delay (";
      v17[1] = v16;
      webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&var0, v4, &v21);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        v19 = v17;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v18 = v21;
        v19 = v17;
      }

      v20[0] = ") > max playout delay (";
      v20[1] = &v18;
      webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&v23, v5, &v25);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
        v13 = v20;
        v22 = v20;
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
          v13 = v22;
        }
      }

      else
      {
        v21 = v25;
        v13 = v20;
        v22 = v20;
      }

      webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t", v6, v7, v8, v9, v10, v11, v12, **(*(v13[1] + 24) + 8));
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    *(this + 13) = a2;
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t webrtc::VCMTiming::UpdateCurrentDelay(webrtc::VCMTiming *this, Timestamp a2, Timestamp a3)
{
  pthread_mutex_lock((this + 8));
  v6 = *(this + 15);
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *(this + 11);
    if (*(v8 + 80))
    {
      v9 = 1000 * *(*(v8 + 88) + 32);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 + v6;
    v11 = 0x8000000000000000;
    if (v6 != 0x8000000000000000)
    {
      v6 = v10;
    }

    v12 = *(this + 12);
    if (v12 != 0x8000000000000000 && v6 != 0x8000000000000000)
    {
      v11 = v6 + v12;
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v11;
    }
  }

  v15 = *(this + 13);
  if (v15 <= v7)
  {
    v15 = v7;
  }

  if (a3.var0 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 == 0x8000000000000000)
  {
    goto LABEL_55;
  }

  v17 = a3.var0 == 0x8000000000000000 || a2.var0 == 0x7FFFFFFFFFFFFFFFLL;
  v18 = *(this + 11);
  if (*(v18 + 80))
  {
    v19 = 1000 * *(*(v18 + 88) + 32);
    if (v17)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v19 = 0;
    if (v17)
    {
LABEL_34:
      v21 = 0x8000000000000000;
      goto LABEL_35;
    }
  }

  v20 = a3.var0 - a2.var0;
  if (a3.var0 - a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_55:
    v25 = (this + 128);
    goto LABEL_56;
  }

  if (v20 == 0x8000000000000000)
  {
    goto LABEL_34;
  }

  v21 = v19 + v20;
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_55;
  }

LABEL_35:
  v22 = *(this + 12);
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_55;
  }

  v23 = 0x8000000000000000;
  if (v21 == 0x8000000000000000 || v22 == 0x8000000000000000 || (v23 = v22 + v21, (v22 + v21) < 0))
  {
    v24 = -v23 % 0x3E8uLL <= 0x1F4 ? 0 : -1;
    if ((-v23 / 0x3E8uLL) > v24)
    {
      goto LABEL_58;
    }
  }

  v25 = (this + 128);
  v26 = *(this + 16);
  if (v23 != 0x7FFFFFFFFFFFFFFFLL && v26 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v23 == 0x8000000000000000 || v26 == 0x8000000000000000 || (v26 + v23) <= v15)
    {
      if (v26 == 0x8000000000000000 || v23 == 0x8000000000000000)
      {
        v28 = 0x8000000000000000;
      }

      else
      {
        v28 = v26 + v23;
      }

      goto LABEL_57;
    }

    goto LABEL_61;
  }

LABEL_56:
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_57:
    *v25 = v28;
LABEL_58:
    v29 = (this + 8);

    return pthread_mutex_unlock(v29);
  }

LABEL_61:
  *v25 = v15;
  v29 = (this + 8);

  return pthread_mutex_unlock(v29);
}

uint64_t webrtc::VCMTiming::IncomingTimestamp(webrtc::VCMTiming *this, unsigned int a2, Timestamp a3)
{
  pthread_mutex_lock((this + 8));
  v6.var0 = a3.var0;
  webrtc::TimestampExtrapolator::Update(*(this + 10), v6, a2);

  return pthread_mutex_unlock((this + 8));
}

uint64_t webrtc::VCMTiming::RenderTime(webrtc::VCMTiming *this, unsigned int a2, Timestamp a3)
{
  pthread_mutex_lock((this + 8));
  v6 = *(this + 13);
  if (v6 || *(this + 14) >= 500001)
  {
    v7 = webrtc::TimestampExtrapolator::ExtrapolateLocalTime(*(this + 10), a2);
    if (v8)
    {
      v9 = *(this + 14);
      if (*(this + 16) < v9)
      {
        v9 = *(this + 16);
      }

      if (v9 <= v6)
      {
        v9 = v6;
      }

      a3.var0 = 0x7FFFFFFFFFFFFFFFLL;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v9 == 0x8000000000000000 || v7 == 0x8000000000000000;
        v12 = v9 + v7;
        if (v11)
        {
          a3.var0 = 0x8000000000000000;
        }

        else
        {
          a3.var0 = v12;
        }
      }
    }
  }

  else
  {
    a3.var0 = 0;
  }

  pthread_mutex_unlock((this + 8));
  return a3.var0;
}

uint64_t webrtc::VCMTiming::MaxWaitingTime(webrtc::VCMTiming *this, Timestamp a2, Timestamp a3, char a4)
{
  pthread_mutex_lock((this + 8));
  if (!a2.var0)
  {
    v13 = *(this + 43);
    if (v13 >= 1 && !*(this + 13) && *(this + 14) >= 1)
    {
      if (a4)
      {
        v8 = 0;
      }

      else
      {
        v21 = *(this + 44);
        v22 = v21 + v13;
        if (v21 == 0x8000000000000000)
        {
          v22 = 0x8000000000000000;
        }

        if (v21 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        v25 = v24 - a3.var0;
        if (a3.var0 == 0x8000000000000000 || v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v24 > a3.var0)
        {
          v8 = v25;
        }

        else
        {
          v8 = 0;
        }
      }

      goto LABEL_33;
    }
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL || a3.var0 == 0x8000000000000000)
  {
    goto LABEL_33;
  }

  v10 = a2.var0 == 0x8000000000000000 || a3.var0 == 0x7FFFFFFFFFFFFFFFLL;
  v11 = *(this + 11);
  if (*(v11 + 80))
  {
    v12 = -1000 * *(*(v11 + 88) + 32);
    if (v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_21;
    }
  }

  v14 = a2.var0 - a3.var0;
  if (a2.var0 - a3.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v14 != 0x8000000000000000)
  {
    v15 = v12 + v14;
    goto LABEL_22;
  }

LABEL_21:
  v15 = 0x8000000000000000;
LABEL_22:
  v16 = *(this + 12);
  v17 = v15 - v16;
  if (v16 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x8000000000000000)
  {
    v17 = 0x8000000000000000;
  }

  if (v16 == 0x8000000000000000)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v19;
  }

LABEL_33:
  pthread_mutex_unlock((this + 8));
  return v8;
}

uint64_t webrtc::VCMTiming::GetTimings@<X0>(webrtc::VCMTiming *this@<X0>, uint64_t a2@<X8>)
{
  pthread_mutex_lock((this + 8));
  v4 = *(this + 15);
  *a2 = *(this + 33);
  *(a2 + 8) = v4;
  v5 = *(this + 11);
  v6 = *(v5 + 80);
  if (v6)
  {
    v7 = 1000 * *(*(v5 + 88) + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 12);
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v9 = *(this + 104);
  *(a2 + 32) = v9;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6)
    {
      v11 = 1000 * *(*(v5 + 88) + 32);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 + v4;
    v13 = 0x8000000000000000;
    if (v4 != 0x8000000000000000)
    {
      v4 = v12;
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x8000000000000000 && v4 != 0x8000000000000000)
    {
      v13 = v4 + v8;
    }

    if (v4 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v13;
    }
  }

  v16 = v9;
  if (v9 <= v10)
  {
    v16 = v10;
  }

  if (v6)
  {
    v17 = 1000 * *(*(v5 + 88) + 32);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 + v8;
  if (v8 == 0x8000000000000000)
  {
    v19 = 0x8000000000000000;
  }

  else
  {
    v19 = v18;
  }

  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v19;
  }

  if (v16 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x8000000000000000)
  {
    v22 = v8 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0x8000000000000000;
    v20 = v22 ? 0x8000000000000000 : v16 - v8;
    if (v20 < 1)
    {
      v20 = 0;
    }
  }

  v23 = *(this + 16);
  *(a2 + 48) = v20;
  *(a2 + 56) = v23;

  return pthread_mutex_unlock((this + 8));
}

void webrtc::VCMTiming::~VCMTiming(webrtc::VCMTiming *this)
{
  *this = &unk_2882A0FD8;
  *(this + 35) = &unk_288293910;
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 64, *(v3 + 72));
    std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100]((v3 + 8));
    MEMORY[0x2743DA540](v3, 0x10A0C4048E4D329);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    if (*(v4 + 112) >= 3000)
    {
      v5 = *v4;
      explicit = atomic_load_explicit(&webrtc::TimestampExtrapolator::~TimestampExtrapolator()::atomic_histogram_pointer, memory_order_acquire);
      if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v7 = 0, atomic_compare_exchange_strong(&webrtc::TimestampExtrapolator::~TimestampExtrapolator()::atomic_histogram_pointer, &v7, explicit), explicit))
      {
        webrtc::metrics::HistogramAdd(explicit, fabs((v5 + -90.0) * 1000000.0 / 90.0));
      }
    }

    MEMORY[0x2743DA540](v4, 0x1000C4036CF81B0);
  }

  pthread_mutex_destroy((this + 8));
}

{
  *this = &unk_2882A0FD8;
  *(this + 35) = &unk_288293910;
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 64, *(v3 + 72));
    std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100]((v3 + 8));
    MEMORY[0x2743DA540](v3, 0x10A0C4048E4D329);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    if (*(v4 + 112) >= 3000)
    {
      v5 = *v4;
      explicit = atomic_load_explicit(&webrtc::TimestampExtrapolator::~TimestampExtrapolator()::atomic_histogram_pointer, memory_order_acquire);
      if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v7 = 0, atomic_compare_exchange_strong(&webrtc::TimestampExtrapolator::~TimestampExtrapolator()::atomic_histogram_pointer, &v7, explicit), explicit))
      {
        webrtc::metrics::HistogramAdd(explicit, fabs((v5 + -90.0) * 1000000.0 / 90.0));
      }
    }

    MEMORY[0x2743DA540](v4, 0x1000C4036CF81B0);
  }

  pthread_mutex_destroy((this + 8));

  JUMPOUT(0x2743DA540);
}

void webrtc::rtcp::Tmmbn::~Tmmbn(webrtc::rtcp::Tmmbn *this)
{
  *this = &unk_2882A1010;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882A1010;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtcp::Tmmbn::Parse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 <= 7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 7) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_6:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/tmmbn.cc");
    }

    return 0;
  }

  v11 = *(a2 + 8);
  v12 = *(a1 + 16);
  *(a1 + 8) = bswap32(*v11);
  *(a1 + 12) = bswap32(v11[1]);
  v13 = (v2 - 8) >> 3;
  v14 = *(a1 + 24);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v12) >> 3);
  if (v13 <= v15)
  {
    if (v13 < v15)
    {
      v14 = v12 + 24 * v13;
      *(a1 + 24) = v14;
    }
  }

  else
  {
    std::vector<webrtc::rtcp::TmmbItem>::__append(a1 + 16, v13 - v15);
    v12 = *(a1 + 16);
    v14 = *(a1 + 24);
  }

  if (v12 != v14)
  {
    v17 = v11 + 15;
    while (1)
    {
      *v12 = bswap32(*(v17 - 7));
      v18 = *(v17 - 3);
      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = (((v18 << 24) | (*(v17 - 2) << 16) | (*(v17 - 1) << 8)) >> 9) & 0x1FFFF;
      *(v12 + 8) = v21 << (v18 >> 2);
      if ((v21 << (v18 >> 2)) >> (v18 >> 2) != v21)
      {
        break;
      }

      v17 += 8;
      *(v12 + 16) = ((v19 << 8) | v20) & 0x1FF;
      v12 += 24;
      if (v12 == v14)
      {
        return 1;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)6,unsigned long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)6,unsigned long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/tmmb_item.cc");
    }

    return 0;
  }

  return 1;
}

void *std::vector<webrtc::rtcp::TmmbItem>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3) + 1;
    if (v5 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5)
    {
      if (v5 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v4;
  result[1] = v2 + 24;
  return result;
}

void webrtc::rtcp::Tmmbn::Create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    v13 = *a3;
    v14 = (*(*a1 + 16))(a1) + v13;
    v15 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = -124;
    *(a2 + *a3 + 1) = -51;
    *(a2 + *a3 + 2) = (v15 - 4) >> 10;
    *(a2 + *a3 + 3) = (v15 - 4) >> 2;
    v20 = *a3 + 4;
    *a3 = v20;
    v21 = (a2 + v20);
    *v21 = bswap32(*(a1 + 8));
    v21[1] = bswap32(*(a1 + 12));
    v22 = *a3 + 8;
    *a3 = v22;
    v23 = *(a1 + 16);
    for (i = *(a1 + 24); v23 != i; v23 += 24)
    {
      v28 = *(v23 + 8);
      if (v28 < 0x20000)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        do
        {
          v29 = v28 >> 18;
          v28 >>= 1;
          v25 += 0x4000000;
        }

        while (v29);
      }

      v26 = a2 + v22;
      *v26 = bswap32(*v23);
      v27 = *(v23 + 16);
      *(v26 + 4) = ((v28 << 9) + v25) >> 24;
      *(v26 + 5) = v28 >> 7;
      *(v26 + 6) = ((v28 << 9) | v27) >> 8;
      *(v26 + 7) = v27;
      v22 = *a3 + 8;
      *a3 = v22;
    }

    if (v14 != v22)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/tmmbn.cc", 109, "index_end == *index", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v14);
      std::vector<webrtc::rtcp::TmmbItem>::__append(v30, v31);
    }
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }
  }
}

void std::vector<webrtc::rtcp::TmmbItem>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) < a2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
      if (2 * v7 > v6)
      {
        v6 = 2 * v7;
      }

      if (v7 >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if (v8 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v10 = 24 * v5;
      v11 = 24 * v5 + 24 * a2;
      v12 = 24 * v5;
      do
      {
        if (!v12)
        {
          goto LABEL_25;
        }

        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
        v12 += 24;
      }

      while (v12 != v11);
      v13 = *a1;
      v14 = *(a1 + 8) - *a1;
      v15 = v10 - v14;
      memcpy((v10 - v14), *a1, v14);
      *a1 = v15;
      *(a1 + 8) = v11;
      *(a1 + 16) = 0;
      if (v13)
      {

        operator delete(v13);
      }

      return;
    }

LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = v3 + 24 * a2;
  do
  {
    if (!v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    v3 += 24;
  }

  while (v3 != v9);
  v3 = v9;
LABEL_16:
  *(a1 + 8) = v3;
}

void webrtc::rtcp::Tmmbr::~Tmmbr(webrtc::rtcp::Tmmbr *this)
{
  *this = &unk_2882A1040;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882A1040;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtcp::Tmmbr::Parse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 <= 0xF)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 7) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_6:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/tmmbr.cc");
    }

    return 0;
  }

  v11 = *(a2 + 8);
  v12 = *(a1 + 16);
  *(a1 + 8) = bswap32(*v11);
  *(a1 + 12) = bswap32(v11[1]);
  v13 = (v2 - 8) >> 3;
  v14 = *(a1 + 24);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v12) >> 3);
  if (v13 <= v15)
  {
    if (v13 < v15)
    {
      v14 = v12 + 24 * v13;
      *(a1 + 24) = v14;
    }
  }

  else
  {
    std::vector<webrtc::rtcp::TmmbItem>::__append(a1 + 16, v13 - v15);
    v12 = *(a1 + 16);
    v14 = *(a1 + 24);
  }

  if (v12 != v14)
  {
    v17 = v11 + 15;
    while (1)
    {
      *v12 = bswap32(*(v17 - 7));
      v18 = *(v17 - 3);
      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = (((v18 << 24) | (*(v17 - 2) << 16) | (*(v17 - 1) << 8)) >> 9) & 0x1FFFF;
      *(v12 + 8) = v21 << (v18 >> 2);
      if ((v21 << (v18 >> 2)) >> (v18 >> 2) != v21)
      {
        break;
      }

      v17 += 8;
      *(v12 + 16) = ((v19 << 8) | v20) & 0x1FF;
      v12 += 24;
      if (v12 == v14)
      {
        return 1;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)6,unsigned long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)6,unsigned long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/tmmb_item.cc");
    }

    return 0;
  }

  return 1;
}

void webrtc::rtcp::Tmmbr::Create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    v13 = *a3;
    v14 = (*(*a1 + 16))(a1) + v13;
    v15 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = -125;
    *(a2 + *a3 + 1) = -51;
    *(a2 + *a3 + 2) = (v15 - 4) >> 10;
    *(a2 + *a3 + 3) = (v15 - 4) >> 2;
    v20 = *a3 + 4;
    *a3 = v20;
    v21 = (a2 + v20);
    *v21 = bswap32(*(a1 + 8));
    v21[1] = bswap32(*(a1 + 12));
    v22 = *a3 + 8;
    *a3 = v22;
    v23 = *(a1 + 16);
    for (i = *(a1 + 24); v23 != i; v23 += 24)
    {
      v28 = *(v23 + 8);
      if (v28 < 0x20000)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        do
        {
          v29 = v28 >> 18;
          v28 >>= 1;
          v25 += 0x4000000;
        }

        while (v29);
      }

      v26 = a2 + v22;
      *v26 = bswap32(*v23);
      v27 = *(v23 + 16);
      *(v26 + 4) = ((v28 << 9) + v25) >> 24;
      *(v26 + 5) = v28 >> 7;
      *(v26 + 6) = ((v28 << 9) | v27) >> 8;
      *(v26 + 7) = v27;
      v22 = *a3 + 8;
      *a3 = v22;
    }

    if (v14 != v22)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/tmmbr.cc", 111, "index_end == *index", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v14);
      webrtc::TMMBRHelp::FindBoundingSet(v30, v31, v32);
    }
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }
  }
}