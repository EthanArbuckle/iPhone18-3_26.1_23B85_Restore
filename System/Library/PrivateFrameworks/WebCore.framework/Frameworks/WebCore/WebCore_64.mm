uint64_t webrtc::ASN1TimeToSec(webrtc *this, const unsigned __int8 *a2, int a3)
{
  if (!a2 || a2[this - 1] != 90)
  {
    return -1;
  }

  if ((strspn(this, "0123456789") + 1) != a2)
  {
    return -1;
  }

  if (a3)
  {
    if (a2 < 0xB)
    {
      return -1;
    }

    v9 = this + 4;
    v8 = *(this + 3) + 10 * (*(this + 2) + 10 * (*(this + 1) + 10 * *this)) - 55228;
    if (a2 != 15)
    {
      return -1;
    }
  }

  else
  {
    if (a2 < 9)
    {
      return -1;
    }

    v7 = *(this + 1) + 10 * *this;
    v8 = v7 - 528;
    v9 = this + 2;
    v10 = v7 - 428;
    if (v8 < 50)
    {
      v8 = v10;
    }

    if (a2 != 13)
    {
      return -1;
    }
  }

  v11 = v8 + 1900;
  if ((v8 & 3) != 0)
  {
    v12 = 0;
  }

  else
  {
    HIDWORD(v13) = -1030792151 * v11 + 85899344;
    LODWORD(v13) = HIDWORD(v13);
    if ((v13 >> 2) <= 0x28F5C28)
    {
      HIDWORD(v14) = -1030792151 * v11 + 85899344;
      LODWORD(v14) = HIDWORD(v14);
      v12 = (v14 >> 4) < 0xA3D70B;
    }

    else
    {
      v12 = 1;
    }
  }

  result = -1;
  v15 = __OFSUB__(v8, 70);
  v16 = v8 - 70;
  if (v16 < 0 == v15)
  {
    v17 = v9[1] + 10 * *v9 - 529;
    if (v17 <= 0xB)
    {
      v18 = v9[3] + 10 * v9[2] - 528;
      if (v18 >= 1)
      {
        v19 = v9[1] + 10 * *v9 == 530 && v12;
        if (v18 <= webrtc::TmToSeconds(tm const&)::mdays[v17] + v19)
        {
          v20 = v9[5] + 10 * v9[4] - 528;
          if (v20 <= 0x17)
          {
            v21 = v9[7] + 10 * v9[6] - 528;
            if (v21 <= 0x3B)
            {
              v22 = v9[9] + 10 * v9[8] - 528;
              if (v22 <= 0x3B)
              {
                if (v17 >= 2)
                {
                  v12 = 0;
                }

                return 60 * (60 * (24 * (webrtc::TmToSeconds(tm const&)::cumul_mdays[v17] + (v11 / 0x190 - v11 / 0x64 + (v11 >> 2) + v18 - v12 - 478) + 365 * v16) + v20) + v21) + v22;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::SSLIdentity::PemToDer(void **__src, size_t __len, void *a3, unint64_t a4, uint64_t a5)
{
  v65[2] = *MEMORY[0x277D85DE8];
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_130;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v63 = __len;
  v8 = (&v62 + __len);
  if (&v62 <= __src && v8 > __src)
  {
    goto LABEL_129;
  }

  if (__len)
  {
    memmove(&v62, __src, __len);
  }

  *v8 = 0;
  std::operator+<char>();
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (v61.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v61.__r_.__value_.__l.__size_;
  }

  if (v9 - size >= 5)
  {
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v61;
    }

    else
    {
      v11 = v61.__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    if (v11 + size <= "-----" && v12 + 5 > "-----")
    {
      goto LABEL_129;
    }

    v12[4] = 45;
    *v12 = 757935405;
    v13 = size + 5;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      v61.__r_.__value_.__l.__size_ = size + 5;
    }

    else
    {
      *(&v61.__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    v11->__r_.__value_.__s.__data_[v13] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v61, v9, size - v9 + 5, size, size, 0, 5uLL, "-----");
  }

  __p = v61;
  memset(&v61, 0, sizeof(v61));
  v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = __p.__r_.__value_.__r.__words[0];
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
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  if (v17)
  {
    if (!p_p)
    {
      goto LABEL_129;
    }

    v18 = a3 + a4;
    if (a4 >= v17)
    {
      v20 = a5;
      v21 = p_p->__r_.__value_.__s.__data_[0];
      v22 = a4;
      v23 = a3;
      do
      {
        v24 = v22 - v17;
        if (v24 == -1)
        {
          break;
        }

        v25 = memchr(v23, v21, v24 + 1);
        if (!v25)
        {
          break;
        }

        v26 = v25;
        if (!memcmp(v25, p_p, v17))
        {
          goto LABEL_45;
        }

        v23 = v26 + 1;
        v22 = v18 - (v26 + 1);
      }

      while (v22 >= v17);
      v26 = a3 + a4;
LABEL_45:
      a5 = v20;
      if (v26 == v18)
      {
        v19 = -1;
      }

      else
      {
        v19 = v26 - a3;
      }

      if ((v14 & 0x80000000) == 0)
      {
LABEL_50:
        v27 = 0;
        if (v19 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v19 = -1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    v19 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }
  }

  operator delete(v15);
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(v61.__r_.__value_.__l.__data_);
  v27 = 0;
  if (v19 == -1)
  {
    goto LABEL_126;
  }

LABEL_51:
  if (a4 <= v19)
  {
    goto LABEL_126;
  }

  v28 = memchr(a3 + v19, 10, a4 - v19);
  v27 = 0;
  if (!v28)
  {
    goto LABEL_126;
  }

  v29 = (v28 - a3);
  if (v28 - a3 == -1)
  {
    goto LABEL_126;
  }

  std::operator+<char>();
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = 22;
  }

  else
  {
    v34 = (v61.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v61.__r_.__value_.__l.__size_;
  }

  if (v34 - v35 >= 5)
  {
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v61;
    }

    else
    {
      v36 = v61.__r_.__value_.__r.__words[0];
    }

    v37 = v36 + v35;
    if (v36 + v35 <= "-----" && v37 + 5 > "-----")
    {
      goto LABEL_129;
    }

    v37[4] = 45;
    *v37 = 757935405;
    v38 = v35 + 5;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      v61.__r_.__value_.__l.__size_ = v35 + 5;
    }

    else
    {
      *(&v61.__r_.__value_.__s + 23) = v38 & 0x7F;
    }

    v36->__r_.__value_.__s.__data_[v38] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v61, v34, v35 - v34 + 5, v35, v35, 0, 5uLL, "-----");
  }

  __p = v61;
  memset(&v61, 0, sizeof(v61));
  v39 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v40 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &__p;
  }

  else
  {
    v41 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = __p.__r_.__value_.__l.__size_;
  }

  if (!v42)
  {
    v44 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  if (!v41)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v43 = a3 + a4;
  if (a4 < v42)
  {
    v44 = -1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  v60 = a5;
  v45 = v41->__r_.__value_.__s.__data_[0];
  v46 = a4;
  v47 = a3;
  do
  {
    v48 = v46 - v42;
    if (v48 == -1)
    {
      break;
    }

    v49 = memchr(v47, v45, v48 + 1);
    if (!v49)
    {
      break;
    }

    v50 = v49;
    if (!memcmp(v49, v41, v42))
    {
      goto LABEL_92;
    }

    v47 = v50 + 1;
    v46 = v43 - (v50 + 1);
  }

  while (v46 >= v42);
  v50 = a3 + a4;
LABEL_92:
  a5 = v60;
  if (v50 == v43)
  {
    v44 = -1;
  }

  else
  {
    v44 = v50 - a3;
  }

  if (v39 < 0)
  {
LABEL_96:
    operator delete(v40);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }
  }

LABEL_98:
  if (v44 == -1)
  {
    v27 = 0;
    goto LABEL_126;
  }

  if (a4 <= v29)
  {
    abort();
  }

  if (a4 - (v29 + 1) >= v44 - (v29 + 1))
  {
    v51 = v44 - (v29 + 1);
  }

  else
  {
    v51 = a4 - (v29 + 1);
  }

  if (v51 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_130:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v52 = &v29[a3 + 1];
  if (v51 > 0x16)
  {
    operator new();
  }

  *(&v61.__r_.__value_.__s + 23) = v51;
  v53 = (&v61 + v51);
  if (&v61 <= v52 && v53 > v52)
  {
    goto LABEL_129;
  }

  if (v51)
  {
    memmove(&v61, v52, v51);
  }

  v53->__r_.__value_.__s.__data_[0] = 0;
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &v61;
  }

  else
  {
    v54 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v61.__r_.__value_.__l.__size_;
  }

  memset(&__p, 0, sizeof(__p));
  if (v27)
  {
    v65[0] = __p.__r_.__value_.__l.__size_;
    v56 = __p.__r_.__value_.__r.__words[0];
    *(v65 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    v58 = v65[0];
    *a5 = v56;
    *(a5 + 8) = v58;
    *(a5 + 15) = *(v65 + 7);
    *(a5 + 23) = v57;
  }

  else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

LABEL_126:
  if (v63 < 0)
  {
    operator delete(v62);
  }

  return v27;
}

void webrtc::SSLIdentity::DerToPem(char *__src@<X0>, size_t __len@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, std::string *a8@<X8>)
{
  *&v69.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v69 <= "-----BEGIN " && &v69.__r_.__value_.__r.__words[1] + 3 > "-----BEGIN ")
  {
    goto LABEL_169;
  }

  *(v69.__r_.__value_.__r.__words + 7) = 542001479;
  v69.__r_.__value_.__r.__words[0] = *"-----BEGIN ";
  *(&v69.__r_.__value_.__s + 23) = 11;
  if (!__src)
  {
    if (__len)
    {
      goto LABEL_169;
    }
  }

  if (__len > 0xB)
  {
    if (__len - 0x7FFFFFFFFFFFFFECLL > 0x800000000000001ELL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len)
  {
    if (&v69.__r_.__value_.__r.__words[1] + 3 <= __src && &v69.__r_.__value_.__r.__words[1] + __len + 3 > __src)
    {
      goto LABEL_169;
    }

    memmove(&v69.__r_.__value_.__r.__words[1] + 3, __src, __len);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v69.__r_.__value_.__l.__size_ = __len + 11;
    }

    else
    {
      *(&v69.__r_.__value_.__s + 23) = __len + 11;
    }

    v69.__r_.__value_.__s.__data_[__len + 11] = 0;
    v14 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = 11;
  }

  if ((v14 & 0x80u) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v14 & 0x80u) == 0)
  {
    size = v14;
  }

  else
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  if (v15 - size >= 6)
  {
    v18 = &v69;
    if ((v14 & 0x80u) != 0)
    {
      v18 = v69.__r_.__value_.__r.__words[0];
    }

    v19 = v18 + size;
    if (v18 + size <= "-----\n" && v19 + 6 > "-----\n")
    {
      goto LABEL_169;
    }

    *(v19 + 2) = 2605;
    *v19 = 757935405;
    v20 = size + 6;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v69.__r_.__value_.__l.__size_ = size + 6;
      v18->__r_.__value_.__s.__data_[v20] = 0;
      if (a4)
      {
        v17 = a3;
      }

      else
      {
        v17 = 0;
      }

      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }
    }

    else
    {
      *(&v69.__r_.__value_.__s + 23) = v20 & 0x7F;
      v18->__r_.__value_.__s.__data_[v20] = 0;
      if (a4)
      {
        v17 = a3;
      }

      else
      {
        v17 = 0;
      }

      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v69, v15, size - v15 + 6, size, size, 0, 6uLL, "-----\n");
    if (a4)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }
  }

  if (a4 && !v17)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v64 = __len;
  v65 = a8;
  memset(&v68, 0, sizeof(v68));
  absl::strings_internal::Base64EscapeInternal<std::string>(v17, a4, &v68, 1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", a5, a6, a7);
  v21 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v68.__r_.__value_.__l.__size_;
  }

  v22 = v21 + 63;
  if (v22 >= 0x40)
  {
    v28 = 0;
    v29 = 0;
    v30 = v22 >> 6;
    while (1)
    {
      v31 = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v31 = v68.__r_.__value_.__l.__size_;
        if (v68.__r_.__value_.__l.__size_ < v29)
        {
          goto LABEL_170;
        }

        v32 = v68.__r_.__value_.__r.__words[0];
        if (v68.__r_.__value_.__l.__size_ + v28 >= 0x40)
        {
          v33 = 64;
        }

        else
        {
          v33 = v68.__r_.__value_.__l.__size_ + v28;
        }

        if (v68.__r_.__value_.__l.__size_ + v28 > 0x16)
        {
LABEL_72:
          operator new();
        }
      }

      else
      {
        if (v29 > SHIBYTE(v68.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_170;
        }

        v32 = &v68;
        if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) + v28) >= 0x40)
        {
          v33 = 64;
        }

        else
        {
          v33 = SHIBYTE(v68.__r_.__value_.__r.__words[2]) + v28;
        }

        if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) + v28) > 0x16)
        {
          goto LABEL_72;
        }
      }

      v67 = v33;
      v34 = (&v32->__r_.__value_.__l.__data_ + v29);
      v35 = (__p + v33);
      if (__p <= v34 && v35 > v34)
      {
        goto LABEL_169;
      }

      if (v29 != v31)
      {
        memmove(__p, v34, v33);
      }

      *v35 = 0;
      v37 = (v67 & 0x80u) == 0 ? __p : __p[0];
      v38 = (v67 & 0x80u) == 0 ? v67 : __p[1];
      if (!v37 && v38)
      {
        goto LABEL_169;
      }

      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = 22;
      }

      else
      {
        v39 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v40 = v69.__r_.__value_.__l.__size_;
      }

      if (v39 - v40 < v38)
      {
        std::string::__grow_by_and_replace(&v69, v39, v40 + v38 - v39, v40, v40, 0, v38, v37);
        if ((v67 & 0x80000000) == 0)
        {
          goto LABEL_106;
        }

LABEL_95:
        operator delete(__p[0]);
        goto LABEL_106;
      }

      if (!v38)
      {
        goto LABEL_105;
      }

      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v69;
      }

      else
      {
        v41 = v69.__r_.__value_.__r.__words[0];
      }

      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v42 = v41 + v40;
      if (v41 + v40 <= v37 && &v42[v38] > v37)
      {
        goto LABEL_169;
      }

      v43 = v38;
      memmove(v42, v37, v38);
      v44 = v40 + v43;
      if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      v69.__r_.__value_.__l.__size_ = v40 + v43;
      v41->__r_.__value_.__s.__data_[v44] = 0;
      if (v67 < 0)
      {
        goto LABEL_95;
      }

LABEL_106:
      v45 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = 22;
      }

      else
      {
        v46 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v45 = v69.__r_.__value_.__l.__size_;
      }

      if (v46 == v45)
      {
        std::string::__grow_by_and_replace(&v69, v46, 1uLL, v46, v46, 0, 1uLL, "\n");
      }

      else
      {
        v47 = &v69;
        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v69.__r_.__value_.__r.__words[0];
        }

        v48 = v47 + v45;
        if (v47 + v45 <= "\n" && v48 + 1 > "\n")
        {
          goto LABEL_169;
        }

        *v48 = 10;
        v49 = v45 + 1;
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          v69.__r_.__value_.__l.__size_ = v49;
        }

        else
        {
          *(&v69.__r_.__value_.__s + 23) = v49 & 0x7F;
        }

        v47->__r_.__value_.__s.__data_[v49] = 0;
      }

      v29 += 64;
      v28 -= 64;
      if (!--v30)
      {
        goto LABEL_49;
      }
    }

    *(&v69.__r_.__value_.__s + 23) = v44 & 0x7F;
    v41->__r_.__value_.__s.__data_[v44] = 0;
LABEL_105:
    if (v67 < 0)
    {
      goto LABEL_95;
    }

    goto LABEL_106;
  }

LABEL_49:
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = 22;
  }

  else
  {
    v23 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v69.__r_.__value_.__l.__size_;
  }

  if (v23 - v24 >= 9)
  {
    v50 = &v69;
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = v69.__r_.__value_.__r.__words[0];
    }

    v51 = v50 + v24;
    v25 = v64;
    v26 = v65;
    v27 = __src;
    if (v50 + v24 <= "-----END " && v51 + 9 > "-----END ")
    {
      goto LABEL_169;
    }

    v51[8] = 32;
    *v51 = *"-----END ";
    v52 = v24 + 9;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v69.__r_.__value_.__l.__size_ = v24 + 9;
    }

    else
    {
      *(&v69.__r_.__value_.__s + 23) = v52 & 0x7F;
    }

    v50->__r_.__value_.__s.__data_[v52] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v69, v23, v24 - v23 + 9, v24, v24, 0, 9uLL, "-----END ");
    v25 = v64;
    v26 = v65;
    v27 = __src;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = 22;
  }

  else
  {
    v53 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v54 = v69.__r_.__value_.__l.__size_;
  }

  if (v53 - v54 < v25)
  {
    std::string::__grow_by_and_replace(&v69, v53, v54 + v25 - v53, v54, v54, 0, v25, v27);
    goto LABEL_149;
  }

  if (v25)
  {
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v69;
    }

    else
    {
      v55 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      v56 = v55 + v54;
      if (v55 + v54 > v27 || &v56[v25] <= v27)
      {
        v57 = v25;
        memmove(v56, v27, v25);
        v58 = v54 + v57;
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          v69.__r_.__value_.__l.__size_ = v54 + v57;
        }

        else
        {
          *(&v69.__r_.__value_.__s + 23) = v58 & 0x7F;
        }

        v55->__r_.__value_.__s.__data_[v58] = 0;
        goto LABEL_149;
      }
    }

    goto LABEL_169;
  }

LABEL_149:
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = 22;
  }

  else
  {
    v59 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v69.__r_.__value_.__l.__size_;
  }

  if (v59 - v60 >= 6)
  {
    v61 = &v69;
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v61 = v69.__r_.__value_.__r.__words[0];
    }

    v62 = v61 + v60;
    if (v61 + v60 <= "-----\n" && v62 + 6 > "-----\n")
    {
      goto LABEL_169;
    }

    *(v62 + 2) = 2605;
    *v62 = 757935405;
    v63 = v60 + 6;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v69.__r_.__value_.__l.__size_ = v60 + 6;
    }

    else
    {
      *(&v69.__r_.__value_.__s + 23) = v63 & 0x7F;
    }

    v61->__r_.__value_.__s.__data_[v63] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v69, v59, v60 - v59 + 6, v60, v60, 0, 6uLL, "-----\n");
  }

  *v26 = v69;
  memset(&v69, 0, sizeof(v69));
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t webrtc::SrtpCryptoSuiteToName@<X0>(uint64_t this@<X0>, unint64_t a2@<X8>)
{
  if (this <= 6)
  {
    if (this == 1)
    {
      operator new();
    }

    if (this == 2)
    {
      operator new();
    }

    goto LABEL_9;
  }

  if (this == 7)
  {
    *(a2 + 23) = 16;
    v3 = "AEAD_AES_128_GCM";
    if (a2 > "AEAD_AES_128_GCM")
    {
LABEL_13:
      *a2 = *v3;
      *(a2 + 16) = 0;
      return this;
    }
  }

  else
  {
    if (this != 8)
    {
LABEL_9:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return this;
    }

    *(a2 + 23) = 16;
    v3 = "AEAD_AES_256_GCM";
    if (a2 > "AEAD_AES_256_GCM")
    {
      goto LABEL_13;
    }
  }

  if (a2 + 16 <= v3)
  {
    goto LABEL_13;
  }

  __break(1u);
  return this;
}

void webrtc::SSLStreamAdapter::GetDefaultEphemeralKeyExchangeCipherGroups(uint64_t a1)
{
  if (!a1)
  {
LABEL_19:
    operator new();
  }

  (*(*a1 + 16))(__p);
  v1 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  if (v1 >= 7)
  {
    v3 = __p[0];
    if ((v8 & 0x80u) == 0)
    {
      v3 = __p;
    }

    v4 = *v3;
    v5 = *(v3 + 3);
    v2 = v4 == 1650552389 && v5 == 1684368482;
    if (v8 < 0)
    {
LABEL_18:
      operator delete(__p[0]);
      if (!v2)
      {
        goto LABEL_19;
      }

LABEL_17:
      operator new();
    }
  }

  else
  {
    v2 = 0;
    if (v8 < 0)
    {
      goto LABEL_18;
    }
  }

  if (!v2)
  {
    goto LABEL_19;
  }

  goto LABEL_17;
}

BOOL webrtc::SSLStreamAdapter::SetPeerCertificateDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (!a5)
  {
    a4 = 0;
  }

  v7 = (*(*a1 + 120))(a1, a2, a3, a4);
  if (a6)
  {
    *a6 = v7;
  }

  return v7 == 0;
}

void webrtc::StableTargetRateExperiment::StableTargetRateExperiment(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288293910;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 55) = 7;
  if (a1 + 32 <= "enabled" && a1 + 39 > "enabled")
  {
    __break(1u);
  }

  strcpy((a1 + 32), "enabled");
  *(a1 + 56) = 0;
  *a1 = &unk_288293790;
  *(a1 + 64) = &unk_288293910;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  operator new();
}

double dcsctp::StaleCookieErrorCause::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1] = v4 + v5 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v4 = *a2;
  }

  *&result = 134218496;
  *(v4 + v5) = 134218496;
  *(*a2 + v5 + 4) = bswap32(*(a1 + 8));
  return result;
}

uint64_t webrtc::StandaloneVad::AddAudio(webrtc::StandaloneVad *this, const __int16 *a2, uint64_t a3)
{
  if (a3 != 160)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 121);
  if ((v3 - 321) <= 0xFFFFFFFFFFFFFE1ELL)
  {
    v3 = 0;
    *(this + 121) = 0;
  }

  memcpy(this + 2 * v3 + 8, a2, 0x140uLL);
  result = 0;
  *(this + 121) += 160;
  return result;
}

uint64_t webrtc::StandaloneVad::GetActivity(webrtc::StandaloneVad *this, double *a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(this + 121);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3 / 0xA0;
  if (v3 / 0xA0 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *this;
  if (!*this || *(v5 + 732) != 42 || v3 != 160 && v3 != 480 && v3 != 320)
  {
    return 0xFFFFFFFFLL;
  }

  WebRtcVad_Downsampling(this + 4, v18, (v5 + 4), v3);
  LODWORD(result) = WebRtcVad_CalcVad8khz(v5, v18, v3 >> 1);
  v9 = result;
  result = result >= 1 ? 1 : result;
  if (v9 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0.01;
  if (v9)
  {
    v10 = 0.5;
  }

  *a2 = v10;
  if (v3 >= 0x140)
  {
    v11 = v4 - 1;
    if (v4 - 1 > 3)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v13 = vdupq_lane_s64(*&v10, 0);
      v14 = a2 + 3;
      v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 1) = v13;
        *v14 = v13;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 1;
    }

    v16 = v4 - v12;
    v17 = &a2[v12];
    do
    {
      *v17++ = v10;
      --v16;
    }

    while (v16);
  }

LABEL_23:
  *(this + 121) = 0;
  return result;
}

void dcsctp::StateCookie::Serialize(dcsctp::StateCookie *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned char>::__append(a2, 0x2CuLL);
  v8 = a2[1];
  v9 = v8 - *a2;
  if (v8 == *a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 <= 0x2B)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v15);
    dcsctp::StateCookie::Deserialize(v12, v13, v14);
  }

  else
  {
    *v10 = 0x3030505443536364;
    *(v10 + 8) = bswap32(*this);
    *(v10 + 12) = bswap32(*(this + 1));
    *(v10 + 16) = bswap32(*(this + 2));
    *(v10 + 20) = bswap32(*(this + 3));
    *(v10 + 24) = bswap32(*(this + 4));
    v11 = *(this + 3);
    *(v10 + 28) = HIBYTE(v11);
    *(v10 + 29) = BYTE6(v11);
    *(v10 + 30) = BYTE5(v11);
    *(v10 + 31) = BYTE4(v11);
    *(v10 + 32) = bswap32(*(this + 6));
    *(v10 + 36) = *(this + 32);
    *(v10 + 37) = *(this + 33);
    *(v10 + 38) = *(this + 34);
    *(v10 + 39) = *(this + 35);
    *(v10 + 40) = bswap32(*(this + 18)) >> 16;
    *(v10 + 42) = bswap32(*(this + 19)) >> 16;
  }
}

uint64_t dcsctp::StateCookie::Deserialize@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 44 && ((v3 = bswap32(*(result + 4)), bswap32(*result) == 1684230979) ? (v4 = v3 == 1414541360) : (v4 = 0), v4))
  {
    v5 = bswap32(*(result + 8));
    v6 = bswap32(*(result + 12));
    v7 = bswap32(*(result + 16));
    v8 = bswap32(*(result + 20));
    v9 = bswap32(*(result + 24));
    v10 = bswap64(*(result + 28));
    v11 = *(result + 36) != 0;
    v12 = *(result + 37) != 0;
    v13 = *(result + 38) != 0;
    v14 = *(result + 39) != 0;
    v15 = *(result + 40);
    v16 = *(result + 41);
    v17 = *(result + 42);
    result = *(result + 43);
    *a3 = v5;
    *(a3 + 4) = v6;
    *(a3 + 8) = v7;
    *(a3 + 12) = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
    *(a3 + 32) = v11 | (v12 << 8) | (v13 << 16) | (v14 << 24) | (v15 << 40) | (v16 << 32) | (v17 << 56) | (result << 48);
    *(a3 + 40) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

void dcsctp::StateCookieParameter::~StateCookieParameter(dcsctp::StateCookieParameter *this)
{
  *this = &unk_28829FFE8;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829FFE8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::StateCookieParameter::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16) - *(a1 + 8);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 4;
  v14 = v12 + v10 + 4;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 4);
    v11 = *a2;
  }

  v15 = v11 + v12;
  *v15 = 1792;
  *(v15 + 2) = HIBYTE(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::StateCookieParameter::ToString(v21);
  }

  else
  {
    v16 = *(a1 + 16) - *(a1 + 8);
    if (v16)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = 0;
    }

    if (v10 >= v16)
    {
      v18 = *(a1 + 16) - *(a1 + 8);
    }

    else
    {
      v18 = v10;
    }

    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = (*a2 + v12 + 4);

      memcpy(v20, v17, v18);
    }
  }
}

double webrtc::StationarityEstimator::Reset(webrtc::StationarityEstimator *this)
{
  *(this + 34) = 0;
  __asm { FMOV            V0.4S, #10.0 }

  *(this + 8) = _Q0;
  *(this + 24) = _Q0;
  *(this + 40) = _Q0;
  *(this + 56) = _Q0;
  *(this + 72) = _Q0;
  *(this + 88) = _Q0;
  *(this + 104) = _Q0;
  *(this + 120) = _Q0;
  *(this + 136) = _Q0;
  *(this + 152) = _Q0;
  *(this + 168) = _Q0;
  *(this + 184) = _Q0;
  *(this + 200) = _Q0;
  *(this + 216) = _Q0;
  *(this + 232) = _Q0;
  *(this + 248) = _Q0;
  *(this + 66) = 1092616192;
  result = 0.0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 597) = 0;
  return result;
}

float32x4_t *webrtc::StationarityEstimator::NoiseSpectrum::Update(float32x4_t *result, float32x4_t *__src, int a3, float32x4_t a4)
{
  v5 = __src;
  v6 = result;
  if (a3 != 1)
  {
    result = memmove(__dst, __src, 0x104uLL);
    if (a3 >= 2)
    {
      v7 = &v5[16].u64[1];
      v9 = &v125 < (v5 + 260 * (a3 & 0x7FFFFFFF)) && v7 < &v141;
      v10 = 1;
      do
      {
        if (v9)
        {
          for (i = 0; i != 64; ++i)
          {
            v125.f32[i] = *(v7 + i * 4) + v125.f32[i];
          }
        }

        else
        {
          v11 = v5 + 260 * v10;
          v12 = vaddq_f32(*(v11 + 20), v126);
          v125 = vaddq_f32(*(v11 + 4), v125);
          v126 = v12;
          v13 = vaddq_f32(*(v11 + 52), v128);
          v127 = vaddq_f32(*(v11 + 36), v127);
          v128 = v13;
          v14 = vaddq_f32(*(v11 + 84), v130);
          v129 = vaddq_f32(*(v11 + 68), v129);
          v130 = v14;
          v15 = vaddq_f32(*(v11 + 116), v132);
          v131 = vaddq_f32(*(v11 + 100), v131);
          v132 = v15;
          v16 = vaddq_f32(*(v11 + 148), v134);
          v133 = vaddq_f32(*(v11 + 132), v133);
          v134 = v16;
          v17 = vaddq_f32(*(v11 + 180), v136);
          v135 = vaddq_f32(*(v11 + 164), v135);
          v136 = v17;
          v18 = vaddq_f32(*(v11 + 212), v138);
          v137 = vaddq_f32(*(v11 + 196), v137);
          v138 = v18;
          v19 = vaddq_f32(*(v11 + 244), v140);
          v139 = vaddq_f32(*(v11 + 228), v139);
          v140 = v19;
        }

        ++v10;
        v7 = (v7 + 260);
      }

      while (v10 != (a3 & 0x7FFFFFFF));
    }

    v21 = 1.0 / a3;
    v125 = vmulq_n_f32(v125, v21);
    v126 = vmulq_n_f32(v126, v21);
    v127 = vmulq_n_f32(v127, v21);
    v128 = vmulq_n_f32(v128, v21);
    v129 = vmulq_n_f32(v129, v21);
    v130 = vmulq_n_f32(v130, v21);
    v131 = vmulq_n_f32(v131, v21);
    v132 = vmulq_n_f32(v132, v21);
    v133 = vmulq_n_f32(v133, v21);
    v134 = vmulq_n_f32(v134, v21);
    v135 = vmulq_n_f32(v135, v21);
    v136 = vmulq_n_f32(v136, v21);
    v137 = vmulq_n_f32(v137, v21);
    v138 = vmulq_n_f32(v138, v21);
    v139 = vmulq_n_f32(v139, v21);
    a4 = vmulq_n_f32(v140, v21);
    v140 = a4;
    v5 = __dst;
  }

  v22 = v6[16].i64[1];
  v23 = v22 + 1;
  v6[16].i64[1] = v22 + 1;
  a4.f32[0] = ((v22 - 19) * -0.000072) + 0.04;
  if ((v22 + 1) > 0x208)
  {
    a4.f32[0] = 0.004;
  }

  if (v23 > 0x14)
  {
    v26 = &v5[16].i32[1] > v6 && v5 < &v6[16].i32[1];
    if (v23 <= 0x1F4)
    {
      if (v26)
      {
        v38 = 0;
      }

      else
      {
        v56 = v5[1];
        v57 = v6[1];
        v58 = vsubq_f32(*v5, *v6);
        v59 = vsubq_f32(v56, v57);
        v60 = vmlaq_n_f32(*v6, v58, a4.f32[0]);
        v61 = vmlaq_n_f32(v57, v59, a4.f32[0]);
        __asm { FMOV            V1.4S, #10.0 }

        *v6 = vbslq_s8(vcgtq_f32(*v5, *v6), vmlaq_f32(*v6, v58, vmulq_n_f32(vdivq_f32(*v6, *v5), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v60), _Q1, v60));
        v6[1] = vbslq_s8(vcgtq_f32(v56, v57), vmlaq_f32(v57, v59, vmulq_n_f32(vdivq_f32(v57, v56), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v61), _Q1, v61));
        v63 = v5[2];
        v64 = v5[3];
        v65 = v6[2];
        v66 = v6[3];
        v67 = vsubq_f32(v63, v65);
        v68 = vsubq_f32(v64, v66);
        v69 = vmlaq_n_f32(v65, v67, a4.f32[0]);
        v70 = vmlaq_n_f32(v66, v68, a4.f32[0]);
        v6[2] = vbslq_s8(vcgtq_f32(v63, v65), vmlaq_f32(v65, v67, vmulq_n_f32(vdivq_f32(v65, v63), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v69), _Q1, v69));
        v6[3] = vbslq_s8(vcgtq_f32(v64, v66), vmlaq_f32(v66, v68, vmulq_n_f32(vdivq_f32(v66, v64), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v70), _Q1, v70));
        v71 = v5[4];
        v72 = v5[5];
        v73 = v6[4];
        v74 = v6[5];
        v75 = vsubq_f32(v71, v73);
        v76 = vsubq_f32(v72, v74);
        v77 = vmlaq_n_f32(v73, v75, a4.f32[0]);
        v78 = vmlaq_n_f32(v74, v76, a4.f32[0]);
        v6[4] = vbslq_s8(vcgtq_f32(v71, v73), vmlaq_f32(v73, v75, vmulq_n_f32(vdivq_f32(v73, v71), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v77), _Q1, v77));
        v6[5] = vbslq_s8(vcgtq_f32(v72, v74), vmlaq_f32(v74, v76, vmulq_n_f32(vdivq_f32(v74, v72), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v78), _Q1, v78));
        v79 = v5[6];
        v80 = v5[7];
        v81 = v6[6];
        v82 = v6[7];
        v83 = vsubq_f32(v79, v81);
        v84 = vsubq_f32(v80, v82);
        v85 = vmlaq_n_f32(v81, v83, a4.f32[0]);
        v86 = vmlaq_n_f32(v82, v84, a4.f32[0]);
        v6[6] = vbslq_s8(vcgtq_f32(v79, v81), vmlaq_f32(v81, v83, vmulq_n_f32(vdivq_f32(v81, v79), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v85), _Q1, v85));
        v6[7] = vbslq_s8(vcgtq_f32(v80, v82), vmlaq_f32(v82, v84, vmulq_n_f32(vdivq_f32(v82, v80), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v86), _Q1, v86));
        v87 = v5[8];
        v88 = v5[9];
        v89 = v6[8];
        v90 = v6[9];
        v91 = vsubq_f32(v87, v89);
        v92 = vsubq_f32(v88, v90);
        v93 = vmlaq_n_f32(v89, v91, a4.f32[0]);
        v94 = vmlaq_n_f32(v90, v92, a4.f32[0]);
        v6[8] = vbslq_s8(vcgtq_f32(v87, v89), vmlaq_f32(v89, v91, vmulq_n_f32(vdivq_f32(v89, v87), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v93), _Q1, v93));
        v6[9] = vbslq_s8(vcgtq_f32(v88, v90), vmlaq_f32(v90, v92, vmulq_n_f32(vdivq_f32(v90, v88), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v94), _Q1, v94));
        v95 = v5[10];
        v96 = v5[11];
        v97 = v6[10];
        v98 = v6[11];
        v99 = vsubq_f32(v95, v97);
        v100 = vsubq_f32(v96, v98);
        v101 = vmlaq_n_f32(v97, v99, a4.f32[0]);
        v102 = vmlaq_n_f32(v98, v100, a4.f32[0]);
        v6[10] = vbslq_s8(vcgtq_f32(v95, v97), vmlaq_f32(v97, v99, vmulq_n_f32(vdivq_f32(v97, v95), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v101), _Q1, v101));
        v6[11] = vbslq_s8(vcgtq_f32(v96, v98), vmlaq_f32(v98, v100, vmulq_n_f32(vdivq_f32(v98, v96), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v102), _Q1, v102));
        v103 = v5[12];
        v104 = v5[13];
        v105 = v6[12];
        v106 = v6[13];
        v107 = vsubq_f32(v103, v105);
        v108 = vsubq_f32(v104, v106);
        v109 = vmlaq_n_f32(v105, v107, a4.f32[0]);
        v110 = vmlaq_n_f32(v106, v108, a4.f32[0]);
        v6[12] = vbslq_s8(vcgtq_f32(v103, v105), vmlaq_f32(v105, v107, vmulq_n_f32(vdivq_f32(v105, v103), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v109), _Q1, v109));
        v6[13] = vbslq_s8(vcgtq_f32(v104, v106), vmlaq_f32(v106, v108, vmulq_n_f32(vdivq_f32(v106, v104), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v110), _Q1, v110));
        v111 = v5[14];
        v112 = v5[15];
        v113 = v6[14];
        v114 = v6[15];
        v115 = vsubq_f32(v111, v113);
        v116 = vsubq_f32(v112, v114);
        v117 = vmlaq_n_f32(v113, v115, a4.f32[0]);
        v118 = vmlaq_n_f32(v114, v116, a4.f32[0]);
        v6[14] = vbslq_s8(vcgtq_f32(v111, v113), vmlaq_f32(v113, v115, vmulq_n_f32(vdivq_f32(v113, v111), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v117), _Q1, v117));
        v6[15] = vbslq_s8(vcgtq_f32(v112, v114), vmlaq_f32(v114, v116, vmulq_n_f32(vdivq_f32(v114, v112), a4.f32[0])), vbslq_s8(vcgtq_f32(_Q1, v118), _Q1, v118));
        v38 = 64;
      }

      v119 = v38;
      do
      {
        while (1)
        {
          v120 = v5->f32[v119];
          v121 = v6->f32[v119];
          v122 = v120 - v121;
          if (v121 >= v120)
          {
            break;
          }

          v6->f32[v119++] = v121 + ((a4.f32[0] * (v121 / v120)) * v122);
          if (v119 == 65)
          {
            return result;
          }
        }

        v123 = v121 + (a4.f32[0] * v122);
        if (v123 < 10.0)
        {
          v123 = 10.0;
        }

        v6->f32[v119++] = v123;
      }

      while (v119 != 65);
    }

    else
    {
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v39 = 0;
        v40 = vdupq_lane_s32(*a4.f32, 0);
        __asm { FMOV            V2.4S, #10.0 }

        v45 = vdupq_n_s32(0x3DCCCCCDu);
        v27 = 64;
        do
        {
          v46 = v5[v39];
          v47 = v6[v39];
          v48 = vsubq_f32(v46, v47);
          v49 = vmlaq_f32(v47, v48, v40);
          v50 = vmulq_n_f32(vdivq_f32(v47, v46), a4.f32[0]);
          v6[v39++] = vbslq_s8(vcgtq_f32(v46, v47), vmlaq_f32(v47, v48, vbslq_s8(vcgtq_f32(v46, vmulq_f32(v47, _Q2)), vmulq_f32(v50, v45), v50)), vbslq_s8(vcgtq_f32(_Q2, v49), _Q2, v49));
        }

        while (v39 != 16);
      }

      v51 = v27;
      do
      {
        while (1)
        {
          v53 = v5->f32[v51];
          v54 = v6->f32[v51];
          if (v54 >= v53)
          {
            break;
          }

          v55 = a4.f32[0] * (v54 / v53);
          if ((v54 * 10.0) < v53)
          {
            v55 = v55 * 0.1;
          }

          v6->f32[v51++] = v54 + (v55 * (v53 - v54));
          if (v51 == 65)
          {
            return result;
          }
        }

        v52 = v54 + (a4.f32[0] * (v53 - v54));
        if (v52 < 10.0)
        {
          v52 = 10.0;
        }

        v6->f32[v51++] = v52;
      }

      while (v51 != 65);
    }
  }

  else
  {
    if (&v5[16].i32[1] <= v6 || v5 >= &v6[16].i32[1])
    {
      v28 = vdupq_n_s32(0x3D4CCCCDu);
      v29 = vmlaq_f32(v6[1], v28, v5[1]);
      *v6 = vmlaq_f32(*v6, v28, *v5);
      v6[1] = v29;
      v30 = vmlaq_f32(v6[3], v28, v5[3]);
      v6[2] = vmlaq_f32(v6[2], v28, v5[2]);
      v6[3] = v30;
      v31 = vmlaq_f32(v6[5], v28, v5[5]);
      v6[4] = vmlaq_f32(v6[4], v28, v5[4]);
      v6[5] = v31;
      v32 = vmlaq_f32(v6[7], v28, v5[7]);
      v6[6] = vmlaq_f32(v6[6], v28, v5[6]);
      v6[7] = v32;
      v33 = vmlaq_f32(v6[9], v28, v5[9]);
      v6[8] = vmlaq_f32(v6[8], v28, v5[8]);
      v6[9] = v33;
      v34 = vmlaq_f32(v6[11], v28, v5[11]);
      v6[10] = vmlaq_f32(v6[10], v28, v5[10]);
      v6[11] = v34;
      v35 = vmlaq_f32(v6[13], v28, v5[13]);
      v6[12] = vmlaq_f32(v6[12], v28, v5[12]);
      v6[13] = v35;
      v36 = vmlaq_f32(v6[15], v28, v5[15]);
      v24 = 64;
      v6[14] = vmlaq_f32(v6[14], v28, v5[14]);
      v6[15] = v36;
    }

    else
    {
      v24 = 0;
    }

    v37 = v24;
    do
    {
      v6->f32[v37] = v6->f32[v37] + (v5->f32[v37] * 0.05);
      ++v37;
    }

    while (v37 != 65);
  }

  return result;
}

__n128 webrtc::StationarityEstimator::UpdateStationarityFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v124 = *MEMORY[0x277D85DE8];
  if (a6 <= 11)
  {
    a5 = ((a5 - a6 + *a2 + 12) % *a2);
  }

  if (a5 <= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a5;
  }

  v7 = v6 - 1;
  if (v6 <= 1)
  {
    v8 = *a2;
  }

  else
  {
    v8 = v6 - 1;
  }

  v9 = v8 - 1;
  if (v8 <= 1)
  {
    v10 = *a2;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = v10 - 1;
  if (v10 <= 1)
  {
    v12 = *a2;
  }

  else
  {
    v12 = v10 - 1;
  }

  v13 = (v12 - 1);
  if (v12 <= 1)
  {
    v14 = *a2;
  }

  else
  {
    v14 = v12 - 1;
  }

  v15 = v14 - 1;
  if (v14 <= 1)
  {
    v16 = *a2;
  }

  else
  {
    v16 = v14 - 1;
  }

  v17 = (v16 - 1);
  if (v16 <= 1)
  {
    v18 = *a2;
  }

  else
  {
    v18 = v16 - 1;
  }

  v19 = (v18 - 1);
  if (v18 <= 1)
  {
    v20 = *a2;
  }

  else
  {
    v20 = v18 - 1;
  }

  v21 = v20 - 1;
  if (v20 <= 1)
  {
    v22 = *a2;
  }

  else
  {
    v22 = v20 - 1;
  }

  v23 = v22 - 1;
  if (v22 <= 1)
  {
    v24 = *a2;
  }

  else
  {
    v24 = v22 - 1;
  }

  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if ((v26 < 0) ^ v25 | (v26 == 0))
  {
    v27 = *a2;
  }

  else
  {
    v27 = v26;
  }

  v28 = v27 - 1;
  if (v27 <= 1)
  {
    v29 = *a2;
  }

  else
  {
    v29 = v27 - 1;
  }

  if (a4)
  {
    v30 = a3;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v33 = v32 - v31;
  if (v32 == v31)
  {
LABEL_215:
    __break(1u);
LABEL_216:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/stationarity_estimator.cc", 114, "0.f < noise", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)7,double>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)7,double>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)7,double>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)7,double> const&)::t, a5, v19, v13, v17, 0);
  }

  v34 = 0;
  v35 = 0;
  v36 = v29 - 1;
  v37 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 3);
  v38 = a5;
  v39 = &v31[24 * a5];
  v121 = v7;
  v40 = &v31[24 * v7];
  v120 = v9;
  v41 = &v31[24 * v9];
  v119 = v11;
  a5 = &v31[24 * v11];
  v118 = v13;
  v13 = &v31[24 * v13];
  v117 = v15;
  v42 = &v31[24 * v15];
  v43 = &v31[24 * v17];
  v115 = v19;
  v116 = v17;
  v44 = &v31[24 * v19];
  v17 = v21;
  v45 = &v31[24 * v21];
  v113 = v23;
  v114 = v21;
  v46 = &v31[24 * v23];
  v47 = v26;
  v48 = &v31[24 * v26];
  v49 = v28;
  v50 = &v31[24 * v28];
  v51 = &v31[24 * v36];
  v52 = 0xFC0FC0FC0FC0FC1 * ((*(v31 + 1) - *v31) >> 2);
  v53 = 1.0 / v52;
  v54 = (a1 + 540);
  v19 = a1 + 8;
  v55 = (v52 - 1);
  do
  {
    if (v52 <= 0)
    {
      v57 = 0.0;
      v79 = *(v19 + 4 * v35) * 13.0;
      if (v79 <= 0.0)
      {
        goto LABEL_216;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        goto LABEL_215;
      }

      v17 = *v39;
      if (0xFC0FC0FC0FC0FC1 * ((v39[1] - *v39) >> 2) <= v55)
      {
        goto LABEL_215;
      }

      v56 = (v17 + v34);
      v57 = 0.0;
      v58 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*v56 * v53);
        v56 += 65;
        --v58;
      }

      while (v58);
      v17 = v121;
      if (v37 <= v121)
      {
        goto LABEL_215;
      }

      v59 = *v40;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v40 + 1) - *v40) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v60 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v59 + v34) * v53);
        v59 += 260;
        --v60;
      }

      while (v60);
      v17 = v120;
      if (v37 <= v120)
      {
        goto LABEL_215;
      }

      v61 = *v41;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v41 + 1) - *v41) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v62 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v61 + v34) * v53);
        v61 += 260;
        --v62;
      }

      while (v62);
      v17 = v119;
      if (v37 <= v119)
      {
        goto LABEL_215;
      }

      v63 = *a5;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(a5 + 8) - *a5) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v64 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v63 + v34) * v53);
        v63 += 260;
        --v64;
      }

      while (v64);
      v17 = v118;
      if (v37 <= v118)
      {
        goto LABEL_215;
      }

      v65 = *v13;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v13 + 8) - *v13) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v66 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v65 + v34) * v53);
        v65 += 260;
        --v66;
      }

      while (v66);
      v17 = v117;
      if (v37 <= v117)
      {
        goto LABEL_215;
      }

      v67 = *v42;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v42 + 1) - *v42) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v68 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v67 + v34) * v53);
        v67 += 260;
        --v68;
      }

      while (v68);
      v17 = v116;
      if (v37 <= v116)
      {
        goto LABEL_215;
      }

      v69 = *v43;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v43 + 1) - *v43) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v70 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v69 + v34) * v53);
        v69 += 260;
        --v70;
      }

      while (v70);
      v17 = v115;
      if (v37 <= v115)
      {
        goto LABEL_215;
      }

      v71 = *v44;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v44 + 1) - *v44) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v72 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v71 + v34) * v53);
        v71 += 260;
        --v72;
      }

      while (v72);
      v17 = v114;
      if (v37 <= v114)
      {
        goto LABEL_215;
      }

      v73 = *v45;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v45 + 1) - *v45) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v74 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v73 + v34) * v53);
        v73 += 260;
        --v74;
      }

      while (v74);
      v17 = v113;
      if (v37 <= v113)
      {
        goto LABEL_215;
      }

      v75 = *v46;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v46 + 1) - *v46) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v17 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v75 + v34) * v53);
        v75 += 260;
        --v17;
      }

      while (v17);
      if (v37 <= v47)
      {
        goto LABEL_215;
      }

      v76 = *v48;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v48 + 1) - *v48) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v17 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v76 + v34) * v53);
        v76 += 260;
        --v17;
      }

      while (v17);
      if (v37 <= v49)
      {
        goto LABEL_215;
      }

      v77 = *v50;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v50 + 1) - *v50) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v17 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v77 + v34) * v53);
        v77 += 260;
        --v17;
      }

      while (v17);
      if (v37 <= v36)
      {
        goto LABEL_215;
      }

      v78 = *v51;
      v17 = 0xFC0FC0FC0FC0FC1 * ((*(v51 + 1) - *v51) >> 2);
      if (v17 <= v55)
      {
        goto LABEL_215;
      }

      v17 = v52 & 0x7FFFFFFF;
      do
      {
        v57 = v57 + (*(v78 + v34) * v53);
        v78 += 260;
        --v17;
      }

      while (v17);
      v79 = *(v19 + 4 * v35) * 13.0;
      if (v79 <= 0.0)
      {
        goto LABEL_216;
      }
    }

    v17 = (v57 + *(v30 + 4 * v35)) < (v79 * 10.0);
    v54->i8[v35++] = v17;
    v34 += 4;
  }

  while (v35 != 65);
  v80 = a1;
  if (v54->i8[0] == 1 && *(a1 + 541) == 1 && *(a1 + 542) == 1 && *(a1 + 543) == 1 && *(a1 + 544) == 1 && *(a1 + 545) == 1 && *(a1 + 546) == 1 && *(a1 + 547) == 1 && *(a1 + 548) == 1 && *(a1 + 549) == 1 && *(a1 + 550) == 1 && *(a1 + 551) == 1 && *(a1 + 552) == 1 && *(a1 + 553) == 1 && *(a1 + 554) == 1 && *(a1 + 555) == 1 && *(a1 + 556) == 1 && *(a1 + 557) == 1 && *(a1 + 558) == 1 && *(a1 + 559) == 1 && *(a1 + 560) == 1 && *(a1 + 561) == 1 && *(a1 + 562) == 1 && *(a1 + 563) == 1 && *(a1 + 564) == 1 && *(a1 + 565) == 1 && *(a1 + 566) == 1 && *(a1 + 567) == 1 && *(a1 + 568) == 1 && *(a1 + 569) == 1 && *(a1 + 570) == 1 && *(a1 + 571) == 1 && *(a1 + 572) == 1 && *(a1 + 573) == 1 && *(a1 + 574) == 1 && *(a1 + 575) == 1 && *(a1 + 576) == 1 && *(a1 + 577) == 1 && *(a1 + 578) == 1 && *(a1 + 579) == 1 && *(a1 + 580) == 1 && *(a1 + 581) == 1 && *(a1 + 582) == 1 && *(a1 + 583) == 1 && *(a1 + 584) == 1 && *(a1 + 585) == 1 && *(a1 + 586) == 1 && *(a1 + 587) == 1 && *(a1 + 588) == 1 && *(a1 + 589) == 1 && *(a1 + 590) == 1 && *(a1 + 591) == 1 && *(a1 + 592) == 1 && *(a1 + 593) == 1 && *(a1 + 594) == 1 && *(a1 + 595) == 1 && *(a1 + 596) == 1 && *(a1 + 597) == 1 && *(a1 + 598) == 1 && *(a1 + 599) == 1 && *(a1 + 600) == 1 && *(a1 + 601) == 1 && *(a1 + 602) == 1 && *(a1 + 603) == 1 && *(a1 + 604) == 1)
  {
    v81.i64[0] = 0x100000001;
    v81.i64[1] = 0x100000001;
    v82 = vmaxq_s32(*(a1 + 312), v81);
    v83.i64[0] = -1;
    v83.i64[1] = -1;
    v84 = vaddq_s32(v82, v83);
    v85 = vextq_s8(*v54, *v54, 8uLL).u64[0];
    v86 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v85, *v82.i8)), 0x1FuLL));
    v82.i64[0] = 0xC0000000CLL;
    v82.i64[1] = 0xC0000000CLL;
    v87 = vbslq_s8(v86, vaddq_s32(vmaxq_s32(*(a1 + 328), v81), v83), v82);
    v88 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v54->i8, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 296), v81), v83), v82);
    *(a1 + 280) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v54->i8, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 280), v81), v83), v82);
    *(a1 + 296) = v88;
    *(a1 + 312) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v85, 0xC0000000CLL)), 0x1FuLL)), v84, v82);
    *(a1 + 328) = v87;
    v89 = *(a1 + 556);
    v90 = vextq_s8(v89, v89, 8uLL).u64[0];
    v91 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v90, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 392), v81), v83), v82);
    v92 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v90, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 376), v81), v83), v82);
    v93 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v89.i8, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 360), v81), v83), v82);
    *(a1 + 344) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v89.i8, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 344), v81), v83), v82);
    *(a1 + 360) = v93;
    *(a1 + 376) = v92;
    *(a1 + 392) = v91;
    v94 = *(a1 + 572);
    v95 = vextq_s8(v94, v94, 8uLL).u64[0];
    v96 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v95, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 456), v81), v83), v82);
    v97 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v95, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 440), v81), v83), v82);
    v98 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v94.i8, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 424), v81), v83), v82);
    *(a1 + 408) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v94.i8, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 408), v81), v83), v82);
    *(a1 + 424) = v98;
    *(a1 + 440) = v97;
    *(a1 + 456) = v96;
    v99 = *(a1 + 588);
    v100 = vmaxq_s32(*(a1 + 520), v81);
    v101 = vaddq_s32(vmaxq_s32(*(a1 + 488), v81), v83);
    v102 = vaddq_s32(vmaxq_s32(*(a1 + 504), v81), v83);
    v97.i64[0] = vextq_s8(v99, v99, 8uLL).u64[0];
    *(a1 + 472) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v99.i8, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(vmaxq_s32(*(a1 + 472), v81), v83), v82);
    *(a1 + 488) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v99.i8, 0xC0000000CLL)), 0x1FuLL)), v101, v82);
    *(a1 + 504) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v97.i8, 0xC0000000CLL)), 0x1FuLL)), v102, v82);
    *(a1 + 520) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v97.i8, 0xC0000000CLL)), 0x1FuLL)), vaddq_s32(v100, v83), v82);
    if (*(a1 + 604))
    {
      v103 = *(a1 + 536);
      if (v103 <= 1)
      {
        v103 = 1;
      }

      v104 = v103 - 1;
    }

    else
    {
      v104 = 12;
    }

    v80 = a1;
LABEL_207:
    *(v80 + 536) = v104;
    goto LABEL_208;
  }

  v105 = 0;
  v106 = (a1 + 340);
  do
  {
    v107 = vmvnq_s8(v54[v105]);
    if (v107.i8[0])
    {
      *(v106 - 15) = 12;
      if ((v107.i8[1] & 1) == 0)
      {
        goto LABEL_174;
      }
    }

    else if ((v107.i8[1] & 1) == 0)
    {
LABEL_174:
      if (v107.i8[2])
      {
        goto LABEL_175;
      }

      goto LABEL_191;
    }

    *(v106 - 14) = 12;
    if (v107.i8[2])
    {
LABEL_175:
      *(v106 - 13) = 12;
      if ((v107.i8[3] & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_192;
    }

LABEL_191:
    if ((v107.i8[3] & 1) == 0)
    {
LABEL_176:
      if (v107.i8[4])
      {
        goto LABEL_177;
      }

      goto LABEL_193;
    }

LABEL_192:
    *(v106 - 12) = 12;
    if (v107.i8[4])
    {
LABEL_177:
      *(v106 - 11) = 12;
      if ((v107.i8[5] & 1) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_194;
    }

LABEL_193:
    if ((v107.i8[5] & 1) == 0)
    {
LABEL_178:
      if (v107.i8[6])
      {
        goto LABEL_179;
      }

      goto LABEL_195;
    }

LABEL_194:
    *(v106 - 10) = 12;
    if (v107.i8[6])
    {
LABEL_179:
      *(v106 - 9) = 12;
      if ((v107.i8[7] & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_196;
    }

LABEL_195:
    if ((v107.i8[7] & 1) == 0)
    {
LABEL_180:
      if (v107.i8[8])
      {
        goto LABEL_181;
      }

      goto LABEL_197;
    }

LABEL_196:
    *(v106 - 8) = 12;
    if (v107.i8[8])
    {
LABEL_181:
      *(v106 - 7) = 12;
      if ((v107.i8[9] & 1) == 0)
      {
        goto LABEL_182;
      }

      goto LABEL_198;
    }

LABEL_197:
    if ((v107.i8[9] & 1) == 0)
    {
LABEL_182:
      if (v107.i8[10])
      {
        goto LABEL_183;
      }

      goto LABEL_199;
    }

LABEL_198:
    *(v106 - 6) = 12;
    if (v107.i8[10])
    {
LABEL_183:
      *(v106 - 5) = 12;
      if ((v107.i8[11] & 1) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_200;
    }

LABEL_199:
    if ((v107.i8[11] & 1) == 0)
    {
LABEL_184:
      if (v107.i8[12])
      {
        goto LABEL_185;
      }

      goto LABEL_201;
    }

LABEL_200:
    *(v106 - 4) = 12;
    if (v107.i8[12])
    {
LABEL_185:
      *(v106 - 3) = 12;
      if ((v107.i8[13] & 1) == 0)
      {
        goto LABEL_186;
      }

      goto LABEL_202;
    }

LABEL_201:
    if ((v107.i8[13] & 1) == 0)
    {
LABEL_186:
      if ((v107.i8[14] & 1) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_187;
    }

LABEL_202:
    *(v106 - 2) = 12;
    if ((v107.i8[14] & 1) == 0)
    {
LABEL_203:
      if ((v107.i8[15] & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_204;
    }

LABEL_187:
    *(v106 - 1) = 12;
    if ((v107.i8[15] & 1) == 0)
    {
      goto LABEL_171;
    }

LABEL_204:
    *v106 = 12;
LABEL_171:
    ++v105;
    v106 += 16;
  }

  while (v105 != 4);
  if ((*(a1 + 604) & 1) == 0)
  {
    v104 = 12;
    goto LABEL_207;
  }

LABEL_208:
  v108 = (v80 + 542);
  for (i = 540; i != 603; ++i)
  {
    if (*(v108 - 2) == 1 && *(v108 - 1) == 1)
    {
      v110 = *v108;
    }

    else
    {
      v110 = 0;
    }

    *(&v122[-33] + i - 11) = v110 & 1;
    ++v108;
  }

  LOBYTE(v122[0]) = BYTE1(v122[0]);
  v111 = v123;
  *(a1 + 572) = v122[2];
  *(a1 + 588) = v111;
  *(a1 + 604) = HIBYTE(v123);
  result = v122[1];
  *v54 = v122[0];
  *(a1 + 556) = result;
  return result;
}

void webrtc::StatisticsCalculator::PeriodicUmaCount::~PeriodicUmaCount(webrtc::StatisticsCalculator::PeriodicUmaCount *this)
{
  v2 = (this + 8);
  if ((*(this + 31) & 0x8000000000000000) == 0)
  {
    v3 = *(this + 11);
    CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (!CountsLinear)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(this + 11);
  CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (CountsLinear)
  {
LABEL_3:
    webrtc::metrics::HistogramAdd(CountsLinear, v3);
  }

LABEL_4:
  *this = &unk_2882A0018;
  if (*(this + 31) < 0)
  {
    operator delete(*v2);
  }
}

{
  v2 = (this + 8);
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    v3 = *(this + 11);
    CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (!CountsLinear)
    {
LABEL_4:
      *this = &unk_2882A0018;
      if (*(this + 31) < 0)
      {
        operator delete(*v2);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    v3 = *(this + 11);
    CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (!CountsLinear)
    {
      goto LABEL_4;
    }
  }

  webrtc::metrics::HistogramAdd(CountsLinear, v3);
  goto LABEL_4;
}

uint64_t webrtc::StatisticsCalculator::PeriodicUmaAverage::Metric(webrtc::StatisticsCalculator::PeriodicUmaAverage *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    return (*(this + 6) / v1);
  }

  else
  {
    return 0;
  }
}

void webrtc::StatisticsCalculator::PeriodicUmaAverage::~PeriodicUmaAverage(webrtc::StatisticsCalculator::PeriodicUmaAverage *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = (*(this + 6) / v2);
    v4 = (this + 8);
    if ((*(this + 31) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v4 = (this + 8);
    if ((*(this + 31) & 0x8000000000000000) == 0)
    {
LABEL_3:
      CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (!CountsLinear)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (CountsLinear)
  {
LABEL_4:
    webrtc::metrics::HistogramAdd(CountsLinear, v3);
  }

LABEL_5:
  *this = &unk_2882A0018;
  if (*(this + 31) < 0)
  {
    operator delete(*v4);
  }
}

{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = (*(this + 6) / v2);
    v4 = (this + 8);
    if ((*(this + 31) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v4 = (this + 8);
    if ((*(this + 31) & 0x8000000000000000) == 0)
    {
LABEL_3:
      CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (!CountsLinear)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (!CountsLinear)
  {
LABEL_5:
    *this = &unk_2882A0018;
    if (*(this + 31) < 0)
    {
      operator delete(*v4);
    }

    JUMPOUT(0x2743DA540);
  }

LABEL_4:
  webrtc::metrics::HistogramAdd(CountsLinear, v3);
  goto LABEL_5;
}

uint64_t webrtc::StatisticsCalculator::PeriodicUmaAverage::Reset(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

void webrtc::StatisticsCalculator::StatisticsCalculator(uint64_t a1)
{
  *a1 = &unk_2882A00A8;
  *(a1 + 344) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 352) = &unk_2882A0018;
  operator new();
}

void webrtc::StatisticsCalculator::~StatisticsCalculator(webrtc::StatisticsCalculator *this)
{
  *this = &unk_2882A00A8;
  v2 = *(this + 80);
  *(this + 80) = 0;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      MEMORY[0x2743DA540](v3, 0x1060C40C2E02434);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40EDED9539);
  }

  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  v4 = *(this + 70);
  *(this + 70) = 0;
  if (v4)
  {
    v5 = *v4;
    *v4 = 0;
    if (v5)
    {
      MEMORY[0x2743DA540](v5, 0x1060C40C2E02434);
    }

    MEMORY[0x2743DA540](v4, 0x1020C40EDED9539);
  }

  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
    v6 = (this + 472);
    if ((*(this + 495) & 0x8000000000000000) == 0)
    {
LABEL_13:
      v7 = *(this + 127);
      CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (!CountsLinear)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v6 = (this + 472);
    if ((*(this + 495) & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }
  }

  v7 = *(this + 127);
  CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (CountsLinear)
  {
LABEL_14:
    webrtc::metrics::HistogramAdd(CountsLinear, v7);
  }

LABEL_15:
  *(this + 58) = &unk_2882A0018;
  if (*(this + 495) < 0)
  {
    operator delete(*v6);
    v9 = *(this + 114);
    if (v9)
    {
LABEL_17:
      v10 = (*(this + 56) / v9);
      v11 = (this + 408);
      if ((*(this + 431) & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v9 = *(this + 114);
    if (v9)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
  v11 = (this + 408);
  if ((*(this + 431) & 0x8000000000000000) == 0)
  {
LABEL_18:
    v12 = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_32:
  v12 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (v12)
  {
LABEL_19:
    webrtc::metrics::HistogramAdd(v12, v10);
  }

LABEL_20:
  *(this + 50) = &unk_2882A0018;
  if (*(this + 431) < 0)
  {
    operator delete(*v11);
    v13 = (this + 360);
    if ((*(this + 383) & 0x8000000000000000) == 0)
    {
LABEL_22:
      v14 = *(this + 99);
      v15 = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v13 = (this + 360);
    if ((*(this + 383) & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }
  }

  v14 = *(this + 99);
  v15 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (v15)
  {
LABEL_23:
    webrtc::metrics::HistogramAdd(v15, v14);
  }

LABEL_24:
  *(this + 44) = &unk_2882A0018;
  if (*(this + 383) < 0)
  {
    operator delete(*v13);
  }

  std::deque<int>::~deque[abi:sn200100](this + 36);
}

{
  webrtc::StatisticsCalculator::~StatisticsCalculator(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StatisticsCalculator::SecondaryPacketsDiscarded(uint64_t this, uint64_t a2)
{
  *(this + 344) += a2;
  *(this + 96) += a2;
  return this;
}

uint64_t webrtc::StatisticsCalculator::IncreaseCounter(uint64_t this, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 512) != 1)
  {
    return this;
  }

  v10 = 1000 * a2 / a3;
  if (1000 * a2 % a3)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, (1000 * a2 % a3));
    return webrtc::StatisticsCalculator::RelativePacketArrivalDelay(v30, v31);
  }

  v11 = this;
  v12 = *(this + 392) + v10;
  *(this + 392) = v12;
  if (v12 < *(this + 384))
  {
    v13 = *(this + 440) + v10;
    *(this + 440) = v13;
    if (v13 < *(this + 432))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v15 = (*(*(this + 352) + 16))(this + 352);
  if ((*(v11 + 383) & 0x8000000000000000) == 0)
  {
    CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (!CountsLinear)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (CountsLinear)
  {
LABEL_10:
    webrtc::metrics::HistogramAdd(CountsLinear, v15);
  }

LABEL_11:
  (*(*(v11 + 352) + 24))(v11 + 352);
  *(v11 + 392) -= *(v11 + 384);
  v17 = *(v11 + 440) + v10;
  *(v11 + 440) = v17;
  if (v17 < *(v11 + 432))
  {
LABEL_5:
    v14 = *(v11 + 504) + v10;
    *(v11 + 504) = v14;
    if (v14 < *(v11 + 496))
    {
      goto LABEL_20;
    }

LABEL_16:
    v21 = (*(*(v11 + 464) + 16))(v11 + 464);
    if ((*(v11 + 495) & 0x8000000000000000) != 0)
    {
      v22 = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (!v22)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (!v22)
      {
LABEL_19:
        (*(*(v11 + 464) + 24))(v11 + 464);
        *(v11 + 504) -= *(v11 + 496);
        goto LABEL_20;
      }
    }

    webrtc::metrics::HistogramAdd(v22, v21);
    goto LABEL_19;
  }

LABEL_12:
  v18 = (*(*(v11 + 400) + 16))(v11 + 400);
  if ((*(v11 + 431) & 0x8000000000000000) == 0)
  {
    v19 = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (v19)
  {
LABEL_14:
    webrtc::metrics::HistogramAdd(v19, v18);
  }

LABEL_15:
  (*(*(v11 + 400) + 24))(v11 + 400);
  *(v11 + 440) -= *(v11 + 432);
  v20 = *(v11 + 504) + v10;
  *(v11 + 504) = v20;
  if (v20 >= *(v11 + 496))
  {
    goto LABEL_16;
  }

LABEL_20:
  v23 = *(v11 + 280) + a2;
  if (v23 > 60 * a3)
  {
    v23 = 0;
  }

  *(v11 + 280) = v23;
  v24 = *(v11 + 16);
  *(v11 + 8) += a2;
  webrtc::ExpandUmaLogger::UpdateSampleCounter(v11 + 520, v24, a3);
  v25 = *(v11 + 16);
  v26 = *(v11 + 80);
  v27 = v25 >= v26;
  v28 = v25 - v26;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  return webrtc::ExpandUmaLogger::UpdateSampleCounter(v11 + 600, v29, a3);
}

int64x2_t webrtc::StatisticsCalculator::LogDelayedPacketOutageEvent(int64x2_t *this, int a2, int a3)
{
  explicit = atomic_load_explicit(&webrtc::StatisticsCalculator::LogDelayedPacketOutageEvent(int,int)::atomic_histogram_pointer, memory_order_acquire);
  if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v7 = 0, atomic_compare_exchange_strong(&webrtc::StatisticsCalculator::LogDelayedPacketOutageEvent(int,int)::atomic_histogram_pointer, &v7, explicit), explicit))
  {
    webrtc::metrics::HistogramAdd(explicit, a2 / (a3 / 1000));
  }

  ++this[24].i32[3];
  v8 = vdupq_n_s64(1uLL);
  v8.i64[0] = a2;
  result = vaddq_s64(this[7], v8);
  this[7] = result;
  return result;
}

void webrtc::StatisticsCalculator::StoreWaitingTime(webrtc::StatisticsCalculator *this, int a2)
{
  *(this + 56) = *(this + 56) + a2;
  ++*(this + 114);
  v4 = *(this + 41);
  if (v4 == 100)
  {
    v5 = *(this + 37);
    v6 = *(this + 40);
    if (!*(v5 + ((v6 >> 7) & 0x1FFFFFFFFFFFFF8)))
    {
      goto LABEL_13;
    }

    v4 = 99;
    v7 = v6 + 1;
    *(this + 40) = v7;
    *(this + 41) = 99;
    if (v7 >= 0x800)
    {
      operator delete(*v5);
      v5 = (*(this + 37) + 8);
      *(this + 37) = v5;
      v4 = *(this + 41);
      v7 = *(this + 40) - 1024;
      *(this + 40) = v7;
    }
  }

  else
  {
    v5 = *(this + 37);
    v7 = *(this + 40);
  }

  v8 = *(this + 38);
  v9 = ((v8 - v5) << 7) - 1;
  if (v8 == v5)
  {
    v9 = 0;
  }

  if (v9 == v7 + v4)
  {
    std::deque<int>::__add_back_capacity(this + 36);
    v4 = *(this + 41);
    v5 = *(this + 37);
    v8 = *(this + 38);
  }

  if (v8 != v5)
  {
    v10 = *(this + 40) + v4;
    v11 = *(v5 + ((v10 >> 7) & 0x1FFFFFFFFFFFFF8));
    if (v11)
    {
      *(v11 + 4 * (v10 & 0x3FF)) = a2;
      *(this + 41) = v4 + 1;
      *(this + 24) = a2;
      return;
    }
  }

LABEL_13:
  __break(1u);
}

void webrtc::StatisticsCalculator::GetNetworkStatistics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 248);
  v6 = *(a1 + 280);
  if (v5)
  {
    if (v5 >= v6)
    {
      *(a3 + 12) = 0x4000;
      v8 = (a1 + 240);
      v7 = *(a1 + 240);
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    v5 = (v5 << 14) / v6;
  }

  *(a3 + 12) = v5;
  v8 = (a1 + 240);
  v7 = *(a1 + 240);
  if (!v7)
  {
LABEL_9:
    *(a3 + 10) = v7;
    v9 = *(a1 + 256);
    v10 = *(a1 + 264) + v9;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_7:
  if (v7 < v6)
  {
    v7 = (v7 << 14) / v6;
    goto LABEL_9;
  }

  *(a3 + 10) = 0x4000;
  v9 = *(a1 + 256);
  v10 = *(a1 + 264) + v9;
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v10 >= v6)
  {
    *(a3 + 6) = 0x4000;
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v10 = (v10 << 14) / v6;
LABEL_14:
  *(a3 + 6) = v10;
  if (!v9)
  {
LABEL_19:
    *(a3 + 8) = v9;
    v11 = *(a1 + 336);
    if (v11)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_17:
  if (v9 < v6)
  {
    v9 = (v9 << 14) / v6;
    goto LABEL_19;
  }

  *(a3 + 8) = 0x4000;
  v11 = *(a1 + 336);
  if (v11)
  {
LABEL_20:
    if (v6 <= v11)
    {
      *(a3 + 14) = 0x4000;
      v12 = *(a1 + 344) * a2;
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *(a3 + 14) = (v11 << 14) / v6;
      v12 = *(a1 + 344) * a2;
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_27;
  }

LABEL_24:
  *(a3 + 14) = 0;
  v12 = *(a1 + 344) * a2;
  if (!v12)
  {
LABEL_29:
    *(a3 + 16) = v12;
    v14 = *(a1 + 328);
    if (v14)
    {
      goto LABEL_30;
    }

LABEL_35:
    v28 = 0;
    *(a3 + 28) = -1;
    *(a3 + 20) = -1;
    v29 = *(a1 + 296);
    v30 = *(a1 + 304);
    goto LABEL_46;
  }

LABEL_27:
  v13 = (v11 + v12);
  if (v12 < v13)
  {
    v12 = (v12 << 14) / v13;
    goto LABEL_29;
  }

  *(a3 + 16) = 0x4000;
  v14 = *(a1 + 328);
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_30:
  v15 = *(a1 + 320);
  v16 = (v15 >> 7) & 0x1FFFFFFFFFFFFF8;
  v17 = *(a1 + 296);
  v18 = *(a1 + 304);
  v19 = (v17 + v16);
  if (v18 == v17)
  {
    v25 = 0;
    v21 = 0;
    v24 = (v17 + 8 * ((v15 + v14) >> 10));
LABEL_37:
    v27 = 0;
    goto LABEL_38;
  }

  v20 = v15 & 0x3FF;
  v21 = (*v19 + 4 * v20);
  v22 = v15 + v14;
  v23 = (v22 >> 7) & 0x1FFFFFFFFFFFFF8;
  v24 = (v17 + v23);
  v25 = *(v17 + v23) + 4 * (v22 & 0x3FF);
  if (v25 == v21)
  {
    goto LABEL_37;
  }

  v26 = v22 & 0x3FF | ((v23 - v16) << 7);
  if (v26 == v20)
  {
    goto LABEL_37;
  }

  v27 = 63 - __clz(v26 - v20);
LABEL_38:
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(v19, v21, v24, v25, 2 * v27, 1);
  v28 = *(a1 + 328);
  v31 = (v28 - 1) >> 1;
  if (v28 <= v31)
  {
LABEL_60:
    __break(1u);
    return;
  }

  v32 = *(a1 + 320);
  v33 = v32 + v31;
  v34 = ((v32 + v31) >> 7) & 0x1FFFFFFFFFFFFF8;
  v29 = *(a1 + 296);
  v30 = *(a1 + 304);
  *(a3 + 24) = ((*(v29 + (((v32 + (v28 >> 1)) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v32 + (v28 >> 1)) & 0x3FF] + (*(v29 + v34))[v33 & 0x3FF]) / 2;
  v35 = &v29[v32 >> 10];
  v36 = *v35;
  v37 = (*v35 + 4 * (v32 & 0x3FF));
  *(a3 + 28) = *v37;
  *(a3 + 32) = (*(v29 + (((v32 + v28 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v32 + v28 - 1) & 0x3FF];
  v38 = 0.0;
  if (v30 != v29)
  {
    v39 = *(v29 + (((v32 + v28) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v32 + v28) & 0x3FF);
    while (v37 != v39)
    {
      v41 = *v37++;
      v40 = v41;
      if (v37 - v36 == 4096)
      {
        v42 = v35[1];
        ++v35;
        v36 = v42;
        v37 = v42;
      }

      v38 = v38 + v40;
    }
  }

  *(a3 + 20) = (v38 / v28);
LABEL_46:
  *(a1 + 280) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *v8 = 0u;
  v8[1] = 0u;
  v43 = v30 - v29;
  if (v43)
  {
    v44 = *(a1 + 320);
    v45 = &v29[v44 >> 10];
    v46 = *v45;
    v47 = *v45 + 4 * (v44 & 0x3FF);
    v48 = *(v29 + (((v44 + v28) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v44 + v28) & 0x3FF);
    while (v47 != v48)
    {
      if (!v47)
      {
        goto LABEL_60;
      }

      v47 += 4;
      if (v47 - v46 == 4096)
      {
        v49 = v45[1];
        ++v45;
        v46 = v49;
        v47 = v49;
      }
    }
  }

  *(a1 + 328) = 0;
  v50 = v43 >> 3;
  if ((v43 >> 3) >= 3)
  {
    do
    {
      operator delete(*v29);
      v51 = *(a1 + 304);
      v29 = (*(a1 + 296) + 8);
      *(a1 + 296) = v29;
      v50 = (v51 - v29) >> 3;
    }

    while (v50 > 2);
  }

  if (v50 == 1)
  {
    v52 = 512;
  }

  else
  {
    if (v50 != 2)
    {
      return;
    }

    v52 = 1024;
  }

  *(a1 + 320) = v52;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(unint64_t result, int *a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 == a2)
  {
    return result;
  }

  while (1)
  {
LABEL_3:
    v6 = *a3;
    v7 = (a4 - *a3) >> 2;
    v8 = *result;
    v9 = a2 - *result;
    v10 = v9 >> 2;
    v11 = v7 + ((a3 - result) << 7) - (v9 >> 2);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          if (v10 < 0)
          {
            v108 = (*(result - 8 * ((1022 - v10) >> 10)) + 4 * (~(1022 - v10) & 0x3FF));
          }

          else
          {
            v108 = (*(result + (((v10 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + 1) & 0x3FF));
          }

          if (a4 == v6)
          {
            a4 = *(a3 - 1) + 4096;
          }

          v181 = *v108;
          v182 = *a2;
          v183 = *(a4 - 4);
          if (*v108 >= *a2)
          {
            if (v183 < v181)
            {
              *v108 = v183;
              *(a4 - 4) = v181;
              v184 = *a2;
              if (*v108 < *a2)
              {
                *a2 = *v108;
                *v108 = v184;
              }
            }
          }

          else if (v183 >= v181)
          {
            *a2 = v181;
            *v108 = v182;
            v194 = *(a4 - 4);
            if (v194 < v182)
            {
              *v108 = v194;
              *(a4 - 4) = v182;
            }
          }

          else
          {
            *a2 = v183;
            *(a4 - 4) = v182;
          }

          return result;
        case 4:
          if ((v10 & 0x8000000000000000) == 0)
          {
            v8 = (*(result + (((v10 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + 1) & 0x3FF));
            v106 = v10 + 2;
            goto LABEL_316;
          }

          v8 = (*(result - 8 * ((1022 - v10) >> 10)) + 4 * (~(1022 - v10) & 0x3FF));
          if (v9 == -4)
          {
            v106 = 1;
LABEL_316:
            v170 = (*(result + ((v106 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v106 & 0x3FF));
            if (a4 == v6)
            {
LABEL_317:
              a4 = *(a3 - 1) + 4096;
            }
          }

          else
          {
            v170 = (*(result - 8 * ((1021 - v10) >> 10)) + 4 * (~(1021 - v10) & 0x3FF));
            if (a4 == v6)
            {
              goto LABEL_317;
            }
          }

          v171 = *v8;
          v172 = *a2;
          v173 = *v170;
          if (*v8 >= *a2)
          {
            if (v173 >= v171)
            {
              v171 = *v170;
            }

            else
            {
              *v8 = v173;
              *v170 = v171;
              v174 = *a2;
              if (*v8 < *a2)
              {
                *a2 = *v8;
                *v8 = v174;
                v171 = *v170;
              }
            }
          }

          else
          {
            if (v173 < v171)
            {
              *a2 = v173;
              goto LABEL_346;
            }

            *a2 = v171;
            *v8 = v172;
            v171 = *v170;
            if (*v170 < v172)
            {
              *v8 = v171;
LABEL_346:
              *v170 = v172;
              v171 = v172;
            }
          }

          v185 = *(a4 - 4);
          if (v185 >= v171)
          {
            return result;
          }

          *v170 = v185;
          *(a4 - 4) = v171;
          v186 = *v8;
          if (*v170 >= *v8)
          {
            return result;
          }

          *v8 = *v170;
          *v170 = v186;
LABEL_363:
          v193 = *a2;
          if (*v8 < *a2)
          {
            *a2 = *v8;
            *v8 = v193;
          }

          return result;
        case 5:
          if ((v10 & 0x8000000000000000) == 0)
          {
            v8 = (*(result + (((v10 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + 1) & 0x3FF));
            v107 = v10 + 2;
            goto LABEL_326;
          }

          v8 = (*(result - 8 * ((1022 - v10) >> 10)) + 4 * (~(1022 - v10) & 0x3FF));
          if (v9 == -4)
          {
            v107 = 1;
LABEL_326:
            v38 = *(result + ((v107 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v107 & 0x3FF);
            v175 = v10 + 3;
LABEL_327:
            v176 = (*(result + ((v175 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v175 & 0x3FF));
            if (a4 == v6)
            {
LABEL_328:
              a4 = *(a3 - 1) + 4096;
            }

LABEL_329:
            v177 = *v8;
            v178 = *a2;
            v179 = *v38;
            if (*v8 >= *a2)
            {
              if (v179 >= v177)
              {
                v177 = *v38;
              }

              else
              {
                *v8 = v179;
                *v38 = v177;
                v180 = *a2;
                if (*v8 < *a2)
                {
                  *a2 = *v8;
                  *v8 = v180;
                  v177 = *v38;
                }
              }
            }

            else
            {
              if (v179 < v177)
              {
                *a2 = v179;
                goto LABEL_353;
              }

              *a2 = v177;
              *v8 = v178;
              v177 = *v38;
              if (*v38 < v178)
              {
                *v8 = v177;
LABEL_353:
                *v38 = v178;
                v177 = v178;
              }
            }

            if (*v176 < v177)
            {
              *v38 = *v176;
              *v176 = v177;
              v187 = *v8;
              if (*v38 < *v8)
              {
                *v8 = *v38;
                *v38 = v187;
                v188 = *a2;
                if (*v8 < *a2)
                {
                  *a2 = *v8;
                  *v8 = v188;
                }
              }
            }

            v189 = *(a4 - 4);
            v190 = *v176;
            if (v189 >= *v176)
            {
              return result;
            }

            *v176 = v189;
            *(a4 - 4) = v190;
            v191 = *v38;
            if (*v176 >= *v38)
            {
              return result;
            }

            *v38 = *v176;
            *v176 = v191;
            v192 = *v8;
            if (*v38 >= *v8)
            {
              return result;
            }

            *v8 = *v38;
            *v38 = v192;
            goto LABEL_363;
          }

          v38 = *(result - 8 * ((1021 - v10) >> 10)) + 4 * (~(1021 - v10) & 0x3FF);
          if (v10 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v175 = 1;
            goto LABEL_327;
          }

LABEL_388:
          v176 = (*(result - 8 * ((1020 - v10) >> 10)) + 4 * (~(1020 - v10) & 0x3FF));
          if (a4 == v6)
          {
            goto LABEL_328;
          }

          goto LABEL_329;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        if (a4 == v6)
        {
          a4 = *(a3 - 1) + 4096;
        }

        v104 = *(a4 - 4);
        v105 = *a2;
        if (v104 < *a2)
        {
          *a2 = v104;
          *(a4 - 4) = v105;
        }

        return result;
      }
    }

    if (v11 <= 23)
    {
      if (a6)
      {
        if (a2 != a4)
        {
          for (i = (a2 + 1); ; i += 4)
          {
            if (i - v8 == 4096)
            {
              v110 = *(result + 8);
              result += 8;
              v8 = v110;
              i = v110;
            }

            if (i == a4)
            {
              break;
            }

            v111 = result;
            v112 = i;
            if (i == v8)
            {
              v111 = (result - 8);
              v112 = *(result - 8) + 4096;
            }

            v115 = *(v112 - 4);
            v113 = (v112 - 4);
            v114 = v115;
            v116 = *i;
            if (*i < v115)
            {
              v117 = i;
              while (1)
              {
                v119 = v113;
                *v117 = v114;
                if (v113 == a2)
                {
                  break;
                }

                if (v113 == *v111)
                {
                  v118 = *--v111;
                  v113 = (v118 + 4092);
                  v114 = *(v118 + 4092);
                  v117 = v119;
                  if (v116 >= v114)
                  {
                    break;
                  }
                }

                else
                {
                  --v113;
                  v114 = *(v119 - 1);
                  v117 = v119;
                  if (v116 >= v114)
                  {
                    break;
                  }
                }
              }

              *v119 = v116;
            }
          }
        }

        return result;
      }

      if (a2 == a4)
      {
        return result;
      }

      if (v10 < 2)
      {
        v6 = *(result - 8 * ((1024 - v10) >> 10)) + 4 * (~(1024 - v10) & 0x3FF);
        if (v10 < 0)
        {
          v206 = 1022 - v10;
          v207 = ~v206;
          v10 = result - 8 * (v206 >> 10);
          v8 = *v10;
          v38 = *v10 + 4 * (v207 & 0x3FF);
          if (v38 == a4)
          {
            return result;
          }

LABEL_375:
          while (1)
          {
            v196 = (v38 - v8) >> 2;
            if (v196 < 2)
            {
              v199 = 1024 - v196;
              v197 = ~v199;
              v198 = (v10 - 8 * (v199 >> 10));
            }

            else
            {
              v197 = v196 - 1;
              v198 = (v10 + 8 * ((v196 - 1) >> 10));
            }

            v200 = *v198;
            v201 = &(*v198)[v197 & 0x3FF];
            v202 = *v38;
            result = *v201;
            if (*v38 < result)
            {
              break;
            }

LABEL_385:
            v38 += 4;
            if (v38 - v8 == 4096)
            {
              v205 = *(v10 + 8);
              v10 += 8;
              v8 = v205;
              v38 = v205;
            }

            if (v38 == a4)
            {
              return result;
            }
          }

          a2 = v38;
          while (1)
          {
            *a2 = result;
            if (v201 == v6)
            {
              goto LABEL_387;
            }

            v204 = v201;
            if (v201 == v200)
            {
              v203 = *--v198;
              v200 = v203;
              v201 = v203 + 1023;
              result = v203[1023];
              a2 = v204;
              if (v202 >= result)
              {
                goto LABEL_384;
              }
            }

            else
            {
              --v201;
              result = *(v204 - 1);
              a2 = v204;
              if (v202 >= result)
              {
LABEL_384:
                *v204 = v202;
                goto LABEL_385;
              }
            }
          }
        }
      }

      else
      {
        v6 = *(result + (((v10 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 - 1) & 0x3FF);
      }

      v195 = v10 + 1;
      v10 = result + 8 * ((v10 + 1) >> 10);
      v8 = *v10;
      v38 = *v10 + 4 * (v195 & 0x3FF);
      if (v38 != a4)
      {
        goto LABEL_375;
      }

      return result;
    }

    if (!a5)
    {
      if (a2 == a4)
      {
        return result;
      }

      v120 = v12 >> 1;
      v121 = v12 >> 1;
      while (1)
      {
        if (!v121)
        {
          v126 = 0;
          v125 = a2;
          v127 = 1;
          v128 = v10 + 1;
          if (v10 + 1 < 1)
          {
            goto LABEL_243;
          }

          goto LABEL_236;
        }

        v123 = v121 + v10;
        if (v121 + v10 < 1)
        {
          v137 = 1023 - v123;
          v124 = (result - 8 * (v137 >> 10));
          v125 = (*v124 + 4 * (~v137 & 0x3FF));
          if (v125 == a2)
          {
LABEL_248:
            v126 = 0;
            v127 = 1;
            v128 = v10 + 1;
            if (v10 + 1 < 1)
            {
              goto LABEL_243;
            }

            goto LABEL_236;
          }
        }

        else
        {
          v124 = (result + 8 * (v123 >> 10));
          v125 = (*v124 + 4 * (v123 & 0x3FF));
          if (v125 == a2)
          {
            goto LABEL_248;
          }
        }

        v126 = ((v124 - result) << 7) - v10 + ((v125 - *v124) >> 2);
        if (v120 < v126)
        {
          goto LABEL_230;
        }

        v127 = (2 * v126) | 1;
        v128 = v127 + v10;
        if (v127 + v10 < 1)
        {
LABEL_243:
          v136 = 1023 - v128;
          v129 = (result - 8 * (v136 >> 10));
          v130 = *v129;
          v131 = (*v129 + 4 * (~v136 & 0x3FFLL));
          v132 = 2 * v126 + 2;
          if (v132 >= v11)
          {
LABEL_244:
            v132 = v127;
LABEL_245:
            v134 = *v131;
            v135 = *v125;
            if (*v131 >= *v125)
            {
              goto LABEL_255;
            }

            goto LABEL_230;
          }

          goto LABEL_237;
        }

LABEL_236:
        v129 = (result + 8 * (v128 >> 10));
        v130 = *v129;
        v131 = (*v129 + 4 * (v128 & 0x3FF));
        v132 = 2 * v126 + 2;
        if (v132 >= v11)
        {
          goto LABEL_244;
        }

LABEL_237:
        v133 = (v131 - v130) >> 2;
        if (v133 < 0)
        {
          if (*v131 >= *(v129[-((1022 - v133) >> 10)] + 4 * (~(1022 - v133) & 0x3FF)))
          {
LABEL_251:
            v132 = v127;
            v134 = *v131;
            v135 = *v125;
            if (*v131 < *v125)
            {
              goto LABEL_230;
            }

LABEL_255:
            while (2)
            {
              *v125 = v134;
              v125 = v131;
              if (v120 < v132)
              {
LABEL_229:
                *v125 = v135;
                goto LABEL_230;
              }

              v138 = (2 * v132) | 1;
              v139 = v138 + v10;
              if (v138 + v10 >= 1)
              {
                v140 = (result + 8 * (v139 >> 10));
                v141 = *v140;
                v131 = (*v140 + 4 * (v139 & 0x3FF));
                v132 = 2 * v132 + 2;
                if (v132 >= v11)
                {
                  goto LABEL_253;
                }

LABEL_260:
                v143 = (v131 - v141) >> 2;
                if (v143 < 0)
                {
                  if (*v131 >= *(v140[-((1022 - v143) >> 10)] + 4 * (~(1022 - v143) & 0x3FF)))
                  {
                    goto LABEL_253;
                  }

LABEL_264:
                  if ((++v131 - v141) == 4096)
                  {
                    v131 = v140[1];
                  }
                }

                else
                {
                  if (*v131 < *(*(v140 + (((v143 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v143 + 1) & 0x3FF)))
                  {
                    goto LABEL_264;
                  }

LABEL_253:
                  v132 = v138;
                }

                v134 = *v131;
                if (*v131 < v135)
                {
                  goto LABEL_229;
                }

                continue;
              }

              break;
            }

            v142 = 1023 - v139;
            v140 = (result - 8 * (v142 >> 10));
            v141 = *v140;
            v131 = (*v140 + 4 * (~v142 & 0x3FFLL));
            v132 = 2 * v132 + 2;
            if (v132 < v11)
            {
              goto LABEL_260;
            }

            goto LABEL_253;
          }
        }

        else if (*v131 >= *(*(v129 + (((v133 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v133 + 1) & 0x3FF)))
        {
          goto LABEL_251;
        }

        if ((++v131 - v130) != 4096)
        {
          goto LABEL_245;
        }

        v131 = v129[1];
        v134 = *v131;
        v135 = *v125;
        if (*v131 >= *v125)
        {
          goto LABEL_255;
        }

LABEL_230:
        v122 = v121-- <= 0;
        if (v122)
        {
          while (1)
          {
            v144 = 0;
            v145 = *a2;
            v146 = a2;
            v147 = result;
            do
            {
              v148 = v146;
              if (v144 == -1)
              {
                v149 = -1;
                v144 = 0;
                if (v11 <= 0)
                {
                  goto LABEL_269;
                }
              }

              else
              {
                v150 = v144 + 1 + v146 - *v147;
                if (v150 < 1)
                {
                  v151 = 1023 - v150;
                  v147 -= v151 >> 10;
                  v146 = &(*v147)[~v151 & 0x3FF];
                  v149 = (2 * v144) | 1;
                  v144 = 2 * v144 + 2;
                  if (v144 >= v11)
                  {
                    goto LABEL_269;
                  }
                }

                else
                {
                  v147 += v150 >> 10;
                  v146 = &(*v147)[v150 & 0x3FF];
                  v149 = (2 * v144) | 1;
                  v144 = 2 * v144 + 2;
                  if (v144 >= v11)
                  {
                    goto LABEL_269;
                  }
                }
              }

              v152 = v146 - *v147;
              if (v152 < 0)
              {
                if (*v146 >= v147[-((1022 - v152) >> 10)][~(1022 - v152) & 0x3FF])
                {
LABEL_269:
                  v144 = v149;
                  goto LABEL_270;
                }
              }

              else if (*v146 >= (*(v147 + (((v152 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v152 + 1) & 0x3FF])
              {
                goto LABEL_269;
              }

              if (++v146 - *v147 == 4096)
              {
                v153 = v147[1];
                ++v147;
                v146 = v153;
              }

LABEL_270:
              *v148 = *v146;
            }

            while (v144 <= ((v11 - 2) >> 1));
            if (v6 != a4)
            {
              v154 = (a4 - 4);
              if (v146 != (a4 - 4))
              {
                goto LABEL_286;
              }

LABEL_295:
              *v146 = v145;
              goto LABEL_307;
            }

            v154 = (*(a3 - 1) + 4092);
            if (v146 == v154)
            {
              goto LABEL_295;
            }

LABEL_286:
            *v146 = *v154;
            v155 = v146 + 1;
            v156 = *v147;
            if (v155 - *v147 == 4096)
            {
              v157 = v147[1];
              ++v147;
              v156 = v157;
              v155 = v157;
            }

            *v154 = v145;
            if (v155 != a2)
            {
              v158 = v155 - v156 - v10 + ((v147 - result) << 7);
              v159 = v158 - 2;
              if (v158 >= 2)
              {
                v160 = v159 >> 1;
                v161 = a2;
                if (v159 >= 2)
                {
                  v166 = v160 + v10;
                  if ((v160 + v10) < 1)
                  {
                    v161 = (*(result - 8 * ((1023 - v166) >> 10)) + 4 * (~(1023 - v166) & 0x3FF));
                    if (v156 != v155)
                    {
                      goto LABEL_292;
                    }
                  }

                  else
                  {
                    v161 = (*(result + ((v166 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v166 & 0x3FF));
                    if (v156 != v155)
                    {
                      goto LABEL_292;
                    }
                  }
                }

                else if (v156 != v155)
                {
LABEL_292:
                  v164 = *(v155 - 1);
                  v162 = v155 - 1;
                  v163 = v164;
                  v165 = *v161;
                  if (*v161 >= v164)
                  {
                    goto LABEL_307;
                  }

                  do
                  {
LABEL_302:
                    *v162 = v165;
                    v162 = v161;
                    if (!v160)
                    {
                      break;
                    }

                    v167 = (v160 - 1) >> 1;
                    v161 = a2;
                    if (v160 >= 3)
                    {
                      v168 = v167 + v10;
                      if ((v167 + v10) < 1)
                      {
                        v161 = (*(result - 8 * ((1023 - v168) >> 10)) + 4 * (~(1023 - v168) & 0x3FF));
                      }

                      else
                      {
                        v161 = (*(result + ((v168 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v168 & 0x3FF));
                      }
                    }

                    v165 = *v161;
                    v160 = v167;
                  }

                  while (*v161 < v163);
                  *v162 = v163;
                  goto LABEL_307;
                }

                v162 = *(v147 - 1) + 1023;
                v163 = *v162;
                v165 = *v161;
                if (*v161 >= *v162)
                {
                  goto LABEL_307;
                }

                goto LABEL_302;
              }
            }

LABEL_307:
            if (v6 == a4)
            {
              v169 = *--a3;
              v6 = v169;
              a4 = v169 + 4096;
            }

            a4 -= 4;
            v122 = v11-- <= 2;
            if (v122)
            {
              return result;
            }
          }
        }
      }
    }

    v13 = v11 >> 1;
    v14 = (v11 >> 1) + v10;
    if (v11 >= 0x81)
    {
      break;
    }

    if (v14 < 1)
    {
      v22 = (*(result - 8 * ((1023 - v14) >> 10)) + 4 * (~(1023 - v14) & 0x3FF));
      if (v7 >= 2)
      {
LABEL_21:
        v23 = (*(a3 + (((v7 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v7 - 1) & 0x3FF));
        v24 = *a2;
        v25 = *v22;
        v26 = *v23;
        if (*a2 >= *v22)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v22 = (*(result + ((v14 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v14 & 0x3FF));
      if (v7 >= 2)
      {
        goto LABEL_21;
      }
    }

    v23 = (a3[-((1024 - v7) >> 10)] + 4 * (~(1024 - v7) & 0x3FF));
    v24 = *a2;
    v25 = *v22;
    v26 = *v23;
    if (*a2 >= *v22)
    {
LABEL_22:
      if (v26 < v24)
      {
        *a2 = v26;
        *v23 = v24;
        v27 = *v22;
        if (*a2 < *v22)
        {
          *v22 = *a2;
          *a2 = v27;
          --a5;
          if (a6)
          {
            goto LABEL_53;
          }

          goto LABEL_136;
        }
      }

      goto LABEL_52;
    }

LABEL_32:
    if (v26 >= v24)
    {
      *v22 = v24;
      *a2 = v25;
      if (*v23 >= v25)
      {
        goto LABEL_52;
      }

      *a2 = *v23;
    }

    else
    {
      *v22 = v26;
    }

    *v23 = v25;
LABEL_52:
    --a5;
    if (a6)
    {
      goto LABEL_53;
    }

LABEL_136:
    if (v10 < 2)
    {
      v79 = *(*(result - 8 * ((1024 - v10) >> 10)) + 4 * (~(1024 - v10) & 0x3FF));
      v10 = *a2;
      if (v79 < v10)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v78 = *(*(result + (((v10 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 - 1) & 0x3FF));
      v10 = *a2;
      if (v78 < v10)
      {
        goto LABEL_54;
      }
    }

    if (v7 < 2)
    {
      if (v10 >= *(a3[-((1024 - v7) >> 10)] + 4 * (~(1024 - v7) & 0x3FF)))
      {
        goto LABEL_142;
      }

LABEL_151:
      v38 = a2;
      while (1)
      {
        v38 += 4;
        if (v38 - v8 == 4096)
        {
          v81 = *(result + 8);
          result += 8;
          v8 = v81;
          v38 = v81;
        }

        if (v38 == a4)
        {
          break;
        }

        if (v10 < *v38)
        {
          goto LABEL_156;
        }
      }

LABEL_387:
      __break(1u);
      goto LABEL_388;
    }

    if (v10 < *(*(a3 + (((v7 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v7 - 1) & 0x3FF)))
    {
      goto LABEL_151;
    }

LABEL_142:
    v38 = a2;
    do
    {
      v38 += 4;
      if (v38 - v8 == 4096)
      {
        v80 = *(result + 8);
        result += 8;
        v8 = v80;
        v38 = v80;
      }
    }

    while ((result < a3 || result == a3 && v38 < a4) && v10 >= *v38);
LABEL_156:
    if (result < a3 || result == a3 && v38 < a4)
    {
      v82 = a3;
      v83 = a4;
      while (v83 != a2)
      {
        if (v83 == v6)
        {
          v85 = *--v82;
          v6 = v85;
          v83 = (v85 + 4096);
        }

        v84 = *--v83;
        if (v10 >= v84)
        {
          goto LABEL_173;
        }
      }

      goto LABEL_387;
    }

    v82 = a3;
    v83 = a4;
LABEL_173:
    if (result < v82 || result == v82 && v38 < v83)
    {
      v95 = *v38;
      *v38 = *v83;
      *v83 = v95;
      while (1)
      {
        v38 += 4;
        if (v38 - v8 == 4096)
        {
          v96 = *(result + 8);
          result += 8;
          v8 = v96;
          v38 = v96;
        }

        if (v38 == a4)
        {
          goto LABEL_387;
        }

        if (v10 < *v38)
        {
          while (v83 != a2)
          {
            if (v83 == v6)
            {
              v98 = *--v82;
              v6 = v98;
              v83 = (v98 + 4096);
            }

            v97 = *--v83;
            if (v10 >= v97)
            {
              goto LABEL_173;
            }
          }

          goto LABEL_387;
        }
      }
    }

    v99 = (v38 - v8) >> 2;
    if (v99 < 2)
    {
      v100 = (*(result - 8 * ((1024 - v99) >> 10)) + 4 * (~(1024 - v99) & 0x3FF));
    }

    else
    {
      v100 = (*(result + (((v99 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v99 - 1) & 0x3FF));
    }

    if (v100 != a2)
    {
      *a2 = *v100;
    }

    a6 = 0;
    *v100 = v10;
    a2 = v38;
    if (a4 == v38)
    {
      return result;
    }
  }

  if (v14 < 1)
  {
    v15 = (*(result - 8 * ((1023 - v14) >> 10)) + 4 * (~(1023 - v14) & 0x3FF));
    v16 = v7 - 2;
    if (v7 < 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    v17 = (*(a3 + (((v7 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v7 - 1) & 0x3FF));
    v18 = *v15;
    v19 = *a2;
    v20 = *v17;
    if (*v15 >= *a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    if (v20 >= v18)
    {
      *a2 = v18;
      *v15 = v19;
      if (*v17 >= v19)
      {
        goto LABEL_37;
      }

      *v15 = *v17;
    }

    else
    {
      *a2 = v20;
    }

    *v17 = v19;
  }

  else
  {
    v15 = (*(result + ((v14 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v14 & 0x3FF));
    v16 = v7 - 2;
    if (v7 >= 2)
    {
      goto LABEL_15;
    }

LABEL_27:
    v17 = (a3[-((1024 - v7) >> 10)] + 4 * (~(1024 - v7) & 0x3FF));
    v18 = *v15;
    v19 = *a2;
    v20 = *v17;
    if (*v15 < *a2)
    {
      goto LABEL_28;
    }

LABEL_16:
    if (v20 < v18)
    {
      *v15 = v20;
      *v17 = v18;
      v21 = *a2;
      if (*v15 < *a2)
      {
        *a2 = *v15;
        *v15 = v21;
      }
    }
  }

LABEL_37:
  if (v10 < 0)
  {
    v28 = (*(result - 8 * ((1022 - v10) >> 10)) + 4 * (~(1022 - v10) & 0x3FF));
    v29 = v10 + v13 - 1;
    v30 = v29 >> 7;
    if (v29 < 1)
    {
      goto LABEL_45;
    }

LABEL_39:
    v31 = (*(result + (v30 & 0x1FFFFFFFFFFFFF8)) + 4 * (v29 & 0x3FF));
    v32 = v7 - 3;
    if (v7 >= 3)
    {
      goto LABEL_40;
    }

LABEL_46:
    v33 = (a3[-((1025 - v7) >> 10)] + 4 * (~(1025 - v7) & 0x3FF));
    v34 = *v31;
    v35 = *v28;
    v36 = *v33;
    if (*v31 < *v28)
    {
      goto LABEL_47;
    }

LABEL_41:
    if (v36 < v34)
    {
      *v31 = v36;
      *v33 = v34;
      v37 = *v28;
      if (*v31 < *v28)
      {
        *v28 = *v31;
        *v31 = v37;
      }
    }
  }

  else
  {
    v28 = (*(result + (((v10 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + 1) & 0x3FF));
    v29 = v10 + v13 - 1;
    v30 = v29 >> 7;
    if (v29 >= 1)
    {
      goto LABEL_39;
    }

LABEL_45:
    v31 = (*(result - 8 * ((1023 - v29) >> 10)) + 4 * (~(1023 - v29) & 0x3FF));
    v32 = v7 - 3;
    if (v7 < 3)
    {
      goto LABEL_46;
    }

LABEL_40:
    v33 = (*(a3 + ((v16 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v16 & 0x3FF));
    v34 = *v31;
    v35 = *v28;
    v36 = *v33;
    if (*v31 >= *v28)
    {
      goto LABEL_41;
    }

LABEL_47:
    if (v36 < v34)
    {
      *v28 = v36;
      goto LABEL_101;
    }

    *v28 = v34;
    *v31 = v35;
    if (*v33 < v35)
    {
      *v31 = *v33;
LABEL_101:
      *v33 = v35;
    }
  }

  if (v10 < -1)
  {
    v58 = (*(result - 8 * ((1021 - v10) >> 10)) + 4 * (~(1021 - v10) & 0x3FF));
    v59 = v10 + v13 + 1;
    v60 = v59 >> 7;
    if (v59 >= 1)
    {
      goto LABEL_110;
    }

LABEL_104:
    v61 = (*(result - 8 * ((1023 - v59) >> 10)) + 4 * (~(1023 - v59) & 0x3FF));
    if (v7 < 4)
    {
      goto LABEL_105;
    }

LABEL_111:
    v62 = (*(a3 + ((v32 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v32 & 0x3FF));
    v63 = *v61;
    v64 = *v58;
    v65 = *v62;
    if (*v61 < *v58)
    {
      goto LABEL_112;
    }

LABEL_106:
    if (v65 < v63)
    {
      *v61 = v65;
      *v62 = v63;
      v66 = *v58;
      if (*v61 < *v58)
      {
        *v58 = *v61;
        *v61 = v66;
      }
    }
  }

  else
  {
    v58 = (*(result + (((v10 + 2) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + 2) & 0x3FF));
    v59 = v10 + v13 + 1;
    v60 = v59 >> 7;
    if (v59 < 1)
    {
      goto LABEL_104;
    }

LABEL_110:
    v61 = (*(result + (v60 & 0x1FFFFFFFFFFFFF8)) + 4 * (v59 & 0x3FF));
    if (v7 >= 4)
    {
      goto LABEL_111;
    }

LABEL_105:
    v62 = (a3[-((1026 - v7) >> 10)] + 4 * (~(1026 - v7) & 0x3FF));
    v63 = *v61;
    v64 = *v58;
    v65 = *v62;
    if (*v61 >= *v58)
    {
      goto LABEL_106;
    }

LABEL_112:
    if (v65 < v63)
    {
      *v58 = v65;
      goto LABEL_116;
    }

    *v58 = v63;
    *v61 = v64;
    if (*v62 < v64)
    {
      *v61 = *v62;
LABEL_116:
      *v62 = v64;
    }
  }

  if (v29 < 1)
  {
    v67 = (*(result - 8 * ((1023 - v29) >> 10)) + 4 * (~(1023 - v29) & 0x3FF));
    if (v14 < 1)
    {
      goto LABEL_124;
    }

LABEL_119:
    v68 = (*(result + ((v14 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v14 & 0x3FF));
    if (v59 >= 1)
    {
      goto LABEL_120;
    }

LABEL_125:
    v69 = (*(result - 8 * ((1023 - v59) >> 10)) + 4 * (~(1023 - v59) & 0x3FF));
    v70 = *v68;
    v71 = *v67;
    v72 = *v69;
    if (*v68 >= *v67)
    {
      goto LABEL_126;
    }

LABEL_121:
    if (v72 >= v70)
    {
      *v67 = v70;
      *v68 = v71;
      if (*v69 >= v71)
      {
        goto LABEL_132;
      }

      *v68 = *v69;
    }

    else
    {
      *v67 = v72;
    }

    *v69 = v71;
  }

  else
  {
    v67 = (*(result + (v30 & 0x1FFFFFFFFFFFFF8)) + 4 * (v29 & 0x3FF));
    if (v14 >= 1)
    {
      goto LABEL_119;
    }

LABEL_124:
    v68 = (*(result - 8 * ((1023 - v14) >> 10)) + 4 * (~(1023 - v14) & 0x3FF));
    if (v59 < 1)
    {
      goto LABEL_125;
    }

LABEL_120:
    v69 = (*(result + (v60 & 0x1FFFFFFFFFFFFF8)) + 4 * (v59 & 0x3FF));
    v70 = *v68;
    v71 = *v67;
    v72 = *v69;
    if (*v68 < *v67)
    {
      goto LABEL_121;
    }

LABEL_126:
    if (v72 < v70)
    {
      *v68 = v72;
      *v69 = v70;
      v73 = *v67;
      if (*v68 < *v67)
      {
        *v67 = *v68;
        *v68 = v73;
      }
    }
  }

LABEL_132:
  if (v14 < 1)
  {
    v75 = 1023 - v14;
    LOWORD(v14) = ~(1023 - v14);
    v74 = *(result - 8 * (v75 >> 10));
  }

  else
  {
    v74 = *(result + ((v14 >> 7) & 0x1FFFFFFFFFFFFF8));
  }

  v76 = (v74 + 4 * (v14 & 0x3FF));
  v77 = *a2;
  *a2 = *v76;
  *v76 = v77;
  --a5;
  if ((a6 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_53:
  v10 = *a2;
LABEL_54:
  v38 = result;
  v39 = a2;
  do
  {
    if (++v39 - v8 == 4096)
    {
      v40 = *(v38 + 8);
      v38 += 8;
      v8 = v40;
      v39 = v40;
    }

    if (v39 == a4)
    {
      goto LABEL_387;
    }

    v41 = *v39;
  }

  while (*v39 < v10);
  v42 = v39 - v8;
  if (v42 < 2)
  {
    if ((*(v38 - 8 * ((1024 - v42) >> 10)) + 4 * (~(1024 - v42) & 0x3FF)) != a2)
    {
LABEL_61:
      v43 = a3;
      v44 = a4;
      while (v44 != a2)
      {
        if (v44 == v6)
        {
          v46 = *--v43;
          v6 = v46;
          v44 = (v46 + 4096);
        }

        v45 = *--v44;
        if (v45 < v10)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_387;
    }
  }

  else if ((*(v38 + (((v42 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v42 - 1) & 0x3FF)) != a2)
  {
    goto LABEL_61;
  }

  v43 = a3;
  v44 = a4;
  while (v38 < v43 || v38 == v43 && v39 < v44)
  {
    if (v44 == v6)
    {
      v48 = *--v43;
      v6 = v48;
      v44 = (v48 + 4092);
      if (*(v48 + 4092) < v10)
      {
        break;
      }
    }

    else
    {
      v47 = *--v44;
      if (v47 < v10)
      {
        break;
      }
    }
  }

LABEL_75:
  v50 = v38 != v43 || v39 >= v44;
  if (v38 < v43)
  {
    v50 = 0;
  }

LABEL_83:
  if (v38 < v43 || v38 == v43 && v39 < v44)
  {
    *v39 = *v44;
    *v44 = v41;
    while (1)
    {
      if (++v39 - v8 == 4096)
      {
        v51 = *(v38 + 8);
        v38 += 8;
        v8 = v51;
        v39 = v51;
      }

      if (v39 == a4)
      {
        goto LABEL_387;
      }

      v41 = *v39;
      if (*v39 >= v10)
      {
        while (v44 != a2)
        {
          if (v44 == v6)
          {
            v53 = *--v43;
            v6 = v53;
            v44 = (v53 + 4096);
          }

          v52 = *--v44;
          if (v52 < v10)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_387;
      }
    }
  }

  v54 = v39 - v8;
  if (v54 < 2)
  {
    v86 = 1024 - v54;
    v56 = v38 - 8 * (v86 >> 10);
    v57 = (*v56 + 4 * (~v86 & 0x3FF));
    if (v57 == a2)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v55 = v54 - 1;
  v56 = v38 + 8 * (v55 >> 10);
  v57 = (*v56 + 4 * (v55 & 0x3FF));
  if (v57 != a2)
  {
LABEL_165:
    *a2 = *v57;
  }

LABEL_166:
  v87 = a3;
  v88 = a4;
  *v57 = v10;
  if (!v50)
  {
    goto LABEL_190;
  }

  v89 = a6;
  v90 = a5;
  v91 = result;
  v92 = a2;
  v93 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(result, a2, v56, v57);
  v94 = (v57 - *v56) >> 2;
  if (v94 < 0)
  {
    if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>((v56 - 8 * ((1022 - v94) >> 10)), (*(v56 - 8 * ((1022 - v94) >> 10)) + 4 * (~(1022 - v94) & 0x3FF)), v87, v88))
    {
      goto LABEL_189;
    }

LABEL_169:
    a4 = v57;
    a3 = v56;
    result = v91;
    a5 = v90;
    a6 = v89;
    if (!v93)
    {
      a2 = v92;
      if (v57 != v92)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    if (std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>((v56 + 8 * ((v94 + 1) >> 10)), (*(v56 + 8 * ((v94 + 1) >> 10)) + 4 * ((v94 + 1) & 0x3FF)), v87, v88))
    {
      goto LABEL_169;
    }

LABEL_189:
    a5 = v90;
    a6 = v89;
    if (!v93)
    {
LABEL_190:
      v101 = a5;
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>();
      a5 = v101;
      a6 = 0;
    }

    v102 = v57 + 1;
    a4 = v88;
    a3 = v87;
    if ((v57 - *v56 + 4) == 4096)
    {
      v103 = *(v56 + 8);
      v56 += 8;
      v102 = v103;
    }

    result = v56;
    a2 = v102;
    if (v88 != v102)
    {
      goto LABEL_3;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *a1, int *a2, char *a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v4 = *a3;
  v5 = a2 - *a1;
  v6 = v5 >> 2;
  v7 = ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - (v5 >> 2);
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_22;
        }

        if (v6 < 0)
        {
          v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
          if (v5 != -4)
          {
            v27 = (*&a1[-8 * ((1021 - v6) >> 10)] + 4 * (~(1021 - v6) & 0x3FF));
            if (v6 < 0xFFFFFFFFFFFFFFFELL)
            {
              v29 = (*&a1[-8 * ((1020 - v6) >> 10)] + 4 * (~(1020 - v6) & 0x3FF));
              if (v4 != a4)
              {
LABEL_41:
                v30 = *v9;
                v31 = *a2;
                v32 = *v27;
                if (*v9 >= *a2)
                {
                  if (v32 >= v30)
                  {
                    v30 = *v27;
                  }

                  else
                  {
                    *v9 = v32;
                    *v27 = v30;
                    v33 = *a2;
                    if (*v9 < *a2)
                    {
                      *a2 = *v9;
                      *v9 = v33;
                      v30 = *v27;
                    }
                  }

                  goto LABEL_85;
                }

                if (v32 >= v30)
                {
                  *a2 = v30;
                  *v9 = v31;
                  v30 = *v27;
                  if (*v27 >= v31)
                  {
                    goto LABEL_85;
                  }

                  *v9 = v30;
                }

                else
                {
                  *a2 = v32;
                }

                *v27 = v31;
                v30 = v31;
LABEL_85:
                if (*v29 < v30)
                {
                  *v27 = *v29;
                  *v29 = v30;
                  v55 = *v9;
                  if (*v27 < *v9)
                  {
                    *v9 = *v27;
                    *v27 = v55;
                    v56 = *a2;
                    if (*v9 < *a2)
                    {
                      *a2 = *v9;
                      *v9 = v56;
                    }
                  }
                }

                v57 = *(a4 - 4);
                v58 = *v29;
                if (v57 >= *v29)
                {
                  return 1;
                }

                *v29 = v57;
                *(a4 - 4) = v58;
                v59 = *v27;
                if (*v29 >= *v27)
                {
                  return 1;
                }

                *v27 = *v29;
                *v29 = v59;
LABEL_98:
                v61 = *v9;
                if (*v27 >= *v9)
                {
                  return 1;
                }

                *v9 = *v27;
                *v27 = v61;
                goto LABEL_100;
              }

LABEL_40:
              a4 = *(a3 - 1) + 4096;
              goto LABEL_41;
            }

            v28 = 1;
LABEL_39:
            v29 = (*&a1[(v28 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v28 & 0x3FF));
            if (v4 != a4)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v10 = 1;
        }

        else
        {
          v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
          v10 = v6 + 2;
        }

        v27 = (*&a1[(v10 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v10 & 0x3FF));
        v28 = v6 + 3;
        goto LABEL_39;
      }

      if (v6 < 0)
      {
        v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
        if (v5 != -4)
        {
          v27 = (*&a1[-8 * ((1021 - v6) >> 10)] + 4 * (~(1021 - v6) & 0x3FF));
          if (v4 != a4)
          {
LABEL_51:
            v34 = *v9;
            v35 = *a2;
            v36 = *v27;
            if (*v9 >= *a2)
            {
              if (v36 >= v34)
              {
                v34 = *v27;
              }

              else
              {
                *v9 = v36;
                *v27 = v34;
                v37 = *a2;
                if (*v9 < *a2)
                {
                  *a2 = *v9;
                  *v9 = v37;
                  v34 = *v27;
                }
              }

              goto LABEL_96;
            }

            if (v36 >= v34)
            {
              *a2 = v34;
              *v9 = v35;
              v34 = *v27;
              if (*v27 >= v35)
              {
LABEL_96:
                v60 = *(a4 - 4);
                if (v60 >= v34)
                {
                  return 1;
                }

                *v27 = v60;
                *(a4 - 4) = v34;
                goto LABEL_98;
              }

              *v9 = v34;
            }

            else
            {
              *a2 = v36;
            }

            *v27 = v35;
            v34 = v35;
            goto LABEL_96;
          }

LABEL_50:
          a4 = *(a3 - 1) + 4096;
          goto LABEL_51;
        }

        v22 = 1;
      }

      else
      {
        v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
        v22 = v6 + 2;
      }

      v27 = (*&a1[(v22 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v22 & 0x3FF));
      if (v4 != a4)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (v6 < 0)
    {
      v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
      if (v4 != a4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
      if (v4 != a4)
      {
LABEL_19:
        v13 = *v9;
        v14 = *a2;
        v15 = *(a4 - 4);
        if (*v9 < *a2)
        {
          if (v15 >= v13)
          {
            *a2 = v13;
            *v9 = v14;
            v38 = *(a4 - 4);
            if (v38 < v14)
            {
              *v9 = v38;
              *(a4 - 4) = v14;
            }
          }

          else
          {
            *a2 = v15;
            *(a4 - 4) = v14;
          }

          return 1;
        }

        if (v15 >= v13)
        {
          return 1;
        }

        *v9 = v15;
        *(a4 - 4) = v13;
LABEL_100:
        v62 = *a2;
        if (*v9 < *a2)
        {
          *a2 = *v9;
          *v9 = v62;
        }

        return 1;
      }
    }

    a4 = *(a3 - 1) + 4096;
    goto LABEL_19;
  }

  if (v7 < 2)
  {
    return 1;
  }

  if (v7 == 2)
  {
    if (v4 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v11 = *(a4 - 4);
    v12 = *a2;
    if (v11 < *a2)
    {
      *a2 = v11;
      *(a4 - 4) = v12;
    }

    return 1;
  }

LABEL_22:
  if (v6 <= -2)
  {
    v16 = &a1[-8 * ((1021 - v6) >> 10)];
    v17 = *v16;
    v18 = (*v16 + 4 * (~(1021 - v6) & 0x3FF));
    v21 = 1022 - v6;
  }

  else
  {
    v16 = &a1[8 * ((v6 + 2) >> 10)];
    v17 = *v16;
    v18 = (*v16 + 4 * ((v6 + 2) & 0x3FF));
    v19 = __CFADD__(v6, 1);
    v20 = v6 + 1;
    if (!v19)
    {
      v23 = (*&a1[(v20 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v20 & 0x3FF));
      v24 = *v23;
      v25 = *a2;
      v26 = *v18;
      if (*v23 >= *a2)
      {
        goto LABEL_60;
      }

      goto LABEL_32;
    }

    v21 = 1023;
  }

  v23 = (*&a1[-8 * (v21 >> 10)] + 4 * (~v21 & 0x3FF));
  v24 = *v23;
  v25 = *a2;
  v26 = *v18;
  if (*v23 >= *a2)
  {
LABEL_60:
    if (v26 < v24)
    {
      *v23 = v26;
      *v18 = v24;
      v39 = *a2;
      if (*v23 < *a2)
      {
        *a2 = *v23;
        *v23 = v39;
      }
    }

    goto LABEL_66;
  }

LABEL_32:
  if (v26 >= v24)
  {
    *a2 = v24;
    *v23 = v25;
    if (*v18 >= v25)
    {
      goto LABEL_66;
    }

    *v23 = *v18;
  }

  else
  {
    *a2 = v26;
  }

  *v18 = v25;
LABEL_66:
  v40 = v18 - v17;
  if (v40 < 0)
  {
    v45 = 1022 - v40;
    v42 = &v16[-8 * (v45 >> 10)];
    v43 = *v42;
    v44 = (*v42 + 4 * (~v45 & 0x3FFLL));
    if (v44 == a4)
    {
      return 1;
    }
  }

  else
  {
    v41 = v40 + 1;
    v42 = &v16[8 * (v41 >> 10)];
    v43 = *v42;
    v44 = (*v42 + 4 * (v41 & 0x3FF));
    if (v44 == a4)
    {
      return 1;
    }
  }

  v46 = 0;
  while (1)
  {
    v47 = v44;
    v48 = v42;
    v49 = v43;
    v50 = *v44;
    v51 = *v18;
    if (v50 < *v18)
    {
      v52 = v47;
      while (1)
      {
        v54 = v18;
        *v52 = v51;
        if (v18 == a2)
        {
          break;
        }

        if (v18 == v17)
        {
          v53 = *(v16 - 1);
          v16 -= 8;
          v17 = v53;
          v18 = v53 + 1023;
          v51 = v53[1023];
          v52 = v54;
          if (v50 >= v51)
          {
            break;
          }
        }

        else
        {
          --v18;
          v51 = *(v54 - 1);
          v52 = v54;
          if (v50 >= v51)
          {
            break;
          }
        }
      }

      *v54 = v50;
      if (++v46 == 8)
      {
        break;
      }
    }

    v44 = v47 + 1;
    v43 = v49;
    v42 = v48;
    if ((v47 + 1) - v49 == 4096)
    {
      v42 = v48 + 8;
      v43 = *(v48 + 1);
      v44 = v43;
    }

    result = 1;
    v17 = v49;
    v16 = v48;
    v18 = v47;
    if (v44 == a4)
    {
      return result;
    }
  }

  v63 = v47 + 1;
  if ((v47 + 1) - v49 == 4096)
  {
    v63 = *(v48 + 1);
  }

  return v63 == a4;
}

double webrtc::AggregatedStats::ToStringWithMultiplier@<D0>(webrtc::AggregatedStats *this@<X0>, int a2@<W1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v64.__r_.__value_.__r.__words[2] = 0x1100000000000000;
  if (&v64 <= "periodic_samples:" && &v64.__r_.__value_.__r.__words[2] + 1 > "periodic_samples:")
  {
    goto LABEL_152;
  }

  v64.__r_.__value_.__s.__data_[16] = 58;
  *&v64.__r_.__value_.__l.__data_ = *"periodic_samples:";
  v7 = *this;
  v66 = 0;
  v67 = 0x1600000000000000;
  __p = 0;
  v8 = absl::numbers_internal::FastIntToBuffer(v7, &__p, a3);
  v10 = v8 - &__p;
  if ((SHIBYTE(v67) & 0x8000000000000000) != 0)
  {
    if (v66 < v10)
    {
      goto LABEL_153;
    }

    p_p = __p;
    v66 = v8 - &__p;
  }

  else
  {
    if (v10 > SHIBYTE(v67))
    {
      goto LABEL_153;
    }

    HIBYTE(v67) = v8 - &__p;
    p_p = &__p;
  }

  p_p[v10] = 0;
  v12 = v67 >= 0 ? &__p : __p;
  v13 = v67 >= 0 ? HIBYTE(v67) : v66;
  if (!v12 && v13)
  {
    goto LABEL_152;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = 22;
  }

  else
  {
    v14 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v64.__r_.__value_.__l.__size_;
  }

  if (v14 - size < v13)
  {
    std::string::__grow_by_and_replace(&v64, v14, size + v13 - v14, size, size, 0, v13, v12);
    if ((SHIBYTE(v67) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (!v13)
  {
LABEL_34:
    if ((SHIBYTE(v67) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_24:
    operator delete(__p);
    goto LABEL_35;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v64;
  }

  else
  {
    v16 = v64.__r_.__value_.__r.__words[0];
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_152;
  }

  v17 = v16 + size;
  if (v16 + size <= v12 && &v17[v13] > v12)
  {
    goto LABEL_152;
  }

  v18 = v13;
  memmove(v17, v12, v13);
  v19 = size + v18;
  if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v64.__r_.__value_.__s + 23) = v19 & 0x7F;
    v16->__r_.__value_.__s.__data_[v19] = 0;
    goto LABEL_34;
  }

  v64.__r_.__value_.__l.__size_ = size + v18;
  v16->__r_.__value_.__s.__data_[v19] = 0;
  if (SHIBYTE(v67) < 0)
  {
    goto LABEL_24;
  }

LABEL_35:
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = 22;
  }

  else
  {
    v20 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v64.__r_.__value_.__l.__size_;
  }

  if (v20 - v21 >= 3)
  {
    v22 = &v64;
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v64.__r_.__value_.__r.__words[0];
    }

    v23 = v22 + v21;
    if (v22 + v21 <= ", {" && v23 + 3 > ", {")
    {
      goto LABEL_152;
    }

    v23[2] = 123;
    *v23 = 8236;
    v24 = v21 + 3;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      v64.__r_.__value_.__l.__size_ = v21 + 3;
    }

    else
    {
      *(&v64.__r_.__value_.__s + 23) = v24 & 0x7F;
    }

    v22->__r_.__value_.__s.__data_[v24] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v64, v20, v21 - v20 + 3, v21, v21, 0, 3uLL, ", {");
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = 22;
  }

  else
  {
    v25 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v64.__r_.__value_.__l.__size_;
  }

  if (v25 - v26 >= 4)
  {
    v27 = &v64;
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v64.__r_.__value_.__r.__words[0];
    }

    v28 = (v27 + v26);
    if (v27 + v26 <= "min:" && v28 + 1 > "min:")
    {
      goto LABEL_152;
    }

    *v28 = 980314477;
    v29 = v26 + 4;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      v64.__r_.__value_.__l.__size_ = v26 + 4;
    }

    else
    {
      *(&v64.__r_.__value_.__s + 23) = v29 & 0x7F;
    }

    v27->__r_.__value_.__s.__data_[v29] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v64, v25, v26 - v25 + 4, v26, v26, 0, 4uLL, "min:");
  }

  v30 = webrtc::StringBuilder::operator<<(&v64, (*(this + 2) * a2), v9);
  v32 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
  if (v32 >= 0)
  {
    v33 = 22;
  }

  else
  {
    v33 = (v30->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v32 >= 0)
  {
    v34 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v30->__r_.__value_.__l.__size_;
  }

  if (v33 - v34 >= 2)
  {
    if (v32 >= 0)
    {
      v35 = v30;
    }

    else
    {
      v35 = v30->__r_.__value_.__r.__words[0];
    }

    v36 = (v35 + v34);
    if (v35 + v34 <= ", " && v36 + 1 > ", ")
    {
      goto LABEL_152;
    }

    *v36 = 8236;
    v37 = v34 + 2;
    if (SHIBYTE(v30->__r_.__value_.__r.__words[2]) < 0)
    {
      v30->__r_.__value_.__l.__size_ = v37;
    }

    else
    {
      *(&v30->__r_.__value_.__s + 23) = v37 & 0x7F;
    }

    v35->__r_.__value_.__s.__data_[v37] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v30, v33, v34 - v33 + 2, v34, v34, 0, 2uLL, ", ");
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = 22;
  }

  else
  {
    v38 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v64.__r_.__value_.__l.__size_;
  }

  if (v38 - v39 >= 4)
  {
    v40 = &v64;
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = v64.__r_.__value_.__r.__words[0];
    }

    v41 = (v40 + v39);
    if (v40 + v39 <= "avg:" && v41 + 1 > "avg:")
    {
      goto LABEL_152;
    }

    *v41 = 979859041;
    v42 = v39 + 4;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      v64.__r_.__value_.__l.__size_ = v39 + 4;
    }

    else
    {
      *(&v64.__r_.__value_.__s + 23) = v42 & 0x7F;
    }

    v40->__r_.__value_.__s.__data_[v42] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v64, v38, v39 - v38 + 4, v39, v39, 0, 4uLL, "avg:");
  }

  v43 = webrtc::StringBuilder::operator<<(&v64, (*(this + 4) * a2), v31);
  v45 = SHIBYTE(v43->__r_.__value_.__r.__words[2]);
  if (v45 >= 0)
  {
    v46 = 22;
  }

  else
  {
    v46 = (v43->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v45 >= 0)
  {
    v47 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = v43->__r_.__value_.__l.__size_;
  }

  if (v46 - v47 >= 2)
  {
    if (v45 >= 0)
    {
      v48 = v43;
    }

    else
    {
      v48 = v43->__r_.__value_.__r.__words[0];
    }

    v49 = (v48 + v47);
    if (v48 + v47 <= ", " && v49 + 1 > ", ")
    {
      goto LABEL_152;
    }

    *v49 = 8236;
    v50 = v47 + 2;
    if (SHIBYTE(v43->__r_.__value_.__r.__words[2]) < 0)
    {
      v43->__r_.__value_.__l.__size_ = v50;
    }

    else
    {
      *(&v43->__r_.__value_.__s + 23) = v50 & 0x7F;
    }

    v48->__r_.__value_.__s.__data_[v50] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v43, v46, v47 - v46 + 2, v47, v47, 0, 2uLL, ", ");
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = 22;
  }

  else
  {
    v51 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v52 = v64.__r_.__value_.__l.__size_;
  }

  if (v51 - v52 < 4)
  {
    std::string::__grow_by_and_replace(&v64, v51, v52 - v51 + 4, v52, v52, 0, 4uLL, "max:");
    goto LABEL_133;
  }

  v53 = &v64;
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v53 = v64.__r_.__value_.__r.__words[0];
  }

  v54 = (v53 + v52);
  if (v53 + v52 <= "max:" && v54 + 1 > "max:")
  {
LABEL_152:
    __break(1u);
LABEL_153:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v54 = 980967789;
  v55 = v52 + 4;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    v64.__r_.__value_.__l.__size_ = v52 + 4;
  }

  else
  {
    *(&v64.__r_.__value_.__s + 23) = v55 & 0x7F;
  }

  v53->__r_.__value_.__s.__data_[v55] = 0;
LABEL_133:
  v56 = webrtc::StringBuilder::operator<<(&v64, (*(this + 3) * a2), v44);
  v57 = HIBYTE(v56->__r_.__value_.__r.__words[2]);
  v58 = v57;
  if ((v57 & 0x80u) == 0)
  {
    v59 = 22;
  }

  else
  {
    v59 = (v56->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57 & 0x80u) != 0)
  {
    v57 = v56->__r_.__value_.__l.__size_;
  }

  if (v59 == v57)
  {
    std::string::__grow_by_and_replace(v56, v59, 1uLL, v59, v59, 0, 1uLL, "}");
    goto LABEL_149;
  }

  if (v58 >= 0)
  {
    v60 = v56;
  }

  else
  {
    v60 = v56->__r_.__value_.__r.__words[0];
  }

  v61 = v60 + v57;
  if (v60 + v57 <= "}" && v61 + 1 > "}")
  {
    goto LABEL_152;
  }

  *v61 = 125;
  v62 = v57 + 1;
  if (SHIBYTE(v56->__r_.__value_.__r.__words[2]) < 0)
  {
    v56->__r_.__value_.__l.__size_ = v62;
  }

  else
  {
    *(&v56->__r_.__value_.__s + 23) = v62 & 0x7F;
  }

  v60->__r_.__value_.__s.__data_[v62] = 0;
LABEL_149:
  result = *&v64.__r_.__value_.__l.__data_;
  *a4 = v64;
  return result;
}

unint64_t webrtc::StatsCounter::TryProcess(webrtc::StatsCounter *this)
{
  result = (*(**(this + 5) + 16))(*(this + 5));
  v3 = result / 0x3E8;
  if (result % 0x3E8 > 0x1F3)
  {
    ++v3;
  }

  if (-result % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 - -result / 0x3E8uLL;
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = v3;
  }

  v6 = *(this + 7);
  if (v6 == -1)
  {
    *(this + 7) = v5;
    v6 = v5;
    v7 = 0;
    v8 = *(this + 2);
    if (v8 > 0)
    {
      return result;
    }
  }

  else
  {
    v7 = v5 - v6;
    v8 = *(this + 2);
    if (v7 < v8)
    {
      return result;
    }
  }

  v9 = v7 / v8;
  *(this + 7) = v6 + v7 / v8 * v8;
  v27 = 0;
  result = (*(*this + 16))(this, &v27);
  if (result)
  {
    v10 = v27;
    v11 = *(this + 3);
    *v11 = v27;
    v12 = *(v11 + 16);
    *(v11 + 8) += v10;
    *(v11 + 16) = v12 + 1;
    v13 = v10;
    v14 = v10;
    if (v12)
    {
      v14 = *(v11 + 24);
      v13 = *(v11 + 28);
    }

    if (v14 >= v10)
    {
      v14 = v10;
    }

    if (v13 <= v10)
    {
      v13 = v10;
    }

    *(v11 + 24) = v14;
    *(v11 + 28) = v13;
    result = *(this + 6);
    if (result)
    {
      result = (**result)(result);
    }
  }

  if (*(this + 8) == 1 && (*(this + 64) & 1) == 0)
  {
    if (*(*(this + 3) + 16))
    {
      v15 = v9 - (**(this + 4) != 0);
      result = (*(*this + 24))(this);
      if (v15 >= 1)
      {
        v16 = result;
        v17 = result;
        do
        {
          v18 = *(this + 3);
          *v18 = v16;
          v19 = *(v18 + 16);
          *(v18 + 8) += v17;
          *(v18 + 16) = v19 + 1;
          v20 = v16;
          v21 = v16;
          if (v19)
          {
            v21 = *(v18 + 24);
            v20 = *(v18 + 28);
          }

          if (v21 >= v16)
          {
            v21 = v16;
          }

          if (v20 <= v16)
          {
            v20 = v16;
          }

          *(v18 + 24) = v21;
          *(v18 + 28) = v20;
          result = *(this + 6);
          if (result)
          {
            result = (**result)(result, v16);
          }

          --v15;
        }

        while (v15);
      }
    }
  }

  v22 = *(this + 4);
  v23 = v22[1];
  if (v23 != v22 + 2)
  {
    do
    {
      if (v23[6] >= 1)
      {
        v23[8] = v23[7];
      }

      v23[6] = 0;
      v23[7] = 0;
      *(v23 + 10) = 0x80000000;
      v24 = v23[1];
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
        do
        {
          v25 = v23[2];
          v26 = *v25 == v23;
          v23 = v25;
        }

        while (!v26);
      }

      v23 = v25;
    }

    while (v25 != v22 + 2);
  }

  *v22 = 0;
  return result;
}

unint64_t webrtc::StatsCounter::Add(webrtc::StatsCounter *this, __int32 a2)
{
  result = webrtc::StatsCounter::TryProcess(this);
  v5 = *(this + 4);
  v6 = v5[2];
  if (!v6)
  {
LABEL_4:
    operator new();
  }

  while (1)
  {
    v7 = v6;
    if (!v6[2].i32[0])
    {
      break;
    }

    v6 = v6->i64[0];
    if (!v7->i64[0])
    {
      goto LABEL_4;
    }
  }

  v8.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v8.i64[1] = a2;
  v6[3] = vaddq_s64(v6[3], v8);
  v9 = v6[2].i32[2];
  if (v9 <= a2)
  {
    v9 = a2;
  }

  v7[2].i32[2] = v9;
  ++*v5;
  if (*(this + 64) == 1)
  {
    result = (*(**(this + 5) + 16))(*(this + 5));
    v10 = result / 0x3E8;
    if (result % 0x3E8 > 0x1F3)
    {
      ++v10;
    }

    if (-result % 0x3E8uLL <= 0x1F4)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      v10 = v11 - -result / 0x3E8uLL;
    }

    if ((v10 - *(this + 9)) >= *(this + 10))
    {
      *(this + 64) = 0;
      *(this + 10) = 0;
    }
  }

  return result;
}

unint64_t webrtc::StatsCounter::Set(unint64_t this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  if (*(this + 64) != 1)
  {
    goto LABEL_10;
  }

  v6 = *(*(this + 32) + 16);
  if (!v6)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = *(v6 + 32);
      if (v8 <= a3)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= a3)
    {
      break;
    }

    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v7[8] != a2)
  {
LABEL_10:
    this = webrtc::StatsCounter::TryProcess(this);
    v9 = *(v5 + 32);
    v10 = v9[2];
    if (!v10)
    {
LABEL_16:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = *(v10 + 32);
        if (v12 <= a3)
        {
          break;
        }

        v10 = *v11;
        if (!*v11)
        {
          goto LABEL_16;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    ++v11[6];
    v11[7] = a2;
    ++*v9;
    if (*(v5 + 64) == 1)
    {
      this = (*(**(v5 + 40) + 16))(*(v5 + 40));
      v13 = this / 0x3E8;
      if (this % 0x3E8 > 0x1F3)
      {
        ++v13;
      }

      if (-this % 0x3E8uLL <= 0x1F4)
      {
        v14 = 0;
      }

      else
      {
        v14 = -1;
      }

      if ((this & 0x8000000000000000) != 0)
      {
        v13 = v14 - -this / 0x3E8uLL;
      }

      if ((v13 - *(v5 + 72)) >= *(v5 + 80))
      {
        *(v5 + 64) = 0;
        *(v5 + 80) = 0;
      }
    }
  }

  return this;
}

BOOL webrtc::AvgCounter::GetMetric(webrtc::AvgCounter *this, int *a2)
{
  v2 = *(this + 4);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = v2 + 2;
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = v4[1];
        v8 = v4;
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (!v10);
        }

        v6 += v4[7];
        v4 = v9;
      }

      while (v9 != v5);
    }

    *a2 = (v6 + v3 / 2) / v3;
  }

  return v3 != 0;
}

BOOL webrtc::MaxCounter::GetMetric(webrtc::MaxCounter *this, int *a2)
{
  v2 = *(this + 4);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = v2 + 2;
    v6 = 0x80000000;
    if (v4 != v5)
    {
      do
      {
        if (*(v4 + 10) > v6)
        {
          v6 = *(v4 + 10);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v10 = *v9 == v4;
            v4 = v9;
          }

          while (!v10);
        }

        v4 = v9;
      }

      while (v9 != v5);
    }

    *a2 = v6;
  }

  return v3 != 0;
}

BOOL webrtc::RateCounter::GetMetric(webrtc::RateCounter *this, int *a2)
{
  v2 = *(this + 4);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = v2 + 2;
    if (v4 == v5)
    {
      v11 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = v4[1];
        v8 = v4;
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (!v10);
        }

        v6 += v4[7];
        v4 = v9;
      }

      while (v9 != v5);
      v11 = 1000 * v6;
    }

    *a2 = (v11 + *(this + 2) / 2) / *(this + 2);
  }

  return v3 != 0;
}

uint64_t webrtc::RateAccCounter::GetMetric(webrtc::RateAccCounter *this, int *a2)
{
  v2 = *(this + 4);
  v3 = *(v2 + 8);
  v4 = (v2 + 16);
  if (v3 == v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    if (v3[6] >= 1)
    {
      v7 = v3[7] - v3[8];
      v6 += v7 >= 0;
      v5 += v7 & ~(v7 >> 63);
    }

    v8 = v3[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v3[2];
        v10 = *v9 == v3;
        v3 = v9;
      }

      while (!v10);
    }

    v3 = v9;
  }

  while (v9 != v4);
  v11 = 0;
  if (v6 >= 1 && (v5 & 0x8000000000000000) == 0)
  {
    if (!v5 && (*(this + 8) & 1) == 0)
    {
      return 0;
    }

    *a2 = (1000 * v5 + *(this + 2) / 2) / *(this + 2);
    return 1;
  }

  return v11;
}

void webrtc::AvgCounter::~AvgCounter(webrtc::AvgCounter *this)
{
  *this = &unk_2882A00F0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }
}

{
  *this = &unk_2882A00F0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::MaxCounter::~MaxCounter(webrtc::MaxCounter *this)
{
  *this = &unk_2882A00F0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }
}

{
  *this = &unk_2882A00F0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RateCounter::~RateCounter(webrtc::RateCounter *this)
{
  *this = &unk_2882A00F0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }
}

{
  *this = &unk_2882A00F0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RateAccCounter::~RateAccCounter(webrtc::RateAccCounter *this)
{
  *this = &unk_2882A00F0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }
}

{
  *this = &unk_2882A00F0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StreamInterface::StreamInterface(uint64_t this)
{
  *this = &unk_2882A01E0;
  *(this + 8) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 16) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 24) = this + 24;
  *(this + 32) = this + 24;
  *(this + 40) = 0;
  *(this + 48) = this + 24;
  *(this + 56) = 0;
  *(this + 80) = absl::internal_any_invocable::EmptyManager;
  *(this + 88) = 0;
  return this;
}

std::string::value_type *webrtc::StreamParams::operator=(std::string::value_type *__dst, const std::string::value_type *a2)
{
  if (__dst != a2)
  {
    v3 = a2;
    if (__dst[23] < 0)
    {
      if (a2[23] >= 0)
      {
        v5 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v5 = *(v3 + 1);
      }

      std::string::__assign_no_alias<false>(__dst, a2, v5);
    }

    else if (a2[23] < 0)
    {
      std::string::__assign_no_alias<true>(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(__dst + 3, *(v3 + 3), *(v3 + 4), (*(v3 + 4) - *(v3 + 3)) >> 2);
    std::vector<webrtc::SsrcGroup>::__assign_with_size[abi:sn200100]<webrtc::SsrcGroup*,webrtc::SsrcGroup*>(__dst + 6, *(v3 + 6), *(v3 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 7) - *(v3 + 6)) >> 4));
    v6 = v3[95];
    if (__dst[95] < 0)
    {
      if (v6 >= 0)
      {
        v8 = v3 + 72;
      }

      else
      {
        v8 = *(v3 + 9);
      }

      if (v6 >= 0)
      {
        v9 = *(v3 + 95);
      }

      else
      {
        v9 = *(v3 + 10);
      }

      std::string::__assign_no_alias<false>(__dst + 3, v8, v9);
    }

    else if (v3[95] < 0)
    {
      std::string::__assign_no_alias<true>(__dst + 72, *(v3 + 9), *(v3 + 10));
    }

    else
    {
      v7 = *(v3 + 72);
      *(__dst + 11) = *(v3 + 11);
      *(__dst + 72) = v7;
    }

    std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(__dst + 12, *(v3 + 12), *(v3 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 13) - *(v3 + 12)) >> 3));
    std::vector<webrtc::RidDescription>::__assign_with_size[abi:sn200100]<webrtc::RidDescription*,webrtc::RidDescription*>(__dst + 15, *(v3 + 15), *(v3 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 16) - *(v3 + 15)) >> 4));
  }

  return __dst;
}

unint64_t webrtc::SsrcGroup::ToString(webrtc::SsrcGroup *this, void *a2)
{
  v2 = a2;
  v35 = *MEMORY[0x277D85DE8];
  __s = v34;
  v32 = 1024;
  strcpy(v34, "{semantics:");
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    a2 = *a2;
    v4 = v2[1];
  }

  if (v4 >= 0x3F4)
  {
    v5 = 1012;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 + 11;
  v7 = v4 < 0x3F4;
  if (v4 < 0x3F4)
  {
    v8 = v5 + 12;
  }

  else
  {
    v8 = v5 + 11;
  }

  memcpy(&v34[11], a2, v5);
  v34[v6] = 0;
  memcpy(&v34[v6], ";", v7);
  v34[v8] = 0;
  v9 = v2[3];
  v10 = v2[4];
  if (1023 - v8 >= 7)
  {
    v11 = 7;
  }

  else
  {
    v11 = 1023 - v8;
  }

  memcpy(&v34[v8], "ssrcs:[", v11);
  v33 = v11 + v8;
  v34[v11 + v8] = 0;
  v13 = v10 - v9;
  v12 = v10 == v9;
  if (v10 == v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  if (!v12)
  {
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *v9);
    if (v13 != 4)
    {
      v15 = (v14 + v13);
      v16 = (v9 + 4);
      do
      {
        v17 = v32;
        v18 = v33 + 1;
        v20 = *v16++;
        v19 = v20;
        memcpy(&__s[v33], ",", v32 != v33 + 1);
        v21 = v33;
        if (v17 != v18)
        {
          v21 = v33 + 1;
        }

        v33 = v21;
        __s[v21] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", v19);
      }

      while (v16 != v15);
    }
  }

  v22 = v32;
  v23 = v33 + 1;
  memcpy(&__s[v33], "]", v32 != v33 + 1);
  v24 = v33;
  if (v22 != v23)
  {
    v24 = v33 + 1;
  }

  v33 = v24;
  __s[v24] = 0;
  v25 = v32;
  v26 = v33 + 1;
  memcpy(&__s[v33], "}", v32 != v33 + 1);
  v27 = v33;
  if (v25 != v26)
  {
    v27 = v33 + 1;
  }

  v33 = v27;
  __s[v27] = 0;
  v28 = __s;
  if (!__s)
  {
    goto LABEL_35;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_36;
  }

  if (result > 0x16)
  {
    operator new();
  }

  *(this + 23) = result;
  v30 = this + result;
  if (this <= v28 && v30 > v28)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(this, v28, result);
  }

  *v30 = 0;
  return result;
}

std::string *webrtc::StreamParams::StreamParams(std::string *this, const webrtc::StreamParams *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((*(a2 + 95) & 0x80000000) == 0)
  {
    v9 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v9;
    this[4].__r_.__value_.__r.__words[0] = 0;
    this[4].__r_.__value_.__l.__size_ = 0;
    this[4].__r_.__value_.__r.__words[2] = 0;
    v10 = *(a2 + 12);
    v11 = *(a2 + 13);
    v12 = v11 - v10;
    if (v11 == v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  v15 = *(a2 + 12);
  v16 = *(a2 + 13);
  v12 = v16 - v15;
  if (v16 != v15)
  {
    goto LABEL_15;
  }

LABEL_12:
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  v13 = *(a2 + 15);
  v14 = *(a2 + 16);
  if (v14 != v13)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v14 - v13) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void webrtc::StreamParams::~StreamParams(webrtc::StreamParams *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(this + 16);
    v4 = *(this + 15);
    if (v3 != v2)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v3 - 3), *(v3 - 2));
        v5 = *(v3 - 6);
        if (v5)
        {
          v6 = *(v3 - 5);
          v7 = *(v3 - 6);
          if (v6 != v5)
          {
            v8 = v6 - 27;
            v9 = v6 - 27;
            v10 = v6 - 27;
            do
            {
              v11 = *v10;
              v10 -= 27;
              (*v11)(v9);
              v8 -= 27;
              v12 = v9 == v5;
              v9 = v10;
            }

            while (!v12);
            v7 = *(v3 - 6);
          }

          *(v3 - 5) = v5;
          operator delete(v7);
        }

        v13 = v3 - 10;
        if (*(v3 - 57) < 0)
        {
          operator delete(*v13);
        }

        v3 -= 10;
      }

      while (v13 != v2);
      v4 = *(this + 15);
    }

    *(this + 16) = v2;
    operator delete(v4);
  }

  v14 = *(this + 12);
  if (v14)
  {
    v15 = *(this + 13);
    v16 = *(this + 12);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = *(this + 12);
    }

    *(this + 13) = v14;
    operator delete(v16);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v18 = *(this + 6);
  if (v18)
  {
    v19 = *(this + 7);
    v20 = *(this + 6);
    if (v19 != v18)
    {
      do
      {
        v21 = *(v19 - 3);
        if (v21)
        {
          *(v19 - 2) = v21;
          operator delete(v21);
        }

        v22 = v19 - 6;
        if (*(v19 - 25) < 0)
        {
          operator delete(*v22);
        }

        v19 -= 6;
      }

      while (v22 != v18);
      v20 = *(this + 6);
    }

    *(this + 7) = v18;
    operator delete(v20);
  }

  v23 = *(this + 3);
  if (v23)
  {
    *(this + 4) = v23;
    operator delete(v23);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t webrtc::StreamParams::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v6 = (a1 + 48);
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 3);
        if (v10)
        {
          *(v8 - 2) = v10;
          operator delete(v10);
        }

        v11 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          operator delete(*v11);
        }

        v8 -= 6;
      }

      while (v11 != v7);
      v9 = *v6;
    }

    *(a1 + 56) = v7;
    operator delete(v9);
    *v6 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v12 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v12;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  v13 = (a1 + 96);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = *(a1 + 104);
    v16 = *(a1 + 96);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = *v13;
    }

    *(a1 + 104) = v14;
    operator delete(v16);
    *v13 = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v18 = (a1 + 120);
  v19 = *(a1 + 120);
  if (v19)
  {
    v20 = *(a1 + 128);
    v21 = *(a1 + 120);
    if (v20 != v19)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v20 - 3), *(v20 - 2));
        v22 = *(v20 - 6);
        if (v22)
        {
          v23 = *(v20 - 5);
          v24 = *(v20 - 6);
          if (v23 != v22)
          {
            v25 = v23 - 27;
            v26 = v23 - 27;
            v27 = v23 - 27;
            do
            {
              v28 = *v27;
              v27 -= 27;
              (*v28)(v26);
              v25 -= 27;
              v29 = v26 == v22;
              v26 = v27;
            }

            while (!v29);
            v24 = *(v20 - 6);
          }

          *(v20 - 5) = v22;
          operator delete(v24);
        }

        v30 = v20 - 10;
        if (*(v20 - 57) < 0)
        {
          operator delete(*v30);
        }

        v20 -= 10;
      }

      while (v30 != v19);
      v21 = *v18;
    }

    *(a1 + 128) = v19;
    operator delete(v21);
    *v18 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  return a1;
}

unint64_t webrtc::StreamParams::ToString@<X0>(webrtc::StreamParams *this@<X0>, char *a2@<X8>)
{
  v105 = *MEMORY[0x277D85DE8];
  __s = v104;
  v99 = 2048;
  strcpy(v104, "{");
  v4 = *(this + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(this + 1);
    if (v4)
    {
      strcpy(&v104[1], "id:");
      v100 = 4;
      v5 = *this;
      goto LABEL_6;
    }

LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  if (!*(this + 23))
  {
    goto LABEL_13;
  }

  strcpy(&v104[1], "id:");
  v100 = 4;
  v5 = this;
LABEL_6:
  if (v4 >= 0x7FB)
  {
    v6 = 2043;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 + 4;
  v8 = v4 < 0x7FB;
  if (v4 < 0x7FB)
  {
    v9 = v6 + 5;
  }

  else
  {
    v9 = v6 + 4;
  }

  memcpy(&v104[4], v5, v6);
  v104[v7] = 0;
  memcpy(&v104[v7], ";", v8);
  v104[v9] = 0;
LABEL_14:
  v11 = *(this + 3);
  v10 = *(this + 4);
  if ((2047 - v9) >= 7)
  {
    v12 = 7;
  }

  else
  {
    v12 = 2047 - v9;
  }

  memcpy(&v104[v9], "ssrcs:[", v12);
  v100 = v9 + v12;
  v104[v9 + v12] = 0;
  v13 = v10 - v11;
  if (v10 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  if (v10 != v11)
  {
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *v11);
    if (v13 != 4)
    {
      v15 = (v11 + 4);
      do
      {
        v16 = v99;
        v17 = v100 + 1;
        v19 = *v15++;
        v18 = v19;
        memcpy(&__s[v100], ",", v99 != v100 + 1);
        v20 = v100;
        if (v16 != v17)
        {
          v20 = v100 + 1;
        }

        v100 = v20;
        __s[v20] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", v18);
      }

      while (v15 != (v14 + v13));
    }
  }

  v21 = v99;
  v22 = v100 + 1;
  memcpy(&__s[v100], "]", v99 != v100 + 1);
  v23 = v100;
  if (v21 != v22)
  {
    v23 = v100 + 1;
  }

  v100 = v23;
  __s[v23] = 0;
  v24 = v99;
  v25 = v100 + 1;
  memcpy(&__s[v100], ";", v99 != v100 + 1);
  v26 = v100;
  if (v24 != v25)
  {
    v26 = v100 + 1;
  }

  v100 = v26;
  __s[v26] = 0;
  if ((v99 + ~v100) >= 0xC)
  {
    v27 = 12;
  }

  else
  {
    v27 = v99 + ~v100;
  }

  v28 = *(this + 6);
  v29 = *(this + 7);
  memcpy(&__s[v100], "ssrc_groups:", v27);
  v100 += v27;
  __s[v100] = 0;
  v30 = v29 - v28;
  if (v30)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  if (!v30)
  {
    goto LABEL_49;
  }

  __s[v100] = 0;
  webrtc::SsrcGroup::ToString(&__p, v28);
  v32 = v103;
  if ((v103 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v103 & 0x80u) != 0)
  {
    v32 = v102;
  }

  if (v32 >= v99 + ~v100)
  {
    v34 = v99 + ~v100;
  }

  else
  {
    v34 = v32;
  }

  memcpy(&__s[v100], p_p, v34);
  v100 += v34;
  __s[v100] = 0;
  if (v103 < 0)
  {
    operator delete(__p);
    if (v30 != 48)
    {
      goto LABEL_59;
    }
  }

  else if (v30 != 48)
  {
LABEL_59:
    v42 = (v31 + v30);
    v43 = v28 + 6;
    do
    {
      v44 = v99;
      v45 = v100 + 1;
      memcpy(&__s[v100], ",", v99 != v100 + 1);
      v46 = v100;
      if (v44 != v45)
      {
        v46 = v100 + 1;
      }

      v100 = v46;
      __s[v46] = 0;
      webrtc::SsrcGroup::ToString(&__p, v43);
      v47 = v103;
      if ((v103 & 0x80u) == 0)
      {
        v48 = &__p;
      }

      else
      {
        v48 = __p;
      }

      if ((v103 & 0x80u) != 0)
      {
        v47 = v102;
      }

      if (v47 >= v99 + ~v100)
      {
        v49 = v99 + ~v100;
      }

      else
      {
        v49 = v47;
      }

      memcpy(&__s[v100], v48, v49);
      v100 += v49;
      __s[v100] = 0;
      if (v103 < 0)
      {
        operator delete(__p);
      }

      v43 += 6;
    }

    while (v43 != v42);
  }

LABEL_49:
  v35 = v99;
  v36 = v100 + 1;
  memcpy(&__s[v100], ";", v99 != v100 + 1);
  v37 = v100;
  if (v35 != v36)
  {
    v37 = v100 + 1;
  }

  v100 = v37;
  __s[v37] = 0;
  v38 = *(this + 95);
  if (v38 < 0)
  {
    v38 = *(this + 10);
  }

  if (v38)
  {
    if ((v99 + ~v100) >= 6)
    {
      v39 = 6;
    }

    else
    {
      v39 = v99 + ~v100;
    }

    memcpy(&__s[v100], "cname:", v39);
    v100 += v39;
    __s[v100] = 0;
    v40 = *(this + 95);
    if ((v40 & 0x8000000000000000) != 0)
    {
      v41 = *(this + 9);
      v40 = *(this + 10);
    }

    else
    {
      v41 = this + 72;
    }

    if (v40 >= v99 + ~v100)
    {
      v50 = v99 + ~v100;
    }

    else
    {
      v50 = v40;
    }

    memcpy(&__s[v100], v41, v50);
    v100 += v50;
    __s[v100] = 0;
    v51 = v99;
    v52 = v100 + 1;
    memcpy(&__s[v100], ";", v99 != v100 + 1);
    v53 = v100;
    if (v51 != v52)
    {
      v53 = v100 + 1;
    }

    v100 = v53;
    __s[v53] = 0;
  }

  v54 = *(this + 12);
  v55 = *(this + 13);
  if ((v99 + ~v100) >= 0xB)
  {
    v56 = 11;
  }

  else
  {
    v56 = v99 + ~v100;
  }

  memcpy(&__s[v100], "stream_ids:", v56);
  v100 += v56;
  __s[v100] = 0;
  v57 = v55 - v54;
  if (v57)
  {
    v58 = v54;
  }

  else
  {
    v58 = 0;
  }

  if (v57)
  {
    __s[v100] = 0;
    v59 = *(v54 + 23);
    if ((v59 & 0x8000000000000000) != 0)
    {
      v60 = *v54;
      v59 = v54[1];
    }

    else
    {
      v60 = v54;
    }

    v61 = v59 >= v99 + ~v100 ? v99 + ~v100 : v59;
    memcpy(&__s[v100], v60, v61);
    v100 += v61;
    __s[v100] = 0;
    if (v57 != 24)
    {
      v70 = (v58 + v57);
      v71 = (v54 + 3);
      do
      {
        v74 = v99;
        v75 = v100 + 1;
        memcpy(&__s[v100], ",", v99 != v100 + 1);
        v76 = v100;
        if (v74 != v75)
        {
          v76 = v100 + 1;
        }

        v100 = v76;
        __s[v76] = 0;
        v77 = *(v71 + 23);
        if ((v77 & 0x8000000000000000) != 0)
        {
          v72 = *v71;
          v77 = v71[1];
        }

        else
        {
          v72 = v71;
        }

        if (v77 >= v99 + ~v100)
        {
          v73 = v99 + ~v100;
        }

        else
        {
          v73 = v77;
        }

        memcpy(&__s[v100], v72, v73);
        v100 += v73;
        __s[v100] = 0;
        v71 += 3;
      }

      while (v71 != v70);
    }
  }

  v62 = v99;
  v63 = v100 + 1;
  memcpy(&__s[v100], ";", v99 != v100 + 1);
  v64 = v100;
  if (v62 != v63)
  {
    v64 = v100 + 1;
  }

  v100 = v64;
  __s[v64] = 0;
  v65 = *(this + 15);
  v66 = *(this + 16);
  if (v65 != v66)
  {
    if ((v99 + ~v100) >= 6)
    {
      v67 = 6;
    }

    else
    {
      v67 = v99 + ~v100;
    }

    memcpy(&__s[v100], "rids:[", v67);
    v100 += v67;
    __s[v100] = 0;
    __s[v100] = 0;
    v68 = *(v65 + 23);
    if ((v68 & 0x8000000000000000) != 0)
    {
      v69 = *v65;
      v68 = v65[1];
    }

    else
    {
      v69 = v65;
    }

    if (v68 >= v99 + ~v100)
    {
      v78 = v99 + ~v100;
    }

    else
    {
      v78 = v68;
    }

    memcpy(&__s[v100], v69, v78);
    v100 += v78;
    __s[v100] = 0;
    if (v66 - v65 != 80)
    {
      v91 = v65 + 10;
      do
      {
        v94 = v99;
        v95 = v100 + 1;
        memcpy(&__s[v100], ",", v99 != v100 + 1);
        v96 = v100;
        if (v94 != v95)
        {
          v96 = v100 + 1;
        }

        v100 = v96;
        __s[v96] = 0;
        v97 = *(v91 + 23);
        if ((v97 & 0x8000000000000000) != 0)
        {
          v92 = *v91;
          v97 = v91[1];
        }

        else
        {
          v92 = v91;
        }

        if (v97 >= v99 + ~v100)
        {
          v93 = v99 + ~v100;
        }

        else
        {
          v93 = v97;
        }

        memcpy(&__s[v100], v92, v93);
        v100 += v93;
        __s[v100] = 0;
        v91 += 10;
      }

      while (v91 != v66);
    }

    v79 = v99;
    v80 = v100 + 1;
    memcpy(&__s[v100], "]", v99 != v100 + 1);
    v81 = v100;
    if (v79 != v80)
    {
      v81 = v100 + 1;
    }

    v100 = v81;
    __s[v81] = 0;
    v82 = v99;
    v83 = v100 + 1;
    memcpy(&__s[v100], ";", v99 != v100 + 1);
    v84 = v100;
    if (v82 != v83)
    {
      v84 = v100 + 1;
    }

    v100 = v84;
    __s[v84] = 0;
  }

  v85 = v99;
  v86 = v100 + 1;
  memcpy(&__s[v100], "}", v99 != v100 + 1);
  v87 = v100;
  if (v85 != v86)
  {
    v87 = v100 + 1;
  }

  v100 = v87;
  __s[v87] = 0;
  v88 = __s;
  if (!__s)
  {
    goto LABEL_144;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_145;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v90 = &a2[result];
  if (a2 <= v88 && v90 > v88)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v88, result);
  }

  *v90 = 0;
  return result;
}

void webrtc::StreamParams::GenerateSsrcs(webrtc::StreamParams *this, int a2, BOOL a3, BOOL a4, webrtc::UniqueRandomIdGenerator *a5)
{
  if (a2 >= 1)
  {
    webrtc::UniqueRandomIdGenerator::GenerateId(a5);
    operator new();
  }
}

char *webrtc::StreamParams::GetPrimarySsrcs(char *result, uint64_t a2)
{
  v14 = 3;
  if (v13 <= "SIM" && v13 + 3 > "SIM")
  {
    __break(1u);
  }

  else
  {
    v13[0] = 5065043;
    for (i = *(result + 6); i != *(result + 7); i += 48)
    {
      v3 = *(i + 23);
      v4 = v3;
      if ((v3 & 0x80u) != 0)
      {
        v3 = *(i + 8);
      }

      if (v3 == 3)
      {
        v5 = v4 >= 0 ? i : *i;
        v6 = *v5;
        v7 = *(v5 + 2);
        if (v6 == LOWORD(v13[0]) && v7 == BYTE2(v13[0]))
        {
          v9 = *(i + 32);
          v10 = *(i + 24);
          if (v9 != v10)
          {
            return std::vector<unsigned int>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(a2, *(a2 + 8), v10, v9, (v9 - v10) >> 2);
          }
        }
      }
    }

    v11 = *(result + 3);
    if (v11 == *(result + 4))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11;
    }

    v13[0] = v12;
    return std::vector<unsigned int>::push_back[abi:sn200100](a2, v13);
  }

  return result;
}

void *webrtc::StreamParams::GetSecondarySsrcs(void *result, const void **a2, int **a3, void *a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    v6 = result;
    if (result[6] != result[7])
    {
      do
      {
        v9 = *v4;
        v21 = 0;
        v10 = v6[6];
        v11 = v6[7];
        if (v10 != v11)
        {
          v12 = *(a2 + 23);
          if (v12 >= 0)
          {
            v13 = *(a2 + 23);
          }

          else
          {
            v13 = a2[1];
          }

          if (v12 >= 0)
          {
            v14 = a2;
          }

          else
          {
            v14 = *a2;
          }

          while (1)
          {
            v15 = *(v10 + 23);
            v16 = v15;
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v10 + 8);
            }

            if (v15 == v13)
            {
              v17 = v16 >= 0 ? v10 : *v10;
              result = memcmp(v17, v14, v13);
              if (!result)
              {
                v18 = *(v10 + 24);
                v19 = *(v10 + 32) - v18;
                v20 = v19 && v19 >= 5;
                if (v20 && *v18 == v9)
                {
                  break;
                }
              }
            }

            v10 += 48;
            if (v10 == v11)
            {
              goto LABEL_4;
            }
          }

          v21 = v18[1];
          result = std::vector<unsigned int>::push_back[abi:sn200100](a4, &v21);
        }

LABEL_4:
        ++v4;
      }

      while (v4 != v5);
    }
  }

  return result;
}

uint64_t webrtc::StreamParams::AddSecondarySsrc(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = a4;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v4 = (a1 + 24);
  if (v5 != v6)
  {
    while (*v5 != a3)
    {
      if (++v5 == v6)
      {
        return 0;
      }
    }

    if (v5 != v6)
    {
      std::vector<unsigned int>::push_back[abi:sn200100](v4, &v8);
      operator new();
    }
  }

  return 0;
}

uint64_t webrtc::StreamParams::stream_ids@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 96);
  v3 = *(this + 104);
  if (v3 != v2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

char *std::vector<unsigned int>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(uint64_t a1, char *__dst, int *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 > (v6 - v7) >> 2)
  {
    v8 = *a1;
    v9 = a5 + ((v7 - *a1) >> 2);
    if (!(v9 >> 62))
    {
      v10 = v6 - v8;
      if (v10 >> 1 > v9)
      {
        v9 = v10 >> 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if (!(v11 >> 62))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v45 = 4 * ((__dst - v8) >> 2);
      v46 = 4 * a5;
      v47 = v45 + 4 * a5;
      v48 = v45;
      do
      {
        if (!v48)
        {
          goto LABEL_56;
        }

        v49 = *__src++;
        *v48++ = v49;
        v46 -= 4;
      }

      while (v46);
      v50 = *(a1 + 8) - __dst;
      memcpy((v45 + 4 * a5), __dst, v50);
      v52 = v47 + v50;
      *(a1 + 8) = v5;
      v53 = *a1;
      v54 = &v5[-*a1];
      v55 = v45 - v54;
      memcpy((v45 - v54), *a1, v54);
      *a1 = v55;
      *(a1 + 8) = v52;
      *(a1 + 16) = 0;
      if (v53)
      {
        operator delete(v53);
      }

      return v45;
    }

LABEL_57:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v12 = v7 - __dst;
  v13 = (v7 - __dst) >> 2;
  if (v13 >= a5)
  {
    v12 = 4 * a5;
    v32 = &__dst[4 * a5];
    v33 = (v7 - 4 * a5);
    if (v33 >= v7)
    {
      v37 = *(a1 + 8);
    }

    else
    {
      v34 = v33 + 1;
      if (v7 > (v33 + 1))
      {
        v34 = *(a1 + 8);
      }

      v35 = v34 + v12 + ~v7;
      v36 = v35 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v37 = *(a1 + 8);
      if (v36)
      {
        goto LABEL_61;
      }

      v38 = (v35 >> 2) + 1;
      v39 = 4 * (v38 & 0x7FFFFFFFFFFFFFF8);
      v33 = (v33 + v39);
      v37 = (v7 + v39);
      v40 = (v7 + 16);
      v41 = (v7 + 16 - v12);
      v42 = v38 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v43 = *v41;
        *(v40 - 1) = *(v41 - 1);
        *v40 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 8;
      }

      while (v42);
      if (v38 != (v38 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_61:
        do
        {
          v44 = *v33++;
          *v37++ = v44;
        }

        while (v33 < v7);
      }
    }

    *(a1 + 8) = v37;
    if (v7 != v32)
    {
      v57 = __src;
      memmove(v32, __dst, v7 - v32);
      __src = v57;
    }

    v58 = v5;
    v59 = __src;
    goto LABEL_55;
  }

  v14 = __src + v12;
  v15 = *(a1 + 8);
  v16 = v15;
  if (__src + v12 != a4)
  {
    while (v16)
    {
      v17 = *v14;
      v14 += 4;
      *v16 = v17;
      v16 += 4;
      v15 += 4;
      if (v14 == a4)
      {
        goto LABEL_16;
      }
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_16:
  *(a1 + 8) = v15;
  if (v13 < 1)
  {
    return v5;
  }

  v18 = a5;
  v19 = &__dst[4 * a5];
  v20 = (v15 - 4 * a5);
  if (v20 >= v7)
  {
    v23 = __src;
    v24 = v15;
  }

  else
  {
    v21 = v20 + 1;
    if (v7 > (v20 + 1))
    {
      v21 = v7;
    }

    v22 = &v21[v18] + ~v15;
    v23 = __src;
    v24 = v15;
    if (v22 < 0x1C)
    {
      goto LABEL_62;
    }

    if ((a5 & 0x3FFFFFFFFFFFFFF8) == 0)
    {
      goto LABEL_62;
    }

    v25 = (v22 >> 2) + 1;
    v26 = 4 * (v25 & 0x7FFFFFFFFFFFFFF8);
    v20 = (v20 + v26);
    v24 = (v15 + v26);
    v27 = (v15 + 16);
    v28 = (v15 + 16 - v18 * 4);
    v29 = v25 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v30 = *v28;
      *(v27 - 1) = *(v28 - 1);
      *v27 = v30;
      v27 += 2;
      v28 += 2;
      v29 -= 8;
    }

    while (v29);
    if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_62:
      do
      {
        v31 = *v20++;
        *v24++ = v31;
      }

      while (v20 < v7);
    }
  }

  *(a1 + 8) = v24;
  if (v16 != v19)
  {
    memmove(&__dst[4 * a5], __dst, v15 - v19);
  }

  if (v7 == v5)
  {
    return v5;
  }

  v58 = v5;
  v59 = v23;
LABEL_55:
  memmove(v58, v59, v12);
  return v5;
}

void std::vector<webrtc::SsrcGroup>::__emplace_back_slow_path<webrtc::SsrcGroup>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v1 <= 0x555555555555555)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v2 = 0x555555555555555;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x555555555555555)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void dcsctp::StreamResetHandler::HandleReConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dcsctp::Parameters::descriptors((a2 + 8), a5, a6, a7, a8, &__p);
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v104 - __p) >> 3);
  if (v14 == 2)
  {
    if (v104 == __p)
    {
LABEL_180:
      __break(1u);
      return;
    }

    v17 = *__p;
    if (v17 <= 0xF)
    {
      if (v17 == 13)
      {
        v20 = *(__p + 12);
        if (v20 != 14 && v20 != 16)
        {
          goto LABEL_28;
        }
      }

      else if (v17 != 14 || *(__p + 12) != 13)
      {
        goto LABEL_28;
      }
    }

    else if (v17 == 16)
    {
      v18 = *(__p + 12);
      v19 = v18 == 13 || v18 == 16;
      if (!v19)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v17 == 17)
      {
        if (*(__p + 12) == 18)
        {
          goto LABEL_4;
        }

        goto LABEL_28;
      }

      if (v17 != 18 || *(__p + 12) != 17)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    v15 = 1;
    v16 = __p;
    if (!__p)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v14 == 1 && *__p - 13 < 6)
  {
    goto LABEL_4;
  }

LABEL_28:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/net/dcsctp/socket/stream_reset_handler.cc");
  }

  v15 = 0;
  v16 = __p;
  if (!__p)
  {
    goto LABEL_32;
  }

LABEL_31:
  v104 = v16;
  operator delete(v16);
LABEL_32:
  if (!v15)
  {
    v78 = *(*(*(**(a1 + 16) + 40))(*(a1 + 16)) + 96);

    v78();
    return;
  }

  v101[0] = 0;
  v101[1] = 0;
  v102 = 0;
  dcsctp::Parameters::descriptors((a2 + 8), v10, v11, v12, v13, &v99);
  v25 = v99;
  v26 = v100;
  if (v99 == v100)
  {
    goto LABEL_156;
  }

  v27 = "Failed to parse Incoming Reset command";
  do
  {
    v29 = *v25;
    switch(v29)
    {
      case 16:
        dcsctp::ReconfigurationResponseParameter::Parse(*(v25 + 1), *(v25 + 2), &__p);
        if (v107)
        {
          if (*(a1 + 120) == 1 && *(a1 + 84) == 1 && v104 == *(a1 + 80))
          {
            v41 = *(a1 + 64);
            if (*(v41 + 156) == 1)
            {
              (*(**(v41 + 136) + 24))(*(v41 + 136));
              *(v41 + 160) = 0;
              *(v41 + 156) = 0;
              if ((v107 & 1) == 0)
              {
                goto LABEL_180;
              }
            }

            if ((HIDWORD(v104) - 2) >= 4)
            {
              if (HIDWORD(v104) >= 2)
              {
                if (HIDWORD(v104) == 6)
                {
                  if ((*(a1 + 120) & 1) == 0)
                  {
                    goto LABEL_180;
                  }

                  if (*(a1 + 84) == 1)
                  {
                    *(a1 + 84) = 0;
                  }

                  v74 = *(a1 + 64);
                  v75 = (*(**(a1 + 16) + 56))(*(a1 + 16));
                  v76 = 86400000000;
                  if (v75 < 86400000000)
                  {
                    v76 = v75;
                  }

                  *(v74 + 144) = v76;
                  dcsctp::Timer::Start(*(a1 + 64));
                }
              }

              else
              {
                v66 = (*(**(a1 + 16) + 40))(*(a1 + 16));
                if ((*(a1 + 120) & 1) == 0)
                {
                  goto LABEL_180;
                }

                v67 = *(a1 + 104) - *(a1 + 96);
                if (v67)
                {
                  v68 = *(a1 + 96);
                }

                else
                {
                  v68 = 0;
                }

                (*(*v66 + 144))(v66, v68, v67 >> 1);
                if (*(a1 + 120) == 1)
                {
                  v69 = *(a1 + 96);
                  if (v69)
                  {
                    *(a1 + 104) = v69;
                    operator delete(v69);
                  }

                  *(a1 + 120) = 0;
                }

                (*(**(*(a1 + 40) + 384) + 56))(*(*(a1 + 40) + 384));
              }
            }

            else
            {
              v42 = (*(**(a1 + 16) + 40))(*(a1 + 16));
              if ((*(a1 + 120) & 1) == 0 || (v107 & 1) == 0)
              {
                goto LABEL_180;
              }

              v43 = *(a1 + 104) - *(a1 + 96);
              if (v43)
              {
                v44 = *(a1 + 96);
              }

              else
              {
                v44 = 0;
              }

              v45 = HIDWORD(v104) - 1;
              if ((HIDWORD(v104) - 1) > 5)
              {
                v46 = 22;
                v47 = "Success: nothing to do";
              }

              else
              {
                v46 = qword_273BA4D48[v45];
                v47 = off_279E95410[v45];
              }

              (*(*v42 + 136))(v42, v44, v43 >> 1, v47, v46);
              if (*(a1 + 120) == 1)
              {
                v77 = *(a1 + 96);
                if (v77)
                {
                  *(a1 + 104) = v77;
                  operator delete(v77);
                }

                *(a1 + 120) = 0;
              }

              (*(**(*(a1 + 40) + 384) + 64))(*(*(a1 + 40) + 384));
            }
          }
        }

        else
        {
          v28 = (*(**(a1 + 16) + 40))(*(a1 + 16));
          (*(*v28 + 96))(v28, 3, "Failed to parse Reconfiguration Response command", 48);
        }

        break;
      case 14:
        dcsctp::IncomingSSNResetRequestParameter::Parse(*(v25 + 1), *(v25 + 2), &__p);
        if (v108)
        {
          v36 = v104;
          if (*(a1 + 60) == 1)
          {
            v37 = *(a1 + 56);
            v32 = v104 >= v37;
            v38 = v104 - v37;
            v39 = v38 != 0 && v32;
            if (v38 != 0x80000000)
            {
              v39 = v38 >= 0;
            }

            if (!v39)
            {
              v38 |= 0xFFFFFFFF00000000;
            }

            v40 = v38 + *(a1 + 48);
          }

          else
          {
            v40 = v104;
          }

          *(a1 + 48) = v40;
          *(a1 + 56) = v36;
          *(a1 + 60) = 1;
          if (dcsctp::StreamResetHandler::ValidateReqSeqNbr(a1, v40, v101))
          {
            if ((v108 & 1) == 0)
            {
              goto LABEL_180;
            }

            v110 = &unk_28829A410;
            *v111 = v104;
            v111[8] = 0;
            v111[12] = 0;
            v111[16] = 0;
            v111[20] = 0;
            v50 = v101[1];
            if (v101[1] >= v102)
            {
              std::vector<dcsctp::ReconfigurationResponseParameter>::__emplace_back_slow_path<dcsctp::ReconfigurationResponseParameter>(v101);
            }

            if (!v101[1])
            {
              goto LABEL_180;
            }

            *v101[1] = &unk_28829A410;
            v51 = *v111;
            *(v50 + 21) = *&v111[13];
            *(v50 + 8) = v51;
            v101[1] = v50 + 32;
            *(a1 + 128) = v40;
          }
        }

        else
        {
          v48 = (*(**(a1 + 16) + 40))(*(a1 + 16));
          (*(*v48 + 96))(v48, 3, v27, 38);
        }

        if (v108 == 1)
        {
          __p = &unk_288294AE0;
          if (v105)
          {
            v106 = v105;
            operator delete(v105);
          }
        }

        break;
      case 13:
        dcsctp::OutgoingSSNResetRequestParameter::Parse(*(v25 + 1), *(v25 + 2), &__p);
        if (v109)
        {
          v30 = v104;
          if (*(a1 + 60) == 1)
          {
            v31 = *(a1 + 56);
            v32 = v104 >= v31;
            v33 = v104 - v31;
            v34 = v33 != 0 && v32;
            if (v33 != 0x80000000)
            {
              v34 = v33 >= 0;
            }

            if (!v34)
            {
              v33 |= 0xFFFFFFFF00000000;
            }

            v35 = v33 + *(a1 + 48);
          }

          else
          {
            v35 = v104;
          }

          *(a1 + 48) = v35;
          *(a1 + 56) = v30;
          *(a1 + 60) = 1;
          if (dcsctp::StreamResetHandler::ValidateReqSeqNbr(a1, v35, v101))
          {
            *(a1 + 128) = v35;
            if ((v109 & 1) == 0)
            {
              goto LABEL_180;
            }

            v52 = v27;
            v53 = *(a1 + 24);
            v54 = v105;
            if (*(v53 + 52) == 1)
            {
              v55 = *(v53 + 48);
              v32 = v105 >= v55;
              v56 = v105 - v55;
              v57 = v56 != 0 && v32;
              if (v56 != 0x80000000)
              {
                v57 = v56 >= 0;
              }

              if (!v57)
              {
                v56 |= 0xFFFFFFFF00000000;
              }

              v54 = v56 + *(v53 + 40);
            }

            v58 = *(a1 + 32);
            if (v107 == v106)
            {
              v59 = 0;
            }

            else
            {
              v59 = v106;
            }

            if (v54 > *(v53 + 56))
            {
              dcsctp::ReassemblyQueue::EnterDeferredReset(*(a1 + 32), v105, v59, (v107 - v106) >> 1);
              v60 = 6;
              goto LABEL_131;
            }

            if (v107 == v106)
            {
              v61 = 0;
            }

            else
            {
              v61 = v59;
            }

            (*(**(v58 + 168) + 32))(*(v58 + 168), v61, (v107 - v106) >> 1);
            if (*(v58 + 152) == 1)
            {
              v63 = *(v58 + 128);
              v62 = *(v58 + 136);
              *(v58 + 136) = 0;
              *(v58 + 144) = 0;
              *(v58 + 128) = 0;
              v64 = *(v58 + 104);
              if (v64)
              {
                *(v58 + 112) = v64;
                operator delete(v64);
              }

              *(v58 + 152) = 0;
              v65 = v63;
              if (v63 == v62)
              {
                if (v63)
                {
                  goto LABEL_125;
                }
              }

              else
              {
                do
                {
                  v65[3](v65);
                  v65 += 4;
                }

                while (v65 != v62);
                if (v63)
                {
                  do
                  {
                    (*(v62 - 2))(1, (v62 - 4), (v62 - 4));
                    v62 -= 4;
                  }

                  while (v62 != v63);
LABEL_125:
                  operator delete(v63);
                }
              }
            }

            v70 = (*(**(a1 + 16) + 40))(*(a1 + 16));
            if ((v109 & 1) == 0)
            {
              goto LABEL_180;
            }

            if (v107 == v106)
            {
              v71 = 0;
            }

            else
            {
              v71 = v106;
            }

            (*(*v70 + 152))(v70, v71, (v107 - v106) >> 1);
            v60 = 1;
LABEL_131:
            *(a1 + 136) = v60;
            if ((v109 & 1) == 0)
            {
              goto LABEL_180;
            }

            v27 = v52;
            v110 = &unk_28829A410;
            *v111 = v104;
            *&v111[4] = v60;
            v111[8] = 0;
            v111[12] = 0;
            v111[16] = 0;
            v111[20] = 0;
            v72 = v101[1];
            if (v101[1] >= v102)
            {
              std::vector<dcsctp::ReconfigurationResponseParameter>::__emplace_back_slow_path<dcsctp::ReconfigurationResponseParameter>(v101);
            }

            if (!v101[1])
            {
              goto LABEL_180;
            }

            *v101[1] = &unk_28829A410;
            v73 = *v111;
            *(v72 + 21) = *&v111[13];
            *(v72 + 8) = v73;
            v101[1] = v72 + 32;
          }
        }

        else
        {
          v49 = (*(**(a1 + 16) + 40))(*(a1 + 16));
          (*(*v49 + 96))(v49, 3, "Failed to parse Outgoing Reset command", 38);
        }

        if (v109 == 1)
        {
          __p = &unk_2882973A8;
          if (v106)
          {
            v107 = v106;
            operator delete(v106);
          }
        }

        break;
      default:
        break;
    }

    v25 += 12;
  }

  while (v25 != v26);
  v25 = v99;
LABEL_156:
  if (v25)
  {
    v100 = v25;
    operator delete(v25);
  }

  v79 = v101[0];
  v80 = v101[1];
  if (v101[0] == v101[1])
  {
    if (v101[0])
    {
      goto LABEL_178;
    }
  }

  else
  {
    (*(**(a1 + 16) + 88))(&__p);
    v101[0] = 0;
    v101[1] = 0;
    v81 = v79;
    v82 = v79;
    v102 = 0;
    do
    {
      v91 = v101[1] - v101[0];
      if (((v101[1] - v101[0]) & 3) != 0)
      {
        v92 = (v91 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (v92 > v91)
        {
          v83 = v82;
          std::vector<unsigned char>::__append(v101, v92 - v91);
          v82 = v83;
        }

        else if (v92 < v91)
        {
          v101[1] = v101[0] + v92;
        }
      }

      v84 = v82 + 32;
      (*(*v82 + 16))(v82, v101);
      v81 += 32;
      v82 = v84;
    }

    while (v84 != v80);
    v93 = v102;
    v94 = *v101;
    v101[1] = 0;
    v102 = 0;
    v101[0] = 0;
    v110 = &unk_28829A3E0;
    *v111 = v94;
    *&v111[16] = v93;
    dcsctp::SctpPacket::Builder::Add(&__p, &v110, v85, v86, v87, v88, v89, v90);
    v110 = &unk_28829A3E0;
    if (*v111)
    {
      *&v111[8] = *v111;
      operator delete(*v111);
    }

    (*(**(a1 + 16) + 96))(*(a1 + 16), &__p);
    if (v101[0])
    {
      v101[1] = v101[0];
      operator delete(v101[0]);
    }

    if (v105)
    {
      v106 = v105;
      operator delete(v105);
    }

    if (v79)
    {
      v95 = v80 - 32;
      v96 = v80 - 32;
      v97 = (v80 - 32);
      do
      {
        v98 = *v97;
        v97 -= 4;
        (*v98)(v96);
        v95 -= 32;
        v19 = v96 == v79;
        v96 = v97;
      }

      while (!v19);
LABEL_178:
      operator delete(v79);
    }
  }
}