BOOL webrtc::SocketAddress::IsPrivateIP(webrtc::SocketAddress *this)
{
  v1 = *(this + 8);
  if (v1 == 2)
  {
    LODWORD(v2) = *(this + 9);
    result = 1;
    if (v2 == 65193)
    {
      return result;
    }

    if (v2 == 127)
    {
      return result;
    }

    v7 = bswap32(v2);
    if (HIWORD(v7) == 49320 || (v7 & 0xFF000000) == 0xA000000 || (v7 & 0xFFF00000) == 0xAC100000)
    {
      return result;
    }
  }

  else if (v1 == 30)
  {
    v2 = *(this + 36);
    if ((v2 & 0xC0FF) == 0x80FE)
    {
      return 1;
    }

    v3 = *(this + 36) == *MEMORY[0x277D85EF0] && *(this + 44) == *(MEMORY[0x277D85EF0] + 8);
    v4 = !v3;
    if (*(this + 36) == 253 || !v4)
    {
      return 1;
    }
  }

  else
  {
    LODWORD(v2) = *(this + 9);
  }

  return v1 == 2 && (v2 & 0xC0FF) == 16484;
}

BOOL webrtc::SocketAddress::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 != *(a2 + 32))
  {
    return 0;
  }

  if (v2)
  {
    if (v2 != 30)
    {
      if (v2 == 2 && *(a1 + 36) == *(a2 + 36))
      {
        if (*(a1 + 36))
        {
          return *(a1 + 56) == *(a2 + 56);
        }

        goto LABEL_22;
      }

      return 0;
    }

    if (*(a1 + 36) != *(a2 + 36) || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }

    if ((*(a1 + 36) != *MEMORY[0x277D85EE8] || *(a1 + 44) != *(MEMORY[0x277D85EE8] + 8)) && (*(a1 + 36) != webrtc::kV4MappedPrefix || *(a1 + 44) != *(&webrtc::kV4MappedPrefix + 1)))
    {
      return *(a1 + 56) == *(a2 + 56);
    }
  }

LABEL_22:
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? a1 : *a1;
  v11 = v9 >= 0 ? a2 : *a2;
  v12 = a1;
  v13 = a2;
  v14 = memcmp(v10, v11, v7);
  a2 = v13;
  v15 = v14;
  a1 = v12;
  if (v15)
  {
    return 0;
  }

  return *(a1 + 56) == *(a2 + 56);
}

uint64_t webrtc::SocketAddress::operator<(const void **a1, const void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    v11 = v2 == 2 && v3 == 30;
    return !v2 || v11;
  }

  switch(v2)
  {
    case 0:
      goto LABEL_46;
    case 30:
      v13 = bswap64(*(a1 + 36));
      v14 = bswap64(*(a2 + 36));
      if (v13 == v14 && (v13 = bswap64(*(a1 + 44)), v14 = bswap64(*(a2 + 44)), v13 == v14))
      {
        v9 = 0;
      }

      else if (v13 < v14)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      break;
    case 2:
      v4 = bswap32(*(a1 + 9));
      v5 = bswap32(*(a2 + 9));
      v6 = v4 >= v5;
      v7 = v4 > v5;
      v8 = !v6;
      v9 = v7 - v8;
      break;
    default:
      return 0;
  }

  if (!v9)
  {
    if (v2 == 2)
    {
      if (*(a1 + 9))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a1 + 36) != *MEMORY[0x277D85EE8] || *(a1 + 44) != *(MEMORY[0x277D85EE8] + 8)) && (*(a1 + 36) != webrtc::kV4MappedPrefix || *(a1 + 44) != *(&webrtc::kV4MappedPrefix + 1)))
    {
      goto LABEL_66;
    }

LABEL_46:
    v22 = *(a1 + 23);
    if (v22 >= 0)
    {
      v23 = *(a1 + 23);
    }

    else
    {
      v23 = a1[1];
    }

    v24 = *(a2 + 23);
    if (v22 >= 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = *a1;
    }

    if (v24 >= 0)
    {
      v26 = *(a2 + 23);
    }

    else
    {
      v26 = a2[1];
    }

    if (v24 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v23 != v26 || (v28 = a1, v29 = a2, v30 = memcmp(v25, v27, v23), a2 = v29, v31 = v30, a1 = v28, v31))
    {
      if (v26 >= v23)
      {
        v32 = v23;
      }

      else
      {
        v32 = v26;
      }

      v33 = memcmp(v25, v27, v32);
      if (v33)
      {
        if ((v33 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      else if (v23 >= v26)
      {
        return 0;
      }

      return 1;
    }

LABEL_66:
    v15 = *(a1 + 28);
    v16 = *(a2 + 28);
    return v15 < v16;
  }

  if (v2 != 30)
  {
    v15 = bswap32(*(a1 + 9));
    v16 = bswap32(*(a2 + 9));
    return v15 < v16;
  }

  v19 = bswap64(*(a1 + 36));
  v20 = bswap64(*(a2 + 36));
  if (v19 == v20)
  {
    v19 = bswap64(*(a1 + 44));
    v20 = bswap64(*(a2 + 44));
    if (v19 == v20)
    {
      return 0;
    }
  }

  if (v19 < v20)
  {
    v21 = -1;
  }

  else
  {
    v21 = 1;
  }

  return v21 >> 31;
}

unint64_t webrtc::SocketAddress::Hash(webrtc::SocketAddress *this)
{
  v1 = *(this + 8);
  if (v1 == 30)
  {
    return *(this + 36) ^ *(this + 44) ^ ((*(this + 44) ^ *(this + 36)) >> 32) ^ ((*(this + 28) << 16) & 0xFFFFFFFFFFFF0000 | *(this + 28));
  }

  if (v1 == 2)
  {
    return *(this + 9) ^ ((*(this + 28) << 16) & 0xFFFFFFFFFFFF0000 | *(this + 28));
  }

  return (*(this + 28) << 16) & 0xFFFFFFFFFFFF0000 | *(this + 28);
}

uint64_t webrtc::SocketAddressFromSockAddrStorage(webrtc *this, std::string *a2, webrtc::SocketAddress *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (v3 == 30)
  {
    v20 = *(this + 8);
    v6 = bswap32(*(this + 1)) >> 16;
    v22 = 0;
    v23 = 0;
    __p = 0;
    v24 = &unk_28828CE50;
    v29 = 0;
    v25 = 30;
    v26 = v20;
    v28 = 0;
    v27 = v6;
    if (&__p != a2)
    {
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        v13 = this;
        std::string::__assign_no_alias<false>(a2, &__p, 0);
        v15 = v25;
        v16 = v27;
        v17 = v29;
        HIDWORD(a2[2].__r_.__value_.__r.__words[1]) = v28;
        v7 = &a2[2].__r_.__value_.__s.__data_[12];
        v18 = SHIBYTE(v23);
        LODWORD(a2[1].__r_.__value_.__r.__words[1]) = v15;
        *(&a2[1].__r_.__value_.__r.__words[1] + 4) = v26;
        LOWORD(a2[2].__r_.__value_.__r.__words[1]) = v16;
        a2[2].__r_.__value_.__s.__data_[16] = v17;
        if (v18 < 0)
        {
          operator delete(__p);
          v7 = &a2[2].__r_.__value_.__s.__data_[12];
        }

        this = v13;
        goto LABEL_18;
      }

      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
    }

    LODWORD(a2[1].__r_.__value_.__r.__words[1]) = 30;
    *(&a2[1].__r_.__value_.__r.__words[1] + 4) = v26;
    LOWORD(a2[2].__r_.__value_.__r.__words[1]) = v6;
    a2[2].__r_.__value_.__s.__data_[16] = 0;
    v7 = &a2[2].__r_.__value_.__s.__data_[12];
LABEL_18:
    *v7 = *(this + 6);
    return 1;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v19 = *(this + 1);
  v4 = bswap32(*(this + 1)) >> 16;
  v22 = 0;
  v23 = 0;
  __p = 0;
  v24 = &unk_28828CE50;
  v29 = 0;
  v25 = 2;
  v26 = v19;
  v28 = 0;
  v27 = v4;
  if (&__p == a2)
  {
LABEL_7:
    LODWORD(a2[1].__r_.__value_.__r.__words[1]) = 2;
    *(&a2[1].__r_.__value_.__r.__words[1] + 4) = v19;
    LOWORD(a2[2].__r_.__value_.__r.__words[1]) = v4;
    a2[2].__r_.__value_.__s.__data_[16] = 0;
    HIDWORD(a2[2].__r_.__value_.__r.__words[1]) = 0;
    return 1;
  }

  if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_7;
  }

  std::string::__assign_no_alias<false>(a2, &__p, 0);
  v9 = v27;
  v10 = v29;
  v11 = v28;
  v12 = SHIBYTE(v23);
  LODWORD(a2[1].__r_.__value_.__r.__words[1]) = v25;
  *(&a2[1].__r_.__value_.__r.__words[1] + 4) = v26;
  LOWORD(a2[2].__r_.__value_.__r.__words[1]) = v9;
  a2[2].__r_.__value_.__s.__data_[16] = v10;
  HIDWORD(a2[2].__r_.__value_.__r.__words[1]) = v11;
  if (v12 < 0)
  {
    operator delete(__p);
    return 1;
  }

  return 1;
}

void webrtc::SourceTracker::OnFrameDelivered(int8x8_t *this, const RtpPacketInfos *a2, Timestamp a3)
{
  if (!a2->var0.var0)
  {
    {
      goto LABEL_88;
    }

    goto LABEL_9;
  }

  if (a2->var0.var0->var0.var1 != *&a2->var0.var0->var1.var0[16])
  {
LABEL_3:
    if ((a3.var0 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
    {
      v5 = a2;
      v6 = (*(**this + 16))();
      a2 = v5;
      a3.var0 = v6;
    }

    var0 = a2->var0.var0;
    if (a2->var0.var0)
    {
      var1 = var0->var0.var1;
      v56 = *&var0->var1.var0[16];
      if (var1 == v56)
      {
        goto LABEL_84;
      }

      goto LABEL_17;
    }

    {
      v54 = a2;
      a2 = v54;
      if (v55)
      {
        operator new();
      }
    }

    var1 = *webrtc::RtpPacketInfos::empty_entries(void)::value;
    if (!a2->var0.var0)
    {
      {
        operator new();
      }

      v56 = *(webrtc::RtpPacketInfos::empty_entries(void)::value + 1);
      if (var1 != v56)
      {
        goto LABEL_17;
      }

LABEL_84:
      v51.var0 = a3.var0;

      webrtc::SourceTracker::PruneEntries(this, v51);
      return;
    }

    v56 = *&a2->var0.var0->var1.var0[16];
    if (var1 == v56)
    {
      goto LABEL_84;
    }

LABEL_17:
    v9 = *(var1 + 1);
    v10 = *(var1 + 2);
    if (v9 == v10)
    {
LABEL_51:
      v31 = *var1;
      v32 = this[5];
      if (!*&v32)
      {
        goto LABEL_77;
      }

      v33 = 0x99B75E94FD069879 * v31;
      v34 = vcnt_s8(v32);
      v34.i16[0] = vaddlv_u8(v34);
      if (v34.u32[0] > 1uLL)
      {
        v35 = 0x99B75E94FD069879 * v31;
        if (v33 >= *&v32)
        {
          v35 = v33 % *&v32;
        }
      }

      else
      {
        v35 = (*&v32 - 1) & v33;
      }

      v36 = *(*&this[4] + 8 * v35);
      if (!v36 || (v37 = *v36) == 0)
      {
LABEL_77:
        operator new();
      }

      if (v34.u32[0] < 2uLL)
      {
        v38 = *&v32 - 1;
        while (1)
        {
          v42 = v37[1];
          if (v42 == v33)
          {
            if (*(v37 + 4))
            {
              v41 = 0;
            }

            else
            {
              v41 = *(v37 + 5) == v31;
            }

            if (v41)
            {
              goto LABEL_81;
            }
          }

          else if ((v42 & v38) != v35)
          {
            goto LABEL_77;
          }

          v37 = *v37;
          if (!v37)
          {
            goto LABEL_77;
          }
        }
      }

      while (1)
      {
        v40 = v37[1];
        if (v40 == v33)
        {
          if (*(v37 + 4))
          {
            v39 = 0;
          }

          else
          {
            v39 = *(v37 + 5) == v31;
          }

          if (v39)
          {
LABEL_81:
            v46 = this[2];
            v47 = v37[3];
            if (v46 != v47)
            {
              v48 = v47[1];
              if (v48 != v46)
              {
                v49 = *v47;
                *(v49 + 8) = v48;
                *v48 = v49;
                v50 = *v46;
                *(v50 + 8) = v47;
                *v47 = v50;
                *v46 = v47;
                v47[1] = v46;
              }
            }

            if (!*&this[3])
            {
              goto LABEL_87;
            }

            v43 = this[2];
            *(*&v43 + 24) = a3;
            *(*&v43 + 32) = *(var1 + 24);
            v44 = *(var1 + 14);
            *(*&v43 + 49) = *(var1 + 65);
            *(*&v43 + 40) = v44;
            v45 = *(var1 + 11);
            *(*&v43 + 80) = *(var1 + 96);
            *(*&v43 + 72) = v45;
            *(*&v43 + 88) = var1[8];
            var1 += 26;
            if (var1 == v56)
            {
              goto LABEL_84;
            }

            goto LABEL_17;
          }
        }

        else
        {
          if (v40 >= *&v32)
          {
            v40 %= *&v32;
          }

          if (v40 != v35)
          {
            goto LABEL_77;
          }
        }

        v37 = *v37;
        if (!v37)
        {
          goto LABEL_77;
        }
      }
    }

LABEL_18:
    v11 = *v9;
    v12 = this[5];
    if (!*&v12)
    {
      goto LABEL_44;
    }

    v13 = 1 - 0x6648A16B02F96787 * v11;
    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = 1 - 0x6648A16B02F96787 * v11;
      if (v13 >= *&v12)
      {
        v15 = v13 % *&v12;
      }
    }

    else
    {
      v15 = (*&v12 - 1) & v13;
    }

    v16 = *(*&this[4] + 8 * v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_44:
      operator new();
    }

    if (v14.u32[0] < 2uLL)
    {
      v18 = *&v12 - 1;
      while (1)
      {
        v20 = v17[1];
        if (v20 == v13)
        {
          if (*(v17 + 4) == 1 && *(v17 + 5) == v11)
          {
            goto LABEL_48;
          }
        }

        else if ((v20 & v18) != v15)
        {
          goto LABEL_44;
        }

        v17 = *v17;
        if (!v17)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v22 = v17[1];
      if (v22 == v13)
      {
        if (*(v17 + 4) == 1 && *(v17 + 5) == v11)
        {
LABEL_48:
          v26 = this[2];
          v27 = v17[3];
          if (v26 != v27)
          {
            v28 = v27[1];
            if (v28 != v26)
            {
              v29 = *v27;
              *(v29 + 8) = v28;
              *v28 = v29;
              v30 = *v26;
              *(v30 + 8) = v27;
              *v27 = v30;
              *v26 = v27;
              v27[1] = v26;
            }
          }

          if (this[3])
          {
            v23 = this[2];
            *(*&v23 + 24) = a3;
            *(*&v23 + 32) = *(var1 + 24);
            v24 = *(var1 + 14);
            *(*&v23 + 49) = *(var1 + 65);
            *(*&v23 + 40) = v24;
            v25 = *(var1 + 11);
            *(*&v23 + 80) = *(var1 + 96);
            *(*&v23 + 72) = v25;
            *(*&v23 + 88) = var1[8];
            if (++v9 == v10)
            {
              goto LABEL_51;
            }

            goto LABEL_18;
          }

LABEL_87:
          __break(1u);
LABEL_88:
          v52 = a2;
          a2 = v52;
          if (v53)
          {
            operator new();
          }

LABEL_9:
          if (*webrtc::RtpPacketInfos::empty_entries(void)::value == *(webrtc::RtpPacketInfos::empty_entries(void)::value + 1))
          {
            return;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (v22 >= *&v12)
        {
          v22 %= *&v12;
        }

        if (v22 != v15)
        {
          goto LABEL_44;
        }
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_44;
      }
    }
  }
}

void webrtc::SourceTracker::PruneEntries(int8x8_t *this, Timestamp a2)
{
  if (a2.var0 < 10000000)
  {
    return;
  }

  v3 = a2.var0 == 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : a2.var0 - 10000000;
  v4 = this[3];
  if (!*&v4)
  {
    return;
  }

  v5 = this + 6;
  while (1)
  {
    v6 = this[1];
    if (v6[3] >= v3)
    {
      return;
    }

    v9 = this[5];
    if (v9)
    {
      v10 = *(v6 + 5);
      v11 = *(v6 + 4);
      v12 = v11 - 0x6648A16B02F96787 * v10;
      v13 = vcnt_s8(v9);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = v11 - 0x6648A16B02F96787 * v10;
        if (v12 >= *&v9)
        {
          v14 = v12 % *&v9;
        }
      }

      else
      {
        v14 = v12 & (*&v9 - 1);
      }

      v15 = this[4];
      v16 = *(*&v15 + 8 * v14);
      if (v16)
      {
        break;
      }
    }

LABEL_8:
    v8 = *v6;
    v7 = v6[1];
    *(v8 + 8) = v7;
    *v7 = v8;
    this[3] = (*&v4 - 1);
    operator delete(v6);
    v4 = this[3];
    if (!*&v4)
    {
      return;
    }
  }

  v17 = *v16;
  if (!*v16)
  {
    v6 = this[1];
    goto LABEL_8;
  }

  v18 = *&v9 - 1;
  if (v13.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v17[1];
      if (*&v20 == v12)
      {
        if (v17[2].i32[0] == v11 && v17[2].i32[1] == v10)
        {
          goto LABEL_37;
        }
      }

      else if ((*&v20 & v18) != v14)
      {
        goto LABEL_64;
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_64;
      }
    }
  }

  while (1)
  {
    v22 = v17[1];
    if (v22 == v12)
    {
      break;
    }

    if (v22 >= *&v9)
    {
      v22 %= *&v9;
    }

    if (v22 != v14)
    {
      goto LABEL_64;
    }

LABEL_31:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_64;
    }
  }

  if (v17[2].i32[0] != v11 || v17[2].i32[1] != v10)
  {
    goto LABEL_31;
  }

LABEL_37:
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v9)
    {
      v12 %= *&v9;
    }
  }

  else
  {
    v12 &= v18;
  }

  v23 = *(*&v15 + 8 * v12);
  do
  {
    v24 = v23;
    v23 = *v23;
  }

  while (v23 != v17);
  if (v24 == v5)
  {
    goto LABEL_54;
  }

  v25 = v24[1];
  if (v13.u32[0] > 1uLL)
  {
    if (v25 >= *&v9)
    {
      v25 %= *&v9;
    }
  }

  else
  {
    v25 &= v18;
  }

  if (v25 != v12)
  {
LABEL_54:
    if (!*v17)
    {
      goto LABEL_55;
    }

    v26 = *(*v17 + 8);
    if (v13.u32[0] > 1uLL)
    {
      if (v26 >= *&v9)
      {
        v26 %= *&v9;
      }
    }

    else
    {
      v26 &= v18;
    }

    if (v26 != v12)
    {
LABEL_55:
      *(*&v15 + 8 * v12) = 0;
    }
  }

  v27 = *v17;
  if (*v17)
  {
    v28 = *(*&v27 + 8);
    if (v13.u32[0] > 1uLL)
    {
      if (v28 >= *&v9)
      {
        v28 %= *&v9;
      }
    }

    else
    {
      v28 &= v18;
    }

    if (v28 != v12)
    {
      *(*&v15 + 8 * v28) = v24;
      v27 = *v17;
    }
  }

  *v24 = v27;
  *v17 = 0;
  --*&this[7];
  operator delete(v17);
  v4 = this[3];
LABEL_64:
  if (v4)
  {
    v6 = this[1];
    goto LABEL_8;
  }

  __break(1u);
}

double webrtc::SourceTracker::GetSources@<D0>(int8x8_t *this@<X0>, void *a2@<X8>)
{
  v4.var0 = (*(**this + 16))(*this);
  webrtc::SourceTracker::PruneEntries(this, v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this[2] != &this[1])
  {
    v6 = a2[2];
    if (v6)
    {
      goto LABEL_13;
    }

    v7 = 1 - 0x3333333333333333 * (-*a2 >> 4);
    if (v7 > 0x333333333333333)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a2) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    v9 = v8 >= 0x199999999999999 ? 0x333333333333333 : v7;
    if (!v9)
    {
LABEL_13:
      __break(1u);
    }

    else if (v9 <= 0x333333333333333)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<webrtc::SourceTracker::SourceKey,std::__list_iterator<std::pair<webrtc::SourceTracker::SourceKey const,webrtc::SourceTracker::SourceEntry>,void *>>,std::__unordered_map_hasher<webrtc::SourceTracker::SourceKey,std::__hash_value_type<webrtc::SourceTracker::SourceKey,std::__list_iterator<std::pair<webrtc::SourceTracker::SourceKey const,webrtc::SourceTracker::SourceEntry>,void *>>,webrtc::SourceTracker::SourceKeyHasher,webrtc::SourceTracker::SourceKeyComparator,true>,std::__unordered_map_equal<webrtc::SourceTracker::SourceKey,std::__hash_value_type<webrtc::SourceTracker::SourceKey,std::__list_iterator<std::pair<webrtc::SourceTracker::SourceKey const,webrtc::SourceTracker::SourceEntry>,void *>>,webrtc::SourceTracker::SourceKeyComparator,webrtc::SourceTracker::SourceKeyHasher,true>,std::allocator<std::__hash_value_type<webrtc::SourceTracker::SourceKey,std::__list_iterator<std::pair<webrtc::SourceTracker::SourceKey const,webrtc::SourceTracker::SourceEntry>,void *>>>>::__emplace_unique_key_args<webrtc::SourceTracker::SourceKey,webrtc::SourceTracker::SourceKey const&,std::__list_iterator<std::pair<webrtc::SourceTracker::SourceKey const,webrtc::SourceTracker::SourceEntry>,void *>>(void *result, int a2, unsigned int a3)
{
  v3 = 0x99B75E94FD069879 * a3;
  v4 = v3 + a2;
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 4) == a2 && *(v9 + 5) == a3)
        {
          return result;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_28;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v13 = v9[1];
    if (v13 == v4)
    {
      break;
    }

    if (v13 >= *&v5)
    {
      v13 %= *&v5;
    }

    if (v13 != v7)
    {
      goto LABEL_28;
    }

LABEL_23:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (*(v9 + 4) != a2 || *(v9 + 5) != a3)
  {
    goto LABEL_23;
  }

  return result;
}

void webrtc::rnn_vad::SpectralFeaturesExtractor::SpectralFeaturesExtractor(webrtc::rnn_vad::SpectralFeaturesExtractor *this)
{
  bzero(this, 0x3C0uLL);
  v2 = 0;
  v3 = xmmword_273B90830;
  __asm { FMOV            V2.2D, #0.5 }

  v26 = vdupq_n_s64(0x3FF921FB54442D18uLL);
  v19 = vdupq_n_s64(0x406E000000000000uLL);
  v20 = _Q2;
  v18 = vdupq_n_s64(0x3F61111120000000uLL);
  do
  {
    v29 = v3;
    v9.i64[0] = v3.u32[2];
    v9.i64[1] = v3.u32[3];
    v10 = vcvtq_f64_u64(v9);
    v9.i64[0] = v29.u32[0];
    v9.i64[1] = v29.u32[1];
    v27 = vdivq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_u64(v9), v20), v26), v19);
    __x = vdivq_f64(vmulq_f64(vaddq_f64(v10, v20), v26), v19);
    v23 = sin(__x.f64[1]);
    v11.f64[0] = sin(__x.f64[0]);
    v11.f64[1] = v23;
    v24 = v11;
    __x.f64[0] = sin(v27.f64[1]);
    v12.f64[0] = sin(v27.f64[0]);
    v12.f64[1] = __x.f64[0];
    v28 = vmulq_f64(v24, vmulq_f64(v24, v26));
    __xa = vmulq_f64(v12, vmulq_f64(v12, v26));
    v24.f64[0] = sin(__xa.f64[1]);
    v13.f64[0] = sin(__xa.f64[0]);
    v13.f64[1] = v24.f64[0];
    v25 = v13;
    __xa.f64[0] = sin(v28.f64[1]);
    v14.f64[0] = sin(v28.f64[0]);
    v14.f64[1] = __xa.f64[0];
    *(this + v2) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v25, v18)), vmulq_f64(v14, v18));
    v15.i64[0] = 0x400000004;
    v15.i64[1] = 0x400000004;
    v3 = vaddq_s32(v29, v15);
    v2 += 16;
  }

  while (v2 != 960);
  *(this + 120) = 480;
  *(this + 242) = 0;
  *(this + 122) = pffft_new_setup(480, 0);
  v16 = malloc_type_malloc(4 * (*(this + 120) << (*(this + 242) != 0)) + 64, 0xC0F571D9uLL);
  if (v16)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFC0) + 64;
    *((v16 & 0xFFFFFFFFFFFFFFC0) + 0x38) = v16;
  }

  else
  {
    v17 = 0;
  }

  *(this + 123) = v17;
  operator new();
}

void webrtc::rnn_vad::SpectralFeaturesExtractor::~SpectralFeaturesExtractor(webrtc::rnn_vad::SpectralFeaturesExtractor *this)
{
  v2 = *(this + 127);
  if (v2)
  {
    *(this + 128) = v2;
    operator delete(v2);
  }

  v3 = *(this + 126);
  *(this + 126) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      free(*(v4 - 8));
    }

    MEMORY[0x2743DA540](v3, 0x10C0C4003E0BC0ALL);
  }

  v5 = *(this + 125);
  *(this + 125) = 0;
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      free(*(v6 - 8));
    }

    MEMORY[0x2743DA540](v5, 0x10C0C4003E0BC0ALL);
  }

  v7 = *(this + 124);
  *(this + 124) = 0;
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      free(*(v8 - 8));
    }

    MEMORY[0x2743DA540](v7, 0x10C0C4003E0BC0ALL);
  }

  v9 = *(this + 122);
  v10 = v9[9];
  if (v10)
  {
    free(*(v10 - 8));
  }

  free(v9);
  v11 = *(this + 123);
  if (v11)
  {
    free(*(v11 - 8));
  }
}

BOOL webrtc::rnn_vad::SpectralFeaturesExtractor::CheckSilenceComputeFeatures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6, float *a7, float32x2_t *a8, float *a9)
{
  v16 = 0;
  v17 = (a1 + 1368);
  v18 = *(a1 + 1000);
  v19 = *(*(a1 + 992) + 8);
  if (**(a1 + 992))
  {
    v20 = *(*(a1 + 992) + 8);
  }

  else
  {
    v20 = 0;
  }

  for (i = 1916; i != 956; i -= 4)
  {
    *(v20 + v16) = *(a2 + v16) * *(a1 + v16);
    *(v20 + i) = *(a2 + i) * *(a1 + v16);
    v16 += 4;
  }

  pffft_transform_internal(*(a1 + 976), v19, *(v18 + 8));
  v23 = 0;
  v24 = 0;
  v25 = *(v18 + 8);
  if (!*v18)
  {
    v25 = 0;
  }

  *(v25 + 4) = 0;
  v26 = a1 + 1040;
  if (**(a1 + 1000))
  {
    v27 = *(*(a1 + 1000) + 8);
  }

  else
  {
    v27 = 0;
  }

  *(a1 + 1040) = 0;
  v28 = v27 + 4;
  do
  {
    v29 = v23++;
    *(v26 + 4 * v23) = 0;
    v30 = __const__ZNK6webrtc7rnn_vad18SpectralCorrelator23ComputeCrossCorrelationENS_9ArrayViewIKfLln4711EEES4_NS2_IfLl20EEE_kOpusScaleNumBins24kHz20ms[v29];
    if (v30 >= 1)
    {
      v31 = *(a1 + 1016);
      v32 = (*(a1 + 1024) - v31) >> 2;
      v33 = (v31 + 4 * v24);
      v34 = (v28 + 8 * v24);
      v35 = v32 >= v24;
      v36 = v32 - v24;
      if (!v35)
      {
        v36 = 0;
      }

      v37 = 0.0;
      while (v36)
      {
        v38 = (*v34 * *v34) + (*(v34 - 1) * *(v34 - 1));
        v39 = *v33++;
        *(v26 + 4 * v29) = *(v26 + 4 * v29) + (v38 - (v39 * v38));
        v37 = v37 + (v39 * v38);
        *(v26 + 4 * v23) = v37;
        ++v24;
        v34 += 2;
        --v36;
        if (!--v30)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_83;
    }

LABEL_12:
    ;
  }

  while (v23 != 19);
  v40 = *(a1 + 1040) + *(a1 + 1040);
  *(a1 + 1040) = v40;
  v9 = (((((((((((((((((((v40 + 0.0) + *(a1 + 1044)) + *(a1 + 1048)) + *(a1 + 1052)) + *(a1 + 1056)) + *(a1 + 1060)) + *(a1 + 1064)) + *(a1 + 1068)) + *(a1 + 1072)) + *(a1 + 1076)) + *(a1 + 1080)) + *(a1 + 1084)) + *(a1 + 1088)) + *(a1 + 1092)) + *(a1 + 1096)) + *(a1 + 1100)) + *(a1 + 1104)) + *(a1 + 1108)) + *(a1 + 1112)) + *(a1 + 1116);
  if (v9 < 0.04)
  {
    return v9 < 0.04;
  }

  v41 = 0;
  v42 = *(a1 + 1008);
  v43 = *(*(a1 + 992) + 8);
  if (**(a1 + 992))
  {
    v44 = *(*(a1 + 992) + 8);
  }

  else
  {
    v44 = 0;
  }

  for (j = 1916; j != 956; j -= 4)
  {
    *(v44 + v41) = *(a3 + v41) * *(a1 + v41);
    *(v44 + j) = *(a3 + j) * *(a1 + v41);
    v41 += 4;
  }

  pffft_transform_internal(*(a1 + 976), v43, *(v42 + 8));
  v46 = 0;
  v47 = 0;
  v48 = *(v42 + 8);
  if (!*v42)
  {
    v48 = 0;
  }

  *(v48 + 4) = 0;
  v49 = *(*(a1 + 1008) + 8);
  v50 = (a1 + 1120);
  if (!**(a1 + 1008))
  {
    v49 = 0;
  }

  *(a1 + 1120) = 0;
  v51 = v49 + 4;
  while (1)
  {
    v52 = v46++;
    v50[v46] = 0.0;
    v53 = __const__ZNK6webrtc7rnn_vad18SpectralCorrelator23ComputeCrossCorrelationENS_9ArrayViewIKfLln4711EEES4_NS2_IfLl20EEE_kOpusScaleNumBins24kHz20ms[v52];
    if (v53 >= 1)
    {
      break;
    }

LABEL_31:
    if (v46 == 19)
    {
      v62 = 0;
      *v50 = *v50 + *v50;
      v63 = -2.0;
      v64 = -2.0;
      do
      {
        v65 = log10f(*(v26 + v62) + 0.01);
        if ((v63 + -1.5) >= v65)
        {
          v65 = v63 + -1.5;
        }

        if ((v64 + -7.0) >= v65)
        {
          v65 = v64 + -7.0;
        }

        if (v64 < v65)
        {
          v64 = v65;
        }

        if ((v63 + -1.5) >= v65)
        {
          v63 = v63 + -1.5;
        }

        else
        {
          v63 = v65;
        }

        *(&v197 + v62) = v65;
        v62 += 4;
      }

      while (v62 != 80);
      v66 = 0;
      v67 = v64 + -7.0;
      v68 = v63 + -1.5;
      if ((v63 + -1.5) >= -2.0)
      {
        v69 = v63 + -1.5;
      }

      else
      {
        v69 = -2.0;
      }

      if (v67 < v69)
      {
        v67 = v69;
      }

      if (v64 >= v67)
      {
        v70 = v64;
      }

      else
      {
        v70 = v67;
      }

      if (v68 < v67)
      {
        v68 = v67;
      }

      v71 = v70 + -7.0;
      v72 = v68 + -1.5;
      if ((v68 + -1.5) < -2.0)
      {
        v72 = -2.0;
      }

      if (v71 < v72)
      {
        v71 = v72;
      }

      v73 = v17[55];
      v74 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *(a1 + 1296), v197), v17[1], v198), *(a1 + 1472), v199), v17[12], v200), *(a1 + 1648), v201), v17[23], v202), *(a1 + 1824), v203), v17[34], v204), *(a1 + 2000), v205), v17[45], v206), *(a1 + 2176), v207), v17[56], v208), *(a1 + 2352), v209), v17[67], v210), *(a1 + 2528), v211), v17[78], v212), *(a1 + 2704), v213), v17[89], v214), *(a1 + 2880), v215), v17[100], v216), *(a1 + 3056), v67), v17[111], v71);
      v75 = ((((((((v197 * *(a1 + 1360)) + 0.0) + (v198 * *(a1 + 1448))) + (v199 * *(a1 + 1536))) + (v200 * *(a1 + 1624))) + (v201 * *(a1 + 1712))) + (v202 * *(a1 + 1800))) + (v203 * *(a1 + 1888))) + (v204 * *(a1 + 1976));
      v76 = ((((((((v197 * *(a1 + 1364)) + 0.0) + (v198 * *(a1 + 1452))) + (v199 * *(a1 + 1540))) + (v200 * *(a1 + 1628))) + (v201 * *(a1 + 1716))) + (v202 * *(a1 + 1804))) + (v203 * *(a1 + 1892))) + (v204 * *(a1 + 1980));
      v77 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *(a1 + 1312), v197), v17[2], v198), *(a1 + 1488), v199), v17[13], v200), *(a1 + 1664), v201), v17[24], v202), *(a1 + 1840), v203), v17[35], v204), *(a1 + 2016), v205), v17[46], v206), *(a1 + 2192), v207), v17[57], v208), *(a1 + 2368), v209), v17[68], v210), *(a1 + 2544), v211), v17[79], v212), *(a1 + 2720), v213), v17[90], v214), *(a1 + 2896), v215), v17[101], v216), *(a1 + 3072), v67), v17[112], v71);
      v78 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *(a1 + 1328), v197), v17[3], v198), *(a1 + 1504), v199), v17[14], v200), *(a1 + 1680), v201), v17[25], v202), *(a1 + 1856), v203), v17[36], v204), *(a1 + 2032), v205), v17[47], v206), *(a1 + 2208), v207), v17[58], v208), *(a1 + 2384), v209), v17[69], v210), *(a1 + 2560), v211), v17[80], v212), *(a1 + 2736), v213), v17[91], v214), *(a1 + 2912), v215), v17[102], v216), *(a1 + 3088), v67), v17[113], v71);
      v79 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *(a1 + 1344), v197), v17[4], v198), *(a1 + 1520), v199), v17[15], v200), *(a1 + 1696), v201), v17[26], v202), *(a1 + 1872), v203), v17[37], v204), *(a1 + 2048), v205), v17[48], v206), *(a1 + 2224), v207), v17[59], v208), *(a1 + 2400), v209), v17[70], v210), *(a1 + 2576), v211), v17[81], v212), *(a1 + 2752), v213), v17[92], v214), *(a1 + 2928), v215), v17[103], v216), *(a1 + 3104), v67), v17[114], v71);
      v80 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *(a1 + 1280), v197), *v17, v198), *(a1 + 1456), v199), v17[11], v200), *(a1 + 1632), v201), v17[22], v202), *(a1 + 1808), v203), v17[33], v204), *(a1 + 1984), v205), v17[44], v206), *(a1 + 2160), v207);
      v217 = v67;
      v218 = v71;
      v81 = vdupq_n_s32(0x3E9A5FB2u);
      v82 = vmulq_f32(v74, v81);
      v83 = vmulq_f32(v77, v81);
      v84 = vmulq_f32(v78, v81);
      v85 = vmulq_f32(v79, v81);
      v86 = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v80, v73, v208), *(a1 + 2336), v209), v17[66], v210), *(a1 + 2512), v211), v17[77], v212), *(a1 + 2688), v213), v17[88], v214), *(a1 + 2864), v215), v17[99], v216), *(a1 + 3040), v67), v17[110], v71), v81);
      v87 = ((((((((((((((v75 + (v205 * *(a1 + 2064))) + (v206 * *(a1 + 2152))) + (v207 * *(a1 + 2240))) + (v208 * *(a1 + 2328))) + (v209 * *(a1 + 2416))) + (v210 * *(a1 + 2504))) + (v211 * *(a1 + 2592))) + (v212 * *(a1 + 2680))) + (v213 * *(a1 + 2768))) + (v214 * *(a1 + 2856))) + (v215 * *(a1 + 2944))) + (v216 * *(a1 + 3032))) + (v67 * *(a1 + 3120))) + (v71 * *(a1 + 3208))) * 0.30151;
      v88 = ((((((((((((((v76 + (v205 * *(a1 + 2068))) + (v206 * *(a1 + 2156))) + (v207 * *(a1 + 2244))) + (v208 * *(a1 + 2332))) + (v209 * *(a1 + 2420))) + (v210 * *(a1 + 2508))) + (v211 * *(a1 + 2596))) + (v212 * *(a1 + 2684))) + (v213 * *(a1 + 2772))) + (v214 * *(a1 + 2860))) + (v215 * *(a1 + 2948))) + (v216 * *(a1 + 3036))) + (v67 * *(a1 + 3124))) + (v71 * *(a1 + 3212))) * 0.30151;
      v89 = vadd_f32(*v86.i8, 0xC0800000C1400000);
      *&v90 = v89;
      *(&v90 + 1) = vextq_s8(v86, v86, 8uLL).u64[0];
      v91 = a1 + 3220;
      v92 = a1 + 3220 + 88 * *(a1 + 3216);
      *v92 = v90;
      *(v92 + 16) = v82;
      *(v92 + 32) = v83;
      *(v92 + 48) = v84;
      *(v92 + 64) = v85;
      *(v92 + 80) = v87;
      *(v92 + 84) = v88;
      v93 = *(a1 + 3216);
      if (v93 == 7)
      {
        v94 = 0;
      }

      else
      {
        v94 = v93 + 1;
      }

      *(a1 + 3216) = v94;
      v95 = 22 * v94 - 44;
      v96 = v94 - 2;
      do
      {
        v97 = (v91 + 4 * (v95 + 176 * (v96 >> 31)));
        v98 = (((((((((((((((((v89.f32[0] - *v97) * (v89.f32[0] - *v97)) + 0.0) + ((v89.f32[1] - v97[1]) * (v89.f32[1] - v97[1]))) + ((*&v86.i32[2] - v97[2]) * (*&v86.i32[2] - v97[2]))) + ((*&v86.i32[3] - v97[3]) * (*&v86.i32[3] - v97[3]))) + ((*v82.i32 - v97[4]) * (*v82.i32 - v97[4]))) + ((*&v82.i32[1] - v97[5]) * (*&v82.i32[1] - v97[5]))) + ((*&v82.i32[2] - v97[6]) * (*&v82.i32[2] - v97[6]))) + ((*&v82.i32[3] - v97[7]) * (*&v82.i32[3] - v97[7]))) + ((v83.f32[0] - v97[8]) * (v83.f32[0] - v97[8]))) + ((v83.f32[1] - v97[9]) * (v83.f32[1] - v97[9]))) + ((v83.f32[2] - v97[10]) * (v83.f32[2] - v97[10]))) + ((v83.f32[3] - v97[11]) * (v83.f32[3] - v97[11]))) + ((v84.f32[0] - v97[12]) * (v84.f32[0] - v97[12]))) + ((v84.f32[1] - v97[13]) * (v84.f32[1] - v97[13]))) + ((v84.f32[2] - v97[14]) * (v84.f32[2] - v97[14]))) + ((v84.f32[3] - v97[15]) * (v84.f32[3] - v97[15]));
        *&v219[v66++] = (((((v98 + ((v85.f32[0] - v97[16]) * (v85.f32[0] - v97[16]))) + ((v85.f32[1] - v97[17]) * (v85.f32[1] - v97[17]))) + ((v85.f32[2] - v97[18]) * (v85.f32[2] - v97[18]))) + ((v85.f32[3] - v97[19]) * (v85.f32[3] - v97[19]))) + ((v87 - v97[20]) * (v87 - v97[20]))) + ((v88 - v97[21]) * (v88 - v97[21]));
        v95 -= 22;
        --v96;
      }

      while (v66 != 7);
      v193 = v83;
      v194 = v84;
      v195 = v85;
      memmove((a1 + 3924), (a1 + 3956), 0xA4uLL);
      v99 = 0;
      v100 = 0;
      v101 = v219[1];
      *(a1 + 4116) = v219[0];
      *(a1 + 4088) = v101;
      v102 = v219[3];
      *(a1 + 4060) = v219[2];
      *(a1 + 4032) = v102;
      v103 = v219[5];
      *(a1 + 4004) = v219[4];
      *(a1 + 3976) = v103;
      *(a1 + 3948) = v219[6];
      *a4 = vextq_s8(v82, v82, 8uLL).u64[0];
      *(a4 + 8) = v193;
      *(a4 + 24) = v194;
      *(a4 + 40) = v195;
      *(a4 + 56) = v87;
      *(a4 + 60) = v88;
      v104 = *(a1 + 3216);
      v105 = vadd_s32(vdup_n_s32(v104), 0xFFFFFFFEFFFFFFFFLL);
      v106 = vmul_s32(vadd_s32((*&vshr_n_u32(v105, 0x1CuLL) & 0xFFFFFFF8FFFFFFF8), v105), 0x1600000016);
      v107 = (v91 + 4 * v106.i32[0]);
      v108 = (v91 + 4 * v106.i32[1]);
      v109 = (v91 + 4 * (22 * (v104 - 3 + 8 * ((v104 - 3) >> 31))));
      *a5 = (*v107 + *v108) + *v109;
      *a6 = *v107 - *v109;
      *a7 = (*v107 + (*v108 * -2.0)) + *v109;
      a5[1] = (v107[1] + v108[1]) + v109[1];
      a6[1] = v107[1] - v109[1];
      a7[1] = (v107[1] + (v108[1] * -2.0)) + v109[1];
      a5[2] = (v107[2] + v108[2]) + v109[2];
      a6[2] = v107[2] - v109[2];
      a7[2] = (v107[2] + (v108[2] * -2.0)) + v109[2];
      a5[3] = (v107[3] + v108[3]) + v109[3];
      a6[3] = v107[3] - v109[3];
      a7[3] = (v107[3] + (v108[3] * -2.0)) + v109[3];
      a5[4] = (v107[4] + v108[4]) + v109[4];
      a6[4] = v107[4] - v109[4];
      a7[4] = (v107[4] + (v108[4] * -2.0)) + v109[4];
      a5[5] = (v107[5] + v108[5]) + v109[5];
      a6[5] = v107[5] - v109[5];
      a7[5] = (v107[5] + (v108[5] * -2.0)) + v109[5];
      if (**(a1 + 1000))
      {
        v110 = *(*(a1 + 1000) + 8);
      }

      else
      {
        v110 = 0;
      }

      v111 = *(*(a1 + 1008) + 8);
      if (!**(a1 + 1008))
      {
        v111 = 0;
      }

      v112 = a1 + 1200;
      *(a1 + 1200) = 0;
      v113 = v111 + 4;
      v114 = v110 + 4;
      v22 = a9;
      while (1)
      {
        v115 = v99++;
        *(v112 + 4 * v99) = 0;
        v116 = __const__ZNK6webrtc7rnn_vad18SpectralCorrelator23ComputeCrossCorrelationENS_9ArrayViewIKfLln4711EEES4_NS2_IfLl20EEE_kOpusScaleNumBins24kHz20ms[v115];
        if (v116 >= 1)
        {
          break;
        }

LABEL_75:
        if (v99 == 19)
        {
          goto LABEL_84;
        }
      }

      v117 = *(a1 + 1016);
      v118 = (*(a1 + 1024) - v117) >> 2;
      v119 = (v117 + 4 * v100);
      v120 = v118 - v100;
      if (v118 < v100)
      {
        v120 = 0;
      }

      v121 = 8 * v100;
      v122 = (v113 + v121);
      v123 = (v114 + v121);
      v124 = 0.0;
      while (v120)
      {
        v125 = (*v123 * *v122) + (*(v123 - 1) * *(v122 - 1));
        v126 = *v119++;
        *(v112 + 4 * v115) = *(v112 + 4 * v115) + (v125 - (v126 * v125));
        v124 = v124 + (v126 * v125);
        *(v112 + 4 * v99) = v124;
        ++v100;
        --v120;
        v122 += 2;
        v123 += 2;
        if (!--v116)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_83;
    }
  }

  v54 = *(a1 + 1016);
  v55 = (*(a1 + 1024) - v54) >> 2;
  v56 = (v54 + 4 * v47);
  v57 = (v51 + 8 * v47);
  v35 = v55 >= v47;
  v58 = v55 - v47;
  if (!v35)
  {
    v58 = 0;
  }

  v59 = 0.0;
  while (v58)
  {
    v60 = (*v57 * *v57) + (*(v57 - 1) * *(v57 - 1));
    v61 = *v56++;
    v50[v52] = v50[v52] + (v60 - (v61 * v60));
    v59 = v59 + (v61 * v60);
    v50[v46] = v59;
    ++v47;
    v57 += 2;
    --v58;
    if (!--v53)
    {
      goto LABEL_31;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  v127.f32[0] = *(a1 + 1200) + *(a1 + 1200);
  v128 = vdupq_n_s32(0x3A83126Fu);
  v127.i32[1] = *(a1 + 1204);
  v127.i64[1] = *(a1 + 1208);
  *(a1 + 1200) = vdivq_f32(v127, vsqrtq_f32(vmlaq_f32(v128, *(a1 + 1120), *(a1 + 1040))));
  *(a1 + 1216) = vdivq_f32(*(a1 + 1216), vsqrtq_f32(vmlaq_f32(v128, *(a1 + 1136), *(a1 + 1056))));
  *(a1 + 1232) = vdivq_f32(*(a1 + 1232), vsqrtq_f32(vmlaq_f32(v128, *(a1 + 1152), *(a1 + 1072))));
  *(a1 + 1248) = vdivq_f32(*(a1 + 1248), vsqrtq_f32(vmlaq_f32(v128, *(a1 + 1168), *(a1 + 1088))));
  *(a1 + 1264) = vdivq_f32(*(a1 + 1264), vsqrtq_f32(vmlaq_f32(v128, *(a1 + 1184), *(a1 + 1104))));
  v129 = 1544;
  v130 = a1;
  do
  {
    v131 = (&a8[-193] + v129);
    *v131 = 0.0;
    v132 = (*(a1 + 1200) * v130[320]) + 0.0;
    *v131 = v132;
    v133 = v132 + (*(a1 + 1204) * v130[342]);
    *v131 = v133;
    v134 = v133 + (*(a1 + 1208) * v130[364]);
    *v131 = v134;
    v135 = v134 + (*(a1 + 1212) * v130[386]);
    *v131 = v135;
    v136 = v135 + (*(a1 + 1216) * v130[408]);
    *v131 = v136;
    v137 = v136 + (*(a1 + 1220) * v130[430]);
    *v131 = v137;
    v138 = v137 + (*(a1 + 1224) * v130[452]);
    *v131 = v138;
    v139 = v138 + (*(a1 + 1228) * v130[474]);
    *v131 = v139;
    v140 = v139 + (*(a1 + 1232) * v130[496]);
    *v131 = v140;
    v141 = v140 + (*(a1 + 1236) * v130[518]);
    *v131 = v141;
    v142 = v141 + (*(a1 + 1240) * v130[540]);
    *v131 = v142;
    v143 = v142 + (*(a1 + 1244) * v130[562]);
    *v131 = v143;
    v144 = v143 + (*(a1 + 1248) * v130[584]);
    *v131 = v144;
    v145 = v144 + (*(a1 + 1252) * v130[606]);
    *v131 = v145;
    v146 = v145 + (*(a1 + 1256) * v130[628]);
    *v131 = v146;
    v147 = v146 + (*(a1 + 1260) * v130[650]);
    *v131 = v147;
    v148 = v147 + (*(a1 + 1264) * v130[672]);
    *v131 = v148;
    v149 = v148 + (*(a1 + 1268) * v130[694]);
    *v131 = v149;
    v150 = v149 + (*(a1 + 1272) * v130[716]);
    *v131 = v150;
    *v131 = (v150 + (*(a1 + 1276) * v130[738])) * 0.30151;
    v129 += 4;
    ++v130;
  }

  while (v129 != 1568);
  *a8 = vadd_f32(*a8, 0xBF666666BFA66666);
  v151 = *(a1 + 4088);
  v152 = *(a1 + 4060);
  v153 = *(a1 + 4032);
  v154 = *(a1 + 4004);
  v155 = *(a1 + 3976);
  v156 = *(a1 + 3948);
  v157 = *(a1 + 4084);
  v158 = *(a1 + 4056);
  v159 = *(a1 + 4028);
  v160 = *(a1 + 4000);
  v161 = *(a1 + 3972);
  v162 = *(a1 + 3944);
  v163 = *(a1 + 4052);
  v164 = *(a1 + 4024);
  v165 = *(a1 + 3996);
  v166 = *(a1 + 3968);
  v167 = *(a1 + 3940);
  v168 = *(a1 + 4020);
  v169 = *(a1 + 3992);
  v170 = *(a1 + 3964);
  v171 = *(a1 + 3936);
  v172 = *(a1 + 3988);
  v173 = *(a1 + 3960);
  v174 = *(a1 + 3932);
  v175 = *(a1 + 3956);
  v176 = *(a1 + 3928);
  v177 = *(a1 + 3924);
  v178 = fminf(v156, 3.4028e38);
  if (v162 < v178)
  {
    v178 = *(a1 + 3944);
  }

  if (v167 < v178)
  {
    v178 = *(a1 + 3940);
  }

  if (v171 < v178)
  {
    v178 = *(a1 + 3936);
  }

  if (v174 < v178)
  {
    v178 = *(a1 + 3932);
  }

  if (v176 < v178)
  {
    v178 = *(a1 + 3928);
  }

  if (v177 < v178)
  {
    v178 = *(a1 + 3924);
  }

  v179 = fminf(*(a1 + 4116), 3.4028e38);
  if (v151 >= v179)
  {
    v180 = v179;
  }

  else
  {
    v180 = *(a1 + 4088);
  }

  if (v152 < v180)
  {
    v180 = *(a1 + 4060);
  }

  if (v153 < v180)
  {
    v180 = *(a1 + 4032);
  }

  if (v154 < v180)
  {
    v180 = *(a1 + 4004);
  }

  if (v155 < v180)
  {
    v180 = *(a1 + 3976);
  }

  if (v156 >= v180)
  {
    v156 = v180;
  }

  v181 = v156 + 0.0;
  if (v157 < v179)
  {
    v179 = *(a1 + 4084);
  }

  if (v158 < v179)
  {
    v179 = *(a1 + 4056);
  }

  if (v159 < v179)
  {
    v179 = *(a1 + 4028);
  }

  if (v160 < v179)
  {
    v179 = *(a1 + 4000);
  }

  if (v161 < v179)
  {
    v179 = *(a1 + 3972);
  }

  if (v162 < v179)
  {
    v179 = *(a1 + 3944);
  }

  v182 = v181 + v179;
  v183 = fminf(v151, 3.4028e38);
  if (v157 < v183)
  {
    v183 = *(a1 + 4084);
  }

  if (v163 < v183)
  {
    v183 = *(a1 + 4052);
  }

  if (v164 < v183)
  {
    v183 = *(a1 + 4024);
  }

  if (v165 < v183)
  {
    v183 = *(a1 + 3996);
  }

  if (v166 < v183)
  {
    v183 = *(a1 + 3968);
  }

  if (v167 < v183)
  {
    v183 = *(a1 + 3940);
  }

  v184 = v182 + v183;
  v185 = fminf(v152, 3.4028e38);
  if (v158 < v185)
  {
    v185 = *(a1 + 4056);
  }

  if (v163 < v185)
  {
    v185 = *(a1 + 4052);
  }

  if (v168 < v185)
  {
    v185 = *(a1 + 4020);
  }

  if (v169 < v185)
  {
    v185 = *(a1 + 3992);
  }

  if (v170 < v185)
  {
    v185 = *(a1 + 3964);
  }

  if (v171 < v185)
  {
    v185 = *(a1 + 3936);
  }

  v186 = v184 + v185;
  v187 = fminf(v153, 3.4028e38);
  if (v159 < v187)
  {
    v187 = *(a1 + 4028);
  }

  if (v164 < v187)
  {
    v187 = *(a1 + 4024);
  }

  if (v168 < v187)
  {
    v187 = *(a1 + 4020);
  }

  if (v172 < v187)
  {
    v187 = *(a1 + 3988);
  }

  if (v173 < v187)
  {
    v187 = *(a1 + 3960);
  }

  if (v174 < v187)
  {
    v187 = *(a1 + 3932);
  }

  v188 = v186 + v187;
  v189 = fminf(v154, 3.4028e38);
  if (v160 < v189)
  {
    v189 = *(a1 + 4000);
  }

  if (v165 < v189)
  {
    v189 = *(a1 + 3996);
  }

  if (v169 < v189)
  {
    v189 = *(a1 + 3992);
  }

  if (v172 < v189)
  {
    v189 = *(a1 + 3988);
  }

  if (v175 < v189)
  {
    v189 = *(a1 + 3956);
  }

  if (v176 < v189)
  {
    v189 = *(a1 + 3928);
  }

  v190 = v188 + v189;
  v191 = fminf(v155, 3.4028e38);
  if (v161 < v191)
  {
    v191 = *(a1 + 3972);
  }

  if (v166 < v191)
  {
    v191 = *(a1 + 3968);
  }

  if (v170 < v191)
  {
    v191 = *(a1 + 3964);
  }

  if (v173 < v191)
  {
    v191 = *(a1 + 3960);
  }

  if (v175 < v191)
  {
    v191 = *(a1 + 3956);
  }

  if (v177 < v191)
  {
    v191 = *(a1 + 3924);
  }

  *v22 = ((v178 + (v191 + v190)) * 0.125) + -2.1;
  return v9 < 0.04;
}

void webrtc::rnn_vad::ComputeDctTable(webrtc::rnn_vad *this@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v38 = vdupq_n_s64(0x400921FB54442D18uLL);
  v3 = a2 + 48;
  __asm { FMOV            V0.2D, #22.0 }

  v37 = _Q0;
  do
  {
    v39 = v2 + 0.5;
    v9 = cos(v39 * 0.0 * 3.14159265 / 22.0);
    v31 = cos(v39 * 3.14159265 / 22.0);
    v30 = cos((v39 + v39) * 3.14159265 / 22.0);
    v29 = cos(v39 * 3.0 * 3.14159265 / 22.0);
    v32 = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA47A0, v39), v38), v37);
    __x = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA47B0, v39), v38), v37);
    v24 = cos(__x.f64[1]);
    v10.f64[0] = cos(__x.f64[0]);
    v10.f64[1] = v24;
    v25 = v10;
    __x.f64[0] = cos(v32.f64[1]);
    v11.f64[0] = cos(v32.f64[0]);
    v11.f64[1] = __x.f64[0];
    *(v3 - 32) = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v25);
    v33 = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA47C0, v39), v38), v37);
    __xa = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA47D0, v39), v38), v37);
    v25.f64[0] = cos(__xa.f64[1]);
    v12.f64[0] = cos(__xa.f64[0]);
    v12.f64[1] = v25.f64[0];
    v26 = v12;
    __xa.f64[0] = cos(v33.f64[1]);
    v13.f64[0] = cos(v33.f64[0]);
    v13.f64[1] = __xa.f64[0];
    *(v3 - 16) = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v26);
    v34 = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA47E0, v39), v38), v37);
    __xb = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA47F0, v39), v38), v37);
    v26.f64[0] = cos(__xb.f64[1]);
    v14.f64[0] = cos(__xb.f64[0]);
    v14.f64[1] = v26.f64[0];
    v27 = v14;
    __xb.f64[0] = cos(v34.f64[1]);
    v15.f64[0] = cos(v34.f64[0]);
    v15.f64[1] = __xb.f64[0];
    *v3 = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v27);
    v35 = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA4800, v39), v38), v37);
    __xc = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA4810, v39), v38), v37);
    v27.f64[0] = cos(__xc.f64[1]);
    v16.f64[0] = cos(__xc.f64[0]);
    v16.f64[1] = v27.f64[0];
    v28 = v16;
    __xc.f64[0] = cos(v35.f64[1]);
    v17.f64[0] = cos(v35.f64[0]);
    v17.f64[1] = __xc.f64[0];
    *(v3 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v28);
    v36 = vdivq_f64(vmulq_f64(vmulq_n_f64(xmmword_273BA4820, v39), v38), v37);
    v40 = cos(v36.f64[1]);
    v18.f64[0] = cos(v36.f64[0]);
    v18.f64[1] = v40;
    *(v3 + 32) = vcvt_f32_f64(v18);
    v18.f64[0] = v9 * 0.707106781;
    v19.f64[0] = v30;
    v19.f64[1] = v29;
    v18.f64[1] = v31;
    *(v3 - 48) = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v19);
    ++v2;
    v3 += 88;
  }

  while (v2 != 22);
}

webrtc::SpectrumBuffer *webrtc::SpectrumBuffer::SpectrumBuffer(webrtc::SpectrumBuffer *this, unint64_t a2, unint64_t a3)
{
  *this = a2;
  if (a3)
  {
    if (a3 < 0xFC0FC0FC0FC0FDLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<std::vector<std::array<float,65ul>>>::vector[abi:sn200100](this + 1, a2);
  *(this + 4) = 0;
  v4 = *(this + 1);
  for (i = *(this + 2); v4 != i; v4 += 24)
  {
    v6 = *(v4 + 8);
    if (*v4 != v6)
    {
      bzero(*v4, 260 * ((v6 - *v4 - 260) / 0x104uLL) + 260);
    }
  }

  return this;
}

float webrtc::SpeechProbabilityEstimator::Update(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, float *a6, float a7, float a8)
{
  if (a2 <= 199)
  {
    *a1 = ((*a1 * a2) + a8) / (a2 + 1);
  }

  webrtc::SignalModelEstimator::Update(a1, a3, a4, a5, a6, a7, a8);
  v9 = *(a1 + 12036);
  v10 = *(a1 + 12012);
  if (v9 >= v10)
  {
    v11 = 4.0;
  }

  else
  {
    v11 = 8.0;
  }

  v12 = (tanhf((v9 - v10) * v11) + 1.0) * 0.5;
  v13 = *(a1 + 12044);
  v14 = *(a1 + 12016);
  if (v13 <= v14)
  {
    v15 = 4.0;
  }

  else
  {
    v15 = 8.0;
  }

  v16 = (tanhf((v14 - v13) * v15) + 1.0) * 0.5;
  v17 = *(a1 + 12040);
  v18 = *(a1 + 12020);
  if (v17 >= v18)
  {
    v19 = 4.0;
  }

  else
  {
    v19 = 8.0;
  }

  v20 = 0;
  v21 = *(a1 + 12564) + (((((*(a1 + 12028) * v16) + (*(a1 + 12024) * v12)) + (*(a1 + 12032) * ((tanhf((v17 - v18) * v19) + 1.0) * 0.5))) - *(a1 + 12564)) * 0.1);
  if (v21 > 1.0)
  {
    v21 = 1.0;
  }

  if (v21 >= 0.01)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.01;
  }

  *(a1 + 12564) = v22;
  v52 = vdupq_n_s32(0x4053AAE0u);
  v53 = vdupq_n_s32(0xBEDE5BD9);
  do
  {
    v57 = vmulq_f32(vmulq_f32(*(a1 + 12048 + v20 * 16), v53), v52);
    v54 = exp2f(v57.f32[1]);
    v23.f32[0] = exp2f(v57.f32[0]);
    v23.f32[1] = v54;
    v55 = v23;
    v24 = exp2f(v57.f32[2]);
    v25 = v55;
    v25.f32[2] = v24;
    v56 = v25;
    v26 = exp2f(v57.f32[3]);
    v27 = v56;
    v27.f32[3] = v26;
    v58[v20++] = v27;
  }

  while (v20 != 32);
  v59 = exp2f((*(a1 + 12560) * -0.43429) * 3.3073);
  v28 = (1.0 - v22) / (v22 + 0.0001);
  __asm { FMOV            V2.4S, #1.0 }

  v34 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[1], v28));
  *(a1 + 12568) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[0], v28));
  *(a1 + 12584) = v34;
  v35 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[3], v28));
  *(a1 + 12600) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[2], v28));
  *(a1 + 12616) = v35;
  v36 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[5], v28));
  *(a1 + 12632) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[4], v28));
  *(a1 + 12648) = v36;
  v37 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[7], v28));
  *(a1 + 12664) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[6], v28));
  *(a1 + 12680) = v37;
  v38 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[9], v28));
  *(a1 + 12696) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[8], v28));
  *(a1 + 12712) = v38;
  v39 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[11], v28));
  *(a1 + 12728) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[10], v28));
  *(a1 + 12744) = v39;
  v40 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[13], v28));
  *(a1 + 12760) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[12], v28));
  *(a1 + 12776) = v40;
  v41 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[15], v28));
  *(a1 + 12792) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[14], v28));
  *(a1 + 12808) = v41;
  v42 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[17], v28));
  *(a1 + 12824) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[16], v28));
  *(a1 + 12840) = v42;
  v43 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[19], v28));
  *(a1 + 12856) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[18], v28));
  *(a1 + 12872) = v43;
  v44 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[21], v28));
  *(a1 + 12888) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[20], v28));
  *(a1 + 12904) = v44;
  v45 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[23], v28));
  *(a1 + 12920) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[22], v28));
  *(a1 + 12936) = v45;
  v46 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[25], v28));
  *(a1 + 12952) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[24], v28));
  *(a1 + 12968) = v46;
  v47 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[27], v28));
  *(a1 + 12984) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[26], v28));
  *(a1 + 13000) = v47;
  v48 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[29], v28));
  *(a1 + 13016) = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[28], v28));
  *(a1 + 13032) = v48;
  v49 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[30], v28));
  v50 = vdivq_f32(_Q2, vmlaq_n_f32(_Q2, v58[31], v28));
  *(a1 + 13048) = v49;
  *(a1 + 13064) = v50;
  result = 1.0 / ((v28 * v59) + 1.0);
  *(a1 + 13080) = result;
  return result;
}

uint64_t WebRtcSpl_SqrtFloor(int a1)
{
  v1 = a1 > 0x3FFFFFFF;
  v2 = a1 - 0x40000000;
  if (a1 <= 0x3FFFFFFF)
  {
    v2 = a1;
  }

  v3 = v1 << 16;
  v4 = (v1 << 30) | 0x10000000;
  if (v2 >= v4)
  {
    v5 = (v1 << 30) | 0x10000000;
  }

  else
  {
    v5 = 0;
  }

  if (v2 >= v4)
  {
    v3 = ((a1 > 0x3FFFFFFF) << 16) | 0x8000;
  }

  v6 = v2 - v5;
  v7 = (((v3 >> 15) & 3) << 28) | 0x4000000;
  v8 = v3 | 0x4000;
  if (v6 < v7)
  {
    v7 = 0;
    v8 = v3;
  }

  v9 = v6 - v7;
  v10 = (((v8 >> 14) & 0x1F) << 26) | 0x1000000;
  if (v9 >= v10)
  {
    v8 |= 0x2000u;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 - v10;
  v12 = (v8 << 11) + 0x400000;
  if (v11 >= v12)
  {
    v8 |= 0x1000u;
  }

  else
  {
    v12 = 0;
  }

  v13 = v11 - v12;
  v14 = (v8 << 10) + 0x100000;
  if (v13 >= v14)
  {
    v8 |= 0x800u;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 - v14;
  v16 = (v8 << 9) + 0x40000;
  if (v15 >= v16)
  {
    v8 |= 0x400u;
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 - v16;
  v18 = (v8 << 8) + 0x10000;
  if (v17 >= v18)
  {
    v8 |= 0x200u;
  }

  else
  {
    v18 = 0;
  }

  v19 = v17 - v18;
  v20 = (v8 << 7) + 0x4000;
  if (v19 >= v20)
  {
    v8 |= 0x100u;
  }

  else
  {
    v20 = 0;
  }

  v21 = v19 - v20;
  v22 = (v8 << 6) + 4096;
  if (v21 >= v22)
  {
    v8 |= 0x80u;
  }

  else
  {
    v22 = 0;
  }

  v23 = v21 - v22;
  v24 = 32 * v8 + 1024;
  if (v23 >= v24)
  {
    v8 |= 0x40u;
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 - v24;
  v26 = 16 * v8 + 256;
  if (v25 >= v26)
  {
    v8 |= 0x20u;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 - v26;
  v28 = 8 * v8 + 64;
  if (v27 >= v28)
  {
    v8 |= 0x10u;
  }

  else
  {
    v28 = 0;
  }

  v29 = v27 - v28;
  v30 = 4 * v8 + 16;
  if (v29 >= v30)
  {
    v8 |= 8u;
  }

  else
  {
    v30 = 0;
  }

  v31 = v29 - v30;
  v32 = 2 * v8 + 4;
  if (v31 >= v32)
  {
    v8 |= 4u;
  }

  else
  {
    v32 = 0;
  }

  return (v31 - v32 > v8) | (v8 >> 1);
}

unsigned int *WebRtcSpl_AnalysisQMF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v9 = v8;
  v56 = *MEMORY[0x277D85DE8];
  v10 = v4 >> 1;
  if (v4 >= 2)
  {
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v15 = 0;
    v16 = 0;
    if (v4 < 0x10)
    {
      goto LABEL_8;
    }

    v17 = (v10 - 1) >> 14;
    if (v17)
    {
      goto LABEL_8;
    }

    v16 = (v4 >> 1) & 0x7FF8;
    v15 = 2 * (v10 & 0x7FF8);
    v18 = v54;
    v19 = v55;
    do
    {
      v20 = (v3 + 2 * (2 * v17));
      v57 = vld2q_s16(v20);
      *v18 = vshll_n_s16(*v57.val[0].i8, 0xAuLL);
      v18[1] = vshll_high_n_s16(v57.val[0], 0xAuLL);
      v18 += 2;
      *v19 = vshll_n_s16(*v57.val[1].i8, 0xAuLL);
      v19[1] = vshll_high_n_s16(v57.val[1], 0xAuLL);
      v19 += 2;
      v17 += 8;
    }

    while (v16 != v17);
    if (v10 != v16)
    {
LABEL_8:
      v21 = v10 - v16;
      v22 = v16;
      v23 = &v55[v16];
      v24 = &v54[v22];
      do
      {
        v25 = (v3 + 2 * v15);
        *v24++ = *v25 << 10;
        *v23++ = v25[1] << 10;
        v15 += 2;
        --v21;
      }

      while (v21);
    }

    WebRtcSpl_AllPassQMF(v55, v4 >> 1, v53, WebRtcSpl_kAllPassFilter1, v7);
    result = WebRtcSpl_AllPassQMF(v54, v10, v52, WebRtcSpl_kAllPassFilter2, v9);
    v26 = 0;
    if (v14 < 0x10)
    {
      goto LABEL_15;
    }

    if ((v12 - v13) < 0x10)
    {
      goto LABEL_15;
    }

    v26 = v10 & 0x7FFFFFFFFFFFFFF8;
    v27 = v53;
    v28 = v52;
    v29.i64[0] = 0x40000000400;
    v29.i64[1] = 0x40000000400;
    v30 = v10 & 0x7FFFFFFFFFFFFFF8;
    v31 = v12;
    v32 = v13;
    do
    {
      v33 = *v27;
      v34 = *(v27 + 1);
      v27 += 8;
      v36 = *v28;
      v35 = *(v28 + 1);
      v28 += 8;
      v37 = vaddq_s32(v34, v29);
      v38 = vaddq_s32(v33, v29);
      *v32++ = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v38, v36), 0xBuLL)), vshrq_n_s32(vaddq_s32(v37, v35), 0xBuLL));
      *v31++ = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vsubq_s32(v38, v36), 0xBuLL)), vshrq_n_s32(vsubq_s32(v37, v35), 0xBuLL));
      v30 -= 8;
    }

    while (v30);
    if (v10 != v26)
    {
LABEL_15:
      v39 = v10 - v26;
      v40 = &v12->i16[v26];
      v41 = &v13->i16[v26];
      v42 = v26;
      v43 = &v52[v26];
      v44 = &v53[v42];
      do
      {
        v46 = *v44++;
        v45 = v46;
        v48 = *v43++;
        v47 = v48;
        v49 = v45 + 1024;
        v50 = (v49 + v48) >> 11;
        if (v50 <= -32768)
        {
          v50 = -32768;
        }

        if (v50 >= 0x7FFF)
        {
          LOWORD(v50) = 0x7FFF;
        }

        *v41++ = v50;
        v51 = (v49 - v47) >> 11;
        if (v51 <= -32768)
        {
          v51 = -32768;
        }

        if (v51 >= 0x7FFF)
        {
          LOWORD(v51) = 0x7FFF;
        }

        *v40++ = v51;
        --v39;
      }

      while (v39);
    }
  }

  else
  {
    WebRtcSpl_AllPassQMF(v55, v4 >> 1, v53, WebRtcSpl_kAllPassFilter1, v7);
    return WebRtcSpl_AllPassQMF(v54, v10, v52, WebRtcSpl_kAllPassFilter2, v9);
  }

  return result;
}

unsigned int *WebRtcSpl_AllPassQMF(unsigned int *result, unint64_t a2, unsigned int *a3, unsigned __int16 *a4, _DWORD *a5)
{
  v5 = a5[1];
  v6 = *result - v5;
  v7 = *result >> 31;
  v8 = v5 >> 31;
  if (v7 == v6 >> 31 || v7 == v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = (v6 >> 31) ^ 0x80000000;
  }

  v11 = *a4;
  v12 = *a5 + (v10 >> 16) * v11 + ((v10 * v11) >> 16);
  *a3 = v12;
  if (a2 >= 2)
  {
    v13 = a2 - 1;
    v14 = a3 + 1;
    v15 = result + 1;
    do
    {
      v16 = *v15 - v12;
      v17 = *v15 >> 31;
      v18 = v12 >> 31;
      v19 = v17 == v16 >> 31 || v17 == v18;
      v20 = (v16 >> 31) ^ 0x80000000;
      if (v19)
      {
        v20 = v16;
      }

      v12 = *(v15 - 1) + (v20 >> 16) * v11 + ((v20 * v11) >> 16);
      *v14++ = v12;
      ++v15;
      --v13;
    }

    while (v13);
  }

  v21 = a2 - 1;
  *a5 = result[a2 - 1];
  a5[1] = a3[a2 - 1];
  v22 = a5[3];
  v23 = *a3 - v22;
  v24 = *a3 >> 31;
  v25 = v22 >> 31;
  if (v24 == v23 >> 31 || v24 == v25)
  {
    v27 = v23;
  }

  else
  {
    v27 = (v23 >> 31) ^ 0x80000000;
  }

  v28 = a4[1];
  v29 = a5[2] + (v27 >> 16) * v28 + ((v27 * v28) >> 16);
  *result = v29;
  if (a2 >= 2)
  {
    v30 = result + 1;
    v31 = a3 + 1;
    v32 = a2 - 1;
    do
    {
      v33 = *v31 - v29;
      v34 = *v31 >> 31;
      v35 = v29 >> 31;
      v36 = v34 == v33 >> 31 || v34 == v35;
      v37 = (v33 >> 31) ^ 0x80000000;
      if (v36)
      {
        v37 = v33;
      }

      v29 = *(v31 - 1) + (v37 >> 16) * v28 + ((v37 * v28) >> 16);
      *v30++ = v29;
      ++v31;
      --v32;
    }

    while (v32);
  }

  a5[2] = a3[v21];
  a5[3] = result[v21];
  v38 = a5[5];
  v39 = *result - v38;
  v40 = *result >> 31;
  v41 = v38 >> 31;
  if (v40 == v39 >> 31 || v40 == v41)
  {
    v43 = v39;
  }

  else
  {
    v43 = (v39 >> 31) ^ 0x80000000;
  }

  v44 = a4[2];
  v45 = a5[4] + (v43 >> 16) * v44 + ((v43 * v44) >> 16);
  *a3 = v45;
  if (a2 >= 2)
  {
    v46 = a3 + 1;
    v47 = result + 1;
    v48 = a2 - 1;
    do
    {
      v49 = *v47 - v45;
      v50 = *v47 >> 31;
      v51 = v45 >> 31;
      v52 = v50 == v49 >> 31 || v50 == v51;
      v53 = (v49 >> 31) ^ 0x80000000;
      if (v52)
      {
        v53 = v49;
      }

      v45 = *(v47 - 1) + (v53 >> 16) * v44 + ((v53 * v44) >> 16);
      *v46++ = v45;
      ++v47;
      --v48;
    }

    while (v48);
  }

  a5[4] = result[v21];
  a5[5] = a3[v21];
  return result;
}

unsigned int *WebRtcSpl_SynthesisQMF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v55 = *MEMORY[0x277D85DE8];
  if (!v5)
  {
    return result;
  }

  v9 = v8;
  v10 = v6;
  v11 = v5;
  if (v5 >= 8)
  {
    v12 = v5 & 0xFFFFFFFFFFFFFFF8;
    v13 = v54;
    v14 = v53;
    v15 = v5 & 0xFFFFFFFFFFFFFFF8;
    v16 = v4;
    v17 = result;
    do
    {
      v18 = *v17++;
      v19 = v18;
      v20 = *v16++;
      *v13 = vshlq_n_s32(vaddl_s16(*v20.i8, *v19.i8), 0xAuLL);
      v13[1] = vshlq_n_s32(vaddl_high_s16(v20, v19), 0xAuLL);
      v13 += 2;
      *v14 = vshlq_n_s32(vsubl_s16(*v19.i8, *v20.i8), 0xAuLL);
      v14[1] = vshlq_n_s32(vsubl_high_s16(v19, v20), 0xAuLL);
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    if (v12 == v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  v21 = v5 - v12;
  v22 = &v53[v12];
  v23 = &v54[v12];
  v24 = 2 * v12;
  v25 = &v4->i16[v12];
  v26 = (result + v24);
  do
  {
    v28 = *v26++;
    v27 = v28;
    v29 = *v25++;
    *v23++ = (v29 + v27) << 10;
    *v22++ = (v27 - v29) << 10;
    --v21;
  }

  while (v21);
LABEL_9:
  WebRtcSpl_AllPassQMF(v54, v5, v52, WebRtcSpl_kAllPassFilter2, v7);
  result = WebRtcSpl_AllPassQMF(v53, v11, v51, WebRtcSpl_kAllPassFilter1, v9);
  if (v11 >= 0x10)
  {
    v31 = 0;
    v30 = 0;
    v41 = 4 * (v11 - 1);
    if (v10 + 2 + v41 >= v10 + 2 && v10 + v41 >= v10)
    {
      v42 = (v11 - 1) >> 14;
      if (!v42)
      {
        v31 = v11 & 0x7FF8;
        v30 = 2 * (v11 & 0x7FF8);
        v43 = v51;
        v44 = v52;
        v45.i64[0] = 0x20000000200;
        v45.i64[1] = 0x20000000200;
        do
        {
          v47 = *v43;
          v46 = *(v43 + 1);
          v43 += 8;
          v56.val[0] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v47, v45), 0xAuLL)), vshrq_n_s32(vaddq_s32(v46, v45), 0xAuLL));
          v49 = *v44;
          v48 = *(v44 + 1);
          v44 += 8;
          v56.val[1] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v49, v45), 0xAuLL)), vshrq_n_s32(vaddq_s32(v48, v45), 0xAuLL));
          v50 = (v10 - 2 + 2 * ((2 * v42) | 1));
          vst2q_s16(v50, v56);
          v42 += 8;
        }

        while (v31 != v42);
        if (v31 == v11)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = v11 - v31;
  v33 = v31;
  v34 = &v52[v31];
  v35 = &v51[v33];
  do
  {
    v36 = *v35++;
    v37 = (v36 + 512) >> 10;
    if (v37 <= -32768)
    {
      v37 = -32768;
    }

    if (v37 >= 0x7FFF)
    {
      LOWORD(v37) = 0x7FFF;
    }

    v38 = (v10 + 2 * v30);
    *v38 = v37;
    v39 = *v34++;
    v40 = (v39 + 512) >> 10;
    if (v40 <= -32768)
    {
      v40 = -32768;
    }

    if (v40 >= 0x7FFF)
    {
      LOWORD(v40) = 0x7FFF;
    }

    v30 += 2;
    v38[1] = v40;
    --v32;
  }

  while (v32);
  return result;
}

void *webrtc::SplittingFilter::SplittingFilter(void *this, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = a3;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  if (a2 && a3 == 2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  if (a2 && a3 == 3)
  {
    if (a2 < 0x369D0369D0369ELL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/splitting_filter.cc", 34, "num_bands_ == 2 || num_bands_ == 3", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v8);
    goto LABEL_11;
  }

  return this;
}

void webrtc::SplittingFilter::Analysis(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[7];
  if (v6 == 3)
  {
    v7 = *(a1 + 32);
    if (*(a1 + 40) != v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = *(a2 + 88);
        if (*(a2 + 96) == v12)
        {
          break;
        }

        v13 = a3[8];
        if (0xAAAAAAAAAAAAAAABLL * ((a3[9] - v13) >> 3) <= v11)
        {
          break;
        }

        v14 = *v12;
        if (*(*(a2 + 88) + 8) == v14)
        {
          v14 = 0;
        }

        v15 = *(v14 + v10);
        v16 = v13 + v9;
        v17 = *(v13 + v9);
        if (*(v16 + 8) == v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        webrtc::ThreeBandFilterBank::Analysis(v7 + v8, v15, v18);
        ++v11;
        v7 = *(a1 + 32);
        v10 += 16;
        v9 += 24;
        v8 += 1200;
        if (v11 >= 0x2FC962FC962FC963 * ((*(a1 + 40) - v7) >> 4))
        {
          return;
        }
      }

      __break(1u);
    }
  }

  else if (v6 == 2)
  {

    webrtc::SplittingFilter::TwoBandsAnalysis(a1, a2, a3);
  }
}

unsigned int *webrtc::SplittingFilter::TwoBandsAnalysis(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 1);
  v4 = *(result + 2);
  if (v4 != v3)
  {
    v7 = result;
    v8 = 0;
    v9 = vdupq_n_s32(0x46FFFE00u);
    v10.i64[0] = 0xC7000000C7000000;
    v10.i64[1] = 0xC7000000C7000000;
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v84 = v9;
    while (1)
    {
      v13 = 0;
      v14 = *(*(a2 + 8) + 8 * v8);
      do
      {
        v15 = *v14;
        v16 = v14[1];
        v14 += 2;
        v17 = vbslq_s8(vcgtq_f32(v15, v9), v9, v15);
        v18 = vbslq_s8(vcgtq_f32(v16, v9), v9, v16);
        v19 = vbslq_s8(vcgtq_f32(v10, v17), v10, v17);
        v20 = vbslq_s8(vcgtq_f32(v10, v18), v10, v18);
        *&v85[v13] = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v19, vbslq_s8(v12, v11, v19))), vcvtq_s32_f32(vaddq_f32(v20, vbslq_s8(v12, v11, v20))));
        v13 += 16;
      }

      while (v13 != 640);
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 5) <= v8)
      {
        break;
      }

      result = WebRtcSpl_AnalysisQMF(v85, *(a2 + 24), &v86);
      v12.i64[0] = 0x8000000080000000;
      v12.i64[1] = 0x8000000080000000;
      v11.i64[0] = 0x3F0000003F000000;
      v11.i64[1] = 0x3F0000003F000000;
      v10.i64[0] = 0xC7000000C7000000;
      v10.i64[1] = 0xC7000000C7000000;
      v9 = v84;
      v21 = (*(a3 + 8) + 8 * v8);
      v22 = *v21;
      v23 = vcvtq_f32_s32(vmovl_high_s16(v86));
      v24 = vcvtq_f32_s32(vmovl_s16(*v87.i8));
      v25 = vcvtq_f32_s32(vmovl_high_s16(v87));
      *v22 = vcvtq_f32_s32(vmovl_s16(*v86.i8));
      v22[1] = v23;
      v22[2] = v24;
      v22[3] = v25;
      v26 = vcvtq_f32_s32(vmovl_high_s16(v88));
      v27 = vcvtq_f32_s32(vmovl_s16(*v89.i8));
      v28 = vcvtq_f32_s32(vmovl_high_s16(v89));
      v22[4] = vcvtq_f32_s32(vmovl_s16(*v88.i8));
      v22[5] = v26;
      v22[6] = v27;
      v22[7] = v28;
      v29 = vcvtq_f32_s32(vmovl_high_s16(v90));
      v30 = vcvtq_f32_s32(vmovl_s16(*v91.i8));
      v31 = vcvtq_f32_s32(vmovl_high_s16(v91));
      v22[8] = vcvtq_f32_s32(vmovl_s16(*v90.i8));
      v22[9] = v29;
      v22[10] = v30;
      v22[11] = v31;
      v32 = vcvtq_f32_s32(vmovl_high_s16(v92));
      v33 = vcvtq_f32_s32(vmovl_s16(*v93.i8));
      v34 = vcvtq_f32_s32(vmovl_high_s16(v93));
      v22[12] = vcvtq_f32_s32(vmovl_s16(*v92.i8));
      v22[13] = v32;
      v22[14] = v33;
      v22[15] = v34;
      v35 = vcvtq_f32_s32(vmovl_high_s16(v94));
      v36 = vcvtq_f32_s32(vmovl_s16(*v95.i8));
      v37 = vcvtq_f32_s32(vmovl_high_s16(v95));
      v22[16] = vcvtq_f32_s32(vmovl_s16(*v94.i8));
      v22[17] = v35;
      v22[18] = v36;
      v22[19] = v37;
      v38 = vcvtq_f32_s32(vmovl_high_s16(v96));
      v39 = vcvtq_f32_s32(vmovl_s16(*v97.i8));
      v40 = vcvtq_f32_s32(vmovl_high_s16(v97));
      v22[20] = vcvtq_f32_s32(vmovl_s16(*v96.i8));
      v22[21] = v38;
      v22[22] = v39;
      v22[23] = v40;
      v41 = vcvtq_f32_s32(vmovl_high_s16(v98));
      v42 = vcvtq_f32_s32(vmovl_s16(*v99.i8));
      v43 = vcvtq_f32_s32(vmovl_high_s16(v99));
      v22[24] = vcvtq_f32_s32(vmovl_s16(*v98.i8));
      v22[25] = v41;
      v22[26] = v42;
      v22[27] = v43;
      v44 = vcvtq_f32_s32(vmovl_high_s16(v100));
      v45 = vcvtq_f32_s32(vmovl_s16(*v101.i8));
      v46 = vcvtq_f32_s32(vmovl_high_s16(v101));
      v22[28] = vcvtq_f32_s32(vmovl_s16(*v100.i8));
      v22[29] = v44;
      v22[30] = v45;
      v22[31] = v46;
      v47 = vcvtq_f32_s32(vmovl_high_s16(v102));
      v48 = vcvtq_f32_s32(vmovl_s16(*v103.i8));
      v49 = vcvtq_f32_s32(vmovl_high_s16(v103));
      v22[32] = vcvtq_f32_s32(vmovl_s16(*v102.i8));
      v22[33] = v47;
      v22[34] = v48;
      v22[35] = v49;
      v50 = vcvtq_f32_s32(vmovl_high_s16(v104));
      v51 = vcvtq_f32_s32(vmovl_s16(*v105.i8));
      v52 = vcvtq_f32_s32(vmovl_high_s16(v105));
      v22[36] = vcvtq_f32_s32(vmovl_s16(*v104.i8));
      v22[37] = v50;
      v22[38] = v51;
      v22[39] = v52;
      v53 = v21[*(a3 + 40)];
      v54 = vcvtq_f32_s32(vmovl_high_s16(v106));
      v55 = vcvtq_f32_s32(vmovl_s16(*v107.i8));
      v56 = vcvtq_f32_s32(vmovl_high_s16(v107));
      *v53 = vcvtq_f32_s32(vmovl_s16(*v106.i8));
      v53[1] = v54;
      v53[2] = v55;
      v53[3] = v56;
      v57 = vcvtq_f32_s32(vmovl_high_s16(v108));
      v58 = vcvtq_f32_s32(vmovl_s16(*v109.i8));
      v59 = vcvtq_f32_s32(vmovl_high_s16(v109));
      v53[4] = vcvtq_f32_s32(vmovl_s16(*v108.i8));
      v53[5] = v57;
      v53[6] = v58;
      v53[7] = v59;
      v60 = vcvtq_f32_s32(vmovl_high_s16(v110));
      v61 = vcvtq_f32_s32(vmovl_s16(*v111.i8));
      v62 = vcvtq_f32_s32(vmovl_high_s16(v111));
      v53[8] = vcvtq_f32_s32(vmovl_s16(*v110.i8));
      v53[9] = v60;
      v53[10] = v61;
      v53[11] = v62;
      v63 = vcvtq_f32_s32(vmovl_high_s16(v112));
      v64 = vcvtq_f32_s32(vmovl_s16(*v113.i8));
      v65 = vcvtq_f32_s32(vmovl_high_s16(v113));
      v53[12] = vcvtq_f32_s32(vmovl_s16(*v112.i8));
      v53[13] = v63;
      v53[14] = v64;
      v53[15] = v65;
      v66 = vcvtq_f32_s32(vmovl_high_s16(v114));
      v67 = vcvtq_f32_s32(vmovl_s16(*v115.i8));
      v68 = vcvtq_f32_s32(vmovl_high_s16(v115));
      v53[16] = vcvtq_f32_s32(vmovl_s16(*v114.i8));
      v53[17] = v66;
      v53[18] = v67;
      v53[19] = v68;
      v69 = vcvtq_f32_s32(vmovl_high_s16(v116));
      v70 = vcvtq_f32_s32(vmovl_s16(*v117.i8));
      v71 = vcvtq_f32_s32(vmovl_high_s16(v117));
      v53[20] = vcvtq_f32_s32(vmovl_s16(*v116.i8));
      v53[21] = v69;
      v53[22] = v70;
      v53[23] = v71;
      v72 = vcvtq_f32_s32(vmovl_high_s16(v118));
      v73 = vcvtq_f32_s32(vmovl_s16(*v119.i8));
      v74 = vcvtq_f32_s32(vmovl_high_s16(v119));
      v53[24] = vcvtq_f32_s32(vmovl_s16(*v118.i8));
      v53[25] = v72;
      v53[26] = v73;
      v53[27] = v74;
      v75 = vcvtq_f32_s32(vmovl_high_s16(v120));
      v76 = vcvtq_f32_s32(vmovl_s16(*v121.i8));
      v77 = vcvtq_f32_s32(vmovl_high_s16(v121));
      v53[28] = vcvtq_f32_s32(vmovl_s16(*v120.i8));
      v53[29] = v75;
      v53[30] = v76;
      v53[31] = v77;
      v78 = vcvtq_f32_s32(vmovl_high_s16(v122));
      v79 = vcvtq_f32_s32(vmovl_s16(*v123.i8));
      v80 = vcvtq_f32_s32(vmovl_high_s16(v123));
      v53[32] = vcvtq_f32_s32(vmovl_s16(*v122.i8));
      v53[33] = v78;
      v53[34] = v79;
      v53[35] = v80;
      v81 = vcvtq_f32_s32(vmovl_high_s16(v124));
      v82 = vcvtq_f32_s32(vmovl_s16(*v125.i8));
      v83 = vcvtq_f32_s32(vmovl_high_s16(v125));
      v53[36] = vcvtq_f32_s32(vmovl_s16(*v124.i8));
      v53[37] = v81;
      ++v8;
      v53[38] = v82;
      v53[39] = v83;
      v3 = *(v7 + 1);
      v4 = *(v7 + 2);
      if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 5))
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void webrtc::SplittingFilter::Synthesis(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[7];
  if (v6 == 3)
  {
    if (a3[6])
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = *(a1 + 32);
        if (0x2FC962FC962FC963 * ((*(a1 + 40) - v11) >> 4) <= v10)
        {
          break;
        }

        v12 = a2[8];
        if (0xAAAAAAAAAAAAAAABLL * ((a2[9] - v12) >> 3) <= v10)
        {
          break;
        }

        v13 = a3[11];
        if (a3[12] == v13)
        {
          break;
        }

        v15 = v12 + v9;
        v14 = *(v12 + v9);
        if (*(v15 + 8) == v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v14;
        }

        v17 = *v13;
        if (v13[1] == *v13)
        {
          v17 = 0;
        }

        webrtc::ThreeBandFilterBank::Synthesis(v11 + v7, v16, *(v17 + v8));
        ++v10;
        v9 += 24;
        v8 += 16;
        v7 += 1200;
        if (v10 >= a3[6])
        {
          return;
        }
      }

      __break(1u);
    }
  }

  else if (v6 == 2)
  {

    webrtc::SplittingFilter::TwoBandsSynthesis(a1, a2, a3);
  }
}

unsigned int *webrtc::SplittingFilter::TwoBandsSynthesis(unsigned int *result, void *a2, uint64_t a3)
{
  if (*(a3 + 48))
  {
    v5 = result;
    v6 = 0;
    v7 = vdupq_n_s32(0x46FFFE00u);
    v8.i64[0] = 0xC7000000C7000000;
    v8.i64[1] = 0xC7000000C7000000;
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v29 = v7;
    while (1)
    {
      v11 = 0;
      v12 = a2[1];
      v13 = *(v12 + 8 * v6);
      do
      {
        v14 = *v13;
        v15 = v13[1];
        v13 += 2;
        v16 = vbslq_s8(vcgtq_f32(v14, v7), v7, v14);
        v17 = vbslq_s8(vcgtq_f32(v15, v7), v7, v15);
        v18 = vbslq_s8(vcgtq_f32(v8, v16), v8, v16);
        v19 = vbslq_s8(vcgtq_f32(v8, v17), v8, v17);
        *&v70[v11] = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v18, vbslq_s8(v10, v9, v18))), vcvtq_s32_f32(vaddq_f32(v19, vbslq_s8(v10, v9, v19))));
        v11 += 16;
      }

      while (v11 != 320);
      v20 = 0;
      v21 = *(v12 + 8 * a2[5] + 8 * v6);
      do
      {
        v22 = *v21;
        v23 = v21[1];
        v21 += 2;
        v24 = vbslq_s8(vcgtq_f32(v22, v7), v7, v22);
        v25 = vbslq_s8(vcgtq_f32(v23, v7), v7, v23);
        v26 = vbslq_s8(vcgtq_f32(v8, v24), v8, v24);
        v27 = vbslq_s8(vcgtq_f32(v8, v25), v8, v25);
        *&v70[v20 + 320] = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v26, vbslq_s8(v10, v9, v26))), vcvtq_s32_f32(vaddq_f32(v27, vbslq_s8(v10, v9, v27))));
        v20 += 16;
      }

      while (v20 != 320);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v5 + 2) - *(v5 + 1)) >> 5) <= v6)
      {
        break;
      }

      result = WebRtcSpl_SynthesisQMF(v70, &v71, a2[4]);
      v10.i64[0] = 0x8000000080000000;
      v10.i64[1] = 0x8000000080000000;
      v9.i64[0] = 0x3F0000003F000000;
      v9.i64[1] = 0x3F0000003F000000;
      v8.i64[0] = 0xC7000000C7000000;
      v8.i64[1] = 0xC7000000C7000000;
      v7 = v29;
      v28 = *(*(a3 + 8) + 8 * v6);
      *v28 = vcvtq_f32_s32(vmovl_s16(*v30.i8));
      v28[1] = vcvtq_f32_s32(vmovl_high_s16(v30));
      v28[2] = vcvtq_f32_s32(vmovl_s16(*v31.i8));
      v28[3] = vcvtq_f32_s32(vmovl_high_s16(v31));
      v28[4] = vcvtq_f32_s32(vmovl_s16(*v32.i8));
      v28[5] = vcvtq_f32_s32(vmovl_high_s16(v32));
      v28[6] = vcvtq_f32_s32(vmovl_s16(*v33.i8));
      v28[7] = vcvtq_f32_s32(vmovl_high_s16(v33));
      v28[8] = vcvtq_f32_s32(vmovl_s16(*v34.i8));
      v28[9] = vcvtq_f32_s32(vmovl_high_s16(v34));
      v28[10] = vcvtq_f32_s32(vmovl_s16(*v35.i8));
      v28[11] = vcvtq_f32_s32(vmovl_high_s16(v35));
      v28[12] = vcvtq_f32_s32(vmovl_s16(*v36.i8));
      v28[13] = vcvtq_f32_s32(vmovl_high_s16(v36));
      v28[14] = vcvtq_f32_s32(vmovl_s16(*v37.i8));
      v28[15] = vcvtq_f32_s32(vmovl_high_s16(v37));
      v28[16] = vcvtq_f32_s32(vmovl_s16(*v38.i8));
      v28[17] = vcvtq_f32_s32(vmovl_high_s16(v38));
      v28[18] = vcvtq_f32_s32(vmovl_s16(*v39.i8));
      v28[19] = vcvtq_f32_s32(vmovl_high_s16(v39));
      v28[20] = vcvtq_f32_s32(vmovl_s16(*v40.i8));
      v28[21] = vcvtq_f32_s32(vmovl_high_s16(v40));
      v28[22] = vcvtq_f32_s32(vmovl_s16(*v41.i8));
      v28[23] = vcvtq_f32_s32(vmovl_high_s16(v41));
      v28[24] = vcvtq_f32_s32(vmovl_s16(*v42.i8));
      v28[25] = vcvtq_f32_s32(vmovl_high_s16(v42));
      v28[26] = vcvtq_f32_s32(vmovl_s16(*v43.i8));
      v28[27] = vcvtq_f32_s32(vmovl_high_s16(v43));
      v28[28] = vcvtq_f32_s32(vmovl_s16(*v44.i8));
      v28[29] = vcvtq_f32_s32(vmovl_high_s16(v44));
      v28[30] = vcvtq_f32_s32(vmovl_s16(*v45.i8));
      v28[31] = vcvtq_f32_s32(vmovl_high_s16(v45));
      v28[32] = vcvtq_f32_s32(vmovl_s16(*v46.i8));
      v28[33] = vcvtq_f32_s32(vmovl_high_s16(v46));
      v28[34] = vcvtq_f32_s32(vmovl_s16(*v47.i8));
      v28[35] = vcvtq_f32_s32(vmovl_high_s16(v47));
      v28[36] = vcvtq_f32_s32(vmovl_s16(*v48.i8));
      v28[37] = vcvtq_f32_s32(vmovl_high_s16(v48));
      v28[38] = vcvtq_f32_s32(vmovl_s16(*v49.i8));
      v28[39] = vcvtq_f32_s32(vmovl_high_s16(v49));
      v28[40] = vcvtq_f32_s32(vmovl_s16(*v50.i8));
      v28[41] = vcvtq_f32_s32(vmovl_high_s16(v50));
      v28[42] = vcvtq_f32_s32(vmovl_s16(*v51.i8));
      v28[43] = vcvtq_f32_s32(vmovl_high_s16(v51));
      v28[44] = vcvtq_f32_s32(vmovl_s16(*v52.i8));
      v28[45] = vcvtq_f32_s32(vmovl_high_s16(v52));
      v28[46] = vcvtq_f32_s32(vmovl_s16(*v53.i8));
      v28[47] = vcvtq_f32_s32(vmovl_high_s16(v53));
      v28[48] = vcvtq_f32_s32(vmovl_s16(*v54.i8));
      v28[49] = vcvtq_f32_s32(vmovl_high_s16(v54));
      v28[50] = vcvtq_f32_s32(vmovl_s16(*v55.i8));
      v28[51] = vcvtq_f32_s32(vmovl_high_s16(v55));
      v28[52] = vcvtq_f32_s32(vmovl_s16(*v56.i8));
      v28[53] = vcvtq_f32_s32(vmovl_high_s16(v56));
      v28[54] = vcvtq_f32_s32(vmovl_s16(*v57.i8));
      v28[55] = vcvtq_f32_s32(vmovl_high_s16(v57));
      v28[56] = vcvtq_f32_s32(vmovl_s16(*v58.i8));
      v28[57] = vcvtq_f32_s32(vmovl_high_s16(v58));
      v28[58] = vcvtq_f32_s32(vmovl_s16(*v59.i8));
      v28[59] = vcvtq_f32_s32(vmovl_high_s16(v59));
      v28[60] = vcvtq_f32_s32(vmovl_s16(*v60.i8));
      v28[61] = vcvtq_f32_s32(vmovl_high_s16(v60));
      v28[62] = vcvtq_f32_s32(vmovl_s16(*v61.i8));
      v28[63] = vcvtq_f32_s32(vmovl_high_s16(v61));
      v28[65] = vcvtq_f32_s32(vmovl_high_s16(v62));
      v28[64] = vcvtq_f32_s32(vmovl_s16(*v62.i8));
      v28[67] = vcvtq_f32_s32(vmovl_high_s16(v63));
      v28[66] = vcvtq_f32_s32(vmovl_s16(*v63.i8));
      v28[69] = vcvtq_f32_s32(vmovl_high_s16(v64));
      v28[68] = vcvtq_f32_s32(vmovl_s16(*v64.i8));
      v28[71] = vcvtq_f32_s32(vmovl_high_s16(v65));
      v28[70] = vcvtq_f32_s32(vmovl_s16(*v65.i8));
      v28[73] = vcvtq_f32_s32(vmovl_high_s16(v66));
      v28[72] = vcvtq_f32_s32(vmovl_s16(*v66.i8));
      v28[75] = vcvtq_f32_s32(vmovl_high_s16(v67));
      v28[74] = vcvtq_f32_s32(vmovl_s16(*v67.i8));
      v28[77] = vcvtq_f32_s32(vmovl_high_s16(v68));
      v28[76] = vcvtq_f32_s32(vmovl_s16(*v68.i8));
      v28[79] = vcvtq_f32_s32(vmovl_high_s16(v69));
      v28[78] = vcvtq_f32_s32(vmovl_s16(*v69.i8));
      if (++v6 >= *(a3 + 48))
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t webrtc::SpsParser::ParseSpsUpToVui@<X0>(webrtc::SpsParser *this@<X0>, uint64_t a2@<X8>)
{
  *(this + 12) = 0;
  v5 = *(this + 2);
  if (v5 <= 7)
  {
    *(this + 2) = -1;
    ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(this);
LABEL_3:
    v7 = 0;
    v8 = 1;
    goto LABEL_32;
  }

  *(this + 2) = v5 - 8;
  v9 = (*this + 1);
  v10 = **this;
  *this = v9;
  if ((v5 & 7) != 0)
  {
    v10 = ((v10 & ~(-1 << (v5 & 7))) << (8 - (v5 & 7))) | (*v9 >> (v5 & 7));
  }

  *(this + 12) = 0;
  v11 = v5 - 24;
  if (v5 >= 0x18)
  {
    *this = &v9[((v5 - 1) >> 3) - ((v5 - 17) >> 3)];
  }

  else
  {
    v11 = -1;
  }

  *(this + 2) = v11;
  ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  v12 = v10 - 83 > 0x38 || ((1 << (v10 - 83)) & 0x188208808020009) == 0;
  if (v12 && v10 != 244 && v10 != 44)
  {
    goto LABEL_3;
  }

  v8 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  if (v8 == 3)
  {
    *(this + 12) = 0;
    v13 = *(this + 2);
    if (v13 <= 0)
    {
      v7 = 0;
      *(this + 2) = -1;
    }

    else
    {
      v14 = v13 - 1;
      *(this + 2) = v13 - 1;
      v15 = *this;
      v16 = v14 & 7;
      if (v16)
      {
        LODWORD(v15) = *v15 >> v16;
      }

      else
      {
        *this = v15 + 1;
        LOBYTE(v15) = *v15;
      }

      v7 = v15 & 1;
    }
  }

  else
  {
    v7 = 0;
  }

  webrtc::BitstreamReader::ReadExponentialGolomb(this);
  webrtc::BitstreamReader::ReadExponentialGolomb(this);
  *(this + 12) = 0;
  v17 = *(this + 2);
  if (v17 < 1 || (v18 = (*this + (((v17 + 7) >> 3) - ((v17 + 6) >> 3))), *this = v18, *(this + 2) = v17 - 1, v17 == 1))
  {
    *(this + 2) = -1;
  }

  else
  {
    v19 = v17 - 2;
    *(this + 2) = v19;
    if ((v19 & 7) != 0)
    {
      if (((*v18 >> (v19 & 7)) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *this = v18 + 1;
      if ((*v18 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v76 = v7;
    v20 = 0;
    if (v8 == 3)
    {
      v21 = 12;
    }

    else
    {
      v21 = 8;
    }

    do
    {
      *(this + 12) = 0;
      if (v19 <= 0)
      {
        v19 = -1;
        *(this + 2) = -1;
      }

      else
      {
        *(this + 2) = --v19;
        v28 = *this;
        if ((v19 & 7) != 0)
        {
          if ((*v28 >> (v19 & 7)))
          {
            goto LABEL_46;
          }
        }

        else
        {
          *this = v28 + 1;
          if (*v28)
          {
LABEL_46:
            if (v20 >= 6)
            {
              v29 = 64;
            }

            else
            {
              v29 = 16;
            }

            v30 = 8;
            v31 = 8;
            while (1)
            {
              if (!v31)
              {
                goto LABEL_50;
              }

              result = webrtc::BitstreamReader::ReadExponentialGolomb(this);
              v32 = (result + 1) >> 1;
              if ((result & 1) == 0)
              {
                v32 = -(result >> 1);
              }

              *(this + 12) = 1;
              v19 = *(this + 2);
              if (v19 < 0 || v32 + 128 > 0xFF)
              {
                goto LABEL_75;
              }

              v31 = (v32 + v30);
              if (v31)
              {
                v30 = v31;
                if (!--v29)
                {
                  break;
                }
              }

              else
              {
LABEL_50:
                v31 = 0;
                if (!--v29)
                {
                  break;
                }
              }
            }
          }
        }
      }

      ++v20;
    }

    while (v20 != v21);
    v7 = v76;
  }

LABEL_32:
  result = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  *(this + 12) = 1;
  if ((*(this + 2) & 0x80000000) != 0)
  {
    goto LABEL_75;
  }

  v23 = result;
  if (result >= 0xD)
  {
    goto LABEL_75;
  }

  v77 = v7;
  v24 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  v25 = v24;
  if (v24 == 1)
  {
    *(this + 12) = 0;
    v33 = *(this + 2);
    if (v33 <= 0)
    {
      v26 = 0;
      *(this + 2) = -1;
    }

    else
    {
      v34 = v33 - 1;
      *(this + 2) = v33 - 1;
      v35 = *this;
      v36 = v34 & 7;
      if (v36)
      {
        LODWORD(v35) = *v35 >> v36;
      }

      else
      {
        *this = v35 + 1;
        LOBYTE(v35) = *v35;
      }

      v26 = v35 & 1;
    }

    webrtc::BitstreamReader::ReadExponentialGolomb(this);
    webrtc::BitstreamReader::ReadExponentialGolomb(this);
    v37 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
    if (v37)
    {
      v38 = v37;
      do
      {
        result = webrtc::BitstreamReader::ReadExponentialGolomb(this);
        *(this + 12) = 1;
        if ((*(this + 2) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }
      }

      while (--v38);
    }

LABEL_72:
    v27 = 4;
    goto LABEL_73;
  }

  if (v24)
  {
    v26 = 0;
    goto LABEL_72;
  }

  result = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  *(this + 12) = 1;
  if ((*(this + 2) & 0x80000000) != 0 || result > 0xC)
  {
LABEL_75:
    v42 = 0;
    *a2 = 0;
    goto LABEL_103;
  }

  v26 = 0;
  v27 = result + 4;
LABEL_73:
  v39 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  *(this + 12) = 0;
  v40 = *(this + 2);
  v41 = v40 - 1;
  if (v40 < 1)
  {
    v41 = -1;
  }

  else
  {
    *this += (((v40 + 7) >> 3) - ((v40 + 6) >> 3));
  }

  *(this + 2) = v41;
  v43 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  result = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  *(this + 12) = 0;
  v44 = *(this + 2);
  v45 = v44 - 1;
  if (v44 < 1)
  {
    goto LABEL_84;
  }

  *(this + 2) = v45;
  v46 = *this;
  if ((v45 & 7) != 0)
  {
    if ((*v46 >> (v45 & 7)))
    {
      goto LABEL_80;
    }
  }

  else
  {
    *this = v46 + 1;
    if (*v46++ & 1)
    {
LABEL_80:
      v47 = 1;
      *(this + 12) = 0;
      v48 = v44 - 2;
      if (v45 < 1)
      {
        goto LABEL_95;
      }

      goto LABEL_85;
    }
  }

  if (v44 == 1)
  {
LABEL_84:
    *(this + 2) = -1;
    *(this + 12) = 0;
    goto LABEL_95;
  }

  v45 = v44 - 2;
  *this = &v46[((v44 + 6) >> 3) - ((v44 + 5) >> 3)];
  v47 = 0;
  *(this + 2) = v44 - 2;
  *(this + 12) = 0;
  v48 = v44 - 3;
  if (v45 < 1)
  {
    goto LABEL_95;
  }

LABEL_85:
  v50 = (*this + (((v45 + 7) >> 3) - ((v45 + 6) >> 3)));
  *this = v50;
  *(this + 2) = v48;
  if (!v48)
  {
    goto LABEL_95;
  }

  v51 = v45 - 2;
  *(this + 2) = v45 - 2;
  v52 = (v45 - 2) & 7;
  if ((v51 & 7) != 0)
  {
    v53 = (*v50 >> v52) & 1;
    if (v53)
    {
      goto LABEL_88;
    }
  }

  else
  {
    *this = v50 + 1;
    v53 = *v50 & 1;
    if (*v50)
    {
LABEL_88:
      v72 = v8;
      v73 = v25;
      v54 = v43;
      v55 = v39;
      v56 = v27;
      v57 = v26;
      v58 = ExponentialGolomb;
      v59 = result;
      v60 = v47;
      v75 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
      HIDWORD(v74) = webrtc::BitstreamReader::ReadExponentialGolomb(this);
      LODWORD(v74) = webrtc::BitstreamReader::ReadExponentialGolomb(this);
      v61 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
      v47 = v60;
      v53 = v61;
      result = v59;
      ExponentialGolomb = v58;
      v26 = v57;
      v27 = v56;
      v39 = v55;
      v43 = v54;
      v8 = v72;
      v25 = v73;
      v62 = *(this + 2);
      *(this + 12) = 0;
      v63 = v62 - 1;
      if (v62 < 1)
      {
        goto LABEL_95;
      }

      goto LABEL_92;
    }
  }

  v75 = 0;
  v74 = 0;
  *(this + 12) = 0;
  v63 = v51 - 1;
  if (v51 < 1)
  {
LABEL_95:
    v42 = 0;
    *(this + 2) = -1;
    *(this + 12) = 1;
    *a2 = 0;
    goto LABEL_103;
  }

LABEL_92:
  *(this + 2) = v63;
  v64 = *this;
  v65 = v63 & 7;
  if (v65)
  {
    v66 = *v64 >> v65;
  }

  else
  {
    *this = v64 + 1;
    LOBYTE(v66) = *v64;
  }

  v67 = v66 & 1;
  v69 = HIDWORD(v74);
  v68 = v75;
  v70 = v74;
  *(this + 12) = 1;
  if (v77 || !v8)
  {
    v53 *= 2 - v47;
    v70 = v74 * (2 - v47);
  }

  else
  {
    v71 = (v8 - 1) < 2;
    v68 = v75 << v71;
    v69 = HIDWORD(v74) << v71;
    if (v8 == 1)
    {
      v70 = 2 * v74;
      v53 *= 2;
    }
  }

  *a2 = v43;
  *(a2 + 4) = result;
  *(a2 + 8) = 16 * v43 - (v68 + v69) + 16;
  *(a2 + 12) = 32 - 16 * v47 + (32 - 16 * v47) * result - (v70 + v53);
  *(a2 + 16) = v26;
  *(a2 + 20) = v8;
  *(a2 + 24) = v77;
  *(a2 + 28) = v47;
  *(a2 + 32) = v23 + 4;
  *(a2 + 36) = v27;
  *(a2 + 40) = v25;
  *(a2 + 44) = v39;
  v42 = 1;
  *(a2 + 48) = v67;
  *(a2 + 52) = ExponentialGolomb;
LABEL_103:
  *(a2 + 56) = v42;
  return result;
}

uint64_t webrtc::SpsVuiRewriter::ParseAndRewriteSps(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t *a5)
{
  webrtc::H264::ParseRbsp(a2, &v337);
  v13 = v337;
  v14 = v338 - v337;
  if (v338 == v337)
  {
    v13 = 0;
  }

  v336.i64[0] = v13;
  if (((v14 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v9, v10, v11, v12, v318);
    goto LABEL_577;
  }

  v336.i32[2] = 8 * v14;
  v336.i8[12] = 1;
  webrtc::SpsParser::ParseSpsUpToVui(&v336, &v331);
  if (v335 == 1)
  {
    if (*(a3 + 56) == 1)
    {
      v15 = v332;
      *a3 = v331;
      *(a3 + 16) = v15;
      *(a3 + 32) = *v333;
      *(a3 + 48) = v334;
      v16 = (a2 + 64);
      if (a2 == -64)
      {
LABEL_13:
        v19 = v336.i32[2];
        v20 = 8 * (v338 - v337) - v336.i32[2];
        v21 = v20 >> 3;
        if ((v20 & 7) != 0)
        {
          v22 = v21 + 1;
        }

        else
        {
          v22 = v20 >> 3;
        }

        v327 = 0;
        v328 = v16;
        v329 = 0;
        v330 = 0;
        v336.i8[12] = 1;
        v23 = (v20 & 7) == 0;
        if ((v20 & 7) != 0)
        {
          v24 = (v20 & 7) - 1;
        }

        else
        {
          v24 = 7;
        }

        memcpy(0, v337, v22);
        v25 = (v21 - v23);
        if (v16 < v21 - v23 || v24 && v16 == v25)
        {
          v24 = 0;
          v25 = 0;
          v26 = v335;
          if (v335)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v329 = (v21 - v23);
          v330 = v24;
          v26 = v335;
          if (v335)
          {
LABEL_23:
            if (v24 == 8 * (v16 - v25))
            {
              if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
              {
                goto LABEL_396;
              }

              goto LABEL_395;
            }

            *v25 = (-129 >> v24) & *v25 | (0x80u >> v24);
            v25 += (v24 + 1) >> 3;
            v26 = (v24 + 1) & 7;
            v329 = v25;
            v330 = v26;
            if (v334)
            {
              v336.i8[12] = 0;
              v34 = v19 - 1;
              if (v19 < 1)
              {
                if (v26 == 8 * (v16 - v25))
                {
                  goto LABEL_81;
                }

                v37 = 0;
                v34 = -1;
              }

              else
              {
                v35 = v19 & 7;
                v336.i32[2] = v19 - 1;
                v36 = *v336.i64[0];
                if (v35 < 2)
                {
                  if (v35 == 1)
                  {
                    v37 = v36 & 1;
                    ++v336.i64[0];
                    if (v26 == 8 * (v16 - v25))
                    {
                      goto LABEL_75;
                    }
                  }

                  else
                  {
                    v37 = v36 >> 7;
                    if (v26 == 8 * (v16 - v25))
                    {
                      goto LABEL_75;
                    }
                  }
                }

                else
                {
                  v37 = (v36 >> (v35 - 1)) & 1;
                  if (v26 == 8 * (v16 - v25))
                  {
LABEL_75:
                    if (!v37)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_76;
                  }
                }
              }

              *v25 = (-129 >> v26) & *v25 | (v37 << 7 >> v26);
              v38 = v26 + 1;
              v25 += v38 >> 3;
              v26 = v38 & 7;
              v329 = v25;
              v330 = v26;
              if (!v37)
              {
                v52 = v16;
                goto LABEL_135;
              }

              v336.i8[12] = 0;
              v39 = v34 - 8;
              if (v34 >= 8)
              {
                v336.i32[2] = v34 - 8;
                v40 = v336.i64[0];
                v41 = *v336.i64[0];
                v42 = v34 & 7;
                if (v42)
                {
                  ++v336.i64[0];
                  v41 = ((v41 & ~(-1 << v42)) << (8 - v42)) | (*(v40 + 1) >> v42);
                  if ((8 * (v16 - v25) - v26) < 8)
                  {
                    goto LABEL_77;
                  }
                }

                else
                {
                  ++v336.i64[0];
                  if ((8 * (v16 - v25) - v26) < 8)
                  {
LABEL_77:
                    if (v41 == 0xFF)
                    {
                      v336.i8[12] = 0;
                      goto LABEL_79;
                    }

LABEL_81:
                    v52 = v16;
LABEL_82:
                    v336.i8[12] = 0;
                    goto LABEL_83;
                  }
                }

LABEL_44:
                *v25 = *v25 & ~((255 << v26) >> v26) | (v41 >> v26);
                if (v26)
                {
                  v25[1] = ((-1 << (8 - v26)) & 0x7E ^ 0x7F) & v25[1] | (v41 << 56 << (8 - v26) >> 56);
                }

                v329 = ++v25;
                v330 = v26;
                if (v41 != 0xFF)
                {
                  v52 = v16;
                  v34 = v39;
                  goto LABEL_135;
                }

                v336.i8[12] = 0;
                if (v39 > 31)
                {
                  v336.i32[2] = v39 - 32;
                  v43 = v336.i64[0];
                  v44 = 32;
                  v45 = v39 & 7;
                  if ((v39 & 7) != 0)
                  {
                    v44 = (32 - v45);
                    v43 = (v336.i64[0] + 1);
                    v46 = (*v336.i64[0]++ & ~(-1 << v45)) << (32 - v45);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v96 = v44 - 8;
                  v97 = v43 + 1;
                  v62 = (*v43 << (v44 - 8)) | v46;
                  v336.i64[0] = (v43 + 1);
                  v98 = v44 - 16;
                  if (v44 >= 0x10)
                  {
                    v62 |= v43[1] << v98;
                    v97 = v43 + 2;
                    v336.i64[0] = (v43 + 2);
                    if (v96 < 0x10)
                    {
                      v96 = v44 - 16;
                    }

                    else
                    {
                      v96 = v44 - 24;
                      v62 |= v43[2] << (v44 - 24);
                      v97 = v43 + 3;
                      v336.i64[0] = (v43 + 3);
                      if (v98 >= 0x10)
                      {
                        v96 = v44 - 32;
                        v62 |= v43[3] << (v44 - 32);
                        v97 = v43 + 4;
                        v336.i64[0] = (v43 + 4);
                      }
                    }
                  }

                  if (v96)
                  {
                    v62 |= *v97 >> (8 - v96);
                  }

                  goto LABEL_80;
                }

LABEL_79:
                v62 = 0;
                v336.i32[2] = -1;
LABEL_80:
                v63 = 8 * (v16 - v25) - v26;
                if (v63 < 0x20)
                {
                  goto LABEL_81;
                }

                *v25 = *v25 & ~((255 << v26) >> v26) | (BYTE3(v62) >> v26);
                v73 = v62 << 32 << (8 - v26);
                v25[1] = HIBYTE(v73);
                v74 = v73 << 8;
                v75 = v26 | 0x10;
                if ((v26 | 0x10uLL) < 8)
                {
                  v76 = v25 + 2;
                }

                else
                {
                  v25[2] = HIBYTE(v74);
                  v25[3] = v73 << 16 >> 56;
                  v74 = v73 << 24;
                  v76 = v25 + 4;
                  v75 = v26;
                }

                if (v75)
                {
                  *v76 = ((255 << (8 - v75)) & 0x7E ^ 0x7F) & *v76 | HIBYTE(v74);
                  v52 = v328;
                  v25 = v329;
                  v26 = v330;
                  v63 = 8 * (v328 - v329) - v330;
                }

                else
                {
                  v52 = v16;
                }

                if (v63 < 0x20)
                {
                  goto LABEL_82;
                }

                v34 = v336.i32[2];
                v25 += (v26 + 32) >> 3;
                v26 &= 7u;
                v329 = v25;
                v330 = v26;
LABEL_135:
                v336.i8[12] = 0;
                if (v34 >= 1)
                {
                  v92 = v34 & 7;
                  v336.i32[2] = v34 - 1;
                  v93 = *v336.i64[0];
                  if (v92 < 2)
                  {
                    if (v92 == 1)
                    {
                      v64 = v93 & 1;
                      ++v336.i64[0];
                    }

                    else
                    {
                      v64 = v93 >> 7;
                    }
                  }

                  else
                  {
                    v64 = (v93 >> (v92 - 1)) & 1;
                  }

                  goto LABEL_84;
                }

LABEL_83:
                v64 = 0;
                v336.i32[2] = -1;
LABEL_84:
                if (v26 == 8 * (v52 - v25))
                {
                  goto LABEL_88;
                }

                v65 = &v25[v327];
                *v65 = *v65 & ~(((v26 != 8) << 7) >> v26) | (v64 << 7 >> v26);
                if (v26 == 8)
                {
                  v65[1] = v65[1] & 0x7F | ((v64 & 1) << 7);
                }

                v52 = v328;
                v25 = v329;
                v26 = 8 * (v328 - v329);
                if (v26 == v330)
                {
LABEL_88:
                  if (!v64)
                  {
                    goto LABEL_192;
                  }

                  v336.i8[12] = 0;
                }

                else
                {
                  v25 = &v329[(v330 + 1) >> 3];
                  v26 = (v330 + 1) & 7;
                  v329 = v25;
                  v330 = v26;
                  v68 = v336.u32[2];
                  if (!v64)
                  {
LABEL_100:
                    v336.i8[12] = 0;
                    if (v68 < 1)
                    {
                      goto LABEL_192;
                    }

                    v336.i32[2] = v68 - 1;
                    v70 = v336.i64[0];
                    v71 = (v68 - 1) & 7;
                    if (((v68 - 1) & 7) != 0)
                    {
                      v72 = (*v336.i64[0] >> v71) & 1;
                    }

                    else
                    {
                      ++v336.i64[0];
                      v72 = *v70++ & 1;
                    }

                    if (!v72)
                    {
                      v82 = 0;
                      v83 = 0;
                      v84 = 0;
                      v85 = 3;
                      v81 = 5;
                      v86 = 3;
                      v87 = 3;
                      v336.i8[12] = 1;
                      if (!a4)
                      {
                        goto LABEL_508;
                      }

                      goto LABEL_123;
                    }

                    v336.i8[12] = 0;
                    if (v68 < 4)
                    {
LABEL_192:
                      v336.i32[2] = -1;
                      v116 = 1;
                      v336.i8[12] = 1;
                      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                      {
                        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v117, v85, v118, v119, v120, v121, v122, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/sps_vui_rewriter.cc");
                      }

LABEL_194:
                      v336.i8[12] = 0;
                      if (v336.i32[2] <= 0)
                      {
                        v125 = 0;
                        v336.i32[2] = -1;
                        v127 = v328;
                        v126 = v329;
                        v128 = 8 * (v328 - v329);
                        v129 = v330;
                        if (v128 == v330)
                        {
                          goto LABEL_207;
                        }
                      }

                      else
                      {
                        v123 = v336.i8[8] & 7;
                        --v336.i32[2];
                        v124 = *v336.i64[0];
                        if (v123 < 2)
                        {
                          if (v123 == 1)
                          {
                            v125 = v124 & 1;
                            ++v336.i64[0];
                            v127 = v328;
                            v126 = v329;
                            v128 = 8 * (v328 - v329);
                            v129 = v330;
                            if (v128 == v330)
                            {
                              goto LABEL_207;
                            }
                          }

                          else
                          {
                            v125 = v124 >> 7;
                            v127 = v328;
                            v126 = v329;
                            v128 = 8 * (v328 - v329);
                            v129 = v330;
                            if (v128 == v330)
                            {
                              goto LABEL_207;
                            }
                          }
                        }

                        else
                        {
                          v125 = (v124 >> (v123 - 1)) & 1;
                          v127 = v328;
                          v126 = v329;
                          v128 = 8 * (v328 - v329);
                          v129 = v330;
                          if (v128 == v330)
                          {
                            goto LABEL_207;
                          }
                        }
                      }

                      v130 = &v126[v327];
                      v126[v327] = v126[v327] & ~(((v129 != 8) << 7) >> v129) | (v125 << 7 >> v129);
                      if (v129 == 8)
                      {
                        v130[1] = v130[1] & 0x7F | ((v125 & 1) << 7);
                      }

                      v127 = v328;
                      v126 = v329;
                      v128 = 8 * (v328 - v329);
                      if (v128 != v330)
                      {
                        v126 = &v329[(v330 + 1) >> 3];
                        v128 = (v330 + 1) & 7;
                        v329 = v126;
                        v330 = v128;
                        if (v125)
                        {
LABEL_208:
                          ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                          if (ExponentialGolomb == -1)
                          {
                            goto LABEL_219;
                          }

                          v132 = ExponentialGolomb + 1;
                          v133 = (2 * __clz(v132)) ^ 0x7F;
                          if (8 * (v328 - v329) - v330 < v133)
                          {
                            goto LABEL_219;
                          }

                          v134 = v132 << -v133;
                          v135 = &v329[v327];
                          v136 = 8 - v330;
                          if (8 - v330 >= v133)
                          {
                            v137 = v133;
                          }

                          else
                          {
                            v137 = 8 - v330;
                          }

                          *v135 = *v135 & ~((255 << (8 - v137)) >> v330) | (HIBYTE(v134) >> v330);
                          v138 = v133 - v136;
                          if (v133 > v136)
                          {
                            v139 = v134 << v136;
                            v140 = v135 + 1;
                            if (v138 >= 8)
                            {
                              do
                              {
                                *v140++ = HIBYTE(v139);
                                v139 <<= 8;
                                v138 -= 8;
                              }

                              while (v138 > 7);
                            }

                            if (v138)
                            {
                              *v140 = ((-1 << (8 - v138)) & 0x7E ^ 0x7F) & *v140 | HIBYTE(v139);
                            }
                          }

                          if (8 * (v328 - v329) - v330 < v133)
                          {
LABEL_219:
                            v336.i32[2] = -1;
                            v141 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                            v127 = v328;
                            v126 = v329;
                            v128 = v330;
                            if (v141 != -1)
                            {
LABEL_220:
                              v142 = v141 + 1;
                              v143 = (2 * __clz(v142)) ^ 0x7F;
                              if (8 * (v127 - v126) - v128 >= v143)
                              {
                                v144 = v142 << -v143;
                                v145 = &v126[v327];
                                v146 = 8 - v128;
                                if (8 - v128 >= v143)
                                {
                                  v147 = v143;
                                }

                                else
                                {
                                  v147 = 8 - v128;
                                }

                                *v145 = *v145 & ~((255 << (8 - v147)) >> v128) | (HIBYTE(v144) >> v128);
                                v148 = v143 - v146;
                                if (v143 > v146)
                                {
                                  v149 = v144 << v146;
                                  v150 = v145 + 1;
                                  if (v148 >= 8)
                                  {
                                    do
                                    {
                                      *v150++ = HIBYTE(v149);
                                      v149 <<= 8;
                                      v148 -= 8;
                                    }

                                    while (v148 > 7);
                                  }

                                  if (v148)
                                  {
                                    *v150 = ((-1 << (8 - v148)) & 0x7E ^ 0x7F) & *v150 | HIBYTE(v149);
                                  }
                                }

                                v127 = v328;
                                v126 = v329;
                                v128 = v330;
                                if (8 * (v328 - v329) - v330 >= v143)
                                {
                                  v126 = &v329[(v330 + v143) >> 3];
                                  v128 = (v330 + v143) & 7;
                                  v329 = v126;
                                  v330 = v128;
                                  v151 = v336.i32[2];
                                  v336.i8[12] = 0;
                                  if (v336.i32[2] <= 0)
                                  {
                                    goto LABEL_241;
                                  }

LABEL_234:
                                  v152 = v151 & 7;
                                  v336.i32[2] = v151 - 1;
                                  v153 = *v336.i64[0];
                                  if (v152 < 2)
                                  {
                                    if (v152 == 1)
                                    {
                                      v154 = v153 & 1;
                                      ++v336.i64[0];
                                    }

                                    else
                                    {
                                      v154 = v153 >> 7;
                                    }
                                  }

                                  else
                                  {
                                    v154 = (v153 >> (v152 - 1)) & 1;
                                  }

                                  goto LABEL_242;
                                }
                              }
                            }
                          }

                          else
                          {
                            v155 = v330 + v133;
                            v329 += v155 >> 3;
                            v330 = v155 & 7;
                            v141 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                            v127 = v328;
                            v126 = v329;
                            v128 = v330;
                            if (v141 != -1)
                            {
                              goto LABEL_220;
                            }
                          }

                          v336.i8[12] = 0;
                          goto LABEL_241;
                        }

LABEL_233:
                        v151 = v336.i32[2];
                        v336.i8[12] = 0;
                        if (v336.i32[2] > 0)
                        {
                          goto LABEL_234;
                        }

LABEL_241:
                        v154 = 0;
                        v336.i32[2] = -1;
LABEL_242:
                        if (v128 == 8 * (v127 - v126))
                        {
                          goto LABEL_246;
                        }

                        v156 = &v126[v327];
                        *v156 = *v156 & ~(((v128 != 8) << 7) >> v128) | (v154 << 7 >> v128);
                        if (v128 == 8)
                        {
                          v156[1] = v156[1] & 0x7F | ((v154 & 1) << 7);
                        }

                        v127 = v328;
                        v126 = v329;
                        v128 = 8 * (v328 - v329);
                        if (v128 == v330)
                        {
LABEL_246:
                          v336.i8[12] = 0;
                          if (v154 != 1)
                          {
                            goto LABEL_259;
                          }
                        }

                        else
                        {
                          v126 = &v329[(v330 + 1) >> 3];
                          v128 = (v330 + 1) & 7;
                          v329 = v126;
                          v330 = v128;
                          v170 = v336.i32[2];
                          if (v154 != 1)
                          {
LABEL_314:
                            v336.i8[12] = 0;
                            if (v170 > 0)
                            {
                              v191 = v170 & 7;
                              v336.i32[2] = v170 - 1;
                              v192 = *v336.i64[0];
                              if (v191 < 2)
                              {
                                if (v191 == 1)
                                {
                                  v161 = v192 & 1;
                                  ++v336.i64[0];
                                }

                                else
                                {
                                  v161 = v192 >> 7;
                                }
                              }

                              else
                              {
                                v161 = (v192 >> (v191 - 1)) & 1;
                              }

                              goto LABEL_260;
                            }

LABEL_259:
                            v161 = 0;
                            v336.i32[2] = -1;
LABEL_260:
                            if (v128 == 8 * (v127 - v126))
                            {
                              goto LABEL_264;
                            }

                            v162 = &v126[v327];
                            *v162 = *v162 & ~(((v128 != 8) << 7) >> v128) | (v161 << 7 >> v128);
                            if (v128 == 8)
                            {
                              v162[1] = v162[1] & 0x7F | ((v161 & 1) << 7);
                            }

                            if (v330 == 8 * (v328 - v329))
                            {
LABEL_264:
                              v336.i32[2] = -1;
                              if (!v161)
                              {
                                goto LABEL_266;
                              }
                            }

                            else
                            {
                              v329 += (v330 + 1) >> 3;
                              v330 = (v330 + 1) & 7;
                              if (!v161)
                              {
LABEL_266:
                                v336.i8[12] = 0;
                                if (v336.i32[2] <= 0)
                                {
                                  v165 = 0;
                                  v336.i32[2] = -1;
                                  v167 = v328;
                                  v166 = v329;
                                  v168 = 8 * (v328 - v329);
                                  v169 = v330;
                                  if (v168 == v330)
                                  {
                                    goto LABEL_303;
                                  }
                                }

                                else
                                {
                                  v163 = v336.i8[8] & 7;
                                  --v336.i32[2];
                                  v164 = *v336.i64[0];
                                  if (v163 < 2)
                                  {
                                    if (v163 == 1)
                                    {
                                      v165 = v164 & 1;
                                      ++v336.i64[0];
                                      v167 = v328;
                                      v166 = v329;
                                      v168 = 8 * (v328 - v329);
                                      v169 = v330;
                                      if (v168 == v330)
                                      {
                                        goto LABEL_303;
                                      }
                                    }

                                    else
                                    {
                                      v165 = v164 >> 7;
                                      v167 = v328;
                                      v166 = v329;
                                      v168 = 8 * (v328 - v329);
                                      v169 = v330;
                                      if (v168 == v330)
                                      {
                                        goto LABEL_303;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v165 = (v164 >> (v163 - 1)) & 1;
                                    v167 = v328;
                                    v166 = v329;
                                    v168 = 8 * (v328 - v329);
                                    v169 = v330;
                                    if (v168 == v330)
                                    {
                                      goto LABEL_303;
                                    }
                                  }
                                }

                                v187 = &v166[v327];
                                *v187 = *v187 & ~(((v169 != 8) << 7) >> v169) | (v165 << 7 >> v169);
                                if (v169 == 8)
                                {
                                  v187[1] = v187[1] & 0x7F | ((v165 & 1) << 7);
                                }

                                v167 = v328;
                                v166 = v329;
                                v168 = 8 * (v328 - v329);
                                if (v168 != v330)
                                {
                                  v166 = &v329[(v330 + 1) >> 3];
                                  v168 = (v330 + 1) & 7;
                                  v329 = v166;
                                  v330 = v168;
                                  if (v165)
                                  {
                                    goto LABEL_304;
                                  }

                                  goto LABEL_306;
                                }

LABEL_303:
                                v336.i32[2] = -1;
                                if (v165)
                                {
LABEL_304:
LABEL_307:
                                  v336.i8[12] = 0;
                                  if (v336.i32[2] <= 0)
                                  {
                                    LODWORD(v190) = 0;
                                    v336.i32[2] = -1;
                                  }

                                  else
                                  {
                                    v188 = v336.i8[8] & 7;
                                    --v336.i32[2];
                                    v189 = *v336.i64[0];
                                    if (v188 < 2)
                                    {
                                      if (v188 == 1)
                                      {
                                        LODWORD(v190) = v189 & 1;
                                        ++v336.i64[0];
                                      }

                                      else
                                      {
                                        v190 = v189 >> 7;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v190) = (v189 >> (v188 - 1)) & 1;
                                    }
                                  }

                                  v167 = v328;
                                  v166 = v329;
                                  v168 = 8 * (v328 - v329);
                                  v199 = v330;
                                  if (v168 == v330)
                                  {
                                    goto LABEL_330;
                                  }

                                  v200 = &v329[v327];
                                  v329[v327] = v329[v327] & ~(((v330 != 8) << 7) >> v330) | (v190 << 7 >> v330);
                                  if (v199 == 8)
                                  {
                                    v200[1] = v200[1] & 0x7F | ((v190 & 1) << 7);
                                  }

                                  v167 = v328;
                                  v166 = v329;
                                  v168 = 8 * (v328 - v329);
                                  if (v168 == v330)
                                  {
LABEL_330:
                                    v336.i8[12] = 0;
                                    goto LABEL_335;
                                  }

                                  v166 = &v329[(v330 + 1) >> 3];
                                  v168 = (v330 + 1) & 7;
                                  v329 = v166;
                                  v330 = v168;
LABEL_332:
                                  v336.i8[12] = 0;
                                  if (v336.i32[2] > 0)
                                  {
                                    v201 = v336.i8[8] & 7;
                                    --v336.i32[2];
                                    v202 = *v336.i64[0];
                                    if (v201 < 2)
                                    {
                                      if (v201 == 1)
                                      {
                                        LODWORD(v202) = v202 & 1;
                                        ++v336.i64[0];
                                      }

                                      else
                                      {
                                        v202 >>= 7;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v202) = (v202 >> (v201 - 1)) & 1;
                                    }

                                    goto LABEL_336;
                                  }

LABEL_335:
                                  LODWORD(v202) = 0;
                                  v336.i32[2] = -1;
LABEL_336:
                                  if (v168 == 8 * (v167 - v166))
                                  {
                                    goto LABEL_340;
                                  }

                                  v203 = &v166[v327];
                                  *v203 = *v203 & ~(((v168 != 8) << 7) >> v168) | (v202 << 7 >> v168);
                                  if (v168 == 8)
                                  {
                                    v203[1] = v203[1] & 0x7F | ((v202 & 1) << 7);
                                  }

                                  v167 = v328;
                                  v166 = v329;
                                  v168 = 8 * (v328 - v329);
                                  if (v168 == v330)
                                  {
LABEL_340:
                                    v336.i8[12] = 0;
                                  }

                                  else
                                  {
                                    v166 = &v329[(v330 + 1) >> 3];
                                    v168 = (v330 + 1) & 7;
                                    v329 = v166;
                                    v330 = v168;
                                    v336.i8[12] = 0;
                                    if (v336.i32[2] > 0)
                                    {
                                      --v336.i32[2];
                                      v211 = v336.i64[0];
                                      if ((v336.i8[8] & 7) != 0)
                                      {
                                        LODWORD(v211) = *v336.i64[0] >> (v336.i8[8] & 7);
                                      }

                                      else
                                      {
                                        ++v336.i64[0];
                                        LOBYTE(v211) = *v211;
                                      }

                                      v204 = v211 & 1;
                                      if (v168 == 8 * (v328 - v166))
                                      {
                                        goto LABEL_394;
                                      }

                                      goto LABEL_342;
                                    }
                                  }

                                  v204 = 0;
                                  v336.i32[2] = -1;
                                  if (v168 == 8 * (v167 - v166))
                                  {
                                    goto LABEL_394;
                                  }

LABEL_342:
                                  v205 = &v166[v327];
                                  *v205 = *v205 & ~(((v168 != 8) << 7) >> v168) | (0x80u >> v168);
                                  if (v168 == 8)
                                  {
                                    v205[1] |= 0x80u;
                                  }

                                  if (v330 != 8 * (v328 - v329))
                                  {
                                    v206 = &v329[(v330 + 1) >> 3];
                                    v207 = (v330 + 1) & 7;
                                    v329 = v206;
                                    v330 = v207;
                                    if (!v204)
                                    {
                                      {
                                        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                                        {
LABEL_395:
                                          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/sps_vui_rewriter.cc");
                                        }

LABEL_396:
                                        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                                        {
LABEL_398:
                                          v17 = 0;
                                          goto LABEL_399;
                                        }

LABEL_397:
                                        webrtc::webrtc_logging_impl::Log("\r\t", v231, v232, v233, v234, v235, v236, v237, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/sps_vui_rewriter.cc");
                                        goto LABEL_398;
                                      }

                                      goto LABEL_355;
                                    }

                                    v336.i8[12] = 0;
                                    if (v336.i32[2] <= 0)
                                    {
                                      v210 = 0;
                                      v336.i32[2] = -1;
                                    }

                                    else
                                    {
                                      v208 = v336.i8[8] & 7;
                                      --v336.i32[2];
                                      v209 = *v336.i64[0];
                                      if (v208 < 2)
                                      {
                                        if (v208 == 1)
                                        {
                                          v210 = v209 & 1;
                                          ++v336.i64[0];
                                        }

                                        else
                                        {
                                          v210 = v209 >> 7;
                                        }
                                      }

                                      else
                                      {
                                        v210 = (v209 >> (v208 - 1)) & 1;
                                      }
                                    }

                                    if (v207 == 8 * (v328 - v206) || (v206[v327] = (-129 >> v207) & v206[v327] | ((v210 << 7) >> v207), v330 == 8 * (v328 - v329)))
                                    {
                                      v336.i32[2] = -1;
                                    }

                                    else
                                    {
                                      v329 += (v330 + 1) >> 3;
                                      v330 = (v330 + 1) & 7;
                                    }

                                    v239 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                                    if (v239 == -1)
                                    {
                                      goto LABEL_425;
                                    }

                                    v240 = v239 + 1;
                                    v241 = (2 * __clz(v240)) ^ 0x7F;
                                    if (8 * (v328 - v329) - v330 < v241)
                                    {
                                      goto LABEL_425;
                                    }

                                    v242 = v240 << -v241;
                                    v243 = &v329[v327];
                                    v244 = 8 - v330;
                                    if (8 - v330 >= v241)
                                    {
                                      v245 = v241;
                                    }

                                    else
                                    {
                                      v245 = 8 - v330;
                                    }

                                    *v243 = *v243 & ~((255 << (8 - v245)) >> v330) | (HIBYTE(v242) >> v330);
                                    v246 = v241 - v244;
                                    if (v241 > v244)
                                    {
                                      v247 = v242 << v244;
                                      v248 = v243 + 1;
                                      if (v246 >= 8)
                                      {
                                        do
                                        {
                                          *v248++ = HIBYTE(v247);
                                          v247 <<= 8;
                                          v246 -= 8;
                                        }

                                        while (v246 > 7);
                                      }

                                      if (v246)
                                      {
                                        *v248 = ((-1 << (8 - v246)) & 0x7E ^ 0x7F) & *v248 | HIBYTE(v247);
                                      }
                                    }

                                    if (8 * (v328 - v329) - v330 < v241)
                                    {
LABEL_425:
                                      v336.i32[2] = -1;
                                      v249 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                                      if (v249 == -1)
                                      {
                                        goto LABEL_438;
                                      }
                                    }

                                    else
                                    {
                                      v260 = v330 + v241;
                                      v329 += v260 >> 3;
                                      v330 = v260 & 7;
                                      v249 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                                      if (v249 == -1)
                                      {
                                        goto LABEL_438;
                                      }
                                    }

                                    v250 = v249 + 1;
                                    v251 = (2 * __clz(v250)) ^ 0x7F;
                                    if (8 * (v328 - v329) - v330 >= v251)
                                    {
                                      v252 = v250 << -v251;
                                      v253 = &v329[v327];
                                      v254 = 8 - v330;
                                      if (8 - v330 >= v251)
                                      {
                                        v255 = v251;
                                      }

                                      else
                                      {
                                        v255 = 8 - v330;
                                      }

                                      *v253 = *v253 & ~((255 << (8 - v255)) >> v330) | (HIBYTE(v252) >> v330);
                                      v256 = v251 - v254;
                                      if (v251 > v254)
                                      {
                                        v257 = v252 << v254;
                                        v258 = v253 + 1;
                                        if (v256 >= 8)
                                        {
                                          do
                                          {
                                            *v258++ = HIBYTE(v257);
                                            v257 <<= 8;
                                            v256 -= 8;
                                          }

                                          while (v256 > 7);
                                        }

                                        if (v256)
                                        {
                                          *v258 = ((-1 << (8 - v256)) & 0x7E ^ 0x7F) & *v258 | HIBYTE(v257);
                                        }
                                      }

                                      if (8 * (v328 - v329) - v330 >= v251)
                                      {
                                        v259 = v330 + v251;
                                        v329 += v259 >> 3;
                                        v330 = v259 & 7;
                                        goto LABEL_439;
                                      }
                                    }

LABEL_438:
                                    v336.i32[2] = -1;
LABEL_439:
                                    v261 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                                    if (v261 == -1)
                                    {
                                      goto LABEL_450;
                                    }

                                    v262 = v261 + 1;
                                    v263 = (2 * __clz(v262)) ^ 0x7F;
                                    if (8 * (v328 - v329) - v330 < v263)
                                    {
                                      goto LABEL_450;
                                    }

                                    v264 = v262 << -v263;
                                    v265 = &v329[v327];
                                    v266 = 8 - v330;
                                    if (8 - v330 >= v263)
                                    {
                                      v267 = v263;
                                    }

                                    else
                                    {
                                      v267 = 8 - v330;
                                    }

                                    *v265 = *v265 & ~((255 << (8 - v267)) >> v330) | (HIBYTE(v264) >> v330);
                                    v268 = v263 - v266;
                                    if (v263 > v266)
                                    {
                                      v269 = v264 << v266;
                                      v270 = v265 + 1;
                                      if (v268 >= 8)
                                      {
                                        do
                                        {
                                          *v270++ = HIBYTE(v269);
                                          v269 <<= 8;
                                          v268 -= 8;
                                        }

                                        while (v268 > 7);
                                      }

                                      if (v268)
                                      {
                                        *v270 = ((-1 << (8 - v268)) & 0x7E ^ 0x7F) & *v270 | HIBYTE(v269);
                                      }
                                    }

                                    if (8 * (v328 - v329) - v330 < v263)
                                    {
LABEL_450:
                                      v336.i32[2] = -1;
                                      v271 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                                      if (v271 == -1)
                                      {
                                        goto LABEL_463;
                                      }
                                    }

                                    else
                                    {
                                      v282 = v330 + v263;
                                      v329 += v282 >> 3;
                                      v330 = v282 & 7;
                                      v271 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                                      if (v271 == -1)
                                      {
                                        goto LABEL_463;
                                      }
                                    }

                                    v272 = v271 + 1;
                                    v273 = (2 * __clz(v272)) ^ 0x7F;
                                    if (8 * (v328 - v329) - v330 >= v273)
                                    {
                                      v274 = v272 << -v273;
                                      v275 = &v329[v327];
                                      v276 = 8 - v330;
                                      if (8 - v330 >= v273)
                                      {
                                        v277 = v273;
                                      }

                                      else
                                      {
                                        v277 = 8 - v330;
                                      }

                                      *v275 = *v275 & ~((255 << (8 - v277)) >> v330) | (HIBYTE(v274) >> v330);
                                      v278 = v273 - v276;
                                      if (v273 > v276)
                                      {
                                        v279 = v274 << v276;
                                        v280 = v275 + 1;
                                        if (v278 >= 8)
                                        {
                                          do
                                          {
                                            *v280++ = HIBYTE(v279);
                                            v279 <<= 8;
                                            v278 -= 8;
                                          }

                                          while (v278 > 7);
                                        }

                                        if (v278)
                                        {
                                          *v280 = ((-1 << (8 - v278)) & 0x7E ^ 0x7F) & *v280 | HIBYTE(v279);
                                        }
                                      }

                                      if (8 * (v328 - v329) - v330 >= v273)
                                      {
                                        v281 = v330 + v273;
                                        v329 += v281 >> 3;
                                        v330 = v281 & 7;
LABEL_464:
                                        v283 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                                        v284 = webrtc::BitstreamReader::ReadExponentialGolomb(&v336);
                                        if (v330 == 8 * (v328 - v329))
                                        {
                                          goto LABEL_469;
                                        }

                                        v285 = &v329[v327];
                                        v309 = v330 == 8;
                                        v329[v327] = v329[v327] & ~(((v330 != 8) << 7) >> v330) | (0x80u >> v330);
                                        if (v309)
                                        {
                                          v285[1] |= 0x80u;
                                        }

                                        if (v330 == 8 * (v328 - v329))
                                        {
LABEL_469:
                                          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                                          {
                                            goto LABEL_395;
                                          }

                                          goto LABEL_396;
                                        }

                                        v329 += (v330 + 1) >> 3;
                                        v330 = (v330 + 1) & 7;
                                        if (HIDWORD(v333[1]) == -1 || (v286 = v284, (webrtc::BitBufferWriter::WriteBits(&v327, HIDWORD(v333[1]) + 1, (2 * __clz(HIDWORD(v333[1]) + 1)) ^ 0x7F) & 1) == 0))
                                        {
                                          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                                          {
                                            goto LABEL_395;
                                          }

                                          goto LABEL_396;
                                        }

                                        if (!v283 && v286 <= HIDWORD(v333[1]))
                                        {
                                          v336.i8[12] = 1;
                                          v212 = v336.u32[2];
                                          if (v336.i32[2] < 0)
                                          {
                                            goto LABEL_396;
                                          }

                                          if (v116)
                                          {
                                            v17 = 1;
                                            goto LABEL_399;
                                          }

                                          goto LABEL_356;
                                        }

LABEL_355:
                                        v336.i8[12] = 1;
                                        v212 = v336.u32[2];
                                        if (v336.i32[2] < 0)
                                        {
                                          goto LABEL_396;
                                        }

LABEL_356:
                                        if (v212)
                                        {
                                          v213 = v212 & 7;
                                          if ((v212 & 7) == 0)
                                          {
                                            goto LABEL_360;
                                          }

                                          v336.i8[12] = 1;
                                          v214 = webrtc::BitstreamReader::ReadBits(&v336, v212 & 7);
                                          if (!webrtc::BitBufferWriter::WriteBits(&v327, v214, v213))
                                          {
LABEL_491:
                                            v336.i32[2] = -1;
                                            v336.i8[12] = 1;
LABEL_492:
                                            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                                            {
                                              goto LABEL_398;
                                            }

                                            goto LABEL_397;
                                          }

                                          v212 = v336.u32[2];
                                          if (v336.i32[2] >= 1)
                                          {
                                            do
                                            {
LABEL_360:
                                              if (v212 >= 0x20)
                                              {
                                                v215 = 32;
                                              }

                                              else
                                              {
                                                v215 = v212;
                                              }

                                              v336.i8[12] = 0;
                                              v336.i32[2] = v212 - v215;
                                              v216 = v212 & 7;
                                              if (v216)
                                              {
                                                v217 = v215 - v216;
                                                v218 = (*v336.i64[0]++ & ~(-1 << v216)) << (v215 - v216);
                                              }

                                              else
                                              {
                                                v218 = 0;
                                                v217 = v215;
                                              }

                                              if (v217 >= 8)
                                              {
                                                v219 = v217;
                                                v220 = v336.i64[0];
                                                v221 = v217 - 8;
                                                v218 |= *v336.i64[0]++ << (v217 - 8);
                                                if (v217 >= 16)
                                                {
                                                  v222 = v217 - 16;
                                                  v218 |= v220[1] << (v219 - 16);
                                                  v336.i64[0] = (v220 + 2);
                                                  if (v221 < 16)
                                                  {
                                                    v221 = v219 - 16;
                                                  }

                                                  else
                                                  {
                                                    v221 = v219 - 24;
                                                    v218 |= v220[2] << (v219 - 24);
                                                    v336.i64[0] = (v220 + 3);
                                                    if (v222 >= 16)
                                                    {
                                                      v221 = v219 - 32;
                                                      v218 |= v220[3] << (v219 - 32);
                                                      v336.i64[0] = (v220 + 4);
                                                    }
                                                  }
                                                }

                                                v217 = v221;
                                              }

                                              if (v217 >= 1)
                                              {
                                                v218 |= *v336.i64[0] >> (8 - v217);
                                              }

                                              if (8 * (v328 - v329) - v330 < v215)
                                              {
                                                goto LABEL_491;
                                              }

                                              v223 = v218 << -v215;
                                              v224 = &v329[v327];
                                              v225 = 8 - v330;
                                              if (8 - v330 >= v215)
                                              {
                                                v226 = v215;
                                              }

                                              else
                                              {
                                                v226 = 8 - v330;
                                              }

                                              *v224 = *v224 & ~((255 << (8 - v226)) >> v330) | (HIBYTE(v223) >> v330);
                                              v227 = v215 - v225;
                                              if (v215 > v225)
                                              {
                                                v228 = v223 << v225;
                                                v229 = v224 + 1;
                                                if (v227 >= 8)
                                                {
                                                  do
                                                  {
                                                    *v229++ = HIBYTE(v228);
                                                    v228 <<= 8;
                                                    v227 -= 8;
                                                  }

                                                  while (v227 > 7);
                                                }

                                                if (v227)
                                                {
                                                  *v229 = ((-1 << (8 - v227)) & 0x7E ^ 0x7F) & *v229 | HIBYTE(v228);
                                                }
                                              }

                                              if (8 * (v328 - v329) - v330 < v215)
                                              {
                                                goto LABEL_491;
                                              }

                                              v230 = v330 + v215;
                                              v329 += v230 >> 3;
                                              v330 = v230 & 7;
                                              v212 = v336.u32[2];
                                              v336.i8[12] = 1;
                                            }

                                            while (v336.i32[2] > 0);
                                          }

                                          v336.i8[12] = 1;
                                          if (v212)
                                          {
                                            goto LABEL_492;
                                          }
                                        }

                                        else
                                        {
                                          v336.i8[12] = 1;
                                        }

                                        v293 = v329;
                                        if (v330)
                                        {
                                          webrtc::BitBufferWriter::WriteBits(&v327, 0, 8 - v330);
                                          ++v293;
                                        }

                                        if (a5)
                                        {
                                          if (v16 < v293)
                                          {
                                            operator new[]();
                                          }

                                          webrtc::H264::WriteRbsp(0, v293, a5);
                                          v17 = 2;
                                          goto LABEL_399;
                                        }

LABEL_577:
                                        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/sps_vui_rewriter.cc", 203, "destination != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v77, v78, v79, v80, v318);
                                        return webrtc::SpsVuiRewriter::ParseOutgoingBitstreamAndRewrite();
                                      }
                                    }

LABEL_463:
                                    v336.i32[2] = -1;
                                    goto LABEL_464;
                                  }

LABEL_394:
                                  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                                  {
                                    goto LABEL_396;
                                  }

                                  goto LABEL_395;
                                }

LABEL_306:
                                if (!v161)
                                {
                                  goto LABEL_332;
                                }

                                goto LABEL_307;
                              }
                            }

                            goto LABEL_266;
                          }

                          v336.i8[12] = 0;
                          if (v336.i32[2] > 31)
                          {
                            v336.i32[2] -= 32;
                            v171 = v336.i64[0];
                            v172 = v170 & 7;
                            if ((v170 & 7) != 0)
                            {
                              v173 = 32 - v172;
                              v171 = (v336.i64[0] + 1);
                              v174 = (*v336.i64[0]++ & ~(-1 << v172)) << (32 - v172);
                            }

                            else
                            {
                              v174 = 0;
                              v173 = 32;
                            }

                            v287 = v173 - 8;
                            v288 = v171 + 1;
                            v157 = (*v171 << (v173 - 8)) | v174;
                            v336.i64[0] = (v171 + 1);
                            v289 = v173 - 16;
                            if (v173 >= 0x10)
                            {
                              v157 |= v171[1] << v289;
                              v288 = v171 + 2;
                              v336.i64[0] = (v171 + 2);
                              if (v287 < 0x10)
                              {
                                v287 = v173 - 16;
                              }

                              else
                              {
                                v287 = v173 - 24;
                                v157 |= v171[2] << (v173 - 24);
                                v288 = v171 + 3;
                                v336.i64[0] = (v171 + 3);
                                if (v289 >= 0x10)
                                {
                                  v287 = v173 - 32;
                                  v157 |= v171[3] << (v173 - 32);
                                  v288 = v171 + 4;
                                  v336.i64[0] = (v171 + 4);
                                }
                              }
                            }

                            if (v287)
                            {
                              v157 |= *v288 >> (8 - v287);
                            }

LABEL_248:
                            if ((8 * (v127 - v126) - v128) < 0x20)
                            {
LABEL_249:
                              v336.i8[12] = 0;
                              goto LABEL_250;
                            }

                            v175 = 8 - v128;
                            v176 = 32;
                            if ((8 - v128) < 0x20)
                            {
                              v176 = 8 - v128;
                            }

                            v177 = &v126[v327];
                            v126[v327] = v126[v327] & ~((255 << (8 - v176)) >> v128) | (BYTE3(v157) >> v128);
                            if (v175 >= 0x20)
                            {
                              v127 = v328;
                              v126 = v329;
                              v128 = v330;
                              if ((8 * (v328 - v329) - v330) < 0x20)
                              {
                                goto LABEL_249;
                              }
                            }

                            else
                            {
                              v178 = v157 << 32 << v175;
                              v179 = v128 + 24;
                              v180 = v177 + 1;
                              if (v179 < 8)
                              {
                                goto LABEL_285;
                              }

                              do
                              {
                                *v180++ = HIBYTE(v178);
                                v178 <<= 8;
                                v179 -= 8;
                              }

                              while (v179 > 7);
                              if (v179)
                              {
LABEL_285:
                                *v180 = ((-1 << (8 - v179)) & 0x7E ^ 0x7F) & *v180 | HIBYTE(v178);
                              }

                              v127 = v328;
                              v126 = v329;
                              v128 = v330;
                              if ((8 * (v328 - v329) - v330) <= 0x1F)
                              {
                                goto LABEL_249;
                              }
                            }

                            v126 += (v128 + 32) >> 3;
                            v128 &= 7u;
                            v329 = v126;
                            v330 = v128;
                            v193 = v336.i8[8];
                            v336.i8[12] = 0;
                            if (v336.i32[2] > 31)
                            {
                              v336.i32[2] -= 32;
                              v194 = v336.i64[0];
                              v195 = v193 & 7;
                              if (v195)
                              {
                                v196 = 32 - v195;
                                v194 = (v336.i64[0] + 1);
                                v197 = (*v336.i64[0]++ & ~(-1 << v195)) << (32 - v195);
                              }

                              else
                              {
                                v197 = 0;
                                v196 = 32;
                              }

                              v290 = v196 - 8;
                              v291 = v194 + 1;
                              v158 = (*v194 << (v196 - 8)) | v197;
                              v336.i64[0] = (v194 + 1);
                              v292 = v196 - 16;
                              if (v196 >= 0x10)
                              {
                                v158 |= v194[1] << v292;
                                v291 = v194 + 2;
                                v336.i64[0] = (v194 + 2);
                                if (v290 < 0x10)
                                {
                                  v290 = v196 - 16;
                                }

                                else
                                {
                                  v290 = v196 - 24;
                                  v158 |= v194[2] << (v196 - 24);
                                  v291 = v194 + 3;
                                  v336.i64[0] = (v194 + 3);
                                  if (v292 >= 0x10)
                                  {
                                    v290 = v196 - 32;
                                    v158 |= v194[3] << (v196 - 32);
                                    v291 = v194 + 4;
                                    v336.i64[0] = (v194 + 4);
                                  }
                                }
                              }

                              if (v290)
                              {
                                v158 |= *v291 >> (8 - v290);
                              }

LABEL_251:
                              if ((8 * (v127 - v126) - v128) < 0x20)
                              {
LABEL_252:
                                v336.i8[12] = 0;
                                goto LABEL_253;
                              }

                              v181 = 8 - v128;
                              v182 = 32;
                              if ((8 - v128) < 0x20)
                              {
                                v182 = 8 - v128;
                              }

                              v183 = &v126[v327];
                              v126[v327] = v126[v327] & ~((255 << (8 - v182)) >> v128) | (BYTE3(v158) >> v128);
                              if (v181 >= 0x20)
                              {
                                v127 = v328;
                                v126 = v329;
                                v128 = v330;
                                if ((8 * (v328 - v329) - v330) < 0x20)
                                {
                                  goto LABEL_252;
                                }
                              }

                              else
                              {
                                v184 = v158 << 32 << v181;
                                v185 = v128 + 24;
                                v186 = v183 + 1;
                                if (v185 < 8)
                                {
                                  goto LABEL_294;
                                }

                                do
                                {
                                  *v186++ = HIBYTE(v184);
                                  v184 <<= 8;
                                  v185 -= 8;
                                }

                                while (v185 > 7);
                                if (v185)
                                {
LABEL_294:
                                  *v186 = ((-1 << (8 - v185)) & 0x7E ^ 0x7F) & *v186 | HIBYTE(v184);
                                }

                                v127 = v328;
                                v126 = v329;
                                v128 = v330;
                                if ((8 * (v328 - v329) - v330) <= 0x1F)
                                {
                                  goto LABEL_252;
                                }
                              }

                              v126 += (v128 + 32) >> 3;
                              v128 &= 7u;
                              v329 = v126;
                              v330 = v128;
                              v336.i8[12] = 0;
                              if (v336.i32[2] > 0)
                              {
                                v198 = v336.i8[8] & 7;
                                --v336.i32[2];
                                v159 = *v336.i64[0];
                                if (v198 < 2)
                                {
                                  if (v198 == 1)
                                  {
                                    LODWORD(v159) = v159 & 1;
                                    ++v336.i64[0];
                                  }

                                  else
                                  {
                                    v159 >>= 7;
                                  }
                                }

                                else
                                {
                                  LODWORD(v159) = (v159 >> (v198 - 1)) & 1;
                                }

LABEL_254:
                                if (v128 == 8 * (v127 - v126))
                                {
                                  goto LABEL_258;
                                }

                                v160 = &v126[v327];
                                *v160 = *v160 & ~(((v128 != 8) << 7) >> v128) | (v159 << 7 >> v128);
                                if (v128 == 8)
                                {
                                  v160[1] = v160[1] & 0x7F | ((v159 & 1) << 7);
                                }

                                v127 = v328;
                                v126 = v329;
                                v128 = 8 * (v328 - v329);
                                if (v128 == v330)
                                {
LABEL_258:
                                  v336.i8[12] = 0;
                                  goto LABEL_259;
                                }

                                v126 = &v329[(v330 + 1) >> 3];
                                v128 = (v330 + 1) & 7;
                                v329 = v126;
                                v330 = v128;
                                v170 = v336.i32[2];
                                goto LABEL_314;
                              }

LABEL_253:
                              LODWORD(v159) = 0;
                              v336.i32[2] = -1;
                              goto LABEL_254;
                            }

LABEL_250:
                            v158 = 0;
                            v336.i32[2] = -1;
                            goto LABEL_251;
                          }
                        }

                        v157 = 0;
                        v336.i32[2] = -1;
                        goto LABEL_248;
                      }

LABEL_207:
                      v336.i32[2] = -1;
                      if (v125)
                      {
                        goto LABEL_208;
                      }

                      goto LABEL_233;
                    }

                    v336.i32[2] = v68 - 4;
                    if (v71 < 4)
                    {
                      v94 = 3;
                      if (((v68 - 1) & 7) != 0)
                      {
                        v94 = 3 - v71;
                        v95 = *v70++;
                        v81 = (v95 << (3 - v71)) & 7;
                        v336.i64[0] = v70;
                        if (v71 == 3)
                        {
                          goto LABEL_169;
                        }
                      }

                      else
                      {
                        LODWORD(v81) = 0;
                      }

                      v81 = (*v70 >> (8 - v94)) | v81;
                    }

                    else
                    {
                      v81 = (*v70 >> (v71 - 3)) & 7;
                    }

LABEL_169:
                    v336.i8[12] = 0;
                    if (v68 != 4)
                    {
                      v336.i32[2] = v68 - 5;
                      if (((v68 - 5) & 7) != 0)
                      {
                        v83 = (*v70 >> ((v68 - 5) & 7)) & 1;
                      }

                      else
                      {
                        v336.i64[0] = (v70 + 1);
                        v83 = *v70++ & 1;
                      }

                      v336.i8[12] = 0;
                      if (v68 >= 6)
                      {
                        v336.i32[2] = v68 - 6;
                        v105 = (v68 - 6) & 7;
                        if (v105)
                        {
                          v106 = (*v70 >> v105) & 1;
                        }

                        else
                        {
                          v336.i64[0] = (v70 + 1);
                          v106 = *v70++ & 1;
                        }

                        if (v106)
                        {
                          v336.i8[12] = 0;
                          if (v68 < 0xE)
                          {
                            goto LABEL_192;
                          }

                          v336.i32[2] = v68 - 14;
                          v85 = *v70;
                          v336.i64[0] = (v70 + 1);
                          if (((v68 - 6) & 7) != 0)
                          {
                            v85 = (((v85 & ~(-1 << v105)) << (8 - v105)) | (v70[1] >> v105));
                          }

                          v336.i8[12] = 0;
                          v113 = v68 - 22;
                          if (v68 < 0x16)
                          {
                            goto LABEL_192;
                          }

                          v336.i32[2] = v68 - 22;
                          v86 = v70[1];
                          v336.i64[0] = (v70 + 2);
                          if (((v68 - 14) & 7) != 0)
                          {
                            v86 = (((v86 & ~(-1 << ((v68 - 14) & 7))) << (8 - ((v68 - 14) & 7))) | (v70[2] >> ((v68 - 14) & 7)));
                          }

                          v336.i8[12] = 0;
                          v114 = v68 >= 0x1E;
                          v115 = v68 - 30;
                          if (!v114)
                          {
                            goto LABEL_192;
                          }

                          v336.i32[2] = v115;
                          v87 = v70[2];
                          v336.i64[0] = (v70 + 3);
                          if ((v113 & 7) != 0)
                          {
                            v87 = (((v87 & ~(-1 << (v113 & 7))) << (8 - (v113 & 7))) | (v70[3] >> (v113 & 7)));
                          }

                          v82 = 1;
                          v84 = 1;
                          v336.i8[12] = 1;
                          if (!a4)
                          {
LABEL_508:
                            if (v26 == 8 * (v52 - v25))
                            {
                              goto LABEL_510;
                            }

                            v25[v327] = (-129 >> v26) & v25[v327] | ((v82 << 7) >> v26);
                            v109 = v328;
                            if (v330 == 8 * (v328 - v329))
                            {
                              goto LABEL_510;
                            }

                            v110 = &v329[(v330 + 1) >> 3];
                            v111 = (v330 + 1) & 7;
                            v329 = v110;
                            v330 = v111;
                            if (v72)
                            {
                              v112 = v81;
                              v90 = v83;
                              v91 = v84;
                              v89 = v85;
                              v107 = v86;
                              v108 = v87;
                              goto LABEL_515;
                            }

LABEL_523:
                            v305 = 0;
                            LODWORD(v112) = v81;
                            v90 = v83;
                            v306 = v84;
                            v89 = v85;
                            v307 = v86;
                            v308 = v87;
                            goto LABEL_524;
                          }
                        }

                        else
                        {
                          v84 = 0;
                          v85 = 3;
                          v82 = 1;
                          v86 = 3;
                          v87 = 3;
                          v336.i8[12] = 1;
                          if (!a4)
                          {
                            goto LABEL_508;
                          }
                        }

LABEL_123:
                        v88 = *(a4 + 1);
                        v89 = *a4;
                        v90 = v88 == 2;
                        if (v88 == 2)
                        {
                          if (v89 != 2)
                          {
                            v90 = 1;
                            v91 = 1;
                            goto LABEL_178;
                          }
                        }

                        else
                        {
                          if (v89 != 2)
                          {
                            v90 = 0;
                            v91 = 1;
LABEL_178:
                            if (v26 == 8 * (v52 - v25) || (v107 = a4[1], v108 = a4[2], v25[v327] = (-129 >> v26) & v25[v327] | (0x80u >> v26), v109 = v328, v330 == 8 * (v328 - v329)))
                            {
LABEL_510:
                              if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                              {
LABEL_511:
                                v116 = 1;
                                goto LABEL_194;
                              }

LABEL_512:
                              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v294, v85, v295, v296, v297, v298, v299, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/sps_vui_rewriter.cc");
                              v116 = 1;
                              goto LABEL_194;
                            }

                            v110 = &v329[(v330 + 1) >> 3];
                            v111 = (v330 + 1) & 7;
                            v329 = v110;
                            v330 = v111;
                            v112 = 5;
LABEL_515:
                            if (8 * (v109 - v110) - v111 < 3)
                            {
                              goto LABEL_516;
                            }

                            v300 = &v110[v327];
                            v301 = 3;
                            if (8 - v111 < 3)
                            {
                              v301 = 8 - v111;
                            }

                            *v300 = *v300 & ~(((255 << (8 - v301)) & 0xFEu) >> v111) | ((32 * v112) >> v111);
                            if (v111 <= 5)
                            {
                              v302 = v328;
                              v303 = v329;
                              v304 = v330;
                              if ((8 * (v328 - v329) - v330) >= 3)
                              {
                                goto LABEL_546;
                              }
                            }

                            else
                            {
                              v300[1] = ((255 << (13 - v111)) & 0x7E ^ 0x7F) & v300[1] | ((v112 << 61 << (8 - v111)) >> 56);
                              v302 = v328;
                              v303 = v329;
                              v304 = v330;
                              if ((8 * (v328 - v329) - v330) > 2)
                              {
LABEL_546:
                                v315 = v304 + 3;
                                v316 = &v303[v315 >> 3];
                                v317 = v315 & 7;
                                v329 = v316;
                                v330 = v317;
                                if (v317 == 8 * (v302 - v316) || (v316[v327] = (-129 >> v317) & v316[v327] | ((v90 << 7) >> v317), v330 == 8 * (v328 - v329)))
                                {
                                  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                                  {
                                    goto LABEL_511;
                                  }

                                  goto LABEL_512;
                                }

                                v323 = v108;
                                v324 = v107;
                                v319 = v84;
                                v320 = v87;
                                v321 = v86;
                                v322 = v85;
                                v326 = v83;
                                v329 += (v330 + 1) >> 3;
                                v330 = (v330 + 1) & 7;
                                if ((webrtc::BitBufferWriter::WriteBits(&v327, v91, 1uLL) & 1) == 0)
                                {
                                  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                                  {
                                    goto LABEL_511;
                                  }

                                  goto LABEL_512;
                                }

                                if (v91)
                                {
                                  if ((webrtc::BitBufferWriter::WriteBits(&v327, v89, 8uLL) & 1) == 0)
                                  {
                                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                                    {
                                      goto LABEL_511;
                                    }

                                    goto LABEL_512;
                                  }

                                  if ((webrtc::BitBufferWriter::WriteBits(&v327, v324, 8uLL) & 1) == 0)
                                  {
                                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                                    {
                                      goto LABEL_511;
                                    }

                                    goto LABEL_512;
                                  }

                                  if ((webrtc::BitBufferWriter::WriteBits(&v327, v323, 8uLL) & 1) == 0)
                                  {
                                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                                    {
                                      goto LABEL_511;
                                    }

                                    goto LABEL_512;
                                  }

                                  v305 = 1;
                                  v306 = 1;
                                }

                                else
                                {
                                  v306 = 0;
                                  v305 = 1;
                                }

                                v307 = v324;
                                v83 = v326;
                                v86 = v321;
                                v85 = v322;
                                v84 = v319;
                                v87 = v320;
                                v308 = v323;
LABEL_524:
                                v309 = v305 == v82 && v112 == v81;
                                v116 = v309 && v90 == v83 && v306 == v84 && v89 == v85 && v307 == v86 && v308 == v87;
                                goto LABEL_194;
                              }
                            }

LABEL_516:
                            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                            {
                              goto LABEL_511;
                            }

                            goto LABEL_512;
                          }

                          if (a4[1] == 2 && a4[2] == 2)
                          {
                            v325 = v83;
                            v99 = v85;
                            v100 = v86;
                            v101 = v87;
                            v102 = v82;
                            v103 = v84;
                            v104 = webrtc::BitBufferWriter::WriteBits(&v327, 0, 1uLL);
                            v83 = v325;
                            if ((v104 & 1) == 0)
                            {
                              goto LABEL_510;
                            }

                            v84 = v103;
                            v82 = v102;
                            v87 = v101;
                            v86 = v100;
                            v85 = v99;
                            goto LABEL_523;
                          }
                        }

                        v91 = a4[1] != 2 || a4[2] != 2;
                        v89 = 2;
                        goto LABEL_178;
                      }
                    }

                    goto LABEL_192;
                  }

                  v336.i8[12] = 0;
                  if (v336.i32[2] > 0)
                  {
                    v69 = v336.i8[8] & 7;
                    --v336.i32[2];
                    v66 = *v336.i64[0];
                    if (v69 < 2)
                    {
                      if (v69 == 1)
                      {
                        LODWORD(v66) = v66 & 1;
                        ++v336.i64[0];
                      }

                      else
                      {
                        v66 >>= 7;
                      }
                    }

                    else
                    {
                      LODWORD(v66) = (v66 >> (v69 - 1)) & 1;
                    }

LABEL_91:
                    if (v26 == 8 * (v52 - v25))
                    {
                      goto LABEL_192;
                    }

                    v67 = &v25[v327];
                    *v67 = *v67 & ~(((v26 != 8) << 7) >> v26) | (v66 << 7 >> v26);
                    if (v26 == 8)
                    {
                      v67[1] = v67[1] & 0x7F | ((v66 & 1) << 7);
                    }

                    v52 = v328;
                    if (v330 == 8 * (v328 - v329))
                    {
                      goto LABEL_192;
                    }

                    v25 = &v329[(v330 + 1) >> 3];
                    v26 = (v330 + 1) & 7;
                    v329 = v25;
                    v330 = v26;
                    v68 = v336.u32[2];
                    goto LABEL_100;
                  }
                }

                LODWORD(v66) = 0;
                v336.i32[2] = -1;
                goto LABEL_91;
              }

LABEL_76:
              v41 = 0;
              v39 = -1;
              if ((8 * (v16 - v25) - v26) < 8)
              {
                goto LABEL_77;
              }

              goto LABEL_44;
            }

LABEL_33:
            if ((8 * (v16 - v25) - v26) < 2)
            {
              if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
              {
                goto LABEL_396;
              }

              goto LABEL_395;
            }

            v47 = 8 - v26;
            if ((8 - v26) >= 2)
            {
              v47 = 2;
            }

            *v25 &= ~(((255 << (8 - v47)) & 0xFEu) >> v26);
            if (v26 == 7)
            {
              v25[1] &= ~0x80u;
            }

            v48 = v26 + 2;
            v49 = &v25[v48 >> 3];
            v50 = v48 & 7;
            v329 = v49;
            v330 = v50;
            if (a4)
            {
              v51 = *(a4 + 1) == 2 || *a4 != 2 || a4[1] != 2 || a4[2] != 2;
              if (v50 != 8 * (v16 - v49))
              {
                if (v51)
                {
                  v53 = 128;
                }

                else
                {
                  v53 = 0;
                }

                *v49 = (-129 >> v50) & *v49 | (v53 >> v50);
                v54 = v50 + 1;
                v329 = &v49[v54 >> 3];
                v330 = v54 & 7;
                if (v51)
                {
                  if ((webrtc::BitBufferWriter::WriteBits(&v327, 5, 3uLL) & 1) == 0)
                  {
                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                    {
                      goto LABEL_554;
                    }

                    goto LABEL_553;
                  }

                  if ((webrtc::BitBufferWriter::WriteBits(&v327, *(a4 + 1) == 2, 1uLL) & 1) == 0)
                  {
                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                    {
                      goto LABEL_554;
                    }

                    goto LABEL_553;
                  }

                  if ((webrtc::BitBufferWriter::WriteBits(&v327, 1, 1uLL) & 1) == 0)
                  {
                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                    {
                      goto LABEL_554;
                    }

                    goto LABEL_553;
                  }

                  if ((webrtc::BitBufferWriter::WriteBits(&v327, *a4, 8uLL) & 1) == 0)
                  {
                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                    {
                      goto LABEL_554;
                    }

                    goto LABEL_553;
                  }

                  if ((webrtc::BitBufferWriter::WriteBits(&v327, a4[1], 8uLL) & 1) == 0)
                  {
                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                    {
                      goto LABEL_554;
                    }

                    goto LABEL_553;
                  }

                  if ((webrtc::BitBufferWriter::WriteBits(&v327, a4[2], 8uLL) & 1) == 0)
                  {
                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                    {
                      goto LABEL_554;
                    }

LABEL_553:
                    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v55, v56, v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/sps_vui_rewriter.cc");
LABEL_554:
                    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                    {
                      goto LABEL_395;
                    }

                    goto LABEL_396;
                  }
                }

LABEL_107:
                if ((webrtc::BitBufferWriter::WriteBits(&v327, 0, 5uLL) & 1) == 0)
                {
                  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                  {
                    goto LABEL_396;
                  }

                  goto LABEL_395;
                }

                if ((webrtc::BitBufferWriter::WriteBits(&v327, 1, 1uLL) & 1) == 0)
                {
                  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                  {
                    goto LABEL_396;
                  }

                  goto LABEL_395;
                }

                {
                  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
                  {
                    goto LABEL_396;
                  }

                  goto LABEL_395;
                }

                goto LABEL_355;
              }
            }

            else if (webrtc::BitBufferWriter::WriteBits(&v327, 0, 1uLL))
            {
              goto LABEL_107;
            }

            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
            {
              goto LABEL_396;
            }

            goto LABEL_395;
          }
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    else if (*(a3 + 56))
    {
      *(a3 + 56) = 0;
      v16 = (a2 + 64);
      if (a2 == -64)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v18 = v332;
      *a3 = v331;
      *(a3 + 16) = v18;
      *(a3 + 32) = *v333;
      *(a3 + 48) = v334;
      *(a3 + 56) = 1;
      v16 = (a2 + 64);
      if (a2 == -64)
      {
        goto LABEL_13;
      }
    }

    operator new[]();
  }

  v17 = 0;
LABEL_399:
  if (v337)
  {
    v338 = v337;
    operator delete(v337);
  }

  return v17;
}

void webrtc::SpsVuiRewriter::ParseOutgoingBitstreamAndRewrite(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v5 = a3;
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v7 = a2 - 3;
  if (a2 < 4)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_23;
  }

  v9 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v11 = *(v6 + 2 + v9);
        if (v11 <= 1)
        {
          break;
        }

LABEL_7:
        v9 += 3;
        if (v9 >= v7)
        {
          goto LABEL_20;
        }
      }

      if (v11 == 1)
      {
        break;
      }

      if (++v9 >= v7)
      {
        goto LABEL_20;
      }
    }

    if (*(v6 + 1 + v9) || *(v6 + v9))
    {
      goto LABEL_7;
    }

    *&v35 = v9;
    *(&v35 + 1) = v9 + 3;
    v36 = 0;
    if (v9)
    {
      v10 = v9;
      if (!*(v6 + v9 - 1))
      {
        *&v35 = v9 - 1;
        v10 = v9 - 1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v39 != v38)
    {
      *(v39 - 1) = v10 - *(v39 - 2);
    }

    std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&v38, &v35);
    v9 += 3;
  }

  while (v9 < v7);
LABEL_20:
  v12 = v38;
  v13 = v39;
  v5 = a3;
  if (v39 != v38)
  {
    *(v39 - 1) = a2 - *(v39 - 2);
  }

LABEL_23:
  v14 = a2 - 0x5555555555555540 * ((v13 - v12) >> 3);
  *v5 = 0;
  v5[1] = v14;
  if (v14)
  {
    operator new[]();
  }

  v18 = 0;
  v5[2] = 0;
  if (v12 == v13)
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    if (!v12)
    {
      return;
    }

LABEL_56:
    v39 = v12;
    operator delete(v12);
  }

  else
  {
    v32 = v5;
    v15 = 0;
    v16 = (v12 + 16);
    v33 = v13;
    v34 = v4;
    do
    {
      v20 = *(v16 - 2);
      v19 = *(v16 - 1);
      v21 = v16 - 2;
      v22 = v19 - v20;
      v23 = (v4 + v20);
      if (a2 - v20 < v19 - v20)
      {
        v22 = a2 - v20;
      }

      if (!v22)
      {
        v23 = 0;
      }

      if (a2 > v20)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      if (a2 > v20)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      v26 = a2 - v19;
      if (a2 > v19)
      {
        v27 = v4 + v19;
        v28 = v26 >= *v16 ? *v16 : v26;
        v29 = v28 ? v27 : 0;
        if (v28)
        {
          v30 = *v29 & 0x1F;
          if (v30 != 9)
          {
            if (v30 == 7)
            {
              LOBYTE(v35) = 0;
              v37 = 0;
              operator new[]();
            }

            if (v24)
            {
              if (v24 + v15)
              {
                operator new[]();
              }

              v31 = v18;
              memcpy((v18 + v15), v25, v24);
              v18 = v31;
              v15 += v24;
              v13 = v33;
              v4 = v34;
            }

            if (v15 + v28)
            {
              operator new[]();
            }

            v17 = v18;
            memcpy((v18 + v15), v29, v28);
            v18 = v17;
            v15 += v28;
          }
        }
      }

      v16 += 3;
    }

    while (v21 + 3 != v13);
    v12 = v38;
    *v32 = v15;
    v32[1] = 0;
    v32[2] = v18;
    if (v12)
    {
      goto LABEL_56;
    }
  }
}

uint64_t webrtc::anonymous namespace::AddBitstreamRestriction(webrtc::_anonymous_namespace_ *this, webrtc::BitBufferWriter *a2)
{
  v2 = a2;
  if ((webrtc::BitBufferWriter::WriteBits(this, 1, 1uLL) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

LABEL_23:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/sps_vui_rewriter.cc");
    return 0;
  }

  if ((webrtc::BitBufferWriter::WriteBits(this, 3, 3uLL) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((webrtc::BitBufferWriter::WriteBits(this, 2, 3uLL) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((webrtc::BitBufferWriter::WriteBits(this, 17, 9uLL) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((webrtc::BitBufferWriter::WriteBits(this, 17, 9uLL) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((webrtc::BitBufferWriter::WriteBits(this, 1, 1uLL) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v2 != -1 && (webrtc::BitBufferWriter::WriteBits(this, v2 + 1, (2 * __clz(v2 + 1)) ^ 0x7F) & 1) != 0)
  {
    return 1;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t webrtc::anonymous namespace::CopyHrdParameters(webrtc::_anonymous_namespace_ *this, webrtc::BitstreamReader *a2, webrtc::BitBufferWriter *a3)
{
  ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  v6 = ExponentialGolomb;
  if (ExponentialGolomb == -1 || (webrtc::BitBufferWriter::WriteBits(a2, ExponentialGolomb + 1, (2 * __clz(ExponentialGolomb + 1)) ^ 0x7F) & 1) == 0)
  {
    *(this + 12) = 0;
    v9 = this + 12;
    v8 = (this + 8);
  }

  else
  {
    v8 = (this + 8);
    v7 = *(this + 2);
    *(this + 12) = 0;
    v9 = this + 12;
    if (v7 > 7)
    {
      *(this + 2) = v7 - 8;
      v10 = *this;
      v11 = **this;
      v12 = v7 & 7;
      if (v12)
      {
        *this = v10 + 1;
        if (!webrtc::BitBufferWriter::WriteBits(a2, ((v11 & ~(-1 << v12)) << (8 - v12)) | (*(v10 + 1) >> v12), 8uLL))
        {
          goto LABEL_33;
        }
      }

      else
      {
        *this = v10 + 1;
        if (!webrtc::BitBufferWriter::WriteBits(a2, v11, 8uLL))
        {
          goto LABEL_33;
        }
      }

      goto LABEL_9;
    }
  }

  *v8 = -1;
  if (!webrtc::BitBufferWriter::WriteBits(a2, 0, 8uLL))
  {
LABEL_33:
    *v9 = 0;
    goto LABEL_34;
  }

LABEL_9:
  v13 = *v8;
  *v9 = 1;
  if (v13 < 0)
  {
    goto LABEL_33;
  }

  v14 = 0;
  do
  {
    v15 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
    if (v15 == -1 || (webrtc::BitBufferWriter::WriteBits(a2, v15 + 1, (2 * __clz(v15 + 1)) ^ 0x7F) & 1) == 0)
    {
      *v8 = -1;
    }

    v16 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
    if (v16 == -1 || (webrtc::BitBufferWriter::WriteBits(a2, v16 + 1, (2 * __clz(v16 + 1)) ^ 0x7F) & 1) == 0)
    {
      *v9 = 0;
LABEL_20:
      v20 = 0;
      *v8 = -1;
      goto LABEL_21;
    }

    v17 = *v8;
    *v9 = 0;
    if (v17 <= 0)
    {
      goto LABEL_20;
    }

    v18 = v17 & 7;
    *(this + 2) = v17 - 1;
    v19 = **this;
    if (v18 < 2)
    {
      if (v18 == 1)
      {
        v20 = v19 & 1;
        ++*this;
      }

      else
      {
        v20 = v19 >> 7;
      }
    }

    else
    {
      v20 = (v19 >> (v18 - 1)) & 1;
    }

LABEL_21:
    if (!webrtc::BitBufferWriter::WriteBits(a2, v20, 1uLL))
    {
      goto LABEL_33;
    }

    v21 = *v8;
    *v9 = 1;
    if (v21 < 0)
    {
      break;
    }

    v22 = v14++ >= v6;
  }

  while (!v22);
  *v9 = 0;
  if (v21 < 20)
  {
LABEL_34:
    v28 = 0;
    *v8 = -1;
    goto LABEL_35;
  }

  *(this + 2) = v21 - 20;
  v23 = *this;
  v24 = v21 & 7;
  if ((v21 & 7) != 0)
  {
    v25 = 20 - v24;
    v26 = *v23++;
    v27 = (v26 & ~(-1 << v24)) << (20 - v24);
    *this = v23;
  }

  else
  {
    v27 = 0;
    v25 = 20;
  }

  v30 = v25 - 8;
  v31 = v23 + 1;
  v28 = (*v23 << (v25 - 8)) | v27;
  *this = v23 + 1;
  v22 = v25 >= 0x10;
  v32 = v25 - 16;
  if (v22)
  {
    v28 |= v23[1] << v32;
    v31 = v23 + 2;
    *this = v23 + 2;
    v30 = v32;
  }

  if (v30)
  {
    v28 |= *v31 >> (8 - v30);
  }

LABEL_35:
  result = webrtc::BitBufferWriter::WriteBits(a2, v28, 0x14uLL);
  if ((result & 1) == 0)
  {
    *v8 = -1;
  }

  return result;
}

void webrtc::SrtpSession::~SrtpSession(webrtc::SrtpSession *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(v2 + 16) = 0;
    v3 = *(this + 1);
    v4 = *v3;
    while (v4)
    {
      v5 = v4[15];
      v6 = srtp_stream_dealloc(v4, v3[1]);
      v4 = v5;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    v7 = v3[1];
    if (!v7 || !srtp_stream_dealloc(v7, 0))
    {
      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v3);
      }

      free(v3);
    }
  }

LABEL_11:
  if (*(this + 24) == 1)
  {
    {
      operator new();
    }

    v9 = *(v8 + 64) - 1;
    *(v8 + 64) = v9;
    if (!v9)
    {
      if (srtp_install_log_handler(0, 0) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
      }

      if (srtp_crypto_kernel_shutdown())
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
        }
      }
    }

    pthread_mutex_unlock(v8);
  }
}

uint64_t webrtc::SrtpSession::SetKey(uint64_t a1, unsigned int a2, int a3, void *a4, uint64_t *a5)
{
  if (*(a1 + 8))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }

    return 0;
  }

  {
    operator new();
  }

  v18 = *(v17 + 64);
  if (!v18)
  {
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (srtp_crypto_kernel_init() || srtp_crypto_kernel_load_debug_module(&mod_srtp))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
LABEL_15:
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
      }
    }

    else
    {
      srtp_event_handler[0] = webrtc::SrtpSession::HandleEventThunk;
      if (!external_crypto_init())
      {
        v18 = *(v17 + 64);
        goto LABEL_6;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    pthread_mutex_unlock(v17);
    return 0;
  }

LABEL_6:
  *(v17 + 64) = v18 + 1;
  pthread_mutex_unlock(v17);
  *(a1 + 24) = 1;

  return webrtc::SrtpSession::DoSetKey(a1, a2, a3, a4, a5);
}

BOOL webrtc::SrtpSession::ProtectRtp(webrtc::SrtpSession *this, webrtc::CopyOnWriteBuffer *a2, __n128 a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }

    return 0;
  }

  v6 = *(a2 + 2);
  v7 = v6 + *(this + 4);
  v8 = *a2;
  if (*a2)
  {
    if (*(v8 + 8) - *(a2 + 1) < v7)
    {
      goto LABEL_4;
    }
  }

  else if (v7)
  {
LABEL_4:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }

    return 0;
  }

  if (*(this + 40) == 1)
  {
    webrtc::SrtpSession::DumpPacket(this, a2, 1);
    v6 = *(a2 + 2);
    v3 = *(this + 1);
    v8 = *a2;
  }

  v36 = v6;
  if (v8)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2, *(v8 + 8) - *(a2 + 1));
    v24 = *(*a2 + 16) + *(a2 + 1);
  }

  else
  {
    v24 = 0;
  }

  v25 = srtp_protect_mki(v3, v24, &v36, 0, 0, a3);
  v26 = v25;
  v27 = *a2;
  if (*a2)
  {
    v27 = *(v27 + 16) + *(a2 + 1);
  }

  if (!*(a2 + 2))
  {
    v27 = 0;
  }

  v28 = __rev16(*(v27 + 2));
  if (v25)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }
  }

  else
  {
    webrtc::CopyOnWriteBuffer::SetSize(a2, v36);
    *(this + 7) = v28;
  }

  return v26 == 0;
}

void webrtc::SrtpSession::DumpPacket(webrtc::SrtpSession *this, const webrtc::CopyOnWriteBuffer *a2, int a3)
{
  if (webrtc::g_clock)
  {
    v5 = (*(*webrtc::g_clock + 16))(webrtc::g_clock) / 1000;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      return;
    }
  }

  else
  {
    gettimeofday(&v51, 0);
    v5 = SLODWORD(v51.__r_.__value_.__r.__words[1]) + 1000000 * v51.__r_.__value_.__r.__words[0];
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      return;
    }
  }

  v6 = v5 / 1000 % 86400000;
  v27[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc";
  v27[1] = 5432;
  v27[2] = &v26;
  v28[0] = "\n";
  v28[1] = v27;
  v7 = "I";
  if (a3)
  {
    v7 = "O";
  }

  v29[0] = v7;
  v29[1] = v28;
  v30[0] = " ";
  v30[1] = v29;
  v25 = 48;
  webrtc::webrtc_logging_impl::MakeVal<std::__iom_t4<char>,std::__iom_t4<char>,(void *)0>(&v51, &v25);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    v32 = v30;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v31 = v51;
    v32 = v30;
  }

  v24 = 2;
  webrtc::webrtc_logging_impl::MakeVal<std::__iom_t6,std::__iom_t6,(void *)0>(&v51, &v24);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v51.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external(&v33, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    v34 = &v31;
    operator delete(v8);
  }

  else
  {
    v33 = v51;
    v34 = &v31;
  }

  v35[0] = v6 / 3600000;
  v35[1] = &v33;
  v36[0] = ":";
  v36[1] = v35;
  v23 = 48;
  webrtc::webrtc_logging_impl::MakeVal<std::__iom_t4<char>,std::__iom_t4<char>,(void *)0>(&v51, &v23);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    v38 = v36;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v37 = v51;
    v38 = v36;
  }

  v22 = 2;
  webrtc::webrtc_logging_impl::MakeVal<std::__iom_t6,std::__iom_t6,(void *)0>(&v51, &v22);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v51.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external(&v39, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    v40 = &v37;
    operator delete(v9);
  }

  else
  {
    v39 = v51;
    v40 = &v37;
  }

  v41[0] = (v6 / 60000 - 60 * ((((34953 * (v6 / 60000)) >> 16) >> 5) + ((((34953 * (v6 / 60000)) >> 16) & 0x8000) >> 15)));
  v41[1] = &v39;
  v42[0] = ":";
  v42[1] = v41;
  v21 = 48;
  webrtc::webrtc_logging_impl::MakeVal<std::__iom_t4<char>,std::__iom_t4<char>,(void *)0>(&v51, &v21);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    v44 = v42;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v43 = v51;
    v44 = v42;
  }

  v20 = 2;
  webrtc::webrtc_logging_impl::MakeVal<std::__iom_t6,std::__iom_t6,(void *)0>(&v51, &v20);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v51.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external(&v45, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    v46 = &v43;
    operator delete(v10);
  }

  else
  {
    v45 = v51;
    v46 = &v43;
  }

  v47[0] = v6 / 1000 % 60;
  v47[1] = &v45;
  v48[0] = ".";
  v48[1] = v47;
  v19 = 48;
  webrtc::webrtc_logging_impl::MakeVal<std::__iom_t4<char>,std::__iom_t4<char>,(void *)0>(&v51, &v19);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    v50 = v48;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v49 = v51;
    v50 = v48;
  }

  v18 = 3;
  webrtc::webrtc_logging_impl::MakeVal<std::__iom_t6,std::__iom_t6,(void *)0>(&v53, &v18);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v53.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external(&v51, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    v52 = &v49;
    operator delete(v14);
    v11 = *a2;
    if (*a2)
    {
LABEL_34:
      v12 = *(a2 + 2);
      v13 = (*(v11 + 16) + *(a2 + 1));
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v51 = v53;
    v52 = &v49;
    v11 = *a2;
    if (*a2)
    {
      goto LABEL_34;
    }
  }

  v13 = 0;
  v12 = *(a2 + 2);
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    return;
  }

LABEL_38:
  if (!v13 && v12)
  {
    goto LABEL_59;
  }

  webrtc::hex_encode_with_delimiter(v13, v12, 32, &v53);
  v15 = *(*(*(*(*(*(*(*(*(*(v52[1].__r_.__value_.__r.__words[0] + 8) + 8) + 24) + 24) + 8) + 8) + 24) + 24) + 8) + 8);
  v16 = *(v15 + 24);
  v17 = *(*(*(*(v16 + 24) + 8) + 8) + 8);
  webrtc::webrtc_logging_impl::Log( webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t,  v15,  v16,  **(v16 + 24),  **(*(v16 + 24) + 8),  **(*(*(v16 + 24) + 8) + 8),  v17[1],  *v17,  *v17);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_52;
    }
  }

  else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v51.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v49.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_44:
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_54;
  }

LABEL_53:
  operator delete(v45.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_45:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

LABEL_54:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_46:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_56;
  }

LABEL_55:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_47:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(v37.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_48:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_58:
    operator delete(v31.__r_.__value_.__l.__data_);
    return;
  }

LABEL_57:
  operator delete(v33.__r_.__value_.__l.__data_);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_58;
  }
}

BOOL webrtc::SrtpSession::ProtectRtcp(webrtc::SrtpSession *this, webrtc::CopyOnWriteBuffer *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    return 0;
  }

  v4 = *(a2 + 2);
  v5 = *a2;
  if (*a2)
  {
    if (*(v5 + 8) - *(a2 + 1) < (v4 + *(this + 5) + 4))
    {
LABEL_4:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return 0;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
      return 0;
    }
  }

  else if (v4 + *(this + 5) != -4)
  {
    goto LABEL_4;
  }

  if (*(this + 40) == 1)
  {
    webrtc::SrtpSession::DumpPacket(this, a2, 1);
    v4 = *(a2 + 2);
    v2 = *(this + 1);
    v5 = *a2;
  }

  v32 = v4;
  if (v5)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2, *(v5 + 8) - *(a2 + 1));
    v22 = *(*a2 + 16) + *(a2 + 1);
  }

  else
  {
    v22 = 0;
  }

  v23 = srtp_protect_rtcp_mki(v2, v22, &v32, 0, 0);
  v24 = v23 == 0;
  if (v23)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }

    return v24;
  }

  else
  {
    webrtc::CopyOnWriteBuffer::SetSize(a2, v32);
    return v24;
  }
}

BOOL webrtc::SrtpSession::UnprotectRtp(webrtc::SrtpSession *this, webrtc::CopyOnWriteBuffer *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
      return 0;
    }

    return 0;
  }

  v26 = *(a2 + 2);
  if (*a2)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2, *(*a2 + 8) - *(a2 + 1));
    v5 = *(*a2 + 16) + *(a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v15 = srtp_unprotect_mki(v2, v5, &v26, 0);
  v13 = v15 == 0;
  if (!v15)
  {
    v25 = webrtc::CopyOnWriteBuffer::SetSize(a2, v26);
    if (*(this + 40) == 1)
    {
      webrtc::SrtpSession::DumpPacket(v25, a2, 0);
      return v13;
    }

    return v13;
  }

  v16 = *(this + 9);
  HIDWORD(v17) = -1030792151 * v16 + 85899344;
  LODWORD(v17) = HIDWORD(v17);
  if ((v17 >> 2) <= 0x28F5C28)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }

    v16 = *(this + 9);
  }

  *(this + 9) = v16 + 1;
  return v13;
}

BOOL webrtc::SrtpSession::UnprotectRtcp(webrtc::SrtpSession *this, webrtc::CopyOnWriteBuffer *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v24 = *(a2 + 2);
    if (*a2)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2, *(*a2 + 8) - *(a2 + 1));
      v5 = *(*a2 + 16) + *(a2 + 1);
    }

    else
    {
      v5 = 0;
    }

    v15 = srtp_unprotect_rtcp_mki(v2, v5, &v24, 0);
    v13 = v15 == 0;
    if (v15)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
        return v13;
      }

      return v13;
    }

    v23 = webrtc::CopyOnWriteBuffer::SetSize(a2, v24);
    if (*(this + 40) != 1)
    {
      return v13;
    }

    webrtc::SrtpSession::DumpPacket(v23, a2, 0);
    return v13;
  }

  else
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    return 0;
  }
}

uint64_t webrtc::SrtpSession::DoSetKey(uint64_t a1, unsigned int a2, int a3, void *a4, uint64_t *a5)
{
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  memset(&v41[1], 0, 48);
  v6 = &v41[2];
  v7 = 0xA00000014;
  v8 = 10;
  v46 = 0;
  if (a3 <= 4)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_28;
      }

      v8 = 4;
    }

    v41[1] = 0x1E00000001;
    v9 = xmmword_273BA4C90;
    v10 = 3;
  }

  else
  {
    switch(a3)
    {
      case 5:
        v9 = xmmword_273BA4C60;
        v10 = 3;
        break;
      case 7:
        v6 = &v41[1] + 1;
        LODWORD(v41[1]) = 6;
        v7 = 0x1000000000;
        v9 = xmmword_273BA4C80;
        v8 = 16;
        v10 = 28;
        break;
      case 8:
        v6 = &v41[1] + 1;
        LODWORD(v41[1]) = 7;
        v7 = 0x1000000000;
        v9 = xmmword_273BA4C70;
        v8 = 16;
        v10 = 44;
        break;
      default:
LABEL_28:
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          return 0;
        }

        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
        return 0;
    }
  }

  *v6 = v10;
  HIDWORD(v41[2]) = v7;
  LODWORD(v41[3]) = v8;
  *(&v41[3] + 4) = v9;
  *(&v41[5] + 4) = v7;
  HIDWORD(v41[6]) = v9;
  if (*a4 != DWORD2(v9))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    webrtc::webrtc_logging_impl::Log("\r\t\t\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    return 0;
  }

  v41[0] = a2;
  v11 = a4[2];
  *&v42 = v11;
  *&v44 = 1024;
  DWORD2(v44) = 1;
  if (a2 == 3 && a3 <= 6 && (*(a1 + 33) & 1) != 0)
  {
    LODWORD(v41[2]) = 4;
  }

  v12 = *a5;
  v13 = a5[1];
  if (*a5 != v13)
  {
    *&v45 = *a5;
    DWORD2(v45) = (v13 - v12) >> 2;
  }

  v46 = 0;
  v15 = (a1 + 8);
  v14 = *(a1 + 8);
  if (v14)
  {
    if (v11)
    {
      v16 = v41;
      while (!srtp_update_stream(v14, v16))
      {
        v16 = v16[15];
        if (!v16)
        {
          goto LABEL_39;
        }
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_40:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
      return 0;
    }

    return 0;
  }

  if (srtp_create((a1 + 8), v41))
  {
    *v15 = 0;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_40;
  }

  *(*(a1 + 8) + 16) = a1;
LABEL_39:
  v39 = v41[6];
  v40 = v41[2];
  *(a1 + 16) = v41[3];
  *(a1 + 20) = v39;
  *(a1 + 32) = v40 == 4;
  return 1;
}

void webrtc::SrtpSession::HandleEventThunk(_DWORD *a1)
{
  if (*(*a1 + 16))
  {
    v1 = a1[3];
    v2 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        if (v2)
        {
          return;
        }

        goto LABEL_16;
      }

      if (v1 == 3)
      {
        if (v2)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!v1)
      {
        if (v2)
        {
          return;
        }

        goto LABEL_16;
      }

      if (v1 == 1)
      {
        if (v2)
        {
          return;
        }

LABEL_16:
        webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
        return;
      }
    }

    if ((v2 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }
  }
}

pthread_mutex_t *webrtc::anonymous namespace::LibSrtpInitializer::LibSrtpInitializer(pthread_mutex_t *this)
{
  v4 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init(this, &v3);
  pthread_mutexattr_destroy(&v3);
  LODWORD(this[1].__sig) = 0;
  return this;
}

void webrtc::anonymous namespace::LibSrtpInitializer::LibSrtpLogHandler(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        return;
      }

      goto LABEL_13;
    }

    if (a1 == 3 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!a1)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return;
      }

      goto LABEL_13;
    }

    if (a1 == 1 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_13:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v1, v2, v3, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }
  }
}

uint64_t webrtc::webrtc_logging_impl::MakeVal<std::__iom_t4<char>,std::__iom_t4<char>,(void *)0>(_BYTE *a1, char *a2)
{
  v33[6] = 0;
  v4 = MEMORY[0x277D828A0] + 24;
  v5 = MEMORY[0x277D828A0] + 64;
  v33[0] = MEMORY[0x277D828A0] + 64;
  v6 = MEMORY[0x277D82828];
  v7 = *(MEMORY[0x277D82828] + 16);
  v20 = *(MEMORY[0x277D82828] + 8);
  *(&v20 + *(v20 - 24)) = v7;
  v8 = (&v20 + *(v20 - 24));
  std::ios_base::init(v8, &v21);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v20 = v4;
  v33[0] = v5;
  v9 = MEMORY[0x277D82868] + 16;
  v21 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743DA480](&v22);
  v23 = 0;
  v24 = 0;
  v10 = MEMORY[0x277D82878] + 16;
  v11 = __p;
  v32 = 16;
  v31 = __p;
  memset(__p, 0, sizeof(__p));
  v30 = 5632;
  v21 = MEMORY[0x277D82878] + 16;
  v25 = 0;
  __src = __p;
  v27 = __p;
  v28 = &v30;
  v12 = &v20 + *(v20 - 24);
  v13 = *a2;
  if (*(v12 + 36) != -1)
  {
    *(v12 + 36) = v13;
    goto LABEL_3;
  }

  std::ios_base::getloc((&v20 + *(v20 - 24)));
  v18 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
  (v18->__vftable[2].~facet_0)(v18, 32);
  std::locale::~locale(&v34);
  v19 = v32;
  *(v12 + 36) = v13;
  if ((v19 & 0x10) != 0)
  {
    v11 = v31;
    if (v31 >= v27)
    {
LABEL_3:
      v14 = __src;
      v15 = v11 - __src;
      if (v11 - __src >= 0)
      {
        goto LABEL_4;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v31 = v27;
    v14 = __src;
    v15 = v27 - __src;
    if (v27 - __src < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v14 = 0;
      v15 = 0;
      a1[23] = 0;
      v16 = a1;
      if (a1)
      {
        goto LABEL_10;
      }

LABEL_9:
      if (v16 <= v14)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

    v14 = v23;
    v15 = v25 - v23;
    if (v25 - v23 < 0)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_24;
  }

  if (v15 > 0x16)
  {
    operator new();
  }

  a1[23] = v15;
  v16 = &a1[v15];
  if (a1 <= v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v15)
  {
    memmove(a1, v14, v15);
  }

  *v16 = 0;
  v20 = *v6;
  *(&v20 + *(v20 - 24)) = v6[3];
  v21 = v10;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(*__p);
  }

  v21 = v9;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return MEMORY[0x2743DA4C0](v33);
}

uint64_t webrtc::webrtc_logging_impl::MakeVal<std::__iom_t6,std::__iom_t6,(void *)0>(_BYTE *a1, int *a2)
{
  v20[6] = 0;
  v4 = MEMORY[0x277D828A0] + 24;
  v5 = MEMORY[0x277D828A0] + 64;
  v20[0] = MEMORY[0x277D828A0] + 64;
  v6 = MEMORY[0x277D82828];
  v7 = *(MEMORY[0x277D82828] + 16);
  v12 = *(MEMORY[0x277D82828] + 8);
  *(&v12 + *(v12 - 24)) = v7;
  v8 = (&v12 + *(v12 - 24));
  std::ios_base::init(v8, &v13);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v12 = v4;
  v20[0] = v5;
  v9 = MEMORY[0x277D82868] + 16;
  v13 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743DA480](&v14);
  memset(v15, 0, 24);
  v10 = MEMORY[0x277D82878] + 16;
  v19 = 16;
  v18 = __p;
  memset(__p, 0, sizeof(__p));
  v17 = 5632;
  v13 = MEMORY[0x277D82878] + 16;
  v15[3] = __p;
  v15[4] = __p;
  v15[5] = &v17;
  *(v15 + *(v12 - 24)) = *a2;
  a1[23] = 0;
  *a1 = 0;
  v12 = *v6;
  *(&v12 + *(v12 - 24)) = v6[3];
  v13 = v10;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(*__p);
  }

  v13 = v9;
  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return MEMORY[0x2743DA4C0](v20);
}

uint64_t webrtc::SrtpTransport::SendRtpPacket(webrtc::SrtpTransport *this, webrtc::CopyOnWriteBuffer *a2, const webrtc::AsyncSocketPacketOptions *a3, uint64_t a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    }

    return 0;
  }

  v55 = *a3;
  v56 = *(a3 + 4);
  v58 = 0;
  v59 = 0;
  __p = 0;
  v9 = *(a3 + 3);
  v8 = *(a3 + 4);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v63 = *(a3 + 12);
  v10 = *(a3 + 4);
  v60 = *(a3 + 3);
  v61 = v10;
  v62 = *(a3 + 5);
  v64 = *(a3 + 52);
  if (((*(*this + 96))(this) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    }

LABEL_15:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    }

    goto LABEL_17;
  }

  v16 = *(this + 68);
  if (!v16)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc", 288, "send_session_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v11, v12, v13, v14, v54);
    return webrtc::SrtpTransport::SendRtcpPacket(v50, v51, v52, v53);
  }

  if (!webrtc::SrtpSession::ProtectRtp(v16, a2, v15))
  {
    goto LABEL_15;
  }

  v17 = *(this + 32);
  if (*a2)
  {
    v18 = *(*a2 + 16) + *(a2 + 1);
  }

  else
  {
    v18 = 0;
  }

  if ((*(*v17 + 40))(*(this + 32), v18, *(a2 + 2), &v55, a4) == *(a2 + 4))
  {
    result = 1;
    v41 = __p;
    if (!__p)
    {
      return result;
    }

LABEL_18:
    v58 = v41;
    v42 = result;
    operator delete(v41);
    return v42;
  }

  if (*(this + 248) != 1 || (*(*v17 + 64))(v17) != 57)
  {
LABEL_17:
    result = 0;
    v41 = __p;
    if (!__p)
    {
      return result;
    }

    goto LABEL_18;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transport.cc");
  }

  *(this + 273) = 0;
  webrtc::RtpTransport::MaybeSignalReadyToSend(this, v43, v44, v45, v46, v47, v48, v49);
  result = 0;
  v41 = __p;
  if (__p)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t webrtc::SrtpTransport::SendRtcpPacket(webrtc::SrtpTransport *this, webrtc::CopyOnWriteBuffer *a2, const webrtc::AsyncSocketPacketOptions *a3, uint64_t a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    }

    return 0;
  }

  if (((*(*this + 96))(this) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    }

    goto LABEL_14;
  }

  v12 = *(this + 70);
  if (v12 || (v12 = *(this + 68)) != 0)
  {
    if (webrtc::SrtpSession::ProtectRtcp(v12, a2))
    {
      v13 = 264;
      if (*(this + 249))
      {
        v13 = 256;
      }

      v14 = *(this + v13);
      if (*a2)
      {
        v15 = *(*a2 + 16) + *(a2 + 1);
      }

      else
      {
        v15 = 0;
      }

      if ((*(*v14 + 40))(v14, v15, *(a2 + 2), a3, a4) == *(a2 + 4))
      {
        return 1;
      }

      if (*(this + 248) == 1 && (*(*v14 + 64))(v14) == 57)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transport.cc");
        }

        *(this + 274) = 0;
        webrtc::RtpTransport::MaybeSignalReadyToSend(this, v38, v39, v40, v41, v42, v43, v44);
      }

      return 0;
    }

LABEL_14:
    if (*a2)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return 0;
      }
    }

    else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    return 0;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc", 309, "send_session_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v8, v9, v10, v11, v45);
  return webrtc::SrtpTransport::OnRtpPacketReceived();
}

void webrtc::SrtpTransport::OnRtpPacketReceived(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 96))(a1))
  {
    if (*(a2 + 8))
    {
      operator new();
    }

    v35 = 0uLL;
    v36 = 0;
    if ((*(*a1 + 96))(a1))
    {
      v4 = *(a1 + 552);
      if (!v4)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc", 319, "recv_session_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v34);
        webrtc::SrtpTransport::OnRtcpPacketReceived();
        return;
      }

      if (webrtc::SrtpSession::UnprotectRtp(v4, &v35))
      {
        v35 = 0uLL;
        v36 = 0;
        webrtc::RtpTransport::DemuxPacket(a1);
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    }

    v23 = *(a1 + 648);
    HIDWORD(v24) = -1030792151 * v23 + 85899344;
    LODWORD(v24) = HIDWORD(v24);
    if ((v24 >> 2) <= 0x28F5C28)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
      }

      v23 = *(a1 + 648);
    }

    *(a1 + 648) = v23 + 1;
    v32 = v35;
    if (v35 && atomic_fetch_add((v35 + 24), 0xFFFFFFFF) == 1)
    {
      v33 = *(v32 + 16);
      *(v32 + 16) = 0;
      if (v33)
      {
        MEMORY[0x2743DA520](v33, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v32, 0x1010C40EE34DA14);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
  }
}

void webrtc::SrtpTransport::OnRtcpPacketReceived(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 96))(a1))
  {
    if (*(a2 + 8))
    {
      operator new();
    }

    memset(v43, 0, sizeof(v43));
    if (((*(*a1 + 96))(a1) & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
      }

LABEL_23:
      if (v43[0])
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          goto LABEL_28;
        }
      }

      else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        goto LABEL_28;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
      goto LABEL_28;
    }

    v4 = *(a1 + 568);
    if (v4 || (v4 = *(a1 + 552)) != 0)
    {
      if (!webrtc::SrtpSession::UnprotectRtcp(v4, v43))
      {
        goto LABEL_23;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 16);
      }

      else
      {
        v9 = -1;
      }

      v10 = (a1 + 112);
      if (*(a1 + 112) != 1)
      {
        *(a1 + 112) = 1;
        v11 = *(a1 + 88);
        v12 = *(a1 + 96);
        if (v11 == v12)
        {
          *v10 = 0;
          v15 = v43[0];
          if (!v43[0])
          {
            return;
          }

          goto LABEL_29;
        }

        v13 = 0;
        do
        {
          (*(v11 + 40))(v11 + 8, v43, v9);
          v14 = *v11;
          v11 += 56;
          v13 |= v14 == v10;
        }

        while (v11 != v12);
        *v10 = 0;
        if (v13)
        {
          webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((a1 + 88), (a1 + 112));
          v15 = v43[0];
          if (!v43[0])
          {
            return;
          }

LABEL_29:
          if (atomic_fetch_add((v15 + 24), 0xFFFFFFFF) == 1)
          {
            v41 = *(v15 + 16);
            *(v15 + 16) = 0;
            if (v41)
            {
              MEMORY[0x2743DA520](v41, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v15, 0x1010C40EE34DA14);
          }

          return;
        }

LABEL_28:
        v15 = v43[0];
        if (!v43[0])
        {
          return;
        }

        goto LABEL_29;
      }

      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v5, v6, v7, v8, v42);
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc", 331, "recv_session_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v23, v24, v25, v26, v42);
    webrtc::SrtpTransport::OnNetworkRouteChanged();
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
  }
}

void webrtc::SrtpTransport::OnNetworkRouteChanged(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 36) != 1)
  {
    goto LABEL_11;
  }

  if ((*(*a1 + 96))(a1))
  {
    if ((*(*a1 + 96))(a1))
    {
      v10 = *(a1 + 544);
      if (!v10)
      {
LABEL_21:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc", 354, "send_session_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v23);
        webrtc::SrtpTransport::OnWritableState(v21, v22);
        return;
      }

      v11 = *(v10 + 16);
      goto LABEL_9;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    }
  }

  v11 = 0;
LABEL_9:
  if ((*(a2 + 36) & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(a2 + 8) += v11;
LABEL_11:
  v24 = *a2;
  v25 = a2[1];
  v26 = *(a2 + 4);
  v15 = (a1 + 176);
  if (*(a1 + 176) == 1)
  {
LABEL_20:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v23);
    goto LABEL_21;
  }

  *(a1 + 176) = 1;
  v16 = *(a1 + 152);
  v17 = *(a1 + 160);
  if (v16 == v17)
  {
    *v15 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = v16[5];
      v27[0] = v24;
      v27[1] = v25;
      v28 = v26;
      v19(v16 + 1, v27);
      v20 = *v16;
      v16 += 7;
      v18 |= v20 == v15;
    }

    while (v16 != v17);
    *v15 = 0;
    if (v18)
    {
      webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((a1 + 152), (a1 + 176));
    }
  }
}

void webrtc::SrtpTransport::OnWritableState(webrtc::SrtpTransport *this, webrtc::PacketTransportInternal *a2)
{
  v7 = 0;
  if ((*(*this + 64))(this, 0))
  {
    v7 = (*(*this + 64))(this, 1);
  }

  v8 = this + 208;
  if (*(this + 208) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v3, v4, v5, v6, v20);
    webrtc::SrtpTransport::SetRtpParams(v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    *(this + 208) = 1;
    v9 = *(this + 23);
    v10 = *(this + 24);
    if (v9 == v10)
    {
      *v8 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        (*(v9 + 40))(v9 + 8, v7);
        v12 = *v9;
        v9 += 56;
        v11 |= v12 == v8;
      }

      while (v9 != v10);
      *v8 = 0;
      if (v11)
      {

        webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(this + 23, this + 208);
      }
    }
  }
}

void webrtc::SrtpTransport::SetRtpParams(uint64_t a1, int a2, void *a3, uint64_t *a4, int a5, void *a6, uint64_t *a7)
{
  v11 = *(a1 + 544);
  if (!v11)
  {
    operator new();
  }

  if (!*(v11 + 8))
  {
    goto LABEL_13;
  }

  if ((webrtc::SrtpSession::DoSetKey(*(a1 + 544), 3u, a2, a3, a4) & 1) == 0)
  {
LABEL_15:
    webrtc::SrtpTransport::ResetParams(a1);
    return;
  }

  v12 = *(a1 + 552);
  if (!*(v12 + 8))
  {
LABEL_13:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_session.cc");
    }

    goto LABEL_15;
  }

  if ((webrtc::SrtpSession::DoSetKey(v12, 2u, a5, a6, a7) & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
  }

  if ((*(*a1 + 64))(a1, 1))
  {
    v24 = (*(*a1 + 64))(a1, 0);
    if (*(a1 + 640) == v24)
    {
      return;
    }
  }

  else
  {
    v24 = 0;
    if (!*(a1 + 640))
    {
      return;
    }
  }

  v33 = (a1 + 208);
  v32 = *(a1 + 208);
  *(a1 + 640) = v24;
  if (v32 == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v20, v21, v22, v23, v39);
    webrtc::SrtpTransport::ResetParams(v38);
  }

  else
  {
    *(a1 + 208) = 1;
    v34 = *(a1 + 184);
    v35 = *(a1 + 192);
    if (v34 == v35)
    {
      *v33 = 0;
    }

    else
    {
      v36 = 0;
      do
      {
        (*(v34 + 40))(v34 + 8, v24);
        v37 = *v34;
        v34 += 56;
        v36 |= v37 == v33;
      }

      while (v34 != v35);
      *v33 = 0;
      if (v36)
      {
        webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((a1 + 184), (a1 + 208));
      }
    }
  }
}

void webrtc::SrtpTransport::ResetParams(webrtc::SrtpTransport *this)
{
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    webrtc::SrtpSession::~SrtpSession(v2);
    MEMORY[0x2743DA540]();
  }

  v3 = *(this + 69);
  *(this + 69) = 0;
  if (v3)
  {
    webrtc::SrtpSession::~SrtpSession(v3);
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 70);
  *(this + 70) = 0;
  if (v4)
  {
    webrtc::SrtpSession::~SrtpSession(v4);
    MEMORY[0x2743DA540]();
  }

  v5 = *(this + 71);
  *(this + 71) = 0;
  if (v5)
  {
    webrtc::SrtpSession::~SrtpSession(v5);
    MEMORY[0x2743DA540]();
  }

  if ((*(*this + 64))(this, 1))
  {
    v10 = (*(*this + 64))(this, 0);
    if (*(this + 640) == v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    if (!*(this + 640))
    {
      goto LABEL_19;
    }
  }

  v12 = this + 208;
  v11 = *(this + 208);
  *(this + 640) = v10;
  if (v11 == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v24);
    webrtc::SrtpTransport::SetRtcpParams();
    return;
  }

  *(this + 208) = 1;
  v13 = *(this + 23);
  v14 = *(this + 24);
  if (v13 != v14)
  {
    v15 = 0;
    do
    {
      (*(v13 + 40))(v13 + 8, v10);
      v16 = *v13;
      v13 += 56;
      v15 |= v16 == v12;
    }

    while (v13 != v14);
    *v12 = 0;
    if (v15)
    {
      webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(this + 23, this + 208);
    }

LABEL_19:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      return;
    }

    goto LABEL_20;
  }

  *v12 = 0;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
LABEL_20:
    webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
  }
}

uint64_t webrtc::SrtpTransport::SetRtcpParams(uint64_t a1)
{
  if (!*(a1 + 560) && !*(a1 + 568))
  {
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v1, v2, v3, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
  }

  return 0;
}

uint64_t webrtc::SrtpTransport::IsWritable(webrtc::SrtpTransport *this, int a2)
{
  if (!(*(*this + 96))(this))
  {
    return 0;
  }

  if (a2 && *(this + 249) != 1)
  {
    v4 = *(this + 33);
    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v4 = *(this + 32);
  if (!v4)
  {
    return 0;
  }

LABEL_5:
  v5 = *(*v4 + 24);

  return v5();
}

void webrtc::SrtpTransport::UnregisterRtpDemuxerSink(uint64_t a1, void *a2)
{
  if (!*(a1 + 552))
  {
    goto LABEL_52;
  }

  (*(**(a1 + 656) + 16))(&__p);
  v5 = HIBYTE(v43);
  if (v43 < 0)
  {
    v5 = v42;
  }

  if (v5 >= 7)
  {
    p_p = __p;
    if (v43 >= 0)
    {
      p_p = &__p;
    }

    v8 = *p_p;
    v9 = *(p_p + 3);
    v6 = v8 == 1650552389 && v9 == 1684368482;
    if (SHIBYTE(v43) < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    if (SHIBYTE(v43) < 0)
    {
LABEL_16:
      operator delete(__p);
    }
  }

  if (!v6)
  {
    goto LABEL_52;
  }

  __p = 0;
  v42 = 0;
  v43 = 0;
  if (!a2)
  {
    goto LABEL_52;
  }

  v11 = *(a1 + 304);
  v12 = *(a1 + 312);
  if (v11 == v12)
  {
    goto LABEL_52;
  }

  do
  {
    if (*(v11 + 8) == a2)
    {
      v13 = __p;
      if (v42 == __p)
      {
        v13 = v42;
LABEL_21:
        std::vector<unsigned int>::emplace<unsigned int const&>(&__p, v13, v11);
        goto LABEL_22;
      }

      v14 = (v42 - __p) >> 2;
      do
      {
        v15 = v14 >> 1;
        v16 = &v13[4 * (v14 >> 1)];
        v18 = *v16;
        v17 = v16 + 4;
        v14 += ~(v14 >> 1);
        if (v18 < *v11)
        {
          v13 = v17;
        }

        else
        {
          v14 = v15;
        }
      }

      while (v14);
      if (v42 == v13 || *v11 < *v13)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    v11 += 16;
  }

  while (v11 != v12);
  v19 = __p;
  v20 = v42;
  if (__p != v42)
  {
    while (1)
    {
      v21 = *(*(a1 + 552) + 8);
      if (!v21)
      {
        goto LABEL_47;
      }

      v22 = *v21;
      if (!*v21)
      {
        goto LABEL_47;
      }

      v23 = bswap32(*v19);
      v24 = *v21;
      if (*v22 != v23)
      {
        break;
      }

LABEL_43:
      if (v24 == v22)
      {
        v25 = *(*(a1 + 552) + 8);
      }

      else
      {
        v25 = v24 + 15;
      }

      *v25 = v22[15];
      if (srtp_stream_dealloc(v22, *(v21 + 8)))
      {
        goto LABEL_47;
      }

LABEL_37:
      if (++v19 == v20)
      {
        v19 = __p;
        goto LABEL_50;
      }
    }

    while (1)
    {
      v24 = v22;
      v22 = v22[15];
      if (!v22)
      {
        break;
      }

      if (*v22 == v23)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | 0xC5A;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/srtp_transport.cc");
    }

    goto LABEL_37;
  }

LABEL_50:
  if (v19)
  {
    v42 = v19;
    operator delete(v19);
  }

LABEL_52:
  webrtc::RtpDemuxer::RemoveSink(a1 + 280, a2);
  if ((v33 & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transport.cc");
  }
}

void webrtc::SSLCertificateStats::~SSLCertificateStats(webrtc::SSLCertificateStats *this)
{
  v4 = *(this + 9);
  v2 = (this + 72);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v2, v3);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_9:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_9;
  }
}

void webrtc::SSLCertificateStats::Copy(webrtc::SSLCertificateStats *this)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *this, *(this + 1));
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(this + 1);
      if ((*(this + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = *this;
    if ((*(this + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(&v5, *(this + 3), *(this + 4));
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_4:
    *&v4.__r_.__value_.__l.__data_ = *(this + 3);
    v2 = *(this + 9);
    v4.__r_.__value_.__r.__words[2] = *(this + 8);
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_8:
  std::string::__init_copy_ctor_external(&v4, *(this + 6), *(this + 7));
  v2 = *(this + 9);
  if (!v2)
  {
LABEL_9:
    operator new();
  }

LABEL_5:
  webrtc::SSLCertificateStats::Copy(&v3, v2);
  goto LABEL_9;
}

void webrtc::SSLCertificate::GetStats(webrtc::SSLCertificate *this@<X0>, void *a2@<X8>)
{
  v3 = 0uLL;
  v4 = 0;
  if ((*(*this + 40))(this, &v3))
  {
    webrtc::SSLFingerprint::Create();
  }

  *a2 = 0;
  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3);
  }
}

void webrtc::SSLCertChain::~SSLCertChain(webrtc::SSLCertChain *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
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
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

void webrtc::SSLCertChain::Clone(webrtc::SSLCertChain *this)
{
  v1 = *(this + 1);
  if (v1 != *this)
  {
    if (((v1 - *this) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void webrtc::SSLCertChain::GetStats(webrtc::SSLCertChain *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  v3 = (*(this + 1) - *this) >> 3;
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    while (v4 < (*(this + 1) - *this) >> 3)
    {
      webrtc::SSLCertificate::GetStats(*(*this + 8 * v4), &v12);
      v7 = v12;
      if (v12)
      {
        v8 = *a2;
        *a2 = 0;
        v9 = *(v7 + 72);
        *(v7 + 72) = v8;
        if (v9)
        {
          std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v7 + 72, v9);
          v7 = v12;
        }
      }

      v12 = 0;
      v10 = *a2;
      *a2 = v7;
      if (v10)
      {
        std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](a2, v10);
        v11 = v12;
        v12 = 0;
        if (v11)
        {
          std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](&v12, v11);
        }
      }

      v6 = v4-- + 1;
      if (v6 <= 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

void std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 72);
    v4 = *(a2 + 72);
    *v3 = 0;
    if (v4)
    {
      std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100]();
    }

    if (*(a2 + 71) < 0)
    {
      operator delete(*(a2 + 48));
      if ((*(a2 + 47) & 0x80000000) == 0)
      {
LABEL_6:
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_13:
        operator delete(*a2);
LABEL_7:

        JUMPOUT(0x2743DA540);
      }
    }

    else if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(a2 + 24));
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }
}

uint64_t webrtc::SSLFingerprint::CreateUniqueFromRfc4572@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 && (result = webrtc::IsFips180DigestAlgorithm(result, a2), (result & 1) != 0) && a4)
  {
    result = webrtc::hex_decode_with_delimiter(__src, 0x40uLL, a3, a4, 0x3Au);
    if (result)
    {
      operator new();
    }

    *a5 = 0;
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

void webrtc::SSLFingerprint::CreateFromCertificate(webrtc::SSLFingerprint *this@<X0>, const webrtc::RTCCertificate *a2@<X1>, void *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  v5 = (*(**(this + 1) + 16))(*(this + 1), a2);
  if ((*(*v5 + 40))(v5, __p))
  {
    (*(**(this + 1) + 16))(*(this + 1));
    webrtc::SSLFingerprint::Create();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/ssl_fingerprint.cc");
  }

  *a3 = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void webrtc::SSLFingerprint::ToString(webrtc::SSLFingerprint *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v5 = size;
  if ((size & 0x80u) == 0)
  {
    v6 = 22;
  }

  else
  {
    v6 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v6 != size)
  {
    if (v5 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v8 + size <= " " && &v8->__r_.__value_.__l.__data_ + size + 1 > " ")
    {
      goto LABEL_59;
    }

    v8->__r_.__value_.__s.__data_[size] = 32;
    v10 = size + 1;
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = v10;
      v8->__r_.__value_.__s.__data_[v10] = 0;
      v7 = *(this + 3);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = v10 & 0x7F;
      v8->__r_.__value_.__s.__data_[v10] = 0;
      v7 = *(this + 3);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    v11 = *(this + 5);
    v12 = (*(v7 + 16) + *(this + 4));
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_25;
  }

  std::string::__grow_by_and_replace(a2, v6, 1uLL, v6, v6, 0, 1uLL, " ");
  v7 = *(this + 3);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_24:
  v12 = 0;
  v11 = *(this + 5);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

LABEL_25:
  if (!v12 && v11)
  {
    goto LABEL_59;
  }

  p_src = &__src;
  webrtc::hex_encode_with_delimiter(v12, v11, 58, &__src);
  v14 = __len;
  if ((__len & 0x80u) == 0)
  {
    v15 = __len;
  }

  else
  {
    p_src = __src;
    v15 = v27;
  }

  if (v15)
  {
    do
    {
      *p_src = __toupper(*p_src);
      p_src = (p_src + 1);
      --v15;
    }

    while (v15);
    v14 = __len;
  }

  if ((v14 & 0x80) != 0)
  {
    v18 = __src;
    v16 = v27;
    v17 = v27 == 0;
    if (!__src && v27)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v16 = v14;
    v17 = v14 == 0;
    v18 = &__src;
  }

  v19 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v19 >= 0)
  {
    v20 = 22;
  }

  else
  {
    v20 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v19 >= 0)
  {
    v21 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = a2->__r_.__value_.__l.__size_;
  }

  if (v20 - v21 >= v16)
  {
    if (v17)
    {
      goto LABEL_55;
    }

    if (v19 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = a2->__r_.__value_.__r.__words[0];
    }

    if ((v16 & 0x8000000000000000) == 0)
    {
      v23 = v22 + v21;
      if (v22 + v21 > v18 || &v23[v16] <= v18)
      {
        v24 = v16;
        memmove(v23, v18, v16);
        v25 = v21 + v24;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          a2->__r_.__value_.__l.__size_ = v25;
          v22->__r_.__value_.__s.__data_[v25] = 0;
          if ((__len & 0x80000000) == 0)
          {
            return;
          }

LABEL_58:
          operator delete(__src);
          return;
        }

        *(&a2->__r_.__value_.__s + 23) = v25 & 0x7F;
        v22->__r_.__value_.__s.__data_[v25] = 0;
LABEL_55:
        if ((__len & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_58;
      }
    }

LABEL_59:
    __break(1u);
    return;
  }

  std::string::__grow_by_and_replace(a2, v20, v21 + v16 - v20, v21, v21, 0, v16, v18);
  if (__len < 0)
  {
    goto LABEL_58;
  }
}