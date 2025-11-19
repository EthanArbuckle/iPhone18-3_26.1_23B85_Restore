uint64_t dcsctp::AbortChunk::Parse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 4 || *result != 6 || ((v3 = __rev16(*(result + 2)), v3 >= 4) ? (v4 = a2 >= v3) : (v4 = 0), v4 ? (v5 = a2 - v3 >= 4) : (v5 = 1), v5))
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 40) = 0;
    return result;
  }

  v6 = v3 - 4;
  if (v3 >= 5)
  {
    v7 = result + 4;
  }

  else
  {
    v7 = 0;
  }

  if (v3 >= 5 && v3 != 4)
  {
    v9 = v3 - 4;
    v10 = v7;
    while (v9 >= 4)
    {
      v11 = __rev16(*(v10 + 2));
      if (v11 < 4 || v9 < v11)
      {
        break;
      }

      v13 = (v11 + 3) & 0xFFFC;
      v14 = v9 - v13;
      if (v9 >= v13)
      {
        if (v14 >= v9)
        {
          v14 = v9;
        }

        v10 += v13;
        v15 = v9 > v13;
        if (v9 <= v13)
        {
          v10 = 0;
        }

        v9 = v14;
        if (v15)
        {
          continue;
        }
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_11;
  }

  v16 = *(result + 1);
  *a3 = &unk_28828CAC0;
  *(a3 + 8) = (v16 & 1) == 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  return result;
}

void dcsctp::AbortChunk::~AbortChunk(dcsctp::AbortChunk *this)
{
  *this = &unk_28828CAC0;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28828CAC0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::AbortChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = v11 - v10;
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 16);
  }

  v14 = *a2;
  v15 = a2[1] - *a2;
  v16 = v12 + 4;
  v17 = v15 + v12 + 4;
  if (v15 >= v17)
  {
    if (v15 > v17)
    {
      a2[1] = v14 + v17;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v12 + 4);
    v14 = *a2;
  }

  v18 = (v14 + v15);
  *v18 = 6;
  v18[2] = HIBYTE(v16);
  v18[3] = v16;
  if (v12 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v21);
    dcsctp::AbortChunk::ToString(v20);
  }

  else
  {
    v19 = *a2 + v15;
    *(v19 + 1) = *(a1 + 8) ^ 1;
    if (v10 && v11 != v10)
    {

      memcpy((v19 + 4), v13, v11 - v10);
    }
  }
}

void dcsctp::AbortChunk::ToString(char *a1@<X8>)
{
  a1[23] = 5;
  if (a1 <= "ABORT" && a1 + 5 > "ABORT")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "ABORT");
  }
}

void std::vector<unsigned char>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 - v4 < a2)
  {
    v5 = *a1;
    v6 = (v4 - *a1);
    v7 = &v6[a2];
    if (&v6[a2] >= 0)
    {
      v8 = v3 - v5;
      if (2 * v8 > v7)
      {
        v7 = 2 * v8;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v7;
      }

      if (v9)
      {
        operator new();
      }

      v17 = (v4 - *a1);
      v18 = &v6[a2];
      v19 = &v5[-v4];
      if (&v5[-v4] >= a2 - 1)
      {
        v19 = (a2 - 1);
      }

      v20 = (v19 + 1);
      v21 = (v4 - *a1);
      if (v20 >= 0x21)
      {
        v22 = v20 & 0x1F;
        if ((v20 & 0x1F) == 0)
        {
          v22 = 32;
        }

        v23 = v20 - v22;
        v21 = &v6[v23];
        v24 = v6 + 16;
        do
        {
          *(v24 - 1) = 0uLL;
          *v24 = 0uLL;
          v24 += 2;
          v23 -= 32;
        }

        while (v23);
      }

      do
      {
        if (!v21)
        {
          goto LABEL_38;
        }

        *v21++ = 0;
      }

      while (v21 != v18);
      v26 = *a1;
      v25 = *(a1 + 8);
      v27 = &v17[*a1 - v25];
      memcpy(v27, *a1, v25 - *a1);
      *a1 = v27;
      *(a1 + 8) = v18;
      *(a1 + 16) = 0;
      if (v26)
      {

        operator delete(v26);
      }

      return;
    }

LABEL_39:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  v10 = (v4 + a2);
  if (-v4 < a2 - 1)
  {
    v11 = -v4;
  }

  else
  {
    v11 = a2 - 1;
  }

  v12 = v11 + 1;
  if (v12 >= 0x21)
  {
    v13 = v12 & 0x1F;
    if ((v12 & 0x1F) == 0)
    {
      v13 = 32;
    }

    v14 = v12 - v13;
    v15 = (v4 + v14);
    v16 = (v4 + 16);
    do
    {
      *(v16 - 1) = 0uLL;
      *v16 = 0uLL;
      v16 += 2;
      v14 -= 32;
    }

    while (v14);
    v4 = v15;
  }

  do
  {
    if (!v4)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *v4++ = 0;
  }

  while (v4 != v10);
  v4 = v10;
LABEL_23:
  *(a1 + 8) = v4;
}

uint64_t webrtc::AbsoluteCaptureTimeInterpolator::OnReceivePacket@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = (*(**a1 + 16))(*a1);
  v13 = v12;
  if ((a1[16] & 1) == 0)
  {
    *(a1 + 128) = 1;
    a1[15] = v12;
  }

  pthread_mutex_lock((a1 + 1));
  if ((*(a5 + 24) & 1) == 0)
  {
    v23 = a1[9];
    v24 = v13 == 0x7FFFFFFFFFFFFFFFLL || v23 == 0x8000000000000000;
    if (!v24 && (v13 != 0x8000000000000000 ? (v25 = v23 == 0x7FFFFFFFFFFFFFFFLL) : (v25 = 1), !v25 ? (v26 = v13 - v23 <= 5000000) : (v26 = 1), v26 && *(a1 + 20) == a2 && a4 >= 1 && *(a1 + 22) == a4))
    {
      v27 = a1[13];
      v28 = ((a3 - *(a1 + 21)) << 32) / a4 + a1[12];
      *(a6 + 16) = *(a1 + 112);
      *a6 = v28;
      *(a6 + 8) = v27;
      *(a6 + 24) = 1;
    }

    else
    {
      a1[9] = 0x8000000000000000;
      *a6 = 0;
      *(a6 + 24) = 0;
    }

    goto LABEL_122;
  }

  *(a1 + 20) = a2;
  *(a1 + 21) = a3;
  *(a1 + 22) = a4;
  v14 = *a5;
  a1[14] = *(a5 + 2);
  *(a1 + 6) = v14;
  a1[9] = v13;
  if ((a1[20] & 1) == 0)
  {
    result = atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire);
    if (result || (result = webrtc::metrics::HistogramFactoryGetCountsLinear(), v16 = 0, atomic_compare_exchange_strong(&_MergedGlobals_4, &v16, result), result))
    {
      if ((a1[16] & 1) == 0)
      {
        goto LABEL_125;
      }

      v17 = a1[15];
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = 0x8000000000000000;
      v20 = v13 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x8000000000000000;
      if (!v20 && (v13 != 0x8000000000000000 ? (v21 = v17 == 0x7FFFFFFFFFFFFFFFLL) : (v21 = 1), v21 || (v19 = v13 - v17, v18 = v13 - v17, v13 - v17 < 0)))
      {
        if (-v19 % 0x3E8uLL <= 0x1F4)
        {
          v29 = 0;
        }

        else
        {
          v29 = -1;
        }

        v22 = v29 - -v19 / 0x3E8uLL;
      }

      else if (v18 % 0x3E8 <= 0x1F3)
      {
        v22 = v18 / 0x3E8;
      }

      else
      {
        v22 = v18 / 0x3E8 + 1;
      }

      webrtc::metrics::HistogramAdd(result, v22);
    }

    if ((a1[20] & 1) == 0)
    {
      *(a1 + 160) = 1;
    }

    a1[19] = v13;
  }

  result = (*(**a1 + 24))(*a1, v13);
  if ((*(a5 + 24) & 1) == 0)
  {
    goto LABEL_125;
  }

  v30 = llround((result - *a5) * 0.000232830644);
  result = atomic_load_explicit(&qword_28100B830, memory_order_acquire);
  if (result || (result = webrtc::metrics::HistogramFactoryGetCountsLinear(), v31 = 0, atomic_compare_exchange_strong(&qword_28100B830, &v31, result), result))
  {
    if (v30 >= 0)
    {
      LODWORD(v32) = v30;
    }

    else
    {
      v32 = -v30;
    }

    result = webrtc::metrics::HistogramAdd(result, v32);
  }

  if (*(a1 + 176) == 1)
  {
    result = atomic_load_explicit(&qword_28100B838, memory_order_acquire);
    if (result || (result = webrtc::metrics::HistogramFactoryGetCountsLinear(), v33 = 0, atomic_compare_exchange_strong(&qword_28100B838, &v33, result), result))
    {
      if ((a1[22] & 1) == 0)
      {
        goto LABEL_125;
      }

      v34 = a1[21];
      v35 = v30 - v34;
      if (v34 == 0x7FFFFFFFFFFFFFFFLL || v30 == 0x8000000000000000)
      {
        v35 = 0x8000000000000000;
      }

      if (v30 == 0x7FFFFFFFFFFFFFFFLL || v34 == 0x8000000000000000)
      {
        v38 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v35;
      }

      if (v38 >= 0)
      {
        LODWORD(v39) = v38;
      }

      else
      {
        v39 = -v38;
      }

      result = webrtc::metrics::HistogramAdd(result, v39);
    }
  }

  if ((a1[22] & 1) == 0)
  {
    *(a1 + 176) = 1;
  }

  a1[21] = v30;
  if ((*(a5 + 24) & 1) == 0)
  {
    goto LABEL_125;
  }

  if (*(a5 + 16) == 1)
  {
    if ((a1[18] & 1) == 0)
    {
      result = atomic_load_explicit(&qword_28100B840, memory_order_acquire);
      if (result || (result = webrtc::metrics::HistogramFactoryGetCountsLinear(), v40 = 0, atomic_compare_exchange_strong(&qword_28100B840, &v40, result), result))
      {
        if ((a1[16] & 1) == 0)
        {
          goto LABEL_125;
        }

        v41 = 0x7FFFFFFFFFFFFFFFLL;
        if (v13 != 0x7FFFFFFFFFFFFFFFLL && (v42 = a1[15], v43 = 0x8000000000000000, v42 != 0x8000000000000000) && (v13 == 0x8000000000000000 || v42 == 0x7FFFFFFFFFFFFFFFLL || (v43 = v13 - v42, v41 = v13 - v42, v13 - v42 < 0)))
        {
          v45 = -v43;
          v46 = v45 / 0x3E8;
          if (v45 % 0x3E8 <= 0x1F4)
          {
            v47 = 0;
          }

          else
          {
            v47 = -1;
          }

          v44 = v47 - v46;
        }

        else if (v41 % 0x3E8 <= 0x1F3)
        {
          v44 = v41 / 0x3E8;
        }

        else
        {
          v44 = v41 / 0x3E8 + 1;
        }

        result = webrtc::metrics::HistogramAdd(result, v44);
      }

      if ((a1[18] & 1) == 0)
      {
        *(a1 + 144) = 1;
      }

      a1[17] = v13;
      if ((*(a5 + 24) & 1) == 0 || (a5[1] & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    v48 = llround(*(a5 + 1) * 0.000232830644);
    explicit = atomic_load_explicit(&qword_28100B848, memory_order_acquire);
    if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v50 = 0, atomic_compare_exchange_strong(&qword_28100B848, &v50, explicit), explicit))
    {
      if (v48 >= 0)
      {
        LODWORD(v51) = v48;
      }

      else
      {
        v51 = -v48;
      }

      webrtc::metrics::HistogramAdd(explicit, v51);
    }

    if (*(a1 + 192) != 1)
    {
      goto LABEL_118;
    }

    result = atomic_load_explicit(&qword_28100B850, memory_order_acquire);
    if (!result)
    {
      result = webrtc::metrics::HistogramFactoryGetCountsLinear();
      v52 = 0;
      atomic_compare_exchange_strong(&qword_28100B850, &v52, result);
      if (!result)
      {
        goto LABEL_118;
      }
    }

    if (a1[24])
    {
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      if (v48 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = a1[23];
        v55 = v48 - v54;
        if (v54 == 0x7FFFFFFFFFFFFFFFLL || v48 == 0x8000000000000000)
        {
          v55 = 0x8000000000000000;
        }

        if (v54 != 0x8000000000000000)
        {
          v53 = v55;
        }
      }

      if (v53 >= 0)
      {
        LODWORD(v57) = v53;
      }

      else
      {
        v57 = -v53;
      }

      webrtc::metrics::HistogramAdd(result, v57);
LABEL_118:
      if ((a1[24] & 1) == 0)
      {
        *(a1 + 192) = 1;
      }

      a1[23] = v48;
      goto LABEL_121;
    }

LABEL_125:
    __break(1u);
    return result;
  }

LABEL_121:
  v58 = a5[1];
  *a6 = *a5;
  *(a6 + 16) = v58;
LABEL_122:

  return pthread_mutex_unlock((a1 + 1));
}

uint64_t webrtc::Accelerate::CheckCriteriaAndStretch(webrtc::Accelerate *this, __int16 *a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, webrtc::AudioMultiVector *a8)
{
  v10 = a4;
  if (a7)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = 14746;
  }

  if (v11 >= a5 && (a6 & 1) != 0)
  {
    if (!a3)
    {
      a2 = 0;
    }

    webrtc::AudioMultiVector::PushBackInterleaved(a8, a2, a3);
    return 2;
  }

  else
  {
    v13 = 120 * *(this + 3);
    if (a7)
    {
      v10 = v13 / a4 * a4;
    }

    v15 = *(this + 2) * v13;
    if (v15)
    {
      v16 = a2;
    }

    else
    {
      v16 = 0;
    }

    v18 = a2;
    webrtc::AudioMultiVector::PushBackInterleaved(a8, v16, v15);
    webrtc::AudioMultiVector::AudioMultiVector(&v29, *(this + 2));
    v19 = *(this + 2);
    if (v19 * v10)
    {
      v20 = &v18[v19 * v13];
    }

    else
    {
      v20 = 0;
    }

    webrtc::AudioMultiVector::PushBackInterleaved(&v29, v20, v19 * v10);
    webrtc::AudioMultiVector::CrossFade(a8, &v29, v10);
    v21 = *(this + 2) * (v10 + v13);
    if (a3 == v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = &v18[v21];
    }

    webrtc::AudioMultiVector::PushBackInterleaved(a8, v22, a3 - v21);
    result = a6 ^ 1u;
    v29 = &unk_28828E2C0;
    v23 = __p;
    if (__p)
    {
      v24 = v31;
      v25 = __p;
      if (v31 != __p)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            v28 = *v26;
            *v26 = 0;
            if (v28)
            {
              MEMORY[0x2743DA520](v28, 0x1000C80BDFB0063);
            }

            MEMORY[0x2743DA540](v26, 0x1010C40FAA616C6);
          }
        }

        while (v24 != v23);
        v25 = __p;
      }

      v31 = v23;
      operator delete(v25);
      return a6 ^ 1u;
    }
  }

  return result;
}

void webrtc::AcknowledgedBitrateEstimator::~AcknowledgedBitrateEstimator(webrtc::AcknowledgedBitrateEstimator *this)
{
  *this = &unk_28828CB48;
  v1 = *(this + 4);
  *(this + 4) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_28828CB48;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AcknowledgedBitrateEstimator::IncomingPacketFeedbackVector(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      if (*(v4 + 16) == 1 && *v2 > *(v4 + 8))
      {
        (*(**(v4 + 32) + 32))(*(v4 + 32));
        if (*(v4 + 16) == 1)
        {
          *(v4 + 16) = 0;
        }
      }

      v5 = v2[1];
      v6 = v2[2];
      v7 = v6 == 0x8000000000000000 || v5 == 0x8000000000000000;
      v8 = v6 + v5;
      if (v7)
      {
        v8 = 0x8000000000000000;
      }

      if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v8;
      }

      result = (*(**(v4 + 32) + 16))(*(v4 + 32), v2[9], v10, *(v4 + 24));
      v2 += 12;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t webrtc::AcknowledgedBitrateEstimator::PeekRate(webrtc::AcknowledgedBitrateEstimator *this)
{
  v1 = *(this + 4);
  v2 = *(v1 + 608);
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    return 8000000 * *(v1 + 8) / (1000 * v2);
  }
}

uint64_t webrtc::AcknowledgedBitrateEstimator::SetAlrEndedTime(uint64_t this, Timestamp a2)
{
  *(this + 8) = a2;
  *(this + 16) = 1;
  return this;
}

void webrtc::RobustThroughputEstimatorSettings::RobustThroughputEstimatorSettings(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 4) = 0x1F400000014;
  *(a1 + 16) = xmmword_273B8D110;
  *(a1 + 32) = 10;
  *(a1 + 40) = 0x3FF0000000000000;
  operator new();
}

uint64_t webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>()
{
  {
    return 0;
  }

  else
  {
    return webrtc::LogMessage::streams_empty_ & 1;
  }
}

double webrtc::DownMixFrame(uint64_t a1, int16x8_t *a2)
{
  if (*(a1 + 15432) != 1)
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
      return *v3.i64;
    }

    if (v4 < 4 || (a1 + 4 * v4 + 72 > a2 ? (v5 = a1 + 72 >= a2 + 2 * v4) : (v5 = 1), !v5))
    {
      v6 = 0;
      goto LABEL_14;
    }

    if (v4 >= 0x10)
    {
      v6 = v4 & 0xFFFFFFFFFFFFFFF0;
      v10 = (a1 + 104);
      v11 = a2 + 1;
      v12 = v4 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v13 = v10 - 16;
        v20 = vld2q_s16(v13);
        v21 = vld2q_s16(v10);
        v3 = vhaddq_s16(v20.val[1], v20.val[0]);
        v11[-1] = v3;
        *v11 = vhaddq_s16(v21.val[1], v21.val[0]);
        v10 += 32;
        v11 += 2;
        v12 -= 16;
      }

      while (v12);
      if (v4 == v6)
      {
        return *v3.i64;
      }

      if ((v4 & 0xC) == 0)
      {
LABEL_14:
        v7 = v4 - v6;
        v8 = &a2->i8[2 * v6];
        v9 = (a1 + 4 * v6 + 74);
        do
        {
          *v8 = (*v9 + *(v9 - 1)) >> 1;
          v8 += 2;
          v9 += 2;
          --v7;
        }

        while (v7);
        return *v3.i64;
      }
    }

    else
    {
      v6 = 0;
    }

    v14 = v6;
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = (a1 + 4 * v14 + 72);
    v16 = &a2->i8[2 * v14];
    v17 = v14 - (v4 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v19 = vld2_s16(v15);
      v15 += 8;
      *v3.i8 = vhadd_s16(v19.val[1], v19.val[0]);
      *v16 = v3.i64[0];
      v16 += 8;
      v17 += 4;
    }

    while (v17);
    if (v4 == v6)
    {
      return *v3.i64;
    }

    goto LABEL_14;
  }

  v2 = 2 * *(a1 + 24);
  if (v2 >= 1)
  {
    bzero(a2, v2);
  }

  return *v3.i64;
}

void webrtc::ReMixFrame(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 24) * a2;
  v4 = (a3[1] - *a3) >> 1;
  if (v3 != v4)
  {
    if (v3 <= v4)
    {
      if (v3 < v4)
      {
        a3[1] = *a3 + 2 * v3;
      }
    }

    else
    {
      v5 = a1;
      v6 = a2;
      v7 = a3;
      std::vector<short>::__append(a3, v3 - v4);
      a3 = v7;
      a2 = v6;
      a1 = v5;
    }
  }

  if (*(a1 + 15432) != 1)
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      return;
    }

    v11 = a1 + 72;
    if (a2 >= 2 && v10 == 1)
    {
      v12 = *(a1 + 24);
      if (!v12)
      {
        return;
      }

      v13 = *a3;
      v14 = (a3[1] - *a3) >> 1;
      if (a2 <= 2)
      {
        for (i = 0; v14 > i; i += 2)
        {
          v76 = *(v11 + i);
          *(v13 + 2 * i) = v76;
          if (v14 <= i + 1)
          {
            break;
          }

          *(v13 + 2 * i + 2) = v76;
          if (!--v12)
          {
            return;
          }
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = v14 - 2;
LABEL_17:
        if (v14 > v16)
        {
          v18 = *(v11 + 2 * v15);
          *(v13 + 2 * v16) = v18;
          if (v14 > v16 + 1)
          {
            *(v13 + 2 * (v16 + 1)) = v18;
            v19 = v16 + 2;
            v20 = v17 - v16;
            if (v17 - v16 >= a2 - 3)
            {
              v20 = a2 - 3;
            }

            v21 = v20 + 1;
            if (v21 >= 0x11)
            {
              v23 = v21 & 0xF;
              if ((v21 & 0xF) == 0)
              {
                v23 = 16;
              }

              v24 = v21 - v23;
              v22 = v24 + 2;
              v19 += v24;
              v25 = (v13 + 20 + 2 * v16);
              do
              {
                *(v25 - 1) = 0uLL;
                *v25 = 0uLL;
                v25 += 2;
                v24 -= 16;
              }

              while (v24);
            }

            else
            {
              v22 = 2;
            }

            v26 = a2 - v22;
            v27 = v14 - v22 - v16;
            while (v27)
            {
              v16 = v19 + 1;
              *(v13 + 2 * v19) = 0;
              --v27;
              ++v19;
              if (!--v26)
              {
                if (++v15 != v12)
                {
                  goto LABEL_17;
                }

                return;
              }
            }
          }
        }
      }
    }

    else
    {
      v28 = v10 - a2;
      if (v10 >= a2)
      {
        if (v10 == 2)
        {
          v68 = *(a1 + 24);
          if (!v68)
          {
            return;
          }

          v69 = *a3;
          v70 = (a3[1] - *a3) >> 1;
          v71 = v68 - 1;
          if (v70 >= v68 - 1)
          {
            v72 = v68 - 1;
          }

          else
          {
            v72 = (a3[1] - *a3) >> 1;
          }

          v73 = v72 + 1;
          if (v73 < 0x11)
          {
            goto LABEL_80;
          }

          if (v70 < v71)
          {
            v71 = (a3[1] - *a3) >> 1;
          }

          if (v69 >= a1 + 4 * v71 + 76 || v11 >= v69 + 2 * v71 + 2)
          {
            v99 = v73 & 0xF;
            if ((v73 & 0xF) == 0)
            {
              v99 = 16;
            }

            v74 = v73 - v99;
            v100 = (a1 + 104);
            v101 = (v69 + 16);
            v102 = v74;
            do
            {
              v103 = v100 - 16;
              v109 = vld2q_s16(v103);
              v110 = vld2q_s16(v100);
              v101[-1] = vhaddq_s16(v109.val[1], v109.val[0]);
              *v101 = vhaddq_s16(v110.val[1], v110.val[0]);
              v100 += 32;
              v101 += 2;
              v102 -= 16;
            }

            while (v102);
          }

          else
          {
LABEL_80:
            v74 = 0;
          }

          v104 = v70 - v74;
          v105 = (a1 + 4 * v74 + 74);
          v106 = (v69 + 2 * v74);
          v107 = v68 - v74;
          while (v104)
          {
            *v106++ = (*v105 + *(v105 - 1)) >> 1;
            --v104;
            v105 += 2;
            if (!--v107)
            {
              return;
            }
          }
        }

        else
        {
          if (!a2)
          {
            return;
          }

          v77 = *(a1 + 24);
          if (!v77)
          {
            return;
          }

          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = *a3;
          v82 = (a3[1] - *a3) >> 1;
          v83 = *a3 - 72;
          v84 = *a3 + 16;
LABEL_89:
          v85 = v82 - v80;
          if (v82 < v80)
          {
            v85 = 0;
          }

          if (v85 >= a2 - 1)
          {
            v85 = a2 - 1;
          }

          v86 = v85 + 1;
          if (v86 >= 0x11 && (v87 = 2 * v79, v83 + 2 * v80 - (2 * v79 + a1) >= 0x20))
          {
            v90 = v86 & 0xF;
            if ((v86 & 0xF) == 0)
            {
              v90 = 16;
            }

            v88 = v86 - v90;
            v79 += v88;
            v89 = v80 + v88;
            v91 = (v84 + 2 * v80);
            v92 = (a1 + 88 + v87);
            v93 = v88;
            do
            {
              v94 = *v92;
              *(v91 - 1) = *(v92 - 1);
              *v91 = v94;
              v91 += 2;
              v92 += 2;
              v93 -= 16;
            }

            while (v93);
          }

          else
          {
            v88 = 0;
            v89 = v80;
          }

          v95 = 0;
          v96 = a2 - v88;
          v97 = v82 - v88;
          if (v80 >= v82)
          {
            v80 = v82;
          }

          v98 = v97 - v80;
          while (v98 != v95)
          {
            *(v81 + 2 * v89 + 2 * v95) = *(a1 + 72 + 2 * v79 + 2 * v95);
            if (v96 == ++v95)
            {
              v79 += v28 + v95;
              ++v78;
              v80 = v89 + v95;
              if (v78 != v77)
              {
                goto LABEL_89;
              }

              return;
            }
          }
        }
      }

      else
      {
        v29 = *(a1 + 24);
        if (!v29)
        {
          return;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = a2 - v10;
        v34 = *a3;
        v35 = (a3[1] - *a3) >> 1;
        v36 = v10 - 1;
        v37 = ~v10 + a2;
        v38 = *a3 - 72;
        v39 = *a3 + 16;
LABEL_35:
        v40 = v35 - v32;
        if (v35 < v32)
        {
          v40 = 0;
        }

        if (v40 >= v36)
        {
          v41 = v10 - 1;
        }

        else
        {
          v41 = v40;
        }

        v42 = v41 + 1;
        if (v42 > 0x10 && (v43 = 2 * v31, v38 + 2 * v32 - (2 * v31 + a1) >= 0x20))
        {
          v46 = v42 & 0xF;
          if ((v42 & 0xF) == 0)
          {
            v46 = 16;
          }

          v44 = v42 - v46;
          v31 += v44;
          v45 = v32 + v44;
          v47 = (v39 + 2 * v32);
          v48 = (a1 + 88 + v43);
          v49 = v44;
          do
          {
            v50 = *v48;
            *(v47 - 1) = *(v48 - 1);
            *v47 = v50;
            v47 += 2;
            v48 += 2;
            v49 -= 16;
          }

          while (v49);
        }

        else
        {
          v44 = 0;
          v45 = v32;
        }

        v51 = v34 + 18 + 2 * v45;
        v52 = v33 + 1 + v45;
        v53 = v45 + 1;
        while (v44 != v40)
        {
          v54 = v51;
          v55 = v52;
          v56 = v53;
          v57 = v45 + 1;
          v58 = *(v11 + 2 * v31++);
          *(v34 + 2 * v45) = v58;
          ++v44;
          v51 = v54 + 2;
          ++v52;
          ++v53;
          ++v45;
          if (v44 == v10)
          {
            if (v40 >= v36)
            {
              v40 = v10 - 1;
            }

            if (v35 <= v32 + v40 + 1)
            {
              v59 = v32 + v40 + 1;
            }

            else
            {
              v59 = v35;
            }

            v60 = v59 + ~v32 - v40;
            if (v60 >= v37)
            {
              v60 = v37;
            }

            v61 = v60 + 1;
            v62 = v57;
            if (v60 + 1 > 0x10)
            {
              if ((v61 & 0xF) != 0)
              {
                v63 = v61 & 0xF;
              }

              else
              {
                v63 = 16;
              }

              v62 = v57 + v61 - v63;
              v64 = ~v60 + v63;
              do
              {
                *(v54 - 1) = 0uLL;
                *v54 = 0uLL;
                v54 += 2;
                v64 += 16;
              }

              while (v64);
            }

            v32 = v57 + v33;
            v65 = v55 - v62;
            v66 = (v34 + 2 * v62);
            if (v35 > v56)
            {
              v56 = v35;
            }

            v67 = v56 - v62;
            while (v67)
            {
              *v66++ = 0;
              --v67;
              if (!--v65)
              {
                if (++v30 != v29)
                {
                  goto LABEL_35;
                }

                return;
              }
            }

            break;
          }
        }
      }
    }

    __break(1u);
    return;
  }

  v8 = *a3;
  v9 = a3[1] - *a3;
  if (v9 >= 1)
  {

    bzero(v8, v9);
  }
}

void std::vector<short>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 > (v4 - v3) >> 1)
  {
    v5 = (v3 - *a1) >> 1;
    v6 = v5 + a2;
    if ((v5 + a2) >= 0)
    {
      v7 = v4 - *a1;
      if (v7 > v6)
      {
        v6 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = 2 * v5;
      v12 = 2 * a2;
      v13 = 2 * v5 + 2 * a2;
      v14 = (2 * v5);
      do
      {
        if (!v14)
        {
          goto LABEL_25;
        }

        *v14++ = 0;
        v12 -= 2;
      }

      while (v12);
      v15 = *a1;
      v16 = *(a1 + 8) - *a1;
      v17 = v11 - v16;
      memcpy((v11 - v16), *a1, v16);
      *a1 = v17;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v15)
      {

        operator delete(v15);
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

  v9 = 2 * a2;
  v10 = &v3[a2];
  do
  {
    if (!v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v3++ = 0;
    v9 -= 2;
  }

  while (v9);
  v3 = v10;
LABEL_16:
  *(a1 + 8) = v3;
}

uint64_t webrtc::acm2::ResamplerHelper::MaybeResample(webrtc::acm2::ResamplerHelper *this, uint64_t a2, webrtc::AudioFrame *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v11 = v5;
  v12 = v3;
  v13 = 0;
  if (v4 != -1)
  {
    v14 = v4;
    if (*(v5 + 32) != v4)
    {
      v15 = 0x28F5C28F5C28F5C3;
      if ((*(v3 + 104) & 1) == 0)
      {
        v16 = v3 + 106;
        v17 = *(v5 + 24);
        v18 = *(v5 + 40);
        if (!(v18 * v17))
        {
          v16 = 0;
        }

        v19 = v4 / 0x64uLL;
        v36 = *(v5 + 40);
        v37 = v17;
        v38 = v16;
        v39 = v18 * v17;
        v20 = v40;
        if (!(v18 * v19))
        {
          v20 = 0;
        }

        v35[0] = v18;
        v35[1] = v4 / 0x64uLL;
        v35[2] = v20;
        v35[3] = v18 * v19;
        webrtc::PushResampler<short>::Resample(v3, &v36, v35, v6, v7, v8, v9, v10);
      }

      v21 = 15432;
      if (*(v11 + 15432) != 1)
      {
        v22 = v11 + 72;
        goto LABEL_13;
      }

      {
        goto LABEL_39;
      }

      while (1)
      {
        v22 = webrtc::AudioFrame::zeroed_data(void)::null_data;
LABEL_13:
        v23 = *(v11 + 24);
        v24 = *(v11 + 40);
        if (v24 * v23)
        {
          v25 = v22;
        }

        else
        {
          v25 = 0;
        }

        *(v11 + 32) = v14;
        v26 = (((v14 >> 2) * v15) >> 64) >> 2;
        *(v11 + 24) = v26;
        v15 = v24 * v26;
        if (v24 * v26 >= 0x1E01)
        {
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 174, "total_samples <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v7, v8, v9, v10, v24 * v26);
          goto LABEL_36;
        }

        if (v24 < 0x19)
        {
          break;
        }

        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 175, "num_channels <= kMaxNumberOfAudioChannels", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v7, v8, v9, v10, v24);
LABEL_39:
        {
          operator new[]();
        }
      }

      if (*(v11 + 15432) == 1)
      {
        bzero((v11 + 72), 2 * v15);
        *(v11 + 15432) = 0;
      }

      *(v11 + 24) = v26;
      if (v15)
      {
        v27 = v11 + 72;
      }

      else
      {
        v27 = 0;
      }

      v40[0] = v24;
      v40[1] = v23;
      v40[2] = v25;
      v40[3] = v24 * v23;
      v36 = v24;
      v37 = v26;
      v38 = v27;
      v39 = v24 * v26;
      webrtc::PushResampler<short>::Resample(v12, v40, &v36, v6, v7, v8, v9, v10);
      v13 = 1;
    }
  }

  *(v12 + 104) = v13;
  v15 = *(v11 + 24);
  v21 = *(v11 + 40);
  if (*(v11 + 15432) == 1)
  {
    v24 = &unk_280905000;
    {
LABEL_36:
      {
        operator new[]();
      }
    }

    v28 = *(v24 + 2056);
    v29 = *(v11 + 24);
    v30 = *(v11 + 40);
  }

  else
  {
    v28 = (v11 + 72);
    v30 = *(v11 + 40);
    v29 = *(v11 + 24);
  }

  if (v21 * v15)
  {
    v31 = (v12 + 106);
  }

  else
  {
    v31 = 0;
  }

  v32 = v30 * v29;
  if (v32)
  {
    v33 = v28;
  }

  else
  {
    v33 = 0;
  }

  memcpy(v31, v33, 2 * v32);
  return 1;
}

void webrtc::ActiveDecodeTargetsHelper::OnFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    if (*(a1 + 8) != a4 && a4 != 0xFFFFFFFFLL)
    {
      v11 = a1;
      v12 = a4;
      v13 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
      a4 = v12;
      v20 = v13;
      a1 = v11;
      if ((v20 & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/active_decode_targets_helper.cc");
        a4 = v12;
        a1 = v11;
      }
    }

    *(a1 + 8) = a4;
    return;
  }

  v8 = 0xFFFFFFFF >> -a3;
  if (a5)
  {
    *(a1 + 8) = v8;
    *(a1 + 16) = 0xFFFFFFFF >> -a8;
    v9 = v8 & a4;
    *a1 = *(a1 + 4) << 32;
    *(a1 + 24) = a6;
    if (v9 == 0xFFFFFFFF >> -a3)
    {
      return;
    }

    goto LABEL_18;
  }

  v21 = 0;
  v22 = 0;
  do
  {
    if (*(a7 + 4 * v21) == a6 - *(a1 + 24))
    {
      if (v21 >= 0x20)
      {
LABEL_33:
        abort();
      }

      v22 |= 1 << v21;
    }

    ++v21;
  }

  while (a8 != v21);
  v23 = *(a1 + 8);
  v9 = v8 & a4;
  *a1 &= ~v22;
  *(a1 + 24) = a6;
  if (v9 != v23)
  {
LABEL_18:
    *(a1 + 8) = v9;
    if (v9)
    {
      if (a3)
      {
        v24 = a2;
      }

      else
      {
        v24 = 0;
      }

      if (a3)
      {
        v25 = 0;
        v26 = 0;
        while (1)
        {
          if (v25 > 0x1F || ((v9 >> v25) & 1) != 0)
          {
            v27 = *(v24 + 4 * v25);
            if (v27 >= 0x20)
            {
              goto LABEL_33;
            }

            v26 |= 1 << v27;
          }

          if (a3 == ++v25)
          {
            goto LABEL_32;
          }
        }
      }

      v26 = 0;
LABEL_32:
      *(a1 + 16) = v26;
      *a1 = v26;
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/active_decode_targets_helper.cc");
    }
  }
}

uint64_t webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>()
{
  {
    return 0;
  }

  else
  {
    return webrtc::LogMessage::streams_empty_ & 1;
  }
}

void webrtc::Notifier<webrtc::VideoTrackSourceInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 != a1 + 3)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 3)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[5];
    operator delete(v2);
  }
}

void non-virtual thunk towebrtc::Notifier<webrtc::VideoTrackSourceInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2 != a1 + 2)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 2)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[4];
    operator delete(v2);
  }
}

void webrtc::AdaptiveDigitalGainController::Process(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a2 + 4) + *(a2 + 16);
  v7 = *(a1 + 32);
  v8 = -(v7 + *(a1 + 36));
  v9 = -v7;
  v10 = 0.0;
  v11 = v6 < v9;
  v12 = v9 - v6;
  if (!v11)
  {
    v12 = 0.0;
  }

  if (v6 >= v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(a1 + 36);
  }

  v14 = *(a1 + 48) - *(a2 + 12);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v14 >= v13)
  {
    v14 = v13;
  }

  v15 = *(a1 + 68);
  v16 = *(a2 + 20);
  if (v16 > -1.0)
  {
    v17 = (v15 - v16) + -1.0;
    if (v17 >= 0.0)
    {
      v10 = v17;
    }

    if (v10 > v14)
    {
      v10 = v14;
    }

    if ((*(a2 + 8) & 1) == 0)
    {
      v14 = v10;
    }
  }

  if (*a2 < 0.95)
  {
    v18 = *(a1 + 52);
    *(a1 + 64) = v18;
    goto LABEL_25;
  }

  v18 = *(a1 + 64);
  if (v18 < 1)
  {
LABEL_25:
    v22 = *(a1 + 56);
    v23 = v14 - v15;
    if (v23 <= 0.0)
    {
      v21 = v23;
    }

    else
    {
      v21 = 0.0;
    }

    v19 = *(a1 + 56);
    if (!v18)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *(a1 + 64) = v18 - 1;
  v19 = *(a1 + 56);
  if (v18 == 1)
  {
    v22 = v19 * *(a1 + 52);
    v23 = v14 - v15;
LABEL_31:
    v24 = v19;
    v19 = v22;
    v22 = v24;
    v21 = v23;
    goto LABEL_32;
  }

  v20 = v14 - v15;
  if (v20 <= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = *(a1 + 56);
LABEL_32:
  if (v21 < v19)
  {
    v19 = v21;
  }

  if (v21 > -v22)
  {
    v25 = v19;
  }

  else
  {
    v25 = -v22;
  }

  if (v25 != 0.0)
  {
    *(a1 + 16) = __exp10f((v15 + v25) / 20.0);
  }

  v26 = a3[1];
  v46 = *a3;
  v47 = v26;
  webrtc::GainApplier::ApplyGain(a1 + 8, &v46);
  *(a1 + 68) = v25 + *(a1 + 68);
  v27 = *(a1 + 60) + 1;
  *(a1 + 60) = v27;
  if (v27 == 1000)
  {
    *(a1 + 60) = 0;
    explicit = atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire);
    if (explicit)
    {
      webrtc::metrics::HistogramAdd(explicit, -*(a2 + 4));
      v29 = atomic_load_explicit(&qword_28100B860, memory_order_acquire);
      if (v29)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v39 = 0;
      atomic_compare_exchange_strong(&_MergedGlobals_5, &v39, 0);
      v29 = atomic_load_explicit(&qword_28100B860, memory_order_acquire);
      if (v29)
      {
LABEL_42:
        webrtc::metrics::HistogramAdd(v29, -*(a2 + 12));
        v30 = atomic_load_explicit(&qword_28100B868, memory_order_acquire);
        if (v30)
        {
          goto LABEL_43;
        }

        goto LABEL_49;
      }
    }

    v40 = 0;
    atomic_compare_exchange_strong(&qword_28100B860, &v40, 0);
    v30 = atomic_load_explicit(&qword_28100B868, memory_order_acquire);
    if (v30)
    {
LABEL_43:
      webrtc::metrics::HistogramAdd(v30, *(a2 + 16));
      v31 = atomic_load_explicit(&qword_28100B870, memory_order_acquire);
      if (v31)
      {
        goto LABEL_44;
      }

      goto LABEL_50;
    }

LABEL_49:
    v41 = 0;
    atomic_compare_exchange_strong(&qword_28100B868, &v41, 0);
    v31 = atomic_load_explicit(&qword_28100B870, memory_order_acquire);
    if (v31)
    {
LABEL_44:
      webrtc::metrics::HistogramAdd(v31, *(a1 + 68));
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        return;
      }

      goto LABEL_45;
    }

LABEL_50:
    v42 = 0;
    atomic_compare_exchange_strong(&qword_28100B870, &v42, 0);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      return;
    }

LABEL_45:
    *&v46 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/adaptive_digital_gain_controller.cc";
    *(&v46 + 1) = 1665;
    *&v47 = &v43;
    v44 = "AGC2 adaptive digital";
    v45 = &v46;
    webrtc::webrtc_logging_impl::Log("\r\t\t\a\t\a\t\a\t\a", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/adaptive_digital_gain_controller.cc");
  }
}

uint64_t webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>()
{
  {
    return 0;
  }

  else
  {
    return webrtc::LogMessage::streams_empty_ & 1;
  }
}

void webrtc::aec3::ComputeFrequencyResponse(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    bzero(*a3, 260 * ((v6 - v5 - 260) / 0x104uLL) + 260);
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = v8 - *a2;
  if (v8 == *a2)
  {
LABEL_29:
    __break(1u);
    return;
  }

  if (a1)
  {
    v10 = v7[1];
    if (v10 != *v7)
    {
      v11 = 0;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v13 = 0xFC0FC0FC0FC0FC1 * ((v10 - *v7) >> 3);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = v5;
LABEL_9:
      if (v11 != v12)
      {
        v15 = v7[3 * v11];
        if (0xFC0FC0FC0FC0FC1 * ((v6 - v5) >> 2) > v11)
        {
          v16 = 0;
          v17 = &v5[260 * v11];
          v18 = 0xFC0FC0FC0FC0FC1 * ((v7[3 * v11 + 1] - v15) >> 3);
          v20 = v17 < v15 + 520 * v13 && v15 < &v5[260 * v11 + 260];
          v21 = v7[3 * v11];
          while (v16 != v18)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v23 = v15 + 520 * v16;
              v24 = vmlaq_f32(vmulq_f32(*(v23 + 260), *(v23 + 260)), *v23, *v23);
              v25 = vmlaq_f32(vmulq_f32(*(v23 + 276), *(v23 + 276)), *(v23 + 16), *(v23 + 16));
              v26 = vbslq_s8(vcgtq_f32(v25, v17[1]), v25, v17[1]);
              *v17 = vbslq_s8(vcgtq_f32(v24, *v17), v24, *v17);
              v17[1] = v26;
              v27 = vmlaq_f32(vmulq_f32(*(v23 + 292), *(v23 + 292)), *(v23 + 32), *(v23 + 32));
              v28 = vmlaq_f32(vmulq_f32(*(v23 + 308), *(v23 + 308)), *(v23 + 48), *(v23 + 48));
              v29 = vbslq_s8(vcgtq_f32(v28, v17[3]), v28, v17[3]);
              v17[2] = vbslq_s8(vcgtq_f32(v27, v17[2]), v27, v17[2]);
              v17[3] = v29;
              v30 = vmlaq_f32(vmulq_f32(*(v23 + 324), *(v23 + 324)), *(v23 + 64), *(v23 + 64));
              v31 = vmlaq_f32(vmulq_f32(*(v23 + 340), *(v23 + 340)), *(v23 + 80), *(v23 + 80));
              v32 = vbslq_s8(vcgtq_f32(v31, v17[5]), v31, v17[5]);
              v17[4] = vbslq_s8(vcgtq_f32(v30, v17[4]), v30, v17[4]);
              v17[5] = v32;
              v33 = vmlaq_f32(vmulq_f32(*(v23 + 356), *(v23 + 356)), *(v23 + 96), *(v23 + 96));
              v34 = vmlaq_f32(vmulq_f32(*(v23 + 372), *(v23 + 372)), *(v23 + 112), *(v23 + 112));
              v35 = vbslq_s8(vcgtq_f32(v34, v17[7]), v34, v17[7]);
              v17[6] = vbslq_s8(vcgtq_f32(v33, v17[6]), v33, v17[6]);
              v17[7] = v35;
              v36 = vmlaq_f32(vmulq_f32(*(v23 + 388), *(v23 + 388)), *(v23 + 128), *(v23 + 128));
              v37 = vmlaq_f32(vmulq_f32(*(v23 + 404), *(v23 + 404)), *(v23 + 144), *(v23 + 144));
              v38 = vbslq_s8(vcgtq_f32(v37, v17[9]), v37, v17[9]);
              v17[8] = vbslq_s8(vcgtq_f32(v36, v17[8]), v36, v17[8]);
              v17[9] = v38;
              v39 = vmlaq_f32(vmulq_f32(*(v23 + 420), *(v23 + 420)), *(v23 + 160), *(v23 + 160));
              v40 = vmlaq_f32(vmulq_f32(*(v23 + 436), *(v23 + 436)), *(v23 + 176), *(v23 + 176));
              v41 = vbslq_s8(vcgtq_f32(v40, v17[11]), v40, v17[11]);
              v17[10] = vbslq_s8(vcgtq_f32(v39, v17[10]), v39, v17[10]);
              v17[11] = v41;
              v42 = vmlaq_f32(vmulq_f32(*(v23 + 452), *(v23 + 452)), *(v23 + 192), *(v23 + 192));
              v43 = vmlaq_f32(vmulq_f32(*(v23 + 468), *(v23 + 468)), *(v23 + 208), *(v23 + 208));
              v44 = vbslq_s8(vcgtq_f32(v43, v17[13]), v43, v17[13]);
              v17[12] = vbslq_s8(vcgtq_f32(v42, v17[12]), v42, v17[12]);
              v17[13] = v44;
              v45 = vmlaq_f32(vmulq_f32(*(v23 + 484), *(v23 + 484)), *(v23 + 224), *(v23 + 224));
              v46 = vmlaq_f32(vmulq_f32(*(v23 + 500), *(v23 + 500)), *(v23 + 240), *(v23 + 240));
              v47 = vbslq_s8(vcgtq_f32(v46, v17[15]), v46, v17[15]);
              v22 = 64;
              v17[14] = vbslq_s8(vcgtq_f32(v45, v17[14]), v45, v17[14]);
              v17[15] = v47;
            }

            v48 = (v21 + 4 * v22);
            do
            {
              v49 = (v48[65] * v48[65]) + (*v48 * *v48);
              if (*&v14[4 * v22] >= v49)
              {
                v49 = *&v14[4 * v22];
              }

              *&v14[4 * v22++] = v49;
              ++v48;
            }

            while (v22 != 65);
            ++v16;
            v21 += 520;
            if (v16 == v13)
            {
              ++v11;
              v14 += 260;
              if (v11 != a1)
              {
                goto LABEL_9;
              }

              return;
            }
          }
        }
      }

      goto LABEL_29;
    }
  }
}

uint64_t webrtc::aec3::AdaptPartitions(uint64_t result, unint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(result + 16);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = v6 - v5;
  if (v6 == v5)
  {
    v5 = 0;
  }

  if (a3)
  {
    v8 = *(v4 + 36);
    v9 = (v5 + 24 * v8);
    v11 = *v9;
    v10 = v9[1];
    if (v10 != *v9)
    {
      v12 = 0;
      v13 = 0xFC0FC0FC0FC0FC1 * ((v10 - v11) >> 3);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      result = 520;
      do
      {
        v14 = 0;
        v15 = 0;
        v16 = *(v5 + 24 * v8);
        v17 = 0xFC0FC0FC0FC0FC1 * ((*(v5 + 24 * v8 + 8) - v16) >> 3);
        v18 = v16;
        do
        {
          if (v15 == v17 || 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v12 || (v20 = (*a4 + 24 * v12), v19 = *v20, 0xFC0FC0FC0FC0FC1 * ((v20[1] - *v20) >> 3) <= v15))
          {
            __break(1u);
            return result;
          }

          v21 = 0;
          v22 = v19 + 520 * v15;
          v23 = v22 + 520;
          v25 = v22 < a2 + 520 && v23 > a2;
          v26 = v16 >= v23 || v22 >= v16 + 520 * v13;
          if (v26 && !v25)
          {
            v27 = 0;
            v28 = v19 + v14;
            do
            {
              v29 = *(v18 + v27);
              v30 = *(a2 + v27);
              v31 = *(v18 + v27 + 260);
              v32 = *(a2 + v27 + 260);
              *(v28 + v27) = vaddq_f32(*(v28 + v27), vmlaq_f32(vmulq_f32(v31, v32), v30, v29));
              *(v28 + v27 + 260) = vaddq_f32(*(v28 + v27 + 260), vmlaq_f32(vmulq_f32(v30, vnegq_f32(v31)), v32, v29));
              v27 += 16;
            }

            while (v27 != 256);
            v21 = 64;
          }

          v33 = 4 * v21;
          v34 = v19 + v14;
          do
          {
            v35 = (v34 + v33);
            *v35 = *(v34 + v33) + ((*(v18 + v33 + 260) * *(a2 + v33 + 260)) + (*(v18 + v33) * *(a2 + v33)));
            v35[65] = *(v34 + v33 + 260) + ((*(v18 + v33) * *(a2 + v33 + 260)) - (*(v18 + v33 + 260) * *(a2 + v33)));
            v33 += 4;
          }

          while (v33 != 260);
          ++v15;
          v18 += 520;
          v14 += 520;
        }

        while (v15 != v13);
        if (v8 < 0xAAAAAAAAAAAAAAABLL * (v7 >> 3) - 1)
        {
          ++v8;
        }

        else
        {
          v8 = 0;
        }

        ++v12;
      }

      while (v12 != a3);
    }
  }

  return result;
}

void webrtc::aec3::ApplyFilter(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  bzero(a4, 0x208uLL);
  v8 = *(a1 + 16);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v9 = 0;
  }

  if (a2)
  {
    v12 = *(v8 + 36);
    v13 = (v9 + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    if (v14 != *v13)
    {
      v16 = 0;
      v17 = 0xFC0FC0FC0FC0FC1 * ((v14 - v15) >> 3);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v18 = a4 + 520;
LABEL_8:
      v19 = *(v9 + 24 * v12);
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v16)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0xFC0FC0FC0FC0FC1 * ((*(v9 + 24 * v12 + 8) - v19) >> 3);
        v23 = (*a3 + 24 * v16);
        v25 = v19 + 520 * v17 > a4 && v19 < v18;
        while (v21 != v22)
        {
          v26 = *v23;
          if (0xFC0FC0FC0FC0FC1 * ((v23[1] - *v23) >> 3) <= v21)
          {
            break;
          }

          v28 = v26 + 520 * v21 + 520 > a4 && v26 + 520 * v21 < v18 || v25;
          if (v28)
          {
            v29 = 0;
          }

          else
          {
            v30 = 0;
            v31 = v26 + v20;
            do
            {
              v32 = *(v19 + v30);
              v33 = *(v31 + v30);
              v34 = *(v19 + v30 + 260);
              v35 = *(v31 + v30 + 260);
              *&a4[v30] = vaddq_f32(*&a4[v30], vmlaq_f32(vmulq_f32(v35, vnegq_f32(v34)), v33, v32));
              *&a4[v30 + 260] = vaddq_f32(*&a4[v30 + 260], vmlaq_f32(vmulq_f32(v34, v33), v35, v32));
              v30 += 16;
            }

            while (v30 != 256);
            v29 = 64;
          }

          v36 = 4 * v29;
          v37 = v26 + v20;
          do
          {
            v38 = &a4[v36];
            *v38 = *&a4[v36] + ((*(v19 + v36) * *(v37 + v36)) - (*(v19 + v36 + 260) * *(v37 + v36 + 260)));
            v38[65] = *&a4[v36 + 260] + ((*(v19 + v36 + 260) * *(v37 + v36)) + (*(v19 + v36) * *(v37 + v36 + 260)));
            v36 += 4;
          }

          while (v36 != 260);
          ++v21;
          v19 += 520;
          v20 += 520;
          if (v21 == v17)
          {
            if (v12 < 0xAAAAAAAAAAAAAAABLL * (v11 >> 3) - 1)
            {
              ++v12;
            }

            else
            {
              v12 = 0;
            }

            if (++v16 != a2)
            {
              goto LABEL_8;
            }

            return;
          }
        }
      }

      __break(1u);
    }
  }
}

uint64_t webrtc::AdaptiveFirFilter::AdaptiveFirFilter(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, int a6, uint64_t a7)
{
  *a1 = a7;
  *(a1 + 8) = 0;
  *(a1 + 12) = a6;
  *(a1 + 16) = a5;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = a3;
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  if (a5)
  {
    if (a5 < 0x7E07E07E07E07FLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<std::vector<webrtc::FftData>>::vector[abi:sn200100]((a1 + 72), a2);
  *(a1 + 96) = 0;
  *(a1 + 36) = 1.0 / *(a1 + 32);
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    while (1)
    {
      v12 = v11 - v10;
      if (v11 == v10)
      {
        break;
      }

      if (*(v10 + 1) != *v10)
      {
        v13 = 0;
        v14 = 0;
        while (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) > v9)
        {
          v16 = &v10[24 * v9];
          v15 = *v16;
          if (0xFC0FC0FC0FC0FC1 * ((*(v16 + 1) - *v16) >> 3) <= v14)
          {
            break;
          }

          bzero((v15 + v13), 0x208uLL);
          v10 = *(a1 + 72);
          v11 = *(a1 + 80);
          v12 = v11 - v10;
          if (v11 == v10)
          {
            break;
          }

          ++v14;
          v13 += 520;
          if (v14 >= 0xFC0FC0FC0FC0FC1 * ((*(v10 + 1) - *v10) >> 3))
          {
            goto LABEL_6;
          }
        }

        break;
      }

LABEL_6:
      if (++v9 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    v18 = *(a1 + 24);
    v17 = *(a1 + 96);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v18 >= *(a1 + 40))
  {
    v18 = *(a1 + 40);
  }

  *(a1 + 48) = v18;
  *(a1 + 56) = v18;
  *(a1 + 40) = v18;
  v19 = v18 - 1;
  if (v19 < v17)
  {
    v17 = v19;
  }

  *(a1 + 96) = v17;
  *(a1 + 64) = 0;
  return a1;
}

void webrtc::AdaptiveFirFilter::UpdateSize(webrtc::AdaptiveFirFilter *this)
{
  v2 = *(this + 5);
  v3 = *(this + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v5 < 0 != v4)
  {
    v6 = *(this + 6);
    *(this + 7) = v6;
    *(this + 5) = v6;
    if (v2 >= v6)
    {
      return;
    }
  }

  else
  {
    v6 = (((1.0 - (*(this + 9) * v5)) * *(this + 6)) + (*(this + 7) * (*(this + 9) * v5)));
    *(this + 16) = v5;
    v7 = v6 - 1;
    if (v6 - 1 >= *(this + 12))
    {
      v7 = *(this + 12);
    }

    *(this + 12) = v7;
    *(this + 5) = v6;
    if (v2 >= v6)
    {
      return;
    }
  }

  v8 = *(this + 9);
  v9 = *(this + 10);
  while (1)
  {
    v10 = v9 - v8;
    if (v9 == v8)
    {
      break;
    }

    if (*(v8 + 1) != *v8)
    {
      v11 = 0;
      v12 = 0;
      while (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) > v2)
      {
        v14 = &v8[24 * v2];
        v13 = *v14;
        if (0xFC0FC0FC0FC0FC1 * ((*(v14 + 1) - *v14) >> 3) <= v12)
        {
          break;
        }

        bzero((v13 + v11), 0x208uLL);
        v8 = *(this + 9);
        v9 = *(this + 10);
        v10 = v9 - v8;
        if (v9 == v8)
        {
          break;
        }

        ++v12;
        v11 += 520;
        if (v12 >= 0xFC0FC0FC0FC0FC1 * ((*(v8 + 1) - *v8) >> 3))
        {
          goto LABEL_8;
        }
      }

      break;
    }

LABEL_8:
    if (++v2 == v6)
    {
      return;
    }
  }

  __break(1u);
}

void webrtc::AdaptiveFirFilter::Constrain(webrtc::AdaptiveFirFilter *this)
{
  v72 = *(this + 2);
  if (v72)
  {
    v2 = *(this + 12);
    v3 = *(this + 9);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - v3) >> 3) > v2)
    {
      v4 = 0;
      v5 = 0;
      v6 = (v3 + 24 * v2);
      v71 = vdupq_n_s32(0x3C800000u);
      while (1)
      {
        v7 = *v6;
        if (0xFC0FC0FC0FC0FC1 * ((v6[1] - *v6) >> 3) <= v5)
        {
          break;
        }

        v8 = v7 + 520 * v5;
        v73.i32[0] = *v8;
        v73.i32[1] = *(v8 + 256);
        v9 = &v73.u64[1] >= v8 + 516 || v8 + 4 >= v91;
        if (v9)
        {
          v92.val[0] = *(v8 + 4);
          v92.val[1] = *(v8 + 264);
          v100.val[0] = *(v8 + 20);
          v100.val[1] = *(v8 + 280);
          vst2q_f32(&v73.f32[2], v92);
          v10 = &v75.f32[2];
          vst2q_f32(v10, v100);
          v92.val[0] = *(v8 + 36);
          v92.val[1] = *(v8 + 296);
          v100.val[0] = *(v8 + 52);
          v100.val[1] = *(v8 + 312);
          v11 = &v79.f32[2];
          v12 = &v77.f32[2];
          vst2q_f32(v12, v92);
          vst2q_f32(v11, v100);
          v92.val[0] = *(v8 + 68);
          v92.val[1] = *(v8 + 328);
          v100.val[0] = *(v8 + 84);
          v100.val[1] = *(v8 + 344);
          v13 = &v83.f32[2];
          v14 = &v81.f32[2];
          vst2q_f32(v14, v92);
          vst2q_f32(v13, v100);
          v92.val[0] = *(v8 + 100);
          v92.val[1] = *(v8 + 360);
          v100.val[0] = *(v8 + 116);
          v100.val[1] = *(v8 + 376);
          v15 = &v87.f32[2];
          v16 = &v85.f32[2];
          vst2q_f32(v16, v92);
          vst2q_f32(v15, v100);
          v92.val[0] = *(v8 + 132);
          v92.val[1] = *(v8 + 392);
          v100.val[0] = *(v8 + 148);
          v100.val[1] = *(v8 + 408);
          v17 = &v89[40];
          v18 = &v89[8];
          vst2q_f32(v18, v92);
          vst2q_f32(v17, v100);
          v92.val[0] = *(v8 + 164);
          v92.val[1] = *(v8 + 424);
          v100.val[0] = *(v8 + 180);
          v100.val[1] = *(v8 + 440);
          v19 = &v89[104];
          v20 = &v89[72];
          vst2q_f32(v20, v92);
          vst2q_f32(v19, v100);
          v92.val[0] = *(v8 + 196);
          v92.val[1] = *(v8 + 456);
          v100.val[0] = *(v8 + 212);
          v100.val[1] = *(v8 + 472);
          v21 = &v89[168];
          v22 = &v89[136];
          vst2q_f32(v22, v92);
          vst2q_f32(v21, v100);
          v23 = 114;
          v24 = 57;
        }

        else
        {
          v23 = 2;
          v24 = 1;
        }

        v25 = 4 * v23 + 4;
        v26 = v24 | 0xFFFFFFFFFFFFFFC0;
        v27 = (v7 + v4 + 4 * v24);
        do
        {
          v28 = (v73.i32 + v25);
          *(v28 - 1) = *v27;
          *v28 = v27[65];
          v25 += 8;
          ++v27;
          v9 = __CFADD__(v26++, 1);
        }

        while (!v9);
        webrtc::OouraFft::InverseFft((this + 8), &v73);
        v73 = vmulq_f32(v73, v71);
        v74 = vmulq_f32(v74, v71);
        v75 = vmulq_f32(v75, v71);
        v76 = vmulq_f32(v76, v71);
        v77 = vmulq_f32(v77, v71);
        v78 = vmulq_f32(v78, v71);
        v79 = vmulq_f32(v79, v71);
        v80 = vmulq_f32(v80, v71);
        v81 = vmulq_f32(v81, v71);
        v82 = vmulq_f32(v82, v71);
        v83 = vmulq_f32(v83, v71);
        v84 = vmulq_f32(v84, v71);
        v85 = vmulq_f32(v85, v71);
        v86 = vmulq_f32(v86, v71);
        v90 = 0u;
        memset(v89, 0, sizeof(v89));
        v30 = *v6;
        v31 = 0xFC0FC0FC0FC0FC1 * ((v6[1] - *v6) >> 3);
        v87 = vmulq_f32(v87, v71);
        v88 = vmulq_f32(v88, v71);
        if (v31 <= v5)
        {
          break;
        }

        webrtc::OouraFft::bitrv2_128(v29, v73.f32);
        webrtc::OouraFft::cftfsub_128((this + 8), v73.f32);
        v32 = 0;
        v33 = &dword_273B97914;
        v34 = &dword_273B9798C;
        v35 = (&v73 | 0xC);
        do
        {
          v36 = *v34--;
          v37 = 0.5 - v36;
          v38 = *v33++;
          v39 = &v91[v32 - 8];
          v40 = *(v35 - 1);
          v41 = v40 - *&v91[v32 - 8];
          v42 = *v35 + *&v91[v32 - 4];
          v43 = (v37 * v41) - (v38 * v42);
          v44 = (v38 * v41) + (v37 * v42);
          v45 = v40 - v43;
          v46 = *v35 - v44;
          *(v35 - 1) = v45;
          *v35 = v46;
          v47 = *&v91[v32 - 4] - v44;
          *v39 = *&v91[v32 - 8] + v43;
          v39[1] = v47;
          v32 -= 8;
          v35 += 2;
        }

        while (v32 != -248);
        v48 = v30 + 520 * v5;
        v49 = v73.f32[0] - v73.f32[1];
        v73.f32[0] = v73.f32[0] + v73.f32[1];
        v73.f32[1] = v49;
        *v48 = v73.i32[0];
        *(v48 + 256) = v73.i32[1];
        *(v48 + 516) = 0;
        *(v48 + 260) = 0;
        if (v30 + ((520 * v5) | 4) >= v91 || &v73.u64[1] >= v30 + 520 * v5 + 516)
        {
          v93 = vld2q_f32(&v73.f32[2]);
          v52 = &v75.f32[2];
          v101 = vld2q_f32(v52);
          *(v48 + 4) = v93.val[0];
          *(v48 + 20) = v101.val[0];
          *(v48 + 264) = v93.val[1];
          *(v48 + 280) = v101.val[1];
          v53 = &v79.f32[2];
          v54 = &v77.f32[2];
          v94 = vld2q_f32(v54);
          v102 = vld2q_f32(v53);
          *(v48 + 36) = v94.val[0];
          *(v48 + 52) = v102.val[0];
          *(v48 + 296) = v94.val[1];
          *(v48 + 312) = v102.val[1];
          v55 = &v83.f32[2];
          v56 = &v81.f32[2];
          v95 = vld2q_f32(v56);
          v103 = vld2q_f32(v55);
          *(v48 + 68) = v95.val[0];
          *(v48 + 84) = v103.val[0];
          *(v48 + 328) = v95.val[1];
          *(v48 + 344) = v103.val[1];
          v57 = &v87.f32[2];
          v58 = &v85.f32[2];
          v96 = vld2q_f32(v58);
          v104 = vld2q_f32(v57);
          *(v48 + 100) = v96.val[0];
          *(v48 + 116) = v104.val[0];
          *(v48 + 360) = v96.val[1];
          *(v48 + 376) = v104.val[1];
          v59 = &v89[40];
          v60 = &v89[8];
          v97 = vld2q_f32(v60);
          v105 = vld2q_f32(v59);
          *(v48 + 132) = v97.val[0];
          *(v48 + 148) = v105.val[0];
          *(v48 + 392) = v97.val[1];
          *(v48 + 408) = v105.val[1];
          v61 = &v89[104];
          v62 = &v89[72];
          v98 = vld2q_f32(v62);
          v106 = vld2q_f32(v61);
          *(v48 + 164) = v98.val[0];
          *(v48 + 180) = v106.val[0];
          *(v48 + 424) = v98.val[1];
          *(v48 + 440) = v106.val[1];
          v63 = &v89[168];
          v64 = &v89[136];
          v99 = vld2q_f32(v64);
          v107 = vld2q_f32(v63);
          *(v48 + 196) = v99.val[0];
          *(v48 + 212) = v107.val[0];
          *(v48 + 456) = v99.val[1];
          *(v48 + 472) = v107.val[1];
          v50 = 114;
          v51 = 57;
        }

        else
        {
          v50 = 2;
          v51 = 1;
        }

        v65 = (v30 + v4 + 4 * v51);
        v66 = &v73.i32[v50 + 1];
        v67 = v51 | 0xFFFFFFFFFFFFFFC0;
        do
        {
          *v65 = *(v66 - 1);
          v68 = *v66;
          v66 += 2;
          v65[65] = v68;
          ++v65;
          v9 = __CFADD__(v67++, 1);
        }

        while (!v9);
        ++v5;
        v4 += 520;
        if (v5 == v72)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    v69 = *(this + 12);
    if (v69 < *(this + 5) - 1)
    {
      v70 = v69 + 1;
    }

    else
    {
      v70 = 0;
    }

    *(this + 12) = v70;
  }
}

void webrtc::AdaptiveFirFilter::ConstrainAndUpdateImpulseResponse(uint64_t a1, std::vector<int> *this)
{
  v4 = (*(a1 + 40) << 6);
  begin = this->__begin_;
  end = this->__end_;
  v7 = end - this->__begin_;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      end = &begin[v4];
      this->__end_ = end;
    }
  }

  else
  {
    std::vector<float>::__append(this, v4 - v7);
    begin = this->__begin_;
    end = this->__end_;
    v4 = (*(a1 + 40) << 6);
  }

  v8 = end - begin;
  if (v4 <= v8)
  {
    if (v4 < v8)
    {
      this->__end_ = &begin[v4];
    }
  }

  else
  {
    std::vector<float>::__append(this, v4 - v8);
    begin = this->__begin_;
  }

  v9 = *(a1 + 96);
  v10 = &begin[64 * v9];
  *(v10 + 14) = 0u;
  *(v10 + 15) = 0u;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  if (!*(a1 + 16))
  {
LABEL_67:
    if (v9 < *(a1 + 40) - 1)
    {
      v96 = v9 + 1;
    }

    else
    {
      v96 = 0;
    }

    *(a1 + 96) = v96;
    return;
  }

  v11 = 0;
  v12 = 0;
  v97 = vdupq_n_s32(0x3C800000u);
  while (1)
  {
    v13 = *(a1 + 96);
    v14 = *(a1 + 72);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v14) >> 3) <= v13)
    {
      goto LABEL_71;
    }

    v15 = (v14 + 24 * v13);
    v16 = *v15;
    if (0xFC0FC0FC0FC0FC1 * ((v15[1] - *v15) >> 3) <= v12)
    {
      goto LABEL_71;
    }

    v17 = v16 + 520 * v12;
    __src.i32[0] = *v17;
    __src.i32[1] = *(v17 + 256);
    v18 = &__src.u64[1] >= v17 + 516 || v16 + ((520 * v12) | 4) >= v116;
    if (v18)
    {
      v117.val[0] = *(v17 + 4);
      v117.val[1] = *(v17 + 264);
      v125.val[0] = *(v17 + 20);
      v125.val[1] = *(v17 + 280);
      vst2q_f32(&__src.f32[2], v117);
      v19 = &v100.f32[2];
      vst2q_f32(v19, v125);
      v117.val[0] = *(v17 + 36);
      v117.val[1] = *(v17 + 296);
      v125.val[0] = *(v17 + 52);
      v125.val[1] = *(v17 + 312);
      v20 = &v104.f32[2];
      v21 = &v102.f32[2];
      vst2q_f32(v21, v117);
      vst2q_f32(v20, v125);
      v117.val[0] = *(v17 + 68);
      v117.val[1] = *(v17 + 328);
      v125.val[0] = *(v17 + 84);
      v125.val[1] = *(v17 + 344);
      v22 = &v108.f32[2];
      v23 = &v106.f32[2];
      vst2q_f32(v23, v117);
      vst2q_f32(v22, v125);
      v117.val[0] = *(v17 + 100);
      v117.val[1] = *(v17 + 360);
      v125.val[0] = *(v17 + 116);
      v125.val[1] = *(v17 + 376);
      v24 = &v112.f32[2];
      v25 = &v110.f32[2];
      vst2q_f32(v25, v117);
      vst2q_f32(v24, v125);
      v117.val[0] = *(v17 + 132);
      v117.val[1] = *(v17 + 392);
      v125.val[0] = *(v17 + 148);
      v125.val[1] = *(v17 + 408);
      v26 = &v114[40];
      v27 = &v114[8];
      vst2q_f32(v27, v117);
      vst2q_f32(v26, v125);
      v117.val[0] = *(v17 + 164);
      v117.val[1] = *(v17 + 424);
      v125.val[0] = *(v17 + 180);
      v125.val[1] = *(v17 + 440);
      v28 = &v114[104];
      v29 = &v114[72];
      vst2q_f32(v29, v117);
      vst2q_f32(v28, v125);
      v117.val[0] = *(v17 + 196);
      v117.val[1] = *(v17 + 456);
      v125.val[0] = *(v17 + 212);
      v125.val[1] = *(v17 + 472);
      v30 = &v114[168];
      v31 = &v114[136];
      vst2q_f32(v31, v117);
      vst2q_f32(v30, v125);
      v32 = 114;
      v33 = 57;
    }

    else
    {
      v32 = 2;
      v33 = 1;
    }

    v34 = 4 * v32 + 4;
    v35 = v33 | 0xFFFFFFFFFFFFFFC0;
    v36 = (v16 + v11 + 4 * v33);
    do
    {
      v37 = (__src.i32 + v34);
      *(v37 - 1) = *v36;
      *v37 = v36[65];
      v34 += 8;
      ++v36;
      v18 = __CFADD__(v35++, 1);
    }

    while (!v18);
    webrtc::OouraFft::InverseFft((a1 + 8), &__src);
    __src = vmulq_f32(__src, v97);
    v99 = vmulq_f32(v99, v97);
    v100 = vmulq_f32(v100, v97);
    v101 = vmulq_f32(v101, v97);
    v102 = vmulq_f32(v102, v97);
    v103 = vmulq_f32(v103, v97);
    v104 = vmulq_f32(v104, v97);
    v105 = vmulq_f32(v105, v97);
    v106 = vmulq_f32(v106, v97);
    v107 = vmulq_f32(v107, v97);
    v108 = vmulq_f32(v108, v97);
    v109 = vmulq_f32(v109, v97);
    v110 = vmulq_f32(v110, v97);
    v111 = vmulq_f32(v111, v97);
    v112 = vmulq_f32(v112, v97);
    v113 = vmulq_f32(v113, v97);
    v115 = 0u;
    memset(v114, 0, sizeof(v114));
    if (v12)
    {
      break;
    }

    v38 = memmove(&this->__begin_[64 * v13], &__src, 0x100uLL);
    v50 = *(a1 + 96);
    v51 = *(a1 + 72);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v51) >> 3) <= v50)
    {
      goto LABEL_71;
    }

    v52 = (v51 + 24 * v50);
    v49 = *v52;
    if (v52[1] == *v52)
    {
      goto LABEL_71;
    }

LABEL_43:
    webrtc::OouraFft::bitrv2_128(v38, __src.f32);
    webrtc::OouraFft::cftfsub_128((a1 + 8), __src.f32);
    v53 = 0;
    v54 = &dword_273B97914;
    v55 = &dword_273B9798C;
    v56 = (&__src | 0xC);
    do
    {
      v57 = *v55--;
      v58 = 0.5 - v57;
      v59 = *v54++;
      v60 = &v116[v53 - 8];
      v61 = *(v56 - 1);
      v62 = v61 - *&v116[v53 - 8];
      v63 = *v56 + *&v116[v53 - 4];
      v64 = (v58 * v62) - (v59 * v63);
      v65 = (v59 * v62) + (v58 * v63);
      v66 = v61 - v64;
      v67 = *v56 - v65;
      *(v56 - 1) = v66;
      *v56 = v67;
      v68 = *&v116[v53 - 4] - v65;
      *v60 = *&v116[v53 - 8] + v64;
      v60[1] = v68;
      v53 -= 8;
      v56 += 2;
    }

    while (v53 != -248);
    v69 = __src.f32[0] - __src.f32[1];
    __src.f32[0] = __src.f32[0] + __src.f32[1];
    __src.f32[1] = v69;
    *v49 = __src.i32[0];
    *(v49 + 256) = __src.i32[1];
    *(v49 + 516) = 0;
    *(v49 + 260) = 0;
    if (v49 + 4 >= v116 || &__src.u64[1] >= v49 + 516)
    {
      v118 = vld2q_f32(&__src.f32[2]);
      v72 = &v102.f32[2];
      v73 = &v100.f32[2];
      v126 = vld2q_f32(v73);
      *(v49 + 4) = v118.val[0];
      *(v49 + 20) = v126.val[0];
      *(v49 + 264) = v118.val[1];
      *(v49 + 280) = v126.val[1];
      v119 = vld2q_f32(v72);
      v74 = &v106.f32[2];
      v75 = &v104.f32[2];
      v127 = vld2q_f32(v75);
      *(v49 + 36) = v119.val[0];
      *(v49 + 52) = v127.val[0];
      *(v49 + 296) = v119.val[1];
      *(v49 + 312) = v127.val[1];
      v120 = vld2q_f32(v74);
      v76 = &v110.f32[2];
      v77 = &v108.f32[2];
      v128 = vld2q_f32(v77);
      *(v49 + 68) = v120.val[0];
      *(v49 + 84) = v128.val[0];
      *(v49 + 328) = v120.val[1];
      *(v49 + 344) = v128.val[1];
      v121 = vld2q_f32(v76);
      v78 = &v114[8];
      v79 = &v112.f32[2];
      v129 = vld2q_f32(v79);
      *(v49 + 100) = v121.val[0];
      *(v49 + 116) = v129.val[0];
      *(v49 + 360) = v121.val[1];
      *(v49 + 376) = v129.val[1];
      v122 = vld2q_f32(v78);
      v80 = &v114[72];
      v81 = &v114[40];
      v130 = vld2q_f32(v81);
      *(v49 + 132) = v122.val[0];
      *(v49 + 148) = v130.val[0];
      *(v49 + 392) = v122.val[1];
      *(v49 + 408) = v130.val[1];
      v123 = vld2q_f32(v80);
      v82 = &v114[136];
      v83 = &v114[104];
      v131 = vld2q_f32(v83);
      *(v49 + 164) = v123.val[0];
      *(v49 + 180) = v131.val[0];
      *(v49 + 424) = v123.val[1];
      *(v49 + 440) = v131.val[1];
      v124 = vld2q_f32(v82);
      v84 = &v114[168];
      v132 = vld2q_f32(v84);
      *(v49 + 196) = v124.val[0];
      *(v49 + 212) = v132.val[0];
      *(v49 + 456) = v124.val[1];
      *(v49 + 472) = v132.val[1];
      v70 = 114;
      v71 = 57;
    }

    else
    {
      v70 = 2;
      v71 = 1;
    }

    v85 = (v49 + 4 * v71);
    v86 = v71 | 0xFFFFFFFFFFFFFFC0;
    v87 = &__src.i32[v70 + 1];
    do
    {
      *v85 = *(v87 - 1);
      v88 = *v87;
      v87 += 2;
      v85[65] = v88;
      ++v85;
      v18 = __CFADD__(v86++, 1);
    }

    while (!v18);
    ++v12;
    v11 += 520;
    if (v12 >= *(a1 + 16))
    {
      v9 = *(a1 + 96);
      goto LABEL_67;
    }
  }

  v39 = v13 << 6;
  v40 = this->__begin_;
  v41 = this->__end_ - this->__begin_;
  v18 = v41 >= v13 << 6;
  v42 = v41 - (v13 << 6);
  if (!v18)
  {
    v42 = 0;
  }

  v43 = 63;
  if (v42 >= 0x3F)
  {
    v44 = 63;
  }

  else
  {
    v44 = v42;
  }

  if (v42 > 3)
  {
    if (v42 < 0x3F)
    {
      v43 = v42;
    }

    v45 = v43;
    if (&v40[64 * v13] >= &__src.i32[v45 + 1] || &__src >= (v40 + ((v13 << 8) | (v45 * 4)) + 4))
    {
      v89 = (v44 + 1) & 3;
      if (!v89)
      {
        v89 = 4;
      }

      v46 = v44 + 1 - v89;
      v39 += v46;
      v90 = ~v44 + v89;
      v91 = &v40[64 * v13];
      p_src = &__src;
      while (1)
      {
        v93 = *v91;
        v94 = *p_src;
        if (vmovn_s32(vcagtq_f32(*p_src, *v91)).u8[0])
        {
          v91->i32[0] = v94.i32[0];
          v95 = vmovn_s32(vcgtq_f32(vabsq_f32(v94), vabsq_f32(v93)));
          if ((v95.i8[2] & 1) == 0)
          {
LABEL_60:
            if ((v95.i8[4] & 1) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_65;
          }
        }

        else
        {
          v95 = vmovn_s32(vcgtq_f32(vabsq_f32(v94), vabsq_f32(v93)));
          if ((v95.i8[2] & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        v91->i32[1] = v94.i32[1];
        if ((v95.i8[4] & 1) == 0)
        {
LABEL_61:
          if (v95.i8[6])
          {
            goto LABEL_66;
          }

          goto LABEL_57;
        }

LABEL_65:
        v91->i32[2] = v94.i32[2];
        if (v95.i8[6])
        {
LABEL_66:
          v91->i32[3] = v94.i32[3];
        }

LABEL_57:
        ++p_src;
        ++v91;
        v90 += 4;
        if (!v90)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v46 = 0;
LABEL_34:
  v47 = &v40[v39];
  while (v42 != v46)
  {
    v48 = __src.f32[v46];
    if (fabsf(*v47) < fabsf(v48))
    {
      *v47 = v48;
    }

    ++v46;
    ++v47;
    if (v46 == 64)
    {
      if (0xFC0FC0FC0FC0FC1 * ((v15[1] - *v15) >> 3) <= v12)
      {
        break;
      }

      v49 = *v15 + 520 * v12;
      goto LABEL_43;
    }
  }

LABEL_71:
  __break(1u);
}

uint64_t webrtc::AdaptiveFirFilter::ScaleFilter(uint64_t this, double a2)
{
  v2 = *(this + 72);
  v3 = *(this + 80);
  if (v2 != v3)
  {
    v4 = vdupq_lane_s32(*&a2, 0).u64[0];
    v5 = *v2;
    v6 = v2[1];
    if (*v2 != v6)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v2 += 3;
      if (v2 == v3)
      {
        break;
      }

      v5 = *v2;
      v6 = v2[1];
      if (*v2 != v6)
      {
        do
        {
LABEL_5:
          v7 = vmulq_n_f32(*(v5 + 16), *&a2);
          *v5 = vmulq_n_f32(*v5, *&a2);
          *(v5 + 16) = v7;
          v8 = vmulq_n_f32(*(v5 + 48), *&a2);
          *(v5 + 32) = vmulq_n_f32(*(v5 + 32), *&a2);
          *(v5 + 48) = v8;
          v9 = vmulq_n_f32(*(v5 + 80), *&a2);
          *(v5 + 64) = vmulq_n_f32(*(v5 + 64), *&a2);
          *(v5 + 80) = v9;
          v10 = vmulq_n_f32(*(v5 + 112), *&a2);
          *(v5 + 96) = vmulq_n_f32(*(v5 + 96), *&a2);
          *(v5 + 112) = v10;
          v11 = vmulq_n_f32(*(v5 + 144), *&a2);
          *(v5 + 128) = vmulq_n_f32(*(v5 + 128), *&a2);
          *(v5 + 144) = v11;
          v12 = vmulq_n_f32(*(v5 + 176), *&a2);
          *(v5 + 160) = vmulq_n_f32(*(v5 + 160), *&a2);
          *(v5 + 176) = v12;
          v13 = vmulq_n_f32(*(v5 + 208), *&a2);
          *(v5 + 192) = vmulq_n_f32(*(v5 + 192), *&a2);
          *(v5 + 208) = v13;
          v14 = vmulq_n_f32(*(v5 + 240), *&a2);
          *(v5 + 224) = vmulq_n_f32(*(v5 + 224), *&a2);
          *(v5 + 240) = v14;
          v15 = vmulq_n_f32(*(v5 + 272), *&a2);
          *(v5 + 256) = vmulq_n_f32(*(v5 + 256), *&a2);
          *(v5 + 272) = v15;
          v16 = vmulq_n_f32(*(v5 + 304), *&a2);
          *(v5 + 288) = vmulq_n_f32(*(v5 + 288), *&a2);
          *(v5 + 304) = v16;
          v17 = vmulq_n_f32(*(v5 + 336), *&a2);
          *(v5 + 320) = vmulq_n_f32(*(v5 + 320), *&a2);
          *(v5 + 336) = v17;
          v18 = vmulq_n_f32(*(v5 + 368), *&a2);
          *(v5 + 352) = vmulq_n_f32(*(v5 + 352), *&a2);
          *(v5 + 368) = v18;
          v19 = vmulq_n_f32(*(v5 + 400), *&a2);
          *(v5 + 384) = vmulq_n_f32(*(v5 + 384), *&a2);
          *(v5 + 400) = v19;
          v20 = vmulq_n_f32(*(v5 + 432), *&a2);
          *(v5 + 416) = vmulq_n_f32(*(v5 + 416), *&a2);
          *(v5 + 432) = v20;
          v21 = vmulq_n_f32(*(v5 + 464), *&a2);
          *(v5 + 448) = vmulq_n_f32(*(v5 + 448), *&a2);
          *(v5 + 464) = v21;
          v22 = vmulq_n_f32(*(v5 + 496), *&a2);
          *(v5 + 480) = vmulq_n_f32(*(v5 + 480), *&a2);
          *(v5 + 496) = v22;
          *(v5 + 512) = vmul_f32(*(v5 + 512), v4);
          v5 += 520;
        }

        while (v5 != v6);
      }
    }
  }

  return this;
}

void *webrtc::AdaptiveFirFilter::SetFilter(void *result, unint64_t a2, void *a3)
{
  if (result[5] >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = result[5];
  }

  if (v3)
  {
    v4 = result;
    if (result[2])
    {
      v6 = 0;
      v7 = 1;
      while (!v7)
      {
LABEL_7:
        if (++v6 == v3)
        {
          return result;
        }
      }

      v8 = 0;
      v9 = 260;
      while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v6)
      {
        v11 = (*a3 + 24 * v6);
        v10 = *v11;
        if (0xFC0FC0FC0FC0FC1 * ((v11[1] - *v11) >> 3) <= v8)
        {
          break;
        }

        v12 = v4[9];
        if (0xAAAAAAAAAAAAAAABLL * ((v4[10] - v12) >> 3) <= v6)
        {
          break;
        }

        v14 = (v12 + 24 * v6);
        v13 = *v14;
        if (0xFC0FC0FC0FC0FC1 * ((v14[1] - *v14) >> 3) <= v8)
        {
          break;
        }

        result = memmove((v13 + v9 - 260), (v10 + v9 - 260), 0x104uLL);
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v6)
        {
          break;
        }

        v16 = (*a3 + 24 * v6);
        v15 = *v16;
        if (0xFC0FC0FC0FC0FC1 * ((v16[1] - *v16) >> 3) <= v8)
        {
          break;
        }

        v17 = v4[9];
        if (0xAAAAAAAAAAAAAAABLL * ((v4[10] - v17) >> 3) <= v6)
        {
          break;
        }

        v19 = (v17 + 24 * v6);
        v18 = *v19;
        if (0xFC0FC0FC0FC0FC1 * ((v19[1] - *v19) >> 3) <= v8)
        {
          break;
        }

        result = memmove((v18 + v9), (v15 + v9), 0x104uLL);
        ++v8;
        v7 = v4[2];
        v9 += 520;
        if (v8 >= v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void *std::vector<std::vector<webrtc::FftData>>::vector[abi:sn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void std::vector<std::array<float,65ul>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xFC0FC0FC0FC0FC1 * ((v4 - v3) >> 2) < a2)
  {
    v5 = 0xFC0FC0FC0FC0FC1 * ((v3 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 <= 0xFC0FC0FC0FC0FCLL)
    {
      v7 = 0xFC0FC0FC0FC0FC1 * ((v4 - *a1) >> 2);
      if (2 * v7 > v6)
      {
        v6 = 2 * v7;
      }

      if (v7 >= 0x7E07E07E07E07ELL)
      {
        v8 = 0xFC0FC0FC0FC0FCLL;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if (v8 <= 0xFC0FC0FC0FC0FCLL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = 260 * v5;
      v12 = 260 * a2;
      v13 = 260 * v5 + 260 * a2;
      v14 = 260 * v5;
      do
      {
        if (!v14)
        {
          goto LABEL_25;
        }

        *(v14 + 256) = 0;
        *(v14 + 224) = 0uLL;
        *(v14 + 240) = 0uLL;
        *(v14 + 192) = 0uLL;
        *(v14 + 208) = 0uLL;
        *(v14 + 160) = 0uLL;
        *(v14 + 176) = 0uLL;
        *(v14 + 128) = 0uLL;
        *(v14 + 144) = 0uLL;
        *(v14 + 96) = 0uLL;
        *(v14 + 112) = 0uLL;
        *(v14 + 64) = 0uLL;
        *(v14 + 80) = 0uLL;
        *(v14 + 32) = 0uLL;
        *(v14 + 48) = 0uLL;
        *v14 = 0uLL;
        *(v14 + 16) = 0uLL;
        v14 += 260;
        v12 -= 260;
      }

      while (v12);
      v15 = *a1;
      v16 = *(a1 + 8) - *a1;
      v17 = v11 - v16;
      memcpy((v11 - v16), *a1, v16);
      *a1 = v17;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v15)
      {

        operator delete(v15);
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

  v9 = v3 + 260 * a2;
  v10 = 260 * a2;
  do
  {
    if (!v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *(v3 + 256) = 0;
    *(v3 + 224) = 0uLL;
    *(v3 + 240) = 0uLL;
    *(v3 + 192) = 0uLL;
    *(v3 + 208) = 0uLL;
    *(v3 + 160) = 0uLL;
    *(v3 + 176) = 0uLL;
    *(v3 + 128) = 0uLL;
    *(v3 + 144) = 0uLL;
    *(v3 + 96) = 0uLL;
    *(v3 + 112) = 0uLL;
    *(v3 + 64) = 0uLL;
    *(v3 + 80) = 0uLL;
    *(v3 + 32) = 0uLL;
    *(v3 + 48) = 0uLL;
    *v3 = 0uLL;
    *(v3 + 16) = 0uLL;
    v3 += 260;
    v10 -= 260;
  }

  while (v10);
  v3 = v9;
LABEL_16:
  *(a1 + 8) = v3;
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n > value - end)
  {
    v5 = end - this->__begin_;
    v6 = v5 + __n;
    if (!((v5 + __n) >> 62))
    {
      v7 = value - this->__begin_;
      if (v7 >> 1 > v6)
      {
        v6 = v7 >> 1;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if (!(v8 >> 62))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = 4 * v5;
      v12 = 4 * __n;
      v13 = (4 * v5 + 4 * __n);
      v14 = (4 * v5);
      do
      {
        if (!v14)
        {
          goto LABEL_25;
        }

        *v14++ = 0;
        v12 -= 4;
      }

      while (v12);
      begin = this->__begin_;
      v16 = this->__end_ - this->__begin_;
      v17 = (v11 - v16);
      memcpy((v11 - v16), this->__begin_, v16);
      this->__begin_ = v17;
      this->__end_ = v13;
      this->__end_cap_.__value_ = 0;
      if (begin)
      {

        operator delete(begin);
      }

      return;
    }

LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!__n)
  {
    goto LABEL_16;
  }

  v9 = 4 * __n;
  v10 = &end[__n];
  do
  {
    if (!end)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *end++ = 0;
    v9 -= 4;
  }

  while (v9);
  end = v10;
LABEL_16:
  this->__end_ = end;
}

float webrtc::adm_helpers::Init(uint64_t *a1)
{
  v2 = (*(*a1 + 48))(a1);
  v3 = *a1;
  if (v2)
  {
    (*(v3 + 48))(a1);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/adm_helpers.cc", 39, "0 == adm->Init()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, v47, v48, v49, v50, 0);
    return webrtc::Aec3Fft::ZeroPaddedFft(v51, v52, v53, v54, v55);
  }

  if ((*(v3 + 104))(a1, 0))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return result;
    }

    goto LABEL_25;
  }

  if ((*(*a1 + 232))(a1) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/adm_helpers.cc");
  }

  v57 = 0;
  if ((*(*a1 + 392))(a1, &v57) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/adm_helpers.cc");
  }

  if ((*(*a1 + 400))(a1, v57) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/adm_helpers.cc");
  }

  if ((*(*a1 + 120))(a1, 0))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return result;
    }

    goto LABEL_25;
  }

  if ((*(*a1 + 248))(a1) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/adm_helpers.cc");
  }

  v56 = 0;
  if ((*(*a1 + 416))(a1, &v56) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/adm_helpers.cc");
  }

  if ((*(*a1 + 424))(a1, v56) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
LABEL_25:
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/adm_helpers.cc");
  }

  return result;
}

float webrtc::Aec3Fft::ZeroPaddedFft(webrtc::OouraFft *a1, float *a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = v60;
  memset(v59, 0, sizeof(v59));
  if (a4 == 1)
  {
    if (a3)
    {
      v8 = a2;
      v9 = (a3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v9 < 7)
      {
        goto LABEL_7;
      }

      if ((v60 - a2) < 0x20)
      {
        goto LABEL_7;
      }

      {
        goto LABEL_7;
      }

      v51 = v9 + 1;
      v52 = 4 * (v51 & 0x7FFFFFFFFFFFFFF8);
      v7 = &v60[v52];
      a2 = (a2 + v52);
      v54 = v8 + 1;
      v55 = &unk_273B8D180;
      v56 = &v62;
      v57 = v51 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v58 = vmulq_f32(*v54, *v55);
        v56[-1] = vmulq_f32(v54[-1], v55[-1]);
        *v56 = v58;
        v54 += 2;
        v56 += 2;
        v55 += 2;
        v57 -= 8;
      }

      while (v57);
      v10 = v53;
      if (v51 != (v51 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_7:
        v11 = &v8->f32[a3];
        do
        {
          v12 = *a2++;
          v13 = v12;
          v14 = *v10++;
          *v7 = v13 * v14;
          v7 = (v7 + 4);
        }

        while (a2 != v11);
      }
    }
  }

  else if (!a4 && a3)
  {
    v7 = memmove(v60, a2, 4 * a3);
  }

  webrtc::OouraFft::bitrv2_128(v7, v59);
  webrtc::OouraFft::cftfsub_128(a1, v59);
  v15 = 0;
  v16 = &dword_273B97914;
  v17 = &dword_273B9798C;
  v18 = (v59 | 0xC);
  do
  {
    v19 = *v17--;
    v20 = 0.5 - v19;
    v21 = *v16++;
    v22 = (&v68 + v15);
    v23 = *(v18 - 1);
    v24 = v23 - *(&v68 + v15);
    v25 = *v18 + *(&v68 + v15 + 4);
    v26 = (v20 * v24) - (v21 * v25);
    v27 = (v21 * v24) + (v20 * v25);
    v28 = v23 - v26;
    v29 = *v18 - v27;
    *(v18 - 1) = v28;
    *v18 = v29;
    v30 = *(&v68 + v15 + 4) - v27;
    *v22 = *(&v68 + v15) + v26;
    v22[1] = v30;
    v15 -= 8;
    v18 += 2;
  }

  while (v15 != -248);
  v31 = v59 + 2;
  v70 = vld2q_f32(v31);
  v32 = &v59[2] + 2;
  v75 = vld2q_f32(v32);
  v33 = *&v59[0];
  *(a5 + 4) = v70.val[0];
  *(a5 + 20) = v75.val[0];
  *(a5 + 264) = v70.val[1];
  *(a5 + 280) = v75.val[1];
  v34 = &v59[4] + 2;
  v35 = &v59[6] + 2;
  v71 = vld2q_f32(v34);
  v76 = vld2q_f32(v35);
  *(a5 + 36) = v71.val[0];
  *(a5 + 52) = v76.val[0];
  v36 = &v59[8] + 2;
  v79 = vld2q_f32(v36);
  *(a5 + 296) = v71.val[1];
  *(a5 + 312) = v76.val[1];
  v37 = &v59[10] + 2;
  v72 = vld2q_f32(v37);
  *(a5 + 68) = v79.val[0];
  v38 = &v59[12] + 2;
  v77 = vld2q_f32(v38);
  *(a5 + 84) = v72.val[0];
  v39 = &v59[14] + 2;
  v81 = vld2q_f32(v39);
  *(a5 + 328) = v79.val[1];
  *(a5 + 344) = v72.val[1];
  *(a5 + 100) = v77.val[0];
  *(a5 + 116) = v81.val[0];
  *(a5 + 360) = v77.val[1];
  *(a5 + 376) = v81.val[1];
  v40 = &v61;
  v41 = &v63;
  v73 = vld2q_f32(v40);
  v78 = vld2q_f32(v41);
  *(a5 + 132) = v73.val[0];
  *(a5 + 148) = v78.val[0];
  v42 = &v64;
  v80 = vld2q_f32(v42);
  *(a5 + 392) = v73.val[1];
  *(a5 + 408) = v78.val[1];
  v43 = &v65;
  v74 = vld2q_f32(v43);
  *a5 = *&v33 + *(&v33 + 1);
  *(a5 + 164) = v80.val[0];
  *(a5 + 180) = v74.val[0];
  *(a5 + 424) = v80.val[1];
  *(a5 + 440) = v74.val[1];
  v44 = &v66;
  v74 = vld2q_f32(v44);
  v45 = v67;
  *(&v78 + 16) = vld2q_f32(v45);
  *&v59[0] = __PAIR64__(*&v33 - *(&v33 + 1), *&v33 + *(&v33 + 1));
  *(a5 + 516) = 0;
  *(a5 + 260) = 0;
  *(a5 + 196) = v46;
  *(a5 + 212) = v78.val[1];
  *(a5 + 456) = v74.val[0];
  *(a5 + 472) = v80.val[0];
  v47 = v67[8];
  *(a5 + 488) = v67[9];
  LODWORD(v46) = v67[10];
  *(a5 + 228) = v47;
  *(a5 + 232) = v46;
  *(a5 + 492) = v67[11];
  v48 = v67[12];
  *(a5 + 496) = v67[13];
  LODWORD(v46) = v67[14];
  *(a5 + 236) = v48;
  *(a5 + 240) = v46;
  *(a5 + 500) = v67[15];
  v49 = v67[16];
  *(a5 + 504) = v67[17];
  LODWORD(v46) = v67[18];
  *(a5 + 244) = v49;
  *(a5 + 248) = v46;
  *(a5 + 508) = v67[19];
  *(a5 + 252) = v68;
  *(a5 + 256) = *&v33 - *(&v33 + 1);
  result = v69;
  *(a5 + 512) = v69;
  return result;
}

float webrtc::Aec3Fft::PaddedFft(webrtc::OouraFft *a1, float32x4_t *__src, uint64_t a3, float32x4_t *a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = a1;
  v9 = __src;
  v10 = a4;
  if (a6 == 2)
  {
    if (a5)
    {
      v13 = (a5 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = &v81;
      if (v13 < 7)
      {
        goto LABEL_30;
      }

      if ((&v81 - a4) < 0x20)
      {
        goto LABEL_30;
      }

      {
        goto LABEL_30;
      }

      v65 = v13 + 1;
      v66 = 4 * (v65 & 0x7FFFFFFFFFFFFFF8);
      v15 = (&v81 + v66);
      v10 = &a4->f32[v66 / 4];
      v68 = a4 + 1;
      v69 = &unk_273B8D280;
      v70 = &v84;
      v71 = v65 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v72 = vmulq_f32(*v68, *v69);
        v70[-1] = vmulq_f32(v68[-1], v69[-1]);
        *v70 = v72;
        v68 += 2;
        v69 += 2;
        v70 += 2;
        v71 -= 8;
      }

      while (v71);
      v14 = v67;
      if (v65 != (v65 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_30:
        do
        {
          v16 = *v10++;
          v17 = v16;
          v18 = *v14++;
          *v15++ = v17 * v18;
        }

        while (v10 != &a4->f32[a5]);
      }
    }

    if (a3)
    {
      v19 = 4 * a5;
      v20 = &v81 + a5;
      v22 = (a3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v22 < 7)
      {
        goto LABEL_31;
      }

      if ((&v81 + v19 - __src) < 0x20)
      {
        goto LABEL_31;
      }

      {
        goto LABEL_31;
      }

      v73 = v22 + 1;
      v74 = 4 * (v73 & 0x7FFFFFFFFFFFFFF8);
      v20 = (v20 + v74);
      v21 = (v21 + v74);
      v9 = &__src->f32[v74 / 4];
      v75 = __src + 1;
      v76 = v19 + 16;
      v77 = (&v81 + v19 + 16);
      v79 = v73 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v80 = vmulq_f32(*v75, *v78);
        v77[-1] = vmulq_f32(v75[-1], v78[-1]);
        *v77 = v80;
        v75 += 2;
        v77 += 2;
        v78 += 2;
        v79 -= 8;
      }

      while (v79);
      if (v73 != (v73 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_31:
        do
        {
          v23 = *v9++;
          v24 = v23;
          v25 = *v21++;
          *v20++ = v24 * v25;
        }

        while (v9 != &__src->f32[a3]);
      }
    }
  }

  else if (!a6)
  {
    if (a5)
    {
      v11 = a3;
      v12 = a5;
      a1 = memmove(&v81, a4, 4 * a5);
      a5 = v12;
      a3 = v11;
    }

    if (a3)
    {
      a1 = memmove(&v81 + a5, v9, 4 * a3);
    }
  }

  v26 = webrtc::OouraFft::bitrv2_128(a1, &v81);
  (webrtc::OouraFft::cftfsub_128)(v8, &v81, v26);
  v27 = 0;
  v28 = &dword_273B97914;
  v29 = &dword_273B9798C;
  v30 = &v83 + 1;
  do
  {
    v31 = *v29--;
    v32 = 0.5 - v31;
    v33 = *v28++;
    v34 = (&v98 + v27);
    v35 = *(v30 - 1);
    v36 = v35 - *(&v98 + v27);
    v37 = *v30 + *(&v98 + v27 + 4);
    v38 = (v32 * v36) - (v33 * v37);
    v39 = (v33 * v36) + (v32 * v37);
    v40 = v35 - v38;
    v41 = *v30 - v39;
    *(v30 - 1) = v40;
    *v30 = v41;
    v42 = *(&v98 + v27 + 4) - v39;
    *v34 = *(&v98 + v27) + v38;
    v34[1] = v42;
    v27 -= 8;
    v30 += 2;
  }

  while (v27 != -248);
  v43 = &v83;
  v100 = vld2q_f32(v43);
  v44 = &v85;
  v105 = vld2q_f32(v44);
  v45 = v81;
  v46 = *&v82;
  *(a7 + 4) = v100.val[0];
  *(a7 + 20) = v105.val[0];
  *(a7 + 264) = v100.val[1];
  *(a7 + 280) = v105.val[1];
  v47 = &v86;
  v48 = &v87;
  v101 = vld2q_f32(v47);
  v106 = vld2q_f32(v48);
  *(a7 + 36) = v101.val[0];
  *(a7 + 52) = v106.val[0];
  v49 = &v88;
  v109 = vld2q_f32(v49);
  *(a7 + 296) = v101.val[1];
  *(a7 + 312) = v106.val[1];
  v50 = &v89;
  v102 = vld2q_f32(v50);
  *(a7 + 68) = v109.val[0];
  v51 = &v90;
  v107 = vld2q_f32(v51);
  *(a7 + 84) = v102.val[0];
  v52 = &v91;
  v111 = vld2q_f32(v52);
  *(a7 + 328) = v109.val[1];
  *(a7 + 344) = v102.val[1];
  *(a7 + 100) = v107.val[0];
  *(a7 + 116) = v111.val[0];
  *(a7 + 360) = v107.val[1];
  *(a7 + 376) = v111.val[1];
  v53 = &v92;
  v54 = &v93;
  v103 = vld2q_f32(v53);
  v108 = vld2q_f32(v54);
  *(a7 + 132) = v103.val[0];
  *(a7 + 148) = v108.val[0];
  v55 = &v94;
  v110 = vld2q_f32(v55);
  *(a7 + 392) = v103.val[1];
  *(a7 + 408) = v108.val[1];
  v56 = &v95;
  v104 = vld2q_f32(v56);
  v108.val[0].f32[0] = v45 - v46;
  v57 = v45 + v46;
  *a7 = v57;
  *(a7 + 164) = v110.val[0];
  *(a7 + 180) = v104.val[0];
  *(a7 + 424) = v110.val[1];
  *(a7 + 440) = v104.val[1];
  v58 = &v96;
  v104 = vld2q_f32(v58);
  v59 = v97;
  *(&v108 + 16) = vld2q_f32(v59);
  v81 = v57;
  v82 = v108.val[0].i32[0];
  *(a7 + 516) = 0;
  *(a7 + 260) = 0;
  *(a7 + 196) = v60;
  *(a7 + 212) = v108.val[1];
  *(a7 + 456) = v104.val[0];
  *(a7 + 472) = v110.val[0];
  v61 = v97[8];
  *(a7 + 488) = v97[9];
  LODWORD(v60) = v97[10];
  *(a7 + 228) = v61;
  *(a7 + 232) = v60;
  *(a7 + 492) = v97[11];
  v62 = v97[12];
  *(a7 + 496) = v97[13];
  LODWORD(v60) = v97[14];
  *(a7 + 236) = v62;
  *(a7 + 240) = v60;
  *(a7 + 500) = v97[15];
  v63 = v97[16];
  *(a7 + 504) = v97[17];
  LODWORD(v60) = v97[18];
  *(a7 + 244) = v63;
  *(a7 + 248) = v60;
  *(a7 + 508) = v97[19];
  *(a7 + 252) = v98;
  *(a7 + 256) = v108.val[0].i32[0];
  result = v99;
  *(a7 + 512) = v99;
  return result;
}

BOOL std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;
  if (this <= __s && this + v3 > __s)
  {
    __break(1u);
    goto LABEL_11;
  }

  memmove(this, __s, v3);
}

_BYTE *std::string::__assign_no_alias<true>(_BYTE *__dst, _BYTE *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

LABEL_10:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  __dst[23] = __len;
  v4 = &__dst[__len];
  if (a2 >= __dst && v4 > a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__len)
  {
    memmove(__dst, a2, __len);
  }

  *v4 = 0;
  return __dst;
}

std::string *std::string::__assign_no_alias<false>(std::string *this, const std::string::value_type *__src, size_t __len)
{
  v4 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v4 <= __len)
  {
    std::string::__grow_by_and_replace(this, v4 - 1, __len - v4 + 1, this->__r_.__value_.__l.__size_, 0, this->__r_.__value_.__l.__size_, __len, __src);
    return this;
  }

  else
  {
    result = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = __len;
    v6 = result + __len;
    if (result <= __src && v6 > __src)
    {
      __break(1u);
    }

    else
    {
      if (__len)
      {
        memmove(result, __src, __len);
      }

      *v6 = 0;
      return this;
    }
  }

  return result;
}

void webrtc::AecState::~AecState(webrtc::AecState *this)
{
  v2 = *(this + 383);
  if (v2)
  {
    operator delete(v2);
  }

  webrtc::ReverbModelEstimator::~ReverbModelEstimator((this + 2752));
  v3 = *(this + 268);
  *(this + 268) = 0;
  if (v3)
  {
    MEMORY[0x2743DA540](v3, 0xC400A2AC0F1);
  }

  webrtc::FilterAnalyzer::~FilterAnalyzer((this + 2008));
  webrtc::ErleEstimator::~ErleEstimator((this + 1344));
  v4 = *(this + 97);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 92);
  *(this + 92) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 83);
  if (v6)
  {
    *(this + 84) = v6;
    operator delete(v6);
  }

  v7 = *this;
  *this = 0;
  if (v7)
  {
    MEMORY[0x2743DA540](v7, 0xC400A2AC0F1);
  }
}

void webrtc::AecState::HandleEchoPathChange(uint64_t a1, uint64_t a2, int32x2_t a3)
{
  if (*(a1 + 625) != 1 || *(a2 + 4) == 0)
  {
    if (*a2 == 1)
    {
      webrtc::FullBandErleEstimator::Reset((a1 + 1352), a3);
      webrtc::SubbandErleEstimator::Reset(a1 + 1456, v5, v6, v7);
      v9 = *(a1 + 1968);
      if (v9)
      {
        webrtc::SignalDependentErleEstimator::Reset(v9, v8);
      }
    }
  }

  else
  {
    *(a1 + 2064) = 0;
    *(a1 + 2048) = 0u;
    v10 = *(a1 + 2072);
    for (i = *(a1 + 2080); v10 != i; v10 += 80)
    {
      v12 = *(a1 + 2020);
      *(v10 + 8) = 0;
      *v10 = v12;
      *(v10 + 24) = 0;
      *(v10 + 28) = 0;
      *(v10 + 32) = 0;
      *(v10 + 64) = 0;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 72) = -10;
    }

    v13 = *(a1 + 2096);
    v14 = *(a1 + 2104) - v13;
    if (v14 >= 1)
    {
      bzero(v13, v14);
    }

    *(a1 + 2000) = 0;
    v15 = 0.0;
    *(a1 + 1984) = 0u;
    if ((*(a1 + 624) & 1) == 0)
    {
      *(a1 + 641) = 1;
      *(a1 + 648) = 0;
    }

    v16 = *(a1 + 736);
    if (v16)
    {
      v15 = (*(*v16 + 24))(v16);
    }

    webrtc::FullBandErleEstimator::Reset((a1 + 1352), *&v15);
    webrtc::SubbandErleEstimator::Reset(a1 + 1456, v17, v18, v19);
    v21 = *(a1 + 1968);
    if (v21)
    {
      webrtc::SignalDependentErleEstimator::Reset(v21, v20);
    }

    *(a1 + 1976) = 0;
    *(a1 + 1336) = 0;
    v22 = *(a1 + 784);
    if (v22 >= 1)
    {
      v23 = *(a1 + 776);
      v24 = v22 >> 6;
      if (v22 >= 0x40)
      {
        bzero(*(a1 + 776), 8 * v24);
      }

      if ((v22 & 0x3F) != 0)
      {
        *(v23 + 8 * v24) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v22 & 0x3F));
      }
    }

    *(a1 + 745) = 0;
    *(a1 + 752) = 0;
  }

  if (*(a1 + 626) == 1)
  {
    v25 = *(a1 + 3072);
    if (v25 >= 1)
    {
      v26 = *(a1 + 3064);
      v27 = v25 >> 6;
      if (v25 >= 0x40)
      {
        bzero(v26, 8 * v27);
      }

      if ((v25 & 0x3F) != 0)
      {
        *(v26 + v27) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v25 & 0x3F));
      }
    }
  }
}

void webrtc::AecState::Update(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v204 = a3;
  v18 = a14;
  v19 = (a1 + 3064);
  if (a14)
  {
    v20 = a13;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v22 = 0;
  if (a14)
  {
    v23 = 0;
    v24 = (v20 + 2080);
    v25 = 1;
    while (1)
    {
      while (1)
      {
        v27 = *(v24 - 1);
        v26 = *v24;
        v28 = *(v24 - 2);
        v30 = v27 < (*v24 * 0.3) && v26 > 25600.0;
        if (v27 >= v28)
        {
          v31 = *(v24 - 2);
        }

        else
        {
          v31 = *(v24 - 1);
        }

        v33 = v31 > (v26 * 1.5) && v26 > 57600.0;
        if (*(a1 + 3072) <= v23)
        {
          goto LABEL_217;
        }

        v34 = v27 < (v26 * 0.05) || v28 < (v26 * 0.5);
        v35 = *v19;
        v36 = v23 >> 6;
        v37 = 1 << v23;
        if (v26 > 160000.0 && v34)
        {
          break;
        }

        v39 = *(v35 + 8 * v36) & ~v37;
        *(v35 + 8 * v36) = v39;
        if (!v21)
        {
          goto LABEL_34;
        }

LABEL_6:
        v21 = 1;
        v22 |= v30;
        v25 &= v33;
        ++v23;
        v24 += 523;
        if (a14 == v23)
        {
          goto LABEL_38;
        }
      }

      v39 = *(v35 + 8 * v36) | v37;
      *(v35 + 8 * v36) = v39;
      if (v21)
      {
        goto LABEL_6;
      }

LABEL_34:
      if (*(a1 + 3072) <= v23)
      {
        goto LABEL_217;
      }

      v21 = (v39 & v37) != 0;
      v22 |= v30;
      v25 &= v33;
      ++v23;
      v24 += 523;
      if (a14 == v23)
      {
        goto LABEL_38;
      }
    }
  }

  LOBYTE(v25) = 1;
LABEL_38:
  v209 = 0;
  v208 = 0;
  if (a6)
  {
    v40 = a5;
  }

  else
  {
    v40 = 0;
  }

  webrtc::FilterAnalyzer::Update(a1 + 2008, v40, a6, a7, &v209, &v208);
  if (*(a1 + 242))
  {
    v43 = *(a1 + 1984);
    if (*(a2 + 32) == 1 && (*(a1 + 728) != 1 || *(a1 + 704) != *(a2 + 8)))
    {
      v42 = *a2;
      v44 = *(a2 + 16);
      *(a1 + 728) = *(a2 + 32);
      *(a1 + 696) = v42;
      *(a1 + 712) = v44;
      *(a1 + 660) = 1;
    }

    v45 = *(a1 + 2096);
    v46 = *(a1 + 2104);
    if (v43 <= 0x1F3 && *(a1 + 728) == 1)
    {
      v47 = *(a1 + 664);
      v48 = *(a1 + 672) - v47;
      v49 = v48 >> 2;
      if (v48 >> 2 >= 1)
      {
        v50 = *(a1 + 656);
        v51 = v48 >> 2;
        v52 = *(a1 + 664);
        if (v49 < 8)
        {
          goto LABEL_220;
        }

        v51 = (v48 >> 2) & 7;
        v52 = &v47->u32[v49 & 0x7FFFFFFFFFFFFFF8];
        v42 = vdupq_n_s32(v50);
        v53 = v47 + 1;
        v54 = v49 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v53[-1] = v42;
          *v53 = v42;
          v53 += 2;
          v54 -= 8;
        }

        while (v54);
        if (v49 != (v49 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_220:
          *v52 = v50;
          if (v51 >= 2)
          {
            v52[1] = v50;
            if (v51 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v52[2] = v50;
              if ((v51 & 6) != 2)
              {
                v52[3] = v50;
                if (v51 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v52[4] = v50;
                  if ((v51 & 6) != 4)
                  {
                    v52[5] = v50;
                    if (v51 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v52[6] = v50;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v47 = *(a1 + 664);
      if (v46 != v45)
      {
        memmove(v47, v45, v46 - v45);
        v47 = *(a1 + 664);
      }
    }

    v56 = *(a1 + 672);
    v57 = &v47->i32[1];
    if (v47 != v56 && v57 != v56)
    {
      v59 = v47->i32[0];
      v60 = &v47->i32[1];
      do
      {
        v62 = v60->i32[0];
        v60 = (v60 + 4);
        v61 = v62;
        if (v62 < v59)
        {
          v59 = v61;
          v47 = v57;
        }

        v57 = v60;
      }

      while (v60 != v56);
    }

    v55 = v47->i32[0];
    *(a1 + 688) = v47->i32[0];
  }

  else
  {
    v55 = *(a1 + 688);
  }

  v63 = (*(*a7 + 36) - v55 + **a7) % **a7;
  v64 = *(*a7 + 8);
  if (v63 >= (*(*a7 + 16) - v64) >> 5)
  {
    goto LABEL_217;
  }

  v206 = a7;
  v65 = v64 + 32 * v63;
  v66 = *(v65 + 4);
  v200 = v65;
  if (v66 < 1)
  {
LABEL_79:
    v69 = 0;
    v74 = 0;
  }

  else
  {
    v67 = 0;
    v68 = *(v65 + 8);
    v69 = 1;
    while (1)
    {
      v70 = (v68 + 4 * (v67 << 6));
      v71 = v70 + 64;
      v72 = 0.0;
      do
      {
        v73 = *v70++;
        v72 = v72 + (v73 * v73);
      }

      while (v70 != v71);
      if (v72 > ((*(a1 + 324) * *(a1 + 324)) * 64.0))
      {
        break;
      }

      v69 = ++v67 < v66;
      if (v67 == v66)
      {
        goto LABEL_79;
      }
    }

    ++*(a1 + 1992);
    v74 = *(a1 + 2000) ^ 1;
  }

  *(a1 + 1984) += v74;
  v75 = *(a1 + 2752);
  if (*(a1 + 2760) == v75)
  {
    goto LABEL_217;
  }

  v199 = v20;
  v76 = v206[1];
  v77 = *(v76 + 8);
  v78 = *(v76 + 16) - v77;
  if (!v78)
  {
    goto LABEL_217;
  }

  v201 = a2;
  v205 = a4;
  v79 = *(*v75 + 144);
  v80 = a1 + 2800;
  v81 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
  v82 = 0xFC0FC0FC0FC0FC1 * ((v77[1] - *v77) >> 2);
  v83 = (*(v76 + 36) + v55 + *v76) % *v76;
  if (*v76 - 1 > v83)
  {
    v84 = v83 + 1;
  }

  else
  {
    v84 = 0;
  }

  if (v82 < 2)
  {
    if (v81 <= v84)
    {
      goto LABEL_217;
    }

    v104 = &v77[3 * v84];
    v103 = *v104;
    if (v104[1] == *v104)
    {
      goto LABEL_217;
    }

    if (v79 > 0.0)
    {
      if (v80 >= v103[16].u64 + 4 || v103 >= a1 + 3060)
      {
        v106 = vmulq_n_f32(vaddq_f32(*(a1 + 2816), v103[1]), v79);
        *(a1 + 2800) = vmulq_n_f32(vaddq_f32(*(a1 + 2800), *v103), v79);
        *(a1 + 2816) = v106;
        v107 = vmulq_n_f32(vaddq_f32(*(a1 + 2848), v103[3]), v79);
        *(a1 + 2832) = vmulq_n_f32(vaddq_f32(*(a1 + 2832), v103[2]), v79);
        *(a1 + 2848) = v107;
        v108 = vmulq_n_f32(vaddq_f32(*(a1 + 2880), v103[5]), v79);
        *(a1 + 2864) = vmulq_n_f32(vaddq_f32(*(a1 + 2864), v103[4]), v79);
        *(a1 + 2880) = v108;
        v109 = vmulq_n_f32(vaddq_f32(*(a1 + 2912), v103[7]), v79);
        *(a1 + 2896) = vmulq_n_f32(vaddq_f32(*(a1 + 2896), v103[6]), v79);
        *(a1 + 2912) = v109;
        v110 = vmulq_n_f32(vaddq_f32(*(a1 + 2944), v103[9]), v79);
        *(a1 + 2928) = vmulq_n_f32(vaddq_f32(*(a1 + 2928), v103[8]), v79);
        *(a1 + 2944) = v110;
        v111 = vmulq_n_f32(vaddq_f32(*(a1 + 2976), v103[11]), v79);
        *(a1 + 2960) = vmulq_n_f32(vaddq_f32(*(a1 + 2960), v103[10]), v79);
        *(a1 + 2976) = v111;
        v112 = vmulq_n_f32(vaddq_f32(*(a1 + 3008), v103[13]), v79);
        *(a1 + 2992) = vmulq_n_f32(vaddq_f32(*(a1 + 2992), v103[12]), v79);
        *(a1 + 3008) = v112;
        v42 = vmulq_n_f32(vaddq_f32(*(a1 + 3024), v103[14]), v79);
        v113 = vmulq_n_f32(vaddq_f32(*(a1 + 3040), v103[15]), v79);
        *(a1 + 3024) = v42;
        v114 = 64;
        *(a1 + 3040) = v113;
      }

      else
      {
        v114 = 0;
      }

      v115 = v114;
      do
      {
        *(v80 + v115 * 4) = v79 * (*(v80 + v115 * 4) + v103->f32[v115]);
        ++v115;
      }

      while (v115 != 65);
    }

    if (v81 <= v83)
    {
      goto LABEL_217;
    }

    v116 = &v77[3 * v83];
    v102 = *v116;
    if (v116[1] == *v116)
    {
      goto LABEL_217;
    }
  }

  else
  {
    if (v81 <= v84)
    {
      goto LABEL_217;
    }

    LODWORD(v202) = v83;
    v85 = &v77[3 * v84];
    v86 = *v85;
    v87 = v85[1] - *v85;
    if (v87)
    {
      v88 = v86;
    }

    else
    {
      v88 = 0;
    }

    *&v203 = v79;
    if (*&v203 > 0.0)
    {
      v89 = vmulq_n_f32(vaddq_f32(*(a1 + 2816), v210[1]), *&v203);
      *(a1 + 2800) = vmulq_n_f32(vaddq_f32(*(a1 + 2800), v210[0]), *&v203);
      *(a1 + 2816) = v89;
      v90 = vmulq_n_f32(vaddq_f32(*(a1 + 2848), v210[3]), *&v203);
      *(a1 + 2832) = vmulq_n_f32(vaddq_f32(*(a1 + 2832), v210[2]), *&v203);
      *(a1 + 2848) = v90;
      v91 = vmulq_n_f32(vaddq_f32(*(a1 + 2880), v210[5]), *&v203);
      *(a1 + 2864) = vmulq_n_f32(vaddq_f32(*(a1 + 2864), v210[4]), *&v203);
      *(a1 + 2880) = v91;
      v92 = vmulq_n_f32(vaddq_f32(*(a1 + 2912), v210[7]), *&v203);
      *(a1 + 2896) = vmulq_n_f32(vaddq_f32(*(a1 + 2896), v210[6]), *&v203);
      *(a1 + 2912) = v92;
      v93 = vmulq_n_f32(vaddq_f32(*(a1 + 2944), v210[9]), *&v203);
      *(a1 + 2928) = vmulq_n_f32(vaddq_f32(*(a1 + 2928), v210[8]), *&v203);
      *(a1 + 2944) = v93;
      v94 = vmulq_n_f32(vaddq_f32(*(a1 + 2976), v210[11]), *&v203);
      *(a1 + 2960) = vmulq_n_f32(vaddq_f32(*(a1 + 2960), v210[10]), *&v203);
      *(a1 + 2976) = v94;
      v95 = vmulq_n_f32(vaddq_f32(*(a1 + 3008), v210[13]), *&v203);
      *(a1 + 2992) = vmulq_n_f32(vaddq_f32(*(a1 + 2992), v210[12]), *&v203);
      *(a1 + 3008) = v95;
      v96 = vmulq_n_f32(vaddq_f32(*(a1 + 3040), v210[15]), *&v203);
      *(a1 + 3024) = vmulq_n_f32(vaddq_f32(*(a1 + 3024), v210[14]), *&v203);
      *(a1 + 3040) = v96;
      *(a1 + 3056) = *&v203 * (*(a1 + 3056) + v211);
    }

    v97 = *(v76 + 8);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v76 + 16) - v97) >> 3) <= v202)
    {
      goto LABEL_217;
    }

    v98 = (v97 + 24 * v202);
    v99 = *v98;
    v100 = v98[1] - *v98;
    if (v100)
    {
      v101 = v99;
    }

    else
    {
      v101 = 0;
    }

    v102 = v210;
  }

  v117 = 0;
  v202 = a10;
  if ((v207 - v102) >= 0x20 && &v207[-175] - a1 >= 0x20)
  {
    v118 = vaddq_f32(v102[1], *(a1 + 2816));
    v207[0] = vaddq_f32(*v102, *(a1 + 2800));
    v207[1] = v118;
    v119 = vaddq_f32(v102[3], *(a1 + 2848));
    v207[2] = vaddq_f32(v102[2], *(a1 + 2832));
    v207[3] = v119;
    v120 = vaddq_f32(v102[5], *(a1 + 2880));
    v207[4] = vaddq_f32(v102[4], *(a1 + 2864));
    v207[5] = v120;
    v121 = vaddq_f32(v102[7], *(a1 + 2912));
    v207[6] = vaddq_f32(v102[6], *(a1 + 2896));
    v207[7] = v121;
    v122 = vaddq_f32(v102[9], *(a1 + 2944));
    v207[8] = vaddq_f32(v102[8], *(a1 + 2928));
    v207[9] = v122;
    v123 = vaddq_f32(v102[11], *(a1 + 2976));
    v207[10] = vaddq_f32(v102[10], *(a1 + 2960));
    v207[11] = v123;
    v124 = vaddq_f32(v102[13], *(a1 + 3008));
    v207[12] = vaddq_f32(v102[12], *(a1 + 2992));
    v207[13] = v124;
    v42 = vaddq_f32(v102[14], *(a1 + 3024));
    v125 = vaddq_f32(v102[15], *(a1 + 3040));
    v117 = 64;
    v207[14] = v42;
    v207[15] = v125;
  }

  v126 = v117;
  do
  {
    v42.f32[0] = v102->f32[v126] + *(v80 + v126 * 4);
    *(v207 + v126 * 4) = v42.i32[0];
    ++v126;
  }

  while (v126 != 65);
  *&v203 = a12;
  if (*(a1 + 320) == 1)
  {
    v127 = *(a1 + 688);
    v128 = *(a1 + 660);
    webrtc::EchoAudibility::UpdateRenderNoiseEstimator((a1 + 2128), v206[1], *v206, v128, v42);
    if ((v128 & 1) != 0 || *(a1 + 2141) == 1)
    {
      v129 = v206[2];
      v130 = v129[8];
      v131 = v129[9];
      v132 = __OFSUB__(v131, v130);
      v133 = v131 - v130;
      if ((v133 < 0) ^ v132 | (v133 == 0))
      {
        v133 += *v129;
      }

      v134 = v133 - v127;
      if (v133 < v127)
      {
        v134 = -1;
      }

      v42.i64[0] = webrtc::StationarityEstimator::UpdateStationarityFlags(a1 + 2144, v206[1], a1 + 2800, 65, ((*(v206[1] + 36) + v127 + *v206[1]) % *v206[1]), v134 + 1).n128_u64[0];
    }
  }

  if (*(a1 + 640) == 1)
  {
    webrtc::FullBandErleEstimator::Reset((a1 + 1352), *v42.f32);
    webrtc::SubbandErleEstimator::Reset(a1 + 1456, v135, v136, v137);
    v139 = *(a1 + 1968);
    if (v139)
    {
      webrtc::SignalDependentErleEstimator::Reset(v139, v138);
    }
  }

  if (v205)
  {
    v140 = v204;
  }

  else
  {
    v140 = 0;
  }

  if (v203)
  {
    v142 = a11;
  }

  else
  {
    v142 = 0;
  }

  if (!a10)
  {
    a9 = 0;
  }

  v204 = v140;
  webrtc::ErleEstimator::Update((a1 + 1344), v206, v140, v205, v207, v142, v203, v41, a9, v202, v19);
  v144 = v206[1];
  v145 = (*(v144 + 36) + *(a1 + 688) + *v144) % *v144;
  v147 = v144 + 8;
  v146 = *(v144 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v147 + 8) - v146) >> 3) <= v145)
  {
LABEL_217:
    __break(1u);
    return;
  }

  v148 = (v146 + 24 * v145);
  v149 = *v148;
  v150 = v148[1] - *v148;
  if (v150)
  {
    v151 = v149;
  }

  else
  {
    v151 = 0;
  }

  v153.n128_f32[0] = webrtc::ErlEstimator::Update(a1 + 808, v19, v151, 0xFC0FC0FC0FC0FC1 * (v150 >> 2), v142, v143);
  if ((*(a1 + 292) & 1) == 0)
  {
    v154 = *(a1 + 2000);
    goto LABEL_166;
  }

  v154 = *(a1 + 2000);
  if (*(a1 + 745) != 1)
  {
    v153.n128_u32[0] = v208;
    *(a1 + 800) = 0;
    if (v154)
    {
      goto LABEL_153;
    }

LABEL_162:
    v154 = 0;
    goto LABEL_166;
  }

  v155 = *(a1 + 242);
  v153.n128_u32[0] = v208;
  *(a1 + 800) = 0;
  if ((v154 & 1) == 0)
  {
    goto LABEL_162;
  }

  if ((v155 & 1) == 0)
  {
LABEL_153:
    v158 = *(v200 + 4);
    if (v158 >= 1)
    {
      v159 = 0;
      v160 = 0;
      v161 = *(v200 + 8);
      v162 = 0.0;
      while ((*(v200 + 16) - v161) >> 2 > (v160 << 6))
      {
        for (i = 0; i != 256; i += 4)
        {
          v164 = fabsf(*(v161 + 4 * v159 + i));
          if (v162 < v164)
          {
            v162 = v164;
          }
        }

        ++v160;
        v159 += 64;
        if (v160 == v158)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_217;
    }

    v162 = 0.0;
LABEL_164:
    v153.n128_f32[0] = (v153.n128_f32[0] * v162) * 10.0;
    v156 = v153.n128_f32[0] > 32000.0;
    goto LABEL_165;
  }

  if (a14)
  {
    v156 = 0;
    v157 = (v199 + 2088);
    do
    {
      while (1)
      {
        if (!v156)
        {
          v153.n128_u32[0] = *(v157 - 1);
          if (v153.n128_f32[0] <= 20000.0)
          {
            break;
          }
        }

        v156 = 1;
        v157 += 523;
        if (!--v18)
        {
          goto LABEL_165;
        }
      }

      v153.n128_u32[0] = *v157;
      v156 = *v157 > 20000.0;
      v157 += 523;
      --v18;
    }

    while (v18);
LABEL_165:
    *(a1 + 800) = v156;
    goto LABEL_166;
  }

  v154 = 1;
LABEL_166:
  v165 = *(a1 + 648) + (v69 & ~v154 & 1);
  *(a1 + 648) = v165;
  v166 = *(a1 + 641);
  if (*(a1 + 632) == 1)
  {
    v167 = v165 < 0x4E2;
    *(a1 + 641) = v167;
    *(a1 + 640) = !v167 & v166;
    v168 = *(a1 + 736);
    if (!v168)
    {
      goto LABEL_172;
    }
  }

  else
  {
    v153.n128_f32[0] = v165;
    v169 = (*(a1 + 636) * 250.0) > v165;
    *(a1 + 641) = v169;
    *(a1 + 640) = !v169 & v166;
    v168 = *(a1 + 736);
    if (!v168)
    {
LABEL_172:
      v171 = 1;
      goto LABEL_173;
    }
  }

  (*(*v168 + 32))(v168, *(a1 + 688), v209, v21, v22 & 1, v25 & 1, v69, v154 & 1, v153);
  v170 = *(a1 + 736);
  if (!v170)
  {
    goto LABEL_172;
  }

  v171 = (*(*v170 + 16))(v170) ^ 1;
LABEL_173:
  v172 = 0;
  v173 = v69 & ~*(a1 + 2000) & 1;
  v174 = *(a1 + 752) + v173;
  *(a1 + 752) = v174;
  v175 = *(a1 + 760) + v173;
  *(a1 + 760) = v175;
  v176 = *(a1 + 768) | v21;
  *(a1 + 768) |= v21;
  if (v175 >= 0x65 && v174 >= 0x33)
  {
    v172 = *(v201 + 32) | v176;
  }

  v177 = v171 & v172;
  *(a1 + 745) = v177;
  if (*(a1 + 744) == 1)
  {
    v178 = *(a1 + 784);
    if (v178 >= 1)
    {
      v179 = *(a1 + 776);
      v180 = v178 >> 6;
      if (v177)
      {
        if (v178 >= 0x40)
        {
          memset(*(a1 + 776), 255, 8 * v180);
        }

        if ((v178 & 0x3F) != 0)
        {
          v181 = *(v179 + 8 * v180) | (0xFFFFFFFFFFFFFFFFLL >> -(v178 & 0x3F));
LABEL_187:
          *(v179 + 8 * v180) = v181;
        }
      }

      else
      {
        if (v178 >= 0x40)
        {
          bzero(*(a1 + 776), 8 * v180);
        }

        if ((v178 & 0x3F) != 0)
        {
          v181 = *(v179 + 8 * v180) & ~(0xFFFFFFFFFFFFFFFFLL >> -(v178 & 0x3F));
          goto LABEL_187;
        }
      }
    }
  }

  if (*(a1 + 320) == 1)
  {
    v182 = 0;
    v183 = a1 + 2424;
    v184 = 0.0;
    v185 = v204;
    v186 = v205;
    do
    {
      v187 = 0.0;
      if (*(v183 + v182 + 260) == 1)
      {
        if (*(v183 + 4 * v182))
        {
          v187 = 0.0;
        }

        else
        {
          v187 = 1.0;
        }
      }

      v184 = v184 + v187;
      ++v182;
    }

    while (v182 != 65);
    v188 = (v184 * 0.015385) > 0.75;
  }

  else
  {
    v188 = 0;
    v185 = v204;
    v186 = v205;
  }

  v189 = *(a1 + 2032) - *(a1 + 2024);
  v190 = 0xAAAAAAAAAAAAAAABLL * (v189 >> 3);
  if (v189)
  {
    v191 = *(a1 + 2024);
  }

  else
  {
    v191 = 0;
  }

  v192 = *(a1 + 1440) - *(a1 + 1432);
  v193 = v192 >> 3;
  if (v192)
  {
    v194 = *(a1 + 1432);
  }

  else
  {
    v194 = 0;
  }

  v195 = *(a1 + 664);
  v196 = (*(a1 + 672) - v195) >> 2;
  if (*(a1 + 672) == v195)
  {
    v195 = 0;
  }

  webrtc::ReverbModelEstimator::Update((a1 + 2752), v191, v190, v185, v186, v194, v193, v152, v195, v196, (a1 + 776), v188);
  if (*(a1 + 1392) == *(a1 + 1384))
  {
    goto LABEL_217;
  }

  if (*(a1 + 1416) == *(a1 + 1408))
  {
    goto LABEL_217;
  }

  v197 = *(a1 + 1968);
  if (v197)
  {
    if (v197[86] == v197[85] || v197[89] == v197[88] || v197[92] == v197[91])
    {
      goto LABEL_217;
    }
  }

  if (*(a1 + 2760) == *(a1 + 2752))
  {
    goto LABEL_217;
  }

  v198 = *(a1 + 736);
  if (v198)
  {
    (*(*v198 + 16))(v198);
  }

  if (*(a1 + 2784) == *(a1 + 2776))
  {
    goto LABEL_217;
  }
}

float32_t webrtc::anonymous namespace::ComputeAvgRenderReverb(webrtc::SpectrumBuffer const&,int,float,webrtc::ReverbModel *,webrtc::ArrayView<float,65l>)::$_0::operator()(unint64_t a1, unint64_t a2, int a3, float32x4_t *a4)
{
  bzero(a4, 0x104uLL);
  if (a1)
  {
    v7 = 0;
    v9 = a2 + 260 * a1 > a4 && a4[16].u64 + 4 > a2;
    v10 = a2;
    do
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v12 = (a2 + 260 * v7);
        v13 = vaddq_f32(v12[1], a4[1]);
        *a4 = vaddq_f32(*v12, *a4);
        a4[1] = v13;
        v14 = vaddq_f32(v12[3], a4[3]);
        a4[2] = vaddq_f32(v12[2], a4[2]);
        a4[3] = v14;
        v15 = vaddq_f32(v12[5], a4[5]);
        a4[4] = vaddq_f32(v12[4], a4[4]);
        a4[5] = v15;
        v16 = vaddq_f32(v12[7], a4[7]);
        a4[6] = vaddq_f32(v12[6], a4[6]);
        a4[7] = v16;
        v17 = vaddq_f32(v12[9], a4[9]);
        a4[8] = vaddq_f32(v12[8], a4[8]);
        a4[9] = v17;
        v18 = vaddq_f32(v12[11], a4[11]);
        a4[10] = vaddq_f32(v12[10], a4[10]);
        a4[11] = v18;
        v19 = vaddq_f32(v12[13], a4[13]);
        a4[12] = vaddq_f32(v12[12], a4[12]);
        a4[13] = v19;
        v20 = vaddq_f32(v12[14], a4[14]);
        v21 = vaddq_f32(v12[15], a4[15]);
        v11 = 64;
        a4[14] = v20;
        a4[15] = v21;
      }

      v22 = v11;
      do
      {
        a4->f32[v22] = *(v10 + v22 * 4) + a4->f32[v22];
        ++v22;
      }

      while (v22 != 65);
      ++v7;
      v10 += 260;
    }

    while (v7 != a1);
  }

  v23 = 1.0 / a1;
  v24 = vmulq_n_f32(a4[1], v23);
  *a4 = vmulq_n_f32(*a4, v23);
  a4[1] = v24;
  v25 = vmulq_n_f32(a4[3], v23);
  a4[2] = vmulq_n_f32(a4[2], v23);
  a4[3] = v25;
  v26 = vmulq_n_f32(a4[5], v23);
  a4[4] = vmulq_n_f32(a4[4], v23);
  a4[5] = v26;
  v27 = vmulq_n_f32(a4[7], v23);
  a4[6] = vmulq_n_f32(a4[6], v23);
  a4[7] = v27;
  v28 = vmulq_n_f32(a4[9], v23);
  a4[8] = vmulq_n_f32(a4[8], v23);
  a4[9] = v28;
  v29 = vmulq_n_f32(a4[11], v23);
  a4[10] = vmulq_n_f32(a4[10], v23);
  a4[11] = v29;
  v30 = vmulq_n_f32(a4[13], v23);
  a4[12] = vmulq_n_f32(a4[12], v23);
  a4[13] = v30;
  v31 = vmulq_n_f32(a4[15], v23);
  a4[14] = vmulq_n_f32(a4[14], v23);
  a4[15] = v31;
  result = v23 * a4[16].f32[0];
  a4[16].f32[0] = result;
  return result;
}

int8x16_t *webrtc::WebRtcAecm_CreateCore(webrtc *this)
{
  v1 = malloc_type_calloc(1uLL, 0x4388uLL, 0x10B004073429A03uLL);
  v2 = malloc_type_malloc(0x30uLL, 0x1010040521CD160uLL);
  if (!v2)
  {
    goto LABEL_14;
  }

  v4 = v2;
  v5 = malloc_type_malloc(0x120uLL, 0xC5FABF8DuLL);
  v4[5] = v5;
  if (!v5)
  {
    free(v4);
LABEL_14:
    v1[1].i64[1] = 0;
    goto LABEL_21;
  }

  *(v4 + 1) = xmmword_273B8D470;
  *(v4 + 8) = 0;
  *v4 = 0;
  v4[1] = 0;
  v5[16] = 0u;
  v5[17] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  v1[1].i64[1] = v4;
  v6 = malloc_type_malloc(0x30uLL, 0x1010040521CD160uLL);
  if (!v6)
  {
LABEL_16:
    v1[2].i64[0] = 0;
    goto LABEL_21;
  }

  v7 = v6;
  v8 = malloc_type_malloc(0x120uLL, 0xC5FABF8DuLL);
  v7[5] = v8;
  if (!v8)
  {
    free(v7);
    goto LABEL_16;
  }

  *(v7 + 1) = xmmword_273B8D470;
  *(v7 + 8) = 0;
  *v7 = 0;
  v7[1] = 0;
  v8[16] = 0u;
  v8[17] = 0u;
  v8[14] = 0u;
  v8[15] = 0u;
  v8[12] = 0u;
  v8[13] = 0u;
  v8[10] = 0u;
  v8[11] = 0u;
  v8[8] = 0u;
  v8[9] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  v1[2].i64[0] = v7;
  v9 = malloc_type_malloc(0x30uLL, 0x1010040521CD160uLL);
  if (!v9)
  {
LABEL_18:
    v1[2].i64[1] = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v11 = malloc_type_malloc(0x120uLL, 0xC5FABF8DuLL);
  v10[5] = v11;
  if (!v11)
  {
    free(v10);
    goto LABEL_18;
  }

  *(v10 + 1) = xmmword_273B8D470;
  *(v10 + 8) = 0;
  *v10 = 0;
  v10[1] = 0;
  v11[16] = 0u;
  v11[17] = 0u;
  v11[14] = 0u;
  v11[15] = 0u;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[10] = 0u;
  v11[11] = 0u;
  v11[8] = 0u;
  v11[9] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  *v11 = 0u;
  v11[1] = 0u;
  v1[2].i64[1] = v10;
  v12 = malloc_type_malloc(0x30uLL, 0x1010040521CD160uLL);
  if (!v12)
  {
LABEL_20:
    v1[3].i64[0] = 0;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = malloc_type_malloc(0x120uLL, 0xC5FABF8DuLL);
  v13[5] = v14;
  if (!v14)
  {
    free(v13);
    goto LABEL_20;
  }

  *(v13 + 1) = xmmword_273B8D470;
  *(v13 + 8) = 0;
  *v13 = 0;
  v13[1] = 0;
  v14[16] = 0u;
  v14[17] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  *v14 = 0u;
  v14[1] = 0u;
  v1[3].i64[0] = v13;
  DelayEstimatorFarend = webrtc::WebRtc_CreateDelayEstimatorFarend(0x41, 0x64);
  v1[36].i64[0] = DelayEstimatorFarend;
  if (DelayEstimatorFarend)
  {
    DelayEstimator = webrtc::WebRtc_CreateDelayEstimator(DelayEstimatorFarend, 0);
    v1[36].i64[1] = DelayEstimator;
    if (DelayEstimator)
    {
      *(DelayEstimator[2] + 44) = 0;
      v17 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      if (v17)
      {
        *v17 = 7;
        v1[1080].i64[0] = v17;
        v18 = vdupq_n_s64(v1);
        v19 = vdupq_n_s64(0xFFFFFFFFFFFFFFE0);
        v1[1002] = vandq_s8(vaddq_s64(v18, xmmword_273B8D480), v19);
        v1[1003].i64[0] = (&v1[991].u64[1] + 3) & 0xFFFFFFFFFFFFFFF0;
        v1[1000] = vandq_s8(vaddq_s64(v18, xmmword_273B8D490), vdupq_n_s64(0xFFFFFFFFFFFFFFF0));
        v1[1001] = vandq_s8(vaddq_s64(v18, xmmword_273B8D4A0), v19);
        return v1;
      }

      v1[1080].i64[0] = 0;
    }
  }

LABEL_21:
  webrtc::WebRtcAecm_FreeCore(v1, v3);
  return 0;
}

void webrtc::WebRtcAecm_FreeCore(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      free(v3[5]);
      free(v3);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4[5]);
      free(v4);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      free(v5[5]);
      free(v5);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      free(v6[5]);
      free(v6);
    }

    webrtc::WebRtc_FreeDelayEstimator(*(a1 + 584), a2);
    v7 = *(a1 + 576);
    if (v7)
    {
      free(*v7);
      *v7 = 0;
      v8 = *(v7 + 16);
      if (v8)
      {
        free(v8[1]);
        v8[1] = 0;
        free(*v8);
        free(v8);
      }

      free(v7);
    }

    v9 = *(a1 + 17280);
    if (v9)
    {
      free(v9);
    }

    free(a1);
  }
}

int32x2_t webrtc::WebRtcAecm_InitEchoPathCore(int32x2_t *a1, uint64_t a2)
{
  v2 = a1[2000];
  **&v2 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  *(*&v2 + 48) = *(a2 + 48);
  *(*&v2 + 64) = v5;
  *(*&v2 + 16) = v3;
  *(*&v2 + 32) = v4;
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(*&v2 + 128) = *(a2 + 128);
  *(*&v2 + 96) = v7;
  *(*&v2 + 112) = v8;
  *(*&v2 + 80) = v6;
  v9 = a1[2001];
  **&v9 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 64);
  *(*&v9 + 48) = *(a2 + 48);
  *(*&v9 + 64) = v12;
  *(*&v9 + 16) = v10;
  *(*&v9 + 32) = v11;
  v13 = *(a2 + 80);
  v14 = *(a2 + 96);
  v15 = *(a2 + 112);
  *(*&v9 + 128) = *(a2 + 128);
  *(*&v9 + 96) = v14;
  *(*&v9 + 112) = v15;
  *(*&v9 + 80) = v13;
  v16 = a1[2001];
  v17 = a1[2002];
  v18 = vshll_n_s16(v16[1], 0x10uLL);
  *v17 = vshll_n_s16(*v16, 0x10uLL);
  v17[1] = v18;
  v19 = vshll_n_s16(v16[3], 0x10uLL);
  v17[2] = vshll_n_s16(v16[2], 0x10uLL);
  v17[3] = v19;
  v20 = vshll_n_s16(v16[5], 0x10uLL);
  v17[4] = vshll_n_s16(v16[4], 0x10uLL);
  v17[5] = v20;
  v21 = vshll_n_s16(v16[7], 0x10uLL);
  v17[6] = vshll_n_s16(v16[6], 0x10uLL);
  v17[7] = v21;
  v22 = vshll_n_s16(v16[9], 0x10uLL);
  v17[8] = vshll_n_s16(v16[8], 0x10uLL);
  v17[9] = v22;
  v23 = vshll_n_s16(v16[11], 0x10uLL);
  v17[10] = vshll_n_s16(v16[10], 0x10uLL);
  v17[11] = v23;
  v24 = vshll_n_s16(v16[13], 0x10uLL);
  v17[12] = vshll_n_s16(v16[12], 0x10uLL);
  v17[13] = v24;
  v25 = vshll_n_s16(v16[15], 0x10uLL);
  v17[14] = vshll_n_s16(v16[14], 0x10uLL);
  v17[15] = v25;
  v17[16].i32[0] = v16[16].u16[0] << 16;
  result = vdup_n_s32(0x3E8u);
  a1[2154] = result;
  a1[2155].i32[0] = 0x7FFFFFFF;
  a1[2158].i16[0] = 0;
  return result;
}

uint64_t webrtc::WebRtcAecm_InitCore(uint64_t a1, int a2)
{
  if (a2 != 16000 && a2 != 8000)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 568) = a2 / 0x1F40u;
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a1 + 24);
  *(v4 + 32) = 0;
  *v4 = 0;
  *(v4 + 8) = 0;
  bzero(*(v4 + 40), *(v4 + 24) * *(v4 + 16));
  v5 = *(a1 + 32);
  *(v5 + 32) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  bzero(*(v5 + 40), *(v5 + 24) * *(v5 + 16));
  v6 = *(a1 + 40);
  *(v6 + 32) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  bzero(*(v6 + 40), *(v6 + 24) * *(v6 + 16));
  v7 = *(a1 + 48);
  *(v7 + 32) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  bzero(*(v7 + 40), *(v7 + 24) * *(v7 + 16));
  bzero((a1 + 14988), 0x3F0uLL);
  *(a1 + 572) = 666;
  *(a1 + 14004) = 0;
  v8 = *(a1 + 576);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(v8 + 16);
  bzero(*(v9 + 8), 4 * *(v9 + 16));
  bzero(*v9, 4 * *(v9 + 16));
  bzero(*v8, 4 * *(v8 + 12));
  *(v8 + 8) = 0;
  v10 = *(a1 + 584);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(v10 + 16);
  bzero(v11[1], 4 * *(v11 + 7));
  bzero(v11[2], 4 * *(v11 + 6));
  LODWORD(v12) = *(v11 + 7);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = *v11;
    v15 = v11[8];
    do
    {
      *(v14 + 4 * v13) = 10240;
      *(v15 + 4 * v13) = 0;
      v12 = *(v11 + 7);
    }

    while (v13++ < v12);
  }

  v11[4] = 0x400000004000;
  *(v11 + 10) = -2;
  *(v11 + 13) = -2;
  *(v11 + 14) = v12;
  *(v11 + 15) = 0;
  *(v11 + 18) = 0;
  bzero(*v10, 4 * *(v10 + 12));
  *(v10 + 8) = 0;
  bzero((a1 + 594), 0x32C8uLL);
  *(a1 + 13984) = 0u;
  *(a1 + 13968) = 0u;
  *(a1 + 13952) = 0u;
  *(a1 + 13936) = 0u;
  *(a1 + 13920) = 0u;
  *(a1 + 13904) = 0u;
  *(a1 + 13888) = 0u;
  *(a1 + 13872) = 0u;
  *(a1 + 13856) = 0u;
  *(a1 + 13840) = 0u;
  *(a1 + 13824) = 0u;
  *(a1 + 13808) = 0u;
  *(a1 + 13792) = 0u;
  *(a1 + 13776) = 0u;
  *(a1 + 13760) = 0u;
  *(a1 + 13744) = 0u;
  *(a1 + 13728) = 0u;
  *(a1 + 13712) = 0u;
  *(a1 + 13696) = 0u;
  *(a1 + 13680) = 0u;
  *(a1 + 13664) = 0u;
  *(a1 + 13648) = 0u;
  *(a1 + 13632) = 0u;
  *(a1 + 13616) = 0u;
  *(a1 + 13600) = 0u;
  *(a1 + 13596) = 100;
  *(a1 + 14000) = -65535;
  *(a1 + 14386) = 0u;
  *(a1 + 14008) = 0u;
  *(a1 + 14024) = 0u;
  *(a1 + 14040) = 0u;
  *(a1 + 14056) = 0u;
  *(a1 + 14072) = 0u;
  *(a1 + 14088) = 0u;
  *(a1 + 14104) = 0u;
  *(a1 + 14120) = 0u;
  *(a1 + 14136) = 0u;
  *(a1 + 14152) = 0u;
  *(a1 + 14168) = 0u;
  *(a1 + 14184) = 0u;
  *(a1 + 14200) = 0u;
  *(a1 + 14216) = 0u;
  *(a1 + 14232) = 0u;
  *(a1 + 14248) = 0u;
  *(a1 + 14264) = 0u;
  *(a1 + 14280) = 0u;
  *(a1 + 14296) = 0u;
  *(a1 + 14312) = 0u;
  *(a1 + 14328) = 0u;
  *(a1 + 14344) = 0u;
  if (a2 == 8000)
  {
  }

  else
  {
  }

  *(a1 + 14360) = 0uLL;
  *(a1 + 14376) = 0uLL;
  webrtc::WebRtcAecm_InitEchoPathCore(a1, v17);
  *(a1 + 17228) = 0;
  *(a1 + 16438) = 0;
  *(a1 + 16056) = 0u;
  *(a1 + 16072) = 0u;
  *(a1 + 16088) = 0u;
  *(a1 + 16104) = 0u;
  *(a1 + 16120) = 0u;
  *(a1 + 16136) = 0u;
  *(a1 + 16152) = 0u;
  *(a1 + 16168) = 0u;
  *(a1 + 16184) = 0u;
  *(a1 + 16200) = 0u;
  *(a1 + 16216) = 0u;
  *(a1 + 16232) = 0u;
  *(a1 + 16248) = 0u;
  *(a1 + 16264) = 0u;
  *(a1 + 16280) = 0u;
  *(a1 + 16296) = 0u;
  *(a1 + 16312) = 0u;
  *(a1 + 16328) = 0u;
  *(a1 + 16344) = 0u;
  *(a1 + 16360) = 0u;
  *(a1 + 16376) = 0u;
  *(a1 + 16392) = 0u;
  *(a1 + 16408) = 0u;
  *(a1 + 16424) = 0u;
  *(a1 + 17230) = 1;
  bzero((a1 + 16708), 0x208uLL);
  result = 0;
  *(a1 + 16448) = xmmword_273B8D4B0;
  *(a1 + 16464) = xmmword_273B8D4C0;
  *(a1 + 16480) = xmmword_273B8D4D0;
  *(a1 + 16496) = xmmword_273B8D4E0;
  *(a1 + 16512) = xmmword_273B8D4F0;
  *(a1 + 16528) = xmmword_273B8D500;
  *(a1 + 16544) = xmmword_273B8D510;
  *(a1 + 16560) = xmmword_273B8D520;
  v19 = vdupq_n_s32(0x48400u);
  *(a1 + 16576) = v19;
  *(a1 + 16592) = v19;
  *(a1 + 16608) = v19;
  *(a1 + 16624) = v19;
  *(a1 + 16640) = v19;
  *(a1 + 16656) = v19;
  *(a1 + 16672) = v19;
  *(a1 + 16688) = v19;
  *(a1 + 16704) = 295936;
  *(a1 + 17244) = 0x401000080007FFFLL;
  *(a1 + 17252) = 0;
  *(a1 + 17256) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17266) = 0x1000C0001000100;
  *(a1 + 17274) = 83887616;
  return result;
}

int32x4_t webrtc::ResetAdaptiveChannelC(void *a1)
{
  v1 = a1[2001];
  v2 = a1[2000];
  v3 = *(v2 + 64);
  v5 = *(v2 + 16);
  v4 = *(v2 + 32);
  *(v1 + 48) = *(v2 + 48);
  *(v1 + 64) = v3;
  *(v1 + 16) = v5;
  *(v1 + 32) = v4;
  v7 = *(v2 + 96);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  *(v1 + 128) = *(v2 + 128);
  *(v1 + 96) = v7;
  *(v1 + 112) = v6;
  *(v1 + 80) = v8;
  *v1 = *v2;
  v9 = a1[2000];
  v10 = a1[2002];
  v11 = vshll_n_s16(v9[1], 0x10uLL);
  *v10 = vshll_n_s16(*v9, 0x10uLL);
  v10[1] = v11;
  v12 = vshll_n_s16(v9[3], 0x10uLL);
  v10[2] = vshll_n_s16(v9[2], 0x10uLL);
  v10[3] = v12;
  v13 = vshll_n_s16(v9[5], 0x10uLL);
  v10[4] = vshll_n_s16(v9[4], 0x10uLL);
  v10[5] = v13;
  v14 = vshll_n_s16(v9[7], 0x10uLL);
  v10[6] = vshll_n_s16(v9[6], 0x10uLL);
  v10[7] = v14;
  v15 = vshll_n_s16(v9[9], 0x10uLL);
  v10[8] = vshll_n_s16(v9[8], 0x10uLL);
  v10[9] = v15;
  v16 = vshll_n_s16(v9[11], 0x10uLL);
  v10[10] = vshll_n_s16(v9[10], 0x10uLL);
  v10[11] = v16;
  v17 = vshll_n_s16(v9[13], 0x10uLL);
  v10[12] = vshll_n_s16(v9[12], 0x10uLL);
  v10[13] = v17;
  result = vshll_n_s16(v9[14], 0x10uLL);
  v19 = vshll_n_s16(v9[15], 0x10uLL);
  v10[14] = result;
  v10[15] = v19;
  v10[16].i32[0] = v9[16].u16[0] << 16;
  return result;
}

uint64_t webrtc::WebRtcAecm_ProcessFrame(unsigned int *a1, char *__src, char *a3, char *a4, uint64_t a5)
{
  v112 = *MEMORY[0x277D85DE8];
  v106 = 0;
  v10 = *a1;
  if (v10 < 177)
  {
    v13 = 0;
    v12 = 80;
  }

  else
  {
    v11 = 256 - v10;
    memcpy(a1 + 2 * v10 + 56, __src, 2 * (256 - v10));
    *a1 = 0;
    v12 = v10 - 176;
    if ((v10 - 176) >= 0x101)
    {
      memcpy(a1 + 14, &__src[2 * v11], 0x200uLL);
      v12 = -176;
      v11 = 256;
    }

    LODWORD(v10) = 0;
    v13 = v11;
  }

  v14 = a1 + 14;
  memcpy(a1 + 2 * v10 + 56, &__src[2 * v13], 2 * v12);
  v15 = *a1 + v12;
  v16 = a1[2];
  v17 = ((v16 - (a1[1] + a1[3]) + ((a1[3] - v16 + a1[1]) & ~((a1[3] - v16 + a1[1]) >> 31)) + 255) & 0xFFFFFF00) + a1[1] + a1[3];
  v18 = v17 - v16;
  if (v17 - v16 >= 0x1FF)
  {
    v19 = 511;
  }

  else
  {
    v19 = v17 - v16;
  }

  v20 = v17 - v16 - ((v17 - v16 - v19 + 255) & 0xFFFFFF00) - 256;
  if (v18 >= 256)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  *a1 = v15;
  a1[1] = v21;
  a1[3] = v16;
  if (v21 < 177)
  {
    v24 = 0;
    v23 = 80;
  }

  else
  {
    v22 = 256 - v21;
    memcpy(__dst, v14 + 2 * v21, 2 * (256 - v21));
    a1[1] = 0;
    v23 = v21 - 176;
    if ((v21 - 176) >= 0x101)
    {
      memcpy(&__dst[2 * v22], a1 + 14, 0x200uLL);
      v23 = -176;
      v22 = 256;
    }

    v21 = 0;
    v24 = v22;
  }

  memcpy(&__dst[2 * v24], v14 + 2 * v21, 2 * v23);
  a1[1] = v23 + v21;
  v25 = *(a1 + 3);
  if (v25)
  {
    v26 = v25[2];
    v27 = *v25;
    v28 = v25[1];
    if (*(v25 + 8))
    {
      v29 = v26 - v27 + v28;
    }

    else
    {
      v29 = v28 - v27;
    }

    v30 = v26 - v29;
    if (v30 >= 0x50)
    {
      v31 = 80;
    }

    else
    {
      v31 = v30;
    }

    v32 = v26 - v28;
    v33 = v31 - v32;
    if (v31 <= v32)
    {
      v33 = v31;
    }

    else
    {
      memcpy((v25[5] + v25[3] * v28), __dst, v25[3] * v32);
      v28 = 0;
      v25[1] = 0;
      *(v25 + 8) = 1;
    }

    memcpy((v25[5] + v25[3] * v28), &__dst[v25[3] * (v31 - v33)], v25[3] * v33);
    v25[1] += v33;
  }

  if (a3)
  {
    v34 = *(a1 + 4);
    if (v34)
    {
      v35 = v34[2];
      v36 = *v34;
      v37 = v34[1];
      if (*(v34 + 8))
      {
        v38 = v35 - v36 + v37;
      }

      else
      {
        v38 = v37 - v36;
      }

      v39 = v35 - v38;
      if (v39 >= 0x50)
      {
        v40 = 80;
      }

      else
      {
        v40 = v39;
      }

      v41 = v35 - v37;
      v42 = v40 - v41;
      if (v40 <= v41)
      {
        v42 = v40;
      }

      else
      {
        memcpy((v34[5] + v34[3] * v37), a3, v34[3] * v41);
        v37 = 0;
        v34[1] = 0;
        *(v34 + 8) = 1;
      }

      memcpy((v34[5] + v34[3] * v37), &a3[v34[3] * (v40 - v42)], v34[3] * v42);
      v34[1] += v42;
    }
  }

  if (a4)
  {
    v43 = *(a1 + 5);
    if (v43)
    {
      v44 = v43[2];
      v45 = *v43;
      v46 = v43[1];
      if (*(v43 + 8))
      {
        v47 = v44 - v45 + v46;
      }

      else
      {
        v47 = v46 - v45;
      }

      v63 = v44 - v47;
      if (v63 >= 0x50)
      {
        v64 = 80;
      }

      else
      {
        v64 = v63;
      }

      v65 = v44 - v46;
      v66 = v64 - v65;
      if (v64 <= v65)
      {
        v66 = v64;
      }

      else
      {
        memcpy((v43[5] + v43[3] * v46), a4, v43[3] * v65);
        v46 = 0;
        v43[1] = 0;
        *(v43 + 8) = 1;
      }

      memcpy((v43[5] + v43[3] * v46), &a4[v43[3] * (v64 - v66)], v43[3] * v66);
      v43[1] += v66;
    }

    v48 = (a1 + 12);
    v67 = *(a1 + 3);
    if (v67)
    {
      while (1)
      {
        v69 = *v67;
        if (*(v67 + 32))
        {
          if ((*(v67 + 16) - v69 + *(v67 + 8)) < 0x40)
          {
            goto LABEL_104;
          }
        }

        else if ((*(v67 + 8) - v69) < 0x40)
        {
          goto LABEL_104;
        }

        v104 = 0;
        v105 = 0;
        WebRtc_ReadBuffer(v67, &v105, v109, 0x40uLL);
        WebRtc_ReadBuffer(*(a1 + 4), &v104, v108, 0x40uLL);
        v103 = 0;
        WebRtc_ReadBuffer(*(a1 + 5), &v103, v107, 0x40uLL);
        webrtc::WebRtcAecm_ProcessBlock(a1, v105, v104, v103, v111);
        if (v70 == -1)
        {
          return 0xFFFFFFFFLL;
        }

        if (v111)
        {
          v71 = *v48;
          if (*v48)
          {
            break;
          }
        }

LABEL_85:
        v67 = *(a1 + 3);
        if (!v67)
        {
          goto LABEL_104;
        }
      }

      v72 = v71[2];
      v73 = *v71;
      if (*(v71 + 8))
      {
        v68 = v71[1];
        v74 = v73 - v68;
        if (v74 >= 0x40)
        {
          v75 = 64;
        }

        else
        {
          v75 = v74;
        }

        v76 = v72 - v68;
        v77 = v75 - v76;
        if (v75 <= v76)
        {
LABEL_103:
          v77 = v75;
          goto LABEL_84;
        }
      }

      else
      {
        v68 = v71[1];
        v78 = v72 - (v68 - v73);
        if (v78 >= 0x40)
        {
          v75 = 64;
        }

        else
        {
          v75 = v78;
        }

        v76 = v72 - v68;
        v77 = v75 - v76;
        if (v75 <= v76)
        {
          goto LABEL_103;
        }
      }

      memcpy((v71[5] + v71[3] * v68), v111, v71[3] * v76);
      v68 = 0;
      v71[1] = 0;
      *(v71 + 8) = 1;
LABEL_84:
      memcpy((v71[5] + v71[3] * v68), v111 + v71[3] * (v75 - v77), v71[3] * v77);
      v71[1] += v77;
      goto LABEL_85;
    }

LABEL_104:
    v79 = *v48;
    if (!*v48)
    {
      goto LABEL_127;
    }

    v80 = *(v79 + 32);
    v81 = *v79;
    if (v80)
    {
      v82 = *(v79 + 8);
      v83 = *(v79 + 16) - v81 + v82;
      if (v83 > 79)
      {
LABEL_127:
        WebRtc_ReadBuffer(v79, &v106, a5, 0x50uLL);
        v95 = v106;
        result = 0;
        if (v106 != a5)
        {
          v96 = *(v106 + 1);
          *a5 = *v106;
          *(a5 + 16) = v96;
          v97 = *(v95 + 2);
          v98 = *(v95 + 3);
          v99 = *(v95 + 5);
          *(a5 + 64) = *(v95 + 4);
          *(a5 + 80) = v99;
          *(a5 + 32) = v97;
          *(a5 + 48) = v98;
          v100 = *(v95 + 6);
          v101 = *(v95 + 7);
          v102 = *(v95 + 9);
          *(a5 + 128) = *(v95 + 8);
          *(a5 + 144) = v102;
          *(a5 + 96) = v100;
          *(a5 + 112) = v101;
        }

        return result;
      }
    }

    else
    {
      v82 = *(v79 + 8);
      LODWORD(v83) = v82 - v81;
      if (v82 - v81 > 79)
      {
        goto LABEL_127;
      }
    }

    v85 = v83 - 80;
    v86 = *(v79 + 16);
    v87 = v80 == 0;
    if (v80)
    {
      v88 = *(v79 + 16);
    }

    else
    {
      v88 = 0;
    }

    if (v87)
    {
      v89 = *(v79 + 16);
    }

    else
    {
      v89 = 0;
    }

    v90 = v88 - v81 + v82;
    v91 = v82 - v81 - v89;
    if (v90 >= v85)
    {
      v90 = v85;
    }

    if (v90 <= v91)
    {
      v90 = v91;
    }

    v92 = v90 + v81;
    if (v90 + v81 <= v86)
    {
      v93 = 0;
    }

    else
    {
      v93 = *(v79 + 16);
    }

    v94 = v92 - v93;
    if (v92 > v86 || v94 < 0)
    {
      *(v79 + 32) = v94 >> 31;
    }

    *v79 = (v86 & (v94 >> 31)) + v94;
    v79 = *v48;
    goto LABEL_127;
  }

  v48 = (a1 + 12);
  v49 = *(a1 + 3);
  if (!v49)
  {
    goto LABEL_104;
  }

  if (v111)
  {
    while (1)
    {
      v53 = *v49;
      if (*(v49 + 32))
      {
        if ((*(v49 + 16) - v53 + *(v49 + 8)) < 0x40)
        {
          goto LABEL_104;
        }
      }

      else if ((*(v49 + 8) - v53) < 0x40)
      {
        goto LABEL_104;
      }

      v104 = 0;
      v105 = 0;
      WebRtc_ReadBuffer(v49, &v105, v109, 0x40uLL);
      WebRtc_ReadBuffer(*(a1 + 4), &v104, v108, 0x40uLL);
      webrtc::WebRtcAecm_ProcessBlock(a1, v105, v104, 0, v111);
      if (v54 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v55 = *v48;
      if (*v48)
      {
        break;
      }

LABEL_55:
      v49 = *(a1 + 3);
      if (!v49)
      {
        goto LABEL_104;
      }
    }

    v56 = v55[2];
    v57 = *v55;
    if (*(v55 + 8))
    {
      v52 = v55[1];
      v58 = v57 - v52;
      if (v58 >= 0x40)
      {
        v59 = 64;
      }

      else
      {
        v59 = v58;
      }

      v60 = v56 - v52;
      v61 = v59 - v60;
      if (v59 <= v60)
      {
LABEL_72:
        v61 = v59;
        goto LABEL_54;
      }
    }

    else
    {
      v52 = v55[1];
      v62 = v56 - (v52 - v57);
      if (v62 >= 0x40)
      {
        v59 = 64;
      }

      else
      {
        v59 = v62;
      }

      v60 = v56 - v52;
      v61 = v59 - v60;
      if (v59 <= v60)
      {
        goto LABEL_72;
      }
    }

    memcpy((v55[5] + v55[3] * v52), v111, v55[3] * v60);
    v52 = 0;
    v55[1] = 0;
    *(v55 + 8) = 1;
LABEL_54:
    memcpy((v55[5] + v55[3] * v52), v111 + v55[3] * (v59 - v61), v55[3] * v61);
    v55[1] += v61;
    goto LABEL_55;
  }

  while (1)
  {
    v50 = *v49;
    if (*(v49 + 32))
    {
      if ((*(v49 + 16) - v50 + *(v49 + 8)) < 0x40)
      {
        goto LABEL_104;
      }
    }

    else if ((*(v49 + 8) - v50) < 0x40)
    {
      goto LABEL_104;
    }

    v104 = 0;
    v105 = 0;
    WebRtc_ReadBuffer(v49, &v105, v109, 0x40uLL);
    WebRtc_ReadBuffer(*(a1 + 4), &v104, v108, 0x40uLL);
    webrtc::WebRtcAecm_ProcessBlock(a1, v105, v104, 0, v111);
    if (v51 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v49 = *(a1 + 3);
    if (!v49)
    {
      goto LABEL_104;
    }
  }
}

unint64_t webrtc::WebRtcAecm_CalcEnergies(uint64_t a1, uint16x8_t *a2, int a3, unsigned int a4, int32x4_t *a5)
{
  v10 = (a1 + 14012);
  memmove((a1 + 14018), (a1 + 14016), 0x7EuLL);
  if (a4)
  {
    v11 = __clz(a4);
    v12 = ((a4 << v11 >> 23) | 0x1F00) - ((*v10 + v11) << 8) + 896;
  }

  else
  {
    LOWORD(v12) = 896;
  }

  v10[2] = v12;
  v13 = *(a1 + 16000);
  v14 = *(v13 + 16);
  v15 = vmovl_high_s16(v14);
  v16 = vmovl_s16(*v14.i8);
  v17 = a2[1];
  v18 = vmovl_high_u16(*a2);
  v19 = vmovl_u16(*a2->i8);
  v20 = vmovl_high_u16(v17);
  v21 = vmovl_u16(*v17.i8);
  v22 = vmulq_s32(v19, vmovl_s16(*v13));
  v23 = vmulq_s32(v18, vmovl_high_s16(*v13));
  v24 = vmulq_s32(v21, v16);
  v25 = vmulq_s32(v20, v15);
  v26 = *(v13 + 32);
  v27 = *(v13 + 48);
  v28 = *(a1 + 16008);
  v29 = vmovl_high_s16(v27);
  v30 = vmovl_s16(*v27.i8);
  v31 = a2[2];
  v32 = a2[3];
  v33 = vmovl_high_u16(v31);
  v34 = vmovl_u16(*v31.i8);
  v35 = vmovl_high_u16(v32);
  v36 = *(v28 + 16);
  v37 = vmovl_u16(*v32.i8);
  v38 = vmulq_s32(v34, vmovl_s16(*v26.i8));
  v39 = vmulq_s32(v33, vmovl_high_s16(v26));
  v40 = vmulq_s32(v37, v30);
  v41 = vmulq_s32(v35, v29);
  v43 = *(v13 + 64);
  v42 = *(v13 + 80);
  v44 = vmovl_high_s16(v43);
  v46 = *(v28 + 32);
  v45 = *(v28 + 48);
  v47 = vmlaq_s32(vmulq_s32(vmovl_s16(*v36.i8), v21), vmovl_s16(*v45.i8), v37);
  v48 = a2[4];
  v49 = a2[5];
  v50 = vmovl_u16(*v49.i8);
  v51 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v36), v20), vmovl_high_s16(v45), v35);
  v52 = *(v28 + 64);
  v53 = *(v28 + 80);
  v54 = vmlaq_s32(v47, vmovl_s16(*v53.i8), v50);
  v55 = vmovl_high_s16(v42);
  v56 = vmulq_s32(v50, vmovl_s16(*v42.i8));
  v57 = vmovl_high_u16(v49);
  v58 = vmlaq_s32(v51, vmovl_high_s16(v53), v57);
  v59 = vmovl_high_u16(v48);
  v60 = vmulq_s32(v57, v55);
  v61 = vmovl_u16(*v48.i8);
  v62 = vmulq_s32(v61, vmovl_s16(*v43.i8));
  v63 = vmulq_s32(v59, v44);
  v64 = vmlaq_s32(vmulq_s32(vmovl_s16(*v28), v19), vmovl_s16(*v46.i8), v34);
  v65 = *(v13 + 96);
  v66 = *(v13 + 112);
  v67 = vmlaq_s32(vmlaq_s32(vmulq_s32(vmovl_high_s16(*v28), v18), vmovl_high_s16(v46), v33), vmovl_high_s16(v52), v59);
  v68 = a2[6];
  v69 = a2[7];
  v70 = vmovl_u16(*v68.i8);
  v71 = vmlaq_s32(v64, vmovl_s16(*v52.i8), v61);
  v72 = *(v28 + 96);
  v73 = vmulq_s32(v70, vmovl_s16(*v65.i8));
  v74 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v17.i8, *v32.i8), *v49.i8), *v69.i8), vaddw_u16(vaddw_u16(vaddl_u16(*a2->i8, *v31.i8), *v48.i8), *v68.i8)), vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v17, v32), v49), v69), vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(*a2, v31), v48), v68))));
  v75 = *(v28 + 112);
  v76 = vmovl_high_u16(v68);
  v77 = vmlaq_s32(v67, vmovl_high_s16(v72), v76);
  v78 = vmovl_u16(*v69.i8);
  v79 = vmulq_s32(v76, vmovl_high_s16(v65));
  v80 = vmlaq_s32(v54, vmovl_s16(*v75.i8), v78);
  v81 = vmulq_s32(v78, vmovl_s16(*v66.i8));
  v82 = vmovl_high_u16(v69);
  v83 = vmlaq_s32(v58, vmovl_high_s16(v75), v82);
  v84 = vmulq_s32(v82, vmovl_high_s16(v66));
  a5[2] = v24;
  a5[3] = v25;
  a5[6] = v40;
  a5[7] = v41;
  a5[10] = v56;
  a5[11] = v60;
  a5[14] = v81;
  a5[15] = v84;
  *a5 = v22;
  a5[1] = v23;
  a5[4] = v38;
  a5[5] = v39;
  a5[8] = v62;
  a5[9] = v63;
  a5[12] = v73;
  a5[13] = v79;
  v85 = a2[8].u16[0];
  LODWORD(v13) = v85 * *(v13 + 128);
  a5[16].i32[0] = v13;
  v86 = v74 + v85;
  v87 = vaddvq_s32(vaddq_s32(vaddq_s32(v80, vmlaq_s32(v71, vmovl_s16(*v72.i8), v70)), vaddq_s32(v83, v77))) + *(v28 + 128) * v85;
  v88 = v13 + vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v81, v56), vaddq_s32(v40, v24)), vaddq_s32(vaddq_s32(v73, v62), vaddq_s32(v38, v22))), vaddq_s32(vaddq_s32(vaddq_s32(v84, v60), vaddq_s32(v41, v25)), vaddq_s32(vaddq_s32(v79, v63), vaddq_s32(v39, v23)))));
  memmove((a1 + 14148), v10 + 67, 0x7EuLL);
  result = memmove((a1 + 14276), v10 + 131, 0x7EuLL);
  if (v86)
  {
    v90 = __clz(v86);
    v91 = ((v86 << v90 >> 23) | 0x1F00) - ((v90 + a3) << 8) + 896;
    v10[66] = v91;
    v92 = a3 + 12;
    if (v87)
    {
      goto LABEL_6;
    }
  }

  else
  {
    LOWORD(v91) = 896;
    v10[66] = 896;
    v92 = a3 + 12;
    if (v87)
    {
LABEL_6:
      v93 = __clz(v87);
      v94 = ((v87 << v93 >> 23) | 0x1F00) - ((v93 + v92) << 8) + 896;
      v10[67] = v94;
      if (v88)
      {
        goto LABEL_7;
      }

LABEL_22:
      v10[131] = 896;
      v96 = v91;
      if (v91 > 1025)
      {
        goto LABEL_8;
      }

LABEL_23:
      if (v96 <= v10[1619])
      {
        goto LABEL_24;
      }

      goto LABEL_40;
    }
  }

  LOWORD(v94) = 896;
  v10[67] = 896;
  if (!v88)
  {
    goto LABEL_22;
  }

LABEL_7:
  v95 = __clz(v88);
  v10[131] = ((v88 << v95 >> 23) | 0x1F00) - ((v95 + v92) << 8) + 896;
  v96 = v91;
  if (v91 <= 1025)
  {
    goto LABEL_23;
  }

LABEL_8:
  v97 = v10[1625];
  if (v10[1625])
  {
    v98 = 4;
  }

  else
  {
    v98 = 2;
  }

  if (v10[1625])
  {
    v99 = 11;
  }

  else
  {
    v99 = 8;
  }

  if (v10[1625])
  {
    v100 = 3;
  }

  else
  {
    v100 = 2;
  }

  v101 = v10[1616];
  result = (v10[1616] - 0x7FFF);
  LOWORD(v102) = v91;
  if (result >= 2)
  {
    if (v101 <= v91)
    {
      v102 = v101 + ((v91 - v101) >> v99);
    }

    else
    {
      v102 = v101 - ((v101 - v91) >> v100);
    }
  }

  v10[1616] = v102;
  v103 = v10[1617];
  LOWORD(v104) = v91;
  if ((v10[1617] - 0x7FFF) >= 2u)
  {
    if (v103 <= v91)
    {
      v104 = v103 + ((v91 - v103) >> v98);
    }

    else
    {
      v104 = v103 - ((v103 - v91) >> 11);
    }
  }

  v10[1617] = v104;
  v10[1618] = v104 - v102;
  v105 = ((230 * (2560 - v102)) >> 9) + 230;
  if ((2560 - v102) <= 0)
  {
    v105 = 230;
  }

  if (!v97 || (v106 = v10[1624], v106 >= 1025))
  {
    v10[1619] = v102 + v105;
    v10[1620] = v102 + v105 + 256;
    if (v96 > (v102 + v105))
    {
      goto LABEL_40;
    }

    goto LABEL_24;
  }

  v107 = v10[1619];
  if (v107 > v91)
  {
    v108 = v107 + ((v105 + v91 - v107) >> 6);
    v10[1619] = v108;
    v10[1624] = 0;
    v10[1620] = v108 + 256;
    if (v96 > v108)
    {
      goto LABEL_40;
    }

LABEL_24:
    *(v10 + 811) = 0;
    return result;
  }

  v10[1624] = v106 + 1;
  v10[1620] = v107 + 256;
  if (v96 <= v107)
  {
    goto LABEL_24;
  }

LABEL_40:
  if (!v10[1625] || v10[1618] >= 930)
  {
    *(v10 + 811) = 1;
    if (!*(a1 + 16))
    {
      return result;
    }

    goto LABEL_46;
  }

  if (*(v10 + 811) && *(a1 + 16))
  {
LABEL_46:
    *(a1 + 16) = 0;
    if (v94 > v12)
    {
      v109 = vshrq_n_s16(*(v28 + 16), 3uLL);
      *v28 = vshrq_n_s16(*v28, 3uLL);
      *(v28 + 16) = v109;
      v110 = vshrq_n_s16(*(v28 + 48), 3uLL);
      *(v28 + 32) = vshrq_n_s16(*(v28 + 32), 3uLL);
      *(v28 + 48) = v110;
      v111 = vshrq_n_s16(*(v28 + 80), 3uLL);
      *(v28 + 64) = vshrq_n_s16(*(v28 + 64), 3uLL);
      *(v28 + 80) = v111;
      v112 = vshrq_n_s16(*(v28 + 112), 3uLL);
      *(v28 + 96) = vshrq_n_s16(*(v28 + 96), 3uLL);
      *(v28 + 112) = v112;
      *(v28 + 128) = *(v28 + 128) >> 3;
      v10[67] -= 768;
      *(a1 + 16) = 1;
    }
  }

  return result;
}

void webrtc::WebRtcAecm_UpdateChannel(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, int a5, int32x4_t *a6)
{
  v6 = a1 + 14012;
  if (a5)
  {
    v7 = 0;
    v8 = a5;
    do
    {
      v16 = *(a1 + 16016);
      v17 = *(v16 + 4 * v7);
      v18 = __clz(v17);
      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(a2 + 2 * v7);
      v21 = __clz(v20 << 16) | 0x10;
      if (!*(a2 + 2 * v7))
      {
        v21 = 0;
      }

      v22 = v21 + v19;
      v23 = v17 >> (32 - v22);
      if (!v22)
      {
        v23 = 0;
      }

      v24 = v22 > 0x1F;
      if (v22 <= 0x1F)
      {
        v25 = 32 - v22;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v23 = *(v16 + 4 * v7);
      }

      v26 = v23 * v20;
      v27 = __clz(v23 * v20);
      if (!v26)
      {
        v27 = 0;
      }

      v28 = *(a4 + 2 * v7);
      v29 = __clz(v28 << 16) + 14;
      if (!*(a4 + 2 * v7))
      {
        LOWORD(v29) = 30;
      }

      v30 = (v25 - a3 + *v6 - 28 + v29) + 1;
      v31 = v27 - 2 + a3 + 28 - v25 - *v6;
      v32 = v30 < v27;
      if (v30 >= v27)
      {
        v33 = v27 - 2;
      }

      else
      {
        v33 = v25 - a3 + *v6 - 28 + v29;
      }

      if (!v32)
      {
        LOWORD(v29) = v31;
      }

      v34 = v26 << v33;
      v35 = v26 >> -v33;
      if (v33 >= 0)
      {
        v35 = v34;
      }

      v36 = v28 << v29;
      v37 = v28 >> -v29;
      if ((v29 & 0x8000u) == 0)
      {
        v37 = v36;
      }

      v38 = v37 - v35;
      if (v38)
      {
        v39 = 16 << a3 < v20;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        v40 = v21 + __clz(v38 ^ (v38 >> 31)) - 1;
        if (v40 < 32)
        {
          v41 = 32 - v40;
          v43 = -((-v38 >> v41) * v20);
          v42 = (v38 >> v41) * v20;
          if (v38 < 1)
          {
            v42 = v43;
          }
        }

        else
        {
          v41 = 0;
          v42 = v38 * v20;
        }

        v44 = v42 / (v7 + 1);
        v45 = v25 - v8 + 2 * v21 - v33 + v41 - 60;
        v46 = __clz(v44 ^ (v44 >> 31)) - 1;
        if (!v44)
        {
          v46 = 0;
        }

        if (v45 > v46)
        {
          v9 = 0x7FFFFFFF;
        }

        else
        {
          v47 = v44 << v45;
          v48 = v44 >> -v45;
          if (v45 >= 0)
          {
            v9 = v47;
          }

          else
          {
            v9 = v48;
          }
        }

        v10 = v9 + v17;
        v11 = v17 >> 31;
        v12 = v9 >> 31;
        v13 = v11 != v10 >> 31 && v11 == v12;
        v14 = (v10 >> 31) ^ 0x80000000;
        if (!v13)
        {
          v14 = v10;
        }

        v15 = v14 & ~(v14 >> 31);
        *(v16 + 4 * v7) = v15;
        *(*(a1 + 16008) + 2 * v7) = HIWORD(v15);
      }

      ++v7;
    }

    while (v7 != 65);
  }

  if (*(a1 + 17262))
  {
    v49 = 1;
  }

  else
  {
    v49 = (*(a1 + 17256) & 1) == 0;
  }

  if (v49)
  {
    if (*(a1 + 14144) >= *(a1 + 17252))
    {
      v75 = ++*(a1 + 17264);
      if (v75 >= 30)
      {
        v76 = *(a1 + 14146);
        v77 = __PAIR64__(vaddlvq_u16(vabdq_s16(*(a1 + 14274), *(a1 + 14016))), vaddlvq_u16(vabdq_s16(v76, *(a1 + 14016))));
        v76.i16[0] = *(a1 + 14162);
        v76.i16[2] = *(a1 + 14290);
        v78 = vshr_n_s32(vshl_n_s32(*v76.i8, 0x10uLL), 0x10uLL);
        v79 = vaba_s32(v77, v78, vdup_n_s32(*(a1 + 14032)));
        v78.i16[0] = *(a1 + 14164);
        v78.i16[2] = *(a1 + 14292);
        *v76.i8 = vdup_n_s32(*(a1 + 14034));
        v80 = vadd_s32(vaba_s32(v79, vshr_n_s32(vshl_n_s32(v78, 0x10uLL), 0x10uLL), *v76.i8), vabs_s32(__PAIR64__(*(a1 + 14294) - *(a1 + 14036), *(a1 + 14166) - *(a1 + 14036))));
        v76.i16[0] = *(a1 + 14170);
        v76.i16[2] = *(a1 + 14298);
        v81 = vshr_n_s32(vshl_n_s32(*v76.i8, 0x10uLL), 0x10uLL);
        v82 = vaba_s32(vaba_s32(v80, __PAIR64__(*(a1 + 14296), *(a1 + 14168)), vdup_n_s32(*(a1 + 14038))), v81, vdup_n_s32(*(a1 + 14040)));
        v81.i16[0] = *(a1 + 14172);
        v81.i16[2] = *(a1 + 14300);
        v76.i16[0] = *(a1 + 14174);
        v76.i16[2] = *(a1 + 14302);
        v83 = vaba_s32(v82, vshr_n_s32(vshl_n_s32(v81, 0x10uLL), 0x10uLL), vdup_n_s32(*(a1 + 14042)));
        v84 = vshr_n_s32(vshl_n_s32(*v76.i8, 0x10uLL), 0x10uLL);
        v85 = vaba_s32(v83, v84, vdup_n_s32(*(a1 + 14044)));
        v84.i16[0] = *(a1 + 14176);
        v84.i16[2] = *(a1 + 14304);
        v76.i16[0] = *(a1 + 14178);
        v76.i16[2] = *(a1 + 14306);
        v86 = vaba_s32(v85, vshr_n_s32(vshl_n_s32(v84, 0x10uLL), 0x10uLL), vdup_n_s32(*(a1 + 14046)));
        v87 = vshr_n_s32(vshl_n_s32(*v76.i8, 0x10uLL), 0x10uLL);
        v88 = vaba_s32(v86, v87, vdup_n_s32(*(a1 + 14048)));
        v87.i16[0] = *(a1 + 14180);
        v87.i16[2] = *(a1 + 14308);
        v76.i16[0] = *(a1 + 14182);
        v76.i16[2] = *(a1 + 14310);
        v89 = vaba_s32(v88, vshr_n_s32(vshl_n_s32(v87, 0x10uLL), 0x10uLL), vdup_n_s32(*(a1 + 14050)));
        v90 = vshr_n_s32(vshl_n_s32(*v76.i8, 0x10uLL), 0x10uLL);
        v91 = vaba_s32(v89, v90, vdup_n_s32(*(a1 + 14052)));
        v90.i16[0] = *(a1 + 14184);
        v90.i16[2] = *(a1 + 14312);
        v92 = vaba_s32(v91, vshr_n_s32(vshl_n_s32(v90, 0x10uLL), 0x10uLL), vdup_n_s32(*(a1 + 14054)));
        v93 = *(a1 + 17232);
        if (29 * v93 <= 32 * *(a1 + 17236) || 32 * v92.i32[1] >= (29 * v92.i32[0]))
        {
          v94 = *(a1 + 17240);
          if (v93 < v94 && 29 * v92.i32[1] > (32 * v92.i32[0]) && v92.i32[0] < v94)
          {
            v96 = *(a1 + 16000);
            v97 = *(a1 + 16008);
            v98 = *(v97 + 64);
            v100 = *(v97 + 16);
            v99 = *(v97 + 32);
            *(v96 + 48) = *(v97 + 48);
            *(v96 + 64) = v98;
            *(v96 + 16) = v100;
            *(v96 + 32) = v99;
            v102 = *(v97 + 96);
            v101 = *(v97 + 112);
            v103 = *(v97 + 80);
            *(v96 + 128) = *(v97 + 128);
            *(v96 + 96) = v102;
            *(v96 + 112) = v101;
            *(v96 + 80) = v103;
            *v96 = *v97;
            v104 = *(a1 + 16000);
            v105 = *(v104 + 16);
            v106 = *(v104 + 32);
            v107 = *(v104 + 48);
            v108 = *(a2 + 16);
            v109 = *(a2 + 32);
            v110 = *(a2 + 48);
            v111 = vmulq_s32(vmovl_u16(*a2), vmovl_s16(*v104));
            v112 = vmulq_s32(vmovl_high_u16(*a2), vmovl_high_s16(*v104));
            a6[6] = vmulq_s32(vmovl_u16(*v110.i8), vmovl_s16(*v107.i8));
            a6[7] = vmulq_s32(vmovl_high_u16(v110), vmovl_high_s16(v107));
            a6[4] = vmulq_s32(vmovl_u16(*v109.i8), vmovl_s16(*v106.i8));
            a6[5] = vmulq_s32(vmovl_high_u16(v109), vmovl_high_s16(v106));
            a6[2] = vmulq_s32(vmovl_u16(*v108.i8), vmovl_s16(*v105.i8));
            a6[3] = vmulq_s32(vmovl_high_u16(v108), vmovl_high_s16(v105));
            *a6 = v111;
            a6[1] = v112;
            v113 = *(v104 + 64);
            v114 = *(v104 + 80);
            v115 = *(v104 + 96);
            v116 = *(v104 + 112);
            v117 = *(a2 + 64);
            v118 = *(a2 + 80);
            v119 = *(a2 + 96);
            v120 = *(a2 + 112);
            a6[14] = vmulq_s32(vmovl_u16(*v120.i8), vmovl_s16(*v116.i8));
            a6[15] = vmulq_s32(vmovl_high_u16(v120), vmovl_high_s16(v116));
            a6[12] = vmulq_s32(vmovl_u16(*v119.i8), vmovl_s16(*v115.i8));
            a6[13] = vmulq_s32(vmovl_high_u16(v119), vmovl_high_s16(v115));
            a6[10] = vmulq_s32(vmovl_u16(*v118.i8), vmovl_s16(*v114.i8));
            a6[11] = vmulq_s32(vmovl_high_u16(v118), vmovl_high_s16(v114));
            a6[8] = vmulq_s32(vmovl_u16(*v117.i8), vmovl_s16(*v113.i8));
            a6[9] = vmulq_s32(vmovl_high_u16(v117), vmovl_high_s16(v113));
            a6[16].i32[0] = *(a2 + 128) * *(v104 + 128);
            v121 = *(a1 + 17240);
            if (v121 == 0x7FFFFFFF)
            {
              v122 = *(a1 + 17232) + v92.i32[0];
            }

            else
            {
              v122 = v121 + ((205 * (v92.i32[0] - 5 * v121 / 8)) >> 8);
            }

            *(a1 + 17240) = v122;
          }
        }

        else
        {
          v123 = v92;
          webrtc::ResetAdaptiveChannelC(a1);
          v92 = v123;
        }

        *(v6 + 3252) = 0;
        *(v6 + 3220) = v92;
      }
    }

    else
    {
      *(a1 + 17264) = 0;
    }
  }

  else
  {
    v50 = *(a1 + 16000);
    v51 = *(a1 + 16008);
    v52 = *(v51 + 64);
    v54 = *(v51 + 16);
    v53 = *(v51 + 32);
    *(v50 + 48) = *(v51 + 48);
    *(v50 + 64) = v52;
    *(v50 + 16) = v54;
    *(v50 + 32) = v53;
    v56 = *(v51 + 96);
    v55 = *(v51 + 112);
    v57 = *(v51 + 80);
    *(v50 + 128) = *(v51 + 128);
    *(v50 + 96) = v56;
    *(v50 + 112) = v55;
    *(v50 + 80) = v57;
    *v50 = *v51;
    v58 = *(a1 + 16000);
    v59 = *(a2 + 32);
    v60 = *(a2 + 48);
    v61 = *(a2 + 16);
    v62 = *(v58 + 16);
    v63 = *(v58 + 32);
    v64 = *(v58 + 48);
    v65 = vmulq_s32(vmovl_u16(*a2), vmovl_s16(*v58));
    v66 = vmulq_s32(vmovl_high_u16(*a2), vmovl_high_s16(*v58));
    a6[6] = vmulq_s32(vmovl_u16(*v60.i8), vmovl_s16(*v64.i8));
    a6[7] = vmulq_s32(vmovl_high_u16(v60), vmovl_high_s16(v64));
    a6[4] = vmulq_s32(vmovl_u16(*v59.i8), vmovl_s16(*v63.i8));
    a6[5] = vmulq_s32(vmovl_high_u16(v59), vmovl_high_s16(v63));
    a6[2] = vmulq_s32(vmovl_u16(*v61.i8), vmovl_s16(*v62.i8));
    a6[3] = vmulq_s32(vmovl_high_u16(v61), vmovl_high_s16(v62));
    *a6 = v65;
    a6[1] = v66;
    v67 = *(v58 + 64);
    v68 = *(v58 + 80);
    v69 = *(v58 + 96);
    v70 = *(v58 + 112);
    v71 = *(a2 + 64);
    v72 = *(a2 + 80);
    v73 = *(a2 + 96);
    v74 = *(a2 + 112);
    a6[14] = vmulq_s32(vmovl_u16(*v74.i8), vmovl_s16(*v70.i8));
    a6[15] = vmulq_s32(vmovl_high_u16(v74), vmovl_high_s16(v70));
    a6[12] = vmulq_s32(vmovl_u16(*v73.i8), vmovl_s16(*v69.i8));
    a6[13] = vmulq_s32(vmovl_high_u16(v73), vmovl_high_s16(v69));
    a6[10] = vmulq_s32(vmovl_u16(*v72.i8), vmovl_s16(*v68.i8));
    a6[11] = vmulq_s32(vmovl_high_u16(v72), vmovl_high_s16(v68));
    a6[8] = vmulq_s32(vmovl_u16(*v71.i8), vmovl_s16(*v67.i8));
    a6[9] = vmulq_s32(vmovl_high_u16(v71), vmovl_high_s16(v67));
    a6[16].i32[0] = *(a2 + 128) * *(v58 + 128);
  }
}

__n128 webrtc::WebRtcAecm_ProcessBlock(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, int16x8_t *a5)
{
  v393 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 14000);
  v9 = (v379 & 0xFFFFFFFFFFFFFFE0);
  if (*(a1 + 17262) <= 1)
  {
    v10 = *(a1 + 14004);
    if (v10 <= 0x1FF)
    {
      v11 = v10 > 0x3FF;
    }

    else
    {
      v11 = (v10 > 0x3FF) + 1;
    }

    *(a1 + 17262) = v11;
  }

  v12 = *(a1 + 16024);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  v12[10] = a2[2];
  v12[11] = v15;
  v12[8] = v13;
  v12[9] = v14;
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[7];
  v12[14] = a2[6];
  v12[15] = v18;
  v12[12] = v16;
  v12[13] = v17;
  v19 = *(a1 + 16040);
  v20 = *a3;
  v21 = a3[1];
  v22 = a3[3];
  v19[10] = a3[2];
  v19[11] = v22;
  v19[8] = v20;
  v19[9] = v21;
  v23 = a3[4];
  v24 = a3[5];
  v25 = a3[7];
  v19[14] = a3[6];
  v19[15] = v25;
  v19[12] = v23;
  v19[13] = v24;
  if (a4)
  {
    v26 = *(a1 + 16032);
    v27 = *a4;
    v28 = a4[1];
    v29 = a4[3];
    v26[10] = a4[2];
    v26[11] = v29;
    v26[8] = v27;
    v26[9] = v28;
    v30 = a4[4];
    v31 = a4[5];
    v32 = a4[7];
    v26[14] = a4[6];
    v26[15] = v32;
    v26[12] = v30;
    v26[13] = v31;
  }

  v370 = 0;
  v369 = 0;
  v35 = v34;
  v36 = v8->i16[6];
  v8->i16[7] = v36;
  v8->i16[6] = v34;
  if (a4)
  {
    v368 = v382;
    v8->i16[5] = v8->i16[4];
    v8->i16[4] = v37;
  }

  else
  {
    v8->i16[5] = v36;
    v8->i16[4] = v34;
    v369 = v370;
    v368 = v383;
  }

  v38 = *(a1 + 13596);
  if (v38 <= 98)
  {
    v39 = v38 + 1;
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 13596) = v39;
  *(a1 + 13600 + 4 * v39) = v33;
  v40 = a1 + 594 + 130 * *(a1 + 13596);
  v41 = v384[7];
  *(v40 + 96) = v384[6];
  *(v40 + 112) = v41;
  *(v40 + 128) = v385;
  v42 = v384[3];
  *(v40 + 32) = v384[2];
  *(v40 + 48) = v42;
  v43 = v384[5];
  *(v40 + 64) = v384[4];
  *(v40 + 80) = v43;
  result = v384[1];
  *v40 = v384[0];
  *(v40 + 16) = result;
  v45 = *(a1 + 576);
  if (!v45)
  {
    return result;
  }

  if (*(v45 + 12) != 65)
  {
    return result;
  }

  v46 = webrtc::BinarySpectrumFix(v384, *v45, v33, (v45 + 8));
  v47 = *(v45 + 16);
  memmove((*(v47 + 8) + 4), *(v47 + 8), 4 * *(v47 + 16) - 4);
  v48 = *v47;
  **(v47 + 8) = v46;
  memmove(v48 + 1, v48, 4 * *(v47 + 16) - 4);
  v49 = v46 - (((v46 >> 2) & 0x9249249) + ((v46 >> 1) & 0x5B6DB6DB));
  v50 = ((v49 + (v49 >> 3)) & 0xC71C71C7) + (((v49 + (v49 >> 3)) & 0xC71C71C7) >> 6);
  **v47 = (v50 + (v50 >> 12) + HIBYTE(v50)) & 0x3F;
  v51 = *(a1 + 584);
  if (!v51)
  {
    return result;
  }

  if (*(v51 + 12) != 65)
  {
    return result;
  }

  v52 = webrtc::BinarySpectrumFix(v383, *v51, v35, (v51 + 8));
  v55 = webrtc::WebRtc_ProcessBinarySpectrum(*(v51 + 16), v52, v53, v54);
  if (v55 == -1)
  {
    return result;
  }

  if (v55 == -2)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  if (v8->i16[1] >= 0)
  {
    v56 = v8->i16[1];
  }

  v57 = *(a1 + 13596);
  v58 = __OFSUB__(v57, v56);
  v59 = v57 - v56;
  if (v59 < 0 != v58)
  {
    v59 += 100;
  }

  v60 = *(a1 + 13600 + 4 * v59);
  v61 = (a1 + 594 + 130 * v59);
  webrtc::WebRtcAecm_CalcEnergies(a1, v61, v60, v370, (v380 & 0xFFFFFFFFFFFFFFE0));
  v62 = v8[203].i32[2];
  if (v62)
  {
    if (v8[203].i16[7] < 1)
    {
      LOWORD(v62) = 1;
    }

    else
    {
      v62 = v8[202].i16[6];
      if (v62 < v8[202].i16[7] && v8[203].i16[0])
      {
        LOWORD(v62) = 9 - 9 * (v8[9].i16[0] - v62) / v8[203].i16[0];
      }

      else
      {
        LOWORD(v62) = 10;
      }

      if (v62 <= 1)
      {
        LOWORD(v62) = 1;
      }
    }
  }

  v366 = (v381 & 0xFFFFFFFFFFFFFFE0);
  v63 = (v378 & 0xFFFFFFFFFFFFFFE0);
  ++*(a1 + 14004);
  webrtc::WebRtcAecm_UpdateChannel(a1, v61, v60, v383, v62, (v380 & 0xFFFFFFFFFFFFFFE0));
  if (v8[203].i32[2])
  {
    v64 = (v8[1].i16[0] - v8[17].i16[1]);
    if (v64 < 0)
    {
      v64 = -v64;
    }

    v64 = v64;
    if (v64 > 399)
    {
      v67 = v8[204].i16[4];
    }

    else
    {
      if (v64 > 199)
      {
        v65 = 1374389535 * ((400 - v64) * v8[204].i16[6] + 100);
        LOWORD(v65) = (v65 >> 38) + (v65 >> 63);
        v66 = v8[204].i16[4];
      }

      else
      {
        LODWORD(v65) = (v8[204].i16[5] * v64 + 100) / -200;
        v66 = v8[204].i16[3];
      }

      v67 = v66 + v65;
    }
  }

  else
  {
    v67 = 0;
  }

  v68 = 0;
  LOWORD(v69) = 0;
  v70 = v8[204].i16[2];
  if (v67 > v70)
  {
    v70 = v67;
  }

  v8[204].i16[2] = v67;
  v71 = v8[204].i16[1] + ((v70 - v8[204].i16[1]) >> 4);
  v72 = v71;
  v8[204].i16[1] = v71;
  v73 = a1 + 16056;
  v74 = a1 + 16316;
  v75 = &v8->i16[4];
  v367 = (&v8->u64[1] + 2);
  v76 = __clz((v71 ^ (v71 >> 15))) - 16;
  v77 = v71;
  if (v71)
  {
    v78 = v76;
  }

  else
  {
    v78 = 1;
  }

  v79 = 16 - v78;
  v80 = v78 + 1;
  do
  {
    v82 = *(v73 + 4 * v68) + ((50 * (*((v380 & 0xFFFFFFFFFFFFFFE0) + 4 * v68) - *(v73 + 4 * v68))) >> 8);
    *(v73 + 4 * v68) = v82;
    v83 = __clz(v82 ^ (v82 >> 31)) - 1;
    if (v82)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    if (v84 >= v79)
    {
      v87 = v82 * v77;
      v85 = *v75;
      v86 = *v75 - v60 - 6;
      v88 = *(v74 + 2 * v68);
      v89 = v88;
      if (!*(v74 + 2 * v68))
      {
        goto LABEL_65;
      }
    }

    else
    {
      v85 = *v75;
      v86 = *v75 - (v80 + v84 + v60) + 11;
      if ((17 - (v80 + v84)) <= v84)
      {
        v87 = (v72 >> (17 - (v80 + v84))) * v82;
        v88 = *(v74 + 2 * v68);
        v89 = v88;
        if (!*(v74 + 2 * v68))
        {
LABEL_65:
          LOWORD(v91) = v85 - v367->i16[0];
          goto LABEL_66;
        }
      }

      else
      {
        v87 = (v82 >> (17 - (v80 + v84))) * v72;
        v88 = *(v74 + 2 * v68);
        v89 = v88;
        if (!*(v74 + 2 * v68))
        {
          goto LABEL_65;
        }
      }
    }

    v90 = __clz(v89 ^ (v89 >> 15)) - 17;
    v91 = (v85 - v367->i16[0]);
    LOWORD(v92) = v90 - v91;
    if (v90 < v91)
    {
      v93 = v88 << v90;
      v92 = v92;
      v94 = v368[v68] >> (v91 - v90);
      goto LABEL_69;
    }

LABEL_66:
    v92 = 0;
    v95 = v89 >> -v91;
    v93 = v89 << v91;
    if ((v91 & 0x8000u) != 0)
    {
      v93 = v95;
    }

    LOWORD(v94) = v368[v68];
LABEL_69:
    v96 = v93 + ((v94 - v93) >> 4);
    v97 = (v93 + ((v94 - v93) >> 4));
    v98 = __clz((v96 ^ (v97 >> 15))) - 17;
    if (!v96)
    {
      v98 = 0;
    }

    v99 = -v92;
    v100 = v97 >> v92;
    if (v92 >= 0)
    {
      v101 = v100;
    }

    else
    {
      v101 = v96 << -v92;
    }

    v102 = v96 & 1;
    if (v98 < v99 && v102 != 0)
    {
      v101 = 0x7FFF;
    }

    *(v74 + 2 * v68) = v101;
    if (v87)
    {
      v75 = &v8->i16[4];
      if (v101 && ((v104 = (v87 + (v101 >> 1)) / v101, v105 = v104 << v86, v106 = v104 >> -v86, v86 >= 0) ? (v107 = v105) : (v107 = v106), v107 <= 0x4000))
      {
        if (v107 < 0)
        {
          *&v371[2 * v68] = 0x4000;
          v81 = 1;
        }

        else
        {
          *&v371[2 * v68] = 0x4000 - v107;
          v81 = v107 != 0x4000;
        }
      }

      else
      {
        v81 = 0;
        *&v371[2 * v68] = 0;
      }
    }

    else
    {
      *&v371[2 * v68] = 0x4000;
      v81 = 1;
      v75 = &v8->i16[4];
    }

    v69 = (v69 + v81);
    ++v68;
  }

  while (v68 != 65);
  if (*(a1 + 568) == 2)
  {
    *v371 = vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*v371, *v371), 0xEuLL), vmull_high_s16(*v371, *v371), 0xEuLL);
    *&v371[16] = vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*&v371[16], *&v371[16]), 0xEuLL), vmull_high_s16(*&v371[16], *&v371[16]), 0xEuLL);
    v108 = *&v371[32];
    v109 = *&v371[48];
    v110 = vmull_high_s16(v108, v108);
    v111 = vmull_s16(*v108.i8, *v108.i8);
    v112 = vmull_s16(*v109.i8, *v109.i8);
    v113 = vmull_high_s16(v109, v109);
    v114 = vshrq_n_u32(v113, 0xEuLL);
    v115 = vshrq_n_u32(v112, 0xEuLL);
    *v112.i8 = vshrn_n_s32(v112, 0xEuLL);
    v116 = v112.i16[0];
    v117 = vshrn_high_n_s32(*v112.i8, v113, 0xEuLL);
    *&v371[32] = vshrn_high_n_s32(vshrn_n_s32(v111, 0xEuLL), v110, 0xEuLL);
    v118 = v372;
    v119 = v373;
    v120 = vmull_s16(*v118.i8, *v118.i8);
    v121 = vmull_high_s16(v118, v118);
    v122 = vmull_s16(*v119.i8, *v119.i8);
    v123 = vmull_high_s16(v119, v119);
    v124 = vshrq_n_u32(v121, 0xEuLL);
    v125 = vshrq_n_u32(v120, 0xEuLL);
    v126 = vshrq_n_u32(v123, 0xEuLL);
    v127 = vshrq_n_u32(v122, 0xEuLL);
    v128 = vshrn_high_n_s32(vshrn_n_s32(v120, 0xEuLL), v121, 0xEuLL);
    v129 = vshrn_high_n_s32(vshrn_n_s32(v122, 0xEuLL), v123, 0xEuLL);
    v130 = v374;
    v131 = v375;
    v132 = vmull_s16(*v130.i8, *v130.i8);
    v133 = vmull_high_s16(v130, v130);
    v134 = vmull_s16(*v131.i8, *v131.i8);
    v135 = vmull_high_s16(v131, v131);
    v136 = vshrq_n_u32(v133, 0xEuLL);
    v137 = vshrq_n_u32(v132, 0xEuLL);
    v138 = vshrq_n_u32(v135, 0xEuLL);
    v139 = vshrq_n_u32(v134, 0xEuLL);
    v140 = vshrn_high_n_s32(vshrn_n_s32(v132, 0xEuLL), v133, 0xEuLL);
    v141 = vshrn_high_n_s32(vshrn_n_s32(v134, 0xEuLL), v135, 0xEuLL);
    v142 = 818089009 * (vaddvq_s32(vaddw_s16(vaddq_s32(vaddl_s16(*&v371[8], *&v371[24]), vaddl_high_s16(*&v371[8], *&v371[24])), *&v371[40])) + v116);
    v143 = (v142 >> 63) + (SHIDWORD(v142) >> 2);
    v144 = vdupq_n_s32(v143);
    v145 = vdupq_n_s16(v143);
    *&v371[48] = vbslq_s8(vuzp1q_s16(vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v115, 0x10uLL), 0x10uLL), v144), vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v114, 0x10uLL), 0x10uLL), v144)), v145, v117);
    v372 = vbslq_s8(vuzp1q_s16(vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v125, 0x10uLL), 0x10uLL), v144), vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v124, 0x10uLL), 0x10uLL), v144)), v145, v128);
    v373 = vbslq_s8(vuzp1q_s16(vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v127, 0x10uLL), 0x10uLL), v144), vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v126, 0x10uLL), 0x10uLL), v144)), v145, v129);
    v374 = vbslq_s8(vuzp1q_s16(vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v137, 0x10uLL), 0x10uLL), v144), vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v136, 0x10uLL), 0x10uLL), v144)), v145, v140);
    v375 = vbslq_s8(vuzp1q_s16(vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v139, 0x10uLL), 0x10uLL), v144), vcgtq_s32(vshrq_n_s32(vshlq_n_s32(v138, 0x10uLL), 0x10uLL), v144)), v145, v141);
    if (v143 >= ((v376 * v376) >> 14))
    {
      LOWORD(v143) = (v376 * v376) >> 14;
    }

    v376 = v143;
  }

  if (v8->i16[0])
  {
    v146 = 0;
    v147 = v63[16].u64 + 4;
    v149 = v371 < v9 + 260 && v377 > v9;
    v151 = v9 + 130 > v63 && v147 > v9;
    v152 = (v69 > 2) << 14;
    v153 = v377 <= v63 || v371 >= v147;
    if (v153 && !v149 && !v151)
    {
      v154 = vdupq_n_s16(v152);
      v155 = vdup_n_s8(v69 > 2);
      v156.i64[0] = 0x4000400040004000;
      v156.i64[1] = 0x4000400040004000;
      v157 = vdupq_n_s16(0xCCDu);
      v158 = vbslq_s8(vcgtq_s16(*v371, v156), v156, vbicq_s8(*v371, vcgtq_s16(v157, *v371)));
      *v371 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(v155, vmovn_s16(vceqq_s16(v158, v156)))), 0xFuLL)), v156, vshrn_high_n_s32(vshrn_n_s32(vmull_u16(*v154.i8, *v158.i8), 0xEuLL), vmull_high_u16(v154, v158), 0xEuLL));
      v159 = (v379 & 0xFFFFFFFFFFFFFFE0);
      v418 = vld2q_s16(v159);
      v159 += 16;
      v160 = vmovl_u16(*v371);
      v161 = vmovl_high_u16(*v371);
      v425.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v160, vmovl_s16(*v418.val[0].i8)), 0xEuLL), vmulq_s32(v161, vmovl_high_s16(v418.val[0])), 0xEuLL);
      v425.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v160, vmovl_s16(*v418.val[1].i8)), 0xEuLL), vmulq_s32(v161, vmovl_high_s16(v418.val[1])), 0xEuLL);
      v162 = (v378 & 0xFFFFFFFFFFFFFFE0);
      vst2q_s16(v162, v425);
      v162 += 16;
      v163 = vbslq_s8(vcgtq_s16(*&v371[16], v156), v156, vbicq_s8(*&v371[16], vcgtq_s16(v157, *&v371[16])));
      v164 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(v155, vmovn_s16(vceqq_s16(v163, v156)))), 0xFuLL)), v156, vshrn_high_n_s32(vshrn_n_s32(vmull_u16(*v154.i8, *v163.i8), 0xEuLL), vmull_high_u16(v154, v163), 0xEuLL));
      v419 = vld2q_s16(v159);
      v165 = vmovl_u16(*v164.i8);
      v425.val[0] = vmovl_high_u16(v164);
      v425.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v165, vmovl_s16(*v419.val[0].i8)), 0xEuLL), vmulq_s32(v425.val[0], vmovl_high_s16(v419.val[0])), 0xEuLL);
      v166 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v165, vmovl_s16(*v419.val[1].i8)), 0xEuLL), vmulq_s32(v425.val[0], vmovl_high_s16(v419.val[1])), 0xEuLL);
      vst2q_s16(v162, *(&v425 + 16));
      v419.val[1] = *&v371[48];
      v419.val[0] = vbslq_s8(vcgtq_s16(*&v371[32], v156), v156, vbicq_s8(*&v371[32], vcgtq_s16(v157, *&v371[32])));
      v419.val[0] = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(v155, vmovn_s16(vceqq_s16(v419.val[0], v156)))), 0xFuLL)), v156, vshrn_high_n_s32(vshrn_n_s32(vmull_u16(*v154.i8, *v419.val[0].i8), 0xEuLL), vmull_high_u16(v154, v419.val[0]), 0xEuLL));
      v167 = v9 + 32;
      v422 = vld2q_s16(v167);
      v425.val[1] = vmovl_u16(*v419.val[0].i8);
      v168 = vmovl_high_u16(v419.val[0]);
      v426.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v425.val[1], vmovl_s16(*v422.val[0].i8)), 0xEuLL), vmulq_s32(v168, vmovl_high_s16(v422.val[0])), 0xEuLL);
      v426.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v425.val[1], vmovl_s16(*v422.val[1].i8)), 0xEuLL), vmulq_s32(v168, vmovl_high_s16(v422.val[1])), 0xEuLL);
      i16 = v63[4].i16;
      vst2q_s16(i16, v426);
      v419.val[1] = vbslq_s8(vcgtq_s16(v419.val[1], v156), v156, vbicq_s8(v419.val[1], vcgtq_s16(v157, v419.val[1])));
      v419.val[1] = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(v155, vmovn_s16(vceqq_s16(v419.val[1], v156)))), 0xFuLL)), v156, vshrn_high_n_s32(vshrn_n_s32(vmull_u16(*v154.i8, *v419.val[1].i8), 0xEuLL), vmull_high_u16(v154, v419.val[1]), 0xEuLL));
      v170 = v9 + 48;
      v423 = vld2q_s16(v170);
      v425.val[1] = vmovl_u16(*v419.val[1].i8);
      v171 = vmovl_high_u16(v419.val[1]);
      v426.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v425.val[1], vmovl_s16(*v423.val[0].i8)), 0xEuLL), vmulq_s32(v171, vmovl_high_s16(v423.val[0])), 0xEuLL);
      v426.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v425.val[1], vmovl_s16(*v423.val[1].i8)), 0xEuLL), vmulq_s32(v171, vmovl_high_s16(v423.val[1])), 0xEuLL);
      v172 = v63[6].i16;
      vst2q_s16(v172, v426);
      v423.val[0] = v373;
      v173 = vbslq_s8(vcgtq_s16(v372, v156), v156, vbicq_s8(v372, vcgtq_s16(v157, v372)));
      v174 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(v155, vmovn_s16(vceqq_s16(v173, v156)))), 0xFuLL)), v156, vshrn_high_n_s32(vshrn_n_s32(vmull_u16(*v154.i8, *v173.i8), 0xEuLL), vmull_high_u16(v154, v173), 0xEuLL));
      v175 = v9 + 64;
      v425 = vld2q_s16(v175);
      v426.val[0] = vmovl_u16(*v174.i8);
      v426.val[1] = vmovl_high_u16(v174);
      v427.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v426.val[0], vmovl_s16(*v423.val[1].i8)), 0xEuLL), vmulq_s32(v426.val[1], vmovl_high_s16(v423.val[1])), 0xEuLL);
      v427.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v426.val[0], vmovl_s16(*v425.val[0].i8)), 0xEuLL), vmulq_s32(v426.val[1], vmovl_high_s16(v425.val[0])), 0xEuLL);
      v176 = v63[8].i16;
      vst2q_s16(v176, v427);
      *&v371[16] = v164;
      *&v371[32] = v419;
      v372 = v174;
      v177 = vbslq_s8(vcgtq_s16(v423.val[0], v156), v156, vbicq_s8(v423.val[0], vcgtq_s16(v157, v423.val[0])));
      v178 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(v155, vmovn_s16(vceqq_s16(v177, v156)))), 0xFuLL)), v156, vshrn_high_n_s32(vshrn_n_s32(vmull_u16(*v154.i8, *v177.i8), 0xEuLL), vmull_high_u16(v154, v177), 0xEuLL));
      v179 = v9 + 80;
      v420 = vld2q_s16(v179);
      v423.val[1] = vmovl_u16(*v178.i8);
      v425.val[0] = vmovl_high_u16(v178);
      v425.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v423.val[1], vmovl_s16(*v420.val[0].i8)), 0xEuLL), vmulq_s32(v425.val[0], vmovl_high_s16(v420.val[0])), 0xEuLL);
      v180 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v423.val[1], vmovl_s16(*v420.val[1].i8)), 0xEuLL), vmulq_s32(v425.val[0], vmovl_high_s16(v420.val[1])), 0xEuLL);
      v181 = v63[10].i16;
      vst2q_s16(v181, *(&v425 + 16));
      v420.val[1] = v375;
      v420.val[0] = vbslq_s8(vcgtq_s16(v374, v156), v156, vbicq_s8(v374, vcgtq_s16(v157, v374)));
      v420.val[0] = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(v155, vmovn_s16(vceqq_s16(v420.val[0], v156)))), 0xFuLL)), v156, vshrn_high_n_s32(vshrn_n_s32(vmull_u16(*v154.i8, *v420.val[0].i8), 0xEuLL), vmull_high_u16(v154, v420.val[0]), 0xEuLL));
      v182 = v9 + 96;
      v424 = vld2q_s16(v182);
      v425.val[1] = vmovl_u16(*v420.val[0].i8);
      v183 = vmovl_high_u16(v420.val[0]);
      v426.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v425.val[1], vmovl_s16(*v424.val[0].i8)), 0xEuLL), vmulq_s32(v183, vmovl_high_s16(v424.val[0])), 0xEuLL);
      v426.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v425.val[1], vmovl_s16(*v424.val[1].i8)), 0xEuLL), vmulq_s32(v183, vmovl_high_s16(v424.val[1])), 0xEuLL);
      v184 = v63[12].i16;
      vst2q_s16(v184, v426);
      v373 = v178;
      v374 = v420.val[0];
      v185 = vbslq_s8(vcgtq_s16(v420.val[1], v156), v156, vbicq_s8(v420.val[1], vcgtq_s16(v157, v420.val[1])));
      v375 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(v155, vmovn_s16(vceqq_s16(v185, v156)))), 0xFuLL)), v156, vshrn_high_n_s32(vshrn_n_s32(vmull_u16(*v154.i8, *v185.i8), 0xEuLL), vmull_high_u16(v154, v185), 0xEuLL));
      v186 = v9 + 112;
      v409 = vld2q_s16(v186);
      v420.val[0] = vmovl_u16(*v375.i8);
      v187 = vmovl_high_u16(v375);
      v420.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v420.val[0], vmovl_s16(*v409.val[0].i8)), 0xEuLL), vmulq_s32(v187, vmovl_high_s16(v409.val[0])), 0xEuLL);
      v188 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(v420.val[0], vmovl_s16(*v409.val[1].i8)), 0xEuLL), vmulq_s32(v187, vmovl_high_s16(v409.val[1])), 0xEuLL);
      v189 = v63[14].i16;
      vst2q_s16(v189, *(&v420 + 16));
      v146 = 64;
    }

    v190 = (4 * v146) | 2;
    v191 = 2 * v146;
    v192 = (v63->i16 + v190);
    v193 = (v9 + v190);
    do
    {
      v194 = *&v371[v191];
      v195 = v194;
      if (v194 < 3277)
      {
        v194 = 0;
      }

      if (v195 > 0x4000)
      {
        v194 = 0x4000;
      }

      v196 = v194 != 0x4000 || v69 <= 2;
      v197 = (v152 * v194) >> 14;
      if (!v196)
      {
        LOWORD(v197) = 0x4000;
      }

      *&v371[v191] = v197;
      *(v192 - 1) = (v197 * *(v193 - 1) + 0x2000) >> 14;
      *v192 = (v197 * *v193 + 0x2000) >> 14;
      v192 += 2;
      v191 += 2;
      v193 += 2;
    }

    while (v191 != 130);
  }

  else
  {
    v198 = 0;
    v199 = v63[16].u64 + 4;
    v201 = v377 > v63 && v371 < v199;
    v202 = v199 > v9 && v9 + 130 > v63;
    if (!v202 && !v201)
    {
      v203 = (v379 & 0xFFFFFFFFFFFFFFE0);
      v394 = vld2q_s16(v203);
      v203 += 16;
      v417.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v371, *v394.val[0].i8), 0xEuLL), vmull_high_s16(*v371, v394.val[0]), 0xEuLL);
      v417.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v394.val[1].i8, *v371), 0xEuLL), vmull_high_s16(v394.val[1], *v371), 0xEuLL);
      v204 = (v378 & 0xFFFFFFFFFFFFFFE0);
      vst2q_s16(v204, v417);
      v204 += 16;
      v395 = vld2q_s16(v203);
      v417.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*&v371[16], *v395.val[0].i8), 0xEuLL), vmull_high_s16(*&v371[16], v395.val[0]), 0xEuLL);
      v417.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v395.val[1].i8, *&v371[16]), 0xEuLL), vmull_high_s16(v395.val[1], *&v371[16]), 0xEuLL);
      vst2q_s16(v204, v417);
      v205 = v9 + 32;
      v396 = vld2q_s16(v205);
      v206 = *&v371[48];
      v417.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*&v371[32], *v396.val[0].i8), 0xEuLL), vmull_high_s16(*&v371[32], v396.val[0]), 0xEuLL);
      v207 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v396.val[1].i8, *&v371[32]), 0xEuLL), vmull_high_s16(v396.val[1], *&v371[32]), 0xEuLL);
      v208 = v63[4].i16;
      vst2q_s16(v208, *(&v417 + 16));
      v209 = v9 + 48;
      v397 = vld2q_s16(v209);
      v417.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v206.i8, *v397.val[0].i8), 0xEuLL), vmull_high_s16(v206, v397.val[0]), 0xEuLL);
      v417.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v397.val[1].i8, *v206.i8), 0xEuLL), vmull_high_s16(v397.val[1], v206), 0xEuLL);
      v210 = v63[6].i16;
      vst2q_s16(v210, v417);
      v211 = v9 + 64;
      v398 = vld2q_s16(v211);
      v212 = v373;
      v417.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v372.i8, *v398.val[0].i8), 0xEuLL), vmull_high_s16(v372, v398.val[0]), 0xEuLL);
      v213 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v398.val[1].i8, *v372.i8), 0xEuLL), vmull_high_s16(v398.val[1], v372), 0xEuLL);
      v214 = v63[8].i16;
      vst2q_s16(v214, *(&v417 + 16));
      v215 = v9 + 80;
      v399 = vld2q_s16(v215);
      v417.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v212.i8, *v399.val[0].i8), 0xEuLL), vmull_high_s16(v212, v399.val[0]), 0xEuLL);
      v417.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v399.val[1].i8, *v212.i8), 0xEuLL), vmull_high_s16(v399.val[1], v212), 0xEuLL);
      v216 = v63[10].i16;
      vst2q_s16(v216, v417);
      v217 = v9 + 96;
      v400 = vld2q_s16(v217);
      v218 = v375;
      v417.val[0] = vmull_high_s16(v374, v400.val[0]);
      v417.val[1] = vmull_s16(*v374.i8, *v400.val[0].i8);
      v219 = vmull_high_s16(v400.val[1], v374);
      v400.val[0] = vmull_s16(*v400.val[1].i8, *v374.i8);
      v400.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(v417.val[1], 0xEuLL), v417.val[0], 0xEuLL);
      v220 = vrshrn_high_n_s32(vrshrn_n_s32(v400.val[0], 0xEuLL), v219, 0xEuLL);
      v221 = v63[12].i16;
      vst2q_s16(v221, *(&v400 + 16));
      v222 = v9 + 112;
      v401 = vld2q_s16(v222);
      v417.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v218.i8, *v401.val[0].i8), 0xEuLL), vmull_high_s16(v218, v401.val[0]), 0xEuLL);
      v417.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v401.val[1].i8, *v218.i8), 0xEuLL), vmull_high_s16(v401.val[1], v218), 0xEuLL);
      v223 = v63[14].i16;
      vst2q_s16(v223, v417);
      v198 = 64;
    }

    v224 = 2 * v198;
    v225 = (4 * v198) | 2;
    v226 = (v9 + v225);
    v227 = (v63->i16 + v225);
    do
    {
      v228 = *&v371[v224];
      *(v227 - 1) = (v228 * *(v226 - 1) + 0x2000) >> 14;
      *v227 = (*v226 * v228 + 0x2000) >> 14;
      v227 += 2;
      v224 += 2;
      v226 += 2;
    }

    while (v224 != 130);
  }

  if (v8[201].i16[7] == 1)
  {
    v229 = 15 - v8->i16[4];
    v230 = v8[201].i16[6];
    if (v230 > 99)
    {
      v231 = 9;
    }

    else
    {
      v8[201].i16[6] = v230 + 1;
      v231 = 6;
    }

    v232 = 0;
    v233 = v8 + 153;
    i32 = v8[153].i32;
    while (2)
    {
      v236 = v368[v232] << v229;
      v237 = *i32;
      v58 = __OFSUB__(*i32, v236);
      v238 = *i32 - v236;
      if (!((v238 < 0) ^ v58 | (v238 == 0)))
      {
        i32[65] = 0;
        if (v237 < 1 << v231)
        {
          v239 = i32[130];
          i32[130] = v239 + 1;
          if (v239 >= 4)
          {
            *i32 = v237 - 1;
            i32[130] = 0;
          }

          goto LABEL_147;
        }

        v235 = v237 - (v238 >> v231);
LABEL_146:
        *i32 = v235;
        goto LABEL_147;
      }

      i32[130] = 0;
      if (v237 >= 0x80000)
      {
        v235 = 2049 * (v237 >> 11);
        goto LABEL_146;
      }

      if (v237 >= 2048)
      {
        v235 = v237 + (v237 >> 11);
        goto LABEL_146;
      }

      v240 = i32[65];
      i32[65] = v240 + 1;
      if (v240 >= 4)
      {
        *i32 = v237 + (v237 >> 9) + 1;
        i32[65] = 0;
      }

LABEL_147:
      ++v232;
      ++i32;
      if (v232 != 65)
      {
        continue;
      }

      break;
    }

    v241 = 0;
    v242 = v229;
    v243 = 0x7FFF << v229;
    v244 = vnegq_s32(vdupq_n_s32(v242));
    v245.i64[0] = 0x7F0000007FLL;
    v245.i64[1] = 0x7F0000007FLL;
    v246.i64[0] = 0x4000400040004000;
    v246.i64[1] = 0x4000400040004000;
    while (2)
    {
      v248 = vshlq_s32(*v233, v244);
      v249 = vmovn_s32(vcgtq_s32(v248, v245));
      if (vuzp1_s8(v249, *v244.i8).u8[0])
      {
        v233->i32[0] = v243;
        if ((vuzp1_s8(v249, *&v244).i8[1] & 1) == 0)
        {
          goto LABEL_162;
        }

LABEL_166:
        v233->i32[1] = v243;
        if ((vuzp1_s8(v249, *&v244).i8[2] & 1) == 0)
        {
          goto LABEL_167;
        }

LABEL_163:
        v233->i32[2] = v243;
        if ((vuzp1_s8(v249, *&v244).i8[3] & 1) == 0)
        {
          goto LABEL_169;
        }

LABEL_168:
        v233->i32[3] = v243;
        goto LABEL_169;
      }

      if (vuzp1_s8(v249, *&v244).i8[1])
      {
        goto LABEL_166;
      }

LABEL_162:
      if (vuzp1_s8(v249, *&v244).i8[2])
      {
        goto LABEL_163;
      }

LABEL_167:
      if (vuzp1_s8(v249, *&v244).i8[3])
      {
        goto LABEL_168;
      }

LABEL_169:
      v250 = vshlq_s32(v233[1], v244);
      v251 = vmovn_s32(vcgtq_s32(v250, v245));
      if (vuzp1_s8(*&v244, v251).i32[1])
      {
        v233[1].i32[0] = v243;
        if ((vuzp1_s8(*&v244, v251).i8[5] & 1) == 0)
        {
          goto LABEL_171;
        }

LABEL_175:
        v233[1].i32[1] = v243;
        if ((vuzp1_s8(*&v244, v251).i8[6] & 1) == 0)
        {
          goto LABEL_176;
        }

LABEL_172:
        v233[1].i32[2] = v243;
        if (vuzp1_s8(*&v244, v251).i8[7])
        {
          goto LABEL_177;
        }
      }

      else
      {
        if (vuzp1_s8(*&v244, v251).i8[5])
        {
          goto LABEL_175;
        }

LABEL_171:
        if (vuzp1_s8(*&v244, v251).i8[6])
        {
          goto LABEL_172;
        }

LABEL_176:
        if (vuzp1_s8(*&v244, v251).i8[7])
        {
LABEL_177:
          v233[1].i32[3] = v243;
        }
      }

      v247 = vsubq_s16(v246, *&v371[v241]);
      *&v386[v241] = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vminq_s32(v248, v245), 0x10uLL), 0x10uLL), vmovl_s16(*v247.i8)), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vminq_s32(v250, v245), 0x10uLL), 0x10uLL), vmovl_high_s16(v247)), 0xEuLL);
      v241 += 16;
      v233 += 2;
      if (v241 == 128)
      {
        v252 = v8[169].i32[0] >> v242;
        if (v252 >= 0x8000)
        {
          v8[169].i32[0] = v243;
          LOWORD(v252) = 0x7FFF;
        }

        v253 = 0;
        v387 = (v252 * (0x4000 - v376)) >> 14;
        v254 = *(a1 + 572);
        do
        {
          v255 = 69069 * v254 + 1;
          v254 = v255 & 0x7FFFFFFF;
          *&v392[v253 + 2] = HIWORD(v255) & 0x7FFF;
          v253 += 2;
        }

        while (v253 != 128);
        *(a1 + 572) = v254;
        v390[0].i16[0] = 0;
        v256 = 1;
        v388[0].i16[0] = 0;
        do
        {
          v257 = *&v386[v256 * 2];
          v258 = (0x2CE00000000 * *&v392[v256 * 2]) >> 48;
          v390[0].i16[v256] = (webrtc::WebRtcAecm_kCosTable[v258] * v257) >> 13;
          v388[0].i16[v256++] = -(v257 * webrtc::WebRtcAecm_kSinTable[v258]) >> 13;
        }

        while (v256 != 65);
        v389 = 0;
        v259 = (v378 & 0xFFFFFFFFFFFFFFE0);
        v402 = vld2q_s16(v259);
        v259 += 16;
        v410 = vld2q_s16(v259);
        v260 = v390[1];
        v421.val[0] = vqaddq_s16(v402.val[0], v390[0]);
        v261 = v388[1];
        v421.val[1] = vqaddq_s16(v402.val[1], v388[0]);
        vst2q_s16(v63->i16, v421);
        v402.val[0] = vqaddq_s16(v410.val[0], v260);
        v402.val[1] = vqaddq_s16(v410.val[1], v261);
        vst2q_s16(v259, v402);
        v262 = v63[4].i16;
        v403 = vld2q_s16(v262);
        v263 = v63[6].i16;
        v411 = vld2q_s16(v263);
        v264 = v390[3];
        v421.val[0] = vqaddq_s16(v403.val[0], v390[2]);
        v265 = v388[3];
        v421.val[1] = vqaddq_s16(v403.val[1], v388[2]);
        vst2q_s16(v262, v421);
        v403.val[0] = vqaddq_s16(v411.val[0], v264);
        v403.val[1] = vqaddq_s16(v411.val[1], v265);
        vst2q_s16(v263, v403);
        v266 = v63[8].i16;
        v404 = vld2q_s16(v266);
        v267 = v63[10].i16;
        v412 = vld2q_s16(v267);
        v268 = v390[5];
        v421.val[0] = vqaddq_s16(v404.val[0], v390[4]);
        v269 = v388[5];
        v421.val[1] = vqaddq_s16(v404.val[1], v388[4]);
        vst2q_s16(v266, v421);
        v404.val[0] = vqaddq_s16(v412.val[0], v268);
        v404.val[1] = vqaddq_s16(v412.val[1], v269);
        vst2q_s16(v267, v404);
        v270 = v63[12].i16;
        v405 = vld2q_s16(v270);
        v271 = v63[14].i16;
        v413 = vld2q_s16(v271);
        v272 = v390[7];
        v421.val[0] = vqaddq_s16(v405.val[0], v390[6]);
        v273 = v388[7];
        v421.val[1] = vqaddq_s16(v405.val[1], v388[6]);
        vst2q_s16(v270, v421);
        v274 = *((v378 & 0xFFFFFFFFFFFFFFE0) + 0x100) + v391;
        if (v274 >= 0x7FFF)
        {
          v274 = 0x7FFF;
        }

        if (v274 <= -32768)
        {
          LOWORD(v274) = 0x8000;
        }

        *((v378 & 0xFFFFFFFFFFFFFFE0) + 0x100) = v274;
        v275 = *((v378 & 0xFFFFFFFFFFFFFFE0) + 0x102) + v389;
        v276 = vqaddq_s16(v413.val[0], v272);
        v277 = vqaddq_s16(v413.val[1], v273);
        if (v275 >= 0x7FFF)
        {
          v275 = 0x7FFF;
        }

        if (v275 <= -32768)
        {
          LOWORD(v275) = 0x8000;
        }

        *((v378 & 0xFFFFFFFFFFFFFFE0) + 0x102) = v275;
        vst2q_s16(v271, *v276.i8);
        break;
      }

      continue;
    }
  }

  v279 = &v63->i16[2];
  if (v366 + 2 >= v63[16].i16 || v279 >= v366 + 128)
  {
    v406 = vld2q_s16(v279);
    v282 = &v63[2].i16[2];
    v414 = vld2q_s16(v282);
    v406.val[1] = vnegq_s16(v406.val[1]);
    v278 = v366 + 2;
    vst2q_s16(v278, v406);
    v414.val[1] = vnegq_s16(v414.val[1]);
    v283 = v366 + 18;
    vst2q_s16(v283, v414);
    v284 = &v63[4].i16[2];
    v407 = vld2q_s16(v284);
    v285 = &v63[6].i16[2];
    v415 = vld2q_s16(v285);
    v407.val[1] = vnegq_s16(v407.val[1]);
    v286 = v366 + 34;
    vst2q_s16(v286, v407);
    v415.val[1] = vnegq_s16(v415.val[1]);
    v287 = v366 + 50;
    vst2q_s16(v287, v415);
    v288 = &v63[8].i16[2];
    v408 = vld2q_s16(v288);
    v289 = &v63[10].i16[2];
    v416 = vld2q_s16(v289);
    v408.val[1] = vnegq_s16(v408.val[1]);
    v290 = v366 + 66;
    vst2q_s16(v290, v408);
    v416.val[1] = vnegq_s16(v416.val[1]);
    v291 = v366 + 82;
    vst2q_s16(v291, v416);
    v292 = &v63[12].i16[2];
    v408.val[0] = vld2_s16(v292);
    *v416.val[0].i8 = vneg_s16(*v408.val[1].i8);
    v408.val[0] = vzip1q_s16(v408.val[0], v416.val[0]);
    *((v381 & 0xFFFFFFFFFFFFFFE0) + 0xC4) = v408.val[0];
    v293 = &v63[13].i16[2];
    v408.val[0] = vld2_s16(v293);
    *v416.val[0].i8 = vneg_s16(*v408.val[1].i8);
    v408.val[0] = vzip1q_s16(v408.val[0], v416.val[0]);
    *((v381 & 0xFFFFFFFFFFFFFFE0) + 0xD4) = v408.val[0];
    v294 = &v63[14].i16[2];
    v408.val[0] = vld2_s16(v294);
    *v416.val[0].i8 = vneg_s16(*v408.val[1].i8);
    *((v381 & 0xFFFFFFFFFFFFFFE0) + 0xE4) = vzip1q_s16(v408.val[0], v416.val[0]);
    v280 = 61;
    v281 = 122;
  }

  else
  {
    v280 = 1;
    v281 = 2;
  }

  v295 = &v366[v281 + 1];
  v296 = 2 * v280;
  do
  {
    *(v295 - 1) = v63->i16[v296];
    *v295 = -v63->i16[v296 + 1];
    v295 += 2;
    v296 += 2;
  }

  while (v296 != 128);
  *v366 = v63->i16[0];
  *((v381 & 0xFFFFFFFFFFFFFFE0) + 2) = -*((v378 & 0xFFFFFFFFFFFFFFE0) + 2);
  v297 = v63 + 16;
  *((v381 & 0xFFFFFFFFFFFFFFE0) + 0x100) = *((v378 & 0xFFFFFFFFFFFFFFE0) + 0x100);
  *((v381 & 0xFFFFFFFFFFFFFFE0) + 0x102) = -*((v378 & 0xFFFFFFFFFFFFFFE0) + 0x102);
  v298 = WebRtcSpl_RealInverseFFT(*(a1 + 17280), v366, v378 & 0xFFFFFFFFFFFFFFE0);
  v299 = *(a1 + 16048);
  v300 = a5 + 8;
  v301 = v299 + 16;
  v303 = &v299[16] > v63 && v299 < v297;
  v307 = v367 > v63 && v75 < v297;
  v309 = v301 > a5 && v299 < v300;
  v313 = v367 > a5 && v75 < v300;
  v317 = v299 < v367 && v75 < v301;
  v318 = v297 > a5 && v300 > v63;
  if (v318 || v303 || v305 || v307 || v309 || v311 || v313 || v315 || v317)
  {
    v338 = 0;
    v339 = 0x40u;
    do
    {
      v63->i16[0] = v340 >> 14;
      v341 = *v75;
      v58 = __OFSUB__(v298, v341);
      v342 = v298 - v341;
      v343 = (v340 >> 14);
      v344 = v343 << v342;
      v345 = v343 >> -v342;
      if (v342 < 0 == v58)
      {
        v345 = v344;
      }

      v346 = v345 + v299->i16[v338];
      if (v346 <= -32768)
      {
        v346 = -32768;
      }

      if (v346 >= 0x7FFF)
      {
        LOWORD(v346) = 0x7FFF;
      }

      a5->i16[v338] = v346;
      v348 = *v75;
      v58 = __OFSUB__(v298, v348);
      v349 = v298 - v348;
      v350 = v347 << v349;
      v351 = v347 >> -v349;
      if (v349 < 0 == v58)
      {
        v351 = v350;
      }

      if (v351 <= -32768)
      {
        v351 = -32768;
      }

      if (v351 >= 0x7FFF)
      {
        LOWORD(v351) = 0x7FFF;
      }

      v299->i16[v338] = v351;
      v63 = (v63 + 2);
      ++v338;
      --v339;
    }

    while (v339 * 2);
  }

  else
  {
    v319 = vld1_dup_s16(v75);
    v320 = vsubw_s16(vdupq_n_s32(v298), v319);
    v321 = 0x72u;
    v322 = vcltzq_s32(v320);
    v323 = vnegq_s32(vnegq_s32(v320));
    do
    {
      v325 = *v324++;
      v326.i64[0] = 0x200000002000;
      v326.i64[1] = 0x200000002000;
      v327.i64[0] = 0x200000002000;
      v327.i64[1] = 0x200000002000;
      v328 = vshrq_n_u32(vmlal_high_s16(v327, v325, *v63), 0xEuLL);
      v329 = vshrq_n_u32(vmlal_s16(v326, *v325.i8, *v63->i8), 0xEuLL);
      *v63 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v325.i8, *v63->i8), 0xEuLL), vmull_high_s16(v325, *v63), 0xEuLL);
      v330 = vshrq_n_s32(vshlq_n_s32(v329, 0x10uLL), 0x10uLL);
      v331 = vshrq_n_s32(vshlq_n_s32(v328, 0x10uLL), 0x10uLL);
      *a5++ = vqmovn_high_s32(vqmovn_s32(vaddw_s16(vbslq_s8(v322, vshlq_s32(v330, v323), vshlq_u32(v330, v320)), *v299)), vaddw_high_s16(vbslq_s8(v322, vshlq_s32(v331, v323), vshlq_u32(v331, v320)), *v299->i8));
      v332 = v63[8];
      v334 = vextq_s8(v333, v333, 8uLL);
      v335 = vmull_s16(*v334.i8, *v332.i8);
      v336 = vshrq_n_s32(vmull_high_s16(v334, v332), 0xEuLL);
      v337 = vshrq_n_s32(v335, 0xEuLL);
      *v299->i8 = vqmovn_high_s32(vqmovn_s32(vbslq_s8(v322, vshlq_s32(v337, v323), vshlq_u32(v337, v320))), vbslq_s8(v322, vshlq_s32(v336, v323), vshlq_u32(v336, v320)));
      v299 += 2;
      v321 -= 16;
      ++v63;
    }

    while (v321 != -14);
  }

  v352 = *(a1 + 16024);
  v353 = v352[13];
  v352[4] = v352[12];
  v352[5] = v353;
  v354 = v352[15];
  v352[6] = v352[14];
  v352[7] = v354;
  v355 = v352[9];
  *v352 = v352[8];
  v352[1] = v355;
  v356 = v352[11];
  v352[2] = v352[10];
  v352[3] = v356;
  v357 = *(a1 + 16040);
  v358 = *(v357 + 240);
  *(v357 + 96) = *(v357 + 224);
  *(v357 + 112) = v358;
  v359 = *(v357 + 208);
  *(v357 + 64) = *(v357 + 192);
  *(v357 + 80) = v359;
  v360 = *(v357 + 176);
  *(v357 + 32) = *(v357 + 160);
  *(v357 + 48) = v360;
  result = *(v357 + 144);
  *v357 = *(v357 + 128);
  *(v357 + 16) = result;
  if (a4)
  {
    v361 = *(a1 + 16032);
    v362 = *(v361 + 208);
    *(v361 + 64) = *(v361 + 192);
    *(v361 + 80) = v362;
    v363 = *(v361 + 240);
    *(v361 + 96) = *(v361 + 224);
    *(v361 + 112) = v363;
    v364 = *(v361 + 144);
    *v361 = *(v361 + 128);
    *(v361 + 16) = v364;
    result = *(v361 + 160);
    v365 = *(v361 + 176);
    *(v361 + 32) = result;
    *(v361 + 48) = v365;
  }

  return result;
}

uint64_t webrtc::anonymous namespace::TimeToFrequencyDomain(uint64_t a1, int16x8_t *a2, __int16 *a3, _WORD *a4, int *a5)
{
  *&v70[513] = *MEMORY[0x277D85DE8];
  v10 = (v70 & 0xFFFFFFFFFFFFFFE0);
  v11 = WebRtcSpl_MaxAbsValueW16(a2, 0x80uLL);
  if (v11)
  {
    v12 = __clz(v11 ^ (v11 >> 15)) - 17;
  }

  else
  {
    v12 = 0;
  }

  v13 = v10 + 16;
  if ((v13 <= a2 || &a2[16] <= v10) && !v15)
  {
    v23 = vdupq_n_s32(v12);
    v24 = a2[9];
    v25 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[8].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC20), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[8]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC10), 0xEuLL);
    v26 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[1].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC40), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[1]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC30), 0xEuLL);
    *v10 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2->i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC00), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(*a2), v23), 0x10uLL), 0x10uLL), xmmword_273B8DBF0), 0xEuLL);
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x10) = v26;
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x80) = v25;
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x90) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*v24.i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC60), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(v24), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC50), 0xEuLL);
    v27 = a2[11];
    v28 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[10].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DCA0), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[10]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC90), 0xEuLL);
    v29 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[3].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DCC0), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[3]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DCB0), 0xEuLL);
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x20) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[2].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC80), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[2]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DC70), 0xEuLL);
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x30) = v29;
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0xA0) = v28;
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0xB0) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*v27.i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DCE0), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(v27), v23), 0x10uLL), 0x10uLL), xmmword_273B8DCD0), 0xEuLL);
    v30 = a2[13];
    v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[12].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD20), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[12]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD10), 0xEuLL);
    v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[5].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD40), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[5]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD30), 0xEuLL);
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x40) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[4].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD00), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[4]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DCF0), 0xEuLL);
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x50) = v32;
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0xC0) = v31;
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0xD0) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*v30.i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD60), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(v30), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD50), 0xEuLL);
    v33 = a2[15];
    v34 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[14].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DDA0), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[14]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD90), 0xEuLL);
    v35 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[7].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DDC0), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[7]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DDB0), 0xEuLL);
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x60) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*a2[6].i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD80), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(a2[6]), v23), 0x10uLL), 0x10uLL), xmmword_273B8DD70), 0xEuLL);
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0x70) = v35;
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0xE0) = v34;
    *((v70 & 0xFFFFFFFFFFFFFFE0) + 0xF0) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_u16(*v33.i8), v23), 0x10uLL), 0x10uLL), xmmword_273B8DDE0), 0xEuLL), vmulq_s32(vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmovl_high_u16(v33), v23), 0x10uLL), 0x10uLL), xmmword_273B8DDD0), 0xEuLL);
  }

  else
  {
    v18 = 0;
    v19 = a2 + 8;
    v20 = v10 + 8;
    v21 = 0x40u;
    do
    {
      v22 = v19->u16[0];
      v19 = (v19 + 2);
      v20 = (v20 + 2);
      ++v18;
      --v21;
    }

    while (v21 * 2);
  }

  WebRtcSpl_RealForwardFFT(*(a1 + 17280), v70 & 0xFFFFFFFFFFFFFFE0, a3);
  v36 = a3 + 1;
  v37 = vld2q_s16(v36);
  v38 = vnegq_s16(v37);
  a3[1] = v38.i16[0];
  a3[3] = v38.i16[1];
  v39 = a3 + 3;
  a3[5] = v38.i16[2];
  a3[7] = v38.i16[3];
  a3[9] = v38.i16[4];
  a3[11] = v38.i16[5];
  a3[13] = v38.i16[6];
  a3[15] = v38.i16[7];
  v40 = a3 + 17;
  v41 = vld2q_s16(v40);
  v42 = vnegq_s16(v41);
  a3[17] = v42.i16[0];
  a3[19] = v42.i16[1];
  a3[21] = v42.i16[2];
  a3[23] = v42.i16[3];
  a3[25] = v42.i16[4];
  a3[27] = v42.i16[5];
  a3[29] = v42.i16[6];
  a3[31] = v42.i16[7];
  v43 = a3 + 33;
  v44 = vld2q_s16(v43);
  v45 = vnegq_s16(v44);
  a3[33] = v45.i16[0];
  a3[35] = v45.i16[1];
  a3[37] = v45.i16[2];
  a3[39] = v45.i16[3];
  a3[41] = v45.i16[4];
  a3[43] = v45.i16[5];
  a3[45] = v45.i16[6];
  a3[47] = v45.i16[7];
  v46 = a3 + 49;
  v47 = vld2q_s16(v46);
  v48 = vnegq_s16(v47);
  a3[49] = v48.i16[0];
  a3[51] = v48.i16[1];
  a3[53] = v48.i16[2];
  a3[55] = v48.i16[3];
  a3[57] = v48.i16[4];
  a3[59] = v48.i16[5];
  a3[61] = v48.i16[6];
  a3[63] = v48.i16[7];
  v49 = a3 + 65;
  v50 = vld2q_s16(v49);
  v51 = vnegq_s16(v50);
  a3[65] = v51.i16[0];
  a3[67] = v51.i16[1];
  a3[69] = v51.i16[2];
  a3[71] = v51.i16[3];
  a3[73] = v51.i16[4];
  a3[75] = v51.i16[5];
  a3[77] = v51.i16[6];
  a3[79] = v51.i16[7];
  v52 = a3 + 81;
  v53 = vld2q_s16(v52);
  v54 = vnegq_s16(v53);
  a3[81] = v54.i16[0];
  a3[83] = v54.i16[1];
  a3[85] = v54.i16[2];
  a3[87] = v54.i16[3];
  a3[89] = v54.i16[4];
  a3[91] = v54.i16[5];
  a3[93] = v54.i16[6];
  a3[95] = v54.i16[7];
  v55 = a3 + 97;
  v56 = vld2q_s16(v55);
  v57 = vnegq_s16(v56);
  a3[97] = v57.i16[0];
  a3[99] = v57.i16[1];
  a3[101] = v57.i16[2];
  a3[103] = v57.i16[3];
  a3[105] = v57.i16[4];
  a3[107] = v57.i16[5];
  a3[109] = v57.i16[6];
  a3[111] = v57.i16[7];
  a3[113] = -a3[113];
  a3[115] = -a3[115];
  a3[117] = -a3[117];
  a3[119] = -a3[119];
  a3[121] = -a3[121];
  a3[123] = -a3[123];
  a3[125] = -a3[125];
  a3[127] = -a3[127];
  a3[1] = 0;
  a3[129] = 0;
  v58 = *a3;
  if (v58 < 0)
  {
    v58 = -v58;
  }

  *a4 = v58;
  v59 = a3[128];
  if (v59 < 0)
  {
    v59 = -v59;
  }

  a4[64] = v59;
  v60 = v59 + v58;
  v61 = 1;
  *a5 = v60;
  do
  {
    while (1)
    {
      v63 = *(v39 - 1);
      v64 = *v39;
      if (v63)
      {
        break;
      }

      if (v64 >= 0)
      {
        LOWORD(v62) = *v39;
      }

      else
      {
        v62 = -v64;
      }

LABEL_29:
      a4[v61] = v62;
      v39 += 2;
      v60 += v62;
      *a5 = v60;
      if (++v61 == 64)
      {
        return v12;
      }
    }

    if (v63 >= 0)
    {
      LOWORD(v62) = *(v39 - 1);
    }

    else
    {
      v62 = -v63;
    }

    if (!*v39)
    {
      goto LABEL_29;
    }

    LOWORD(v65) = *v39;
    if (v64 < 0)
    {
      v65 = -v64;
    }

    v66 = v62 * v62 + v65 * v65;
    if (v66 >= 0x7FFFFFFF)
    {
      v67 = 0x7FFFFFFF;
    }

    else
    {
      v67 = v66;
    }

    v68 = WebRtcSpl_SqrtFloor(v67);
    a4[v61] = v68;
    v39 += 2;
    v60 = *a5 + v68;
    *a5 = v60;
    ++v61;
  }

  while (v61 != 64);
  return v12;
}

void webrtc::Agc::~Agc(webrtc::Agc *this)
{
  *this = &unk_28828CC88;
  webrtc::VoiceActivityDetector::~VoiceActivityDetector((this + 40));
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    v3 = *(v2 + 640);
    *(v2 + 640) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8052888210);
    }

    v4 = *(v2 + 632);
    *(v2 + 632) = 0;
    if (v4)
    {
      MEMORY[0x2743DA520](v4, 0x1000C8052888210);
    }

    MEMORY[0x2743DA540](v2, 0x1010C40BAFAAD9ALL);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    v6 = *(v5 + 640);
    *(v5 + 640) = 0;
    if (v6)
    {
      MEMORY[0x2743DA520](v6, 0x1000C8052888210);
    }

    v7 = *(v5 + 632);
    *(v5 + 632) = 0;
    if (v7)
    {
      MEMORY[0x2743DA520](v7, 0x1000C8052888210);
    }

    MEMORY[0x2743DA540](v5, 0x1010C40BAFAAD9ALL);
  }
}

{
  *this = &unk_28828CC88;
  webrtc::VoiceActivityDetector::~VoiceActivityDetector((this + 40));
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    v3 = *(v2 + 640);
    *(v2 + 640) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8052888210);
    }

    v4 = *(v2 + 632);
    *(v2 + 632) = 0;
    if (v4)
    {
      MEMORY[0x2743DA520](v4, 0x1000C8052888210);
    }

    MEMORY[0x2743DA540](v2, 0x1010C40BAFAAD9ALL);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    v6 = *(v5 + 640);
    *(v5 + 640) = 0;
    if (v6)
    {
      MEMORY[0x2743DA520](v6, 0x1000C8052888210);
    }

    v7 = *(v5 + 632);
    *(v5 + 632) = 0;
    if (v7)
    {
      MEMORY[0x2743DA520](v7, 0x1000C8052888210);
    }

    MEMORY[0x2743DA540](v5, 0x1010C40BAFAAD9ALL);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::Agc::Process(void *a1, __int16 *a2, unint64_t a3)
{
  webrtc::VoiceActivityDetector::ProcessChunk((a1 + 5), a2, a3, 100 * a3);
  v4 = a1[8];
  if (a1[9] != v4)
  {
    v5 = 0;
    while (1)
    {
      v7 = a1[5];
      if (v5 >= (a1[6] - v7) >> 3)
      {
        break;
      }

      v8 = *(v4 + 8 * v5);
      v9 = a1[3];
      v10 = *(v7 + 8 * v5);
      if (*(v9 + 656) >= 1 && *(v9 + 652))
      {
        v11 = *(v9 + 648);
        v12 = *(*(v9 + 632) + 4 * v11);
        v13 = v9 + 8 * *(*(v9 + 640) + 4 * v11);
        *(v13 + 16) -= v12;
        *(v9 + 8) -= v12;
      }

      if (v8 <= 0.0759621092)
      {
        v6 = 0;
      }

      else if (v8 >= 35664.7189)
      {
        v6 = 76;
      }

      else
      {
        v14 = v9;
        v15 = log(v8);
        v9 = v14;
        v16 = vcvtmd_s64_f64((v15 + 2.57752063) * 5.81954606);
        if ((*(&webrtc::kHistBinCenters + v16) + *(&webrtc::kHistBinCenters + v16 + 1)) * 0.5 >= v8)
        {
          v6 = v16;
        }

        else
        {
          v6 = v16 + 1;
        }
      }

      webrtc::LoudnessHistogram::InsertNewestEntryAndUpdate(v9, vcvtmd_s64_f64(v10 * 1024.0), v6);
      ++v5;
      v4 = a1[8];
      if (v5 >= (a1[9] - v4) >> 3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t webrtc::Agc::GetRmsErrorDb(webrtc::Agc *this, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 3);
  if (v2->i32[0] < 100)
  {
    return 0;
  }

  v3 = v2->i64[1];
  if (vcvtd_n_f64_s64(v3, 0xAuLL) < 30.0)
  {
    return 0;
  }

  if (v3 < 1)
  {
    v12 = 0.0759621092;
  }

  else
  {
    v5 = 1.0 / v3;
    v6 = v2 + 2;
    v7 = 0.0;
    v8 = &unk_273B94C98;
    v9 = 76;
    do
    {
      v10 = vmulq_f64(vmulq_n_f64(vcvtq_f64_s64(v6[-1]), v5), v8[-1]);
      v11 = vmulq_f64(vmulq_n_f64(vcvtq_f64_s64(*v6), v5), *v8);
      v7 = v7 + v10.f64[0] + v10.f64[1] + v11.f64[0] + v11.f64[1];
      v6 += 2;
      v8 += 2;
      v9 -= 4;
    }

    while (v9);
    v12 = v7 + v5 * v2[39].i64[0] * 35664.7189;
    v13 = -15.0;
    if (v12 == 0.0)
    {
      goto LABEL_13;
    }
  }

  v14 = a2;
  v15 = this;
  v16 = log(v12);
  this = v15;
  a2 = v14;
  v13 = v16 * 5.81954606;
LABEL_13:
  *a2 = vcvtmd_s64_f64((*(this + 1) - v13) * 8.68588964 / 5.81954606 + 0.5);
  v2->i32[0] = 0;
  v2[40].i64[1] = 0;
  v2[41].i32[1] = 0;
  bzero(&v2->u64[1], 0x270uLL);
  return 1;
}

void webrtc::Agc::Reset(webrtc::Agc *this)
{
  v1 = *(this + 3);
  *v1 = 0;
  *(v1 + 648) = 0;
  *(v1 + 660) = 0;
  bzero((v1 + 8), 0x270uLL);
}

double webrtc::Agc::set_target_level_dbfs(webrtc::Agc *this, unsigned int a2)
{
  if (a2 >= 0xFFFFFF9D)
  {
    *(this + 4) = a2;
    result = (a2 + 90) * 5.81954606 / 8.68588964;
    *(this + 1) = result;
  }

  return result;
}

void webrtc::MonoAgc::SetLevel(webrtc::MonoAgc *this, int a2)
{
  v2 = *(this + 11);
  if (v2)
  {
    if (v2 < 0x100)
    {
      v10 = *(this + 4);
      if (v2 > v10 + 25 || v2 < v10 - 25)
      {
        *(this + 4) = v2;
        if (v2 > *(this + 5))
        {
          v12 = floorf((((255.0 - v2) / (255 - *(this + 15))) * 6.0) + 0.5) + 12.0;
          *(this + 5) = v2;
          *(this + 6) = v12;
        }

        (*(**(this + 1) + 32))(*(this + 1));
        *(this + 16) = 0;
        *(this + 68) = 0;
      }

      else
      {
        v14 = *(this + 5);
        if (v14 >= a2)
        {
          v14 = a2;
        }

        if (v14 != v10)
        {
          *(this + 11) = v14;
          *(this + 4) = v14;
        }
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc/agc_manager_direct.cc");
    }
  }
}

void webrtc::AgcManagerDirect::AgcManagerDirect(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = *a4;
  v5 = *(a2 + 8);
  strcpy(__s, "WebRTC-Audio-2ndAgcMinMicLevelExperiment");
  v6 = strlen(__s);
  (*(*v5 + 16))(__p, v5, __s, v6);
  v7 = v27;
  if ((v27 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v7 >= 7)
  {
    v9 = __p[0];
    if ((v27 & 0x80u) == 0)
    {
      v9 = __p;
    }

    v10 = *v9;
    v11 = *(v9 + 3);
    v8 = v10 == 1650552389 && v11 == 1684368482;
    if (v27 < 0)
    {
LABEL_22:
      operator delete(__p[0]);
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
    if (v27 < 0)
    {
      goto LABEL_22;
    }
  }

  if (!v8)
  {
LABEL_23:
    v17 = 0;
    goto LABEL_29;
  }

LABEL_16:
  v13 = strlen(__s);
  (*(*v5 + 16))(__p, v5, __s, v13);
  v25 = -1;
  if ((v27 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sscanf(v14, "Enabled-%d", &v25);
  v15 = v25;
  if (v25 > 0xFF)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc/agc_manager_direct.cc");
    }

    v16 = 0;
    v15 = 0;
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v16 = 0x100000000;
    if ((v27 & 0x80000000) == 0)
    {
LABEL_28:
      v17 = v15 | v16;
LABEL_29:
      *(a1 + 4) = v17;
      *(a1 + 8) = BYTE4(v17);
      operator new();
    }
  }

  operator delete(__p[0]);
  goto LABEL_28;
}

void webrtc::AgcManagerDirect::~AgcManagerDirect(webrtc::AgcManagerDirect *this)
{
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 9);
    v6 = *(this + 8);
    if (v5 != v4)
    {
      do
      {
        v8 = *--v5;
        v7 = v8;
        *v5 = 0;
        if (v8)
        {
          v9 = *(v7 + 8);
          *(v7 + 8) = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          MEMORY[0x2743DA540](v7, 0x1020C40275618A5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 8);
    }

    *(this + 9) = v4;
    operator delete(v6);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    MEMORY[0x2743DA540](v10, 0xC400A2AC0F1);
  }
}

void webrtc::AgcManagerDirect::SetupDigitalGainControl(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2, 2) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc/agc_manager_direct.cc");
  }

  if (*(a1 + 28))
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  if ((*(*a2 + 32))(a2, v11) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc/agc_manager_direct.cc");
  }

  if (*(a1 + 28))
  {
    v19 = 0;
  }

  else
  {
    v19 = 7;
  }

  if ((*(*a2 + 48))(a2, v19) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc/agc_manager_direct.cc");
  }

  if ((*(*a2 + 64))(a2, (*(a1 + 28) & 1) == 0))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc/agc_manager_direct.cc");
    }
  }
}

uint64_t webrtc::AgcManagerDirect::AnalyzePreProcess(uint64_t this, const webrtc::AudioBuffer *a2)
{
  v2 = *(this + 64);
  v3 = *(this + 72) - v2;
  if (!v3)
  {
LABEL_108:
    __break(1u);
    return this;
  }

  v4 = this;
  v5 = *(*(a2 + 10) + 8);
  v6 = *(a2 + 3);
  v7 = v3 >> 3;
  v8 = *(*v2 + 44);
  *(this + 44) = 0;
  if (v7 >= 2)
  {
    for (i = 1; i != v7; ++i)
    {
      v10 = *(*(v2 + 8 * i) + 44);
      if (v10 < v8)
      {
        *(this + 44) = i;
        v8 = v10;
      }
    }
  }

  if (*(this + 8) != 1 || v8 <= 0)
  {
    if (*this == 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v8 <= *(this + 4))
    {
      v8 = *(this + 4);
    }

    if (*this == 1)
    {
LABEL_18:
      *(this + 36) = v8;
      if (*(this + 40) != 1)
      {
        return this;
      }

      goto LABEL_19;
    }
  }

  if (*(this + 40) != 1)
  {
    return this;
  }

LABEL_19:
  this = *(this + 112);
  if (this)
  {
    if (*(v4 + 24))
    {
      v12 = v6 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v5;
    }

    v68[0] = *(v4 + 24);
    v68[1] = v6;
    v68[2] = v13;
    v69 = 0;
    this = (*(*this + 24))(this, v68);
  }

  v14 = 0.0;
  if (v6)
  {
    v15 = *(v4 + 24);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = vdupq_n_s32(0x46FFFE00u);
      v19.i64[0] = 0xC7000000C7000000;
      v19.i64[1] = 0xC7000000C7000000;
      while (1)
      {
        v20 = *(v5 + 8 * v16);
        if (v6 < 8)
        {
          break;
        }

        v23 = v20 + 1;
        v24 = 0uLL;
        v25 = v6 & 0xFFFFFFFFFFFFFFF8;
        v26 = 0uLL;
        do
        {
          v24 = vsubq_s32(v24, vorrq_s8(vcgeq_f32(v23[-1], v18), vcgeq_f32(v19, v23[-1])));
          v26 = vsubq_s32(v26, vorrq_s8(vcgeq_f32(*v23, v18), vcgeq_f32(v19, *v23)));
          v23 += 2;
          v25 -= 8;
        }

        while (v25);
        v22 = vaddvq_s32(vaddq_s32(v26, v24));
        v21 = v6 & 0xFFFFFFFFFFFFFFF8;
        if (v6 != (v6 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_38;
        }

LABEL_30:
        if (v17 <= v22)
        {
          v17 = v22;
        }

        if (++v16 == v15)
        {
          v14 = v17;
          goto LABEL_44;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_38:
      v27 = v6 - v21;
      v28 = &v20->f32[v21];
      do
      {
        v29 = *v28++;
        v30 = v29 >= 32767.0;
        if (v29 <= -32768.0)
        {
          v30 = 1;
        }

        v22 += v30;
        --v27;
      }

      while (v27);
      goto LABEL_30;
    }
  }

LABEL_44:
  v31 = v14 / v6;
  v32 = *(v4 + 124);
  if (v31 >= v32)
  {
    v32 = v31;
  }

  *(v4 + 124) = v32;
  v33 = *(v4 + 128) + 1;
  *(v4 + 128) = v33;
  if (v33 == 3000)
  {
    v34 = llroundf(v32 * 100.0);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc/agc_manager_direct.cc");
    }

    if (this)
    {
      this = webrtc::metrics::HistogramAdd(this, v34);
    }

    else
    {
      v42 = 0;
    }

    *(v4 + 124) = 0;
  }

  v43 = *(v4 + 32);
  if (v43 < *(v4 + 56))
  {
    *(v4 + 32) = v43 + 1;
    return this;
  }

  v44 = *(v4 + 52);
  if (*(v4 + 112) && *(v4 + 24) >= 1)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    while (1)
    {
      v48 = *(v4 + 64);
      if (v45 >= (*(v4 + 72) - v48) >> 3)
      {
        goto LABEL_108;
      }

      this = (*(**(v4 + 112) + 32))(*(v4 + 112), v45, *(v4 + 36), *(v4 + 48), **(v48 + 8 * v45), 255);
      if (v47 <= this)
      {
        v49 = this;
      }

      else
      {
        v49 = v47;
      }

      if ((this & 0x100000000) != 0)
      {
        v47 = v49;
      }

      v46 |= (this & 0x100000000uLL) >> 32;
      if (++v45 >= *(v4 + 24))
      {
        v50 = *(v4 + 48);
        if (v46)
        {
          if (v47 <= v50)
          {
            v51 = *(v4 + 48);
          }

          else
          {
            v51 = v47;
          }

          if (*(v4 + 120))
          {
            v52 = v51;
          }

          else
          {
            v52 = *(v4 + 48);
          }

          if (v31 <= v44)
          {
            v50 = v51;
          }

          else
          {
            v50 = v52;
          }

          if (v31 <= v44 && (*(v4 + 120) & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        else if (v31 <= v44)
        {
          goto LABEL_93;
        }

        goto LABEL_81;
      }
    }
  }

  if (v31 > v44)
  {
    v50 = *(v4 + 48);
LABEL_81:
    v53 = *(v4 + 64);
    for (j = *(v4 + 72); v53 != j; ++v53)
    {
      v55 = *v53;
      v56 = *(*v53 + 16);
      v57 = *(*v53 + 20) - v50;
      v58 = *(*v53 + 60);
      if (v58 > v57)
      {
        v57 = *(*v53 + 60);
      }

      *(v55 + 20) = v57;
      *(v55 + 24) = (floorf((((255.0 - v57) / (255 - v58)) * 6.0) + 0.5) + 12.0);
      if (v56 > v58)
      {
        v59 = v56 - v50;
        if (v58 <= v59)
        {
          v60 = v59;
        }

        else
        {
          v60 = v58;
        }

        webrtc::MonoAgc::SetLevel(v55, v60);
        (*(**(v55 + 8) + 32))(*(v55 + 8));
        *(v55 + 64) = 0;
        *(v55 + 68) = 0;
      }
    }

    *(v4 + 32) = 0;
    this = *(v4 + 112);
    if (this)
    {
      this = (*(*this + 16))(this);
    }
  }

LABEL_93:
  v61 = *(v4 + 64);
  v62 = *(v4 + 72) - v61;
  if (!v62)
  {
    goto LABEL_108;
  }

  v63 = v62 >> 3;
  v64 = *(*v61 + 44);
  *(v4 + 44) = 0;
  if (v63 >= 2)
  {
    for (k = 1; k != v63; ++k)
    {
      v66 = *(*(v61 + 8 * k) + 44);
      if (v66 < v64)
      {
        *(v4 + 44) = k;
        v64 = v66;
      }
    }
  }

  v67 = *(v4 + 8) != 1 || v64 <= 0;
  if (!v67 && v64 <= *(v4 + 4))
  {
    v64 = *(v4 + 4);
  }

  if (*v4 == 1)
  {
    *(v4 + 36) = v64;
  }

  return this;
}