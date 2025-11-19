void webrtc::PrioritizedPacketQueue::StreamQueue::~StreamQueue(webrtc::PrioritizedPacketQueue::StreamQueue *this)
{
  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(this + 24);
  v2 = *(this + 25);
  v3 = *(this + 26);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = *(this + 25);
    v3 = *(this + 26);
  }

  if (v3 != v2)
  {
    *(this + 26) = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = *(this + 24);
  if (v5)
  {
    operator delete(v5);
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(this + 18);
  v6 = *(this + 19);
  v7 = *(this + 20);
  if (v6 != v7)
  {
    do
    {
      v8 = *v6++;
      operator delete(v8);
    }

    while (v6 != v7);
    v6 = *(this + 19);
    v7 = *(this + 20);
  }

  if (v7 != v6)
  {
    *(this + 20) = v7 + ((v6 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    operator delete(v9);
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(this + 12);
  v10 = *(this + 13);
  v11 = *(this + 14);
  if (v10 != v11)
  {
    do
    {
      v12 = *v10++;
      operator delete(v12);
    }

    while (v10 != v11);
    v10 = *(this + 13);
    v11 = *(this + 14);
  }

  if (v11 != v10)
  {
    *(this + 14) = v11 + ((v10 - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v13 = *(this + 12);
  if (v13)
  {
    operator delete(v13);
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(this + 6);
  v14 = *(this + 7);
  v15 = *(this + 8);
  if (v14 != v15)
  {
    do
    {
      v16 = *v14++;
      operator delete(v16);
    }

    while (v14 != v15);
    v14 = *(this + 7);
    v15 = *(this + 8);
  }

  if (v15 != v14)
  {
    *(this + 8) = v15 + ((v14 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v17 = *(this + 6);
  if (v17)
  {
    operator delete(v17);
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(this);
  v18 = *(this + 1);
  v19 = *(this + 2);
  if (v18 != v19)
  {
    do
    {
      v20 = *v18++;
      operator delete(v20);
    }

    while (v18 != v19);
    v18 = *(this + 1);
    v19 = *(this + 2);
  }

  if (v19 != v18)
  {
    *(this + 2) = v19 + ((v18 - v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*this)
  {
    operator delete(*this);
  }
}

void std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v15 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0xAA];
    v6 = *v5;
    v7 = *v5 + 24 * (v4 % 0xAA);
    v8 = v2[(a1[5] + v4) / 0xAA] + 24 * ((a1[5] + v4) % 0xAA);
    if (v7 != v8)
    {
      while (v7)
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          v10 = v9[22];
          if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 8))(v10);
          }

          v11 = v9[11];
          if (v11 && atomic_fetch_add((v11 + 24), 0xFFFFFFFF) == 1)
          {
            v12 = *(v11 + 16);
            *(v11 + 16) = 0;
            if (v12)
            {
              MEMORY[0x2743DA520](v12, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v11, 0x1010C40EE34DA14);
          }

          v13 = v9[7];
          if (v13)
          {
            v9[8] = v13;
            operator delete(v13);
          }

          MEMORY[0x2743DA540](v9, 0x1020C4060F6C936);
          v6 = *v5;
        }

        v7 += 24;
        if (v7 - v6 == 4080)
        {
          v14 = v5[1];
          ++v5;
          v6 = v14;
          v7 = v14;
        }

        if (v7 == v8)
        {
          v2 = a1[1];
          v3 = a1[2];
          goto LABEL_21;
        }
      }

      __break(1u);
      return;
    }

LABEL_21:
    a1[5] = 0;
    v15 = v3 - v2;
    if (v15 >= 3)
    {
      do
      {
        operator delete(*v2);
        v16 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v15 = (v16 - v2) >> 3;
      }

      while (v15 > 2);
    }
  }

  if (v15 == 1)
  {
    v17 = 85;
  }

  else
  {
    if (v15 != 2)
    {
      return;
    }

    v17 = 170;
  }

  a1[4] = v17;
}

void **std::deque<webrtc::BitrateProber::ProbeCluster>::~deque[abi:sn200100](void **result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v3 == v2)
  {
    v4 = result + 5;
  }

  else
  {
    v4 = result + 5;
    v5 = result[4];
    v6 = &v2[v5 / 0x49];
    v7 = *v6;
    v8 = *v6 + 56 * (v5 % 0x49);
    while (v8 != v2[(result[5] + v5) / 0x49] + 56 * ((result[5] + v5) % 0x49))
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v8 += 56;
      if (v8 - v7 == 4088)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
        v8 = v9;
      }
    }
  }

  *v4 = 0;
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

  if (v10 == 1)
  {
    v11 = 36;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 73;
  }

  v1[4] = v11;
LABEL_15:
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

void webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void webrtc::webrtc_checks_impl::MakeVal<webrtc::DataRate,(void *)0>(std::string *a1, uint64_t a2)
{
  memset(&v14, 0, sizeof(v14));
  webrtc::ToString(a2, __p);
  v3 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    goto LABEL_49;
  }

  if (v5 <= 0x16)
  {
    if (v5)
    {
      v7 = (&v14.__r_.__value_.__l.__data_ + v5);
      if (&v14 <= v4 && v7 > v4)
      {
        goto LABEL_49;
      }

      memmove(&v14, v4, v5);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        v14.__r_.__value_.__l.__size_ = v5;
        *v7 = 0;
        if ((v3 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      *(&v14.__r_.__value_.__s + 23) = v5;
      *v7 = 0;
    }

    if ((v3 & 0x80) != 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v14, 0x16uLL, v5 - 22, 0, 0, 0, v5, v4);
    if ((v16 & 0x80) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v14;
  }

  else
  {
    v9 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = size == 0;
  }

  if (!v11)
  {
    goto LABEL_49;
  }

  if (size >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_50;
  }

  if (size > 0x16)
  {
    operator new();
  }

  *(&a1->__r_.__value_.__s + 23) = size;
  v12 = (a1 + size);
  if (a1 <= v9 && v12 > v9)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (size)
  {
    memmove(a1, v9, size);
  }

  v12->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

std::string *webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(std::string *this, const webrtc::webrtc_checks_impl::ToStringVal *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = this;
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    return v3;
  }

  else
  {
    v2 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v2;
  }

  return this;
}

void webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(webrtc **a1@<X0>, TimeDelta a2@<X1>, std::string *a3@<X8>)
{
  memset(&v15, 0, sizeof(v15));
  webrtc::ToString(*a1, a2, __p);
  v4 = v17;
  if ((v17 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = __p[1];
  }

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    goto LABEL_49;
  }

  if (v6 <= 0x16)
  {
    if (v6)
    {
      v8 = (&v15.__r_.__value_.__l.__data_ + v6);
      if (&v15 <= v5 && v8 > v5)
      {
        goto LABEL_49;
      }

      memmove(&v15, v5, v6);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        v15.__r_.__value_.__l.__size_ = v6;
        *v8 = 0;
        if ((v4 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      *(&v15.__r_.__value_.__s + 23) = v6;
      *v8 = 0;
    }

    if ((v4 & 0x80) != 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v15, 0x16uLL, v6 - 22, 0, 0, 0, v6, v5);
    if ((v17 & 0x80) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = size == 0;
  }

  if (!v12)
  {
    goto LABEL_49;
  }

  if (size >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_50;
  }

  if (size > 0x16)
  {
    operator new();
  }

  *(&a3->__r_.__value_.__s + 23) = size;
  v13 = (a3 + size);
  if (a3 <= v10 && v13 > v10)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (size)
  {
    memmove(a3, v10, size);
  }

  v13->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

uint64_t webrtc::Packet::operator=(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 3) = *(a2 + 3);
  *a1 = v4;
  v5 = a2 + 2;
  *(a1 + 8) = *(a2 + 2);
  v6 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 3);
  *(a2 + 3) = 0;
  if (v6)
  {
    MEMORY[0x2743DA520](v6, 0x1000C8077774924);
  }

  *v5 = 0;
  v5[1] = 0;
  *(a1 + 32) = *(a2 + 4);
  if (*(a1 + 144) != *(a2 + 144))
  {
    if (!*(a1 + 144))
    {
      *(a1 + 40) = a2[10];
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = *(a2 + 8);
      *(a2 + 7) = 0;
      *(a2 + 8) = 0;
      *(a2 + 6) = 0;
      v18 = *(a2 + 22);
      v19 = *(a2 + 26);
      v20 = *(a2 + 30);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v20;
      *(a1 + 104) = v19;
      *(a1 + 88) = v18;
      *(a1 + 72) = *(a2 + 18);
      *(a1 + 144) = 1;
      v21 = *(a2 + 19);
      *(a2 + 19) = 0;
      v12 = *(a1 + 152);
      *(a1 + 152) = v21;
      if (!v12)
      {
        goto LABEL_15;
      }

LABEL_14:
      MEMORY[0x2743DA540](v12, 0x1060C40C2E02434);
      goto LABEL_15;
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      *(a1 + 56) = v13;
      operator delete(v13);
    }

    *(a1 + 144) = 0;
LABEL_13:
    v14 = *(a2 + 19);
    *(a2 + 19) = 0;
    v12 = *(a1 + 152);
    *(a1 + 152) = v14;
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!*(a1 + 144))
  {
    goto LABEL_13;
  }

  v7 = *(a1 + 48);
  *(a1 + 40) = a2[10];
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v8 = *(a2 + 26);
  v9 = *(a2 + 30);
  v10 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 22);
  *(a1 + 136) = v10;
  *(a1 + 120) = v9;
  *(a1 + 104) = v8;
  *(a1 + 72) = *(a2 + 18);
  v11 = *(a2 + 19);
  *(a2 + 19) = 0;
  v12 = *(a1 + 152);
  *(a1 + 152) = v11;
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_15:
  v15 = *(a2 + 20);
  *(a2 + 20) = 0;
  v16 = *(a1 + 160);
  *(a1 + 160) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return a1;
}

void webrtc::PacketArrivalHistory::Insert(webrtc::PacketArrivalHistory *this, unsigned int a2, int a3)
{
  v5 = *(this + 1);
  if (*(this + 36))
  {
    v6 = *(this + 8);
    v7 = a2 >= v6;
    v8 = a2 - v6;
    v9 = v8 != 0 && v7;
    if (v8 != 0x80000000)
    {
      v9 = v8 >= 0;
    }

    if (!v9)
    {
      v8 |= 0xFFFFFFFF00000000;
    }

    v10 = v8 + *(this + 3);
  }

  else
  {
    v10 = a2;
  }

  v11 = *v5;
  v12 = *(v5 + 2);
  v13 = *(this + 5);
  *(this + 3) = v10;
  *(this + 8) = a2;
  *(this + 36) = 1;
  v14 = *(this + 7);
  if (!v14)
  {
    v15 = *(this + 6);
    v20 = this + 48;
    v21 = (this + 48);
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v16 = this + 48;
  v15 = *(this + 6);
  if (v15)
  {
    v17 = *(this + 6);
    do
    {
      v18 = v17;
      v17 = *(v17 + 1);
    }

    while (v17);
  }

  else
  {
    do
    {
      v18 = *(v16 + 2);
      v19 = *v18 == v16;
      v16 = v18;
    }

    while (v19);
  }

  if (v10 + *(this + 4) * v13 < *(v18 + 5))
  {
    return;
  }

  v20 = this + 48;
  v21 = (this + 48);
  if (v15)
  {
LABEL_21:
    v21 = v20;
    v22 = v15;
    do
    {
      v23 = v22[4];
      v24 = v10 < v23;
      v25 = v10 >= v23;
      if (v24)
      {
        v21 = v22;
      }

      v22 = v22[v25];
    }

    while (v22);
  }

LABEL_25:
  if (v21 == *(this + 5))
  {
    goto LABEL_32;
  }

  v26 = *v21;
  if (*v21)
  {
    do
    {
      v27 = v26;
      v26 = *(v26 + 8);
    }

    while (v26);
  }

  else
  {
    do
    {
      v27 = v21[2];
      v19 = *v27 == v21;
      v21 = v27;
    }

    while (v19);
  }

  v28 = *(v27 + 40);
  if (v28 > v10 || v28 + *(v27 + 56) < v10 + a3)
  {
LABEL_32:
    v29 = v11 * v12 * v13;
    if (!v15)
    {
LABEL_38:
      operator new();
    }

    v30 = v15;
    while (1)
    {
      while (1)
      {
        v31 = v30;
        v32 = v30[4];
        if (v10 >= v32)
        {
          break;
        }

        v30 = *v31;
        if (!*v31)
        {
          goto LABEL_38;
        }
      }

      if (v32 >= v10)
      {
        break;
      }

      v30 = v31[1];
      if (!v30)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v33 = v15;
      v15 = v15[1];
    }

    while (v15);
    if (v10 == v33[5] && v29 == v33[6] && *(v33 + 14) == a3)
    {
      if (v14)
      {
        do
        {
          v35 = *(this + 6);
          v36 = v20;
          if (v35)
          {
            do
            {
              v37 = v35;
              v35 = v35[1];
            }

            while (v35);
          }

          else
          {
            do
            {
              v37 = v36[2];
              v19 = *v37 == v36;
              v36 = v37;
            }

            while (v19);
          }

          v38 = *(this + 5);
          v39 = *(v38 + 40);
          if (v39 + *(this + 5) * *(this + 4) >= v37[5])
          {
            break;
          }

          v40 = *(this + 13);
          if (!v40)
          {
            goto LABEL_102;
          }

          v41 = *(this + 9);
          v42 = *(this + 12);
          v43 = v41[v42 / 0xAA] + 24 * (v42 % 0xAA);
          if (v39 == *v43 && *(v38 + 48) == *(v43 + 8) && *(v38 + 56) == *(v43 + 16))
          {
            *(this + 12) = v42 + 1;
            *(this + 13) = v40 - 1;
            if (v42 + 1 >= 0x154)
            {
              operator delete(*v41);
              *(this + 9) += 8;
              *(this + 12) -= 170;
              v38 = *(this + 5);
            }
          }

          v44 = *(this + 19);
          if (!v44)
          {
            goto LABEL_102;
          }

          v45 = *(this + 15);
          v46 = *(this + 18);
          v47 = v45[v46 / 0xAA] + 24 * (v46 % 0xAA);
          if (*(v38 + 40) == *v47 && *(v38 + 48) == *(v47 + 8) && *(v38 + 56) == *(v47 + 16))
          {
            v48 = v46 + 1;
            *(this + 18) = v48;
            *(this + 19) = v44 - 1;
            if (v48 >= 0x154)
            {
              operator delete(*v45);
              *(this + 15) += 8;
              *(this + 18) -= 170;
              v38 = *(this + 5);
            }
          }

          v49 = *(v38 + 8);
          v50 = v38;
          if (v49)
          {
            do
            {
              v51 = v49;
              v49 = *v49;
            }

            while (v49);
          }

          else
          {
            do
            {
              v51 = v50[2];
              v19 = *v51 == v50;
              v50 = v51;
            }

            while (!v19);
          }

          *(this + 5) = v51;
          v34 = *(this + 6);
          --*(this + 7);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v34, v38);
          operator delete(v38);
        }

        while (*(this + 7));
      }

      v52 = *(this + 13);
      while (v52)
      {
        v53 = *(this + 12);
        v54 = *(this + 9);
        if (v29 - v10 > *(*(v54 + 8 * ((v53 + v52 - 1) / 0xAAuLL)) + 24 * ((v53 + v52 - 1) % 0xAAuLL) + 8) - *(*(v54 + 8 * ((v53 + v52 - 1) / 0xAAuLL)) + 24 * ((v53 + v52 - 1) % 0xAAuLL)))
        {
          break;
        }

        v55 = *(this + 10);
        v56 = v55 - v54;
        v19 = v56 == 0;
        v57 = 170 * (v56 >> 3) - 1;
        *(this + 13) = v52 - 1;
        if (v19)
        {
          v57 = 0;
        }

        v58 = v57 - (v52 + v53) + 1;
        --v52;
        if (v58 >= 0x154)
        {
          operator delete(*(v55 - 8));
          *(this + 10) -= 8;
          v52 = *(this + 13);
        }
      }

      v59 = *(this + 19);
      if (v59)
      {
        do
        {
          v60 = *(this + 18);
          v61 = *(this + 15);
          if (v29 - v10 < *(*(v61 + 8 * ((v60 + v59 - 1) / 0xAAuLL)) + 24 * ((v60 + v59 - 1) % 0xAAuLL) + 8) - *(*(v61 + 8 * ((v60 + v59 - 1) / 0xAAuLL)) + 24 * ((v60 + v59 - 1) % 0xAAuLL)))
          {
            break;
          }

          v62 = *(this + 16);
          v63 = v62 - v61;
          v19 = v63 == 0;
          v64 = 170 * (v63 >> 3) - 1;
          *(this + 19) = v59 - 1;
          if (v19)
          {
            v64 = 0;
          }

          v65 = v64 - (v59 + v60) + 1;
          --v59;
          if (v65 >= 0x154)
          {
            operator delete(*(v62 - 8));
            *(this + 16) -= 8;
            v59 = *(this + 19);
          }
        }

        while (v59);
        v52 = *(this + 13);
      }

      v66 = *(this + 9);
      v67 = *(this + 10);
      v68 = 170 * ((v67 - v66) >> 3) - 1;
      if (v67 == v66)
      {
        v68 = 0;
      }

      if (v68 == *(this + 12) + v52)
      {
        std::deque<webrtc::PacketArrivalHistory::PacketArrival>::__add_back_capacity(this + 8);
        v66 = *(this + 9);
        v67 = *(this + 10);
      }

      if (v67 == v66)
      {
        goto LABEL_102;
      }

      v69 = *(this + 13);
      v70 = v69 + *(this + 12);
      v71 = *(v66 + 8 * (v70 / 0xAA));
      if (!v71)
      {
        goto LABEL_102;
      }

      v72 = *(this + 15);
      v73 = *(this + 16);
      v74 = 170 * ((v73 - v72) >> 3) - 1;
      if (v73 == v72)
      {
        v74 = 0;
      }

      v75 = v71 + 24 * (v70 % 0xAA);
      *v75 = v10;
      *(v75 + 8) = v29;
      *(v75 + 16) = a3;
      *(this + 13) = v69 + 1;
      if (v74 == *(this + 19) + *(this + 18))
      {
        std::deque<webrtc::PacketArrivalHistory::PacketArrival>::__add_back_capacity(this + 14);
        v72 = *(this + 15);
        v73 = *(this + 16);
      }

      if (v73 == v72 || (v76 = *(this + 19), v77 = v76 + *(this + 18), (v78 = *(v72 + 8 * (v77 / 0xAA))) == 0))
      {
LABEL_102:
        __break(1u);
      }

      else
      {
        v79 = v78 + 24 * (v77 % 0xAA);
        *v79 = v10;
        *(v79 + 8) = v29;
        *(v79 + 16) = a3;
        *(this + 19) = v76 + 1;
      }
    }
  }
}

void webrtc::PacketArrivalHistory::Reset(webrtc::PacketArrivalHistory *this)
{
  v2 = (this + 48);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 6));
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  v3 = v2[3];
  v4 = v2[4] - v3;
  if (v4)
  {
    v5 = (this + 104);
    v6 = *(this + 12);
    v7 = &v3[v6 / 0xAA];
    v8 = *v7;
    v9 = *v7 + 24 * (v6 % 0xAA);
    while (v9 != v3[(*(this + 13) + v6) / 0xAA] + 24 * ((*(this + 13) + v6) % 0xAA))
    {
      if (!v9)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v9 += 24;
      if (v9 - v8 == 4080)
      {
        v10 = v7[1];
        ++v7;
        v8 = v10;
        v9 = v10;
      }
    }
  }

  else
  {
    v5 = (this + 104);
  }

  *v5 = 0;
  v11 = v4 >> 3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v12 = *(this + 10);
      v3 = (*(this + 9) + 8);
      *(this + 9) = v3;
      v11 = (v12 - v3) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v13 = 170;
  }

  *(this + 12) = v13;
LABEL_15:
  v14 = *(this + 15);
  v15 = *(this + 16) - v14;
  if (v15)
  {
    v16 = (this + 152);
    v17 = *(this + 18);
    v18 = &v14[v17 / 0xAA];
    v19 = *v18;
    v20 = *v18 + 24 * (v17 % 0xAA);
    while (v20 != v14[(*(this + 19) + v17) / 0xAA] + 24 * ((*(this + 19) + v17) % 0xAA))
    {
      if (!v20)
      {
        goto LABEL_32;
      }

      v20 += 24;
      if (v20 - v19 == 4080)
      {
        v21 = v18[1];
        ++v18;
        v19 = v21;
        v20 = v21;
      }
    }
  }

  else
  {
    v16 = (this + 152);
  }

  *v16 = 0;
  v22 = v15 >> 3;
  if (v22 >= 3)
  {
    do
    {
      operator delete(*v14);
      v23 = *(this + 16);
      v14 = (*(this + 15) + 8);
      *(this + 15) = v14;
      v22 = (v23 - v14) >> 3;
    }

    while (v22 > 2);
  }

  if (v22 == 1)
  {
    v24 = 85;
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_29;
    }

    v24 = 170;
  }

  *(this + 18) = v24;
LABEL_29:
  *(this + 3) = 0;
  if (*(this + 36) == 1)
  {
    *(this + 36) = 0;
  }
}

uint64_t webrtc::PacketArrivalHistory::GetDelayMs(webrtc::PacketArrivalHistory *this, unsigned int a2)
{
  if (*(this + 36))
  {
    v2 = *(this + 8);
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

    v6 = v4 + *(this + 3);
    if (*(this + 13))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = a2;
    if (*(this + 13))
    {
LABEL_10:
      v7 = *(this + 5);
      v8 = *(this + 12);
      v9 = **(this + 1) * *(*(this + 1) + 8) * v7 / v7 - v6 / v7 - *(*(*(this + 9) + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA) + 8) / v7 + *(*(*(this + 9) + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA)) / v7;
      return v9 & ~(v9 >> 31);
    }
  }

  return 0;
}

uint64_t webrtc::PacketArrivalHistory::GetMaxDelayMs(webrtc::PacketArrivalHistory *this)
{
  if (!*(this + 19) || !*(this + 13))
  {
    return 0;
  }

  v1 = *(this + 5);
  v2 = (*(*(this + 15) + 8 * (*(this + 18) / 0xAAuLL)) + 24 * (*(this + 18) % 0xAAuLL));
  v3 = *(this + 12);
  v4 = *(*(this + 9) + 8 * (v3 / 0xAA));
  v5 = v2[1] / v1 - (*(v4 + 24 * (v3 % 0xAA) + 8) / v1 + *v2 / v1) + *(v4 + 24 * (v3 % 0xAA)) / v1;
  return v5 & ~(v5 >> 31);
}

void webrtc::PacketArrivalHistory::~PacketArrivalHistory(void **this)
{
  *this = &unk_2882978A0;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 14);
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 8);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(this[6]);
}

{
  *this = &unk_2882978A0;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 14);
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 8);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(this[6]);

  JUMPOUT(0x2743DA540);
}

void *std::deque<webrtc::PacketArrivalHistory::PacketArrival>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v10);
}

void webrtc::PacketArrivalTimeMap::AddPacket(webrtc::PacketArrivalTimeMap *this, uint64_t a2, Timestamp a3)
{
  v6 = *this;
  if (!*this)
  {
    v16 = operator new[](0x400uLL);
    v17 = *(this + 2);
    v18 = *(this + 3);
    v19 = *this;
    if (v17 >= v18)
    {
      *this = v16;
      if (!v19)
      {
LABEL_24:
        *(this + 2) = 127;
        *(this + 2) = a2;
        *(this + 3) = a2 + 1;
        v16[a2 & 0x7F] = a3;
        return;
      }
    }

    else
    {
      v20 = *(this + 2);
      do
      {
        v16[v17 & 0x7F] = *(v19 + 8 * (v17 & v20));
        ++v17;
      }

      while (v18 != v17);
      *this = v16;
    }

    MEMORY[0x2743DA520](v19, 0x1000C8000313F17);
    v16 = *this;
    goto LABEL_24;
  }

  v7 = *(this + 2);
  v8 = *(this + 3);
  if (v7 <= a2)
  {
    if (v8 <= a2)
    {
      v21 = a2 + 1;
      if (v8 + 0x7FFF > a2)
      {
        if (v7 < a2 - 0x7FFF)
        {
          *(this + 2) = a2 - 0x7FFF;
          LODWORD(v7) = a2 - 0x7FFF;
        }

        webrtc::PacketArrivalTimeMap::AdjustToSize(this, v21 - v7);
        v22 = *(this + 2);
        v23 = v22 & *(this + 6);
        v24 = v22 & a2;
        if (v23 <= v24)
        {
          v24 = v24 - v23;
          if (v24 < 1)
          {
LABEL_35:
            *(this + 3) = v21;
            *(*this + 8 * (*(this + 2) & a2)) = a3;
            return;
          }

          v25 = (*this + 8 * v23);
        }

        else
        {
          v25 = *this;
          v26 = (*this + 8 * v23);
          v27 = *this + 8 * v22 - v26 + 8;
          if (v27 >= 1)
          {
            memset_pattern16(v26, &unk_273B94AC0, v27);
            v25 = *this;
          }

          if (v24 < 1)
          {
            goto LABEL_35;
          }
        }

        memset_pattern16(v25, &unk_273B94AC0, 8 * v24);
        goto LABEL_35;
      }

      *(this + 2) = a2;
      *(this + 3) = v21;
    }

    *(v6 + 8 * (*(this + 2) & a2)) = a3;
    return;
  }

  v9 = v8 - a2;
  if (v8 - a2 <= 0x8000)
  {
    webrtc::PacketArrivalTimeMap::AdjustToSize(this, v9);
    *(*this + 8 * (*(this + 2) & a2)) = a3;
    v10 = *(this + 2);
    v11 = v10 & (a2 + 1);
    v12 = v10 & *(this + 4);
    if (v11 <= v12)
    {
      v12 = v12 - v11;
      if (v12 < 1)
      {
LABEL_29:
        *(this + 2) = a2;
        return;
      }

      v13 = (*this + 8 * v11);
    }

    else
    {
      v13 = *this;
      v14 = (*this + 8 * v11);
      v15 = *this + 8 * v10 - v14 + 8;
      if (v15 >= 1)
      {
        memset_pattern16(v14, &unk_273B94AC0, v15);
        v13 = *this;
      }

      if (v12 < 1)
      {
        goto LABEL_29;
      }
    }

    memset_pattern16(v13, &unk_273B94AC0, 8 * v12);
    goto LABEL_29;
  }
}

uint64_t webrtc::PacketArrivalTimeMap::AdjustToSize(uint64_t this, int a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = v4 + 1;
  if (v4 + 1 >= a2)
  {
    v6 = 4 * a2;
    if (4 * a2 <= 128)
    {
      v6 = 128;
    }

    if (v4 < v6)
    {
      return this;
    }

LABEL_16:
    v13 = v4 + 1;
    if (a2 <= 128)
    {
      v14 = 128;
    }

    else
    {
      v14 = a2;
    }

    v15 = 2 * v14;
    if (v4 >= v15)
    {
      do
      {
        v13 /= 2;
      }

      while (v13 > v15);
    }

    v16 = v13 - 1;
    v17 = operator new[](8 * v13);
    v18 = *(v3 + 16);
    v19 = *(v3 + 24);
    this = *v3;
    if (v18 >= v19)
    {
      *v3 = v17;
      if (!this)
      {
LABEL_27:
        *(v3 + 8) = v16;
        return this;
      }
    }

    else
    {
      v20 = *(v3 + 8);
      do
      {
        v17[v18 & v16] = *(this + 8 * (v18 & v20));
        ++v18;
      }

      while (v19 != v18);
      *v3 = v17;
    }

    this = MEMORY[0x2743DA520]();
    goto LABEL_27;
  }

  do
  {
    v7 = v5;
    v5 *= 2;
  }

  while (v7 < a2);
  v4 = v7 - 1;
  v8 = operator new[](8 * v7);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  this = *v3;
  if (v9 >= v10)
  {
    *v3 = v8;
    if (!this)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = *(v3 + 8);
    do
    {
      v8[v9 & v4] = *(this + 8 * (v9 & v11));
      ++v9;
    }

    while (v10 != v9);
    *v3 = v8;
  }

  this = MEMORY[0x2743DA520]();
LABEL_13:
  *(v3 + 8) = v4;
  v12 = 4 * a2;
  if (4 * a2 <= 128)
  {
    v12 = 128;
  }

  if (v4 >= v12)
  {
    goto LABEL_16;
  }

  return this;
}

void webrtc::PacketBuffer::~PacketBuffer(webrtc::PacketBuffer *this)
{
  *this = &unk_2882978D0;
  if (*(this + 4))
  {
    v2 = this + 16;
    v3 = *(this + 3);
    v4 = *(*(this + 2) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 4) = 0;
    if (v3 != this + 16)
    {
      do
      {
        v6 = *(v3 + 1);
        v7 = *(v3 + 22);
        *(v3 + 22) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = *(v3 + 21);
        *(v3 + 21) = 0;
        if (v8)
        {
          MEMORY[0x2743DA540](v8, 0x1060C40C2E02434);
        }

        if (v3[160] == 1)
        {
          v9 = *(v3 + 8);
          if (v9)
          {
            *(v3 + 9) = v9;
            operator delete(v9);
          }
        }

        v10 = *(v3 + 5);
        *(v3 + 5) = 0;
        if (v10)
        {
          MEMORY[0x2743DA520](v10, 0x1000C8077774924);
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
      if (*(this + 4))
      {
        v11 = *(this + 3);
        v12 = *(*(this + 2) + 8);
        v13 = *v11;
        *(v13 + 8) = v12;
        *v12 = v13;
        *(this + 4) = 0;
        if (v11 != v2)
        {
          do
          {
            v14 = *(v11 + 1);
            v15 = *(v11 + 22);
            *(v11 + 22) = 0;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }

            v16 = *(v11 + 21);
            *(v11 + 21) = 0;
            if (v16)
            {
              MEMORY[0x2743DA540](v16, 0x1060C40C2E02434);
            }

            if (v11[160] == 1)
            {
              v17 = *(v11 + 8);
              if (v17)
              {
                *(v11 + 9) = v17;
                operator delete(v17);
              }
            }

            v18 = *(v11 + 5);
            *(v11 + 5) = 0;
            if (v18)
            {
              MEMORY[0x2743DA520](v18, 0x1000C8077774924);
            }

            operator delete(v11);
            v11 = v14;
          }

          while (v14 != v2);
        }
      }
    }
  }
}

{
  webrtc::PacketBuffer::~PacketBuffer(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::PacketBuffer::Flush(webrtc::PacketBuffer *this)
{
  v2 = this + 16;
  v3 = *(this + 3);
  if (v3 != (this + 16))
  {
    do
    {
      while (1)
      {
        v4 = **(this + 6);
        if (*(v3 + 48) < 1)
        {
          break;
        }

        (*(v4 + 24))();
        v3 = *(v3 + 8);
        if (v3 == v2)
        {
          goto LABEL_6;
        }
      }

      (*(v4 + 16))();
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

LABEL_6:
  if (*(this + 4))
  {
    v5 = *(this + 3);
    v6 = *(*(this + 2) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 4) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        v9 = *(v5 + 22);
        *(v5 + 22) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        v10 = *(v5 + 21);
        *(v5 + 21) = 0;
        if (v10)
        {
          MEMORY[0x2743DA540](v10, 0x1060C40C2E02434);
        }

        if (v5[160] == 1)
        {
          v11 = *(v5 + 8);
          if (v11)
          {
            *(v5 + 9) = v11;
            operator delete(v11);
          }
        }

        v12 = *(v5 + 5);
        *(v5 + 5) = 0;
        if (v12)
        {
          MEMORY[0x2743DA520](v12, 0x1000C8077774924);
        }

        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  v13 = *(this + 6);
  ++*(v13 + 184);
  ++*(v13 + 508);
}

uint64_t webrtc::PacketBuffer::InsertPacket(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 160))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a2 + 8) == 0;
  }

  if (!v2)
  {
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/packet_buffer.cc");
  }

  return 4;
}

uint64_t webrtc::PacketBuffer::NextTimestamp(webrtc::PacketBuffer *this, unsigned int *a2)
{
  result = (*(*this + 24))(this);
  if (result)
  {
    return 3;
  }

  if (!a2)
  {
    return 5;
  }

  if (*(this + 4))
  {
    result = 0;
    *a2 = *(*(this + 3) + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t webrtc::PacketBuffer::NextHigherTimestamp(webrtc::PacketBuffer *this, unsigned int a2, unsigned int *a3)
{
  if ((*(*this + 24))(this))
  {
    return 3;
  }

  if (!a3)
  {
    return 5;
  }

  v7 = *(this + 3);
  if (v7 == (this + 16))
  {
    return 2;
  }

  while (1)
  {
    v8 = *(v7 + 16);
    if (v8 >= a2)
    {
      break;
    }

    v7 = *(v7 + 8);
    if (v7 == (this + 16))
    {
      return 2;
    }
  }

  result = 0;
  *a3 = v8;
  return result;
}

uint64_t webrtc::PacketBuffer::PeekNextPacket(webrtc::PacketBuffer *this)
{
  if (*(this + 4))
  {
    return *(this + 3) + 16;
  }

  else
  {
    return 0;
  }
}

void webrtc::PacketBuffer::GetNextPacket(webrtc::PacketBuffer *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(*this + 24))(this))
  {
    *a2 = 0;
    *(a2 + 168) = 0;
  }

  else
  {
    if (!*(this + 4))
    {
      goto LABEL_19;
    }

    v4 = *(this + 3);
    *a2 = *(v4 + 16);
    *(a2 + 3) = *(v4 + 19);
    *(a2 + 8) = *(v4 + 24);
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = 0;
    *(a2 + 24) = v5;
    *(a2 + 32) = v6;
    *(a2 + 40) = 0;
    *(a2 + 144) = 0;
    if (*(v4 + 160) == 1)
    {
      *(a2 + 40) = *(v4 + 56);
      *(a2 + 48) = *(v4 + 64);
      *(a2 + 64) = *(v4 + 80);
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      *(a2 + 88) = *(v4 + 104);
      *(a2 + 104) = *(v4 + 120);
      *(a2 + 120) = *(v4 + 136);
      *(a2 + 136) = *(v4 + 152);
      *(a2 + 72) = *(v4 + 88);
      *(a2 + 144) = 1;
    }

    v7 = *(v4 + 168);
    *(v4 + 168) = 0;
    *(v4 + 176) = 0;
    *(a2 + 152) = v7;
    *(a2 + 168) = 1;
    v8 = *(this + 4);
    if (v8)
    {
      v9 = *(this + 3);
      v11 = *v9;
      v10 = v9[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      *(this + 4) = v8 - 1;
      v12 = v9[22];
      v9[22] = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      v13 = v9[21];
      v9[21] = 0;
      if (v13)
      {
        MEMORY[0x2743DA540](v13, 0x1060C40C2E02434);
      }

      if (*(v9 + 160) == 1)
      {
        v14 = v9[8];
        if (v14)
        {
          v9[9] = v14;
          operator delete(v14);
        }
      }

      v15 = v9[5];
      v9[5] = 0;
      if (v15)
      {
        MEMORY[0x2743DA520](v15, 0x1000C8077774924);
      }

      operator delete(v9);
    }

    else
    {
LABEL_19:
      __break(1u);
    }
  }
}

uint64_t webrtc::PacketBuffer::DiscardNextPacket(webrtc::PacketBuffer *this)
{
  result = (*(*this + 24))(this);
  if (result)
  {
    return 3;
  }

  if (!*(this + 4))
  {
    goto LABEL_17;
  }

  v3 = **(this + 6);
  if (*(*(this + 3) + 48) < 1)
  {
    result = (*(v3 + 16))();
    v4 = *(this + 4);
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  result = (*(v3 + 24))();
  v4 = *(this + 4);
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_6:
  v5 = *(this + 3);
  v7 = *v5;
  v6 = v5[1];
  *(v7 + 8) = v6;
  *v6 = v7;
  *(this + 4) = v4 - 1;
  v8 = v5[22];
  v5[22] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v5[21];
  v5[21] = 0;
  if (v9)
  {
    MEMORY[0x2743DA540](v9, 0x1060C40C2E02434);
  }

  if (*(v5 + 160) == 1)
  {
    v10 = v5[8];
    if (v10)
    {
      v5[9] = v10;
      operator delete(v10);
    }
  }

  v11 = v5[5];
  v5[5] = 0;
  if (v11)
  {
    MEMORY[0x2743DA520](v11, 0x1000C8077774924);
  }

  operator delete(v5);
  return 0;
}

void webrtc::PacketBuffer::DiscardOldPackets(webrtc::PacketBuffer *this, unsigned int a2, int a3)
{
  v3 = (this + 16);
  v31 = &v31;
  v32 = &v31;
  v33 = 0;
  v4 = *(this + 3);
  if (v4 == (this + 16))
  {
    return;
  }

  v8 = a2 - a3;
  do
  {
    v10 = *(v4 + 4);
    v11 = a2 - v10;
    if (a2 == v10)
    {
LABEL_3:
      v9 = v4;
LABEL_4:
      v9 = v9[1];
      goto LABEL_5;
    }

    if (v11 == 0x80000000)
    {
      if (a2 <= v10)
      {
        goto LABEL_3;
      }
    }

    else if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    if (a3)
    {
      if (v10 - v8 == 0x80000000)
      {
        if (v10 <= v8)
        {
          goto LABEL_3;
        }
      }

      else if (v10 == v8 || ((v10 - v8) & 0x80000000) != 0)
      {
        goto LABEL_3;
      }
    }

    v12 = **(this + 6);
    if (*(v4 + 12) >= 1)
    {
      (*(v12 + 24))();
      v9 = v4[1];
      if (v9 != v3)
      {
        goto LABEL_23;
      }

LABEL_36:
      v16 = 1;
      if (v4 == v9)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    (*(v12 + 16))();
    v9 = v4[1];
    if (v9 == v3)
    {
      goto LABEL_36;
    }

LABEL_23:
    while (1)
    {
      v13 = *(v9 + 4);
      v14 = a2 - v13;
      if (a2 == v13)
      {
        break;
      }

      if (v14 == 0x80000000)
      {
        if (a2 <= v13)
        {
          break;
        }
      }

      else if ((v14 & 0x80000000) != 0)
      {
        break;
      }

      if (a3)
      {
        if (v13 - v8 == 0x80000000)
        {
          if (v13 <= v8)
          {
            break;
          }
        }

        else if (v13 == v8 || ((v13 - v8) & 0x80000000) != 0)
        {
          break;
        }
      }

      v15 = **(this + 6);
      if (*(v9 + 12) < 1)
      {
        (*(v15 + 16))();
        v9 = v9[1];
        if (v9 == v3)
        {
          goto LABEL_36;
        }
      }

      else
      {
        (*(v15 + 24))();
        v9 = v9[1];
        if (v9 == v3)
        {
          goto LABEL_36;
        }
      }
    }

    v16 = 0;
    if (v4 == v9)
    {
LABEL_45:
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }

LABEL_37:
    v17 = *v9;
    if (&v31 != v3)
    {
      v18 = 1;
      if (v17 != v4)
      {
        v19 = v4;
        do
        {
          v19 = v19[1];
          ++v18;
        }

        while (v19 != v17);
      }

      *(this + 4) -= v18;
      v33 += v18;
    }

    v20 = v17[1];
    v21 = *v4;
    *(v21 + 8) = v20;
    *v20 = v21;
    v22 = v31;
    v31[1] = v4;
    *v4 = v22;
    v31 = v17;
    v17[1] = &v31;
    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_5:
    v4 = v9;
  }

  while (v9 != v3);
  if (v33)
  {
    v23 = v32;
    v24 = v31[1];
    v25 = *v32;
    *(v25 + 8) = v24;
    *v24 = v25;
    v33 = 0;
    if (v23 != &v31)
    {
      do
      {
        v26 = v23[1];
        v27 = v23[22];
        v23[22] = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        v28 = v23[21];
        v23[21] = 0;
        if (v28)
        {
          MEMORY[0x2743DA540](v28, 0x1060C40C2E02434);
        }

        if (*(v23 + 160) == 1)
        {
          v29 = v23[8];
          if (v29)
          {
            v23[9] = v29;
            operator delete(v29);
          }
        }

        v30 = v23[5];
        v23[5] = 0;
        if (v30)
        {
          MEMORY[0x2743DA520](v30, 0x1000C8077774924);
        }

        operator delete(v23);
        v23 = v26;
      }

      while (v26 != &v31);
    }
  }
}

void webrtc::PacketBuffer::DiscardPacketsWithPayloadType(webrtc::PacketBuffer *this, int a2)
{
  v2 = (this + 16);
  v25 = &v25;
  v26 = &v25;
  v27 = 0;
  v3 = *(this + 3);
  if (v3 == (this + 16))
  {
    return;
  }

  do
  {
    if (*(v3 + 22) != a2)
    {
      v6 = v3;
LABEL_4:
      v6 = *(v6 + 1);
      goto LABEL_5;
    }

    v7 = **(this + 6);
    if (v3[12] >= 1)
    {
      (*(v7 + 24))();
      v6 = *(v3 + 1);
      if (v6 != v2)
      {
        goto LABEL_13;
      }

LABEL_11:
      v8 = 1;
      goto LABEL_16;
    }

    (*(v7 + 16))();
    v6 = *(v3 + 1);
    if (v6 == v2)
    {
      goto LABEL_11;
    }

LABEL_13:
    while (1)
    {
      v9 = *(v6 + 22);
      v8 = v9 == a2;
      if (v9 != a2)
      {
        break;
      }

      v10 = **(this + 6);
      if (v6[12] < 1)
      {
        (*(v10 + 16))();
        v6 = *(v6 + 1);
        if (v6 == v2)
        {
          break;
        }
      }

      else
      {
        (*(v10 + 24))();
        v6 = *(v6 + 1);
        if (v6 == v2)
        {
          break;
        }
      }
    }

LABEL_16:
    if (v3 != v6)
    {
      v11 = *v6;
      if (&v25 != v2)
      {
        v12 = 1;
        if (v11 != v3)
        {
          v13 = v3;
          do
          {
            v13 = v13[1];
            ++v12;
          }

          while (v13 != v11);
        }

        *(this + 4) -= v12;
        v27 += v12;
      }

      v14 = v11[1];
      v15 = *v3;
      *(v15 + 8) = v14;
      *v14 = v15;
      v16 = v25;
      v25[1] = v3;
      *v3 = v16;
      v25 = v11;
      v11[1] = &v25;
    }

    if (!v8)
    {
      goto LABEL_4;
    }

LABEL_5:
    v3 = v6;
  }

  while (v6 != v2);
  if (v27)
  {
    v17 = v26;
    v18 = v25[1];
    v19 = *v26;
    *(v19 + 8) = v18;
    *v18 = v19;
    v27 = 0;
    if (v17 != &v25)
    {
      do
      {
        v20 = v17[1];
        v21 = v17[22];
        v17[22] = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }

        v22 = v17[21];
        v17[21] = 0;
        if (v22)
        {
          MEMORY[0x2743DA540](v22, 0x1060C40C2E02434);
        }

        if (*(v17 + 160) == 1)
        {
          v23 = v17[8];
          if (v23)
          {
            v17[9] = v23;
            operator delete(v23);
          }
        }

        v24 = v17[5];
        v17[5] = 0;
        if (v24)
        {
          MEMORY[0x2743DA520](v24, 0x1000C8077774924);
        }

        operator delete(v17);
        v17 = v20;
      }

      while (v20 != &v25);
    }
  }
}

uint64_t webrtc::PacketBuffer::NumSamplesInBuffer(webrtc::PacketBuffer *this, uint64_t a2)
{
  v2 = this + 16;
  v3 = *(this + 3);
  if (v3 != (this + 16))
  {
    v5 = 0;
    while (1)
    {
      v7 = *(v3 + 176);
      if (v7)
      {
        if (*(v3 + 48) || *(v3 + 52))
        {
          goto LABEL_6;
        }

        v6 = (*(*v7 + 16))(v7);
        if (v6)
        {
          a2 = v6;
        }
      }

      v5 += a2;
LABEL_6:
      v3 = *(v3 + 8);
      if (v3 == v2)
      {
        return v5;
      }
    }
  }

  return 0;
}

unint64_t webrtc::PacketBuffer::GetSpanSamples(webrtc::PacketBuffer *this, uint64_t a2, unint64_t a3, int a4)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 16) - *(*(this + 3) + 16));
  v6 = *(v4 + 168);
  v7 = *v6;
  v8 = **v6 - v6[1];
  v9 = *(v7 + 2);
  v10 = 0xFFFFFFFFFFFFFFFFLL / v9;
  v11 = v8 * v9;
  if (v8 >= v10)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 * (a3 / 0x3E8);
  if (a4)
  {
    return v13 + v5;
  }

  v15 = *(v4 + 176);
  if (!v15)
  {
    return v5 + a2;
  }

  v17 = a2;
  result = (*(*v15 + 16))(v15);
  a2 = v17;
  if (!result)
  {
    return v5 + a2;
  }

  if (*(this + 4) && (result = (*(**(*(this + 2) + 176) + 16))(*(*(this + 2) + 176), v17), *(this + 4)))
  {
    v18 = result;
    v19 = (*(**(*(this + 2) + 176) + 24))(*(*(this + 2) + 176));
    if (v18 <= v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = v18;
    }

    if (!v19)
    {
      v20 = v18;
    }

    return v20 + v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t webrtc::PacketBuffer::ContainsDtxOrCngPacket(webrtc::PacketBuffer *this, const webrtc::DecoderDatabase *a2)
{
  v2 = this + 16;
  v3 = *(this + 3);
  if (v3 == (this + 16))
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v3 + 176);
    if (v5)
    {
      if ((*(*v5 + 24))(v5))
      {
        break;
      }
    }

    v6 = (*(*a2 + 64))(a2, *(v3 + 22));
    if (v6)
    {
      if (*(v6 + 144) == 1)
      {
        break;
      }
    }

    v3 = *(v3 + 8);
    if (v3 == v2)
    {
      return 0;
    }
  }

  return 1;
}

void webrtc::video_coding::PacketBuffer::~PacketBuffer(webrtc::video_coding::PacketBuffer *this)
{
  webrtc::video_coding::PacketBuffer::ClearInternal(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 72, *(this + 10));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 48, *(this + 7));
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = *(this + 2);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          webrtc::RTPVideoHeader::~RTPVideoHeader((v5 + 48));
          v7 = *(v5 + 24);
          if (v7 && atomic_fetch_add((v7 + 24), 0xFFFFFFFF) == 1)
          {
            v8 = *(v7 + 16);
            *(v7 + 16) = 0;
            if (v8)
            {
              MEMORY[0x2743DA520](v8, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v7, 0x1010C40EE34DA14);
          }

          MEMORY[0x2743DA540](v5, 0x10B2C400C12466BLL);
        }
      }

      while (v3 != v2);
      v4 = *(this + 2);
    }

    *(this + 3) = v2;
    operator delete(v4);
  }
}

double webrtc::video_coding::PacketBuffer::InsertPacket@<D0>(webrtc::video_coding::PacketBuffer *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  v4 = *a2;
  v5 = *(*a2 + 8);
  v7 = *(this + 2);
  v6 = *(this + 3);
  v8 = v5 % ((v6 - v7) >> 3);
  if ((*(this + 10) & 1) == 0)
  {
    *(this + 4) = v5;
    *(this + 10) = 1;
    goto LABEL_14;
  }

  v9 = *(this + 4);
  if (v9 == v5 || (v9 - v5 != 0x8000 ? (v10 = (v9 - v5) >= 0) : (v10 = v9 > v5), !v10))
  {
LABEL_14:
    v13 = *&v7[8 * v8];
    if (!v13)
    {
      goto LABEL_54;
    }

    goto LABEL_15;
  }

  if (*(this + 11))
  {
    return result;
  }

  if (*this > (v5 - v9) || *this >> 1 > (v9 - v5))
  {
    *(this + 4) = v5;
    v13 = *&v7[8 * v8];
    if (!v13)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v11 = a2;
    webrtc::video_coding::PacketBuffer::ClearInternal(this);
    *(this + 10) = 1;
    v7 = *(this + 2);
    v6 = *(this + 3);
    *(this + 4) = v5;
    if (v8 >= (v6 - v7) >> 3)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    a2 = v11;
    v4 = *v11;
    v13 = *&v7[8 * v8];
    if (!v13)
    {
      goto LABEL_54;
    }
  }

LABEL_15:
  if (*(v13 + 8) == *(v4 + 8))
  {
    return result;
  }

  v68 = a2;
  while (*this != (v6 - v7) >> 3)
  {
    if (((v6 - v7) >> 2) >= *this)
    {
      v14 = *this;
    }

    else
    {
      v14 = (v6 - v7) >> 2;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

LABEL_102:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (v7 != v6)
    {
      do
      {
        if (*v7)
        {
          goto LABEL_101;
        }

        v7 += 8;
      }

      while (v7 != v6);
      v7 = *(this + 2);
    }

    if (v7)
    {
      v15 = *(this + 3);
      v16 = v7;
      if (v15 != v7)
      {
        do
        {
          v18 = *(v15 - 1);
          v15 -= 8;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            webrtc::RTPVideoHeader::~RTPVideoHeader((v17 + 48));
            v19 = *(v17 + 24);
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

            MEMORY[0x2743DA540](v17, 0x10B2C400C12466BLL);
          }
        }

        while (v15 != v7);
        v16 = *(this + 2);
      }

      *(this + 3) = v7;
      operator delete(v16);
    }

    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/packet_buffer.cc");
    }

    v7 = *(this + 2);
    v6 = *(this + 3);
    v8 = v5 % ((v6 - v7) >> 3);
    if (!*&v7[8 * v8])
    {
      a2 = v68;
      goto LABEL_53;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/packet_buffer.cc");
  }

  v7 = *(this + 2);
  v8 = v5 % ((*(this + 3) - v7) >> 3);
  a2 = v68;
  if (*&v7[8 * v8])
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/packet_buffer.cc");
    }

    webrtc::video_coding::PacketBuffer::ClearInternal(this);
    *(a3 + 24) = 1;
    return result;
  }

LABEL_53:
  v4 = *a2;
LABEL_54:
  *v4 = 0;
  *a2 = 0;
  v42 = *&v7[8 * v8];
  *&v7[8 * v8] = v4;
  v43 = a3;
  if (v42)
  {
    v44 = v5;
    webrtc::RTPVideoHeader::~RTPVideoHeader((v42 + 48));
    v45 = *(v42 + 24);
    if (v45 && atomic_fetch_add((v45 + 24), 0xFFFFFFFF) == 1)
    {
      v46 = *(v45 + 16);
      *(v45 + 16) = 0;
      if (v46)
      {
        MEMORY[0x2743DA520](v46, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v45, 0x1010C40EE34DA14);
    }

    MEMORY[0x2743DA540](v42, 0x10B2C400C12466BLL);
    LODWORD(v5) = v44;
  }

  webrtc::video_coding::PacketBuffer::UpdateMissingPackets(this, v5);
  v48 = (this + 80);
  v47 = *(this + 10);
  v49 = *(this + 9);
  if (v47)
  {
    v50 = v5 - ((*(this + 6) - *(this + 4)) >> 5);
    do
    {
      while (1)
      {
        v56 = *(v47 + 13);
        if (v56 != v50)
        {
          break;
        }

        v48 = v47;
        v47 = *v47;
        if (!v47)
        {
          goto LABEL_74;
        }
      }

      v51 = (v5 - ((*(this + 6) - *(this + 4)) >> 5)) - v56;
      v52 = v56 < v50;
      v53 = (v50 - v56) >= 0;
      if (v51 == 0x8000)
      {
        v53 = v52;
      }

      v54 = !v53;
      v55 = v53;
      if (v54)
      {
        v48 = v47;
      }

      v47 = v47[v55];
    }

    while (v47);
  }

LABEL_74:
  if (v49 == v48)
  {
    webrtc::video_coding::PacketBuffer::FindFrames(this, v5, &v70);
  }

  else
  {
    v57 = v5;
    do
    {
      v59 = v49[1];
      v60 = v49;
      if (v59)
      {
        do
        {
          v61 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v61 = v60[2];
          v54 = *v61 == v60;
          v60 = v61;
        }

        while (!v54);
      }

      if (*(this + 9) == v49)
      {
        *(this + 9) = v61;
      }

      v58 = *(this + 10);
      --*(this + 11);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v58, v49);
      operator delete(v49);
      v49 = v61;
    }

    while (v61 != v48);
    v62 = *a3;
    webrtc::video_coding::PacketBuffer::FindFrames(this, v57, &v70);
    if (v62)
    {
      v63 = *(a3 + 8);
      while (v63 != v62)
      {
        v65 = *--v63;
        v64 = v65;
        *v63 = 0;
        if (v65)
        {
          webrtc::RTPVideoHeader::~RTPVideoHeader((v64 + 48));
          v66 = *(v64 + 24);
          if (v66 && atomic_fetch_add((v66 + 24), 0xFFFFFFFF) == 1)
          {
            v67 = *(v66 + 16);
            *(v66 + 16) = 0;
            if (v67)
            {
              MEMORY[0x2743DA520](v67, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v66, 0x1010C40EE34DA14);
          }

          MEMORY[0x2743DA540](v64, 0x10B2C400C12466BLL);
        }
      }

      operator delete(v62);
      v43 = a3;
    }
  }

  result = *&v70;
  *v43 = v70;
  *(v43 + 16) = v71;
  return result;
}

void webrtc::video_coding::PacketBuffer::ClearInternal(webrtc::video_coding::PacketBuffer *this)
{
  v2 = *(this + 2);
  for (i = *(this + 3); v2 != i; ++v2)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      webrtc::RTPVideoHeader::~RTPVideoHeader((v4 + 48));
      v5 = *(v4 + 24);
      if (v5 && atomic_fetch_add((v5 + 24), 0xFFFFFFFF) == 1)
      {
        v6 = *(v5 + 16);
        *(v5 + 16) = 0;
        if (v6)
        {
          MEMORY[0x2743DA520](v6, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v5, 0x1010C40EE34DA14);
      }

      MEMORY[0x2743DA540](v4, 0x10B2C400C12466BLL);
    }
  }

  *(this + 5) = 0;
  if (*(this + 42) == 1)
  {
    *(this + 42) = 0;
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 48, *(this + 7));
  *(this + 6) = this + 56;
  *(this + 7) = 0;
  v8 = *(this + 10);
  v7 = (this + 80);
  *(v7 - 2) = 0;
  std::__tree<sigslot::_signal_base_interface *>::destroy((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

void webrtc::video_coding::PacketBuffer::UpdateMissingPackets(webrtc::video_coding::PacketBuffer *this, unsigned int a2)
{
  if ((*(this + 42) & 1) == 0)
  {
    *(this + 20) = a2;
    *(this + 42) = 1;
    goto LABEL_32;
  }

  v4 = *(this + 20);
  v5 = a2 - v4;
  if (a2 == v4 || (v5 != 0x8000 ? (v6 = (v5 & 0x8000u) == 0) : (v6 = a2 > v4), !v6))
  {
LABEL_32:
    v23 = this + 56;
    v22 = *(this + 7);
    if (v22)
    {
      v24 = this + 56;
      v25 = *(this + 7);
      do
      {
        while (1)
        {
          v33 = *(v25 + 13);
          if (a2 != v33)
          {
            break;
          }

          v24 = v25;
          v25 = *v25;
          if (!v25)
          {
            goto LABEL_48;
          }
        }

        v26 = a2 - v33;
        v27 = a2 >= v33;
        v28 = a2 - v33;
        v29 = v28 != 0 && v27;
        v30 = (v28 & 0x8000u) == 0;
        if (v26 == 0x8000)
        {
          v30 = v29;
        }

        v31 = !v30;
        if (v30)
        {
          v32 = 8;
        }

        else
        {
          v32 = 0;
        }

        if (v31)
        {
          v24 = v25;
        }

        v25 = *&v25[v32];
      }

      while (v25);
LABEL_48:
      if (v24 != v23)
      {
        v34 = *(v24 + 13);
        if (v34 == a2)
        {
          goto LABEL_57;
        }

        v35 = v34 - a2;
        v27 = v34 >= a2;
        v36 = v34 - a2;
        v37 = v36 != 0 && v27;
        v38 = (v36 & 0x8000u) == 0;
        if (v35 == 0x8000)
        {
          v38 = v37;
        }

        if (!v38)
        {
LABEL_57:
          v39 = *(v24 + 1);
          if (v39)
          {
            do
            {
              v40 = v39;
              v39 = *v39;
            }

            while (v39);
          }

          else
          {
            v41 = v24;
            do
            {
              v40 = *(v41 + 2);
              v14 = *v40 == v41;
              v41 = v40;
            }

            while (!v14);
          }

          if (*(this + 6) == v24)
          {
            *(this + 6) = v40;
          }

          --*(this + 8);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v22, v24);

          operator delete(v24);
        }
      }
    }

    return;
  }

  v7 = a2 - 1000;
  v9 = (this + 56);
  v8 = *(this + 7);
  for (i = (this + 48); v8; v8 = v8[v15])
  {
    while (1)
    {
      v16 = *(v8 + 13);
      if (v16 != v7)
      {
        break;
      }

      v9 = v8;
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    v11 = (a2 - 1000) - v16;
    v12 = v16 < v7;
    v13 = (v7 - v16) >= 0;
    if (v11 == 0x8000)
    {
      v13 = v12;
    }

    v14 = !v13;
    v15 = v13;
    if (v14)
    {
      v9 = v8;
    }
  }

LABEL_20:
  v17 = *i;
  if (*i == v9)
  {
    if (v4 == v7)
    {
      goto LABEL_74;
    }
  }

  else
  {
    do
    {
      v19 = v17[1];
      v20 = v17;
      if (v19)
      {
        do
        {
          v21 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v21 = v20[2];
          v14 = *v21 == v20;
          v20 = v21;
        }

        while (!v14);
      }

      if (*i == v17)
      {
        *i = v21;
      }

      v18 = *(this + 7);
      --*(this + 8);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v18, v17);
      operator delete(v17);
      v17 = v21;
    }

    while (v21 != v9);
    if ((*(this + 42) & 1) == 0)
    {
LABEL_79:
      __break(1u);
      return;
    }

    v4 = *(this + 20);
    if (v4 == v7)
    {
      goto LABEL_74;
    }
  }

  v42 = v7 - v4;
  v43 = v7 > v4;
  v44 = (v7 - v4) >= 0;
  if (v42 == 0x8000)
  {
    v44 = v43;
  }

  if (v44)
  {
    *(this + 20) = v7;
  }

LABEL_74:
  while (1)
  {
    v45 = *(this + 20) + 1;
    *(this + 20) = v45;
    if (a2 == v45)
    {
      break;
    }

    v46 = a2 - v45;
    v47 = a2 > v45;
    v48 = (a2 - v45) >= 0;
    if (v46 == 0x8000)
    {
      v48 = v47;
    }

    if (!v48)
    {
      break;
    }

    std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)0>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(this + 48, this + 20);
    if ((*(this + 42) & 1) == 0)
    {
      goto LABEL_79;
    }
  }
}

void webrtc::video_coding::PacketBuffer::FindFrames(webrtc::video_coding::PacketBuffer *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v5 == v4)
  {
    return;
  }

  v8 = 0;
  v9 = (v5 - v4) >> 3;
  v120 = (this + 80);
  v119 = (this + 56);
  v10 = a2;
  while (1)
  {
    v11 = *v120;
    if (!*v120)
    {
      goto LABEL_175;
    }

    v12 = v120;
    do
    {
      while (1)
      {
        v18 = *(v11 + 26);
        if (v18 != v10)
        {
          break;
        }

        v12 = v11;
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_18;
        }
      }

      v13 = v10 - v18;
      v14 = v18 < v10;
      v15 = (v10 - v18) >= 0;
      if (v13 == 0x8000)
      {
        v15 = v14;
      }

      v16 = !v15;
      if (v15)
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v12 = v11;
      }

      v11 = *(v11 + v17);
    }

    while (v11);
LABEL_18:
    if (v12 == v120 || (v19 = *(v12 + 13), v19 != v10) && ((v20 = v19 - v10, v21 = v19 <= v10, v22 = (v19 - v10) < 0, v20 != 0x8000) ? (v23 = v22) : (v23 = v21), !v23))
    {
LABEL_175:
      v24 = (v5 - v4) >> 3;
      v25 = v10 % v24;
      if (v25)
      {
        v26 = v10 % v24;
      }

      else
      {
        v26 = (v5 - v4) >> 3;
      }

      v27 = v26 - 1;
      if (v24 <= v27)
      {
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v28 = *(v4 + 8 * v25);
      if (!v28)
      {
        return;
      }

      if (*(v28 + 8) != v10)
      {
        return;
      }

      if ((*(v28 + 213) & 1) == 0)
      {
        v29 = *(v4 + 8 * v27);
        if (!v29 || *(v29 + 8) != (v10 - 1) || *(v29 + 16) != *(v28 + 16) || *v29 != 1)
        {
          return;
        }
      }

      v30 = v10 % v9;
      v31 = *(v4 + 8 * v30);
      *v31 = 1;
      if (*(v31 + 214) == 1)
      {
        break;
      }
    }

LABEL_4:
    ++v10;
    ++v8;
    v4 = *(this + 2);
    v5 = *(this + 3);
    v9 = (v5 - v4) >> 3;
    if (v8 >= v9)
    {
      return;
    }
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = *(v31 + 16);
  v38 = (*(v31 + 220) == 4) & (*(v31 + 192) ^ 1);
  v39 = -1;
  v40 = v30;
  v41 = -1;
  v42 = v10;
  while (1)
  {
    while (1)
    {
      v43 = *(v4 + 8 * v30);
      if (!v43)
      {
        break;
      }

      ++v32;
      if (v38 & ~*(v43 + 192))
      {
        goto LABEL_48;
      }

      if (*(v43 + 213))
      {
        goto LABEL_104;
      }

      if (v32 == v9)
      {
        goto LABEL_4;
      }

      v38 = 0;
      if (v40 <= 0)
      {
        v40 = v9;
      }

      v30 = --v40;
      --v42;
      if (v9 <= v40)
      {
        goto LABEL_171;
      }
    }

    if ((v38 & 1) == 0)
    {
      goto LABEL_4;
    }

    ++v32;
LABEL_48:
    if (*(v43 + 1984) != 3)
    {
      return;
    }

    v44 = *(v43 + 352);
    v45 = *(v43 + 360);
    while (v44 != v45)
    {
      v47 = *v44;
      v44 += 12;
      v46 = v47;
      if (v47 == 7)
      {
        v48 = 1;
      }

      else
      {
        v48 = v35;
      }

      if (v46 == 8)
      {
        v49 = 1;
      }

      else
      {
        v49 = v36;
      }

      if (v46 == 8)
      {
        v48 = v35;
      }

      if (v46 == 5)
      {
        v33 = 1;
      }

      else
      {
        v36 = v49;
        v35 = v48;
      }
    }

    v50 = *(this + 96);
    if (v50 == 1 && (v33 & 1) != 0 && (v35 & 1) != 0)
    {
      if ((v36 & 1) == 0)
      {
        if (v32 == v9)
        {
          goto LABEL_80;
        }

        v33 = 1;
        goto LABEL_74;
      }
    }

    else if ((v50 | v33 ^ 1))
    {
      goto LABEL_73;
    }

    v51 = *(v43 + 204);
    if (*(v43 + 204))
    {
      v52 = *(v43 + 206);
      if (v52)
      {
        v41 = v52;
        v39 = v51;
      }
    }

    v34 = 1;
LABEL_73:
    if (v32 == v9)
    {
      break;
    }

LABEL_74:
    if (v40 <= 0)
    {
      v40 = v9;
    }

    v30 = --v40;
    if (v9 <= v40)
    {
      goto LABEL_171;
    }

    v53 = *(v4 + 8 * v40);
    if (!v53 || *(v53 + 16) != v37)
    {
      break;
    }

    v38 = 1;
    --v42;
    if (v9 <= v40)
    {
      goto LABEL_171;
    }
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_80:
  if ((v35 & 1) == 0 || (v36 & 1) == 0)
  {
    v115 = v34;
    v116 = v41;
    v117 = v39;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      v122 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/packet_buffer.cc";
      v123 = v114 & 0xFFFFFFFF00000000 | 0xB0A;
      v124 = &v121;
      v114 = v123;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/packet_buffer.cc");
    }

    v39 = v117;
    v41 = v116;
    v4 = *(this + 2);
    v54 = v42 % ((*(this + 3) - v4) >> 3);
    if ((v115 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_83:
    v55 = *(v4 + 8 * v54);
    *(v55 + 200) = 3;
    if (v39 >= 1 && v41 >= 1)
    {
      *(v55 + 204) = v39;
      *(v55 + 206) = v41;
    }

LABEL_104:
    v118 = v8;
    v72 = ((a3[1] - *a3) >> 3) + (v10 + 1 - v42);
    if (v72 > (a3[2] - *a3) >> 3)
    {
      if (!(v72 >> 61))
      {
        operator new();
      }

LABEL_172:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v73 = v42;
    if ((v10 + 1) != v42)
    {
      do
      {
        v74 = v73;
        v75 = (*(this + 2) + 8 * (v73 % ((*(this + 3) - *(this + 2)) >> 3)));
        v76 = *v75;
        *(*v75 + 213) = v73 == v42;
        *(v76 + 214) = v73 == v10;
        std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](a3, v75);
        ++v73;
      }

      while (v74 != v10);
    }

    v78 = *(this + 6);
    v77 = *(this + 7);
    v79 = v119;
    if (v77)
    {
      v79 = v119;
      do
      {
        v80 = *(v77 + 26);
        if (v80 - v10 == 0x8000)
        {
          v81 = v80 > v10;
        }

        else
        {
          v81 = (v80 - v10) >= 0;
        }

        v82 = !v81;
        if (v81)
        {
          v83 = 0;
        }

        else
        {
          v83 = 8;
        }

        v84 = (v77 + v83);
        if (v82)
        {
          v85 = v79;
        }

        else
        {
          v85 = v77;
        }

        v86 = (v77 + 8);
        if (v80 != v10)
        {
          v86 = v84;
          v79 = v85;
        }

        v77 = *v86;
      }

      while (v77);
    }

    if (v78 != v79)
    {
      do
      {
        v92 = v78[1];
        v93 = v78;
        if (v92)
        {
          do
          {
            v94 = v92;
            v92 = *v92;
          }

          while (v92);
        }

        else
        {
          do
          {
            v94 = v93[2];
            v16 = *v94 == v93;
            v93 = v94;
          }

          while (!v16);
        }

        if (*(this + 6) == v78)
        {
          *(this + 6) = v94;
        }

        v91 = *(this + 7);
        --*(this + 8);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v91, v78);
        operator delete(v78);
        v78 = v94;
      }

      while (v94 != v79);
    }

    v87 = v120;
    v88 = *v120;
    if (!*v120)
    {
      goto LABEL_3;
    }

    v89 = v120;
    v90 = *v120;
    v8 = v118;
    do
    {
      while (1)
      {
        v102 = *(v90 + 26);
        if (a2 != v102)
        {
          break;
        }

        v89 = v90;
        v90 = *v90;
        if (!v90)
        {
          goto LABEL_148;
        }
      }

      v95 = a2 - v102;
      v96 = a2 >= v102;
      v97 = a2 - v102;
      v98 = v97 != 0 && v96;
      v99 = (v97 & 0x8000u) == 0;
      if (v95 == 0x8000)
      {
        v99 = v98;
      }

      v100 = !v99;
      if (v99)
      {
        v101 = 8;
      }

      else
      {
        v101 = 0;
      }

      if (v100)
      {
        v89 = v90;
      }

      v90 = *(v90 + v101);
    }

    while (v90);
    do
    {
LABEL_148:
      v103 = *(v88 + 26);
      if (v103 - v10 == 0x8000)
      {
        v104 = v103 > v10;
      }

      else
      {
        v104 = (v103 - v10) >= 0;
      }

      v105 = !v104;
      if (v104)
      {
        v106 = 0;
      }

      else
      {
        v106 = 8;
      }

      v107 = (v88 + v106);
      if (v105)
      {
        v108 = v87;
      }

      else
      {
        v108 = v88;
      }

      v109 = (v88 + 8);
      if (v103 != v10)
      {
        v109 = v107;
        v87 = v108;
      }

      v88 = *v109;
    }

    while (v88);
    if (v89 != v87)
    {
      do
      {
        v111 = v89[1];
        v112 = v89;
        if (v111)
        {
          do
          {
            v113 = v111;
            v111 = *v111;
          }

          while (v111);
        }

        else
        {
          do
          {
            v113 = v112[2];
            v16 = *v113 == v112;
            v112 = v113;
          }

          while (!v16);
        }

        if (*(this + 9) == v89)
        {
          *(this + 9) = v113;
        }

        v110 = *(this + 10);
        --*(this + 11);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v110, v89);
        operator delete(v89);
        v89 = v113;
      }

      while (v113 != v87);
LABEL_3:
      v8 = v118;
      goto LABEL_4;
    }

    goto LABEL_4;
  }

LABEL_82:
  v54 = v42 % ((v5 - v4) >> 3);
  if (v34)
  {
    goto LABEL_83;
  }

LABEL_89:
  *(*(v4 + 8 * v54) + 200) = 4;
  v63 = v119;
  v64 = *v119;
  if (*v119)
  {
    v63 = v119;
    do
    {
      v65 = *(v64 + 26);
      if (v65 - v42 == 0x8000)
      {
        v66 = v65 > v42;
      }

      else
      {
        v66 = (v65 - v42) >= 0;
      }

      v67 = !v66;
      if (v66)
      {
        v68 = 0;
      }

      else
      {
        v68 = 8;
      }

      v69 = (v64 + v68);
      if (v67)
      {
        v70 = v63;
      }

      else
      {
        v70 = v64;
      }

      v71 = (v64 + 8);
      if (v65 != v42)
      {
        v71 = v69;
        v63 = v70;
      }

      v64 = *v71;
    }

    while (v64);
  }

  if (v63 == *(this + 6))
  {
    goto LABEL_104;
  }
}

void webrtc::video_coding::PacketBuffer::ClearTo(webrtc::video_coding::PacketBuffer *this, unsigned int a2)
{
  v3 = *(this + 4);
  v4 = v3 - a2;
  if (v3 == a2 || (v4 != 0x8000 ? (v5 = (v4 & 0x8000u) == 0) : (v5 = v3 > a2), !v5))
  {
    if (*(this + 10) == 1)
    {
      v6 = a2 + 1;
      v7 = *(this + 2);
      if ((*(this + 3) - v7) >> 3 >= (a2 + 1 - v3))
      {
        v8 = (a2 + 1 - v3);
      }

      else
      {
        v8 = (*(this + 3) - v7) >> 3;
      }

      for (; v8; --v8)
      {
        v9 = *(this + 2);
        v10 = v3 % ((*(this + 3) - v9) >> 3);
        v11 = *(v9 + 8 * v10);
        if (v11)
        {
          v12 = v11[1];
          if (v6 != v12)
          {
            v13 = v6 - v12;
            v14 = v6 > v12;
            v15 = (v6 - v12) >= 0;
            if (v13 == 0x8000)
            {
              v15 = v14;
            }

            if (v15)
            {
              *(v9 + 8 * v10) = 0;
              webrtc::RTPVideoHeader::~RTPVideoHeader((v11 + 6));
              v16 = v11[3];
              if (v16 && atomic_fetch_add((v16 + 24), 0xFFFFFFFF) == 1)
              {
                v17 = *(v16 + 16);
                *(v16 + 16) = 0;
                if (v17)
                {
                  MEMORY[0x2743DA520](v17, 0x1000C8077774924);
                }

                MEMORY[0x2743DA540](v16, 0x1010C40EE34DA14);
              }

              MEMORY[0x2743DA540](v11, 0x10B2C400C12466BLL);
              LOWORD(v3) = *(this + 4);
            }
          }
        }

        LOWORD(v3) = v3 + 1;
        *(this + 4) = v3;
      }

      v19 = (this + 56);
      v18 = *(this + 7);
      *(this + 4) = v6;
      *(this + 11) = 1;
      for (i = *(this + 6); v18; v18 = v18[v25])
      {
        while (1)
        {
          v26 = *(v18 + 13);
          if (v26 != v6)
          {
            break;
          }

          v19 = v18;
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_37;
          }
        }

        v21 = v6 - v26;
        v22 = v26 < v6;
        v23 = (v6 - v26) >= 0;
        if (v21 == 0x8000)
        {
          v23 = v22;
        }

        v24 = !v23;
        v25 = v23;
        if (v24)
        {
          v19 = v18;
        }
      }

LABEL_37:
      if (i != v19)
      {
        do
        {
          v31 = i[1];
          v32 = i;
          if (v31)
          {
            do
            {
              v33 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v33 = v32[2];
              v24 = *v33 == v32;
              v32 = v33;
            }

            while (!v24);
          }

          if (*(this + 6) == i)
          {
            *(this + 6) = v33;
          }

          v30 = *(this + 7);
          --*(this + 8);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v30, i);
          operator delete(i);
          i = v33;
        }

        while (v33 != v19);
      }

      v28 = (this + 80);
      v27 = *(this + 10);
      for (j = *(this + 9); v27; v27 = v27[v38])
      {
        while (1)
        {
          v39 = *(v27 + 13);
          if (v39 != v6)
          {
            break;
          }

          v28 = v27;
          v27 = *v27;
          if (!v27)
          {
            goto LABEL_59;
          }
        }

        v34 = v6 - v39;
        v35 = v39 < v6;
        v36 = (v6 - v39) >= 0;
        if (v34 == 0x8000)
        {
          v36 = v35;
        }

        v37 = !v36;
        v38 = v36;
        if (v37)
        {
          v28 = v27;
        }
      }

LABEL_59:
      if (j != v28)
      {
        do
        {
          v41 = j[1];
          v42 = j;
          if (v41)
          {
            do
            {
              v43 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v43 = v42[2];
              v24 = *v43 == v42;
              v42 = v43;
            }

            while (!v24);
          }

          if (*(this + 9) == j)
          {
            *(this + 9) = v43;
          }

          v40 = *(this + 10);
          --*(this + 11);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v40, j);
          operator delete(j);
          j = v43;
        }

        while (v43 != v28);
      }
    }
  }
}

double webrtc::PacketRouter::PacketRouter(webrtc::PacketRouter *this)
{
  *this = &unk_288297968;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 1;
  *(this + 88) = 0;
  *(this + 25) = absl::internal_any_invocable::EmptyManager;
  *(this + 32) = 0;
  *(this + 31) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = this + 248;
  return result;
}

void webrtc::PacketRouter::~PacketRouter(webrtc::PacketRouter *this)
{
  *this = &unk_288297968;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 31));
  v2 = *(this + 27);
  if (v2)
  {
    v3 = *(this + 28);
    v4 = *(this + 27);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = v5[22];
          if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v7 + 8))(v7);
          }

          v8 = v5[11];
          if (v8 && atomic_fetch_add((v8 + 24), 0xFFFFFFFF) == 1)
          {
            v9 = *(v8 + 16);
            *(v8 + 16) = 0;
            if (v9)
            {
              MEMORY[0x2743DA520](v9, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v8, 0x1010C40EE34DA14);
          }

          v10 = v5[7];
          if (v10)
          {
            v5[8] = v10;
            operator delete(v10);
          }

          MEMORY[0x2743DA540](v5, 0x1020C4060F6C936);
        }
      }

      while (v3 != v2);
      v4 = *(this + 27);
    }

    *(this + 28) = v2;
    operator delete(v4);
  }

  (*(this + 25))(1, this + 184, this + 184);
  v11 = *(this + 17);
  if (v11)
  {
    *(this + 18) = v11;
    operator delete(v11);
  }

  v12 = *(this + 14);
  if (v12)
  {
    *(this + 15) = v12;
    operator delete(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    *(this + 12) = v13;
    operator delete(v13);
  }

  if (*(this + 9))
  {
    v14 = *(this + 8);
    v15 = *(*(this + 7) + 8);
    v16 = *v14;
    *(v16 + 8) = v15;
    *v15 = v16;
    *(this + 9) = 0;
    if (v14 != (this + 56))
    {
      do
      {
        v17 = *(v14 + 1);
        operator delete(v14);
        v14 = v17;
      }

      while (v17 != (this + 56));
    }
  }

  v18 = *(this + 4);
  if (v18)
  {
    do
    {
      v19 = *v18;
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = *(this + 2);
  *(this + 2) = 0;
  if (v20)
  {
    operator delete(v20);
  }
}

{
  webrtc::PacketRouter::~PacketRouter(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::PacketRouter::AddSendRtpModuleToMap(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = a3;
      if (v9 <= a3)
      {
        v11 = a3 % v9;
      }
    }

    else
    {
      v11 = (v9 - 1) & a3;
    }

    v12 = *(*(a1 + 16) + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (v13)
      {
        if (v10.u32[0] < 2uLL)
        {
          v14 = v9 - 1;
          while (1)
          {
            v15 = v13[1];
            if (v15 == a3)
            {
              if (*(v13 + 4) == a3)
              {
                goto LABEL_22;
              }
            }

            else if ((v15 & v14) != v11)
            {
              goto LABEL_21;
            }

            v13 = *v13;
            if (!v13)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v16 = v13[1];
          if (v16 == a3)
          {
            if (*(v13 + 4) == a3)
            {
LABEL_22:
              webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/packet_router.cc", 99, "send_modules_map_.find(ssrc) == send_modules_map_.end()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v17);
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }
          }

          else
          {
            if (v16 >= v9)
            {
              v16 %= v9;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

LABEL_21:
  (*(*a2 + 440))(a2);
  (*(*a2 + 296))(a2);
  operator new();
}

double webrtc::PacketRouter::RegisterNotifyBweCallback(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    operator new();
  }

  v5 = absl::internal_any_invocable::EmptyManager;
  (*(a1 + 200))(1, a1 + 184, a1 + 184);
  *(a1 + 200) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 208) = 0;
  (absl::internal_any_invocable::EmptyManager)(0, &v4, a1 + 184);
  result = *&v5;
  *(a1 + 200) = v5;
  return result;
}

void webrtc::PacketRouter::RemoveSendRtpModuleFromMap(webrtc::PacketRouter *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 3);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = a2;
    if (v8 <= a2)
    {
      v10 = a2 % v8;
    }
  }

  else
  {
    v10 = (v8 - 1) & a2;
  }

  v11 = *(*(this + 2) + 8 * v10);
  if (v11 && (v12 = *v11) != 0)
  {
    if (v9.u32[0] < 2uLL)
    {
      v13 = v8 - 1;
      while (1)
      {
        v15 = v12[1];
        if (v15 == a2)
        {
          if (*(v12 + 4) == a2)
          {
            goto LABEL_24;
          }
        }

        else if ((v15 & v13) != v10)
        {
          goto LABEL_21;
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_21;
        }
      }
    }

    while (1)
    {
      v14 = v12[1];
      if (v14 == a2)
      {
        break;
      }

      if (v14 >= v8)
      {
        v14 %= v8;
      }

      if (v14 != v10)
      {
        goto LABEL_21;
      }

LABEL_11:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    if (*(v12 + 4) != a2)
    {
      goto LABEL_11;
    }

LABEL_24:
    v23 = (this + 56);
    v24 = v12[3];
    v57 = &v57;
    __p = &v57;
    v25 = *(this + 8);
    if (v25 == (this + 56))
    {
      goto LABEL_44;
    }

    if (&v57 != v23)
    {
      v26 = 0;
      v27 = &v57;
      while (1)
      {
        v28 = v25[1];
        if (v25[2] == v24)
        {
          if (v28 == v23)
          {
            v29 = 1;
            if (v25 != v28)
            {
              goto LABEL_36;
            }
          }

          else
          {
            do
            {
              v29 = v28[2] == v24;
              if (v28[2] != v24)
              {
                break;
              }

              v28 = v28[1];
            }

            while (v28 != v23);
            if (v25 != v28)
            {
LABEL_36:
              v27 = *v28;
              v30 = 1;
              if (*v28 != v25)
              {
                v31 = v25;
                do
                {
                  v31 = v31[1];
                  ++v30;
                }

                while (v31 != v27);
              }

              *(this + 9) -= v30;
              v26 += v30;
              v32 = v27[1];
              v33 = *v25;
              *(v33 + 8) = v32;
              *v32 = v33;
              v34 = v57;
              v57[1] = v25;
              *v25 = v34;
              v57 = v27;
              v27[1] = &v57;
              if (v29)
              {
                goto LABEL_27;
              }

LABEL_40:
              v28 = v28[1];
              goto LABEL_27;
            }
          }

          if (!v29)
          {
            goto LABEL_40;
          }
        }

LABEL_27:
        v25 = v28;
        if (v28 == v23)
        {
          if (v26)
          {
            v35 = __p;
            v36 = v27[1];
            v37 = *__p;
            *(v37 + 8) = v36;
            *v36 = v37;
            v59 = 0;
            if (v35 != &v57)
            {
              do
              {
                v38 = v35[1];
                v39 = this;
                operator delete(v35);
                this = v39;
                v35 = v38;
              }

              while (v38 != &v57);
            }
          }

          goto LABEL_44;
        }
      }
    }

    do
    {
      v48 = v25[1];
      if (v25[2] == v24)
      {
        if (v48 == &v57)
        {
          v49 = 1;
        }

        else if (v48[2] == v24)
        {
          do
          {
            v48 = v48[1];
            v49 = v48 == &v57;
          }

          while (v48 != &v57 && v48[2] == v24);
        }

        else
        {
          v49 = 0;
        }

        if (v25 != v48)
        {
          v50 = *v48;
          v51 = *(*v48 + 8);
          v52 = *v25;
          *(v52 + 8) = v51;
          *v51 = v52;
          v53 = v57;
          v57[1] = v25;
          *v25 = v53;
          v57 = v50;
          v50[1] = &v57;
        }

        if (!v49)
        {
          v48 = v48[1];
        }
      }

      v25 = v48;
    }

    while (v48 != &v57);
LABEL_44:
    if (*(this + 32))
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/packet_router.cc", 124, "modules_used_in_current_batch_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v56);
      webrtc::PacketRouter::RemoveSendRtpModule();
    }

    else
    {
      v40 = *(this + 24);
      v41 = v12[1];
      v42 = vcnt_s8(v40);
      v42.i16[0] = vaddlv_u8(v42);
      if (v42.u32[0] > 1uLL)
      {
        if (v41 >= *&v40)
        {
          v41 %= *&v40;
        }
      }

      else
      {
        v41 &= *&v40 - 1;
      }

      v43 = *(this + 2);
      v44 = *(v43 + 8 * v41);
      do
      {
        v45 = v44;
        v44 = *v44;
      }

      while (v44 != v12);
      if (v45 == (this + 32))
      {
        goto LABEL_76;
      }

      v46 = v45[1];
      if (v42.u32[0] > 1uLL)
      {
        if (v46 >= *&v40)
        {
          v46 %= *&v40;
        }
      }

      else
      {
        v46 &= *&v40 - 1;
      }

      if (v46 != v41)
      {
LABEL_76:
        if (!*v12)
        {
          goto LABEL_77;
        }

        v47 = *(*v12 + 8);
        if (v42.u32[0] > 1uLL)
        {
          if (v47 >= *&v40)
          {
            v47 %= *&v40;
          }
        }

        else
        {
          v47 &= *&v40 - 1;
        }

        if (v47 != v41)
        {
LABEL_77:
          *(v43 + 8 * v41) = 0;
        }
      }

      v54 = *v12;
      if (*v12)
      {
        v55 = *(v54 + 8);
        if (v42.u32[0] > 1uLL)
        {
          if (v55 >= *&v40)
          {
            v55 %= *&v40;
          }
        }

        else
        {
          v55 &= *&v40 - 1;
        }

        if (v55 != v41)
        {
          *(v43 + 8 * v55) = v45;
          v54 = *v12;
        }
      }

      *v45 = v54;
      *v12 = 0;
      --*(this + 5);
      operator delete(v12);
    }
  }

  else
  {
LABEL_21:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/packet_router.cc");
    }
  }
}

uint64_t webrtc::PacketRouter::RemoveSendRtpModule(webrtc::PacketRouter *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  webrtc::PacketRouter::MaybeRemoveRembModuleCandidate(a1, a2, 1, a4, a5, a6, a7, a8);
  v10 = (*(*a2 + 208))(a2);
  webrtc::PacketRouter::RemoveSendRtpModuleFromMap(a1, v10, v11, v12, v13, v14, v15, v16);
  v17 = (*(*a2 + 240))(a2);
  if ((v17 & 0x100000000) == 0)
  {
    v24 = (*(*a2 + 256))(a2);
    if ((v24 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    webrtc::PacketRouter::RemoveSendRtpModuleFromMap(a1, v24, v25, v26, v27, v28, v29, v30);
    if (*(a1 + 10) != a2)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  webrtc::PacketRouter::RemoveSendRtpModuleFromMap(a1, v17, v18, v19, v20, v21, v22, v23);
  v24 = (*(*a2 + 256))(a2);
  if ((v24 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(a1 + 10) != a2)
  {
    goto LABEL_4;
  }

LABEL_9:
  *(a1 + 10) = 0;
LABEL_4:
  v31 = *(*a2 + 440);

  return v31(a2);
}

void *webrtc::PacketRouter::MaybeRemoveRembModuleCandidate(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = 17;
  if (a3)
  {
    v9 = 14;
  }

  v10 = &result[v9];
  v12 = result[v9];
  v11 = result[v9 + 1];
  if (v12 != v11)
  {
    while (*v12 != a2)
    {
      v12 += 8;
      if (v12 == v11)
      {
        return result;
      }
    }
  }

  if (v12 != v11)
  {
    v13 = result[20];
    if (*v12 == v13)
    {
      if (!*v12)
      {
LABEL_23:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/packet_router.cc", 379, "active_remb_module_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v17);
        return webrtc::PacketRouter::SendPacket();
      }

      (*(*v13 + 32))(v13);
      v8[20] = 0;
      v11 = v10[1];
    }

    if (v11 != v12)
    {
      v14 = v11 - (v12 + 8);
      if (v11 != v12 + 8)
      {
        memmove(v12, v12 + 8, v11 - (v12 + 8));
      }

      v10[1] = &v12[v14];
      v15 = v8[14];
      if (v15 == v8[15] && (v15 = v8[17], v15 == v8[18]))
      {
        v16 = 0;
        result = v8[20];
        if (result)
        {
LABEL_17:
          if (result)
          {
            result = (*(*result + 32))(result);
          }
        }
      }

      else
      {
        v16 = *v15;
        result = v8[20];
        if (*v15 != result)
        {
          goto LABEL_17;
        }
      }

      v8[20] = v16;
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

void webrtc::PacketRouter::SendPacket(int8x8_t *a1, webrtc::RtpPacketToSend **a2, uint64_t a3)
{
  v4 = a1[3];
  if (!*&v4)
  {
    goto LABEL_21;
  }

  v6 = *a2;
  v7 = *(*a2 + 3);
  v8 = vcnt_s8(v4);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = *(*a2 + 3);
    if (*&v4 <= v7)
    {
      v9 = v7 % v4.i32[0];
    }
  }

  else
  {
    v9 = (v4.i32[0] - 1) & v7;
  }

  v10 = *(*&a1[2] + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/packet_router.cc");
    }

    return;
  }

  if (v8.u32[0] < 2uLL)
  {
    v12 = *&v4 - 1;
    while (1)
    {
      v13 = v11[1];
      if (*&v13 == v7)
      {
        if (v11[2].i32[0] == v7)
        {
          goto LABEL_24;
        }
      }

      else if ((*&v13 & v12) != v9)
      {
        goto LABEL_21;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v7)
    {
      break;
    }

    if (v14 >= *&v4)
    {
      v14 %= *&v4;
    }

    if (v14 != v9)
    {
      goto LABEL_21;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (v11[2].i32[0] != v7)
  {
    goto LABEL_16;
  }

LABEL_24:
  if (v6 && (v22 = v11[3], ((*(**&v22 + 352))(v22) & 1) != 0))
  {
    v24 = *a2;
    if (a1[22].i8[0])
    {
      goto LABEL_27;
    }

    if (*(v24 + 40))
    {
      v33 = *(v24 + 7);
      v34 = *(v24 + 8);
      if (v33 != v34)
      {
        while (*v33 != *(v24 + 40))
        {
          v33 += 4;
          if (v33 == v34)
          {
            goto LABEL_34;
          }
        }

LABEL_27:
        v25 = a1[21];
        a1[21] = (*&v25 + 1);
        *(v24 + 19) = v25;
        *(v24 + 160) = 1;
        v24 = *a2;
      }
    }

LABEL_34:
    if (a1[22].i8[1] == 1)
    {
      *(v24 + 188) = 1;
    }

    (*(**&v22 + 360))(v22);
    v35 = a1[26];
    if (v35)
    {
      v35(a1 + 23, *a2, a3);
    }

    v36 = *a2;
    *a2 = 0;
    v53 = v36;
    (*(**&v22 + 368))(v22, &v53, a3);
    v37 = v53;
    v53 = 0;
    if (v37)
    {
      webrtc::RtpPacketToSend::~RtpPacketToSend(v37);
      MEMORY[0x2743DA540]();
    }

    v38 = a1[31];
    if (!v38)
    {
LABEL_46:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v39 = v38;
        v40 = v38[4];
        if (*&v22 >= v40)
        {
          break;
        }

        v38 = *v39;
        if (!*v39)
        {
          goto LABEL_46;
        }
      }

      if (v40 >= *&v22)
      {
        break;
      }

      v38 = v39[1];
      if (!v38)
      {
        goto LABEL_46;
      }
    }

    if ((*(**&v22 + 128))(v22))
    {
      a1[10] = v22;
    }

    (*(**&v22 + 392))(&__p, v22);
    v41 = __p;
    v42 = v52;
    if (__p != v52)
    {
      do
      {
        std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](&a1[27], v41++);
      }

      while (v41 != v42);
      v41 = __p;
    }

    if (v41)
    {
      v43 = v52;
      v44 = v41;
      if (v52 != v41)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            v47 = v45[22];
            if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v47 + 8))(v47);
            }

            v48 = v45[11];
            if (v48 && atomic_fetch_add((v48 + 24), 0xFFFFFFFF) == 1)
            {
              v49 = *(v48 + 16);
              *(v48 + 16) = 0;
              if (v49)
              {
                MEMORY[0x2743DA520](v49, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v48, 0x1010C40EE34DA14);
            }

            v50 = v45[7];
            if (v50)
            {
              v45[8] = v50;
              operator delete(v50);
            }

            MEMORY[0x2743DA540](v45, 0x1020C4060F6C936);
          }
        }

        while (v43 != v41);
        v44 = __p;
      }

      v52 = v41;
      operator delete(v44);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/packet_router.cc");
  }
}

void webrtc::PacketRouter::OnBatchComplete(webrtc::PacketRouter *this)
{
  v2 = *(this + 30);
  v3 = this + 248;
  if (v2 != this + 248)
  {
    do
    {
      (*(**(v2 + 4) + 376))(*(v2 + 4));
      v4 = *(v2 + 1);
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
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 31));
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = v3;
}

__n128 webrtc::PacketRouter::FetchFec@<Q0>(webrtc::PacketRouter *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 216);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 29);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = 0;
  return result;
}

void webrtc::PacketRouter::GeneratePadding(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v4 = 0uLL;
  *a3 = 0u;
  v5 = *(a1 + 80);
  if (!v5 || (v6 = (*(*v5 + 128))(v5), v4 = 0uLL, !v6) || ((*(**(a1 + 80) + 416))(&v21, 0), v7 = v22, v4 = v21, *a3 = v21, *(a3 + 16) = v7, v4 == *(&v4 + 1)))
  {
    v8 = *(a1 + 64);
    if (v8 != a1 + 56)
    {
      v9 = *(&v4 + 1);
      v10 = v4;
      while (1)
      {
        v12 = *(v8 + 16);
        if ((*(*v12 + 120))(v12))
        {
          (*(*v12 + 416))(&v21, v12, a2);
          if (v10)
          {
            while (v9 != v10)
            {
              v14 = *--v9;
              v13 = v14;
              *v9 = 0;
              if (v14)
              {
                v15 = v13[22];
                if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v15 + 8))(v15);
                }

                v16 = v13[11];
                if (v16 && atomic_fetch_add((v16 + 24), 0xFFFFFFFF) == 1)
                {
                  v17 = *(v16 + 16);
                  *(v16 + 16) = 0;
                  if (v17)
                  {
                    MEMORY[0x2743DA520](v17, 0x1000C8077774924);
                  }

                  MEMORY[0x2743DA540](v16, 0x1010C40EE34DA14);
                }

                v18 = v13[7];
                if (v18)
                {
                  v13[8] = v18;
                  operator delete(v18);
                }

                MEMORY[0x2743DA540](v13, 0x1020C4060F6C936);
              }
            }

            *(a3 + 8) = v10;
            operator delete(v10);
          }

          v11 = v21;
          *a3 = v21;
          *(a3 + 16) = v22;
          v9 = *(&v11 + 1);
          v10 = v11;
          if (v11 != *(&v11 + 1))
          {
            break;
          }
        }

        v8 = *(v8 + 8);
        if (v8 == a1 + 56)
        {
          return;
        }
      }

      *(a1 + 80) = v12;
    }
  }
}

uint64_t webrtc::PacketRouter::OnAbortedRetransmissions(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 24);
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (v4 <= a2)
      {
        v6 = a2 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a2;
    }

    v7 = *(*(result + 16) + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = v4 - 1;
          while (1)
          {
            v10 = v8[1];
            if (v10 == a2)
            {
              if (*(v8 + 4) == a2)
              {
                goto LABEL_22;
              }
            }

            else if ((v10 & v9) != v6)
            {
              return result;
            }

            v8 = *v8;
            if (!v8)
            {
              return result;
            }
          }
        }

        do
        {
          v11 = v8[1];
          if (v11 == a2)
          {
            if (*(v8 + 4) == a2)
            {
LABEL_22:
              if (a4)
              {
                v12 = a3;
              }

              else
              {
                v12 = 0;
              }

              return (*(*v8[3] + 400))(v8[3], v12, a4);
            }
          }

          else
          {
            if (v11 >= v4)
            {
              v11 %= v4;
            }

            if (v11 != v6)
            {
              return result;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t webrtc::PacketRouter::GetRtxSsrcForMedia(webrtc::PacketRouter *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v6 = *(*(this + 2) + 8 * v4);
  if (!v6)
  {
    return 0;
  }

  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  if (v3.u32[0] < 2uLL)
  {
    v8 = v2 - 1;
    while (1)
    {
      v10 = v7[1];
      if (v10 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v10 & v8) != v4)
      {
        return 0;
      }

      v7 = *v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v2)
    {
      v9 %= v2;
    }

    if (v9 != v4)
    {
      return 0;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      return 0;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_12;
  }

LABEL_22:
  if ((*(*v7[3] + 208))(v7[3]) == a2)
  {
    return (*(*v7[3] + 240))(v7[3]) & 0xFFFFFFFFFFLL;
  }

  return 0;
}

void webrtc::PacketRouter::SendRemb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 160);
  if (v3)
  {
    *__p = *a3;
    v5 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    (*(*v3 + 24))(v3, a2, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void webrtc::PacketRouter::SendCombinedRtcpPacket(void *a1, __int128 *a2)
{
  v4 = a1 + 7;
  v5 = a1[8];
  if (v5 == a1 + 7)
  {
LABEL_4:
    v7 = a1[11];
    if (v7 != a1[12])
    {
      v8 = *v7;
      v18 = *a2;
      v19 = *(a2 + 2);
      *a2 = 0;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      (*(*v8 + 16))(v8, &v18);
      v9 = v18;
      if (v18)
      {
        v10 = *(&v18 + 1);
        v11 = v18;
        if (*(&v18 + 1) != v18)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              (*(*v12 + 8))(v12);
            }
          }

          while (v10 != v9);
          v11 = v18;
        }

        *(&v18 + 1) = v9;
LABEL_20:
        operator delete(v11);
      }
    }
  }

  else
  {
    while (1)
    {
      v6 = v5[2];
      if ((*(*v6 + 448))(v6))
      {
        break;
      }

      v5 = v5[1];
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    *__p = *a2;
    v21 = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    (*(*v6 + 16))(v6, __p);
    v14 = __p[0];
    if (__p[0])
    {
      v15 = __p[1];
      if (__p[1] == __p[0])
      {
        v11 = __p[0];
      }

      else
      {
        do
        {
          v17 = *--v15;
          v16 = v17;
          *v15 = 0;
          if (v17)
          {
            (*(*v16 + 8))(v16);
          }
        }

        while (v15 != v14);
        v11 = __p[0];
        __p[1] = v14;
      }

      goto LABEL_20;
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<absl::AnyInvocable<void ()(webrtc::RtpPacketToSend const&,webrtc::PacedPacketInfo const&)>>(uint64_t result, void *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (*(v3 + 16))(1, *a2, v3);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t dcsctp::PacketSender::Send(void *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v3 = (a2 + 16);
  if (v5 == v4)
  {
    return 0;
  }

  *v3 = 0;
  v3[1] = 0;
  v7 = v4 - v5;
  v3[2] = 0;
  if (a3)
  {
    v8 = crc32c::ExtendPortable(0, v5, (v4 - v5));
    if (v7 <= 0xB)
    {
LABEL_11:
      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v9, v10, v11, v12, v18);
      return webrtc::PacketSequencer::Sequence(v16, v17);
    }

    *(v5 + 8) = v8;
  }

  v13 = (*(**a1 + 24))(*a1, v5, v7);
  v20[0] = v5;
  v20[1] = v7;
  v19 = v13;
  v14 = a1[4];
  if (!v14)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    goto LABEL_11;
  }

  (*(*v14 + 48))(v14, v20, &v19);
  if (v5)
  {
    operator delete(v5);
  }

  return (v13 - 3) < 0xFFFFFFFE;
}

unint64_t *webrtc::PacketSequencer::Sequence(unint64_t *this, webrtc::RtpPacketToSend *a2)
{
  v3 = this;
  v4 = *(a2 + 3);
  if (v4 == *this)
  {
    v5 = *(a2 + 15);
    v6 = *(a2 + 32);
    if ((v6 & 1) == 0 || v5 != 2)
    {
      if ((v6 & (v5 == 4)) == 1)
      {
        webrtc::PacketSequencer::PopulatePaddingFields(this, a2);
      }

      v11 = *(v3 + 12);
      *(v3 + 12) = v11 + 1;
      v12 = *(a2 + 11);
      *(a2 + 2) = v11;
      this = webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v12 + 8) - *(a2 + 12));
      *(*(*(a2 + 11) + 16) + *(a2 + 12) + 2) = bswap32(v11) >> 16;
      if ((*(a2 + 32) & 1) == 0 || *(a2 + 15) != 4)
      {
        *(v3 + 56) = *a2;
        if (*(a2 + 187) == 1)
        {
          v13 = *(a2 + 2);
          v14 = *(a2 + 11);
          if (v14)
          {
            atomic_fetch_add_explicit((v14 + 24), 1u, memory_order_relaxed);
          }

          *(v3 + 28) = *(*(v14 + 16) + *(a2 + 12) + v13);
          if (atomic_fetch_add((v14 + 24), 0xFFFFFFFF) == 1)
          {
            v15 = *(v14 + 16);
            *(v14 + 16) = 0;
            if (v15)
            {
              MEMORY[0x2743DA520](v15, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v14, 0x1010C40EE34DA14);
          }
        }

        else
        {
          *(v3 + 28) = *(a2 + 1);
        }

        *(v3 + 8) = *(a2 + 2);
        this = (*(*v3[2] + 16))(v3[2]);
        v3[6] = this;
        v3[5] = *(a2 + 14);
      }
    }
  }

  else if (*(this + 8) == 1 && v4 == *(this + 1))
  {
    if ((*(a2 + 32) & 1) != 0 && *(a2 + 15) == 4)
    {
      webrtc::PacketSequencer::PopulatePaddingFields(this, a2);
    }

    v8 = *(v3 + 13);
    *(v3 + 13) = v8 + 1;
    v10 = *(a2 + 11);
    v9 = (a2 + 88);
    *(v9 - 42) = v8;
    this = webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v9, *(v10 + 8) - v9[1]);
    *(*(*v9 + 16) + v9[1] + 2) = bswap32(v8) >> 16;
  }

  return this;
}

unint64_t *webrtc::PacketSequencer::PopulatePaddingFields(unint64_t *this, webrtc::RtpPacketToSend *a2)
{
  v3 = this;
  if (*(a2 + 3) == *this)
  {
    v4 = *(this + 8);
    v6 = *(a2 + 11);
    v5 = (a2 + 88);
    *(a2 + 2) = v4;
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v6 + 8) - *(a2 + 12));
    *(*(*v5 + 16) + v5[1] + 4) = bswap32(v4);
    v5[3] = v3[5];
    v7 = *(v3 + 28);
    *(v5 - 87) = v7;
    v8 = v5[1];
    LOBYTE(v4) = *(*(*v5 + 16) + v8 + 1) & 0x80 | v7;
    this = webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v5, *(*v5 + 8) - v8);
    *(*(*v5 + 16) + v5[1] + 1) = v4;
    return this;
  }

  if (!*(a2 + 3))
  {
    v9 = *(this + 8);
    v10 = *(a2 + 11);
    *(a2 + 2) = v9;
    this = webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v10 + 8) - *(a2 + 12));
    *(*(*(a2 + 11) + 16) + *(a2 + 12) + 4) = bswap32(v9);
    *(a2 + 14) = v3[5];
    if (v3[6] >= 1)
    {
      v11 = (*(*v3[2] + 16))(v3[2]);
      v12 = v3[6];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x8000000000000000)
      {
        if (v11 == 0x8000000000000000 || v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = *(a2 + 2);
          v15 = 0x8000000000000000;
        }

        else
        {
          v14 = *(a2 + 2);
          v15 = v11 - v12;
          if ((v11 - v12) >= 0)
          {
LABEL_19:
            v17 = v15 / 0x3E8;
            if (v15 % 0x3E8 > 0x1F3)
            {
              LODWORD(v17) = v17 + 1;
            }

            goto LABEL_26;
          }
        }

        if (-v15 % 0x3E8uLL <= 0x1F4)
        {
          v18 = 0;
        }

        else
        {
          v18 = -1;
        }

        v17 = v18 - -v15 / 0x3E8uLL;
LABEL_26:
        v19 = v14 + 90 * v17;
        *(a2 + 2) = v19;
        this = webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(*(a2 + 11) + 8) - *(a2 + 12));
        *(*(*(a2 + 11) + 16) + *(a2 + 12) + 4) = bswap32(v19);
        v20 = *(a2 + 14);
        if (v20 >= 1)
        {
          v21 = v20 + v15;
          if (v15 == 0x8000000000000000)
          {
            v21 = 0x8000000000000000;
          }

          if (v20 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          *(a2 + 14) = v23;
        }

        return this;
      }

      v14 = *(a2 + 2);
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_19;
    }
  }

  return this;
}

uint64_t webrtc::PacketTransportInternal::PacketTransportInternal(uint64_t this)
{
  *(this + 8) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(this + 16) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(this + 40) = 0;
  *(this + 24) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(this + 32) = this + 40;
  *this = &unk_2882979B8;
  *(this + 48) = 0;
  *(this + 56) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 64) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 72) = this + 72;
  *(this + 80) = this + 72;
  *(this + 88) = 0;
  *(this + 96) = this + 72;
  *(this + 104) = 0;
  *(this + 112) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 120) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 128) = this + 128;
  *(this + 136) = this + 128;
  *(this + 144) = 0;
  *(this + 152) = this + 128;
  *(this + 160) = 0;
  *(this + 168) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 176) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 184) = this + 184;
  *(this + 192) = this + 184;
  *(this + 200) = 0;
  *(this + 208) = this + 184;
  *(this + 216) = 0;
  *(this + 224) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 232) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 240) = this + 240;
  *(this + 248) = this + 240;
  *(this + 256) = 0;
  *(this + 264) = this + 240;
  *(this + 272) = 0;
  *(this + 280) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 288) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 296) = this + 296;
  *(this + 304) = this + 296;
  *(this + 312) = 0;
  *(this + 320) = this + 296;
  *(this + 328) = 0;
  *(this + 344) = 0;
  *(this + 352) = 0;
  *(this + 368) = 0;
  *(this + 360) = 0;
  *(this + 392) = absl::internal_any_invocable::EmptyManager;
  *(this + 400) = 0;
  return this;
}

void webrtc::PacketTransportInternal::~PacketTransportInternal(void (**this)(uint64_t, char *, char *))
{
  *this = &unk_2882979B8;
  this[49](1, this + 376, this + 376);
  if (*(this + 368) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v36);
    webrtc::PacketTransportInternal::~PacketTransportInternal(v35);
  }

  v6 = this[43];
  if (v6)
  {
    v7 = this[44];
    v8 = this[43];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        if (v9)
        {
          v9(v7 - 48);
        }

        v7 = (v7 - 56);
      }

      while (v7 != v6);
      v8 = this[43];
    }

    this[44] = v6;
    operator delete(v8);
  }

  while (1)
  {
    v14 = this[39];
    if (!v14)
    {
      break;
    }

    v10 = this[38];
    v11 = *(v10 + 3);
    v13 = *v10;
    v12 = *(v10 + 1);
    *(v13 + 8) = v12;
    *v12 = v13;
    this[39] = (v14 - 1);
    operator delete(v10);
    (*(v11 + 16))(v11, this + 280);
  }

  this[40] = (this + 37);
  for (i = this[32]; i; i = this[32])
  {
    v16 = this[31];
    v17 = *(v16 + 3);
    v19 = *v16;
    v18 = *(v16 + 1);
    *(v19 + 8) = v18;
    *v18 = v19;
    this[32] = (i - 1);
    operator delete(v16);
    (*(v17 + 16))(v17, this + 224);
  }

  this[33] = (this + 30);
  for (j = this[25]; j; j = this[25])
  {
    v21 = this[24];
    v22 = *(v21 + 3);
    v24 = *v21;
    v23 = *(v21 + 1);
    *(v24 + 8) = v23;
    *v23 = v24;
    this[25] = (j - 1);
    operator delete(v21);
    (*(v22 + 16))(v22, this + 168);
  }

  this[26] = (this + 23);
  for (k = this[18]; k; k = this[18])
  {
    v26 = this[17];
    v27 = *(v26 + 3);
    v29 = *v26;
    v28 = *(v26 + 1);
    *(v29 + 8) = v28;
    *v28 = v29;
    this[18] = (k - 1);
    operator delete(v26);
    (*(v27 + 16))(v27, this + 112);
  }

  this[19] = (this + 16);
  for (m = this[11]; m; m = this[11])
  {
    v31 = this[10];
    v32 = *(v31 + 3);
    v34 = *v31;
    v33 = *(v31 + 1);
    *(v34 + 8) = v33;
    *v33 = v34;
    this[11] = (m - 1);
    operator delete(v31);
    (*(v32 + 16))(v32, this + 56);
  }

  this[12] = (this + 9);
  *this = &unk_28828CEE0;
  (this[3])(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy((this + 4), this[5]);
}

__n128 webrtc::PacketTransportInternal::SetOnCloseCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 392);
  (*(a1 + 392))(1, a1 + 376, a1 + 376);
  *(a1 + 392) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 400) = 0;
  (*(a2 + 16))(0, a2, a1 + 376);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

uint64_t *webrtc::PacketTransportInternal::NotifyPacketReceived(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 368) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v16);
    return webrtc::PacketTransportInternal::NotifyOnClose(v15);
  }

  else
  {
    v8 = result;
    v9 = result + 46;
    *(result + 368) = 1;
    v10 = result[43];
    v11 = result[44];
    if (v10 == v11)
    {
      *v9 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        result = (*(v10 + 40))(v10 + 8, v8, a2);
        v14 = *v10;
        v10 += 56;
        v13 |= v14 == v9;
      }

      while (v10 != v11);
      *v9 = 0;
      if (v13)
      {

        return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v8 + 43, v9);
      }
    }
  }

  return result;
}

uint64_t webrtc::PacketTransportInternal::NotifyOnClose(uint64_t this)
{
  v1 = *(this + 400);
  if (v1)
  {
    v2 = this;
    v1(this + 376);
    this = (*(v2 + 392))(1, v2 + 376, v2 + 376);
    *(v2 + 392) = absl::internal_any_invocable::EmptyManager;
    *(v2 + 400) = 0;
  }

  return this;
}

void webrtc::UntypedFunction::PrepareArgs<void ()(webrtc::PacketTransportInternal *,webrtc::ReceivedIpPacket const&),absl::AnyInvocable<void ()(webrtc::PacketTransportInternal *,webrtc::ReceivedIpPacket const&)>,absl::AnyInvocable<void ()(webrtc::PacketTransportInternal *,webrtc::ReceivedIpPacket const&)>,(void *)0>(absl::AnyInvocable<void ()(webrtc::PacketTransportInternal *,webrtc::ReceivedIpPacket const&)> &&)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(void *a1)
{
  (*(*a1 + 16))(1, *a1, *a1);

  JUMPOUT(0x2743DA540);
}

uint64_t *dcsctp::Parameters::descriptors@<X0>(uint64_t *this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  v7 = *this;
  v8 = this[1];
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  if (v8 != v7)
  {
    if ((v8 - v7) > 3)
    {
      v9 = a6[2];
      if (!v9)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * (-*a6 >> 3) + 1;
        if (v10 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a6) >> 3);
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        v12 = v11 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v10;
        if (v12)
        {
          if (v12 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

LABEL_16:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      __break(1u);
    }

    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_reader.h", 56, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a2, a3, a4, a5, a6);
    goto LABEL_16;
  }

  return this;
}

char **absl::str_format_internal::ConsumeUnboundConversionNoInline(char **a1, char **a2, uint64_t a3, char *a4)
{
  v4 = *a4;
  if ((*a4 & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  if (a1 == a2)
  {
    return 0;
  }

  v5 = (a1 + 1);
  v6 = *a1;
  *v33 = a1 + 1;
  v7 = v6;
  v32 = v6;
  if (v6 > 64)
  {
    goto LABEL_31;
  }

  if (v6 > 48)
  {
LABEL_9:
    if (v7 >= 0x3A)
    {
      goto LABEL_31;
    }
  }

  else
  {
    while (1)
    {
      v8 = absl::str_format_internal::ConvTagHolder::value[v7];
      if ((v8 & 0xE0) != 0xC0)
      {
        break;
      }

      *(a3 + 12) |= v8 & 0x1F;
      if (v5 == a2)
      {
        return 0;
      }

      v9 = *v5;
      v5 = (v5 + 1);
      v7 = v9;
      if (v9 > 48)
      {
        *v33 = v5;
        v32 = v7;
        goto LABEL_9;
      }
    }

    *v33 = v5;
    v32 = v7;
    if (v7 < 48)
    {
      if (v7 == 42)
      {
        *(a3 + 12) |= 0x20u;
        if (v5 == a2)
        {
          return 0;
        }

        v7 = *v5;
        *v33 = v5 + 1;
        *a4 = v4 + 1;
        *(a3 + 4) = -2 - v4;
      }

LABEL_22:
      if (v7 == 46)
      {
        *(a3 + 12) |= 0x20u;
        v16 = *v33;
        if (*v33 == a2)
        {
          return 0;
        }

        v17 = a4;
        v18 = (*v33 + 1);
        v7 = **v33;
        ++*v33;
        v32 = v7;
        if (v7 - 48 <= 9)
        {
          v19 = a2;
          v20 = a3;
          v21 = absl::str_format_internal::ParseDigits(&v32, v33, a2, a4);
          a2 = v19;
          a3 = v20;
          *(v20 + 8) = v21;
          v7 = v32;
LABEL_30:
          a4 = v17;
          goto LABEL_31;
        }

        if (v7 != 42)
        {
          *(a3 + 8) = 0;
          goto LABEL_30;
        }

        if (v18 == a2)
        {
          return 0;
        }

        *v33 = v16 + 2;
        v7 = v16[1];
        v22 = (*a4)++;
        *(a3 + 8) = -2 - v22;
      }

LABEL_31:
      v23 = absl::str_format_internal::ConvTagHolder::value[v7];
      if (v7 == 118 && *(a3 + 12))
      {
        return 0;
      }

      if ((absl::str_format_internal::ConvTagHolder::value[v7] & 0x80) == 0)
      {
        v24 = *v33;
        goto LABEL_35;
      }

      if ((v23 & 0xC0) != 0x80)
      {
        return 0;
      }

      v26 = *v33;
      if (*v33 == a2)
      {
        return 0;
      }

      v27 = v23 & 0x3F;
      v24 = (*v33 + 1);
      v28 = **v33;
      if (v28 == 104 && v27 == 0)
      {
        *(a3 + 13) = 1;
        if (v24 == a2)
        {
          return 0;
        }
      }

      else
      {
        v30 = v27 == 2;
        if (v28 != 108 || v27 != 2)
        {
          *(a3 + 13) = v27;
LABEL_50:
          result = 0;
          if (v28 == 118 || absl::str_format_internal::ConvTagHolder::value[v28] < 0)
          {
            return result;
          }

          v23 = absl::str_format_internal::ConvTagHolder::value[v28];
          v31 = !v30;
          if (v28 != 99)
          {
            v31 = 1;
          }

          if ((v31 & 1) == 0)
          {
            *(a3 + 12) |= 0x20u;
          }

LABEL_35:
          *(a3 + 14) = v23;
          v25 = *a4 + 1;
          *a4 = v25;
          *a3 = v25;
          return v24;
        }

        *(a3 + 13) = 3;
        if (v24 == a2)
        {
          return 0;
        }
      }

      v30 = 0;
      v24 = (v26 + 2);
      v28 = *(v26 + 1);
      goto LABEL_50;
    }
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = absl::str_format_internal::ParseDigits(&v32, v33, a2, a4);
  v7 = v32;
  if (v32 != 36)
  {
    a3 = v12;
    *(v12 + 12) |= 0x20u;
    *(v12 + 4) = v14;
    a4 = v11;
    a2 = v13;
    goto LABEL_22;
  }

  if (v4)
  {
    return 0;
  }

  a3 = v12;
  *v11 = -1;
  a1 = v10;
  a2 = v13;
LABEL_15:

  return absl::str_format_internal::ConsumeConversion<true>(a1, a2, a3, a4);
}

char **absl::str_format_internal::ConsumeConversion<true>(char **a1, char **a2, uint64_t a3, const char *a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v29 = v4;
  v30 = v5;
  v6 = *a1;
  *v28 = a1 + 1;
  v27 = v6;
  if ((v6 - 58) < 0xFFFFFFF7)
  {
    return 0;
  }

  *a3 = absl::str_format_internal::ParseDigits(&v27, v28, a2, a4);
  if (v27 != 36 || *v28 == a2)
  {
    return 0;
  }

  v11 = **v28;
  v10 = ++*v28;
  v12 = v11;
  v27 = v11;
  if (v11 > 64)
  {
    goto LABEL_32;
  }

  if (v12 > 48)
  {
LABEL_11:
    if (v12 >= 0x3A)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v13 = absl::str_format_internal::ConvTagHolder::value[v12];
    if ((v13 & 0xE0) != 0xC0)
    {
      break;
    }

    *(a3 + 12) |= v13 & 0x1F;
    if (v10 == a2)
    {
      return 0;
    }

    v14 = *v10;
    v10 = (v10 + 1);
    v12 = v14;
    if (v14 > 48)
    {
      *v28 = v10;
      v27 = v12;
      goto LABEL_11;
    }
  }

  *v28 = v10;
  v27 = v12;
  if (v12 >= 48)
  {
LABEL_14:
    v15 = absl::str_format_internal::ParseDigits(&v27, v28, a2, v9);
    *(a3 + 12) |= 0x20u;
    *(a3 + 4) = v15;
    v12 = v27;
    goto LABEL_15;
  }

  if (v12 == 42)
  {
    *(a3 + 12) |= 0x20u;
    if (v10 == a2)
    {
      return 0;
    }

    v18 = *v10;
    *v28 = v10 + 1;
    v27 = v18;
    if ((v18 - 58) < 0xFFFFFFF7)
    {
      return 0;
    }

    *(a3 + 4) = ~absl::str_format_internal::ParseDigits(&v27, v28, a2, v9);
    if (v27 != 36 || *v28 == a2)
    {
      return 0;
    }

    v12 = **v28;
    ++*v28;
  }

LABEL_15:
  if (v12 == 46)
  {
    *(a3 + 12) |= 0x20u;
    v16 = *v28;
    if (*v28 == a2)
    {
      return 0;
    }

    v17 = (*v28 + 1);
    v12 = **v28;
    ++*v28;
    v27 = v12;
    if (v12 - 48 > 9)
    {
      if (v12 == 42)
      {
        if (v17 == a2)
        {
          return 0;
        }

        *v28 = v16 + 2;
        v27 = v16[1];
        if (v27 - 58 < 0xFFFFFFF7)
        {
          return 0;
        }

        *(a3 + 8) = ~absl::str_format_internal::ParseDigits(&v27, v28, a2, v9);
        if (v27 != 36 || *v28 == a2)
        {
          return 0;
        }

        v12 = **v28;
        ++*v28;
      }

      else
      {
        *(a3 + 8) = 0;
      }
    }

    else
    {
      *(a3 + 8) = absl::str_format_internal::ParseDigits(&v27, v28, a2, v9);
      v12 = v27;
    }
  }

LABEL_32:
  v19 = absl::str_format_internal::ConvTagHolder::value[v12];
  if (v12 == 118 && *(a3 + 12))
  {
    return 0;
  }

  if ((absl::str_format_internal::ConvTagHolder::value[v12] & 0x80) == 0)
  {
    v20 = *v28;
LABEL_36:
    *(a3 + 14) = v19;
    return v20;
  }

  if ((v19 & 0xC0) != 0x80)
  {
    return 0;
  }

  v22 = *v28;
  if (*v28 == a2)
  {
    return 0;
  }

  v23 = v19 & 0x3F;
  v20 = (*v28 + 1);
  v24 = **v28;
  if (v24 == 104 && !v23)
  {
    *(a3 + 13) = 1;
    if (v20 != a2)
    {
      goto LABEL_44;
    }

    return 0;
  }

  v25 = v23 == 2;
  if (v24 != 108 || v23 != 2)
  {
    *(a3 + 13) = v23;
    goto LABEL_50;
  }

  *(a3 + 13) = 3;
  if (v20 == a2)
  {
    return 0;
  }

LABEL_44:
  v25 = 0;
  v20 = (v22 + 2);
  v24 = *(v22 + 1);
LABEL_50:
  result = 0;
  if (v24 != 118 && (absl::str_format_internal::ConvTagHolder::value[v24] & 0x80000000) == 0)
  {
    v19 = absl::str_format_internal::ConvTagHolder::value[v24];
    v26 = !v25;
    if (v24 != 99)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      *(a3 + 12) |= 0x20u;
    }

    goto LABEL_36;
  }

  return result;
}

uint64_t absl::str_format_internal::ParseDigits(absl::str_format_internal *this, char *a2, const char **a3, const char *a4)
{
  result = (*this - 48);
  v6 = *a2;
  if (*a2 != a3)
  {
    *a2 = v6 + 1;
    v7 = *v6;
    *this = v7;
    if ((v7 - 58) >= 0xFFFFFFF6)
    {
      result = (v7 + 10 * result - 48);
      v8 = *a2;
      if (*a2 != a3)
      {
        *a2 = v8 + 1;
        v9 = *v8;
        *this = v9;
        if ((v9 - 58) >= 0xFFFFFFF6)
        {
          result = (v9 + 10 * result - 48);
          v10 = *a2;
          if (*a2 != a3)
          {
            *a2 = v10 + 1;
            v11 = *v10;
            *this = v11;
            if ((v11 - 58) >= 0xFFFFFFF6)
            {
              result = (v11 + 10 * result - 48);
              v12 = *a2;
              if (*a2 != a3)
              {
                *a2 = v12 + 1;
                v13 = *v12;
                *this = v13;
                if ((v13 - 58) >= 0xFFFFFFF6)
                {
                  result = (v13 + 10 * result - 48);
                  v14 = *a2;
                  if (*a2 != a3)
                  {
                    *a2 = v14 + 1;
                    v15 = *v14;
                    *this = v15;
                    if ((v15 - 58) >= 0xFFFFFFF6)
                    {
                      result = (v15 + 10 * result - 48);
                      v16 = *a2;
                      if (*a2 != a3)
                      {
                        *a2 = v16 + 1;
                        v17 = *v16;
                        *this = v17;
                        if ((v17 - 58) >= 0xFFFFFFF6)
                        {
                          result = (v17 + 10 * result - 48);
                          v18 = *a2;
                          if (*a2 != a3)
                          {
                            *a2 = v18 + 1;
                            v19 = *v18;
                            *this = v19;
                            if ((v19 - 58) >= 0xFFFFFFF6)
                            {
                              result = (v19 + 10 * result - 48);
                              v20 = *a2;
                              if (*a2 != a3)
                              {
                                *a2 = v20 + 1;
                                v21 = *v20;
                                *this = v21;
                                if ((v21 - 58) >= 0xFFFFFFF6)
                                {
                                  result = (v21 + 10 * result - 48);
                                  v22 = *a2;
                                  if (*a2 != a3)
                                  {
                                    *a2 = v22 + 1;
                                    *this = *v22;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

unsigned __int8 **webrtc::PayloadTypePicker::PayloadTypePicker(unsigned __int8 **this)
{
  v230 = *MEMORY[0x277D85DE8];
  *this = 0;
  this[1] = 0;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = (this + 4);
  v8 = this;
  v43 = 4;
  if (v42 > "PCMU" || v42 + 4 <= "PCMU")
  {
    strcpy(v42, "PCMU");
    v44[0] = 8000;
    v47[0] = 0;
    v47[1] = 0;
    v45 = 1;
    v46 = v47;
    v48[0] = 0;
    v50 = 3;
    if (v49 > "GSM" || v49 + 3 <= "GSM")
    {
      strcpy(v49, "GSM");
      v51 = 8000;
      v54[1] = 0;
      v54[0] = 0;
      v52 = 1;
      v53 = v54;
      v55 = 3;
      v57 = 4;
      if (v56 > "G723" || v56 + 4 <= "G723")
      {
        strcpy(v56, "G723");
        v58 = 8000;
        v59 = 1;
        v60 = v61;
        v62 = 4;
        v64 = 4;
        v61[1] = 0;
        v61[0] = 0;
        if (v63 > "DVI4" || v63 + 4 <= "DVI4")
        {
          strcpy(v63, "DVI4");
          v65 = 8000;
          v68[1] = 0;
          v68[0] = 0;
          v66 = 1;
          v67 = v68;
          v69 = 5;
          v71 = 4;
          if (v70 > "DVI4" || v70 + 4 <= "DVI4")
          {
            strcpy(v70, "DVI4");
            v72 = 16000;
            v73 = 1;
            v74 = v75;
            v76 = 6;
            v78 = 3;
            v75[1] = 0;
            v75[0] = 0;
            if (&v77 > "LPC" || &v77 + 3 <= "LPC")
            {
              strcpy(&v77, "LPC");
              v79 = 8000;
              v82[1] = 0;
              v82[0] = 0;
              v80 = 1;
              v81 = v82;
              v83 = 7;
              v85 = 4;
              if (v84 > "PCMA" || v84 + 4 <= "PCMA")
              {
                strcpy(v84, "PCMA");
                v86 = 8000;
                v89[1] = 0;
                v89[0] = 0;
                v87 = 1;
                v88 = v89;
                v90 = 8;
                v92 = 4;
                if (&v91 > "G722" || &v91 + 4 <= "G722")
                {
                  strcpy(&v91, "G722");
                  v93 = 8000;
                  v94 = 1;
                  v96 = 0u;
                  v95 = &v96;
                  v97 = 9;
                  v99 = 3;
                  if (v98 > "L16" || v98 + 3 <= "L16")
                  {
                    strcpy(v98, "L16");
                    v100 = 44100;
                    v101 = 2;
                    v103 = 0uLL;
                    v102 = &v103;
                    v104 = 10;
                    v106 = 3;
                    if (&v105 > "L16" || &v105 + 3 <= "L16")
                    {
                      strcpy(&v105, "L16");
                      v107 = 44100;
                      v108 = 1;
                      v110 = 0uLL;
                      v109 = &v110;
                      v111 = 11;
                      v113 = 5;
                      if (v112 > "QCELP" || v112 + 5 <= "QCELP")
                      {
                        strcpy(v112, "QCELP");
                        v114 = 8000;
                        v115 = 1;
                        v117 = 0uLL;
                        v116 = &v117;
                        v118 = 12;
                        v120 = 2;
                        if (&v119 > "CN" || &v119 + 2 <= "CN")
                        {
                          strcpy(&v119, "CN");
                          v121 = 8000;
                          v122 = 1;
                          this = v42;
                          v124 = 0uLL;
                          v123 = &v124;
                          v125 = 13;
                          v127 = 3;
                          if (v126 > "MPA" || v126 + 3 <= "MPA")
                          {
                            strcpy(v126, "MPA");
                            v128 = 90000;
                            v129 = 0;
                            v131 = 0uLL;
                            v130 = &v131;
                            v132 = 14;
                            v134 = 3;
                            if (&v133 > "MPA" || &v133 + 3 <= "MPA")
                            {
                              strcpy(&v133, "MPA");
                              v135 = 90000;
                              v136 = 1;
                              v138 = 0uLL;
                              v137 = &v138;
                              v139 = 14;
                              v141 = 4;
                              if (v140 > "G728" || v140 + 4 <= "G728")
                              {
                                strcpy(v140, "G728");
                                v142 = 8000;
                                v143 = 1;
                                v145 = 0uLL;
                                v144 = &v145;
                                v146 = 15;
                                v148 = 4;
                                if (&v147 > "DVI4" || &v147 + 4 <= "DVI4")
                                {
                                  strcpy(&v147, "DVI4");
                                  v149 = 11025;
                                  v150 = 1;
                                  v152 = 0uLL;
                                  v151 = &v152;
                                  v153 = 16;
                                  v155 = 4;
                                  if (v154 > "DVI4" || v154 + 4 <= "DVI4")
                                  {
                                    strcpy(v154, "DVI4");
                                    v156 = 22050;
                                    v157 = 1;
                                    v158 = &v159;
                                    v160 = 17;
                                    v162 = 4;
                                    v159 = 0uLL;
                                    if (&v161 > "G729" || &v161 + 4 <= "G729")
                                    {
                                      strcpy(&v161, "G729");
                                      v163 = 8000;
                                      v166 = 0uLL;
                                      v165 = &v166;
                                      v167 = 18;
                                      HIBYTE(v168[2]) = 19;
                                      v164 = 1;
                                      if (v168 > "reserved-do-not-use" || &v168[2] + 3 <= "reserved-do-not-use")
                                      {
                                        strcpy(v168, "reserved-do-not-use");
                                        v169 = 1;
                                        v170 = 0;
                                        v172 = 0uLL;
                                        v171 = &v172;
                                        v173 = 102;
                                        v175 = 2;
                                        if (v174 > "CN" || v174 + 2 <= "CN")
                                        {
                                          strcpy(v174, "CN");
                                          v176 = 16000;
                                          v177 = 1;
                                          v179 = 0uLL;
                                          v178 = &v179;
                                          v180 = 105;
                                          v182 = 2;
                                          if (v181 > "CN" || v181 + 2 <= "CN")
                                          {
                                            strcpy(v181, "CN");
                                            v183 = 32000;
                                            v184 = 1;
                                            v186 = 0uLL;
                                            v185 = &v186;
                                            v187 = 106;
                                            v35 = 8;
                                            if (v34 > "minptime" || &v34[1] <= "minptime")
                                            {
                                              strcpy(v34, "minptime");
                                              v37 = 2;
                                              if (v36 > "10" || v36 + 2 <= "10")
                                              {
                                                strcpy(v36, "10");
                                                v39 = 12;
                                                if (v38 > "useinbandfec" || &v38[1] + 4 <= "useinbandfec")
                                                {
                                                  strcpy(v38, "useinbandfec");
                                                  v41 = 1;
                                                  if (v40 > "1" || v40 + 1 <= "1")
                                                  {
                                                    LOWORD(v40[0]) = 49;
                                                    v16 = 0;
                                                    v17 = 0;
                                                    v15 = &v16;
                                                    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v15, &v16, v34);
                                                    this = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v15, &v16, v38);
                                                    v189 = 4;
                                                    if (&v188 > "opus" || &v188 + 4 <= "opus")
                                                    {
                                                      strcpy(&v188, "opus");
                                                      v190 = 48000;
                                                      v191 = 2;
                                                      v192 = v15;
                                                      v193[0] = v16;
                                                      v193[1] = v17;
                                                      if (v17)
                                                      {
                                                        *(v16 + 16) = v193;
                                                        v15 = &v16;
                                                        v16 = 0;
                                                        v17 = 0;
                                                      }

                                                      else
                                                      {
                                                        v192 = v193;
                                                      }

                                                      v194 = 111;
                                                      v31 = 0;
                                                      LOBYTE(v30) = 0;
                                                      v33 = 7;
                                                      if (v32 > "111/111" || v32 + 7 <= "111/111")
                                                      {
                                                        strcpy(v32, "111/111");
                                                        v13 = 0;
                                                        v14 = 0;
                                                        v12 = &v13;
                                                        this = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v12, &v13, &v30);
                                                        v196 = 3;
                                                        if (v195 > &webrtc::kRedCodecName || v195 + 3 <= &webrtc::kRedCodecName)
                                                        {
                                                          strcpy(v195, "red");
                                                          v197 = 48000;
                                                          v198 = 2;
                                                          v2 = v13;
                                                          v199 = v12;
                                                          v200[0] = v13;
                                                          v200[1] = v14;
                                                          if (v14)
                                                          {
                                                            *(v13 + 16) = v200;
                                                            v12 = &v13;
                                                            v13 = 0;
                                                            v14 = 0;
                                                            v2 = 0;
                                                          }

                                                          else
                                                          {
                                                            v199 = v200;
                                                          }

                                                          v201 = 63;
                                                          v203 = 15;
                                                          if (v202 > "telephone-event" || &v202[1] + 7 <= "telephone-event")
                                                          {
                                                            strcpy(v202, "telephone-event");
                                                            v204 = 48000;
                                                            v205 = 1;
                                                            v207 = 0u;
                                                            v206 = &v207;
                                                            v208 = 110;
                                                            v210 = 15;
                                                            if (v209 > "telephone-event" || &v209[1] + 7 <= "telephone-event")
                                                            {
                                                              strcpy(v209, "telephone-event");
                                                              v211 = 32000;
                                                              v212 = 1;
                                                              v214 = 0uLL;
                                                              v213 = &v214;
                                                              v215 = 112;
                                                              v217 = 15;
                                                              if (v216 > "telephone-event" || &v216[1] + 7 <= "telephone-event")
                                                              {
                                                                strcpy(v216, "telephone-event");
                                                                v218 = 16000;
                                                                v219 = 1;
                                                                v221 = 0uLL;
                                                                v220 = &v221;
                                                                v222 = 113;
                                                                v224 = 15;
                                                                if (v223 > "telephone-event" || &v223[1] + 7 <= "telephone-event")
                                                                {
                                                                  strcpy(v223, "telephone-event");
                                                                  v225 = 8000;
                                                                  v226 = 1;
                                                                  v228 = 0uLL;
                                                                  v227 = &v228;
                                                                  v229 = 126;
                                                                  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v12, v2);
                                                                  if (v33 < 0)
                                                                  {
                                                                    operator delete(v32[0]);
                                                                    if ((v31 & 0x80000000) == 0)
                                                                    {
LABEL_75:
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v15, v16);
                                                                      if ((v41 & 0x80000000) == 0)
                                                                      {
                                                                        goto LABEL_76;
                                                                      }

                                                                      goto LABEL_119;
                                                                    }
                                                                  }

                                                                  else if ((v31 & 0x80000000) == 0)
                                                                  {
                                                                    goto LABEL_75;
                                                                  }

                                                                  operator delete(v30);
                                                                  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v15, v16);
                                                                  if ((v41 & 0x80000000) == 0)
                                                                  {
LABEL_76:
                                                                    if ((v39 & 0x80000000) == 0)
                                                                    {
                                                                      goto LABEL_77;
                                                                    }

                                                                    goto LABEL_120;
                                                                  }

LABEL_119:
                                                                  operator delete(v40[0]);
                                                                  if ((v39 & 0x80000000) == 0)
                                                                  {
LABEL_77:
                                                                    if ((v37 & 0x80000000) == 0)
                                                                    {
                                                                      goto LABEL_78;
                                                                    }

                                                                    goto LABEL_121;
                                                                  }

LABEL_120:
                                                                  operator delete(v38[0]);
                                                                  if ((v37 & 0x80000000) == 0)
                                                                  {
LABEL_78:
                                                                    if ((v35 & 0x80000000) == 0)
                                                                    {
LABEL_79:
                                                                      for (i = 0; i != 1944; i += 72)
                                                                      {
                                                                        v4 = &v42[i / 8];
                                                                        v5 = v48[i / 4];
                                                                        v6 = v44[i / 4];
                                                                        v7 = *(&v45 + i);
                                                                        v18[0] = &unk_288291428;
                                                                        v18[1] = 0xFFFFFFFF00000000;
                                                                        if (*(&v43 + i) < 0)
                                                                        {
                                                                          std::string::__init_copy_ctor_external(&v19, *v4, v4[1]);
                                                                        }

                                                                        else
                                                                        {
                                                                          v19 = *v4;
                                                                        }

                                                                        v20 = v6;
                                                                        v21 = 0;
                                                                        v22 = v7;
                                                                        v23 = 0;
                                                                        v24 = 0;
                                                                        v25 = 0;
                                                                        v26 = 0;
                                                                        v27 = 0;
                                                                        memset(v29, 0, sizeof(v29));
                                                                        v28 = v29;
                                                                        if (&v47[i / 8 - 1] != &v28)
                                                                        {
                                                                          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v28, v47[i / 8 - 1], &v47[i / 8]);
                                                                        }

                                                                        webrtc::PayloadTypePicker::AddMapping(v9, v8, v5, v18);
                                                                        if (v11 < 0)
                                                                        {
                                                                          operator delete(__p);
                                                                        }

                                                                        webrtc::Codec::~Codec(v18);
                                                                      }

                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v227, v228);
                                                                      if (v224 < 0)
                                                                      {
                                                                        operator delete(v223[0]);
                                                                      }

                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v220, v221);
                                                                      if (v217 < 0)
                                                                      {
                                                                        operator delete(v216[0]);
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v213, v214);
                                                                        if ((v210 & 0x80000000) == 0)
                                                                        {
LABEL_92:
                                                                          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v206, v207);
                                                                          if ((v203 & 0x80000000) == 0)
                                                                          {
                                                                            goto LABEL_93;
                                                                          }

                                                                          goto LABEL_125;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v213, v214);
                                                                        if ((v210 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_92;
                                                                        }
                                                                      }

                                                                      operator delete(v209[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v206, v207);
                                                                      if ((v203 & 0x80000000) == 0)
                                                                      {
LABEL_93:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v199, v200[0]);
                                                                        if ((v196 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_94;
                                                                        }

                                                                        goto LABEL_126;
                                                                      }

LABEL_125:
                                                                      operator delete(v202[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v199, v200[0]);
                                                                      if ((v196 & 0x80000000) == 0)
                                                                      {
LABEL_94:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v192, v193[0]);
                                                                        if ((v189 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_95;
                                                                        }

                                                                        goto LABEL_127;
                                                                      }

LABEL_126:
                                                                      operator delete(v195[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v192, v193[0]);
                                                                      if ((v189 & 0x80000000) == 0)
                                                                      {
LABEL_95:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v185, v186);
                                                                        if ((v182 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_96;
                                                                        }

                                                                        goto LABEL_128;
                                                                      }

LABEL_127:
                                                                      operator delete(v188);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v185, v186);
                                                                      if ((v182 & 0x80000000) == 0)
                                                                      {
LABEL_96:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v178, v179);
                                                                        if ((v175 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_97;
                                                                        }

                                                                        goto LABEL_129;
                                                                      }

LABEL_128:
                                                                      operator delete(v181[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v178, v179);
                                                                      if ((v175 & 0x80000000) == 0)
                                                                      {
LABEL_97:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v171, v172);
                                                                        if ((SHIBYTE(v168[2]) & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_98;
                                                                        }

                                                                        goto LABEL_130;
                                                                      }

LABEL_129:
                                                                      operator delete(v174[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v171, v172);
                                                                      if ((SHIBYTE(v168[2]) & 0x80000000) == 0)
                                                                      {
LABEL_98:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v165, v166);
                                                                        if ((v162 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_99;
                                                                        }

                                                                        goto LABEL_131;
                                                                      }

LABEL_130:
                                                                      operator delete(v168[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v165, v166);
                                                                      if ((v162 & 0x80000000) == 0)
                                                                      {
LABEL_99:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v158, v159);
                                                                        if ((v155 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_100;
                                                                        }

                                                                        goto LABEL_132;
                                                                      }

LABEL_131:
                                                                      operator delete(v161);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v158, v159);
                                                                      if ((v155 & 0x80000000) == 0)
                                                                      {
LABEL_100:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v151, v152);
                                                                        if ((v148 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_101;
                                                                        }

                                                                        goto LABEL_133;
                                                                      }

LABEL_132:
                                                                      operator delete(v154[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v151, v152);
                                                                      if ((v148 & 0x80000000) == 0)
                                                                      {
LABEL_101:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v144, v145);
                                                                        if ((v141 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_102;
                                                                        }

                                                                        goto LABEL_134;
                                                                      }

LABEL_133:
                                                                      operator delete(v147);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v144, v145);
                                                                      if ((v141 & 0x80000000) == 0)
                                                                      {
LABEL_102:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v137, v138);
                                                                        if ((v134 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_103;
                                                                        }

                                                                        goto LABEL_135;
                                                                      }

LABEL_134:
                                                                      operator delete(v140[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v137, v138);
                                                                      if ((v134 & 0x80000000) == 0)
                                                                      {
LABEL_103:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v130, v131);
                                                                        if ((v127 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_104;
                                                                        }

                                                                        goto LABEL_136;
                                                                      }

LABEL_135:
                                                                      operator delete(v133);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v130, v131);
                                                                      if ((v127 & 0x80000000) == 0)
                                                                      {
LABEL_104:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v123, v124);
                                                                        if ((v120 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_105;
                                                                        }

                                                                        goto LABEL_137;
                                                                      }

LABEL_136:
                                                                      operator delete(v126[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v123, v124);
                                                                      if ((v120 & 0x80000000) == 0)
                                                                      {
LABEL_105:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v116, v117);
                                                                        if ((v113 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_106;
                                                                        }

                                                                        goto LABEL_138;
                                                                      }

LABEL_137:
                                                                      operator delete(v119);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v116, v117);
                                                                      if ((v113 & 0x80000000) == 0)
                                                                      {
LABEL_106:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v109, v110);
                                                                        if ((v106 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_107;
                                                                        }

                                                                        goto LABEL_139;
                                                                      }

LABEL_138:
                                                                      operator delete(v112[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v109, v110);
                                                                      if ((v106 & 0x80000000) == 0)
                                                                      {
LABEL_107:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v102, v103);
                                                                        if ((v99 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_108;
                                                                        }

                                                                        goto LABEL_140;
                                                                      }

LABEL_139:
                                                                      operator delete(v105);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v102, v103);
                                                                      if ((v99 & 0x80000000) == 0)
                                                                      {
LABEL_108:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v95, v96);
                                                                        if ((v92 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_109;
                                                                        }

                                                                        goto LABEL_141;
                                                                      }

LABEL_140:
                                                                      operator delete(v98[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v95, v96);
                                                                      if ((v92 & 0x80000000) == 0)
                                                                      {
LABEL_109:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v88, v89[0]);
                                                                        if ((v85 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_110;
                                                                        }

                                                                        goto LABEL_142;
                                                                      }

LABEL_141:
                                                                      operator delete(v91);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v88, v89[0]);
                                                                      if ((v85 & 0x80000000) == 0)
                                                                      {
LABEL_110:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v81, v82[0]);
                                                                        if ((v78 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_111;
                                                                        }

                                                                        goto LABEL_143;
                                                                      }

LABEL_142:
                                                                      operator delete(v84[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v81, v82[0]);
                                                                      if ((v78 & 0x80000000) == 0)
                                                                      {
LABEL_111:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v74, v75[0]);
                                                                        if ((v71 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_112;
                                                                        }

                                                                        goto LABEL_144;
                                                                      }

LABEL_143:
                                                                      operator delete(v77);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v74, v75[0]);
                                                                      if ((v71 & 0x80000000) == 0)
                                                                      {
LABEL_112:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v67, v68[0]);
                                                                        if ((v64 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_113;
                                                                        }

                                                                        goto LABEL_145;
                                                                      }

LABEL_144:
                                                                      operator delete(v70[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v67, v68[0]);
                                                                      if ((v64 & 0x80000000) == 0)
                                                                      {
LABEL_113:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v60, v61[0]);
                                                                        if ((v57 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_114;
                                                                        }

                                                                        goto LABEL_146;
                                                                      }

LABEL_145:
                                                                      operator delete(v63[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v60, v61[0]);
                                                                      if ((v57 & 0x80000000) == 0)
                                                                      {
LABEL_114:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v53, v54[0]);
                                                                        if ((v50 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_115;
                                                                        }

                                                                        goto LABEL_147;
                                                                      }

LABEL_146:
                                                                      operator delete(v56[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v53, v54[0]);
                                                                      if ((v50 & 0x80000000) == 0)
                                                                      {
LABEL_115:
                                                                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v46, v47[0]);
                                                                        if ((v43 & 0x80000000) == 0)
                                                                        {
                                                                          return v8;
                                                                        }

LABEL_148:
                                                                        operator delete(v42[0]);
                                                                        return v8;
                                                                      }

LABEL_147:
                                                                      operator delete(v49[0]);
                                                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v46, v47[0]);
                                                                      if ((v43 & 0x80000000) == 0)
                                                                      {
                                                                        return v8;
                                                                      }

                                                                      goto LABEL_148;
                                                                    }

LABEL_122:
                                                                    operator delete(v34[0]);
                                                                    goto LABEL_79;
                                                                  }

LABEL_121:
                                                                  operator delete(v36[0]);
                                                                  if ((v35 & 0x80000000) == 0)
                                                                  {
                                                                    goto LABEL_79;
                                                                  }

                                                                  goto LABEL_122;
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return this;
}

void webrtc::PayloadTypePicker::AddMapping(uint64_t a1, unsigned __int8 **a2, unsigned __int8 a3, webrtc::Codec *a4)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *a2;
  v9 = a2[1];
  while (v8 != v9)
  {
    if (*v8 == v7)
    {
      webrtc::Codec::Codec(v30, (v8 + 8));
      v11 = webrtc::MatchesWithReferenceAttributes(a4, v30, v10);
      webrtc::Codec::~Codec(v30);
      if (v11)
      {
        goto LABEL_32;
      }
    }

    v8 += 224;
  }

  webrtc::Codec::Codec(v29, a4);
  v30[0] = v7;
  webrtc::Codec::Codec(v31, v29);
  v13 = a2[1];
  v12 = a2[2];
  if (v13 >= v12)
  {
    v23 = 0x6DB6DB6DB6DB6DB7 * ((v13 - *a2) >> 5) + 1;
    if (v23 > 0x124924924924924)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v24 = 0x6DB6DB6DB6DB6DB7 * ((v12 - *a2) >> 5);
    if (2 * v24 > v23)
    {
      v23 = 2 * v24;
    }

    if (v24 >= 0x92492492492492)
    {
      v25 = 0x124924924924924;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      if (v25 <= 0x124924924924924)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_33:
    __break(1u);
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  *v13 = v30[0];
  *(v13 + 1) = &unk_288291428;
  *(v13 + 2) = v31[1];
  v14 = v32;
  *(v13 + 5) = v33;
  *(v13 + 24) = v14;
  v33 = 0;
  v32 = 0uLL;
  *(v13 + 3) = v34;
  v13[64] = 0;
  v13[88] = 0;
  if (v37 == 1)
  {
    v15 = v35;
    *(v13 + 10) = v36;
    *(v13 + 4) = v15;
    v36 = 0;
    v35 = 0uLL;
    v13[88] = 1;
  }

  v13[144] = 0;
  *(v13 + 12) = 0;
  *(v13 + 12) = v38;
  v16 = v39;
  v17 = v40;
  *(v13 + 17) = v41;
  *(v13 + 120) = v17;
  *(v13 + 104) = v16;
  v38 = 0;
  v13[168] = 0;
  if (v44 == 1)
  {
    v18 = v42;
    *(v13 + 20) = v43;
    *(v13 + 9) = v18;
    v43 = 0;
    v42 = 0uLL;
    v13[168] = 1;
  }

  v20 = v45;
  v19 = v46;
  *(v13 + 23) = v46;
  v21 = v13 + 184;
  *(v13 + 22) = v20;
  v22 = v47;
  *(v13 + 24) = v47;
  if (v22)
  {
    *(v19 + 16) = v21;
    v45 = &v46;
    v46 = 0;
    v47 = 0;
  }

  else
  {
    *(v13 + 22) = v21;
  }

  std::vector<webrtc::FeedbackParam>::vector[abi:sn200100](v13 + 25, v48);
  a2[1] = v13 + 224;
  webrtc::Codec::~Codec(v31);
  webrtc::Codec::~Codec(v29);
  v26 = a2[4];
  if (!v26)
  {
LABEL_31:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v27 = v26;
      v28 = v26[25];
      if (v28 <= v7)
      {
        break;
      }

      v26 = *v27;
      if (!*v27)
      {
        goto LABEL_31;
      }
    }

    if (v28 >= v7)
    {
      break;
    }

    v26 = v27[1];
    if (!v26)
    {
      goto LABEL_31;
    }
  }

LABEL_32:
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

void webrtc::PayloadTypePicker::SuggestMapping(webrtc::Codec *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v136 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 3);
  if (v7 > 0x7F)
  {
LABEL_8:
    v114 = a4;
    v11 = *a2;
    v12 = *(a2 + 8);
    if (*a2 != v12)
    {
      v14 = v126 <= "No such payload type" && &v126[2] + 4 > "No such payload type";
      if (!a3)
      {
        while (1)
        {
          webrtc::Codec::Codec(&v130, (v11 + 8));
          v26 = webrtc::MatchesWithReferenceAttributes(&v130, v4, v25);
          webrtc::Codec::~Codec(&v130);
          if (v26)
          {
            break;
          }

          v11 += 224;
          if (v11 == v12)
          {
            goto LABEL_43;
          }
        }

LABEL_42:
        v27 = *v11;
        *a4 = 0;
        *(a4 + 38) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 8) = 0;
        *(a4 + 29) = 0;
        *(a4 + 40) = v27;
        *(a4 + 41) = 1;
        return;
      }

      v15 = (a3 + 16);
      do
      {
        webrtc::Codec::Codec(&v130, (v11 + 8));
        v17 = webrtc::MatchesWithReferenceAttributes(&v130, v4, v16);
        webrtc::Codec::~Codec(&v130);
        if (!v17)
        {
          goto LABEL_17;
        }

        v18 = *v15;
        if (!*v15)
        {
          goto LABEL_27;
        }

        v19 = *v11;
        v20 = v15;
        do
        {
          v21 = *(v18 + 32);
          v93 = v21 >= v19;
          v22 = v21 < v19;
          if (v93)
          {
            v20 = v18;
          }

          v18 = *(v18 + 8 * v22);
        }

        while (v18);
        if (v20 != v15 && *(v20 + 32) <= v19)
        {
          LODWORD(v130) = 0;
          v132[14] = 0;
          *v132 = 0;
          __p = 0uLL;
          *&v132[5] = 0;
          webrtc::Codec::Codec(v133, (v20 + 5));
          v134 = 1;
          if (!v130 && !webrtc::MatchesWithReferenceAttributes(v133, v4, v24))
          {
            v23 = 0;
            if (v134 != 1)
            {
              goto LABEL_31;
            }

LABEL_30:
            webrtc::Codec::~Codec(v133);
            goto LABEL_31;
          }
        }

        else
        {
LABEL_27:
          HIBYTE(v126[2]) = 20;
          if (v14)
          {
            goto LABEL_278;
          }

          strcpy(v126, "No such payload type");
          *v127 = 0;
          v127[4] = 0;
          v127[6] = 0;
          LODWORD(v130) = 3;
          __p = *"No such payload type";
          *v132 = v126[2];
          *&v132[8] = 0;
          *&v132[11] = *&v127[3];
          v133[0] = 0;
          v134 = 0;
        }

        v23 = 1;
        if (v134 == 1)
        {
          goto LABEL_30;
        }

LABEL_31:
        if ((v132[7] & 0x80000000) != 0)
        {
          operator delete(__p);
          if (v23)
          {
            goto LABEL_42;
          }
        }

        else if (v23)
        {
          goto LABEL_42;
        }

        v4 = a1;
LABEL_17:
        v11 += 224;
      }

      while (v11 != v12);
    }

LABEL_43:
    v121[0] = 0;
    v121[1] = 0;
    v120 = v121;
    v28 = *(a2 + 24);
    if (v28 != a2 + 32)
    {
      if (v120 != v121)
      {
        v29 = v121;
        do
        {
          v30 = v29[2];
          v31 = *v30 == v29;
          v29 = v30;
        }

        while (v31);
      }

      operator new();
    }

    v32 = v4 + 16;
    v33 = *(v4 + 39);
    if (v33 >= 0)
    {
      v34 = v4 + 16;
    }

    else
    {
      v34 = *(v4 + 2);
    }

    if (v33 >= 0)
    {
      v35 = *(v4 + 39);
    }

    else
    {
      v35 = *(v4 + 3);
    }

    if (!*(v4 + 2))
    {
      if (v35 != 3)
      {
        v63 = 0;
        v36 = v114;
        goto LABEL_206;
      }

      v58 = *v34;
      v59 = webrtc::kRedCodecName;
      v36 = v114;
      if (v58 != webrtc::kRedCodecName)
      {
        if ((v58 - 65) < 0x1A)
        {
          LOBYTE(v58) = v58 + 32;
        }

        if (webrtc::kRedCodecName - 65 < 0x1A)
        {
          v59 = webrtc::kRedCodecName + 32;
        }

        if (v58 != v59)
        {
          goto LABEL_205;
        }
      }

      v60 = v34[1];
      v61 = HIBYTE(webrtc::kRedCodecName);
      if (v60 != HIBYTE(webrtc::kRedCodecName))
      {
        if ((v60 - 65) < 0x1A)
        {
          LOBYTE(v60) = v60 + 32;
        }

        if (HIBYTE(webrtc::kRedCodecName) - 65 < 0x1A)
        {
          v61 = HIBYTE(webrtc::kRedCodecName) + 32;
        }

        if (v60 != v61)
        {
          goto LABEL_205;
        }
      }

      v62 = v34[2];
      if (v62 != 100)
      {
        if ((v62 - 65) < 0x1A)
        {
          LOBYTE(v62) = v62 + 32;
        }

        if (v62 != 100)
        {
          goto LABEL_205;
        }
      }

      goto LABEL_238;
    }

    if (v35 == 3)
    {
      v64 = *v34;
      v65 = webrtc::kAv1CodecName;
      v36 = v114;
      if (v64 != webrtc::kAv1CodecName)
      {
        if ((v64 - 65) < 0x1A)
        {
          LOBYTE(v64) = v64 + 32;
        }

        if (webrtc::kAv1CodecName - 65 < 0x1A)
        {
          v65 = webrtc::kAv1CodecName + 32;
        }

        if (v64 != v65)
        {
          goto LABEL_171;
        }
      }

      v66 = v34[1];
      v67 = HIBYTE(webrtc::kAv1CodecName);
      if (v66 != HIBYTE(webrtc::kAv1CodecName))
      {
        if ((v66 - 65) < 0x1A)
        {
          LOBYTE(v66) = v66 + 32;
        }

        if (HIBYTE(webrtc::kAv1CodecName) - 65 < 0x1A)
        {
          v67 = HIBYTE(webrtc::kAv1CodecName) + 32;
        }

        if (v66 != v67)
        {
          goto LABEL_171;
        }
      }

      v55 = v34[2];
      v56 = 49;
LABEL_148:
      if (v55 == v56)
      {
        goto LABEL_238;
      }

      if ((v55 - 65) < 0x1A)
      {
        LOBYTE(v55) = v55 + 32;
      }

      if ((v56 - 65) < 0x1A)
      {
        LOBYTE(v56) = v56 + 32;
      }

      if (v55 == v56)
      {
        goto LABEL_238;
      }

LABEL_171:
      if (absl::EqualsIgnoreCase(v34, v35, &webrtc::kVp9CodecName, 3))
      {
        v130 = 0;
        __p = 0uLL;
        std::string::basic_string[abi:sn200100]<0>(&v125, "profile-id");
        Param = webrtc::Codec::GetParam(a1, &v125, &v130);
        if (SHIBYTE(v126[1]) < 0)
        {
          v83 = Param;
          operator delete(v125);
          Param = v83;
        }

        v84 = !Param || !std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v130, "1") && !std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v130, "3");
        if (SHIBYTE(__p) < 0)
        {
          operator delete(v130);
        }

        if (v84)
        {
          goto LABEL_205;
        }

LABEL_238:
        if (v121[0])
        {
          for (i = 35; i != 64; ++i)
          {
            v96 = i;
            v107 = v121[0];
            while (1)
            {
              v108 = *(v107 + 25);
              if (v108 <= i)
              {
                break;
              }

LABEL_241:
              v107 = *v107;
              if (!v107)
              {
                goto LABEL_248;
              }
            }

            if (v108 < i)
            {
              ++v107;
              goto LABEL_241;
            }

            v63 = 1;
          }

LABEL_206:
          if (v121[0])
          {
            v95 = 96;
            while (1)
            {
              v96 = v95;
              v97 = v121[0];
              while (1)
              {
                v98 = *(v97 + 25);
                if (v98 <= v95)
                {
                  break;
                }

LABEL_209:
                v97 = *v97;
                if (!v97)
                {
                  goto LABEL_248;
                }
              }

              if (v98 < v95)
              {
                break;
              }

              if (++v95 == 128)
              {
                if (v63)
                {
                  operator new();
                }

                v111 = 35;
LABEL_271:
                v96 = v111;
                v112 = v121[0];
                while (1)
                {
                  v113 = *(v112 + 25);
                  if (v113 <= v111)
                  {
                    if (v113 >= v111)
                    {
                      if (++v111 == 64)
                      {
                        operator new();
                      }

                      goto LABEL_271;
                    }

                    ++v112;
                  }

                  v112 = *v112;
                  if (!v112)
                  {
                    goto LABEL_248;
                  }
                }
              }
            }

            ++v97;
            goto LABEL_209;
          }

          v96 = 96;
        }

        else
        {
          v96 = 35;
        }

LABEL_248:
        *v36 = 0;
        *(v36 + 38) = 0;
        *(v36 + 16) = 0;
        *(v36 + 24) = 0;
        *(v36 + 8) = 0;
        *(v36 + 29) = 0;
        *(v36 + 40) = v96;
        *(v36 + 41) = 1;
        std::__tree<sigslot::_signal_base_interface *>::destroy(&v120, v121[0]);
        webrtc::Codec::Codec(v129, a1);
        webrtc::PayloadTypePicker::AddMapping(v117, a2, v96, v129);
        if (v119 < 0)
        {
          operator delete(v118);
        }

        webrtc::Codec::~Codec(v129);
        return;
      }

      v85 = *(a1 + 39);
      if (v85 >= 0)
      {
        v86 = v32;
      }

      else
      {
        v86 = *(a1 + 2);
      }

      if (v85 >= 0)
      {
        v87 = *(a1 + 39);
      }

      else
      {
        v87 = *(a1 + 3);
      }

      if (absl::EqualsIgnoreCase(v86, v87, "rtx", 3))
      {
        v130 = 0;
        __p = 0uLL;
        std::string::basic_string[abi:sn200100]<0>(&v125, "apt");
        if (webrtc::Codec::GetParam(a1, &v125, &v130))
        {
          if (__p >= 0)
          {
            v88 = &v130;
          }

          else
          {
            v88 = v130;
          }

          if (__p >= 0)
          {
            v89 = HIBYTE(__p);
          }

          else
          {
            v89 = __p;
          }

          v90 = webrtc::string_to_number_internal::ParseSigned(v88, v89, 0xAuLL);
          if ((v91 & ((v90 + 0x80000000) >> 32 == 0)) != 0)
          {
            v92 = v90 | 0x100000000;
          }

          else
          {
            v92 = 0;
          }

          LODWORD(v92) = v92 - 35;
          if (BYTE4(v92))
          {
            v93 = v92 >= 0x1D;
          }

          else
          {
            v93 = 1;
          }

          v94 = !v93;
        }

        else
        {
          v94 = 0;
        }

        if (SHIBYTE(v126[1]) < 0)
        {
          operator delete(v125);
          if ((SHIBYTE(__p) & 0x80000000) == 0)
          {
LABEL_237:
            if (v94)
            {
              goto LABEL_238;
            }

            goto LABEL_205;
          }
        }

        else if ((SHIBYTE(__p) & 0x80000000) == 0)
        {
          goto LABEL_237;
        }

        operator delete(v130);
        if (v94)
        {
          goto LABEL_238;
        }
      }

LABEL_205:
      v63 = 0;
      goto LABEL_206;
    }

    v36 = v114;
    if (v35 != 4)
    {
      if (v35 != 10)
      {
        goto LABEL_171;
      }

      v37 = *v34;
      v38 = webrtc::kFlexfecCodecName[0];
      if (v37 != webrtc::kFlexfecCodecName[0])
      {
        if ((v37 - 65) < 0x1A)
        {
          LOBYTE(v37) = v37 + 32;
        }

        if (webrtc::kFlexfecCodecName[0] - 65 < 0x1A)
        {
          v38 = webrtc::kFlexfecCodecName[0] + 32;
        }

        if (v37 != v38)
        {
          goto LABEL_171;
        }
      }

      v39 = v34[1];
      v40 = webrtc::kFlexfecCodecName[1];
      if (v39 != webrtc::kFlexfecCodecName[1])
      {
        if ((v39 - 65) < 0x1A)
        {
          LOBYTE(v39) = v39 + 32;
        }

        if (webrtc::kFlexfecCodecName[1] - 65 < 0x1A)
        {
          v40 = webrtc::kFlexfecCodecName[1] + 32;
        }

        if (v39 != v40)
        {
          goto LABEL_171;
        }
      }

      v41 = v34[2];
      v42 = webrtc::kFlexfecCodecName[2];
      if (v41 != webrtc::kFlexfecCodecName[2])
      {
        if ((v41 - 65) < 0x1A)
        {
          LOBYTE(v41) = v41 + 32;
        }

        if (webrtc::kFlexfecCodecName[2] - 65 < 0x1A)
        {
          v42 = webrtc::kFlexfecCodecName[2] + 32;
        }

        if (v41 != v42)
        {
          goto LABEL_171;
        }
      }

      v43 = v34[3];
      v44 = webrtc::kFlexfecCodecName[3];
      if (v43 != webrtc::kFlexfecCodecName[3])
      {
        if ((v43 - 65) < 0x1A)
        {
          LOBYTE(v43) = v43 + 32;
        }

        if (webrtc::kFlexfecCodecName[3] - 65 < 0x1A)
        {
          v44 = webrtc::kFlexfecCodecName[3] + 32;
        }

        if (v43 != v44)
        {
          goto LABEL_171;
        }
      }

      v45 = v34[4];
      v46 = webrtc::kFlexfecCodecName[4];
      if (v45 != webrtc::kFlexfecCodecName[4])
      {
        if ((v45 - 65) < 0x1A)
        {
          LOBYTE(v45) = v45 + 32;
        }

        if (webrtc::kFlexfecCodecName[4] - 65 < 0x1A)
        {
          v46 = webrtc::kFlexfecCodecName[4] + 32;
        }

        if (v45 != v46)
        {
          goto LABEL_171;
        }
      }

      v47 = v34[5];
      v48 = webrtc::kFlexfecCodecName[5];
      if (v47 != webrtc::kFlexfecCodecName[5])
      {
        if ((v47 - 65) < 0x1A)
        {
          LOBYTE(v47) = v47 + 32;
        }

        if (webrtc::kFlexfecCodecName[5] - 65 < 0x1A)
        {
          v48 = webrtc::kFlexfecCodecName[5] + 32;
        }

        if (v47 != v48)
        {
          goto LABEL_171;
        }
      }

      v49 = v34[6];
      v50 = webrtc::kFlexfecCodecName[6];
      if (v49 != webrtc::kFlexfecCodecName[6])
      {
        if ((v49 - 65) < 0x1A)
        {
          LOBYTE(v49) = v49 + 32;
        }

        if (webrtc::kFlexfecCodecName[6] - 65 < 0x1A)
        {
          v50 = webrtc::kFlexfecCodecName[6] + 32;
        }

        if (v49 != v50)
        {
          goto LABEL_171;
        }
      }

      v51 = v34[7];
      v52 = webrtc::kFlexfecCodecName[7];
      if (v51 != webrtc::kFlexfecCodecName[7])
      {
        if ((v51 - 65) < 0x1A)
        {
          LOBYTE(v51) = v51 + 32;
        }

        if (webrtc::kFlexfecCodecName[7] - 65 < 0x1A)
        {
          v52 = webrtc::kFlexfecCodecName[7] + 32;
        }

        if (v51 != v52)
        {
          goto LABEL_171;
        }
      }

      v53 = v34[8];
      v54 = webrtc::kFlexfecCodecName[8];
      if (v53 != webrtc::kFlexfecCodecName[8])
      {
        if ((v53 - 65) < 0x1A)
        {
          LOBYTE(v53) = v53 + 32;
        }

        if (webrtc::kFlexfecCodecName[8] - 65 < 0x1A)
        {
          v54 = webrtc::kFlexfecCodecName[8] + 32;
        }

        if (v53 != v54)
        {
          goto LABEL_171;
        }
      }

      v55 = v34[9];
      v56 = webrtc::kFlexfecCodecName[9];
      goto LABEL_148;
    }

    v68 = "H265";
    v69 = v34;
    v70 = v35;
    while (1)
    {
      v72 = *v69++;
      v71 = v72;
      v74 = *v68++;
      v73 = v74;
      if (v71 != v74)
      {
        if ((v71 - 65) < 0x1A)
        {
          LOBYTE(v71) = v71 + 32;
        }

        if ((v73 - 65) < 0x1A)
        {
          LOBYTE(v73) = v73 + 32;
        }

        if (v71 != v73)
        {
          break;
        }
      }

      if (!--v70)
      {
        goto LABEL_238;
      }
    }

    v75 = "H264";
    v76 = v34;
    v77 = v35;
    do
    {
      v79 = *v76++;
      v78 = v79;
      v81 = *v75++;
      v80 = v81;
      if (v78 != v81)
      {
        if ((v78 - 65) < 0x1A)
        {
          LOBYTE(v78) = v78 + 32;
        }

        if ((v80 - 65) < 0x1A)
        {
          LOBYTE(v80) = v80 + 32;
        }

        if (v78 != v80)
        {
          goto LABEL_171;
        }
      }

      --v77;
    }

    while (v77);
    v130 = 0;
    __p = 0uLL;
    v125 = 0;
    v126[0] = 0;
    v126[1] = 0;
    HIBYTE(v128[2]) = 16;
    if (v128 <= "profile-level-id" && &v128[2] > "profile-level-id")
    {
LABEL_278:
      __break(1u);
    }

    strcpy(v128, "profile-level-id");
    v100 = webrtc::Codec::GetParam(a1, v128, &v130);
    v101 = v100;
    if (SHIBYTE(v128[2]) < 0)
    {
      operator delete(v128[0]);
      if (v101)
      {
        goto LABEL_223;
      }
    }

    else if (v100)
    {
LABEL_223:
      if (__p >= 0)
      {
        v102 = &v130;
      }

      else
      {
        v102 = v130;
      }

      if (__p >= 0)
      {
        v103 = HIBYTE(__p);
      }

      else
      {
        v103 = __p;
      }

      if (!absl::StartsWithIgnoreCase(v102, v103, "4d00", 4uLL))
      {
        goto LABEL_259;
      }

      std::string::basic_string[abi:sn200100]<0>(v128, "packetization-mode");
      v104 = webrtc::Codec::GetParam(a1, v128, &v125);
      if (SHIBYTE(v128[2]) < 0)
      {
        operator delete(v128[0]);
      }

      if (v104)
      {
        v105 = std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v125, "0");
      }

      else
      {
LABEL_259:
        if (__p >= 0)
        {
          v109 = &v130;
        }

        else
        {
          v109 = v130;
        }

        if (__p >= 0)
        {
          v110 = HIBYTE(__p);
        }

        else
        {
          v110 = __p;
        }

        v105 = absl::StartsWithIgnoreCase(v109, v110, "f400", 4uLL);
      }

      LOBYTE(v101) = v105;
      if (SHIBYTE(v126[1]) < 0)
      {
LABEL_267:
        operator delete(v125);
        if (SHIBYTE(__p) < 0)
        {
LABEL_268:
          operator delete(v130);
          if (v101)
          {
            goto LABEL_238;
          }

          goto LABEL_205;
        }

LABEL_257:
        if (v101)
        {
          goto LABEL_238;
        }

        goto LABEL_205;
      }

LABEL_256:
      if (SHIBYTE(__p) < 0)
      {
        goto LABEL_268;
      }

      goto LABEL_257;
    }

    if (SHIBYTE(v126[1]) < 0)
    {
      goto LABEL_267;
    }

    goto LABEL_256;
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = *(a1 + 3);
    do
    {
      v10 = *(v8 + 25);
      if (v10 <= v9)
      {
        if (v10 >= v9)
        {
          goto LABEL_8;
        }

        ++v8;
      }

      v8 = *v8;
    }

    while (v8);
  }

  webrtc::Codec::Codec(v135, a1);
  webrtc::PayloadTypePicker::AddMapping(v122, a2, v7, v135);
  if (v124 < 0)
  {
    operator delete(v123);
  }

  webrtc::Codec::~Codec(v135);
  v57 = *(v4 + 3);
  *a4 = 0;
  *(a4 + 38) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 29) = 0;
  *(a4 + 40) = v57;
  *(a4 + 41) = 1;
}

void webrtc::PayloadTypeRecorder::AddMapping(webrtc *this@<X2>, uint64_t a2@<X0>, unsigned __int8 a3@<W1>, uint64_t a4@<X8>)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = (a2 + 16);
  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_10;
  }

  v10 = a2 + 16;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= a3;
    v13 = v11 < a3;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 == v9 || *(v10 + 32) > a3 || (webrtc::MatchesWithCodecRules(this, (v10 + 40), this), (v14 & 1) != 0))
  {
LABEL_10:
    v15 = *(a2 + 72);
    if (!v15)
    {
LABEL_16:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = *(v15 + 25);
        if (v17 <= a3)
        {
          break;
        }

        v15 = *v16;
        if (!*v16)
        {
          goto LABEL_16;
        }
      }

      if (v17 >= a3)
      {
        break;
      }

      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    v18 = *v9;
    if (!*v9)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 32);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v19;
        if (!*v19)
        {
          goto LABEL_23;
        }
      }

      if (v20 >= a3)
      {
        break;
      }

      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    v21 = *a2;
    webrtc::Codec::Codec(v88, this);
    webrtc::PayloadTypePicker::AddMapping(v69, v21, a3, v88);
    if (v71 < 0)
    {
      operator delete(__p);
    }

    webrtc::Codec::~Codec(v88);
    goto LABEL_27;
  }

  if (*(a2 + 56) >= 1)
  {
    for (i = *(a2 + 72); i; i = *i)
    {
      v27 = *(i + 25);
      if (v27 <= a3)
      {
        if (v27 >= a3)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            v73 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/payload_type_picker.cc";
            v74 = 2050;
            v75 = &v72;
            v76[0] = "Rejected attempt to redefine mapping for PT ";
            v76[1] = &v73;
            webrtc::webrtc_logging_impl::MakeVal<webrtc::PayloadType,(void *)0>(&v85, a3);
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v77, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
              v78 = v76;
              if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v85.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v77 = v85;
              v78 = v76;
            }

            v79 = " from ";
            v80 = &v77;
            webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(v10 + 40, &v85);
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v81, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
              v82 = &v79;
              if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v85.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v81 = v85;
              v82 = &v79;
            }

            v83 = " to ";
            v84 = &v81;
            webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(this, &v87);
            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v85, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
              v68 = &v83;
              v86 = &v83;
              if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v87.__r_.__value_.__l.__data_);
                v68 = v86;
              }
            }

            else
            {
              v85 = v87;
              v68 = &v83;
              v86 = &v83;
            }

            webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n", v61, v62, v63, v64, v65, v66, v67, **(*(*(*(v68[1] + 3) + 8) + 24) + 8));
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
              if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_121;
              }

LABEL_118:
              if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
              {
LABEL_122:
                operator delete(v77.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_118;
              }

LABEL_121:
              operator delete(v81.__r_.__value_.__l.__data_);
              if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_122;
              }
            }
          }

          *a4 = 7;
          operator new();
        }

        ++i;
      }
    }
  }

  v23 = *(this + 39);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = this + 16;
    v25 = *(v10 + 79);
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_42:
    v26 = *(v10 + 56);
    if (v23 != *(v10 + 64))
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  v24 = *(this + 2);
  v23 = *(this + 3);
  v25 = *(v10 + 79);
  if (v25 < 0)
  {
    goto LABEL_42;
  }

LABEL_32:
  v26 = (v10 + 56);
  if (v23 != v25)
  {
LABEL_53:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      v87.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/payload_type_picker.cc";
      v87.__r_.__value_.__l.__size_ = 2154;
      v87.__r_.__value_.__r.__words[2] = v76;
      v79 = "Warning: You attempted to redefine a codec from ";
      v80 = &v87;
      webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(v10 + 40, &v85);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v81, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
        v82 = &v79;
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v81 = v85;
        v82 = &v79;
      }

      v83 = " to ";
      v84 = &v81;
      v73 = " new codec ";
      v74 = &v83;
      webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(this, &v77);
      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v85, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
        v46 = &v73;
        v86 = &v73;
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
          v46 = v86;
        }
      }

      else
      {
        v85 = v77;
        v46 = &v73;
        v86 = &v73;
      }

      webrtc::webrtc_logging_impl::Log("\r\t\n\t\t\n", v39, v40, v41, v42, v43, v44, v45, **(*(*(v46[1] + 1) + 24) + 8));
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_66;
  }

LABEL_43:
  if (v23)
  {
    do
    {
      v36 = *v24++;
      v35 = v36;
      v38 = *v26++;
      v37 = v38;
      if (v35 != v38)
      {
        if ((v35 - 65) < 0x1A)
        {
          LOBYTE(v35) = v35 + 32;
        }

        if ((v37 - 65) < 0x1A)
        {
          LOBYTE(v37) = v37 + 32;
        }

        if (v35 != v37)
        {
          goto LABEL_53;
        }
      }
    }

    while (--v23);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/payload_type_picker.cc");
  }

LABEL_66:
  v47 = *(a2 + 72);
  if (!v47)
  {
LABEL_72:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v48 = v47;
      v49 = *(v47 + 25);
      if (v49 <= a3)
      {
        break;
      }

      v47 = *v48;
      if (!*v48)
      {
        goto LABEL_72;
      }
    }

    if (v49 >= a3)
    {
      break;
    }

    v47 = v48[1];
    if (!v47)
    {
      goto LABEL_72;
    }
  }

  v50 = *v9;
  if (*v9)
  {
    v51 = v9;
    v52 = *v9;
    do
    {
      v53 = *(v52 + 32);
      v12 = v53 >= a3;
      v54 = v53 < a3;
      if (v12)
      {
        v51 = v52;
      }

      v52 = *(v52 + 8 * v54);
    }

    while (v52);
    if (v51 != v9 && *(v51 + 32) <= a3)
    {
      webrtc::Codec::operator=((v51 + 5), this);
      goto LABEL_27;
    }

    v55 = *v51;
    if (*(a2 + 8) == v51)
    {
      v57 = v51;
      goto LABEL_101;
    }

    if (v55)
    {
      v56 = *v51;
      do
      {
        v57 = v56;
        v56 = v56[1];
      }

      while (v56);
      goto LABEL_90;
    }
  }

  else
  {
    v51 = v9;
    if (*(a2 + 8) == v9)
    {
      v55 = 0;
      v51 = v9;
      v57 = v9;
      goto LABEL_101;
    }
  }

  v57 = v51;
  do
  {
    v58 = v57;
    v57 = v57[2];
  }

  while (*v57 == v58);
  v55 = 0;
LABEL_90:
  if (*(v57 + 32) >= a3)
  {
    if (v50)
    {
      while (1)
      {
        while (1)
        {
          v59 = v50;
          v60 = *(v50 + 32);
          if (v60 <= a3)
          {
            break;
          }

          v50 = *v59;
          v9 = v59;
          if (!*v59)
          {
            goto LABEL_105;
          }
        }

        if (v60 >= a3)
        {
          break;
        }

        v9 = v59 + 1;
        v50 = v59[1];
        if (!v50)
        {
          goto LABEL_105;
        }
      }
    }

    goto LABEL_104;
  }

LABEL_101:
  if (v55)
  {
    v9 = v57 + 1;
  }

  else
  {
    v9 = v51;
  }

LABEL_104:
  if (!*v9)
  {
LABEL_105:
    operator new();
  }

LABEL_27:
  *a4 = 0;
  *(a4 + 38) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 29) = 0;
}