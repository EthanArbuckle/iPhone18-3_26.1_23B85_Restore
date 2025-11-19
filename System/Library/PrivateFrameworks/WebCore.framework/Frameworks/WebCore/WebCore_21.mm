void webrtc::ForwardErrorCorrection::ResetState(void *a1, uint64_t *a2)
{
  if (a2[2])
  {
    v4 = a2[1];
    v5 = *(*a2 + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a2[2] = 0;
    if (v4 != a2)
    {
      do
      {
        v8 = v4[1];
        v7 = v4[2];
        v4[2] = 0;
        if (v7)
        {
          v9 = *(v7 + 16);
          if (v9)
          {
            (*(*v9 + 24))(v9);
          }

          MEMORY[0x2743DA540](v7, 0x1020C407D5D75B9);
        }

        operator delete(v4);
        v4 = v8;
      }

      while (v8 != a2);
    }
  }

  if (a1[8])
  {
    v10 = a1[7];
    v11 = *(a1[6] + 8);
    v12 = *v10;
    *(v12 + 8) = v11;
    *v11 = v12;
    a1[8] = 0;
    if (v10 != a1 + 6)
    {
      do
      {
        v14 = v10[1];
        v13 = v10[2];
        v10[2] = 0;
        if (v13)
        {
          webrtc::ForwardErrorCorrection::ReceivedFecPacket::~ReceivedFecPacket(v13);
          MEMORY[0x2743DA540]();
        }

        operator delete(v10);
        v10 = v14;
      }

      while (v14 != a1 + 6);
    }
  }
}

void *webrtc::ForwardErrorCorrection::UpdateCoveringFecPackets(void *result, uint64_t a2)
{
  v2 = result + 6;
  v3 = result[7];
  if (v3 == result + 6)
  {
    return result;
  }

  while (2)
  {
    v5 = v3[2];
    v6 = v5 + 8;
    v7 = *(v5 + 16);
    if (v7 == v6)
    {
      goto LABEL_4;
    }

    v8 = 0;
    v9 = v7;
    do
    {
      ++v8;
      v9 = *(v9 + 8);
    }

    while (v9 != v6);
    v10 = *(a2 + 4);
    do
    {
      v11 = v8 >> 1;
      v12 = v7;
      if (v8 != 1)
      {
        v13 = v11 + 1;
        v12 = v7;
        do
        {
          v12 = *(v12 + 8);
          --v13;
        }

        while (v13 > 1);
      }

      v14 = *(*(v12 + 16) + 4);
      if (v10 - v14 == 0x8000)
      {
        if (v10 > v14)
        {
          goto LABEL_9;
        }
      }

      else if (v10 != v14 && ((v10 - v14) & 0x8000) == 0)
      {
LABEL_9:
        v7 = *(v12 + 8);
        v11 = v8 + ~v11;
      }

      v8 = v11;
    }

    while (v11);
    if (v7 != v6)
    {
      v16 = *(v7 + 16);
      if (*(v16 + 4) == v10)
      {
        v17 = *(a2 + 16);
        if (v17)
        {
          (*(*v17 + 16))(*(a2 + 16));
        }

        result = *(v16 + 8);
        if (result)
        {
          result = (*(*result + 24))(result);
        }

        *(v16 + 8) = v17;
      }
    }

LABEL_4:
    v3 = v3[1];
    if (v3 != v2)
    {
      continue;
    }

    return result;
  }
}

void std::list<std::unique_ptr<webrtc::ForwardErrorCorrection::ReceivedFecPacket>>::pop_front(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 16) = v1 - 1;
    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      webrtc::ForwardErrorCorrection::ReceivedFecPacket::~ReceivedFecPacket(v5);
      MEMORY[0x2743DA540]();
    }

    operator delete(v2);
  }

  else
  {
    __break(1u);
  }
}

void webrtc::ForwardErrorCorrection::InsertPacket(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a1 + 6;
  if (a1[8])
  {
    v7 = a1[7];
    if (*a2 == *(v7[2] + 32) && v7 != v6)
    {
      do
      {
        v16 = v7[2];
        v17 = (*(a2 + 4) - *(v16 + 2));
        if (v17 < 0)
        {
          v17 = -v17;
        }

        if (v17 < 0x4000)
        {
          break;
        }

        v18 = *v7;
        v19 = v7[1];
        *(v18 + 8) = v19;
        *v19 = v18;
        --a1[8];
        v7[2] = 0;
        webrtc::ForwardErrorCorrection::ReceivedFecPacket::~ReceivedFecPacket(v16);
        MEMORY[0x2743DA540]();
        operator delete(v7);
        v7 = v19;
      }

      while (v19 != v6);
    }
  }

  v9 = *(a2 + 4);
  if (*(a2 + 8) == 1)
  {
    v10 = v6;
    while (v10 != a1[7])
    {
      v12 = *(*(*v10 + 16) + 4);
      if (v9 - v12 == 0x8000)
      {
        if (v9 > v12)
        {
          break;
        }
      }

      else if (v9 != v12 && ((v9 - v12) & 0x8000) == 0)
      {
        break;
      }

      v10 = *v10;
      if (v12 == v9)
      {
        goto LABEL_35;
      }
    }

    operator new();
  }

  v13 = a3;
  do
  {
    if (v13 == a3[1])
    {
LABEL_34:
      operator new();
    }

    v15 = *(*(*v13 + 16) + 4);
    if (v9 - v15 == 0x8000)
    {
      if (v9 > v15)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != v15 && ((v9 - v15) & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    v13 = *v13;
  }

  while (v15 != v9);
LABEL_35:
  v20 = *(a1[1] + 8);
  for (i = a3[2]; i > v20; i = a3[2])
  {
    v22 = a3[1];
    v24 = *v22;
    v23 = v22[1];
    *(v24 + 8) = v23;
    *v23 = v24;
    a3[2] = i - 1;
    v25 = v22[2];
    v22[2] = 0;
    if (v25)
    {
      v26 = *(v25 + 16);
      if (v26)
      {
        (*(*v26 + 24))(v26);
      }

      MEMORY[0x2743DA540](v25, 0x1020C407D5D75B9);
    }

    operator delete(v22);
  }
}

webrtc::ForwardErrorCorrection::ReceivedFecPacket *webrtc::ForwardErrorCorrection::AttemptRecovery(void *a1, void *a2)
{
  v2 = a1 + 6;
  v3 = a1[7];
  if (v3 == a1 + 6)
  {
    return 0;
  }

  while (1)
  {
    result = v3[2];
    v7 = (result + 8);
    v8 = *(result + 2);
    if (v8 == (result + 8))
    {
      break;
    }

    v9 = 0;
    do
    {
      if (!*(v8[2] + 8) && v9++ > 0)
      {
        break;
      }

      v8 = v8[1];
    }

    while (v8 != v7);
    if (!v9)
    {
      break;
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (a2[2])
    {
      if (!*(result + 3))
      {
        goto LABEL_23;
      }

      v11 = (*(*(*a2 + 16) + 4) - *(*(*v7 + 16) + 4));
      if (v11 < 0)
      {
        v11 = -v11;
      }

      if (v11 >= 0x4000)
      {
        break;
      }
    }

    v3 = v3[1];
LABEL_4:
    if (v3 == v2)
    {
      return 0;
    }
  }

  if (v3 != v2)
  {
    v12 = *v3;
    v13 = v3[1];
    *(v12 + 8) = v13;
    *v13 = v12;
    --a1[8];
    v3[2] = 0;
    if (result)
    {
      webrtc::ForwardErrorCorrection::ReceivedFecPacket::~ReceivedFecPacket(result);
      MEMORY[0x2743DA540]();
    }

    operator delete(v3);
    v3 = v13;
    goto LABEL_4;
  }

LABEL_23:
  __break(1u);
  return result;
}

webrtc::ForwardErrorCorrection::ReceivedFecPacket *webrtc::ForwardErrorCorrection::DecodeFec(webrtc::ForwardErrorCorrection::ReceivedFecPacket *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(*(result + 1) + 8);
  if (a3[2] == v5)
  {
    if (!v5)
    {
      __break(1u);
      return result;
    }

    v6 = *(*a3 + 16);
    if (*a2 == *v6)
    {
      LODWORD(v6) = (*(a2 + 4) - *(v6 + 4));
      v6 = (v6 & 0x80000000) == 0 ? v6 : -v6;
      if (v5 < v6)
      {
        v7 = a2;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/forward_error_correction.cc");
        }

        webrtc::ForwardErrorCorrection::ResetState(v4, a3);
        a2 = v7;
      }
    }
  }

  webrtc::ForwardErrorCorrection::InsertPacket(v4, a2, a3);

  return webrtc::ForwardErrorCorrection::AttemptRecovery(v4, a3);
}

unsigned __int8 *webrtc::internal::PacketMaskTable::LookUp(webrtc::internal::PacketMaskTable *this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 12)
  {
    if (a2 <= 0x10)
    {
      v22 = 2;
    }

    else
    {
      v22 = 6;
    }

    if (a3 < 1)
    {
LABEL_147:
      v77 = this + 8;
      goto LABEL_148;
    }

    v23 = 0;
    v24 = vdupq_n_s64(v22 - 1);
    v25 = this + 9;
    v26 = vdupq_n_s64(1uLL);
    v27 = vdupq_n_s64(2uLL);
    v28 = vdupq_n_s64(3uLL);
    v29 = vdupq_n_s64(4uLL);
    v30 = vdupq_n_s64(5uLL);
    v31 = vdupq_n_s64(6uLL);
    v32 = vdupq_n_s64(7uLL);
    v80 = v22;
LABEL_13:
    v33 = v25;
    v34 = xmmword_273B92130;
    while (1)
    {
      v35 = vmovn_s64(vcgeq_u64(v24, v34));
      v36 = vshlq_n_s64(v34, 3uLL);
      if (v35.i8[0])
      {
        a7 = v36.i32[0] / a3;
        v8 = v36.i32[0] % a3;
        if ((v35.i8[4] & 1) == 0)
        {
LABEL_17:
          v37 = vorrq_s8(v36, v26);
          if ((v35.i8[0] & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_34;
        }
      }

      else if ((v35.i8[4] & 1) == 0)
      {
        goto LABEL_17;
      }

      a7 = v36.i32[2] % a3;
      v37 = vorrq_s8(v36, v26);
      if ((v35.i8[0] & 1) == 0)
      {
LABEL_18:
        if ((v35.i8[4] & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_35;
      }

LABEL_34:
      a8 = v37.i32[0] / a3;
      v10 = v37.i32[0] % a3;
      if ((v35.i8[4] & 1) == 0)
      {
LABEL_19:
        v38 = vorrq_s8(v36, v27);
        if ((v35.i8[0] & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_36;
      }

LABEL_35:
      a8 = v37.i32[2] % a3;
      v38 = vorrq_s8(v36, v27);
      if ((v35.i8[0] & 1) == 0)
      {
LABEL_20:
        if ((v35.i8[4] & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_37;
      }

LABEL_36:
      v9 = v38.i32[0] / a3;
      v12 = v38.i32[0] % a3;
      if ((v35.i8[4] & 1) == 0)
      {
LABEL_21:
        v39 = vorrq_s8(v36, v28);
        if ((v35.i8[0] & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_38;
      }

LABEL_37:
      v9 = v38.i32[2] % a3;
      v39 = vorrq_s8(v36, v28);
      if ((v35.i8[0] & 1) == 0)
      {
LABEL_22:
        if ((v35.i8[4] & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

LABEL_38:
      v11 = v39.i32[0] / a3;
      v14 = v39.i32[0] % a3;
      if ((v35.i8[4] & 1) == 0)
      {
LABEL_23:
        v40 = vorrq_s8(v36, v29);
        if ((v35.i8[0] & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_40;
      }

LABEL_39:
      v11 = v39.i32[2] % a3;
      v40 = vorrq_s8(v36, v29);
      if ((v35.i8[0] & 1) == 0)
      {
LABEL_24:
        if ((v35.i8[4] & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_41;
      }

LABEL_40:
      v13 = v40.i32[0] / a3;
      v16 = v40.i32[0] % a3;
      if ((v35.i8[4] & 1) == 0)
      {
LABEL_25:
        v41 = vorrq_s8(v36, v30);
        if ((v35.i8[0] & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_42;
      }

LABEL_41:
      v13 = v40.i32[2] % a3;
      v41 = vorrq_s8(v36, v30);
      if ((v35.i8[0] & 1) == 0)
      {
LABEL_26:
        v42 = v35.u32[1];
        if ((v35.i8[4] & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_43;
      }

LABEL_42:
      v15 = v41.i32[0] / a3;
      v17 = v41.i32[0] % a3;
      v42 = v35.u32[1];
      if ((v35.i8[4] & 1) == 0)
      {
LABEL_27:
        v43 = vorrq_s8(v36, v31);
        v44 = v35.u32[0];
        if ((v35.i8[0] & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_44;
      }

LABEL_43:
      v42 = v41.u32[2];
      v15 = v41.i32[2] % a3;
      v43 = vorrq_s8(v36, v31);
      v44 = v35.u32[0];
      if ((v35.i8[0] & 1) == 0)
      {
LABEL_28:
        if ((v35.i8[4] & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_45;
      }

LABEL_44:
      v44 = v43.i32[0] / a3;
      v42 = v43.i32[0] % a3;
      if ((v35.i8[4] & 1) == 0)
      {
LABEL_29:
        v45 = vorrq_s8(v36, v32);
        if (v35.i8[0])
        {
          goto LABEL_46;
        }

        goto LABEL_30;
      }

LABEL_45:
      v44 = v43.i32[2] % a3;
      v45 = vorrq_s8(v36, v32);
      if (v35.i8[0])
      {
LABEL_46:
        if (v23 != v8 || v36.i64[0] >= a2)
        {
          v47 = 0;
        }

        else
        {
          v47 = 0x80;
        }

        if (v23 != v10 || v37.i64[0] >= a2)
        {
          v49 = 0;
        }

        else
        {
          v49 = 64;
        }

        if (v23 != v12 || v38.i64[0] >= a2)
        {
          v10 = 0;
        }

        else
        {
          v10 = 32;
        }

        if (v23 != v14 || v39.i64[0] >= a2)
        {
          v12 = 0;
        }

        else
        {
          v12 = 16;
        }

        v52 = v23 != v16 || v40.i64[0] >= a2;
        v53 = v49 | v47;
        if (v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = 8;
        }

        v55 = v23 != v17 || v41.i64[0] >= a2;
        v14 = v45.i64[0];
        if (v55)
        {
          v16 = 0;
        }

        else
        {
          v16 = 4;
        }

        v57 = v45.i64[0] < a2 && v23 == v45.i32[0] % a3;
        v58 = v23 != v42 || v43.i64[0] >= a2;
        v59 = v53 | v10 | v12;
        if (v58)
        {
          v60 = 0;
        }

        else
        {
          v60 = 2;
        }

        v8 = v54 | v16;
        *(v33 - 1) = v59 | v8 | v60 | v57;
        if ((v35.i8[4] & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_95:
        if (v23 != a7 || v36.i64[1] >= a2)
        {
          v62 = 0;
        }

        else
        {
          v62 = 0x80;
        }

        if (v23 != a8 || v37.i64[1] >= a2)
        {
          v64 = 0;
        }

        else
        {
          v64 = 64;
        }

        if (v23 != v9 || v38.i64[1] >= a2)
        {
          v66 = 0;
        }

        else
        {
          v66 = 32;
        }

        if (v23 != v11 || v39.i64[1] >= a2)
        {
          a8 = 0;
        }

        else
        {
          a8 = 16;
        }

        v68 = v23 != v13 || v40.i64[1] >= a2;
        v69 = v64 | v62;
        if (v68)
        {
          v70 = 0;
        }

        else
        {
          v70 = 8;
        }

        if (v23 != v15 || v41.i64[1] >= a2)
        {
          v9 = 0;
        }

        else
        {
          v9 = 4;
        }

        v73 = v45.i64[1] < a2 && v23 == v45.i32[2] % a3;
        v8 = v43.i64[1];
        v74 = v23 != v44 || v43.i64[1] >= a2;
        v75 = v69 | v66 | a8;
        if (v74)
        {
          a7 = 0;
        }

        else
        {
          a7 = 2;
        }

        *v33 = v75 | v70 | v9 | a7 | v73;
        goto LABEL_14;
      }

LABEL_30:
      if (v35.i8[4])
      {
        goto LABEL_95;
      }

LABEL_14:
      v34 = vaddq_s64(v34, vdupq_n_s64(2uLL));
      v33 += 2;
      v22 -= 2;
      if (!v22)
      {
        ++v23;
        v22 = v80;
        v25 += v80;
        if (v23 == a3)
        {
          goto LABEL_147;
        }

        goto LABEL_13;
      }
    }
  }

  v18 = (*this + 1);
  if (a2 >= 2)
  {
    v19 = a2 - 1;
    do
    {
      v21 = *v18++;
      v20 = v21;
      if (v21)
      {
        v18 += ((v20 - 1) * (v20 - 2) + 4 * v20 - 2) & 0xFFFFFFFFFFFFFFFELL;
      }

      --v19;
    }

    while (v19);
  }

  v76 = 1;
  if (a3 >= 2)
  {
    v76 = (4 * (a3 - 2) + (a3 - 2) * (a3 - 3) + 2) | 1;
  }

  v77 = &v18[v76];
LABEL_148:
  if (a3)
  {
    return v77;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::internal::GeneratePacketMasks(uint64_t this, unsigned int a2, unsigned int a3, uint64_t a4, webrtc::internal::PacketMaskTable *a5, webrtc::internal::PacketMaskTable *a6, unsigned __int8 *a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = this;
  if (!a3 || (a4 & 1) == 0)
  {
    v22 = webrtc::internal::PacketMaskTable::LookUp(a5, this, a2, a4, a5, a6, a7, a8);
    v24 = v23;
    v20 = v8;
    v19 = v22;
    v21 = v24;
    goto LABEL_23;
  }

  if (this <= 0x10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 6;
  }

  v12 = vcvts_n_f32_s32(a2, 1uLL);
  if (v12 >= a3)
  {
    v12 = a3;
  }

  if ((2 * a3) < this && a2 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = a2 - v14;
  if (v14 >= 1)
  {
    if (a3 >= 0x11)
    {
      v16 = 6;
    }

    else
    {
      v16 = 2;
    }

    v18 = webrtc::internal::PacketMaskTable::LookUp(a5, a3, v14, a4, a5, a6, a7, a8);
    if (v16 == v11)
    {
      this = memcpy(v8, v18, (v14 * v11));
    }

    else
    {
      LODWORD(this) = 0;
      v25 = 0;
      v26 = v14;
      do
      {
        v27 = &v18[v25];
        a5 = *v27;
        a6 = (v8 + this);
        *a6 = a5;
        a4 = v27[1];
        *(a6 + 1) = a4;
        if (a3 >= 0x11)
        {
          *(v8 + this + 2) = v18[v25 + 2];
          *(v8 + this + 3) = v18[v25 + 3];
          *(v8 + this + 4) = v18[v25 + 4];
          a4 = v18[v25 + 5];
          *(v8 + this + 5) = a4;
        }

        v25 += v16;
        this = (this + v11);
        --v26;
      }

      while (v26);
    }
  }

  if (v15 >= 1)
  {
    v19 = webrtc::internal::PacketMaskTable::LookUp(v9, v10, v15, a4, a5, a6, a7, a8);
    v20 = (v8 + v14 * v11);
    v21 = (v15 * v11);
LABEL_23:

    return memcpy(v20, v19, v21);
  }

  return this;
}

unsigned __int8 *dcsctp::ForwardTsnChunk::Parse@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a2 < 8 || *v3 != 192 || ((v4 = v3[3], v5 = v4 | (v3[2] << 8), (v4 & 3) == 0) ? (v6 = v5 >= 8) : (v6 = 0), v6 ? (v7 = a2 >= v5) : (v7 = 0), v7 ? (v8 = a2 - v5 >= 4) : (v8 = 1), v8))
  {
    v9 = 0;
    *a3 = 0;
  }

  else
  {
    if (v5 - 8 >= 4)
    {
      if (v5 - 8 < 0x5555555555555558)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    result = 0;
    *(a3 + 8) = bswap32(*(v3 + 1));
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *a3 = &unk_288293BB8;
    v9 = 1;
  }

  *(a3 + 40) = v9;
  return result;
}

void dcsctp::ForwardTsnChunk::~ForwardTsnChunk(dcsctp::ForwardTsnChunk *this)
{
  *this = &unk_288291358;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288291358;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::ForwardTsnChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (v11 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = *a2;
  v14 = a2[1] - *a2;
  v15 = 0xAAAAAAAAAAAAAAACLL * ((v11 - v10) >> 2) + 8;
  if (v14 >= v15 + v14)
  {
    if (v14 > v15 + v14)
    {
      a2[1] = v13 + v15 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 0xAAAAAAAAAAAAAAACLL * ((v11 - v10) >> 2) + 8);
    v13 = *a2;
  }

  v16 = (v13 + v14);
  *v16 = -64;
  v16[2] = BYTE1(v15);
  v16[3] = v15;
  if (0xAAAAAAAAAAAAAAACLL * ((v11 - v10) >> 2) >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_19:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v24);
LABEL_20:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 84, "FixedSize + variable_offset + SubSize <= data_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v24);
    dcsctp::ForwardTsnChunk::ToString(v23);
    return;
  }

  v17 = *a2 + v14;
  *(v17 + 4) = bswap32(*(a1 + 8));
  if (v11 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 2) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 2);
    }

    v19 = (v12 + 2);
    for (i = 8; i + 4 <= v15; i += 4)
    {
      if (0x5555555555555554 * ((v11 - v10) >> 2) + i == 8 || v15 <= i)
      {
        goto LABEL_19;
      }

      v21 = (v17 + i);
      *v21 = bswap32(*(v19 - 1)) >> 16;
      v22 = *v19;
      v19 += 6;
      v21[1] = bswap32(v22) >> 16;
      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_20;
  }
}

double dcsctp::ForwardTsnSupportedParameter::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 > 0xFFFFFFFFFFFFFFFBLL)
  {
    a2[1] = v2 + v3 + 4;
    *&result = 67109056;
    *(v2 + v3) = 67109056;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 4uLL);
    *&result = 67109056;
    *(*a2 + v3) = 67109056;
  }

  return result;
}

void dcsctp::ForwardTsnSupportedParameter::ToString(char *a1@<X8>)
{
  a1[23] = 21;
  if (a1 <= "Forward TSN Supported" && a1 + 21 > "Forward TSN Supported")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "Forward TSN Supported");
  }
}

unint64_t *webrtc::FrameBlocker::FrameBlocker(unint64_t *this, unint64_t a2, unint64_t a3)
{
  *this = a2;
  this[1] = a3;
  if (a3)
  {
    if (a3 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[2] = 0;
  this[3] = 0;
  this[4] = 0;
  if (a2)
  {
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  for (i = this[2]; i; i += 3)
  {
    for (j = *i; j != i[1]; j += 3)
    {
      if (j[2] - *j <= 0xFFuLL)
      {
        operator new();
      }
    }
  }

  return this;
}

unint64_t *webrtc::FrameBlocker::InsertSubFrameAndExtractBlock(unint64_t *result, void *a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = result;
    if (result[1])
    {
      v7 = 0;
      v8 = 1;
      v34 = result;
      do
      {
        if (v8)
        {
          for (i = 0; i < v8; ++i)
          {
            v10 = v4[2];
            if (0xAAAAAAAAAAAAAAABLL * ((v4[3] - v10) >> 3) <= v7)
            {
              goto LABEL_34;
            }

            v12 = (v10 + 24 * v7);
            v11 = *v12;
            if (0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3) <= i)
            {
              goto LABEL_34;
            }

            v13 = v11 + 24 * i;
            v14 = *(v13 + 8);
            v15 = v14 - *v13;
            if (v14 != *v13)
            {
              result = memmove((*(a3 + 8) + 4 * ((i + *(a3 + 4) * v7) << 6)), *v13, v15);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v7)
            {
              goto LABEL_34;
            }

            v17 = (*a2 + 24 * v7);
            v16 = *v17;
            if (i >= (v17[1] - *v17) >> 4)
            {
              goto LABEL_34;
            }

            v18 = (0x4000000000 - (v15 << 30)) >> 30;
            if (v15 << 30 != 0x4000000000)
            {
              result = memmove((*(a3 + 8) - v18 + 4 * ((i + *(a3 + 4) * v7) << 6) + 256), *(v16 + 16 * i), (0x4000000000 - (v15 << 30)) >> 30);
            }

            v19 = v4[2];
            if (0xAAAAAAAAAAAAAAABLL * ((v4[3] - v19) >> 3) <= v7 || (v21 = (v19 + 24 * v7), v20 = *v21, 0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3) <= i) || (v22 = (v20 + 24 * i), v23 = *v22, v22[1] = *v22, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v7) || (v25 = (*a2 + 24 * v7), v24 = *v25, i >= (v25[1] - *v25) >> 4))
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v26 = (v24 + 16 * i);
            v27 = 4 * v26[1];
            v28 = v27 - v18;
            v29 = (v27 - v18) >> 2;
            if (v29 >= 1)
            {
              v30 = (*v26 + v18);
              v31 = v22[2] - v23;
              if (v31 < v28)
              {
                v32 = v31 >> 1;
                if (v31 >> 1 <= v29)
                {
                  v32 = v29;
                }

                if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v33 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v33 = v32;
                }

                if (!(v33 >> 62))
                {
                  operator new();
                }

LABEL_35:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              if (v27 != v18)
              {
                result = memmove(v23, v30, v27 - v18);
              }

              v22[1] = &v23[v28];
              v4 = v34;
            }

            v8 = v4[1];
          }

          v3 = *v4;
        }

        ++v7;
      }

      while (v7 < v3);
    }
  }

  return result;
}

unint64_t *webrtc::FrameBlocker::ExtractBlock(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    if (result[1])
    {
      v5 = 0;
      v6 = 1;
      while (!v6)
      {
LABEL_4:
        if (++v5 >= v2)
        {
          return result;
        }
      }

      v7 = 0;
      v8 = 0;
      v10 = v3[2];
      v9 = v3[3];
      while (1)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
        if (v11 <= v5)
        {
          break;
        }

        v12 = *(v10 + 24 * v5);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 24 * v5 + 8) - v12) >> 3) <= v8)
        {
          break;
        }

        v13 = v12 + v7;
        v14 = *v13;
        v15 = *(v13 + 8);
        if (v15 != v14)
        {
          result = memmove((*(a2 + 8) + 4 * ((v8 + v5 * *(a2 + 4)) << 6)), v14, v15 - v14);
          v10 = v3[2];
          v9 = v3[3];
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
        }

        if (v11 <= v5)
        {
          break;
        }

        v16 = *(v10 + 24 * v5);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 24 * v5 + 8) - v16) >> 3) <= v8)
        {
          break;
        }

        *(v16 + v7 + 8) = *(v16 + v7);
        ++v8;
        v6 = v3[1];
        v7 += 24;
        if (v8 >= v6)
        {
          v2 = *v3;
          goto LABEL_4;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t webrtc::FrameBuffer::FrameBuffer(uint64_t a1, int a2, int a3, uint64_t a4)
{
  (*(*a4 + 16))(__p, a4, "WebRTC-LegacyFrameIdJumpBehavior", 32);
  v7 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v7 < 8)
  {
    v8 = 1;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = __p[0];
  if ((v12 & 0x80u) == 0)
  {
    v9 = __p;
  }

  v8 = *v9 != 0x64656C6261736944;
  if (v12 < 0)
  {
LABEL_9:
    operator delete(__p[0]);
  }

LABEL_10:
  *a1 = v8;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a1 + 24;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  if (a3)
  {
    if ((a3 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 176) = 0;
  return a1;
}

uint64_t webrtc::FrameBuffer::InsertFrame(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 352);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(v3 + 2496);
    v8 = (v3 + 368);
    v9 = v4 - 1;
    do
    {
      v10 = *(v3 + 360 + 8 * v6);
      if (v10 >= v7)
      {
        break;
      }

      ++v6;
      v11 = v9;
      v12 = v8;
      if (v6 < v4)
      {
        do
        {
          v13 = *v12++;
          if (v10 == v13)
          {
            goto LABEL_9;
          }
        }

        while (--v11);
      }

      --v9;
      ++v8;
      v5 = v6 >= v4;
    }

    while (v6 != v4);
LABEL_9:
    if (!v5)
    {
      return 0;
    }

    if ((*(a1 + 160) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = *(v3 + 2496);
    if ((*(a1 + 160) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (v7 <= *(a1 + 152))
  {
    result = 0;
    if (v4 || (*a1 & 1) == 0)
    {
      return result;
    }

    v15 = *(a1 + 168);
    if ((v15 & 0x100000000) == 0)
    {
      __break(1u);
      return result;
    }

    v16 = *(v3 + 160);
    v17 = v16 >= v15;
    v18 = v16 - v15;
    if (!v18)
    {
      return 0;
    }

    v19 = v18 != 0 && v17;
    v20 = v18 == 0x80000000 ? v19 : v18 >= 0;
    if (v20 != 1)
    {
      return 0;
    }

    v21 = a2;
    std::__tree<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>>>::destroy(a1 + 16, *(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = a1 + 24;
    if (*(a1 + 56) == 1)
    {
      *(a1 + 56) = 0;
      if (*(a1 + 72) != 1)
      {
        goto LABEL_27;
      }
    }

    else if (*(a1 + 72) != 1)
    {
LABEL_27:
      if (*(a1 + 88) == 1)
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    *(a1 + 72) = 0;
    if (*(a1 + 88) == 1)
    {
LABEL_28:
      *(a1 + 88) = 0;
      if (*(a1 + 104) != 1)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (*(a1 + 104) != 1)
    {
LABEL_34:
      webrtc::video_coding::DecodedFramesHistory::Clear(a1 + 112);
      a2 = v21;
      goto LABEL_35;
    }

LABEL_33:
    *(a1 + 104) = 0;
    goto LABEL_34;
  }

LABEL_35:
  if (*(a1 + 32) == *(a1 + 8))
  {
    if (*(*a2 + 352))
    {
      return 0;
    }

    v27 = a2;
    std::__tree<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>>>::destroy(a1 + 16, *(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = a1 + 24;
    if (*(a1 + 56) == 1)
    {
      *(a1 + 56) = 0;
      if (*(a1 + 72) != 1)
      {
        goto LABEL_47;
      }
    }

    else if (*(a1 + 72) != 1)
    {
LABEL_47:
      v28 = v27;
      if (*(a1 + 88) == 1)
      {
        goto LABEL_48;
      }

      goto LABEL_55;
    }

    *(a1 + 72) = 0;
    v28 = v27;
    if (*(a1 + 88) == 1)
    {
LABEL_48:
      *(a1 + 88) = 0;
      if (*(a1 + 104) != 1)
      {
        goto LABEL_49;
      }

      goto LABEL_56;
    }

LABEL_55:
    if (*(a1 + 104) != 1)
    {
LABEL_49:
      if (*(a1 + 172) == 1)
      {
        goto LABEL_50;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 104) = 0;
    if (*(a1 + 172) == 1)
    {
LABEL_50:
      *(a1 + 172) = 0;
      if (*(a1 + 160) != 1)
      {
        goto LABEL_51;
      }

      goto LABEL_58;
    }

LABEL_57:
    if (*(a1 + 160) != 1)
    {
LABEL_51:
      v29 = *(a1 + 120);
      if (v29 < 1)
      {
        goto LABEL_63;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(a1 + 160) = 0;
    v29 = *(a1 + 120);
    if (v29 < 1)
    {
LABEL_63:
      if (*(a1 + 144) == 1)
      {
        *(a1 + 144) = 0;
      }

      *v28 = 0;
LABEL_66:
      operator new();
    }

LABEL_59:
    v30 = *(a1 + 112);
    v31 = v29 >> 6;
    if (v29 >= 0x40)
    {
      bzero(*(a1 + 112), 8 * v31);
      v28 = v27;
    }

    if ((v29 & 0x3F) != 0)
    {
      *(v30 + 8 * v31) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v29 & 0x3F));
    }

    goto LABEL_63;
  }

  v22 = *(a1 + 24);
  v23 = *a2;
  v24 = *(*a2 + 2496);
  *a2 = 0;
  if (!v22)
  {
    goto LABEL_66;
  }

  while (1)
  {
    while (1)
    {
      v25 = v22;
      v26 = v22[4];
      if (v24 >= v26)
      {
        break;
      }

      v22 = *v25;
      if (!*v25)
      {
        goto LABEL_66;
      }
    }

    if (v26 >= v24)
    {
      break;
    }

    v22 = v25[1];
    if (!v22)
    {
      goto LABEL_66;
    }
  }

  if (!v23)
  {
    return 0;
  }

  (*(*v23 + 8))(v23);
  return 0;
}

void webrtc::FrameBuffer::FindNextAndLastDecodableTemporalUnit(webrtc::FrameBuffer *this)
{
  __p[4] = *MEMORY[0x277D85DE8];
  if (*(this + 56) == 1)
  {
    *(this + 56) = 0;
    if (*(this + 72) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(this + 72) = 0;
    if (*(this + 104) != 1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(this + 72) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(this + 104) != 1)
  {
    return;
  }

LABEL_7:
  v2 = *(this + 2);
  v98 = 0;
  v3 = this + 24;
  if (v2 == this + 24)
  {
    goto LABEL_159;
  }

  v97 = 0;
  v4 = v2;
  while (2)
  {
    if ((*(this + 104) & 1) == 0)
    {
      goto LABEL_162;
    }

    v5 = v4;
    v6 = *(v4 + 4);
    if (v6 > *(this + 12))
    {
      break;
    }

    v7 = v98;
    if (*(*(v4 + 5) + 160) != *(*(v2 + 5) + 160))
    {
      if (v98)
      {
        operator delete(__p[0]);
        v6 = *(v4 + 4);
      }

      v7 = 0;
      v98 = 0;
      v2 = v4;
    }

    v8 = __p[0];
    if ((v7 & 1) == 0)
    {
      v8 = __p;
    }

    v9 = 4;
    if (v7)
    {
      v9 = __p[1];
    }

    if (v7 >> 1 == v9)
    {
      absl::inlined_vector_internal::Storage<long long,4ul,std::allocator<long long>>::EmplaceBackSlow<long long>(&v98);
    }

    if (!v8)
    {
LABEL_162:
      __break(1u);
    }

    v8[v7 >> 1] = v6;
    v98 = v7 + 2;
    v10 = *(v4 + 1);
    v11 = v4;
    if (v10)
    {
      do
      {
        v4 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v4 = *(v11 + 2);
        v12 = *v4 == v11;
        v11 = v4;
      }

      while (!v12);
    }

    if (*(*(v5 + 5) + 400) != 1)
    {
      goto LABEL_10;
    }

    v13 = v2;
    if (v2 == v4)
    {
LABEL_153:
      if ((*(this + 56) & 1) == 0)
      {
        *(this + 5) = v2;
        *(this + 6) = v5;
        *(this + 56) = 1;
      }

      v97 = *(*(v2 + 5) + 160);
      goto LABEL_10;
    }

    do
    {
      v15 = *(v13 + 5);
      v16 = *(v15 + 352);
      if (v16)
      {
        v17 = (v15 + 360);
      }

      else
      {
        v17 = 0;
      }

      if (!v16)
      {
LABEL_140:
        v67 = 1;
        goto LABEL_142;
      }

      v18 = *v17;
      if (*(this + 144) == 1)
      {
        v19 = *(this + 17);
        v20 = *(this + 15);
        if ((v19 - v20) >= v18)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/decoded_frames_history.cc");
          }
        }

        else if (v19 >= v18)
        {
          if (((v18 % v20) & 0x80000000) != 0)
          {
            v21 = v18 % v20 + v20;
          }

          else
          {
            v21 = (v18 % v20) & 0x7FFFFFFF;
          }

          if (v20 <= v21)
          {
            goto LABEL_162;
          }

          if ((*(*(this + 14) + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21))
          {
            goto LABEL_56;
          }
        }
      }

      v29 = __p[0];
      if ((v98 & 1) == 0)
      {
        v29 = __p;
      }

      v30 = v98 >> 1;
      if (v98 >= 2)
      {
        v36 = 8 * v30;
        v31 = v29;
        while (*v31 != v18)
        {
          ++v31;
          v36 -= 8;
          if (!v36)
          {
            goto LABEL_141;
          }
        }
      }

      else
      {
        v31 = v29;
      }

      if (v31 == &v29[v30])
      {
        goto LABEL_141;
      }

LABEL_56:
      if (v16 == 1)
      {
        goto LABEL_140;
      }

      v32 = v17[1];
      if (*(this + 144) == 1)
      {
        v33 = *(this + 17);
        v34 = *(this + 15);
        if ((v33 - v34) >= v32)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/decoded_frames_history.cc");
          }
        }

        else if (v33 >= v32)
        {
          if (((v32 % v34) & 0x80000000) != 0)
          {
            v35 = v32 % v34 + v34;
          }

          else
          {
            v35 = (v32 % v34) & 0x7FFFFFFF;
          }

          if (v34 <= v35)
          {
            goto LABEL_162;
          }

          if ((*(*(this + 14) + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35))
          {
            goto LABEL_77;
          }
        }
      }

      v44 = __p[0];
      if ((v98 & 1) == 0)
      {
        v44 = __p;
      }

      v45 = v98 >> 1;
      if (v98 >= 2)
      {
        v51 = 8 * v45;
        v46 = v44;
        while (*v46 != v32)
        {
          ++v46;
          v51 -= 8;
          if (!v51)
          {
            goto LABEL_141;
          }
        }
      }

      else
      {
        v46 = v44;
      }

      if (v46 == &v44[v45])
      {
        goto LABEL_141;
      }

LABEL_77:
      if (v16 == 2)
      {
        goto LABEL_140;
      }

      v47 = v17[2];
      if (*(this + 144) == 1)
      {
        v48 = *(this + 17);
        v49 = *(this + 15);
        if ((v48 - v49) >= v47)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/decoded_frames_history.cc");
          }
        }

        else if (v48 >= v47)
        {
          if (((v47 % v49) & 0x80000000) != 0)
          {
            v50 = v47 % v49 + v49;
          }

          else
          {
            v50 = (v47 % v49) & 0x7FFFFFFF;
          }

          if (v49 <= v50)
          {
            goto LABEL_162;
          }

          if ((*(*(this + 14) + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v50))
          {
            goto LABEL_98;
          }
        }
      }

      v59 = __p[0];
      if ((v98 & 1) == 0)
      {
        v59 = __p;
      }

      v60 = v98 >> 1;
      if (v98 >= 2)
      {
        v66 = 8 * v60;
        v61 = v59;
        while (*v61 != v47)
        {
          v67 = 0;
          ++v61;
          v66 -= 8;
          if (!v66)
          {
            goto LABEL_142;
          }
        }
      }

      else
      {
        v61 = v59;
      }

      if (v61 == &v59[v60])
      {
        goto LABEL_141;
      }

LABEL_98:
      if (v16 == 3)
      {
        goto LABEL_140;
      }

      v62 = v17[3];
      if (*(this + 144) != 1)
      {
        goto LABEL_114;
      }

      v63 = *(this + 17);
      v64 = *(this + 15);
      if ((v63 - v64) >= v62)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v68, v69, v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/decoded_frames_history.cc");
        }

LABEL_114:
        v75 = __p[0];
        if ((v98 & 1) == 0)
        {
          v75 = __p;
        }

        v76 = v98 >> 1;
        if (v98 >= 2)
        {
          v82 = 8 * v76;
          v77 = v75;
          while (*v77 != v62)
          {
            v67 = 0;
            ++v77;
            v82 -= 8;
            if (!v82)
            {
              goto LABEL_142;
            }
          }
        }

        else
        {
          v77 = v75;
        }

        if (v77 == &v75[v76])
        {
          goto LABEL_141;
        }

        goto LABEL_119;
      }

      if (v63 < v62)
      {
        goto LABEL_114;
      }

      if (((v62 % v64) & 0x80000000) != 0)
      {
        v65 = v62 % v64 + v64;
      }

      else
      {
        v65 = (v62 % v64) & 0x7FFFFFFF;
      }

      if (v64 <= v65)
      {
        goto LABEL_162;
      }

      if (((*(*(this + 14) + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
      {
        goto LABEL_114;
      }

LABEL_119:
      if (v16 == 4)
      {
        goto LABEL_140;
      }

      v78 = v17[4];
      if (*(this + 144) == 1)
      {
        v79 = *(this + 17);
        v80 = *(this + 15);
        if ((v79 - v80) >= v78)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v83, v84, v85, v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/decoded_frames_history.cc");
          }
        }

        else if (v79 >= v78)
        {
          if (((v78 % v80) & 0x80000000) != 0)
          {
            v81 = v78 % v80 + v80;
          }

          else
          {
            v81 = (v78 % v80) & 0x7FFFFFFF;
          }

          if (v80 <= v81)
          {
            goto LABEL_162;
          }

          if ((*(*(this + 14) + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v81))
          {
            goto LABEL_140;
          }
        }
      }

      v90 = __p[0];
      if ((v98 & 1) == 0)
      {
        v90 = __p;
      }

      v91 = v98 >> 1;
      if (v98 >= 2)
      {
        v95 = 8 * v91;
        v92 = v90;
        while (*v92 != v78)
        {
          v67 = 0;
          ++v92;
          v95 -= 8;
          if (!v95)
          {
            goto LABEL_142;
          }
        }
      }

      else
      {
        v92 = v90;
      }

      if (v92 != &v90[v91])
      {
        goto LABEL_140;
      }

LABEL_141:
      v67 = 0;
LABEL_142:
      v93 = *(v13 + 1);
      if (v93)
      {
        do
        {
          v94 = v93;
          v93 = *v93;
        }

        while (v93);
      }

      else
      {
        do
        {
          v94 = *(v13 + 2);
          v12 = *v94 == v13;
          v13 = v94;
        }

        while (!v12);
      }

      if (v94 == v4)
      {
        v14 = 0;
      }

      else
      {
        v14 = v67;
      }

      v13 = v94;
    }

    while ((v14 & 1) != 0);
    if (v67)
    {
      goto LABEL_153;
    }

LABEL_10:
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

  if (*(this + 56))
  {
    v96 = *(*(*(this + 5) + 40) + 160) | (v97 << 32);
    if ((*(this + 72) & 1) == 0)
    {
      *(this + 72) = 1;
    }

    *(this + 8) = v96;
  }

LABEL_159:
  if (v98)
  {
    operator delete(__p[0]);
  }
}

void webrtc::FrameBuffer::ExtractNextDecodableTemporalUnit(webrtc::FrameBuffer *this@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  if (*(this + 56) == 1)
  {
    v4 = *(this + 6);
    v5 = v4[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v4[2];
        v7 = *v6 == v4;
        v4 = v6;
      }

      while (!v7);
    }

    v8 = *(this + 5);
    if (v6 == v8)
    {
LABEL_23:

      webrtc::FrameBuffer::DropNextDecodableTemporalUnit(this);
    }

    else
    {
      while (1)
      {
        v9 = v8 + 5;
        webrtc::video_coding::DecodedFramesHistory::InsertDecoded(this + 112, v8[4], *(v8[5] + 160));
        v10 = *a2;
        v11 = a2[1];
        if (*a2)
        {
          v12 = a2[2];
        }

        else
        {
          v11 = a2 + 1;
          v12 = 4;
        }

        if (v10 >> 1 == v12)
        {
          absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::EncodedFrame>,4ul,std::allocator<std::unique_ptr<webrtc::EncodedFrame>>>::EmplaceBackSlow<std::unique_ptr<webrtc::EncodedFrame>>(a2);
        }

        if (!v11)
        {
          break;
        }

        v13 = *v9;
        *v9 = 0;
        v11[v10 >> 1] = v13;
        *a2 = v10 + 2;
        v14 = v8[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v8[2];
            v7 = *v15 == v8;
            v8 = v15;
          }

          while (!v7);
        }

        v8 = v15;
        if (v15 == v6)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }
  }
}

void webrtc::FrameBuffer::DropNextDecodableTemporalUnit(webrtc::FrameBuffer *this)
{
  if (*(this + 56) == 1)
  {
    v3 = *(this + 6);
    v4 = v3[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v3[2];
        v6 = *v5 == v3;
        v3 = v5;
      }

      while (!v6);
    }

    v7 = *(this + 2);
    if (v7 != v5)
    {
      v8 = 0;
      v9 = *(this + 2);
      do
      {
        if (v9[5])
        {
          ++v8;
        }

        v10 = v9[1];
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
          do
          {
            v11 = v9[2];
            v6 = *v11 == v9;
            v9 = v11;
          }

          while (!v6);
        }

        v9 = v11;
      }

      while (v11 != v5);
      *(this + 45) += v8;
      do
      {
        v12 = v7[1];
        v13 = v7;
        if (v12)
        {
          do
          {
            v14 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v14 = v13[2];
            v6 = *v14 == v13;
            v13 = v14;
          }

          while (!v6);
        }

        if (*(this + 2) == v7)
        {
          *(this + 2) = v14;
        }

        v15 = *(this + 3);
        --*(this + 4);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v15, v7);
        v16 = v7[5];
        v7[5] = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        operator delete(v7);
        v7 = v14;
      }

      while (v14 != v5);
    }

    webrtc::FrameBuffer::FindNextAndLastDecodableTemporalUnit(this);
  }
}

void absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::EncodedFrame>,4ul,std::allocator<std::unique_ptr<webrtc::EncodedFrame>>>::EmplaceBackSlow<std::unique_ptr<webrtc::EncodedFrame>>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void absl::inlined_vector_internal::Storage<long long,4ul,std::allocator<long long>>::EmplaceBackSlow<long long>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void std::__tree<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::FrameBuffer::FrameInfo>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void webrtc::anonymous namespace::FrameCadenceAdapterImpl::~FrameCadenceAdapterImpl(webrtc::_anonymous_namespace_::FrameCadenceAdapterImpl *this)
{
  *this = &unk_288293C18;
  if (*(this + 58))
  {
    v2 = *(this + 54);
    pthread_mutex_lock((v2 + 16));
    *(v2 + 80) = 0;
    pthread_mutex_unlock((v2 + 16));
    *(this + 54) = 0;
    operator new();
  }

  v3 = *(this + 73);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 54);
  *(this + 54) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 424) != 1)
  {
    if (*(this + 184) != 1)
    {
      return;
    }

LABEL_11:
    *(this + 7) = &unk_288293CC0;
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 11);
    return;
  }

  if (*(this + 184) == 1)
  {
    goto LABEL_11;
  }
}

{

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::FrameCadenceAdapterImpl::OnFrame(webrtc::_anonymous_namespace_::FrameCadenceAdapterImpl *this, const webrtc::VideoFrame *a2)
{
  (*(**(this + 1) + 16))(*(this + 1));
  atomic_fetch_add_explicit(this + 144, 1u, memory_order_relaxed);
  v4 = *(this + 73);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    (**v5)(*(a2 + 1));
  }

  if (*(a2 + 144) == 1)
  {
    v6 = *(a2 + 23);
    if (!v6)
    {
LABEL_10:
      operator new();
    }
  }

  else
  {
    v6 = *(a2 + 23);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  atomic_fetch_add_explicit(v6, 1u, memory_order_relaxed);
  goto LABEL_10;
}

void webrtc::anonymous namespace::FrameCadenceAdapterImpl::OnDiscardedFrame(webrtc::_anonymous_namespace_::FrameCadenceAdapterImpl *this)
{
  (*(**(this + 62) + 24))(*(this + 62));
  v2 = *(this + 73);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::anonymous namespace::FrameCadenceAdapterImpl::OnConstraintsChanged(uint64_t a1, __int128 *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc");
  }

  v11 = *(a1 + 584);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 1u, memory_order_relaxed);
  }

  v13 = *a2;
  v14 = a2[1];
  v12 = operator new(0x28uLL);
  *v12 = a1;
  *(v12 + 8) = v13;
  *(v12 + 24) = v14;
  operator new();
}

void webrtc::anonymous namespace::FrameCadenceAdapterImpl::Initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 496) = a2;
  if (*(a1 + 464))
  {
    v9 = *(a1 + 584);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 1u, memory_order_relaxed);
    }

    operator new();
  }

  while (1)
  {
    if (*(a1 + 184) == 1)
    {
      *(a1 + 56) = &unk_288293CC0;
      v11 = a2;
      std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((a1 + 88));
      a2 = v11;
    }

    *(a1 + 56) = &unk_288293CC0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = a2;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0;
    *(a1 + 144) = -1;
    *(a1 + 152) = 0;
    *(a1 + 156) = 0x447A000000000000;
    *(a1 + 168) = vdupq_n_s64(0xB9AuLL);
    *(a1 + 184) = 1;
    if (!*(a1 + 464))
    {
      break;
    }

    v10 = *(a1 + 432);
    if (v10)
    {
      goto LABEL_12;
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc", 1047, "vsync_encode_adapter_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v12);
  }

  if (*(a1 + 184))
  {
    v10 = a1 + 56;
LABEL_12:
    *(a1 + 456) = v10;
    return;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc", 1050, "passthrough_adapter_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v12);
}

void webrtc::anonymous namespace::FrameCadenceAdapterImpl::SetZeroHertzModeEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 448);
  *(a1 + 440) = a2;
  *(a1 + 448) = a3;
}

uint64_t webrtc::anonymous namespace::FrameCadenceAdapterImpl::UpdateLayerQualityConvergence(uint64_t this, unint64_t a2, __int16 a3)
{
  if (*(this + 424) == 1)
  {
    v3 = *(this + 360);
    if (a2 < (*(this + 368) - v3) >> 1)
    {
      v4 = v3 + 2 * a2;
      if (*(v4 + 1) == 1)
      {
        *v4 = a3 | 0x100;
      }
    }
  }

  return this;
}

uint64_t webrtc::anonymous namespace::FrameCadenceAdapterImpl::UpdateLayerStatus(uint64_t this, unint64_t a2, int a3)
{
  if (*(this + 424) == 1)
  {
    v3 = *(this + 360);
    if (a2 < (*(this + 368) - v3) >> 1)
    {
      v4 = v3 + 2 * a2;
      if (a3)
      {
        if ((*(v4 + 1) & 1) == 0)
        {
          *v4 = 256;
        }
      }

      else
      {
        v6 = *(v4 + 1);
        v5 = (v4 + 1);
        if (v6 == 1)
        {
          *v5 = 0;
        }
      }
    }
  }

  return this;
}

uint64_t webrtc::anonymous namespace::FrameCadenceAdapterImpl::UpdateVideoSourceRestrictions(uint64_t result, uint64_t a2, char a3)
{
  *(result + 544) = *&a2;
  *(result + 552) = a3;
  if (*(result + 424) == 1)
  {
    if ((a3 & 1) != 0 && *&a2 > 0.0)
    {
      v3 = llround(1000000.0 / *&a2);
      if ((*(result + 400) & 1) == 0)
      {
        *(result + 400) = 1;
      }

      *(result + 392) = v3;
    }

    else if (*(result + 400) == 1)
    {
      *(result + 400) = 0;
    }
  }

  return result;
}

void webrtc::anonymous namespace::FrameCadenceAdapterImpl::ProcessKeyFrameRequest(webrtc::_anonymous_namespace_::FrameCadenceAdapterImpl *this)
{
  if (*(this + 424) != 1)
  {
    return;
  }

  v1 = (this + 192);
  v3 = *(this + 45);
  v2 = *(this + 46);
  if (v3 == v2)
  {
    goto LABEL_8;
  }

  v4 = v2 - v3 - 2;
  v5 = *(this + 45);
  if (v4 < 0x10)
  {
    goto LABEL_6;
  }

  v23 = v4 >> 1;
  v24 = (v4 >> 1) + 1;
  if (v4 < 0x20)
  {
    v25 = 0;
LABEL_72:
    v31 = v24 & 7;
    if ((v24 & 7) == 0)
    {
      v31 = 8;
    }

    v5 = v3 + 2 * (v24 - v31);
    v32 = ~v23 + v25 + v31;
    v33 = (v3 + 2 * v25 + 8);
    while (1)
    {
      v34 = v33 - 7;
      v35 = *vld2_s8(v34).val;
      if (v35)
      {
        *(v33 - 4) = 256;
        if ((v35 & 0x100) == 0)
        {
LABEL_78:
          if ((v35 & 0x10000) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_87;
        }
      }

      else if ((v35 & 0x100) == 0)
      {
        goto LABEL_78;
      }

      *(v33 - 3) = 256;
      if ((v35 & 0x10000) == 0)
      {
LABEL_79:
        if ((v35 & 0x1000000) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_88;
      }

LABEL_87:
      *(v33 - 2) = 256;
      if ((v35 & 0x1000000) == 0)
      {
LABEL_80:
        if ((v35 & 0x100000000) == 0)
        {
          goto LABEL_81;
        }

        goto LABEL_89;
      }

LABEL_88:
      *(v33 - 1) = 256;
      if ((v35 & 0x100000000) == 0)
      {
LABEL_81:
        if ((v35 & 0x10000000000) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_90;
      }

LABEL_89:
      *v33 = 256;
      if ((v35 & 0x10000000000) == 0)
      {
LABEL_82:
        if ((v35 & 0x1000000000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_91;
      }

LABEL_90:
      v33[1] = 256;
      if ((v35 & 0x1000000000000) == 0)
      {
LABEL_83:
        if ((v35 & 0x100000000000000) != 0)
        {
          goto LABEL_92;
        }

        goto LABEL_75;
      }

LABEL_91:
      v33[2] = 256;
      if ((v35 & 0x100000000000000) != 0)
      {
LABEL_92:
        v33[3] = 256;
      }

LABEL_75:
      v33 += 8;
      v32 += 8;
      if (!v32)
      {
        goto LABEL_6;
      }
    }
  }

  v26 = 16;
  if ((v24 & 0xF) != 0)
  {
    v26 = v24 & 0xF;
  }

  v25 = v24 - v26;
  v27 = (v3 + 16);
  v28 = v24;
  do
  {
    v29 = v27 - 15;
    v30 = vld2q_s8(v29);
    if (v30)
    {
      *(v27 - 8) = 256;
      if ((BYTE1(v30) & 1) == 0)
      {
LABEL_39:
        if ((BYTE2(v30) & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_56;
      }
    }

    else if ((BYTE1(v30) & 1) == 0)
    {
      goto LABEL_39;
    }

    *(v27 - 7) = 256;
    if ((BYTE2(v30) & 1) == 0)
    {
LABEL_40:
      if ((BYTE3(v30) & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(v27 - 6) = 256;
    if ((BYTE3(v30) & 1) == 0)
    {
LABEL_41:
      if ((BYTE4(v30) & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(v27 - 5) = 256;
    if ((BYTE4(v30) & 1) == 0)
    {
LABEL_42:
      if ((BYTE5(v30) & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(v27 - 4) = 256;
    if ((BYTE5(v30) & 1) == 0)
    {
LABEL_43:
      if ((BYTE6(v30) & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(v27 - 3) = 256;
    if ((BYTE6(v30) & 1) == 0)
    {
LABEL_44:
      if ((BYTE7(v30) & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    *(v27 - 2) = 256;
    if ((BYTE7(v30) & 1) == 0)
    {
LABEL_45:
      if ((BYTE8(v30) & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    *(v27 - 1) = 256;
    if ((BYTE8(v30) & 1) == 0)
    {
LABEL_46:
      if ((BYTE9(v30) & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }

LABEL_62:
    *v27 = 256;
    if ((BYTE9(v30) & 1) == 0)
    {
LABEL_47:
      if ((BYTE10(v30) & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    v27[1] = 256;
    if ((BYTE10(v30) & 1) == 0)
    {
LABEL_48:
      if ((BYTE11(v30) & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    v27[2] = 256;
    if ((BYTE11(v30) & 1) == 0)
    {
LABEL_49:
      if ((BYTE12(v30) & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    v27[3] = 256;
    if ((BYTE12(v30) & 1) == 0)
    {
LABEL_50:
      if ((BYTE13(v30) & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    v27[4] = 256;
    if ((BYTE13(v30) & 1) == 0)
    {
LABEL_51:
      if (BYTE14(v30))
      {
        goto LABEL_68;
      }

      goto LABEL_52;
    }

LABEL_67:
    v27[5] = 256;
    if (BYTE14(v30))
    {
LABEL_68:
      v27[6] = 256;
      if ((HIBYTE(v30) & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_69;
    }

LABEL_52:
    if ((HIBYTE(v30) & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_69:
    v27[7] = 256;
LABEL_36:
    v28 -= 16;
    v27 += 16;
  }

  while (v26 != v28);
  if (v26 >= 9)
  {
    goto LABEL_72;
  }

  v5 = v3 + 2 * v25;
  do
  {
LABEL_6:
    if (*(v5 + 1) == 1)
    {
      *v5 = 256;
    }

    v5 += 2;
  }

  while (v5 != v2);
LABEL_8:
  if (*(this + 352) != 1 || (*(this + 320) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      return;
    }

    goto LABEL_29;
  }

  v7 = (*(**(this + 26) + 16))(*(this + 26));
  if ((*(this + 352) & 1) == 0)
  {
    __break(1u);
    return;
  }

  v8 = *(this + 39);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8 + 1000000;
    if (v8 == 0x8000000000000000)
    {
      v10 = 0x8000000000000000;
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x8000000000000000)
    {
      v11 = v10 - v7;
      if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x8000000000000000)
      {
        v9 = 0x8000000000000000;
      }

      else
      {
        v9 = v11;
      }
    }
  }

  v13 = *(this + 31);
  v14 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
  if (v9 <= v13)
  {
    if (v14)
    {
      return;
    }

LABEL_29:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc");
    return;
  }

  if ((v14 & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc");
  }

  v22 = *(this + 76) + 1;
  *(this + 76) = v22;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::anonymous namespace::FrameCadenceAdapterImpl::~FrameCadenceAdapterImpl()::$_1>(char a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      if (*result == 1)
      {
        *result = 0;
        v6 = *(result + 8);
        *(result + 8) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void webrtc::anonymous namespace::ZeroHertzAdapterMode::~ZeroHertzAdapterMode(webrtc::_anonymous_namespace_::ZeroHertzAdapterMode *this)
{
  *this = &unk_288293C88;
  v2 = *(this + 24);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 24) = 0;
  }

  v3 = *(this + 28);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 24);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  v7 = *(this + 10);
  if (v7 == v6)
  {
    v7 = *(this + 9);
    *(this + 13) = 0;
    v19 = 0;
    goto LABEL_35;
  }

  v8 = *(this + 12);
  v9 = &v6[v8 / 0x12];
  v10 = *v9 + 216 * (v8 % 0x12);
  v11 = v6[(*(this + 13) + v8) / 0x12] + 216 * ((*(this + 13) + v8) % 0x12);
  if (v10 == v11)
  {
LABEL_33:
    *(this + 13) = 0;
    v19 = v7 - v6;
    if (v19 >= 3)
    {
      do
      {
        operator delete(*v6);
        v7 = *(this + 10);
        v6 = (*(this + 9) + 8);
        *(this + 9) = v6;
        v19 = v7 - v6;
      }

      while (v19 > 2);
    }

LABEL_35:
    if (v19 == 1)
    {
      v20 = 9;
    }

    else
    {
      if (v19 != 2)
      {
LABEL_41:
        if (v6 != v7)
        {
          do
          {
            v21 = *v6++;
            operator delete(v21);
          }

          while (v6 != v7);
          v23 = *(this + 9);
          v22 = *(this + 10);
          if (v22 != v23)
          {
            *(this + 10) = v22 + ((v23 - v22 + 7) & 0xFFFFFFFFFFFFFFF8);
          }
        }

        v24 = *(this + 8);
        if (v24)
        {
          operator delete(v24);
        }

        return;
      }

      v20 = 18;
    }

    *(this + 12) = v20;
    goto LABEL_41;
  }

  while (v10)
  {
    v12 = *(v10 + 184);
    if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = *(v12 + 16);
        v15 = *(v12 + 8);
        if (v14 != v13)
        {
          do
          {
            v16 = *(v14 - 96);
            if (v16)
            {
              *(v14 - 88) = v16;
              operator delete(v16);
            }

            v14 -= 104;
          }

          while (v14 != v13);
          v15 = *(v12 + 8);
        }

        *(v12 + 16) = v13;
        operator delete(v15);
      }

      MEMORY[0x2743DA540](v12, 0x1020C40E72D6CFBLL);
    }

    v17 = *(v10 + 8);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v10 += 216;
    if (v10 - *v9 == 3888)
    {
      v18 = v9[1];
      ++v9;
      v10 = v18;
    }

    if (v10 == v11)
    {
      v6 = *(this + 9);
      v7 = *(this + 10);
      goto LABEL_33;
    }
  }

  __break(1u);
}

{

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::ZeroHertzAdapterMode::OnFrame(webrtc::_anonymous_namespace_::ZeroHertzAdapterMode *this, Timestamp a2, uint64_t a3, const webrtc::VideoFrame *a4)
{
  v6 = *(this + 24);
  if (v6)
  {
    *(v6 + 4) = 0;
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 24) = 0;
  }

  v8 = *(this + 21);
  v7 = *(this + 22);
  if (v8 == v7)
  {
    goto LABEL_11;
  }

  v9 = v7 - v8 - 2;
  v10 = *(this + 21);
  if (v9 < 0x10)
  {
    goto LABEL_9;
  }

  v20 = v9 >> 1;
  v21 = (v9 >> 1) + 1;
  if (v9 < 0x20)
  {
    v22 = 0;
LABEL_64:
    v28 = v21 & 7;
    if ((v21 & 7) == 0)
    {
      v28 = 8;
    }

    v10 = v8 + 2 * (v21 - v28);
    v29 = ~v20 + v22 + v28;
    v30 = (v8 + 2 * v22 + 8);
    while (1)
    {
      v31 = v30 - 7;
      v32 = *vld2_s8(v31).val;
      if (v32)
      {
        *(v30 - 4) = 256;
        if ((v32 & 0x100) == 0)
        {
LABEL_70:
          if ((v32 & 0x10000) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_79;
        }
      }

      else if ((v32 & 0x100) == 0)
      {
        goto LABEL_70;
      }

      *(v30 - 3) = 256;
      if ((v32 & 0x10000) == 0)
      {
LABEL_71:
        if ((v32 & 0x1000000) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_80;
      }

LABEL_79:
      *(v30 - 2) = 256;
      if ((v32 & 0x1000000) == 0)
      {
LABEL_72:
        if ((v32 & 0x100000000) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_81;
      }

LABEL_80:
      *(v30 - 1) = 256;
      if ((v32 & 0x100000000) == 0)
      {
LABEL_73:
        if ((v32 & 0x10000000000) == 0)
        {
          goto LABEL_74;
        }

        goto LABEL_82;
      }

LABEL_81:
      *v30 = 256;
      if ((v32 & 0x10000000000) == 0)
      {
LABEL_74:
        if ((v32 & 0x1000000000000) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_83;
      }

LABEL_82:
      v30[1] = 256;
      if ((v32 & 0x1000000000000) == 0)
      {
LABEL_75:
        if ((v32 & 0x100000000000000) != 0)
        {
          goto LABEL_84;
        }

        goto LABEL_67;
      }

LABEL_83:
      v30[2] = 256;
      if ((v32 & 0x100000000000000) != 0)
      {
LABEL_84:
        v30[3] = 256;
      }

LABEL_67:
      v30 += 8;
      v29 += 8;
      if (!v29)
      {
        goto LABEL_9;
      }
    }
  }

  v23 = 16;
  if ((v21 & 0xF) != 0)
  {
    v23 = v21 & 0xF;
  }

  v22 = v21 - v23;
  v24 = (v8 + 16);
  v25 = v21;
  do
  {
    v26 = v24 - 15;
    v27 = vld2q_s8(v26);
    if (v27)
    {
      *(v24 - 8) = 256;
      if ((BYTE1(v27) & 1) == 0)
      {
LABEL_31:
        if ((BYTE2(v27) & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_48;
      }
    }

    else if ((BYTE1(v27) & 1) == 0)
    {
      goto LABEL_31;
    }

    *(v24 - 7) = 256;
    if ((BYTE2(v27) & 1) == 0)
    {
LABEL_32:
      if ((BYTE3(v27) & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(v24 - 6) = 256;
    if ((BYTE3(v27) & 1) == 0)
    {
LABEL_33:
      if ((BYTE4(v27) & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }

LABEL_49:
    *(v24 - 5) = 256;
    if ((BYTE4(v27) & 1) == 0)
    {
LABEL_34:
      if ((BYTE5(v27) & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(v24 - 4) = 256;
    if ((BYTE5(v27) & 1) == 0)
    {
LABEL_35:
      if ((BYTE6(v27) & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(v24 - 3) = 256;
    if ((BYTE6(v27) & 1) == 0)
    {
LABEL_36:
      if ((BYTE7(v27) & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(v24 - 2) = 256;
    if ((BYTE7(v27) & 1) == 0)
    {
LABEL_37:
      if ((BYTE8(v27) & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(v24 - 1) = 256;
    if ((BYTE8(v27) & 1) == 0)
    {
LABEL_38:
      if ((BYTE9(v27) & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }

LABEL_54:
    *v24 = 256;
    if ((BYTE9(v27) & 1) == 0)
    {
LABEL_39:
      if ((BYTE10(v27) & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    v24[1] = 256;
    if ((BYTE10(v27) & 1) == 0)
    {
LABEL_40:
      if ((BYTE11(v27) & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    v24[2] = 256;
    if ((BYTE11(v27) & 1) == 0)
    {
LABEL_41:
      if ((BYTE12(v27) & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    v24[3] = 256;
    if ((BYTE12(v27) & 1) == 0)
    {
LABEL_42:
      if ((BYTE13(v27) & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    v24[4] = 256;
    if ((BYTE13(v27) & 1) == 0)
    {
LABEL_43:
      if (BYTE14(v27))
      {
        goto LABEL_60;
      }

      goto LABEL_44;
    }

LABEL_59:
    v24[5] = 256;
    if (BYTE14(v27))
    {
LABEL_60:
      v24[6] = 256;
      if ((HIBYTE(v27) & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_61;
    }

LABEL_44:
    if ((HIBYTE(v27) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_61:
    v24[7] = 256;
LABEL_28:
    v25 -= 16;
    v24 += 16;
  }

  while (v23 != v25);
  if (v23 >= 9)
  {
    goto LABEL_64;
  }

  v10 = v8 + 2 * v22;
  do
  {
LABEL_9:
    if (*(v10 + 1) == 1)
    {
      *v10 = 256;
    }

    v10 += 2;
  }

  while (v10 != v7);
LABEL_11:
  if ((*(this + 160) & 1) == 0)
  {
    v19 = *(this + 12);
    goto LABEL_92;
  }

  if (*(this + 13))
  {
    v11 = *(this + 12);
    v12 = *(*(this + 9) + 8 * (v11 / 0x12));
    if (v12)
    {
      v13 = v12 + 216 * (v11 % 0x12);
      v14 = *(v13 + 184);
      if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
      {
        v15 = *(v14 + 8);
        if (v15)
        {
          v16 = *(v14 + 16);
          v17 = *(v14 + 8);
          if (v16 != v15)
          {
            do
            {
              v18 = *(v16 - 96);
              if (v18)
              {
                *(v16 - 88) = v18;
                operator delete(v18);
              }

              v16 -= 104;
            }

            while (v16 != v15);
            v17 = *(v14 + 8);
          }

          *(v14 + 16) = v15;
          operator delete(v17);
        }

        MEMORY[0x2743DA540](v14, 0x1020C40E72D6CFBLL);
      }

      v33 = *(v13 + 8);
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      v34 = vaddq_s64(*(this + 6), xmmword_273B93620);
      *(this + 6) = v34;
      v19 = v34.i64[0];
      if (v34.i64[0] >= 0x24uLL)
      {
        operator delete(**(this + 9));
        *(this + 9) += 8;
        v19 = *(this + 12) - 18;
        *(this + 12) = v19;
      }

LABEL_92:
      v35 = *(this + 9);
      v36 = *(this + 10);
      v37 = 18 * ((v36 - v35) >> 3) - 1;
      if (v36 == v35)
      {
        v37 = 0;
      }

      if (v37 == *(this + 13) + v19)
      {
        std::deque<webrtc::VideoFrame>::__add_back_capacity(this + 8);
        v35 = *(this + 9);
        v36 = *(this + 10);
      }

      if (v36 != v35)
      {
        v38 = *(this + 13) + *(this + 12);
        v39 = *(v35 + 8 * (v38 / 0x12));
        if (v39)
        {
          v40 = v39 + 216 * (v38 % 0x12);
          *v40 = *a4;
          v41 = *(a4 + 1);
          *(v40 + 8) = v41;
          if (v41)
          {
            (**v41)(v41);
          }

          v42 = *(a4 + 1);
          v43 = *(a4 + 2);
          v44 = *(a4 + 3);
          v45 = *(a4 + 60);
          *(v40 + 76) = 0;
          *(v40 + 60) = v45;
          *(v40 + 48) = v44;
          *(v40 + 32) = v43;
          *(v40 + 16) = v42;
          *(v40 + 144) = 0;
          if (*(a4 + 144) == 1)
          {
            *(v40 + 76) = *(a4 + 76);
            v46 = *(a4 + 92);
            v47 = *(a4 + 108);
            v48 = *(a4 + 124);
            *(v40 + 140) = *(a4 + 140);
            *(v40 + 108) = v47;
            *(v40 + 124) = v48;
            *(v40 + 92) = v46;
            *(v40 + 144) = 1;
          }

          v49 = *(a4 + 148);
          *(v40 + 161) = *(a4 + 161);
          *(v40 + 148) = v49;
          v50 = *(a4 + 23);
          *(v40 + 184) = v50;
          if (v50)
          {
            atomic_fetch_add_explicit(v50, 1u, memory_order_relaxed);
          }

          v51 = *(a4 + 12);
          *(v40 + 208) = *(a4 + 26);
          *(v40 + 192) = v51;
          ++*(this + 13);
          ++*(this + 28);
          if (*(this + 160) == 1)
          {
            *(this + 160) = 0;
          }

          (*(**(this + 2) + 16))(*(this + 2));
          v52 = *(this + 28);
          if (v52)
          {
            atomic_fetch_add_explicit(v52, 1u, memory_order_relaxed);
          }

          operator new();
        }
      }
    }
  }

  __break(1u);
}

void *std::deque<webrtc::VideoFrame>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x12;
  v3 = v1 - 18;
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

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::anonymous namespace::ZeroHertzAdapterMode::OnFrame(webrtc::Timestamp,BOOL,webrtc::VideoFrame const&)::$_0 &&>(uint64_t *result)
{
  v1 = *result;
  if (!*(*result + 104))
  {
    goto LABEL_45;
  }

  v2 = result[1];
  v3 = *(*(v1 + 72) + 8 * (*(v1 + 96) / 0x12uLL)) + 216 * (*(v1 + 96) % 0x12uLL);
  v31 = *v3;
  result = *(v3 + 8);
  v32 = result;
  if (result)
  {
    result = (**result)(result);
  }

  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *&v35[12] = *(v3 + 60);
  *v35 = v6;
  v34 = v5;
  v33 = v4;
  LOBYTE(v36) = 0;
  v41 = 0;
  if (*(v3 + 144) == 1)
  {
    v36 = *(v3 + 76);
    v7 = *(v3 + 92);
    v8 = *(v3 + 108);
    v9 = *(v3 + 124);
    v40 = *(v3 + 140);
    v39 = v9;
    v38 = v8;
    v37 = v7;
    v41 = 1;
  }

  v10 = *(v3 + 148);
  *(v42 + 13) = *(v3 + 161);
  v42[0] = v10;
  v11 = *(v3 + 184);
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 1u, memory_order_relaxed);
  }

  v12 = *(v3 + 192);
  v45 = *(v3 + 208);
  v44 = v12;
  if (*(v1 + 104) >= 2uLL)
  {
    v13 = *(v1 + 96);
    v14 = *(*(v1 + 72) + 8 * (v13 / 0x12));
    if (v14)
    {
      v15 = v14 + 216 * (v13 % 0x12);
      v16 = *(v15 + 184);
      if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        v17 = *(v16 + 8);
        if (v17)
        {
          v18 = *(v16 + 16);
          v19 = *(v16 + 8);
          if (v18 != v17)
          {
            do
            {
              v20 = *(v18 - 96);
              if (v20)
              {
                *(v18 - 88) = v20;
                operator delete(v20);
              }

              v18 -= 104;
            }

            while (v18 != v17);
            v19 = *(v16 + 8);
          }

          *(v16 + 16) = v17;
          operator delete(v19);
        }

        MEMORY[0x2743DA540](v16, 0x1020C40E72D6CFBLL);
      }

      v24 = *(v15 + 8);
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      v25 = vaddq_s64(*(v1 + 96), xmmword_273B93620);
      *(v1 + 96) = v25;
      if (v25.i64[0] >= 0x24uLL)
      {
        operator delete(**(v1 + 72));
        *(v1 + 72) += 8;
        *(v1 + 96) -= 18;
      }

      goto LABEL_31;
    }

LABEL_45:
    __break(1u);
    return result;
  }

  v21 = *(v1 + 168);
  v22 = *(v1 + 176);
  if (v21 == v22)
  {
    v23 = 0;
  }

  else
  {
    do
    {
      v23 = v21[1] ^ 1 | *v21;
      if ((v23 & 1) == 0)
      {
        break;
      }

      v21 += 2;
    }

    while (v21 != v22);
  }

LABEL_31:
  v26 = v43;
  if (v43 && atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
  {
    v27 = *(v26 + 1);
    if (v27)
    {
      v28 = *(v26 + 2);
      v29 = *(v26 + 1);
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
        v29 = *(v26 + 1);
      }

      *(v26 + 2) = v27;
      operator delete(v29);
    }

    MEMORY[0x2743DA540](v26, 0x1020C40E72D6CFBLL);
  }

  result = v32;
  if (v32)
  {
    return (*(*v32 + 8))(v32);
  }

  return result;
}

uint64_t webrtc::anonymous namespace::ZeroHertzAdapterMode::ScheduleRepeat(webrtc::_anonymous_namespace_::ZeroHertzAdapterMode *this, int a2, char a3)
{
  result = (*(**(this + 2) + 16))(*(this + 2));
  if (*(this + 160))
  {
LABEL_4:
    *(this + 15) = result;
    *(this + 128) = a3;
    if (a3)
    {
      v7 = *(this + 28);
      if (!v7)
      {
LABEL_9:
        operator new();
      }
    }

    else
    {
      v7 = *(this + 28);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
    goto LABEL_9;
  }

  if (*(this + 13))
  {
    v6 = *(*(*(this + 9) + 8 * (*(this + 12) / 0x12uLL)) + 216 * (*(this + 12) % 0x12uLL) + 24);
    *(this + 17) = result;
    *(this + 9) = vextq_s8(v6, v6, 8uLL);
    *(this + 160) = 1;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t webrtc::anonymous namespace::ZeroHertzAdapterMode::SendFrameNow(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v9 = v8;
  if (a3)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && a2 != 0x8000000000000000)
    {
      if (a2 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x8000000000000000)
      {
        v10 = 0x8000000000000000;
      }

      else
      {
        v10 = v8 - a2;
      }
    }

    {
      v15 = v10 / 0x3E8uLL;
      if (v10 % 0x3E8uLL > 0x1F3)
      {
        LODWORD(v15) = v15 + 1;
      }

      if (-v10 % 0x3E8uLL <= 0x1F4)
      {
        v16 = 0;
      }

      else
      {
        v16 = -1;
      }

      if (v10 < 0)
      {
        v17 = v16 - -v10 / 0x3E8uLL;
      }

      else
      {
        LODWORD(v17) = v15;
      }

      webrtc::metrics::HistogramAdd(explicit, v17);
    }
  }

  result = (*(**(a1 + 24) + 16))(*(a1 + 24), v9, *(a1 + 216) > 0, a4);
  if (*(a1 + 48) == 1)
  {
    v19 = *(a1 + 216);
    if (v19)
    {
      *(a1 + 216) = v19 - 1;
    }

    else
    {
      v20 = **(a1 + 40);
      if (v20 >= 1)
      {
        result = (*(**(a1 + 16) + 16))(*(a1 + 16));
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        v22 = result - v9;
        if (v9 == 0x7FFFFFFFFFFFFFFFLL || result == 0x8000000000000000)
        {
          v22 = 0x8000000000000000;
        }

        if (result != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x8000000000000000)
        {
          v21 = v22;
        }

        v25 = 56;
        if (*(a1 + 208))
        {
          v25 = 200;
        }

        v26 = *(a1 + v25);
        if (*(a1 + 56) > v26)
        {
          v26 = *(a1 + 56);
        }

        if (v21 > v26)
        {
          *(a1 + 216) = v20;
          ++*(a1 + 112);
        }
      }
    }
  }

  return result;
}

_DWORD *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::anonymous namespace::ZeroHertzAdapterMode::ScheduleRepeat(int,BOOL)::$_0 &&>(_DWORD *result)
{
  v1 = *result;
  v2 = result[2];
  if (*(*result + 112) == v2)
  {
    if (!*(v1 + 104))
    {
      goto LABEL_38;
    }

    v3 = *(*(v1 + 72) + 8 * (*(v1 + 96) / 0x12uLL)) + 216 * (*(v1 + 96) % 0x12uLL);
    v4 = *(v3 + 176);
    *(v3 + 160) = 0;
    *(v3 + 168) = 0;
    if ((v4 & 1) == 0)
    {
      *(v3 + 176) = 1;
    }

    result = (*(**(v1 + 16) + 16))(*(v1 + 16));
    if (*(v1 + 160))
    {
      v5 = *(v1 + 136);
      v6 = result - v5;
      if (v5 == 0x7FFFFFFFFFFFFFFFLL || result == 0x8000000000000000)
      {
        v6 = 0x8000000000000000;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x8000000000000000)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v6;
      }

      if (*(v3 + 32) >= 1)
      {
        *(v3 + 32) = *(v1 + 144) + v9;
      }

      if (*(v3 + 24))
      {
        v10 = v9 / 0x3E8uLL;
        if (v9 % 0x3E8uLL > 0x1F3)
        {
          ++v10;
        }

        if (-v9 % 0x3E8uLL <= 0x1F4)
        {
          v11 = 0;
        }

        else
        {
          v11 = -1;
        }

        if (v9 < 0)
        {
          v12 = v11 - -v9 / 0x3E8uLL;
        }

        else
        {
          v12 = v10;
        }

        *(v3 + 24) = v12 + *(v1 + 152);
      }

      v13 = *(v1 + 168);
      v14 = *(v1 + 176);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        do
        {
          v15 = v13[1] ^ 1 | *v13;
          if ((v15 & 1) == 0)
          {
            break;
          }

          v13 += 2;
        }

        while (v13 != v14);
      }
    }

    else
    {
LABEL_38:
      __break(1u);
    }
  }

  return result;
}

void webrtc::anonymous namespace::PassthroughAdapterMode::~PassthroughAdapterMode(void **this)
{
  *this = &unk_288293CC0;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 4);
}

{
  *this = &unk_288293CC0;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 4);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::PassthroughAdapterMode::GetInputFrameRateFps(webrtc::_anonymous_namespace_::PassthroughAdapterMode *this)
{
  if (*(this + 16) == 1)
  {
    return *(this + 2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

void webrtc::anonymous namespace::PassthroughAdapterMode::UpdateFrameRate(webrtc::_anonymous_namespace_::PassthroughAdapterMode *this, Timestamp a2)
{
  v4 = a2.var0 / 0x3E8;
  if (a2.var0 % 0x3E8 <= 0x1F3)
  {
    v5 = a2.var0 / 0x3E8;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (-a2.var0 % 0x3E8uLL <= 0x1F4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 - -a2.var0 / 0x3E8uLL;
  if (a2.var0 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = webrtc::RateStatistics::Rate((this + 32), v8);
  if (*(this + 16) == v10)
  {
    if (*(this + 16))
    {
      *(this + 1) = v9;
    }
  }

  else if (*(this + 16))
  {
    *(this + 16) = 0;
  }

  else
  {
    *(this + 1) = v9;
    *(this + 16) = 1;
  }

  if (a2.var0 - 1000 * v4 <= 0x1F3)
  {
    v11 = v4;
  }

  else
  {
    v11 = v4 + 1;
  }

  if (-a2.var0 % 0x3E8uLL <= 0x1F4)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 - -a2.var0 / 0x3E8uLL;
  if (a2.var0 < 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  webrtc::RateStatistics::Update((this + 32), 1, v14);
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::anonymous namespace::FrameCadenceAdapterImpl::OnFrame(webrtc::VideoFrame const&)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (*(v2 + 488) == 1)
  {
    v3 = (*(**(v2 + 8) + 16))(*(v2 + 8));
    if ((*(v2 + 488) & 1) == 0)
    {
      __break(1u);
LABEL_40:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc", 929, "passthrough_adapter_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v25);
      goto LABEL_41;
    }

    v8 = *(v2 + 480);
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v3 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x8000000000000000)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL || v3 == 0x8000000000000000)
      {
        v9 = 0x8000000000000000;
      }

      else
      {
        v9 = v3 - v8;
      }
    }

    *(v2 + 488) = 0;
    {
      v14 = v9 / 0x3E8uLL;
      if (v9 % 0x3E8uLL > 0x1F3)
      {
        LODWORD(v14) = v14 + 1;
      }

      if (-v9 % 0x3E8uLL <= 0x1F4)
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      if (v9 < 0)
      {
        v16 = v15 - -v9 / 0x3E8uLL;
      }

      else
      {
        LODWORD(v16) = v14;
      }

      webrtc::metrics::HistogramAdd(explicit, v16);
    }
  }

  (*(**(v2 + 456) + 16))(*(v2 + 456), v1[1], atomic_fetch_add_explicit((v2 + 576), 0xFFFFFFFF, memory_order_relaxed) > 1, v1 + 2);
  v17 = v1[6];
  if (*(v2 + 40) != 1)
  {
    goto LABEL_30;
  }

  if (*(v2 + 32) >= v17)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      if ((*(v2 + 40) & 1) == 0)
      {
LABEL_41:
        v24 = std::__throw_bad_optional_access[abi:sn200100]();
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v18, v19, v20, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc");
    }

    *(v2 + 48) = 0;
    v17 = v1[6];
    if ((*(v2 + 40) & 1) == 0)
    {
LABEL_30:
      *(v2 + 40) = 1;
    }
  }

  *(v2 + 32) = v17;
  if (!*(v2 + 464))
  {
LABEL_34:
    if (*(v2 + 184))
    {
      v21 = v2 + 56;
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  v21 = *(v2 + 432);
  if (!v21)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc", 926, "vsync_encode_adapter_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v25);
    goto LABEL_34;
  }

LABEL_36:
  v22 = *(*v21 + 32);

  return v22();
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::anonymous namespace::FrameCadenceAdapterImpl::OnFrame(webrtc::VideoFrame const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 200);
      if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = *(v4 + 16);
          v7 = *(v4 + 8);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 96);
              if (v8)
              {
                *(v6 - 88) = v8;
                operator delete(v8);
              }

              v6 -= 104;
            }

            while (v6 != v5);
            v7 = *(v4 + 8);
          }

          *(v4 + 16) = v5;
          operator delete(v7);
        }

        MEMORY[0x2743DA540](v4, 0x1020C40E72D6CFBLL);
      }

      v9 = *(v3 + 24);
      if (v9)
      {
        (*(*v9 + 8))(v9);
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::anonymous namespace::FrameCadenceAdapterImpl::OnDiscardedFrame(void)::$_0 &&>(uint64_t result)
{
  if (*(*result + 424) == 1)
  {
  }

  return result;
}

uint64_t webrtc::anonymous namespace::ZeroHertzAdapterMode::MaybeStartRefreshFrameRequester(uint64_t this)
{
  if (!*(this + 192))
  {
    {
      {
        operator new();
      }
    }

    webrtc::RepeatingTaskHandle::DelayedStart();
  }

  return this;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::anonymous namespace::ZeroHertzAdapterMode::MaybeStartRefreshFrameRequester(void)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  return *(v1 + 56);
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::anonymous namespace::FrameCadenceAdapterImpl::OnConstraintsChanged(webrtc::VideoTrackSourceConstraints const&)::$_0 &&>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = **a1;
  v10 = (v9 + 504);
  if (*(v9 + 536) == 1)
  {
    if (*(v9 + 528) == 1 && *(v9 + 520) > 0.0 && *(v9 + 512) == 1 && *v10 == 0.0)
    {
      v11 = *(v9 + 448);
      v12 = *(v8 + 3);
      *v10 = *(v8 + 1);
      *(v9 + 520) = v12;
      v13 = v11 & 1;
    }

    else
    {
      v15 = *(v8 + 3);
      *v10 = *(v8 + 1);
      *(v9 + 520) = v15;
      v13 = 0;
    }
  }

  else
  {
    v14 = *(v8 + 3);
    *v10 = *(v8 + 1);
    *(v9 + 520) = v14;
    *(v9 + 536) = 1;
    v13 = 0;
  }
}

void webrtc::anonymous namespace::FrameCadenceAdapterImpl::MaybeReconfigureAdapters(webrtc::_anonymous_namespace_::FrameCadenceAdapterImpl *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 536) == 1 && *(this + 528) == 1 && *(this + 65) > 0.0 && *(this + 512) == 1 && *(this + 63) == 0.0 && *(this + 448) == 1)
  {
    v10 = (*(*this + 56))(this);
    if ((*(this + 536) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (*(this + 528) != 1)
    {
      goto LABEL_13;
    }

    v11 = v10;
    if ((v10 & 0x100000000) == 0)
    {
      v11 = 4294967300.0;
    }

    if (!a2 || *(this + 65) != v11)
    {
LABEL_13:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_17;
      }

      if (*(this + 536))
      {
        if (*(this + 528))
        {
          webrtc::webrtc_logging_impl::Log("\r\t\a\t", v12, v13, v14, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc");
LABEL_17:
          if (*(this + 536))
          {
            if (*(this + 528))
            {
              if (*(this + 424) == 1)
              {
                *(this + 424) = 0;
              }

              v15 = *(this + 62);
              v16 = *(this + 65);
              v17 = *(this + 24) & 1;
              *(this + 24) = &unk_288293C88;
              *(this + 200) = vextq_s8(*(this + 8), *(this + 8), 8uLL);
              *(this + 27) = v15;
              *(this + 28) = v16;
              *(this + 29) = this + 576;
              *(this + 240) = v17;
              *(this + 31) = llround(1000000.0 / v16);
              *(this + 312) = 0;
              *(this + 352) = 0;
              *(this + 400) = 0;
              *(this + 102) = 0;
              *(this + 16) = 0u;
              *(this + 17) = 0u;
              *(this + 18) = 0u;
              *(this + 76) = 0;
              *(this + 392) = 0;
              *(this + 360) = 0u;
              *(this + 376) = 0u;
              operator new();
            }

            goto LABEL_53;
          }

          goto LABEL_51;
        }

LABEL_53:
        std::__throw_bad_optional_access[abi:sn200100]();
        goto LABEL_54;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if ((*(this + 424) & 1) == 0)
    {
      goto LABEL_51;
    }

    if ((*(this + 448) & 1) == 0)
    {
      goto LABEL_53;
    }

    v22 = *(this + 55);
    v23 = *(this + 45);
    *(this + 46) = v23;
    if (v22)
    {
      v24 = *(this + 47) - v23;
      if (v22 > v24 >> 1)
      {
        if ((v22 & 0x8000000000000000) == 0)
        {
          if (v24 <= v22)
          {
            v25 = v22;
          }

          else
          {
            v25 = *(this + 47) - v23;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v25 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v25 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_54:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v26 = 2 * v22;
      v27 = &v23[v22];
      do
      {
        if (!v23)
        {
          goto LABEL_51;
        }

        *v23++ = 256;
        v26 -= 2;
      }

      while (v26);
      *(this + 46) = v27;
    }

    if ((*(this + 424) & 1) == 0)
    {
      goto LABEL_53;
    }

    v21 = this + 192;
  }

  else
  {
    if (a2)
    {
      if (*(this + 424) == 1)
      {
        *(this + 424) = 0;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc");
      }
    }

    if (*(this + 58))
    {
      v21 = *(this + 54);
      if (v21)
      {
        goto LABEL_32;
      }

      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc", 1047, "vsync_encode_adapter_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v28);
    }

    if ((*(this + 184) & 1) == 0)
    {
LABEL_52:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_cadence_adapter.cc", 1050, "passthrough_adapter_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v28);
      goto LABEL_53;
    }

    v21 = this + 56;
  }

LABEL_32:
  *(this + 57) = v21;
}

void webrtc::anonymous namespace::VSyncEncodeAdapterMode::~VSyncEncodeAdapterMode(webrtc::_anonymous_namespace_::VSyncEncodeAdapterMode *this)
{
  *this = &unk_288293CF8;
  v2 = *(this + 31);
  if (v2)
  {
    v3 = *(this + 32);
    v4 = *(this + 31);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          v6 = *(v5 + 8);
          if (v6)
          {
            v7 = *(v5 + 16);
            v8 = *(v5 + 8);
            if (v7 != v6)
            {
              do
              {
                v9 = *(v7 - 96);
                if (v9)
                {
                  *(v7 - 88) = v9;
                  operator delete(v9);
                }

                v7 -= 104;
              }

              while (v7 != v6);
              v8 = *(v5 + 8);
            }

            *(v5 + 16) = v6;
            operator delete(v8);
          }

          MEMORY[0x2743DA540](v5, 0x1020C40E72D6CFBLL);
        }

        v10 = *(v3 - 208);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v3 -= 224;
      }

      while (v3 != v2);
      v4 = *(this + 31);
    }

    *(this + 32) = v2;
    operator delete(v4);
  }

  v11 = *(this + 29);
  *(v11 + 4) = 0;
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 14);
  v12 = *(this + 11);
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  pthread_mutex_destroy((this + 16));
}

{

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::VSyncEncodeAdapterMode::OnFrame(webrtc::_anonymous_namespace_::VSyncEncodeAdapterMode *this, Timestamp a2, uint64_t a3, const webrtc::VideoFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 28);
  {
    v12 = *(this + 29);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 1u, memory_order_relaxed);
    }

    v13 = *(a4 + 1);
    if (v13)
    {
      (**v13)(*(a4 + 1));
    }

    if (*(a4 + 144) == 1)
    {
      v14 = *(a4 + 23);
      if (!v14)
      {
LABEL_20:
        operator new();
      }
    }

    else
    {
      v14 = *(a4 + 23);
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    atomic_fetch_add_explicit(v14, 1u, memory_order_relaxed);
    goto LABEL_20;
  }

  v16 = *(this + 32);
  v15 = *(this + 33);
  if (v16 >= v15)
  {
    v28 = *(this + 31);
    v29 = v16 - v28;
    v30 = 0x6DB6DB6DB6DB6DB7 * (v29 >> 5) + 1;
    if (v30 > 0x124924924924924)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v31 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v28) >> 5);
    v32 = 2 * v31;
    if (2 * v31 <= v30)
    {
      v32 = 0x6DB6DB6DB6DB6DB7 * (v29 >> 5) + 1;
    }

    if (v31 >= 0x92492492492492)
    {
      v33 = 0x124924924924924;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      if (v33 <= 0x124924924924924)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_37:
    __break(1u);
  }

  if (!v16)
  {
    goto LABEL_37;
  }

  *v16 = v11;
  *(v16 + 8) = *a4;
  v17 = *(a4 + 1);
  *(v16 + 16) = v17;
  if (v17)
  {
    (**v17)(v17);
  }

  v18 = *(a4 + 1);
  v19 = *(a4 + 2);
  v20 = *(a4 + 3);
  v21 = *(a4 + 60);
  *(v16 + 84) = 0;
  *(v16 + 68) = v21;
  *(v16 + 56) = v20;
  *(v16 + 40) = v19;
  *(v16 + 24) = v18;
  *(v16 + 152) = 0;
  if (*(a4 + 144) == 1)
  {
    *(v16 + 84) = *(a4 + 76);
    v22 = *(a4 + 92);
    v23 = *(a4 + 108);
    v24 = *(a4 + 124);
    *(v16 + 148) = *(a4 + 140);
    *(v16 + 116) = v23;
    *(v16 + 132) = v24;
    *(v16 + 100) = v22;
    *(v16 + 152) = 1;
  }

  v25 = *(a4 + 148);
  *(v16 + 169) = *(a4 + 161);
  *(v16 + 156) = v25;
  v26 = *(a4 + 23);
  *(v16 + 192) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26, 1u, memory_order_relaxed);
  }

  v27 = *(a4 + 12);
  *(v16 + 216) = *(a4 + 26);
  *(v16 + 200) = v27;
  *(this + 32) = v16 + 224;
  if ((*(**(this + 27) + 24))(*(this + 27)) <= 34000)
  {
    v34 = *(this + 29);
    if (v34)
    {
      atomic_fetch_add_explicit(v34, 1u, memory_order_relaxed);
    }

    operator new();
  }
}

uint64_t webrtc::anonymous namespace::VSyncEncodeAdapterMode::GetInputFrameRateFps(webrtc::_anonymous_namespace_::VSyncEncodeAdapterMode *this)
{
  if (*(this + 104) == 1)
  {
    return *(this + 24) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

void webrtc::anonymous namespace::VSyncEncodeAdapterMode::UpdateFrameRate(webrtc::_anonymous_namespace_::VSyncEncodeAdapterMode *this, Timestamp a2)
{
  v4 = a2.var0 / 0x3E8;
  if (a2.var0 % 0x3E8 <= 0x1F3)
  {
    v5 = a2.var0 / 0x3E8;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (-a2.var0 % 0x3E8uLL <= 0x1F4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 - -a2.var0 / 0x3E8uLL;
  if (a2.var0 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = webrtc::RateStatistics::Rate((this + 112), v8);
  if (*(this + 104) == v10)
  {
    if (*(this + 104))
    {
      *(this + 12) = v9;
    }
  }

  else if (*(this + 104))
  {
    *(this + 104) = 0;
  }

  else
  {
    *(this + 12) = v9;
    *(this + 104) = 1;
  }

  if (a2.var0 - 1000 * v4 <= 0x1F3)
  {
    v11 = v4;
  }

  else
  {
    v11 = v4 + 1;
  }

  if (-a2.var0 % 0x3E8uLL <= 0x1F4)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 - -a2.var0 / 0x3E8uLL;
  if (a2.var0 < 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  webrtc::RateStatistics::Update((this + 112), 1, v14);
}

uint64_t webrtc::anonymous namespace::VSyncEncodeAdapterMode::EncodeAllEnqueuedFrames(webrtc::_anonymous_namespace_::VSyncEncodeAdapterMode *this)
{
  result = (*(**(this + 1) + 16))(*(this + 1));
  v3 = *(this + 31);
  v4 = *(this + 32);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *(v3 + 16);
      if (v5)
      {
        (**v5)(*(v3 + 16));
      }

      v6 = *(v3 + 152);
      v7 = *(v3 + 192);
      if (v7)
      {
        atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
      }

      pthread_mutex_lock((this + 16));
      if (*(this + 10))
      {
        break;
      }

      result = pthread_mutex_unlock((this + 16));
      if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = *(v7 + 16);
          v11 = *(v7 + 8);
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
            v11 = *(v7 + 8);
          }

          *(v7 + 16) = v9;
          operator delete(v11);
        }

        result = MEMORY[0x2743DA540](v7, 0x1020C40E72D6CFBLL);
      }

      if (v5)
      {
        result = (*(*v5 + 8))(v5);
      }

      v3 += 224;
      if (v3 == v4)
      {
        v3 = *(this + 31);
        v4 = *(this + 32);
        goto LABEL_33;
      }
    }

    v8 = *(this + 11);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 1u, memory_order_relaxed);
    }

    if (v5)
    {
      (**v5)(v5);
    }

    if (v6)
    {
      if (!v7)
      {
LABEL_18:
        operator new();
      }
    }

    else if (!v7)
    {
      goto LABEL_18;
    }

    atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
    goto LABEL_18;
  }

LABEL_33:
  while (v4 != v3)
  {
    v13 = *(v4 - 32);
    if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
    {
      v14 = *(v13 + 8);
      if (v14)
      {
        v15 = *(v13 + 16);
        v16 = *(v13 + 8);
        if (v15 != v14)
        {
          do
          {
            v17 = *(v15 - 96);
            if (v17)
            {
              *(v15 - 88) = v17;
              operator delete(v17);
            }

            v15 -= 104;
          }

          while (v15 != v14);
          v16 = *(v13 + 8);
        }

        *(v13 + 16) = v14;
        operator delete(v16);
      }

      MEMORY[0x2743DA540](v13, 0x1020C40E72D6CFBLL);
    }

    result = *(v4 - 208);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v4 -= 224;
  }

  *(this + 32) = v3;
  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::anonymous namespace::VSyncEncodeAdapterMode::OnFrame(webrtc::Timestamp,BOOL,webrtc::VideoFrame const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 208);
      if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = *(v4 + 16);
          v7 = *(v4 + 8);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 96);
              if (v8)
              {
                *(v6 - 88) = v8;
                operator delete(v8);
              }

              v6 -= 104;
            }

            while (v6 != v5);
            v7 = *(v4 + 8);
          }

          *(v4 + 16) = v5;
          operator delete(v7);
        }

        MEMORY[0x2743DA540](v4, 0x1020C40E72D6CFBLL);
      }

      v9 = *(v3 + 32);
      if (v9)
      {
        (*(*v9 + 8))(v9);
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

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::anonymous namespace::VSyncEncodeAdapterMode::EncodeAllEnqueuedFrames(void)::$_0 &&>(uint64_t **a1)
{
  v1 = **a1;
  pthread_mutex_lock((v1 + 16));
  v2 = *(v1 + 80);
  result = pthread_mutex_unlock((v1 + 16));
  if (v2)
  {
    v4 = *(**(v1 + 208) + 16);

    return v4();
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::anonymous namespace::VSyncEncodeAdapterMode::EncodeAllEnqueuedFrames(void)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 200);
      if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = *(v4 + 16);
          v7 = *(v4 + 8);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 96);
              if (v8)
              {
                *(v6 - 88) = v8;
                operator delete(v8);
              }

              v6 -= 104;
            }

            while (v6 != v5);
            v7 = *(v4 + 8);
          }

          *(v4 + 16) = v5;
          operator delete(v7);
        }

        MEMORY[0x2743DA540](v4, 0x1020C40E72D6CFBLL);
      }

      v9 = *(v3 + 24);
      if (v9)
      {
        (*(*v9 + 8))(v9);
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

void webrtc::FrameCombiner::Combine(uint64_t a1, uint64_t *a2, webrtc::AudioFrame *a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v17 = a7;
  if (a4 >= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = a4;
  }

  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0;
  }

  v180 = v19;
  v181 = a5;
  v20 = a5 / 0x64uLL;
  *a7 = 0;
  *(a7 + 24) = v20;
  *(a7 + 32) = a5;
  *(a7 + 48) = 0x200000004;
  *(a7 + 40) = v18;
  if ((v18 - 1) > 7)
  {
    v21 = 1;
  }

  else
  {
    v21 = dword_273B9365C[(v18 - 1)];
  }

  *(a7 + 15436) = v21;
  if (v20 * v18 >= 0x1E01)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 88, "length <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v20 * v18);
    goto LABEL_255;
  }

  *(a7 + 15432) = 1;
  v190 = a7;
  v191 = v18;
  if (!a3)
  {
    *(a7 + 8) = -1;
    if (a6 < 2)
    {
      return;
    }

    v188 = 0;
    if (v20 >= 0x1E0)
    {
      v54 = 480;
    }

    else
    {
      v54 = a5 / 0x64uLL;
    }

    v55 = a1;
    v56 = a1 + 2140;
    if (a4)
    {
      if (a5 <= 0x63)
      {
LABEL_116:
        v67 = v18;
        do
        {
          bzero(0, 4 * v54);
          --v67;
        }

        while (v67);
        if (v188)
        {
          v13 = &unk_280905000;
          v68 = v180;
          while (1)
          {
            v69 = *v68;
            {
              v70 = v68;
              v68 = v70;
              if (v71)
              {
                operator new[]();
              }
            }

            if (!(*(v69 + 40) * *(v69 + 24)))
            {
              break;
            }

            ++v68;
            v188 = (v188 - 1);
            if (!v188)
            {
              goto LABEL_142;
            }
          }

LABEL_251:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_mixer/frame_combiner.cc", 94, "!frame_data.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v169);
LABEL_252:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        goto LABEL_144;
      }

      bzero((a1 + 2140), 4 * v18 * v54);
    }

    goto LABEL_144;
  }

  v174 = a5 / 0x64uLL;
  v176 = a6;
  v192 = 0;
  v22 = 0;
  v23 = *a2;
  *a7 = **a2;
  v188 = a3;
  v189 = &a2[a3];
  *(a7 + 8) = *(v23 + 2);
  v24 = a2;
  while (1)
  {
    v25 = *v24;
    v26 = **v24;
    if (v26 >= *v17)
    {
      v26 = *v17;
    }

    *v17 = v26;
    v27 = *(v25 + 2);
    v28 = *(v17 + 8);
    if (v27 >= *(v17 + 16))
    {
      v27 = *(v17 + 16);
    }

    *(v17 + 16) = v27;
    v29 = *(v25 + 1);
    if (v28 > v29)
    {
      v29 = v28;
    }

    *(v17 + 8) = v29;
    v30 = *(v25 + 8);
    if (v30)
    {
      v18 = *(v30 + 8);
      v31 = *(v30 + 16);
      v17 = v31 - v18;
      if (v31 - v18 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      {
        operator new();
      }

      v32 = *(*v24 + 8);
      v18 = *webrtc::RtpPacketInfos::empty_entries(void)::value;
      if (v32)
      {
        v31 = *(v32 + 16);
        v17 = v31 - v18;
        if (v31 - v18 < 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        {
          operator new();
        }

        v31 = *(webrtc::RtpPacketInfos::empty_entries(void)::value + 1);
        v17 = v31 - v18;
        if (v31 - v18 < 1)
        {
LABEL_13:
          v17 = v190;
          v18 = v191;
          goto LABEL_14;
        }
      }
    }

    if (-v22 < v17)
    {
      break;
    }

    v35 = v22;
    v17 = v190;
    if (v18 != v31)
    {
      v35 = v22;
      while (1)
      {
        if (!v22)
        {
          goto LABEL_79;
        }

        *v22 = *v18;
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        *(v22 + 8) = 0;
        v16 = *(v18 + 8);
        v39 = *(v18 + 16);
        if (v39 != v16)
        {
          break;
        }

        *(v22 + 32) = *(v18 + 32);
        v36 = *(v18 + 48);
        v37 = *(v18 + 64);
        v38 = *(v18 + 80);
        *(v22 + 96) = *(v18 + 96);
        *(v22 + 64) = v37;
        *(v22 + 80) = v38;
        *(v22 + 48) = v36;
        v18 += 104;
        v22 += 104;
        v35 += 104;
        if (v18 == v31)
        {
          goto LABEL_41;
        }
      }

      if (((v39 - v16) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_250:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_41:
    v22 = v35;
    v18 = v191;
LABEL_14:
    if (++v24 == v189)
    {
      v16 = v192;
      if (v192 != v22)
      {
        operator new();
      }

      goto LABEL_80;
    }
  }

  v184 = (v22 - v192);
  v33 = 0x4EC4EC4EC4EC4EC5 * (v17 >> 3) + 0x4EC4EC4EC4EC4EC5 * ((v22 - v192) >> 3);
  if (v33 > 0x276276276276276)
  {
    goto LABEL_252;
  }

  if (0x9D89D89D89D89D8ALL * (-v192 >> 3) > v33)
  {
    v33 = 0x9D89D89D89D89D8ALL * (-v192 >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * (-v192 >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v34 = 0x276276276276276;
  }

  else
  {
    v34 = v33;
  }

  if (v34)
  {
    if (v34 <= 0x276276276276276)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v40 = 8 * ((v22 - v192) >> 3);
  v186 = v40 + v17;
  v41 = v40;
  do
  {
    if (!v41)
    {
      goto LABEL_79;
    }

    *v41 = *v18;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 8) = 0;
    v16 = *(v18 + 8);
    v45 = *(v18 + 16);
    if (v45 != v16)
    {
      if (((v45 - v16) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_250;
    }

    *(v41 + 32) = *(v18 + 32);
    v42 = *(v18 + 48);
    v43 = *(v18 + 64);
    v44 = *(v18 + 80);
    *(v41 + 96) = *(v18 + 96);
    *(v41 + 64) = v43;
    *(v41 + 80) = v44;
    *(v41 + 48) = v42;
    v41 += 104;
    v18 += 104;
    v17 -= 104;
  }

  while (v17);
  v17 = v190;
  v18 = v191;
  v46 = v40 - v184;
  if (v22 == v192)
  {
LABEL_63:
    if (v192)
    {
      operator delete(v192);
    }

    v192 = v46;
    v22 = v186;
    goto LABEL_14;
  }

  v47 = v192;
  v48 = v40 - v184;
  while (v48)
  {
    *v48 = *v47;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 8) = 0;
    *(v48 + 8) = *(v47 + 8);
    *(v48 + 24) = *(v47 + 24);
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 8) = 0;
    v50 = *(v47 + 64);
    v49 = *(v47 + 80);
    v51 = *(v47 + 48);
    *(v48 + 96) = *(v47 + 96);
    *(v48 + 64) = v50;
    *(v48 + 80) = v49;
    *(v48 + 48) = v51;
    *(v48 + 32) = *(v47 + 32);
    v47 += 104;
    v48 += 104;
    if (v47 == v22)
    {
      v52 = v192;
      while (v52)
      {
        v53 = *(v52 + 8);
        if (v53)
        {
          *(v52 + 16) = v53;
          operator delete(v53);
        }

        v52 += 104;
        if (v52 == v22)
        {
          goto LABEL_63;
        }
      }

      break;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  v55 = a1;
  v57 = *(v17 + 64);
  *(v17 + 64) = 0;
  if (v57 && atomic_fetch_add(v57, 0xFFFFFFFF) == 1)
  {
    v58 = *(v57 + 8);
    if (v58)
    {
      v59 = *(v57 + 16);
      v60 = *(v57 + 8);
      if (v59 != v58)
      {
        do
        {
          v61 = *(v59 - 96);
          if (v61)
          {
            *(v59 - 88) = v61;
            operator delete(v61);
          }

          v59 -= 104;
        }

        while (v59 != v58);
        v60 = *(v57 + 8);
      }

      *(v57 + 16) = v58;
      operator delete(v60);
    }

    MEMORY[0x2743DA540](v57, 0x1020C40E72D6CFBLL);
  }

  if (v16)
  {
    while (v22 != v16)
    {
      v62 = *(v22 - 96);
      if (v62)
      {
        *(v22 - 88) = v62;
        operator delete(v62);
      }

      v22 -= 104;
    }

    operator delete(v16);
  }

  v63 = 0;
  v13 = (8 * v188);
  do
  {
    webrtc::RemixFrame(v18, *(v63 + a2), a3, a4, a5, a6, a7, a8);
    v63 += 2;
  }

  while (v13 != v63);
  if (v176 >= 2)
  {
    if (v174 >= 0x1E0)
    {
      v54 = 480;
    }

    else
    {
      v54 = v174;
    }

    v56 = a1 + 2140;
    if (a4)
    {
      if (v181 < 0x64)
      {
        goto LABEL_116;
      }

      v94 = 4 * v18;
      bzero((a1 + 2140), 4 * v18 * v54);
      v96 = v181;
      v97 = 0;
      v98 = v54 & 0x1FE;
      v13 = (a1 + 2144);
      v99 = a1 + 2144 + 4 * v54;
      v100 = a1 + 2140 + 4 * v54;
      v101 = a1 + 2144 + 8 * v54;
      v102 = 2 * v18;
      v103 = a1 + 2140 + 8 * v54;
      v104 = a1 + 2144 + 12 * v54;
      a5 = a1 + 2140 + 12 * v54;
      a6 = a1 + 2144 + 16 * v54;
      v105 = a1 + 2140 + 16 * v54;
      a7 = a1 + 2144 + 20 * v54;
      a8 = a1 + 2140 + 20 * v54;
      v106 = v180;
      while (1)
      {
        v107 = v106[v97];
        if (*(v107 + 15432) == 1)
        {
          {
            v185 = v100;
            v187 = v99;
            v165 = v101;
            v177 = v104;
            v179 = v103;
            v173 = a6;
            v175 = a5;
            v171 = a7;
            v172 = v105;
            v170 = a8;
            a8 = v170;
            a7 = v171;
            v105 = v172;
            a6 = v173;
            a5 = v175;
            v104 = v177;
            v103 = v179;
            v101 = v165;
            v100 = v185;
            v99 = v187;
            v106 = v180;
            v96 = v181;
            if (v166)
            {
              operator new[]();
            }
          }

          v108 = webrtc::AudioFrame::zeroed_data(void)::null_data;
        }

        else
        {
          v108 = (v107 + 18);
        }

        if (!(*(v107 + 5) * *(v107 + 3)))
        {
          goto LABEL_251;
        }

        if (v96 < 0xC8)
        {
          break;
        }

        v110 = v54 & 0x1FE;
        v111 = (a1 + 2144);
        v112 = v108;
        v18 = v191;
        do
        {
          v95.i16[0] = *v112;
          v95 = vmovl_s16(v95).u64[0];
          a10.i16[0] = v112[v191];
          a10 = vmovl_s16(*a10.i8);
          *v95.i32 = *(v111 - 1) + v95.i32[0];
          *a10.i32 = *v111 + a10.i32[0];
          *(v111 - 1) = *v95.i32;
          *v111 = *a10.i32;
          v112 = (v112 + v94);
          v111 += 2;
          v110 -= 2;
        }

        while (v110);
        v109 = v54 & 0x1FE;
        if (v54 != v98)
        {
          goto LABEL_189;
        }

LABEL_191:
        if (a4 == 1)
        {
          goto LABEL_178;
        }

        if (v96 < 0xC8)
        {
          v116 = 0;
LABEL_197:
          v120 = v54 - v116;
          v121 = (v100 + 4 * v116);
          v122 = (v108 + v102 * v116 + 2);
          do
          {
            v95.i16[0] = *v122;
            v95 = vmovl_s16(v95).u64[0];
            a10.i32[0] = *v121;
            *v95.i32 = *v121 + v95.i32[0];
            *v121++ = v95.i32[0];
            v122 = (v122 + v102);
            --v120;
          }

          while (v120);
          goto LABEL_199;
        }

        v117 = (v108 + 2);
        v118 = v99;
        v119 = v54 & 0x1FE;
        do
        {
          v95.i16[0] = *v117;
          v95 = vmovl_s16(v95).u64[0];
          a10.i16[0] = v117[v102 / 2];
          a10 = vmovl_s16(*a10.i8);
          *v95.i32 = *(v118 - 1) + v95.i32[0];
          *a10.i32 = *v118 + a10.i32[0];
          *(v118 - 1) = *v95.i32;
          *v118 = *a10.i32;
          v117 = (v117 + v94);
          v118 += 2;
          v119 -= 2;
        }

        while (v119);
        v116 = v54 & 0x1FE;
        if (v54 != v98)
        {
          goto LABEL_197;
        }

LABEL_199:
        if (a4 == 2)
        {
          goto LABEL_178;
        }

        if (v96 < 0xC8)
        {
          v123 = 0;
LABEL_205:
          v127 = v54 - v123;
          v128 = (v103 + 4 * v123);
          v129 = (v108 + v102 * v123 + 4);
          do
          {
            v95.i16[0] = *v129;
            v95 = vmovl_s16(v95).u64[0];
            a10.i32[0] = *v128;
            *v95.i32 = *v128 + v95.i32[0];
            *v128++ = v95.i32[0];
            v129 = (v129 + v102);
            --v127;
          }

          while (v127);
          goto LABEL_207;
        }

        v124 = (v108 + 4);
        v125 = v101;
        v126 = v54 & 0x1FE;
        do
        {
          v95.i16[0] = *v124;
          v95 = vmovl_s16(v95).u64[0];
          a10.i16[0] = v124[v102 / 2];
          a10 = vmovl_s16(*a10.i8);
          *v95.i32 = *(v125 - 1) + v95.i32[0];
          *a10.i32 = *v125 + a10.i32[0];
          *(v125 - 1) = *v95.i32;
          *v125 = *a10.i32;
          v124 = (v124 + v94);
          v125 += 2;
          v126 -= 2;
        }

        while (v126);
        v123 = v54 & 0x1FE;
        if (v54 != v98)
        {
          goto LABEL_205;
        }

LABEL_207:
        if (a4 == 3)
        {
          goto LABEL_178;
        }

        if (v96 < 0xC8)
        {
          v130 = 0;
LABEL_213:
          v134 = v54 - v130;
          v135 = (a5 + 4 * v130);
          v136 = (v108 + v102 * v130 + 6);
          do
          {
            v95.i16[0] = *v136;
            v95 = vmovl_s16(v95).u64[0];
            a10.i32[0] = *v135;
            *v95.i32 = *v135 + v95.i32[0];
            *v135++ = v95.i32[0];
            v136 = (v136 + v102);
            --v134;
          }

          while (v134);
          goto LABEL_215;
        }

        v131 = (v108 + 6);
        v132 = v104;
        v133 = v54 & 0x1FE;
        do
        {
          v95.i16[0] = *v131;
          v95 = vmovl_s16(v95).u64[0];
          a10.i16[0] = v131[v102 / 2];
          a10 = vmovl_s16(*a10.i8);
          *v95.i32 = *(v132 - 1) + v95.i32[0];
          *a10.i32 = *v132 + a10.i32[0];
          *(v132 - 1) = *v95.i32;
          *v132 = *a10.i32;
          v131 = (v131 + v94);
          v132 += 2;
          v133 -= 2;
        }

        while (v133);
        v130 = v54 & 0x1FE;
        if (v54 != v98)
        {
          goto LABEL_213;
        }

LABEL_215:
        if (a4 == 4)
        {
          goto LABEL_178;
        }

        if (v96 < 0xC8)
        {
          v137 = 0;
LABEL_221:
          v141 = v54 - v137;
          v142 = (v105 + 4 * v137);
          v143 = (v108 + v102 * v137 + 8);
          do
          {
            v95.i16[0] = *v143;
            v95 = vmovl_s16(v95).u64[0];
            a10.i32[0] = *v142;
            *v95.i32 = *v142 + v95.i32[0];
            *v142++ = v95.i32[0];
            v143 = (v143 + v102);
            --v141;
          }

          while (v141);
          goto LABEL_223;
        }

        v138 = (v108 + 8);
        v139 = a6;
        v140 = v54 & 0x1FE;
        do
        {
          v95.i16[0] = *v138;
          v95 = vmovl_s16(v95).u64[0];
          a10.i16[0] = v138[v102 / 2];
          a10 = vmovl_s16(*a10.i8);
          *v95.i32 = *(v139 - 1) + v95.i32[0];
          *a10.i32 = *v139 + a10.i32[0];
          *(v139 - 1) = *v95.i32;
          *v139 = *a10.i32;
          v138 = (v138 + v94);
          v139 += 2;
          v140 -= 2;
        }

        while (v140);
        v137 = v54 & 0x1FE;
        if (v54 != v98)
        {
          goto LABEL_221;
        }

LABEL_223:
        if (a4 == 5)
        {
          goto LABEL_178;
        }

        if (v96 < 0xC8)
        {
          v144 = 0;
LABEL_229:
          v148 = v54 - v144;
          v149 = (a8 + 4 * v144);
          v150 = (v108 + v102 * v144 + 10);
          do
          {
            v95.i16[0] = *v150;
            v95 = vmovl_s16(v95).u64[0];
            a10.i32[0] = *v149;
            *v95.i32 = *v149 + v95.i32[0];
            *v149++ = v95.i32[0];
            v150 = (v150 + v102);
            --v148;
          }

          while (v148);
          goto LABEL_231;
        }

        v145 = (v108 + 10);
        v146 = a7;
        v147 = v54 & 0x1FE;
        do
        {
          v95.i16[0] = *v145;
          v95 = vmovl_s16(v95).u64[0];
          a10.i16[0] = v145[v102 / 2];
          a10 = vmovl_s16(*a10.i8);
          *v95.i32 = *(v146 - 1) + v95.i32[0];
          *a10.i32 = *v146 + a10.i32[0];
          *(v146 - 1) = *v95.i32;
          *v146 = *a10.i32;
          v145 = (v145 + v94);
          v146 += 2;
          v147 -= 2;
        }

        while (v147);
        v144 = v54 & 0x1FE;
        if (v54 != v98)
        {
          goto LABEL_229;
        }

LABEL_231:
        if (a4 == 6)
        {
          goto LABEL_178;
        }

        if (v96 < 0xC8)
        {
          v151 = 0;
LABEL_237:
          v155 = v54 - v151;
          v156 = (a1 + 2140 + 24 * v54 + 4 * v151);
          v157 = (v108 + v102 * v151 + 12);
          do
          {
            v95.i16[0] = *v157;
            v95 = vmovl_s16(v95).u64[0];
            a10.i32[0] = *v156;
            *v95.i32 = *v156 + v95.i32[0];
            *v156++ = v95.i32[0];
            v157 = (v157 + v102);
            --v155;
          }

          while (v155);
          goto LABEL_239;
        }

        v152 = (v108 + 12);
        v153 = (a1 + 2144 + 24 * v54);
        v154 = v54 & 0x1FE;
        do
        {
          v95.i16[0] = *v152;
          v95 = vmovl_s16(v95).u64[0];
          a10.i16[0] = v152[v102 / 2];
          a10 = vmovl_s16(*a10.i8);
          *v95.i32 = *(v153 - 1) + v95.i32[0];
          *a10.i32 = *v153 + a10.i32[0];
          *(v153 - 1) = *v95.i32;
          *v153 = *a10.i32;
          v152 = (v152 + v94);
          v153 += 2;
          v154 -= 2;
        }

        while (v154);
        v151 = v54 & 0x1FE;
        if (v54 != v98)
        {
          goto LABEL_237;
        }

LABEL_239:
        if (a4 != 7)
        {
          if (v96 >= 0xC8)
          {
            v159 = (v108 + 14);
            v160 = (a1 + 2144 + 28 * v54);
            v161 = v54 & 0x1FE;
            do
            {
              v95.i16[0] = *v159;
              v95 = vmovl_s16(v95).u64[0];
              a10.i16[0] = v159[v102 / 2];
              a10 = vmovl_s16(*a10.i8);
              *v95.i32 = *(v160 - 1) + v95.i32[0];
              *a10.i32 = *v160 + a10.i32[0];
              *(v160 - 1) = *v95.i32;
              *v160 = *a10.i32;
              v159 = (v159 + v94);
              v160 += 2;
              v161 -= 2;
            }

            while (v161);
            v158 = v54 & 0x1FE;
            if (v54 == v98)
            {
              goto LABEL_178;
            }
          }

          else
          {
            v158 = 0;
          }

          v162 = v54 - v158;
          v163 = (a1 + 2140 + 28 * v54 + 4 * v158);
          v164 = (v108 + v102 * v158 + 14);
          do
          {
            v95.i16[0] = *v164;
            v95 = vmovl_s16(v95).u64[0];
            a10.i32[0] = *v163;
            *v95.i32 = *v163 + v95.i32[0];
            *v163++ = v95.i32[0];
            v164 = (v164 + v102);
            --v162;
          }

          while (v162);
        }

LABEL_178:
        if (++v97 == v188)
        {
          goto LABEL_143;
        }
      }

      v109 = 0;
      v18 = v191;
LABEL_189:
      v113 = v54 - v109;
      v114 = (a1 + 2140 + 4 * v109);
      v115 = (v108 + v102 * v109);
      do
      {
        v95.i16[0] = *v115;
        v95 = vmovl_s16(v95).u64[0];
        a10.i32[0] = *v114;
        *v95.i32 = *v114 + v95.i32[0];
        *v114++ = v95.i32[0];
        v115 = (v115 + v102);
        --v113;
      }

      while (v113);
      goto LABEL_191;
    }

    v13 = &unk_280905000;
    v74 = v180;
    do
    {
      v75 = *v74;
      {
        v76 = v74;
        v74 = v76;
        if (v77)
        {
          operator new[]();
        }
      }

      if (!(*(v75 + 40) * *(v75 + 24)))
      {
        goto LABEL_251;
      }

      ++v74;
      v188 = (v188 - 1);
    }

    while (v188);
LABEL_142:
    v18 = v191;
LABEL_143:
    v55 = a1;
LABEL_144:
    if (*(v55 + 2136) == 1)
    {
      *(v55 + 108) = v54;
      v78 = v54 % 0x14;
      if (v78)
      {
        goto LABEL_257;
      }

      *(v55 + 112) = v54 / 0x14;
      *&v193 = v18;
      *(&v193 + 1) = v54;
      v194 = v56;
      v195 = 1;
      webrtc::Limiter::Process((v55 + 8), &v193);
    }

    v79 = v54 * v18;
    if (*(v190 + 15432) == 1)
    {
      bzero((v190 + 72), 2 * v79);
      *(v190 + 15432) = 0;
    }

    *(v190 + 24) = v54;
    *(v190 + 40) = v18;
    if (v79)
    {
      v80 = (v190 + 72);
    }

    else
    {
      v80 = 0;
    }

    if (!a4 || !v54)
    {
      return;
    }

    v81 = 0;
    v82 = (v56 + 4);
    v83 = 4 * v54;
    a10.i32[0] = 0.5;
    v84 = 2 * v18;
    v85.i64[0] = 0x8000000080000000;
    v85.i64[1] = 0x8000000080000000;
    while (1)
    {
      if (v54 >= 2)
      {
        v87 = v54 & 0x3FFFFFFFFFFFFFELL;
        v88 = v80;
        v89 = v82;
        do
        {
          a12.i32[0] = *(v89 - 1);
          a13.i32[0] = *v89;
          if (*a12.i32 > 32767.0)
          {
            *a12.i32 = 32767.0;
          }

          if (*a13.i32 > 32767.0)
          {
            *a13.i32 = 32767.0;
          }

          if (*a12.i32 < -32768.0)
          {
            *a12.i32 = -32768.0;
          }

          if (*a13.i32 < -32768.0)
          {
            *a13.i32 = -32768.0;
          }

          *v88 = (*a12.i32 + *vbslq_s8(v85, a10, a12).i32);
          v88[v18] = (*a13.i32 + *vbslq_s8(v85, a10, a13).i32);
          v89 += 2;
          v88 += 2 * v18;
          v87 -= 2;
        }

        while (v87);
        v86 = v54 & 0x3FFFFFFFFFFFFFELL;
        if (v54 == (v54 & 0x3FFFFFFFFFFFFFELL))
        {
          goto LABEL_155;
        }
      }

      else
      {
        v86 = 0;
      }

      v90 = v54 - v86;
      v91 = v84 * v86;
      v92 = (v56 + 4 * v86);
      do
      {
        v93 = *v92++;
        *a12.i32 = v93;
        if (v93 > 32767.0)
        {
          *a12.i32 = 32767.0;
        }

        if (*a12.i32 < -32768.0)
        {
          *a12.i32 = -32768.0;
        }

        a13 = vbslq_s8(v85, a10, a12);
        *(v80 + v91) = (*a12.i32 + *a13.i32);
        v91 += v84;
        --v90;
      }

      while (v90);
LABEL_155:
      ++v81;
      v82 = (v82 + v83);
      ++v80;
      v56 += v83;
      if (v81 == v18)
      {
        return;
      }
    }
  }

  v13 = *a2;
  v64 = *(*a2 + 24);
  v15 = *(*a2 + 40);
  v14 = v15 * v64;
  if (v15 * v64 >= 0x1E01)
  {
LABEL_255:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 174, "total_samples <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v14);
    goto LABEL_256;
  }

  if (v15 >= 0x19)
  {
LABEL_256:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 175, "num_channels <= kMaxNumberOfAudioChannels", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v15);
LABEL_257:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v78);
LABEL_258:
    v167 = v65;
    v65 = v167;
    if (v168)
    {
      operator new[]();
    }

LABEL_110:
    v66 = webrtc::AudioFrame::zeroed_data(void)::null_data;
    goto LABEL_128;
  }

  if (*(v17 + 15432) == 1)
  {
    bzero((v17 + 72), 2 * v14);
    *(v17 + 15432) = 0;
    v13 = *a2;
  }

  *(v17 + 24) = v64;
  *(v17 + 40) = v15;
  if (v14)
  {
    v65 = (v17 + 72);
  }

  else
  {
    v65 = 0;
  }

  if (*(v13 + 15432) == 1)
  {
    {
      goto LABEL_110;
    }

    goto LABEL_258;
  }

  v66 = (v13 + 18);
LABEL_128:
  v72 = *(v13 + 5) * *(v13 + 3);
  if (v72)
  {
    v73 = v66;
  }

  else
  {
    v73 = 0;
  }

  memcpy(v65, v73, 2 * v72);
}

void webrtc::FrameDelayVariationKalmanFilter::PredictAndUpdate(webrtc::FrameDelayVariationKalmanFilter *this, double a2, double a3, double a4, double a5)
{
  if (a4 >= 1.0 && a5 > 0.0)
  {
    v7 = *(this + 7);
    v9 = *(this + 3);
    v10 = *(this + 6) + *(this + 2);
    *(this + 2) = v10;
    v11 = *(this + 4);
    v12 = v7 + *(this + 5);
    *(this + 5) = v12;
    v24 = *this;
    v25 = *(this + 1);
    v26 = v9;
    v13 = v9 + v10 * a3;
    v14 = v12 + v11 * a3;
    v15 = sqrt(a5) * (exp(-fabs(a3) / a4) * 300.0 + 1.0);
    if (v15 < 1.0)
    {
      v15 = 1.0;
    }

    v16 = v15 + v14 + a3 * v13;
    if ((v16 >= 0.000000001 || v16 < 0.0) && (v16 <= -0.000000001 || v16 > 0.0))
    {
      v17 = a2 - (v24 * a3 + v25);
      v18 = v13 / v16;
      v19 = v14 / v16;
      v20 = v24 + v18 * v17;
      *this = v20;
      *(this + 1) = v25 + v19 * v17;
      if (v20 < 0.000001)
      {
        *this = 0x3EB0C6F7A0B5ED8DLL;
      }

      v21 = 1.0 - v18 * a3;
      *(this + 2) = v21 * v10 - v18 * v11;
      *(this + 3) = v21 * v26 - v18 * v12;
      v22 = 1.0 - v19;
      v23 = -(v19 * a3);
      *(this + 4) = v10 * v23 + v11 * v22;
      *(this + 5) = v26 * v23 + v12 * v22;
    }
  }
}

void webrtc::FrameDependenciesCalculator::FromBuffersUsage(uint64_t *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>)
{
  *a9 = 0;
  if (a4)
  {
    v9 = a3;
    v11 = a3;
    v84 = a1 + 1;
    v85 = &a3[2 * a4];
    do
    {
      v12 = *v11;
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_152;
      }

      v13 = *a1 >> 1;
      if (v13 <= v12)
      {
        if (*a1)
        {
          v14 = a1[1];
          v15 = v12 + 1;
          if (a1[2] < v12 + 1)
          {
LABEL_11:
            operator new();
          }
        }

        else
        {
          v14 = v84;
          v15 = v12 + 1;
          if (v12 + 1 > 4)
          {
            goto LABEL_11;
          }
        }

        if (!v14)
        {
LABEL_151:
          __break(1u);
LABEL_152:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/frame_dependencies_calculator.cc", 34, "buffer_usage.id >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v12);
          goto LABEL_153;
        }

        bzero(&v14[7 * v13], 56 * (v15 - v13));
        *a1 = *a1 & 1 | (2 * v15);
      }

      v11 += 2;
    }

    while (v11 != v85);
    v90 = 0;
    v91 = 0;
    v89 = &v90;
    v87 = 0;
    v88 = 0;
    v86 = &v87;
    v16 = v9;
    v17 = a9;
    do
    {
      if (*(v16 + 4) == 1)
      {
        v12 = *v16;
        if (v12 >= *a1 >> 1)
        {
          goto LABEL_151;
        }

        v18 = v84;
        if (*a1)
        {
          v18 = *v84;
        }

        v19 = &v18[7 * v12];
        if (v19[1])
        {
          v20 = v90;
          if (!v90)
          {
LABEL_26:
            operator new();
          }

          v21 = *v19;
          while (1)
          {
            while (1)
            {
              v22 = v20;
              v23 = v20[4];
              if (v21 >= v23)
              {
                break;
              }

              v20 = *v22;
              if (!*v22)
              {
                goto LABEL_26;
              }
            }

            if (v23 >= v21)
            {
              break;
            }

            v20 = v22[1];
            if (!v20)
            {
              goto LABEL_26;
            }
          }

          v24 = v19[2];
          v25 = v19 + 3;
          if (v24)
          {
            v25 = *v25;
          }

          if (v24 >= 2)
          {
            v26 = &v25[v24 >> 1];
            do
            {
              v27 = v87;
              v28 = &v87;
              if (v86 == &v87)
              {
                goto LABEL_38;
              }

              v29 = v87;
              v30 = &v87;
              if (v87)
              {
                do
                {
                  v28 = v29;
                  v29 = v29[1];
                }

                while (v29);
              }

              else
              {
                do
                {
                  v28 = v30[2];
                  v31 = *v28 == v30;
                  v30 = v28;
                }

                while (v31);
              }

              v32 = *v25;
              if (v28[4] < *v25)
              {
LABEL_38:
                if (v87)
                {
                  v33 = v28;
                }

                else
                {
                  v33 = &v86;
                }

                if (!v33[1])
                {
LABEL_49:
                  operator new();
                }
              }

              else
              {
                if (!v87)
                {
                  goto LABEL_49;
                }

                while (1)
                {
                  while (1)
                  {
                    v34 = v27;
                    v35 = v27[4];
                    if (v32 >= v35)
                    {
                      break;
                    }

                    v27 = *v34;
                    if (!*v34)
                    {
                      goto LABEL_49;
                    }
                  }

                  if (v35 >= v32)
                  {
                    break;
                  }

                  v27 = v34[1];
                  if (!v27)
                  {
                    goto LABEL_49;
                  }
                }
              }

              ++v25;
            }

            while (v25 != v26);
          }

          v17 = a9;
        }

        else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          v80 = v80 & 0xFFFFFFFF00000000 | 0x183;
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v36, v37, v38, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/frame_dependencies_calculator.cc");
        }
      }

      v16 += 2;
    }

    while (v16 != v85);
    v39 = v89;
    if (v89 == &v90)
    {
      goto LABEL_100;
    }

    v40 = v86;
    while (v40 != &v87)
    {
      v12 = v39[4];
      v41 = v40[4];
      if (v12 >= v41)
      {
        if (v41 >= v12)
        {
          v48 = v39[1];
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = v39[2];
              v31 = *v49 == v39;
              v39 = v49;
            }

            while (!v31);
          }

          v50 = v40[1];
          if (v50)
          {
            do
            {
              v40 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v51 = v40;
              v40 = v40[2];
            }

            while (*v40 != v51);
          }

          v39 = v49;
        }

        else
        {
          v46 = v40[1];
          if (v46)
          {
            do
            {
              v40 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = v40;
              v40 = v40[2];
            }

            while (*v40 != v47);
          }
        }
      }

      else
      {
        v42 = *v17;
        v43 = v17[1];
        if (*v17)
        {
          v44 = v17[2];
        }

        else
        {
          v43 = v17 + 1;
          v44 = 5;
        }

        if (v42 >> 1 == v44)
        {
          absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v17);
        }

        if (!v43)
        {
          goto LABEL_151;
        }

        v43[v42 >> 1] = v12;
        *v17 = v42 + 2;
        v45 = v39[1];
        if (v45)
        {
          do
          {
            v39 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v52 = v39;
            v39 = v39[2];
          }

          while (*v39 != v52);
        }
      }

      if (v39 == &v90)
      {
        goto LABEL_100;
      }
    }

    v12 = *v17;
    do
    {
      v53 = v17[1];
      if (v12)
      {
        v54 = v17[2];
      }

      else
      {
        v53 = v17 + 1;
        v54 = 5;
      }

      if (v12 >> 1 == v54)
      {
        absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v17);
      }

      if (!v53)
      {
        goto LABEL_151;
      }

      v53[v12 >> 1] = v39[4];
      v12 += 2;
      *v17 = v12;
      v55 = v39[1];
      if (v55)
      {
        do
        {
          v56 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v56 = v39[2];
          v31 = *v56 == v39;
          v39 = v56;
        }

        while (!v31);
      }

      v39 = v56;
    }

    while (v56 != &v90);
    do
    {
LABEL_100:
      if (*(v9 + 5) == 1)
      {
        v12 = *v9;
        if (v12 >= *a1 >> 1)
        {
          goto LABEL_151;
        }

        v57 = v84;
        if (*a1)
        {
          v57 = *v84;
        }

        v58 = &v57[7 * v12];
        *v58 = a2;
        *(v58 + 8) = 1;
        v59 = v89;
        if (v89 == &v90)
        {
          v60 = 0;
        }

        else
        {
          v60 = 0;
          v61 = v89;
          do
          {
            v62 = v61[1];
            if (v62)
            {
              do
              {
                v63 = v62;
                v62 = *v62;
              }

              while (v62);
            }

            else
            {
              do
              {
                v63 = v61[2];
                v31 = *v63 == v61;
                v61 = v63;
              }

              while (!v31);
            }

            ++v60;
            v61 = v63;
          }

          while (v63 != &v90);
        }

        v64 = v58[2];
        if (v64)
        {
          v65 = v58[3];
          v66 = v58[4];
          if (v66 < v60)
          {
LABEL_131:
            v72 = 2 * v66;
            if (v72 <= v60)
            {
              v73 = v60;
            }

            else
            {
              v73 = v72;
            }

            if (!(v73 >> 61))
            {
              operator new();
            }

LABEL_153:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }
        }

        else
        {
          v65 = v58 + 3;
          v66 = 4;
          if (v60 > 4)
          {
            goto LABEL_131;
          }
        }

        v67 = v64 >> 1;
        v12 = v60 - (v64 >> 1);
        if (v60 < v64 >> 1)
        {
          v12 = 0;
        }

        if (v67 >= v60)
        {
          v68 = v60;
        }

        else
        {
          v68 = v64 >> 1;
        }

        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            v65[i] = v59[4];
            v70 = v59[1];
            if (v70)
            {
              do
              {
                v71 = v70;
                v70 = *v70;
              }

              while (v70);
            }

            else
            {
              do
              {
                v71 = v59[2];
                v31 = *v71 == v59;
                v59 = v71;
              }

              while (!v31);
            }

            v59 = v71;
          }
        }

        else
        {
          v71 = v89;
        }

        if (v67 < v60)
        {
          if (!v65)
          {
            goto LABEL_151;
          }

          v74 = v71;
          v75 = &v65[v67];
          v76 = 0;
          do
          {
            v75[v76] = v74[4];
            v77 = v74[1];
            if (v77)
            {
              do
              {
                v78 = v77;
                v77 = *v77;
              }

              while (v77);
            }

            else
            {
              do
              {
                v78 = v74[2];
                v31 = *v78 == v74;
                v74 = v78;
              }

              while (!v31);
            }

            ++v76;
            v74 = v78;
          }

          while (v76 != v12);
          v64 = v58[2];
        }

        v58[2] = v64 & 1 | (2 * v60);
      }

      v9 += 2;
    }

    while (v9 != v85);
    v79 = v87;
  }

  else
  {
    v79 = 0;
    v90 = 0;
    v91 = 0;
    v89 = &v90;
    v87 = 0;
    v88 = 0;
    v86 = &v87;
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(&v86, v79);
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v89, v90);
}

void absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

uint64_t webrtc::FrameDropper::Fill(uint64_t this, unint64_t a2, char a3)
{
  if (*(this + 73) == 1)
  {
    v3 = (a2 * 8.0) / 1000.0;
    if (a3)
    {
      v4 = *(this + 16);
      if (v4 == -1.0 || v3 <= (v4 * 3.0) || *(this + 28))
      {
        v5 = (a2 * 8.0) / 1000.0;
        if (v4 != -1.0)
        {
          v5 = (v3 * (1.0 - *(this + 12))) + (*(this + 12) * v4);
        }

        v6 = *(this + 20);
        if (v5 <= v6 || v6 == -1.0)
        {
          v6 = v5;
        }

        *(this + 16) = v6;
        v8 = *(this + 4);
        v9 = 0.0;
        v10 = -1.0;
        if (v8 == -1.0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v24 = (*(this + 24) + 0.5);
        *(this + 28) = v24;
        *(this + 32) = v3 / v24;
        v3 = 0.0;
        v8 = *(this + 4);
        v9 = 0.0;
        v10 = -1.0;
        if (v8 == -1.0)
        {
          goto LABEL_16;
        }
      }

      v9 = ((1.0 - *this) * 0.0) + (*this * v8);
LABEL_16:
      v11 = *(this + 8);
      if (v9 <= v11 || v11 == v10)
      {
        v13 = v9;
      }

      else
      {
        v13 = *(this + 8);
      }

      *(this + 4) = v13;
      goto LABEL_38;
    }

    v14 = *(this + 4);
    v15 = 1.0;
    if (v14 != -1.0)
    {
      v15 = (1.0 - *this) + (*this * v14);
    }

    v16 = *(this + 8);
    if (v15 <= v16 || v16 == -1.0)
    {
      v18 = v15;
    }

    else
    {
      v18 = *(this + 8);
    }

    *(this + 4) = v18;
    if (*(this + 28))
    {
      goto LABEL_38;
    }

    if (v18 <= 0.00001)
    {
      v20 = *(this + 24);
    }

    else
    {
      v19 = 1.0 / v18;
      v20 = *(this + 24);
      if (v19 < v20)
      {
        goto LABEL_37;
      }
    }

    v19 = v20;
LABEL_37:
    v21 = (v19 + 0.5);
    *(this + 28) = v21;
    *(this + 32) = v3 / v21;
    v3 = 0.0;
LABEL_38:
    v22 = v3 + *(this + 36);
    *(this + 36) = v22;
    v23 = *(this + 44) * 3.0;
    if (v22 > v23)
    {
      *(this + 36) = v23;
    }
  }

  return this;
}

uint64_t webrtc::FrameDropper::Leak(uint64_t this, unsigned int a2)
{
  if (a2)
  {
    if (*(this + 73))
    {
      v2 = *(this + 44);
      if (v2 >= 0.0)
      {
        v3 = vcvtd_n_f64_u32(a2, 1uLL);
        if (v3 < 5.0)
        {
          v3 = 5.0;
        }

        v4 = v3;
        *(this + 24) = v4;
        v5 = v2 / a2;
        v6 = *(this + 28);
        v7 = __OFSUB__(v6, 1);
        v8 = v6 - 1;
        if (v8 < 0 == v7)
        {
          v5 = v5 - *(this + 32);
          *(this + 28) = v8;
        }

        v9 = *(this + 40);
        v10 = *(this + 36) - v5;
        if (v10 < 0.0)
        {
          v10 = 0.0;
        }

        *(this + 36) = v10;
        v11 = 0.9;
        if (v10 > (v9 * 1.3))
        {
          v11 = 0.8;
        }

        *(this + 52) = v11;
        if (v10 <= v9)
        {
          v16 = *(this + 56);
          v17 = *(this + 60);
          v18 = ((1.0 - v11) * 0.0) + (v11 * v16);
          if (v16 == -1.0)
          {
            v18 = 0.0;
          }

          if (v18 > v17 && v17 != -1.0)
          {
            v18 = *(this + 60);
          }

          *(this + 56) = v18;
        }

        else
        {
          if (*(this + 72) == 1)
          {
            *(this + 48) = 1;
          }

          v12 = *(this + 56);
          v13 = *(this + 60);
          v14 = (1.0 - v11) + (v11 * v12);
          if (v12 == -1.0)
          {
            v14 = 1.0;
          }

          if (v14 > v13 && v13 != -1.0)
          {
            v14 = *(this + 60);
          }

          *(this + 56) = v14;
          *(this + 52) = 1063675494;
        }

        *(this + 72) = v10 < v9;
      }
    }
  }

  return this;
}

void webrtc::anonymous namespace::FrameDumpingDecoder::~FrameDumpingDecoder(webrtc::_anonymous_namespace_::FrameDumpingDecoder *this)
{
  *this = &unk_288293D30;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      if (!*(v2 + 24) || (webrtc::IvfFileWriter::WriteHeader(v2), (v3 = *(v2 + 72)) != 0))
      {
        fclose(v3);
        *(v2 + 72) = 0;
      }
    }

    MEMORY[0x2743DA540](v2, 0x1020C409DD573D2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_288293D30;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      if (!*(v2 + 24) || (webrtc::IvfFileWriter::WriteHeader(v2), (v3 = *(v2 + 72)) != 0))
      {
        fclose(v3);
        *(v2 + 72) = 0;
      }
    }

    MEMORY[0x2743DA540](v2, 0x1020C409DD573D2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::FrameDumpingDecoder::Decode(webrtc::_anonymous_namespace_::FrameDumpingDecoder *this, const webrtc::EncodedImage *a2)
{
  v4 = (*(**(this + 1) + 24))(*(this + 1));
  webrtc::IvfFileWriter::WriteFrame(*(this + 3), a2, *(this + 4));
  return v4;
}

void webrtc::MaybeCreateFrameDumpingEncoderWrapper(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  (*(*a2 + 16))(__p, a2, "WebRTC-EncoderDataDumpDirectory", 31);
  v5 = v21;
  v6 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  v7 = *a1;
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ((v21 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = v9;
    if (v5 < 8)
    {
      goto LABEL_82;
    }

    if (v5 < 0x10)
    {
      v11 = 0;
      goto LABEL_16;
    }

    v11 = v5 & 0xFFFFFFFFFFFFFFF0;
    v15 = v9 + 7;
    v16.i64[0] = 0x3B3B3B3B3B3B3B3BLL;
    v16.i64[1] = 0x3B3B3B3B3B3B3B3BLL;
    v17 = v5 & 0xFFFFFFFFFFFFFFF0;
    while (1)
    {
      v18 = vceqq_s8(*(v15 - 7), v16);
      if (v18.i8[0])
      {
        *(v15 - 7) = 47;
        if ((v18.i8[1] & 1) == 0)
        {
LABEL_41:
          if ((v18.i8[2] & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_58;
        }
      }

      else if ((v18.i8[1] & 1) == 0)
      {
        goto LABEL_41;
      }

      *(v15 - 6) = 47;
      if ((v18.i8[2] & 1) == 0)
      {
LABEL_42:
        if ((v18.i8[3] & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_59;
      }

LABEL_58:
      *(v15 - 5) = 47;
      if ((v18.i8[3] & 1) == 0)
      {
LABEL_43:
        if ((v18.i8[4] & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_60;
      }

LABEL_59:
      *(v15 - 4) = 47;
      if ((v18.i8[4] & 1) == 0)
      {
LABEL_44:
        if ((v18.i8[5] & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_61;
      }

LABEL_60:
      *(v15 - 3) = 47;
      if ((v18.i8[5] & 1) == 0)
      {
LABEL_45:
        if ((v18.i8[6] & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_62;
      }

LABEL_61:
      *(v15 - 2) = 47;
      if ((v18.i8[6] & 1) == 0)
      {
LABEL_46:
        if ((v18.i8[7] & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_63;
      }

LABEL_62:
      *(v15 - 1) = 47;
      if ((v18.i8[7] & 1) == 0)
      {
LABEL_47:
        if ((v18.i8[8] & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_64;
      }

LABEL_63:
      *v15 = 47;
      if ((v18.i8[8] & 1) == 0)
      {
LABEL_48:
        if ((v18.i8[9] & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_65;
      }

LABEL_64:
      v15[1] = 47;
      if ((v18.i8[9] & 1) == 0)
      {
LABEL_49:
        if ((v18.i8[10] & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_66;
      }

LABEL_65:
      v15[2] = 47;
      if ((v18.i8[10] & 1) == 0)
      {
LABEL_50:
        if ((v18.i8[11] & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_67;
      }

LABEL_66:
      v15[3] = 47;
      if ((v18.i8[11] & 1) == 0)
      {
LABEL_51:
        if ((v18.i8[12] & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

LABEL_67:
      v15[4] = 47;
      if ((v18.i8[12] & 1) == 0)
      {
LABEL_52:
        if ((v18.i8[13] & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_69;
      }

LABEL_68:
      v15[5] = 47;
      if ((v18.i8[13] & 1) == 0)
      {
LABEL_53:
        if ((v18.i8[14] & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_70;
      }

LABEL_69:
      v15[6] = 47;
      if ((v18.i8[14] & 1) == 0)
      {
LABEL_54:
        if (v18.i8[15])
        {
          goto LABEL_71;
        }

        goto LABEL_38;
      }

LABEL_70:
      v15[7] = 47;
      if (v18.i8[15])
      {
LABEL_71:
        v15[8] = 47;
      }

LABEL_38:
      v15 += 16;
      v17 -= 16;
      if (!v17)
      {
        if (v5 == v11)
        {
          goto LABEL_73;
        }

        if ((v5 & 8) == 0)
        {
          v10 = v9 + v11;
LABEL_82:
          v19 = v9 + v5;
          do
          {
            if (*v10 == 59)
            {
              *v10 = 47;
            }

            ++v10;
          }

          while (v10 != v19);
LABEL_73:
          if (webrtc::g_clock)
          {
            (*(*webrtc::g_clock + 16))(webrtc::g_clock);
          }

          else
          {
            if (!dword_28100D8E4)
            {
              mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
            }

            mach_absolute_time();
          }

          operator new();
        }

LABEL_16:
        v10 = v9 + (v5 & 0xFFFFFFFFFFFFFFF8);
        v12 = v11 - (v5 & 0xFFFFFFFFFFFFFFF8);
        v13 = v9 + v11 + 3;
        while (2)
        {
          v14 = vceq_s8(*(v13 - 3), 0x3B3B3B3B3B3B3B3BLL);
          if (v14.i8[0])
          {
            *(v13 - 3) = 47;
            if (v14.i8[1])
            {
              goto LABEL_28;
            }

LABEL_20:
            if ((v14.i8[2] & 1) == 0)
            {
              goto LABEL_21;
            }

LABEL_29:
            *(v13 - 1) = 47;
            if (v14.i8[3])
            {
              goto LABEL_30;
            }

LABEL_22:
            if ((v14.i8[4] & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_31:
            v13[1] = 47;
            if (v14.i8[5])
            {
              goto LABEL_32;
            }

LABEL_24:
            if ((v14.i8[6] & 1) == 0)
            {
              goto LABEL_25;
            }

LABEL_33:
            v13[3] = 47;
            if (v14.i8[7])
            {
LABEL_34:
              v13[4] = 47;
            }
          }

          else
          {
            if ((v14.i8[1] & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_28:
            *(v13 - 2) = 47;
            if (v14.i8[2])
            {
              goto LABEL_29;
            }

LABEL_21:
            if ((v14.i8[3] & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_30:
            *v13 = 47;
            if (v14.i8[4])
            {
              goto LABEL_31;
            }

LABEL_23:
            if ((v14.i8[5] & 1) == 0)
            {
              goto LABEL_24;
            }

LABEL_32:
            v13[2] = 47;
            if (v14.i8[6])
            {
              goto LABEL_33;
            }

LABEL_25:
            if (v14.i8[7])
            {
              goto LABEL_34;
            }
          }

          v13 += 8;
          v12 += 8;
          if (!v12)
          {
            if (v5 != (v5 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_82;
            }

            goto LABEL_73;
          }

          continue;
        }
      }
    }
  }

  *a1 = 0;
  *a3 = v7;
  if ((v6 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void webrtc::anonymous namespace::FrameDumpingEncoder::~FrameDumpingEncoder(webrtc::_anonymous_namespace_::FrameDumpingEncoder *this)
{
  *this = &unk_288293D88;
  *(this + 1) = &unk_288293E10;
  pthread_mutex_lock((this + 24));
  std::__tree<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::__map_value_compare<int,std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>>>::destroy(*(this + 12));
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = this + 96;
  pthread_mutex_unlock((this + 24));
  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  std::__tree<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::__map_value_compare<int,std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>>>::destroy(*(this + 12));
  pthread_mutex_destroy((this + 24));
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::FrameDumpingEncoder::InitEncode(uint64_t a1, const void *a2)
{
  memcpy((a1 + 112), a2, 0x17DuLL);
  v3 = *(**(a1 + 16) + 32);

  return v3();
}

uint64_t webrtc::anonymous namespace::FrameDumpingEncoder::OnEncodedImage(webrtc::_anonymous_namespace_::FrameDumpingEncoder *this, const webrtc::EncodedImage *a2, const webrtc::CodecSpecificInfo *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 24));
  if ((*(a2 + 156) & 0x100000000) != 0)
  {
    v6 = *(a2 + 156);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 12);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = this + 96;
  do
  {
    if (*(v7 + 8) >= v6)
    {
      v8 = v7;
    }

    v7 = *&v7[8 * (*(v7 + 8) < v6)];
  }

  while (v7);
  if (v8 == this + 96 || *(v8 + 8) > v6)
  {
LABEL_11:
    __s = __dst;
    v28 = 1024;
    __dst[0] = 0;
    v9 = *(this + 527);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = *(this + 63);
      v9 = *(this + 64);
    }

    else
    {
      v10 = this + 504;
    }

    if (v9 >= 0x3FF)
    {
      v11 = 1023;
    }

    else
    {
      v11 = v9;
    }

    memcpy(__dst, v10, v11);
    __dst[v11] = 0;
    if ((v11 ^ 0x3FF) >= 0x16)
    {
      v12 = 22;
    }

    else
    {
      v12 = v11 ^ 0x3FF;
    }

    memcpy(&__dst[v11], "/webrtc_encoded_frames", v12);
    v13 = v12 + v11;
    __dst[v12 + v11] = 0;
    v14 = v12 + v11 != 1023;
    if (v12 + v11 == 1023)
    {
      v15 = 1023;
    }

    else
    {
      v15 = v13 + 1;
    }

    memcpy(&__dst[v13], ".", v14);
    v29 = v15;
    __dst[v15] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(this + 66));
    v16 = v28;
    v17 = v29 + 1;
    memcpy(&__s[v29], ".", v28 != v29 + 1);
    v18 = v29;
    if (v16 != v17)
    {
      v18 = v29 + 1;
    }

    v29 = v18;
    __s[v18] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", v6);
    if ((v28 + ~v29) >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v28 + ~v29;
    }

    memcpy(&__s[v29], ".ivf", v19);
    v29 += v19;
    __s[v29] = 0;
    if (__s)
    {
      v20 = strlen(__s);
      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v20 > 0x16)
      {
        operator new();
      }

      v26 = v20;
      v21 = __p + v20;
      if (__p > __s || v21 <= __s)
      {
        if (v20)
        {
          memmove(__p, __s, v20);
        }

        *v21 = 0;
        if ((v26 & 0x80u) == 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v23 = v26;
        }

        else
        {
          v23 = __p[1];
        }

        operator new();
      }
    }

    __break(1u);
  }

  webrtc::IvfFileWriter::WriteFrame(*(v8 + 5), a2, *(this + 28));
  pthread_mutex_unlock((this + 24));
  return (*(**(this + 62) + 16))(*(this + 62), a2, a3);
}

void non-virtual thunk towebrtc::anonymous namespace::FrameDumpingEncoder::~FrameDumpingEncoder(uint64_t a1)
{
}

{

  JUMPOUT(0x2743DA540);
}

void std::__tree<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::__map_value_compare<int,std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::__map_value_compare<int,std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::__map_value_compare<int,std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::unique_ptr<webrtc::IvfFileWriter>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      v3 = *(v2 + 72);
      if (v3)
      {
        if (!*(v2 + 24) || (webrtc::IvfFileWriter::WriteHeader(v2), (v3 = *(v2 + 72)) != 0))
        {
          fclose(v3);
          *(v2 + 72) = 0;
        }
      }

      MEMORY[0x2743DA540](v2, 0x1020C409DD573D2);
    }

    operator delete(a1);
  }
}

uint64_t webrtc::FrameEncodeMetadataWriter::OnEncoderInit(pthread_mutex_t *this, const webrtc::VideoCodec *a2)
{
  pthread_mutex_lock(this);
  v4 = memcpy(this[1].__opaque, a2, 0x17DuLL);
  v5 = this[1].__opaque[32];
  v6 = *this[1].__opaque;
  if (v6 != 3)
  {
    if (v6 == 2)
    {
      if (v5 <= this[6].__opaque[46])
      {
        v5 = this[6].__opaque[46];
      }

      else
      {
        v5 = this[1].__opaque[32];
      }
    }

    goto LABEL_15;
  }

  v7 = *&this[6].__opaque[52];
  if ((v7 & 0x100) == 0)
  {
    goto LABEL_15;
  }

  if (v7 >= 0x22u)
  {
    v19 = 0;
LABEL_11:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_encode_metadata_writer.cc");
    }

    goto LABEL_13;
  }

  (*(*(&off_279E93D70 + (v7 & 0x3F)) + 1))(&v19, v4);
  if (!v19)
  {
    goto LABEL_11;
  }

  (*(*v19 + 16))(v18);
  v5 = v18[0];
LABEL_13:
  v15 = v19;
  v19 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

LABEL_15:
  if (v5 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v5;
  }

  *&this[7].__opaque[8] = v16;
  return pthread_mutex_unlock(this);
}

uint64_t webrtc::FrameEncodeMetadataWriter::OnSetRates(pthread_mutex_t *this, const webrtc::VideoBitrateAllocation *a2, int a3)
{
  pthread_mutex_lock(this);
  *this[7].__opaque = a3;
  v10 = *&this[7].__opaque[8];
  v11 = (*&this[7].__opaque[24] - *&this[7].__opaque[16]) >> 5;
  if (v10 > v11)
  {
    std::vector<webrtc::FrameEncodeMetadataWriter::TimingFramesLayerInfo>::__append(&this[7].__opaque[16], v10 - v11);
    v10 = *&this[7].__opaque[8];
  }

  if (!v10)
  {
    goto LABEL_74;
  }

  v12 = *&this[7].__opaque[16];
  v13 = *&this[7].__opaque[24] - v12;
  if (!v13)
  {
    goto LABEL_77;
  }

  if (*(a2 + 32))
  {
    v14 = *(a2 + 7);
  }

  else
  {
    v14 = 0;
  }

  if (*(a2 + 24))
  {
    v15 = *(a2 + 5);
  }

  else
  {
    v15 = 0;
  }

  if (*(a2 + 16))
  {
    v16 = *(a2 + 3);
  }

  else
  {
    v16 = 0;
  }

  if (*(a2 + 8))
  {
    v17 = *(a2 + 1);
  }

  else
  {
    v17 = 0;
  }

  *v12 = (v16 + v17 + v15 + v14) >> 3;
  if (v10 == 1)
  {
    goto LABEL_74;
  }

  if (v13 == 32)
  {
    goto LABEL_77;
  }

  if (*(a2 + 64))
  {
    v18 = *(a2 + 15);
  }

  else
  {
    v18 = 0;
  }

  if (*(a2 + 56))
  {
    v19 = *(a2 + 13);
  }

  else
  {
    v19 = 0;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 11);
  }

  else
  {
    v20 = 0;
  }

  if (*(a2 + 40))
  {
    v21 = *(a2 + 9);
  }

  else
  {
    v21 = 0;
  }

  v12[4] = (v20 + v21 + v19 + v18) >> 3;
  if (v10 < 3)
  {
    goto LABEL_74;
  }

  if (v13 == 64)
  {
    goto LABEL_77;
  }

  if (*(a2 + 96))
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = 0;
  }

  if (*(a2 + 88))
  {
    v23 = *(a2 + 21);
  }

  else
  {
    v23 = 0;
  }

  if (*(a2 + 80))
  {
    v24 = *(a2 + 19);
  }

  else
  {
    v24 = 0;
  }

  if (*(a2 + 72))
  {
    v25 = *(a2 + 17);
  }

  else
  {
    v25 = 0;
  }

  v12[8] = (v24 + v25 + v23 + v22) >> 3;
  if (v10 == 3)
  {
    goto LABEL_74;
  }

  if (v13 == 96)
  {
    goto LABEL_77;
  }

  if (*(a2 + 128))
  {
    v26 = *(a2 + 31);
  }

  else
  {
    v26 = 0;
  }

  if (*(a2 + 120))
  {
    v27 = *(a2 + 29);
  }

  else
  {
    v27 = 0;
  }

  if (*(a2 + 112))
  {
    v28 = *(a2 + 27);
  }

  else
  {
    v28 = 0;
  }

  if (*(a2 + 104))
  {
    v29 = *(a2 + 25);
  }

  else
  {
    v29 = 0;
  }

  v12[12] = (v28 + v29 + v27 + v26) >> 3;
  if (v10 < 5)
  {
    goto LABEL_74;
  }

  if (v13 == 128)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 78, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v6, v7, v8, v9, 5);
    return webrtc::FrameEncodeMetadataWriter::OnEncodeStarted(v35, v36);
  }

  if (*(a2 + 160))
  {
    v30 = *(a2 + 39);
  }

  else
  {
    v30 = 0;
  }

  if (*(a2 + 152))
  {
    v31 = *(a2 + 37);
  }

  else
  {
    v31 = 0;
  }

  if (*(a2 + 144))
  {
    v32 = *(a2 + 35);
  }

  else
  {
    v32 = 0;
  }

  if (*(a2 + 136))
  {
    v33 = *(a2 + 33);
  }

  else
  {
    v33 = 0;
  }

  v12[16] = (v32 + v33 + v31 + v30) >> 3;
  if (v10 != 5)
  {
    goto LABEL_78;
  }

LABEL_74:

  return pthread_mutex_unlock(this);
}

uint64_t webrtc::FrameEncodeMetadataWriter::OnEncodeStarted(pthread_mutex_t *this, const webrtc::VideoFrame *a2)
{
  pthread_mutex_lock(this);
  v4 = *&this[7].__opaque[16];
  v5 = *&this[7].__opaque[8];
  v6 = (*&this[7].__opaque[24] - v4) >> 5;
  if (v5 <= v6)
  {
    if (v5 < v6)
    {
      std::vector<webrtc::FrameEncodeMetadataWriter::TimingFramesLayerInfo>::__base_destruct_at_end[abi:sn200100](&this[7].__opaque[16], v4 + 32 * v5);
    }
  }

  else
  {
    std::vector<webrtc::FrameEncodeMetadataWriter::TimingFramesLayerInfo>::__append(&this[7].__opaque[16], v5 - v6);
  }

  if (webrtc::g_clock)
  {
    (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    if (*(a2 + 144))
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = *(a2 + 1);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (!dword_28100D8E4)
  {
    mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
  }

  mach_absolute_time();
  if (!*(a2 + 144))
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = *(a2 + 1);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_8:
  (*(*v7 + 40))(v7);
  v8 = *(a2 + 1);
  if (v8)
  {
    (*(*v8 + 48))(v8);
  }

LABEL_14:
  v9 = *(a2 + 23);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 1u, memory_order_relaxed);
  }

  v10 = *&this[7].__opaque[8];
  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = *&this[7].__opaque[16];
      v13 = (*&this[7].__opaque[24] - v12) >> 5;
      if (v13 <= v11)
      {
        goto LABEL_59;
      }

      v14 = (v12 + 32 * v11);
      if (*v14)
      {
        break;
      }

      if (++v11 >= v10)
      {
        goto LABEL_45;
      }
    }

    if (v14[3] == 150)
    {
      v15 = this[8].__sig + 1;
      this[8].__sig = v15;
      if (v15 < 3 || !(v15 % 0x186A0))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_encode_metadata_writer.cc");
        }

        if (this[8].__sig == 2 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_encode_metadata_writer.cc");
        }
      }

      (*(*this[1].__sig + 24))(this[1].__sig, 1);
      v30 = *&this[7].__opaque[16];
      if (v11 >= (*&this[7].__opaque[24] - v30) >> 5 || (v31 = v30 + 32 * v11, (v32 = *(v31 + 24)) == 0))
      {
LABEL_59:
        __break(1u);
      }

      v33 = *(v31 + 16);
      v35 = *v33;
      v34 = v33[1];
      *(v35 + 8) = v34;
      *v34 = v35;
      *(v31 + 24) = v32 - 1;
      v36 = v33[16];
      if (v36 && atomic_fetch_add(v36, 0xFFFFFFFF) == 1)
      {
        v37 = v33;
        v38 = *(v36 + 8);
        if (v38)
        {
          v39 = *(v36 + 16);
          v40 = *(v36 + 8);
          if (v39 != v38)
          {
            do
            {
              v41 = *(v39 - 96);
              if (v41)
              {
                *(v39 - 88) = v41;
                operator delete(v41);
              }

              v39 -= 104;
            }

            while (v39 != v38);
            v40 = *(v36 + 8);
          }

          *(v36 + 16) = v38;
          operator delete(v40);
        }

        MEMORY[0x2743DA540](v36, 0x1020C40E72D6CFBLL);
        v33 = v37;
      }

      operator delete(v33);
      v13 = (*&this[7].__opaque[24] - *&this[7].__opaque[16]) >> 5;
    }

    if (v13 > v11)
    {
      operator new();
    }

    goto LABEL_59;
  }

LABEL_45:
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    v42 = *(v9 + 8);
    if (v42)
    {
      v43 = *(v9 + 16);
      v44 = *(v9 + 8);
      if (v43 != v42)
      {
        do
        {
          v45 = *(v43 - 96);
          if (v45)
          {
            *(v43 - 88) = v45;
            operator delete(v45);
          }

          v43 -= 104;
        }

        while (v43 != v42);
        v44 = *(v9 + 8);
      }

      *(v9 + 16) = v42;
      operator delete(v44);
    }

    MEMORY[0x2743DA540](v9, 0x1020C40E72D6CFBLL);
  }

  return pthread_mutex_unlock(this);
}

uint64_t webrtc::FrameEncodeMetadataWriter::FillMetadataAndTimingInfo(pthread_mutex_t *this, unint64_t a2, webrtc::EncodedImage *a3)
{
  pthread_mutex_lock(this);
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

  webrtc::FrameEncodeMetadataWriter::ExtractEncodeStartTimeAndFillMetadata(this, a2, a3);
  v9 = *&this[7].__opaque[16];
  if (a2 >= (*&this[7].__opaque[24] - v9) >> 5)
  {
    v10 = 0;
    v13 = *&this[7].__opaque[40];
    v14 = *(a3 + 2);
    if (v13 == -1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    v11 = *this[7].__opaque;
    if (v11)
    {
      v12 = *(v9 + 32 * a2);
      if (v12)
      {
        v10 = 2 * (*(a3 + 18) >= v12 / v11 * *&this[6].__opaque[24] / 0x64);
      }
    }

    v13 = *&this[7].__opaque[40];
    v14 = *(a3 + 2);
    if (v13 == -1)
    {
LABEL_17:
      v10 |= 1u;
      *&this[7].__opaque[40] = v14;
      if ((v8 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_16:
      *(a3 + 6) = v7;
      *(a3 + 7) = v6 / 1000000;
      goto LABEL_19;
    }
  }

  v15 = v14 - v13;
  if (!v15 || v15 >= *&this[6].__opaque[16])
  {
    goto LABEL_17;
  }

  if (v8)
  {
    goto LABEL_16;
  }

LABEL_18:
  v10 = -1;
LABEL_19:
  *(a3 + 40) = v10;

  return pthread_mutex_unlock(this);
}

void webrtc::FrameEncodeMetadataWriter::ExtractEncodeStartTimeAndFillMetadata(webrtc::FrameEncodeMetadataWriter *this, unint64_t a2, webrtc::EncodedImage *a3)
{
  v3 = *(this + 59);
  if (a2 >= (*(this + 60) - v3) >> 5)
  {
    return;
  }

  v6 = v3 + 32 * a2;
  if (!*(v6 + 24))
  {
LABEL_22:
    *(a3 + 32) = *(this + 99) == 1;
LABEL_23:
    v20 = *(this + 63) + 1;
    *(this + 63) = v20;
    if (v20 < 3 || !(v20 % 0x186A0))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_encode_metadata_writer.cc");
      }

      if (*(this + 63) == 2 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/frame_encode_metadata_writer.cc");
      }
    }

    return;
  }

  while (1)
  {
    v9 = *(a3 + 38);
    v10 = *(v6 + 16);
    v11 = *(v10 + 16);
    if (v9 - v11 != 0x80000000)
    {
      break;
    }

    if (v9 <= v11)
    {
      goto LABEL_31;
    }

LABEL_13:
    (*(**(this + 8) + 24))(*(this + 8), 1);
    v12 = *(v6 + 24);
    if (!v12)
    {
      goto LABEL_65;
    }

    v8 = *(v6 + 16);
    v14 = *v8;
    v13 = v8[1];
    *(v14 + 8) = v13;
    *v13 = v14;
    *(v6 + 24) = v12 - 1;
    v15 = v8[16];
    if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      v16 = v8;
      v17 = *(v15 + 8);
      if (v17)
      {
        v18 = *(v15 + 16);
        v7 = *(v15 + 8);
        if (v18 != v17)
        {
          do
          {
            v19 = *(v18 - 96);
            if (v19)
            {
              *(v18 - 88) = v19;
              operator delete(v19);
            }

            v18 -= 104;
          }

          while (v18 != v17);
          v7 = *(v15 + 8);
        }

        *(v15 + 16) = v17;
        operator delete(v7);
      }

      MEMORY[0x2743DA540](v15, 0x1020C40E72D6CFBLL);
      v8 = v16;
    }

    operator delete(v8);
    if (!*(v6 + 24))
    {
      goto LABEL_22;
    }
  }

  if (v9 != v11 && ((v9 - v11) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_31:
  *(a3 + 32) = *(this + 99) == 1;
  if (v9 != v11)
  {
    goto LABEL_23;
  }

  v35 = *(v10 + 40) / 1000;
  *(a3 + 1) = *(v10 + 32);
  *(a3 + 2) = v35;
  *(a3 + 7) = *(v10 + 48);
  if (*(a3 + 292) == *(v10 + 120))
  {
    if (*(a3 + 292))
    {
      *(a3 + 14) = *(v10 + 52);
      v36 = *(v10 + 68);
      v37 = *(v10 + 84);
      v38 = *(v10 + 100);
      *(a3 + 288) = *(v10 + 116);
      *(a3 + 16) = v37;
      *(a3 + 17) = v38;
      *(a3 + 15) = v36;
    }
  }

  else if (*(a3 + 292))
  {
    *(a3 + 292) = 0;
  }

  else
  {
    *(a3 + 14) = *(v10 + 52);
    v39 = *(v10 + 68);
    v40 = *(v10 + 84);
    v41 = *(v10 + 100);
    *(a3 + 288) = *(v10 + 116);
    *(a3 + 16) = v40;
    *(a3 + 17) = v41;
    *(a3 + 15) = v39;
    *(a3 + 292) = 1;
  }

  if (!*(v6 + 24))
  {
    goto LABEL_65;
  }

  v42 = *(v6 + 16);
  *(a3 + 314) = *(v42 + 124);
  v43 = *(v42 + 128);
  if (v43)
  {
    atomic_fetch_add_explicit(v43, 1u, memory_order_relaxed);
  }

  v44 = *(a3 + 38);
  *(a3 + 38) = v43;
  if (v44 && atomic_fetch_add(v44, 0xFFFFFFFF) == 1)
  {
    v45 = *(v44 + 8);
    if (v45)
    {
      v46 = *(v44 + 16);
      v47 = *(v44 + 8);
      if (v46 != v45)
      {
        do
        {
          v48 = *(v46 - 96);
          if (v48)
          {
            *(v46 - 88) = v48;
            operator delete(v48);
          }

          v46 -= 104;
        }

        while (v46 != v45);
        v47 = *(v44 + 8);
      }

      *(v44 + 16) = v45;
      operator delete(v47);
    }

    MEMORY[0x2743DA540](v44, 0x1020C40E72D6CFBLL);
  }

  v49 = *(v6 + 24);
  if (!v49)
  {
LABEL_65:
    __break(1u);
    return;
  }

  v50 = *(v6 + 16);
  v52 = *v50;
  v51 = v50[1];
  *(v52 + 8) = v51;
  *v51 = v52;
  *(v6 + 24) = v49 - 1;
  v53 = v50[16];
  if (v53 && atomic_fetch_add(v53, 0xFFFFFFFF) == 1)
  {
    v54 = v50;
    v55 = *(v53 + 8);
    if (v55)
    {
      v56 = *(v53 + 16);
      v57 = *(v53 + 8);
      if (v56 != v55)
      {
        do
        {
          v58 = *(v56 - 96);
          if (v58)
          {
            *(v56 - 88) = v58;
            operator delete(v58);
          }

          v56 -= 104;
        }

        while (v56 != v55);
        v57 = *(v53 + 8);
      }

      *(v53 + 16) = v55;
      operator delete(v57);
    }

    MEMORY[0x2743DA540](v53, 0x1020C40E72D6CFBLL);
    v50 = v54;
  }

  operator delete(v50);
}

void webrtc::FrameEncodeMetadataWriter::UpdateBitstream(webrtc::FrameEncodeMetadataWriter *this, const webrtc::CodecSpecificInfo *a2, webrtc::EncodedImage *a3)
{
  if (a2)
  {
    if (*a2 == 4)
    {
      v9 = v3;
      v10 = v4;
      if (*(a3 + 6) == 3)
      {
        v6 = *(a3 + 17);
        if (v6)
        {
          v6 = (*(*v6 + 40))(v6);
        }

        v7 = *(a3 + 18);
        if (!v7)
        {
          v6 = 0;
        }

        webrtc::SpsVuiRewriter::ParseOutgoingBitstreamAndRewrite(v6, v7, &v8);
        operator new();
      }
    }
  }
}

uint64_t webrtc::FrameEncodeMetadataWriter::Reset(pthread_mutex_t *this)
{
  pthread_mutex_lock(this);
  v2 = *&this[7].__opaque[16];
  v3 = *&this[7].__opaque[24];
  v16 = this;
  if (v2 != v3)
  {
    while (1)
    {
      if (v2[3])
      {
        v4 = v2[2];
        v5 = *(v2[1] + 8);
        v6 = *v4;
        *(v6 + 8) = v5;
        *v5 = v6;
        v2[3] = 0;
        if (v4 != v2 + 1)
        {
          break;
        }
      }

LABEL_3:
      v2 += 4;
      if (v2 == v3)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v8 = v4[1];
      v9 = v4[16];
      if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        v10 = *(v9 + 8);
        if (v10)
        {
          v11 = v4;
          v12 = *(v9 + 16);
          v13 = *(v9 + 8);
          if (v12 != v10)
          {
            do
            {
              v14 = *(v12 - 96);
              if (v14)
              {
                *(v12 - 88) = v14;
                operator delete(v14);
              }

              v12 -= 104;
            }

            while (v12 != v10);
            v13 = *(v9 + 8);
          }

          *(v9 + 16) = v10;
          operator delete(v13);
          MEMORY[0x2743DA540](v9, 0x1020C40E72D6CFBLL);
          v4 = v11;
          if (!v11)
          {
            __break(1u);
            break;
          }
        }

        else
        {
          v7 = v4;
          MEMORY[0x2743DA540](v9, 0x1020C40E72D6CFBLL);
          v4 = v7;
        }
      }

      operator delete(v4);
      v4 = v8;
      if (v8 == v2 + 1)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_20:
  *&v16[7].__opaque[48] = 0;
  v16[8].__sig = 0;
  *&v16[7].__opaque[40] = -1;

  return pthread_mutex_unlock(v16);
}

void *std::vector<webrtc::FrameEncodeMetadataWriter::TimingFramesLayerInfo>::__base_destruct_at_end[abi:sn200100](void *result, uint64_t a2)
{
  v14 = result;
  for (i = result[1]; i != a2; i -= 32)
  {
    if (*(i - 8))
    {
      result = *(i - 16);
      v4 = *(*(i - 24) + 8);
      v5 = *result;
      *(v5 + 8) = v4;
      *v4 = v5;
      *(i - 8) = 0;
      if (result != (i - 24))
      {
        do
        {
          v7 = result[1];
          v8 = result[16];
          if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
          {
            v9 = *(v8 + 8);
            if (v9)
            {
              v10 = result;
              v11 = *(v8 + 16);
              v12 = *(v8 + 8);
              if (v11 != v9)
              {
                do
                {
                  v13 = *(v11 - 96);
                  if (v13)
                  {
                    *(v11 - 88) = v13;
                    operator delete(v13);
                  }

                  v11 -= 104;
                }

                while (v11 != v9);
                v12 = *(v8 + 8);
              }

              *(v8 + 16) = v9;
              operator delete(v12);
              MEMORY[0x2743DA540](v8, 0x1020C40E72D6CFBLL);
              result = v10;
              if (!v10)
              {
                __break(1u);
                goto LABEL_20;
              }
            }

            else
            {
              v6 = result;
              MEMORY[0x2743DA540](v8, 0x1020C40E72D6CFBLL);
              result = v6;
            }
          }

          operator delete(result);
          result = v7;
        }

        while (v7 != (i - 24));
      }
    }
  }

LABEL_20:
  v14[1] = a2;
  return result;
}