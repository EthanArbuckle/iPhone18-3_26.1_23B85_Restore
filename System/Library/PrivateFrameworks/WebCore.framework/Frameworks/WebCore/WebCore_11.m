void webrtc::webrtc_checks_impl::WriteFatalLog(const void *a1, size_t a2)
{
  fflush(*MEMORY[0x277D85E08]);
  v4 = MEMORY[0x277D85DF8];
  fwrite(a1, a2, 1uLL, *MEMORY[0x277D85DF8]);
  fflush(*v4);
  abort();
}

uint64_t webrtc::webrtc_checks_impl::ParseArg(const char ***a1, void *a2, std::string *a3)
{
  v4 = 0;
  switch(**a2)
  {
    case 0:
      return v4;
    case 1:
      ++*a1;
      goto LABEL_40;
    case 2:
      ++*a1;
      goto LABEL_40;
    case 3:
      ++*a1;
      goto LABEL_40;
    case 4:
      ++*a1;
      goto LABEL_40;
    case 5:
      ++*a1;
      goto LABEL_40;
    case 6:
      ++*a1;
      goto LABEL_40;
    case 7:
      ++*a1;
      goto LABEL_40;
    case 8:
      ++*a1;
      goto LABEL_40;
    case 9:
      v13 = (*a1)++;
      v14 = *v13;
      if (!*v13)
      {
        goto LABEL_94;
      }

      v16 = strlen(*v13);
      v17 = a3;
      v18 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if (v18 < 0)
      {
        size = a3->__r_.__value_.__l.__size_;
        v11 = (a3->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v11 - size < v16)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v11 = 22;
        size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (22 - v18 < v16)
        {
LABEL_16:
          v20 = v16 - v11 + size;
          v21 = size;
          v22 = size;
          v7 = v16;
          v8 = v14;
LABEL_70:
          std::string::__grow_by_and_replace(v17, v11, v20, v21, v22, 0, v7, v8);
          goto LABEL_40;
        }
      }

      if (!v16)
      {
        goto LABEL_40;
      }

      v35 = a3;
      if ((v18 & 0x80000000) != 0)
      {
        v35 = a3->__r_.__value_.__r.__words[0];
      }

      if ((v16 & 0x8000000000000000) == 0 && (v35 + size > v14 || v35 + size + v16 <= v14))
      {
        memmove(v35 + size, v14, v16);
        v37 = size + v16;
        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          a3->__r_.__value_.__l.__size_ = v37;
        }

        else
        {
          *(&a3->__r_.__value_.__s + 23) = v37 & 0x7F;
        }

        v35->__r_.__value_.__s.__data_[v37] = 0;
        goto LABEL_40;
      }

      goto LABEL_94;
    case 0xA:
      v26 = (*a1)++;
      v27 = *v26;
      v28 = v27[23];
      if (v28 >= 0)
      {
        v8 = v27;
      }

      else
      {
        v8 = *v27;
      }

      if (v28 >= 0)
      {
        v7 = *(v27 + 23);
      }

      else
      {
        v7 = *(v27 + 1);
      }

      if (v8)
      {
        v29 = 1;
      }

      else
      {
        v29 = v7 == 0;
      }

      if (!v29)
      {
        goto LABEL_94;
      }

      v30 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if (v30 < 0)
      {
        v12 = a3->__r_.__value_.__l.__size_;
        v11 = (a3->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v11 - v12 >= v7)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v11 = 22;
        v12 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (22 - v30 >= v7)
        {
LABEL_71:
          if (!v7)
          {
            goto LABEL_40;
          }

          v32 = a3;
          if ((v30 & 0x80000000) != 0)
          {
            v32 = a3->__r_.__value_.__r.__words[0];
          }

          if ((v7 & 0x8000000000000000) == 0)
          {
            v33 = v32 + v12;
            if (v32 + v12 > v8 || v32 + v12 + v7 <= v8)
            {
              goto LABEL_79;
            }
          }

          goto LABEL_94;
        }
      }

      goto LABEL_69;
    case 0xB:
      v5 = (*a1)++;
      v6 = *v5;
      v8 = *v6;
      v7 = *(v6 + 1);
      if (*v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 == 0;
      }

      if (!v9)
      {
        goto LABEL_94;
      }

      v10 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if (v10 < 0)
      {
        v12 = a3->__r_.__value_.__l.__size_;
        v11 = (a3->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v11 - v12 < v7)
        {
LABEL_69:
          v17 = a3;
          v20 = v7 - v11 + v12;
          v21 = v12;
          v22 = v12;
          goto LABEL_70;
        }
      }

      else
      {
        v11 = 22;
        v12 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (22 - v10 < v7)
        {
          goto LABEL_69;
        }
      }

      if (!v7)
      {
LABEL_40:
        ++*a2;
        return 1;
      }

      v32 = a3;
      if ((v10 & 0x80000000) != 0)
      {
        v32 = a3->__r_.__value_.__r.__words[0];
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v33 = v32 + v12;
        if (v32 + v12 > v8 || v32 + v12 + v7 <= v8)
        {
LABEL_79:
          v40 = v7;
          memmove(v33, v8, v7);
          v41 = v12 + v40;
          if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
          {
            a3->__r_.__value_.__l.__size_ = v41;
          }

          else
          {
            *(&a3->__r_.__value_.__s + 23) = v41 & 0x7F;
          }

          v32->__r_.__value_.__s.__data_[v41] = 0;
          goto LABEL_40;
        }
      }

LABEL_94:
      __break(1u);
      JUMPOUT(0x27316F620);
    case 0xC:
      ++*a1;
      goto LABEL_40;
    default:
      v23 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((v23 & 0x8000000000000000) != 0)
      {
        v23 = a3->__r_.__value_.__l.__size_;
        v25 = (a3->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v25 - v23 < 0x16)
        {
          v24 = a3;
          goto LABEL_44;
        }

        v42 = a3->__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v23 - 1 < 0x16)
        {
          v24 = a3;
          v25 = 22;
LABEL_44:
          std::string::__grow_by_and_replace(v24, v25, v23 - v25 + 22, v23, v23, 0, 0x16uLL, "[Invalid CheckArgType]");
          return 0;
        }

        v42 = a3;
      }

      if (v42 + v23 <= "[Invalid CheckArgType]" && &v42->__r_.__value_.__r.__words[2] + v23 + 6 > "[Invalid CheckArgType]")
      {
        goto LABEL_94;
      }

      qmemcpy(v42 + v23, "[Invalid CheckArgType]", 22);
      v44 = v23 + 22;
      if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
      {
        a3->__r_.__value_.__l.__size_ = v44;
      }

      else
      {
        *(&a3->__r_.__value_.__s + 23) = v44 & 0x7F;
      }

      v4 = 0;
      v42->__r_.__value_.__s.__data_[v44] = 0;
      return v4;
  }
}

void anonymous namespace::AppendFormat(std::string *a1, char *__format, ...)
{
  va_start(va, __format);
  v4 = vsnprintf(0, 0, __format, va);
  if (v4 < 1)
  {
    return;
  }

  v5 = v4;
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v7 = v4;
    v8 = 22;
    LOBYTE(v9) = *(&a1->__r_.__value_.__s + 23);
    if (22 - size >= v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  size = a1->__r_.__value_.__l.__size_;
  v7 = v4;
  v13 = size + v4;
  if (size >= v13)
  {
    v15 = a1->__r_.__value_.__r.__words[0];
    a1->__r_.__value_.__l.__size_ = v13;
    *(v15 + v13) = 0;
    v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
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

  v14 = a1->__r_.__value_.__r.__words[2];
  v8 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = HIBYTE(v14);
  if (v8 - size < v4)
  {
LABEL_4:
    std::string::__grow_by(a1, v8, v7 + size - v8, size, size, 0, 0);
    a1->__r_.__value_.__l.__size_ = size;
    LOBYTE(v9) = *(&a1->__r_.__value_.__s + 23);
  }

LABEL_5:
  v10 = a1;
  if ((v9 & 0x80) == 0)
  {
    bzero(a1 + size, v7);
    v11 = v7 + size;
    if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v10 = a1->__r_.__value_.__r.__words[0];
  bzero((a1->__r_.__value_.__r.__words[0] + size), v7);
  v11 = v7 + size;
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_13:
    a1->__r_.__value_.__l.__size_ = v11;
    v10->__r_.__value_.__s.__data_[v11] = 0;
    v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_7:
  *(&a1->__r_.__value_.__s + 23) = v11 & 0x7F;
  v10->__r_.__value_.__s.__data_[v11] = 0;
  v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (a1->__r_.__value_.__l.__size_ < size)
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v12 & 0x80000000) != 0)
  {
    a1 = a1->__r_.__value_.__r.__words[0];
  }

  vsnprintf(a1 + size, v5 + 1, __format, va);
}

void webrtc::webrtc_checks_impl::FatalLog(const char *a1, int a2, const char *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = &a9;
  v28 = a4;
  memset(&v26, 0, sizeof(v26));
  v13 = __error();
  if (*a4 == 13)
  {
    v28 = a4 + 1;
    memset(&v25, 0, sizeof(v25));
    memset(&__p, 0, sizeof(__p));
    if (webrtc::webrtc_checks_impl::ParseArg(&v27, &v28, &v25) && webrtc::webrtc_checks_impl::ParseArg(&v27, &v28, &__p))
    {
      v14 = &v25;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v25.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

LABEL_32:
      ;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v26;
    }

    else
    {
      v22 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    webrtc::webrtc_checks_impl::WriteFatalLog(v22, size);
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = 22;
  }

  else
  {
    v16 = (v26.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v26.__r_.__value_.__l.__size_;
  }

  if (v16 - v17 < 3)
  {
    std::string::__grow_by_and_replace(&v26, v16, v17 - v16 + 3, v17, v17, 0, 3uLL, "\n# ");
    goto LABEL_32;
  }

  v18 = &v26;
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v26.__r_.__value_.__r.__words[0];
  }

  v19 = v18 + v17;
  if (v18 + v17 > "\n# " || v18->__r_.__value_.__r.__words + v17 + 3 <= "\n# ")
  {
    v19[2] = 32;
    *v19 = 8970;
    v21 = v17 + 3;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v26.__r_.__value_.__l.__size_ = v17 + 3;
    }

    else
    {
      *(&v26.__r_.__value_.__s + 23) = v21 & 0x7F;
    }

    v18->__r_.__value_.__s.__data_[v21] = 0;
    goto LABEL_32;
  }

  __break(1u);
}

void webrtc::webrtc_checks_impl::UnreachableCodeReached(webrtc::webrtc_checks_impl *this)
{
  memset(&v4, 0, sizeof(v4));
  v1 = __error();
  if ((v4.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v4;
  }

  else
  {
    v2 = v4.__r_.__value_.__r.__words[0];
  }

  if ((v4.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v4.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v4.__r_.__value_.__l.__size_;
  }

  webrtc::webrtc_checks_impl::WriteFatalLog(v2, size);
}

void *dcsctp::ChunkValidators::Clean@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[2];
  v4 = result[3];
  if (v4 != v3)
  {
    v5 = 0;
    v6 = result[2];
    do
    {
      v7 = v6[1];
      v8 = *v6;
      v9 = v5 + 1;
      if (v7 < v8 || v9 >= v8)
      {
        if (v4 - v3 >= 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v6 += 2;
      v5 = v7;
    }

    while (v6 != v4);
  }

  v11 = result + 6;
  v12 = result[6];
  v13 = result[1];
  *a2 = &unk_28829E470;
  a2[1] = v13;
  a2[2] = v3;
  a2[3] = v4;
  result[2] = 0;
  result[3] = 0;
  v14 = result[4];
  v15 = result[5];
  result[4] = 0;
  a2[4] = v14;
  a2[5] = v15;
  a2[6] = v12;
  v16 = a2 + 6;
  v17 = result[7];
  a2[7] = v17;
  if (v17)
  {
    *(v12 + 16) = v16;
    result[5] = v11;
    *v11 = 0;
    result[7] = 0;
  }

  else
  {
    a2[5] = v16;
  }

  return result;
}

void *std::set<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>::set[abi:sn200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*std::__tree<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>::__find_equal<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>(a1, v3, &v11, &v10, v5 + 7))
      {
        operator new();
      }

      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t *std::__tree<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>::__find_equal<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 7))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 28);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

int32x2_t *std::__introsort<std::_ClassicAlgPolicy,dcsctp::ChunkValidators::Clean(dcsctp::SackChunk &&)::$_0 &,dcsctp::SackChunk::GapAckBlock *,false>(int32x2_t *result, int32x2_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v68 = v8->u16[2];
          v69 = a2[-1].u16[2];
          if (v68 >= v8->u16[0])
          {
            if (v69 < v68)
            {
              v111 = v8->i32[1];
              v8->i32[1] = a2[-1].i32[1];
              a2[-1].i32[1] = v111;
              if (v8->u16[2] < v8->u16[0])
              {
                *v8 = vrev64_s32(*v8);
              }
            }

            return result;
          }

          v70 = v8->i32[0];
          if (v69 >= v68)
          {
            v8->i32[0] = v8->i32[1];
            v8->i32[1] = v70;
            if (a2[-1].u16[2] < v70)
            {
              v8->i32[1] = a2[-1].i32[1];
              a2[-1].i32[1] = v70;
            }

            return result;
          }

LABEL_127:
          v8->i32[0] = a2[-1].i32[1];
          a2[-1].i32[1] = v70;
          return result;
        case 4:
          v71 = v8->u16[2];
          v72 = v8->u16[0];
          LODWORD(v27) = v8[1].u16[0];
          if (v71 >= v72)
          {
            if (v27 < v71)
            {
              LODWORD(v27) = v8->i32[1];
              v112 = v8[1].i32[0];
              v8->i32[1] = v112;
              v8[1].i32[0] = v27;
              LODWORD(v27) = v27;
              if (v72 > v112)
              {
                v113 = v8->i32[0];
                v8->i32[0] = v112;
                v8->i32[1] = v113;
              }
            }
          }

          else
          {
            LODWORD(v46) = v8->i32[0];
            LODWORD(v47) = v8->i32[0];
            if (v27 >= v71)
            {
              goto LABEL_204;
            }

            v8->i32[0] = v8[1].i32[0];
LABEL_206:
            v7[1].i32[0] = v46;
            LODWORD(v27) = v47;
          }

LABEL_207:
          if (a2[-1].u16[2] < v27)
          {
            v120 = v7[1].i32[0];
            v7[1].i32[0] = a2[-1].i32[1];
            a2[-1].i32[1] = v120;
            if (v7[1].u16[0] < v7->u16[2])
            {
              v122 = v7->i32[1];
              v121 = v7[1].i32[0];
              v7->i32[1] = v121;
              v7[1].i32[0] = v122;
              if (v7->u16[0] > v121)
              {
                v123 = v7->i32[0];
                v7->i32[0] = v121;
                v7->i32[1] = v123;
              }
            }
          }

          return result;
        case 5:

          return std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,dcsctp::ChunkValidators::Clean(dcsctp::SackChunk &&)::$_0 &,dcsctp::SackChunk::GapAckBlock *,0>(v8, v8 + 2, &v8[1], &v8[1] + 1, &a2[-1] + 1);
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].u16[2] >= v8->u16[0])
        {
          return result;
        }

        v70 = v8->i32[0];
        goto LABEL_127;
      }
    }

    if (v9 <= 23)
    {
      v27 = (v8 + 4);
      v74 = v8 == a2 || v27 == a2;
      if (a4)
      {
        if (v74)
        {
          return result;
        }

        v75 = 0;
        v76 = v8;
        while (1)
        {
          v78 = v76->u16[0];
          v76 = v27;
          if (v27->u16[0] < v78)
          {
            v79 = v27->i32[0];
            v80 = v75;
            do
            {
              *(&v8->i32[1] + v80) = *(v8->i32 + v80);
              if (!v80)
              {
                v77 = v8;
                goto LABEL_142;
              }

              v81 = *(&v8->u16[-2] + v80);
              v80 -= 4;
            }

            while (v81 > v79);
            v77 = (v8 + v80 + 4);
LABEL_142:
            v77->i32[0] = v79;
          }

          v27 = (v76 + 4);
          v75 += 4;
          if (&v76->u8[4] == a2)
          {
            return result;
          }
        }
      }

      if (v74)
      {
        return result;
      }

      v47 = 0;
      v46 = -4;
      v114 = 4;
      while (1)
      {
        v115 = *(v47->u16 + v8);
        v47 = v114;
        if (v27->u16[0] < v115)
        {
          v116 = v27->i32[0];
          v117 = v46;
          v118 = v27;
          do
          {
            v118->i32[0] = v118[-1].i32[1];
            if (!v117)
            {
              goto LABEL_203;
            }

            v119 = v118[-1].u16[0];
            v118 = (v118 - 4);
            v117 += 4;
          }

          while (v119 > v116);
          v118->i32[0] = v116;
        }

        v114 = v47 + 4;
        v27 = (v27 + 4);
        v46 -= 4;
        if (v27 == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v10 = v8 + 2 * (v9 >> 1);
    v11 = v10;
    v12 = a2[-1].u16[2];
    if (v9 < 0x81)
    {
      v15 = v8->u16[0];
      if (v15 >= *v11)
      {
        if (v12 < v15)
        {
          v19 = v8->i32[0];
          v8->i32[0] = a2[-1].i32[1];
          a2[-1].i32[1] = v19;
          if (v8->u16[0] < *v11)
          {
            v20 = *v11;
            *v11 = v8->i32[0];
            v8->i32[0] = v20;
            --a3;
            if (a4)
            {
              goto LABEL_39;
            }

            goto LABEL_63;
          }
        }
      }

      else
      {
        v16 = *v11;
        if (v12 < v15)
        {
          *v11 = a2[-1].i32[1];
          goto LABEL_37;
        }

        *v11 = v8->i32[0];
        v8->i32[0] = v16;
        if (a2[-1].u16[2] < v16)
        {
          v8->i32[0] = a2[-1].i32[1];
LABEL_37:
          a2[-1].i32[1] = v16;
        }
      }

      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

      goto LABEL_63;
    }

    v13 = *v10;
    if (v13 >= v8->u16[0])
    {
      if (v12 < v13)
      {
        v17 = *v10;
        *v10 = a2[-1].i32[1];
        a2[-1].i32[1] = v17;
        if (*v10 < v8->u16[0])
        {
          v18 = v8->i32[0];
          v8->i32[0] = *v10;
          *v10 = v18;
        }
      }
    }

    else
    {
      v14 = v8->i32[0];
      if (v12 >= v13)
      {
        v8->i32[0] = *v10;
        *v10 = v14;
        if (a2[-1].u16[2] >= v14)
        {
          goto LABEL_29;
        }

        *v10 = a2[-1].i32[1];
      }

      else
      {
        v8->i32[0] = a2[-1].i32[1];
      }

      a2[-1].i32[1] = v14;
    }

LABEL_29:
    v21 = v10 - 2;
    v22 = *(v10 - 2);
    v23 = a2[-1].u16[0];
    if (v22 >= v8->u16[2])
    {
      if (v23 < v22)
      {
        v25 = *v21;
        *v21 = a2[-1].i32[0];
        a2[-1].i32[0] = v25;
        if (*v21 < v8->u16[2])
        {
          v26 = v8->i32[1];
          v8->i32[1] = *v21;
          *v21 = v26;
        }
      }
    }

    else
    {
      v24 = v8->i32[1];
      if (v23 >= v22)
      {
        v8->i32[1] = *v21;
        *v21 = v24;
        if (a2[-1].u16[0] >= v24)
        {
          goto LABEL_43;
        }

        *v21 = a2[-1].i32[0];
      }

      else
      {
        v8->i32[1] = a2[-1].i32[0];
      }

      a2[-1].i32[0] = v24;
    }

LABEL_43:
    v30 = v10[2];
    v28 = v10 + 2;
    v29 = v30;
    v31 = a2[-2].u16[2];
    if (v30 >= v8[1].u16[0])
    {
      if (v31 < v29)
      {
        v33 = *v28;
        *v28 = a2[-2].i32[1];
        a2[-2].i32[1] = v33;
        if (*v28 < v8[1].u16[0])
        {
          v34 = v8[1].i32[0];
          v8[1].i32[0] = *v28;
          *v28 = v34;
        }
      }
    }

    else
    {
      v32 = v8[1].i32[0];
      if (v31 >= v29)
      {
        v8[1].i32[0] = *v28;
        *v28 = v32;
        if (a2[-2].u16[2] >= v32)
        {
          goto LABEL_52;
        }

        *v28 = a2[-2].i32[1];
      }

      else
      {
        v8[1].i32[0] = a2[-2].i32[1];
      }

      a2[-2].i32[1] = v32;
    }

LABEL_52:
    v35 = *v11;
    v36 = *v21;
    v37 = *v28;
    if (v35 < v36)
    {
      v38 = *v21;
      if (v37 < v35)
      {
        *v21 = *v28;
        *v28 = v38;
        v39 = v8->i32[0];
        v8->i32[0] = *v11;
        *v11 = v39;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }

        goto LABEL_63;
      }

      *v21 = *v11;
      *v11 = v38;
      if (v37 < v38)
      {
        v43 = *v28;
        *v11 = *v28;
        *v28 = v38;
        v38 = v43;
      }

LABEL_62:
      v44 = v8->i32[0];
      v8->i32[0] = v38;
      *v11 = v44;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

      goto LABEL_63;
    }

    v38 = *v11;
    if (v37 >= v35)
    {
      goto LABEL_62;
    }

    v40 = *v28;
    *v11 = *v28;
    *v28 = v38;
    if (v36 <= v40)
    {
      v59 = v8->i32[0];
      v8->i32[0] = v40;
      *v11 = v59;
      --a3;
      if (a4)
      {
LABEL_39:
        LODWORD(v27) = v8->i32[0];
LABEL_64:
        v45 = 0;
        LODWORD(v46) = v27;
        do
        {
          v47 = (v8 + v45 + 4);
          if (v47 == a2)
          {
            goto LABEL_203;
          }

          v45 += 4;
        }

        while (v47->u16[0] < v27);
        v47 = (v8 + v45);
        v48 = a2;
        if (v45 != 4)
        {
          while (v48 != v8)
          {
            v49 = v48[-1].u16[2];
            v48 = (v48 - 4);
            if (v49 < v27)
            {
              goto LABEL_74;
            }
          }

          goto LABEL_203;
        }

        v48 = a2;
        do
        {
          if (v47 >= v48)
          {
            break;
          }

          v50 = v48[-1].u16[2];
          v48 = (v48 - 4);
        }

        while (v50 >= v27);
LABEL_74:
        if (v47 < v48)
        {
          v51 = (v8 + v45);
          v52 = v48;
LABEL_76:
          v53 = v51->i32[0];
          v51->i32[0] = v52->i32[0];
          v52->i32[0] = v53;
          v54 = (v51 + 4);
          while (v54 != a2)
          {
            v55 = v54->u16[0];
            v54 = (v54 + 4);
            if (v55 >= v27)
            {
              v51 = (v54 - 4);
              while (v52 != v8)
              {
                v56 = v52[-1].u16[2];
                v52 = (v52 - 4);
                if (v56 < v27)
                {
                  if (v51 < v52)
                  {
                    goto LABEL_76;
                  }

                  v57 = &v54[-1];
                  if (&v54[-1] != v8)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_87;
                }
              }

              goto LABEL_203;
            }
          }

          goto LABEL_203;
        }

        v57 = &v47[-1] + 2;
        if (&v47[-1].u8[4] != v8)
        {
LABEL_86:
          v8->i32[0] = *v57;
        }

LABEL_87:
        *v57 = v27;
        if (v47 < v48)
        {
          goto LABEL_90;
        }

        v58 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,dcsctp::ChunkValidators::Clean(dcsctp::SackChunk &&)::$_0 &,dcsctp::SackChunk::GapAckBlock *>(v8, v57);
        v8 = (v57 + 2);
        result = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,dcsctp::ChunkValidators::Clean(dcsctp::SackChunk &&)::$_0 &,dcsctp::SackChunk::GapAckBlock *>((v57 + 2), a2);
        if (!result)
        {
          if (v58)
          {
            continue;
          }

LABEL_90:
          result = std::__introsort<std::_ClassicAlgPolicy,dcsctp::ChunkValidators::Clean(dcsctp::SackChunk &&)::$_0 &,dcsctp::SackChunk::GapAckBlock *,false>(v7, v57, a3, a4 & 1);
          a4 = 0;
          v8 = (v57 + 2);
          continue;
        }

        a2 = v57;
        if (v58)
        {
          return result;
        }

        goto LABEL_2;
      }
    }

    else
    {
      v41 = *v21;
      *v21 = v40;
      *v11 = v41;
      v42 = v8->i32[0];
      v8->i32[0] = v41;
      *v11 = v42;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }
    }

LABEL_63:
    LODWORD(v27) = v8->i32[0];
    if (v8[-1].u16[2] < v8->u16[0])
    {
      goto LABEL_64;
    }

    LODWORD(v46) = v8->i32[0];
    if (a2[-1].u16[2] <= v46)
    {
      v61 = (v8 + 4);
      do
      {
        v8 = v61;
        if (v61 >= a2)
        {
          break;
        }

        v61 = (v61 + 4);
      }

      while (v8->u16[0] <= v46);
    }

    else
    {
      v47 = (v8 + 4);
      do
      {
        if (v47 == a2)
        {
          goto LABEL_203;
        }

        v60 = v47->u16[0];
        v47 = (v47 + 4);
      }

      while (v60 <= v46);
      v8 = (v47 - 4);
    }

    v47 = a2;
    if (v8 < a2)
    {
      v47 = a2;
      while (v47 != v7)
      {
        v62 = v47[-1].u16[2];
        v47 = (v47 - 4);
        if (v62 <= v46)
        {
          goto LABEL_112;
        }
      }

LABEL_203:
      __break(1u);
LABEL_204:
      v7->i32[0] = v7->i32[1];
      v7->i32[1] = v46;
      if (v27 < v47)
      {
        v7->i32[1] = v7[1].i32[0];
        goto LABEL_206;
      }

      goto LABEL_207;
    }

LABEL_112:
    if (v8 < v47)
    {
      v63 = v8->i32[0];
      v8->i32[0] = v47->i32[0];
      v64 = (v8 + 4);
      v47->i32[0] = v63;
      while (v64 != a2)
      {
        v65 = v64->u16[0];
        v64 = (v64 + 4);
        if (v65 > v46)
        {
          v8 = (v64 - 4);
          while (v47 != v7)
          {
            v66 = v47[-1].u16[2];
            v47 = (v47 - 4);
            if (v66 <= v46)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_203;
        }
      }

      goto LABEL_203;
    }

    v67 = &v8[-1] + 1;
    if (&v8[-1].u8[4] != v7)
    {
      v7->i32[0] = *v67;
    }

    a4 = 0;
    *v67 = v27;
  }

  if (v8 == a2)
  {
    return result;
  }

  v82 = (v9 - 2) >> 1;
  v83 = v82;
  while (2)
  {
    if (v82 >= v83)
    {
      v85 = (2 * (v83 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v86 = v8 + 2 * v85;
      if (2 * (v83 & 0x3FFFFFFFFFFFFFFFLL) + 2 >= v9)
      {
        v90 = v8 + 2 * v83;
        if (*v86 >= *v90)
        {
LABEL_162:
          v91 = *v90;
          while (1)
          {
            v94 = v90;
            v90 = v86;
            *v94 = *v86;
            if (v82 < v85)
            {
              break;
            }

            v95 = (2 * (v85 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v86 = v8 + 2 * v95;
            v85 = 2 * v85 + 2;
            if (v85 < v9)
            {
              v92 = *v86;
              result = v86[2];
              v93 = v92 >= result;
              if (v92 <= result)
              {
                v92 = v86[2];
              }

              if (v93)
              {
                v85 = v95;
              }

              else
              {
                v86 += 2;
              }

              if (v92 < v91)
              {
                break;
              }
            }

            else
            {
              v85 = v95;
              if (*v86 < v91)
              {
                break;
              }
            }
          }

          *v90 = v91;
        }
      }

      else
      {
        v87 = *v86;
        v88 = v86[2];
        v89 = v87 >= v88;
        if (v87 <= v88)
        {
          v87 = v86[2];
        }

        if (!v89)
        {
          v86 += 2;
          v85 = 2 * (v83 & 0x3FFFFFFFFFFFFFFFLL) + 2;
        }

        v90 = v8 + 2 * v83;
        if (v87 >= *v90)
        {
          goto LABEL_162;
        }
      }
    }

    v84 = v83-- <= 0;
    if (!v84)
    {
      continue;
    }

    break;
  }

  do
  {
    v96 = 0;
    v97 = v8->i32[0];
    v98 = (v9 - 2) >> 1;
    v99 = v8;
    do
    {
      while (1)
      {
        v103 = v99 + v96;
        v102 = (v103 + 1);
        v104 = (2 * v96) | 1;
        v96 = 2 * v96 + 2;
        if (v96 < v9)
        {
          break;
        }

        v96 = v104;
        v99->i32[0] = v102->i32[0];
        v99 = (v103 + 1);
        if (v104 > v98)
        {
          goto LABEL_182;
        }
      }

      v101 = *(v103 + 4);
      v100 = (v103 + 2);
      if (v100[-1].u16[2] >= v101)
      {
        v96 = v104;
      }

      else
      {
        v102 = v100;
      }

      v99->i32[0] = v102->i32[0];
      v99 = v102;
    }

    while (v96 <= v98);
LABEL_182:
    a2 = (a2 - 4);
    if (v102 == a2)
    {
      v102->i32[0] = v97;
    }

    else
    {
      v102->i32[0] = a2->i32[0];
      a2->i32[0] = v97;
      v105 = (v102 - v8 + 4) >> 2;
      v84 = v105 < 2;
      v106 = v105 - 2;
      if (!v84)
      {
        v107 = v106 >> 1;
        v108 = (v8 + 4 * v107);
        if (v108->u16[0] < v102->u16[0])
        {
          v109 = v102->i32[0];
          do
          {
            v110 = v102;
            v102 = v108;
            v110->i32[0] = v108->i32[0];
            if (!v107)
            {
              break;
            }

            v107 = (v107 - 1) >> 1;
            v108 = (v8 + 4 * v107);
          }

          while (v108->u16[0] < v109);
          v102->i32[0] = v109;
        }
      }
    }

    v84 = v9-- <= 2;
  }

  while (!v84);
  return result;
}

unsigned __int16 *std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,dcsctp::ChunkValidators::Clean(dcsctp::SackChunk &&)::$_0 &,dcsctp::SackChunk::GapAckBlock *,0>(unsigned __int16 *result, unsigned __int16 *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 >= *result)
  {
    if (v6 < v5)
    {
      v8 = *a2;
      *a2 = *a3;
      *a3 = v8;
      if (*a2 >= *result)
      {
        if (*a4 >= v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = *result;
        *result = *a2;
        *a2 = v9;
        if (*a4 >= *a3)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_12;
    }

LABEL_11:
    if (*a4 >= v6)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v7 = *result;
  if (v6 >= v5)
  {
    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (v6 < v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = v7;
    }

    goto LABEL_11;
  }

  *result = *a3;
  *a3 = v7;
  if (*a4 >= v7)
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = *a3;
  *a3 = *a4;
  *a4 = v10;
  if (*a3 < *a2)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (*a2 < *result)
    {
      v12 = *result;
      *result = *a2;
      *a2 = v12;
    }
  }

LABEL_16:
  if (*a5 < *a4)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    if (*a4 < *a3)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      if (*a3 < *a2)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        if (*a2 < *result)
        {
          v16 = *result;
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,dcsctp::ChunkValidators::Clean(dcsctp::SackChunk &&)::$_0 &,dcsctp::SackChunk::GapAckBlock *>(int32x2_t *a1, int32x2_t *a2)
{
  v2 = (a2 - a1) >> 2;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a1->u16[2];
      v6 = a2[-1].u16[2];
      if (v5 >= a1->u16[0])
      {
        if (v6 >= v5)
        {
          return 1;
        }

        v18 = a1->i32[1];
        a1->i32[1] = a2[-1].i32[1];
        a2[-1].i32[1] = v18;
        if (a1->u16[2] >= a1->u16[0])
        {
          return 1;
        }

        *a1 = vrev64_s32(*a1);
        return 1;
      }

      else
      {
        v7 = a1->i32[0];
        if (v6 >= v5)
        {
          a1->i32[0] = a1->i32[1];
          a1->i32[1] = v7;
          if (a2[-1].u16[2] >= v7)
          {
            return 1;
          }

          a1->i32[1] = a2[-1].i32[1];
          a2[-1].i32[1] = v7;
          return 1;
        }

        else
        {
          a1->i32[0] = a2[-1].i32[1];
          a2[-1].i32[1] = v7;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,dcsctp::ChunkValidators::Clean(dcsctp::SackChunk &&)::$_0 &,dcsctp::SackChunk::GapAckBlock *,0>(a1, a1 + 2, &a1[1], &a1[1] + 1, &a2[-1] + 1);
        return 1;
      }

LABEL_14:
      v8 = a1 + 1;
      v9 = a1[1].u16[0];
      v10 = a1->u16[2];
      v11 = a1->u16[0];
      if (v10 >= v11)
      {
        if (v9 < v10)
        {
          v20 = a1->i32[1];
          v19 = a1[1].i32[0];
          a1->i32[1] = v19;
          a1[1].i32[0] = v20;
          if (v11 > v19)
          {
            v21 = a1->i32[0];
            a1->i32[0] = v19;
            a1->i32[1] = v21;
          }
        }

        goto LABEL_34;
      }

      v12 = a1->i32[0];
      if (v9 >= v10)
      {
        a1->i32[0] = a1->i32[1];
        a1->i32[1] = v12;
        if (v9 >= v12)
        {
LABEL_34:
          v24 = &a1[1] + 2;
          if (&a1[1].u8[4] == a2)
          {
            return 1;
          }

          v25 = 0;
          v26 = 0;
          while (*v24 >= v8->u16[0])
          {
LABEL_43:
            v8 = v24;
            v25 += 4;
            v24 += 2;
            if (v24 == a2)
            {
              return 1;
            }
          }

          v27 = *v24;
          v28 = v25;
          do
          {
            *(&a1[1].i32[1] + v28) = *(a1[1].i32 + v28);
            if (v28 == -8)
            {
              a1->i32[0] = v27;
              if (++v26 != 8)
              {
                goto LABEL_43;
              }

              return v24 + 2 == a2;
            }

            v29 = *(&a1->u16[2] + v28);
            v28 -= 4;
          }

          while (v29 > v27);
          *(&a1[1].i32[1] + v28) = v27;
          if (++v26 != 8)
          {
            goto LABEL_43;
          }

          return v24 + 2 == a2;
        }

        a1->i32[1] = a1[1].i32[0];
      }

      else
      {
        a1->i32[0] = a1[1].i32[0];
      }

      a1[1].i32[0] = v12;
      goto LABEL_34;
    }

    v13 = a1->u16[2];
    v14 = a1->u16[0];
    v15 = a1[1].u16[0];
    if (v13 >= v14)
    {
      if (v15 < v13)
      {
        v15 = a1->u32[1];
        v22 = a1[1].i32[0];
        a1->i32[1] = v22;
        a1[1].i32[0] = v15;
        v15 = v15;
        if (v14 > v22)
        {
          v23 = a1->i32[0];
          a1->i32[0] = v22;
          a1->i32[1] = v23;
        }
      }

      goto LABEL_48;
    }

    v16 = a1->i32[0];
    v17 = a1->i32[0];
    if (v15 >= v13)
    {
      a1->i32[0] = a1->i32[1];
      a1->i32[1] = v16;
      if (v15 >= v17)
      {
        goto LABEL_48;
      }

      a1->i32[1] = a1[1].i32[0];
    }

    else
    {
      a1->i32[0] = a1[1].i32[0];
    }

    a1[1].i32[0] = v16;
    v15 = v17;
LABEL_48:
    if (a2[-1].u16[2] >= v15)
    {
      return 1;
    }

    v30 = a1[1].i32[0];
    a1[1].i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v30;
    if (a1[1].u16[0] >= a1->u16[2])
    {
      return 1;
    }

    v32 = a1->i32[1];
    v31 = a1[1].i32[0];
    a1->i32[1] = v31;
    a1[1].i32[0] = v32;
    if (a1->u16[0] <= v31)
    {
      return 1;
    }

    v33 = a1->i32[0];
    a1->i32[0] = v31;
    a1->i32[1] = v33;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].u16[2] >= a1->u16[0])
  {
    return 1;
  }

  v4 = a1->i32[0];
  a1->i32[0] = a2[-1].i32[1];
  a2[-1].i32[1] = v4;
  return 1;
}

uint64_t webrtc::CreateClippingPredictor@<X0>(char *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
  if (v4)
  {
    if ((v5 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/clipping_predictor.cc");
    }

    v13 = *(a1 + 1);
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if ((v5 & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/clipping_predictor.cc");
  }

  result = 0;
  *a2 = 0;
  return result;
}

void webrtc::anonymous namespace::ClippingEventPredictor::~ClippingEventPredictor(webrtc::_anonymous_namespace_::ClippingEventPredictor *this)
{
  *this = &unk_288291388;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *(v5 + 8);
          if (v7)
          {
            *(v5 + 16) = v7;
            operator delete(v7);
          }

          MEMORY[0x2743DA540](v5, 0x1020C405E66F15BLL);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_288291388;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *(v5 + 8);
          if (v7)
          {
            *(v5 + 16) = v7;
            operator delete(v7);
          }

          MEMORY[0x2743DA540](v5, 0x1020C405E66F15BLL);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::ClippingEventPredictor::Reset(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16) - v1;
  if ((v2 >> 3) >= 1)
  {
    v3 = (v2 >> 3) & 0x7FFFFFFF;
    v4 = v2 >> 3;
    v5 = v3 - 1;
    if (v4 < v3 - 1)
    {
      v5 = v4;
    }

    if (v5 + 1 > 2)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      v7 = (v1 + 8);
      v8 = v6;
      do
      {
        v9 = *v7;
        **(v7 - 1) = 0xFFFFFFFFLL;
        *v9 = 0xFFFFFFFFLL;
        v7 += 2;
        v8 -= 2;
      }

      while (v8);
    }

    else
    {
      v6 = 0;
    }

    v10 = v4 - v6;
    v11 = (v1 + 8 * v6);
    v12 = v6 - v3;
    while (v10)
    {
      v13 = *v11++;
      *v13 = 0xFFFFFFFFLL;
      --v10;
      if (__CFADD__(v12++, 1))
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

uint64_t webrtc::anonymous namespace::ClippingEventPredictor::Analyze(uint64_t result, uint64_t a2)
{
  if (*a2 < 1)
  {
    return result;
  }

  v2 = *(a2 + 24);
  if (v2 > 1)
  {
    goto LABEL_53;
  }

  v3 = *(a2 + 8);
  v4 = v3;
  v5 = *a2 & 0x7FFFFFFFLL;
  v6 = *(result + 8);
  v7 = (*(result + 16) - v6) >> 3;
  if (v3)
  {
    v8 = *(a2 + 16);
    if (v2)
    {
      v9 = 0;
      while (1)
      {
        v10 = (v8 + 4 * v9 * v3);
        v11 = 0.0;
        v12 = 4 * v3;
        v13 = 0.0;
        do
        {
          v14 = *v10++;
          v11 = v11 + (v14 * v14);
          v15 = fabsf(v14);
          if (v15 >= v13)
          {
            v13 = v15;
          }

          v12 -= 4;
        }

        while (v12);
        if (v9 == v7)
        {
          goto LABEL_52;
        }

        v16 = v6[v9];
        v17 = *v16 + 1;
        *v16 = v17;
        v18 = *(v16 + 1);
        result = *(v16 + 2) - v18;
        v19 = result >> 3;
        if (v17 == (result >> 3))
        {
          v17 = 0;
          *v16 = 0;
          v20 = v16[1];
          if (v20 < v19)
          {
LABEL_16:
            v16[1] = v20 + 1;
            v21 = v17;
            if (v17 >= (result >> 3))
            {
              goto LABEL_52;
            }

            goto LABEL_17;
          }
        }

        else
        {
          v20 = v16[1];
          if (v20 < v19)
          {
            goto LABEL_16;
          }
        }

        v21 = v17;
        if (v17 >= (result >> 3))
        {
          goto LABEL_52;
        }

LABEL_17:
        v22 = (v18 + 8 * v21);
        *v22 = v11 / v4;
        v22[1] = v13;
        if (++v9 == v5)
        {
          return result;
        }
      }
    }

    v40 = 0;
    v41 = 4 * v3;
    while (1)
    {
      v42 = *(v8 + 8 * v40);
      v43 = 0.0;
      v44 = v41;
      v45 = 0.0;
      do
      {
        v46 = *v42++;
        v43 = v43 + (v46 * v46);
        v47 = fabsf(v46);
        if (v47 >= v45)
        {
          v45 = v47;
        }

        v44 -= 4;
      }

      while (v44);
      if (v40 == v7)
      {
        goto LABEL_52;
      }

      v48 = v6[v40];
      v49 = *v48 + 1;
      *v48 = v49;
      v50 = *(v48 + 1);
      v51 = *(v48 + 2) - v50;
      result = v51 >> 3;
      if (v49 == (v51 >> 3))
      {
        v49 = 0;
        *v48 = 0;
        v52 = v48[1];
        if (v52 < result)
        {
LABEL_49:
          result = (v52 + 1);
          v48[1] = result;
          v53 = v49;
          if (v49 >= (v51 >> 3))
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v52 = v48[1];
        if (v52 < result)
        {
          goto LABEL_49;
        }
      }

      v53 = v49;
      if (v49 >= (v51 >> 3))
      {
        goto LABEL_52;
      }

LABEL_50:
      v54 = (v50 + 8 * v53);
      *v54 = v43 / v4;
      v54[1] = v45;
      if (++v40 == v5)
      {
        return result;
      }
    }
  }

  v23 = 0.0 / v4;
  if (v2)
  {
    while (1)
    {
      if (!v7)
      {
        goto LABEL_52;
      }

      v24 = *v6;
      v25 = **v6 + 1;
      *v24 = v25;
      v26 = *(v24 + 1);
      v27 = *(v24 + 2) - v26;
      v28 = v27 >> 3;
      if (v25 == (v27 >> 3))
      {
        v25 = 0;
        *v24 = 0;
        v29 = v24[1];
        if (v29 < v28)
        {
LABEL_26:
          v24[1] = v29 + 1;
          v30 = v25;
          if (v25 >= (v27 >> 3))
          {
            goto LABEL_52;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v29 = v24[1];
        if (v29 < v28)
        {
          goto LABEL_26;
        }
      }

      v30 = v25;
      if (v25 >= (v27 >> 3))
      {
        goto LABEL_52;
      }

LABEL_27:
      v31 = v26 + 8 * v30;
      *v31 = v23;
      *(v31 + 4) = 0;
      --v7;
      ++v6;
      if (!--v5)
      {
        return result;
      }
    }
  }

  while (v7)
  {
    v32 = *v6;
    v33 = **v6 + 1;
    *v32 = v33;
    v34 = *(v32 + 1);
    v35 = *(v32 + 2) - v34;
    v36 = v35 >> 3;
    if (v33 == (v35 >> 3))
    {
      v33 = 0;
      *v32 = 0;
      v37 = v32[1];
      if (v37 >= v36)
      {
LABEL_32:
        v38 = v33;
        if (v33 >= (v35 >> 3))
        {
          break;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v37 = v32[1];
      if (v37 >= v36)
      {
        goto LABEL_32;
      }
    }

    v32[1] = v37 + 1;
    v38 = v33;
    if (v33 >= (v35 >> 3))
    {
      break;
    }

LABEL_36:
    v39 = v34 + 8 * v38;
    *v39 = v23;
    *(v39 + 4) = 0;
    --v7;
    ++v6;
    if (!--v5)
    {
      return result;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v55 = std::__throw_bad_variant_access[abi:sn200100]();
}

void webrtc::anonymous namespace::ClippingEventPredictor::EstimateClippedLevelStep(webrtc::_anonymous_namespace_::ClippingEventPredictor *this, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  v8 = *(this + 1);
  if ((*(this + 2) - v8) >> 3 <= a2)
  {
LABEL_36:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/clipping_predictor.cc", 140, "channel < ch_buffers_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a2);
    return;
  }

  if (a3 <= a5)
  {
    return;
  }

  v9 = *(v8 + 8 * a2);
  v10 = *(this + 8);
  v11 = *(v9 + 4);
  if (v10 > v11)
  {
    return;
  }

  if (v10 > 0)
  {
    v12 = *v9;
    v13 = *(v9 + 8);
    v14 = *(v9 + 16) - v13;
    v15 = v14 >> 3;
    v16 = v14 >> 3;
    v17 = 0.0;
    v18 = *(this + 8);
    v19 = 0.0;
    while (1)
    {
      v20 = ((v16 & (v12 >> 31)) + v12);
      if (v15 <= v20)
      {
        goto LABEL_34;
      }

      v21 = (v13 + 8 * v20);
      v17 = v17 + *v21;
      v19 = fmaxf(v21[1], v19);
      --v12;
      if (!--v18)
      {
        v22 = v17 / v10;
        if (v19 <= 1.0)
        {
          v27 = 0;
          goto LABEL_14;
        }

        v23 = a5;
        v24 = a6;
        v25 = this;
        v26 = log10f(v19);
        this = v25;
        a6 = v24;
        a5 = v23;
        v27 = 1;
        if (((v26 * 20.0) + -90.309) > v25[11])
        {
          goto LABEL_15;
        }

        return;
      }
    }
  }

  v27 = 0;
  v19 = 0.0;
  v22 = 0.0 / v10;
LABEL_14:
  if (*(this + 11) >= -90.309)
  {
    return;
  }

LABEL_15:
  v29 = *(this + 9);
  v28 = *(this + 10);
  if (v29 + v28 > v11)
  {
    return;
  }

  if (v29 >= v11)
  {
    v30 = v11;
  }

  else
  {
    v30 = *(this + 9);
  }

  if (v30 >= 1)
  {
    v31 = *(v9 + 8);
    v32 = *(v9 + 16) - v31;
    v33 = v32 >> 3;
    v34 = v32 >> 3;
    v35 = *v9 - v28;
    v36 = 0.0;
    v37 = 0.0;
    while (1)
    {
      v38 = ((v34 & (v35 >> 31)) + v35);
      if (v33 <= v38)
      {
        break;
      }

      v39 = (v31 + 8 * v38);
      v36 = v36 + *v39;
      v37 = fmaxf(v39[1], v37);
      --v35;
      if (!--v30)
      {
        if (!v27)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/clipping_predictor.cc", 139, "channel >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a2);
    goto LABEL_36;
  }

  v37 = 0.0;
  v36 = 0.0;
  if (v27)
  {
LABEL_24:
    log10f(v19);
    v40 = v29;
    v41 = sqrtf(v22);
    v42 = 1.0;
    if (v41 > 1.0)
    {
      goto LABEL_30;
    }

LABEL_25:
    v43 = v36 / v40;
    if (v37 > v42)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_29:
  v40 = v29;
  v41 = sqrtf(v22);
  v42 = 1.0;
  if (v41 <= 1.0)
  {
    goto LABEL_25;
  }

LABEL_30:
  log10f(v41);
  v43 = v36 / v40;
  if (v37 > v42)
  {
LABEL_31:
    log10f(v37);
    v44 = sqrtf(v43);
    if (v44 > 1.0)
    {
      goto LABEL_32;
    }

    return;
  }

LABEL_26:
  v44 = sqrtf(v43);
  if (v44 > 1.0)
  {
LABEL_32:
    log10f(v44);
  }
}

void webrtc::anonymous namespace::ClippingPeakPredictor::~ClippingPeakPredictor(webrtc::_anonymous_namespace_::ClippingPeakPredictor *this)
{
  *this = &unk_2882913C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *(v5 + 8);
          if (v7)
          {
            *(v5 + 16) = v7;
            operator delete(v7);
          }

          MEMORY[0x2743DA540](v5, 0x1020C405E66F15BLL);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_2882913C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *(v5 + 8);
          if (v7)
          {
            *(v5 + 16) = v7;
            operator delete(v7);
          }

          MEMORY[0x2743DA540](v5, 0x1020C405E66F15BLL);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::ClippingPeakPredictor::Reset(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16) - v1;
  if ((v2 >> 3) >= 1)
  {
    v3 = (v2 >> 3) & 0x7FFFFFFF;
    v4 = v2 >> 3;
    v5 = v3 - 1;
    if (v4 < v3 - 1)
    {
      v5 = v4;
    }

    if (v5 + 1 > 2)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      v7 = (v1 + 8);
      v8 = v6;
      do
      {
        v9 = *v7;
        **(v7 - 1) = 0xFFFFFFFFLL;
        *v9 = 0xFFFFFFFFLL;
        v7 += 2;
        v8 -= 2;
      }

      while (v8);
    }

    else
    {
      v6 = 0;
    }

    v10 = v4 - v6;
    v11 = (v1 + 8 * v6);
    v12 = v6 - v3;
    while (v10)
    {
      v13 = *v11++;
      *v13 = 0xFFFFFFFFLL;
      --v10;
      if (__CFADD__(v12++, 1))
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

uint64_t webrtc::anonymous namespace::ClippingPeakPredictor::Analyze(uint64_t result, uint64_t a2)
{
  if (*a2 < 1)
  {
    return result;
  }

  v2 = *(a2 + 24);
  if (v2 > 1)
  {
    goto LABEL_53;
  }

  v3 = *(a2 + 8);
  v4 = v3;
  v5 = *a2 & 0x7FFFFFFFLL;
  v6 = *(result + 8);
  v7 = (*(result + 16) - v6) >> 3;
  if (v3)
  {
    v8 = *(a2 + 16);
    if (v2)
    {
      v9 = 0;
      while (1)
      {
        v10 = (v8 + 4 * v9 * v3);
        v11 = 0.0;
        v12 = 4 * v3;
        v13 = 0.0;
        do
        {
          v14 = *v10++;
          v11 = v11 + (v14 * v14);
          v15 = fabsf(v14);
          if (v15 >= v13)
          {
            v13 = v15;
          }

          v12 -= 4;
        }

        while (v12);
        if (v9 == v7)
        {
          goto LABEL_52;
        }

        v16 = v6[v9];
        v17 = *v16 + 1;
        *v16 = v17;
        v18 = *(v16 + 1);
        result = *(v16 + 2) - v18;
        v19 = result >> 3;
        if (v17 == (result >> 3))
        {
          v17 = 0;
          *v16 = 0;
          v20 = v16[1];
          if (v20 < v19)
          {
LABEL_16:
            v16[1] = v20 + 1;
            v21 = v17;
            if (v17 >= (result >> 3))
            {
              goto LABEL_52;
            }

            goto LABEL_17;
          }
        }

        else
        {
          v20 = v16[1];
          if (v20 < v19)
          {
            goto LABEL_16;
          }
        }

        v21 = v17;
        if (v17 >= (result >> 3))
        {
          goto LABEL_52;
        }

LABEL_17:
        v22 = (v18 + 8 * v21);
        *v22 = v11 / v4;
        v22[1] = v13;
        if (++v9 == v5)
        {
          return result;
        }
      }
    }

    v40 = 0;
    v41 = 4 * v3;
    while (1)
    {
      v42 = *(v8 + 8 * v40);
      v43 = 0.0;
      v44 = v41;
      v45 = 0.0;
      do
      {
        v46 = *v42++;
        v43 = v43 + (v46 * v46);
        v47 = fabsf(v46);
        if (v47 >= v45)
        {
          v45 = v47;
        }

        v44 -= 4;
      }

      while (v44);
      if (v40 == v7)
      {
        goto LABEL_52;
      }

      v48 = v6[v40];
      v49 = *v48 + 1;
      *v48 = v49;
      v50 = *(v48 + 1);
      v51 = *(v48 + 2) - v50;
      result = v51 >> 3;
      if (v49 == (v51 >> 3))
      {
        v49 = 0;
        *v48 = 0;
        v52 = v48[1];
        if (v52 < result)
        {
LABEL_49:
          result = (v52 + 1);
          v48[1] = result;
          v53 = v49;
          if (v49 >= (v51 >> 3))
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v52 = v48[1];
        if (v52 < result)
        {
          goto LABEL_49;
        }
      }

      v53 = v49;
      if (v49 >= (v51 >> 3))
      {
        goto LABEL_52;
      }

LABEL_50:
      v54 = (v50 + 8 * v53);
      *v54 = v43 / v4;
      v54[1] = v45;
      if (++v40 == v5)
      {
        return result;
      }
    }
  }

  v23 = 0.0 / v4;
  if (v2)
  {
    while (1)
    {
      if (!v7)
      {
        goto LABEL_52;
      }

      v24 = *v6;
      v25 = **v6 + 1;
      *v24 = v25;
      v26 = *(v24 + 1);
      v27 = *(v24 + 2) - v26;
      v28 = v27 >> 3;
      if (v25 == (v27 >> 3))
      {
        v25 = 0;
        *v24 = 0;
        v29 = v24[1];
        if (v29 < v28)
        {
LABEL_26:
          v24[1] = v29 + 1;
          v30 = v25;
          if (v25 >= (v27 >> 3))
          {
            goto LABEL_52;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v29 = v24[1];
        if (v29 < v28)
        {
          goto LABEL_26;
        }
      }

      v30 = v25;
      if (v25 >= (v27 >> 3))
      {
        goto LABEL_52;
      }

LABEL_27:
      v31 = v26 + 8 * v30;
      *v31 = v23;
      *(v31 + 4) = 0;
      --v7;
      ++v6;
      if (!--v5)
      {
        return result;
      }
    }
  }

  while (v7)
  {
    v32 = *v6;
    v33 = **v6 + 1;
    *v32 = v33;
    v34 = *(v32 + 1);
    v35 = *(v32 + 2) - v34;
    v36 = v35 >> 3;
    if (v33 == (v35 >> 3))
    {
      v33 = 0;
      *v32 = 0;
      v37 = v32[1];
      if (v37 >= v36)
      {
LABEL_32:
        v38 = v33;
        if (v33 >= (v35 >> 3))
        {
          break;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v37 = v32[1];
      if (v37 >= v36)
      {
        goto LABEL_32;
      }
    }

    v32[1] = v37 + 1;
    v38 = v33;
    if (v33 >= (v35 >> 3))
    {
      break;
    }

LABEL_36:
    v39 = v34 + 8 * v38;
    *v39 = v23;
    *(v39 + 4) = 0;
    --v7;
    ++v6;
    if (!--v5)
    {
      return result;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v55 = std::__throw_bad_variant_access[abi:sn200100]();
}

uint64_t webrtc::anonymous namespace::ClippingPeakPredictor::EstimateClippedLevelStep(uint64_t this, int a2, int a3, int a4, int a5, int a6)
{
  if (a3 <= a5)
  {
    goto LABEL_46;
  }

  v6 = *(this + 8);
  if (a2 < ((*(this + 16) - v6) >> 3))
  {
    v7 = *(v6 + 8 * a2);
    v9 = *(this + 36);
    v8 = *(this + 40);
    v10 = *(v7 + 4);
    if (v9 + v8 > v10)
    {
      goto LABEL_46;
    }

    if (v9 >= v10)
    {
      v13 = *(v7 + 4);
    }

    else
    {
      v13 = *(this + 36);
    }

    if (v13 >= 1)
    {
      v14 = *(v7 + 8);
      v15 = *(v7 + 16) - v14;
      v16 = v15 >> 3;
      v17 = v15 >> 3;
      v18 = *v7 - v8;
      v19 = 0.0;
      v20 = 0.0;
      while (1)
      {
        v21 = ((v17 & (v18 >> 31)) + v18);
        if (v16 <= v21)
        {
          goto LABEL_48;
        }

        v22 = (v14 + 8 * v21);
        v19 = v19 + *v22;
        v20 = fmaxf(v22[1], v20);
        --v18;
        if (!--v13)
        {
          v23 = *(this + 32);
          if (v23 <= v10)
          {
            goto LABEL_14;
          }

          goto LABEL_46;
        }
      }
    }

    v20 = 0.0;
    v19 = 0.0;
    v23 = *(this + 32);
    if (v23 > v10)
    {
      goto LABEL_46;
    }

LABEL_14:
    if (v23 > 0)
    {
      v24 = *v7;
      v26 = v7 + 8;
      v25 = *(v7 + 8);
      v27 = *(v26 + 8) - v25;
      v28 = v27 >> 3;
      v29 = v27 >> 3;
      v30 = 0.0;
      v31 = v23;
      v32 = 0.0;
      while (1)
      {
        v33 = ((v29 & (v24 >> 31)) + v24);
        if (v28 <= v33)
        {
          goto LABEL_48;
        }

        v34 = (v25 + 8 * v33);
        v30 = v30 + *v34;
        v32 = fmaxf(v34[1], v32);
        --v24;
        if (!--v31)
        {
          v35 = v30 / v23;
          if (v32 <= 1.0)
          {
            goto LABEL_22;
          }

          v36 = a6;
          v37 = a4;
          v38 = this;
          v39 = log10f(v32);
          this = v38;
          a4 = v37;
          a6 = v36;
          v40 = *(v38 + 44);
          if (((v39 * 20.0) + -90.309) > v40)
          {
            goto LABEL_23;
          }

          goto LABEL_46;
        }
      }
    }

    v35 = 0.0 / v23;
LABEL_22:
    v40 = *(this + 44);
    if (v40 >= -90.309)
    {
      goto LABEL_46;
    }

LABEL_23:
    v41 = v19 / v9;
    v42 = this;
    v43 = a4;
    v44 = a6;
    if (v20 <= 1.0)
    {
      v45 = -90.309;
      v46 = sqrtf(v41);
      if (v46 <= 1.0)
      {
LABEL_25:
        v47 = v45 - -90.309;
        v48 = sqrtf(v35);
        if (v48 <= 1.0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v45 = (log10f(v20) * 20.0) + -90.309;
      v46 = sqrtf(v41);
      if (v46 <= 1.0)
      {
        goto LABEL_25;
      }
    }

    v47 = v45 - ((log10f(v46) * 20.0) + -90.309);
    v48 = sqrtf(v35);
    if (v48 <= 1.0)
    {
LABEL_26:
      v49 = v44;
      v50 = v43;
      v51 = v47 + -90.309;
      if ((v47 + -90.309) <= v40)
      {
        goto LABEL_46;
      }

LABEL_31:
      if (*(v42 + 48) == 1)
      {
        v53 = vcvtps_s32_f32(v51);
        v54 = -v53 & (-v53 >> 31);
        if (v54 <= -15)
        {
          v54 = -15;
        }

        v55 = a3;
        if (v53 >= 1)
        {
          v56 = a3;
          v55 = a3 + 1;
          do
          {
            --v55;
            if (v56 <= a5)
            {
              break;
            }

            v57 = webrtc::kGainMap[v56--] - webrtc::kGainMap[a3];
          }

          while (v57 > v54);
        }

        if (a3 - v55 > v50)
        {
          v50 = a3 - v55;
        }
      }

      v58 = a3 - v50;
      if (v58 < v49)
      {
        v49 = v58;
      }

      if (v58 <= a5)
      {
        v49 = a5;
      }

      v59 = __OFSUB__(a3, v49);
      v60 = a3 - v49;
      if (!((v60 < 0) ^ v59 | (v60 == 0)))
      {
        v61 = v60 & 0xFFFFFF00;
        v62 = v60;
        v63 = 0x100000000;
        return v63 | v61 | v62;
      }

LABEL_46:
      v63 = 0;
      v62 = 0;
      v61 = 0;
      return v63 | v61 | v62;
    }

LABEL_30:
    v52 = log10f(v48);
    v49 = v44;
    v50 = v43;
    v51 = v47 + ((v52 * 20.0) + -90.309);
    if (v51 <= v40)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

LABEL_48:
  __break(1u);
  return this;
}

uint64_t webrtc::RealTimeClock::CurrentTime(webrtc::RealTimeClock *this)
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

uint64_t webrtc::RealTimeClock::ConvertTimestampToNtpTime(webrtc::RealTimeClock *this, Timestamp a2)
{
  if ((atomic_load_explicit(&qword_28100B938, memory_order_acquire) & 1) == 0)
  {
    var0 = a2.var0;
    v4 = __cxa_guard_acquire(&qword_28100B938);
    a2.var0 = var0;
    if (v4)
    {
      v5 = webrtc::TimeMicros(v4);
      _MergedGlobals_10 = webrtc::TimeUTCMicros(v5) - v5 + 2208988800000000;
      __cxa_guard_release(&qword_28100B938);
      a2.var0 = var0;
    }
  }

  return ((_MergedGlobals_10 + a2.var0) / 1000000) << 32;
}

float webrtc::CoarseFilterUpdateGain::Compute(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5, char a6, float32x4_t *a7)
{
  v8 = *(a1 + 64) + 1;
  *(a1 + 64) = v8;
  v9 = *(a1 + 72);
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v11 < 0 == v10)
  {
    *(a1 + 72) = v11;
    if (v11)
    {
      *(a1 + 8) = vmla_n_f32(vmul_n_f32(*(a1 + 24), 1.0 - (*(a1 + 52) * v11)), *(a1 + 40), *(a1 + 52) * v11);
    }

    else
    {
      v12 = *(a1 + 16);
      *(a1 + 32) = v12;
      *a1 = v12;
    }
  }

  v13 = 1;
  do
  {
    v14 = a3[v13];
    if (v14 > 0xA)
    {
      break;
    }
  }

  while (v13++ != 63);
  if (v14 <= 0xA)
  {
    v16 = *(a1 + 56) + 1;
    *(a1 + 56) = v16;
    if (v16 < a5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(a1 + 56) = 1;
    if (a5 > 1)
    {
      goto LABEL_19;
    }
  }

  if ((a6 & 1) != 0 || v8 <= a5)
  {
LABEL_19:

    bzero(a7, 0x208uLL);
    return result;
  }

  v17 = 0;
  v18 = *(a1 + 12);
  do
  {
    v19 = *(a2 + v17 * 4);
    v20 = 0.0;
    if (v19 > v18)
    {
      v20 = *(a1 + 8) / v19;
    }

    v62.f32[v17++] = v20;
  }

  while (v17 != 65);
  if (a3[1] > 5uLL)
  {
    v62.i64[0] = 0;
  }

  v22 = 0;
  v23 = a3 + 2;
  do
  {
    v24 = *v23++;
    if (v24 >= 6)
    {
      v25 = &v62 + v22;
      *(v25 + 4) = 0;
      *v25 = 0;
      *(v25 + 1) = 0;
    }

    v22 += 4;
  }

  while (v22 != 244);
  if (a3[63] > 5uLL)
  {
    v77.i32[3] = 0;
    v78 = 0;
  }

  if (a4 + 520 <= a7 || &a7[32].u64[1] <= a4)
  {
    v27 = v63;
    v28 = *(a4 + 276);
    v29 = vmulq_f32(v62, *(a4 + 260));
    v30 = vmulq_f32(v63, *(a4 + 16));
    *a7 = vmulq_f32(v62, *a4);
    a7[1] = v30;
    *(a7 + 260) = v29;
    *(a7 + 276) = vmulq_f32(v27, v28);
    v31 = v65;
    v32 = *(a4 + 308);
    v33 = vmulq_f32(v64, *(a4 + 292));
    v34 = vmulq_f32(v65, *(a4 + 48));
    a7[2] = vmulq_f32(v64, *(a4 + 32));
    a7[3] = v34;
    *(a7 + 292) = v33;
    *(a7 + 308) = vmulq_f32(v31, v32);
    v35 = v67;
    v36 = *(a4 + 340);
    v37 = vmulq_f32(v66, *(a4 + 324));
    v38 = vmulq_f32(v67, *(a4 + 80));
    a7[4] = vmulq_f32(v66, *(a4 + 64));
    a7[5] = v38;
    *(a7 + 324) = v37;
    *(a7 + 340) = vmulq_f32(v35, v36);
    v39 = v69;
    v40 = *(a4 + 372);
    v41 = vmulq_f32(v68, *(a4 + 356));
    v42 = vmulq_f32(v69, *(a4 + 112));
    a7[6] = vmulq_f32(v68, *(a4 + 96));
    a7[7] = v42;
    *(a7 + 356) = v41;
    *(a7 + 372) = vmulq_f32(v39, v40);
    v43 = v71;
    v44 = *(a4 + 404);
    v45 = vmulq_f32(v70, *(a4 + 388));
    v46 = vmulq_f32(v71, *(a4 + 144));
    a7[8] = vmulq_f32(v70, *(a4 + 128));
    a7[9] = v46;
    *(a7 + 388) = v45;
    *(a7 + 404) = vmulq_f32(v43, v44);
    v47 = v73;
    v48 = *(a4 + 436);
    v49 = vmulq_f32(v72, *(a4 + 420));
    v50 = vmulq_f32(v73, *(a4 + 176));
    a7[10] = vmulq_f32(v72, *(a4 + 160));
    a7[11] = v50;
    *(a7 + 420) = v49;
    *(a7 + 436) = vmulq_f32(v47, v48);
    v51 = v75;
    v52 = *(a4 + 468);
    v53 = vmulq_f32(v74, *(a4 + 452));
    v54 = vmulq_f32(v75, *(a4 + 208));
    a7[12] = vmulq_f32(v74, *(a4 + 192));
    a7[13] = v54;
    *(a7 + 452) = v53;
    *(a7 + 468) = vmulq_f32(v51, v52);
    v55 = v77;
    v56 = *(a4 + 500);
    v57 = vmulq_f32(v76, *(a4 + 484));
    v58 = vmulq_f32(v77, *(a4 + 240));
    a7[14] = vmulq_f32(v76, *(a4 + 224));
    a7[15] = v58;
    v26 = 64;
    *(a7 + 484) = v57;
    *(a7 + 500) = vmulq_f32(v55, v56);
  }

  else
  {
    v26 = 0;
  }

  v59 = &a7->f32[v26];
  v60 = (a4 + 4 * v26);
  do
  {
    v61 = v62.f32[v26];
    *v59 = v61 * *v60;
    result = v61 * v60[65];
    v59[65] = result;
    ++v26;
    ++v59;
    ++v60;
  }

  while (v26 != 65);
  return result;
}

void InitCocoaMultiThreading(void)
{
  if ((atomic_load_explicit(&qword_28100B948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28100B948))
  {
    _MergedGlobals_11 = [MEMORY[0x277CCACC8] isMultiThreaded];
    __cxa_guard_release(&qword_28100B948);
  }

  if ((_MergedGlobals_11 & 1) == 0)
  {
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_class toTarget:objc_opt_class() withObject:0];
    _MergedGlobals_11 = 1;
  }
}

uint64_t webrtc::FeedbackParams::operator==(void *a1, unsigned __int8 **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (&v2[-*a1] == (a2[1] - *a2))
  {
    result = 1;
    if (v3 == v2)
    {
      return result;
    }

    while (1)
    {
      v6 = v4[23];
      if ((v6 & 0x80u) == 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = *v4;
      }

      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v4 + 1);
      }

      v8 = v3[23];
      if ((v8 & 0x80u) == 0)
      {
        v9 = v3;
      }

      else
      {
        v9 = *v3;
      }

      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v3 + 1);
      }

      if (v6 != v8)
      {
        break;
      }

      if (v6)
      {
        do
        {
          v15 = *v7++;
          v14 = v15;
          v17 = *v9++;
          v16 = v17;
          if (v14 != v17)
          {
            if ((v14 - 65) < 0x1A)
            {
              LOBYTE(v14) = v14 + 32;
            }

            if ((v16 - 65) < 0x1A)
            {
              LOBYTE(v16) = v16 + 32;
            }

            if (v14 != v16)
            {
              return 0;
            }
          }
        }

        while (--v6);
      }

      v10 = v4 + 24;
      if ((v4[47] & 0x80u) == 0)
      {
        v11 = v4[47];
      }

      else
      {
        v10 = *(v4 + 3);
        v11 = *(v4 + 4);
      }

      v12 = v3 + 24;
      if ((v3[47] & 0x80u) == 0)
      {
        v13 = v3[47];
      }

      else
      {
        v12 = *(v3 + 3);
        v13 = *(v3 + 4);
      }

      if (v11 != v13)
      {
        return 0;
      }

      if (v11)
      {
        do
        {
          v19 = *v10++;
          v18 = v19;
          v21 = *v12++;
          v20 = v21;
          if (v18 != v21)
          {
            if ((v18 - 65) < 0x1A)
            {
              LOBYTE(v18) = v18 + 32;
            }

            if ((v20 - 65) < 0x1A)
            {
              LOBYTE(v20) = v20 + 32;
            }

            if (v18 != v20)
            {
              return 0;
            }
          }
        }

        while (--v11);
      }

      v3 += 48;
      v4 += 48;
      if (v3 == v2)
      {
        return result;
      }
    }
  }

  return 0;
}

BOOL webrtc::FeedbackParams::Has(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2;
  if (*a1 != v2)
  {
    v5 = a2[23];
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = a2[23];
    }

    else
    {
      v7 = *(a2 + 1);
    }

    v8 = a2[47];
    if (v8 >= 0)
    {
      v9 = a2 + 24;
    }

    else
    {
      v9 = *(a2 + 3);
    }

    if (v8 >= 0)
    {
      v10 = a2[47];
    }

    else
    {
      v10 = *(a2 + 4);
    }

    if (v7)
    {
      if (!v10)
      {
        while (1)
        {
          v27 = v3[23];
          v28 = v3;
          if (v27 < 0)
          {
            v28 = *v3;
            if (v7 == *(v3 + 1))
            {
LABEL_51:
              v29 = v6;
              v30 = v7;
              while (1)
              {
                v32 = *v29++;
                v31 = v32;
                v34 = *v28++;
                v33 = v34;
                if (v31 != v34)
                {
                  if ((v31 - 65) < 0x1A)
                  {
                    LOBYTE(v31) = v31 + 32;
                  }

                  if ((v33 - 65) < 0x1A)
                  {
                    LOBYTE(v33) = v33 + 32;
                  }

                  if (v31 != v33)
                  {
                    break;
                  }
                }

                if (!--v30)
                {
                  if ((v3[47] & 0x8000000000000000) == 0)
                  {
                    if (!v3[47])
                    {
                      goto LABEL_61;
                    }

                    break;
                  }

                  if (*(v3 + 4))
                  {
                    break;
                  }

                  goto LABEL_61;
                }
              }
            }
          }

          else if (v7 == v27)
          {
            goto LABEL_51;
          }

          v3 += 48;
          if (v3 == v2)
          {
            return v4 != v2;
          }
        }
      }

      while (1)
      {
        v11 = v3[23];
        if (v11 < 0)
        {
          v12 = *v3;
          if (v7 == *(v3 + 1))
          {
LABEL_22:
            v13 = v6;
            v14 = v7;
            while (1)
            {
              v16 = *v13++;
              v15 = v16;
              v18 = *v12++;
              v17 = v18;
              if (v15 != v18)
              {
                if ((v15 - 65) < 0x1A)
                {
                  LOBYTE(v15) = v15 + 32;
                }

                if ((v17 - 65) < 0x1A)
                {
                  LOBYTE(v17) = v17 + 32;
                }

                if (v15 != v17)
                {
                  break;
                }
              }

              if (!--v14)
              {
                v19 = v3[47];
                if (v19 < 0)
                {
                  v20 = *(v3 + 3);
                  if (v10 != *(v3 + 4))
                  {
                    break;
                  }
                }

                else
                {
                  v20 = v3 + 24;
                  if (v10 != v19)
                  {
                    break;
                  }
                }

                v21 = v9;
                v22 = v10;
                while (1)
                {
                  v24 = *v21++;
                  v23 = v24;
                  v26 = *v20++;
                  v25 = v26;
                  if (v23 != v26)
                  {
                    if ((v23 - 65) < 0x1A)
                    {
                      LOBYTE(v23) = v23 + 32;
                    }

                    if ((v25 - 65) < 0x1A)
                    {
                      LOBYTE(v25) = v25 + 32;
                    }

                    if (v23 != v25)
                    {
                      goto LABEL_17;
                    }
                  }

                  if (!--v22)
                  {
                    goto LABEL_61;
                  }
                }
              }
            }
          }
        }

        else
        {
          v12 = v3;
          if (v7 == v11)
          {
            goto LABEL_22;
          }
        }

LABEL_17:
        v3 += 48;
        if (v3 == v2)
        {
          return v4 != v2;
        }
      }
    }

    if (!v10)
    {
      while (1)
      {
        if ((v3[23] & 0x8000000000000000) != 0)
        {
          if (*(v3 + 1))
          {
            goto LABEL_84;
          }
        }

        else if (v3[23])
        {
          goto LABEL_84;
        }

        v44 = v3[47];
        if (v44 < 0)
        {
          v44 = *(v3 + 4);
        }

        if (!v44)
        {
          goto LABEL_61;
        }

LABEL_84:
        v3 += 48;
        if (v3 == v2)
        {
          return v4 != v2;
        }
      }
    }

    do
    {
      if ((v3[23] & 0x8000000000000000) != 0)
      {
        if (*(v3 + 1))
        {
          goto LABEL_65;
        }
      }

      else if (v3[23])
      {
        goto LABEL_65;
      }

      v36 = v3[47];
      if (v36 < 0)
      {
        v37 = *(v3 + 3);
        if (v10 == *(v3 + 4))
        {
LABEL_74:
          v38 = v9;
          v39 = v10;
          while (1)
          {
            v41 = *v38++;
            v40 = v41;
            v43 = *v37++;
            v42 = v43;
            if (v40 != v43)
            {
              if ((v40 - 65) < 0x1A)
              {
                LOBYTE(v40) = v40 + 32;
              }

              if ((v42 - 65) < 0x1A)
              {
                LOBYTE(v42) = v42 + 32;
              }

              if (v40 != v42)
              {
                break;
              }
            }

            if (!--v39)
            {
LABEL_61:
              v4 = v3;
              return v4 != v2;
            }
          }
        }
      }

      else
      {
        v37 = v3 + 24;
        if (v10 == v36)
        {
          goto LABEL_74;
        }
      }

LABEL_65:
      v3 += 48;
    }

    while (v3 != v2);
  }

  return v4 != v2;
}

void webrtc::FeedbackParams::Add(std::string **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 23);
  v9 = *(a2 + 1);
  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (!v10)
  {
    return;
  }

  v13 = *a1;
  v14 = a1[1];
  if (*a1 == v14)
  {
    goto LABEL_40;
  }

  v15 = *a2;
  if (v8 >= 0)
  {
    v15 = a2;
  }

  v16 = *(a2 + 47);
  v17 = a2 + 24;
  if ((v16 & 0x80u) != 0)
  {
    v17 = *(a2 + 3);
    v16 = *(a2 + 4);
  }

  v18 = *a1;
  while (1)
  {
    v19 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
    if (v19 < 0)
    {
      v20 = v18->__r_.__value_.__r.__words[0];
      if (v10 != v18->__r_.__value_.__l.__size_)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v20 = v18;
      if (v10 != v19)
      {
        goto LABEL_11;
      }
    }

    v21 = v15;
    v22 = v10;
    do
    {
      v24 = *v21++;
      v23 = v24;
      v26 = v20->__r_.__value_.__s.__data_[0];
      v20 = (v20 + 1);
      v25 = v26;
      if (v23 != v26)
      {
        if ((v23 - 65) < 0x1A)
        {
          LOBYTE(v23) = v23 + 32;
        }

        a5 = (v25 + 32);
        if ((v25 - 65) < 0x1A)
        {
          LOBYTE(v25) = v25 + 32;
        }

        if (v23 != v25)
        {
          goto LABEL_11;
        }
      }

      --v22;
    }

    while (v22);
    v27 = SHIBYTE(v18[1].__r_.__value_.__r.__words[2]);
    if (v27 < 0)
    {
      break;
    }

    data = v18 + 1;
    if (v16 == v27)
    {
      goto LABEL_29;
    }

LABEL_11:
    v18 += 2;
    if (v18 == v14)
    {
      goto LABEL_40;
    }
  }

  data = v18[1].__r_.__value_.__l.__data_;
  if (v16 != v18[1].__r_.__value_.__l.__size_)
  {
    goto LABEL_11;
  }

LABEL_29:
  if (v16)
  {
    v29 = v17;
    v30 = v16;
    do
    {
      v32 = *v29++;
      v31 = v32;
      v34 = data->__r_.__value_.__s.__data_[0];
      data = (data + 1);
      v33 = v34;
      if (v31 != v34)
      {
        if ((v31 - 65) < 0x1A)
        {
          LOBYTE(v31) = v31 + 32;
        }

        a5 = (v33 + 32);
        if ((v33 - 65) < 0x1A)
        {
          LOBYTE(v33) = v33 + 32;
        }

        if (v31 != v33)
        {
          goto LABEL_11;
        }
      }
    }

    while (--v30);
  }

  if (v18 != v14)
  {
    return;
  }

LABEL_40:
  v35 = a1[2];
  if (v14 >= v35)
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 4) + 1;
    if (v40 > 0x555555555555555)
    {
      goto LABEL_129;
    }

    v41 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v13) >> 4);
    v42 = 2 * v41;
    if (2 * v41 <= v40)
    {
      v42 = v40;
    }

    if (v41 >= 0x2AAAAAAAAAAAAAALL)
    {
      v43 = 0x555555555555555;
    }

    else
    {
      v43 = v42;
    }

    if (v43)
    {
      if (v43 <= 0x555555555555555)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_127:
    __break(1u);
LABEL_128:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec.cc", 65, "!HasDuplicateEntries()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v74);
LABEL_129:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v14)
  {
    goto LABEL_127;
  }

  if (v8 < 0)
  {
    std::string::__init_copy_ctor_external(v14, *a2, v9);
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

  v36 = *a2;
  v14->__r_.__value_.__r.__words[2] = *(a2 + 2);
  *&v14->__r_.__value_.__l.__data_ = v36;
  if (*(a2 + 47) < 0)
  {
LABEL_57:
    std::string::__init_copy_ctor_external(v14 + 1, *(a2 + 3), *(a2 + 4));
    v38 = v14 + 2;
    a1[1] = v38;
    v39 = *a1;
    if (*a1 == v38)
    {
      return;
    }

LABEL_60:
    while (1)
    {
      v44 = v39 + 2;
      if (v38 != &v39[2])
      {
        break;
      }

LABEL_59:
      v39 += 2;
      if (v44 == v38)
      {
        return;
      }
    }

    v45 = SHIBYTE(v39->__r_.__value_.__r.__words[2]);
    if (v45 >= 0)
    {
      v46 = v39;
    }

    else
    {
      v46 = v39->__r_.__value_.__r.__words[0];
    }

    if (v45 >= 0)
    {
      size = HIBYTE(v39->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v48 = v39 + 2;
      while (1)
      {
        v49 = SHIBYTE(v48->__r_.__value_.__r.__words[2]);
        if (v49 < 0)
        {
          v50 = v48->__r_.__value_.__r.__words[0];
          if (size != v48->__r_.__value_.__l.__size_)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v50 = v48;
          if (size != v49)
          {
            goto LABEL_69;
          }
        }

        v51 = v46;
        v52 = size;
        do
        {
          v54 = v51->__r_.__value_.__s.__data_[0];
          v51 = (v51 + 1);
          v53 = v54;
          v56 = v50->__r_.__value_.__s.__data_[0];
          v50 = (v50 + 1);
          v55 = v56;
          if (v53 != v56)
          {
            if ((v53 - 65) < 0x1A)
            {
              LOBYTE(v53) = v53 + 32;
            }

            if ((v55 - 65) < 0x1A)
            {
              LOBYTE(v55) = v55 + 32;
            }

            if (v53 != v55)
            {
              goto LABEL_69;
            }
          }

          --v52;
        }

        while (v52);
        v57 = HIBYTE(v39[1].__r_.__value_.__r.__words[2]);
        if ((v57 & 0x80u) == 0)
        {
          v58 = v39 + 1;
        }

        else
        {
          v58 = v39[1].__r_.__value_.__l.__data_;
        }

        if ((v57 & 0x80u) != 0)
        {
          v57 = v39[1].__r_.__value_.__l.__size_;
        }

        v59 = SHIBYTE(v48[1].__r_.__value_.__r.__words[2]);
        if (v59 < 0)
        {
          v60 = v48[1].__r_.__value_.__l.__data_;
          if (v57 != v48[1].__r_.__value_.__l.__size_)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v60 = v48 + 1;
          if (v57 != v59)
          {
            goto LABEL_69;
          }
        }

        if (!v57)
        {
          goto LABEL_128;
        }

        while (1)
        {
          v62 = v58->__r_.__value_.__s.__data_[0];
          v58 = (v58 + 1);
          v61 = v62;
          v64 = v60->__r_.__value_.__s.__data_[0];
          v60 = (v60 + 1);
          v63 = v64;
          if (v61 != v64)
          {
            if ((v61 - 65) < 0x1A)
            {
              LOBYTE(v61) = v61 + 32;
            }

            if ((v63 - 65) < 0x1A)
            {
              LOBYTE(v63) = v63 + 32;
            }

            if (v61 != v63)
            {
              break;
            }
          }

          if (!--v57)
          {
            goto LABEL_128;
          }
        }

LABEL_69:
        v48 += 2;
        if (v48 == v38)
        {
          goto LABEL_59;
        }
      }
    }

    v65 = v39 + 2;
    while (1)
    {
      if ((SHIBYTE(v65->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v65->__r_.__value_.__l.__size_)
        {
          goto LABEL_103;
        }
      }

      else if (*(&v65->__r_.__value_.__s + 23))
      {
        goto LABEL_103;
      }

      v66 = HIBYTE(v39[1].__r_.__value_.__r.__words[2]);
      if ((v66 & 0x80u) == 0)
      {
        v67 = v39 + 1;
      }

      else
      {
        v67 = v39[1].__r_.__value_.__l.__data_;
      }

      if ((v66 & 0x80u) != 0)
      {
        v66 = v39[1].__r_.__value_.__l.__size_;
      }

      v68 = SHIBYTE(v65[1].__r_.__value_.__r.__words[2]);
      if (v68 < 0)
      {
        v69 = v65[1].__r_.__value_.__l.__data_;
        if (v66 != v65[1].__r_.__value_.__l.__size_)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v69 = v65 + 1;
        if (v66 != v68)
        {
          goto LABEL_103;
        }
      }

      if (!v66)
      {
        goto LABEL_128;
      }

      while (1)
      {
        v71 = v67->__r_.__value_.__s.__data_[0];
        v67 = (v67 + 1);
        v70 = v71;
        v73 = v69->__r_.__value_.__s.__data_[0];
        v69 = (v69 + 1);
        v72 = v73;
        if (v70 != v73)
        {
          if ((v70 - 65) < 0x1A)
          {
            LOBYTE(v70) = v70 + 32;
          }

          if ((v72 - 65) < 0x1A)
          {
            LOBYTE(v72) = v72 + 32;
          }

          if (v70 != v72)
          {
            break;
          }
        }

        if (!--v66)
        {
          goto LABEL_128;
        }
      }

LABEL_103:
      v65 += 2;
      if (v65 == v38)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_44:
  v37 = *(a2 + 24);
  v14[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *&v14[1].__r_.__value_.__l.__data_ = v37;
  v38 = v14 + 2;
  a1[1] = v38;
  v39 = *a1;
  if (*a1 != v38)
  {
    goto LABEL_60;
  }
}

uint64_t webrtc::FeedbackParams::Remove(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = a2[23];
    v5 = a2[23];
    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v4 < 0)
    {
      v5 = *(a2 + 1);
    }

    v7 = a2 + 24;
    if ((a2[47] & 0x80u) == 0)
    {
      v8 = a2[47];
    }

    else
    {
      v7 = *(a2 + 3);
      v8 = *(a2 + 4);
    }

    v9 = *a1;
    if (v5)
    {
      if (!v8)
      {
        while (1)
        {
          v26 = v9[23];
          v27 = v9;
          if (v26 < 0)
          {
            v27 = *v9;
            if (v5 == *(v9 + 1))
            {
LABEL_47:
              v28 = v6;
              v29 = v5;
              while (1)
              {
                v31 = *v28++;
                v30 = v31;
                v33 = *v27++;
                v32 = v33;
                if (v30 != v33)
                {
                  if ((v30 - 65) < 0x1A)
                  {
                    LOBYTE(v30) = v30 + 32;
                  }

                  if ((v32 - 65) < 0x1A)
                  {
                    LOBYTE(v32) = v32 + 32;
                  }

                  if (v30 != v32)
                  {
                    break;
                  }
                }

                if (!--v29)
                {
                  if ((v9[47] & 0x8000000000000000) == 0)
                  {
                    if (!v9[47])
                    {
                      goto LABEL_57;
                    }

                    break;
                  }

                  if (*(v9 + 4))
                  {
                    break;
                  }

                  goto LABEL_57;
                }
              }
            }
          }

          else if (v5 == v26)
          {
            goto LABEL_47;
          }

          v9 += 48;
          if (v9 == v3)
          {
            return 0;
          }
        }
      }

      while (1)
      {
        v10 = v9[23];
        if (v10 < 0)
        {
          v11 = *v9;
          if (v5 == *(v9 + 1))
          {
LABEL_18:
            v12 = v6;
            v13 = v5;
            while (1)
            {
              v15 = *v12++;
              v14 = v15;
              v17 = *v11++;
              v16 = v17;
              if (v14 != v17)
              {
                if ((v14 - 65) < 0x1A)
                {
                  LOBYTE(v14) = v14 + 32;
                }

                if ((v16 - 65) < 0x1A)
                {
                  LOBYTE(v16) = v16 + 32;
                }

                if (v14 != v16)
                {
                  break;
                }
              }

              if (!--v13)
              {
                v18 = v9[47];
                if (v18 < 0)
                {
                  v19 = *(v9 + 3);
                  if (v8 != *(v9 + 4))
                  {
                    break;
                  }
                }

                else
                {
                  v19 = v9 + 24;
                  if (v8 != v18)
                  {
                    break;
                  }
                }

                v20 = v7;
                v21 = v8;
                while (1)
                {
                  v23 = *v20++;
                  v22 = v23;
                  v25 = *v19++;
                  v24 = v25;
                  if (v22 != v25)
                  {
                    if ((v22 - 65) < 0x1A)
                    {
                      LOBYTE(v22) = v22 + 32;
                    }

                    if ((v24 - 65) < 0x1A)
                    {
                      LOBYTE(v24) = v24 + 32;
                    }

                    if (v22 != v24)
                    {
                      goto LABEL_13;
                    }
                  }

                  if (!--v21)
                  {
                    goto LABEL_57;
                  }
                }
              }
            }
          }
        }

        else
        {
          v11 = v9;
          if (v5 == v10)
          {
            goto LABEL_18;
          }
        }

LABEL_13:
        v9 += 48;
        if (v9 == v3)
        {
          return 0;
        }
      }
    }

    if (!v8)
    {
      while (1)
      {
        if ((v9[23] & 0x8000000000000000) != 0)
        {
          if (*(v9 + 1))
          {
            goto LABEL_64;
          }
        }

        else if (v9[23])
        {
          goto LABEL_64;
        }

        v38 = v9[47];
        if (v38 < 0)
        {
          v38 = *(v9 + 4);
        }

        if (!v38)
        {
          goto LABEL_57;
        }

LABEL_64:
        v9 += 48;
        if (v9 == v3)
        {
          return 0;
        }
      }
    }

    while (1)
    {
      if ((v9[23] & 0x8000000000000000) != 0)
      {
        if (*(v9 + 1))
        {
          goto LABEL_73;
        }
      }

      else if (v9[23])
      {
        goto LABEL_73;
      }

      v39 = v9[47];
      if (v39 < 0)
      {
        v40 = *(v9 + 3);
        if (v8 == *(v9 + 4))
        {
LABEL_80:
          v41 = v7;
          v42 = v8;
          while (1)
          {
            v44 = *v41++;
            v43 = v44;
            v46 = *v40++;
            v45 = v46;
            if (v43 != v46)
            {
              if ((v43 - 65) < 0x1A)
              {
                LOBYTE(v43) = v43 + 32;
              }

              if ((v45 - 65) < 0x1A)
              {
                LOBYTE(v45) = v45 + 32;
              }

              if (v43 != v45)
              {
                break;
              }
            }

            if (!--v42)
            {
LABEL_57:
              if (v9 != v3)
              {
                v35 = std::remove[abi:sn200100]<std::__wrap_iter<webrtc::FeedbackParam *>,webrtc::FeedbackParam>(*a1, v3, a2);
                std::vector<webrtc::FeedbackParam>::erase(a1, v35, a1[1]);
                return 1;
              }

              return 0;
            }
          }
        }
      }

      else
      {
        v40 = v9 + 24;
        if (v8 == v39)
        {
          goto LABEL_80;
        }
      }

LABEL_73:
      v36 = 0;
      v9 += 48;
      if (v9 == v3)
      {
        return v36;
      }
    }
  }

  return 0;
}

void *std::vector<webrtc::FeedbackParam>::erase(void *result, void **a2, void **a3)
{
  if (a3 >= a2)
  {
    if (a3 == a2)
    {
      return a2;
    }

    v4 = result;
    v5 = result[1];
    if (a3 == v5)
    {
      v15 = a2;
      if (v5 != a2)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v6 = *result;
    v7 = a2 + *result;
    v8 = -*result;
    v9 = a3 + *result;
    do
    {
      v12 = v7 + v8;
      if (*(v7 + v8 + 23) < 0)
      {
        operator delete(*v12);
      }

      v13 = (v9 + v8);
      v14 = *(v9 + v8);
      *(v12 + 16) = *(v9 + v8 + 16);
      *v12 = v14;
      v13[23] = 0;
      *v13 = 0;
      if (*(v12 + 47) < 0)
      {
        operator delete(*(v12 + 24));
      }

      v10 = v9 + v8;
      v11 = *(v9 + v8 + 24);
      *(v12 + 40) = *(v9 + v8 + 40);
      *(v12 + 24) = v11;
      *(v10 + 47) = 0;
      *(v10 + 24) = 0;
      v7 += 48;
      v9 += 48;
    }

    while ((v9 + v8) != v5);
    v5 = v4[1];
    v15 = (v7 - v6);
    if (v5 == v15)
    {
LABEL_13:
      v4[1] = v15;
      return a2;
    }

    while (1)
    {
LABEL_16:
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
        v16 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
LABEL_20:
          operator delete(*v16);
        }
      }

      else
      {
        v16 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
          goto LABEL_20;
        }
      }

      v5 = v16;
      if (v16 == v15)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *std::remove[abi:sn200100]<std::__wrap_iter<webrtc::FeedbackParam *>,webrtc::FeedbackParam>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a1 == a2)
  {
    return v3;
  }

  v6 = a1;
  v8 = a3 + 24;
  v7 = *(a3 + 3);
  v9 = a3[23];
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = a3[23];
  }

  else
  {
    v11 = *(a3 + 1);
  }

  v12 = a3[47];
  if ((a3[47] & 0x80u) != 0)
  {
    v12 = *(a3 + 4);
  }

  else
  {
    v7 = a3 + 24;
  }

  if (v11)
  {
    if (!v12)
    {
      while (1)
      {
        v29 = v6[23];
        v30 = v6;
        if (v29 < 0)
        {
          v30 = *v6;
          if (v11 == *(v6 + 1))
          {
LABEL_48:
            v31 = v10;
            v32 = v11;
            while (1)
            {
              v34 = *v31++;
              v33 = v34;
              v36 = *v30++;
              v35 = v36;
              if (v33 != v36)
              {
                if ((v33 - 65) < 0x1A)
                {
                  LOBYTE(v33) = v33 + 32;
                }

                if ((v35 - 65) < 0x1A)
                {
                  LOBYTE(v35) = v35 + 32;
                }

                if (v33 != v35)
                {
                  break;
                }
              }

              if (!--v32)
              {
                if ((v6[47] & 0x8000000000000000) == 0)
                {
                  if (!v6[47])
                  {
                    goto LABEL_87;
                  }

                  break;
                }

                if (*(v6 + 4))
                {
                  break;
                }

                goto LABEL_87;
              }
            }
          }
        }

        else if (v11 == v29)
        {
          goto LABEL_48;
        }

        v6 += 48;
        if (v6 == a2)
        {
          goto LABEL_86;
        }
      }
    }

    while (1)
    {
      v13 = v6[23];
      if (v13 < 0)
      {
        v14 = *v6;
        if (v11 == *(v6 + 1))
        {
LABEL_19:
          v15 = v10;
          v16 = v11;
          while (1)
          {
            v18 = *v15++;
            v17 = v18;
            v20 = *v14++;
            v19 = v20;
            if (v17 != v20)
            {
              if ((v17 - 65) < 0x1A)
              {
                LOBYTE(v17) = v17 + 32;
              }

              if ((v19 - 65) < 0x1A)
              {
                LOBYTE(v19) = v19 + 32;
              }

              if (v17 != v19)
              {
                break;
              }
            }

            if (!--v16)
            {
              v21 = v6[47];
              if (v21 < 0)
              {
                v22 = *(v6 + 3);
                if (v12 != *(v6 + 4))
                {
                  break;
                }
              }

              else
              {
                v22 = v6 + 24;
                if (v12 != v21)
                {
                  break;
                }
              }

              v23 = v7;
              v24 = v12;
              while (1)
              {
                v26 = *v23++;
                v25 = v26;
                v28 = *v22++;
                v27 = v28;
                if (v25 != v28)
                {
                  if ((v25 - 65) < 0x1A)
                  {
                    LOBYTE(v25) = v25 + 32;
                  }

                  if ((v27 - 65) < 0x1A)
                  {
                    LOBYTE(v27) = v27 + 32;
                  }

                  if (v25 != v27)
                  {
                    goto LABEL_14;
                  }
                }

                if (!--v24)
                {
                  goto LABEL_87;
                }
              }
            }
          }
        }
      }

      else
      {
        v14 = v6;
        if (v11 == v13)
        {
          goto LABEL_19;
        }
      }

LABEL_14:
      v6 += 48;
      if (v6 == a2)
      {
        goto LABEL_86;
      }
    }
  }

  if (!v12)
  {
    while (1)
    {
      if ((v6[23] & 0x8000000000000000) != 0)
      {
        if (*(v6 + 1))
        {
          goto LABEL_62;
        }
      }

      else if (v6[23])
      {
        goto LABEL_62;
      }

      v37 = v6[47];
      if (v37 < 0)
      {
        v37 = *(v6 + 4);
      }

      if (!v37)
      {
        goto LABEL_87;
      }

LABEL_62:
      v6 += 48;
      if (v6 == a2)
      {
        goto LABEL_86;
      }
    }
  }

  do
  {
    if ((v6[23] & 0x8000000000000000) != 0)
    {
      if (*(v6 + 1))
      {
        goto LABEL_70;
      }
    }

    else if (v6[23])
    {
      goto LABEL_70;
    }

    v38 = v6[47];
    if (v38 < 0)
    {
      v39 = *(v6 + 3);
      if (v12 != *(v6 + 4))
      {
        goto LABEL_70;
      }
    }

    else
    {
      v39 = v6 + 24;
      if (v12 != v38)
      {
        goto LABEL_70;
      }
    }

    v40 = v7;
    v41 = v12;
    while (1)
    {
      v43 = *v40++;
      v42 = v43;
      v45 = *v39++;
      v44 = v45;
      if (v42 != v45)
      {
        if ((v42 - 65) < 0x1A)
        {
          LOBYTE(v42) = v42 + 32;
        }

        if ((v44 - 65) < 0x1A)
        {
          LOBYTE(v44) = v44 + 32;
        }

        if (v42 != v44)
        {
          break;
        }
      }

      if (!--v41)
      {
        goto LABEL_87;
      }
    }

LABEL_70:
    v6 += 48;
  }

  while (v6 != a2);
LABEL_86:
  v6 = a2;
LABEL_87:
  if (v6 != a2)
  {
    v46 = v6 + 48;
    if (v6 + 48 != a2)
    {
      v3 = v6;
      while (1)
      {
        v48 = v6;
        v6 = v46;
        v49 = a3[23];
        if ((v49 & 0x80u) == 0)
        {
          v50 = a3;
        }

        else
        {
          v50 = *a3;
        }

        if ((v49 & 0x80u) != 0)
        {
          v49 = *(a3 + 1);
        }

        v51 = v48[71];
        if (v51 < 0)
        {
          v52 = *v6;
          if (v49 != *(v48 + 7))
          {
            goto LABEL_128;
          }
        }

        else
        {
          v52 = v6;
          if (v49 != v51)
          {
            goto LABEL_128;
          }
        }

        if (v49)
        {
          break;
        }

LABEL_102:
        v53 = a3[47];
        if ((v53 & 0x80u) == 0)
        {
          v54 = v8;
        }

        else
        {
          v54 = *(a3 + 3);
        }

        if ((v53 & 0x80u) != 0)
        {
          v53 = *(a3 + 4);
        }

        v55 = v48[95];
        if (v55 < 0)
        {
          v56 = *(v48 + 9);
          if (v53 != *(v48 + 10))
          {
            goto LABEL_128;
          }
        }

        else
        {
          v56 = v48 + 72;
          if (v53 != v55)
          {
            goto LABEL_128;
          }
        }

        if (v53)
        {
          while (1)
          {
            v62 = *v54++;
            v61 = v62;
            v64 = *v56++;
            v63 = v64;
            if (v61 != v64)
            {
              if ((v61 - 65) < 0x1A)
              {
                LOBYTE(v61) = v61 + 32;
              }

              if ((v63 - 65) < 0x1A)
              {
                LOBYTE(v63) = v63 + 32;
              }

              if (v61 != v63)
              {
                break;
              }
            }

            if (!--v53)
            {
              goto LABEL_91;
            }
          }

LABEL_128:
          if (v3[23] < 0)
          {
            operator delete(*v3);
          }

          v65 = *v6;
          *(v3 + 2) = *(v6 + 2);
          *v3 = v65;
          v48[71] = 0;
          *v6 = 0;
          if (v3[47] < 0)
          {
            operator delete(*(v3 + 3));
          }

          v47 = *(v48 + 72);
          *(v3 + 5) = *(v48 + 11);
          *(v3 + 24) = v47;
          v48[95] = 0;
          v48[72] = 0;
          v3 += 48;
        }

LABEL_91:
        v46 = v6 + 48;
        if (v6 + 48 == a2)
        {
          return v3;
        }
      }

      while (1)
      {
        v58 = *v50++;
        v57 = v58;
        v60 = *v52++;
        v59 = v60;
        if (v57 != v60)
        {
          if ((v57 - 65) < 0x1A)
          {
            LOBYTE(v57) = v57 + 32;
          }

          if ((v59 - 65) < 0x1A)
          {
            LOBYTE(v59) = v59 + 32;
          }

          if (v57 != v59)
          {
            goto LABEL_128;
          }
        }

        if (!--v49)
        {
          goto LABEL_102;
        }
      }
    }
  }

  return v6;
}

void webrtc::FeedbackParams::Intersect(void ***a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return;
  }

LABEL_4:
  while (2)
  {
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      v8 = *(v2 + 23);
      if (v8 >= 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = *v2;
      }

      if (v8 < 0)
      {
        v8 = v2[1];
      }

      do
      {
        v10 = v6[23];
        if ((v10 & 0x8000000000000000) != 0)
        {
          v11 = *v6;
          if (v8 != *(v6 + 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v11 = v6;
          if (v8 != v10)
          {
            goto LABEL_11;
          }
        }

        if (v8)
        {
          v12 = v9;
          v13 = v8;
          do
          {
            v15 = *v12++;
            v14 = v15;
            v17 = *v11++;
            v16 = v17;
            if (v14 != v17)
            {
              if ((v14 - 65) < 0x1A)
              {
                LOBYTE(v14) = v14 + 32;
              }

              if ((v16 - 65) < 0x1A)
              {
                LOBYTE(v16) = v16 + 32;
              }

              if (v14 != v16)
              {
                goto LABEL_11;
              }
            }
          }

          while (--v13);
        }

        v18 = *(v2 + 47);
        if (v18 >= 0)
        {
          v19 = (v2 + 3);
        }

        else
        {
          v19 = v2[3];
        }

        if (v18 < 0)
        {
          v18 = v2[4];
        }

        v20 = v6[47];
        if ((v20 & 0x8000000000000000) != 0)
        {
          v21 = *(v6 + 3);
          if (v18 != *(v6 + 4))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v21 = v6 + 24;
          if (v18 != v20)
          {
            goto LABEL_11;
          }
        }

        if (!v18)
        {
LABEL_45:
          if (v6 == v7)
          {
            break;
          }

          v2 += 6;
          if (v2 == v3)
          {
            return;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v23 = *v19++;
          v22 = v23;
          v25 = *v21++;
          v24 = v25;
          if (v22 != v25)
          {
            if ((v22 - 65) < 0x1A)
            {
              LOBYTE(v22) = v22 + 32;
            }

            if ((v24 - 65) < 0x1A)
            {
              LOBYTE(v24) = v24 + 32;
            }

            if (v22 != v24)
            {
              break;
            }
          }

          if (!--v18)
          {
            goto LABEL_45;
          }
        }

LABEL_11:
        v6 += 48;
      }

      while (v6 != v7);
    }

    if (v3 == v2)
    {
      __break(1u);
      return;
    }

    if (v2 + 6 == v3)
    {
      v27 = v2;
      if (v3 != v2)
      {
        goto LABEL_61;
      }

      goto LABEL_3;
    }

    v26 = v2;
    do
    {
      if (*(v26 + 23) < 0)
      {
        operator delete(*v26);
      }

      *v26 = *(v26 + 3);
      v26[2] = v26[8];
      *(v26 + 71) = 0;
      *(v26 + 48) = 0;
      if (*(v26 + 47) < 0)
      {
        operator delete(v26[3]);
      }

      *(v26 + 3) = *(v26 + 9);
      v26[5] = v26[11];
      *(v26 + 95) = 0;
      *(v26 + 72) = 0;
      v27 = v26 + 6;
      v28 = v26 + 12;
      v26 += 6;
    }

    while (v28 != v3);
    v3 = a1[1];
    if (v3 != v27)
    {
      do
      {
LABEL_61:
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
          v29 = v3 - 6;
          if (*(v3 - 25) < 0)
          {
LABEL_65:
            operator delete(*v29);
          }
        }

        else
        {
          v29 = v3 - 6;
          if (*(v3 - 25) < 0)
          {
            goto LABEL_65;
          }
        }

        v3 = v29;
      }

      while (v29 != v27);
    }

LABEL_3:
    a1[1] = v27;
    v3 = v27;
    if (v2 != v27)
    {
      continue;
    }

    break;
  }
}

void webrtc::Codec::Codec(webrtc::Codec *this, const webrtc::SdpVideoFormat *a2)
{
  *this = &unk_288291428;
  *(this + 1) = 0xFFFFFFFF00000001;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(this + 4) = *(a2 + 2);
    *(this + 1) = v4;
  }

  *(this + 11) = 0;
  v5 = (this + 88);
  *(this + 5) = 90000;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 136) = 0;
  *(this + 160) = 0;
  *(this + 22) = 0;
  *(this + 21) = this + 176;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  if (this + 168 != a2 + 24)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 168, *(a2 + 3), a2 + 4);
  }

  if (v5 != (a2 + 48))
  {
    v8 = *(a2 + 7);
    v7 = a2 + 56;
    v6 = v8;
    v9 = *(v7 - 1);
    if (v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = v7;
    }

    v11 = v9 >> 1;
    v12 = *(this + 11);
    if (v12)
    {
      v13 = *(this + 12);
      if (*(this + 13) >= v11)
      {
LABEL_12:
        v14 = v12 >> 1;
        v15 = v11 - (v12 >> 1);
        if (v11 < v12 >> 1)
        {
          v15 = 0;
        }

        if (v14 >= v11)
        {
          v16 = v9 >> 1;
        }

        else
        {
          v16 = v12 >> 1;
        }

        if (v16)
        {
          v17 = 0;
          if (v16 < 0x20)
          {
            goto LABEL_23;
          }

          if ((v13 - v10) < 0x20)
          {
            goto LABEL_23;
          }

          v17 = v16 & 0x7FFFFFFFFFFFFFE0;
          v18 = &v10[v16 & 0x7FFFFFFFFFFFFFE0];
          v19 = (v10 + 16);
          v20 = v13 + 16;
          v21 = v16 & 0x7FFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 32;
          }

          while (v21);
          v10 += v16 & 0x7FFFFFFFFFFFFFE0;
          if (v16 != v17)
          {
LABEL_23:
            v23 = v16 - v17;
            v24 = &v13[v17];
            v18 = v10;
            do
            {
              v25 = *v18++;
              *v24++ = v25;
              --v23;
            }

            while (v23);
          }

          if (v14 >= v11)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v18 = v10;
          if (v14 >= v11)
          {
LABEL_48:
            *v5 = v9 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
            return;
          }
        }

        if (!v13)
        {
          __break(1u);
          return;
        }

        v26 = &v13[v14];
        v27 = v15;
        v28 = v18;
        v29 = 0;
        if (v15 < 8 || (v26 - v18) < 0x20)
        {
          v30 = v18;
        }

        else
        {
          if (v15 < 0x20)
          {
            v29 = 0;
            goto LABEL_40;
          }

          v29 = v15 & 0xFFFFFFFFFFFFFFE0;
          v31 = (v18 + 16);
          v32 = v26 + 16;
          v33 = v27 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v34 = *v31;
            *(v32 - 1) = *(v31 - 1);
            *v32 = v34;
            v31 += 2;
            v32 += 2;
            v33 -= 32;
          }

          while (v33);
          if (v27 == v29)
          {
            goto LABEL_47;
          }

          if ((v27 & 0x18) != 0)
          {
LABEL_40:
            v35 = v29;
            v29 = v27 & 0xFFFFFFFFFFFFFFF8;
            v30 = &v28[v27 & 0xFFFFFFFFFFFFFFF8];
            v36 = &v28[v35];
            v37 = &v26[v35];
            v38 = v35 - (v27 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v39 = *v36++;
              *v37 = v39;
              v37 += 8;
              v38 += 8;
            }

            while (v38);
            if (v27 == v29)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }

          v30 = &v28[v29];
        }

LABEL_45:
        v40 = v27 - v29;
        v41 = &v26[v29];
        do
        {
          v42 = *v30++;
          *v41++ = v42;
          --v40;
        }

        while (v40);
LABEL_47:
        v12 = *v5;
        goto LABEL_48;
      }
    }

    else
    {
      v13 = this + 96;
      if (v11 <= 0x22)
      {
        goto LABEL_12;
      }
    }

    operator new();
  }
}

webrtc::Codec *webrtc::Codec::Codec(webrtc::Codec *this, const webrtc::Codec *a2)
{
  *this = &unk_288291428;
  *(this + 1) = *(a2 + 1);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v4 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v4;
  }

  v5 = *(a2 + 40);
  *(this + 56) = 0;
  v6 = (this + 56);
  *(this + 40) = v5;
  *(this + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(v6, *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v12 = *(a2 + 56);
      *(this + 9) = *(a2 + 9);
      *&v6->__r_.__value_.__l.__data_ = v12;
    }

    *(this + 80) = 1;
    *(this + 11) = 0;
    v7 = (this + 88);
    v8 = (a2 + 88);
    v9 = *(a2 + 11);
    if (v9 < 2)
    {
LABEL_6:
      *(this + 136) = 0;
      v10 = (this + 136);
      *(this + 160) = 0;
      if (*(a2 + 160) != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else
  {
    *(this + 11) = 0;
    v7 = (this + 88);
    v8 = (a2 + 88);
    v9 = *(a2 + 11);
    if (v9 < 2)
    {
      goto LABEL_6;
    }
  }

  if (v9)
  {
    absl::inlined_vector_internal::Storage<webrtc::ScalabilityMode,34ul,std::allocator<webrtc::ScalabilityMode>>::InitFrom(v7, v8);
    *(this + 136) = 0;
    v10 = (this + 136);
    *(this + 160) = 0;
    if (*(a2 + 160) != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(this + 11) = v9;
    v18 = *(a2 + 6);
    v19 = *(a2 + 7);
    *(this + 16) = *(a2 + 16);
    *(this + 6) = v18;
    *(this + 7) = v19;
    *(this + 136) = 0;
    v10 = (this + 136);
    *(this + 160) = 0;
    if (*(a2 + 160) != 1)
    {
      goto LABEL_13;
    }
  }

LABEL_7:
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v11 = *(a2 + 136);
    v10->__r_.__value_.__r.__words[2] = *(a2 + 19);
    *&v10->__r_.__value_.__l.__data_ = v11;
  }

  *(this + 160) = 1;
LABEL_13:
  *(this + 22) = 0;
  *(this + 21) = this + 176;
  *(this + 23) = 0;
  v13 = *(a2 + 21);
  if (v13 != (a2 + 176))
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(this + 21, this + 22, v13 + 4);
      v15 = *(v13 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v13 + 2);
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      v13 = v16;
    }

    while (v16 != (a2 + 176));
  }

  std::vector<webrtc::FeedbackParam>::vector[abi:sn200100](this + 24, a2 + 24);
  return this;
}

uint64_t webrtc::Codec::Codec(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288291428;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v4 = *(a2 + 40);
  *(a1 + 56) = 0;
  *(a1 + 40) = v4;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 80) = 1;
  }

  *(a1 + 88) = 0;
  *(a1 + 88) = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a2 + 88) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    v8 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v8;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    *(a1 + 160) = 1;
  }

  v9 = (a2 + 176);
  v10 = *(a2 + 176);
  v11 = *(a2 + 168);
  *(a1 + 176) = v10;
  v12 = a1 + 176;
  *(a1 + 168) = v11;
  v13 = *(a2 + 184);
  *(a1 + 184) = v13;
  if (v13)
  {
    *(v10 + 16) = v12;
    *(a2 + 168) = v9;
    *v9 = 0;
    *(a2 + 184) = 0;
  }

  else
  {
    *(a1 + 168) = v12;
  }

  std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((a1 + 192), (a2 + 192));
  return a1;
}

void webrtc::Codec::~Codec(webrtc::Codec *this)
{
  *this = &unk_288291428;
  v2 = *(this + 24);
  if (v2)
  {
    v3 = *(this + 25);
    v4 = *(this + 24);
    if (v3 == v2)
    {
LABEL_11:
      *(this + 25) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(this + 24);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 168, *(this + 22));
  if (*(this + 160) == 1 && *(this + 159) < 0)
  {
    operator delete(*(this + 17));
    if ((*(this + 88) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (*(this + 88))
  {
LABEL_15:
    operator delete(*(this + 12));
  }

LABEL_16:
  if (*(this + 80) != 1 || (*(this + 79) & 0x80000000) == 0)
  {
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(*(this + 2));
    return;
  }

  operator delete(*(this + 7));
  if (*(this + 39) < 0)
  {
    goto LABEL_23;
  }
}

{
  webrtc::Codec::~Codec(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::Codec::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (a1 == a2)
  {
    *(a1 + 40) = *(a2 + 40);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1 + 56, (a2 + 56));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1 + 136, (a2 + 136));
    return;
  }

  v4 = *(a2 + 39);
  if (*(a1 + 39) < 0)
  {
    if (v4 >= 0)
    {
      v6 = (a2 + 16);
    }

    else
    {
      v6 = *(a2 + 16);
    }

    if (v4 >= 0)
    {
      v7 = *(a2 + 39);
    }

    else
    {
      v7 = *(a2 + 24);
    }

    std::string::__assign_no_alias<false>((a1 + 16), v6, v7);
  }

  else if ((*(a2 + 39) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1 + 56, (a2 + 56));
  v8 = *(a2 + 88);
  if (v8)
  {
    v9 = *(a2 + 96);
  }

  else
  {
    v9 = a2 + 96;
  }

  v10 = v8 >> 1;
  v11 = *(a1 + 88);
  if ((v11 & 1) == 0)
  {
    v12 = a1 + 96;
    if (v10 <= 0x22)
    {
      goto LABEL_19;
    }

LABEL_35:
    operator new();
  }

  v12 = *(a1 + 96);
  if (*(a1 + 104) < v10)
  {
    goto LABEL_35;
  }

LABEL_19:
  v13 = v11 >> 1;
  v14 = v10 - (v11 >> 1);
  if (v10 < v11 >> 1)
  {
    v14 = 0;
  }

  if (v13 >= v10)
  {
    v15 = v8 >> 1;
  }

  else
  {
    v15 = v11 >> 1;
  }

  if (v15)
  {
    v16 = 0;
    if (v15 < 0x20)
    {
      goto LABEL_30;
    }

    if ((v12 - v9) < 0x20)
    {
      goto LABEL_30;
    }

    v16 = v15 & 0x7FFFFFFFFFFFFFE0;
    v17 = (v9 + (v15 & 0x7FFFFFFFFFFFFFE0));
    v18 = (v9 + 16);
    v19 = (v12 + 16);
    v20 = v15 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v21 = *v18;
      *(v19 - 1) = *(v18 - 1);
      *v19 = v21;
      v18 += 2;
      v19 += 2;
      v20 -= 32;
    }

    while (v20);
    v9 += v15 & 0x7FFFFFFFFFFFFFE0;
    if (v15 != v16)
    {
LABEL_30:
      v22 = v15 - v16;
      v23 = (v12 + v16);
      v17 = v9;
      do
      {
        v24 = *v17++;
        *v23++ = v24;
        --v22;
      }

      while (v22);
    }

    if (v13 >= v10)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v17 = v9;
    if (v13 >= v10)
    {
LABEL_55:
      *(a1 + 88) = v8 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1 + 136, (a2 + 136));
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(a1 + 168, *(a2 + 168), (a2 + 176));
      std::vector<webrtc::FeedbackParam>::__assign_with_size[abi:sn200100]<webrtc::FeedbackParam*,webrtc::FeedbackParam*>((a1 + 192), *(a2 + 192), *(a2 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 4));
      return;
    }
  }

  if (v12)
  {
    v25 = v12 + v13;
    v26 = v14;
    v27 = v17;
    v28 = 0;
    if (v14 < 8 || (v25 - v17) < 0x20)
    {
      v29 = v17;
    }

    else
    {
      if (v14 < 0x20)
      {
        v28 = 0;
        goto LABEL_47;
      }

      v28 = v14 & 0xFFFFFFFFFFFFFFE0;
      v30 = (v17 + 16);
      v31 = (v25 + 16);
      v32 = v26 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v33 = *v30;
        *(v31 - 1) = *(v30 - 1);
        *v31 = v33;
        v30 += 2;
        v31 += 2;
        v32 -= 32;
      }

      while (v32);
      if (v26 == v28)
      {
        goto LABEL_54;
      }

      if ((v26 & 0x18) != 0)
      {
LABEL_47:
        v34 = v28;
        v28 = v26 & 0xFFFFFFFFFFFFFFF8;
        v29 = &v27[v26 & 0xFFFFFFFFFFFFFFF8];
        v35 = &v27[v34];
        v36 = (v25 + v34);
        v37 = v34 - (v26 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v38 = *v35++;
          *v36++ = v38;
          v37 += 8;
        }

        while (v37);
        if (v26 == v28)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v29 = &v27[v28];
    }

LABEL_52:
    v39 = v26 - v28;
    v40 = (v25 + v28);
    do
    {
      v41 = *v29++;
      *v40++ = v41;
      --v39;
    }

    while (v39);
LABEL_54:
    v11 = *(a1 + 88);
    goto LABEL_55;
  }

  __break(1u);
}

uint64_t webrtc::Codec::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v4;
  *(a2 + 39) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {
      if (*(a1 + 79) < 0)
      {
        operator delete(*(a1 + 56));
      }

      v5 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v5;
      *(a2 + 79) = 0;
      *(a2 + 56) = 0;
    }
  }

  else if (*(a1 + 80))
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 80) = 0;
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 80) = 1;
  }

  if (a1 != a2)
  {
    if (*(a1 + 88))
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 88) = *(a2 + 88);
    v7 = *(a2 + 96);
    v8 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v7;
    *(a1 + 112) = v8;
    *(a2 + 88) = 0;
  }

  if (*(a1 + 160) == *(a2 + 160))
  {
    if (*(a1 + 160))
    {
      if (*(a1 + 159) < 0)
      {
        operator delete(*(a1 + 136));
      }

      v9 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v9;
      *(a2 + 159) = 0;
      *(a2 + 136) = 0;
    }
  }

  else if (*(a1 + 160))
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    *(a1 + 160) = 0;
  }

  else
  {
    v10 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v10;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    *(a1 + 160) = 1;
  }

  v11 = a1 + 176;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 168, *(a1 + 176));
  v12 = (a2 + 176);
  v13 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v13;
  v14 = *(a2 + 184);
  *(a1 + 184) = v14;
  if (!v14)
  {
    *(a1 + 168) = v11;
    if (a1 == a2)
    {
      return a1;
    }

    goto LABEL_29;
  }

  *(v13 + 16) = v11;
  *(a2 + 168) = v12;
  *v12 = 0;
  *(a2 + 184) = 0;
  if (a1 != a2)
  {
LABEL_29:
    std::vector<webrtc::FeedbackParam>::__assign_with_size[abi:sn200100]<webrtc::FeedbackParam*,webrtc::FeedbackParam*>((a1 + 192), *(a2 + 192), *(a2 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 4));
  }

  return a1;
}

uint64_t webrtc::Codec::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a1 + 39);
  if (v2 >= 0)
  {
    v3 = *(a1 + 39);
  }

  else
  {
    v3 = *(a1 + 24);
  }

  v4 = *(a2 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 16);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  if (memcmp(v7, v9, v3))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  result = std::operator==[abi:sn200100]<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string const,std::string>>>((a1 + 168), (a2 + 168));
  if (!result)
  {
    return result;
  }

  result = webrtc::FeedbackParams::operator==((a1 + 192), (a2 + 192));
  if (!result)
  {
    return result;
  }

  if (!*(a1 + 8))
  {
    if (*(a1 + 44) == *(a2 + 44))
    {
      return *(a1 + 48) == *(a2 + 48);
    }

    return 0;
  }

  return std::operator==[abi:sn200100]<std::string,std::string>((a1 + 56), (a2 + 56));
}

uint64_t std::operator==[abi:sn200100]<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string const,std::string>>>(void *a1, void *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 == a1 + 1)
  {
    return 1;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 55);
    if (v5 >= 0)
    {
      v6 = *(v3 + 55);
    }

    else
    {
      v6 = v3[5];
    }

    v7 = *(v4 + 55);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v4[5];
    }

    if (v6 != v7)
    {
      break;
    }

    v9 = v5 >= 0 ? v3 + 4 : v3[4];
    v10 = v8 >= 0 ? v4 + 4 : v4[4];
    if (memcmp(v9, v10, v6))
    {
      break;
    }

    v11 = *(v3 + 79);
    if (v11 >= 0)
    {
      v12 = *(v3 + 79);
    }

    else
    {
      v12 = v3[8];
    }

    v13 = *(v4 + 79);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = v4[8];
    }

    if (v12 != v13)
    {
      break;
    }

    v15 = v11 >= 0 ? v3 + 7 : v3[7];
    v16 = v14 >= 0 ? v4 + 7 : v4[7];
    if (memcmp(v15, v16, v12))
    {
      break;
    }

    v17 = v3[1];
    v18 = v3;
    if (v17)
    {
      do
      {
        v3 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v3 = v18[2];
        v19 = *v3 == v18;
        v18 = v3;
      }

      while (!v19);
    }

    v20 = v4[1];
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
        v21 = v4[2];
        v19 = *v21 == v4;
        v4 = v21;
      }

      while (!v19);
    }

    v4 = v21;
    if (v3 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t webrtc::Codec::MatchesRtpCodec(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 16))(&v18);
  v3 = v21;
  v4 = v20;
  if ((v21 & 0x80u) == 0)
  {
    v5 = v21;
  }

  else
  {
    v5 = v20;
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 != v6)
  {
    goto LABEL_23;
  }

  v8 = v19;
  v9 = (v21 & 0x80u) == 0 ? &v19 : v19;
  v10 = v7 >= 0 ? (a2 + 8) : *(a2 + 8);
  if (memcmp(v9, v10, v5) || v22 != *(a2 + 32))
  {
    goto LABEL_23;
  }

  v11 = v26;
  v12 = *(a2 + 48);
  if (v26 == 1 && *(a2 + 48))
  {
    v11 = v25;
    v12 = *(a2 + 44);
  }

  if (v11 != v12)
  {
    goto LABEL_23;
  }

  v13 = v24;
  v14 = *(a2 + 40);
  if (v24 == 1 && *(a2 + 40))
  {
    v13 = v23;
    v14 = *(a2 + 36);
  }

  if (v13 != v14)
  {
LABEL_23:
    v15 = 0;
    goto LABEL_24;
  }

  if (v3 < 0)
  {
    if (v4 != 3)
    {
LABEL_37:
      v15 = std::operator==[abi:sn200100]<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string const,std::string>>>(v29, (a2 + 80));
      goto LABEL_24;
    }
  }

  else
  {
    v8 = &v19;
    if (v3 != 3)
    {
      goto LABEL_37;
    }
  }

  if (*v8 != *"rtx" || *(v8 + 2) != webrtc::kRtxCodecName[2])
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_24:
  v18 = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v29, v29[1]);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v15;
}

BOOL webrtc::Codec::GetParam(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, a2);
  v6 = (a1 + 176);
  v7 = (v5 + 7);
  if (v6 == v5 || v7 == a3)
  {
    return v6 != v5;
  }

  v10 = *(v5 + 79);
  if (*(a3 + 23) < 0)
  {
    if (v10 >= 0)
    {
      v12 = (v5 + 7);
    }

    else
    {
      v12 = v5[7];
    }

    if (v10 >= 0)
    {
      v13 = *(v5 + 79);
    }

    else
    {
      v13 = v5[8];
    }

    v14 = v5;
    std::string::__assign_no_alias<false>(a3, v12, v13);
  }

  else
  {
    if ((*(v5 + 79) & 0x80) == 0)
    {
      v11 = *v7;
      *(a3 + 16) = v5[9];
      *a3 = v11;
      return v6 != v5;
    }

    v14 = v5;
    std::string::__assign_no_alias<true>(a3, v5[7], v5[8]);
  }

  return v6 != v14;
}

BOOL webrtc::Codec::HasFeedbackParam(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  v4 = v2;
  if (v3 != v2)
  {
    v5 = a2[23];
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = a2[23];
    }

    else
    {
      v7 = *(a2 + 1);
    }

    v8 = a2[47];
    if (v8 >= 0)
    {
      v9 = a2 + 24;
    }

    else
    {
      v9 = *(a2 + 3);
    }

    if (v8 >= 0)
    {
      v10 = a2[47];
    }

    else
    {
      v10 = *(a2 + 4);
    }

    if (v7)
    {
      if (!v10)
      {
        while (1)
        {
          v27 = v3[23];
          v28 = v3;
          if (v27 < 0)
          {
            v28 = *v3;
            if (v7 == *(v3 + 1))
            {
LABEL_51:
              v29 = v6;
              v30 = v7;
              while (1)
              {
                v32 = *v29++;
                v31 = v32;
                v34 = *v28++;
                v33 = v34;
                if (v31 != v34)
                {
                  if ((v31 - 65) < 0x1A)
                  {
                    LOBYTE(v31) = v31 + 32;
                  }

                  if ((v33 - 65) < 0x1A)
                  {
                    LOBYTE(v33) = v33 + 32;
                  }

                  if (v31 != v33)
                  {
                    break;
                  }
                }

                if (!--v30)
                {
                  if ((v3[47] & 0x8000000000000000) == 0)
                  {
                    if (!v3[47])
                    {
                      goto LABEL_61;
                    }

                    break;
                  }

                  if (*(v3 + 4))
                  {
                    break;
                  }

                  goto LABEL_61;
                }
              }
            }
          }

          else if (v7 == v27)
          {
            goto LABEL_51;
          }

          v3 += 48;
          if (v3 == v2)
          {
            return v4 != v2;
          }
        }
      }

      while (1)
      {
        v11 = v3[23];
        if (v11 < 0)
        {
          v12 = *v3;
          if (v7 == *(v3 + 1))
          {
LABEL_22:
            v13 = v6;
            v14 = v7;
            while (1)
            {
              v16 = *v13++;
              v15 = v16;
              v18 = *v12++;
              v17 = v18;
              if (v15 != v18)
              {
                if ((v15 - 65) < 0x1A)
                {
                  LOBYTE(v15) = v15 + 32;
                }

                if ((v17 - 65) < 0x1A)
                {
                  LOBYTE(v17) = v17 + 32;
                }

                if (v15 != v17)
                {
                  break;
                }
              }

              if (!--v14)
              {
                v19 = v3[47];
                if (v19 < 0)
                {
                  v20 = *(v3 + 3);
                  if (v10 != *(v3 + 4))
                  {
                    break;
                  }
                }

                else
                {
                  v20 = v3 + 24;
                  if (v10 != v19)
                  {
                    break;
                  }
                }

                v21 = v9;
                v22 = v10;
                while (1)
                {
                  v24 = *v21++;
                  v23 = v24;
                  v26 = *v20++;
                  v25 = v26;
                  if (v23 != v26)
                  {
                    if ((v23 - 65) < 0x1A)
                    {
                      LOBYTE(v23) = v23 + 32;
                    }

                    if ((v25 - 65) < 0x1A)
                    {
                      LOBYTE(v25) = v25 + 32;
                    }

                    if (v23 != v25)
                    {
                      goto LABEL_17;
                    }
                  }

                  if (!--v22)
                  {
                    goto LABEL_61;
                  }
                }
              }
            }
          }
        }

        else
        {
          v12 = v3;
          if (v7 == v11)
          {
            goto LABEL_22;
          }
        }

LABEL_17:
        v3 += 48;
        if (v3 == v2)
        {
          return v4 != v2;
        }
      }
    }

    if (!v10)
    {
      while (1)
      {
        if ((v3[23] & 0x8000000000000000) != 0)
        {
          if (*(v3 + 1))
          {
            goto LABEL_84;
          }
        }

        else if (v3[23])
        {
          goto LABEL_84;
        }

        v44 = v3[47];
        if (v44 < 0)
        {
          v44 = *(v3 + 4);
        }

        if (!v44)
        {
          goto LABEL_61;
        }

LABEL_84:
        v3 += 48;
        if (v3 == v2)
        {
          return v4 != v2;
        }
      }
    }

    do
    {
      if ((v3[23] & 0x8000000000000000) != 0)
      {
        if (*(v3 + 1))
        {
          goto LABEL_65;
        }
      }

      else if (v3[23])
      {
        goto LABEL_65;
      }

      v36 = v3[47];
      if (v36 < 0)
      {
        v37 = *(v3 + 3);
        if (v10 == *(v3 + 4))
        {
LABEL_74:
          v38 = v9;
          v39 = v10;
          while (1)
          {
            v41 = *v38++;
            v40 = v41;
            v43 = *v37++;
            v42 = v43;
            if (v40 != v43)
            {
              if ((v40 - 65) < 0x1A)
              {
                LOBYTE(v40) = v40 + 32;
              }

              if ((v42 - 65) < 0x1A)
              {
                LOBYTE(v42) = v42 + 32;
              }

              if (v40 != v42)
              {
                break;
              }
            }

            if (!--v39)
            {
LABEL_61:
              v4 = v3;
              return v4 != v2;
            }
          }
        }
      }

      else
      {
        v37 = v3 + 24;
        if (v10 == v36)
        {
          goto LABEL_74;
        }
      }

LABEL_65:
      v3 += 48;
    }

    while (v3 != v2);
  }

  return v4 != v2;
}

_BYTE *webrtc::Codec::ToCodecParameters@<X0>(webrtc::Codec *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  result = (a2 + 8);
  *(a2 + 40) = 0;
  *(a2 + 44) = 0;
  *(a2 + 48) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 88) = 0;
  v5 = (a2 + 88);
  *(a2 + 80) = a2 + 88;
  v6 = (a2 + 80);
  *(a2 + 56) = 0;
  *(a2 + 96) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 29) = 0;
  *a2 = &unk_28829C0B8;
  *(a2 + 104) = *(this + 3);
  if ((a2 + 8) != (this + 16))
  {
    if (*(this + 39) < 0)
    {
      result = std::string::__assign_no_alias<true>(result, *(this + 2), *(this + 3));
    }

    else
    {
      *result = *(this + 1);
      *(a2 + 24) = *(this + 4);
    }
  }

  *(a2 + 36) = *(this + 10);
  *(a2 + 40) = 1;
  v7 = *(this + 21);
  if (v7 != (this + 176))
  {
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v6, v5, v7 + 4);
      v9 = *(v7 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != (this + 176));
  }

  v8 = *(this + 2);
  if (v8 != 1)
  {
    if (v8)
    {
      return result;
    }

    *(a2 + 44) = *(this + 6);
    *(a2 + 48) = 1;
  }

  *(a2 + 32) = v8;
  return result;
}

uint64_t webrtc::Codec::GetResiliencyType(webrtc::Codec *this)
{
  v1 = this + 16;
  v2 = *(this + 39);
  if (v2 < 0)
  {
    v3 = *(this + 2);
    if (*(this + 3) != 3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = this + 16;
    if (v2 != 3)
    {
      goto LABEL_23;
    }
  }

  v4 = *v3;
  v5 = webrtc::kRedCodecName;
  if (v4 == webrtc::kRedCodecName)
  {
    goto LABEL_21;
  }

  if ((v4 - 65) < 0x1A)
  {
    LOBYTE(v4) = v4 + 32;
  }

  if (webrtc::kRedCodecName - 65 < 0x1A)
  {
    v5 = webrtc::kRedCodecName + 32;
  }

  if (v4 == v5)
  {
LABEL_21:
    v6 = v3[1];
    v7 = HIBYTE(webrtc::kRedCodecName);
    if (v6 == HIBYTE(webrtc::kRedCodecName))
    {
      goto LABEL_158;
    }

    if ((v6 - 65) < 0x1A)
    {
      LOBYTE(v6) = v6 + 32;
    }

    if (HIBYTE(webrtc::kRedCodecName) - 65 < 0x1A)
    {
      v7 = HIBYTE(webrtc::kRedCodecName) + 32;
    }

    if (v6 == v7)
    {
LABEL_158:
      v8 = v3[2];
      if (v8 == 100)
      {
        return 1;
      }

      v9 = (v8 - 65) >= 0x1A ? v3[2] : v8 + 32;
      if (v9 == 100)
      {
        return 1;
      }
    }
  }

LABEL_23:
  if ((v2 & 0x80000000) != 0)
  {
    v11 = *(this + 2);
    if (*(this + 3) != 6)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v11 = this + 16;
    if (v2 != 6)
    {
      goto LABEL_65;
    }
  }

  v12 = *v11;
  v13 = webrtc::kUlpfecCodecName[0];
  if (v12 == webrtc::kUlpfecCodecName[0])
  {
    goto LABEL_63;
  }

  if ((v12 - 65) < 0x1A)
  {
    LOBYTE(v12) = v12 + 32;
  }

  if (webrtc::kUlpfecCodecName[0] - 65 < 0x1A)
  {
    v13 = webrtc::kUlpfecCodecName[0] + 32;
  }

  if (v12 == v13)
  {
LABEL_63:
    v14 = v11[1];
    v15 = webrtc::kUlpfecCodecName[1];
    if (v14 == webrtc::kUlpfecCodecName[1])
    {
      goto LABEL_159;
    }

    if ((v14 - 65) < 0x1A)
    {
      LOBYTE(v14) = v14 + 32;
    }

    if (webrtc::kUlpfecCodecName[1] - 65 < 0x1A)
    {
      v15 = webrtc::kUlpfecCodecName[1] + 32;
    }

    if (v14 == v15)
    {
LABEL_159:
      v16 = v11[2];
      v17 = webrtc::kUlpfecCodecName[2];
      if (v16 == webrtc::kUlpfecCodecName[2])
      {
        goto LABEL_160;
      }

      if ((v16 - 65) < 0x1A)
      {
        LOBYTE(v16) = v16 + 32;
      }

      if (webrtc::kUlpfecCodecName[2] - 65 < 0x1A)
      {
        v17 = webrtc::kUlpfecCodecName[2] + 32;
      }

      if (v16 == v17)
      {
LABEL_160:
        v18 = v11[3];
        v19 = webrtc::kUlpfecCodecName[3];
        if (v18 == webrtc::kUlpfecCodecName[3])
        {
          goto LABEL_161;
        }

        if ((v18 - 65) < 0x1A)
        {
          LOBYTE(v18) = v18 + 32;
        }

        if (webrtc::kUlpfecCodecName[3] - 65 < 0x1A)
        {
          v19 = webrtc::kUlpfecCodecName[3] + 32;
        }

        if (v18 == v19)
        {
LABEL_161:
          v20 = v11[4];
          v21 = webrtc::kUlpfecCodecName[4];
          if (v20 == webrtc::kUlpfecCodecName[4])
          {
            goto LABEL_162;
          }

          if ((v20 - 65) < 0x1A)
          {
            LOBYTE(v20) = v20 + 32;
          }

          if (webrtc::kUlpfecCodecName[4] - 65 < 0x1A)
          {
            v21 = webrtc::kUlpfecCodecName[4] + 32;
          }

          if (v20 == v21)
          {
LABEL_162:
            v22 = v11[5];
            v23 = webrtc::kUlpfecCodecName[5];
            if (v22 == webrtc::kUlpfecCodecName[5])
            {
              return 2;
            }

            if ((v22 - 65) >= 0x1A)
            {
              v24 = v22;
            }

            else
            {
              v24 = v22 + 32;
            }

            if (webrtc::kUlpfecCodecName[5] - 65 < 0x1A)
            {
              v23 = webrtc::kUlpfecCodecName[5] + 32;
            }

            if (v24 == v23)
            {
              return 2;
            }
          }
        }
      }
    }
  }

LABEL_65:
  if ((v2 & 0x80000000) != 0)
  {
    v25 = *(this + 2);
    if (*(this + 3) != 10)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v25 = this + 16;
    if (v2 != 10)
    {
      goto LABEL_131;
    }
  }

  v26 = *v25;
  v27 = webrtc::kFlexfecCodecName[0];
  if (v26 == webrtc::kFlexfecCodecName[0])
  {
    goto LABEL_129;
  }

  if ((v26 - 65) < 0x1A)
  {
    LOBYTE(v26) = v26 + 32;
  }

  if (webrtc::kFlexfecCodecName[0] - 65 < 0x1A)
  {
    v27 = webrtc::kFlexfecCodecName[0] + 32;
  }

  if (v26 == v27)
  {
LABEL_129:
    v28 = v25[1];
    v29 = webrtc::kFlexfecCodecName[1];
    if (v28 == webrtc::kFlexfecCodecName[1])
    {
      goto LABEL_163;
    }

    if ((v28 - 65) < 0x1A)
    {
      LOBYTE(v28) = v28 + 32;
    }

    if (webrtc::kFlexfecCodecName[1] - 65 < 0x1A)
    {
      v29 = webrtc::kFlexfecCodecName[1] + 32;
    }

    if (v28 == v29)
    {
LABEL_163:
      v30 = v25[2];
      v31 = webrtc::kFlexfecCodecName[2];
      if (v30 == webrtc::kFlexfecCodecName[2])
      {
        goto LABEL_164;
      }

      if ((v30 - 65) < 0x1A)
      {
        LOBYTE(v30) = v30 + 32;
      }

      if (webrtc::kFlexfecCodecName[2] - 65 < 0x1A)
      {
        v31 = webrtc::kFlexfecCodecName[2] + 32;
      }

      if (v30 == v31)
      {
LABEL_164:
        v32 = v25[3];
        v33 = webrtc::kFlexfecCodecName[3];
        if (v32 == webrtc::kFlexfecCodecName[3])
        {
          goto LABEL_165;
        }

        if ((v32 - 65) < 0x1A)
        {
          LOBYTE(v32) = v32 + 32;
        }

        if (webrtc::kFlexfecCodecName[3] - 65 < 0x1A)
        {
          v33 = webrtc::kFlexfecCodecName[3] + 32;
        }

        if (v32 == v33)
        {
LABEL_165:
          v34 = v25[4];
          v35 = webrtc::kFlexfecCodecName[4];
          if (v34 == webrtc::kFlexfecCodecName[4])
          {
            goto LABEL_166;
          }

          if ((v34 - 65) < 0x1A)
          {
            LOBYTE(v34) = v34 + 32;
          }

          if (webrtc::kFlexfecCodecName[4] - 65 < 0x1A)
          {
            v35 = webrtc::kFlexfecCodecName[4] + 32;
          }

          if (v34 == v35)
          {
LABEL_166:
            v36 = v25[5];
            v37 = webrtc::kFlexfecCodecName[5];
            if (v36 == webrtc::kFlexfecCodecName[5])
            {
              goto LABEL_167;
            }

            if ((v36 - 65) < 0x1A)
            {
              LOBYTE(v36) = v36 + 32;
            }

            if (webrtc::kFlexfecCodecName[5] - 65 < 0x1A)
            {
              v37 = webrtc::kFlexfecCodecName[5] + 32;
            }

            if (v36 == v37)
            {
LABEL_167:
              v38 = v25[6];
              v39 = webrtc::kFlexfecCodecName[6];
              if (v38 == webrtc::kFlexfecCodecName[6])
              {
                goto LABEL_168;
              }

              if ((v38 - 65) < 0x1A)
              {
                LOBYTE(v38) = v38 + 32;
              }

              if (webrtc::kFlexfecCodecName[6] - 65 < 0x1A)
              {
                v39 = webrtc::kFlexfecCodecName[6] + 32;
              }

              if (v38 == v39)
              {
LABEL_168:
                v40 = v25[7];
                v41 = webrtc::kFlexfecCodecName[7];
                if (v40 == webrtc::kFlexfecCodecName[7])
                {
                  goto LABEL_169;
                }

                if ((v40 - 65) < 0x1A)
                {
                  LOBYTE(v40) = v40 + 32;
                }

                if (webrtc::kFlexfecCodecName[7] - 65 < 0x1A)
                {
                  v41 = webrtc::kFlexfecCodecName[7] + 32;
                }

                if (v40 == v41)
                {
LABEL_169:
                  v42 = v25[8];
                  v43 = webrtc::kFlexfecCodecName[8];
                  if (v42 == webrtc::kFlexfecCodecName[8])
                  {
                    goto LABEL_170;
                  }

                  if ((v42 - 65) < 0x1A)
                  {
                    LOBYTE(v42) = v42 + 32;
                  }

                  if (webrtc::kFlexfecCodecName[8] - 65 < 0x1A)
                  {
                    v43 = webrtc::kFlexfecCodecName[8] + 32;
                  }

                  if (v42 == v43)
                  {
LABEL_170:
                    v44 = v25[9];
                    v45 = webrtc::kFlexfecCodecName[9];
                    if (v44 == webrtc::kFlexfecCodecName[9])
                    {
                      return 3;
                    }

                    if ((v44 - 65) >= 0x1A)
                    {
                      v46 = v44;
                    }

                    else
                    {
                      v46 = v44 + 32;
                    }

                    if (webrtc::kFlexfecCodecName[9] - 65 < 0x1A)
                    {
                      v45 = webrtc::kFlexfecCodecName[9] + 32;
                    }

                    if (v46 == v45)
                    {
                      return 3;
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

LABEL_131:
  if ((v2 & 0x80000000) != 0)
  {
    v1 = *(this + 2);
    if (*(this + 3) != 3)
    {
      return 0;
    }
  }

  else if (v2 != 3)
  {
    return 0;
  }

  v47 = *v1;
  v48 = webrtc::kRtxCodecName[0];
  if (v47 == webrtc::kRtxCodecName[0])
  {
    goto LABEL_153;
  }

  if ((v47 - 65) < 0x1A)
  {
    LOBYTE(v47) = v47 + 32;
  }

  if (webrtc::kRtxCodecName[0] - 65 < 0x1A)
  {
    v48 = webrtc::kRtxCodecName[0] + 32;
  }

  if (v47 == v48)
  {
LABEL_153:
    v49 = v1[1];
    v50 = webrtc::kRtxCodecName[1];
    if (v49 == webrtc::kRtxCodecName[1])
    {
      goto LABEL_171;
    }

    if ((v49 - 65) < 0x1A)
    {
      LOBYTE(v49) = v49 + 32;
    }

    if (webrtc::kRtxCodecName[1] - 65 < 0x1A)
    {
      v50 = webrtc::kRtxCodecName[1] + 32;
    }

    if (v49 == v50)
    {
LABEL_171:
      v51 = v1[2];
      v52 = webrtc::kRtxCodecName[2];
      if (v51 == webrtc::kRtxCodecName[2])
      {
        return 4;
      }

      v53 = (v51 - 65) >= 0x1A ? v51 : v51 + 32;
      if (webrtc::kRtxCodecName[2] - 65 < 0x1A)
      {
        v52 = webrtc::kRtxCodecName[2] + 32;
      }

      if (v53 == v52)
      {
        return 4;
      }
    }
  }

  return 0;
}

unint64_t webrtc::Codec::ValidateCodecFormat(webrtc::Codec *this)
{
  if (*(this + 3) >= 0x80u)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::Codec::ToString(this, __p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec.cc");
      if (v37 < 0)
      {
LABEL_4:
        operator delete(*__p);
        return 0;
      }
    }

    return 0;
  }

  result = webrtc::Codec::GetResiliencyType(this);
  if (result)
  {
    return 1;
  }

  v37 = 20;
  if (__p > "x-google-min-bitrate" || &__p[20] <= "x-google-min-bitrate")
  {
    strcpy(__p, "x-google-min-bitrate");
    v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 168, __p);
    if ((this + 176) == v11 || ((v12 = *(v11 + 79), (v12 & 0x8000000000000000) != 0) ? (v14 = v11, v13 = v11[7], v12 = v14[8]) : (v13 = (v11 + 7)), (result = webrtc::string_to_number_internal::ParseSigned(v13, v12, 0xAuLL), (v15 & ((result + 0x80000000) >> 32 == 0)) == 0) ? (v16 = 0) : (v16 = result | 0x100000000), !HIDWORD(v16)))
    {
      LOBYTE(v20) = 0;
      v21 = -1;
      LODWORD(v16) = -1;
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    }

    HIBYTE(v35[2]) = 20;
    if (v35 > "x-google-max-bitrate" || &v35[2] + 4 <= "x-google-max-bitrate")
    {
      strcpy(v35, "x-google-max-bitrate");
      v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 168, v35);
      if ((this + 176) == v17)
      {
        LOBYTE(v20) = 0;
        v21 = -1;
      }

      else
      {
        v18 = *(v17 + 79);
        if ((v18 & 0x8000000000000000) != 0)
        {
          v22 = v17;
          v19 = v17[7];
          v18 = v22[8];
        }

        else
        {
          v19 = (v17 + 7);
        }

        v23 = webrtc::string_to_number_internal::ParseSigned(v19, v18, 0xAuLL);
        if ((v24 & ((v23 + 0x80000000) >> 32 == 0)) != 0)
        {
          v25 = v23 | 0x100000000;
        }

        else
        {
          v25 = 0;
        }

        v20 = HIDWORD(v25);
        if (v25 <= 0xFFFFFFFF)
        {
          v21 = -1;
        }

        else
        {
          v21 = v25;
        }
      }

      if (SHIBYTE(v35[2]) < 0)
      {
        operator delete(v35[0]);
        if ((v37 & 0x80000000) == 0)
        {
LABEL_36:
          v26 = v20 ^ 1;
          if (v21 >= v16)
          {
            v26 = 1;
          }

          if ((v26 & 1) == 0)
          {
            goto LABEL_39;
          }

          return 1;
        }
      }

      else if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_43:
      operator delete(*__p);
      v34 = v20 ^ 1;
      if (v21 >= v16)
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
LABEL_39:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::Codec::ToString(this, __p);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec.cc");
          if (v37 < 0)
          {
            goto LABEL_4;
          }
        }

        return 0;
      }

      return 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t webrtc::Codec::ToString@<X0>(webrtc::Codec *this@<X0>, char *a2@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = __s;
  v38 = __s;
  v39 = xmmword_273B8FB20;
  __s[0] = 0;
  v5 = *(this + 2);
  if (v5 == 1)
  {
    *(&v39 + 1) = 11;
    strcpy(__s, "VideoCodec[");
    webrtc::SimpleStringBuilder::AppendFormat(&v38, "%d", *(this + 3));
    v11 = v39;
    v12 = *(&v39 + 1) + 1;
    memcpy(&v38[*(&v39 + 1)], ":", v39 != *(&v39 + 1) + 1);
    v13 = *(&v39 + 1);
    if (v11 != v12)
    {
      v13 = *(&v39 + 1) + 1;
    }

    *(&v39 + 1) = v13;
    v38[v13] = 0;
    v14 = *(this + 39);
    if ((v14 & 0x8000000000000000) != 0)
    {
      v15 = *(this + 2);
      v14 = *(this + 3);
    }

    else
    {
      v15 = this + 16;
    }

    if (v14 >= v39 + ~*(&v39 + 1))
    {
      v26 = v39 + ~*(&v39 + 1);
    }

    else
    {
      v26 = v14;
    }

    memcpy(&v38[*(&v39 + 1)], v15, v26);
    *(&v39 + 1) += v26;
    v38[*(&v39 + 1)] = 0;
    if (*(this + 80) == 1)
    {
      v27 = v39;
      v28 = *(&v39 + 1) + 1;
      memcpy(&v38[*(&v39 + 1)], ":", v39 != *(&v39 + 1) + 1);
      v29 = *(&v39 + 1);
      if (v27 != v28)
      {
        v29 = *(&v39 + 1) + 1;
      }

      *(&v39 + 1) = v29;
      v38[v29] = 0;
      if ((*(this + 80) & 1) == 0)
      {
        goto LABEL_49;
      }

      v30 = *(this + 79);
      if ((v30 & 0x8000000000000000) != 0)
      {
        v31 = *(this + 7);
        v30 = *(this + 8);
      }

      else
      {
        v31 = this + 56;
      }

      if (v30 >= v39 + ~*(&v39 + 1))
      {
        v32 = v39 + ~*(&v39 + 1);
      }

      else
      {
        v32 = v30;
      }

      memcpy(&v38[*(&v39 + 1)], v31, v32);
      *(&v39 + 1) += v32;
      v38[*(&v39 + 1)] = 0;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_40;
    }

    *(&v39 + 1) = 11;
    strcpy(__s, "AudioCodec[");
    webrtc::SimpleStringBuilder::AppendFormat(&v38, "%d", *(this + 3));
    v6 = v39;
    v7 = *(&v39 + 1) + 1;
    memcpy(&v38[*(&v39 + 1)], ":", v39 != *(&v39 + 1) + 1);
    v8 = *(&v39 + 1);
    if (v6 != v7)
    {
      v8 = *(&v39 + 1) + 1;
    }

    *(&v39 + 1) = v8;
    v38[v8] = 0;
    v9 = *(this + 39);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = *(this + 2);
      v9 = *(this + 3);
    }

    else
    {
      v10 = this + 16;
    }

    if (v9 >= v39 + ~*(&v39 + 1))
    {
      v16 = v39 + ~*(&v39 + 1);
    }

    else
    {
      v16 = v9;
    }

    memcpy(&v38[*(&v39 + 1)], v10, v16);
    *(&v39 + 1) += v16;
    v38[*(&v39 + 1)] = 0;
    v17 = v39;
    v18 = *(&v39 + 1) + 1;
    memcpy(&v38[*(&v39 + 1)], ":", v39 != *(&v39 + 1) + 1);
    v19 = *(&v39 + 1);
    if (v17 != v18)
    {
      v19 = *(&v39 + 1) + 1;
    }

    *(&v39 + 1) = v19;
    v38[v19] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v38, "%d", *(this + 10));
    v20 = v39;
    v21 = *(&v39 + 1) + 1;
    memcpy(&v38[*(&v39 + 1)], ":", v39 != *(&v39 + 1) + 1);
    v22 = *(&v39 + 1);
    if (v20 != v21)
    {
      v22 = *(&v39 + 1) + 1;
    }

    *(&v39 + 1) = v22;
    v38[v22] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v38, "%d", *(this + 11));
    v23 = v39;
    v24 = *(&v39 + 1) + 1;
    memcpy(&v38[*(&v39 + 1)], ":", v39 != *(&v39 + 1) + 1);
    v25 = *(&v39 + 1);
    if (v23 != v24)
    {
      v25 = *(&v39 + 1) + 1;
    }

    *(&v39 + 1) = v25;
    v38[v25] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v38, "%lu", *(this + 6));
  }

  v33 = v39;
  v34 = *(&v39 + 1) + 1;
  memcpy(&v38[*(&v39 + 1)], "]", v39 != *(&v39 + 1) + 1);
  v35 = *(&v39 + 1);
  if (v33 != v34)
  {
    v35 = *(&v39 + 1) + 1;
  }

  *(&v39 + 1) = v35;
  v38[v35] = 0;
  v4 = v38;
  if (!v38)
  {
    goto LABEL_49;
  }

LABEL_40:
  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_50;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v37 = &a2[result];
  if (a2 <= v4 && v37 > v4)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v4, result);
  }

  *v37 = 0;
  return result;
}

void webrtc::CreateVideoRtxCodec(webrtc *this@<X0>, absl::numbers_internal *a2@<X1>, uint64_t a3@<X8>)
{
  HIBYTE(v15) = 3;
  if (__p <= "rtx" && __p + 3 > "rtx")
  {
    goto LABEL_19;
  }

  LOWORD(__p[0]) = *"rtx";
  WORD1(__p[0]) = webrtc::kRtxCodecName[2];
  webrtc::CreateVideoCodec(this, __p, a3);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 3;
  if (v12 <= "apt" && v12 + 3 > "apt")
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  LOWORD(v12[0]) = *"apt";
  WORD1(v12[0]) = webrtc::kCodecParamAssociatedPayloadType[2];
  __p[1] = 0;
  v15 = 0x1600000000000000;
  __p[0] = 0;
  v7 = absl::numbers_internal::FastIntToBuffer(a2, __p, v6);
  v8 = (v7 - __p);
  if ((SHIBYTE(v15) & 0x8000000000000000) == 0)
  {
    if (v8 <= SHIBYTE(v15))
    {
      HIBYTE(v15) = v7 - __p;
      v9 = __p;
      goto LABEL_14;
    }

LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__p[1] < v8)
  {
    goto LABEL_20;
  }

  v9 = __p[0];
  __p[1] = (v7 - __p);
LABEL_14:
  v8[v9] = 0;
  v16 = v12;
  v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3 + 168, v12);
  v11 = v10;
  if ((*(v10 + 79) & 0x80000000) == 0)
  {
    *(v10 + 7) = *__p;
    v10[9] = v15;
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v12[0]);
    return;
  }

  operator delete(v10[7]);
  *(v11 + 7) = *__p;
  v11[9] = v15;
  if (v13 < 0)
  {
    goto LABEL_18;
  }
}

void webrtc::CreateVideoCodec(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_288291428;
  *(a3 + 8) = 1;
  *(a3 + 12) = a1;
  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), *a2, *(a2 + 8));
    LOBYTE(v5) = *(a2 + 23);
  }

  else
  {
    *(a3 + 16) = *a2;
    *(a3 + 32) = *(a2 + 16);
  }

  *(a3 + 176) = 0;
  *(a3 + 168) = a3 + 176;
  v6 = (a3 + 168);
  *(v6 - 16) = 90000;
  *(v6 - 15) = 0;
  *(v6 - 112) = 0;
  *(v6 - 88) = 0;
  *(v6 - 10) = 0;
  *(v6 - 32) = 0;
  *(v6 - 8) = 0;
  v6[2] = 0;
  v6[3] = 0;
  v7 = v5;
  v8 = v5;
  if ((v5 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v7 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v6[4] = 0;
  v6[5] = 0;
  if (v10 == 4)
  {
    v11 = *v9;
    if (v11 == 72)
    {
      goto LABEL_15;
    }

    if ((v11 - 65) < 0x1A)
    {
      LOBYTE(v11) = v11 + 32;
    }

    if (v11 == 104)
    {
LABEL_15:
      v12 = v9[1];
      if (v12 == 50)
      {
        goto LABEL_26;
      }

      if ((v12 - 65) < 0x1A)
      {
        LOBYTE(v12) = v12 + 32;
      }

      if (v12 == 50)
      {
LABEL_26:
        v13 = v9[2];
        if (v13 == 54)
        {
          goto LABEL_52;
        }

        if ((v13 - 65) < 0x1A)
        {
          LOBYTE(v13) = v13 + 32;
        }

        if (v13 == 54)
        {
LABEL_52:
          v14 = v9[3];
          if (v14 == 52)
          {
            goto LABEL_27;
          }

          if ((v14 - 65) < 0x1A)
          {
            LOBYTE(v14) = v14 + 32;
          }

          if (v14 == 52)
          {
LABEL_27:
            HIBYTE(v21[2]) = 18;
            if (v21 <= "packetization-mode" && &v21[2] + 2 > "packetization-mode" || (strcpy(v21, "packetization-mode"), HIBYTE(v20) = 1, __p <= "1") && __p + 1 > "1")
            {
              __break(1u);
              return;
            }

            LOWORD(__p[0]) = 49;
            v21[5] = v21;
            v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6, v21);
            v16 = (v15 + 7);
            if (v15 + 7 != __p)
            {
              if ((*(v15 + 79) & 0x80000000) == 0)
              {
                if ((v20 & 0x8000000000000000) == 0)
                {
                  *&v16->__r_.__value_.__l.__data_ = *__p;
                  v15[9] = v20;
                  goto LABEL_44;
                }

                std::string::__assign_no_alias<true>(v16, __p[0], __p[1]);
                if ((SHIBYTE(v20) & 0x80000000) == 0)
                {
LABEL_44:
                  if (SHIBYTE(v21[2]) < 0)
                  {
                    operator delete(v21[0]);
                  }

                  return;
                }

LABEL_43:
                operator delete(__p[0]);
                goto LABEL_44;
              }

              if (v20 >= 0)
              {
                v17 = __p;
              }

              else
              {
                v17 = __p[0];
              }

              if (v20 >= 0)
              {
                v18 = HIBYTE(v20);
              }

              else
              {
                v18 = __p[1];
              }

              std::string::__assign_no_alias<false>(v16, v17, v18);
            }

            if ((SHIBYTE(v20) & 0x80000000) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }
        }
      }
    }
  }
}

BOOL webrtc::HasLntf(_BOOL8 this, const webrtc::Codec *a2)
{
  v26[23] = 9;
  if (v26 <= "goog-lntf" && &v26[9] > "goog-lntf")
  {
    __break(1u);
  }

  else
  {
    strcpy(v26, "goog-lntf");
    v27 = 0;
    v28 = 0;
    v4 = *(this + 192);
    v3 = *(this + 200);
    if (v4 != v3)
    {
      if (v26[0] - 65 >= 0x1A)
      {
        v5 = v26[0];
      }

      else
      {
        v5 = v26[0] + 32;
      }

      if (v26[1] - 65 >= 0x1A)
      {
        v6 = v26[1];
      }

      else
      {
        v6 = v26[1] + 32;
      }

      if (v26[2] - 65 >= 0x1A)
      {
        v7 = v26[2];
      }

      else
      {
        v7 = v26[2] + 32;
      }

      if (v26[3] - 65 >= 0x1A)
      {
        v8 = v26[3];
      }

      else
      {
        v8 = v26[3] + 32;
      }

      if (v26[4] - 65 >= 0x1A)
      {
        v9 = v26[4];
      }

      else
      {
        v9 = v26[4] + 32;
      }

      if (v26[5] - 65 >= 0x1A)
      {
        v10 = v26[5];
      }

      else
      {
        v10 = v26[5] + 32;
      }

      if (v26[6] - 65 >= 0x1A)
      {
        v11 = v26[6];
      }

      else
      {
        v11 = v26[6] + 32;
      }

      if (v26[7] - 65 >= 0x1A)
      {
        v12 = v26[7];
      }

      else
      {
        v12 = v26[7] + 32;
      }

      if (v26[8] - 65 >= 0x1A)
      {
        v13 = v26[8];
      }

      else
      {
        v13 = v26[8] + 32;
      }

      for (i = *(this + 192); i != v3; i += 48)
      {
        v15 = *(i + 23);
        v16 = i;
        if (v15 < 0)
        {
          v16 = *i;
          if (*(i + 8) != 9)
          {
            goto LABEL_36;
          }
        }

        else if (v15 != 9)
        {
          goto LABEL_36;
        }

        v17 = *v16;
        if (v26[0] == v17)
        {
          goto LABEL_76;
        }

        if ((v17 - 65) < 0x1A)
        {
          LOBYTE(v17) = v17 + 32;
        }

        if (v5 == v17)
        {
LABEL_76:
          v18 = v16[1];
          if (v26[1] == v18)
          {
            goto LABEL_85;
          }

          if ((v18 - 65) < 0x1A)
          {
            LOBYTE(v18) = v18 + 32;
          }

          if (v6 == v18)
          {
LABEL_85:
            v19 = v16[2];
            if (v26[2] == v19)
            {
              goto LABEL_86;
            }

            if ((v19 - 65) < 0x1A)
            {
              LOBYTE(v19) = v19 + 32;
            }

            if (v7 == v19)
            {
LABEL_86:
              v20 = v16[3];
              if (v26[3] == v20)
              {
                goto LABEL_87;
              }

              if ((v20 - 65) < 0x1A)
              {
                LOBYTE(v20) = v20 + 32;
              }

              if (v8 == v20)
              {
LABEL_87:
                v21 = v16[4];
                if (v26[4] == v21)
                {
                  goto LABEL_88;
                }

                if ((v21 - 65) < 0x1A)
                {
                  LOBYTE(v21) = v21 + 32;
                }

                if (v9 == v21)
                {
LABEL_88:
                  v22 = v16[5];
                  if (v26[5] == v22)
                  {
                    goto LABEL_89;
                  }

                  if ((v22 - 65) < 0x1A)
                  {
                    LOBYTE(v22) = v22 + 32;
                  }

                  if (v10 == v22)
                  {
LABEL_89:
                    v23 = v16[6];
                    if (v26[6] == v23)
                    {
                      goto LABEL_90;
                    }

                    if ((v23 - 65) < 0x1A)
                    {
                      LOBYTE(v23) = v23 + 32;
                    }

                    if (v11 == v23)
                    {
LABEL_90:
                      v24 = v16[7];
                      if (v26[7] == v24)
                      {
                        goto LABEL_91;
                      }

                      if ((v24 - 65) < 0x1A)
                      {
                        LOBYTE(v24) = v24 + 32;
                      }

                      if (v12 == v24)
                      {
LABEL_91:
                        v25 = v16[8];
                        if (v26[8] == v25)
                        {
                          goto LABEL_34;
                        }

                        if ((v25 - 65) < 0x1A)
                        {
                          LOBYTE(v25) = v25 + 32;
                        }

                        if (v13 == v25)
                        {
LABEL_34:
                          if ((*(i + 47) & 0x8000000000000000) != 0)
                          {
                            if (!*(i + 32))
                            {
                              return v4 != v3;
                            }
                          }

                          else if (!*(i + 47))
                          {
                            return v4 != v3;
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

LABEL_36:
        v4 += 48;
      }
    }

    v4 = *(this + 200);
    return v4 != v3;
  }

  return this;
}

BOOL webrtc::HasNack(_BOOL8 this, const webrtc::Codec *a2)
{
  v16[23] = 4;
  if (v16 <= "nack" && &v16[4] > "nack")
  {
    __break(1u);
  }

  else
  {
    strcpy(v16, "nack");
    v17 = 0;
    v18 = 0;
    v4 = *(this + 192);
    v3 = *(this + 200);
    if (v4 != v3)
    {
      if (v16[0] - 65 >= 0x1A)
      {
        v5 = v16[0];
      }

      else
      {
        v5 = v16[0] + 32;
      }

      if (v16[1] - 65 >= 0x1A)
      {
        v6 = v16[1];
      }

      else
      {
        v6 = v16[1] + 32;
      }

      if (v16[2] - 65 >= 0x1A)
      {
        v7 = v16[2];
      }

      else
      {
        v7 = v16[2] + 32;
      }

      if (v16[3] - 65 >= 0x1A)
      {
        v8 = v16[3];
      }

      else
      {
        v8 = v16[3] + 32;
      }

      for (i = *(this + 192); i != v3; i += 48)
      {
        v10 = *(i + 23);
        v11 = i;
        if (v10 < 0)
        {
          v11 = *i;
          if (*(i + 8) != 4)
          {
            goto LABEL_21;
          }
        }

        else if (v10 != 4)
        {
          goto LABEL_21;
        }

        v12 = *v11;
        if (v16[0] == v12)
        {
          goto LABEL_41;
        }

        if ((v12 - 65) < 0x1A)
        {
          LOBYTE(v12) = v12 + 32;
        }

        if (v5 == v12)
        {
LABEL_41:
          v13 = v11[1];
          if (v16[1] == v13)
          {
            goto LABEL_49;
          }

          if ((v13 - 65) < 0x1A)
          {
            LOBYTE(v13) = v13 + 32;
          }

          if (v6 == v13)
          {
LABEL_49:
            v14 = v11[2];
            if (v16[2] == v14)
            {
              goto LABEL_50;
            }

            if ((v14 - 65) < 0x1A)
            {
              LOBYTE(v14) = v14 + 32;
            }

            if (v7 == v14)
            {
LABEL_50:
              v15 = v11[3];
              if (v16[3] == v15)
              {
                goto LABEL_19;
              }

              if ((v15 - 65) < 0x1A)
              {
                LOBYTE(v15) = v15 + 32;
              }

              if (v8 == v15)
              {
LABEL_19:
                if ((*(i + 47) & 0x8000000000000000) != 0)
                {
                  if (!*(i + 32))
                  {
                    return v4 != v3;
                  }
                }

                else if (!*(i + 47))
                {
                  return v4 != v3;
                }
              }
            }
          }
        }

LABEL_21:
        v4 += 48;
      }
    }

    return 0;
  }

  return this;
}

BOOL webrtc::HasRrtr(_BOOL8 this, const webrtc::Codec *a2)
{
  v16[23] = 4;
  if (v16 <= "rrtr" && &v16[4] > "rrtr")
  {
    __break(1u);
  }

  else
  {
    strcpy(v16, "rrtr");
    v17 = 0;
    v18 = 0;
    v4 = *(this + 192);
    v3 = *(this + 200);
    if (v4 != v3)
    {
      if (v16[0] - 65 >= 0x1A)
      {
        v5 = v16[0];
      }

      else
      {
        v5 = v16[0] + 32;
      }

      if (v16[1] - 65 >= 0x1A)
      {
        v6 = v16[1];
      }

      else
      {
        v6 = v16[1] + 32;
      }

      if (v16[2] - 65 >= 0x1A)
      {
        v7 = v16[2];
      }

      else
      {
        v7 = v16[2] + 32;
      }

      if (v16[3] - 65 >= 0x1A)
      {
        v8 = v16[3];
      }

      else
      {
        v8 = v16[3] + 32;
      }

      for (i = *(this + 192); i != v3; i += 48)
      {
        v10 = *(i + 23);
        v11 = i;
        if (v10 < 0)
        {
          v11 = *i;
          if (*(i + 8) != 4)
          {
            goto LABEL_21;
          }
        }

        else if (v10 != 4)
        {
          goto LABEL_21;
        }

        v12 = *v11;
        if (v16[0] == v12)
        {
          goto LABEL_41;
        }

        if ((v12 - 65) < 0x1A)
        {
          LOBYTE(v12) = v12 + 32;
        }

        if (v5 == v12)
        {
LABEL_41:
          v13 = v11[1];
          if (v16[1] == v13)
          {
            goto LABEL_49;
          }

          if ((v13 - 65) < 0x1A)
          {
            LOBYTE(v13) = v13 + 32;
          }

          if (v6 == v13)
          {
LABEL_49:
            v14 = v11[2];
            if (v16[2] == v14)
            {
              goto LABEL_50;
            }

            if ((v14 - 65) < 0x1A)
            {
              LOBYTE(v14) = v14 + 32;
            }

            if (v7 == v14)
            {
LABEL_50:
              v15 = v11[3];
              if (v16[3] == v15)
              {
                goto LABEL_19;
              }

              if ((v15 - 65) < 0x1A)
              {
                LOBYTE(v15) = v15 + 32;
              }

              if (v8 == v15)
              {
LABEL_19:
                if ((*(i + 47) & 0x8000000000000000) != 0)
                {
                  if (!*(i + 32))
                  {
                    return v4 != v3;
                  }
                }

                else if (!*(i + 47))
                {
                  return v4 != v3;
                }
              }
            }
          }
        }

LABEL_21:
        v4 += 48;
      }
    }

    return 0;
  }

  return this;
}

uint64_t webrtc::FindMatchingVideoCodec(uint64_t *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v26 = *(a2 + 16);
  }

  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v4 = *(a2 + 168);
  v5 = (a2 + 176);
  if (v4 != v5)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v27, v28, v4 + 4);
      v16 = v4[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v4[2];
          v14 = *v17 == v4;
          v4 = v17;
        }

        while (!v14);
      }

      v4 = v17;
    }

    while (v17 != v5);
  }

  v29 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v27, v28[0]);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v6;
    }

LABEL_41:
    operator delete(v26.__r_.__value_.__l.__data_);
    return v6;
  }

  do
  {
    if (*(v6 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(v6 + 16), *(v6 + 24));
      v22 = 0;
      v23 = 0;
      v21 = &v22;
      v8 = *(v6 + 168);
      v9 = (v6 + 176);
      if (v8 == (v6 + 176))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v20 = *(v6 + 16);
      v21 = &v22;
      v22 = 0;
      v23 = 0;
      v8 = *(v6 + 168);
      v9 = (v6 + 176);
      if (v8 == (v6 + 176))
      {
        goto LABEL_10;
      }
    }

    do
    {
      if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v21, &v22, &v19, &v18, v8 + 4))
      {
        operator new();
      }

      v12 = v8[1];
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
        do
        {
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != v9);
LABEL_10:
    v24 = 0;
    webrtc::SdpVideoFormat::IsSameCodec(&v26, &v20);
    v11 = v10;
    if (v24)
    {
      operator delete(__p);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v21, v22);
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_12:
        if (v11)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    else
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v21, v22);
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(v20.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_28;
    }

LABEL_26:
    v6 += 216;
  }

  while (v6 != v7);
  v6 = 0;
LABEL_28:
  if (v29)
  {
    operator delete(v30);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v27, v28[0]);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v6;
    }

    goto LABEL_41;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v27, v28[0]);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_41;
  }

  return v6;
}