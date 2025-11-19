BOOL webrtc::MediaStream::RemoveTrack(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  (**v2)(*a2);
  (*(*v2 + 40))(v18, v2);
  v4 = *(a1 + 64);
  if (v4 != *(a1 + 72))
  {
    while (1)
    {
      (*(**v4 + 40))(__p);
      v5 = v21;
      if ((v21 & 0x80u) == 0)
      {
        v6 = v21;
      }

      else
      {
        v6 = __p[1];
      }

      v7 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v7 = v18[1];
      }

      if (v6 == v7)
      {
        if ((v21 & 0x80u) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if ((v19 & 0x80u) == 0)
        {
          v9 = v18;
        }

        else
        {
          v9 = v18[0];
        }

        v10 = memcmp(v8, v9, v6) == 0;
        if ((v5 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }
      }

      operator delete(__p[0]);
LABEL_19:
      if (!v10 && ++v4 != *(a1 + 72))
      {
        continue;
      }

      break;
    }
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v11 = *(a1 + 72);
  v12 = v4 != v11;
  if (v4 != v11)
  {
    v13 = v4 + 1;
    if (v4 + 1 != v11)
    {
      do
      {
        v14 = *(v13 - 1);
        *(v13 - 1) = *v13;
        *v13 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = *(a1 + 72);
      v4 = v13 - 1;
    }

    while (v11 != v4)
    {
      v16 = *--v11;
      v15 = v16;
      if (v16)
      {
        (*(*v15 + 8))(v15);
      }
    }

    *(a1 + 72) = v4;
    webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(a1);
  }

  (*(*v2 + 8))(v2);
  return v12;
}

{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  (**v2)(*a2);
  (*(*v2 + 40))(v18, v2);
  v4 = *(a1 + 88);
  if (v4 != *(a1 + 96))
  {
    while (1)
    {
      (*(**v4 + 40))(__p);
      v5 = v21;
      if ((v21 & 0x80u) == 0)
      {
        v6 = v21;
      }

      else
      {
        v6 = __p[1];
      }

      v7 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v7 = v18[1];
      }

      if (v6 == v7)
      {
        if ((v21 & 0x80u) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if ((v19 & 0x80u) == 0)
        {
          v9 = v18;
        }

        else
        {
          v9 = v18[0];
        }

        v10 = memcmp(v8, v9, v6) == 0;
        if ((v5 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }
      }

      operator delete(__p[0]);
LABEL_19:
      if (!v10 && ++v4 != *(a1 + 96))
      {
        continue;
      }

      break;
    }
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v11 = *(a1 + 96);
  v12 = v4 != v11;
  if (v4 != v11)
  {
    v13 = v4 + 1;
    if (v4 + 1 != v11)
    {
      do
      {
        v14 = *(v13 - 1);
        *(v13 - 1) = *v13;
        *v13 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = *(a1 + 96);
      v4 = v13 - 1;
    }

    while (v11 != v4)
    {
      v16 = *--v11;
      v15 = v16;
      if (v16)
      {
        (*(*v15 + 8))(v15);
      }
    }

    *(a1 + 96) = v4;
    webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(a1);
  }

  (*(*v2 + 8))(v2);
  return v12;
}

void webrtc::MediaStream::FindAudioTrack(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v5 != v4)
  {
    while (1)
    {
      (*(**v5 + 40))(__p);
      v8 = v17;
      if ((v17 & 0x80u) == 0)
      {
        v9 = v17;
      }

      else
      {
        v9 = __p[1];
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if (v10 < 0)
      {
        v10 = a2[1];
      }

      if (v9 == v10)
      {
        if ((v17 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if (v11 >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        v14 = memcmp(v12, v13, v9) == 0;
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = 0;
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      operator delete(__p[0]);
LABEL_18:
      v4 = *(a1 + 72);
      if (!v14)
      {
        v5 += 8;
        if (v5 != v4)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v5 == v4)
  {
    *a3 = 0;
  }

  else
  {
    v15 = *v5;
    *a3 = *v5;
    if (v15)
    {
      (**v15)(v15);
    }
  }
}

void webrtc::MediaStream::FindVideoTrack(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v5 != v4)
  {
    while (1)
    {
      (*(**v5 + 40))(__p);
      v8 = v17;
      if ((v17 & 0x80u) == 0)
      {
        v9 = v17;
      }

      else
      {
        v9 = __p[1];
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if (v10 < 0)
      {
        v10 = a2[1];
      }

      if (v9 == v10)
      {
        if ((v17 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if (v11 >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        v14 = memcmp(v12, v13, v9) == 0;
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = 0;
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      operator delete(__p[0]);
LABEL_18:
      v4 = *(a1 + 96);
      if (!v14)
      {
        v5 += 8;
        if (v5 != v4)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v5 == v4)
  {
    *a3 = 0;
  }

  else
  {
    v15 = *v5;
    *a3 = *v5;
    if (v15)
    {
      (**v15)(v15);
    }
  }
}

void webrtc::MediaStream::id(webrtc::MediaStream *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

uint64_t webrtc::MediaStream::GetAudioTracks@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 64);
  v3 = *(this + 72);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t webrtc::MediaStream::GetVideoTracks@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 88);
  v3 = *(this + 96);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void webrtc::Notifier<webrtc::MediaStreamInterface>::UnregisterObserver(void *a1, uint64_t a2)
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

void non-virtual thunk towebrtc::Notifier<webrtc::MediaStreamInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2 != a1 + 1)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 1)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[3];
    operator delete(v2);
  }
}

uint64_t webrtc::MediaStreamInterface::AddTrack()
{
  return 0;
}

{
  return 0;
}

uint64_t webrtc::MediaStreamInterface::RemoveTrack()
{
  return 0;
}

{
  return 0;
}

BOOL webrtc::RefCountedObject<webrtc::MediaStream>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 28, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::MediaStream>::~RefCountedObject(webrtc::MediaStream *a1)
{
  webrtc::MediaStream::~MediaStream(a1);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::MediaStream>::~RefCountedObject(uint64_t a1)
{
  webrtc::MediaStream::~MediaStream((a1 - 8));
}

{
  webrtc::MediaStream::~MediaStream((a1 - 8));

  JUMPOUT(0x2743DA540);
}

void webrtc::MediaStream::~MediaStream(webrtc::MediaStream *this)
{
  *this = &unk_2882963C0;
  *(this + 1) = &unk_288296448;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 8);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  v7 = *(this + 8);
  if (v7)
  {
    v8 = *(this + 9);
    v9 = *(this + 8);
    if (v8 != v7)
    {
      do
      {
        v11 = *(v8 - 8);
        v8 -= 8;
        v10 = v11;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v8 != v7);
      v9 = *(this + 8);
    }

    *(this + 9) = v7;
    operator delete(v9);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *this = &unk_288296478;
  *(this + 1) = &unk_288296500;
  if (*(this + 4))
  {
    v12 = *(this + 3);
    v13 = *(*(this + 2) + 8);
    v14 = *v12;
    *(v14 + 8) = v13;
    *v13 = v14;
    *(this + 4) = 0;
    if (v12 != (this + 16))
    {
      do
      {
        v15 = *(v12 + 1);
        operator delete(v12);
        v12 = v15;
      }

      while (v15 != (this + 16));
    }
  }
}

void webrtc::AudioSourceInterface::options(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = 0;
  *(a1 + 5) = 0;
}

void *webrtc::MediaStreamObserver::MediaStreamObserver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_288296828;
  a1[1] = a2;
  if (a2)
  {
    (**a2)(a2);
  }

  (*(*a2 + 40))(a2);
  (*(*a2 + 48))(a2);
  v12 = *(a3 + 24);
  if (v12)
  {
    if (v12 == a3)
    {
      a1[11] = a1 + 8;
      (*(**(a3 + 24) + 24))(*(a3 + 24));
      v13 = *(a4 + 24);
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      a1[11] = v12;
      *(a3 + 24) = 0;
      v13 = *(a4 + 24);
      if (!v13)
      {
LABEL_12:
        a1[15] = 0;
        v14 = *(a5 + 24);
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_17:
        a1[19] = 0;
        v15 = *(a6 + 24);
        if (v15)
        {
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    a1[11] = 0;
    v13 = *(a4 + 24);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 != a4)
  {
    a1[15] = v13;
    *(a4 + 24) = 0;
    v14 = *(a5 + 24);
    if (v14)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  a1[15] = a1 + 12;
  (*(**(a4 + 24) + 24))(*(a4 + 24));
  v14 = *(a5 + 24);
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (v14 == a5)
  {
    a1[19] = a1 + 16;
    (*(**(a5 + 24) + 24))(*(a5 + 24));
    v15 = *(a6 + 24);
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_21:
    a1[23] = 0;
    goto LABEL_23;
  }

  a1[19] = v14;
  *(a5 + 24) = 0;
  v15 = *(a6 + 24);
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v15 == a6)
  {
    a1[23] = a1 + 20;
    (*(**(a6 + 24) + 24))(*(a6 + 24));
  }

  else
  {
    a1[23] = v15;
    *(a6 + 24) = 0;
  }

LABEL_23:
  (**(a1[1] + 8))();
  return a1;
}

void webrtc::MediaStreamObserver::~MediaStreamObserver(webrtc::MediaStreamObserver *this)
{
  *this = &unk_288296828;
  (*(*(*(this + 1) + 8) + 8))();
  v2 = *(this + 23);
  if (v2 == (this + 160))
  {
    (*(*v2 + 32))(v2);
    v3 = *(this + 19);
    if (v3 != (this + 128))
    {
      goto LABEL_5;
    }

LABEL_19:
    (*(*v3 + 32))(v3);
    v4 = *(this + 15);
    if (v4 != (this + 96))
    {
      goto LABEL_8;
    }

LABEL_20:
    (*(*v4 + 32))(v4);
    v5 = *(this + 11);
    if (v5 != (this + 64))
    {
      goto LABEL_11;
    }

LABEL_21:
    (*(*v5 + 32))(v5);
    v6 = *(this + 5);
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_22:
    v9 = *(this + 6);
    if (v9 == v6)
    {
      *(this + 6) = v6;
      operator delete(v6);
      v7 = *(this + 2);
      if (v7)
      {
        goto LABEL_29;
      }
    }

    else
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 8;
        v10 = v11;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v9 != v6);
      v12 = *(this + 5);
      *(this + 6) = v6;
      operator delete(v12);
      v7 = *(this + 2);
      if (v7)
      {
        goto LABEL_29;
      }
    }

LABEL_15:
    v8 = *(this + 1);
    if (!v8)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *(this + 19);
  if (v3 == (this + 128))
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 15);
  if (v4 == (this + 96))
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 11);
  if (v5 == (this + 64))
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_14:
  v7 = *(this + 2);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_29:
  v13 = *(this + 3);
  if (v13 == v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
    v8 = *(this + 1);
    if (!v8)
    {
      return;
    }

LABEL_16:
    (*(*v8 + 8))(v8);
    return;
  }

  do
  {
    v15 = *(v13 - 1);
    v13 -= 8;
    v14 = v15;
    if (v15)
    {
      (*(*v14 + 8))(v14);
    }
  }

  while (v13 != v7);
  v16 = *(this + 2);
  *(this + 3) = v7;
  operator delete(v16);
  v8 = *(this + 1);
  if (v8)
  {
    goto LABEL_16;
  }
}

{
  webrtc::MediaStreamObserver::~MediaStreamObserver(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::MediaStreamObserver::OnChanged(webrtc::MediaStreamObserver *this)
{
  v1 = this;
  (*(**(this + 1) + 40))(&v131);
  (*(**(v1 + 1) + 48))(&v129);
  v2 = *(v1 + 2);
  v123 = (v1 + 16);
  v124 = *(v1 + 3);
  v128 = v1;
  if (v2 != v124)
  {
    while (1)
    {
      v5 = *v2;
      if (!*v2)
      {
        break;
      }

      (**v5)(*v2);
      v6 = v131;
      v7 = v132;
      (**v5)(v5);
      if (v6 != v7)
      {
        goto LABEL_9;
      }

      v17 = 1;
LABEL_34:
      (*(*v5 + 8))(v5);
      (*(*v5 + 8))(v5);
      if (!v17)
      {
        goto LABEL_37;
      }

      v18 = *(v1 + 1);
      v136 = *v2;
      __p = v18;
      v4 = *(v1 + 15);
      if (!v4)
      {
        goto LABEL_255;
      }

LABEL_36:
      (*(*v4 + 48))(v4, &v136, &__p);
LABEL_37:
      if (++v2 == v124)
      {
        goto LABEL_38;
      }
    }

    v6 = v131;
    v7 = v132;
    if (v131 == v132)
    {
      v3 = *(v1 + 1);
      v136 = 0;
      __p = v3;
      v4 = *(v1 + 15);
      if (!v4)
      {
        goto LABEL_255;
      }

      goto LABEL_36;
    }

LABEL_9:
    v8 = v6 + 8;
    while (1)
    {
      (*(**(v8 - 1) + 40))(&v136);
      (*(*v5 + 40))(&__p, v5);
      v10 = v138;
      if ((v138 & 0x80u) == 0)
      {
        v11 = v138;
      }

      else
      {
        v11 = v137;
      }

      v12 = v135;
      v13 = v135;
      if ((v135 & 0x80u) != 0)
      {
        v12 = v134;
      }

      if (v11 == v12)
      {
        if ((v138 & 0x80u) == 0)
        {
          v14 = &v136;
        }

        else
        {
          v14 = v136;
        }

        if ((v135 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v16 = memcmp(v14, p_p, v11) == 0;
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v16 = 0;
        if ((v135 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }
      }

      operator delete(__p);
      v10 = v138;
LABEL_28:
      if ((v10 & 0x80) != 0)
      {
        operator delete(v136);
      }

      v9 = v8 == v7 || v16;
      v8 += 8;
      if (v9 == 1)
      {
        v17 = !v16;
        v1 = v128;
        goto LABEL_34;
      }
    }
  }

LABEL_38:
  v19 = v131;
  v125 = v132;
  if (v131 != v132)
  {
LABEL_41:
    v20 = *v19;
    if (*v19)
    {
      (**v20)(*v19);
      v21 = *(v1 + 2);
      v22 = *(v1 + 3);
      (**v20)(v20);
      if (v21 == v22)
      {
        v23 = 1;
        goto LABEL_69;
      }
    }

    else
    {
      v21 = *(v1 + 2);
      v22 = *(v1 + 3);
      if (v21 == v22)
      {
        v35 = *(v1 + 1);
        v136 = 0;
        __p = v35;
        v34 = *(v1 + 11);
        if (!v34)
        {
          goto LABEL_255;
        }

        goto LABEL_73;
      }
    }

    v24 = v21 + 8;
    while (1)
    {
      (*(*v20 + 40))(&v136, v20);
      (*(**(v24 - 8) + 40))(&__p);
      v26 = v138;
      if ((v138 & 0x80u) == 0)
      {
        v27 = v138;
      }

      else
      {
        v27 = v137;
      }

      v28 = v135;
      v29 = v135;
      if ((v135 & 0x80u) != 0)
      {
        v28 = v134;
      }

      if (v27 == v28)
      {
        break;
      }

      v32 = 0;
      if (v135 < 0)
      {
        goto LABEL_65;
      }

LABEL_66:
      if ((v26 & 0x80) != 0)
      {
        operator delete(v136);
      }

      v25 = v24 == v22 || v32;
      v24 += 8;
      if (v25 == 1)
      {
        v23 = !v32;
        v1 = v128;
LABEL_69:
        (*(*v20 + 8))(v20);
        (*(*v20 + 8))(v20);
        if (v23)
        {
          v33 = *(v1 + 1);
          v136 = *v19;
          __p = v33;
          v34 = *(v1 + 11);
          if (!v34)
          {
            goto LABEL_255;
          }

LABEL_73:
          (*(*v34 + 48))(v34, &v136, &__p);
        }

        if (++v19 == v125)
        {
          goto LABEL_74;
        }

        goto LABEL_41;
      }
    }

    if ((v138 & 0x80u) == 0)
    {
      v30 = &v136;
    }

    else
    {
      v30 = v136;
    }

    if ((v135 & 0x80u) == 0)
    {
      v31 = &__p;
    }

    else
    {
      v31 = __p;
    }

    v32 = memcmp(v30, v31, v27) == 0;
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_65:
    operator delete(__p);
    v26 = v138;
    goto LABEL_66;
  }

LABEL_74:
  v36 = *(v1 + 5);
  v122 = (v1 + 40);
  v126 = *(v1 + 6);
  if (v36 != v126)
  {
    while (1)
    {
      v39 = *v36;
      if (!*v36)
      {
        break;
      }

      (**v39)(*v36);
      v40 = v129;
      v41 = v130;
      (**v39)(v39);
      if (v40 != v41)
      {
        goto LABEL_82;
      }

      v51 = 1;
LABEL_107:
      (*(*v39 + 8))(v39);
      (*(*v39 + 8))(v39);
      v1 = v128;
      if (!v51)
      {
        goto LABEL_110;
      }

      v52 = *(v128 + 1);
      v136 = *v36;
      __p = v52;
      v38 = *(v128 + 23);
      if (!v38)
      {
        goto LABEL_255;
      }

LABEL_109:
      (*(*v38 + 48))(v38, &v136, &__p);
LABEL_110:
      if (++v36 == v126)
      {
        goto LABEL_111;
      }
    }

    v40 = v129;
    v41 = v130;
    if (v129 == v130)
    {
      v37 = *(v1 + 1);
      v136 = 0;
      __p = v37;
      v38 = *(v1 + 23);
      if (!v38)
      {
        goto LABEL_255;
      }

      goto LABEL_109;
    }

LABEL_82:
    v42 = v40 + 8;
    while (1)
    {
      (*(**(v42 - 1) + 40))(&v136);
      (*(*v39 + 40))(&__p, v39);
      v44 = v138;
      if ((v138 & 0x80u) == 0)
      {
        v45 = v138;
      }

      else
      {
        v45 = v137;
      }

      v46 = v135;
      v47 = v135;
      if ((v135 & 0x80u) != 0)
      {
        v46 = v134;
      }

      if (v45 == v46)
      {
        break;
      }

      v50 = 0;
      if (v135 < 0)
      {
        goto LABEL_102;
      }

LABEL_103:
      if ((v44 & 0x80) != 0)
      {
        operator delete(v136);
      }

      v43 = v42 == v41 || v50;
      v42 += 8;
      if (v43 == 1)
      {
        v51 = !v50;
        goto LABEL_107;
      }
    }

    if ((v138 & 0x80u) == 0)
    {
      v48 = &v136;
    }

    else
    {
      v48 = v136;
    }

    if ((v135 & 0x80u) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p;
    }

    v50 = memcmp(v48, v49, v45) == 0;
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

LABEL_102:
    operator delete(__p);
    v44 = v138;
    goto LABEL_103;
  }

LABEL_111:
  v53 = v129;
  v127 = v130;
  if (v129 != v130)
  {
LABEL_114:
    v54 = *v53;
    if (*v53)
    {
      (**v54)(*v53);
      v55 = *(v1 + 5);
      v56 = *(v1 + 6);
      (**v54)(v54);
      if (v55 == v56)
      {
        v57 = 1;
        goto LABEL_142;
      }
    }

    else
    {
      v55 = *(v1 + 5);
      v56 = *(v1 + 6);
      if (v55 == v56)
      {
        v69 = *(v1 + 1);
        v136 = 0;
        __p = v69;
        v68 = *(v1 + 19);
        if (!v68)
        {
          goto LABEL_255;
        }

        goto LABEL_146;
      }
    }

    v58 = v55 + 8;
    while (1)
    {
      (*(*v54 + 40))(&v136, v54);
      (*(**(v58 - 8) + 40))(&__p);
      v60 = v138;
      if ((v138 & 0x80u) == 0)
      {
        v61 = v138;
      }

      else
      {
        v61 = v137;
      }

      v62 = v135;
      v63 = v135;
      if ((v135 & 0x80u) != 0)
      {
        v62 = v134;
      }

      if (v61 == v62)
      {
        break;
      }

      v66 = 0;
      if (v135 < 0)
      {
        goto LABEL_138;
      }

LABEL_139:
      if ((v60 & 0x80) != 0)
      {
        operator delete(v136);
      }

      v59 = v58 == v56 || v66;
      v58 += 8;
      if (v59 == 1)
      {
        v57 = !v66;
        v1 = v128;
LABEL_142:
        (*(*v54 + 8))(v54);
        (*(*v54 + 8))(v54);
        if (v57)
        {
          v67 = *(v1 + 1);
          v136 = *v53;
          __p = v67;
          v68 = *(v1 + 19);
          if (!v68)
          {
LABEL_255:
            std::__throw_bad_function_call[abi:sn200100]();
            goto LABEL_256;
          }

LABEL_146:
          (*(*v68 + 48))(v68, &v136, &__p);
        }

        if (++v53 == v127)
        {
          goto LABEL_147;
        }

        goto LABEL_114;
      }
    }

    if ((v138 & 0x80u) == 0)
    {
      v64 = &v136;
    }

    else
    {
      v64 = v136;
    }

    if ((v135 & 0x80u) == 0)
    {
      v65 = &__p;
    }

    else
    {
      v65 = __p;
    }

    v66 = memcmp(v64, v65, v61) == 0;
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_139;
    }

LABEL_138:
    operator delete(__p);
    v60 = v138;
    goto LABEL_139;
  }

LABEL_147:
  if (v123 != &v131)
  {
    v71 = v131;
    v70 = v132;
    v72 = v132 - v131;
    v73 = *(v1 + 4);
    v74 = *(v1 + 2);
    if (v73 - v74 < (v132 - v131))
    {
      v75 = v72 >> 3;
      if (v74)
      {
        v76 = *(v128 + 3);
        v77 = v74;
        if (v76 != v74)
        {
          do
          {
            v79 = *(v76 - 1);
            v76 -= 8;
            v78 = v79;
            if (v79)
            {
              (*(*v78 + 8))(v78);
            }
          }

          while (v76 != v74);
          v77 = *v123;
        }

        *(v128 + 3) = v74;
        operator delete(v77);
        v73 = 0;
        *v123 = 0;
        v123[1] = 0;
        v123[2] = 0;
      }

      if (!(v75 >> 61))
      {
        v85 = v73 >> 2;
        if (v73 >> 2 <= v75)
        {
          v85 = v75;
        }

        v86 = v73 >= 0x7FFFFFFFFFFFFFF8;
        v87 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v86)
        {
          v87 = v85;
        }

        if (!(v87 >> 61))
        {
          operator new();
        }
      }

LABEL_256:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v80 = *(v1 + 3);
    v81 = v80 - v74;
    if (v80 - v74 >= v72)
    {
      if (v131 != v132)
      {
        do
        {
          v84 = *v71;
          if (*v71)
          {
            (**v84)(*v71);
          }

          if (*v74)
          {
            (*(**v74 + 8))(*v74);
          }

          *v74 = v84;
          v74 += 8;
          v71 += 8;
        }

        while (v71 != v70);
        v80 = *(v128 + 3);
      }

      while (v80 != v74)
      {
        v91 = *(v80 - 1);
        v80 -= 8;
        v90 = v91;
        if (v91)
        {
          (*(*v90 + 8))(v90);
        }
      }
    }

    else
    {
      if (v80 != v74)
      {
        v82 = v131 + v81;
        do
        {
          v83 = *v71;
          if (*v71)
          {
            (**v83)(*v71);
          }

          if (*v74)
          {
            (*(**v74 + 8))(*v74);
          }

          *v74 = v83;
          v74 += 8;
          v71 += 8;
          v81 -= 8;
        }

        while (v81);
        v80 = *(v128 + 3);
        v71 = v82;
      }

      v74 = v80;
      if (v71 != v70)
      {
        v74 = v80;
        v88 = v80;
        while (v88)
        {
          v89 = *v71;
          *v88 = *v71;
          if (v89)
          {
            (**v89)(v89);
          }

          v71 += 8;
          v88 += 8;
          v74 += 8;
          if (v71 == v70)
          {
            goto LABEL_191;
          }
        }

        goto LABEL_254;
      }
    }

LABEL_191:
    v1 = v128;
    *(v128 + 3) = v74;
  }

  v92 = v129;
  if (v122 != &v129)
  {
    v93 = v130;
    v94 = v130 - v129;
    v95 = *(v1 + 7);
    v96 = *(v1 + 5);
    if (v95 - v96 < (v130 - v129))
    {
      v97 = v94 >> 3;
      if (v96)
      {
        v98 = *(v128 + 6);
        v99 = v96;
        if (v98 != v96)
        {
          do
          {
            v101 = *(v98 - 1);
            v98 -= 8;
            v100 = v101;
            if (v101)
            {
              (*(*v100 + 8))(v100);
            }
          }

          while (v98 != v96);
          v99 = *v122;
        }

        *(v128 + 6) = v96;
        operator delete(v99);
        v95 = 0;
        *v122 = 0;
        v122[1] = 0;
        v122[2] = 0;
      }

      if (!(v97 >> 61))
      {
        v107 = v95 >> 2;
        if (v95 >> 2 <= v97)
        {
          v107 = v97;
        }

        v86 = v95 >= 0x7FFFFFFFFFFFFFF8;
        v108 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v86)
        {
          v108 = v107;
        }

        if (!(v108 >> 61))
        {
          operator new();
        }
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v102 = *(v1 + 6);
    v103 = v102 - v96;
    if (v102 - v96 >= v94)
    {
      if (v129 != v130)
      {
        do
        {
          v106 = *v92;
          if (*v92)
          {
            (**v106)(*v92);
          }

          if (*v96)
          {
            (*(**v96 + 8))(*v96);
          }

          *v96 = v106;
          v96 += 8;
          v92 += 8;
        }

        while (v92 != v93);
        v102 = *(v128 + 6);
      }

      while (v102 != v96)
      {
        v112 = *(v102 - 1);
        v102 -= 8;
        v111 = v112;
        if (v112)
        {
          (*(*v111 + 8))(v111);
        }
      }
    }

    else
    {
      if (v102 != v96)
      {
        v104 = v129 + v103;
        do
        {
          v105 = *v92;
          if (*v92)
          {
            (**v105)(*v92);
          }

          if (*v96)
          {
            (*(**v96 + 8))(*v96);
          }

          *v96 = v105;
          v96 += 8;
          v92 += 8;
          v103 -= 8;
        }

        while (v103);
        v102 = *(v128 + 6);
        v92 = v104;
      }

      v96 = v102;
      if (v92 != v93)
      {
        v96 = v102;
        v109 = v102;
        while (v109)
        {
          v110 = *v92;
          *v109 = *v92;
          if (v110)
          {
            (**v110)(v110);
          }

          v92 += 8;
          v109 += 8;
          v96 += 8;
          if (v92 == v93)
          {
            goto LABEL_236;
          }
        }

LABEL_254:
        __break(1u);
        goto LABEL_255;
      }
    }

LABEL_236:
    *(v128 + 6) = v96;
    v92 = v129;
  }

  if (v92)
  {
    v113 = v130;
    v114 = v92;
    if (v130 != v92)
    {
      do
      {
        v116 = *(v113 - 1);
        v113 -= 8;
        v115 = v116;
        if (v116)
        {
          (*(*v115 + 8))(v115);
        }
      }

      while (v113 != v92);
      v114 = v129;
    }

    v130 = v92;
    operator delete(v114);
  }

  v117 = v131;
  if (v131)
  {
    v118 = v132;
    v119 = v131;
    if (v132 != v131)
    {
      do
      {
        v121 = *(v118 - 1);
        v118 -= 8;
        v120 = v121;
        if (v121)
        {
          (*(*v120 + 8))(v120);
        }
      }

      while (v118 != v117);
      v119 = v131;
    }

    v132 = v117;
    operator delete(v119);
  }
}

uint64_t webrtc::MediaTypeToString@<X0>(uint64_t result@<X0>, unint64_t a2@<X8>)
{
  if (result == 2)
  {
    *(a2 + 23) = 4;
    v4 = (a2 + 4);
    if (a2 > "data" || v4 <= "data")
    {
      *a2 = 1635017060;
      *v4 = 0;
      return result;
    }
  }

  else if (result == 1)
  {
    *(a2 + 23) = 5;
    v3 = (a2 + 5);
    if (a2 > "video" || v3 <= "video")
    {
      *(a2 + 4) = 111;
      *a2 = 1701079414;
      *v3 = 0;
      return result;
    }
  }

  else
  {
    if (result)
    {
      *(a2 + 23) = 0;
      *a2 = 0;
      return result;
    }

    *(a2 + 23) = 5;
    v2 = (a2 + 5);
    if (a2 > "audio" || v2 <= "audio")
    {
      *(a2 + 4) = 111;
      *a2 = 1768191329;
      *v2 = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

void webrtc::Merge::~Merge(webrtc::Merge *this)
{
  *this = &unk_288296850;
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  *(this + 42) = &unk_28828E2C0;
  v3 = *(this + 43);
  if (v3)
  {
    v4 = *(this + 44);
    v5 = *(this + 43);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = *v6;
          *v6 = 0;
          if (v8)
          {
            MEMORY[0x2743DA520](v8, 0x1000C80BDFB0063);
          }

          MEMORY[0x2743DA540](v6, 0x1010C40FAA616C6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 43);
    }

    *(this + 44) = v3;
    operator delete(v5);
  }
}

{
  *this = &unk_288296850;
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  *(this + 42) = &unk_28828E2C0;
  v3 = *(this + 43);
  if (v3)
  {
    v4 = *(this + 44);
    v5 = *(this + 43);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = *v6;
          *v6 = 0;
          if (v8)
          {
            MEMORY[0x2743DA520](v8, 0x1000C80BDFB0063);
          }

          MEMORY[0x2743DA540](v6, 0x1010C40FAA616C6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 43);
    }

    *(this + 44) = v3;
    operator delete(v5);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::Merge::Process(webrtc::Merge *this, __int16 *a2, unint64_t a3, webrtc::AudioMultiVector *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *(this + 6);
    v6 = v5[1];
    if (v5[2] == v6)
    {
      goto LABEL_53;
    }

    v9 = (*(*v6 + 8) + *(*v6 + 24) - *(*v6 + 16)) % *(*v6 + 8) - v5[4];
    (*(**(this + 5) + 40))(*(this + 5));
    if (v9 >= 0x4EC)
    {
      webrtc::SyncBuffer::InsertZerosAtIndex(*(this + 6), v9 - 1260, *(*(this + 6) + 32));
    }

    webrtc::AudioMultiVector::AudioMultiVector(&v51, *(this + 2));
    (*(**(this + 5) + 24))(*(this + 5), &v51);
    if (v53 == __p)
    {
      goto LABEL_53;
    }

    v10 = *(this + 43);
    for (i = *(this + 44); v10 != i; *(v12 + 24) = 0)
    {
      v12 = *v10++;
      *(v12 + 16) = 0;
    }

    v13 = *(this + 6);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_53;
    }

    v17 = (*(*v14 + 8) + *(*v14 + 24) - *(*v14 + 16)) % *(*v14 + 8);
    if ((v17 - 1) >= v13[4])
    {
      v18 = v13[4];
    }

    else
    {
      v18 = v17 - 1;
    }

    v19 = *(this + 43);
    v20 = *(this + 44);
    if (v20 != v19 && v20 - v19 == v16)
    {
      v21 = 0;
      v22 = v17 - v18;
      do
      {
        if (v21 >= (v20 - v19) >> 3)
        {
          goto LABEL_53;
        }

        v23 = v13[1];
        if (v21 >= (v13[2] - v23) >> 3)
        {
          goto LABEL_53;
        }

        webrtc::AudioVector::PushBack(*(v19 + 8 * v21), *(v23 + 8 * v21), v22, v18);
        ++v21;
        v19 = *(this + 43);
        v20 = *(this + 44);
      }

      while (v21 < (v20 - v19) >> 3);
    }

    if (v20 == v19)
    {
      goto LABEL_53;
    }

    __src = a2;
    v49 = a3;
    v47 = 202 * *(this + 6);
    if ((*(*v19 + 8) + *(*v19 + 24) - *(*v19 + 16)) % *(*v19 + 8) < v47)
    {
      while (1)
      {
        v24 = (*(*v19 + 8) + *(*v19 + 24) - *(*v19 + 16)) % *(*v19 + 8);
        v25 = v24 >= v47;
        v26 = v24 - v47;
        if (v25)
        {
          break;
        }

        if (v20 - v19 == v53 - __p)
        {
          v27 = 0;
          while (v27 < (v20 - v19) >> 3 && v27 < (v53 - __p) >> 3)
          {
            v28 = *(__p + v27);
            v29 = (*(v28 + 8) + *(v28 + 24) - *(v28 + 16)) % *(v28 + 8);
            if (v29)
            {
              v30 = *(v19 + 8 * v27);
              if (v30[1] <= (v30[1] + v30[3] - v30[2]) % v30[1] + v29)
              {
                operator new[]();
              }

              v31 = *(v28 + 8);
              v32 = *(v28 + 16) % v31;
              v33 = v31 - v32;
              if (v31 - v32 >= v29)
              {
                v34 = (*(v28 + 8) + *(v28 + 24) - *(v28 + 16)) % *(v28 + 8);
              }

              else
              {
                v34 = v31 - v32;
              }

              webrtc::AudioVector::PushBack(v30, (*v28 + 2 * v32), v34);
              if (v33 < v29)
              {
                webrtc::AudioVector::PushBack(v30, *v28, v29 - v34);
              }
            }

            ++v27;
            v19 = *(this + 43);
            v20 = *(this + 44);
            if (v27 >= (v20 - v19) >> 3)
            {
              goto LABEL_21;
            }
          }

LABEL_53:
          __break(1u);
        }

LABEL_21:
        if (v20 == v19)
        {
          goto LABEL_53;
        }
      }

      if (v26)
      {
        do
        {
          v36 = *v19;
          v19 += 8;
          v35 = v36;
          v37 = v36[1];
          v38 = v37 + v36[3];
          v39 = (v38 - v36[2]) % v37;
          if (v39 >= v26)
          {
            v39 = v26;
          }

          v35[3] = (v38 - v39) % v37;
        }

        while (v19 != v20);
      }
    }

    v51 = &unk_28828E2C0;
    v40 = __p;
    if (__p)
    {
      v41 = v53;
      v42 = __p;
      if (v53 != __p)
      {
        do
        {
          v44 = *--v41;
          v43 = v44;
          *v41 = 0;
          if (v44)
          {
            v45 = *v43;
            *v43 = 0;
            if (v45)
            {
              MEMORY[0x2743DA520](v45, 0x1000C80BDFB0063);
            }

            MEMORY[0x2743DA540](v43, 0x1010C40FAA616C6);
          }
        }

        while (v41 != v40);
        v42 = __p;
      }

      v53 = v40;
      operator delete(v42);
    }

    webrtc::AudioMultiVector::AudioMultiVector(v50, *(this + 2));
    webrtc::AudioMultiVector::PushBackInterleaved(v50, __src, v49);
    if (v50[2] != v50[1])
    {
      operator new[]();
    }

    goto LABEL_53;
  }

  return 0;
}

BOOL webrtc::IsFips180DigestAlgorithm(uint64_t a1, uint64_t a2)
{
  if (a2 == 7)
  {
    if (*a1 == 761358451 && *(a1 + 3) == 875704877)
    {
      return 1;
    }

    if (*a1 == 761358451 && *(a1 + 3) == 909455917)
    {
      return 1;
    }

    return *a1 == 761358451 && *(a1 + 3) == 876098349 || *a1 == 761358451 && *(a1 + 3) == 842085677;
  }

  else
  {
    return a2 == 5 && *a1 == 761358451 && *(a1 + 4) == 49;
  }
}

uint64_t webrtc::ComputeHmac(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) <= 0x20)
  {
    operator new[]();
  }

  return 0;
}

uint64_t webrtc::metrics::HistogramAdd(uint64_t a1, int a2)
{
  v3 = *(a1 + 68);
  if (v3 >= a2)
  {
    v3 = a2;
  }

  if (v3 <= *(a1 + 64) - 1)
  {
    v4 = *(a1 + 64) - 1;
  }

  else
  {
    v4 = v3;
  }

  pthread_mutex_lock(a1);
  v5 = *(a1 + 120);
  if (*(a1 + 128) != 300)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = a1 + 120;
    v7 = *(a1 + 120);
    do
    {
      if (*(v7 + 28) >= v4)
      {
        v6 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 28) < v4));
    }

    while (v7);
    if (v6 != a1 + 120 && v4 >= *(v6 + 28))
    {
LABEL_14:
      if (!v5)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v8 = v5;
          v9 = *(v5 + 7);
          if (v4 >= v9)
          {
            break;
          }

          v5 = *v8;
          if (!*v8)
          {
            goto LABEL_20;
          }
        }

        if (v9 >= v4)
        {
          break;
        }

        v5 = v8[1];
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      ++*(v8 + 8);
    }
  }

  return pthread_mutex_unlock(a1);
}

uint64_t WebRtcSpl_MaxAbsValueW16C(int16x8_t *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 4)
  {
    v2 = 0;
    v3 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x10)
  {
    v3 = a2 & 0xFFFFFFFFFFFFFFF0;
    v5 = a1 + 1;
    v6 = 0uLL;
    v7 = a2 & 0xFFFFFFFFFFFFFFF0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    do
    {
      v11 = vabsq_s16(v5[-1]);
      v12 = vabsq_s16(*v5);
      v8 = vmaxq_s32(v8, vmovl_high_u16(v11));
      v6 = vmaxq_s32(v6, vmovl_u16(*v11.i8));
      v10 = vmaxq_s32(v10, vmovl_high_u16(v12));
      v9 = vmaxq_s32(v9, vmovl_u16(*v12.i8));
      v5 += 2;
      v7 -= 16;
    }

    while (v7);
    v2 = vmaxvq_s32(vmaxq_s32(vmaxq_s32(v6, v9), vmaxq_s32(v8, v10)));
    if (v3 == a2)
    {
      goto LABEL_20;
    }

    if ((a2 & 0xC) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v13 = v3;
  v3 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = vdupq_n_s32(v2);
  v15 = (a1 + 2 * v13);
  v16 = v13 - (a2 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v17 = *v15++;
    v14 = vmaxq_s32(v14, vmovl_u16(vabs_s16(v17)));
    v16 += 4;
  }

  while (v16);
  v2 = vmaxvq_s32(v14);
  if (v3 != a2)
  {
LABEL_14:
    v18 = a2 - v3;
    v19 = &a1->i16[v3];
    do
    {
      v21 = *v19++;
      v20 = v21;
      if (v21 < 0)
      {
        v20 = -v20;
      }

      if (v2 <= v20)
      {
        v2 = v20;
      }

      --v18;
    }

    while (v18);
  }

LABEL_20:
  if (v2 >= 0x7FFF)
  {
    return 0x7FFFLL;
  }

  else
  {
    return v2;
  }
}

uint64_t WebRtcSpl_MaxAbsValueW32C(int32x4_t *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 8)
  {
    v2 = 0;
    v3 = 0;
    goto LABEL_8;
  }

  v2 = a2 & 0xFFFFFFFFFFFFFFF8;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = 0uLL;
  do
  {
    v6 = vmaxq_u32(vbslq_s8(vceqq_s32(v5[-1], v7), v7, vabsq_s32(v5[-1])), v6);
    v9 = vmaxq_u32(vbslq_s8(vceqq_s32(*v5, v7), v7, vabsq_s32(*v5)), v9);
    v5 += 2;
    v8 -= 8;
  }

  while (v8);
  v3 = vmaxvq_u32(vmaxq_u32(v6, v9));
  if (v2 != a2)
  {
LABEL_8:
    v10 = a2 - v2;
    v11 = &a1->i32[v2];
    do
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = -v12;
      }

      if (v12 == 0x80000000)
      {
        v15 = 0x80000000;
      }

      else
      {
        v15 = v14;
      }

      if (v15 > v3)
      {
        v3 = v15;
      }

      --v10;
    }

    while (v10);
  }

  if (v3 >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

void webrtc::GetExperimentalMinVideoBitrate(uint64_t a1, int a2)
{
  v83[6] = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    goto LABEL_20;
  }

  (*(*a1 + 16))(&__p, a1, "WebRTC-VP8-Forced-Fallback-Encoder-v2", 37);
  v3 = HIBYTE(v69);
  if (SHIBYTE(v69) < 0)
  {
    v3 = v68;
  }

  if (v3 >= 7)
  {
    p_p = __p;
    if (SHIBYTE(v69) >= 0)
    {
      p_p = &__p;
    }

    v7 = *p_p;
    v8 = *(p_p + 3);
    v4 = v7 == 1650552389 && v8 == 1684368482;
    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
LABEL_6:
      if (!v4)
      {
        goto LABEL_20;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  operator delete(__p);
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_7:
  (*(*a1 + 16))(&__p, a1, "WebRTC-VP8-Forced-Fallback-Encoder-v2", 37);
  if ((SHIBYTE(v69) & 0x80000000) == 0)
  {
    if (!HIBYTE(v69))
    {
      v25 = 0;
      goto LABEL_77;
    }

    LODWORD(v58) = 0;
    LODWORD(v49) = 0;
    v5 = &__p;
    LODWORD(v40) = 0;
    goto LABEL_66;
  }

  if (v68)
  {
    LODWORD(v58) = 0;
    LODWORD(v49) = 0;
    LODWORD(v40) = 0;
    v5 = __p;
LABEL_66:
    if (sscanf(v5, "Enabled-%d,%d,%d", &v58, &v49, &v40) == 3 && v40 >= 1)
    {
      v25 = 1;
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v25 = 0;
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_76;
  }

  v25 = 0;
LABEL_76:
  operator delete(__p);
LABEL_77:
  if (((v25 << 32) & 0x100000000) != 0)
  {
    return;
  }

LABEL_20:
  (*(*a1 + 16))(&__p, a1, "WebRTC-Video-MinVideoBitrate", 28);
  v10 = HIBYTE(v69);
  if (SHIBYTE(v69) < 0)
  {
    v10 = v68;
  }

  if (v10 >= 7)
  {
    v12 = __p;
    if (SHIBYTE(v69) >= 0)
    {
      v12 = &__p;
    }

    v13 = *v12;
    v14 = *(v12 + 3);
    v11 = v13 == 1650552389 && v14 == 1684368482;
    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
LABEL_24:
      if (!v11)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v11 = 0;
    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  operator delete(__p);
  if (!v11)
  {
    return;
  }

LABEL_36:
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v81 = 7;
  if (v80 <= "Enabled" && v80 + 7 > "Enabled" || (strcpy(v80, "Enabled"), v82 = 0, v76 = &unk_288293940, v68 = 0, v69 = 0, v70 = 0, v72 = 2, v71 <= "br") && v71 + 2 > "br" || (strcpy(v71, "br"), v73 = 0, __p = &unk_2882939A0, LOBYTE(v74) = 0, v75 = 0, v59 = 0, v60 = 0, v61 = 0, v63 = 6, v62 <= "vp8_br") && v62 + 6 > "vp8_br" || (strcpy(v62, "vp8_br"), v64 = 0, v58 = &unk_2882939A0, LOBYTE(v65) = 0, v66 = 0, v50 = 0, v51 = 0, v54 = 6, v52 = 0, v53 <= "vp9_br") && v53 + 6 > "vp9_br" || (strcpy(v53, "vp9_br"), v55 = 0, v49 = &unk_2882939A0, LOBYTE(v56) = 0, v57 = 0, v41 = 0, v42 = 0, v45 = 6, v43 = 0, v44 <= "av1_br") && v44 + 6 > "av1_br" || (strcpy(v44, "av1_br"), v46 = 0, v40 = &unk_2882939A0, LOBYTE(v47) = 0, v48 = 0, v32 = 0, v33 = 0, v36 = 7, v34 = 0, v35 <= "h264_br") && v35 + 7 > "h264_br")
  {
    __break(1u);
  }

  strcpy(v35, "h264_br");
  v37 = 0;
  v31 = &unk_2882939A0;
  LOBYTE(v38) = 0;
  v39 = 0;
  v83[0] = &v76;
  v83[1] = &__p;
  v83[2] = &v58;
  v83[3] = &v49;
  v83[4] = &v40;
  v83[5] = &v31;
  (*(*a1 + 16))(v29, a1, "WebRTC-Video-MinVideoBitrate", 28);
  if ((v30 & 0x80u) == 0)
  {
    v16 = v29;
  }

  else
  {
    v16 = v29[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v17 = v30;
  }

  else
  {
    v17 = v29[1];
  }

  webrtc::ParseFieldTrial(v83, 6, v16, v17);
  if (v30 < 0)
  {
    operator delete(v29[0]);
    if (v75 == 1)
    {
LABEL_56:
      if (((v66 & 1) != 0 || (v57 & 1) != 0 || (v48 & 1) != 0 || v39 == 1) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/min_video_bitrate_experiment.cc");
      }

      if ((v75 & 1) == 0)
      {
        v26 = std::__throw_bad_optional_access[abi:sn200100]();
        dcsctp::MissingMandatoryParameterCause::Parse(v26, v27, v28);
        return;
      }
    }
  }

  else if (v75 == 1)
  {
    goto LABEL_56;
  }

  v31 = &unk_288293910;
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  v40 = &unk_288293910;
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  v49 = &unk_288293910;
  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  v58 = &unk_288293910;
  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  __p = &unk_288293910;
  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  v76 = &unk_288293910;
  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }
}

void dcsctp::MissingMandatoryParameterCause::Parse(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (a2 < 8 || __rev16(*v4) != 2 || (v5 = *(v4 + 3), (v5 & 1) != 0) || ((v6 = v5 | (*(v4 + 2) << 8), v6 >= 8) ? (v7 = a2 >= v6) : (v7 = 0), v7 ? (v8 = a2 - v6 >= 4) : (v8 = 1), v8 || (v9 = bswap32(*(v4 + 1)), (v6 - 8) >> 1 != v9)))
  {
    *a3 = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    if (v9)
    {
      operator new();
    }

    *a3 = &unk_288296880;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
  }
}

void dcsctp::MissingMandatoryParameterCause::~MissingMandatoryParameterCause(dcsctp::MissingMandatoryParameterCause *this)
{
  *this = &unk_288296880;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288296880;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::MissingMandatoryParameterCause::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16) - *(a1 + 8);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 8;
  v14 = v12 + v10 + 8;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 8);
    v11 = *a2;
  }

  v15 = v11 + v12;
  *v15 = 512;
  *(v15 + 2) = BYTE1(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_13:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
LABEL_14:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 84, "FixedSize + variable_offset + SubSize <= data_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::MissingMandatoryParameterCause::ToString(v21);
    return;
  }

  v16 = (*a2 + v12);
  v17 = *(a1 + 16) - *(a1 + 8);
  v16[4] = v17 >> 25;
  v16[5] = v17 >> 17;
  v16[6] = v17 >> 9;
  v16[7] = v17 >> 1;
  v18 = *(a1 + 8);
  if (*(a1 + 16) != v18)
  {
    v19 = 0;
    for (i = 8; i + 2 <= v13; i += 2)
    {
      if (v13 <= i || v10 <= 1)
      {
        goto LABEL_13;
      }

      *&v16[i] = bswap32(*(v18 + 2 * v19++)) >> 16;
      v18 = *(a1 + 8);
      v10 -= 2;
      if (v19 >= (*(a1 + 16) - v18) >> 1)
      {
        return;
      }
    }

    goto LABEL_14;
  }
}

uint64_t webrtc::MultiChannelContentDetector::UpdateDetection(uint64_t result, uint64_t a2)
{
  if (*result != 1)
  {
    return 0;
  }

  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = v2 - *a2;
  if (v2 == *a2)
  {
    goto LABEL_33;
  }

  v5 = *(result + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3) >= 2)
  {
    v12 = 0;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v13 <= 1)
    {
      v13 = 1;
    }

    while (1)
    {
      v14 = &v3[3 * v12];
      v15 = *v14;
      v16 = v14[1] - *v14;
      if (!v16)
      {
        break;
      }

      v17 = v16 / 24;
      v18 = *v15;
      v19 = v15[1];
      if (v17 < 2)
      {
        if (v19 != v18)
        {
          break;
        }
      }

      else if (v19 != v18)
      {
        v20 = v19 - v18;
        v22 = v15 + 3;
        v21 = v15[3];
        v23 = v22[1] - v21;
        if (v20 <= 1)
        {
          v20 = 1;
        }

        while (v23)
        {
          if (vabds_f32(*v18, *v21) > *(result + 4))
          {
            v7 = 0;
            v24 = *(result + 48) + 1;
            *(result + 40) = 0;
            *(result + 48) = v24;
            v6 = 1;
            v8 = v5;
            if (v24 > *(result + 16))
            {
              goto LABEL_5;
            }

            goto LABEL_6;
          }

          ++v18;
          ++v21;
          --v23;
          if (!--v20)
          {
            goto LABEL_21;
          }
        }

        break;
      }

LABEL_21:
      if (++v12 == v13)
      {
        goto LABEL_4;
      }
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_4:
  v6 = 0;
  v7 = *(result + 40) + 1;
  *(result + 40) = v7;
  *(result + 48) = 0;
  v8 = v5;
  if (*(result + 16) < 0)
  {
LABEL_5:
    v8 = 1;
    *(result + 32) = 1;
  }

LABEL_6:
  if (*(result + 12) == 1 && v7 >= *(result + 8))
  {
    v8 = 0;
    *(result + 32) = 0;
  }

  *(result + 33) = v6 & (v8 ^ 1);
  v9 = *(result + 24);
  if (v9)
  {
    v10 = *v9;
    v11 = *v9 + 1;
    *v9 = v11;
    if (v8)
    {
      *(v9 + 8) = 1;
      ++*(v9 + 4);
    }

    if (v10 >= 499 && !(v11 % 0x3E8))
    {
      *(v9 + 4) = 0;
    }
  }

  return v5 != v8;
}

void webrtc::rtcp::Nack::~Nack(webrtc::rtcp::Nack *this)
{
  *this = &unk_2882968B0;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_2882968B0;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

std::vector<int> *webrtc::rtcp::Nack::Parse(std::vector<int> *this, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 <= 0xB)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/nack.cc");
    }

    return (v2 > 0xB);
  }

  else
  {
    v3 = (v2 - 8) >> 2;
    v4 = *(a2 + 8);
    value = this->__end_cap_.__value_;
    LODWORD(this->__end_) = bswap32(*v4);
    HIDWORD(this->__end_) = bswap32(v4[1]);
    v6 = (v4 + 2);
    this[2].__begin_ = this[1].__end_cap_.__value_;
    begin = this[1].__begin_;
    v8 = begin - value;
    if (v3 <= v8)
    {
      if (v3 < v8)
      {
        begin = &value[v3];
        this[1].__begin_ = begin;
      }
    }

    else
    {
      v9 = this;
      std::vector<float>::__append(&this->__end_cap_, v3 - v8);
      this = v9;
      value = v9->__end_cap_.__value_;
      begin = v9[1].__begin_;
    }

    v17 = begin - value;
    v18 = v3 - 1;
    if (v17 >= v3 - 1)
    {
      v19 = v3 - 1;
    }

    else
    {
      v19 = begin - value;
    }

    v20 = v19 + 1;
    if ((v19 + 1) <= 0x10)
    {
      goto LABEL_27;
    }

    v21 = v17 >= v18 ? v3 - 1 : v17;
    _CF = &value[v21] >= value && &value[v21] + 2 >= value + 2;
    v23 = v21 >> 62;
    if (!_CF || v23 != 0)
    {
      goto LABEL_27;
    }

    if (v17 < v18)
    {
      v18 = v17;
    }

    v25 = v18;
    if (value >= &v4[v25 + 3] || v6 >= &value[v25 + 1])
    {
      v30 = 16;
      if ((v20 & 0xF) != 0)
      {
        v30 = v20 & 0xF;
      }

      v26 = v20 - v30;
      v31 = &v6[4 * v26];
      v32 = ~v19 + v30;
      v33 = value;
      do
      {
        v42 = vld4q_s8(v6);
        v6 += 64;
        __asm { SHLL2           V5.8H, V0.16B, #8 }

        v41.val[0] = vorrq_s8(_Q5, vmovl_high_u8(v42.val[1]));
        __asm { SHLL2           V5.8H, V2.16B, #8 }

        v41.val[1] = vorrq_s8(_Q5, vmovl_high_u8(v42.val[3]));
        v40.val[0] = vorrq_s8(vshll_n_s8(*v42.val[0].i8, 8uLL), vmovl_u8(*v42.val[1].i8));
        v38 = v33 + 32;
        v40.val[1] = vorrq_s8(vshll_n_s8(*v42.val[2].i8, 8uLL), vmovl_u8(*v42.val[3].i8));
        vst2q_s16(v33, v40);
        v39 = v33 + 16;
        vst2q_s16(v39, v41);
        v33 = v38;
        v32 += 16;
      }

      while (v32);
      v6 = v31;
    }

    else
    {
LABEL_27:
      v26 = 0;
    }

    v27 = &value[v26] + 1;
    v28 = v3 - v26;
    for (i = v17 - v26; i; --i)
    {
      *(v27 - 1) = bswap32(*v6) >> 16;
      *v27 = bswap32(*(v6 + 1)) >> 16;
      v27 += 2;
      v6 += 4;
      if (!--v28)
      {
        webrtc::rtcp::Nack::Unpack(this);
        return (v2 > 0xB);
      }
    }

    __break(1u);
  }

  return this;
}

void *webrtc::rtcp::Nack::Unpack(void *this)
{
  v1 = this[2];
  v13 = this[3];
  if (v1 != v13)
  {
    v2 = this;
    do
    {
      this = std::vector<unsigned short>::push_back[abi:sn200100](v2 + 5, v1);
      v3 = v1[1];
      if (v1[1])
      {
        v4 = *v1;
        do
        {
          ++v4;
          if (v3)
          {
            v7 = v2[6];
            v6 = v2[7];
            if (v7 >= v6)
            {
              v8 = v2[5];
              v9 = (v7 - v8) >> 1;
              if (v9 > -2)
              {
                v10 = v6 - v8;
                if (v10 <= v9 + 1)
                {
                  v11 = v9 + 1;
                }

                else
                {
                  v11 = v10;
                }

                if (v10 >= 0x7FFFFFFFFFFFFFFELL)
                {
                  v12 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v12 = v11;
                }

                if (v12)
                {
                  if ((v12 & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                }

LABEL_23:
                __break(1u);
              }

              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            if (!v7)
            {
              goto LABEL_23;
            }

            *v7 = v4;
            v2[6] = v7 + 1;
          }

          v5 = v3 >= 2;
          v3 >>= 1;
        }

        while (v5);
      }

      v1 += 2;
    }

    while (v1 != v13);
  }

  return this;
}

uint64_t webrtc::rtcp::Nack::Create(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v6 = *(result + 24) - *(result + 16);
  if (!v6)
  {
    return 1;
  }

  v12 = result;
  v13 = 0;
  v14 = v6 >> 2;
  v15 = a2 + 1;
  v16 = a2 + 2;
  v17 = a2 + 3;
  v18 = *a3;
  while ((a4 - v18) <= 0xF)
  {
    if (!v18)
    {
      return 0;
    }

    result = a6(a5, a2);
    v18 = 0;
    *a3 = 0;
LABEL_3:
    v14 = (*(v12 + 24) - *(v12 + 16)) >> 2;
    if (v13 >= v14)
    {
      return 1;
    }
  }

  v19 = v14 - v13;
  if (v19 >= (a4 - v18 - 12) >> 2)
  {
    v19 = (a4 - v18 - 12) >> 2;
  }

  *(a2 + v18) = -127;
  *(v15 + *a3) = -51;
  *(v16 + *a3) = (v19 + 2) >> 8;
  *(v17 + *a3) = v19 + 2;
  v20 = *a3 + 4;
  *a3 = v20;
  v21 = (a2 + v20);
  *v21 = bswap32(*(v12 + 8));
  v21[1] = bswap32(*(v12 + 12));
  v18 = *a3 + 8;
  *a3 = v18;
  v22 = v19 + v13;
  if (v13 >= v19 + v13)
  {
    goto LABEL_3;
  }

  v23 = 4 * v13;
  while (1)
  {
    v24 = *(v12 + 16);
    if (v13 >= (*(v12 + 24) - v24) >> 2)
    {
      break;
    }

    v25 = (v24 + v23);
    *(a2 + v18) = bswap32(*v25) >> 16;
    *(a2 + *a3 + 2) = bswap32(v25[1]) >> 16;
    v18 = *a3 + 4;
    *a3 = v18;
    ++v13;
    v23 += 4;
    if (!--v19)
    {
      v13 = v22;
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void webrtc::rtcp::Nack::SetPacketIds(webrtc::rtcp::Nack *this, const unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
}

void webrtc::NackRequester::NackRequester(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_2882968E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 48) = 0;
  *(a1 + 32) = a6;
  *(a1 + 40) = a1 + 48;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  std::vector<unsigned long>::__append(a1 + 112, 0xAuLL);
  if (*(a1 + 104) - *(a1 + 88) <= 0x3FFuLL)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 100000;
  *(a1 + 160) = 0;
  (*(*a7 + 16))(__p, a7, "WebRTC-SendNackDelayMs", 22);
  if (SHIBYTE(v34) >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = strtol(v10, 0, 10);
  v19 = v11;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
    if ((v19 - 1) <= 0x13)
    {
LABEL_8:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v31 = "SendNackDelay is set to ";
        v32 = v19;
        v30 = 385;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/nack_requester.cc");
      }

      *(a1 + 168) = 1000 * v19;
      *(a1 + 176) = a1;
      *(a1 + 184) = a3;
      v21 = a3[3];
      v20 = a3[4];
      if (v21 >= v20)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v11 - 1) <= 0x13)
  {
    goto LABEL_8;
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = a1;
  *(a1 + 184) = a3;
  v21 = a3[3];
  v20 = a3[4];
  if (v21 >= v20)
  {
LABEL_11:
    v22 = a3[2];
    v23 = ((v21 - v22) >> 3) + 1;
    if (v23 >> 61)
    {
      goto LABEL_27;
    }

    v24 = v20 - v22;
    v25 = v24 >> 2;
    if (v24 >> 2 <= v23)
    {
      v25 = v23;
    }

    v26 = v24 >= 0x7FFFFFFFFFFFFFF8;
    v27 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v26)
    {
      v27 = v25;
    }

    if (v27)
    {
      if (!(v27 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_26:
    __break(1u);
LABEL_27:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_21:
  if (v21)
  {
    *v21 = a1;
    v28 = v21 + 1;
    a3[3] = v28;
    if ((v28 - a3[2]) == 8)
    {
      __p[0] = a3;
      v35 = absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::NackPeriodicProcessor::RegisterNackModule(webrtc::NackRequesterBase *)::$_0 &>;
      v34 = absl::internal_any_invocable::LocalManagerTrivial;
      {
        operator new();
      }

      webrtc::RepeatingTaskHandle::DelayedStart();
    }

    operator new();
  }

  goto LABEL_26;
}

void webrtc::NackRequester::~NackRequester(webrtc::NackRequester *this)
{
  v2 = *(this + 24);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = *(this + 23);
  v4 = v3[2];
  v5 = v3[3];
  if (v4 == v5)
  {
    v6 = v3[2];
  }

  else
  {
    v6 = v3[2];
    v7 = v6;
    while (*v7 != *(this + 22))
    {
      v7 += 8;
      v6 += 8;
      if (v7 == v5)
      {
        v6 = v3[3];
        break;
      }
    }
  }

  if (v5 == v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 - (v6 + 8);
    if (v5 != v6 + 8)
    {
      memmove(v6, v6 + 8, v5 - (v6 + 8));
      v4 = v3[2];
    }

    v3[3] = &v6[v8];
    if (v4 == &v6[v8])
    {
      v9 = v3[1];
      if (v9)
      {
        *(v9 + 4) = 0;
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          MEMORY[0x2743DA540]();
        }

        v3[1] = 0;
      }
    }

    v10 = *(this + 14);
    if (v10)
    {
      *(this + 15) = v10;
      operator delete(v10);
    }

    v11 = *(this + 11);
    if (v11)
    {
      *(this + 12) = v11;
      operator delete(v11);
    }

    std::__tree<sigslot::_signal_base_interface *>::destroy(this + 64, *(this + 9));
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 6));
  }
}

{
  webrtc::NackRequester::~NackRequester(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::NackRequester::ProcessNacks(webrtc::NackRequester *this)
{
  webrtc::NackRequester::GetNackBatch(&__p, this, 1);
  v2 = __p;
  if (__p != v4)
  {
    (***(this + 3))(*(this + 3), &__p, 0);
    v2 = __p;
  }

  if (v2)
  {
    v4 = v2;
    operator delete(v2);
  }
}

void webrtc::NackRequester::GetNackBatch(void *a1, uint64_t a2, int a3)
{
  v6 = (*(**(a2 + 16) + 16))(*(a2 + 16));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v7 = *(a2 + 40);
  if (v7 != (a2 + 48))
  {
    v8 = v6;
    do
    {
      v10 = v8 == 0x8000000000000000;
      v11 = v8 != 0x7FFFFFFFFFFFFFFFLL;
      v12 = v7[6];
      v13 = v7[7];
      v14 = v12 != 0x8000000000000000 && v8 != 0x7FFFFFFFFFFFFFFFLL;
      v15 = v12 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x8000000000000000;
      v16 = v8 - v12;
      if (v15)
      {
        v16 = 0x8000000000000000;
      }

      v17 = v16 < *(a2 + 168) && v14;
      if (v13 == 0x8000000000000000)
      {
        v11 = 0;
      }

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 1;
      }

      if (v10)
      {
        v18 = 0x8000000000000000;
      }

      else
      {
        v18 = v8 - v13;
      }

      v19 = v18 < *(a2 + 152) && v11;
      if ((v13 - 0x7FFFFFFFFFFFFFFFLL) > 1)
      {
        v25 = 1;
        if (v17)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v20 = *(a2 + 160);
        v21 = *(v7 + 21);
        v22 = v20 >= v21;
        v23 = v20 - v21;
        v24 = v23 == 0 || !v22;
        if (v23 == 0x8000)
        {
          v25 = v24;
        }

        else
        {
          v25 = (v23 & 0x8000u) != 0;
        }

        if (v17)
        {
          goto LABEL_38;
        }
      }

      if (a3 != 1 && !v25 || a3 != 0 && !v19)
      {
        v30 = a1[1];
        v29 = a1[2];
        if (v30 >= v29)
        {
          v31 = (v30 - *a1) >> 1;
          if (v31 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v32 = v29 - *a1;
          if (v32 <= v31 + 1)
          {
            v33 = v31 + 1;
          }

          else
          {
            v33 = v32;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          if (v34)
          {
            if ((v34 & 0x8000000000000000) == 0)
            {
              operator new();
            }
          }

          else
          {
LABEL_72:
            __break(1u);
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (!v30)
        {
          goto LABEL_72;
        }

        *v30 = *(v7 + 20);
        a1[1] = v30 + 1;
        v35 = *(v7 + 16);
        *(v7 + 16) = v35 + 1;
        v7[7] = v8;
        if (v35 >= 99)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            v48 = v48 & 0xFFFFFFFF00000000 | 0x8D2;
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/nack_requester.cc");
          }

          v43 = v7[1];
          v44 = v7;
          if (v43)
          {
            do
            {
              v27 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v27 = v44[2];
              v45 = *v27 == v44;
              v44 = v27;
            }

            while (!v45);
          }

          if (*(a2 + 40) == v7)
          {
            *(a2 + 40) = v27;
          }

          v9 = *(a2 + 48);
          --*(a2 + 56);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v9, v7);
          operator delete(v7);
          goto LABEL_4;
        }

        v46 = v7[1];
        if (v46)
        {
          do
          {
            v27 = v46;
            v46 = *v46;
          }

          while (v46);
          goto LABEL_4;
        }

        do
        {
          v47 = v7;
          v7 = v7[2];
        }

        while (*v7 != v47);
        goto LABEL_42;
      }

LABEL_38:
      v26 = v7[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
        goto LABEL_4;
      }

      do
      {
        v28 = v7;
        v7 = v7[2];
      }

      while (*v7 != v28);
LABEL_42:
      v27 = v7;
LABEL_4:
      v7 = v27;
    }

    while (v27 != (a2 + 48));
  }
}

uint64_t **webrtc::NackRequester::OnReceivedPacket(webrtc::NackRequester *this, unsigned int a2, int a3)
{
  v100 = a2;
  if (*(this + 144))
  {
    v5 = *(this + 80);
    v6 = v5 - a2;
    if (v5 == a2)
    {
      return 0;
    }

    if (v6 == 0x8000)
    {
      v8 = v5 > a2;
    }

    else
    {
      v8 = (v6 & 0x8000u) == 0;
    }

    if (!v8)
    {
      if (a3)
      {
        std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)0>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(this + 64, &v100);
        v28 = (this + 72);
        v27 = *(this + 9);
        if (v27)
        {
          v29 = v100 - 10000;
          do
          {
            while (1)
            {
              v35 = *(v27 + 13);
              if (v35 != v29)
              {
                break;
              }

              v28 = v27;
              v27 = *v27;
              if (!v27)
              {
                goto LABEL_51;
              }
            }

            v30 = (v100 - 10000) - v35;
            v31 = v35 < v29;
            v32 = (v29 - v35) >= 0;
            if (v30 == 0x8000)
            {
              v32 = v31;
            }

            v33 = !v32;
            v34 = v32;
            if (v33)
            {
              v28 = v27;
            }

            v27 = v27[v34];
          }

          while (v27);
        }

LABEL_51:
        v36 = *(this + 8);
        if (v28 != v36)
        {
          do
          {
            v38 = v36[1];
            v39 = v36;
            if (v38)
            {
              do
              {
                v40 = v38;
                v38 = *v38;
              }

              while (v38);
            }

            else
            {
              do
              {
                v40 = v39[2];
                v17 = *v40 == v39;
                v39 = v40;
              }

              while (!v17);
            }

            if (*(this + 8) == v36)
            {
              *(this + 8) = v40;
            }

            v37 = *(this + 9);
            --*(this + 10);
            std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v37, v36);
            operator delete(v36);
            v36 = v40;
          }

          while (v40 != v28);
        }
      }

      else
      {
        v42 = (this + 48);
        v41 = *(this + 6);
        v97 = this + 48;
        if (v41)
        {
          v43 = a2 - 10000;
          v42 = (this + 48);
          do
          {
            while (1)
            {
              v49 = *(v41 + 16);
              if (v49 != v43)
              {
                break;
              }

              v42 = v41;
              v41 = *v41;
              if (!v41)
              {
                goto LABEL_74;
              }
            }

            v44 = (a2 - 10000) - v49;
            v45 = v49 < v43;
            v46 = (v43 - v49) >= 0;
            if (v44 == 0x8000)
            {
              v46 = v45;
            }

            v47 = !v46;
            v48 = v46;
            if (v47)
            {
              v42 = v41;
            }

            v41 = v41[v48];
          }

          while (v41);
        }

LABEL_74:
        v50 = v5 + 1;
        v51 = *(this + 5);
        if (v51 != v42)
        {
          do
          {
            v60 = v51[1];
            v61 = v51;
            if (v60)
            {
              do
              {
                v62 = v60;
                v60 = *v60;
              }

              while (v60);
            }

            else
            {
              do
              {
                v62 = v61[2];
                v17 = *v62 == v61;
                v61 = v62;
              }

              while (!v17);
            }

            if (*(this + 5) == v51)
            {
              *(this + 5) = v62;
            }

            v59 = *(this + 6);
            --*(this + 7);
            std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v59, v51);
            operator delete(v51);
            v51 = v62;
          }

          while (v62 != v42);
        }

        if (*(this + 7) + (a2 - v50) < 0x3E9)
        {
          if (a2 != v50)
          {
            v64 = (this + 72);
            do
            {
              v65 = *v64;
              if (!*v64)
              {
                goto LABEL_114;
              }

              v66 = (this + 72);
              do
              {
                while (1)
                {
                  v72 = *(v65 + 13);
                  if (v72 != v50)
                  {
                    break;
                  }

                  v66 = v65;
                  v65 = *v65;
                  if (!v65)
                  {
                    goto LABEL_108;
                  }
                }

                v67 = v50 - v72;
                v68 = v72 < v50;
                v69 = (v50 - v72) >= 0;
                if (v67 == 0x8000)
                {
                  v69 = v68;
                }

                v70 = !v69;
                if (v69)
                {
                  v71 = 8;
                }

                else
                {
                  v71 = 0;
                }

                if (v70)
                {
                  v66 = v65;
                }

                v65 = *&v65[v71];
              }

              while (v65);
LABEL_108:
              if (v66 == v64 || (v73 = *(v66 + 13), v73 != v50) && ((v74 = v73 - v50, v75 = v73 <= v50, v76 = (v73 - v50) < 0, v74 != 0x8000) ? (v77 = v76) : (v77 = v75), !v77))
              {
LABEL_114:
                v78 = *(this + 12) - *(this + 11);
                if (v78)
                {
                  v79 = 0;
                  v80 = v78 >> 3;
                  v81 = *(this + 14);
                  v82 = 0.0;
                  while ((*(this + 15) - v81) >> 3 != v79)
                  {
                    v82 = v82 + (*(v81 + 8 * v79++) / v80);
                    if (v82 >= 0.5)
                    {
                      goto LABEL_121;
                    }
                  }

                  v79 = (*(this + 15) - v81) >> 3;
                }

                else
                {
                  LOWORD(v79) = 0;
                }

LABEL_121:
                v83 = (*(**(this + 2) + 16))(*(this + 2));
                v84 = *(this + 6);
                if (!v84)
                {
LABEL_134:
                  operator new();
                }

                v85 = *(v84 + 16);
                if (v85 != v50)
                {
                  v86 = *(this + 6);
                  do
                  {
                    v87 = v85;
                    v88 = v85 - v50;
                    v89 = v85 > v50;
                    v90 = (v85 - v50) >= 0;
                    if (v88 == 0x8000)
                    {
                      v90 = v89;
                    }

                    if (v90)
                    {
                      v84 = *v86;
                      if (!*v86)
                      {
                        goto LABEL_134;
                      }
                    }

                    else
                    {
                      v91 = v50 - v87;
                      v92 = v87 < v50;
                      v93 = (v50 - v87) >= 0;
                      if (v91 == 0x8000)
                      {
                        v94 = v92;
                      }

                      else
                      {
                        v94 = v93;
                      }

                      if (!v94)
                      {
                        v84 = v86;
                        break;
                      }

                      v84 = v86[1];
                      if (!v84)
                      {
                        goto LABEL_134;
                      }
                    }

                    v85 = *(v84 + 16);
                    v86 = v84;
                  }

                  while (v85 != v50);
                }

                *(v84 + 20) = v50;
                *(v84 + 21) = v79 + v50;
                v84[6] = v83;
                v84[7] = 0x8000000000000000;
                *(v84 + 16) = 0;
              }

              ++v50;
            }

            while (a2 != v50);
          }
        }

        else
        {
          std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 6));
          *(this + 6) = 0;
          *(this + 7) = 0;
          *(this + 5) = v97;
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/nack_requester.cc");
          }

          (***(this + 4))(*(this + 4));
        }

        *(this + 80) = a2;
        webrtc::NackRequester::GetNackBatch(&__p, this, 0);
        v63 = __p;
        if (__p != v99)
        {
          (***(this + 3))(*(this + 3), &__p, 1);
          v63 = __p;
        }

        if (v63)
        {
          v99 = v63;
          operator delete(v63);
        }
      }

      return 0;
    }

    v9 = this + 48;
    result = *(this + 6);
    if (result)
    {
      v10 = this + 48;
      v11 = *(this + 6);
      do
      {
        while (1)
        {
          v19 = *(v11 + 16);
          if (a2 != v19)
          {
            break;
          }

          v10 = v11;
          v11 = *v11;
          if (!v11)
          {
            goto LABEL_26;
          }
        }

        v12 = a2 - v19;
        v13 = a2 >= v19;
        v14 = a2 - v19;
        v15 = v14 != 0 && v13;
        v16 = (v14 & 0x8000u) == 0;
        if (v12 == 0x8000)
        {
          v16 = v15;
        }

        v17 = !v16;
        if (v16)
        {
          v18 = 8;
        }

        else
        {
          v18 = 0;
        }

        if (v17)
        {
          v10 = v11;
        }

        v11 = *&v11[v18];
      }

      while (v11);
LABEL_26:
      if (v10 == v9)
      {
        return 0;
      }

      v20 = *(v10 + 16);
      if (v20 != a2)
      {
        v21 = v20 - a2;
        v13 = v20 >= a2;
        v22 = v20 - a2;
        v23 = v22 == 0 || !v13;
        v24 = (v22 & 0x8000u) != 0;
        if (v21 == 0x8000)
        {
          v24 = v23;
        }

        if (!v24)
        {
          return 0;
        }
      }

      v25 = *(v10 + 1);
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        v95 = v10;
        do
        {
          v26 = *(v95 + 2);
          v17 = *v26 == v95;
          v95 = v26;
        }

        while (!v17);
      }

      v96 = *(v10 + 16);
      if (*(this + 5) == v10)
      {
        *(this + 5) = v26;
      }

      --*(this + 7);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(result, v10);
      operator delete(v10);
      return v96;
    }
  }

  else
  {
    result = 0;
    *(this + 80) = a2;
    *(this + 144) = 1;
  }

  return result;
}

void webrtc::NackRequester::ClearUpTo(webrtc::NackRequester *this, unsigned int a2)
{
  v5 = (this + 48);
  v4 = *(this + 6);
  for (i = *(this + 5); v4; v4 = v4[v13])
  {
    while (1)
    {
      v14 = *(v4 + 16);
      if (a2 != v14)
      {
        break;
      }

      v5 = v4;
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    v7 = a2 - v14;
    v8 = a2 >= v14;
    v9 = a2 - v14;
    v10 = v9 != 0 && v8;
    v11 = (v9 & 0x8000u) == 0;
    if (v7 == 0x8000)
    {
      v11 = v10;
    }

    v12 = !v11;
    v13 = v11;
    if (v12)
    {
      v5 = v4;
    }
  }

LABEL_17:
  if (i != v5)
  {
    do
    {
      v19 = i[1];
      v20 = i;
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
          v12 = *v21 == v20;
          v20 = v21;
        }

        while (!v12);
      }

      if (*(this + 5) == i)
      {
        *(this + 5) = v21;
      }

      v18 = *(this + 6);
      --*(this + 7);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v18, i);
      operator delete(i);
      i = v21;
    }

    while (v21 != v5);
  }

  v16 = (this + 72);
  v15 = *(this + 9);
  for (j = *(this + 8); v15; v15 = v15[v27])
  {
    while (1)
    {
      v28 = *(v15 + 13);
      if (a2 != v28)
      {
        break;
      }

      v16 = v15;
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_42;
      }
    }

    v22 = a2 - v28;
    v8 = a2 >= v28;
    v23 = a2 - v28;
    v24 = v23 != 0 && v8;
    v25 = (v23 & 0x8000u) == 0;
    if (v22 == 0x8000)
    {
      v25 = v24;
    }

    v26 = !v25;
    v27 = v25;
    if (v26)
    {
      v16 = v15;
    }
  }

LABEL_42:
  if (j != v16)
  {
    do
    {
      v30 = j[1];
      v31 = j;
      if (v30)
      {
        do
        {
          v32 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v32 = v31[2];
          v12 = *v32 == v31;
          v31 = v32;
        }

        while (!v12);
      }

      if (*(this + 8) == j)
      {
        *(this + 8) = v32;
      }

      v29 = *(this + 9);
      --*(this + 10);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v29, j);
      operator delete(j);
      j = v32;
    }

    while (v32 != v16);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::NackPeriodicProcessor::RegisterNackModule(webrtc::NackRequesterBase *)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 16))(v4);
  }

  return *v1;
}

uint64_t **std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)0>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_17:
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
    v7 = v4;
    v8 = v4 - v3;
    v9 = v4 > v3;
    v10 = (v4 - v3) >= 0;
    if (v8 == 0x8000)
    {
      v10 = v9;
    }

    if (v10)
    {
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = v3 >= v7;
      v12 = v3 - v7;
      v13 = v12 != 0 && v11;
      if (v12 == 0x8000)
      {
        v14 = v13;
      }

      else
      {
        v14 = (v12 & 0x8000u) == 0;
      }

      if (!v14)
      {
        return v2;
      }

      v6 = v2[1];
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    v4 = *(v6 + 13);
    v2 = v6;
  }

  while (v4 != v3);
  return v6;
}

void webrtc::NackTracker::Config::Config(uint64_t a1)
{
  *a1 = 0x3FEFDF3B645A1CACLL;
  *(a1 + 8) = 20;
  *(a1 + 12) = 0;
  *(a1 + 16) = 100;
  *(a1 + 24) = 0x3FF0000000000000;
  operator new();
}

void webrtc::NackTracker::UpdateLastReceivedPacket(uint64_t **this, int a2, int a3)
{
  v12 = a2;
  if (this[5])
  {
    if (*(this + 16) == a2)
    {
      return;
    }

    std::__tree<std::__value_type<unsigned short,webrtc::NackTracker::NackElement>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,webrtc::NackTracker::NackElement>,webrtc::NackTracker::NackListCompare,true>,std::allocator<std::__value_type<unsigned short,webrtc::NackTracker::NackElement>>>::__erase_unique<unsigned short>(this + 7, &v12);
    v5 = *(this + 16);
    v6 = v12;
    v7 = v5 - v12;
    if (v7 == 0x8000)
    {
      if (v5 > v12)
      {
        return;
      }
    }

    else if (v5 != v12 && (v7 & 0x8000) == 0)
    {
      return;
    }

    v8 = ~v5;
    v9 = vcvtd_n_u64_f64(*this, 0x1EuLL);
    v10 = v12 + v8;
    v11 = (v9 * *(this + 22)) >> 30;
    *(this + 22) = v11;
    if (v10 >= 1)
    {
      do
      {
        LODWORD(v11) = ((v11 * v9) >> 30) - v9 + 0x40000000;
        --v10;
      }

      while (v10);
      *(this + 22) = v11;
    }

    webrtc::NackTracker::UpdateList(this, v6, a3);
    *(this + 16) = v12;
    *(this + 9) = a3;
    webrtc::NackTracker::LimitNackListSize(this);
  }

  else
  {
    *(this + 16) = a2;
    *(this + 9) = a3;
    *(this + 40) = 1;
    if ((this[6] & 1) == 0)
    {
      *(this + 21) = a2;
      *(this + 11) = a3;
    }
  }
}

uint64_t webrtc::NackTracker::UpdateList(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 32);
  v4 = v3 + 1;
  v5 = a2 - (v3 + 1);
  if (v5 == 0x8000)
  {
    if (a2 <= v4)
    {
      return this;
    }
  }

  else
  {
    v6 = v5 & 0x8000;
    v7 = a2 != v4 && v6 == 0;
    if (!v7)
    {
      return this;
    }
  }

  v8 = a3 - *(this + 36);
  v9 = (a2 - v3);
  if (v8 >= v9 && (v8 / v9) <= 120 * *(this + 52))
  {
    while (1)
    {
LABEL_12:
      v10 = a2 - ++v3;
      if (v10 == 0x8000)
      {
        if (a2 <= v3)
        {
          return this;
        }
      }

      else if (a2 == v3 || (v10 & 0x8000) != 0)
      {
        return this;
      }

      v11 = *(this + 64);
      v12 = this + 64;
      if (*(this + 56) != this + 64)
      {
        v13 = *(this + 64);
        v14 = this + 64;
        if (v11)
        {
          do
          {
            v12 = v13;
            v13 = *(v13 + 8);
          }

          while (v13);
        }

        else
        {
          do
          {
            v12 = *(v14 + 16);
            v7 = *v12 == v14;
            v14 = v12;
          }

          while (v7);
        }

        v15 = *(v12 + 32);
        if (v3 - v15 == 0x8000)
        {
          if (v15 >= v3)
          {
            goto LABEL_33;
          }
        }

        else if (v15 == v3 || ((v3 - v15) & 0x8000) != 0)
        {
LABEL_33:
          if (!v11)
          {
LABEL_52:
            operator new();
          }

          while (1)
          {
            v18 = v11;
            v19 = *(v11 + 32);
            if (v19 - v3 == 0x8000)
            {
              if (v19 > v3)
              {
                goto LABEL_35;
              }
            }

            else if (v19 != v3 && ((v19 - v3) & 0x8000) == 0)
            {
LABEL_35:
              v11 = *v18;
              if (!*v18)
              {
                goto LABEL_52;
              }

              continue;
            }

            if (v3 - v19 == 0x8000)
            {
              if (v19 >= v3)
              {
                goto LABEL_12;
              }
            }

            else if (v19 == v3 || ((v3 - v19) & 0x8000) != 0)
            {
              goto LABEL_12;
            }

            v11 = v18[1];
            if (!v11)
            {
              goto LABEL_52;
            }
          }
        }
      }

      if (v11)
      {
        v16 = (v12 + 8);
      }

      else
      {
        v16 = (this + 64);
      }

      if (!*v16)
      {
        goto LABEL_52;
      }
    }
  }

  return this;
}

void webrtc::NackTracker::LimitNackListSize(webrtc::NackTracker *this)
{
  v3 = (this + 64);
  v2 = *(this + 8);
  v4 = *(this + 7);
  if (v2)
  {
    v5 = (*(this + 16) + ~*(this + 40));
    do
    {
      v6 = *(v2 + 16);
      v7 = v6 - v5;
      v8 = ((v6 - v5) & 0x8000) != 0 || v6 == v5;
      v9 = !v8;
      v10 = v6 > (*(this + 16) + ~*(this + 40));
      if (v7 != 0x8000)
      {
        v10 = v9;
      }

      v11 = !v10;
      v12 = !v10;
      if (!v11)
      {
        v3 = v2;
      }

      v2 = v2[v12];
    }

    while (v2);
  }

  if (v4 != v3)
  {
    do
    {
      v14 = v4[1];
      v15 = v4;
      if (v14)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = v15[2];
          v8 = *v16 == v15;
          v15 = v16;
        }

        while (!v8);
      }

      if (*(this + 7) == v4)
      {
        *(this + 7) = v16;
      }

      v13 = *(this + 8);
      --*(this + 9);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v13, v4);
      operator delete(v4);
      v4 = v16;
    }

    while (v16 != v3);
  }
}

void webrtc::NackTracker::UpdateLastDecodedPacket(webrtc::NackTracker *this, unsigned int a2, int a3)
{
  v5 = this + 64;
  v4 = *(this + 8);
  *(this + 48) = 1;
  *(this + 21) = a2;
  *(this + 11) = a3;
  v6 = *(this + 7);
  if (v4)
  {
    v7 = this + 64;
    do
    {
      v8 = *(v4 + 16);
      v9 = v8 - a2;
      v10 = ((v8 - a2) & 0x8000) != 0 || v8 == a2;
      v11 = !v10;
      v12 = v8 > a2;
      if (v9 != 0x8000)
      {
        v12 = v11;
      }

      v13 = !v12;
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      if (!v13)
      {
        v7 = v4;
      }

      v4 = *&v4[v14];
    }

    while (v4);
    if (v6 == v7)
    {
LABEL_18:
      if (v6 == v5)
      {
        return;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v7 = this + 64;
    if (v6 == v5)
    {
      goto LABEL_18;
    }
  }

  do
  {
    v16 = *(v6 + 1);
    v17 = v6;
    if (v16)
    {
      do
      {
        v18 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v18 = *(v17 + 2);
        v10 = *v18 == v17;
        v17 = v18;
      }

      while (!v10);
    }

    if (*(this + 7) == v6)
    {
      *(this + 7) = v18;
    }

    v15 = *(this + 8);
    --*(this + 9);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v15, v6);
    operator delete(v6);
    v6 = v18;
  }

  while (v18 != v7);
  v6 = *(this + 7);
  if (v6 != v5)
  {
LABEL_31:
    v19 = *(this + 11);
    v20 = *(this + 13);
    do
    {
      *(v6 + 5) = (*(v6 + 12) - v19) / v20;
      v21 = *(v6 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v6 + 2);
          v10 = *v22 == v6;
          v6 = v22;
        }

        while (!v10);
      }

      v6 = v22;
    }

    while (v22 != v5);
  }
}

double webrtc::NackTracker::GetNackList@<D0>(webrtc::NackTracker *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v6 = *(this + 22);
    result = *(this + 3);
    if (v6 > vcvtd_n_u64_f64(result, 0x1EuLL))
    {
      return result;
    }
  }

  else
  {
    if (*(this + 13))
    {
      return result;
    }

    v3 = *(this + 4);
    v6 = *(this + 22);
    result = *(this + 3);
    if (v6 > vcvtd_n_u64_f64(result, 0x1EuLL))
    {
      return result;
    }
  }

  v8 = *(this + 7);
  v9 = this + 64;
  if (v8 != this + 64)
  {
    result = *(this + 2) * 100.0 * v6 * 9.31322575e-10;
    v10 = result;
    do
    {
      if (*(v8 + 5) > v3 || v3 + (*(this + 9) - *(v8 + 12)) / *(this + 13) < v10)
      {
        std::vector<unsigned short>::push_back[abi:sn200100](a3, v8 + 16);
      }

      v11 = *(v8 + 1);
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
        do
        {
          v12 = *(v8 + 2);
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != v9);
  }

  if (*(this + 12))
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(this + 56, *(this + 8));
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 7) = v9;
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<unsigned short,webrtc::NackTracker::NackElement>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,webrtc::NackTracker::NackElement>,webrtc::NackTracker::NackListCompare,true>,std::allocator<std::__value_type<unsigned short,webrtc::NackTracker::NackElement>>>::__erase_unique<unsigned short>(uint64_t **a1, unsigned __int16 *a2)
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
      v9 = v5 - v8;
      v10 = ((v5 - v8) & 0x8000) != 0 || v5 == v8;
      v11 = !v10;
      v12 = v5 > v8;
      if (v9 != 0x8000)
      {
        v12 = v11;
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
    if (v6 == v4)
    {
      return 0;
    }

    v15 = *(v6 + 16);
    if (v15 - v5 == 0x8000)
    {
      if (v15 > v5)
      {
        return 0;
      }
    }

    else if (v15 != v5 && ((v15 - v5) & 0x8000) == 0)
    {
      return 0;
    }

    v17 = v6[1];
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      v19 = v6;
      do
      {
        v18 = v19[2];
        v10 = *v18 == v19;
        v19 = v18;
      }

      while (!v10);
    }

    if (*a1 == v6)
    {
      *a1 = v18;
    }

    a1[2] = (a1[2] - 1);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(result, v6);
    operator delete(v6);
    return 1;
  }

  return result;
}

uint64_t webrtc::H264CMSampleBufferToAnnexBBuffer(opaqueCMSampleBuffer *a1, int a2, unint64_t *a3)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (!FormatDescription)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_6:
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
    }

    return 0;
  }

  v7 = FormatDescription;
  NALUnitHeaderLengthOut = 0;
  parameterSetCountOut = 0;
  if (CMVideoFormatDescriptionGetH264ParameterSetAtIndex(FormatDescription, 0, 0, 0, &parameterSetCountOut, &NALUnitHeaderLengthOut))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (NALUnitHeaderLengthOut == 4)
  {
    *a3 = 0;
    if (a2)
    {
      parameterSetPointerOut = 0;
      parameterSetSizeOut = 0;
      if (parameterSetCountOut)
      {
        v20 = 0;
        while (!CMVideoFormatDescriptionGetH264ParameterSetAtIndex(v7, v20, &parameterSetPointerOut, &parameterSetSizeOut, 0, 0))
        {
          v21 = *a3 + 4;
          if (a3[1] < v21)
          {
            operator new[]();
          }

          *(a3[2] + *a3) = 0x1000000;
          *a3 = v21;
          if (parameterSetSizeOut)
          {
            v22 = parameterSetSizeOut + v21;
            if (a3[1] < parameterSetSizeOut + v21)
            {
              operator new[]();
            }

            memcpy((a3[2] + v21), parameterSetPointerOut, parameterSetSizeOut);
            *a3 = v22;
          }

          if (++v20 >= parameterSetCountOut)
          {
            goto LABEL_20;
          }
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          return 0;
        }

        goto LABEL_6;
      }
    }

LABEL_20:
    DataBuffer = CMSampleBufferGetDataBuffer(a1);
    if (!DataBuffer)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return 0;
      }

      goto LABEL_6;
    }

    v24 = DataBuffer;
    parameterSetSizeOut = 0;
    if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0))
    {
      parameterSetSizeOut = v24;
      CFRetain(v24);
    }

    else
    {
      if (CMBlockBufferCreateContiguous(0, v24, 0, 0, 0, 0, 0, &parameterSetSizeOut))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
        }

        return 0;
      }

      v24 = parameterSetSizeOut;
    }

    parameterSetPointerOut = 0;
    DataLength = CMBlockBufferGetDataLength(v24);
    DataPointer = CMBlockBufferGetDataPointer(parameterSetSizeOut, 0, 0, 0, &parameterSetPointerOut);
    v53 = DataPointer == 0;
    if (DataPointer)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
      }
    }

    else if (DataLength)
    {
      v41 = parameterSetPointerOut;
      v42 = *a3;
      do
      {
        v45 = *v41;
        v44 = v42 + 4;
        if (a3[1] < v42 + 4)
        {
          operator new[]();
        }

        v46 = bswap32(v45);
        *(a3[2] + v42) = 0x1000000;
        *a3 = v44;
        v43 = parameterSetPointerOut;
        if (v45)
        {
          if (a3[1] < v44 + v46)
          {
            operator new[]();
          }

          memcpy((a3[2] + v44), &parameterSetPointerOut[NALUnitHeaderLengthOut], v46);
          *a3 = v44 + v46;
          v43 = parameterSetPointerOut;
          v44 += v46;
        }

        v41 = &v43[v46 + 4];
        parameterSetPointerOut = v41;
        v42 = v44;
        DataLength -= v46 + 4;
      }

      while (DataLength);
    }

    CFRelease(parameterSetSizeOut);
    return v53;
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc", 55, "nalu_header_size == kAvccHeaderByteSize", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v8, v9, v10, v11, NALUnitHeaderLengthOut);
    return webrtc::H264AnnexBBufferToCMSampleBuffer(v47, v48, v49, v50, v51, v52);
  }
}

uint64_t webrtc::H264AnnexBBufferToCMSampleBuffer(webrtc *this, const unsigned __int8 *a2, const opaqueCMFormatDescription *a3, CMSampleBufferRef *a4, CMMemoryPoolRef pool, OpaqueCMMemoryPool *a6)
{
  *a4 = 0;
  if (a2)
  {
    v10 = this;
  }

  else
  {
    v10 = 0;
  }

  dataBuffer = 0;
  v95 = 0;
  v96 = 0;
  v11 = a2 - 3;
  if (a2 < 4)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_30;
  }

  v12 = 0;
  do
  {
    v14 = *(v10 + v12 + 2);
    if (v14 > 1)
    {
LABEL_7:
      v13 = 3;
      goto LABEL_8;
    }

    if (v14 == 1)
    {
      if (*(v10 + v12 + 1) || *(v10 + v12))
      {
        goto LABEL_7;
      }

      theBuffer[0] = v12;
      theBuffer[1] = (v12 + 3);
      theBuffer[2] = 0;
      if (v12)
      {
        v15 = v12;
        if (!*(v10 + v12 - 1))
        {
          theBuffer[0] = (v12 - 1);
          v15 = v12 - 1;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = pool;
      if (v95 != dataBuffer)
      {
        *(v95 - 1) = v15 - *(v95 - 2);
      }

      std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&dataBuffer, theBuffer);
      v13 = 3;
      pool = v16;
    }

    else
    {
      v13 = 1;
    }

LABEL_8:
    v12 += v13;
  }

  while (v12 < v11);
  v17 = dataBuffer;
  v18 = v95;
  if (v95 != dataBuffer)
  {
    *(v95 - 1) = &a2[-*(v95 - 2)];
    v20 = (v17 + 24);
    while (!*(v20 - 1) || (*(this + *(v20 - 2)) & 0x1F) != 7)
    {
      v21 = v20 == v18;
      v20 = (v20 + 24);
      if (v21)
      {
        goto LABEL_29;
      }
    }

    if ((v20 - 24) == v18)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v20 != v18)
      {
        v19 = (v20 + 24);
        goto LABEL_30;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
LABEL_56:
        webrtc::webrtc_logging_impl::Log("\r\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
        v56 = 0;
        goto LABEL_74;
      }
    }

LABEL_50:
    v56 = 0;
    goto LABEL_74;
  }

LABEL_29:
  v19 = v17;
LABEL_30:
  theBuffer[0] = 0;
  Allocator = CMMemoryPoolGetAllocator(pool);
  v23 = *MEMORY[0x277CBECE8];
  if (v19 == v18)
  {
    v25 = 0;
    v27 = 0;
  }

  else
  {
    v24 = v18 - v19 - 24;
    if (v24 >= 0x60)
    {
      v28 = v24 / 0x18 + 1;
      v29 = v28 & 3;
      if ((v28 & 3) == 0)
      {
        v29 = 4;
      }

      v30 = v28 - v29;
      v26 = (v19 + 24 * v30);
      v31 = (v19 + 64);
      v32 = 0uLL;
      v33 = 0uLL;
      do
      {
        v34 = v31 - 6;
        v35 = vld3q_f64(v34);
        v36 = vld3q_f64(v31);
        v37 = vdupq_n_s64(4uLL);
        v32 = vaddq_s64(vaddq_s64(v32, v35), v37);
        v33 = vaddq_s64(vaddq_s64(v33, v36), v37);
        v31 += 12;
        v30 -= 4;
      }

      while (v30);
      v25 = vaddvq_s64(vaddq_s64(v33, v32));
    }

    else
    {
      v25 = 0;
      v26 = v19;
    }

    do
    {
      v25 += *(v26 + 2) + 4;
      v26 = (v26 + 24);
    }

    while (v26 != v18);
    if (v24 >= 0x60)
    {
      v39 = v24 / 0x18 + 1;
      v40 = v39 & 3;
      if ((v39 & 3) == 0)
      {
        v40 = 4;
      }

      v41 = v39 - v40;
      v38 = (v19 + 24 * v41);
      v42 = (v19 + 64);
      v43 = 0uLL;
      v44 = 0uLL;
      do
      {
        v45 = v42 - 6;
        v46 = vld3q_f64(v45);
        v47 = vld3q_f64(v42);
        v48 = vdupq_n_s64(4uLL);
        v43 = vaddq_s64(vaddq_s64(v43, v46), v48);
        v44 = vaddq_s64(vaddq_s64(v44, v47), v48);
        v42 += 12;
        v41 -= 4;
      }

      while (v41);
      v27 = vaddvq_s64(vaddq_s64(v44, v43));
    }

    else
    {
      v27 = 0;
      v38 = v19;
    }

    do
    {
      v27 += *(v38 + 2) + 4;
      v38 = (v38 + 24);
    }

    while (v38 != v18);
  }

  if (CMBlockBufferCreateWithMemoryBlock(v23, 0, v25, Allocator, 0, 0, v27, 1u, theBuffer))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

  dataBuffer = 0;
  IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer[0], 0, 0);
  v58 = theBuffer[0];
  if (IsRangeContiguous)
  {
    v90 = a4;
    v91 = a3;
    dataBuffer = theBuffer[0];
    theBuffer[0] = 0;
    goto LABEL_53;
  }

  if (!CMBlockBufferCreateContiguous(v23, theBuffer[0], Allocator, 0, 0, 0, 0, &dataBuffer))
  {
    v90 = a4;
    v91 = a3;
    v58 = dataBuffer;
LABEL_53:
    dataPointerOut = 0;
    totalLengthOut = 0;
    if (CMBlockBufferGetDataPointer(v58, 0, 0, &totalLengthOut, &dataPointerOut))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
LABEL_71:
        webrtc::webrtc_logging_impl::Log("\r\t", v59, v60, v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
      }
    }

    else
    {
      v89 = v17;
      if (v19 != v18)
      {
        v73 = 0;
        v75 = dataPointerOut;
        v74 = totalLengthOut;
        v76 = (v19 + 8);
        do
        {
          v79 = v76 - 1;
          if (*(v76 - 1) == a2)
          {
            break;
          }

          v80 = v76[1];
          if (v80 + 4 <= v74 - v73)
          {
            v77 = *v76;
            *&v75[v73] = bswap32(v80);
            v78 = v73 + 4;
            memcpy(&v75[v78], this + v77, v80);
            v73 = v80 + v78;
          }

          else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v81, v82, v83, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
          }

          v76 += 3;
        }

        while (v79 + 3 != v18);
      }

      v56 = 1;
      if (!CMSampleBufferCreate(v23, dataBuffer, 1u, 0, 0, v91, 1, 0, 0, 0, 0, v90))
      {
        v17 = v89;
        goto LABEL_73;
      }

      v17 = v89;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v56 = 0;
LABEL_73:
    CFRelease(dataBuffer);
    goto LABEL_74;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v66, v67, v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
  }

  CFRelease(theBuffer[0]);
  v56 = 0;
LABEL_74:
  if (v17)
  {
    operator delete(v17);
  }

  return v56;
}

uint64_t webrtc::H265CMSampleBufferToAnnexBBuffer(opaqueCMSampleBuffer *a1, int a2, unint64_t *a3)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (!FormatDescription)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_18:
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
      return 0;
    }

    return 0;
  }

  v7 = FormatDescription;
  NALUnitHeaderLengthOut = 0;
  parameterSetCountOut = 0;
  if (CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(FormatDescription, 0, 0, 0, &parameterSetCountOut, &NALUnitHeaderLengthOut))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (NALUnitHeaderLengthOut == 4)
  {
    *a3 = 0;
    if (a2)
    {
      parameterSetPointerOut = 0;
      parameterSetSizeOut = 0;
      if (parameterSetCountOut)
      {
        if (!CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(v7, 0, &parameterSetPointerOut, &parameterSetSizeOut, 0, 0))
        {
          v20 = *a3 + 4;
          if (a3[1] < v20)
          {
            operator new[]();
          }

          *(a3[2] + *a3) = 0x1000000;
          *a3 = v20;
          if (parameterSetSizeOut)
          {
            v21 = parameterSetSizeOut + v20;
            if (a3[1] < parameterSetSizeOut + v20)
            {
              operator new[]();
            }

            memcpy((a3[2] + v20), parameterSetPointerOut, parameterSetSizeOut);
            *a3 = v21;
          }

          operator new();
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
        }

        return 0;
      }

      DataBuffer = CMSampleBufferGetDataBuffer(a1);
      if (!DataBuffer)
      {
LABEL_29:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
          return 0;
        }

        return 0;
      }
    }

    else
    {
      DataBuffer = CMSampleBufferGetDataBuffer(a1);
      if (!DataBuffer)
      {
        goto LABEL_29;
      }
    }

    v23 = DataBuffer;
    parameterSetSizeOut = 0;
    if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0))
    {
      parameterSetSizeOut = v23;
      CFRetain(v23);
    }

    else if (CMBlockBufferCreateContiguous(0, v23, 0, 0, 0, 0, 0, &parameterSetSizeOut))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
        return 0;
      }

      return 0;
    }

    parameterSetPointerOut = 0;
    DataLength = CMBlockBufferGetDataLength(parameterSetSizeOut);
    DataPointer = CMBlockBufferGetDataPointer(parameterSetSizeOut, 0, 0, 0, &parameterSetPointerOut);
    videoDesc = DataPointer == 0;
    if (DataPointer)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
        CFRelease(parameterSetSizeOut);
        return videoDesc;
      }
    }

    else if (DataLength)
    {
      v54 = *parameterSetPointerOut;
      v55 = *a3 + 4;
      if (a3[1] < v55)
      {
        operator new[]();
      }

      v56 = bswap32(v54);
      *(a3[2] + *a3) = 0x1000000;
      *a3 = v55;
      if (v54)
      {
        if (a3[1] < v55 + v56)
        {
          operator new[]();
        }

        memcpy((a3[2] + v55), &parameterSetPointerOut[NALUnitHeaderLengthOut], v56);
        *a3 = v55 + v56;
      }

      operator new();
    }

    CFRelease(parameterSetSizeOut);
    return videoDesc;
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc", 252, "nalu_header_size == kAvccHeaderByteSize", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v8, v9, v10, v11, NALUnitHeaderLengthOut);
    return webrtc::H265AnnexBBufferToCMSampleBuffer(v57, v58, v59, v60, v61);
  }
}

uint64_t webrtc::H265AnnexBBufferToCMSampleBuffer(webrtc *this, const unsigned __int8 *a2, const opaqueCMFormatDescription *a3, CMSampleBufferRef *a4, opaqueCMSampleBuffer **a5)
{
  *a4 = 0;
  if (a2)
  {
    v9 = this;
  }

  else
  {
    v9 = 0;
  }

  dataBuffer = 0;
  v89 = 0;
  v90 = 0;
  v10 = a2 - 3;
  if (a2 < 4)
  {
    v14 = 0;
    v15 = 0;
    v18 = 0;
    theBuffer[0] = 0;
    goto LABEL_49;
  }

  v11 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v12 = *(v9 + v11 + 2);
        if (v12 <= 1)
        {
          break;
        }

LABEL_7:
        v11 += 3;
        if (v11 >= v10)
        {
          goto LABEL_20;
        }
      }

      if (v12 == 1)
      {
        break;
      }

      if (++v11 >= v10)
      {
        goto LABEL_20;
      }
    }

    if (*(v9 + v11 + 1) || *(v9 + v11))
    {
      goto LABEL_7;
    }

    theBuffer[0] = v11;
    theBuffer[1] = (v11 + 3);
    theBuffer[2] = 0;
    if (v11)
    {
      v13 = v11;
      if (!*(v9 + v11 - 1))
      {
        theBuffer[0] = (v11 - 1);
        v13 = v11 - 1;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v89 != dataBuffer)
    {
      *(v89 - 1) = v13 - *(v89 - 2);
    }

    std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&dataBuffer, theBuffer);
    v11 += 3;
  }

  while (v11 < v10);
LABEL_20:
  v14 = dataBuffer;
  v15 = v89;
  if (v89 == dataBuffer)
  {
LABEL_48:
    v18 = v14;
    theBuffer[0] = 0;
    if (v14 == v15)
    {
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  v16 = 0;
  *(v89 - 1) = &a2[-*(v89 - 2)];
  while (!*(v14 + v16 + 16) || (*(this + *(v14 + v16 + 8)) & 0x7E) != 0x40)
  {
    v16 += 24;
    if ((v14 + v16) == v15)
    {
      goto LABEL_48;
    }
  }

  if ((v14 + v16) == v15)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_52:
    v51 = 0;
    goto LABEL_76;
  }

  if ((v14 + v16 + 24) == v15)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  v17 = v14 + v16;
  if (v17 + 48 == v15)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  v18 = (v17 + 72);
  theBuffer[0] = 0;
  if (v17 + 72 == v15)
  {
LABEL_49:
    v20 = 0;
    v32 = 0;
    goto LABEL_50;
  }

LABEL_31:
  v19 = v15 - v18 - 24;
  if (v19 >= 0x60)
  {
    v22 = v19 / 0x18 + 1;
    v23 = v22 & 3;
    if ((v22 & 3) == 0)
    {
      v23 = 4;
    }

    v24 = v22 - v23;
    v21 = (v18 + 24 * v24);
    v25 = (v18 + 64);
    v26 = 0uLL;
    v27 = 0uLL;
    do
    {
      v28 = v25 - 6;
      v29 = vld3q_f64(v28);
      v30 = vld3q_f64(v25);
      v31 = vdupq_n_s64(4uLL);
      v26 = vaddq_s64(vaddq_s64(v26, v29), v31);
      v27 = vaddq_s64(vaddq_s64(v27, v30), v31);
      v25 += 12;
      v24 -= 4;
    }

    while (v24);
    v20 = vaddvq_s64(vaddq_s64(v27, v26));
  }

  else
  {
    v20 = 0;
    v21 = v18;
  }

  do
  {
    v20 += *(v21 + 2) + 4;
    v21 = (v21 + 24);
  }

  while (v21 != v15);
  if (v19 >= 0x60)
  {
    v34 = v19 / 0x18 + 1;
    v35 = v34 & 3;
    if ((v34 & 3) == 0)
    {
      v35 = 4;
    }

    v36 = v34 - v35;
    v33 = (v18 + 24 * v36);
    v37 = (v18 + 64);
    v38 = 0uLL;
    v39 = 0uLL;
    do
    {
      v40 = v37 - 6;
      v41 = vld3q_f64(v40);
      v42 = vld3q_f64(v37);
      v43 = vdupq_n_s64(4uLL);
      v38 = vaddq_s64(vaddq_s64(v38, v41), v43);
      v39 = vaddq_s64(vaddq_s64(v39, v42), v43);
      v37 += 12;
      v36 -= 4;
    }

    while (v36);
    v32 = vaddvq_s64(vaddq_s64(v39, v38));
  }

  else
  {
    v32 = 0;
    v33 = v18;
  }

  do
  {
    v32 += *(v33 + 2) + 4;
    v33 = (v33 + 24);
  }

  while (v33 != v15);
LABEL_50:
  if (!CMBlockBufferCreateWithMemoryBlock(0, 0, v20, 0, 0, 0, v32, 1u, theBuffer))
  {
    dataBuffer = 0;
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer[0], 0, 0);
    v53 = theBuffer[0];
    if (IsRangeContiguous)
    {
      v84 = a4;
      v85 = a3;
      dataBuffer = theBuffer[0];
      theBuffer[0] = 0;
    }

    else
    {
      if (CMBlockBufferCreateContiguous(0, theBuffer[0], 0, 0, 0, 0, 0, &dataBuffer))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v61, v62, v63, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
        }

        CFRelease(theBuffer[0]);
        v51 = 0;
        goto LABEL_76;
      }

      v84 = a4;
      v85 = a3;
      v53 = dataBuffer;
    }

    dataPointerOut = 0;
    totalLengthOut = 0;
    if (CMBlockBufferGetDataPointer(v53, 0, 0, &totalLengthOut, &dataPointerOut))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
LABEL_73:
        webrtc::webrtc_logging_impl::Log("\r\t", v54, v55, v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
      }
    }

    else
    {
      if (v18 != v15)
      {
        v68 = 0;
        v69 = dataPointerOut;
        v70 = totalLengthOut;
        v71 = (v18 + 8);
        do
        {
          v74 = v71 - 1;
          if (*(v71 - 1) == a2)
          {
            break;
          }

          v75 = v71[1];
          if (v75 + 4 <= v70 - v68)
          {
            v72 = *v71;
            *&v69[v68] = bswap32(v75);
            v73 = v68 + 4;
            memcpy(&v69[v73], this + v72, v75);
            v68 = v75 + v73;
          }

          else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v76, v77, v78, v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
          }

          v71 += 3;
        }

        while (v74 + 3 != v15);
      }

      v51 = 1;
      if (!CMSampleBufferCreate(0, dataBuffer, 1u, 0, 0, v85, 1, 0, 0, 0, 0, v84))
      {
        goto LABEL_75;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v51 = 0;
LABEL_75:
    CFRelease(dataBuffer);
    goto LABEL_76;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    goto LABEL_52;
  }

LABEL_58:
  webrtc::webrtc_logging_impl::Log("\r\t", v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
  v51 = 0;
LABEL_76:
  if (v14)
  {
    operator delete(v14);
  }

  return v51;
}

CMFormatDescriptionRef webrtc::CreateVideoFormatDescription(webrtc *this, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  parameterSetPointers = 0;
  v31 = 0;
  parameterSetSizes = 0;
  v29 = 0;
  if (a2)
  {
    v2 = this;
  }

  else
  {
    v2 = 0;
  }

  v25 = 0uLL;
  v26 = 0;
  v3 = a2 - 3;
  if (a2 < 4)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v6 = *(v2 + v4 + 2);
    if (v6 > 1)
    {
LABEL_7:
      v5 = 3;
      goto LABEL_8;
    }

    if (v6 == 1)
    {
      if (*(v2 + v4 + 1) || *(v2 + v4))
      {
        goto LABEL_7;
      }

      formatDescriptionOut[0] = v4;
      formatDescriptionOut[1] = (v4 + 3);
      formatDescriptionOut[2] = 0;
      if (v4)
      {
        v7 = v4;
        if (!*(v2 + v4 - 1))
        {
          formatDescriptionOut[0] = (v4 - 1);
          v7 = v4 - 1;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = a2;
      v9 = this;
      if (*(&v25 + 1) != v25)
      {
        *(*(&v25 + 1) - 8) = v7 - *(*(&v25 + 1) - 16);
      }

      std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&v25, formatDescriptionOut);
      v5 = 3;
      this = v9;
      a2 = v8;
    }

    else
    {
      v5 = 1;
    }

LABEL_8:
    v4 += v5;
  }

  while (v4 < v3);
  v11 = *(&v25 + 1);
  v12 = v25;
  if (*(&v25 + 1) == v25)
  {
    goto LABEL_35;
  }

  *(*(&v25 + 1) - 8) = &a2[-*(*(&v25 + 1) - 16)];
  v13 = v12 + 24;
  while (1)
  {
    v15 = *(v13 - 1);
    if (v15)
    {
      v16 = *(v13 - 2);
      if ((*(this + v16) & 0x1F) == 7)
      {
        break;
      }
    }

    v14 = v13 == v11;
    v13 += 24;
    if (v14)
    {
      goto LABEL_35;
    }
  }

  parameterSetPointers = 0;
  parameterSetSizes = 0;
  if (v13 - 24 == v11)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_34:
      webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
    }

LABEL_35:
    result = 0;
    if (!v12)
    {
      return result;
    }

LABEL_36:
    v24 = result;
    operator delete(v12);
    return v24;
  }

  parameterSetPointers = this + v16;
  v31 = 0;
  parameterSetSizes = v15;
  v29 = 0;
  if (v13 == v11)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v31 = this + *(v13 + 1);
  v29 = *(v13 + 2);
  formatDescriptionOut[0] = 0;
  if (CMVideoFormatDescriptionCreateFromH264ParameterSets(*MEMORY[0x277CBECE8], 2uLL, &parameterSetPointers, &parameterSetSizes, 4, formatDescriptionOut))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  result = formatDescriptionOut[0];
  if (v12)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t webrtc::ComputeH264ReorderSizeFromAnnexB(webrtc *this, const unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = this;
  }

  else
  {
    v2 = 0;
  }

  v32 = 0uLL;
  v33 = 0;
  v3 = a2 - 3;
  if (a2 < 4)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v6 = *(v2 + v4 + 2);
    if (v6 > 1)
    {
LABEL_7:
      v5 = 3;
      goto LABEL_8;
    }

    if (v6 == 1)
    {
      if (*(v2 + v4 + 1) || *(v2 + v4))
      {
        goto LABEL_7;
      }

      *&v29 = v4;
      *(&v29 + 1) = v4 + 3;
      v30 = 0;
      if (v4)
      {
        v7 = v4;
        if (!*(v2 + v4 - 1))
        {
          *&v29 = v4 - 1;
          v7 = v4 - 1;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = a2;
      v9 = this;
      if (*(&v32 + 1) != v32)
      {
        *(*(&v32 + 1) - 8) = v7 - *(*(&v32 + 1) - 16);
      }

      std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&v32, &v29);
      v5 = 3;
      this = v9;
      a2 = v8;
    }

    else
    {
      v5 = 1;
    }

LABEL_8:
    v4 += v5;
  }

  while (v4 < v3);
  v11 = *(&v32 + 1);
  v12 = v32;
  if (*(&v32 + 1) == v32)
  {
LABEL_30:
    v15 = 0;
  }

  else
  {
    *(*(&v32 + 1) - 8) = &a2[-*(*(&v32 + 1) - 16)];
    v13 = v12;
    while (1)
    {
      v14 = v13[2];
      if (v14)
      {
        if ((*(this + v13[1]) & 0x1F) == 7)
        {
          break;
        }
      }

      v13 += 3;
      if (v13 == v11)
      {
        goto LABEL_30;
      }
    }

    v15 = 0;
    if (v13 != v11 && v14 != 1)
    {
      v16 = v12;
      webrtc::H264::ParseRbsp(v14 - 1, &v32);
      webrtc::SpsAndVuiParser::Parse(&v32, v17, v18, v19, v20, &v29);
      if (v31)
      {
        v21 = webrtc::ComputeH264ReorderSizeFromSPS(&v29);
      }

      else
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
        }

        v21 = 0;
      }

      v12 = v16;
      v15 = v21;
      if (v32)
      {
        *(&v32 + 1) = v32;
        operator delete(v32);
        v12 = v16;
      }
    }
  }

  if (v12)
  {
    operator delete(v12);
  }

  return v15;
}

uint64_t webrtc::SpsAndVuiParser::Parse@<X0>(unsigned __int8 **a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1] - *a1;
  if (!v8)
  {
    v7 = 0;
  }

  v70 = v7;
  if (((v8 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    goto LABEL_122;
  }

  v71 = 8 * v8;
  v72 = 1;
  result = webrtc::SpsParser::ParseSpsUpToVui(&v70, &v65);
  if (v69 != 1)
  {
    goto LABEL_110;
  }

  v61 = v65;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  v11 = *a1;
  v12 = a1[1] - *a1;
  if (!v12)
  {
    v11 = 0;
  }

  if (((v12 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
LABEL_122:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a2, a3, a4, a5, v59);
    return webrtc::ComputeH264ReorderSizeFromSPS();
  }

  v13 = 8 * v12;
  if (v13 < 0x18)
  {
    goto LABEL_110;
  }

  v14 = *v11;
  v15 = &v11[((v13 - 1) >> 3) - ((v13 - 4) >> 3)];
  v16 = ((v15[1] >> 4) & 1) << 16;
  v17 = v15[((v13 - 5) >> 3) - ((v13 - 9) >> 3) + 1];
  if (!v68)
  {
    v23 = v66;
    *a6 = v65;
    *(a6 + 16) = v23;
    *(a6 + 32) = v67;
    *(a6 + 48) = v68;
    *(a6 + 56) = v14 | (v17 << 8) | v16;
    *(a6 + 64) = 0;
    goto LABEL_14;
  }

  v72 = 0;
  v18 = v71;
  v19 = v71 - 1;
  if (v71 < 1)
  {
    goto LABEL_110;
  }

  --v71;
  v20 = v70;
  v21 = v19 & 7;
  if ((v19 & 7) != 0)
  {
    v22 = (*v70 >> v21) & 1;
  }

  else
  {
    ++v70;
    v22 = *v20++ & 1;
  }

  if (!v22)
  {
    goto LABEL_24;
  }

  v72 = 0;
  v19 = v18 - 9;
  if (v18 < 9)
  {
    goto LABEL_110;
  }

  v71 = v18 - 9;
  LODWORD(v24) = *v20;
  v70 = (v20 + 1);
  if (v21)
  {
    v24 = ((v24 & ~(-1 << v21)) << (8 - v21)) | (*(v20 + 1) >> v21);
  }

  if (v24 == 0xFF)
  {
    if (v18 >= 0x19)
    {
      v30 = (v18 - 18) >> 3;
      v20 = v20 - v30 + ((v18 - 2) >> 3) + 1;
      v70 = v20;
      if (v18 - 25 >= 0x10)
      {
        v19 = v18 - 41;
        v20 += v30 - ((v18 - 34) >> 3);
        v70 = v20;
      }

      else
      {
        v19 = -1;
      }

      goto LABEL_24;
    }

    v19 = -1;
  }

  ++v20;
LABEL_24:
  v72 = 0;
  v25 = v19 - 1;
  if (v19 < 1)
  {
    goto LABEL_110;
  }

  v71 = v19 - 1;
  if ((v25 & 7) != 0)
  {
    v26 = (*v20 >> (v25 & 7)) & 1;
  }

  else
  {
    v70 = (v20 + 1);
    v26 = *v20++ & 1;
  }

  if (v26)
  {
    if (v19 == 1)
    {
      v25 = -1;
    }

    else
    {
      v25 = v19 - 2;
      v20 += (((v19 + 6) >> 3) - ((v19 + 5) >> 3));
      v70 = v20;
    }
  }

  v72 = 0;
  v27 = v25 - 1;
  if (v25 < 1)
  {
    goto LABEL_110;
  }

  v71 = v25 - 1;
  if ((v27 & 7) != 0)
  {
    v28 = (*v20 >> (v27 & 7)) & 1;
  }

  else
  {
    v70 = (v20 + 1);
    v28 = *v20++ & 1;
  }

  if (v28)
  {
    if (v25 < 5)
    {
      goto LABEL_110;
    }

    v20 = v20 + ((v25 + 6) >> 3) - ((v25 + 2) >> 3);
    v70 = v20;
    v72 = 0;
    if (v25 == 5)
    {
      goto LABEL_110;
    }

    v27 = v25 - 6;
    v71 = v25 - 6;
    if (((v25 - 6) & 7) != 0)
    {
      v29 = (*v20 >> ((v25 - 6) & 7)) & 1;
    }

    else
    {
      v70 = (v20 + 1);
      v29 = *v20++ & 1;
    }

    if (v29)
    {
      if (v25 > 0xD)
      {
        v31 = (v25 - 7) >> 3;
        v20 = v20 - v31 + ((v25 + 1) >> 3);
        v70 = v20;
        v71 = v25 - 14;
        if ((v25 - 14) >= 8 && (v32 = (v25 - 15) >> 3, v20 += v31 - v32, v70 = v20, (v25 - 22) >= 8))
        {
          v27 = v25 - 30;
          v20 += v32 - ((v25 - 23) >> 3);
          v70 = v20;
        }

        else
        {
          v27 = -1;
        }
      }

      else
      {
        v27 = -1;
        v71 = -1;
        v72 = 0;
      }
    }
  }

  v72 = 0;
  v33 = v27 - 1;
  if (v27 < 1)
  {
    goto LABEL_110;
  }

  v71 = v27 - 1;
  if ((v33 & 7) != 0)
  {
    LODWORD(v20) = *v20 >> (v33 & 7);
  }

  else
  {
    v70 = (v20 + 1);
    LOBYTE(v20) = *v20;
  }

  if (v20)
  {
    webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    result = webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    v33 = v71;
  }

  v72 = 0;
  v34 = v33 - 1;
  if (v33 < 1)
  {
    goto LABEL_110;
  }

  v71 = v33 - 1;
  v35 = v70;
  if ((v34 & 7) != 0)
  {
    v36 = (*v70 >> (v34 & 7)) & 1;
  }

  else
  {
    ++v70;
    v36 = *v35++ & 1;
  }

  if (v36)
  {
    if (v33 > 0x20)
    {
      v37 = (v33 - 26) >> 3;
      v35 = &v35[((v33 + 6) >> 3) - v37];
      v70 = v35;
      if ((v33 - 33) < 0x20 || (v38 = (v33 - 58) >> 3, v35 += v37 - v38, v70 = v35, v33 == 65))
      {
        v34 = -1;
      }

      else
      {
        v34 = v33 - 66;
        v35 += v38 - ((v33 - 59) >> 3);
        v70 = v35;
      }
    }

    else
    {
      v34 = -1;
      v71 = -1;
      v72 = 0;
    }
  }

  v72 = 0;
  v39 = v34 - 1;
  if (v34 < 1)
  {
LABEL_110:
    *a6 = 0;
    *(a6 + 72) = 0;
    return result;
  }

  v71 = v34 - 1;
  if ((v39 & 7) != 0)
  {
    LODWORD(v35) = *v35 >> (v39 & 7);
  }

  else
  {
    v70 = v35 + 1;
    LOBYTE(v35) = *v35;
  }

  v40 = v35 & 1;
  if (v35)
  {
    ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    v72 = 0;
    v42 = v71 - 8;
    if (v71 >= 8)
    {
      v70 += (((v71 + 7) >> 3) - ((v71 - 1) >> 3));
    }

    else
    {
      v42 = -1;
    }

    v71 = v42;
    for (i = ExponentialGolomb; ; --i)
    {
      webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
      result = webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
      v72 = 0;
      v44 = v71;
      if (v71 < 1)
      {
        v39 = -1;
        v71 = -1;
        if (!i)
        {
          break;
        }
      }

      else
      {
        v45 = v70;
        v70 += ((v71 + 7) >> 3) - ((v71 + 6) >> 3);
        --v71;
        if (!i)
        {
          v39 = v44 - 21;
          if (v44 >= 0x15)
          {
            v70 = &v45[((v44 + 7) >> 3) - ((v44 - 14) >> 3)];
          }

          else
          {
            v39 = -1;
          }

          break;
        }
      }
    }
  }

  v72 = 0;
  v46 = v39 - 1;
  if (v39 < 1)
  {
    if (v40)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  v71 = v39 - 1;
  v47 = v70;
  if ((v46 & 7) != 0)
  {
    LODWORD(v47) = *v70 >> (v46 & 7);
  }

  else
  {
    ++v70;
    LOBYTE(v47) = *v47;
  }

  v48 = v47 & 1;
  if (!v48)
  {
    goto LABEL_104;
  }

  v49 = webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
  v72 = 0;
  v50 = v71 - 8;
  if (v71 >= 8)
  {
    v70 += (((v71 + 7) >> 3) - ((v71 - 1) >> 3));
  }

  else
  {
    v50 = -1;
  }

  v71 = v50;
  for (j = v49; ; --j)
  {
    webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    result = webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    v72 = 0;
    v52 = v71;
    if (v71 >= 1)
    {
      break;
    }

    v46 = -1;
    v71 = -1;
    if (!j)
    {
      goto LABEL_103;
    }

LABEL_97:
    ;
  }

  v53 = v70;
  v70 += ((v71 + 7) >> 3) - ((v71 + 6) >> 3);
  --v71;
  if (j)
  {
    goto LABEL_97;
  }

  v46 = v52 - 21;
  if (v52 < 0x15)
  {
    v48 = 1;
    v46 = -1;
    goto LABEL_104;
  }

  v70 = &v53[((v52 + 7) >> 3) - ((v52 - 14) >> 3)];
LABEL_103:
  v48 = 1;
LABEL_104:
  if (v40 | v48)
  {
    if (v46 >= 1)
    {
      v70 += (((v46 + 7) >> 3) - ((v46 + 6) >> 3));
      --v46;
      goto LABEL_108;
    }

LABEL_107:
    v46 = -1;
  }

LABEL_108:
  if (v46 < 1)
  {
    goto LABEL_110;
  }

  v54 = &v70[((v46 + 7) >> 3) - ((v46 + 6) >> 3)];
  v70 = v54;
  v72 = 0;
  if (v46 == 1)
  {
    goto LABEL_110;
  }

  v71 = v46 - 2;
  if (((v46 - 2) & 7) != 0)
  {
    v55 = (*v54 >> ((v46 - 2) & 7)) & 1;
  }

  else
  {
    v70 = v54 + 1;
    v55 = *v54++ & 1;
  }

  if (v55)
  {
    v60 = v55;
    v72 = 0;
    v56 = v46 - 3;
    if (v46 >= 3)
    {
      v70 = &v54[((v46 + 5) >> 3) - ((v46 + 4) >> 3)];
    }

    else
    {
      v56 = -1;
    }

    v71 = v56;
    webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    v58 = webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    result = webrtc::BitstreamReader::ReadExponentialGolomb(&v70);
    if (v71 < 0)
    {
      goto LABEL_110;
    }

    v57 = v58;
    v55 = v60;
  }

  else
  {
    v57 = 0;
  }

  *a6 = v61;
  *(a6 + 16) = v62;
  *(a6 + 32) = v63;
  *(a6 + 48) = v64;
  *(a6 + 56) = (v17 << 8) | (v55 << 24) | v14 | v16;
  *(a6 + 64) = v57;
LABEL_14:
  *(a6 + 72) = 1;
  return result;
}

uint64_t webrtc::ComputeH264ReorderSizeFromSPS(uint64_t a1)
{
  if (*(a1 + 40) == 2)
  {
    return 0;
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 57);
  v5 = (v2 == 77 || v2 == 66) && v3 == 11;
  if (v5 && (*(a1 + 58) & 1) != 0)
  {
    v6 = 396;
  }

  else
  {
    v9 = v3 - 10;
    v6 = 396;
    switch(v9)
    {
      case 0:
        break;
      case 1:
        v6 = 900;
        break;
      case 2:
      case 3:
      case 10:
        v6 = 2376;
        break;
      case 11:
        v6 = 4752;
        break;
      case 12:
      case 20:
        v6 = 8100;
        break;
      case 21:
        v6 = 18000;
        break;
      case 22:
        v6 = 20480;
        break;
      case 30:
      case 31:
        v6 = 0x8000;
        break;
      case 32:
        v6 = 34816;
        break;
      case 40:
        v6 = 110400;
        break;
      case 41:
      case 42:
        v6 = 184320;
        break;
      default:
        v11 = a1;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
        }

        v6 = 0;
        a1 = v11;
        break;
    }
  }

  v7 = v6 / ((2 - *(a1 + 28) + (2 - *(a1 + 28)) * *(a1 + 4)) * (*a1 + 1));
  if (v7 >= 0x10)
  {
    v7 = 16;
  }

  if (*(a1 + 59) == 1)
  {
    v8 = *(a1 + 64);
    if (v8 >= v7)
    {
      LOBYTE(v8) = v7;
    }

    return v8;
  }

  else if (*(a1 + 58) == 1 && ((v10 = *(a1 + 56), (v10 - 86) <= 0x24) && ((1 << (v10 - 86)) & 0x1001004001) != 0 || v10 == 44 || v10 == 244))
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t webrtc::ComputeH264InfoFromAVC(webrtc *this, unint64_t a2)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return 0;
}

CMFormatDescriptionRef webrtc::CreateH265VideoFormatDescription(webrtc *this, const unsigned __int8 *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  parameterSetPointers = 0;
  v34 = 0;
  v35 = 0;
  parameterSetSizes = 0;
  v31 = 0;
  v32 = 0;
  if (a2)
  {
    v2 = this;
  }

  else
  {
    v2 = 0;
  }

  v27 = 0uLL;
  v28 = 0;
  v3 = a2 - 3;
  if (a2 < 4)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v6 = *(v2 + v4 + 2);
    if (v6 > 1)
    {
LABEL_7:
      v5 = 3;
      goto LABEL_8;
    }

    if (v6 == 1)
    {
      if (*(v2 + v4 + 1) || *(v2 + v4))
      {
        goto LABEL_7;
      }

      formatDescriptionOut[0] = v4;
      formatDescriptionOut[1] = (v4 + 3);
      formatDescriptionOut[2] = 0;
      if (v4)
      {
        v7 = v4;
        if (!*(v2 + v4 - 1))
        {
          formatDescriptionOut[0] = (v4 - 1);
          v7 = v4 - 1;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = a2;
      v9 = this;
      if (*(&v27 + 1) != v27)
      {
        *(*(&v27 + 1) - 8) = v7 - *(*(&v27 + 1) - 16);
      }

      std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&v27, formatDescriptionOut);
      v5 = 3;
      this = v9;
      a2 = v8;
    }

    else
    {
      v5 = 1;
    }

LABEL_8:
    v4 += v5;
  }

  while (v4 < v3);
  v11 = *(&v27 + 1);
  v12 = v27;
  if (*(&v27 + 1) == v27)
  {
    goto LABEL_38;
  }

  *(*(&v27 + 1) - 8) = &a2[-*(*(&v27 + 1) - 16)];
  v13 = v12;
  while (1)
  {
    v14 = v13[2];
    if (v14)
    {
      v15 = v13[1];
      if ((*(this + v15) & 0x7E) == 0x40)
      {
        break;
      }
    }

    v13 += 3;
    if (v13 == v11)
    {
      goto LABEL_38;
    }
  }

  parameterSetPointers = 0;
  parameterSetSizes = 0;
  if (v13 == v11)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_38;
    }

LABEL_37:
    webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/nalu_rewriter.cc");
    goto LABEL_38;
  }

  parameterSetPointers = this + v15;
  v34 = 0;
  parameterSetSizes = v14;
  v31 = 0;
  if (v13 + 3 == v11)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v16 = v13[5];
  v34 = this + v13[4];
  v35 = 0;
  v31 = v16;
  v32 = 0;
  if (v13 + 6 == v11)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v17 = v13[7];
  v18 = v13[8];
  v35 = this + v17;
  v32 = v18;
  formatDescriptionOut[0] = 0;
  if (CMVideoFormatDescriptionCreateFromHEVCParameterSets(*MEMORY[0x277CBECE8], 3uLL, &parameterSetPointers, &parameterSetSizes, 4, 0, formatDescriptionOut))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_38:
    result = 0;
    if (v12)
    {
LABEL_39:
      v26 = result;
      operator delete(v12);
      return v26;
    }
  }

  else
  {
    result = formatDescriptionOut[0];
    if (v12)
    {
      goto LABEL_39;
    }
  }

  return result;
}

uint64_t webrtc::inet_pton(int a1, void **a2, size_t a3, void *a4)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v11 = a3;
  v6 = (&__p + a3);
  if (&__p <= a2 && v6 > a2)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a3)
  {
    memmove(&__p, a2, a3);
  }

  *v6 = 0;
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  result = inet_pton(a1, p_p, a4);
  if (v11 < 0)
  {
    v9 = result;
    operator delete(__p);
    return v9;
  }

  return result;
}

unint64_t webrtc::NetEq::Config::ToString@<X0>(webrtc::NetEq::Config *this@<X0>, char *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  __s = v23;
  strcpy(v23, "sample_rate_hz=");
  v22 = xmmword_273B93590;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *this);
  if (v22 + ~*(&v22 + 1) >= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", max_packets_in_buffer=", v4);
  *(&v22 + 1) += v4;
  __s[*(&v22 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lu", *(this + 1));
  if (v22 + ~*(&v22 + 1) >= 0xFuLL)
  {
    v5 = 15;
  }

  else
  {
    v5 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", min_delay_ms=", v5);
  *(&v22 + 1) += v5;
  __s[*(&v22 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 5));
  if (v22 + ~*(&v22 + 1) >= 0x19uLL)
  {
    v6 = 25;
  }

  else
  {
    v6 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", enable_fast_accelerate=", v6);
  *(&v22 + 1) += v6;
  __s[*(&v22 + 1)] = 0;
  if (*(this + 24))
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  if (*(this + 24))
  {
    v8 = "true";
  }

  else
  {
    v8 = "false";
  }

  if (v7 >= v22 + ~*(&v22 + 1))
  {
    v9 = v22 + ~*(&v22 + 1);
  }

  else
  {
    v9 = v7;
  }

  memcpy(&__s[*(&v22 + 1)], v8, v9);
  *(&v22 + 1) += v9;
  __s[*(&v22 + 1)] = 0;
  if (v22 + ~*(&v22 + 1) >= 0x15uLL)
  {
    v10 = 21;
  }

  else
  {
    v10 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", enable_muted_state=", v10);
  *(&v22 + 1) += v10;
  __s[*(&v22 + 1)] = 0;
  if (*(this + 25))
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  if (*(this + 25))
  {
    v12 = "true";
  }

  else
  {
    v12 = "false";
  }

  if (v11 >= v22 + ~*(&v22 + 1))
  {
    v13 = v22 + ~*(&v22 + 1);
  }

  else
  {
    v13 = v11;
  }

  memcpy(&__s[*(&v22 + 1)], v12, v13);
  *(&v22 + 1) += v13;
  __s[*(&v22 + 1)] = 0;
  if (v22 + ~*(&v22 + 1) >= 0x16uLL)
  {
    v14 = 22;
  }

  else
  {
    v14 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", enable_rtx_handling=", v14);
  *(&v22 + 1) += v14;
  __s[*(&v22 + 1)] = 0;
  if (*(this + 26))
  {
    v15 = 4;
  }

  else
  {
    v15 = 5;
  }

  if (*(this + 26))
  {
    v16 = "true";
  }

  else
  {
    v16 = "false";
  }

  if (v15 >= v22 + ~*(&v22 + 1))
  {
    v17 = v22 + ~*(&v22 + 1);
  }

  else
  {
    v17 = v15;
  }

  memcpy(&__s[*(&v22 + 1)], v16, v17);
  *(&v22 + 1) += v17;
  __s[*(&v22 + 1)] = 0;
  v18 = __s;
  if (!__s)
  {
    goto LABEL_53;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_54;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v20 = &a2[result];
  if (a2 <= v18 && v20 > v18)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v18, result);
  }

  *v20 = 0;
  return result;
}

void webrtc::NetEqImpl::Dependencies::Dependencies(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  v3 = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 8) = v3;
  operator new();
}

void webrtc::NetEqImpl::Dependencies::~Dependencies(webrtc::NetEqImpl::Dependencies *this)
{
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 7);
  *(this + 7) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 6);
  *(this + 6) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 5);
  *(this + 5) = 0;
  if (v13)
  {
    MEMORY[0x2743DA540](v13, 0x1000C40D9A13B51);
  }

  v14 = *this;
  if (*this)
  {
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }
}

void webrtc::NetEqImpl::NetEqImpl(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288296908;
  v5 = *a3;
  *(a1 + 8) = *a3;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  v6 = *(a3 + 3);
  *(a1 + 16) = *(a3 + 1);
  *(a1 + 32) = v6;
  pthread_mutexattr_init(&v17);
  pthread_mutexattr_setpolicy_np(&v17, 3);
  pthread_mutex_init((a1 + 48), &v17);
  pthread_mutexattr_destroy(&v17);
  v7 = a3[5];
  v8 = *(a3 + 7);
  *(a3 + 7) = 0u;
  *(a1 + 120) = v8;
  v9 = *(a3 + 9);
  *(a3 + 9) = 0u;
  *(a1 + 136) = v9;
  v10 = a3[12];
  v11 = a3[13];
  v13 = a3[14];
  v12 = a3[15];
  v14 = a3[16];
  *(a3 + 15) = 0u;
  *(a1 + 168) = v12;
  *(a3 + 13) = 0u;
  *(a1 + 160) = v11;
  *(a1 + 176) = v13;
  *(a1 + 184) = v14;
  v15 = a3[6];
  v16 = a3[11];
  *(a3 + 11) = 0u;
  *(a1 + 152) = v10;
  *(a3 + 5) = 0u;
  *(a1 + 112) = v7;
  *(a1 + 192) = v15;
  *(a1 + 200) = 0;
  *(a1 + 208) = v16;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 777;
  *(a1 + 276) = 1;
  *(a1 + 280) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0;
  *(a1 + 336) = 5760;
  operator new[]();
}

void webrtc::NetEqImpl::SetSampleRateAndChannels(webrtc::NetEqImpl *this, int a2, unint64_t a3)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
  }

  if (a2 > 31999)
  {
    if (a2 == 32000)
    {
      goto LABEL_9;
    }

    v13 = 48000;
  }

  else
  {
    if (a2 == 8000)
    {
      goto LABEL_9;
    }

    v13 = 16000;
  }

  if (a2 == v13)
  {
LABEL_9:
    if (a3)
    {
      if (a3 < 0x19)
      {
        v14 = a2 / 0x64u;
        *(this + 38) = v14;
        v15 = v14 * a3;
        if (v14 * a3 < 0x1E01)
        {
          v16 = *(this + 24);
          if (v16[64].i8[0] == 1)
          {
            v17 = 1000 * (*&v16[2] - *&v16[34]) / *(this + 72);
            if (v17 >= 150)
            {
              v18.i32[0] = 1;
              v18.i32[1] = 1000 * (*&v16[2] - *&v16[34]) / *(this + 72);
              v16[18] = vadd_s32(v16[18], v18);
              explicit = atomic_load_explicit(&webrtc::StatisticsCalculator::EndExpandEvent(int)::atomic_histogram_pointer, memory_order_acquire);
              if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v20 = 0, atomic_compare_exchange_strong(&webrtc::StatisticsCalculator::EndExpandEvent(int)::atomic_histogram_pointer, &v20, explicit), explicit))
              {
                webrtc::metrics::HistogramAdd(explicit, v17);
              }
            }

            v16[34] = v16[2];
            v14 = *(this + 38);
          }

          *(this + 72) = a2;
          *(this + 73) = a2 / 0x1F40u;
          *(this + 39) = 3 * v14;
          *(this + 80) = 0;
          v21 = (*(**(this + 15) + 96))(*(this + 15));
          if (v21)
          {
            *v21 = 7777;
            *(v21 + 4) = 0u;
            *(v21 + 20) = 0u;
            *(v21 + 36) = 0u;
            *(v21 + 52) = 0u;
            *(v21 + 68) = 0u;
            *(v21 + 84) = 0u;
            *(v21 + 100) = 0u;
            *(v21 + 116) = 5;
            *(v21 + 120) = 0;
          }

          operator new();
        }

        goto LABEL_23;
      }
    }

    else
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc", 2015, "channels > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v9, v10, v11, v12, 0);
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc", 2016, "channels <= kMaxNumberOfAudioChannels", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v9, v10, v11, v12, a3);
LABEL_23:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc", 2023, "channels * output_size_samples_ <= AudioFrame::kMaxDataSizeSamples", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v9, v10, v11, v12, v15);
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v23, v24, v25, v26, v22);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc", 2074, "controller_", "\t", v27, v28, v29, v30, "Unexpectedly found no NetEqController");
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc", 2014, "fs_hz == 8000 || fs_hz == 16000 || fs_hz == 32000 || fs_hz == 48000", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v9, v10, v11, v12, v32);
  webrtc::NetEqImpl::~NetEqImpl(v31);
}

void webrtc::NetEqImpl::~NetEqImpl(webrtc::NetEqImpl *this)
{
  *this = &unk_288296908;
  v2 = *(this + 56);
  *(this + 56) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C80BDFB0063);
  }

  v3 = *(this + 50);
  if (v3)
  {
    v4 = *(this + 51);
    v5 = *(this + 50);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 96);
        if (v6)
        {
          *(v4 - 88) = v6;
          operator delete(v6);
        }

        v4 -= 104;
      }

      while (v4 != v3);
      v5 = *(this + 50);
    }

    *(this + 51) = v3;
    operator delete(v5);
  }

  v7 = *(this + 49);
  *(this + 49) = 0;
  if (v7)
  {
    MEMORY[0x2743DA540](v7, 0x1060C40C2E02434);
  }

  v8 = *(this + 47);
  *(this + 47) = 0;
  if (v8)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v8 + 56, *(v8 + 64));
    MEMORY[0x2743DA540](v8, 0x1020C4066F93CF5);
  }

  v9 = *(this + 43);
  *(this + 43) = 0;
  if (v9)
  {
    MEMORY[0x2743DA520](v9, 0x1000C80BDFB0063);
  }

  v10 = *(this + 35);
  *(this + 35) = 0;
  if (v10)
  {
    MEMORY[0x2743DA540](v10, 0x1020C40E53F5F6DLL);
  }

  v11 = *(this + 33);
  *(this + 33) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 32);
  *(this + 32) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 31);
  *(this + 31) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 30);
  *(this + 30) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 29);
  *(this + 29) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 28);
  *(this + 28) = 0;
  if (v16)
  {
    *v16 = &unk_28828E2C0;
    v17 = v16[1];
    if (v17)
    {
      v18 = v16[2];
      v19 = v16[1];
      if (v18 != v17)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            v22 = *v20;
            *v20 = 0;
            if (v22)
            {
              MEMORY[0x2743DA520](v22, 0x1000C80BDFB0063);
            }

            MEMORY[0x2743DA540](v20, 0x1010C40FAA616C6);
          }
        }

        while (v18 != v17);
        v19 = v16[1];
      }

      v16[2] = v17;
      operator delete(v19);
    }

    MEMORY[0x2743DA540](v16, 0x10A1C409950793BLL);
  }

  v23 = *(this + 27);
  *(this + 27) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 26);
  *(this + 26) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 25);
  *(this + 25) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(this + 24);
  *(this + 24) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 23);
  *(this + 23) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 22);
  *(this + 22) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(this + 21);
  *(this + 21) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 20);
  *(this + 20) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(this + 19);
  *(this + 19) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(this + 18);
  *(this + 18) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 17);
  *(this + 17) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(this + 16);
  *(this + 16) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(this + 15);
  *(this + 15) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(this + 14);
  *(this + 14) = 0;
  if (v36)
  {
    MEMORY[0x2743DA540](v36, 0x1000C40D9A13B51);
  }

  pthread_mutex_destroy((this + 48));
  v37 = *(this + 1);
  if (v37)
  {
    if (atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v37 + 8))(v37);
    }
  }
}

{
  webrtc::NetEqImpl::~NetEqImpl(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::NetEqImpl::InsertPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[25] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 48));
  if (a4)
  {
    ++*(*(a1 + 192) + 136);
    v14[0] = v14;
    v14[1] = v14;
    v14[2] = 0;
    operator new[]();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\t\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
  }

  pthread_mutex_unlock((a1 + 48));
  return 0xFFFFFFFFLL;
}

{
  v8 = *(a2 + 4);
  v14 = *(a2 + 8);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = v8;
  v19 = 0x8000000000000000;
  v20 = 0;
  v21[0] = 0;
  v21[24] = 0;
  v22 = 0;
  v23 = 0;
  if (*(a2 + 12) >= 0xFu)
  {
    v9 = 15;
  }

  else
  {
    v9 = *(a2 + 12);
  }

  std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int const*,unsigned int const*>(&__p, (a2 + 16), (a2 + 16 + 4 * v9), v9);
  if (*(a2 + 360))
  {
    v10 = *(a2 + 352);
    if ((v20 & 0x100) == 0)
    {
      HIBYTE(v20) = 1;
    }

    LOBYTE(v20) = BYTE4(v10);
  }

  *v21 = *(a2 + 112);
  *&v21[9] = *(a2 + 121);
  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  result = (*(*a1 + 32))(a1, a2, v11, a4, &v14);
  if (__p)
  {
    v16 = __p;
    v13 = result;
    operator delete(__p);
    return v13;
  }

  return result;
}

uint64_t webrtc::NetEqImpl::InsertEmptyPacket(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 48));
  if (*(a1 + 384) == 1)
  {
    webrtc::NackTracker::UpdateLastReceivedPacket(*(a1 + 376), *(a2 + 2), *(a2 + 4));
  }

  (*(**(a1 + 208) + 40))(*(a1 + 208));

  return pthread_mutex_unlock((a1 + 48));
}

uint64_t webrtc::NetEqImpl::GetAudio(unint64_t a1, unint64_t a2, _BYTE *a3, _DWORD *a4, uint64_t a5)
{
  pthread_mutex_lock((a1 + 48));
  if (webrtc::NetEqImpl::GetAudioInternal(a1, a2, a5))
  {
    v15 = 0xFFFFFFFFLL;
LABEL_18:
    pthread_mutex_unlock((a1 + 48));
    return v15;
  }

  result = webrtc::StatisticsCalculator::IncreaseCounter(*(a1 + 192), *(a1 + 304), *(a1 + 288), v10, v11, v12, v13, v14);
  if (a3)
  {
    *a3 = *(a2 + 15432);
  }

  v17 = *(a1 + 320);
  if ((v17 - 9) < 2)
  {
    *(a2 + 48) = 2;
    v20 = *(a2 + 32);
    *(a1 + 296) = v20;
    v15 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v17 == 11)
  {
    *(a2 + 48) = 5;
    v20 = *(a2 + 32);
    *(a1 + 296) = v20;
    v15 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_17:
    *a4 = v20;
    goto LABEL_18;
  }

  if (v17 != 1)
  {
    *(a2 + 48) = 0;
    v20 = *(a2 + 32);
    *(a1 + 296) = v20;
    v15 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v18 = *(*(a1 + 232) + 128);
  if (*(v18 - 1))
  {
    if (*v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = 3;
    }

    *(a2 + 48) = v19;
    v20 = *(a2 + 32);
    *(a1 + 296) = v20;
    v15 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t webrtc::NetEqImpl::GetAudioInternal(unint64_t InterleavedFromIndex, unint64_t a2, uint64_t a3)
{
  v7 = InterleavedFromIndex;
  v475 = &v475;
  v476 = &v475;
  v477 = 0;
  v472 = 0;
  v473 = 0;
  v474 = 0;
  v8 = *(InterleavedFromIndex + 400);
  for (i = *(InterleavedFromIndex + 408); i != v8; i -= 104)
  {
    InterleavedFromIndex = *(i - 96);
    if (InterleavedFromIndex)
    {
      *(i - 88) = InterleavedFromIndex;
      operator delete(InterleavedFromIndex);
    }
  }

  v10 = a2 + 12288;
  v11 = 0x1060C40C2E02434;
  *(v7 + 408) = v8;
  ++**(v7 + 112);
  v471 = a2;
  if (*(v7 + 385) == 1)
  {
    v12 = *(v7 + 232);
    if ((*(v12 + 24) & 1) == 0 && (*(v12 + 112) & 1) == 0)
    {
      v13 = *(v12 + 32);
      if (v13)
      {
        v14 = *(v12 + 128);
        v15 = *(v14 - 1);
        while (1)
        {
          if (!v15)
          {
            goto LABEL_712;
          }

          v3 = *v14;
          if (*v14)
          {
            break;
          }

          v14 += 56;
          v15 = (v15 - 1);
          if (!--v13)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        if ((*(**(v7 + 144) + 24))(*(v7 + 144)))
        {
          *a2 = 0;
          *(a2 + 8) = -1;
          *(a2 + 16) = -1;
          *(a2 + 24) = 0;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 15436) = 0;
          *(a2 + 48) = 0x200000004;
          v16 = a2;
          v17 = *(a2 + 64);
          *(v16 + 56) = 0;
          *(v16 + 64) = 0;
          if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
          {
            v18 = *(v17 + 8);
            if (v18)
            {
              v19 = v10;
              v20 = *(v17 + 16);
              v21 = *(v17 + 8);
              if (v20 != v18)
              {
                do
                {
                  v51 = *(v20 - 96);
                  if (v51)
                  {
                    *(v20 - 88) = v51;
                    operator delete(v51);
                  }

                  v20 -= 104;
                }

                while (v20 != v18);
                v21 = *(v17 + 8);
              }

              *(v17 + 16) = v18;
              operator delete(v21);
              v10 = v19;
            }

            MEMORY[0x2743DA540](v17, 0x1020C40E72D6CFBLL);
          }

          if (*(v10 + 3160) == 1)
          {
            *(v10 + 3160) = 0;
          }

          *(v10 + 3144) = 1;
          v447 = *(v7 + 304);
          *(v7 + 352) += v447;
          *(v471 + 32) = *(v7 + 288);
          v448 = (*(*(v7 + 224) + 16) - *(*(v7 + 224) + 8)) >> 3;
          if ((v448 * v447) <= 0x1E00)
          {
            *(v471 + 24) = v447;
            if (*(v7 + 369))
            {
              v449 = 0;
            }

            else
            {
              v449 = (*(**(v7 + 160) + 48))(*(v7 + 160)) - *(v471 + 24);
              v450 = *(v7 + 224);
              v452 = *(v450 + 8);
              v451 = *(v450 + 16);
              v447 = *(v7 + 304);
              v448 = (v451 - v452) >> 3;
            }

            *v471 = v449;
            *(v471 + 40) = v448;
            v453 = *(v7 + 192);
            if (*(v453 + 512) == 1)
            {
              *(v453 + 264) += v447;
              v454 = *(v453 + 224);
              if ((v447 & 0x80000000) != 0)
              {
                v460 = v454 - v447;
                v461 = *(v453 + 232) - v447;
                *(v453 + 224) = v460;
                *(v453 + 232) = v461;
              }

              else
              {
                v455 = v447 & 0x7FFFFFFF;
                if (v454 >= v455)
                {
                  v456 = v455;
                }

                else
                {
                  v456 = *(v453 + 224);
                }

                v457 = v454 - v456;
                *(v453 + 16) += v455 - v456;
                v458 = *(v453 + 232);
                if (v458 >= v455)
                {
                  v459 = v455;
                }

                else
                {
                  v459 = *(v453 + 232);
                }

                *(v453 + 224) = v457;
                *(v453 + 232) = v458 - v459;
                *(v453 + 80) += v455 - v459;
              }
            }

            (*(**(v7 + 208) + 128))(*(v7 + 208));
            v59 = 0;
          }

          else
          {
            v59 = 13;
          }

          goto LABEL_653;
        }
      }
    }
  }

  v22 = *(*(v7 + 224) + 40);
  if ((*(v7 + 356) & 1) == 0)
  {
    (*(**(v7 + 144) + 80))(*(v7 + 144), *(*(v7 + 224) + 40), (5 * *(v7 + 288)));
  }

  v467 = a2 + 12288;
  InterleavedFromIndex = (*(**(v7 + 144) + 56))(*(v7 + 144));
  v23 = InterleavedFromIndex;
  v24 = *(v7 + 392);
  if (v24)
  {
    v25 = **v24 + ~*(v24 + 8);
    v10 = *(v7 + 304);
    InterleavedFromIndex = (*(**(v7 + 208) + 160))(*(v7 + 208));
    v26 = InterleavedFromIndex + v25 * v10;
    if (*(v7 + 320) != 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v26 = 0;
    if (*(v7 + 320) != 9)
    {
      goto LABEL_38;
    }
  }

  if (v23)
  {
    v10 = v26 + v22;
    do
    {
      InterleavedFromIndex = (*(**(v7 + 120) + 64))(*(v7 + 120), *(v23 + 6));
      if (!InterleavedFromIndex || *(InterleavedFromIndex + 144) != 1)
      {
        break;
      }

      v27 = *v23;
      v28 = v22 >= v27 || v10 > v27;
      if (!v28)
      {
        break;
      }

      (*(**(v7 + 144) + 72))(*(v7 + 144));
      if ((*(v7 + 356) & 1) == 0)
      {
        (*(**(v7 + 144) + 80))(*(v7 + 144), v22, (5 * *(v7 + 288)));
      }

      InterleavedFromIndex = (*(**(v7 + 144) + 56))(*(v7 + 144));
      v23 = InterleavedFromIndex;
    }

    while (InterleavedFromIndex);
  }

LABEL_38:
  v29 = *(v7 + 224);
  v14 = *(v29 + 8);
  v15 = *(v29 + 16);
  if (v15 == v14)
  {
    goto LABEL_712;
  }

  LODWORD(v10) = (*(*v14 + 8) + *(*v14 + 24) - *(*v14 + 16)) % *(*v14 + 8);
  v30 = *(v29 + 32);
  v31 = v10 - (v30 + (*(**(v7 + 232) + 48))(*(v7 + 232)));
  v32 = *(v7 + 320);
  if (v32 <= 7 && ((1 << v32) & 0xD8) != 0)
  {
    (*(**(v7 + 208) + 96))(*(v7 + 208), (-*(v7 + 304) - v31));
  }

  a2 = (*(**(v7 + 128) + 32))(*(v7 + 128), (v22 + v26), &v472);
  v33 = *(v7 + 392);
  if (v33)
  {
    v34 = **v33 - *(v33 + 8);
    v10 = *(v7 + 304);
    v35 = (*(**(v7 + 208) + 160))(*(v7 + 208)) + v34 * v10;
  }

  else
  {
    v35 = 0;
  }

  LOBYTE(v481) = 0;
  v482 = 0;
  v486 = (*(**(v7 + 144) + 128))(*(v7 + 144), *(v7 + 120));
  v487 = (*(**(v7 + 144) + 112))(*(v7 + 144), *(v7 + 312));
  v488 = (*(**(v7 + 144) + 120))(*(v7 + 144), *(v7 + 312), *(v7 + 296), 0);
  v489 = (*(**(v7 + 144) + 120))(*(v7 + 144), *(v7 + 312), *(v7 + 296), 1);
  InterleavedFromIndex = (*(**(v7 + 144) + 104))(*(v7 + 144));
  v490 = InterleavedFromIndex;
  v36 = *(v7 + 224);
  v37 = *(v7 + 232);
  v478 = *(v36 + 40);
  v14 = *(v37 + 128);
  v15 = *(v14 - 1);
  if (!v15)
  {
    goto LABEL_712;
  }

  v479 = *v14;
  v480 = *(v7 + 312);
  v483 = *(v7 + 320);
  v484 = a2;
  v485 = v35;
  v14 = *(v36 + 8);
  v15 = *(v36 + 16);
  if (v15 == v14)
  {
    goto LABEL_712;
  }

  v491 = (*(*v14 + 8) + *(*v14 + 24) - *(*v14 + 16)) % *(*v14 + 8) - *(v36 + 32);
  if (v23)
  {
    v38 = *v23;
    v39 = *(v23 + 20);
    if (v39)
    {
      if ((*(*v39 + 24))(v39))
      {
        v10 = 0x100000000;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v40 = (*(**(v7 + 120) + 64))(*(v7 + 120), *(v23 + 6));
    if (v40)
    {
      v41 = (*(v40 + 144) == 1) << 40;
    }

    else
    {
      v41 = 0;
    }

    v482 = 1;
    v481 = v10 | v38 | v41;
  }

  v42 = (*(**(v7 + 208) + 32))(*(v7 + 208), &v478, v7 + 364);
  if (v23)
  {
    v43 = *(v23 + 20);
    if (v43)
    {
      if (*(*v43 + 24))(v43) && v42 - 1 <= 4 && ((0x1Du >> (v42 - 1)))
      {
        v42 = 0;
      }
    }
  }

  if ((a3 & 0x100000000) != 0)
  {
    a3 = a3;
  }

  else
  {
    a3 = v42;
  }

  if (*(v7 + 304) <= v31)
  {
    v4 = 0;
    if (a3 > 5 || ((1 << a3) & 0x3A) == 0)
    {
      goto LABEL_205;
    }
  }

  (*(**(v7 + 208) + 88))(*(v7 + 208), a3);
  if (*(v7 + 320) == 11)
  {
    if (a3 == 2)
    {
      if (*(v7 + 356) != 1)
      {
LABEL_104:
        *(v7 + 360) = v22;
        v4 = 2;
        goto LABEL_205;
      }

      goto LABEL_82;
    }

    v44 = *(v7 + 192);
    if (v44[64].i8[0] == 1)
    {
      v45 = 1000 * (*&v44[2] - *&v44[34]) / *(v7 + 288);
      if (v45 >= 150)
      {
        v46.i32[0] = 1;
        v46.i32[1] = 1000 * (*&v44[2] - *&v44[34]) / *(v7 + 288);
        v44[18] = vadd_s32(v44[18], v46);
        explicit = atomic_load_explicit(&webrtc::StatisticsCalculator::EndExpandEvent(int)::atomic_histogram_pointer, memory_order_acquire);
        if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v48 = 0, atomic_compare_exchange_strong(&webrtc::StatisticsCalculator::EndExpandEvent(int)::atomic_histogram_pointer, &v48, explicit), explicit))
        {
          webrtc::metrics::HistogramAdd(explicit, v45);
        }
      }

      v44[34] = v44[2];
    }
  }

  if ((*(v7 + 356) & 1) == 0 && a3 != 10)
  {
    v4 = a3;
    goto LABEL_100;
  }

LABEL_82:
  v49 = a2 ^ 1;
  if (v23)
  {
    v49 = 1;
  }

  if (v49)
  {
    if (!v23)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
      }

      v59 = 0xFFFFFFFFLL;
      goto LABEL_194;
    }

    *(v7 + 360) = *v23;
    if (a3 != 6)
    {
      if (a3 == 7 && (v50 = (*(**(v7 + 120) + 64))(*(v7 + 120), *(v23 + 6))) != 0 && *(v50 + 144) == 1)
      {
        a3 = 6;
      }

      else
      {
        a3 = 0;
      }
    }
  }

  else
  {
    *(v7 + 360) = v472;
  }

  v60 = *(v7 + 360);
  *(*(v7 + 224) + 40) += v60 - v22;
  *(v7 + 356) = 0;
  (*(**(v7 + 208) + 24))(*(v7 + 208));
  *(*(v7 + 192) + 280) = 0;
  v4 = a3;
  LODWORD(v22) = v60;
LABEL_100:
  v61 = *(v7 + 304);
  v62 = *(v7 + 292);
  v63 = 80 * v62;
  v64 = 160 * v62;
  v10 = 240 * v62;
  if (v4 > 4)
  {
    if ((v4 - 7) < 2)
    {
      goto LABEL_205;
    }

    if (v4 == 5)
    {
      if (v31 >= v10 || v63 <= v31 && *(v7 + 312) >= v10)
      {
        (*(**(v7 + 208) + 152))(*(v7 + 208), v31);
        (*(**(v7 + 208) + 184))(*(v7 + 208), 1);
        v4 = 5;
        goto LABEL_205;
      }

      if (v31 < v64)
      {
        v61 <<= *(v7 + 312) < v10;
      }

      v4 = 5;
    }

    else if (v4 == 9)
    {
      *(v7 + 360) = v22;
      v65 = *(v7 + 392);
      if (v65)
      {
        v10 = v61;
        v66 = **v65 - *(v65 + 8);
        v67 = (*(**(v7 + 208) + 160))(*(v7 + 208)) + v66 * v10;
        if (v67)
        {
          if (*(v7 + 320) != 12)
          {
            *(*(v7 + 224) + 40) += v67;
            *(v7 + 360) += v67;
          }
        }
      }

      v4 = 9;
      goto LABEL_205;
    }
  }

  else if ((v4 - 3) < 2)
  {
    if (v31 >= v10)
    {
      (*(**(v7 + 208) + 152))(*(v7 + 208), v31);
      (*(**(v7 + 208) + 184))(*(v7 + 208), 1);
      goto LABEL_205;
    }

    if (v63 <= v31 && *(v7 + 312) >= v10)
    {
      v4 = 0;
      goto LABEL_205;
    }

    if (v31 < v64)
    {
      v68 = *(v7 + 312);
      v69 = v68 >= v10;
      v70 = v68 < v10;
      if (v69)
      {
        v4 = v4;
      }

      else
      {
        v4 = 0;
      }

      v61 <<= v70;
    }
  }

  else if (v4 == 1)
  {
    v71 = (*(**(v7 + 248) + 24))(*(v7 + 248));
    if (v71 > v61)
    {
      v61 = v71;
    }
  }

  else if (v4 == 2)
  {
    goto LABEL_104;
  }

  if (!v23)
  {
    goto LABEL_197;
  }

  *(*(v7 + 224) + 40) += *v23 - v22;
  v72 = (*(**(v7 + 144) + 56))(*(v7 + 144));
  if (!v72)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v106, v107, v108, v109, v110, v111, v112, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
    }

LABEL_193:
    v59 = 16;
    v11 = 0x1060C40C2E02434;
LABEL_194:
    *(v7 + 320) = 13;
    goto LABEL_653;
  }

  v73 = v72;
  v470 = a2;
  LODWORD(v23) = 0;
  v74 = 0;
  a2 = 1;
  do
  {
    *(v7 + 360) = *v73;
    (*(**(v7 + 144) + 64))(v492);
    LODWORD(a3) = v502;
    if (v502)
    {
      v75 = **v500 - v500[1];
      v76 = *(*v500 + 8);
      v77 = 0xFFFFFFFFFFFFFFFFLL / v76;
      v78 = v75 * v76;
      if (v75 >= v77)
      {
        v11 = -1;
      }

      else
      {
        v11 = v78;
      }

      webrtc::StatisticsCalculator::StoreWaitingTime(*(v7 + 192), v11);
      if (*(v7 + 384) == 1)
      {
        if ((v502 & 1) == 0)
        {
          goto LABEL_712;
        }

        webrtc::NackTracker::UpdateLastDecodedPacket(*(v7 + 376), LOWORD(v492[1]), v492[0]);
      }

      if ((v502 & 1) == 0)
      {
        goto LABEL_712;
      }

      InterleavedFromIndex = (*(**(v7 + 120) + 64))(*(v7 + 120), BYTE2(v492[1]));
      if (InterleavedFromIndex)
      {
        a2 = *(InterleavedFromIndex + 144) == 1;
        if ((v502 & 1) == 0)
        {
          goto LABEL_712;
        }
      }

      else
      {
        a2 = 0;
        if ((v502 & 1) == 0)
        {
          goto LABEL_712;
        }
      }

      if (v501)
      {
        InterleavedFromIndex = (*(*v501 + 16))();
        if ((v502 & 1) == 0)
        {
          goto LABEL_712;
        }

        v86 = InterleavedFromIndex;
        if (v496 >= 1)
        {
          *(*(v7 + 192) + 336) += InterleavedFromIndex;
        }

        if (InterleavedFromIndex)
        {
          v87 = 0;
          LODWORD(a3) = v492[0];
          if (v499 != 1)
          {
            goto LABEL_168;
          }

          goto LABEL_157;
        }
      }

      else if ((a2 & 1) == 0)
      {
        InterleavedFromIndex = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
        v95 = v502;
        if ((InterleavedFromIndex & 1) == 0)
        {
          if ((v502 & 1) == 0)
          {
            goto LABEL_712;
          }

          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v88, v89, v90, v91, v92, v93, v94, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
          v95 = v502;
        }

        if ((v95 & 1) == 0)
        {
          goto LABEL_712;
        }
      }

      v86 = *(v7 + 312);
      v87 = 0;
      LODWORD(a3) = v492[0];
      if (v499 != 1)
      {
        goto LABEL_168;
      }

LABEL_157:
      if (v498 != 0x8000000000000000)
      {
        InterleavedFromIndex = (*(**(v7 + 24) + 16))();
        if ((v502 & 1) == 0 || (v499 & 1) == 0)
        {
          goto LABEL_712;
        }

        v87 = 0x7FFFFFFFFFFFFFFFLL;
        if (InterleavedFromIndex != 0x7FFFFFFFFFFFFFFFLL && v498 != 0x8000000000000000)
        {
          v96 = v498 == 0x7FFFFFFFFFFFFFFFLL || InterleavedFromIndex == 0x8000000000000000;
          if (v96)
          {
            v87 = 0x8000000000000000;
          }

          else
          {
            v87 = InterleavedFromIndex - v498;
          }
        }
      }

LABEL_168:
      LODWORD(v10) = v4;
      v97 = *(v7 + 192);
      v4 = (*(**(v7 + 208) + 104))(*(v7 + 208));
      v98 = (*(**(v7 + 208) + 112))(*(v7 + 208));
      v99 = v97[5];
      v100 = v97[4] + v86 * v11;
      v101 = v97[7] + v86 * v98;
      v97[6] += v86 * v4;
      v97[7] = v101;
      v97[4] = v100;
      v97[5] = v99 + v86;
      v97[20] += v87 * v86;
      InterleavedFromIndex = (*(**(v7 + 144) + 56))();
      v11 = InterleavedFromIndex;
      if (InterleavedFromIndex)
      {
        if ((v502 & 1) == 0)
        {
          goto LABEL_712;
        }
      }

      else if ((v502 & 1) == 0)
      {
        goto LABEL_712;
      }

      operator new();
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      v73 = 0;
      if (v502 != 1)
      {
        goto LABEL_182;
      }
    }

    else
    {
      v463 = v463 & 0xFFFFFFFF00000000 | 0x3C2B;
      webrtc::webrtc_logging_impl::Log("\r\t", v79, v80, v81, v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
      v73 = 0;
      if (v502 != 1)
      {
        goto LABEL_182;
      }
    }

    v102 = v501;
    v501 = 0;
    if (v102)
    {
      (*(*v102 + 8))(v102);
    }

    v103 = v500;
    v500 = 0;
    if (v103)
    {
      MEMORY[0x2743DA540](v103, 0x1060C40C2E02434);
    }

    if (v499 == 1 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v104 = v495;
    v495 = 0;
    if (v104)
    {
      MEMORY[0x2743DA520](v104, 0x1000C8077774924);
    }

LABEL_182:
    if (!a3)
    {
      goto LABEL_193;
    }

    v105 = (v61 != 0) & v74;
    v74 = 1;
  }

  while ((v105 & 1) != 0);
  v11 = 0x1060C40C2E02434;
  a2 = v470;
LABEL_197:
  if ((v4 - 3) <= 2)
  {
    v113 = (v23 + v31);
    (*(**(v7 + 208) + 152))(*(v7 + 208), v113);
    (*(**(v7 + 208) + 184))(*(v7 + 208), 1);
    if (v113 >= v10 || v4 == 5)
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }
  }

  *(v7 + 360) = *(*(v7 + 224) + 40);
LABEL_205:
  v468 = v477;
  v478 = 1;
  InterleavedFromIndex = (*(**(v7 + 120) + 80))(*(v7 + 120));
  v115 = InterleavedFromIndex;
  v470 = a2;
  if (!v477)
  {
    goto LABEL_270;
  }

  v116 = *(v476 + 22);
  InterleavedFromIndex = (*(**(v7 + 120) + 64))(*(v7 + 120), v116);
  if (InterleavedFromIndex)
  {
    if (*(InterleavedFromIndex + 144) == 1)
    {
      goto LABEL_270;
    }
  }

  Decoder = webrtc::DecoderDatabase::GetDecoder(*(v7 + 120));
  if (!Decoder)
  {
    InterleavedFromIndex = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
    if ((InterleavedFromIndex & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v119, v120, v121, v122, v123, v124, v125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
    }

    if (v477)
    {
      v126 = v476;
      v127 = *(v475 + 8);
      v128 = *v476;
      *(v128 + 8) = v127;
      *v127 = v128;
      v477 = 0;
      if (v126 != &v475)
      {
        do
        {
          v129 = v126[1];
          v130 = v126[22];
          v126[22] = 0;
          if (v130)
          {
            (*(*v130 + 8))(v130);
          }

          v131 = v126[21];
          v126[21] = 0;
          if (v131)
          {
            MEMORY[0x2743DA540](v131, 0x1060C40C2E02434);
          }

          if (*(v126 + 160) == 1)
          {
            v132 = v126[8];
            if (v132)
            {
              v126[9] = v132;
              operator delete(v132);
            }
          }

          v133 = v126[5];
          v126[5] = 0;
          if (v133)
          {
            MEMORY[0x2743DA520](v133, 0x1000C8077774924);
          }

          operator delete(v126);
          v126 = v129;
        }

        while (v129 != &v475);
      }
    }

    goto LABEL_244;
  }

  v115 = Decoder;
  v503[0] = 0;
  InterleavedFromIndex = (*(**(v7 + 120) + 72))(*(v7 + 120), v116, v503);
  if (v503[0] != 1)
  {
    goto LABEL_270;
  }

  InterleavedFromIndex = (*(**(v7 + 120) + 64))(*(v7 + 120), v116);
  if (!InterleavedFromIndex)
  {
    InterleavedFromIndex = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
    if ((InterleavedFromIndex & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v134, v135, v136, v137, v138, v139, v140, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
    }

    if (v477)
    {
      v141 = v476;
      v142 = *(v475 + 8);
      v143 = *v476;
      *(v143 + 8) = v142;
      *v142 = v143;
      v477 = 0;
      if (v141 != &v475)
      {
        do
        {
          v144 = v141[1];
          v145 = v141[22];
          v141[22] = 0;
          if (v145)
          {
            (*(*v145 + 8))(v145);
          }

          v146 = v141[21];
          v141[21] = 0;
          if (v146)
          {
            MEMORY[0x2743DA540](v146, 0x1060C40C2E02434);
          }

          if (*(v141 + 160) == 1)
          {
            v147 = v141[8];
            if (v147)
            {
              v141[9] = v147;
              operator delete(v147);
            }
          }

          v148 = v141[5];
          v141[5] = 0;
          if (v148)
          {
            MEMORY[0x2743DA520](v148, 0x1000C8077774924);
          }

          operator delete(v141);
          v141 = v144;
        }

        while (v144 != &v475);
      }
    }

LABEL_244:
    v149 = 0;
    a2 = 0;
    LODWORD(a3) = 3;
    v150 = v478;
    goto LABEL_385;
  }

  v118 = InterleavedFromIndex;
  if (*(InterleavedFromIndex + 144))
  {
    if (*(InterleavedFromIndex + 144) == 2)
    {
      InterleavedFromIndex = *(InterleavedFromIndex + 64);
      goto LABEL_254;
    }
  }

  else
  {
    InterleavedFromIndex = *(InterleavedFromIndex + 128);
    if (InterleavedFromIndex)
    {
      goto LABEL_251;
    }

    (*(**(v118 + 120) + 48))(v492);
    InterleavedFromIndex = *v492;
    *v492 = 0;
    v151 = *(v118 + 128);
    *(v118 + 128) = InterleavedFromIndex;
    if (v151)
    {
      (*(*v151 + 8))(v151);
      v152 = *v492;
      *v492 = 0;
      if (v152)
      {
        (*(*v152 + 8))();
      }

      InterleavedFromIndex = *(v118 + 128);
    }

    if (InterleavedFromIndex)
    {
LABEL_251:
      InterleavedFromIndex = (*(*InterleavedFromIndex + 88))();
      goto LABEL_254;
    }
  }

  if ((*(v118 + 140) & 1) == 0)
  {
    goto LABEL_712;
  }

  InterleavedFromIndex = *(v118 + 136);
LABEL_254:
  if (InterleavedFromIndex != *(v7 + 288) || (InterleavedFromIndex = (*(*v115 + 96))(v115), v14 = *(*(v7 + 216) + 16), InterleavedFromIndex != (v14 - *(*(v7 + 216) + 8)) >> 3))
  {
    if (*(v118 + 144))
    {
      if (*(v118 + 144) == 2)
      {
        v153 = *(v118 + 64);
        goto LABEL_268;
      }

LABEL_266:
      if ((*(v118 + 140) & 1) == 0)
      {
        goto LABEL_712;
      }

      v153 = *(v118 + 136);
    }

    else
    {
      InterleavedFromIndex = *(v118 + 128);
      if (!InterleavedFromIndex)
      {
        (*(**(v118 + 120) + 48))(v492);
        InterleavedFromIndex = *v492;
        *v492 = 0;
        v154 = *(v118 + 128);
        *(v118 + 128) = InterleavedFromIndex;
        if (v154)
        {
          (*(*v154 + 8))(v154);
          v155 = *v492;
          *v492 = 0;
          if (v155)
          {
            (*(*v155 + 8))();
          }

          InterleavedFromIndex = *(v118 + 128);
        }

        if (!InterleavedFromIndex)
        {
          goto LABEL_266;
        }
      }

      v153 = (*(*InterleavedFromIndex + 88))(InterleavedFromIndex);
    }

LABEL_268:
    v156 = (*(*v115 + 96))(v115);
    webrtc::NetEqImpl::SetSampleRateAndChannels(v7, v153, v156);
  }

  v157 = *(v7 + 360);
  *(*(v7 + 224) + 40) = v157;
  *(v7 + 352) = v157;
LABEL_270:
  if (*(v7 + 364) == 1)
  {
    if (v115)
    {
      (*(*v115 + 48))(v115);
    }

    InterleavedFromIndex = (*(**(v7 + 120) + 96))(*(v7 + 120));
    if (InterleavedFromIndex)
    {
      *InterleavedFromIndex = 7777;
      *(InterleavedFromIndex + 4) = 0u;
      *(InterleavedFromIndex + 20) = 0u;
      *(InterleavedFromIndex + 36) = 0u;
      *(InterleavedFromIndex + 52) = 0u;
      *(InterleavedFromIndex + 68) = 0u;
      *(InterleavedFromIndex + 84) = 0u;
      *(InterleavedFromIndex + 100) = 0u;
      *(InterleavedFromIndex + 116) = 5;
      *(InterleavedFromIndex + 120) = 0;
    }

    *(v7 + 364) = 0;
  }

  if (v4 != 1 || !v115)
  {
    if (v4 != 8)
    {
      goto LABEL_291;
    }

    if (v115)
    {
      a2 = 0;
      do
      {
        if (a2 >= *(v7 + 304))
        {
          v226 = a2;
          v227 = *(v7 + 192);
          if (*(v227 + 512) == 1)
          {
            goto LABEL_367;
          }

LABEL_370:
          LODWORD(a3) = 0;
          if ((a2 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_374;
        }

        v158 = *(v7 + 288);
        v160 = *(v7 + 336);
        v159 = *(v7 + 344);
        v161 = (*(*v115 + 64))(v115, 0, 0);
        if ((v161 & 0x80000000) == 0 && (*(*v115 + 96))(v115) * (2 * v161) > 2 * (v160 - a2) || (InterleavedFromIndex = (*(*v115 + 104))(v115, 0, 0, v158, v159 + 2 * a2, &v478), InterleavedFromIndex < 1))
        {
          InterleavedFromIndex = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
          if ((InterleavedFromIndex & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v219, v220, v221, v222, v223, v224, v225, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
          }

          v226 = -1;
          a2 = 0xFFFFFFFFLL;
          v227 = *(v7 + 192);
          if (*(v227 + 512) == 1)
          {
LABEL_367:
            LODWORD(a3) = 0;
            *(v227 + 152) += v226;
            if ((a2 & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_374;
          }

          goto LABEL_370;
        }

        a2 = (InterleavedFromIndex + a2);
      }

      while (a2 <= *(v7 + 336));
      InterleavedFromIndex = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
      if (InterleavedFromIndex)
      {
        LODWORD(a3) = 14;
        if ((a2 & 0x80000000) == 0)
        {
          goto LABEL_350;
        }
      }

      else
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v162, v163, v164, v165, v166, v167, v168, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
        LODWORD(a3) = 14;
        if ((a2 & 0x80000000) == 0)
        {
          goto LABEL_350;
        }
      }

LABEL_374:
      *(*(v7 + 224) + 40) += *(v7 + 312);
      if (v115 && (*(*v115 + 56))(v115))
      {
        InterleavedFromIndex = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
        if ((InterleavedFromIndex & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v228, v229, v230, v231, v232, v233, v234, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
        }

        a2 = 0;
        LODWORD(a3) = 8;
        LODWORD(v4) = 2;
        v150 = v478;
        if (v478 == 2)
        {
          goto LABEL_351;
        }

        goto LABEL_383;
      }
    }

    else
    {
      *(*(v7 + 224) + 40) += *(v7 + 312);
    }

    InterleavedFromIndex = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
    if ((InterleavedFromIndex & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v235, v236, v237, v238, v239, v240, v241, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
    }

    a2 = 0;
    LODWORD(a3) = 9;
    LODWORD(v4) = 2;
    v150 = v478;
    if (v478 == 2)
    {
      goto LABEL_351;
    }

    goto LABEL_383;
  }

  InterleavedFromIndex = (*(*v115 + 24))(v115);
  if (InterleavedFromIndex)
  {
    InterleavedFromIndex = (*(*v115 + 32))(v115, 1, *(v7 + 344));
  }

LABEL_291:
  if (v477)
  {
    a2 = 0;
    v169 = 0x1000C8077774924;
    v465 = v115;
    while (1)
    {
      InterleavedFromIndex = (*(**(v7 + 120) + 64))(*(v7 + 120), *(v476 + 22));
      if (InterleavedFromIndex && *(InterleavedFromIndex + 144) == 1)
      {
LABEL_321:
        LODWORD(a3) = 0;
        if ((a2 & 0x80000000) == 0)
        {
          goto LABEL_350;
        }

        goto LABEL_374;
      }

      if (!v477)
      {
        goto LABEL_712;
      }

      InterleavedFromIndex = (*(**(v476 + 22) + 32))(v492);
      v170 = v477;
      if (!v477)
      {
        goto LABEL_712;
      }

      a3 = v476;
      v14 = *(v476 + 160);
      if (v14 == 1)
      {
        v171 = *(v7 + 408);
        if (v171 >= *(v7 + 416))
        {
          std::vector<webrtc::RtpPacketInfo>::__emplace_back_slow_path<webrtc::RtpPacketInfo const&>((v7 + 400));
        }

        if (!v171)
        {
          goto LABEL_712;
        }

        v172 = v169;
        v173 = v4;
        *v171 = *(v476 + 14);
        *(v171 + 16) = 0;
        *(v171 + 24) = 0;
        *(v171 + 8) = 0;
        v175 = *(a3 + 64);
        v174 = *(a3 + 72);
        if (v174 != v175)
        {
          if (((v174 - v175) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *(v171 + 32) = *(a3 + 88);
        v176 = *(a3 + 104);
        v177 = *(a3 + 120);
        v178 = *(a3 + 136);
        *(v171 + 96) = *(a3 + 152);
        *(v171 + 64) = v177;
        *(v171 + 80) = v178;
        *(v171 + 48) = v176;
        InterleavedFromIndex = v171 + 104;
        v4 = v173;
        v169 = v172;
        v115 = v465;
        *(v7 + 408) = InterleavedFromIndex;
        v170 = v477;
        if (!v477)
        {
          goto LABEL_712;
        }

        a3 = v476;
      }

      v180 = *a3;
      v179 = *(a3 + 8);
      *(v180 + 8) = v179;
      *v179 = v180;
      v477 = v170 - 1;
      v181 = *(a3 + 176);
      *(a3 + 176) = 0;
      if (v181)
      {
        (*(*v181 + 8))(v181);
      }

      v182 = *(a3 + 168);
      *(a3 + 168) = 0;
      if (v182)
      {
        MEMORY[0x2743DA540](v182, 0x1060C40C2E02434);
      }

      if (*(a3 + 160) == 1)
      {
        v183 = *(a3 + 64);
        if (v183)
        {
          *(a3 + 72) = v183;
          operator delete(v183);
        }
      }

      v184 = *(a3 + 40);
      *(a3 + 40) = 0;
      if (v184)
      {
        MEMORY[0x2743DA520](v184, v169);
      }

      operator delete(a3);
      if (v494 != 1)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v186, v187, v188, v189, v190, v191, v192, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
        }

        v193 = *(v7 + 400);
        for (j = *(v7 + 408); j != v193; j -= 104)
        {
          v195 = *(j - 96);
          if (v195)
          {
            *(j - 88) = v195;
            operator delete(v195);
          }
        }

        *(v7 + 408) = v193;
        if (v477)
        {
          v196 = v476;
          v197 = *(v475 + 8);
          v198 = *v476;
          *(v198 + 8) = v197;
          *v197 = v198;
          v477 = 0;
          if (v196 != &v475)
          {
            do
            {
              v199 = v196[1];
              v200 = v196[22];
              v196[22] = 0;
              if (v200)
              {
                (*(*v200 + 8))(v200);
              }

              v201 = v196[21];
              v196[21] = 0;
              if (v201)
              {
                MEMORY[0x2743DA540](v201, 0x1060C40C2E02434);
              }

              if (*(v196 + 160) == 1)
              {
                v202 = v196[8];
                if (v202)
                {
                  v196[9] = v202;
                  operator delete(v202);
                }
              }

              v203 = v196[5];
              v196[5] = 0;
              if (v203)
              {
                MEMORY[0x2743DA520](v203, v169);
              }

              operator delete(v196);
              v196 = v199;
            }

            while (v199 != &v475);
          }
        }

        goto LABEL_374;
      }

      v478 = v493;
      v185 = *v492;
      if (*v492)
      {
        a2 = (a2 + v492[0]);
        InterleavedFromIndex = (*(*v115 + 96))(v115);
        *(v7 + 312) = v185 / InterleavedFromIndex;
      }

      if (a2 > *(v7 + 336))
      {
        break;
      }

      if (!v477)
      {
        goto LABEL_321;
      }
    }

    InterleavedFromIndex = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
    if ((InterleavedFromIndex & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v204, v205, v206, v207, v208, v209, v210, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
    }

    if (v477)
    {
      v211 = v476;
      v212 = *(v475 + 8);
      v213 = *v476;
      *(v213 + 8) = v212;
      *v212 = v213;
      v477 = 0;
      if (v211 != &v475)
      {
        do
        {
          v214 = v211[1];
          v215 = v211[22];
          v211[22] = 0;
          if (v215)
          {
            (*(*v215 + 8))(v215);
          }

          v216 = v211[21];
          v211[21] = 0;
          if (v216)
          {
            MEMORY[0x2743DA540](v216, 0x1060C40C2E02434);
          }

          if (*(v211 + 160) == 1)
          {
            v217 = v211[8];
            if (v217)
            {
              v211[9] = v217;
              operator delete(v217);
            }
          }

          v218 = v211[5];
          v211[5] = 0;
          if (v218)
          {
            MEMORY[0x2743DA520](v218, v169);
          }

          operator delete(v211);
          v211 = v214;
        }

        while (v214 != &v475);
      }
    }

    LODWORD(a3) = 14;
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_374;
    }

LABEL_350:
    v150 = v478;
    if (v478 == 2)
    {
LABEL_351:
      if (a2)
      {
        goto LABEL_352;
      }

LABEL_384:
      v149 = 0;
      goto LABEL_385;
    }
  }

  else
  {
    a2 = 0;
    LODWORD(a3) = 0;
    v150 = v478;
    if (v478 == 2)
    {
      goto LABEL_351;
    }
  }

LABEL_383:
  v242 = *(v7 + 224);
  v3 = *(v242 + 40);
  *(v242 + 40) = v3 + a2 / ((*(v242 + 16) - *(v242 + 8)) >> 3);
  if (!a2)
  {
    goto LABEL_384;
  }

LABEL_352:
  *(v7 + 328) = v150;
  v149 = 1;
  *(v7 + 332) = 1;
LABEL_385:
  v244 = v150 == 2 && v468 > v477;
  if (v477)
  {
    v245 = v4 == 6;
  }

  else
  {
    v245 = 0;
  }

  if (v245 || v244)
  {
    operator new();
  }

  v246 = *(v7 + 216);
  v247 = *(v246 + 8);
  for (k = *(v246 + 16); v247 != k; *(v249 + 24) = 0)
  {
    v249 = *v247++;
    *(v249 + 16) = 0;
  }

  LODWORD(v10) = 0;
  if (v4 <= 4)
  {
    if (v4 <= 2)
    {
      if (!v4)
      {
        v335 = v478;
        webrtc::Normal::Process(*(v7 + 240), *(v7 + 344), a2, *(v7 + 320), *(v7 + 216));
        if (a2)
        {
          *(v7 + 320) = 0;
        }

        if (v335 == 2 || !a2 && *(v7 + 320) == 10)
        {
          *(v7 + 320) = 10;
        }

        if ((v470 & 1) == 0)
        {
          (*(**(v7 + 136) + 24))(*(v7 + 136));
        }

        a2 = v471;
        LODWORD(v10) = 0;
        if (v149)
        {
          *(*(v7 + 192) + 512) = 1;
        }

        goto LABEL_580;
      }

      if (v4 != 1)
      {
        if (v4 != 2)
        {
          goto LABEL_537;
        }

        if (*(v7 + 366) == 1)
        {
          InterleavedFromIndex = webrtc::NetEqImpl::DoCodecPlc(v7);
          if (InterleavedFromIndex)
          {
LABEL_536:
            LODWORD(v10) = 0;
            goto LABEL_537;
          }
        }

        v260 = *(v7 + 224);
        v14 = v260[1];
        v15 = v260[2];
        if (v15 == v14)
        {
          goto LABEL_712;
        }

        LODWORD(v10) = 1;
        while (1)
        {
          v261 = (*(*v14 + 8) + *(*v14 + 24) - *(*v14 + 16)) % *(*v14 + 8);
          a2 = v260[4];
          if (v261 - (a2 + (*(**(v7 + 232) + 48))(*(v7 + 232))) >= *(v7 + 304))
          {
            a2 = v471;
            if ((v470 & 1) == 0)
            {
              (*(**(v7 + 136) + 24))(*(v7 + 136));
            }

            if (!*(v7 + 392))
            {
              operator new();
            }

            goto LABEL_579;
          }

          v262 = *(v7 + 216);
          v263 = *(v262 + 8);
          v264 = *(v262 + 16);
          if (v263 != v264)
          {
            do
            {
              v265 = *v263++;
              *(v265 + 16) = 0;
              *(v265 + 24) = 0;
            }

            while (v263 != v264);
            v262 = *(v7 + 216);
          }

          InterleavedFromIndex = (*(**(v7 + 232) + 24))(*(v7 + 232), v262);
          v266 = *(v7 + 216);
          v267 = *(v266 + 1);
          v14 = *(v266 + 2);
          if (v14 == v267)
          {
            goto LABEL_712;
          }

          v59 = InterleavedFromIndex;
          v14 = ((*(*v267 + 8) + *(*v267 + 24) - *(*v267 + 16)) % *(*v267 + 8));
          v268 = *(v7 + 320);
          v269 = *(v7 + 232);
          if ((*(v269 + 24) & 1) == 0 && (*(v269 + 112) & 1) == 0)
          {
            v15 = *(v269 + 32);
            if (!v15)
            {
              goto LABEL_443;
            }

            v3 = *(v269 + 128);
            v274 = *(v3 - 8);
            while (1)
            {
              if (!v274)
              {
                goto LABEL_712;
              }

              if (*v3)
              {
                break;
              }

              v3 += 112;
              --v274;
              v15 = (v15 - 1);
              if (!v15)
              {
                goto LABEL_443;
              }
            }
          }

          if (*(v7 + 332) != 1 || *(v7 + 328) != 2)
          {
            v271 = *(v7 + 192);
            if (*(v271 + 512) != 1)
            {
              goto LABEL_458;
            }

            *(v271 + 256) += v14;
            v272 = *(v271 + 224);
            if ((v14 & 0x80000000) != 0)
            {
              v14 = v14;
            }

            else
            {
              v273 = v14 & 0x7FFFFFFF;
              if (v272 >= v273)
              {
                v14 = (v14 & 0x7FFFFFFF);
              }

              else
              {
                v14 = *(v271 + 224);
              }

              *(v271 + 16) += v273 - v14;
            }

            *(v271 + 224) = v272 - v14;
            goto LABEL_455;
          }

LABEL_443:
          v271 = *(v7 + 192);
          if (*(v271 + 512) != 1)
          {
            goto LABEL_458;
          }

          *(v271 + 264) += v14;
          v275 = *(v271 + 224);
          if ((v14 & 0x80000000) != 0)
          {
            v281 = v275 - v14;
            v282 = *(v271 + 232) - v14;
            *(v271 + 224) = v281;
            *(v271 + 232) = v282;
          }

          else
          {
            v276 = v14 & 0x7FFFFFFF;
            if (v275 >= v276)
            {
              v277 = v276;
            }

            else
            {
              v277 = *(v271 + 224);
            }

            v278 = v275 - v277;
            *(v271 + 16) += v276 - v277;
            v279 = *(v271 + 232);
            if (v279 >= v276)
            {
              v280 = v276;
            }

            else
            {
              v280 = *(v271 + 232);
            }

            *(v271 + 224) = v278;
            *(v271 + 232) = v279 - v280;
            *(v271 + 80) += v276 - v280;
          }

LABEL_455:
          v96 = v268 == 1;
          v283 = *(v271 + 24);
          if (!v96)
          {
            ++v283;
          }

          *(v271 + 24) = v283;
LABEL_458:
          *(v7 + 320) = 1;
          if ((InterleavedFromIndex & 0x80000000) != 0)
          {
            goto LABEL_676;
          }

          InterleavedFromIndex = webrtc::SyncBuffer::PushBack(*(v7 + 224), v266);
          v284 = *(v7 + 216);
          v285 = *(v284 + 8);
          for (m = *(v284 + 16); v285 != m; *(v287 + 24) = 0)
          {
            v287 = *v285++;
            *(v287 + 16) = 0;
          }

          v260 = *(v7 + 224);
          v14 = v260[1];
          v15 = v260[2];
          if (v15 == v14)
          {
            goto LABEL_712;
          }
        }
      }

      LODWORD(v10) = v478;
      v326 = (*(**(v7 + 248) + 16))(*(v7 + 248), *(v7 + 344), a2, *(v7 + 216)) - (a2 / ((*(*(v7 + 216) + 16) - *(*(v7 + 216) + 8)) >> 3));
      InterleavedFromIndex = *(v7 + 232);
      if ((*(InterleavedFromIndex + 24) & 1) == 0 && (*(InterleavedFromIndex + 112) & 1) == 0)
      {
        v14 = *(InterleavedFromIndex + 32);
        if (!v14)
        {
LABEL_686:
          v14 = *(v7 + 192);
          a2 = v471;
          if (*(v14 + 512) != 1)
          {
            goto LABEL_736;
          }

          v429 = *(v14 + 33);
          v15 = v326;
          if (v429 + v326 > v429 && (v326 & 0x80000000) != 0)
          {
            v431 = 0;
          }

          else
          {
            v431 = v429 + v326;
          }

          *(v14 + 33) = v431;
          v3 = *(v14 + 28);
          if ((v326 & 0x80000000) == 0)
          {
            if (v3 >= v326)
            {
              v432 = v326;
            }

            else
            {
              v432 = *(v14 + 28);
            }

            v433 = (v3 - v432);
            *(v14 + 2) += v326 - v432;
            v434 = *(v14 + 29);
            if (v434 >= v326)
            {
              v435 = v326;
            }

            else
            {
              v435 = *(v14 + 29);
            }

            *(v14 + 28) = v433;
            *(v14 + 29) = v434 - v435;
            *(v14 + 10) += v326 - v435;
            goto LABEL_736;
          }

          goto LABEL_713;
        }

        v15 = *(InterleavedFromIndex + 128);
        v3 = *(v15 - 1);
        while (1)
        {
          if (!v3)
          {
            goto LABEL_712;
          }

          if (*v15)
          {
            break;
          }

          v15 += 56;
          --v3;
          v14 = (v14 - 1);
          if (!v14)
          {
            goto LABEL_686;
          }
        }
      }

      if (*(v7 + 332) != 1 || *(v7 + 328) != 2)
      {
        v328 = *(v7 + 192);
        a2 = v471;
        if (*(v328 + 512) == 1)
        {
          v329 = *(v328 + 256);
          if (v329 + v326 > v329 && (v326 & 0x80000000) != 0)
          {
            v331 = 0;
          }

          else
          {
            v331 = v329 + v326;
          }

          *(v328 + 256) = v331;
          v332 = *(v328 + 224);
          if ((v326 & 0x80000000) != 0)
          {
            *(v328 + 224) = v332 - v326;
          }

          else
          {
            if (v332 >= v326)
            {
              v333 = v326;
            }

            else
            {
              v333 = *(v328 + 224);
            }

            *(v328 + 224) = v332 - v333;
            *(v328 + 16) += v326 - v333;
          }
        }

        goto LABEL_736;
      }

      goto LABEL_686;
    }

    LODWORD(v10) = a3;
    v295 = *(v7 + 370);
    LODWORD(a3) = v4;
    LODWORD(v4) = v4 == 4;
    v296 = *(v7 + 344);
    v297 = a2;
    v469 = v478;
    v298 = 240 * *(v7 + 292);
    v299 = *(v7 + 216);
    a2 = (*(v299 + 2) - *(v299 + 1)) >> 3;
    if (v297 / a2 >= v298)
    {
      v300 = 0;
      *v492 = 0;
      v304 = *(v7 + 256);
      v305 = *(v304 + 16);
      a2 = v471;
      if (!v305)
      {
        goto LABEL_490;
      }
    }

    else
    {
      v300 = (v298 - v297 / a2);
      memmove(v296 + 2 * a2 * v300, v296, 2 * v297);
      InterleavedFromIndex = *(v7 + 224);
      v301 = *(InterleavedFromIndex + 8);
      v14 = *(InterleavedFromIndex + 16);
      if (v14 == v301)
      {
        goto LABEL_712;
      }

      v302 = (*(*v301 + 8) + *(*v301 + 24) - *(*v301 + 16)) % *(*v301 + 8);
      if (v302 >= v300)
      {
        v303 = v300;
      }

      else
      {
        v303 = v302;
      }

      webrtc::AudioMultiVector::ReadInterleavedFromIndex(InterleavedFromIndex, v302 - v303, v303, v296->i16);
      v297 = a2 * v298;
      v299 = *(v7 + 216);
      *v492 = 0;
      v304 = *(v7 + 256);
      v305 = *(v304 + 16);
      a2 = v471;
      if (!v305)
      {
        goto LABEL_490;
      }
    }

    if (v297 / v305 >= 239 * *(v304 + 12))
    {
      InterleavedFromIndex = webrtc::TimeStretch::Process(v304, v296, v297, v4 & v295, v299, v492);
      LODWORD(v4) = a3;
      v323 = *(v7 + 192);
      LODWORD(a3) = v10;
      if (*(v323 + 512) == 1)
      {
LABEL_494:
        v324 = *v492;
        *(v323 + 248) += *v492;
        *(v323 + 176) += v324;
        v15 = *(v323 + 72);
        *(v323 + 72) = v15 + v324;
      }

LABEL_495:
      if (InterleavedFromIndex > 0)
      {
        if (InterleavedFromIndex == 2)
        {
          v325 = 5;
        }

        else
        {
          if (InterleavedFromIndex != 1)
          {
            goto LABEL_563;
          }

          v325 = 4;
        }
      }

      else
      {
        if (InterleavedFromIndex == -1)
        {
          LODWORD(v10) = 5;
          *(v7 + 320) = 5;
          goto LABEL_580;
        }

        if (InterleavedFromIndex)
        {
LABEL_563:
          if (v300)
          {
            v349 = *(v7 + 216);
            v14 = *(v349 + 1);
            if (*(v349 + 2) == v14)
            {
              goto LABEL_712;
            }

            InterleavedFromIndex = *(v7 + 224);
            v350 = *(InterleavedFromIndex + 8);
            v15 = *(InterleavedFromIndex + 16);
            if (v15 == v350)
            {
              goto LABEL_712;
            }

            v351 = (*(*v14 + 8) + *(*v14 + 24) - *(*v14 + 16)) % *(*v14 + 8);
            v352 = (*(*v350 + 8) + *(*v350 + 24) - *(*v350 + 16)) % *(*v350 + 8);
            if (v300 <= v351)
            {
              webrtc::SyncBuffer::ReplaceAtIndex(InterleavedFromIndex, v349, v300, v352 - v300);
            }

            else
            {
              webrtc::SyncBuffer::ReplaceAtIndex(InterleavedFromIndex, v349, v352 - v300);
              webrtc::SyncBuffer::InsertZerosAtIndex(*(v7 + 224), v300 - v351, 0);
              v300 = v351;
            }

            if (v300)
            {
              v353 = *(v7 + 216);
              v354 = *(v353 + 8);
              for (n = *(v353 + 16); v354 != n; v356[2] = (v360 + v358) % v359)
              {
                v357 = *v354++;
                v356 = v357;
                v358 = v357[2];
                v359 = v357[1];
                v360 = (v359 + v357[3] - v358) % v359;
                if (v360 >= v300)
                {
                  v360 = v300;
                }
              }
            }
          }

          if (v469 != 2)
          {
            goto LABEL_576;
          }

          goto LABEL_575;
        }

        v325 = 3;
      }

      *(v7 + 320) = v325;
      goto LABEL_563;
    }

LABEL_490:
    if (v297)
    {
      v322 = v296;
    }

    else
    {
      v322 = 0;
    }

    webrtc::AudioMultiVector::PushBackInterleaved(v299, v322, v297);
    InterleavedFromIndex = 0xFFFFFFFFLL;
    LODWORD(v4) = a3;
    v323 = *(v7 + 192);
    LODWORD(a3) = v10;
    if (*(v323 + 512) == 1)
    {
      goto LABEL_494;
    }

    goto LABEL_495;
  }

  if (v4 <= 7)
  {
    if ((v4 - 6) < 2)
    {
      a2 = v471;
      if (v477)
      {
        v250 = v476;
        v251 = (*(**(v7 + 120) + 64))(*(v7 + 120), *(v476 + 22));
        if (!v251 || *(v251 + 144) != 1)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v336, v337, v338, v339, v340, v341, v342, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
          }

          LODWORD(v10) = 1;
          goto LABEL_580;
        }

        webrtc::ComfortNoise::UpdateParameters(*(v7 + 280), v250 + 16);
      }

      v252 = webrtc::ComfortNoise::Generate(*(v7 + 280), *(v7 + 304), *(v7 + 216));
      (*(**(v7 + 232) + 16))(*(v7 + 232));
      *(v7 + 320) = 9;
      if ((v470 & 1) == 0)
      {
        (*(**(v7 + 136) + 24))(*(v7 + 136));
      }

      if (v252 == 1)
      {
        LODWORD(v10) = 2;
      }

      else
      {
        if (v252 != 2)
        {
          goto LABEL_579;
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v253, v254, v255, v256, v257, v258, v259, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
        }

        LODWORD(v10) = 7;
      }

LABEL_580:
      while (2)
      {
        *(v7 + 324) = v4;
        if (*(v7 + 320) != 9)
        {
          *(*(v7 + 280) + 4) = 1;
        }

        if (*(v7 + 400) != *(v7 + 408))
        {
          operator new();
        }

        webrtc::SyncBuffer::PushBack(*(v7 + 224), *(v7 + 216));
        v361 = *(v7 + 304);
        v362 = *(v7 + 224);
        if (((v362[2] - v362[1]) >> 3) * v361 >= 0x1E01)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            *v492 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc";
            v493 = 7162;
            v494 = v503;
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v363, v364, v365, v366, v367, v368, v369, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
          }

          v362 = *(v7 + 224);
          v361 = 0x1E00uLL / ((v362[2] - v362[1]) >> 3);
        }

        webrtc::SyncBuffer::GetNextAudioInterleaved(v362, v361, a2);
        *(a2 + 32) = *(v7 + 288);
        v370 = *(a2 + 64);
        *(a2 + 64) = 0;
        if (v370 && atomic_fetch_add(v370, 0xFFFFFFFF) == 1)
        {
          v371 = *(v370 + 8);
          if (v371)
          {
            v372 = *(v370 + 16);
            v373 = *(v370 + 8);
            if (v372 != v371)
            {
              do
              {
                v374 = *(v372 - 96);
                if (v374)
                {
                  *(v372 - 88) = v374;
                  operator delete(v374);
                }

                v372 -= 104;
              }

              while (v372 != v371);
              v373 = *(v370 + 8);
            }

            *(v370 + 16) = v371;
            operator delete(v373);
            a2 = v471;
          }

          InterleavedFromIndex = MEMORY[0x2743DA540](v370, 0x1020C40E72D6CFBLL);
        }

        v375 = *(v7 + 224);
        v14 = v375[1];
        v15 = v375[2];
        if (v15 != v14)
        {
          v376 = (*(*v14 + 8) + *(*v14 + 24) - *(*v14 + 16)) % *(*v14 + 8) - v375[4];
          InterleavedFromIndex = (*(**(v7 + 232) + 48))(*(v7 + 232));
          if (v376 >= InterleavedFromIndex)
          {
            goto LABEL_605;
          }

          InterleavedFromIndex = (*(**(v7 + 232) + 48))(*(v7 + 232));
          v377 = *(v7 + 224);
          v14 = v377[1];
          v15 = v377[2];
          if (v15 != v14)
          {
            v378 = *v14;
            v3 = v378[1];
            v379 = (v3 + v378[3] - v378[2]) % v3;
            if (v379 >= v379 - InterleavedFromIndex)
            {
              v379 -= InterleavedFromIndex;
            }

            v377[4] = v379;
LABEL_605:
            v380 = *(a2 + 24);
            if (v380 != *(v7 + 304))
            {
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v383, v384, v385, v386, v387, v388, v389, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
              }

              *(v467 + 3144) = 1;
              v59 = 13;
              goto LABEL_653;
            }

            if (v470)
            {
              v381 = *(v7 + 224);
              v382 = (v381[2] - v381[1]) >> 3;
              if (*(v467 + 3144) == 1)
              {
                bzero((v471 + 72), 0x3C01uLL);
                v380 = *(v7 + 304);
                v381 = *(v7 + 224);
              }

              v390 = v381[6];
              v391 = v381[4];
              v392 = v390 - v391;
              if (v380 < v390 - v391)
              {
                v392 = v380;
              }

              if (v390 <= v391)
              {
                v393 = 0;
              }

              else
              {
                v393 = v392;
              }

              v394 = (v380 - v393);
              webrtc::AudioMultiVector::AudioMultiVector(v492, v382);
              if (((*(**(v7 + 136) + 40))(*(v7 + 136)) & 1) != 0 || (v395 = (*(**(v7 + 136) + 16))(*(v7 + 136), *(v7 + 288), HIDWORD(v472), v473)) == 0)
              {
                v395 = (*(**(v7 + 136) + 32))(*(v7 + 136), v394, v492);
              }

              InterleavedFromIndex = webrtc::AudioMultiVector::ReadInterleavedFromIndex(v492, 0, v394, (v471 + 72 + 2 * v393));
              *v492 = &unk_28828E2C0;
              v396 = v493;
              if (v493)
              {
                v397 = v494;
                v398 = v493;
                if (v494 != v493)
                {
                  do
                  {
                    v400 = *--v397;
                    v399 = v400;
                    *v397 = 0;
                    if (v400)
                    {
                      v401 = *v399;
                      *v399 = 0;
                      if (v401)
                      {
                        MEMORY[0x2743DA520](v401, 0x1000C80BDFB0063);
                      }

                      MEMORY[0x2743DA540](v399, 0x1010C40FAA616C6);
                    }
                  }

                  while (v397 != v396);
                  v398 = v493;
                }

                v494 = v396;
                operator delete(v398);
              }

              LODWORD(v10) = v395 & (v395 >> 31);
              a2 = v471;
            }

            v402 = *(v7 + 320);
            v28 = v402 > 0xA;
            v403 = (1 << v402) & 0x721;
            if (!v28 && v403 != 0)
            {
              InterleavedFromIndex = webrtc::BackgroundNoise::Update(*(v7 + 200), *(v7 + 224));
            }

            if (v4 == 9)
            {
              v405 = *(v7 + 224);
              v14 = v405[1];
              v15 = v405[2];
              if (v15 != v14)
              {
                v405[6] = (*(*v14 + 8) + *(*v14 + 24) - *(*v14 + 16)) % *(*v14 + 8);
                goto LABEL_639;
              }
            }

            else
            {
LABEL_639:
              v406 = *(v7 + 320);
              if (v406 == 1 || v406 == 11)
              {
                v407 = (*(v7 + 352) + *(v7 + 304));
                *(v7 + 352) = v407;
                goto LABEL_645;
              }

              v14 = *(v7 + 224);
              v15 = *(v14 + 1);
              v3 = *(v14 + 2);
              if (v3 != v15)
              {
                v408 = *v15;
                v409 = v408[1];
                v410 = v409 + v408[3] - v408[2];
                v411 = *(v14 + 10) + *(v14 + 8) + (v410 / v409) * v409 - v410;
                v407 = *(v7 + 352);
                if (v411 - v407 >= 1)
                {
                  *(v7 + 352) = v411;
                  v407 = v411;
                }

LABEL_645:
                if (*(v7 + 369))
                {
                  *a2 = 0;
                  if (v406 > 0xB)
                  {
                    goto LABEL_667;
                  }

LABEL_649:
                  if (((1 << v406) & 0xE02) != 0)
                  {
LABEL_650:
                    if (a3)
                    {
                      v59 = a3;
                    }

                    else
                    {
                      v59 = v10;
                    }

                    goto LABEL_653;
                  }
                }

                else
                {
                  v412 = (*(**(v7 + 160) + 48))(*(v7 + 160), v407);
                  v406 = *(v7 + 320);
                  *a2 = v412 - *(a2 + 24);
                  if (v406 <= 0xB)
                  {
                    goto LABEL_649;
                  }
                }

LABEL_667:
                v422 = *(v7 + 392);
                *(v7 + 392) = 0;
                if (v422)
                {
                  MEMORY[0x2743DA540](v422, v11);
                }

                goto LABEL_650;
              }
            }
          }
        }

LABEL_712:
        __break(1u);
LABEL_713:
        v445 = v3 - v15;
        v446 = *(v14 + 29) - v15;
        *(v14 + 28) = v445;
        *(v14 + 29) = v446;
LABEL_736:
        if (v10 == 2)
        {
          v462 = 10;
        }

        else
        {
          v462 = 2;
        }

        *(v7 + 320) = v462;
        (*(*InterleavedFromIndex + 16))(InterleavedFromIndex);
        if ((v470 & 1) == 0)
        {
          (*(**(v7 + 136) + 24))(*(v7 + 136));
        }

LABEL_579:
        LODWORD(v10) = 0;
        continue;
      }
    }

    if (v4 == 5)
    {
      v306 = *(v7 + 344);
      v307 = a2;
      LODWORD(v10) = v478;
      v308 = 240 * *(v7 + 292);
      v309 = *(v7 + 216);
      a2 = (*(v309 + 2) - *(v309 + 1)) >> 3;
      v310 = v308 - v307 / a2;
      if (v308 <= v307 / a2)
      {
        v310 = 0;
        v317 = 0;
        *v492 = 0;
        v320 = *(v7 + 264);
        *(v320 + 360) = 0;
        v321 = *(v320 + 16);
        a2 = v471;
        if (!v321)
        {
          goto LABEL_547;
        }
      }

      else
      {
        v464 = v478;
        v466 = a3;
        v311 = *(v7 + 224);
        v14 = v311[1];
        v15 = v311[2];
        if (v15 == v14)
        {
          goto LABEL_712;
        }

        LODWORD(a3) = -1025498060;
        v312 = *v14;
        v10 = v312[2];
        v11 = v312[3];
        v313 = v312[1];
        v4 = v311[4];
        memmove(v306 + 2 * a2 * v310, v306, 2 * v307);
        InterleavedFromIndex = *(v7 + 224);
        v314 = *(InterleavedFromIndex + 8);
        v14 = *(InterleavedFromIndex + 16);
        if (v14 == v314)
        {
          goto LABEL_712;
        }

        v315 = (v313 + v11 - v10) % v313 - v4;
        v69 = v310 >= v315;
        v316 = v310 - v315;
        if (v69)
        {
          v317 = v316;
        }

        else
        {
          v317 = 0;
        }

        v318 = (*(*v314 + 8) + *(*v314 + 24) - *(*v314 + 16)) % *(*v314 + 8);
        if (v318 >= v310)
        {
          v319 = v310;
        }

        else
        {
          v319 = v318;
        }

        webrtc::AudioMultiVector::ReadInterleavedFromIndex(InterleavedFromIndex, v318 - v319, v319, v306->i16);
        v307 = a2 * v308;
        v309 = *(v7 + 216);
        v11 = 0x1060C40C2E02434;
        LODWORD(v4) = 5;
        LODWORD(v10) = v464;
        LODWORD(a3) = v466;
        *v492 = 0;
        v320 = *(v7 + 264);
        *(v320 + 360) = v317;
        v321 = *(v320 + 16);
        a2 = v471;
        if (!v321)
        {
LABEL_547:
          if (v307)
          {
            v345 = v306;
          }

          else
          {
            v345 = 0;
          }

          webrtc::AudioMultiVector::PushBackInterleaved(v309, v345, v307);
          v344 = -1;
          goto LABEL_551;
        }
      }

      v343 = v307 / v321;
      if (v343 < 239 * *(v320 + 12) || v343 - *(v320 + 368) <= v317)
      {
        goto LABEL_547;
      }

      v344 = webrtc::TimeStretch::Process(v320, v306, v307, 0, v309, v492);
LABEL_551:
      v346 = *(v7 + 192);
      if (*(v346 + 512) == 1)
      {
        v347 = *v492;
        *(v346 + 240) += *v492;
        *(v346 + 168) += v347;
        v15 = *(v346 + 64);
        *(v346 + 64) = v15 + v347;
      }

      if (v344 > 0)
      {
        if (v344 == 2)
        {
          v348 = 8;
        }

        else
        {
          if (v344 != 1)
          {
            goto LABEL_704;
          }

          v348 = 7;
        }

LABEL_703:
        *(v7 + 320) = v348;
      }

      else
      {
        if (v344 == -1)
        {
          *(v7 + 320) = 8;
          LODWORD(v10) = 6;
          goto LABEL_580;
        }

        if (!v344)
        {
          v348 = 6;
          goto LABEL_703;
        }
      }

LABEL_704:
      if (v310)
      {
        InterleavedFromIndex = *(v7 + 224);
        v436 = *(InterleavedFromIndex + 8);
        v14 = *(InterleavedFromIndex + 16);
        if (v14 == v436)
        {
          goto LABEL_712;
        }

        webrtc::SyncBuffer::ReplaceAtIndex(InterleavedFromIndex, *(v7 + 216), v310, (*(*v436 + 8) + *(*v436 + 24) - *(*v436 + 16)) % *(*v436 + 8) - v310);
        v437 = *(v7 + 216);
        v438 = *(v437 + 8);
        for (ii = *(v437 + 16); v438 != ii; v440[2] = (v444 + v442) % v443)
        {
          v441 = *v438++;
          v440 = v441;
          v442 = v441[2];
          v443 = v441[1];
          v444 = (v443 + v441[3] - v442) % v443;
          if (v444 >= v310)
          {
            v444 = v310;
          }
        }
      }

      if (v10 != 2)
      {
LABEL_576:
        if ((v470 & 1) == 0)
        {
          (*(**(v7 + 136) + 24))(*(v7 + 136));
        }

        (*(**(v7 + 232) + 16))(*(v7 + 232));
        goto LABEL_579;
      }

LABEL_575:
      *(v7 + 320) = 10;
      goto LABEL_576;
    }

LABEL_537:
    a2 = v471;
    goto LABEL_580;
  }

  if (v4 == 8)
  {
    webrtc::Normal::Process(*(v7 + 240), *(v7 + 344), a2, *(v7 + 320), *(v7 + 216));
    *(v7 + 320) = 10;
    (*(**(v7 + 232) + 16))(*(v7 + 232));
    goto LABEL_536;
  }

  if (v4 == 9)
  {
    if (((*(**(v7 + 136) + 40))(*(v7 + 136)) & 1) != 0 || (v59 = (*(**(v7 + 136) + 16))(*(v7 + 136), *(v7 + 288), HIDWORD(v472), v473), !v59))
    {
      v59 = (*(**(v7 + 136) + 32))(*(v7 + 136), *(v7 + 304), *(v7 + 216));
    }

    v334 = *(v7 + 304);
    if ((v59 & 0x80000000) != 0)
    {
      v423 = *(v7 + 216);
      v424 = *(v423 + 8);
      v425 = *(v423 + 16);
      if (v424 != v425)
      {
        if (v334)
        {
          do
          {
            v426 = *v424;
            *(v426 + 2) = 0;
            *(v426 + 3) = 0;
            v427 = *v424++;
            webrtc::AudioVector::InsertZerosByPushBack(v427, v334, (*(v427 + 1) + *(v427 + 3) - *(v427 + 2)) % *(v427 + 1));
          }

          while (v424 != v425);
        }

        else
        {
          do
          {
            v428 = *v424++;
            *(v428 + 16) = 0;
            *(v428 + 24) = 0;
          }

          while (v424 != v425);
        }

        *(v7 + 324) = 9;
        goto LABEL_653;
      }

LABEL_676:
      *(v7 + 324) = v4;
      goto LABEL_653;
    }

    *(*(v7 + 224) + 40) += v334;
    (*(**(v7 + 232) + 16))(*(v7 + 232));
    v470 = 0;
    LODWORD(v10) = 0;
    *(v7 + 320) = 12;
    goto LABEL_537;
  }

  a2 = v471;
  if (v4 != 10)
  {
    goto LABEL_580;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v288, v289, v290, v291, v292, v293, v294, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
  }

  *(v7 + 320) = 13;
  v59 = 10;
LABEL_653:
  if (v477)
  {
    v413 = v476;
    v414 = *(v475 + 8);
    v415 = *v476;
    *(v415 + 8) = v414;
    *v414 = v415;
    v477 = 0;
    if (v413 != &v475)
    {
      do
      {
        v416 = v413[1];
        v417 = v413[22];
        v413[22] = 0;
        if (v417)
        {
          (*(*v417 + 8))(v417);
        }

        v418 = v413[21];
        v413[21] = 0;
        if (v418)
        {
          MEMORY[0x2743DA540](v418, v11);
        }

        if (*(v413 + 160) == 1)
        {
          v419 = v413[8];
          if (v419)
          {
            v413[9] = v419;
            operator delete(v419);
          }
        }

        v420 = v413[5];
        v413[5] = 0;
        if (v420)
        {
          MEMORY[0x2743DA520](v420, 0x1000C8077774924);
        }

        operator delete(v413);
        v413 = v416;
      }

      while (v416 != &v475);
    }
  }

  return v59;
}