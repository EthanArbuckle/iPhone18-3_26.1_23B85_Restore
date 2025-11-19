uint64_t dcsctp::StreamResetHandler::ValidateReqSeqNbr(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 128);
  if (v3 == a2)
  {
    *v6 = a2;
    *&v6[4] = *(a1 + 136);
    v6[8] = 0;
    v6[12] = 0;
    v6[16] = 0;
    v6[20] = 0;
    v4 = a3[1];
    if (v4 >= a3[2])
    {
      goto LABEL_10;
    }

    if (v4)
    {
LABEL_4:
      *v4 = &unk_28829A410;
      *(v4 + 21) = *&v6[13];
      *(v4 + 8) = *v6;
      result = 0;
      a3[1] = v4 + 32;
      return result;
    }

    goto LABEL_9;
  }

  if (v3 + 1 != a2)
  {
    *v6 = a2;
    *&v6[4] = 5;
    v6[8] = 0;
    v6[12] = 0;
    v6[16] = 0;
    v6[20] = 0;
    v4 = a3[1];
    if (v4 >= a3[2])
    {
      goto LABEL_10;
    }

    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    std::vector<dcsctp::ReconfigurationResponseParameter>::__emplace_back_slow_path<dcsctp::ReconfigurationResponseParameter>(a3);
  }

  return 1;
}

double dcsctp::StreamResetHandler::MakeStreamResetRequest@<D0>(dcsctp::StreamResetHandler *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 120) & 1) != 0 || ((*(**(*(this + 5) + 384) + 40))(*(*(this + 5) + 384)) & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 32) = 0;
    return result;
  }

  v5 = *(this + 5);
  v6 = *(v5 + 400);
  v7 = *(v5 + 480);
  v8 = v6 + v7 + 1;
  *v28 = v8;
  v9 = *(v5 + 560);
  v10 = *(v5 + 568);
  if (v10 == v9)
  {
    v9 = *(v5 + 568);
LABEL_14:
    std::vector<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>::emplace<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>(v5 + 560, v9, v28);
    goto LABEL_15;
  }

  v11 = (v10 - v9) >> 3;
  do
  {
    v12 = v11 >> 1;
    v13 = &v9[8 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 8;
    v11 += ~(v11 >> 1);
    if (v15 < v8)
    {
      v9 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == v9 || v8 < *v9)
  {
    goto LABEL_14;
  }

LABEL_15:
  v16 = v7 + v6;
  (*(**(v5 + 384) + 48))(v28);
  if (*(this + 120) == 1)
  {
    v17 = *(this + 12);
    if (v17)
    {
      *(this + 13) = v17;
      operator delete(v17);
    }
  }

  v18 = *&v28[16];
  *(this + 80) = 0;
  *(this + 84) = 0;
  *(this + 22) = v16;
  *(this + 6) = *v28;
  *(this + 14) = v18;
  *(this + 120) = 1;
  v19 = *(this + 8);
  v20 = (*(**(this + 2) + 56))(*(this + 2));
  v21 = 86400000000;
  if (v20 < 86400000000)
  {
    v21 = v20;
  }

  *(v19 + 144) = v21;
  dcsctp::Timer::Start(*(this + 8));
  dcsctp::StreamResetHandler::MakeReconfigChunk(this, v22, v23, v24, v25, v26, v27, v28);
  *a2 = &unk_28829A3E0;
  result = *&v28[8];
  *(a2 + 8) = *&v28[8];
  *(a2 + 24) = v29;
  *(a2 + 32) = 1;
  return result;
}

void dcsctp::StreamResetHandler::MakeReconfigChunk(dcsctp::StreamResetHandler *this@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  if ((*(this + 120) & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(this + 84))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v9 = *(this + 20);
    v10 = *(this + 22);
    v12 = *(this + 12);
    v11 = *(this + 13);
    v13 = v11 - v12;
    if (v11 != v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *(this + 18);
    *(this + 84) = 1;
    *(this + 20) = v9;
    *(this + 18) = v9 + 1;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v10 = *(this + 22);
    v15 = *(this + 12);
    v14 = *(this + 13);
    v13 = v14 - v15;
    if (v14 != v15)
    {
LABEL_4:
      if ((v13 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_17:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  v16 = &unk_2882973A8;
  v17 = v9;
  v18 = v9;
  v19 = v10;
  __p = 0;
  v21 = 0;
  v22 = 0;
  off_2882973B8(&v16, &v23, a2, a3, a4, a5, a6, a7);
  if (v24 != v23)
  {
    if (((v24 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v16 = &unk_2882973A8;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  *a8 = &unk_28829A3E0;
  a8[1] = 0;
  a8[2] = 0;
  a8[3] = 0;
}

uint64_t dcsctp::StreamResetHandler::OnReconfigTimerExpiry(uint64_t this)
{
  if (*(this + 120))
  {
    v1 = this;
    if (*(this + 84) == 1 && !(*(**(this + 16) + 64))(*(this + 16), "RECONFIG timeout", 16))
    {
      return 0;
    }

    else
    {
      v2 = *(v1 + 2);
      (*(*v2 + 88))(v19, v2);
      dcsctp::StreamResetHandler::MakeReconfigChunk(v1, v3, v4, v5, v6, v7, v8, &v16);
      v15 = dcsctp::SctpPacket::Builder::Add(v19, &v16, v9, v10, v11, v12, v13, v14);
      (*(*v2 + 96))(v2, v15);
      v16 = &unk_28829A3E0;
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      return (*(**(v1 + 2) + 56))(*(v1 + 2));
    }
  }

  else
  {
    __break(1u);
  }

  return this;
}

void std::vector<dcsctp::ReconfigurationResponseParameter>::__emplace_back_slow_path<dcsctp::ReconfigurationResponseParameter>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 5) + 1;
  if (!(v1 >> 59))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 4 > v1)
    {
      v1 = v2 >> 4;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v1)
    {
      if (!(v1 >> 59))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void dcsctp::StreamScheduler::Produce(dcsctp::StreamScheduler *this@<X0>, Timestamp a2@<0:X1>, uint64_t a3@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*(this + 40))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(this + 41) ^ 1;
  }

  v40 = 0;
  v7 = 0;
  do
  {
    v8 = *(this + 7);
    v9 = *(this + 6);
    if (v9 == v8)
    {
      *a3 = 0;
      *(a3 + 80) = 0;
      return;
    }

    if (v6)
    {
      v10 = *v9;
      *(this + 4) = *v9;
      v11 = v8 - (v9 + 1);
      if (v8 != (v9 + 1))
      {
        memmove(v9, v9 + 1, v8 - (v9 + 1));
        v10 = *(this + 4);
      }

      *(this + 7) = v9 + v11;
      *(v10 + 40) = 0;
    }

    v12 = *(this + 4);
    (*(**(v12 + 8) + 16))(&v41);
    v13 = v50;
    if (v50 == 1)
    {
      v14 = *(v12 + 32);
      if (*(*v12 + 40) == 1)
      {
        *(v12 + 32) = v14 + (__p[1] - __p[0]) * *(v12 + 24);
        v13 = v50;
        if (v50 != v7)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(v12 + 32) = v14 + 1.0;
        v13 = v50;
        if (v50 != v7)
        {
LABEL_19:
          v40 = v41;
          v53 = v42;
          v39 = *__p;
          v3 = v44;
          __p[1] = 0;
          v44 = 0;
          __p[0] = 0;
          v4 = v46;
          v37 = v47;
          v38 = v45;
          v52 = v49;
          v7 = 1;
          v51 = v48;
          if ((v13 & 1) == 0)
          {
            continue;
          }

          goto LABEL_20;
        }
      }
    }

    else if (v50 != v7)
    {
      goto LABEL_19;
    }

    if ((v13 & 1) == 0)
    {
      continue;
    }

LABEL_20:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  while ((v7 & 1) == 0);
  *(this + 41) = (v4 & 1) == 0;
  v15 = *(this + 4);
  *(this + 3) = *(v15 + 32);
  v16 = (*(**(v15 + 8) + 24))(*(v15 + 8));
  v17 = v16;
  if ((v6 & (v16 != 0)) != 1)
  {
    if (!(v6 & 1 | (v16 != 0)))
    {
      v30 = *(this + 4);
      v30[5] = 0;
      v31 = *v30;
      v33 = *(*v30 + 48);
      v32 = *(*v30 + 56);
      if (v33 != v32)
      {
        while (*v33 != v30)
        {
          if (++v33 == v32)
          {
            goto LABEL_58;
          }
        }

        if (v33 != v32)
        {
          for (i = v33 + 1; i != v32; ++i)
          {
            if (*i != v30)
            {
              *v33++ = *i;
            }
          }
        }
      }

      if (v32 < v33)
      {
        __break(1u);
      }

      if (v33 != v32)
      {
        *(v31 + 56) = v33;
      }
    }

    goto LABEL_58;
  }

  v18 = *(this + 4);
  v19 = *v18;
  v20 = *(*v18 + 24);
  *(v18 + 32) = v20;
  if (*(v19 + 40) == 1)
  {
    if (*(v19 + 16) < v17)
    {
      v17 = *(v19 + 16);
    }

    v21 = v20 + v17 * *(v18 + 24);
    *(v18 + 40) = v21;
    v23 = *(v19 + 48);
    v24 = *(v19 + 56);
    v22 = v19 + 48;
    v41 = v18;
    v25 = v24 - v23;
    if (v24 != v23)
    {
LABEL_28:
      v26 = v25 >> 3;
      while (1)
      {
        v27 = v26 >> 1;
        v28 = &v23[8 * (v26 >> 1)];
        v29 = *(*v28 + 40);
        if (v29 == v21)
        {
          if (*(*v28 + 16) >= *(v18 + 16))
          {
            goto LABEL_30;
          }
        }

        else if (v29 >= v21)
        {
          goto LABEL_30;
        }

        v23 = v28 + 8;
        v27 = v26 + ~v27;
LABEL_30:
        v26 = v27;
        if (!v27)
        {
          goto LABEL_43;
        }
      }
    }
  }

  else
  {
    v21 = v20 + 1.0;
    *(v18 + 40) = v20 + 1.0;
    v23 = *(v19 + 48);
    v24 = *(v19 + 56);
    v22 = v19 + 48;
    v41 = v18;
    v25 = v24 - v23;
    if (v24 != v23)
    {
      goto LABEL_28;
    }
  }

  v23 = v24;
LABEL_43:
  if (v24 == v23)
  {
    goto LABEL_48;
  }

  v34 = *(*v23 + 40);
  if (v21 == v34)
  {
    if (*(v18 + 16) >= *(*v23 + 16))
    {
      goto LABEL_58;
    }

LABEL_48:
    std::vector<dcsctp::StreamScheduler::Stream *>::emplace<dcsctp::StreamScheduler::Stream *>(v22, v23, &v41);
  }

  else if (v21 < v34)
  {
    goto LABEL_48;
  }

LABEL_58:
  *a3 = v40;
  *(a3 + 8) = v53;
  *(a3 + 24) = v39;
  *(a3 + 40) = v3;
  *(a3 + 48) = v38;
  *(a3 + 49) = v4;
  *(a3 + 50) = v37;
  *(a3 + 56) = v51;
  *(a3 + 72) = v52;
  *(a3 + 80) = 1;
}

void dcsctp::StreamScheduler::Stream::MaybeMakeActive(dcsctp::StreamScheduler::Stream *this)
{
  v2 = (*(**(this + 1) + 24))(*(this + 1));
  if (v2)
  {
    v3 = v2;
    v4 = *this;
    v5 = *(*this + 24);
    *(this + 4) = v5;
    if (*(v4 + 40) == 1)
    {
      if (v4[2] < v3)
      {
        v3 = v4[2];
      }

      v6 = v5 + v3 * *(this + 3);
      *(this + 5) = v6;
      v8 = v4[6];
      v9 = v4[7];
      v7 = (v4 + 6);
      v16 = this;
      v10 = v9 - v8;
      if (v9 != v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = v5 + 1.0;
      *(this + 5) = v5 + 1.0;
      v8 = v4[6];
      v9 = v4[7];
      v7 = (v4 + 6);
      v16 = this;
      v10 = v9 - v8;
      if (v9 != v8)
      {
LABEL_6:
        v11 = v10 >> 3;
        while (1)
        {
          v12 = v11 >> 1;
          v13 = &v8[8 * (v11 >> 1)];
          v14 = *(*v13 + 40);
          if (v14 == v6)
          {
            if (*(*v13 + 16) >= *(this + 8))
            {
              goto LABEL_8;
            }
          }

          else if (v14 >= v6)
          {
            goto LABEL_8;
          }

          v8 = v13 + 8;
          v12 = v11 + ~v12;
LABEL_8:
          v11 = v12;
          if (!v12)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v8 = v9;
LABEL_16:
    if (v9 != v8)
    {
      v15 = *(*v8 + 40);
      if (v6 == v15)
      {
        if (*(this + 8) >= *(*v8 + 16))
        {
          return;
        }
      }

      else if (v6 >= v15)
      {
        return;
      }
    }

    std::vector<dcsctp::StreamScheduler::Stream *>::emplace<dcsctp::StreamScheduler::Stream *>(v7, v8, &v16);
  }
}

void std::vector<dcsctp::StreamScheduler::Stream *>::emplace<dcsctp::StreamScheduler::Stream *>(uint64_t a1, char *__src, uint64_t *a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v5 < v7)
  {
    if (__src != v5)
    {
      v8 = *a3;
      v9 = __src + 8;
      if (v5 < 8)
      {
        *(a1 + 8) = v5;
        if (v5 == v9)
        {
LABEL_28:
          *__src = v8;
          return;
        }
      }

      else
      {
        *v5 = *(v5 - 1);
        *(a1 + 8) = v5 + 8;
        if (v5 == v9)
        {
          goto LABEL_28;
        }
      }

      memmove(__src + 8, __src, v5 - v9);
      goto LABEL_28;
    }

    if (v6)
    {
      *v5 = *a3;
      *(a1 + 8) = v5 + 8;
      return;
    }

    goto LABEL_33;
  }

  v10 = ((v5 - v6) >> 3) + 1;
  if (v10 >> 61)
  {
    goto LABEL_34;
  }

  v11 = v7 - v6;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    goto LABEL_35;
  }

  v13 = __src - v6;
  v14 = (__src - v6) >> 3;
  v15 = (8 * v14);
  if (!v14)
  {
    if (v13 < 1)
    {
      v20 = v13 >> 2;
      if (v6 == __src)
      {
        v20 = 1;
      }

      if (!(v20 >> 61))
      {
        operator new();
      }

LABEL_35:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v15 -= ((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
  }

  if (!v15)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v15 = *a3;
  v16 = *(a1 + 8) - __src;
  memcpy(v15 + 8, __src, v16);
  *(a1 + 8) = __src;
  v17 = &__src[-*a1];
  v18 = v15 - v17;
  memcpy((v15 - v17), *a1, v17);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = &v15[v16 + 8];
  *(a1 + 16) = 0;
  if (v19)
  {

    operator delete(v19);
  }
}

BOOL webrtc::StreamSynchronization::ComputeRelativeDelay(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 80);
  if (*(a1 + 68))
  {
    v4 = *(a1 + 64);
    v5 = v3 >= v4;
    v6 = v3 - v4;
    v7 = v6 != 0 && v5;
    if (v6 != 0x80000000)
    {
      v7 = v6 >= 0;
    }

    if (!v7)
    {
      v6 |= 0xFFFFFFFF00000000;
    }

    v8 = v6 + *(a1 + 56);
  }

  else
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 56) = v8;
  *(a1 + 64) = v3;
  *(a1 + 68) = 1;
  v9 = *(a1 + 40) + v8 * *(a1 + 32) + 0.5;
  v10 = (v9 < 0.0) | (2 * (v9 > 1.84467441e19));
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_36;
    }

    v11 = -1;
    if (*(a2 + 48) != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v10)
    {
      return 0;
    }

    v11 = v9;
    if (!v9 || *(a2 + 48) != 1)
    {
      return 0;
    }
  }

  v12 = *(a2 + 80);
  if (*(a2 + 68))
  {
    v13 = *(a2 + 64);
    v5 = v12 >= v13;
    v14 = v12 - v13;
    v15 = v14 != 0 && v5;
    if (v14 != 0x80000000)
    {
      v15 = v14 >= 0;
    }

    if (!v15)
    {
      v14 |= 0xFFFFFFFF00000000;
    }

    v16 = v14 + *(a2 + 56);
  }

  else
  {
    v16 = *(a2 + 80);
  }

  *(a2 + 56) = v16;
  *(a2 + 64) = v12;
  *(a2 + 68) = 1;
  v17 = *(a2 + 40) + v16 * *(a2 + 32) + 0.5;
  v18 = (v17 < 0.0) | (2 * (v17 > 1.84467441e19));
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = -1;
      goto LABEL_35;
    }

LABEL_36:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  if (v18)
  {
    return 0;
  }

  v19 = v17;
  if (!v17)
  {
    return 0;
  }

LABEL_35:
  v21 = *(a2 + 72) + (v11 / 4294967.3 + 0.5) + 1000 * (HIDWORD(v11) - HIDWORD(v19)) - (*(a1 + 72) + (v19 / 4294967.3 + 0.5));
  *a3 = v21;
  return (v21 + 10000) < 0x4E21;
}

BOOL webrtc::StreamSynchronization::ComputeDelays(webrtc::StreamSynchronization *this, int a2, int a3, int *a4, int *a5)
{
  v10 = *a5;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/stream_synchronization.cc");
  }

  v18 = 3 * *(this + 7);
  v19 = a2 - a3 + v10;
  v21 = v19 + v18;
  v20 = (v19 + v18 < 0) ^ __OFADD__(v19, v18);
  v22 = v19 + v18 + 3;
  if (!v20)
  {
    v22 = v21;
  }

  v23 = v22 >> 2;
  *(this + 7) = v23;
  if (v23 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = -v23;
  }

  if (v24 >= 0x1E)
  {
    v25 = v21 / 8;
    if (v21 / 8 >= 80)
    {
      v25 = 80;
    }

    if (v25 <= -80)
    {
      v26 = -80;
    }

    else
    {
      v26 = v25;
    }

    *(this + 7) = 0;
    v27 = *(this + 6);
    if (v21 < 8)
    {
      v29 = *(this + 2);
      if (v29 > v27)
      {
        goto LABEL_18;
      }

      v28 = *(this + 4);
    }

    else
    {
      v28 = *(this + 4);
      if (v28 <= v27)
      {
        v29 = *(this + 2);
LABEL_18:
        v30 = v29 + v26;
        *(this + 2) = v30;
        *(this + 4) = v27;
        v31 = v27;
        goto LABEL_29;
      }
    }

    v32 = v28 - v26;
    *(this + 2) = v27;
    if (v32 <= v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = v32;
    }

    *(this + 4) = v31;
    if (v32 > v27)
    {
      v33 = v27 + 10000;
      if (v27 + 10000 >= v31)
      {
        v34 = v31;
      }

      else
      {
        v34 = v27 + 10000;
      }

      v30 = v27;
LABEL_35:
      v35 = *(this + 3);
LABEL_36:
      if (v35 <= v30)
      {
        v36 = v30;
      }

      else
      {
        v36 = v35;
      }

      if (v33 >= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v33;
      }

      *(this + 5) = v34;
      *(this + 3) = v37;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        v47 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/stream_synchronization.cc";
        v48 = 1320;
        v49 = &v46;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/stream_synchronization.cc");
      }

      *a5 = v34;
      *a4 = v37;
      return v24 > 0x1D;
    }

    v30 = v27;
LABEL_29:
    if (*(this + 5) > v31)
    {
      v31 = *(this + 5);
    }

    v33 = v27 + 10000;
    if (v27 + 10000 >= v31)
    {
      v34 = v31;
    }

    else
    {
      v34 = v27 + 10000;
    }

    v35 = v30;
    if (v30 > v27)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  return v24 > 0x1D;
}

webrtc::SimpleStringBuilder *webrtc::SimpleStringBuilder::AppendFormat(webrtc::SimpleStringBuilder *this, const char *__format, ...)
{
  va_start(va, __format);
  v3 = vsnprintf((*this + *(this + 2)), *(this + 1) - *(this + 2), __format, va);
  if ((v3 & 0x80000000) != 0)
  {
    *(*this + *(this + 2)) = 0;
    return this;
  }

  else
  {
    v4 = *(this + 2);
    v5 = *(this + 1) + ~v4;
    if (v5 > v3)
    {
      LODWORD(v5) = v3;
    }

    *(this + 2) = v4 + v5;
    return this;
  }
}

void webrtc::StringBuilder::AppendFormat(std::string *this, const char *__format, ...)
{
  va_start(va, __format);
  v4 = vsnprintf(0, 0, __format, va);
  if (v4 < 1)
  {
    return;
  }

  v5 = v4;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v7 = v4;
    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    if (22 - size >= v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  size = this->__r_.__value_.__l.__size_;
  v7 = v4;
  v13 = size + v4;
  if (size >= v13)
  {
    v16 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = v13;
    *(v16 + v13) = 0;
    v12 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    if (v12 < size)
    {
LABEL_21:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v14 = this->__r_.__value_.__r.__words[2];
  v8 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = HIBYTE(v14);
  if (v8 - size < v4)
  {
LABEL_4:
    std::string::__grow_by(this, v8, v7 + size - v8, size, size, 0, 0);
    this->__r_.__value_.__l.__size_ = size;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
  }

LABEL_5:
  v10 = this;
  if ((v9 & 0x80) == 0)
  {
    bzero(this + size, v7);
    v11 = v7 + size;
    if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v10 = this->__r_.__value_.__r.__words[0];
  bzero((this->__r_.__value_.__r.__words[0] + size), v7);
  v11 = v7 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_13:
    this->__r_.__value_.__l.__size_ = v11;
    v10->__r_.__value_.__s.__data_[v11] = 0;
    v12 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_7:
  *(&this->__r_.__value_.__s + 23) = v11 & 0x7F;
  v10->__r_.__value_.__s.__data_[v11] = 0;
  v12 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (this->__r_.__value_.__l.__size_ < size)
  {
    goto LABEL_21;
  }

LABEL_15:
  v15 = this;
  if ((v12 & 0x80000000) != 0)
  {
    v15 = this->__r_.__value_.__r.__words[0];
  }

  vsnprintf(v15 + size, v5 + 1, __format, va);
}

void webrtc::hex_encode(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a3;
  v4 = 2 * a2;
  if ((2 * a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a3[23] = v4;
  if (v4)
  {
    bzero(a3, v4);
    v3[v4] = 0;
    if (v3[23] >= 0)
    {
      a3 = v3;
    }

    else
    {
      a3 = *v3;
    }

    if (!v5)
    {
      return;
    }

LABEL_13:
    v7 = a3 + 1;
    do
    {
      v8 = *a1++;
      v7 += 2;
      --v5;
    }

    while (v5);
    return;
  }

  *a3 = 0;
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  if (a2)
  {
    goto LABEL_13;
  }
}

void webrtc::hex_encode_with_delimiter(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v4 = a4;
  if (a3)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 2 * a2;
  }

  else
  {
    v6 = 3 * a2 - 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v8 = a2;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a4[23] = v6;
  if (v6)
  {
    bzero(a4, v6);
    v4[v6] = 0;
    if (v4[23] >= 0)
    {
      a4 = v4;
    }

    else
    {
      a4 = *v4;
    }

    if (!v8)
    {
      return;
    }

    goto LABEL_19;
  }

  *a4 = 0;
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  if (a2)
  {
LABEL_19:
    if (a3)
    {
      v10 = 0;
      v11 = 1;
      v12 = v8;
      do
      {
        v13 = *a1++;
        v14 = &a4[v10];
        v15 = v10 + 2;
        if (v11 < v8)
        {
          a4[v15] = a3;
          v15 = v10 + 3;
        }

        ++v11;
        v10 = v15;
        --v12;
      }

      while (v12);
    }

    else
    {
      v16 = a4 + 1;
      do
      {
        v17 = *a1++;
        v16 += 2;
        --v8;
      }

      while (v8);
    }
  }
}

uint64_t webrtc::hex_decode_with_delimiter(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if (!a2)
  {
    return 0;
  }

  if (a5)
  {
    if (a2 >= (a4 + 1) / 3 && a4 != 0)
    {
      v13 = 0;
      v14 = 0;
      while (1)
      {
        if (a4 - v13 < 2)
        {
          return 0;
        }

        v15 = *(a3 + v13);
        v16 = v15 - 48;
        if ((v15 - 48) >= 0xA)
        {
          if ((v15 - 65) > 5)
          {
            if ((v15 - 97) > 5)
            {
              return 0;
            }

            v16 = v15 - 87;
          }

          else
          {
            v16 = v15 - 55;
          }
        }

        if (a4 <= v13 + 1)
        {
          goto LABEL_44;
        }

        v17 = *(a3 + v13 + 1);
        v18 = v17 - 48;
        if ((v17 - 48) >= 0xA)
        {
          if ((v17 - 65) > 5)
          {
            if ((v17 - 97) > 5)
            {
              return 0;
            }

            *(result + v14) = (v17 - 87) | (16 * v16);
            v19 = v13 + 2;
            if (a4 - (v13 + 2) < 2)
            {
              goto LABEL_25;
            }

            goto LABEL_37;
          }

          v18 = v17 - 55;
        }

        *(result + v14) = v18 | (16 * v16);
        v19 = v13 + 2;
        if (a4 - (v13 + 2) < 2)
        {
          goto LABEL_25;
        }

LABEL_37:
        if (a4 <= v19)
        {
          goto LABEL_44;
        }

        if (*(a3 + v19) != a5)
        {
          return 0;
        }

        v19 = v13 + 3;
LABEL_25:
        ++v14;
        v13 = v19;
        if (v19 >= a4)
        {
          return v14;
        }
      }
    }

    return 0;
  }

  v14 = 0;
  if (a4 && a2 >= a4 >> 1)
  {
    v6 = 0;
    for (i = 0; a4 >> 1 != i; ++i)
    {
      v10 = *(a3 + v6);
      v11 = v10 - 48;
      if ((v10 - 48) >= 0xA)
      {
        if ((v10 - 65) >= 6)
        {
          if ((v10 - 97) > 5)
          {
            return 0;
          }

          v11 = v10 - 87;
        }

        else
        {
          v11 = v10 - 55;
        }
      }

      if (a4 <= v6 + 1)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v12 = *(a3 + v6 + 1);
      v8 = v12 - 48;
      if ((v12 - 48) >= 0xA)
      {
        if ((v12 - 65) < 6)
        {
          v8 = v12 - 55;
        }

        else
        {
          if ((v12 - 97) > 5)
          {
            return 0;
          }

          v8 = v12 - 87;
        }
      }

      v9 = v8 | (16 * v11);
      v14 = i + 1;
      *(result + i) = v9;
      v6 += 2;
      if (v6 >= a4)
      {
        return v14;
      }
    }

    return 0;
  }

  return v14;
}

unint64_t webrtc::tokenize(uint64_t a1, unint64_t a2, unsigned __int8 a3, void ***a4)
{
  v8 = *a4;
  v9 = a4[1];
  while (v9 != v8)
  {
    v10 = *(v9 - 1);
    v9 -= 3;
    if (v10 < 0)
    {
      operator delete(*v9);
    }
  }

  a4[1] = v8;
  if (a2)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      while (*(a1 + v11) != a3)
      {
        if (++v11 == a2)
        {
          goto LABEL_27;
        }
      }

      if (v11 != v12)
      {
        if (a2 < v12)
        {
          goto LABEL_42;
        }

        v13 = (a1 + v12);
        if (a2 - v12 >= v11 - v12)
        {
          v14 = v11 - v12;
        }

        else
        {
          v14 = a2 - v12;
        }

        if (v8 >= a4[2])
        {
          std::vector<std::string>::__emplace_back_slow_path<std::string_view &>(a4);
        }

        if (!v8)
        {
          goto LABEL_41;
        }

        if (v14 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_43;
        }

        if (v14 > 0x16)
        {
          operator new();
        }

        *(v8 + 23) = v14;
        v15 = (v8 + v14);
        if (v8 <= v13 && v15 > v13)
        {
          goto LABEL_41;
        }

        if (v14)
        {
          memmove(v8, v13, v14);
        }

        *v15 = 0;
        v8 += 3;
        a4[1] = v8;
      }

      v12 = ++v11;
    }

    while (v11 != a2);
LABEL_27:
    v16 = a2 >= v12;
    v17 = a2 - v12;
    if (v17)
    {
      if (!v16)
      {
LABEL_42:
        abort();
      }

      v18 = (a1 + v12);
      if (v8 >= a4[2])
      {
        std::vector<std::string>::__emplace_back_slow_path<std::string_view &>(a4);
      }

      if (!v8)
      {
        goto LABEL_41;
      }

      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_43:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v17 > 0x16)
      {
        operator new();
      }

      *(v8 + 23) = v17;
      if (v8 <= v18 && (v8 + v17) > v18)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      memmove(v8, v18, v17);
      *(v8 + v17) = 0;
      v8 += 3;
      a4[1] = v8;
    }
  }

  return 0xAAAAAAAAAAAAAAABLL * (v8 - *a4);
}

uint64_t webrtc::tokenize_first(unsigned __int8 *a1, size_t __n, int __c, uint64_t a4, uint64_t a5)
{
  if (!__n)
  {
    return 0;
  }

  v7 = __c;
  v10 = memchr(a1, __c, __n);
  result = 0;
  if (v10)
  {
    v12 = v10 - a1;
    if (v10 - a1 != -1)
    {
      v13 = a1 - v10;
      v14 = v10 - a1;
      do
      {
        v15 = v14;
        v16 = v13;
        if (++v14 >= __n)
        {
          break;
        }

        --v13;
      }

      while (a1[v15 + 1] == v7);
      if (__n >= v12)
      {
        v17 = v10 - a1;
      }

      else
      {
        v17 = __n;
      }

      if (v17 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v17 > 0x16)
        {
          operator new();
        }

        HIBYTE(v24) = v17;
        v18 = &v23 + v17;
        if (&v23 <= a1 && v18 > a1)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v12)
        {
          memmove(&v23, a1, v17);
        }

        *v18 = 0;
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = v23;
        *(a4 + 16) = v24;
        if (__n <= v15)
        {
          abort();
        }

        v20 = ~v15 + __n;
        if (v20 <= 0x7FFFFFFFFFFFFFF7)
        {
          v21 = &a1[v15 + 1];
          if (v20 > 0x16)
          {
            operator new();
          }

          HIBYTE(v24) = ~v15 + __n;
          v22 = &v23 + __n - 1;
          if (&v23 > v21 || &v22[-v15] <= v21)
          {
            if (__n - 1 != v15)
            {
              memmove(&v23, v21, ~v15 + __n);
            }

            v22[v16] = 0;
            if (*(a5 + 23) < 0)
            {
              operator delete(*a5);
            }

            *a5 = v23;
            *(a5 + 16) = v24;
            return 1;
          }

          goto LABEL_36;
        }
      }

LABEL_37:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

void *webrtc::split@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = a3;
    do
    {
      while (*(a1 + v7) != v9)
      {
        if (++v7 == a2)
        {
          goto LABEL_9;
        }
      }

      v10 = a2 - v8;
      if (a2 < v8)
      {
        goto LABEL_10;
      }

      v11 = v7 - v8;
      v12 = a1 + v8;
      if (v10 >= v11)
      {
        v10 = v11;
      }

      *&v14 = v12;
      *(&v14 + 1) = v10;
      std::vector<std::string_view>::push_back[abi:sn200100](a4, &v14);
      v8 = ++v7;
    }

    while (v7 != a2);
LABEL_9:
    if (a2 < v8)
    {
LABEL_10:
      abort();
    }
  }

  else
  {
    v8 = 0;
  }

  *&v14 = a1 + v8;
  *(&v14 + 1) = a2 - v8;
  return std::vector<std::string_view>::push_back[abi:sn200100](a4, &v14);
}

unint64_t webrtc::StringFormat@<X0>(webrtc *this@<X0>, char *a2@<X8>, ...)
{
  va_start(va, a2);
  v8 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x200uLL, this, va);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = result;
  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  if (a2 <= __str && &a2[result] > __str)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v5] = 0;
  return result;
}

size_t webrtc::string_to_number_internal::ParseFloatingPoint<float>(void **__src, size_t __len)
{
  v2 = __len;
  if (__len)
  {
    if (*__src)
    {
      if (__len < 0x7FFFFFFFFFFFFFF8)
      {
        if (__len > 0x16)
        {
          operator new();
        }

        v12 = __len;
        if (__dst > __src || (__dst + __len) <= __src)
        {
          memmove(__dst, __src, __len);
          *(__dst + v2) = 0;
          v10 = 0;
          *__error() = 0;
          if ((v12 & 0x80u) == 0)
          {
            v4 = __dst;
          }

          else
          {
            v4 = __dst[0];
          }

          v5 = strtof(v4, &v10);
          v6 = v12;
          if ((v12 & 0x80u) == 0)
          {
            v7 = __dst;
          }

          else
          {
            v7 = __dst[0];
          }

          if ((v12 & 0x80u) != 0)
          {
            v6 = __dst[1];
          }

          if (v10 == v7 + v6 && (v8 = v5, !*__error()))
          {
            v2 = 0x100000000;
            if ((v12 & 0x80000000) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v2 = 0;
            v8 = 0.0;
            if ((v12 & 0x80000000) == 0)
            {
LABEL_23:
              v3 = LODWORD(v8);
              return v3 | v2;
            }
          }

          operator delete(__dst[0]);
          goto LABEL_23;
        }

        __break(1u);
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

unint64_t webrtc::string_to_number_internal::ParseSigned(void **__src, size_t __len, unint64_t a3)
{
  if (!__len)
  {
    v7 = 0;
    return v7 | (v3 << 8);
  }

  v4 = *__src;
  if (v4 != 45 && (*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x400) == 0)
  {
    goto LABEL_25;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_30:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v3 = a3;
  if (__len > 0x16)
  {
    operator new();
  }

  v18 = __len;
  if (__dst <= __src && (__dst + __len) > __src)
  {
    __break(1u);
    goto LABEL_30;
  }

  memmove(__dst, __src, __len);
  *(__dst + __len) = 0;
  v16 = 0;
  *__error() = 0;
  if ((v18 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  v9 = strtoll(v8, &v16, v3);
  v10 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if ((v18 & 0x80u) != 0)
  {
    v10 = __dst[1];
  }

  if (v16 != v11 + v10 || (v12 = v9, *__error()))
  {
    v7 = 0;
    v13 = 1;
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v14 = v7;
    operator delete(__dst[0]);
    v7 = v14;
    if (!v13)
    {
      return v7 | (v3 << 8);
    }

    goto LABEL_25;
  }

  v13 = 0;
  v7 = v12;
  v3 = v12 >> 8;
  if (v18 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v13)
  {
LABEL_25:
    v7 = 0;
  }

  return v7 | (v3 << 8);
}

unint64_t webrtc::string_to_number_internal::ParseUnsigned(void **__src, size_t __len, unint64_t a3)
{
  if (!__len)
  {
    v8 = 0;
    return v8 | (v3 << 8);
  }

  v5 = *__src;
  if (v5 != 45 && (*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x400) == 0)
  {
    goto LABEL_34;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_38:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v3 = a3;
  if (__len > 0x16)
  {
    operator new();
  }

  v24 = __len;
  if (__dst <= __src && (__dst + __len) > __src)
  {
    __break(1u);
    goto LABEL_38;
  }

  memmove(__dst, __src, __len);
  *(__dst + __len) = 0;
  v9 = *__src;
  v22 = 0;
  *__error() = 0;
  if ((v24 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  v11 = strtoull(v10, &v22, v3);
  v12 = v24;
  if ((v24 & 0x80u) == 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if ((v24 & 0x80u) != 0)
  {
    v12 = __dst[1];
  }

  if (v22 == v13 + v12)
  {
    v15 = v11;
    v16 = __error();
    v8 = 0;
    v17 = *v16;
    if (v15)
    {
      v18 = v9 == 45;
    }

    else
    {
      v18 = 0;
    }

    v19 = !v18;
    v14 = 1;
    if (!v17 && v19)
    {
      v14 = 0;
      v3 = v15 >> 8;
      v8 = v15;
    }
  }

  else
  {
    v8 = 0;
    v14 = 1;
  }

  if (v24 < 0)
  {
    v20 = v8;
    operator delete(__dst[0]);
    v8 = v20;
    if (!v14)
    {
      return v8 | (v3 << 8);
    }

    goto LABEL_34;
  }

  if (v14)
  {
LABEL_34:
    v8 = 0;
  }

  return v8 | (v3 << 8);
}

uint64_t webrtc::struct_parser_impl::TypedParser<BOOL>::Parse(void **__src, size_t __len, char *a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_34:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v15 = __len;
  v4 = (v14 + __len);
  if (v14 <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (__len)
  {
    memmove(v14, __src, __len);
  }

  *v4 = 0;
  v5 = v15;
  v6 = v14;
  if ((v15 & 0x80u) != 0)
  {
    v6 = v14[0];
    v5 = v14[1];
  }

  if (v5 == 1)
  {
    v10 = *v6;
    if (v10 != 48)
    {
      if (v10 == 49)
      {
LABEL_24:
        v11 = 1;
        goto LABEL_31;
      }

LABEL_25:
      v11 = 0;
      v12 = 0;
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (v5 != 5)
    {
      if (v5 == 4 && *v6 == *"true")
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v7 = *v6;
    v8 = *(v6 + 4);
    if (v7 != *"false" || v8 != str_14[4])
    {
      goto LABEL_25;
    }
  }

  v11 = 0;
LABEL_31:
  v12 = 1;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(v14[0]);
  }

LABEL_27:
  if (v12)
  {
    *a3 = v11;
  }

  return v12;
}

void webrtc::struct_parser_impl::TypedParser<BOOL>::Encode(_BYTE *a1, std::string *a2)
{
  if (*a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v18 = v4;
  v5 = (__dst | v4);
  v6 = v3 >= __dst && v5 > v3;
  if (v6 || ((memcpy(__dst, v3, v4), *v5 = 0, (v18 & 0x80u) == 0) ? (v7 = __dst) : (v7 = __dst[0]), (v18 & 0x80u) == 0 ? (v8 = v18) : (v8 = __dst[1]), !v7 ? (v9 = v8 == 0) : (v9 = 1), !v9))
  {
LABEL_39:
    __break(1u);
    return;
  }

  v10 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 22;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (22 - v10 < v8)
    {
      goto LABEL_24;
    }

LABEL_27:
    if (v8)
    {
      v13 = a2;
      if ((v10 & 0x80000000) != 0)
      {
        v13 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v14 = v13 + size;
      if (v13 + size <= v7 && &v14[v8] > v7)
      {
        goto LABEL_39;
      }

      v15 = v8;
      memmove(v14, v7, v8);
      v16 = size + v15;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v16;
        v13->__r_.__value_.__s.__data_[v16] = 0;
        if ((v18 & 0x80000000) == 0)
        {
          return;
        }

LABEL_38:
        operator delete(__dst[0]);
        return;
      }

      *(&a2->__r_.__value_.__s + 23) = v16 & 0x7F;
      v13->__r_.__value_.__s.__data_[v16] = 0;
    }

    if ((v18 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_38;
  }

  size = a2->__r_.__value_.__l.__size_;
  v11 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v11 - size >= v8)
  {
    goto LABEL_27;
  }

LABEL_24:
  std::string::__grow_by_and_replace(a2, v11, v8 - v11 + size, size, size, 0, v8, v7);
  if (v18 < 0)
  {
    goto LABEL_38;
  }
}

uint64_t webrtc::struct_parser_impl::TypedParser<double>::Parse(void **__src, size_t __len, uint64_t *a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v12 = __len;
  v4 = (__p + __len);
  if (__p <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v4 = 0;
  if ((v12 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = __p[1];
  }

  v8 = webrtc::ParseTypedParameter<double>(v5, v6);
  v9 = v7;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if ((v9 & 1) == 0)
    {
      return v9 & 1;
    }
  }

  else if ((v7 & 1) == 0)
  {
    return v9 & 1;
  }

  *a3 = v8;
  return v9 & 1;
}

void webrtc::struct_parser_impl::TypedParser<double>::Encode(double *a1, std::string *a2)
{
  v3 = *a1;
  v17 = 0;
  v18 = 0x1000000000000000;
  __p = 0;
  v4 = absl::numbers_internal::SixDigitsToBuffer(&__p, v3, a2);
  if ((SHIBYTE(v18) & 0x8000000000000000) != 0)
  {
    if (v17 < v4)
    {
      goto LABEL_35;
    }

    p_p = __p;
    v17 = v4;
  }

  else
  {
    if (v4 > SHIBYTE(v18))
    {
      goto LABEL_35;
    }

    HIBYTE(v18) = v4;
    p_p = &__p;
  }

  p_p[v4] = 0;
  if (v18 >= 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if (v18 >= 0)
  {
    v7 = HIBYTE(v18);
  }

  else
  {
    v7 = v17;
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v9 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 22;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (22 - v9 < v7)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (v7)
    {
      v12 = a2;
      if ((v9 & 0x80000000) != 0)
      {
        v12 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v13 = v12 + size;
      if (v12 + size <= v6 && &v13[v7] > v6)
      {
        goto LABEL_34;
      }

      v14 = v7;
      memmove(v13, v6, v7);
      v15 = size + v14;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v15;
        v12->__r_.__value_.__s.__data_[v15] = 0;
        if ((SHIBYTE(v18) & 0x80000000) == 0)
        {
          return;
        }

LABEL_33:
        operator delete(__p);
        return;
      }

      *(&a2->__r_.__value_.__s + 23) = v15 & 0x7F;
      v12->__r_.__value_.__s.__data_[v15] = 0;
    }

    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

  size = a2->__r_.__value_.__l.__size_;
  v10 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 - size >= v7)
  {
    goto LABEL_22;
  }

LABEL_19:
  std::string::__grow_by_and_replace(a2, v10, v7 - v10 + size, size, size, 0, v7, v6);
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_33;
  }
}

unint64_t webrtc::struct_parser_impl::TypedParser<int>::Parse(void **__src, size_t __len, _DWORD *a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_22:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v10 = __len;
  v4 = (__p + __len);
  if (__p <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v4 = 0;
  if ((v10 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = webrtc::ParseTypedParameter<int>(v5, v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if ((v7 & 0x100000000) == 0)
    {
      return HIDWORD(v7) & 1;
    }

    goto LABEL_17;
  }

  if ((v7 & 0x100000000) != 0)
  {
LABEL_17:
    *a3 = v7;
  }

  return HIDWORD(v7) & 1;
}

void webrtc::struct_parser_impl::TypedParser<int>::Encode(unsigned int *a1, std::string *a2, char *a3)
{
  v4 = *a1;
  v19 = 0;
  v20 = 0x1600000000000000;
  __p = 0;
  v5 = absl::numbers_internal::FastIntToBuffer(v4, &__p, a3);
  v6 = v5 - &__p;
  if ((SHIBYTE(v20) & 0x8000000000000000) != 0)
  {
    if (v19 < v6)
    {
      goto LABEL_35;
    }

    p_p = __p;
    v19 = v5 - &__p;
  }

  else
  {
    if (v6 > SHIBYTE(v20))
    {
      goto LABEL_35;
    }

    HIBYTE(v20) = v5 - &__p;
    p_p = &__p;
  }

  p_p[v6] = 0;
  if (v20 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if (v20 >= 0)
  {
    v9 = HIBYTE(v20);
  }

  else
  {
    v9 = v19;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 22;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (22 - v11 < v9)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (v9)
    {
      v14 = a2;
      if ((v11 & 0x80000000) != 0)
      {
        v14 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v15 = v14 + size;
      if (v14 + size <= v8 && &v15[v9] > v8)
      {
        goto LABEL_34;
      }

      v16 = v9;
      memmove(v15, v8, v9);
      v17 = size + v16;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v17;
        v14->__r_.__value_.__s.__data_[v17] = 0;
        if ((SHIBYTE(v20) & 0x80000000) == 0)
        {
          return;
        }

LABEL_33:
        operator delete(__p);
        return;
      }

      *(&a2->__r_.__value_.__s + 23) = v17 & 0x7F;
      v14->__r_.__value_.__s.__data_[v17] = 0;
    }

    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

  size = a2->__r_.__value_.__l.__size_;
  v12 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 - size >= v9)
  {
    goto LABEL_22;
  }

LABEL_19:
  std::string::__grow_by_and_replace(a2, v12, v9 - v12 + size, size, size, 0, v9, v8);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_33;
  }
}

unint64_t webrtc::struct_parser_impl::TypedParser<unsigned int>::Parse(void **__src, size_t __len, _DWORD *a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_22:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v10 = __len;
  v4 = (__p + __len);
  if (__p <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v4 = 0;
  if ((v10 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = webrtc::ParseTypedParameter<unsigned int>(v5, v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if ((v7 & 0x100000000) == 0)
    {
      return HIDWORD(v7) & 1;
    }

    goto LABEL_17;
  }

  if ((v7 & 0x100000000) != 0)
  {
LABEL_17:
    *a3 = v7;
  }

  return HIDWORD(v7) & 1;
}

void webrtc::struct_parser_impl::TypedParser<unsigned int>::Encode(unsigned int *a1, std::string *a2, char *a3)
{
  v4 = *a1;
  v19 = 0;
  v20 = 0x1600000000000000;
  __p = 0;
  v5 = absl::numbers_internal::FastIntToBuffer(v4, &__p, a3);
  v6 = v5 - &__p;
  if ((SHIBYTE(v20) & 0x8000000000000000) != 0)
  {
    if (v19 < v6)
    {
      goto LABEL_35;
    }

    p_p = __p;
    v19 = v5 - &__p;
  }

  else
  {
    if (v6 > SHIBYTE(v20))
    {
      goto LABEL_35;
    }

    HIBYTE(v20) = v5 - &__p;
    p_p = &__p;
  }

  p_p[v6] = 0;
  if (v20 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if (v20 >= 0)
  {
    v9 = HIBYTE(v20);
  }

  else
  {
    v9 = v19;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 22;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (22 - v11 < v9)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (v9)
    {
      v14 = a2;
      if ((v11 & 0x80000000) != 0)
      {
        v14 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v15 = v14 + size;
      if (v14 + size <= v8 && &v15[v9] > v8)
      {
        goto LABEL_34;
      }

      v16 = v9;
      memmove(v15, v8, v9);
      v17 = size + v16;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v17;
        v14->__r_.__value_.__s.__data_[v17] = 0;
        if ((SHIBYTE(v20) & 0x80000000) == 0)
        {
          return;
        }

LABEL_33:
        operator delete(__p);
        return;
      }

      *(&a2->__r_.__value_.__s + 23) = v17 & 0x7F;
      v14->__r_.__value_.__s.__data_[v17] = 0;
    }

    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

  size = a2->__r_.__value_.__l.__size_;
  v12 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 - size >= v9)
  {
    goto LABEL_22;
  }

LABEL_19:
  std::string::__grow_by_and_replace(a2, v12, v9 - v12 + size, size, size, 0, v9, v8);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_33;
  }
}

BOOL webrtc::struct_parser_impl::TypedParser<std::optional<double>>::Parse(void **__src, size_t __len, uint64_t a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v15 = __len;
  v4 = (__p + __len);
  if (__p <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v4 = 0;
  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = __p[1];
  }

  if (v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = webrtc::ParseTypedParameter<double>(v6, v5);
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v12 = (v8 & 1) != 0;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
  }

LABEL_27:
  if (v12)
  {
    *a3 = v10 | v9;
    *(a3 + 8) = v11;
  }

  return v12;
}

void webrtc::struct_parser_impl::TypedParser<std::optional<double>>::Encode(uint64_t a1, std::string *a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    return;
  }

  v3 = *a1;
  v17 = 0;
  v18 = 0x1000000000000000;
  __p = 0;
  v4 = absl::numbers_internal::SixDigitsToBuffer(&__p, v3, a2);
  if ((SHIBYTE(v18) & 0x8000000000000000) != 0)
  {
    if (v17 < v4)
    {
      goto LABEL_36;
    }

    p_p = __p;
    v17 = v4;
  }

  else
  {
    if (v4 > SHIBYTE(v18))
    {
      goto LABEL_36;
    }

    HIBYTE(v18) = v4;
    p_p = &__p;
  }

  p_p[v4] = 0;
  if (v18 >= 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if (v18 >= 0)
  {
    v7 = HIBYTE(v18);
  }

  else
  {
    v7 = v17;
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v9 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 22;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (22 - v9 < v7)
    {
      goto LABEL_20;
    }

LABEL_23:
    if (v7)
    {
      v12 = a2;
      if ((v9 & 0x80000000) != 0)
      {
        v12 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v13 = v12 + size;
      if (v12 + size <= v6 && &v13[v7] > v6)
      {
        goto LABEL_35;
      }

      v14 = v7;
      memmove(v13, v6, v7);
      v15 = size + v14;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v15;
        v12->__r_.__value_.__s.__data_[v15] = 0;
        if ((SHIBYTE(v18) & 0x80000000) == 0)
        {
          return;
        }

LABEL_34:
        operator delete(__p);
        return;
      }

      *(&a2->__r_.__value_.__s + 23) = v15 & 0x7F;
      v12->__r_.__value_.__s.__data_[v15] = 0;
    }

    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_34;
  }

  size = a2->__r_.__value_.__l.__size_;
  v10 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 - size >= v7)
  {
    goto LABEL_23;
  }

LABEL_20:
  std::string::__grow_by_and_replace(a2, v10, v7 - v10 + size, size, size, 0, v7, v6);
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_34;
  }
}

BOOL webrtc::struct_parser_impl::TypedParser<std::optional<int>>::Parse(void **__src, size_t __len, uint64_t a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_30:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v13 = __len;
  v4 = (__p + __len);
  if (__p <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v4 = 0;
  if ((v13 & 0x80u) == 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = __p[1];
  }

  if (v5)
  {
    if ((v13 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = webrtc::ParseTypedParameter<int>(v6, v5);
    if ((v7 & 0x100000000) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = (v7 & 0x100000000) != 0;
    if ((v7 & 0x100000000) != 0)
    {
      v10 = v7 & 0xFFFFFFFF00;
    }

    else
    {
      v10 = 0;
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v8 = 0;
  v10 = 0;
  v9 = 1;
  if (v13 < 0)
  {
LABEL_23:
    operator delete(__p[0]);
  }

LABEL_24:
  if (v9)
  {
    *a3 = v10 | v8;
    *(a3 + 4) = (v10 | v8) >> 32;
  }

  return v9;
}

void webrtc::struct_parser_impl::TypedParser<std::optional<int>>::Encode(absl::numbers_internal **a1, std::string *a2, char *a3)
{
  v3 = *a1;
  if ((v3 & 0x100000000) == 0)
  {
    return;
  }

  v19 = 0;
  v20 = 0x1600000000000000;
  __p = 0;
  v5 = absl::numbers_internal::FastIntToBuffer(v3, &__p, a3);
  v6 = v5 - &__p;
  if ((SHIBYTE(v20) & 0x8000000000000000) != 0)
  {
    if (v19 < v6)
    {
      goto LABEL_36;
    }

    p_p = __p;
    v19 = v5 - &__p;
  }

  else
  {
    if (v6 > SHIBYTE(v20))
    {
      goto LABEL_36;
    }

    HIBYTE(v20) = v5 - &__p;
    p_p = &__p;
  }

  p_p[v6] = 0;
  if (v20 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if (v20 >= 0)
  {
    v9 = HIBYTE(v20);
  }

  else
  {
    v9 = v19;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 22;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (22 - v11 < v9)
    {
      goto LABEL_20;
    }

LABEL_23:
    if (v9)
    {
      v14 = a2;
      if ((v11 & 0x80000000) != 0)
      {
        v14 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v15 = v14 + size;
      if (v14 + size <= v8 && &v15[v9] > v8)
      {
        goto LABEL_35;
      }

      v16 = v9;
      memmove(v15, v8, v9);
      v17 = size + v16;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v17;
        v14->__r_.__value_.__s.__data_[v17] = 0;
        if ((SHIBYTE(v20) & 0x80000000) == 0)
        {
          return;
        }

LABEL_34:
        operator delete(__p);
        return;
      }

      *(&a2->__r_.__value_.__s + 23) = v17 & 0x7F;
      v14->__r_.__value_.__s.__data_[v17] = 0;
    }

    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_34;
  }

  size = a2->__r_.__value_.__l.__size_;
  v12 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 - size >= v9)
  {
    goto LABEL_23;
  }

LABEL_20:
  std::string::__grow_by_and_replace(a2, v12, v9 - v12 + size, size, size, 0, v9, v8);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_34;
  }
}

uint64_t webrtc::struct_parser_impl::TypedParser<webrtc::DataRate>::Parse(void **__src, size_t __len, unint64_t *a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v12 = __len;
  v4 = (__p + __len);
  if (__p <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v4 = 0;
  if ((v12 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = __p[1];
  }

  v8 = webrtc::ParseTypedParameter<webrtc::DataRate>(v5, v6);
  v9 = v7;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if ((v9 & 1) == 0)
    {
      return v9 & 1;
    }
  }

  else if ((v7 & 1) == 0)
  {
    return v9 & 1;
  }

  *a3 = v8;
  return v9 & 1;
}

void webrtc::struct_parser_impl::anonymous namespace::StringEncode(std::string *a1, uint64_t a2)
{
  webrtc::ToString(a2, __p);
  if ((v14 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = __p[1];
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v6 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 22;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (22 - v6 < v4)
    {
      goto LABEL_14;
    }

LABEL_17:
    if (v4)
    {
      v9 = a1;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v10 = v9 + size;
      if (v9 + size <= v3 && &v10[v4] > v3)
      {
        goto LABEL_29;
      }

      v11 = v4;
      memmove(v10, v3, v4);
      v12 = size + v11;
      if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
      {
        a1->__r_.__value_.__l.__size_ = v12;
        v9->__r_.__value_.__s.__data_[v12] = 0;
        if ((v14 & 0x80000000) == 0)
        {
          return;
        }

LABEL_28:
        operator delete(__p[0]);
        return;
      }

      *(&a1->__r_.__value_.__s + 23) = v12 & 0x7F;
      v9->__r_.__value_.__s.__data_[v12] = 0;
    }

    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

  size = a1->__r_.__value_.__l.__size_;
  v7 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 - size >= v4)
  {
    goto LABEL_17;
  }

LABEL_14:
  std::string::__grow_by_and_replace(a1, v7, v4 - v7 + size, size, size, 0, v4, v3);
  if (v14 < 0)
  {
    goto LABEL_28;
  }
}

uint64_t webrtc::struct_parser_impl::TypedParser<webrtc::TimeDelta>::Parse(void **__src, size_t __len, unint64_t *a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v12 = __len;
  v4 = (__p + __len);
  if (__p <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v4 = 0;
  if ((v12 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = __p[1];
  }

  v8 = webrtc::ParseTypedParameter<webrtc::TimeDelta>(v5, v6);
  v9 = v7;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if ((v9 & 1) == 0)
    {
      return v9 & 1;
    }
  }

  else if ((v7 & 1) == 0)
  {
    return v9 & 1;
  }

  *a3 = v8;
  return v9 & 1;
}

void webrtc::struct_parser_impl::TypedParser<webrtc::TimeDelta>::Encode(webrtc **a1, TimeDelta a2)
{
  webrtc::ToString(*a1, a2, __p);
  if ((v14 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = __p[1];
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v6 = *(a2.var0 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 22;
    v8 = *(a2.var0 + 23);
    if (22 - v6 < v4)
    {
      goto LABEL_14;
    }

LABEL_17:
    if (v4)
    {
      var0 = a2.var0;
      if ((v6 & 0x80000000) != 0)
      {
        var0 = *a2.var0;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v10 = (var0 + v8);
      if (var0 + v8 <= v3 && &v10[v4] > v3)
      {
        goto LABEL_29;
      }

      v11 = v4;
      memmove(v10, v3, v4);
      v12 = v8 + v11;
      if (*(a2.var0 + 23) < 0)
      {
        *(a2.var0 + 8) = v12;
        *(var0 + v12) = 0;
        if ((v14 & 0x80000000) == 0)
        {
          return;
        }

LABEL_28:
        operator delete(__p[0]);
        return;
      }

      *(a2.var0 + 23) = v12 & 0x7F;
      *(var0 + v12) = 0;
    }

    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

  v8 = *(a2.var0 + 8);
  v7 = (*(a2.var0 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 - v8 >= v4)
  {
    goto LABEL_17;
  }

LABEL_14:
  std::string::__grow_by_and_replace(a2.var0, v7, v4 - v7 + v8, v8, v8, 0, v4, v3);
  if (v14 < 0)
  {
    goto LABEL_28;
  }
}

BOOL webrtc::struct_parser_impl::TypedParser<std::optional<webrtc::DataRate>>::Parse(void **__src, size_t __len, uint64_t a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v15 = __len;
  v4 = (__p + __len);
  if (__p <= __src && v4 > __src)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v4 = 0;
  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = __p[1];
  }

  if (v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = webrtc::ParseTypedParameter<webrtc::DataRate>(v6, v5);
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v12 = (v8 & 1) != 0;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
  }

LABEL_27:
  if (v12)
  {
    *a3 = v10 | v9;
    *(a3 + 8) = v11;
  }

  return v12;
}

void webrtc::struct_parser_impl::TypedParser<std::optional<webrtc::DataRate>>::Encode(uint64_t a1, std::string *a2)
{
  if (*(a1 + 8))
  {
  }
}

uint64_t webrtc::struct_parser_impl::TypedParser<std::optional<webrtc::DataSize>>::Parse(void **__src, size_t __len, uint64_t a3)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_50:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  LOBYTE(v4) = __src;
  if (__len > 0x16)
  {
    operator new();
  }

  v17 = __len;
  v5 = v16 + __len;
  if (v16 <= __src && v5 > __src)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (__len)
  {
    memmove(v16, __src, __len);
  }

  *v5 = 0;
  if ((v17 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v16[1];
  }

  if (v6)
  {
    if ((v17 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = v16[0];
    }

    if (v22 != 1)
    {
      goto LABEL_44;
    }

    v8 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v8 = v20;
    }

    if (v8)
    {
      if (v21 < 0)
      {
        p_p = __p;
        if (v20 != 5)
        {
          LOBYTE(v4) = 0;
          operator delete(__p);
          goto LABEL_44;
        }
      }

      else
      {
        if (v21 != 5)
        {
          goto LABEL_44;
        }

        p_p = &__p;
      }

      if (*p_p != *"bytes" || p_p[4] != str_2_29[4])
      {
        v4 = 0;
        LOBYTE(v14) = 0;
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_41:
        operator delete(__p);
        if (v4)
        {
LABEL_32:
          v11 = v5 << 8;
          v10 = v14;
          v12 = 1;
          if ((v17 & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_44:
        v10 = 0;
        v11 = 0;
        v12 = 0;
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    if (v18 == INFINITY)
    {
      LOBYTE(v14) = -1;
      v5 = 0x7FFFFFFFFFFFFFLL;
      v4 = 1;
      if (v21 < 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v18 == -INFINITY)
      {
        v14 = 0x8000000000000000;
      }

      else
      {
        v14 = v18;
      }

      v5 = v14 >> 8;
      v4 = 1;
      if (v21 < 0)
      {
        goto LABEL_41;
      }
    }

LABEL_31:
    if (v4)
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

  v10 = 0;
  v11 = 0;
  LOBYTE(v4) = 0;
  v12 = 1;
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_45:
  operator delete(v16[0]);
LABEL_46:
  if (v12)
  {
    *a3 = v11 | v10;
    *(a3 + 8) = v4;
  }

  return v12;
}

void webrtc::struct_parser_impl::TypedParser<std::optional<webrtc::DataSize>>::Encode(uint64_t a1, std::string *a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    return;
  }

  webrtc::ToString(*a1, __p);
  if ((v14 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = __p[1];
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 22;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (22 - v6 < v4)
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v4)
    {
      v9 = a2;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v10 = v9 + size;
      if (v9 + size <= v3 && &v10[v4] > v3)
      {
        goto LABEL_30;
      }

      v11 = v4;
      memmove(v10, v3, v4);
      v12 = size + v11;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v12;
        v9->__r_.__value_.__s.__data_[v12] = 0;
        if ((v14 & 0x80000000) == 0)
        {
          return;
        }

LABEL_29:
        operator delete(__p[0]);
        return;
      }

      *(&a2->__r_.__value_.__s + 23) = v12 & 0x7F;
      v9->__r_.__value_.__s.__data_[v12] = 0;
    }

    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  size = a2->__r_.__value_.__l.__size_;
  v7 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 - size >= v4)
  {
    goto LABEL_18;
  }

LABEL_15:
  std::string::__grow_by_and_replace(a2, v7, v4 - v7 + size, size, size, 0, v4, v3);
  if (v14 < 0)
  {
    goto LABEL_29;
  }
}

void webrtc::StructParametersParser::Parse(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    v6 = 0;
    do
    {
      v7 = v4 - v6;
      v8 = &v6[a2];
      v9 = memchr(&v6[a2], 44, v4 - v6);
      if (&v9[-a2] == -1 || v9 == 0)
      {
        v11 = v4;
      }

      else
      {
        v11 = &v9[-a2];
      }

      v12 = memchr(v8, 58, v4 - v6);
      v13 = &v12[-a2];
      if (&v12[-a2] == -1 || v12 == 0)
      {
        v13 = v4;
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      v16 = (v15 + 1);
      v17 = v15 - v6;
      if (v7 >= v17)
      {
        v7 = v17;
      }

      if (v11 >= v16)
      {
        if (v4 < v16)
        {
          goto LABEL_42;
        }

        v19 = a2 + v16;
        if (v4 - v16 >= &v11[-v16])
        {
          v18 = &v11[-v16];
        }

        else
        {
          v18 = (v4 - v16);
        }
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      v21 = *a1;
      v20 = a1[1];
      while (v21 != v20)
      {
        if (!*v21)
        {
          __break(1u);
LABEL_42:
          abort();
        }

        if (v7 == strlen(*v21) && !memcmp(v8, *v21, v7))
        {
          if (((*(v21 + 16))(v19, v18, *(v21 + 8)) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            v29 = v29 & 0xFFFFFFFF00000000 | 0x34A;
            goto LABEL_3;
          }

          goto LABEL_4;
        }

        v21 += 32;
      }

      if ((!v7 || *v8 != 95) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | 0x399;
LABEL_3:
        webrtc::webrtc_logging_impl::Log("\r\t\v\t\v\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/struct_parameters_parser.cc");
      }

LABEL_4:
      v6 = v11 + 1;
      v4 = a3;
    }

    while ((v11 + 1) < a3);
  }
}

uint64_t *webrtc::StructParametersParser::Encode@<X0>(uint64_t *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2 = *this;
  v3 = this[1];
  if (*this == v3)
  {
    return this;
  }

  v4 = *v2;
  if (!*v2)
  {
    goto LABEL_89;
  }

  v6 = strlen(*v2);
  size = v6;
  if (v6 > 0x16)
  {
    if (v6 - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

LABEL_90:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v6)
  {
    v8 = a2 + v6;
    if (v4 >= a2 && v8 > v4)
    {
      goto LABEL_89;
    }

    memmove(a2, v4, v6);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = size;
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = size;
    }

    *v8 = 0;
    LODWORD(v11) = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    size = a2->__r_.__value_.__l.__size_;
    v10 = a2->__r_.__value_.__r.__words[2];
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 0;
  }

  v12 = v11;
  v13 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v11 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v14 = 22;
  }

  else
  {
    v14 = v13;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = size;
  }

  if (v14 == v11)
  {
    std::string::__grow_by_and_replace(a2, v14, 1uLL, v14, v14, 0, 1uLL, ":");
    goto LABEL_31;
  }

  v15 = a2->__r_.__value_.__r.__words[0];
  if (v12 >= 0)
  {
    v15 = a2;
  }

  v16 = v15 + v11;
  if (v15 + v11 <= ":" && v16 + 1 > ":")
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  *v16 = 58;
  v17 = v11 + 1;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v17;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v17 & 0x7F;
  }

  v15->__r_.__value_.__s.__data_[v17] = 0;
LABEL_31:
  this = (*(v2 + 24))(*(v2 + 8), a2);
  for (i = v2 + 32; i != v3; i += 32)
  {
    v19 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v20 = v19;
    if ((v19 & 0x80u) == 0)
    {
      v21 = 22;
    }

    else
    {
      v21 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v19 & 0x80u) != 0)
    {
      v19 = a2->__r_.__value_.__l.__size_;
    }

    if (v21 == v19)
    {
      std::string::__grow_by_and_replace(a2, v21, 1uLL, v21, v21, 0, 1uLL, ",");
      v22 = *i;
      if (!*i)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v20 >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = a2->__r_.__value_.__r.__words[0];
      }

      if (v23 + v19 <= "," && &v23->__r_.__value_.__l.__data_ + v19 + 1 > ",")
      {
        goto LABEL_89;
      }

      v23->__r_.__value_.__s.__data_[v19] = 44;
      v25 = v19 + 1;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v25;
        v23->__r_.__value_.__s.__data_[v25] = 0;
        v22 = *i;
        if (!*i)
        {
          goto LABEL_89;
        }
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v25 & 0x7F;
        v23->__r_.__value_.__s.__data_[v25] = 0;
        v22 = *i;
        if (!*i)
        {
          goto LABEL_89;
        }
      }
    }

    v26 = strlen(v22);
    v27 = v26;
    v28 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v28 >= 0)
    {
      v29 = 22;
    }

    else
    {
      v29 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v28 >= 0)
    {
      v30 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = a2->__r_.__value_.__l.__size_;
    }

    if (v29 - v30 >= v26)
    {
      if (v26)
      {
        if (v28 >= 0)
        {
          v31 = a2;
        }

        else
        {
          v31 = a2->__r_.__value_.__r.__words[0];
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_89;
        }

        v32 = v31 + v30;
        if (v31 + v30 <= v22 && &v32[v27] > v22)
        {
          goto LABEL_89;
        }

        memmove(v32, v22, v27);
        v33 = v30 + v27;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          a2->__r_.__value_.__l.__size_ = v33;
        }

        else
        {
          *(&a2->__r_.__value_.__s + 23) = v33 & 0x7F;
        }

        v31->__r_.__value_.__s.__data_[v33] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(a2, v29, v30 + v26 - v29, v30, v30, 0, v26, v22);
    }

    v34 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v35 = v34;
    if ((v34 & 0x80u) == 0)
    {
      v36 = 22;
    }

    else
    {
      v36 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v34 & 0x80u) != 0)
    {
      v34 = a2->__r_.__value_.__l.__size_;
    }

    if (v36 == v34)
    {
      std::string::__grow_by_and_replace(a2, v36, 1uLL, v36, v36, 0, 1uLL, ":");
    }

    else
    {
      if (v35 >= 0)
      {
        v37 = a2;
      }

      else
      {
        v37 = a2->__r_.__value_.__r.__words[0];
      }

      v38 = v37 + v34;
      if (v37 + v34 <= ":" && v38 + 1 > ":")
      {
        goto LABEL_89;
      }

      *v38 = 58;
      v39 = v34 + 1;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v39;
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v39 & 0x7F;
      }

      v37->__r_.__value_.__s.__data_[v39] = 0;
    }

    this = (*(i + 24))(*(i + 8), a2);
  }

  return this;
}

uint64_t webrtc::StunMessage::StunMessage(uint64_t a1, __int16 a2, _BYTE *__src, size_t __len)
{
  *a1 = &unk_2882A0228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 34) = 0;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_28:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = a1 + 40;
  if (__len > 0x16)
  {
    operator new();
  }

  *(a1 + 63) = __len;
  v6 = (a1 + 40);
  v7 = (v5 + __len);
  if (v5 <= __src && v7 > __src)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (__len)
  {
    memmove(v6, __src, __len);
  }

  *v7 = 0;
  v8 = *(a1 + 63);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 63))
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v8 - 4;
    if (v8 >= 4)
    {
      goto LABEL_14;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_26;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 - 4;
  if (v8 < 4)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v10 < 0x1C)
  {
    v11 = 0;
    v12 = 0;
LABEL_24:
    v19 = &v9->u32[v12];
    v20 = v8 - v12 * 4;
    do
    {
      v21 = *v19++;
      v11 ^= bswap32(v21);
      v20 -= 4;
    }

    while (v20 > 3);
    goto LABEL_26;
  }

  v13 = (v10 >> 2) + 1;
  v12 = v13 & 0x7FFFFFFFFFFFFFF8;
  v14 = v9 + 1;
  v15 = 0uLL;
  v16 = v13 & 0x7FFFFFFFFFFFFFF8;
  v17 = 0uLL;
  do
  {
    v15 = veorq_s8(vrev32q_s8(v14[-1]), v15);
    v17 = veorq_s8(vrev32q_s8(*v14), v17);
    v14 += 2;
    v16 -= 8;
  }

  while (v16);
  v18 = veorq_s8(v17, v15);
  *v18.i8 = veor_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
  v11 = v18.i32[0] ^ v18.i32[1];
  if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_24;
  }

LABEL_26:
  *(a1 + 64) = v11;
  *(a1 + 68) = 554869826;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void webrtc::StunMessage::~StunMessage(void **this)
{
  *this = &unk_2882A0228;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
    if ((*(this + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 63) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(this[5]);
      v2 = this[1];
      if (!v2)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[9]);
  if (*(this + 63) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = this[1];
  if (!v2)
  {
    return;
  }

LABEL_9:
  v3 = this[2];
  v4 = v2;
  if (v3 != v2)
  {
    do
    {
      v6 = *--v3;
      v5 = v6;
      *v3 = 0;
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }

    while (v3 != v2);
    v4 = this[1];
  }

  this[2] = v2;
  operator delete(v4);
}

{
  webrtc::StunMessage::~StunMessage(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StunMessage::ValidateMessageIntegrity(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v4 = (a1 + 104);
  if (v4 == a2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 127) < 0)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      a2 = a2->__r_.__value_.__r.__words[0];
      size = v2->__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(v4, a2, size);
LABEL_10:
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6 != v7)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  if ((*(&a2->__r_.__value_.__s + 23) & 0x80) == 0)
  {
    v5 = *&a2->__r_.__value_.__l.__data_;
    v4->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    *&v4->__r_.__value_.__l.__data_ = v5;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
      goto LABEL_23;
    }

LABEL_11:
    v9 = v6;
    while (*(*v9 + 8) != 8)
    {
      v9 += 8;
      if (v9 == v7)
      {
        while (*(*v6 + 8) != 49248)
        {
          v6 += 8;
          if (v6 == v7)
          {
            goto LABEL_23;
          }
        }

        v11 = *(a1 + 95);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v12 = *(a1 + 72);
          v11 = *(a1 + 80);
        }

        else
        {
          v12 = (a1 + 72);
        }

        if (webrtc::StunMessage::ValidateMessageIntegrityOfType(49248, 4, v12, v11))
        {
LABEL_28:
          result = 2;
          goto LABEL_29;
        }

LABEL_25:
        result = 3;
        goto LABEL_29;
      }
    }

    v10 = *(a1 + 95);
    if ((v10 & 0x8000000000000000) != 0)
    {
      if (webrtc::StunMessage::ValidateMessageIntegrityOfType(8, 20, *(a1 + 72), *(a1 + 80)))
      {
        goto LABEL_28;
      }
    }

    else if (webrtc::StunMessage::ValidateMessageIntegrityOfType(8, 20, (a1 + 72), v10))
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  std::string::__assign_no_alias<true>(v4, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 != v7)
  {
    goto LABEL_11;
  }

LABEL_23:
  result = 1;
LABEL_29:
  *(a1 + 96) = result;
  return result;
}

uint64_t webrtc::StunMessage::ValidateMessageIntegrityOfType(int a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  if (a4 >= 0x14 && (a4 & 3) == 0 && a4 >= 0x18 && (bswap32(a3[1]) >> 16) + 20 == a4)
  {
    v4 = bswap32(a3[11]) >> 16;
    v5 = 20;
    if (a1 == bswap32(a3[10]) >> 16)
    {
      v6 = 24;
LABEL_12:
      if (v4 == a2 && v6 + v4 <= a4)
      {
        operator new[]();
      }
    }

    else
    {
      while (1)
      {
        LODWORD(v7) = 4 - (v4 & 3);
        v7 = (v4 & 3) != 0 ? v7 : 0;
        v8 = v5 + v4 + v7;
        v6 = v8 + 8;
        if (v8 + 8 > a4)
        {
          break;
        }

        v5 = v8 + 4;
        v9 = (a3 + v8 + 4);
        v10 = bswap32(*v9);
        v4 = bswap32(v9[1]) >> 16;
        if (a1 == HIWORD(v10))
        {
          goto LABEL_12;
        }
      }
    }
  }

  return 0;
}

void webrtc::StunMessage::AddMessageIntegrityOfType(int a1, int a2, size_t __len)
{
  v6 = *MEMORY[0x277D85DE8];
  if (__len <= 0x7FFFFFFFFFFFFFF7)
  {
    if (__len < 0x17)
    {
      v5 = __len;
      if (__len)
      {
        memset(&__b, 48, __len);
      }

      *(&__b + __len) = 0;
      operator new();
    }

    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::StunMessage::Write(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *a2 + 2;
  if (a2[1] < v5)
  {
    operator new[]();
  }

  *(a2[2] + *a2) = __rev16(*(a1 + 32));
  *a2 = v5;
  v6 = v4 + 4;
  if (a2[1] < v4 + 4)
  {
    operator new[]();
  }

  *(a2[2] + v5) = __rev16(*(a1 + 34));
  *a2 = v6;
  v7 = *(a1 + 63);
  if (v7 < 0)
  {
    if (*(a1 + 48) == 16)
    {
LABEL_7:
      v8 = v4 + 4;
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if (v7 == 16)
  {
    goto LABEL_7;
  }

  v8 = v4 + 8;
  if (a2[1] < v8)
  {
    operator new[]();
  }

  *(a2[2] + v6) = bswap32(*(a1 + 68));
  *a2 = v8;
  LOBYTE(v7) = *(a1 + 63);
  if ((v7 & 0x80) == 0)
  {
LABEL_8:
    v9 = (a1 + 40);
    v10 = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_24:
    if (a2[1] < v10 + v8)
    {
      operator new[]();
    }

    memcpy((a2[2] + v8), v9, v10);
    *a2 = v10 + v8;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (v11 != v12)
    {
      goto LABEL_10;
    }

    return 1;
  }

LABEL_23:
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  if (v10)
  {
    goto LABEL_24;
  }

LABEL_9:
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  if (v11 == v12)
  {
    return 1;
  }

LABEL_10:
  v13 = v11 + 8;
  do
  {
    v16 = *a2;
    v17 = *a2 + 2;
    if (a2[1] < v17)
    {
      operator new[]();
    }

    *(a2[2] + *a2) = __rev16(*(*(v13 - 8) + 8));
    *a2 = v17;
    v18 = v16 + 4;
    if (a2[1] < v18)
    {
      operator new[]();
    }

    *(a2[2] + v17) = __rev16(*(*(v13 - 8) + 10));
    *a2 = v18;
    result = (*(**(v13 - 8) + 40))(*(v13 - 8), a2);
    if (result)
    {
      v15 = v13 == v12;
    }

    else
    {
      v15 = 1;
    }

    v13 += 8;
  }

  while (!v15);
  return result;
}

uint64_t webrtc::StunMessage::Read(uint64_t this, webrtc::ByteBufferReader *a2)
{
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (*a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == v2;
  }

  if (!v4)
  {
    goto LABEL_65;
  }

  v6 = this;
  this = std::string::__assign_external((this + 72), (*a2 + v2), v3 - v2);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  if ((v8 - v7) < 2)
  {
    return 0;
  }

  v9 = *a2;
  v10 = *(*a2 + v7);
  v11 = v7 + 2;
  *(a2 + 2) = v7 + 2;
  v12 = bswap32(v10);
  *(v6 + 32) = HIWORD(v12);
  if ((v12 & 0x80000000) != 0 || (v8 - v11) < 2)
  {
    return 0;
  }

  v13 = *(v9 + v11);
  v14 = v7 + 4;
  *(a2 + 2) = v7 + 4;
  *(v6 + 34) = bswap32(v13) >> 16;
  if ((v8 - (v7 + 4)) < 4)
  {
    return 0;
  }

  *(a2 + 2) = v7 + 8;
  memset(&v51, 0, sizeof(v51));
  if ((v8 - (v7 + 8)) < 0xC)
  {
    goto LABEL_62;
  }

  v15 = v9 + v7 + 8;
  if (&v51 <= v15 && &v51.__r_.__value_.__r.__words[1] + 4 > v15)
  {
LABEL_65:
    __break(1u);
    return this;
  }

  v16 = *v15;
  LODWORD(v51.__r_.__value_.__r.__words[1]) = *(v15 + 8);
  v51.__r_.__value_.__r.__words[0] = v16;
  *(&v51.__r_.__value_.__s + 23) = 12;
  *(a2 + 2) = v7 + 20;
  if (*(v9 + v14) != 1118048801)
  {
    std::string::insert(&v51, 0, (v9 + v14), 4uLL);
  }

  v17 = (v6 + 40);
  if ((v6 + 40) != &v51)
  {
    if (*(v6 + 63) < 0)
    {
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v51;
      }

      else
      {
        v18 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v51.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>((v6 + 40), v18, size);
    }

    else if ((*(&v51.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v6 + 40), v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    }

    else
    {
      *v17 = *&v51.__r_.__value_.__l.__data_;
      *(v6 + 56) = *(&v51.__r_.__value_.__l + 2);
    }
  }

  v20 = *(v6 + 63);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v17 = *(v6 + 40);
    v20 = *(v6 + 48);
  }

  if (v20)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20 - 4;
  if (v20 < 4)
  {
    v23 = 0;
    goto LABEL_43;
  }

  if (v22 < 0x1C)
  {
    v23 = 0;
    v24 = 0;
LABEL_41:
    v31 = &v21->u32[v24];
    v32 = v20 - v24 * 4;
    do
    {
      v33 = *v31++;
      v23 ^= bswap32(v33);
      v32 -= 4;
    }

    while (v32 > 3);
    goto LABEL_43;
  }

  v25 = (v22 >> 2) + 1;
  v24 = v25 & 0x7FFFFFFFFFFFFFF8;
  v26 = v21 + 1;
  v27 = 0uLL;
  v28 = v25 & 0x7FFFFFFFFFFFFFF8;
  v29 = 0uLL;
  do
  {
    v27 = veorq_s8(vrev32q_s8(v26[-1]), v27);
    v29 = veorq_s8(vrev32q_s8(*v26), v29);
    v26 += 2;
    v28 -= 8;
  }

  while (v28);
  v30 = veorq_s8(v29, v27);
  *v30.i8 = veor_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
  v23 = v30.i32[0] ^ v30.i32[1];
  if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_41;
  }

LABEL_43:
  *(v6 + 64) = v23;
  if (*(a2 + 3) - *(a2 + 2) != *(v6 + 34))
  {
LABEL_62:
    this = 0;
    goto LABEL_63;
  }

  std::vector<std::unique_ptr<webrtc::StunAttribute>>::resize((v6 + 8));
  v34 = *(a2 + 2);
  v35 = *(a2 + 3);
  v36 = v35 - (v34 + *(v6 + 34));
  if (v35 - v34 > v36)
  {
    while (1)
    {
      if ((v35 - v34) < 2)
      {
        goto LABEL_62;
      }

      v37 = *a2;
      v38 = *(*a2 + v34);
      *(a2 + 2) = v34 + 2;
      if ((v35 - (v34 + 2)) < 2)
      {
        goto LABEL_62;
      }

      v39 = bswap32(v38) >> 16;
      v40 = *(v37 + v34 + 2);
      *(a2 + 2) = v34 + 4;
      v41 = bswap32(v40) >> 16;
      v42 = (*(*v6 + 24))(v6, v39);
      if (!v42)
      {
        break;
      }

      v43 = webrtc::StunAttribute::Create(v42);
      v50 = v43;
      if (!v43)
      {
        goto LABEL_53;
      }

      if (!(*(*v43 + 32))())
      {
        v48 = v50;
        v50 = 0;
        if (v48)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100]((v6 + 8), &v50);
      v47 = v50;
      v50 = 0;
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }

LABEL_46:
      v34 = *(a2 + 2);
      v35 = *(a2 + 3);
      if (v35 - v34 <= v36)
      {
        goto LABEL_59;
      }
    }

    if ((v39 & 0x4000) != 0)
    {
      operator new();
    }

LABEL_53:
    v44 = (v41 + 3) & 0xFFFC;
    v45 = *(a2 + 2);
    if (*(a2 + 3) - v45 < v44)
    {
      goto LABEL_62;
    }

    *(a2 + 2) = v45 + v44;
    goto LABEL_46;
  }

LABEL_59:
  this = 1;
LABEL_63:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    v49 = this;
    operator delete(v51.__r_.__value_.__l.__data_);
    return v49;
  }

  return this;
}

void *std::vector<std::unique_ptr<webrtc::StunAttribute>>::resize(void *result)
{
  v1 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *v2 = 0;
      if (v4)
      {
        result = (*(*result + 8))(result);
      }
    }

    while (v2 != v1);
    v3[1] = v1;
  }

  return result;
}

uint64_t webrtc::StunMessage::GetAttributeValueType(webrtc::StunMessage *this, int a2)
{
  result = 1;
  if (a2 > 32801)
  {
    if (a2 > 49240)
    {
      if (a2 <= 49244)
      {
        if (a2 != 49241)
        {
          if (a2 != 49244)
          {
            return 0;
          }

          return 5;
        }

        return 7;
      }

      if (a2 == 49245)
      {
        return 4;
      }

      if (a2 != 65280)
      {
        return 0;
      }
    }

    else
    {
      if (a2 <= 32807)
      {
        if (a2 == 32802)
        {
          return 5;
        }

        if (a2 != 32803)
        {
          return 0;
        }

        return result;
      }

      if (a2 != 32808)
      {
        if (a2 != 49240)
        {
          return 0;
        }

        return 5;
      }
    }

    return 3;
  }

  if (a2 > 9)
  {
    if (a2 > 20)
    {
      if (a2 != 21)
      {
        if (a2 == 32)
        {
          return 2;
        }

        return 0;
      }

      return 5;
    }

    if (a2 != 10)
    {
      if (a2 != 20)
      {
        return 0;
      }

      return 5;
    }

    return 7;
  }

  if (a2 > 7)
  {
    if (a2 != 8)
    {
      return 6;
    }

    return 5;
  }

  if (a2 != 1)
  {
    if (a2 != 6)
    {
      return 0;
    }

    return 5;
  }

  return result;
}

uint64_t webrtc::StunAttribute::Create(int a1)
{
  result = 0;
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        operator new();
      case 2:
        operator new();
      case 3:
        operator new();
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 != 4)
      {
        operator new();
      }

      operator new();
    }

    if (a1 == 6)
    {
      operator new();
    }

    if (a1 == 7)
    {
      operator new();
    }
  }

  return result;
}

std::string *webrtc::StunAddressAttribute::SetAddress(webrtc::StunAddressAttribute *this, std::string *a2)
{
  v2 = a2;
  result = (this + 16);
  if (result != a2)
  {
    if (*(this + 39) < 0)
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      }

      else
      {
        a2 = a2->__r_.__value_.__r.__words[0];
        v6 = *(v2 + 1);
      }

      result = std::string::__assign_no_alias<false>(result, a2, v6);
    }

    else if ((*(&a2->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      result = std::string::__assign_no_alias<true>(result, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&a2->__r_.__value_.__l.__data_;
      result->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&result->__r_.__value_.__l.__data_ = v5;
    }
  }

  v7 = *(v2 + 8);
  *(this + 12) = v7;
  *(this + 52) = *(v2 + 36);
  *(this + 36) = *(v2 + 28);
  *(this + 80) = *(v2 + 64);
  *(this + 19) = *(v2 + 15);
  if (v7 == 30)
  {
    v8 = 20;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == 2)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  *(this + 5) = v9;
  return result;
}

uint64_t webrtc::StunAddressAttribute::Read(webrtc::StunAddressAttribute *this, webrtc::ByteBufferReader *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 == v2)
  {
    return 0;
  }

  *(a2 + 2) = v2 + 1;
  if (v3 == v2 + 1)
  {
    return 0;
  }

  v4 = *(*a2 + v2 + 1);
  *(a2 + 2) = v2 + 2;
  if ((v3 - (v2 + 2)) < 2)
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(*a2 + v2 + 2);
  v7 = v2 + 4;
  *(a2 + 2) = v2 + 4;
  v8 = bswap32(v6) >> 16;
  if (v4 == 2)
  {
    if (*(this + 5) == 20 && (v3 - v7) >= 0x10)
    {
      v23 = *(v5 + v7);
      v11 = v23;
      *(a2 + 2) = v2 + 20;
      v20 = &unk_28828CE50;
      v21 = 30;
      v22 = v11;
      memset(&__p, 0, sizeof(__p));
      v14 = &unk_28828CE50;
      v19 = 0;
      v15 = 30;
      goto LABEL_12;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

  v9 = 0;
  if (*(this + 5) != 8 || (v3 - v7) < 4)
  {
    return v9;
  }

  v10 = *(v5 + v7);
  *(a2 + 2) = v2 + 8;
  v20 = &unk_28828CE50;
  *(&v22 + 4) = 0;
  HIDWORD(v22) = 0;
  v21 = 2;
  LODWORD(v22) = v10;
  memset(&__p, 0, sizeof(__p));
  v14 = &unk_28828CE50;
  v19 = 0;
  v15 = 2;
  v11 = v10;
LABEL_12:
  v16 = v11;
  v18 = 0;
  v17 = v8;
  webrtc::StunAddressAttribute::SetAddress(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

BOOL webrtc::StunAddressAttribute::Write(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 48);
  if (v2 == 2 || v2 == 30)
  {
    v4 = *a2;
    v5 = *a2 + 1;
    if (a2[1] < v5)
    {
      operator new[]();
    }

    *(a2[2] + *a2) = 0;
    *a2 = v5;
    if (v2 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2 * (v2 == 30);
    }

    v15 = v4 + 2;
    if (a2[1] < v4 + 2)
    {
      operator new[]();
    }

    *(a2[2] + v5) = v14;
    *a2 = v15;
    v16 = v4 + 4;
    if (a2[1] < v4 + 4)
    {
      operator new[]();
    }

    *(a2[2] + v15) = __rev16(*(a1 + 72));
    *a2 = v16;
    v17 = *(a1 + 48);
    if (v17 == 30)
    {
      v18 = v4 + 20;
      if (a2[1] < v4 + 20)
      {
        operator new[]();
      }

      *(a2[2] + v16) = *(a1 + 52);
    }

    else
    {
      if (v17 != 2)
      {
        return v2 == 2 || v2 == 30;
      }

      v18 = v4 + 8;
      if (a2[1] < v4 + 8)
      {
        operator new[]();
      }

      *(a2[2] + v16) = *(a1 + 52);
    }

    *a2 = v18;
  }

  else
  {
    v6 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
    if ((v6 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/transport/stun.cc");
    }
  }

  return v2 == 2 || v2 == 30;
}

uint64_t webrtc::StunXorAddressAttribute::GetXoredIP(uint64_t this, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 48);
  v8 = *(a2 + 52);
  if (v3 != 30)
  {
    if (v3 == 2)
    {
      *this = &unk_28828CE50;
      *(this + 16) = 0;
      *(this + 24) = 0;
      *(this + 8) = 2;
      *(this + 12) = v8 ^ 0x42A41221;
      return this;
    }

    goto LABEL_11;
  }

  v4 = (v2 + 40);
  v5 = *(v2 + 63);
  if ((v5 & 0x80000000) == 0)
  {
    if (v5 != 12)
    {
      goto LABEL_11;
    }

LABEL_10:
    v6 = *v4 ^ DWORD1(v8);
    v7 = (v4[1] ^ DWORD2(v8)) | ((v4[2] ^ HIDWORD(v8)) << 32);
    *this = &unk_28828CE50;
    *(this + 8) = 30;
    *(this + 12) = (v8 | (v6 << 32)) ^ 0x42A41221;
    *(this + 20) = v7;
    return this;
  }

  if (*(v2 + 48) == 12)
  {
    v4 = *v4;
    goto LABEL_10;
  }

LABEL_11:
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28828CE50;
  *(this + 24) = 0;
  return this;
}

uint64_t webrtc::StunXorAddressAttribute::Read(webrtc::StunXorAddressAttribute *this, webrtc::ByteBufferReader *a2)
{
  result = webrtc::StunAddressAttribute::Read(this, a2);
  if (result)
  {
    v4 = result;
    v5 = *(this + 36) ^ 0x2112;
    webrtc::StunXorAddressAttribute::GetXoredIP(v20, this);
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    v14 = &unk_28828CE50;
    v6 = v21;
    v19 = 0;
    v15 = v21;
    v16 = v22;
    v18 = 0;
    v17 = v5;
    if ((this + 16) == __p)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
    }

    else if (*(this + 39) < 0)
    {
      std::string::__assign_no_alias<false>((this + 16), __p, 0);
      v6 = v15;
      v5 = v17;
      v9 = v19;
      v8 = v18;
      v7 = v13 < 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      *(this + 2) = 0;
      *(this + 3) = 0;
      *(this + 4) = 0;
    }

    *(this + 12) = v6;
    *(this + 52) = v16;
    *(this + 36) = v5;
    *(this + 80) = v9;
    *(this + 19) = v8;
    if (v6 == 30)
    {
      v10 = 20;
    }

    else
    {
      v10 = 0;
    }

    if (v6 == 2)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }

    *(this + 5) = v11;
    if (v7)
    {
      operator delete(__p[0]);
    }

    return v4;
  }

  return result;
}

BOOL webrtc::StunXorAddressAttribute::Write(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 48);
  if (v2 == 2 || v2 == 30)
  {
    webrtc::StunXorAddressAttribute::GetXoredIP(v23, a1);
    v6 = v24 != 0;
    if (v24)
    {
      v7 = *a2;
      v8 = *a2 + 1;
      if (a2[1] < v8)
      {
        operator new[]();
      }

      *(a2[2] + *a2) = 0;
      *a2 = v8;
      v17 = *(a1 + 48);
      if (v17 == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2 * (v17 == 30);
      }

      v19 = v7 + 2;
      if (a2[1] < v7 + 2)
      {
        operator new[]();
      }

      *(a2[2] + v8) = v18;
      *a2 = v19;
      v20 = v7 + 4;
      if (a2[1] < v7 + 4)
      {
        operator new[]();
      }

      *(a2[2] + v19) = bswap32(*(a1 + 72) ^ 0x2112) >> 16;
      *a2 = v20;
      if (v24 == 30)
      {
        v21 = v7 + 20;
        if (a2[1] < v7 + 20)
        {
          operator new[]();
        }

        *(a2[2] + v20) = v25;
      }

      else
      {
        if (v24 != 2)
        {
          return v6;
        }

        v21 = v7 + 8;
        if (a2[1] < v7 + 8)
        {
          operator new[]();
        }

        *(a2[2] + v20) = v25;
      }

      *a2 = v21;
    }
  }

  else
  {
    v9 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
    if ((v9 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/transport/stun.cc");
    }

    return 0;
  }

  return v6;
}

uint64_t webrtc::StunUInt32Attribute::Read(webrtc::StunUInt32Attribute *this, webrtc::ByteBufferReader *a2)
{
  if (*(this + 5) != 4)
  {
    return 0;
  }

  v2 = *(a2 + 2);
  if ((*(a2 + 3) - v2) < 4)
  {
    return 0;
  }

  v3 = *(*a2 + v2);
  *(a2 + 2) = v2 + 4;
  *(this + 3) = bswap32(v3);
  return 1;
}

uint64_t webrtc::StunUInt32Attribute::Write(uint64_t a1, unint64_t *a2)
{
  v2 = *a2 + 4;
  if (a2[1] < v2)
  {
    operator new[]();
  }

  *(a2[2] + *a2) = bswap32(*(a1 + 12));
  *a2 = v2;
  return 1;
}

uint64_t webrtc::StunUInt64Attribute::Read(webrtc::StunUInt64Attribute *this, webrtc::ByteBufferReader *a2)
{
  if (*(this + 5) != 8)
  {
    return 0;
  }

  v2 = *(a2 + 2);
  if ((*(a2 + 3) - v2) < 8)
  {
    return 0;
  }

  v3 = *(*a2 + v2);
  *(a2 + 2) = v2 + 8;
  *(this + 2) = bswap64(v3);
  return 1;
}

uint64_t webrtc::StunUInt64Attribute::Write(uint64_t a1, unint64_t *a2)
{
  v2 = *a2 + 8;
  if (a2[1] < v2)
  {
    operator new[]();
  }

  *(a2[2] + *a2) = bswap64(*(a1 + 16));
  *a2 = v2;
  return 1;
}

void webrtc::StunByteStringAttribute::~StunByteStringAttribute(webrtc::StunByteStringAttribute *this)
{
  *this = &unk_2882A0358;
  if (*(this + 2))
  {
    MEMORY[0x2743DA520](*(this + 2), 0x1000C8077774924);
  }
}

{
  *this = &unk_2882A0358;
  if (*(this + 2))
  {
    MEMORY[0x2743DA520](*(this + 2), 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StunByteStringAttribute::Write(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 10);
  if (v4 <= 0x13)
  {
    if (v4 == 6)
    {
      if (v5 <= 0x1FC)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v4 != 8)
      {
        goto LABEL_12;
      }

      if (v5 == 20)
      {
LABEL_13:
        v6 = *a2 + v5;
        if (a2[1] < v6)
        {
          operator new[]();
        }

        memcpy((a2[2] + *a2), *(a1 + 16), v5);
        *a2 = v6;
        v8 = *(a1 + 10) & 3;
        if ((*(a1 + 10) & 3) != 0)
        {
          __src = 0;
          v9 = v6 + 4 - v8;
          if (a2[1] < v9)
          {
            operator new[]();
          }

          memcpy((a2[2] + v6), &__src, 4 - v8);
          *a2 = v9;
        }

        return 1;
      }
    }

    return 0;
  }

  if ((v4 == 20 || v4 == 21 || v4 == 32802) && v5 >= 0x1FD)
  {
    return 0;
  }

LABEL_12:
  if (*(a1 + 10))
  {
    goto LABEL_13;
  }

  return 1;
}

void webrtc::StunErrorCodeAttribute::~StunErrorCodeAttribute(void **this)
{
  *this = &unk_2882A0398;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2882A0398;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StunErrorCodeAttribute::Read(webrtc::StunErrorCodeAttribute *this, webrtc::ByteBufferReader *a2)
{
  if (*(this + 5) < 4u)
  {
    return 0;
  }

  v4 = *(a2 + 2);
  if ((*(a2 + 3) - v4) < 4)
  {
    return 0;
  }

  v6 = *(*a2 + v4);
  *(a2 + 2) = v4 + 4;
  v7 = bswap32(v6);
  if (v7 >= 0x800 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/transport/stun.cc");
  }

  *(this + 12) = BYTE1(v7) & 7;
  *(this + 13) = v7;
  result = webrtc::ByteBufferReader::ReadString(a2, (this + 16), *(this + 5) - 4);
  if (result)
  {
    if ((*(this + 5) & 3) != 0)
    {
      v15 = 4 - (*(this + 5) & 3);
      v16 = *(a2 + 2);
      if (*(a2 + 3) - v16 >= v15)
      {
        *(a2 + 2) = v16 + v15;
      }
    }

    return 1;
  }

  return result;
}

uint64_t webrtc::StunErrorCodeAttribute::Write(uint64_t a1, unint64_t *a2)
{
  v4 = __rev16(*(a1 + 12));
  v5 = *a2 + 4;
  if (a2[1] < v5)
  {
    operator new[]();
  }

  *(a2[2] + *a2) = bswap32(v4);
  *a2 = v5;
  v6 = *(a1 + 39);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = (a1 + 16);
    if (*(a1 + 39))
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = v5;
    v9 = *(a1 + 10) & 3;
    if ((*(a1 + 10) & 3) == 0)
    {
      return 1;
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = v6 + v5;
  if (a2[1] < v6 + v5)
  {
    operator new[]();
  }

  memcpy((a2[2] + v5), v7, v6);
  *a2 = v8;
  v9 = *(a1 + 10) & 3;
  if ((*(a1 + 10) & 3) != 0)
  {
LABEL_11:
    __src = 0;
    v10 = v8 + 4 - v9;
    if (a2[1] < v10)
    {
      operator new[]();
    }

    memcpy((a2[2] + v8), &__src, 4 - v9);
    *a2 = v10;
  }

  return 1;
}

void webrtc::StunUInt16ListAttribute::~StunUInt16ListAttribute(webrtc::StunUInt16ListAttribute *this)
{
  *this = &unk_2882A03D8;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    MEMORY[0x2743DA540](v1, 0x10C402FEFCB83);
  }
}

{
  *this = &unk_2882A03D8;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    MEMORY[0x2743DA540](v1, 0x10C402FEFCB83);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StunUInt16ListAttribute::Read(webrtc::StunUInt16ListAttribute *this, webrtc::ByteBufferReader *a2)
{
  LODWORD(v2) = *(this + 5);
  if (v2)
  {
    return 0;
  }

  if (v2 < 2)
  {
LABEL_6:
    v8 = v2 & 3;
    if (v8)
    {
      v9 = (4 - v8);
      v10 = *(a2 + 2);
      if (*(a2 + 3) - v10 >= v9)
      {
        *(a2 + 2) = v10 + v9;
      }
    }

    return 1;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v12 = 0;
      v6 = *(a2 + 2);
      if ((*(a2 + 3) - v6) < 2)
      {
        return 0;
      }

      v7 = *(*a2 + v6);
      *(a2 + 2) = v6 + 2;
      v12 = bswap32(v7) >> 16;
      std::vector<unsigned short>::push_back[abi:sn200100](*(this + 2), &v12);
      ++v5;
      v2 = *(this + 5);
      if (v5 >= v2 >> 1)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t webrtc::StunUInt16ListAttribute::Write(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *v3;
  if (v3[1] != *v3)
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      v9 = v6 + 2;
      if (a2[1] < v6 + 2)
      {
        operator new[]();
      }

      *(a2[2] + v6) = __rev16(*(v4 + 2 * v5));
      *a2 = v9;
      ++v5;
      v7 = *(a1 + 16);
      v4 = *v7;
      v8 = v5 >= (v7[1] - *v7) >> 1;
      v6 = v9;
    }

    while (!v8);
  }

  v10 = *(a1 + 10) & 3;
  if ((*(a1 + 10) & 3) != 0)
  {
    __src = 0;
    v11 = *a2 + 4 - v10;
    if (a2[1] < v11)
    {
      operator new[]();
    }

    memcpy((a2[2] + *a2), &__src, 4 - v10);
    *a2 = v11;
  }

  return 1;
}

void webrtc::StunMethodToString(webrtc *this@<X0>, unint64_t a2@<X8>)
{
  if (this <= 259)
  {
    if (this <= 16)
    {
      if (this <= 3)
      {
        if (this != 1)
        {
          if (this != 3)
          {
            goto LABEL_68;
          }

          *(a2 + 23) = 21;
          v3 = "TURN ALLOCATE request";
          if (a2 > "TURN ALLOCATE request")
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        *(a2 + 23) = 20;
        v4 = "STUN BINDING request";
        if (a2 > "STUN BINDING request")
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (this != 4)
        {
          if (this == 8)
          {
            operator new();
          }

          if (this == 9)
          {
            operator new();
          }

          goto LABEL_68;
        }

        *(a2 + 23) = 20;
        v4 = "TURN REFRESH request";
        if (a2 > "TURN REFRESH request")
        {
          goto LABEL_64;
        }
      }

      if (a2 + 20 > v4)
      {
        goto LABEL_113;
      }

LABEL_64:
      v5 = 1953719669;
      goto LABEL_65;
    }

    if (this <= 22)
    {
      if (this == 17)
      {
        operator new();
      }

      if (this != 22)
      {
        goto LABEL_68;
      }

      *(a2 + 23) = 20;
      v4 = "TURN SEND INDICATION";
      if (a2 > "TURN SEND INDICATION")
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (this != 23)
      {
        if (this != 257)
        {
          if (this == 259)
          {
            *(a2 + 23) = 22;
            if (a2 > "TURN ALLOCATE response" || a2 + 22 <= "TURN ALLOCATE response")
            {
              strcpy(a2, "TURN ALLOCATE response");
              return;
            }

            goto LABEL_113;
          }

          goto LABEL_68;
        }

        *(a2 + 23) = 21;
        v3 = "STUN BINDING response";
        if (a2 > "STUN BINDING response")
        {
LABEL_57:
          *a2 = *v3;
          *(a2 + 13) = *(v3 + 13);
          *(a2 + 21) = 0;
          return;
        }

LABEL_56:
        if (a2 + 21 > v3)
        {
          goto LABEL_113;
        }

        goto LABEL_57;
      }

      *(a2 + 23) = 20;
      v4 = "TURN DATA INDICATION";
      if (a2 > "TURN DATA INDICATION")
      {
        goto LABEL_47;
      }
    }

    if (a2 + 20 > v4)
    {
      goto LABEL_113;
    }

LABEL_47:
    v5 = 1313818964;
LABEL_65:
    *(a2 + 16) = v5;
    *a2 = *v4;
    *(a2 + 20) = 0;
    return;
  }

  if (this <= 275)
  {
    if (this > 264)
    {
      switch(this)
      {
        case 0x109:
          operator new();
        case 0x111:
          operator new();
        case 0x113:
          operator new();
      }

      goto LABEL_68;
    }

    if (this != 260)
    {
      if (this == 264)
      {
        operator new();
      }

      goto LABEL_68;
    }

    *(a2 + 23) = 21;
    v3 = "TURN REFRESH response";
    if (a2 > "TURN REFRESH response")
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (this > 511)
  {
    switch(this)
    {
      case 0x200:
        *(a2 + 23) = 17;
        if (a2 > "GOOG PING request" || a2 + 17 <= "GOOG PING request")
        {
          strcpy(a2, "GOOG PING request");
          return;
        }

        goto LABEL_113;
      case 0x300:
        *(a2 + 23) = 18;
        if (a2 > "GOOG PING response" || a2 + 18 <= "GOOG PING response")
        {
          strcpy(a2, "GOOG PING response");
          return;
        }

        goto LABEL_113;
      case 0x310:
        operator new();
    }
  }

  else
  {
    switch(this)
    {
      case 0x114:
        operator new();
      case 0x118:
        operator new();
      case 0x119:
        operator new();
    }
  }

LABEL_68:
  std::to_string(&v19, this);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = 22;
  }

  else
  {
    v7 = (v19.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v7 - size < 8)
  {
    if (0x7FFFFFFFFFFFFFF6 - v7 >= size + 8 - v7)
    {
      operator new();
    }

LABEL_114:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v19;
  }

  else
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  v9 = "UNKNOWN<";
  if (size)
  {
    if ((size & 0x8000000000000000) != 0)
    {
      goto LABEL_113;
    }

    v10 = v8 + size <= "UNKNOWN<" || v8 > "UNKNOWN<";
    v11 = 8;
    if (v10)
    {
      v11 = 0;
    }

    v9 = &aUnknown_1[v11];
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_size = &v19.__r_.__value_.__l.__size_;
    }

    else
    {
      p_size = (v19.__r_.__value_.__r.__words[0] + 8);
    }

    memmove(p_size, v8, size);
  }

  v8->__r_.__value_.__r.__words[0] = *v9;
  v13 = size + 8;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    v19.__r_.__value_.__l.__size_ = size + 8;
  }

  else
  {
    *(&v19.__r_.__value_.__s + 23) = v13 & 0x7F;
  }

  v8->__r_.__value_.__s.__data_[v13] = 0;
  v20 = v19;
  memset(&v19, 0, sizeof(v19));
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = 22;
  }

  else
  {
    v14 = (v20.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v20.__r_.__value_.__l.__size_;
  }

  if (v14 != v15)
  {
    v16 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v20.__r_.__value_.__r.__words[0];
    }

    v17 = v16 + v15;
    if (v16 + v15 > ">" || v17 + 1 <= ">")
    {
      *v17 = 62;
      v18 = v15 + 1;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        v20.__r_.__value_.__l.__size_ = v18;
      }

      else
      {
        *(&v20.__r_.__value_.__s + 23) = v18 & 0x7F;
      }

      v16->__r_.__value_.__s.__data_[v18] = 0;
      goto LABEL_111;
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  std::string::__grow_by_and_replace(&v20, v14, 1uLL, v14, v14, 0, 1uLL, ">");
LABEL_111:
  *a2 = v20;
  memset(&v20, 0, sizeof(v20));
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void webrtc::ComputeStunCredentialHash(uint64_t a1, uint64_t a2, char **a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a1, *(a1 + 8));
    LOBYTE(v5) = *(&v29.__r_.__value_.__s + 23);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = *a1;
    LOBYTE(v5) = *(&v29.__r_.__value_.__s + 23);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if (v5 != 22)
      {
        v5 = v5;
        *(&v29.__r_.__value_.__s + 23) = (v5 + 1) & 0x7F;
        v7 = &v29;
LABEL_10:
        *(&v7->__r_.__value_.__l.__data_ + v5) = 58;
        v8 = *(a2 + 23);
        if (v8 >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        if (v8 >= 0)
        {
          v10 = *(a2 + 23);
        }

        else
        {
          v10 = *(a2 + 8);
        }

        if (v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10 == 0;
        }

        if (!v11)
        {
          goto LABEL_76;
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = 22;
        }

        else
        {
          v12 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v29.__r_.__value_.__l.__size_;
        }

        if (v12 - size < v10)
        {
          std::string::__grow_by_and_replace(&v29, v12, size + v10 - v12, size, size, 0, v10, v9);
          LOBYTE(v14) = *(&v29.__r_.__value_.__s + 23);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_29;
          }

LABEL_41:
          if (v14 != 22)
          {
            v14 = v14;
            *(&v29.__r_.__value_.__s + 23) = (v14 + 1) & 0x7F;
            v19 = &v29;
LABEL_46:
            *(&v19->__r_.__value_.__l.__data_ + v14) = 58;
            v20 = *(a3 + 23);
            if (v20 >= 0)
            {
              v21 = a3;
            }

            else
            {
              v21 = *a3;
            }

            if (v20 >= 0)
            {
              v22 = *(a3 + 23);
            }

            else
            {
              v22 = a3[1];
            }

            if (v21 || !v22)
            {
              if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = 22;
              }

              else
              {
                v23 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v24 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v24 = v29.__r_.__value_.__l.__size_;
              }

              if (v23 - v24 >= v22)
              {
                if (v22)
                {
                  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v25 = &v29;
                  }

                  else
                  {
                    v25 = v29.__r_.__value_.__r.__words[0];
                  }

                  if ((v22 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_76;
                  }

                  v26 = v25 + v24;
                  if (v25 + v24 <= v21 && &v26[v22] > v21)
                  {
                    goto LABEL_76;
                  }

                  v27 = v22;
                  memmove(v26, v21, v22);
                  v28 = v24 + v27;
                  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v29.__r_.__value_.__l.__size_ = v24 + v27;
                  }

                  else
                  {
                    *(&v29.__r_.__value_.__s + 23) = v28 & 0x7F;
                  }

                  v25->__r_.__value_.__s.__data_[v28] = 0;
                }
              }

              else
              {
                std::string::__grow_by_and_replace(&v29, v23, v24 + v22 - v23, v24, v24, 0, v22, v21);
              }

              operator new();
            }

LABEL_76:
            __break(1u);
          }

          v15 = 22;
          goto LABEL_43;
        }

        if (v10)
        {
          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v29;
          }

          else
          {
            v16 = v29.__r_.__value_.__r.__words[0];
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_76;
          }

          v17 = v16 + size;
          if (v16 + size <= v9 && &v17[v10] > v9)
          {
            goto LABEL_76;
          }

          v18 = v10;
          memmove(v17, v9, v10);
          v14 = size + v18;
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            v29.__r_.__value_.__l.__size_ = size + v18;
            v16->__r_.__value_.__s.__data_[v14] = 0;
            LOBYTE(v14) = *(&v29.__r_.__value_.__s + 23);
            if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          *(&v29.__r_.__value_.__s + 23) = v14 & 0x7F;
          v16->__r_.__value_.__s.__data_[v14] = 0;
        }

        LOBYTE(v14) = *(&v29.__r_.__value_.__s + 23);
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

LABEL_29:
        v14 = v29.__r_.__value_.__l.__size_;
        v15 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v29.__r_.__value_.__l.__size_ != v15)
        {
LABEL_44:
          v19 = v29.__r_.__value_.__r.__words[0];
          v29.__r_.__value_.__l.__size_ = v14 + 1;
          goto LABEL_46;
        }

LABEL_43:
        std::string::__grow_by(&v29, v15, 1uLL, v15, v15, 0, 0);
        v14 = v15;
        goto LABEL_44;
      }

      v6 = 22;
      goto LABEL_7;
    }
  }

  v5 = v29.__r_.__value_.__l.__size_;
  v6 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v29.__r_.__value_.__l.__size_ != v6)
  {
LABEL_8:
    v7 = v29.__r_.__value_.__r.__words[0];
    v29.__r_.__value_.__l.__size_ = v5 + 1;
    goto LABEL_10;
  }

LABEL_7:
  std::string::__grow_by(&v29, v6, 1uLL, v6, v6, 0, 0);
  v5 = v6;
  goto LABEL_8;
}

uint64_t webrtc::TurnMessage::GetAttributeValueType(webrtc::TurnMessage *this, int a2)
{
  result = 3;
  if (a2 <= 32801)
  {
    switch(a2)
    {
      case 1:
        return 1;
      case 6:
      case 8:
      case 19:
      case 20:
      case 21:
      case 24:
      case 26:
      case 34:
        return 5;
      case 9:
        result = 6;
        break;
      case 10:
        return 7;
      case 12:
      case 13:
      case 25:
        return result;
      case 18:
      case 22:
      case 32:
        result = 2;
        break;
      default:
        return 0;
    }

    return result;
  }

  if (a2 <= 49240)
  {
    if (a2 > 32807)
    {
      if (a2 == 32808)
      {
        return result;
      }

      if (a2 != 49240)
      {
        return 0;
      }
    }

    else if (a2 != 32802)
    {
      return a2 == 32803;
    }

    return 5;
  }

  if (a2 <= 49244)
  {
    if (a2 == 49241)
    {
      return 7;
    }

    if (a2 != 49244)
    {
      return 0;
    }

    return 5;
  }

  if (a2 == 49245)
  {
    return 4;
  }

  if (a2 != 65280)
  {
    return 0;
  }

  return result;
}

uint64_t webrtc::IceMessage::GetAttributeValueType(webrtc::IceMessage *this, int a2)
{
  result = 3;
  if (a2 > 32802)
  {
    if (a2 <= 49238)
    {
      if (a2 <= 32808)
      {
        if (a2 == 32803)
        {
          return 1;
        }

        v3 = 32808;
LABEL_36:
        if (a2 != v3)
        {
          return 0;
        }

        return result;
      }

      if (a2 != 32809 && a2 != 32810)
      {
        v3 = 49153;
        goto LABEL_36;
      }
    }

    else
    {
      if (a2 <= 49243)
      {
        if (a2 != 49239)
        {
          if (a2 != 49240)
          {
            if (a2 == 49241)
            {
              return 7;
            }

            return 0;
          }

          return 5;
        }

        return result;
      }

      if (a2 == 49244)
      {
        return 5;
      }

      if (a2 != 49245)
      {
        v3 = 65280;
        goto LABEL_36;
      }
    }

    return 4;
  }

  if (a2 <= 19)
  {
    if (a2 > 7)
    {
      if (a2 != 8)
      {
        if (a2 == 9)
        {
          return 6;
        }

        if (a2 == 10)
        {
          return 7;
        }

        return 0;
      }

      return 5;
    }

    if (a2 != 1)
    {
      if (a2 == 6)
      {
        return 5;
      }

      return 0;
    }

    return 1;
  }

  if (a2 <= 35)
  {
    if (a2 != 20 && a2 != 21)
    {
      if (a2 == 32)
      {
        return 2;
      }

      return 0;
    }

    return 5;
  }

  if (a2 != 36)
  {
    if (a2 == 37 || a2 == 32802)
    {
      return 5;
    }

    return 0;
  }

  return result;
}

uint64_t webrtc::StunMessage::Clone@<X0>(webrtc::StunMessage *this@<X0>, void *a2@<X8>)
{
  result = (*(*this + 16))(this);
  if (result)
  {
    operator new[]();
  }

  *a2 = 0;
  return result;
}

void webrtc::StunAddressAttribute::~StunAddressAttribute(void **this)
{
  *this = &unk_2882A0258;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2882A0258;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::StunXorAddressAttribute::~StunXorAddressAttribute(void **this)
{
  *this = &unk_2882A0258;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2882A0258;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::TurnMessage::~TurnMessage(void **this)
{
  webrtc::StunMessage::~StunMessage(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::IceMessage::~IceMessage(void **this)
{
  webrtc::StunMessage::~StunMessage(this);

  JUMPOUT(0x2743DA540);
}

void std::deque<std::unique_ptr<webrtc::StunAttribute>>::pop_front(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v3 = *(a1 + 32), (v4 = *(*(a1 + 8) + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8))) != 0))
  {
    v5 = *(v4 + 8 * (*(a1 + 32) & 0x1FFLL));
    *(v4 + 8 * (v3 & 0x1FF)) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v3 = *(a1 + 32);
      v1 = *(a1 + 40);
    }

    v6 = v3 + 1;
    *(a1 + 32) = v6;
    *(a1 + 40) = v1 - 1;
    if (v6 >= 0x400)
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      *(a1 + 32) -= 512;
    }
  }

  else
  {
    __break(1u);
  }
}

void **std::deque<std::unique_ptr<webrtc::StunAttribute>>::~deque[abi:sn200100](void **result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v3 == v2)
  {
    v3 = result[1];
    result[5] = 0;
    v10 = 0;
    goto LABEL_13;
  }

  v4 = result[4];
  v5 = &v2[v4 >> 9];
  v6 = *v5;
  v7 = (*v5 + 8 * (v4 & 0x1FF));
  v8 = *(v2 + (((result[5] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((result[5] + v4) & 0x1FF);
  if (v7 == v8)
  {
LABEL_11:
    v1[5] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = v1[2];
        v2 = (v1[1] + 8);
        v1[1] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }

LABEL_13:
    if (v10 == 1)
    {
      v11 = 256;
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_19;
      }

      v11 = 512;
    }

    v1[4] = v11;
LABEL_19:
    if (v2 != v3)
    {
      do
      {
        v12 = *v2++;
        operator delete(v12);
      }

      while (v2 != v3);
      v14 = v1[1];
      v13 = v1[2];
      if (v13 != v14)
      {
        v1[2] = &v13[(v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8];
      }
    }

    if (*v1)
    {
      operator delete(*v1);
    }

    return v1;
  }

  while (v7)
  {
    result = *v7;
    *v7 = 0;
    if (result)
    {
      result = (*(*result + 1))(result);
      v6 = *v5;
    }

    if (++v7 - v6 == 4096)
    {
      v9 = v5[1];
      ++v5;
      v6 = v9;
      v7 = v9;
    }

    if (v7 == v8)
    {
      v2 = v1[1];
      v3 = v1[2];
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void webrtc::StunDictionaryView::ApplyDelta(const webrtc::StunByteStringAttribute *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 5);
  v5 = *(a1 + 2);
  if (*(a1 + 5))
  {
    v6 = *(a1 + 2);
  }

  else
  {
    v6 = 0;
  }

  v27[0] = v6;
  v27[1] = v4;
  v29 = v4;
  if (v4 <= 1)
  {
    operator new();
  }

  if (*v5 != 34935)
  {
    *(&v22.__r_.__value_.__s + 23) = 20;
    if (&v22 > "Invalid magic number" || &v22.__r_.__value_.__r.__words[2] + 4 <= "Invalid magic number")
    {
      v7 = *"Invalid magic number";
      strcpy(&v22, "Invalid magic number");
      *v23 = 0;
      v23[4] = 0;
      v23[6] = 0;
      goto LABEL_14;
    }

    goto LABEL_50;
  }

  if ((v4 & 0xFFFE) == 2)
  {
    *(&v22.__r_.__value_.__s + 23) = 22;
    if (&v22 > "Failed to read version" || &v22.__r_.__value_.__r.__words[2] + 6 <= "Failed to read version")
    {
      strcpy(&v22, "Failed to read version");
      *v23 = 0;
      v23[4] = 0;
      v23[6] = 0;
      v7 = *&v22.__r_.__value_.__l.__data_;
LABEL_14:
      *__p = v7;
      *&__p[16] = *(&v22.__r_.__value_.__l + 2);
      *v18 = 0;
      *&v18[3] = *&v23[3];
      v20 = 0;
      v8 = 3;
      goto LABEL_15;
    }

    goto LABEL_50;
  }

  v9 = v5[1];
  v28 = 4;
  if (v9 != 256)
  {
    operator new();
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  if (v4 != 4)
  {
    if ((v4 - 4) <= 1)
    {
      operator new();
    }

    v28 = 6;
    if ((v4 - 6) <= 1)
    {
      operator new();
    }

    v10 = *(v27[0] + 6);
    v28 = 8;
    if ((v4 - 8) <= 1)
    {
      operator new();
    }

    v11 = bswap32(v10) >> 16;
    v12 = *(v27[0] + 8);
    v28 = 10;
    v13 = ((bswap32(v12) >> 16) - 1);
    if (v13 < 7)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = webrtc::StunAttribute::Create(v14);
    if (!v15)
    {
      operator new();
    }

    if (v15[5] != v11)
    {
      operator new();
    }

    if (((*(*v15 + 32))(v15, v27) & 1) == 0)
    {
      operator new();
    }

    if (*(&v25 + 1) != v24)
    {
      operator new();
    }

    v16 = (*(&v25 + 1) - v24) >> 2;
    if (*(&v25 + 1) == v24)
    {
      v16 = 1;
    }

    if (!(v16 >> 61))
    {
      operator new();
    }

LABEL_51:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  LODWORD(v21) = 3;
  *(&v22.__r_.__value_.__s + 23) = 12;
  if (&v22 <= "Empty delta!" && &v22.__r_.__value_.__r.__words[1] + 4 > "Empty delta!")
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  strcpy(&v22, "Empty delta!");
  *v23 = 0;
  v23[4] = 0;
  v23[6] = 0;
  *__p = v22;
  memset(&v22, 0, sizeof(v22));
  *v18 = 0;
  *&v18[3] = *&v23[3];
  v20 = 0;
  std::deque<std::unique_ptr<webrtc::StunAttribute>>::~deque[abi:sn200100](&v24);
  v8 = 3;
LABEL_15:
  LODWORD(v21) = 3;
  if ((__p[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v22, *__p, *&__p[8]);
    v8 = v21;
  }

  else
  {
    v22 = *__p;
  }

  *a2 = v8;
  *(a2 + 8) = v22;
  *(a2 + 32) = *v18;
  *(a2 + 35) = *&v18[3];
  *(a2 + 40) = 0;
  *(a2 + 72) = 0;
  if (v20 == 1)
  {
    std::deque<std::unique_ptr<webrtc::StunAttribute>>::~deque[abi:sn200100](&v19);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

uint64_t **std::map<unsigned short,std::unique_ptr<webrtc::StunAttribute>>::erase[abi:sn200100](uint64_t **a1, unsigned __int16 *a2)
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
      v8 = *(v7 + 16);
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v6 = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
    if (v6 == v4 || v5 < *(v6 + 16))
    {
      return 0;
    }

    else
    {
      v11 = v6[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v13 = v6;
        do
        {
          v12 = v13[2];
          v14 = *v12 == v13;
          v13 = v12;
        }

        while (!v14);
      }

      if (*a1 == v6)
      {
        *a1 = v12;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(result, v6);
      v15 = v6[5];
      v6[5] = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      operator delete(v6);
      return 1;
    }
  }

  return result;
}

uint64_t webrtc::StunDictionaryWriter::CreateDelta@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*this != 1 && *(this + 24) != *(this + 32))
  {
    operator new[]();
  }

  *a2 = 0;
  return this;
}

double webrtc::UDPPort::UDPPort(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, char a5)
{
  v8 = webrtc::Port::Port(a1, a2, a3, 0, 0, 1);
  *v8 = &unk_2882A0478;
  *(v8 + 232) = &unk_2882A05F0;
  *(v8 + 824) = 0u;
  *(v8 + 816) = v8 + 824;
  *(v8 + 848) = 0u;
  *(v8 + 840) = v8 + 848;
  *(v8 + 872) = 0u;
  *(v8 + 864) = v8 + 872;
  *(v8 + 888) = a2[5];
  *(v8 + 904) = 0u;
  *(v8 + 896) = v8 + 904;
  *(v8 + 944) = v8 + 920;
  *(v8 + 920) = &unk_2882A07F0;
  *(v8 + 928) = v8;
  *(v8 + 952) = a4;
  *(v8 + 960) = 0u;
  *(v8 + 976) = 0;
  *(v8 + 980) = 10000;
  result = NAN;
  *(v8 + 984) = -1;
  *(v8 + 992) = 0;
  *(v8 + 1008) = 0;
  *(v8 + 1000) = 0;
  *(v8 + 1016) = a5;
  return result;
}

double webrtc::UDPPort::UDPPort(uint64_t a1, uint64_t *a2, int a3, __int16 a4, __int16 a5, char a6)
{
  v8 = webrtc::Port::Port(a1, a2, a3, a4, a5, 0);
  *v8 = &unk_2882A0478;
  *(v8 + 232) = &unk_2882A05F0;
  *(v8 + 824) = 0u;
  *(v8 + 816) = v8 + 824;
  *(v8 + 848) = 0u;
  *(v8 + 840) = v8 + 848;
  *(v8 + 872) = 0u;
  *(v8 + 864) = v8 + 872;
  *(v8 + 888) = a2[5];
  *(v8 + 904) = 0u;
  *(v8 + 896) = v8 + 904;
  *(v8 + 944) = v8 + 920;
  *(v8 + 920) = &unk_2882A0838;
  *(v8 + 928) = v8;
  *(v8 + 952) = 0;
  *(v8 + 968) = 0;
  *(v8 + 960) = 0;
  *(v8 + 976) = 0;
  *(v8 + 980) = 10000;
  result = NAN;
  *(v8 + 984) = -1;
  *(v8 + 992) = 0;
  *(v8 + 1008) = 0;
  *(v8 + 1000) = 0;
  *(v8 + 1016) = a6;
  return result;
}

uint64_t webrtc::UDPPort::Init(webrtc::UDPPort *this)
{
  if ((*(*this + 312))(this) <= 899)
  {
    v2 = -1;
  }

  else
  {
    v2 = 120000;
  }

  *(this + 246) = v2;
  if ((*(*this + 64))(this))
  {
LABEL_8:
    operator new();
  }

  v3 = (*(*this + 216))(this);
  v4 = (*(*this + 24))(this);
  webrtc::Network::GetBestIP(v4, v23);
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  v28 = &unk_28828CE50;
  v33 = 0;
  v29 = v24;
  v30 = v25;
  v32 = 0;
  v31 = 0;
  v5 = (*(*v3 + 16))(v3, __p, *(this + 292), *(this + 293));
  *(this + 119) = v5;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
    v5 = *(this + 119);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else if (v5)
  {
LABEL_7:
    v20.n128_u64[0] = this;
    v22 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::UDPPort::Init(void)::$_0 &,webrtc::AsyncPacketSocket *,webrtc::ReceivedIpPacket const&>;
    v21 = absl::internal_any_invocable::LocalManagerTrivial;
    webrtc::AsyncPacketSocket::RegisterReceivedPacketCallback(v5, &v20, v6, v7, v8, v9, v10, v11);
    v21(1, &v20, &v20);
    goto LABEL_8;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    return 0;
  }

  (*(*this + 176))(__p, this);
  webrtc::webrtc_logging_impl::Log("\r\n\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void *webrtc::UDPPort::OnReadyToSend(void *this, webrtc::AsyncPacketSocket *a2)
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

void webrtc::UDPPort::OnLocalAddressReady(webrtc::UDPPort **this, webrtc::AsyncPacketSocket *a2, void **a3)
{
  __dst[0] = 0;
  __dst[1] = 0;
  memset(v23, 0, sizeof(v23));
  v21 = 0;
  v22 = &unk_28828CE50;
  if (__dst != a3)
  {
    if (*(a3 + 23) < 0)
    {
      v4 = a3;
      std::string::__assign_no_alias<true>(__dst, *a3, a3[1]);
      a3 = v4;
    }

    else
    {
      *__dst = *a3;
      v21 = a3[2];
    }
  }

  *v23 = *(a3 + 8);
  *&v23[4] = *(a3 + 36);
  v24 = *(a3 + 28);
  v26 = *(a3 + 64);
  v25 = *(a3 + 15);
  webrtc::UDPPort::MaybeSetDefaultLocalAddress(this, __dst);
  memset(&__p, 0, sizeof(__p));
  v14 = &unk_28828CE50;
  v19 = 0;
  memset(v27, 0, sizeof(v27));
  v15 = 0;
  v16 = *&v27[4];
  v17 = 0;
  v18 = 0;
  webrtc::Port::AddAddress(this, __dst, __dst, &__p, &webrtc::UDP_PROTOCOL_NAME, 3uLL, "", 0, "", 0, 0, 126, 0, "", 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (this[104])
    {
LABEL_7:
      v5 = this[102];
      if (v5 != (this + 103))
      {
        do
        {
          v6 = *(v5 + 1);
          v7 = v5;
          if (v6)
          {
            do
            {
              v8 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v8 = *(v7 + 2);
              v9 = *v8 == v7;
              v7 = v8;
            }

            while (!v9);
          }

          webrtc::UDPPort::SendStunBindingRequest(this, v5 + 4);
          v5 = v8;
        }

        while (v8 != (this + 103));
      }

      goto LABEL_22;
    }
  }

  else if (this[104])
  {
    goto LABEL_7;
  }

  if (*(this + 190) != 1 && (this[122] & 1) == 0 && !(this[110] + this[107]))
  {
    *(this + 976) = 1;
    v10 = this[53];
    for (this[55] = v10; v10 != (this + 52); v10 = this[55])
    {
      v12 = *(v10 + 2);
      v11 = (v10 + 16);
      this[55] = *(v11 - 1);
      v12(v11, this);
    }
  }

LABEL_22:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
  }
}

void webrtc::UDPPort::~UDPPort(webrtc::UDPPort *this)
{
  *this = &unk_2882A0478;
  *(this + 29) = &unk_2882A05F0;
  if ((*(this + 744) & 1) == 0)
  {
    v2 = *(this + 119);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 121);
  *(this + 121) = 0;
  if (v3)
  {
    std::__tree<std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>,std::__map_value_compare<webrtc::SocketAddress,std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>,std::less<webrtc::SocketAddress>,true>,std::allocator<std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>>>::destroy(*(v3 + 48));
    v4 = *(v3 + 32);
    if (v4 == v3 + 8)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    MEMORY[0x2743DA540](v3, 0x1020C40460B878DLL);
  }

  v5 = *(this + 118);
  if (v5 == (this + 920))
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(this + 896, *(this + 113));
  std::__tree<webrtc::SocketAddress>::destroy(this + 864, *(this + 109));
  std::__tree<webrtc::SocketAddress>::destroy(this + 840, *(this + 106));
  std::__tree<webrtc::SocketAddress>::destroy(this + 816, *(this + 103));

  webrtc::Port::~Port(this);
}

{
  webrtc::UDPPort::~UDPPort(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::UDPPort::~UDPPort(webrtc::UDPPort *this)
{
  webrtc::UDPPort::~UDPPort((this - 232));
}

{
  webrtc::UDPPort::~UDPPort((this - 232));

  JUMPOUT(0x2743DA540);
}

void webrtc::UDPPort::PrepareAddress(webrtc::UDPPort *this)
{
  if ((*(**(this + 119) + 56))(*(this + 119)) == 2)
  {
    (*(**(this + 119) + 16))(__p);
    webrtc::UDPPort::OnLocalAddressReady(this, v2, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t webrtc::UDPPort::CreateConnection(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 55);
  v5 = *(a2 + 40);
  if ((v4 & 0x80u) == 0)
  {
    v6 = a2 + 32;
  }

  else
  {
    v6 = *(a2 + 32);
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if ((*(*a1 + 72))(a1, v6, v7))
  {
    webrtc::Network::GetBestIP(a1[72], &v11);
    v8 = *(a2 + 112);
    if (v8 == v12 && (v8 != 30 || ((v13 & 0xC0FF) == 33022) == ((*(a2 + 116) & 0xC0FFLL) == 33022)))
    {
      v9 = (*(*a1 + 136))(a1);
      if (*v9 != v9[1])
      {
        operator new();
      }
    }
  }

  return 0;
}

uint64_t webrtc::UDPPort::SendTo(webrtc::UDPPort *this, const void *a2, uint64_t a3, const webrtc::SocketAddress *a4, const webrtc::AsyncSocketPacketOptions *a5)
{
  v28 = *a5;
  v29 = *(a5 + 4);
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v10 = *(a5 + 3);
  v9 = *(a5 + 4);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = *(a5 + 4);
  v33 = *(a5 + 3);
  v34 = v11;
  v35 = *(a5 + 5);
  v36 = *(a5 + 12);
  v37 = *(a5 + 52);
  v12 = (*(*this + 128))(this);
  if (v12 < 4)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 0;
  }

  DWORD2(v34) = v13;
  WORD6(v34) = *((*(*this + 24))(this) + 286);
  BYTE14(v34) = 1;
  v14 = (*(**(this + 119) + 40))(*(this + 119), a2, a3, a4, &v28);
  if ((v14 & 0x80000000) != 0)
  {
    *(this + 240) = (*(**(this + 119) + 80))(*(this + 119));
    v15 = *(this + 241);
    if (v15 <= 4)
    {
      *(this + 241) = v15 + 1;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        (*(*this + 176))(&v26, this);
        webrtc::SocketAddress::ToSensitiveNameAndAddressString(a4, &__p);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
        if (v25 < 0)
        {
          operator delete(__p);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }
      }
    }
  }

  else
  {
    *(this + 241) = 0;
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v14;
}

uint64_t webrtc::UDPPort::UpdateNetworkCost(webrtc::UDPPort *this)
{
  webrtc::Port::UpdateNetworkCost(this);
  result = (*(*this + 312))(this);
  if (result <= 899)
  {
    v3 = -1;
  }

  else
  {
    v3 = 120000;
  }

  *(this + 246) = v3;
  return result;
}

uint64_t webrtc::UDPPort::SetOption(uint64_t a1, int a2, int a3)
{
  if (a2 == 5)
  {
    *(a1 + 988) = a3;
  }

  return (*(**(a1 + 952) + 72))();
}

void *webrtc::UDPPort::OnReadPacket(const void **a1, uint64_t *a2)
{
  v4 = a1[103];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a2[4];
  v6 = a1 + 103;
  v7 = a1 + 103;
  do
  {
    v8 = webrtc::SocketAddress::operator<(v4 + 4, v5);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v4;
    }

    v4 = v4[v9];
  }

  while (v4);
  if (v7 == v6 || (webrtc::SocketAddress::operator<(v5, v7 + 4) & 1) != 0)
  {
LABEL_11:
    v10 = (*(*a1 + 11))(a1, a2[4]);
    if (v10)
    {

      return webrtc::Connection::OnReadPacket(v10, a2);
    }

    else
    {

      return webrtc::Port::OnReadPacket(a1, a2, 0);
    }
  }

  else
  {
    v12 = *a2;
    v13 = a2[1];

    return webrtc::StunRequestManager::CheckResponse((a1 + 111), v12, v13);
  }
}

BOOL webrtc::UDPPort::SupportsProtocol(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a3 != 3)
  {
    return 0;
  }

  return *a2 == webrtc::UDP_PROTOCOL_NAME && *(a2 + 2) == 112;
}

uint64_t webrtc::UDPPort::GetStunStats(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(result + 1008);
  *a2 = *(result + 992);
  *(a2 + 16) = v3;
  if ((v2 & 1) == 0)
  {
    *(a2 + 24) = 1;
  }

  return result;
}

double webrtc::UDPPort::MaybeSetDefaultLocalAddress(webrtc::UDPPort *this, webrtc::SocketAddress *a2)
{
  v2 = *(a2 + 8);
  if (v2 == 2)
  {
    if (*(a2 + 9))
    {
      return *&v3;
    }
  }

  else
  {
    if (v2 != 30)
    {
      return *&v3;
    }

    v3 = *MEMORY[0x277D85EE8];
    *(&v12[1] + 4) = *MEMORY[0x277D85EE8];
    if (*(a2 + 36) != *(&v12[1] + 4) || *(a2 + 44) != *(&v12[2] + 4))
    {
      *&v3 = webrtc::kV4MappedPrefix;
      if (*(a2 + 36) != webrtc::kV4MappedPrefix || *(a2 + 44) != *(&webrtc::kV4MappedPrefix + 1))
      {
        return *&v3;
      }
    }
  }

  if (*(this + 1016) == 1 && *((*(*this + 24))() + 112))
  {
    memset(&v12[1], 0, 20);
    v12[0] = &unk_28828CE50;
    v8 = (*(*this + 24))(this);
    v9 = (*(**(v8 + 112) + 16))(*(v8 + 112), *(a2 + 8), v12);
    v10 = v12[1];
    if (!LODWORD(v12[1]))
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        *(a2 + 1) = 0;
        v10 = v12[1];
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      *(a2 + 64) = 0;
      *(a2 + 8) = v10;
      *&v3 = *(&v12[1] + 4);
      *(a2 + 36) = *(&v12[1] + 4);
      *(a2 + 15) = 0;
    }
  }

  return *&v3;
}

uint64_t webrtc::UDPPort::PostAddAddress(uint64_t this)
{
  if (*(this + 760) != 1)
  {
    v1 = this;
    if ((*(this + 976) & 1) == 0)
    {
      v2 = *(this + 856);
      v3 = v2 + *(this + 880);
      if (*(this + 832) == v3)
      {
        *(this + 976) = 1;
        if (v2 || !v3 || (*(*this + 64))(this))
        {
          this = v1[53];
          for (v1[55] = this; this != v1 + 52; this = v1[55])
          {
            v5 = *(this + 16);
            v4 = this + 16;
            v1[55] = *(v4 - 8);
            v5(v4, v1);
          }
        }

        else
        {
          this = v1[60];
          for (v1[62] = this; this != v1 + 59; this = v1[62])
          {
            v7 = *(this + 16);
            v6 = this + 16;
            v1[62] = *(v6 - 8);
            v7(v6, v1);
          }
        }
      }
    }
  }

  return this;
}

uint64_t webrtc::UDPPort::OnSentPacket(webrtc::UDPPort *this, webrtc::AsyncPacketSocket *a2, const webrtc::SentPacketInfo *a3)
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

void *webrtc::UDPPort::SendStunBindingRequest(webrtc::UDPPort *this, void **a2)
{
  v46[5] = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || (a2[8] & 1) != 0)
  {
    goto LABEL_8;
  }

  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v4 = a2[1];
  }

  if (!v4)
  {
LABEL_8:
    result = (*(**(this + 119) + 56))(*(this + 119));
    if (result == 2)
    {
      webrtc::Network::GetBestIP(*(this + 72), __p);
      v6 = *(a2 + 8);
      if (v6 == LODWORD(__p[1]) && (v6 != 30 || ((WORD2(__p[1]) & 0xC0FF) == 33022) == ((*(a2 + 36) & 0xC0FF) == 33022)))
      {
        operator new();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        (*(*this + 176))(__p, this);
        webrtc::webrtc_logging_impl::Log("\r\n\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }
      }

      return webrtc::UDPPort::OnStunBindingOrResolveRequestFailed(this, a2, 0, "STUN server address is incompatible.", 0x24uLL);
    }
  }

  else
  {
    if (!*(this + 121))
    {
      operator new();
    }

    if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      (*(*this + 176))(__p, this);
      webrtc::SocketAddress::ToSensitiveString(a2, &v30);
      webrtc::webrtc_logging_impl::Log("\r\n\t\n", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v21 = *(this + 121);
    (*(*this + 24))(this);
    v23 = v21 + 6;
    v22 = v21[6];
    if (!v22)
    {
      goto LABEL_32;
    }

    v24 = v21 + 6;
    do
    {
      v25 = webrtc::SocketAddress::operator<(v22 + 4, a2);
      if (v25)
      {
        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      if (!v25)
      {
        v24 = v22;
      }

      v22 = v22[v26];
    }

    while (v22);
    if (v24 == v23 || (result = webrtc::SocketAddress::operator<(a2, v24 + 4), result))
    {
LABEL_32:
      (*(**v21 + 40))(v46);
      __p[0] = 0;
      __p[1] = 0;
      memset(v41, 0, sizeof(v41));
      v39 = 0;
      v40 = &unk_28828CE50;
      v27 = v46[0];
      if (__p != a2)
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__assign_no_alias<true>(__p, *a2, a2[1]);
        }

        else
        {
          *__p = *a2;
          v39 = a2[2];
        }

        v27 = v46[0];
      }

      *v41 = *(a2 + 8);
      *&v41[4] = *(a2 + 36);
      v42 = *(a2 + 28);
      v44 = *(a2 + 64);
      v43 = *(a2 + 15);
      v46[0] = 0;
      v45 = v27;
      v28 = *v23;
      if (*v23)
      {
        while (1)
        {
          while (1)
          {
            v29 = v28;
            if (!webrtc::SocketAddress::operator<(__p, v28 + 4))
            {
              break;
            }

            v28 = *v29;
            v23 = v29;
            if (!*v29)
            {
              goto LABEL_45;
            }
          }

          if (!webrtc::SocketAddress::operator<(v29 + 4, __p))
          {
            break;
          }

          v23 = v29 + 1;
          v28 = v29[1];
          if (!v28)
          {
            goto LABEL_45;
          }
        }

        if (*v23)
        {
          v30 = v21;
          v31 = 0uLL;
          v32 = 0;
          memset(v34, 0, sizeof(v34));
          v33 = &unk_28828CE50;
          if (&v31 != a2)
          {
            if (*(a2 + 23) < 0)
            {
              std::string::__assign_no_alias<true>(&v31, *a2, a2[1]);
            }

            else
            {
              v31 = *a2;
              v32 = a2[2];
            }
          }

          *v34 = *(a2 + 8);
          *&v34[4] = *(a2 + 36);
          v35 = *(a2 + 28);
          v37 = *(a2 + 64);
          v36 = *(a2 + 15);
          operator new();
        }
      }

LABEL_45:
      operator new();
    }
  }

  return result;
}

void *webrtc::UDPPort::OnStunBindingOrResolveRequestFailed(void *result, webrtc::SocketAddress *this, int a3, _BYTE *a4, size_t a5)
{
  v6 = result;
  if (!a3)
  {
    goto LABEL_53;
  }

  memset(&v48, 0, sizeof(v48));
  if (&v48 <= "stun:" && v48.__r_.__value_.__r.__words + 5 > "stun:")
  {
    goto LABEL_85;
  }

  qmemcpy(&v48, "stun:", 5);
  *(&v48.__r_.__value_.__s + 23) = 5;
  result = webrtc::SocketAddress::ToString(this, __p);
  v10 = (v43 & 0x80u) == 0 ? __p : __p[0];
  v11 = (v43 & 0x80u) == 0 ? v43 : __p[1];
  if (!v10 && v11 != 0)
  {
    goto LABEL_85;
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = 22;
  }

  else
  {
    v13 = (v48.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v48.__r_.__value_.__l.__size_;
  }

  if (v13 - size < v11)
  {
    std::string::__grow_by_and_replace(&v48, v13, size + v11 - v13, size, size, 0, v11, v10);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!v11)
  {
LABEL_33:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v48;
  }

  else
  {
    v15 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v11 & 0x8000000000000000) != 0 || (result = (v15->__r_.__value_.__r.__words + size), v15 + size <= v10) && result + v11 > v10)
  {
LABEL_85:
    __break(1u);
    return result;
  }

  v16 = v11;
  memmove(result, v10, v11);
  v17 = size + v16;
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v48.__r_.__value_.__s + 23) = v17 & 0x7F;
    v15->__r_.__value_.__s.__data_[v17] = 0;
    goto LABEL_33;
  }

  v48.__r_.__value_.__l.__size_ = size + v16;
  v15->__r_.__value_.__s.__data_[v17] = 0;
  if (v43 < 0)
  {
LABEL_34:
    operator delete(__p[0]);
  }

LABEL_35:
  (*(*v6[119] + 16))(v39);
  v18 = &v41;
  webrtc::SocketAddress::HostAsSensitiveURIString(v39, &v41);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v41.__r_.__value_.__l.__size_;
    v18 = v41.__r_.__value_.__r.__words[0];
  }

  (*(*v6[119] + 16))(&v36);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v48;
  }

  else
  {
    v21 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v48.__r_.__value_.__l.__size_;
  }

  webrtc::IceCandidateErrorEvent::IceCandidateErrorEvent(__p, v18, v19, v38, v21, v22, a3, v20, a4, a5);
  v23 = v6[46];
  for (v6[48] = v23; v23 != v6 + 45; v23 = v6[48])
  {
    v25 = v23[2];
    v24 = v23 + 2;
    v6[48] = *(v24 - 1);
    v25(v24, v6, __p);
  }

  if (v47 < 0)
  {
    operator delete(v46);
    if ((v45 & 0x80000000) == 0)
    {
LABEL_48:
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_66;
    }
  }

  else if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_49:
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_67;
  }

LABEL_66:
  operator delete(__p[0]);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_68:
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((v40 & 0x80000000) == 0)
    {
LABEL_52:
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_70:
      operator delete(v48.__r_.__value_.__l.__data_);
      v26 = v6[109];
      if (v26)
      {
        goto LABEL_54;
      }

LABEL_71:
      result = std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress const&>((v6 + 108), this);
      if (*(v6 + 190) != 1 && (v6[122] & 1) == 0)
      {
        v30 = v6[107];
        v31 = v30 + v6[110];
        if (v6[104] == v31)
        {
          *(v6 + 976) = 1;
          if (v30 || !v31 || (*(*v6 + 64))(v6))
          {
            result = v6[53];
            for (v6[55] = result; result != v6 + 52; result = v6[55])
            {
              v33 = result[2];
              v32 = result + 2;
              v6[55] = *(v32 - 1);
              v33(v32, v6);
            }
          }

          else
          {
            result = v6[60];
            for (v6[62] = result; result != v6 + 59; result = v6[62])
            {
              v35 = result[2];
              v34 = result + 2;
              v6[62] = *(v34 - 1);
              v35(v34, v6);
            }
          }
        }
      }

      return result;
    }

    goto LABEL_69;
  }

LABEL_67:
  operator delete(v36);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_68;
  }

LABEL_51:
  if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_69:
  operator delete(v39[0]);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_53:
  v26 = v6[109];
  if (!v26)
  {
    goto LABEL_71;
  }

LABEL_54:
  v27 = (v6 + 109);
  do
  {
    v28 = webrtc::SocketAddress::operator<(v26 + 4, this);
    if (v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    if (!v28)
    {
      v27 = v26;
    }

    v26 = v26[v29];
  }

  while (v26);
  if (v27 == v6 + 109)
  {
    goto LABEL_71;
  }

  result = webrtc::SocketAddress::operator<(this, v27 + 4);
  if (result)
  {
    goto LABEL_71;
  }

  return result;
}

void webrtc::UDPPort::OnSendPacket(webrtc::UDPPort *this, const void *a2, uint64_t a3, webrtc::StunRequest *a4)
{
  v20 = (*(*this + 272))(this);
  v21 = 0;
  v22 = -1;
  v23 = -1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = -1;
  v28 = -1;
  v29 = 0;
  v30 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = 0;
  v31 = 4;
  v8 = (*(*this + 128))(this);
  if (v8 < 4)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  v32 = v9;
  v33 = *((*(*this + 24))(this) + 286);
  v34 = 1;
  if (((*(**(this + 119) + 40))(*(this + 119), a2, a3, a4 + 64, &v20) & 0x80000000) != 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    v10 = (*(**(this + 119) + 80))(*(this + 119));
    webrtc::SocketAddress::ToSensitiveNameAndAddressString((a4 + 64), &__p);
    v39 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc";
    v40 = 4843;
    v41 = 1;
    v42 = v10;
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v11, v12, v13, v14, v15, v16, v17, &v39);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  ++*(this + 248);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

webrtc::UDPPort *webrtc::StunPort::PrepareAddress(webrtc::UDPPort *this)
{
  v1 = *(this + 102);
  v2 = (this + 824);
  if (v1 != (this + 824))
  {
    v3 = this;
    do
    {
      v4 = v1[1];
      v5 = v1;
      if (v4)
      {
        do
        {
          v6 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v6 = v5[2];
          v7 = *v6 == v5;
          v5 = v6;
        }

        while (!v7);
      }

      this = webrtc::UDPPort::SendStunBindingRequest(v3, v1 + 4);
      v1 = v6;
    }

    while (v6 != v2);
  }

  return this;
}

void webrtc::StunPort::~StunPort(webrtc::StunPort *this)
{
  webrtc::UDPPort::~UDPPort(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::StunPort::~StunPort(webrtc::StunPort *this)
{
  webrtc::UDPPort::~UDPPort((this - 232));
}

{
  webrtc::UDPPort::~UDPPort((this - 232));

  JUMPOUT(0x2743DA540);
}

void std::__tree<std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>,std::__map_value_compare<webrtc::SocketAddress,std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>,std::less<webrtc::SocketAddress>,true>,std::allocator<std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>,std::__map_value_compare<webrtc::SocketAddress,std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>,std::less<webrtc::SocketAddress>,true>,std::allocator<std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>,std::__map_value_compare<webrtc::SocketAddress,std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>,std::less<webrtc::SocketAddress>,true>,std::allocator<std::__value_type<webrtc::SocketAddress,std::unique_ptr<webrtc::AsyncDnsResolverInterface>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 13);
    *(a1 + 13) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void webrtc::StunBindingRequest::~StunBindingRequest(void **this)
{
  *this = &unk_2882A07A8;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_2882A08C8;
  v2 = this[5];
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = this[2];
  this[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_2882A07A8;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_2882A08C8;
  v2 = this[5];
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = this[2];
  this[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StunBindingRequest::OnResponse(webrtc::StunBindingRequest *this, webrtc::StunMessage *a2)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  if (v3 == v4)
  {
LABEL_15:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_154;
    }

    goto LABEL_18;
  }

  v5 = *(a2 + 1);
  while (1)
  {
    v6 = *v5;
    if (*(*v5 + 8) == 1)
    {
      break;
    }

    if (++v5 == v4)
    {
      while (1)
      {
        v6 = *v3;
        if (*(*v3 + 8) == 32)
        {
          goto LABEL_8;
        }

        if (++v3 == v4)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_8:
  v7 = *(v6 + 48);
  if (v7 != 2 && v7 != 30)
  {
    v13 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
    if (v13)
    {
      goto LABEL_154;
    }

LABEL_18:
    webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/stun_port.cc");
    v21 = webrtc::g_clock;
    if (webrtc::g_clock)
    {
      goto LABEL_155;
    }

    goto LABEL_19;
  }

  v9 = *(v6 + 72);
  v76 = 0;
  v75 = 0uLL;
  *&v78[16] = 0;
  v77 = &unk_28828CE50;
  *v78 = 0uLL;
  v10 = *(v6 + 48);
  v81 = 0;
  *v78 = v10;
  *&v78[4] = *(v6 + 52);
  v80 = 0;
  v79 = v9;
  v11 = *(this + 7);
  if (webrtc::g_clock)
  {
    LODWORD(v12) = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v12 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v24 = v12 / 1000000 - *(this + 6);
  ++*(v11 + 249);
  v25.f64[0] = v24;
  v25.f64[1] = (v24 * v24);
  *(v11 + 125) = vaddq_f64(*(v11 + 125), v25);
  v26 = v11[106];
  if (v26)
  {
    v27 = (v11 + 106);
    do
    {
      v28 = webrtc::SocketAddress::operator<(v26 + 4, this + 8);
      if (v28)
      {
        v29 = 1;
      }

      else
      {
        v29 = 0;
      }

      if (!v28)
      {
        v27 = v26;
      }

      v26 = v26[v29];
    }

    while (v26);
    if (v27 != (v11 + 106) && !webrtc::SocketAddress::operator<(this + 8, v27 + 4))
    {
      goto LABEL_153;
    }
  }

  std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress const&>((v11 + 105), this + 8);
  v30 = ((*v11)[8])(v11);
  if (v30)
  {
    (*(*v11[119] + 16))(v97);
    if (webrtc::SocketAddress::operator==(&v75, v97))
    {
      v31 = *(((*v11)[3])(v11) + 120);
      if (!v31 || !(*(*v31 + 16))(v31))
      {
LABEL_51:
        v36 = 0;
        if ((v98 & 0x80000000) == 0)
        {
LABEL_48:
          if (!v36)
          {
            goto LABEL_136;
          }

LABEL_53:
          (*(*v11[119] + 16))(&v91);
          webrtc::UDPPort::MaybeSetDefaultLocalAddress(v11, &v91);
          if (v42)
          {
            goto LABEL_61;
          }

          v43 = v92;
          v83 = 0;
          v84 = 0;
          __p = 0;
          v85 = &unk_28828CE50;
          v90 = 0;
          if (v92 == 30)
          {
            v86 = 30;
            v87 = *MEMORY[0x277D85EE8];
            v89 = 0;
            v88 = 0;
            if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_57;
            }
          }

          else if (v92 == 2)
          {
            v86 = 2;
            v87 = 0uLL;
            v89 = 0;
            v88 = 0;
            if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_57:
              memset(&v91, 0, sizeof(v91));
              v92 = v43;
              v93 = v87;
              v94 = 0;
              v96 = 0;
              v95 = 0;
              goto LABEL_61;
            }
          }

          else
          {
            v43 = 0;
            memset(&v99[8], 0, 20);
            v86 = 0;
            v87 = *&v99[12];
            v88 = 0;
            v89 = 0;
            if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_57;
            }
          }

          std::string::__assign_no_alias<false>(&v91, &__p, 0);
          v92 = v86;
          v93 = v87;
          v94 = v88;
          v96 = v90;
          v95 = v89;
          if (SHIBYTE(v84) < 0)
          {
            operator delete(__p);
          }

LABEL_61:
          memset(v99, 0, 24);
          if (v99 <= "stun:" && &v99[5] > "stun:")
          {
            goto LABEL_161;
          }

          qmemcpy(v99, "stun:", 5);
          v99[23] = 5;
          v44 = *(this + 87);
          v45 = v44 >= 0 ? (this + 64) : *(this + 8);
          v46 = v44 >= 0 ? *(this + 87) : *(this + 9);
          if (!v45 && v46)
          {
            goto LABEL_161;
          }

          if (v46 > 0x11)
          {
            if (v46 - 0x7FFFFFFFFFFFFFF2 > 0x800000000000001ELL)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (v46)
          {
            if (&v99[5] <= v45 && &v99[v46 + 5] > v45)
            {
              goto LABEL_161;
            }

            memmove(&v99[5], v45, v46);
            if ((v99[23] & 0x80000000) != 0)
            {
              *&v99[8] = v46 + 5;
            }

            else
            {
              v99[23] = v46 + 5;
            }

            v99[v46 + 5] = 0;
            LODWORD(v48) = v99[23];
            v47 = *&v99[8];
          }

          else
          {
            v47 = 0;
            LODWORD(v48) = 5;
          }

          v49 = v48;
          v48 = v48;
          if ((v48 & 0x80u) == 0)
          {
            v50 = 22;
          }

          else
          {
            v50 = (*&v99[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v48 & 0x80u) != 0)
          {
            v48 = v47;
          }

          if (v50 == v48)
          {
            std::string::__grow_by_and_replace(v99, v50, 1uLL, v50, v50, 0, 1uLL, ":");
          }

          else
          {
            v51 = *v99;
            if (v49 >= 0)
            {
              v51 = v99;
            }

            v52 = &v51[v48];
            if (&v51[v48] <= ":" && v52 + 1 > ":")
            {
              goto LABEL_161;
            }

            *v52 = 58;
            v53 = v48 + 1;
            if ((v99[23] & 0x80000000) != 0)
            {
              *&v99[8] = v53;
            }

            else
            {
              v99[23] = v53 & 0x7F;
            }

            v51[v53] = 0;
          }

          v54 = *(this + 60);
          v83 = 0;
          v84 = 0x1600000000000000;
          __p = 0;
          v55 = absl::numbers_internal::FastIntToBuffer(v54, &__p, v37);
          v56 = v55 - &__p;
          if ((SHIBYTE(v84) & 0x8000000000000000) != 0)
          {
            if (v83 < v56)
            {
              goto LABEL_162;
            }

            p_p = __p;
            v83 = v55 - &__p;
          }

          else
          {
            if (v56 > SHIBYTE(v84))
            {
              goto LABEL_162;
            }

            HIBYTE(v84) = v55 - &__p;
            p_p = &__p;
          }

          p_p[v56] = 0;
          if (v84 >= 0)
          {
            v41 = &__p;
          }

          else
          {
            v41 = __p;
          }

          if (v84 >= 0)
          {
            v40 = HIBYTE(v84);
          }

          else
          {
            v40 = v83;
          }

          if (v41 || !v40)
          {
            if (v99[23] >= 0)
            {
              v58 = 22;
            }

            else
            {
              v58 = (*&v99[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if (v99[23] >= 0)
            {
              v59 = v99[23];
            }

            else
            {
              v59 = *&v99[8];
            }

            if (v58 - v59 < v40)
            {
              std::string::__grow_by_and_replace(v99, v58, v59 + v40 - v58, v59, v59, 0, v40, v41);
              if ((SHIBYTE(v84) & 0x80000000) == 0)
              {
                goto LABEL_131;
              }

              goto LABEL_120;
            }

            if (!v40)
            {
              goto LABEL_130;
            }

            if (v99[23] >= 0)
            {
              v60 = v99;
            }

            else
            {
              v60 = *v99;
            }

            if ((v40 & 0x8000000000000000) == 0)
            {
              v61 = &v60[v59];
              if (&v60[v59] > v41 || &v61[v40] <= v41)
              {
                v62 = v40;
                memmove(v61, v41, v40);
                v63 = v59 + v62;
                if ((v99[23] & 0x80000000) != 0)
                {
                  *&v99[8] = v59 + v62;
                  v60[v63] = 0;
                  if ((SHIBYTE(v84) & 0x80000000) == 0)
                  {
LABEL_131:
                    (*(*v11[119] + 16))(&__p);
                    v64 = v99[23];
                    v65 = v99;
                    if (v99[23] < 0)
                    {
                      v64 = *&v99[8];
                      v65 = *v99;
                    }

                    webrtc::Port::AddAddress(v11, &v75, &__p, &v91, &webrtc::UDP_PROTOCOL_NAME, 3uLL, "", 0, "", 0, 1, 100, 0, v65, v64, 0);
                    if (SHIBYTE(v84) < 0)
                    {
                      operator delete(__p);
                      if ((v99[23] & 0x80000000) == 0)
                      {
LABEL_135:
                        if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_136;
                        }

                        goto LABEL_147;
                      }
                    }

                    else if ((v99[23] & 0x80000000) == 0)
                    {
                      goto LABEL_135;
                    }

                    operator delete(*v99);
                    if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_136;
                    }

LABEL_147:
                    operator delete(v91.__r_.__value_.__l.__data_);
                    if (*(v11 + 190) != 1)
                    {
                      goto LABEL_137;
                    }

                    goto LABEL_153;
                  }

LABEL_120:
                  operator delete(__p);
                  goto LABEL_131;
                }

                v99[23] = v63 & 0x7F;
                v60[v63] = 0;
LABEL_130:
                if ((SHIBYTE(v84) & 0x80000000) == 0)
                {
                  goto LABEL_131;
                }

                goto LABEL_120;
              }
            }
          }

LABEL_161:
          __break(1u);
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v38, v39, v40, v41, v74);
LABEL_162:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_52:
        operator delete(v97[0]);
        if (!v36)
        {
          goto LABEL_136;
        }

        goto LABEL_53;
      }
    }
  }

  v32 = ((*v11)[17])(v11);
  v34 = *v32;
  v33 = v32[1];
  if (*v32 == v33)
  {
LABEL_46:
    if ((v30 & 1) == 0)
    {
      goto LABEL_53;
    }

    v36 = 1;
    if ((v98 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_52;
  }

  v35 = v32;
  while (*(v34 + 208) != 1)
  {
LABEL_42:
    v34 += 432;
    if (v34 == v33)
    {
      goto LABEL_46;
    }
  }

  if (!webrtc::SocketAddress::operator==(v34 + 80, &v75))
  {
    v33 = v35[1];
    goto LABEL_42;
  }

  if (v30)
  {
    goto LABEL_51;
  }

LABEL_136:
  if (*(v11 + 190) != 1)
  {
LABEL_137:
    if ((v11[122] & 1) == 0)
    {
      v66 = v11[107];
      v67 = (v11[110] + v66);
      if (v11[104] == v67)
      {
        *(v11 + 976) = 1;
        if (v66 || !v67 || ((*v11)[8])(v11))
        {
          v68 = v11[53];
          for (v11[55] = v68; v68 != v11 + 52; v68 = v11[55])
          {
            v70 = v68[2];
            v69 = v68 + 2;
            v11[55] = *(v69 - 1);
            v70(v69, v11);
          }
        }

        else
        {
          v71 = v11[60];
          for (v11[62] = v71; v71 != v11 + 59; v71 = v11[62])
          {
            v73 = v71[2];
            v72 = v71 + 2;
            v11[62] = *(v72 - 1);
            v73(v72, v11);
          }
        }
      }
    }
  }

LABEL_153:
  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
    v21 = webrtc::g_clock;
    if (!webrtc::g_clock)
    {
      goto LABEL_19;
    }

LABEL_155:
    result = (*(*v21 + 16))(v21);
    v23 = *(*(this + 7) + 984);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_157;
    }
  }

  else
  {
LABEL_154:
    v21 = webrtc::g_clock;
    if (webrtc::g_clock)
    {
      goto LABEL_155;
    }

LABEL_19:
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    v23 = *(*(this + 7) + 984);
    if ((v23 & 0x80000000) != 0)
    {
LABEL_157:
      operator new();
    }
  }

  if (result / 1000000 - *(this + 17) <= v23)
  {
    goto LABEL_157;
  }

  return result;
}