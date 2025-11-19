void std::vector<webrtc::StreamParams>::__emplace_back_slow_path<webrtc::StreamParams const&>(void *a1)
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

void std::vector<webrtc::StreamParams>::__assign_with_size[abi:sn200100]<webrtc::StreamParams*,webrtc::StreamParams*>(uint64_t a1, webrtc::StreamParams *a2, webrtc::StreamParams *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          webrtc::StreamParams::~StreamParams((v10 - 144));
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x1C71C71C71C71C7)
    {
      v12 = 0x8E38E38E38E38E39 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xE38E38E38E38E3)
      {
        v14 = 0x1C71C71C71C71C7;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }
    }

    goto LABEL_32;
  }

  v15 = *(a1 + 8);
  v16 = v15 - v8;
  if (0x8E38E38E38E38E39 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::StreamParams::operator=(v8, v5);
        v5 += 144;
        v8 += 144;
      }

      while (v5 != a3);
      v15 = *(a1 + 8);
    }

    while (v15 != v8)
    {
      v15 = (v15 - 144);
      webrtc::StreamParams::~StreamParams(v15);
    }
  }

  else
  {
    if (v15 != v8)
    {
      v17 = a2 + v16;
      do
      {
        webrtc::StreamParams::operator=(v8, v5);
        v5 += 144;
        v8 += 144;
        v16 -= 144;
      }

      while (v16);
      v15 = *(a1 + 8);
      v5 = v17;
    }

    v8 = v15;
    if (v5 != a3)
    {
      v8 = v15;
      v18 = v15;
      while (v18)
      {
        v19 = webrtc::StreamParams::StreamParams(v18, v5);
        v5 += 144;
        v18 = v19 + 6;
        v8 += 144;
        if (v5 == a3)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_32:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_30:
  *(a1 + 8) = v8;
}

void webrtc::AudioReceiverParameters::~AudioReceiverParameters(webrtc::AudioReceiverParameters *this)
{
  webrtc::MediaChannelParameters::~MediaChannelParameters(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::MediaChannelParameters::ToStringMap(webrtc::MediaChannelParameters *this@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v134 = *MEMORY[0x277D85DE8];
  memset(&v120, 0, sizeof(v120));
  if (&v120 <= "[" && &v120.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_333;
  }

  v120.__r_.__value_.__s.__data_[0] = 91;
  v4 = 1;
  *(&v120.__r_.__value_.__s + 23) = 1;
  v5 = *(this + 4);
  if (*(this + 5) == v5)
  {
    v11 = 0;
    goto LABEL_88;
  }

  webrtc::Codec::ToString(v5, &__p);
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

  if (p_p)
  {
    v8 = 1;
  }

  else
  {
    v8 = size == 0;
  }

  if (!v8)
  {
    goto LABEL_333;
  }

  if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (v120.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v120.__r_.__value_.__l.__size_;
  }

  if (v9 - v10 >= size)
  {
    if (size)
    {
      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v120;
      }

      else
      {
        v12 = v120.__r_.__value_.__r.__words[0];
      }

      if ((size & 0x8000000000000000) != 0)
      {
        goto LABEL_333;
      }

      v13 = v12 + v10;
      if ((v12 + v10) <= p_p && &v13[size] > p_p)
      {
        goto LABEL_333;
      }

      v14 = size;
      memmove(v13, p_p, size);
      v15 = v10 + v14;
      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        v120.__r_.__value_.__l.__size_ = v10 + v14;
        v12->__r_.__value_.__s.__data_[v15] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      *(&v120.__r_.__value_.__s + 23) = v15 & 0x7F;
      v12->__r_.__value_.__s.__data_[v15] = 0;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  std::string::__grow_by_and_replace(&v120, v9, v10 + size - v9, v10, v10, 0, size, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_23:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_35:
  if (0x84BDA12F684BDA13 * ((*(this + 5) - *(this + 4)) >> 3) >= 2)
  {
    v16 = 1;
    v17 = 216;
    do
    {
      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = 22;
      }

      else
      {
        v18 = (v120.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v120.__r_.__value_.__l.__size_;
      }

      if (v18 - v19 >= 2)
      {
        if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v120;
        }

        else
        {
          v21 = v120.__r_.__value_.__r.__words[0];
        }

        if (v21 + v19 <= ", " && &v21->__r_.__value_.__s.__data_[v19 + 2] > ", ")
        {
          goto LABEL_333;
        }

        *(&v21->__r_.__value_.__l.__data_ + v19) = 8236;
        v23 = v19 + 2;
        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          v120.__r_.__value_.__l.__size_ = v19 + 2;
        }

        else
        {
          *(&v120.__r_.__value_.__s + 23) = v23 & 0x7F;
        }

        v21->__r_.__value_.__s.__data_[v23] = 0;
        v20 = *(this + 4);
        if (0x84BDA12F684BDA13 * ((*(this + 5) - v20) >> 3) <= v16)
        {
          goto LABEL_333;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v120, v18, v19 - v18 + 2, v19, v19, 0, 2uLL, ", ");
        v20 = *(this + 4);
        if (0x84BDA12F684BDA13 * ((*(this + 5) - v20) >> 3) <= v16)
        {
          goto LABEL_333;
        }
      }

      webrtc::Codec::ToString((v20 + v17), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &__p;
      }

      else
      {
        v24 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = __p.__r_.__value_.__l.__size_;
      }

      if (!v24 && v25)
      {
        goto LABEL_333;
      }

      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = 22;
      }

      else
      {
        v26 = (v120.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v120.__r_.__value_.__l.__size_;
      }

      if (v26 - v27 >= v25)
      {
        if (v25)
        {
          if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v120;
          }

          else
          {
            v28 = v120.__r_.__value_.__r.__words[0];
          }

          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_333;
          }

          v29 = v28 + v27;
          if ((v28 + v27) <= v24 && &v29[v25] > v24)
          {
            goto LABEL_333;
          }

          v30 = v25;
          memmove(v29, v24, v25);
          v31 = v27 + v30;
          if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
          {
            v120.__r_.__value_.__l.__size_ = v27 + v30;
          }

          else
          {
            *(&v120.__r_.__value_.__s + 23) = v31 & 0x7F;
          }

          v28->__r_.__value_.__s.__data_[v31] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v120, v26, v27 + v25 - v26, v27, v27, 0, v25, v24);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v16;
      v17 += 216;
    }

    while (v16 < 0x84BDA12F684BDA13 * ((*(this + 5) - *(this + 4)) >> 3));
  }

  v4 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
  v11 = v120.__r_.__value_.__l.__size_;
LABEL_88:
  v32 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v33 = 22;
  }

  else
  {
    v33 = (v120.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v11 = v4;
  }

  if (v33 == v11)
  {
    std::string::__grow_by_and_replace(&v120, v33, 1uLL, v33, v33, 0, 1uLL, "]");
  }

  else
  {
    v34 = v120.__r_.__value_.__r.__words[0];
    if (v32 >= 0)
    {
      v34 = &v120;
    }

    v35 = v34 + v11;
    if (v34 + v11 <= "]" && v35 + 1 > "]")
    {
      goto LABEL_333;
    }

    *v35 = 93;
    v36 = v11 + 1;
    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      v120.__r_.__value_.__l.__size_ = v36;
    }

    else
    {
      *(&v120.__r_.__value_.__s + 23) = v36 & 0x7F;
    }

    v34->__r_.__value_.__s.__data_[v36] = 0;
  }

  v119[0] = v120.__r_.__value_.__l.__size_;
  v37 = v120.__r_.__value_.__r.__words[0];
  *(v119 + 7) = *(&v120.__r_.__value_.__r.__words[1] + 7);
  v38 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
  *(&v120.__r_.__value_.__s + 23) = 6;
  if (&v120 <= "codecs" && v120.__r_.__value_.__r.__words + 6 > "codecs")
  {
    goto LABEL_333;
  }

  strcpy(&v120, "codecs");
  v121 = v37;
  *v122 = v119[0];
  *&v122[7] = *(v119 + 7);
  v123 = v38;
  v119[0] = 0;
  *(v119 + 7) = 0;
  memset(&__p, 0, sizeof(__p));
  if (&__p <= "[" && &__p.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_333;
  }

  __p.__r_.__value_.__s.__data_[0] = 91;
  v39 = 1;
  *(&__p.__r_.__value_.__s + 23) = 1;
  v40 = *(this + 7);
  if (*(this + 8) != v40)
  {
    webrtc::RtpExtension::ToString(v40, &v115);
    if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v115;
    }

    else
    {
      v41 = v115.__r_.__value_.__r.__words[0];
    }

    if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v115.__r_.__value_.__l.__size_;
    }

    if (!v41 && v42)
    {
      goto LABEL_333;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = 22;
    }

    else
    {
      v43 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = __p.__r_.__value_.__l.__size_;
    }

    if (v43 - v44 < v42)
    {
      std::string::__grow_by_and_replace(&__p, v43, v44 + v42 - v43, v44, v44, 0, v42, v41);
      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_124;
      }

LABEL_137:
      if (*(this + 8) - *(this + 7) >= 0x21uLL)
      {
LABEL_138:
        v50 = 1;
        v51 = 32;
        while (1)
        {
          while (1)
          {
            v52 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            v53 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
            if (v52 - v53 >= 2)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v55 = &__p;
              }

              else
              {
                v55 = __p.__r_.__value_.__r.__words[0];
              }

              if (v55 + v53 <= ", " && &v55->__r_.__value_.__s.__data_[v53 + 2] > ", ")
              {
                goto LABEL_333;
              }

              *(&v55->__r_.__value_.__l.__data_ + v53) = 8236;
              v57 = v53 + 2;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                __p.__r_.__value_.__l.__size_ = v53 + 2;
                v55->__r_.__value_.__s.__data_[v57] = 0;
                v54 = *(this + 7);
                if (v50 >= (*(this + 8) - v54) >> 5)
                {
                  goto LABEL_333;
                }
              }

              else
              {
                *(&__p.__r_.__value_.__s + 23) = v57 & 0x7F;
                v55->__r_.__value_.__s.__data_[v57] = 0;
                v54 = *(this + 7);
                if (v50 >= (*(this + 8) - v54) >> 5)
                {
                  goto LABEL_333;
                }
              }
            }

            else
            {
              std::string::__grow_by_and_replace(&__p, v52, v53 - v52 + 2, v53, v53, 0, 2uLL, ", ");
              v54 = *(this + 7);
              if (v50 >= (*(this + 8) - v54) >> 5)
              {
                goto LABEL_333;
              }
            }

            webrtc::RtpExtension::ToString((v54 + v51), &v115);
            if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = &v115;
            }

            else
            {
              v58 = v115.__r_.__value_.__r.__words[0];
            }

            if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v59 = v115.__r_.__value_.__l.__size_;
            }

            if (!v58 && v59)
            {
              goto LABEL_333;
            }

            v60 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            v61 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
            if (v60 - v61 >= v59)
            {
              break;
            }

            std::string::__grow_by_and_replace(&__p, v60, v61 + v59 - v60, v61, v61, 0, v59, v58);
            if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_140;
            }

LABEL_186:
            operator delete(v115.__r_.__value_.__l.__data_);
            ++v50;
            v51 += 32;
            if (v50 >= (*(this + 8) - *(this + 7)) >> 5)
            {
              goto LABEL_190;
            }
          }

          if (v59)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = &__p;
            }

            else
            {
              v62 = __p.__r_.__value_.__r.__words[0];
            }

            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_333;
            }

            v63 = v62 + v61;
            if ((v62 + v61) <= v58 && &v63[v59] > v58)
            {
              goto LABEL_333;
            }

            v64 = v59;
            memmove(v63, v58, v59);
            v65 = v61 + v64;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              __p.__r_.__value_.__l.__size_ = v61 + v64;
              v62->__r_.__value_.__s.__data_[v65] = 0;
              if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_186;
              }

              goto LABEL_140;
            }

            *(&__p.__r_.__value_.__s + 23) = v65 & 0x7F;
            v62->__r_.__value_.__s.__data_[v65] = 0;
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_186;
          }

LABEL_140:
          ++v50;
          v51 += 32;
          if (v50 >= (*(this + 8) - *(this + 7)) >> 5)
          {
            goto LABEL_190;
          }
        }
      }

      goto LABEL_190;
    }

    if (v42)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &__p;
      }

      else
      {
        v46 = __p.__r_.__value_.__r.__words[0];
      }

      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_333;
      }

      v47 = v46 + v44;
      if ((v46 + v44) <= v41 && &v47[v42] > v41)
      {
        goto LABEL_333;
      }

      v48 = v42;
      memmove(v47, v41, v42);
      v49 = v44 + v48;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = v44 + v48;
        v46->__r_.__value_.__s.__data_[v49] = 0;
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_137;
        }

LABEL_124:
        operator delete(v115.__r_.__value_.__l.__data_);
        if (*(this + 8) - *(this + 7) >= 0x21uLL)
        {
          goto LABEL_138;
        }

LABEL_190:
        v39 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v45 = __p.__r_.__value_.__l.__size_;
        goto LABEL_191;
      }

      *(&__p.__r_.__value_.__s + 23) = v49 & 0x7F;
      v46->__r_.__value_.__s.__data_[v49] = 0;
    }

    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_124;
  }

  v45 = 0;
LABEL_191:
  v66 = v39;
  if ((v39 & 0x80u) == 0)
  {
    v67 = 22;
  }

  else
  {
    v67 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v39 & 0x80u) == 0)
  {
    v45 = v39;
  }

  if (v67 == v45)
  {
    std::string::__grow_by_and_replace(&__p, v67, 1uLL, v67, v67, 0, 1uLL, "]");
  }

  else
  {
    v68 = __p.__r_.__value_.__r.__words[0];
    if (v66 >= 0)
    {
      v68 = &__p;
    }

    v69 = v68 + v45;
    if (v68 + v45 <= "]" && v69 + 1 > "]")
    {
      goto LABEL_333;
    }

    *v69 = 93;
    v70 = v45 + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = v70;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v70 & 0x7F;
    }

    v68->__r_.__value_.__s.__data_[v70] = 0;
  }

  v118[0] = __p.__r_.__value_.__l.__size_;
  *(v118 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v125 = 10;
  if (v124 <= "extensions" && &v124[1] + 2 > "extensions")
  {
    goto LABEL_333;
  }

  strcpy(v124, "extensions");
  v126 = __p.__r_.__value_.__r.__words[0];
  *v127 = v118[0];
  *&v127[7] = *(v118 + 7);
  v128 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v118[0] = 0;
  *(v118 + 7) = 0;
  v71 = *(this + 81);
  v113.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&v113.__r_.__value_.__l.__data_ = 0uLL;
  v72 = absl::numbers_internal::FastIntToBuffer(v71, &v113, a2);
  v74 = v72 - &v113;
  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v113.__r_.__value_.__l.__size_ < v74)
    {
      goto LABEL_334;
    }

    v75 = v113.__r_.__value_.__r.__words[0];
    v113.__r_.__value_.__l.__size_ = v72 - &v113;
  }

  else
  {
    if (v74 > SHIBYTE(v113.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_334;
    }

    *(&v113.__r_.__value_.__s + 23) = v72 - &v113;
    v75 = &v113;
  }

  v75->__r_.__value_.__s.__data_[v74] = 0;
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v76 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v76 = v113.__r_.__value_.__l.__size_;
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v77 = 22;
  }

  else
  {
    v77 = (v113.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v77 - v76 < 0xE)
  {
    if (0x7FFFFFFFFFFFFFF6 - v77 >= v76 + 14 - v77)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = &v113;
  }

  else
  {
    v78 = v113.__r_.__value_.__r.__words[0];
  }

  v79 = "{reduced_size:";
  if (v76)
  {
    if ((v76 & 0x8000000000000000) != 0)
    {
      goto LABEL_333;
    }

    v80 = v78 + v76 <= "{reduced_size:" || v78 > "{reduced_size:";
    v81 = 14;
    if (v80)
    {
      v81 = 0;
    }

    v79 = &aReducedSize[v81];
    v82 = &v113;
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v82 = v113.__r_.__value_.__r.__words[0];
    }

    memmove(&v82->__r_.__value_.__r.__words[1] + 6, v78, v76);
  }

  v78->__r_.__value_.__r.__words[0] = *v79;
  *(v78->__r_.__value_.__r.__words + 6) = *(v79 + 6);
  v83 = v76 + 14;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    v113.__r_.__value_.__l.__size_ = v76 + 14;
  }

  else
  {
    *(&v113.__r_.__value_.__s + 23) = v83 & 0x7F;
  }

  v78->__r_.__value_.__s.__data_[v83] = 0;
  v114 = v113;
  memset(&v113, 0, sizeof(v113));
  v84 = (v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v114.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v85 = (v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v114.__r_.__value_.__r.__words[2]) : v114.__r_.__value_.__l.__size_;
  if (v84 - v85 >= 0x12)
  {
    v86 = &v114;
    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v86 = v114.__r_.__value_.__r.__words[0];
    }

    v87 = v86 + v85;
    if (v86 + v85 <= ", remote_estimate:" && v87 + 18 > ", remote_estimate:")
    {
      goto LABEL_333;
    }

    *(v87 + 8) = 14949;
    *v87 = *", remote_estimate:";
    v88 = v85 + 18;
    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      v114.__r_.__value_.__l.__size_ = v85 + 18;
    }

    else
    {
      *(&v114.__r_.__value_.__s + 23) = v88 & 0x7F;
    }

    v86->__r_.__value_.__s.__data_[v88] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v114, v84, v85 - v84 + 18, v85, v85, 0, 0x12uLL, ", remote_estimate:");
  }

  v115 = v114;
  memset(&v114, 0, sizeof(v114));
  v89 = *(this + 82);
  v111 = 0;
  v112 = 0x1600000000000000;
  v110 = 0;
  v90 = absl::numbers_internal::FastIntToBuffer(v89, &v110, v73);
  v91 = v90 - &v110;
  if ((SHIBYTE(v112) & 0x8000000000000000) != 0)
  {
    if (v111 < v91)
    {
      goto LABEL_334;
    }

    v92 = v110;
    v111 = v90 - &v110;
  }

  else
  {
    if (v91 > SHIBYTE(v112))
    {
      goto LABEL_334;
    }

    HIBYTE(v112) = v90 - &v110;
    v92 = &v110;
  }

  v92[v91] = 0;
  v93 = v112 >= 0 ? &v110 : v110;
  v94 = v112 >= 0 ? HIBYTE(v112) : v111;
  if (!v93 && v94)
  {
    goto LABEL_333;
  }

  v95 = (v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v115.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v96 = (v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v115.__r_.__value_.__r.__words[2]) : v115.__r_.__value_.__l.__size_;
  if (v95 - v96 >= v94)
  {
    if (v94)
    {
      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v115;
      }

      else
      {
        v97 = v115.__r_.__value_.__r.__words[0];
      }

      if ((v94 & 0x8000000000000000) != 0)
      {
        goto LABEL_333;
      }

      v98 = v97 + v96;
      if (v97 + v96 <= v93 && &v98[v94] > v93)
      {
        goto LABEL_333;
      }

      v99 = v94;
      memmove(v98, v93, v94);
      v100 = v96 + v99;
      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        v115.__r_.__value_.__l.__size_ = v96 + v99;
      }

      else
      {
        *(&v115.__r_.__value_.__s + 23) = v100 & 0x7F;
      }

      v97->__r_.__value_.__s.__data_[v100] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v115, v95, v96 + v94 - v95, v96, v96, 0, v94, v93);
  }

  __p = v115;
  memset(&v115, 0, sizeof(v115));
  v101 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v102 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  if (v101 == v102)
  {
    std::string::__grow_by_and_replace(&__p, v101, 1uLL, v101, v101, 0, 1uLL, "}");
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = &__p;
    }

    else
    {
      v103 = __p.__r_.__value_.__r.__words[0];
    }

    v104 = v103 + v102;
    if (v103 + v102 <= "}" && v104 + 1 > "}")
    {
      goto LABEL_333;
    }

    *v104 = 125;
    v105 = v102 + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = v105;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v105 & 0x7F;
    }

    v103->__r_.__value_.__s.__data_[v105] = 0;
  }

  v117[0] = __p.__r_.__value_.__l.__size_;
  v106 = __p.__r_.__value_.__r.__words[0];
  *(v117 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v107 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  v130 = 4;
  if (v129 <= "rtcp" && v129 + 4 > "rtcp")
  {
LABEL_333:
    __break(1u);
LABEL_334:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  strcpy(v129, "rtcp");
  v131 = v106;
  *v132 = v117[0];
  *&v132[7] = *(v117 + 7);
  v133 = v107;
  v108 = a3;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  *a3 = a3 + 8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a3, (a3 + 8), &v120.__r_.__value_.__l.__data_);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v108, (v108 + 8), v124);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v108, (v108 + 8), v129);
  if (v133 < 0)
  {
    operator delete(v131);
    if ((v130 & 0x80000000) == 0)
    {
LABEL_308:
      if ((v128 & 0x80000000) == 0)
      {
        goto LABEL_309;
      }

      goto LABEL_320;
    }
  }

  else if ((v130 & 0x80000000) == 0)
  {
    goto LABEL_308;
  }

  operator delete(v129[0]);
  if ((v128 & 0x80000000) == 0)
  {
LABEL_309:
    if ((v125 & 0x80000000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_321;
  }

LABEL_320:
  operator delete(v126);
  if ((v125 & 0x80000000) == 0)
  {
LABEL_310:
    if ((v123 & 0x80000000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_322;
  }

LABEL_321:
  operator delete(v124[0]);
  if ((v123 & 0x80000000) == 0)
  {
LABEL_311:
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_312;
    }

    goto LABEL_323;
  }

LABEL_322:
  operator delete(v121);
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_312:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_324;
  }

LABEL_323:
  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_313:
    if ((SHIBYTE(v112) & 0x80000000) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_325;
  }

LABEL_324:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v112) & 0x80000000) == 0)
  {
LABEL_314:
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_315;
    }

    goto LABEL_326;
  }

LABEL_325:
  operator delete(v110);
  if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_315:
    if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_327;
  }

LABEL_326:
  operator delete(v115.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_316:
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_328:
    operator delete(v113.__r_.__value_.__l.__data_);
    return;
  }

LABEL_327:
  operator delete(v114.__r_.__value_.__l.__data_);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_328;
  }
}

void webrtc::MediaChannelParameters::~MediaChannelParameters(webrtc::MediaChannelParameters *this)
{
  webrtc::MediaChannelParameters::~MediaChannelParameters(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_288290C98;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *(this + 8);
    v4 = *(this + 7);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 7);
    }

    *(this + 8) = v2;
    operator delete(v4);
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(this + 5);
    v8 = *(this + 4);
    if (v7 != v6)
    {
      v9 = v7 - 27;
      v10 = v7 - 27;
      v11 = v7 - 27;
      do
      {
        v12 = *v11;
        v11 -= 27;
        (*v12)(v10);
        v9 -= 27;
        v13 = v10 == v6;
        v10 = v11;
      }

      while (!v13);
      v8 = *(this + 4);
    }

    *(this + 5) = v6;
    operator delete(v8);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

webrtc::MediaChannelParameters *webrtc::MediaChannelParameters::MediaChannelParameters(webrtc::MediaChannelParameters *this, const webrtc::MediaChannelParameters *a2)
{
  *this = &unk_288290C98;
  v4 = (this + 8);
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v4->__r_.__value_.__l.__data_ = v5;
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    v6 = *(a2 + 4);
    v7 = *(a2 + 5);
    v8 = v7 - v6;
    if (v7 == v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (0x84BDA12F684BDA13 * (v8 >> 3) < 0x12F684BDA12F685)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__init_copy_ctor_external(v4, *(a2 + 1), *(a2 + 2));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v8 = v12 - v11;
  if (v12 != v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v9 = *(a2 + 7);
  v10 = *(a2 + 8);
  if (v10 != v9)
  {
    if (((v10 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = *(a2 + 40);
  *(this + 82) = *(a2 + 82);
  *(this + 40) = v13;
  return this;
}

void webrtc::VideoReceiverParameters::~VideoReceiverParameters(webrtc::VideoReceiverParameters *this)
{
  webrtc::MediaChannelParameters::~MediaChannelParameters(this);

  JUMPOUT(0x2743DA540);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BaseChannel::ConnectToRtpTransport_n(void)::$_0 &,BOOL>(void *a1)
{
  v1 = *(*(*(**a1 + 40))(*a1) + 72);

  return v1();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BaseChannel::ConnectToRtpTransport_n(void)::$_1 &,std::optional<webrtc::NetworkRoute>>(void ***a1, __int128 *a2)
{
  v2 = *a1;
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 8);
  v3 = *(a2 + 36);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v4 = ((*v2)[12])(v2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    result = (*(*v2[3] + 32))(v2[3]);
    if (result == 2)
    {
      v23[7] = 4;
      v7 = (__p + 4);
      if (__p > "data" || __p + 4 <= "data")
      {
        LODWORD(__p[0]) = 1635017060;
        goto LABEL_17;
      }
    }

    else
    {
      if (result == 1)
      {
        v23[7] = 5;
        v7 = (__p + 5);
        v8 = "video";
        if (__p > "video")
        {
LABEL_12:
          LODWORD(__p[0]) = *v8;
          BYTE4(__p[0]) = v8[4];
LABEL_17:
          *v7 = 0;
          webrtc::StringFormat("{mid: %s, media_type: %s}", &v24, v5, __p);
          if ((v23[7] & 0x80000000) != 0)
          {
            operator delete(__p[0]);
          }

          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
          if (v25 < 0)
          {
            operator delete(v24);
          }

          goto LABEL_21;
        }
      }

      else
      {
        if (result)
        {
          v23[7] = 0;
          v7 = __p;
          goto LABEL_17;
        }

        v23[7] = 5;
        v7 = (__p + 5);
        v8 = "audio";
        if (__p > "audio")
        {
          goto LABEL_12;
        }
      }

      if (__p + 5 <= v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

LABEL_21:
  LOBYTE(__p[0]) = 0;
  *(__p + 4) = 0;
  BYTE4(__p[1]) = 0;
  *v23 = 0;
  v23[8] = 0;
  *&v23[12] = 0xFFFFFFFFLL;
  if (v3)
  {
    *__p = v19;
    *v23 = v20;
    *&v23[16] = v21;
  }

  v16 = ((*v2)[5])(v2);
  v17 = ((*v2)[11])(v2);
  return (*(*v16 + 80))(v16, v17, v18, __p);
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BaseChannel::ConnectToRtpTransport_n(void)::$_2 &,BOOL>(webrtc::BaseChannel **a1, int a2)
{
  v2 = *a1;
  if (a2)
  {
    webrtc::BaseChannel::ChannelWritable_n(v2);
  }

  else
  {
    webrtc::BaseChannel::ChannelNotWritable_n(v2);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BaseChannel::ConnectToRtpTransport_n(void)::$_3 &,webrtc::SentPacketInfo const&>(void *a1)
{
  v1 = *(*(*(**a1 + 40))(*a1) + 64);

  return v1();
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BaseChannel::SetRtpTransport(webrtc::RtpTransportInternal *)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 288);
  v3 = *(*a1 + 296);
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  *(v1 + 296) = v2;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BaseChannel::Enable(BOOL)::$_0 &&>(uint64_t result)
{
  v1 = *result;
  if (*(result + 8) == 1)
  {
    if (*(v1 + 200))
    {
      return result;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_27;
    }

    v3 = (*(*v1 + 96))(v1);
    if (*(v3 + 23) >= 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = *v3;
    }

    result = (*(**(v1 + 24) + 32))(*(v1 + 24));
    if (result == 2)
    {
      v17 = 4;
      v5 = (__p + 4);
      if (__p > "data" || __p + 4 <= "data")
      {
        LODWORD(__p[0]) = 1635017060;
        goto LABEL_23;
      }
    }

    else
    {
      if (result == 1)
      {
        v17 = 5;
        v5 = (__p + 5);
        v6 = "video";
        if (__p > "video")
        {
LABEL_18:
          LODWORD(__p[0]) = *v6;
          BYTE4(__p[0]) = v6[4];
LABEL_23:
          *v5 = 0;
          webrtc::StringFormat("{mid: %s, media_type: %s}", &v14, v4, __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
          if (v15 < 0)
          {
            operator delete(v14);
          }

LABEL_27:
          *(v1 + 200) = 1;
          return (*(*v1 + 208))(v1);
        }
      }

      else
      {
        if (result)
        {
          v17 = 0;
          v5 = __p;
          goto LABEL_23;
        }

        v17 = 5;
        v5 = (__p + 5);
        v6 = "audio";
        if (__p > "audio")
        {
          goto LABEL_18;
        }
      }

      if (__p + 5 <= v6)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    return result;
  }

  v2 = *result;

  return webrtc::BaseChannel::DisableMedia_w(v2);
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::BaseChannel::MaybeUpdateDemuxerAndRtpExtensions_w(BOOL,std::optional<std::vector<webrtc::RtpExtension>>,std::string &)::$_0,BOOL,void>(webrtc::BaseChannel::MaybeUpdateDemuxerAndRtpExtensions_w(BOOL,std::optional<std::vector<webrtc::RtpExtension>>,std::string &)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (*(*(v2 + 8) + 24) == 1)
  {
    (*(*v3[17] + 88))(v3[17]);
  }

  if (**(v2 + 16) == 1 && ((*(*v3[17] + 104))(v3[17], v3 + 39, v3 + 2) & 1) == 0)
  {
    v5 = ((*v3)[12])(v3);
    if (*(v5 + 23) >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    webrtc::RtpDemuxerCriteria::ToString((v3 + 39), v6, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    webrtc::StringFormat("Failed to apply demuxer criteria for '%s': '%s'.", &v12, v7, p_p);
    v9 = *(v2 + 24);
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    v10 = v12;
    *(v9 + 16) = v13;
    *v9 = v10;
    HIBYTE(v13) = 0;
    LOBYTE(v12) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  **a1 = v4;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::BaseChannel::RegisterRtpDemuxerSink_w(void)::$_0,BOOL,void>(webrtc::BaseChannel::RegisterRtpDemuxerSink_w(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(*v2 + 136);
  if (result)
  {
    result = (*(*result + 104))(result, v2 + 8, *v2 + 16);
  }

  **a1 = result;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BaseChannel::ChannelWritable_n(void)::$_0 &&>(_BYTE **a1)
{
  v1 = *a1;
  v1[194] = 1;
  return (*(*v1 + 208))();
}

char *std::vector<unsigned int>::emplace<unsigned int const&>(uint64_t a1, char *__src, int *a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v5 < v7)
  {
    if (__src != v5)
    {
      v8 = *a3;
      v9 = __src + 4;
      if (v5 < 4)
      {
        *(a1 + 8) = v5;
        if (v5 == v9)
        {
LABEL_26:
          *__src = v8;
          return __src;
        }
      }

      else
      {
        *v5 = *(v5 - 1);
        *(a1 + 8) = v5 + 4;
        if (v5 == v9)
        {
          goto LABEL_26;
        }
      }

      memmove(__src + 4, __src, v5 - v9);
      goto LABEL_26;
    }

    if (v6)
    {
      *v5 = *a3;
      *(a1 + 8) = v5 + 4;
      return __src;
    }

    goto LABEL_31;
  }

  v10 = ((v5 - v6) >> 2) + 1;
  if (v10 >> 62)
  {
    goto LABEL_32;
  }

  v11 = v7 - v6;
  if (v11 >> 1 > v10)
  {
    v10 = v11 >> 1;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v12 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 62))
    {
      operator new();
    }

    goto LABEL_33;
  }

  v14 = __src - v6;
  v15 = (__src - v6) >> 2;
  v16 = (4 * v15);
  if (!v15)
  {
    if (v14 < 1)
    {
      v22 = v14 >> 1;
      if (v6 == __src)
      {
        v22 = 1;
      }

      if (!(v22 >> 62))
      {
        operator new();
      }

LABEL_33:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v16 = (v16 - (((v14 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (!v16)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v16 = *a3;
  memcpy(v16 + 1, __src, *(a1 + 8) - __src);
  v17 = *a1;
  v18 = v16 + *(a1 + 8) - __src + 4;
  *(a1 + 8) = __src;
  v19 = (__src - v17);
  v20 = v16 - (__src - v17);
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

double std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>@<D0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, unint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X8>)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *a1;
      if (v6 < *a1)
      {
        *a1 = v6;
        *(a2 - 1) = v7;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = &a1[a3 >> 1];
      v18 = a3 - (a3 >> 1);
      v19 = a1;
      if (a3 <= a5)
      {
        v24 = a4;
        std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(a1, v17, a3 >> 1, a4, a6);
        v25 = &v24[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(v17, a2, v18, v25, v26);
        v27 = &v24[a3];
        v28 = v25;
        v29 = v19;
        do
        {
          if (v28 == v27)
          {
            if (v24 == v25)
            {
              return v22.n128_f64[0];
            }

            v43 = v25 - v24 - 4;
            if (v43 >= 0x1C)
            {
              if ((v19 - v24) >= 0x20)
              {
                v45 = v29 + 1;
                v46 = (v43 >> 2) + 1;
                v47 = v46 & 0x7FFFFFFFFFFFFFF8;
                v44 = &v24[v47];
                v29 = (v29 + v47 * 4);
                v48 = (v24 + 4);
                v49 = v46 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v22 = v48[-1];
                  v50 = *v48;
                  v45[-1] = v22;
                  *v45 = v50;
                  v45 += 2;
                  v48 += 2;
                  v49 -= 8;
                }

                while (v49);
                if (v46 == (v46 & 0x7FFFFFFFFFFFFFF8))
                {
                  return v22.n128_f64[0];
                }
              }

              else
              {
                v44 = v24;
              }
            }

            else
            {
              v44 = v24;
            }

            do
            {
              v51 = *v44++;
              v29->n128_u32[0] = v51;
              v29 = (v29 + 4);
            }

            while (v44 != v25);
            return v22.n128_f64[0];
          }

          v30 = v28;
          v31 = *v28;
          v32 = v31 < *v24;
          if (v31 >= *v24)
          {
            v33 = *v24;
          }

          else
          {
            v33 = v31;
          }

          v24 += v31 >= *v24;
          v34 = v32;
          v28 = &v30[v34];
          v29->n128_u32[0] = v33;
          v29 = (v29 + 4);
          v19 = (v19 + 4);
        }

        while (v24 != v25);
        if (v28 != v27)
        {
          v35 = v27 - v30 - v34 * 4 - 4;
          if (v35 <= 0x2B)
          {
            goto LABEL_48;
          }

          if ((v19 - v30 - v34 * 4) < 0x20)
          {
            goto LABEL_48;
          }

          v36 = v29 + 1;
          v37 = (v35 >> 2) + 1;
          v38 = 4 * (v37 & 0x7FFFFFFFFFFFFFF8);
          v28 = (v28 + v38);
          v29 = (v29 + v38);
          v39 = &v30[v34 + 4];
          v40 = v37 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v22 = v39[-1];
            v41 = *v39;
            v36[-1] = v22;
            *v36 = v41;
            v36 += 2;
            v39 += 2;
            v40 -= 8;
          }

          while (v40);
          if (v37 != (v37 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_48:
            do
            {
              v42 = *v28++;
              v29->n128_u32[0] = v42;
              v29 = (v29 + 4);
            }

            while (v28 != v27);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(a1, v17, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(v17, a2, v18, a4, a5);

        v22.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(v19, v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v8 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v9 = 0;
        v10 = a1;
        do
        {
          v12 = *v10;
          v10 = v8;
          v13 = *v8;
          if (v13 < v12)
          {
            v14 = v9;
            do
            {
              *(a1 + v14 + 4) = v12;
              if (!v14)
              {
                v11 = a1;
                goto LABEL_11;
              }

              v12 = *(a1 + v14 - 4);
              v14 -= 4;
            }

            while (v13 < v12);
            v11 = (a1 + v14 + 4);
LABEL_11:
            *v11 = v13;
          }

          v8 = v10 + 1;
          v9 += 4;
        }

        while (v10 + 1 != a2);
      }
    }
  }

  return v22.n128_f64[0];
}

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, int64_t a5@<X8>)
{
  switch(a3)
  {
    case 0:
      return result;
    case 2:
      v10 = *(a2 - 1);
      v9 = a2 - 1;
      a5 = v10;
      v5 = *result;
      if (v10 >= v5)
      {
        if (!a4)
        {
          goto LABEL_41;
        }

        LODWORD(a5) = *result;
        result = v9;
      }

      else if (!a4)
      {
        goto LABEL_41;
      }

      *a4++ = a5;
      goto LABEL_26;
    case 1:
      if (!a4)
      {
        goto LABEL_41;
      }

LABEL_26:
      *a4 = *result;
      return result;
  }

  if (a3 > 8)
  {
    v21 = a3 >> 1;
    v22 = a3 >> 1;
    v23 = &result[v22];
    v24 = result;
    v7 = a2;
    v8 = a4;
    (std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>)();
    result = std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(v23, v7, a3 - v21, v8 + v22 * 4, a3 - v21);
    v5 = -v8;
    a5 = v23;
    do
    {
      while (1)
      {
        if (a5 == v7)
        {
          while (v24 != v23)
          {
            if (!v8)
            {
              goto LABEL_41;
            }

            v27 = *v24++;
            a5 = v27;
            *v8 = v27;
            v8 += 4;
          }

          return result;
        }

        v6 = *v24;
        if (*a5 < v6)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_41;
        }

        *v8 = v6;
        v8 += 4;
        ++v24;
        v5 -= 4;
        if (v24 == v23)
        {
          goto LABEL_35;
        }
      }

      if (!v8)
      {
        goto LABEL_41;
      }

      *v8 = *a5;
      v8 += 4;
      a5 += 4;
      v5 -= 4;
    }

    while (v24 != v23);
LABEL_35:
    if (a5 == v7)
    {
      return result;
    }

    v6 = v7 - a5 - 4;
    if (v6 < 0x2C)
    {
      v26 = a5;
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (result == a2)
  {
    return result;
  }

  if (a4)
  {
    v11 = *result++;
    *a4 = v11;
    if (result != a2)
    {
      v12 = 0;
      v13 = a4;
      v14 = a4;
      do
      {
        while (1)
        {
          v16 = *v14++;
          v15 = v16;
          if (*result < v16)
          {
            break;
          }

          *v14 = *result++;
          v12 += 4;
          v13 = v14;
          if (result == a2)
          {
            return result;
          }
        }

        v13[1] = v15;
        v17 = a4;
        if (v13 != a4)
        {
          v18 = v12;
          while (1)
          {
            v17 = (a4 + v18);
            v19 = *(a4 + v18 - 4);
            if (*result >= v19)
            {
              break;
            }

            *v17 = v19;
            v18 -= 4;
            if (!v18)
            {
              v17 = a4;
              break;
            }
          }
        }

        v20 = *result++;
        *v17 = v20;
        v12 += 4;
        v13 = v14;
      }

      while (result != a2);
    }

    return result;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  if (-(a5 + v5) < 0x20)
  {
    v26 = a5;
    do
    {
LABEL_47:
      v34 = *v26++;
      *v8 = v34;
      v8 += 4;
    }

    while (v26 != v7);
    return result;
  }

  v28 = (v8 + 16);
  v29 = (v6 >> 2) + 1;
  v30 = 4 * (v29 & 0x7FFFFFFFFFFFFFF8);
  v8 += v30;
  v26 = (a5 + v30);
  v31 = (a5 + 16);
  v32 = v29 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v33 = *v31;
    *(v28 - 1) = *(v31 - 1);
    *v28 = v33;
    v31 += 2;
    v28 += 2;
    v32 -= 8;
  }

  while (v32);
  if (v29 != (v29 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_47;
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(__n128 *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a4 > a7 && a5 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v9 = 0;
    v10 = *a2;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_u32[v9 / 4];
      if (v10 < v12)
      {
        break;
      }

      v9 += 4;
      v86 = __CFADD__(v11++, 1);
      if (v86)
      {
        return result;
      }
    }

    v13 = -v11;
    v14 = (a1 + v9);
    if (-v11 < a5)
    {
      v15 = a5 / 2;
      v16 = &a2[4 * (a5 / 2)];
      v17 = a2;
      if (a2 - a1 != v9)
      {
        v18 = (a2 - a1 - v9) >> 2;
        v17 = a1 + v9;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[4 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 4;
          v18 += ~(v18 >> 1);
          if (*v16 < v22)
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v9) >> 2;
      v24 = &a2[4 * (a5 / 2)];
      v25 = a2 - v17;
      if (a2 == v17)
      {
        goto LABEL_49;
      }

LABEL_27:
      v24 = v17;
      if (a2 != v16)
      {
        if (v17 + 4 == a2)
        {
          v97 = *v17;
          v31 = v16 - a2;
          v101 = a3;
          v103 = a1;
          v99 = a6;
          v32 = a5;
          v33 = (a1 + v9);
          memmove(v17, a2, v16 - a2);
          v14 = v33;
          a5 = v32;
          a3 = v101;
          a1 = v103;
          a6 = v99;
          v24 = &v17[v31];
          *v24 = v97;
        }

        else if (a2 + 4 == v16)
        {
          v34 = *(v16 - 1);
          v24 = v17 + 4;
          if (v16 - 4 != v17)
          {
            v102 = a3;
            v104 = a1;
            v98 = a5;
            v100 = a6;
            v35 = (a1 + v9);
            memmove(v17 + 4, v17, v16 - 4 - v17);
            v14 = v35;
            a5 = v98;
            a6 = v100;
            a3 = v102;
            a1 = v104;
          }

          *v17 = v34;
        }

        else
        {
          v36 = v25 >> 2;
          v37 = (v16 - a2) >> 2;
          if (v25 >> 2 == v37)
          {
            v38 = v17 + 4;
            v39 = a2 + 4;
            do
            {
              v40 = *(v38 - 1);
              *(v38 - 1) = *(v39 - 1);
              *(v39 - 1) = v40;
              if (v38 == a2)
              {
                break;
              }

              v38 += 4;
              v41 = v39 == v16;
              v39 += 4;
            }

            while (!v41);
            v24 = a2;
          }

          else
          {
            v42 = v25 >> 2;
            do
            {
              v43 = v42;
              v42 = v37;
              v37 = v43 % v37;
            }

            while (v37);
            v44 = &v17[4 * v42];
            do
            {
              v46 = *(v44 - 1);
              v44 -= 4;
              v45 = v46;
              v47 = &v44[v25];
              v48 = v44;
              do
              {
                v49 = v47;
                *v48 = *v47;
                v50 = (v16 - v47) >> 2;
                v51 = __OFSUB__(v36, v50);
                v53 = v36 - v50;
                v52 = (v53 < 0) ^ v51;
                v47 = &v17[4 * v53];
                if (v52)
                {
                  v47 = &v49[4 * v36];
                }

                v48 = v49;
              }

              while (v47 != v44);
              *v49 = v45;
            }

            while (v44 != v17);
            v24 = &v17[v16 - a2];
          }
        }
      }

      goto LABEL_49;
    }

    if (v11 == -1)
    {
      a1->n128_u32[v9 / 4] = v10;
      *a2 = v12;
      return result;
    }

    v23 = v13 / 2;
    v17 = a1 + 4 * (v13 / 2) + v9;
    v16 = a2;
    if (a2 != a3)
    {
      v26 = (a3 - a2) >> 2;
      v16 = a2;
      do
      {
        v27 = v26 >> 1;
        v28 = &v16[4 * (v26 >> 1)];
        v30 = *v28;
        v29 = v28 + 4;
        v26 += ~(v26 >> 1);
        if (v30 < *v17)
        {
          v16 = v29;
        }

        else
        {
          v26 = v27;
        }
      }

      while (v26);
    }

    v15 = (v16 - a2) >> 2;
    v24 = v16;
    v25 = a2 - v17;
    if (a2 != v17)
    {
      goto LABEL_27;
    }

LABEL_49:
    v54 = -(v23 + v11);
    v55 = a5 - v15;
    if (v23 + v15 >= a5 - (v23 + v15) - v11)
    {
      v60 = v14;
      std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(v24, v16, a3, v54, a5 - v15, a6, a7);
      a1 = v60;
      a2 = v17;
      a4 = v23;
      a3 = v24;
      a5 = v15;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      v56 = v17;
      v57 = a3;
      v58 = v54;
      std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(a1 + v9, v56, v24, v23, v15, a6, a7);
      a4 = v58;
      a3 = v57;
      a1 = v24;
      a2 = v16;
      a5 = v55;
      if (!v55)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v70 = a2 - a1 - 4;
      v71 = a6;
      v72 = a1;
      if (v70 < 0x1C)
      {
        goto LABEL_102;
      }

      v71 = a6;
      v72 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_102;
      }

      v73 = (v70 >> 2) + 1;
      v74 = 4 * (v73 & 0x7FFFFFFFFFFFFFF8);
      v71 = &a6[v74];
      v72 = a1 + v74;
      v75 = a1 + 1;
      v76 = (a6 + 16);
      v77 = v73 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        result = v75[-1];
        v78 = *v75;
        v76[-1] = result;
        *v76 = v78;
        v75 += 2;
        v76 += 2;
        v77 -= 8;
      }

      while (v77);
      if (v73 != (v73 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_102:
        do
        {
          v79 = *v72;
          v72 += 4;
          *v71 = v79;
          v71 += 4;
        }

        while (v72 != a2);
      }

      while (a2 != a3)
      {
        v80 = *a2;
        v81 = *a2 >= *a6;
        if (*a2 >= *a6)
        {
          v80 = *a6;
        }

        a2 += 4 * (*a2 < *a6);
        a6 += 4 * v81;
        a1->n128_u32[0] = v80;
        a1 = (a1 + 4);
        if (a6 == v71)
        {
          return result;
        }
      }

      memmove(a1, a6, v71 - a6);
    }
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v61 = a3 - a2 - 4;
    if (v61 < 0x1C)
    {
      v62 = a6;
      v63 = a2;
    }

    else
    {
      v62 = a6;
      v63 = a2;
      if ((a6 - a2) > 0x1F)
      {
        v64 = (v61 >> 2) + 1;
        v65 = 4 * (v64 & 0x7FFFFFFFFFFFFFF8);
        v62 = &a6[v65];
        v63 = &a2[v65];
        v66 = (a2 + 16);
        v67 = (a6 + 16);
        v68 = v64 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          result = v66[-1];
          v69 = *v66;
          v67[-1] = result;
          *v67 = v69;
          v66 += 2;
          v67 += 2;
          v68 -= 8;
        }

        while (v68);
        if (v64 == (v64 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_80;
        }
      }
    }

    do
    {
      v82 = *v63;
      v63 += 4;
      *v62 = v82;
      v62 += 4;
    }

    while (v63 != a3);
LABEL_80:
    v83 = a3;
    while (a2 != a1)
    {
      v84 = *(v62 - 1);
      v85 = *(a2 - 1);
      v86 = v84 >= v85;
      if (v84 <= v85)
      {
        v84 = *(a2 - 1);
      }

      if (v86)
      {
        v62 -= 4;
      }

      else
      {
        a2 -= 4;
      }

      *(a3 - 1) = v84;
      a3 -= 4;
      v83 -= 4;
      if (v62 == a6)
      {
        return result;
      }
    }

    v87 = v62 - a6;
    if (v62 != a6)
    {
      v88 = v87 - 4;
      if ((v87 - 4) < 0x2C || (v62 - v83) < 0x20)
      {
        v89 = v62;
        goto LABEL_93;
      }

      v92 = (a3 - 16);
      v93 = (v88 >> 2) + 1;
      v94 = 4 * (v93 & 0x7FFFFFFFFFFFFFF8);
      v89 = &v62[-v94];
      a3 -= v94;
      v95 = (v62 - 16);
      v96 = v93 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        result = *v95;
        v92[-1] = v95[-1];
        *v92 = result;
        v92 -= 2;
        v95 -= 2;
        v96 -= 8;
      }

      while (v96);
      if (v93 != (v93 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_93:
        v90 = a3 - 4;
        do
        {
          v91 = *(v89 - 1);
          v89 -= 4;
          *v90 = v91;
          v90 -= 4;
        }

        while (v89 != a6);
      }
    }
  }

  return result;
}

void std::vector<unsigned char>::emplace<unsigned char>(char **a1, char *__src, char *a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  if (v5 < v7)
  {
    if (__src != v5)
    {
      v8 = *a3;
      v9 = __src + 1;
      if (v5)
      {
        *v5 = *(v5 - 1);
        a1[1] = v5 + 1;
        if (v5 == v9)
        {
          goto LABEL_21;
        }
      }

      else
      {
        a1[1] = 0;
        if (__src == -1)
        {
LABEL_21:
          *__src = v8;
          return;
        }
      }

      memmove(__src + 1, __src, v5 - v9);
      goto LABEL_21;
    }

    if (v6)
    {
      *v5 = *a3;
      a1[1] = v5 + 1;
      return;
    }

    __break(1u);
LABEL_27:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = v5 - v6 + 1;
  if (v10 < 0)
  {
    goto LABEL_27;
  }

  v11 = (__src - v6);
  v12 = v7 - v6;
  if (2 * v12 > v10)
  {
    v10 = 2 * v12;
  }

  if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v10;
  }

  if (v13)
  {
    operator new();
  }

  if (!v11)
  {
    operator new();
  }

  *v11 = *a3;
  memcpy(v11 + 1, __src, a1[1] - __src);
  v14 = *a1;
  v15 = &v11[a1[1] - __src + 1];
  a1[1] = __src;
  v16 = &v11[v14 - __src];
  memcpy(v16, v14, __src - v14);
  v17 = *a1;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = 0;
  if (v17)
  {

    operator delete(v17);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::VideoChannel::VideoChannel(webrtc::TaskQueueBase *,webrtc::Thread *,webrtc::TaskQueueBase *,std::unique_ptr<webrtc::VideoMediaSendChannelInterface>,std::unique_ptr<webrtc::VideoMediaReceiveChannelInterface>,std::string_view,BOOL,webrtc::CryptoOptions,webrtc::UniqueRandomIdGenerator *)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(**(*a1 + 32) + 16))(*(*a1 + 32));
  v3 = (*(**(v1 + 24) + 16))(*(v1 + 24));
  v4 = (*(*v3 + 240))(v3);
  v5 = (*(**(v1 + 24) + 16))(*(v1 + 24));
  v6 = (*(*v5 + 160))(v5);
  v7 = (*(**(v1 + 24) + 16))(*(v1 + 24));
  v8 = (*(*v7 + 232))(v7);
  v9 = (*(**(v1 + 24) + 16))(*(v1 + 24));
  v10 = (*(*v9 + 248))(v9);
  v11 = *(*v2 + 232);

  return v11(v2, v4, v6, v8, v10 & 0xFFFFFFFFFFLL);
}

void std::vector<webrtc::Codec const*>::emplace<webrtc::Codec const*>(uint64_t a1, char *__src, uint64_t *a3)
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

uint64_t webrtc::ChannelMixer::ChannelMixer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 4) = a4;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0u;
  v8 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  if (a4 == 14 && a2 == 12)
  {
    v10 = 10;
  }

  else
  {
    v10 = a2;
  }

  if (a4 == 13 && a2 == 11)
  {
    v10 = 9;
  }

  v19 = v10;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v24 = 0;
  v25 = 0;
  __p = 0;
  if (a4 != 16)
  {
    if (a2 == 29)
    {
      if (a4 == 29)
      {
        goto LABEL_15;
      }
    }

    else
    {
      webrtc::ValidateLayout(a2, a2, a3, a4, a5, a6, a7, a8);
      if (a4 == 29)
      {
LABEL_15:
        *(a1 + 64) = webrtc::ChannelMixingMatrix::CreateTransformationMatrix(&v18, v8);
        v14 = __p;
        if (!__p)
        {
          return a1;
        }

LABEL_16:
        v24 = v14;
        operator delete(v14);
        return a1;
      }
    }

    webrtc::ValidateLayout(a4, a2, a3, a4, a5, a6, a7, a8);
    *(a1 + 64) = webrtc::ChannelMixingMatrix::CreateTransformationMatrix(&v18, v8);
    v14 = __p;
    if (!__p)
    {
      return a1;
    }

    goto LABEL_16;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/utility/channel_mixing_matrix.cc", 82, "output_layout != CHANNEL_LAYOUT_STEREO_DOWNMIX", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 16);
  return webrtc::ChannelMixer::Transform(v16, v17);
}

void *webrtc::ChannelMixer::Transform(void *this, webrtc::AudioFrame *a2, double a3, double a4, double a5, float32x4_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12)
{
  v13 = *(this + 1);
  if (*this != v13)
  {
    v14 = *(this + 2);
    if (v14 > *(this + 1))
    {
      v15 = *(a2 + 3) * v14;
      if (v15 >= 0x1E01)
      {
        goto LABEL_78;
      }
    }

    if (*(a2 + 15432) == 1)
    {
      *(a2 + 3859) = v13;
      *(a2 + 5) = v14;
      v16 = *(a2 + 3) * v14;
      if (v16 < 0x1E01)
      {
        return this;
      }

      goto LABEL_77;
    }

    v17 = a2 + 72;
    v18 = *(a2 + 3);
    v19 = *(this + 6);
    if (!v19 || v14 * v18 > *(this + 7))
    {
      operator new[]();
    }

    v20 = *(this + 7);
    if (v18 && v14)
    {
      v21 = *(this + 1);
      if (v21)
      {
        v22 = 0;
        v23 = *(this + 3);
        v24 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - v23) >> 3);
        v25 = (a2 + 88);
        v26 = 2 * v21;
        a9 = 1191181824;
        a10 = a2 + 72;
        while (1)
        {
          a11 = 0;
          a12 = v22 * v14;
          do
          {
            if (a11 == v24 || (v12 = *(v23 + 24 * a11), v21 - 1 >= (*(v23 + 24 * a11 + 8) - v12) >> 2))
            {
              __break(1u);
              goto LABEL_75;
            }

            if (v21 < 4)
            {
              v28 = 0;
              v29 = 0.0;
              do
              {
LABEL_31:
                a6.i16[0] = *&a10[2 * v28];
                a6.i64[0] = vmovl_s16(*a6.f32).u64[0];
                a6.f32[0] = a6.i32[0];
                v29 = v29 + (*(v12 + 4 * v28++) * a6.f32[0]);
              }

              while (v21 != v28);
              goto LABEL_32;
            }

            if (v21 >= 0x10)
            {
              v31 = (v12 + 32);
              v29 = 0.0;
              v32 = v21 & 0xFFFFFFFFFFFFFFF0;
              v33 = v25;
              do
              {
                v34 = v31[-2];
                v35 = v31[-1];
                v36 = *v31;
                v37 = v31[1];
                v31 += 4;
                v38 = v33[-1];
                a6 = vmulq_f32(v35, vcvtq_f32_s32(vmovl_high_s16(v38)));
                v39 = vmulq_f32(v34, vcvtq_f32_s32(vmovl_s16(*v38.i8)));
                v40 = vmulq_f32(v37, vcvtq_f32_s32(vmovl_high_s16(*v33)));
                v41 = vmulq_f32(v36, vcvtq_f32_s32(vmovl_s16(*v33->i8)));
                v29 = (((((((((((((((v29 + v39.f32[0]) + v39.f32[1]) + v39.f32[2]) + v39.f32[3]) + a6.f32[0]) + a6.f32[1]) + a6.f32[2]) + a6.f32[3]) + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3]) + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3];
                v33 += 2;
                v32 -= 16;
              }

              while (v32);
              if (v21 == (v21 & 0xFFFFFFFFFFFFFFF0))
              {
                goto LABEL_32;
              }

              v30 = v21 & 0xFFFFFFFFFFFFFFF0;
              v28 = v21 & 0xFFFFFFFFFFFFFFF0;
              if ((v21 & 0xC) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v30 = 0;
              v29 = 0.0;
            }

            v42 = (v12 + 4 * v30);
            v43 = v30 - (v21 & 0xFFFFFFFFFFFFFFFCLL);
            v44 = &a10[2 * v30];
            do
            {
              v45 = *v42++;
              v46 = v45;
              v45.i64[0] = *v44;
              v44 += 8;
              a6 = vcvtq_f32_s32(vmovl_s16(*v45.f32));
              v47 = vmulq_f32(v46, a6);
              a6.i16[1] = v47.i16[7];
              v29 = (((v29 + v47.f32[0]) + v47.f32[1]) + v47.f32[2]) + v47.f32[3];
              v43 += 4;
            }

            while (v43);
            v28 = v21 & 0xFFFFFFFFFFFFFFFCLL;
            if (v21 != (v21 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_31;
            }

LABEL_32:
            v12 = a11 + a12;
            if (a11 + a12 > v20)
            {
              goto LABEL_75;
            }

            v48 = (v29 < -32768.0) | (2 * (v29 > 32767.0));
            if (v48 > 1)
            {
              if (v48 != 2)
              {
                goto LABEL_76;
              }

              LOWORD(v27) = 0x7FFF;
            }

            else if (v48)
            {
              LOWORD(v27) = 0x8000;
            }

            else
            {
              v27 = v29;
            }

            v19[v12] = v27;
            ++a11;
          }

          while (a11 != v14);
          ++v22;
          v25 = (v25 + v26);
          a10 += v26;
          if (v22 == v18)
          {
            goto LABEL_68;
          }
        }
      }

      v49 = 0;
      v50 = v20 + 1;
      v51 = v20 == -1;
      v52 = v14 - 1;
      v53 = v19 + 8;
      do
      {
        v54 = __PAIR128__(v51, v50) < v21 && v20 == -1;
        if (__PAIR128__(v51, v50) >= v21)
        {
          v55 = v21;
        }

        else
        {
          v55 = v20 + 1;
        }

        v56 = (__PAIR128__(v51, v50) - __PAIR128__(v54, v55)) >> 64;
        v57 = v50 - v55;
        if (__PAIR128__(v56, v57) >= v52)
        {
          v57 = v14 - 1;
        }

        v58 = v14 * v49;
        v60 = (__PAIR128__(v51, v50) - v14 * v49) >> 64;
        v59 = v50 - v14 * v49;
        if (__PAIR128__(v51, v50) < v14 * v49)
        {
          v60 = 0;
          v59 = 0;
        }

        if (__PAIR128__(v60, v59) >= v52)
        {
          v59 = v14 - 1;
        }

        v61 = v59 + 1;
        if (v61 < 0x11)
        {
          goto LABEL_58;
        }

        a9 = (__PAIR128__(v51, v50) - v58) >> 64;
        v62 = v50 - v58;
        if (__PAIR128__(v51, v50) < v58)
        {
          a9 = 0;
          v62 = 0;
        }

        if (__PAIR128__(a9, v62) >= v52)
        {
          v62 = v14 - 1;
        }

        if (__CFADD__(v58, v62))
        {
LABEL_58:
          v63 = 0;
        }

        else
        {
          if ((v61 & 0xF) != 0)
          {
            v64 = v61 & 0xF;
          }

          else
          {
            v64 = 16;
          }

          v63 = v61 - v64;
          v65 = v57 - v64 + 1;
          v66 = v53;
          do
          {
            *(v66 - 1) = 0uLL;
            *v66 = 0uLL;
            v66 += 2;
            v65 -= 16;
          }

          while (v65);
        }

        v12 = v63 + v21;
        v67 = v14 - v63;
        do
        {
          if (v12 > v20)
          {
LABEL_75:
            webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/utility/channel_mixer.cc", 96, "index <= audio_vector_size_", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a9, a10, a11, a12, v12);
LABEL_76:
            webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
          }

          v19[v12++] = 0;
          --v67;
        }

        while (v67);
        ++v49;
        v21 += v14;
        v53 = (v53 + 2 * v14);
      }

      while (v49 != v18);
    }

LABEL_68:
    *(a2 + 3859) = *(this + 1);
    *(a2 + 5) = v14;
    v16 = v18 * v14;
    if (v18 * v14 >= 0x1E01)
    {
LABEL_77:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 216, "samples_per_channel_ * num_channels_ <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a9, a10, a11, a12, v16);
LABEL_78:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/utility/channel_mixer.cc", 60, "frame->samples_per_channel() * output_channels_ <= frame->max_16bit_samples()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a9, a10, a11, a12, v15);
      return webrtc::ValidateLayout(v68, v69, v70, v71, v72, v73, v74, v75);
    }

    if (*(a2 + 15432) == 1)
    {
      bzero(v17, 0x3C01uLL);
    }

    return memcpy(v17, v19, 2 * v14 * v18);
  }

  return this;
}

uint64_t webrtc::ValidateLayout(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!result)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/utility/channel_mixing_matrix.cc", 43, "layout != CHANNEL_LAYOUT_NONE", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 0);
    goto LABEL_8;
  }

  if (result >= 33)
  {
LABEL_8:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/utility/channel_mixing_matrix.cc", 44, "layout <= CHANNEL_LAYOUT_MAX", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, result);
    goto LABEL_9;
  }

  switch(result)
  {
    case 0x1E:
LABEL_9:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/utility/channel_mixing_matrix.cc", 47, "layout != CHANNEL_LAYOUT_STEREO_AND_KEYBOARD_MIC", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 30);
      goto LABEL_10;
    case 0x1D:
LABEL_10:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/utility/channel_mixing_matrix.cc", 46, "layout != CHANNEL_LAYOUT_DISCRETE", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 29);
      goto LABEL_11;
    case 1:
LABEL_11:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/utility/channel_mixing_matrix.cc", 45, "layout != CHANNEL_LAYOUT_UNSUPPORTED", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 1);
      return webrtc::ChannelMixingMatrix::CreateTransformationMatrix();
  }

  return result;
}

uint64_t webrtc::ChannelMixingMatrix::CreateTransformationMatrix(uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  v2 = *(a1 + 5);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[2] - *a2) >> 3) < v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    goto LABEL_300;
  }

  v3 = a1;
  v4 = *(a1 + 5);
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = *a1;
      v7 = *(a1 + 3);
      if (v7)
      {
        if ((v7 & 0x80000000) == 0)
        {
          operator new();
        }

        goto LABEL_298;
      }

      v8 = v6[1];
      v9 = v6[2];
      if (v8 >= v9)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_297;
      }

      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v6[1] = (v8 + 3);
      ++v5;
      v4 = *(a1 + 5);
      if (v5 >= v4)
      {
        goto LABEL_21;
      }
    }

    v10 = 1 - 0x5555555555555555 * ((v8 - *v6) >> 3);
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v6) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v10)
      {
        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_299;
      }

      goto LABEL_297;
    }

LABEL_300:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_21:
  v12 = *(a1 + 2);
  if (v12 == 29 || (v13 = *(a1 + 4), v13 == 29))
  {
    v14 = v4 < *(a1 + 3);
    v15 = 12;
    if (v14)
    {
      v15 = 20;
    }

    v16 = *(a1 + v15);
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = **a1;
      v19 = 0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v18) >> 3);
      v20 = (v18 + 8);
      while (v19 != v17)
      {
        v21 = *(v20 - 1);
        if (v17 >= (*v20 - v21) >> 2)
        {
          break;
        }

        *(v21 + 4 * v17++) = 1065353216;
        v20 += 3;
        if (v16 == v17)
        {
          return 1;
        }
      }

      goto LABEL_297;
    }

    return 1;
  }

  if (v12 == 2 && ((0xDFFFFFF8uLL >> v13) & 1) != 0)
  {
    v41 = **a1;
    v42 = (*a1)[1] - v41;
    if (!v42)
    {
      goto LABEL_297;
    }

    if (v41[1] == *v41)
    {
      goto LABEL_297;
    }

    v43 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 3);
    **v41 = 1065353216;
    if (v43 <= 1)
    {
      goto LABEL_297;
    }

    v44 = v41[3];
    if (v41[4] == v44)
    {
      goto LABEL_297;
    }

    *v44 = 1065353216;
    if (v42 != 48)
    {
      v45 = 3;
      if (v43 > 3)
      {
        v45 = v43;
      }

      v46 = v45 - 2;
      v47 = v41 + 7;
      do
      {
        v48 = *(v47 - 1);
        if (*v47 == v48)
        {
          goto LABEL_297;
        }

        *v48 = 0;
        v47 += 3;
        --v46;
      }

      while (v46);
    }

    return 1;
  }

  v23 = webrtc::kChannelOrderings;
  v24 = -11;
  do
  {
    v26 = v23[11 * *(a1 + 2)];
    if ((v26 & 0x80000000) == 0)
    {
      v27 = v23[11 * *(a1 + 4)];
      if ((v27 & 0x80000000) != 0)
      {
        v32 = a1[4];
        v31 = a1[5];
        if (v32 >= v31)
        {
          v33 = a1[3];
          v34 = ((v32 - v33) >> 2) + 1;
          if (v34 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v35 = v31 - v33;
          v36 = v35 >> 1;
          if (v35 >> 1 <= v34)
          {
            v36 = v34;
          }

          v25 = v35 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v37 = v36;
          }

          if (v37)
          {
            if (!(v37 >> 62))
            {
              operator new();
            }

LABEL_299:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

LABEL_297:
          __break(1u);
LABEL_298:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (!v32)
        {
          goto LABEL_297;
        }

        *v32 = v24 + 11;
        a1[4] = (v32 + 4);
      }

      else
      {
        v28 = **a1;
        if (0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v28) >> 3) <= v27)
        {
          goto LABEL_297;
        }

        v30 = (v28 + 24 * v27);
        v29 = *v30;
        if (v26 >= (v30[1] - *v30) >> 2)
        {
          goto LABEL_297;
        }

        *(v29 + 4 * v26) = 1065353216;
      }
    }

    ++v23;
    v25 = __CFADD__(v24++, 1);
  }

  while (!v25);
  v38 = a1[4];
  v39 = a1[3];
  if (v39 == v38)
  {
    return 1;
  }

  v40 = a1[3];
  while (*v40)
  {
    v40 += 4;
    if (v40 == v38)
    {
      goto LABEL_93;
    }
  }

  if (v40 != v38)
  {
    v49 = *(a1 + 4);
    if (v49 == 2)
    {
      if (*(a1 + 3) == 2)
      {
        v50 = 0.5;
      }

      else
      {
        v50 = 0.70711;
      }
    }

    else
    {
      v50 = 0.70711;
    }

    v51 = webrtc::kChannelOrderings[11 * v49 + 2];
    v52 = **a1;
    v53 = 0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v52) >> 3);
    if (v53 <= v51)
    {
      goto LABEL_297;
    }

    v54 = webrtc::kChannelOrderings[11 * *(a1 + 2)];
    v55 = *(v52 + 24 * v51);
    if (v54 >= (*(v52 + 24 * v51 + 8) - v55) >> 2)
    {
      goto LABEL_297;
    }

    *(v55 + 4 * v54) = v50;
    v56 = v39;
    while (*v39)
    {
      v39 += 4;
      v56 += 4;
      if (v39 == v38)
      {
        v56 = v38;
        break;
      }
    }

    if (v38 == v56)
    {
      goto LABEL_297;
    }

    v57 = v38 - (v56 + 4);
    if (v38 != v56 + 4)
    {
      memmove(v56, v56 + 4, v38 - (v56 + 4));
      v51 = webrtc::kChannelOrderings[11 * *(a1 + 4) + 2];
      v52 = **a1;
      v53 = 0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v52) >> 3);
    }

    v58 = &v56[v57];
    a1[4] = &v56[v57];
    if (v53 <= v51)
    {
      goto LABEL_297;
    }

    v59 = webrtc::kChannelOrderings[11 * *(a1 + 2) + 1];
    v61 = (v52 + 24 * v51);
    v60 = *v61;
    if (v59 >= (v61[1] - *v61) >> 2)
    {
      goto LABEL_297;
    }

    *(v60 + 4 * v59) = v50;
    v39 = a1[3];
    v62 = v39;
    if (v39 != v58)
    {
      v63 = a1[3];
      while (*v63 != 1)
      {
        v63 += 4;
        v62 += 4;
        if (v63 == v58)
        {
          v62 = v58;
          break;
        }
      }
    }

    if (v58 == v62)
    {
      goto LABEL_297;
    }

    v64 = v58 - (v62 + 4);
    if (v58 != v62 + 4)
    {
      memmove(v62, v62 + 4, v58 - (v62 + 4));
      v39 = a1[3];
    }

    v38 = &v62[v64];
    a1[4] = &v62[v64];
    v3 = a1;
  }

LABEL_93:
  if (v39 != v38)
  {
    v65 = v39;
    while (*v65 != 2)
    {
      v65 += 4;
      if (v65 == v38)
      {
        goto LABEL_113;
      }
    }

    if (v65 != v38)
    {
      v66 = *(v3 + 2);
      v67 = 0.70711;
      if (v66 == 2)
      {
        v67 = 1.0;
      }

      v68 = *(v3 + 4);
      v69 = webrtc::kChannelOrderings[11 * v68];
      v70 = **v3;
      v71 = 0xAAAAAAAAAAAAAAABLL * (((*v3)[1] - v70) >> 3);
      if (v71 <= v69)
      {
        goto LABEL_297;
      }

      v72 = webrtc::kChannelOrderings[11 * v66 + 2];
      v74 = (v70 + 24 * v69);
      v73 = *v74;
      if (v72 >= (v74[1] - *v74) >> 2)
      {
        goto LABEL_297;
      }

      *(v73 + 4 * v72) = v67;
      v75 = webrtc::kChannelOrderings[11 * v68 + 1];
      if (v71 <= v75)
      {
        goto LABEL_297;
      }

      v77 = (v70 + 24 * v75);
      v76 = *v77;
      if (v72 >= (v77[1] - *v77) >> 2)
      {
        goto LABEL_297;
      }

      *(v76 + 4 * v72) = v67;
      v78 = v39;
      v79 = v39;
      while (*v79 != 2)
      {
        v79 += 4;
        v78 += 4;
        if (v79 == v38)
        {
          v78 = v38;
          break;
        }
      }

      if (v38 == v78)
      {
        goto LABEL_297;
      }

      v80 = v38 - (v78 + 4);
      if (v38 != v78 + 4)
      {
        memmove(v78, v78 + 4, v38 - (v78 + 4));
        v39 = a1[3];
      }

      v38 = &v78[v80];
      a1[4] = &v78[v80];
      v3 = a1;
    }
  }

LABEL_113:
  if (v39 != v38)
  {
    v81 = v39;
    while (*v81 != 4)
    {
      v81 += 4;
      if (v81 == v38)
      {
        goto LABEL_149;
      }
    }

    if (v81 != v38)
    {
      v82 = *(v3 + 4);
      if ((0x96B0E680uLL >> v82))
      {
        v85 = webrtc::kChannelOrderings[11 * v82 + 9];
        v86 = *(v3 + 2);
        if ((0x96B0E680uLL >> v86))
        {
          v87 = 0.70711;
        }

        else
        {
          v87 = 1.0;
        }

        v88 = **v3;
        v89 = 0xAAAAAAAAAAAAAAABLL * (((*v3)[1] - v88) >> 3);
        if (v89 <= v85)
        {
          goto LABEL_297;
        }

        v90 = webrtc::kChannelOrderings[11 * v86 + 4];
        v92 = (v88 + 24 * v85);
        v91 = *v92;
        if (v90 >= (v92[1] - *v92) >> 2)
        {
          goto LABEL_297;
        }

        *(v91 + 4 * v90) = v87;
        v93 = v39;
        while (*v39 != 4)
        {
          v39 += 4;
          v93 += 4;
          if (v39 == v38)
          {
            v93 = v38;
            break;
          }
        }

        if (v38 == v93)
        {
          goto LABEL_297;
        }

        v94 = v38 - (v93 + 4);
        if (v38 != v93 + 4)
        {
          memmove(v93, v93 + 4, v38 - (v93 + 4));
          v82 = *(a1 + 4);
          v88 = **a1;
          v89 = 0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v88) >> 3);
        }

        v95 = &v93[v94];
        a1[4] = &v93[v94];
        v96 = webrtc::kChannelOrderings[11 * v82 + 10];
        if (v89 <= v96)
        {
          goto LABEL_297;
        }

        v97 = webrtc::kChannelOrderings[11 * *(a1 + 2) + 5];
        v99 = (v88 + 24 * v96);
        v98 = *v99;
        if (v97 >= (v99[1] - *v99) >> 2)
        {
          goto LABEL_297;
        }

        *(v98 + 4 * v97) = v87;
        v100 = a1[3];
        if (v100 != v95)
        {
          v101 = a1[3];
          while (*v101 != 5)
          {
            v101 += 4;
            v100 += 4;
            if (v101 == v95)
            {
              v100 = v95;
              break;
            }
          }
        }

        if (v95 == v100)
        {
          goto LABEL_297;
        }

        v102 = v95 - (v100 + 4);
        if (v95 != v100 + 4)
        {
          memmove(v100, v100 + 4, v95 - (v100 + 4));
        }

        v103 = &v100[v102];
        v3 = a1;
        a1[4] = v103;
      }

      else
      {
        if ((0x11D80050uLL >> v82))
        {
          webrtc::ChannelMixingMatrix::Mix(v3, 4, 8);
          v83 = v3;
          v84 = 8;
        }

        else if (v82 < 3)
        {
          webrtc::ChannelMixingMatrix::Mix(v3, 4, 2);
          v83 = v3;
          v84 = 2;
        }

        else
        {
          webrtc::ChannelMixingMatrix::Mix(v3, 4, 0);
          v83 = v3;
          v84 = 1;
        }

        webrtc::ChannelMixingMatrix::Mix(v83, 5, v84);
      }
    }
  }

LABEL_149:
  v105 = v3[3];
  v104 = v3[4];
  v106 = v105;
  if (v105 != v104)
  {
    v106 = v3[3];
    while (*v106 != 9)
    {
      v106 += 4;
      if (v106 == v104)
      {
        goto LABEL_188;
      }
    }
  }

  if (v106 != v104)
  {
    v107 = *(v3 + 4);
    if ((0x19407900uLL >> v107))
    {
      v110 = webrtc::kChannelOrderings[11 * v107 + 4];
      v111 = *(v3 + 2);
      if ((0x19407900uLL >> v111))
      {
        v112 = 0.70711;
      }

      else
      {
        v112 = 1.0;
      }

      v113 = **v3;
      v114 = 0xAAAAAAAAAAAAAAABLL * (((*v3)[1] - v113) >> 3);
      if (v114 <= v110)
      {
        goto LABEL_297;
      }

      v115 = webrtc::kChannelOrderings[11 * v111 + 9];
      v117 = (v113 + 24 * v110);
      v116 = *v117;
      if (v115 >= (v117[1] - *v117) >> 2)
      {
        goto LABEL_297;
      }

      *(v116 + 4 * v115) = v112;
      if (v105 == v104)
      {
        v118 = v105;
      }

      else
      {
        v118 = v105;
        while (*v105 != 9)
        {
          v105 += 4;
          v118 += 4;
          if (v105 == v104)
          {
            v118 = v104;
            break;
          }
        }
      }

      if (v104 == v118)
      {
        goto LABEL_297;
      }

      v119 = v104 - (v118 + 4);
      if (v104 == v118 + 4)
      {
        v120 = a1;
      }

      else
      {
        memmove(v118, v118 + 4, v104 - (v118 + 4));
        v120 = a1;
        v107 = *(a1 + 4);
        v113 = **a1;
        v114 = 0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v113) >> 3);
      }

      v121 = &v118[v119];
      v120[4] = &v118[v119];
      v122 = webrtc::kChannelOrderings[11 * v107 + 5];
      if (v114 <= v122)
      {
        goto LABEL_297;
      }

      v123 = webrtc::kChannelOrderings[11 * *(v120 + 2) + 10];
      v125 = (v113 + 24 * v122);
      v124 = *v125;
      if (v123 >= (v125[1] - *v125) >> 2)
      {
        goto LABEL_297;
      }

      *(v124 + 4 * v123) = v112;
      v126 = v120[3];
      if (v126 != v121)
      {
        v127 = v120[3];
        while (*v127 != 10)
        {
          v127 += 4;
          v126 += 4;
          if (v127 == v121)
          {
            v126 = v121;
            break;
          }
        }
      }

      if (v121 == v126)
      {
        goto LABEL_297;
      }

      v128 = (v121 - (v126 + 4));
      if (v121 != v126 + 4)
      {
        memmove(v126, v126 + 4, v121 - (v126 + 4));
      }

      v129 = &v128[v126];
      v3 = a1;
      a1[4] = v129;
    }

    else
    {
      if ((0x11D80050uLL >> v107))
      {
        webrtc::ChannelMixingMatrix::Mix(v3, 9, 8);
        v108 = v3;
        v109 = 8;
      }

      else if (v107 < 3)
      {
        webrtc::ChannelMixingMatrix::Mix(v3, 9, 2);
        v108 = v3;
        v109 = 2;
      }

      else
      {
        webrtc::ChannelMixingMatrix::Mix(v3, 9, 0);
        v108 = v3;
        v109 = 1;
      }

      webrtc::ChannelMixingMatrix::Mix(v108, 10, v109);
    }
  }

LABEL_188:
  v131 = v3[3];
  v130 = v3[4];
  v132 = v131;
  if (v131 != v130)
  {
    v132 = v3[3];
    while (*v132 != 8)
    {
      v132 += 4;
      if (v132 == v130)
      {
        goto LABEL_215;
      }
    }
  }

  if (v132 != v130)
  {
    v133 = *(v3 + 4);
    if ((0x19407900uLL >> v133))
    {
      v136 = webrtc::kChannelOrderings[11 * v133 + 4];
      v137 = **v3;
      v138 = 0xAAAAAAAAAAAAAAABLL * (((*v3)[1] - v137) >> 3);
      if (v138 <= v136)
      {
        goto LABEL_297;
      }

      v139 = webrtc::kChannelOrderings[11 * *(v3 + 2) + 8];
      v141 = (v137 + 24 * v136);
      v140 = *v141;
      if (v139 >= (v141[1] - *v141) >> 2)
      {
        goto LABEL_297;
      }

      *(v140 + 4 * v139) = 1060439283;
      v142 = webrtc::kChannelOrderings[11 * v133 + 5];
      if (v138 <= v142)
      {
        goto LABEL_297;
      }

      v144 = (v137 + 24 * v142);
      v143 = *v144;
      if (v139 >= (v144[1] - *v144) >> 2)
      {
        goto LABEL_297;
      }

      *(v143 + 4 * v139) = 1060439283;
      if (v131 == v130)
      {
        v145 = v131;
      }

      else
      {
        v145 = v131;
        while (*v131 != 8)
        {
          v131 += 4;
          v145 += 4;
          if (v131 == v130)
          {
            v145 = v130;
            break;
          }
        }
      }

      if (v130 == v145)
      {
        goto LABEL_297;
      }

      v146 = v130 - (v145 + 4);
      if (v130 != v145 + 4)
      {
        memmove(v145, v145 + 4, v130 - (v145 + 4));
      }

      v147 = &v145[v146];
      v3 = a1;
      a1[4] = v147;
    }

    else
    {
      v134 = v3;
      if ((0x96B0E680uLL >> v133))
      {
        webrtc::ChannelMixingMatrix::MixWithoutAccounting(v3, 9);
        v134 = v3;
        v135 = 10;
      }

      else if (v133 < 3)
      {
        v135 = 2;
      }

      else
      {
        webrtc::ChannelMixingMatrix::MixWithoutAccounting(v3, 0);
        v134 = v3;
        v135 = 1;
      }

      webrtc::ChannelMixingMatrix::Mix(v134, 8, v135);
    }
  }

LABEL_215:
  v149 = v3[3];
  v148 = v3[4];
  v150 = v149;
  if (v149 != v148)
  {
    v150 = v3[3];
    while (*v150 != 6)
    {
      v150 += 4;
      if (v150 == v148)
      {
        goto LABEL_262;
      }
    }
  }

  if (v150 != v148)
  {
    v151 = *(v3 + 4);
    v152 = webrtc::kChannelOrderings[11 * *(v3 + 2) + 6];
    v153 = **v3;
    v154 = 0xAAAAAAAAAAAAAAABLL * (((*v3)[1] - v153) >> 3);
    if ((0xDFFFFFF8uLL >> v151))
    {
      v158 = webrtc::kChannelOrderings[11 * v151];
      if (v154 <= v158)
      {
        goto LABEL_297;
      }

      v160 = (v153 + 24 * v158);
      v159 = *v160;
      if (v152 >= (v160[1] - *v160) >> 2)
      {
        goto LABEL_297;
      }

      *(v159 + 4 * v152) = 1060439283;
      if (v149 == v148)
      {
        v161 = v149;
      }

      else
      {
        v161 = v149;
        while (*v149 != 6)
        {
          v149 += 4;
          v161 += 4;
          if (v149 == v148)
          {
            v161 = v148;
            break;
          }
        }
      }

      if (v148 == v161)
      {
        goto LABEL_297;
      }

      v169 = v148 - (v161 + 4);
      if (v148 != v161 + 4)
      {
        memmove(v161, v161 + 4, v148 - (v161 + 4));
        v151 = *(a1 + 4);
        v153 = **a1;
        v154 = 0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v153) >> 3);
      }

      v163 = &v161[v169];
      a1[4] = &v161[v169];
      v170 = webrtc::kChannelOrderings[11 * v151 + 1];
      if (v154 <= v170)
      {
        goto LABEL_297;
      }

      v171 = webrtc::kChannelOrderings[11 * *(a1 + 2) + 7];
      v173 = (v153 + 24 * v170);
      v172 = *v173;
      if (v171 >= (v173[1] - *v173) >> 2)
      {
        goto LABEL_297;
      }

      *(v172 + 4 * v171) = 1060439283;
      v167 = a1[3];
      if (v167 != v163)
      {
        v174 = a1[3];
        while (*v174 != 7)
        {
          v174 += 4;
          v167 += 4;
          if (v174 == v163)
          {
LABEL_257:
            v167 = v163;
            break;
          }
        }
      }
    }

    else
    {
      v155 = webrtc::kChannelOrderings[11 * v151 + 2];
      if (v154 <= v155)
      {
        goto LABEL_297;
      }

      v156 = *(v153 + 24 * v155);
      if (v152 >= (*(v153 + 24 * v155 + 8) - v156) >> 2)
      {
        goto LABEL_297;
      }

      *(v156 + 4 * v152) = 1060439283;
      if (v149 == v148)
      {
        v157 = v149;
      }

      else
      {
        v157 = v149;
        while (*v149 != 6)
        {
          v149 += 4;
          v157 += 4;
          if (v149 == v148)
          {
            v157 = v148;
            break;
          }
        }
      }

      if (v148 == v157)
      {
        goto LABEL_297;
      }

      v162 = v148 - (v157 + 4);
      if (v148 != v157 + 4)
      {
        memmove(v157, v157 + 4, v148 - (v157 + 4));
        v155 = webrtc::kChannelOrderings[11 * *(a1 + 4) + 2];
        v153 = **a1;
        v154 = 0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v153) >> 3);
      }

      v163 = &v157[v162];
      a1[4] = &v157[v162];
      if (v154 <= v155)
      {
        goto LABEL_297;
      }

      v164 = webrtc::kChannelOrderings[11 * *(a1 + 2) + 7];
      v166 = (v153 + 24 * v155);
      v165 = *v166;
      if (v164 >= (v166[1] - *v166) >> 2)
      {
        goto LABEL_297;
      }

      *(v165 + 4 * v164) = 1060439283;
      v167 = a1[3];
      if (v167 != v163)
      {
        v168 = a1[3];
        while (*v168 != 7)
        {
          v168 += 4;
          v167 += 4;
          if (v168 == v163)
          {
            goto LABEL_257;
          }
        }
      }
    }

    if (v163 == v167)
    {
      goto LABEL_297;
    }

    v175 = v163 - (v167 + 4);
    if (v163 != v167 + 4)
    {
      memmove(v167, v167 + 4, v163 - (v167 + 4));
    }

    v148 = &v167[v175];
    v3 = a1;
    a1[4] = v148;
  }

LABEL_262:
  v176 = v3[3];
  if (v176 != v148)
  {
    v177 = v3[3];
    while (*v177 != 3)
    {
      v177 += 4;
      if (v177 == v148)
      {
        goto LABEL_287;
      }
    }

    if (v177 != v148)
    {
      v178 = *(v3 + 4);
      v179 = webrtc::kChannelOrderings[11 * *(v3 + 2) + 3];
      v180 = **v3;
      v181 = 0xAAAAAAAAAAAAAAABLL * (((*v3)[1] - v180) >> 3);
      if ((0x5DDCFE64uLL >> v178))
      {
        v189 = webrtc::kChannelOrderings[11 * v178 + 2];
        if (v181 <= v189)
        {
          goto LABEL_297;
        }

        v191 = (v180 + 24 * v189);
        v190 = *v191;
        if (v179 >= (v191[1] - *v191) >> 2)
        {
          goto LABEL_297;
        }

        *(v190 + 4 * v179) = 1060439283;
        v188 = v176;
        while (*v176 != 3)
        {
          v176 += 4;
          v188 += 4;
          if (v176 == v148)
          {
LABEL_282:
            v188 = v148;
            break;
          }
        }
      }

      else
      {
        v182 = webrtc::kChannelOrderings[11 * v178];
        if (v181 <= v182)
        {
          goto LABEL_297;
        }

        v184 = (v180 + 24 * v182);
        v183 = *v184;
        if (v179 >= (v184[1] - *v184) >> 2)
        {
          goto LABEL_297;
        }

        *(v183 + 4 * v179) = 1060439283;
        v185 = webrtc::kChannelOrderings[11 * v178 + 1];
        if (v181 <= v185)
        {
          goto LABEL_297;
        }

        v187 = (v180 + 24 * v185);
        v186 = *v187;
        if (v179 >= (v187[1] - *v187) >> 2)
        {
          goto LABEL_297;
        }

        *(v186 + 4 * v179) = 1060439283;
        v188 = v176;
        while (*v176 != 3)
        {
          v176 += 4;
          v188 += 4;
          if (v176 == v148)
          {
            goto LABEL_282;
          }
        }
      }

      if (v148 == v188)
      {
        goto LABEL_297;
      }

      v192 = v148 - (v188 + 4);
      if (v148 != v188 + 4)
      {
        memmove(v188, v188 + 4, v148 - (v188 + 4));
      }

      v193 = &v188[v192];
      v3 = a1;
      a1[4] = v193;
    }
  }

LABEL_287:
  v194 = *(v3 + 5);
  if (v194 < 1)
  {
    return 1;
  }

  v195 = 0;
  v196 = 0;
  v197 = *(v3 + 3);
  v198 = 24 * v194;
  while (1)
  {
    if (v197 >= 1)
    {
      v199 = **v3;
      if (0xAAAAAAAAAAAAAAABLL * (((*v3)[1] - v199) >> 3) <= v196)
      {
        goto LABEL_297;
      }

      v200 = v199 + v195;
      v201 = *v200;
      v202 = *(v200 + 8) - *v200;
      if (!v202)
      {
        goto LABEL_297;
      }

      if (*v201 != 1.0)
      {
        return 0;
      }

      if (v197 != 1)
      {
        break;
      }
    }

    ++v196;
    v195 += 24;
    if (v198 == v195)
    {
      return 1;
    }
  }

  if (v202 == 4)
  {
    goto LABEL_297;
  }

  return 0;
}

uint64_t **webrtc::ChannelMixingMatrix::Mix(uint64_t **result, int a2, int a3)
{
  v3 = webrtc::kChannelOrderings[11 * *(result + 4) + a3];
  v4 = **result;
  if (0xAAAAAAAAAAAAAAABLL * (((*result)[1] - v4) >> 3) <= v3)
  {
    goto LABEL_12;
  }

  v5 = result;
  v6 = webrtc::kChannelOrderings[11 * *(result + 2) + a2];
  v8 = (v4 + 24 * v3);
  v7 = *v8;
  if (v6 >= (v8[1] - *v8) >> 2)
  {
    goto LABEL_12;
  }

  *(v7 + 4 * v6) = 1060439283;
  v10 = result[3];
  v9 = result[4];
  if (v10 != v9)
  {
    v11 = result[3];
    while (*v11 != a2)
    {
      v11 += 4;
      v10 += 4;
      if (v11 == v9)
      {
        v10 = result[4];
        break;
      }
    }
  }

  if (v9 == v10)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    v12 = (v9 - (v10 + 4));
    if (v9 != v10 + 4)
    {
      result = memmove(v10, v10 + 4, v9 - (v10 + 4));
    }

    v5[4] = &v12[v10];
  }

  return result;
}

unsigned int *webrtc::ChannelMixingMatrix::MixWithoutAccounting(unsigned int *result, int a2)
{
  v2 = webrtc::kChannelOrderings[11 * result[4] + a2];
  v3 = **result;
  if (0xAAAAAAAAAAAAAAABLL * ((*(*result + 8) - v3) >> 3) <= v2 || (v4 = webrtc::kChannelOrderings[11 * result[2] + 8], v6 = (v3 + 24 * v2), v5 = *v6, v4 >= (v6[1] - *v6) >> 2))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 4 * v4) = 1060439283;
  }

  return result;
}

void webrtc::voe::anonymous namespace::ChannelReceive::InitFrameTransformerDelegate(uint64_t a1)
{
  v1[8] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_288290E18;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void webrtc::voe::anonymous namespace::ChannelReceive::~ChannelReceive(webrtc::voe::_anonymous_namespace_::ChannelReceive *this)
{
  *this = &unk_288290CC0;
  *(this + 1) = &unk_288290DF0;
  v2 = *(this + 2084);
  if (v2)
  {
    (*(**(v2 + 40) + 56))(*(v2 + 40));
    v3 = *(v2 + 40);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 32);
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    if (v4 == v2 + 8)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(v2 + 32) = 0;
    v5 = *this;
  }

  else
  {
    v5 = &unk_288290CC0;
  }

  v5[6](this);
  std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(this + 16776, *(this + 2098));
  pthread_mutex_destroy((this + 16688));
  v6 = *(this + 2084);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  pthread_mutex_destroy((this + 16464));
  v7 = *(this + 2054);
  if (v7)
  {
    *(this + 2055) = v7;
    operator delete(v7);
  }

  v8 = *(this + 2052);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_destroy((this + 16288));
  if (*(this + 2020))
  {
    v9 = *(this + 2019);
    v10 = *(*(this + 2018) + 8);
    v11 = *v9;
    *(v11 + 8) = v10;
    *v10 = v11;
    *(this + 2020) = 0;
    if (v9 != (this + 16144))
    {
      do
      {
        v12 = *(v9 + 1);
        operator delete(v9);
        v9 = v12;
      }

      while (v12 != (this + 16144));
    }
  }

  if (*(this + 2014))
  {
    v13 = *(this + 2013);
    v14 = *(*(this + 2012) + 8);
    v15 = *v13;
    *(v15 + 8) = v14;
    *v14 = v15;
    *(this + 2014) = 0;
    if (v13 != (this + 16096))
    {
      do
      {
        v16 = *(v13 + 1);
        operator delete(v13);
        v13 = v16;
      }

      while (v16 != (this + 16096));
    }
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 16056, *(this + 2008));
  pthread_mutex_destroy((this + 15952));
  v17 = *(this + 65);
  if (v17)
  {
    v18 = *(this + 66);
    v19 = *(this + 65);
    if (v18 != v17)
    {
      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          (*(*v20 + 8))(v20);
        }
      }

      while (v18 != v17);
      v19 = *(this + 65);
    }

    *(this + 66) = v17;
    operator delete(v19);
  }

  v22 = *(this + 56);
  *(this + 56) = 0;
  if (v22)
  {
    MEMORY[0x2743DA520](v22, 0x1000C80BDFB0063);
  }

  v23 = *(this + 55);
  *(this + 55) = 0;
  if (v23)
  {
    MEMORY[0x2743DA520](v23, 0x1000C80BDFB0063);
  }

  v24 = *(this + 54);
  *(this + 54) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 48);
  if (v25)
  {
    do
    {
      v26 = *v25;
      operator delete(v25);
      v25 = v26;
    }

    while (v26);
  }

  v27 = *(this + 46);
  *(this + 46) = 0;
  if (v27)
  {
    operator delete(v27);
  }

  if (*(this + 45))
  {
    v28 = *(this + 44);
    v29 = *(*(this + 43) + 8);
    v30 = *v28;
    *(v30 + 8) = v29;
    *v29 = v30;
    *(this + 45) = 0;
    if (v28 != (this + 344))
    {
      do
      {
        v31 = *(v28 + 1);
        operator delete(v28);
        v28 = v31;
      }

      while (v31 != (this + 344));
    }
  }

  v32 = *(this + 40);
  *(this + 40) = 0;
  if (v32)
  {
    webrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2(v32);
    MEMORY[0x2743DA540]();
  }

  v33 = *(this + 39);
  *(this + 39) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 37));
  pthread_mutex_destroy((this + 216));
  pthread_mutex_destroy((this + 152));
  pthread_mutex_destroy((this + 88));
  v34 = *(this + 8);
  *(v34 + 4) = 0;
  if (atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v35 = *(this + 2);
  if (v35)
  {
    if (atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v35 + 8))(v35);
    }
  }
}

{

  JUMPOUT(0x2743DA540);
}

void webrtc::voe::anonymous namespace::ChannelReceive::OnRtpPacket(uint64_t a1, __int128 *a2)
{
  __p[128] = *MEMORY[0x277D85DE8];
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

  *(a1 + 408) = *(a2 + 2);
  *(a1 + 412) = 1;
  *(a1 + 416) = v4 / 1000000;
  *(a1 + 424) = 1;
  v5 = *(a1 + 296);
  if (v5)
  {
    v6 = *(a2 + 1);
    v7 = a1 + 296;
    do
    {
      v8 = *(v5 + 28);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * v10);
    }

    while (v5);
    if (v7 != a1 + 296 && v6 >= *(v7 + 28))
    {
      v11 = a2[1];
      v73 = *a2;
      v74 = v11;
      *v75 = a2[2];
      *&v75[15] = *(a2 + 47);
      v78 = 0;
      v76 = 0;
      v77 = 0;
      v13 = *(a2 + 7);
      v12 = *(a2 + 8);
      if (v12 != v13)
      {
        if (((v12 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v14 = *(a2 + 11);
      v79 = *(a2 + 10);
      v80 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 24), 1u, memory_order_relaxed);
      }

      v15 = a2[7];
      v81 = a2[6];
      v82 = v15;
      v83 = *(a2 + 128);
      v16 = *(a2 + 17);
      v84 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 2, 1u, memory_order_relaxed);
      }

      HIDWORD(v82) = *(v7 + 32);
      (*(*(*(a1 + 312) + 8) + 16))();
      v46 = 0u;
      memset(v47, 0, sizeof(v47));
      v45 = 0u;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54[0] = 0;
      v54[24] = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60[0] = 0;
      *(v60 + 3) = 0;
      memset(v44, 0, 13);
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v61 = -1;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v62 = xmmword_273B8F690;
      *v63 = 0u;
      *v64 = 0u;
      v65 = 0u;
      memset(v66, 0, 25);
      webrtc::RtpPacketReceived::GetHeader(&v73, v44);
      webrtc::AbsoluteCaptureTimeInterpolator::OnReceivePacket((a1 + 16456), v45, SHIDWORD(v44[0]), HIDWORD(v82) & ~(SHIDWORD(v82) >> 31), v54, __p);
      *v54 = *__p;
      *&v54[9] = *(&__p[1] + 1);
      v17 = v80;
      if (v80)
      {
        v17 = *(v80 + 16) + v81;
      }

      v43 = *(a2 + 14);
      v18 = v48;
      v19 = v17 + v49;
      v20 = *(&v74 + 1) + v74 + BYTE2(v73) - v49;
      v21 = v20 - v48;
      v22 = *(a1 + 16416);
      if (v22)
      {
        if ((*(*v22 + 40))(v22, 0, v20))
        {
          operator new[]();
        }

        memset(__p, 0, 24);
        if (BYTE4(v44[1]))
        {
          operator new();
        }

        if (v20 == v18)
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

        if ((*(**(a1 + 16416) + 32))(*(a1 + 16416), 0, __p, 0, 0, v23, v21))
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
          if (v24)
          {
            operator new[]();
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v19 = 0;
        if (*(a1 + 16672))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*(a1 + 16428))
        {
          v21 = 0;
        }

        if (*(a1 + 16672))
        {
LABEL_46:
          v26 = a1 + 16784;
          v27 = *(a1 + 16784);
          if (!v27)
          {
            goto LABEL_53;
          }

          v28 = a1 + 16784;
          do
          {
            if (*(v27 + 32) >= BYTE1(v44[0]))
            {
              v28 = v27;
            }

            v27 = *(v27 + 8 * (*(v27 + 32) < BYTE1(v44[0])));
          }

          while (v27);
          if (v28 == v26 || *(v28 + 32) > BYTE1(v44[0]))
          {
LABEL_53:
            v28 = a1 + 16784;
          }

          v72 = 5;
          if (&v71 > "audio" || &v71 + 5 <= "audio")
          {
            LODWORD(v71) = *"audio";
            WORD2(v71) = webrtc::kMediaTypeAudio[4];
            strcpy(__p, "audio/");
            if (v28 == v26)
            {
              *(&v70.__r_.__value_.__s + 23) = 9;
              if (&v70 <= "x-unknown" && (&v70 | 9) > "x-unknown")
              {
                goto LABEL_108;
              }

              strcpy(&v70, "x-unknown");
            }

            else if (*(v28 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v70, *(v28 + 40), *(v28 + 48));
            }

            else
            {
              v70 = *(v28 + 40);
            }

            v30 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
            size = v70.__r_.__value_.__l.__size_;
            v32 = v70.__r_.__value_.__r.__words[0];
            if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &v70;
            }

            else
            {
              v33 = v70.__r_.__value_.__r.__words[0];
            }

            if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
            }

            if (size >= 0x3F9)
            {
              v34 = 1017;
            }

            else
            {
              v34 = size;
            }

            memcpy(__p + 6, v33, v34);
            *(__p + v34 + 6) = 0;
            if (v30 < 0)
            {
              operator delete(v32);
            }

            if (v72 < 0)
            {
              operator delete(v71);
            }

            v35 = *(a1 + 16672);
            v36 = *(a1 + 328);
            v37 = strlen(__p);
            if (v37 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v38 = v37;
            if (v37 > 0x16)
            {
              operator new();
            }

            v72 = v37;
            if (&v71 > __p || (&v71 + v37) <= __p)
            {
              if (v37)
              {
                memcpy(&v71, __p, v37);
              }

              *(&v71 + v38) = 0;
              if (v21)
              {
                v39 = v19;
              }

              else
              {
                v39 = 0;
              }

              webrtc::ChannelReceiveFrameTransformerDelegate::Transform(v35, v39, v21, v44, v36, &v71, v43);
              if (v72 < 0)
              {
                operator delete(v71);
              }

LABEL_90:
              if (SHIBYTE(v66[2]) < 0)
              {
                operator delete(v66[0]);
                if ((SHIBYTE(v65) & 0x80000000) == 0)
                {
LABEL_92:
                  if ((SHIBYTE(v64[0]) & 0x80000000) == 0)
                  {
                    goto LABEL_93;
                  }

                  goto LABEL_97;
                }
              }

              else if ((SHIBYTE(v65) & 0x80000000) == 0)
              {
                goto LABEL_92;
              }

              operator delete(v64[1]);
              if ((SHIBYTE(v64[0]) & 0x80000000) == 0)
              {
LABEL_93:
                v40 = v84;
                if (!v84)
                {
LABEL_100:
                  v41 = v80;
                  if (v80 && atomic_fetch_add((v80 + 24), 0xFFFFFFFF) == 1)
                  {
                    v42 = *(v41 + 16);
                    *(v41 + 16) = 0;
                    if (v42)
                    {
                      MEMORY[0x2743DA520](v42, 0x1000C8077774924);
                    }

                    MEMORY[0x2743DA540](v41, 0x1010C40EE34DA14);
                  }

                  if (v76)
                  {
                    v77 = v76;
                    operator delete(v76);
                  }

                  return;
                }

LABEL_98:
                if (atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v40 + 8))(v40);
                }

                goto LABEL_100;
              }

LABEL_97:
              operator delete(v63[0]);
              v40 = v84;
              if (!v84)
              {
                goto LABEL_100;
              }

              goto LABEL_98;
            }
          }

LABEL_108:
          __break(1u);
        }
      }

      if (v21)
      {
        v25 = v19;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_90;
    }
  }
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetSink(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 88));
  *(a1 + 15944) = a2;

  return pthread_mutex_unlock((a1 + 88));
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetReceiveCodecs(uint64_t a1, char **a2)
{
  v3 = (a2 + 1);
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    v5 = (a1 + 296);
    do
    {
      v6 = v4[32];
      v7 = *v5;
      if (!*v5)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = *(v7 + 28);
          if (v9 <= v6)
          {
            break;
          }

          v7 = *v8;
          if (!*v8)
          {
            goto LABEL_10;
          }
        }

        if (v9 >= v6)
        {
          break;
        }

        v7 = v8[1];
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      *(v8 + 8) = *(v4 + 16);
      v10 = *(v4 + 1);
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
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v3);
  }

  v13 = a1 + 16776;
  if ((a1 + 16776) != a2)
  {
    std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::SdpAudioFormat>,std::__tree_node<std::__value_type<int,webrtc::SdpAudioFormat>,void *> *,long>>(v13, *a2, v3);
  }

  v14 = *(**(a1 + 432) + 56);

  return v14();
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::StopPlayout(webrtc::voe::_anonymous_namespace_::ChannelReceive *this)
{
  *(this + 280) = 0;
  pthread_mutex_lock((this + 15952));
  *(this + 4004) = 0;
  *(this + 8010) = 0;
  pthread_mutex_unlock((this + 15952));
  v2 = *(**(this + 54) + 200);

  return v2();
}

void webrtc::voe::anonymous namespace::ChannelReceive::GetReceiveCodec(webrtc::voe::_anonymous_namespace_::ChannelReceive *this@<X0>, uint64_t a2@<X8>)
{
  (*(**(this + 54) + 192))(&v18);
  if (v23 != 1)
  {
    *a2 = 0;
    *(a2 + 72) = 0;
    return;
  }

  v12 = v18;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v19;
  }

  v14 = v20;
  v16 = 0;
  v17 = 0;
  v15 = &v16;
  v3 = v21;
  if (v21 == v22)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = &v16;
  }

  else
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v15, &v16, v3 + 4);
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

    while (v9 != v22);
    v7 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v16;
  }

  *a2 = v12;
  *(a2 + 8) = __p;
  memset(&__p, 0, sizeof(__p));
  *(a2 + 32) = v14;
  *(a2 + 48) = v7;
  *(a2 + 56) = v6;
  v11 = a2 + 56;
  *(a2 + 64) = v5;
  if (v5)
  {
    *(v6 + 16) = v11;
    v15 = &v16;
    v16 = 0;
    v17 = 0;
    *(a2 + 72) = 1;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v15, 0);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *(a2 + 48) = v11;
  *(a2 + 72) = 1;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v15, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_19:
  if (v23)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v21, v22[0]);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::ReceivedRTCPPacket(pthread_mutex_t **this, const unsigned __int8 *a2, uint64_t a3)
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

  if (a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  webrtc::RTCPReceiver::IncomingPacket(&this[40][12], v7, a3);
  result = webrtc::ModuleRtpRtcpImpl2::LastRtt(this[40]);
  if (v9)
  {
    v10 = result;
    v11 = this[40];
    v12 = v11 + 14;
    pthread_mutex_lock(v11 + 14);
    if (*&v11[15].__opaque[8])
    {
      v13 = *&v11[15].__opaque[16];
      v14 = *&v11[15].__opaque[24];
      pthread_mutex_unlock(v12);
      v12 = (this + 2036);
      pthread_mutex_lock((this + 2036));
      webrtc::RemoteNtpTimeEstimator::UpdateRtcpTimestamp(this + 2005, v10, v13, v14);
      if (this[2015] >= 3)
      {
        v15 = this[2009];
        if (v15)
        {
          v15 = *&this[2010]->__opaque[24];
        }

        this[2082] = v15;
        *(this + 16664) = 1;
      }
    }

    return pthread_mutex_unlock(v12);
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetChannelOutputVolumeScaling(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, float a2)
{
  pthread_mutex_lock((this + 152));
  *(this + 4098) = a2;

  return pthread_mutex_unlock((this + 152));
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::GetSpeechOutputLevelFullRange(webrtc::voe::_anonymous_namespace_::ChannelReceive *this)
{
  pthread_mutex_lock((this + 15952));
  v2 = *(this + 8010);
  pthread_mutex_unlock((this + 15952));
  return v2;
}

double webrtc::voe::anonymous namespace::ChannelReceive::GetTotalOutputEnergy(webrtc::voe::_anonymous_namespace_::ChannelReceive *this)
{
  pthread_mutex_lock((this + 15952));
  v2 = *(this + 2003);
  pthread_mutex_unlock((this + 15952));
  return v2;
}

double webrtc::voe::anonymous namespace::ChannelReceive::GetTotalOutputDuration(webrtc::voe::_anonymous_namespace_::ChannelReceive *this)
{
  pthread_mutex_lock((this + 15952));
  v2 = *(this + 2004);
  pthread_mutex_unlock((this + 15952));
  return v2;
}

void *webrtc::voe::anonymous namespace::ChannelReceive::GetNetworkStatistics@<X0>(webrtc::voe::_anonymous_namespace_::ChannelReceive *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = **(this + 54);
  if (a2)
  {
    (*(v5 + 136))();
    v6 = v30;
    v7 = v31;
    v8 = v32;
    v9 = v33;
    v10 = v34;
  }

  else
  {
    (*(v5 + 144))(&v28);
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v10 = 1;
    v9 = -1;
  }

  *(a3 + 120) = v6;
  *(a3 + 128) = v7;
  *(a3 + 130) = v8;
  *(a3 + 132) = v9;
  *(a3 + 136) = v10;
  *a3 = v28;
  *(a3 + 4) = v29 != 0;
  (*(**(this + 54) + 152))(v17);
  v11 = v17[1];
  *(a3 + 8) = v17[0];
  *(a3 + 24) = v21;
  v12 = v19;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  *(a3 + 64) = v18;
  v13 = v23;
  v14 = v25;
  *(a3 + 152) = v24;
  *(a3 + 160) = v14;
  *(a3 + 168) = v26;
  *(a3 + 72) = v20;
  *(a3 + 88) = v22;
  *(a3 + 104) = v27;
  *(a3 + 112) = v13;
  result = (*(**(this + 54) + 160))(v16);
  *(a3 + 144) = v16[2];
  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::GetDecodingCallStatistics@<X0>(webrtc::voe::_anonymous_namespace_::ChannelReceive *this@<X0>, _OWORD *a2@<X8>)
{
  pthread_mutex_lock((this + 216));
  v4 = *(this + 15928);
  *a2 = *(this + 15912);
  a2[1] = v4;

  return pthread_mutex_unlock((this + 216));
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetMinimumPlayoutDelay(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, int a2)
{
  if (a2 >= 0x2710)
  {
    v2 = 10000;
  }

  else
  {
    v2 = a2;
  }

  if (a2 <= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return (*(**(this + 54) + 88))(*(this + 54), v3);
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::GetPlayoutRtpTimestamp(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, unsigned int *a2, uint64_t *a3)
{
  result = *(this + 16240);
  if (result == 1)
  {
    *a2 = *(this + 4056);
    *a3 = *(this + 2029);
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetEstimatedPlayoutNtpTimestampMs(uint64_t this, uint64_t a2, uint64_t a3)
{
  *(this + 16256) = a2;
  *(this + 16264) = 1;
  *(this + 16272) = a3;
  *(this + 16280) = 1;
  return this;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::GetCurrentEstimatedPlayoutNtpTimestampMs(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, char a2)
{
  if (*(this + 16264) == 1 && *(this + 16280) == 1)
  {
    return (*(this + 16256) + a2 - *(this + 16272));
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::GetSyncInfo@<X0>(webrtc::voe::_anonymous_namespace_::ChannelReceive *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 40);
  pthread_mutex_lock((v4 + 896));
  if (!*(v4 + 976))
  {
    result = pthread_mutex_unlock((v4 + 896));
LABEL_6:
    v12 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  v5 = *(v4 + 988);
  v6 = *(v4 + 984);
  v7 = *(v4 + 992);
  result = pthread_mutex_unlock((v4 + 896));
  if (*(this + 412) != 1 || (*(this + 424) & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(this + 102);
  v10 = *(this + 52);
  result = (*(**(this + 54) + 128))(*(this + 54));
  v11 = *(this + 4062) + result;
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v11;
  v12 = 1;
LABEL_7:
  *(a2 + 32) = v12;
  return result;
}

void *webrtc::voe::anonymous namespace::ChannelReceive::RegisterReceiverCongestionControlObjects(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, webrtc::PacketRouter *a2)
{
  v5 = *(this + 40);
  result = std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100](a2 + 11, &v5);
  *(this + 2050) = a2;
  return result;
}

void *webrtc::voe::anonymous namespace::ChannelReceive::ResetReceiverCongestionControlObjects(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 2050);
  v10 = *(this + 40);
  result = webrtc::PacketRouter::MaybeRemoveRembModuleCandidate(v9, v10, 0, a4, a5, a6, a7, a8);
  v13 = v9[11];
  v12 = v9[12];
  if (v13 != v12)
  {
    v14 = v9[11];
    while (*v14 != v10)
    {
      v14 += 8;
      v13 += 8;
      if (v14 == v12)
      {
        v13 = v9[12];
        break;
      }
    }
  }

  if (v12 == v13)
  {
    __break(1u);
  }

  else
  {
    v15 = (v12 - (v13 + 8));
    if (v12 != v13 + 8)
    {
      result = memmove(v13, v13 + 8, v12 - (v13 + 8));
    }

    v9[12] = &v15[v13];
    *(this + 2050) = 0;
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::GetRTCPStatistics@<X0>(webrtc::voe::_anonymous_namespace_::ChannelReceive *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 25) = 0u;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  v4 = (*(**(this + 39) + 24))(*(this + 39), *(this + 82));
  if (v4)
  {
    (*(*v4 + 16))(&v36);
    v5 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
    v9 = v37 / 0x3E8uLL;
    v11 = v42;
    v10 = v43;
    if (v37 % 0x3E8uLL > 0x1F3)
    {
      LODWORD(v9) = v9 + 1;
    }

    if (-v37 % 0x3E8uLL <= 0x1F4)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (v37 < 0)
    {
      v13 = v12 - -v37 / 0x3E8uLL;
    }

    else
    {
      LODWORD(v13) = v9;
    }

    *a2 = v36;
    *(a2 + 4) = v13;
    *(a2 + 8) = v8;
    *(a2 + 16) = v11 + v7;
    *(a2 + 24) = v10;
    *(a2 + 40) = v5;
    *(a2 + 48) = v6;
  }

  else
  {
    *a2 = 0;
  }

  pthread_mutex_lock((this + 16688));
  *(a2 + 28) = *(this + 4188);
  pthread_mutex_unlock((this + 16688));
  pthread_mutex_lock((this + 16288));
  *(a2 + 32) = *(this + 2047);
  pthread_mutex_unlock((this + 16288));
  v14 = *(this + 40);
  pthread_mutex_lock((v14 + 896));
  v15 = *(v14 + 976);
  if (v15)
  {
    v16 = *(v14 + 968);
    v17 = *(v14 + 984);
    v18 = *(v14 + 996);
    v19 = *(v14 + 1000);
    v20 = *(v14 + 1008);
    pthread_mutex_unlock((v14 + 896));
    *(a2 + 64) = 1;
    *(a2 + 56) = v16;
    *(a2 + 80) = 1;
    *(a2 + 72) = (((1000000 * v15) >> 31) & 1) + ((1000000 * v15) >> 32) + 1000000 * (HIDWORD(v15) + 2085978496);
    if (v17)
    {
      v21 = (((1000000 * v17) >> 31) & 1) + ((1000000 * v17) >> 32) + 1000000 * (HIDWORD(v17) + 2085978496);
    }

    else
    {
      v21 = 0x8000000000000000;
    }

    *(a2 + 96) = 1;
    *(a2 + 88) = v21;
    *(a2 + 104) = v18;
    *(a2 + 112) = v19;
    *(a2 + 120) = v20;
  }

  else
  {
    pthread_mutex_unlock((v14 + 896));
  }

  v22 = *(this + 40);
  pthread_mutex_lock((v22 + 896));
  v23 = *(v22 + 1144);
  v24 = *(v22 + 1152);
  if (v24 == v23)
  {
    v23 = *(v22 + 1152);
    v30 = v23;
  }

  else
  {
    v25 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - v23) >> 3);
    do
    {
      v26 = v25 >> 1;
      v27 = &v23[40 * (v25 >> 1)];
      v29 = *v27;
      v28 = (v27 + 10);
      v25 += ~(v25 >> 1);
      if (v29 < *(v22 + 960))
      {
        v23 = v28;
      }

      else
      {
        v25 = v26;
      }
    }

    while (v25);
    v30 = v23;
    if (v24 != v23)
    {
      if (*(v22 + 960) >= *v23)
      {
        v30 = v23 + 40;
      }

      else
      {
        v30 = v23;
      }
    }
  }

  if (v23 == v30)
  {
    v23 = *(v22 + 1152);
  }

  if (v24 == v23)
  {
    v31 = 0;
    v34 = 0;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v31 = *(v23 + 1);
    v32 = *(v23 + 3);
    v33 = *(v23 + 8);
    v34 = v23[16];
  }

  result = pthread_mutex_unlock((v22 + 896));
  *(a2 + 128) = v31;
  *(a2 + 136) = v34;
  *(a2 + 152) = v33;
  *(a2 + 144) = v32;
  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetNACKStatus(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, int a2)
{
  v3 = *(**(this + 39) + 32);
  if (a2)
  {
    v3();
    v4 = *(**(this + 54) + 208);

    return v4();
  }

  else
  {
    v3();
    v6 = *(**(this + 54) + 216);

    return v6();
  }
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetRtcpMode(uint64_t a1, int a2)
{
  v3 = *(a1 + 320);
  pthread_mutex_lock((v3 + 184));
  if (a2)
  {
    if (!*(v3 + 128))
    {
      v4 = *(v3 + 144) / 2;
      v5 = (*(**(v3 + 88) + 16))(*(v3 + 88));
      v6 = v5 + v4;
      if (v5 == 0x8000000000000000)
      {
        v6 = 0x8000000000000000;
      }

      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((*(v3 + 264) & 1) == 0)
      {
        *(v3 + 264) = 1;
      }

      *(v3 + 256) = v6;
      v7 = *(v3 + 176);
      if (v7)
      {
        v9 = v4;
        (*(*v7 + 48))(v7, &v9);
      }
    }
  }

  else if (*(v3 + 264) == 1)
  {
    *(v3 + 264) = 0;
  }

  *(v3 + 128) = a2;
  return pthread_mutex_unlock((v3 + 184));
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetNonSenderRttMeasurement(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, char a2)
{
  v3 = *(this + 40);
  pthread_mutex_lock((v3 + 184));
  *(v3 + 464) = a2;
  pthread_mutex_unlock((v3 + 184));
  pthread_mutex_lock((v3 + 896));
  *(v3 + 1064) = a2;

  return pthread_mutex_unlock((v3 + 896));
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::PreferredSampleRate(webrtc::voe::_anonymous_namespace_::ChannelReceive *this)
{
  (*(**(this + 54) + 192))(v7);
  v2 = v10;
  v3 = HIDWORD(v7[0]);
  v4 = (*(**(this + 54) + 176))(*(this + 54));
  if (v10 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v9, v9[1]);
    if (v8 < 0)
    {
      operator delete(v7[2]);
    }
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= v4)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetDepacketizerToDecoderFrameTransformer(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(result + 16672);
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = result;
    v6 = *(v4 + 40);
    if ((!v6 || ((**v6)(v6), (**v6)(v6), (v2 = *a2) != 0)) && ((**v2)(v2), (*(*v2 + 8))(v2), !v6) || ((*(*v6 + 8))(v6), v6 != v2))
    {
      webrtc::ChannelReceiveFrameTransformerDelegate::FrameTransformer(*(v5 + 16672), &v12);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/channel_receive.cc", 947, "frame_transformer_delegate_->FrameTransformer() == frame_transformer", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)12,void const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)12,void const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)12,void const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)12,void const*> const&)::t, v7, v8, v9, v10, v12);
LABEL_8:
      *a2 = 0;
    }

    v11 = *(*v6 + 8);

    return v11(v6);
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::SetFrameDecryptor(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 16416);
  *(a1 + 16416) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::OnLocalSsrcChange(uint64_t this, int a2)
{
  v2 = *(this + 320);
  v3 = *(v2 + 824);
  if (v3 <= 1)
  {
    __break(1u);
  }

  else
  {
    v5 = (v2 + 832);
    if (v3)
    {
      v5 = *v5;
    }

    *v5 = a2;
    pthread_mutex_lock((v2 + 184));
    *(v2 + 116) = a2;

    return pthread_mutex_unlock((v2 + 184));
  }

  return this;
}

uint64_t webrtc::voe::anonymous namespace::ChannelReceive::RtcpPacketTypesCounterUpdated(uint64_t result, int a2, uint64_t a3)
{
  if (*(result + 328) == a2)
  {
    v5 = result;
    pthread_mutex_lock((result + 16688));
    v6 = *(a3 + 16);
    *(v5 + 16752) = *a3;
    *(v5 + 16768) = v6;

    return pthread_mutex_unlock((v5 + 16688));
  }

  return result;
}

void non-virtual thunk towebrtc::voe::anonymous namespace::ChannelReceive::~ChannelReceive(uint64_t a1)
{
}

{

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::voe::anonymous namespace::ChannelReceive::RtcpPacketTypesCounterUpdated(uint64_t result, int a2, uint64_t a3)
{
  if (*(result + 320) == a2)
  {
    v5 = result;
    pthread_mutex_lock((result + 16680));
    v6 = *(a3 + 16);
    *(v5 + 16744) = *a3;
    *(v5 + 16760) = v6;

    return pthread_mutex_unlock((v5 + 16680));
  }

  return result;
}

uint64_t std::__function::__func<webrtc::voe::anonymous namespace::ChannelReceive::InitFrameTransformerDelegate(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0,std::allocator<webrtc::voe::anonymous namespace::ChannelReceive::InitFrameTransformerDelegate(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>,void ()(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::RTPHeader const&,webrtc::Timestamp)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288290E18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::voe::anonymous namespace::ChannelReceive::InitFrameTransformerDelegate(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0,std::allocator<webrtc::voe::anonymous namespace::ChannelReceive::InitFrameTransformerDelegate(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>,void ()(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::RTPHeader const&,webrtc::Timestamp)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  v6 = a2[1];
  if (v6)
  {
    v7 = *a2;
  }

  else
  {
    v7 = 0;
  }
}

void webrtc::voe::anonymous namespace::ChannelReceive::OnReceivedPayloadData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 280) & 1) == 0)
  {
    v14 = *(a4 + 4);
    LODWORD(v18.var0.var0) = *(a4 + 8);
    v20 = 0;
    v21 = 0;
    __p = 0;
    v22 = v14;
    v23 = a5;
    v24 = 0;
    v25[0] = 0;
    v25[24] = 0;
    v26 = 0;
    v27 = 0;
    if (*(a4 + 12) >= 0xFu)
    {
      v15 = 15;
    }

    else
    {
      v15 = *(a4 + 12);
    }

    std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int const*,unsigned int const*>(&__p, (a4 + 16), (a4 + 16 + 4 * v15), v15);
    if (*(a4 + 360))
    {
      v16 = *(a4 + 352);
      if ((v24 & 0x100) == 0)
      {
        HIBYTE(v24) = 1;
      }

      LOBYTE(v24) = BYTE4(v16);
    }

    *v25 = *(a4 + 112);
    *&v25[9] = *(a4 + 121);
    operator new();
  }

  v7 = *(a1 + 432);
  if (!a3)
  {
    (*(*v7 + 40))(*(a1 + 432), a4);
LABEL_23:
    webrtc::ModuleRtpRtcpImpl2::LastRtt(*(a1 + 320));
    (*(**(a1 + 432) + 224))(&v18);
    var0 = v18.var0.var0;
    if (v18.var0.var0 != __p)
    {
      webrtc::ModuleRtpRtcpImpl2::SendNACK(*(a1 + 320), v18.var0.var0, ((__p - LODWORD(v18.var0.var0)) >> 1));
      var0 = v18.var0.var0;
    }

    if (var0)
    {
      __p = var0;
      operator delete(var0);
    }

    return;
  }

  v10 = *(a4 + 4);
  LODWORD(v18.var0.var0) = *(a4 + 8);
  v20 = 0;
  v21 = 0;
  __p = 0;
  v22 = v10;
  v23 = a5;
  v24 = 0;
  v25[0] = 0;
  v25[24] = 0;
  v26 = 0;
  v27 = 0;
  if (*(a4 + 12) >= 0xFu)
  {
    v11 = 15;
  }

  else
  {
    v11 = *(a4 + 12);
  }

  std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int const*,unsigned int const*>(&__p, (a4 + 16), (a4 + 16 + 4 * v11), v11);
  if (*(a4 + 360))
  {
    v12 = *(a4 + 352);
    if ((v24 & 0x100) == 0)
    {
      HIBYTE(v24) = 1;
    }

    LOBYTE(v24) = BYTE4(v12);
  }

  *v25 = *(a4 + 112);
  *&v25[9] = *(a4 + 121);
  v13 = (*(*v7 + 32))(v7, a4, a2, a3, &v18);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }
}

void *std::vector<webrtc::RtpPacketInfo>::vector[abi:sn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v2 - *a2) >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

BOOL webrtc::RefCountedObject<webrtc::ChannelReceiveFrameTransformerDelegate>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 15, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::ChannelReceiveFrameTransformerDelegate>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288290EA8;
  v2 = a1[5];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3 == a1 + 1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void webrtc::RefCountedObject<webrtc::ChannelReceiveFrameTransformerDelegate>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288290EA8;
  v2 = a1[5];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3 == a1 + 1)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::voe::anonymous namespace::ChannelReceive::UpdatePlayoutTimestamp(webrtc::voe::_anonymous_namespace_::ChannelReceive *this, char a2, uint64_t a3)
{
  v6 = (*(**(this + 54) + 168))(*(this + 54));
  *(this + 4054) = v6;
  *(this + 16220) = BYTE4(v6);
  if ((v6 & 0x100000000) != 0)
  {
    v11 = 0;
    if ((*(**(this + 2048) + 440))(*(this + 2048), &v11) != -1)
    {
      if (*(this + 16220))
      {
        v7 = *(this + 4054);
        v8 = v11;
        (*(**(this + 54) + 192))(v12);
        if (v16 == 1 && (v9 = v14) != 0 || (v9 = (*(**(this + 54) + 176))(*(this + 54)), (v16 & 1) != 0))
        {
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v15, v15[1]);
          if (v13 < 0)
          {
            operator delete(v12[2]);
          }
        }

        if ((a2 & 1) == 0)
        {
          v10 = v7 + v9 / -1000 * v8;
          if (v10 != *(this + 4056))
          {
            *(this + 4056) = v10;
            *(this + 2029) = a3;
            *(this + 16240) = 1;
          }
        }

        *(this + 4062) = v11;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::voe::anonymous namespace::ChannelReceive::GetAudioFrameWithInfo(int,webrtc::AudioFrame *)::$_0>(char a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v5 = *(result + 8);
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

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

unint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::voe::anonymous namespace::ChannelReceive::GetAudioFrameWithInfo(int,webrtc::AudioFrame *)::$_1 &&>(uint64_t *a1)
{
  v1 = *a1;
  explicit = atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire);
  if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v3 = 0, atomic_compare_exchange_strong(&_MergedGlobals_9, &v3, explicit), explicit))
  {
    v4 = (*(**(v1 + 432) + 120))(*(v1 + 432));
    webrtc::metrics::HistogramAdd(explicit, v4);
  }

  v5 = (*(**(v1 + 432) + 128))(*(v1 + 432));
  CountsLinear = atomic_load_explicit(&qword_28100B918, memory_order_acquire);
  if (CountsLinear || (CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear(), v7 = 0, atomic_compare_exchange_strong(&qword_28100B918, &v7, CountsLinear), CountsLinear))
  {
    webrtc::metrics::HistogramAdd(CountsLinear, *(v1 + 16248) + v5);
  }

  v8 = atomic_load_explicit(&qword_28100B920, memory_order_acquire);
  if (v8 || (v8 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v9 = 0, atomic_compare_exchange_strong(&qword_28100B920, &v9, v8), v8))
  {
    webrtc::metrics::HistogramAdd(v8, v5);
  }

  result = atomic_load_explicit(&qword_28100B928, memory_order_acquire);
  if (result || (result = webrtc::metrics::HistogramFactoryGetCountsLinear(), v11 = 0, atomic_compare_exchange_strong(&qword_28100B928, &v11, result), result))
  {
    v12 = *(v1 + 16248);

    return webrtc::metrics::HistogramAdd(result, v12);
  }

  return result;
}

uint64_t webrtc::ChannelReceiveFrameTransformerDelegate::Transform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 56) != 1)
  {
    operator new();
  }

  if (a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v12[0] = v7;
  v12[1] = a3;
  v11 = a7;
  v8 = *(a1 + 32);
  if (v8)
  {
    return (*(*v8 + 48))(v8, v12, a4, &v11);
  }

  v10 = std::__throw_bad_function_call[abi:sn200100]();
  return webrtc::ChannelReceiveFrameTransformerDelegate::OnTransformedFrame(v10);
}

uint64_t webrtc::ChannelReceiveFrameTransformerDelegate::OnTransformedFrame(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    (**a1)(a1);
  }

  v4 = *(a1 + 48);
  v5 = *a2;
  *a2 = 0;
  v9[0] = a1;
  v9[1] = v5;
  v10 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ChannelReceiveFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>;
  v11 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ChannelReceiveFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0 &&>;
  (*(*v4 + 8))(v4, v9, &v8, &v7);
  return v10(1, v9, v9);
}

uint64_t webrtc::ChannelReceiveFrameTransformerDelegate::StartShortCircuiting(webrtc::ChannelReceiveFrameTransformerDelegate *this)
{
  if (this)
  {
    (**this)(this);
  }

  v2 = *(this + 6);
  v6[0] = this;
  v7 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ChannelReceiveFrameTransformerDelegate::StartShortCircuiting(void)::$_0>;
  v8 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ChannelReceiveFrameTransformerDelegate::StartShortCircuiting(void)::$_0 &&>;
  (*(*v2 + 8))(v2, v6, &v5, &v4);
  return v7(1, v6, v6);
}

uint64_t (***webrtc::ChannelReceiveFrameTransformerDelegate::FrameTransformer@<X0>(webrtc::ChannelReceiveFrameTransformerDelegate *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 5);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

void webrtc::CloneReceiverAudioFrame(uint64_t a1)
{
  if ((*(*a1 + 96))(a1) == 1)
  {
    (*(*a1 + 16))(a1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 104))(__p, a1);
    (*(*a1 + 112))(a1);
    operator new();
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/channel_receive_frame_transformer_delegate.cc", 243, "original->GetDirection() == TransformableFrameInterface::Direction::kReceiver", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v7);
  webrtc::ChannelReceiveFrameTransformerDelegate::~ChannelReceiveFrameTransformerDelegate(v6);
}

void webrtc::TransformableIncomingAudioFrame::~TransformableIncomingAudioFrame(void **this)
{
  webrtc::TransformableIncomingAudioFrame::~TransformableIncomingAudioFrame(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_288290EE8;
  if (*(this + 431) < 0)
  {
    operator delete(this[51]);
    if ((*(this + 311) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 287) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 311) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[36]);
  if ((*(this + 287) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 263) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(this[33]);
  if ((*(this + 263) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = this[3];
    this[3] = 0;
    if (!v2)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_11:
  operator delete(this[30]);
  v2 = this[3];
  this[3] = 0;
  if (!v2)
  {
    return;
  }

LABEL_6:
  MEMORY[0x2743DA520](v2, 0x1000C8077774924);
}

uint64_t webrtc::TransformableIncomingAudioFrame::GetData(webrtc::TransformableIncomingAudioFrame *this)
{
  if (*(this + 1))
  {
    return *(this + 3);
  }

  else
  {
    return 0;
  }
}

void *webrtc::TransformableIncomingAudioFrame::SetData(void *result, const void *a2, size_t __n)
{
  *(result + 1) = 0;
  if (__n)
  {
    v4 = result;
    if (*(result + 2) < __n)
    {
      operator new[]();
    }

    result = memcpy(*(result + 3), a2, __n);
    v4[1] = __n;
  }

  return result;
}

void webrtc::TransformableIncomingAudioFrame::GetMimeType(webrtc::TransformableIncomingAudioFrame *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 431) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 51), *(this + 52));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 408);
    a2->__r_.__value_.__r.__words[2] = *(this + 53);
  }
}

unint64_t webrtc::TransformableIncomingAudioFrame::ReceiveTime(webrtc::TransformableIncomingAudioFrame *this)
{
  v1 = *(this + 54);
  if (v1 == 0x8000000000000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF00;
  }

  return v2 & 0xFFFFFFFFFFFFFF00 | v1;
}

unint64_t webrtc::TransformableIncomingAudioFrame::CaptureTime(webrtc::TransformableIncomingAudioFrame *this)
{
  if (*(this + 168) == 1)
  {
    return 1000 * llround(*(this + 18) * 0.000000232830644);
  }

  else
  {
    return 0;
  }
}

unint64_t webrtc::TransformableIncomingAudioFrame::SenderCaptureTimeOffset(webrtc::TransformableIncomingAudioFrame *this)
{
  if (*(this + 168) == 1 && *(this + 160) == 1)
  {
    return 1000 * llround(*(this + 19) * 0.000000232830644);
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::TransformableIncomingAudioFrame::GetContributingSources(webrtc::TransformableIncomingAudioFrame *this)
{
  if (*(this + 44))
  {
    return this + 48;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::TransformableIncomingAudioFrame::Type(webrtc::TransformableIncomingAudioFrame *this)
{
  if (*(this + 98) & *(this + 48))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t webrtc::TransformableIncomingAudioFrame::AudioLevel(webrtc::TransformableIncomingAudioFrame *this)
{
  v1 = *(this + 388);
  if ((*(this + 98) & 1) == 0)
  {
    v1 = 0;
  }

  return v1 | ((*(this + 98) & 1u) << 8);
}

uint64_t webrtc::TransformableIncomingAudioFrame::SetAudioLevel(uint64_t result, uint64_t a2)
{
  if (a2 >= 0x7Fu)
  {
    v2 = 127;
  }

  else
  {
    v2 = a2;
  }

  *(result + 384) = ((v2 << 32) | 1) & (a2 << 55 >> 63);
  *(result + 392) = BYTE1(a2) & 1;
  return result;
}

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ChannelReceiveFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0 &&>(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  result[1] = 0;
  if (!*(v2 + 32))
  {
    if (!v1)
    {
      return result;
    }

    goto LABEL_20;
  }

  v3 = (*(*v1 + 112))(v1);
  v26 = 0u;
  memset(v27, 0, 28);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x8000000000000000;
  }

  v25 = 0uLL;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  LOBYTE(v33) = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42[0] = 0;
  *(v42 + 3) = 0;
  *&v24 = 0;
  *(&v24 + 5) = 0;
  v28 = 0uLL;
  v29[0] = 0;
  v43 = -1;
  v49 = 0;
  LOBYTE(v50) = 0;
  v51 = 0;
  v44 = xmmword_273B8F690;
  *v45 = 0uLL;
  *v46 = 0uLL;
  v47 = 0uLL;
  memset(__p, 0, 25);
  if ((*(*v1 + 96))(v1) == 2)
  {
    BYTE1(v24) = (*(*v1 + 32))(v1);
    DWORD1(v24) = (*(*v1 + 64))(v1);
    DWORD2(v24) = (*(*v1 + 56))(v1);
    (*(*v1 + 168))(v1);
    if (v6)
    {
      v34 = 0;
      v35 = 0;
      v36 = 1;
      v7 = (*(*v1 + 168))(v1);
      if ((v8 & 1) == 0)
      {
LABEL_29:
        std::__throw_bad_optional_access[abi:sn200100]();
        goto LABEL_30;
      }

      v33 = v7;
    }

    if (((*(*v1 + 184))(v1) & 0x100) != 0)
    {
      v9 = (*(*v1 + 184))(v1);
      if ((v9 & 0x100) == 0)
      {
        __break(1u);
        goto LABEL_28;
      }

      v14 = v9;
      if (v9 >= 0x80u)
      {
LABEL_30:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/rtp_headers.cc", 24, "audio_level <= 127", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v10, v11, v12, v13, v14);
        return absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ChannelReceiveFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>(v21, v22, v23);
      }

      v50 = (v9 << 32) | 1;
      v51 = 1;
    }
  }

  else
  {
    v15 = v1[5];
    v26 = v1[4];
    *v27 = v15;
    v16 = v1[7];
    *&v27[16] = v1[6];
    v28 = v16;
    v17 = v1[3];
    v24 = v1[2];
    v25 = v17;
    webrtc::RTPHeaderExtension::operator=(v29, v1 + 8);
  }

  v53[0] = (*(*v1 + 16))(v1);
  v53[1] = v18;
  v52 = v5;
  v19 = *(v2 + 32);
  if (!v19)
  {
LABEL_28:
    std::__throw_bad_function_call[abi:sn200100]();
    goto LABEL_29;
  }

  (*(*v19 + 48))(v19, v53, &v24, &v52);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    operator delete(v46[1]);
    if ((SHIBYTE(v46[0]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    operator delete(v45[0]);
    goto LABEL_20;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v47) < 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (SHIBYTE(v46[0]) < 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v20 = *(*v1 + 8);

  return v20(v1);
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ChannelReceiveFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>(char a1, uint64_t *a2, _OWORD *a3)
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

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ChannelReceiveFrameTransformerDelegate::StartShortCircuiting(void)::$_0>(char a1, uint64_t *a2, uint64_t *a3)
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

void webrtc::voe::anonymous namespace::ChannelSend::InitFrameTransformerDelegate(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = &unk_288291178;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void webrtc::voe::anonymous namespace::ChannelSend::~ChannelSend(webrtc::voe::_anonymous_namespace_::ChannelSend *this)
{
  *this = &unk_288290FC8;
  *(this + 1) = &unk_2882910C8;
  *(this + 2) = &unk_2882910F8;
  *(this + 3) = &unk_288291120;
  v2 = *(this + 41);
  if (v2)
  {
    (*(**(v2 + 104) + 56))(*(v2 + 104));
    v3 = *(v2 + 104);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(v2 + 104) = 0;
    pthread_mutex_lock((v2 + 8));
    v4 = *(v2 + 96);
    *(v2 + 96) = 0;
    if (v4 == v2 + 72)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(v2 + 96) = 0;
    pthread_mutex_unlock((v2 + 8));
    v5 = *this;
  }

  else
  {
    v5 = &unk_288290FC8;
  }

  v5[22](this);
  (*(**(this + 22) + 32))(*(this + 22), 0);
  v6 = *(this + 53);
  *(this + 53) = 0;
  if (v6)
  {
    (**v6)(v6);
  }

  pthread_mutex_destroy((this + 496));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 472, *(this + 60));
  if (*(this + 455) < 0)
  {
    operator delete(*(this + 54));
  }

  v7 = *(this + 53);
  *(this + 53) = 0;
  if (v7)
  {
    (**v7)(v7);
  }

  pthread_mutex_destroy((this + 336));
  v8 = *(this + 41);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 38);
  if (v9)
  {
    *(this + 39) = v9;
    operator delete(v9);
  }

  v10 = *(this + 36);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 34);
  *(this + 34) = 0;
  if (v11)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v11 + 72));
    pthread_mutex_destroy((v11 + 8));
    MEMORY[0x2743DA540](v11, 0x10E0C409C3A6D8FLL);
  }

  v12 = *(this + 33);
  *(this + 33) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 22);
  *(this + 22) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 21);
  *(this + 21) = 0;
  if (v14)
  {
    pthread_mutex_destroy((v14 + 224));
    if (*(v14 + 200))
    {
      v15 = *(v14 + 192);
      v16 = *(*(v14 + 184) + 8);
      v17 = *v15;
      *(v17 + 8) = v16;
      *v16 = v17;
      *(v14 + 200) = 0;
      if (v15 != (v14 + 184))
      {
        do
        {
          v18 = v15[1];
          operator delete(v15);
          v15 = v18;
        }

        while (v18 != (v14 + 184));
      }
    }

    pthread_mutex_destroy((v14 + 120));
    pthread_mutex_destroy((v14 + 16));
    MEMORY[0x2743DA540](v14, 0x1060C40538CB600);
  }

  v19 = *(this + 20);
  *(this + 20) = 0;
  if (v19)
  {
    webrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2(v19);
    MEMORY[0x2743DA540]();
  }

  pthread_mutex_destroy((this + 88));
  v20 = *(this + 4);
  if (v20)
  {
    if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v20 + 8))(v20);
    }
  }
}

{

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::ReceivedRTCPPacket(webrtc::voe::_anonymous_namespace_::ChannelSend *this, const unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    a2 = 0;
  }

  webrtc::RTCPReceiver::IncomingPacket(*(this + 20) + 768, a2, a3);
  result = webrtc::ModuleRtpRtcpImpl2::LastRtt(*(this + 20));
  if (v5)
  {
    v6 = *(this + 34);
    v7 = 1000000;
    if (result < 1000000)
    {
      v7 = result;
    }

    if (v7 <= 30000)
    {
      v7 = 30000;
    }

    v8 = (4294968 * v7) >> 32;
    if ((v7 - 1000 * v8) <= 0x1F3)
    {
      v9 = (4294968 * v7) >> 32;
    }

    else
    {
      v9 = v8 + 1;
    }

    pthread_mutex_lock((v6 + 8));
    *(v6 + 168) = v9;
    v10 = (*(**v6 + 16))();
    v11 = v10 / 0x3E8uLL;
    if (v10 % 0x3E8uLL > 0x1F3)
    {
      ++v11;
    }

    if (-v10 % 0x3E8uLL <= 0x1F4)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 - -v10 / 0x3E8uLL;
    if (v10 < 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    webrtc::RateStatistics::SetWindowSize((v6 + 72), v9, v14);
    pthread_mutex_unlock((v6 + 8));
    operator new();
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::GetRTCPStatistics@<X0>(webrtc::voe::_anonymous_namespace_::ChannelSend *this@<X0>, uint64_t a2@<X8>)
{
  Rtt = webrtc::ModuleRtpRtcpImpl2::LastRtt(*(this + 20));
  if (v5)
  {
    v6 = Rtt;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 / 0x3E8uLL;
  if (v6 % 0x3E8uLL > 0x1F3)
  {
    ++v7;
  }

  if (-v6 % 0x3E8uLL <= 0x1F4)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6 < 0)
  {
    v9 = v8 - -v6 / 0x3E8uLL;
  }

  else
  {
    v9 = v7;
  }

  *a2 = v9;
  v10 = *(*(this + 20) + 64);
  v11 = *(v10 + 576);
  if (v11)
  {
    (*(*v11 + 16))(&v28);
    v12 = *(&v28 + 1);
    v13 = v29;
    v15 = v30;
    LODWORD(v14) = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    if (*(v10 + 512) == 1)
    {
      (*(**(v10 + 576) + 16))(&v28);
      v19 = *(&v28 + 1);
      v20 = v29;
      v22 = v30;
      LODWORD(v21) = v31;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v22 = 0;
      LODWORD(v21) = 0;
    }
  }

  else
  {
    v12 = *(v10 + 608);
    v13 = *(v10 + 616);
    v15 = *(v10 + 624);
    v14 = *(v10 + 632);
    v16 = *(v10 + 640);
    v17 = *(v10 + 656);
    v18 = *(v10 + 672);
    v19 = *(v10 + 736);
    v20 = *(v10 + 744);
    v22 = *(v10 + 752);
    v21 = *(v10 + 760);
  }

  *(a2 + 8) = v20 + v13;
  *(a2 + 16) = v15 + v12 + v19 + v22;
  *(a2 + 24) = v17;
  *(a2 + 32) = v21 + v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  v23 = *(this + 20);
  v29 = 0;
  v28 = 0uLL;
  pthread_mutex_lock((v23 + 896));
  v24 = *(v23 + 1168);
  for (i = *(v23 + 1176); v24 != i; v24 += 72)
  {
    std::vector<webrtc::ReportBlockData>::push_back[abi:sn200100](&v28, (v24 + 8));
  }

  pthread_mutex_unlock((v23 + 896));
  v26 = v29;
  *(a2 + 56) = v28;
  *(a2 + 72) = v26;
  pthread_mutex_lock((this + 336));
  *(a2 + 80) = *(this + 100);
  return pthread_mutex_unlock((this + 336));
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::SetEncoder(uint64_t a1, char a2, _BYTE **a3, uint64_t *a4)
{
  v8 = *(a1 + 160);
  v9 = (*(**a4 + 32))();
  webrtc::RTCPSender::SetRtpClockRate((v8 + 72), a2, v9);
  v10 = *(a1 + 168);
  v11 = (*(**a4 + 32))();
  (*(**a4 + 24))();
  pthread_mutex_lock((v10 + 16));
  *(v10 + 288) = v11;
  *(v10 + 292) = 1;
  pthread_mutex_unlock((v10 + 16));
  v12 = (a1 + 432);
  if ((a1 + 432) == a3)
  {
    *(a1 + 456) = *(a3 + 3);
  }

  else
  {
    v13 = *(a3 + 23);
    if (*(a1 + 455) < 0)
    {
      if (v13 >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      if (v13 >= 0)
      {
        v16 = *(a3 + 23);
      }

      else
      {
        v16 = a3[1];
      }

      std::string::__assign_no_alias<false>(v12, v15, v16);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v12, *a3, a3[1]);
    }

    else
    {
      v14 = *a3;
      *(a1 + 448) = a3[2];
      *&v12->__r_.__value_.__l.__data_ = v14;
    }

    *(a1 + 456) = *(a3 + 3);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(a1 + 472, a3[5], a3 + 6);
  }

  v17 = *(a1 + 176);
  v18 = *a4;
  *a4 = 0;
  v20 = v18;
  v21 = &v20;
  (*(*v17 + 16))(v17, &v21, webrtc::FunctionView<void ()(std::unique_ptr<webrtc::AudioEncoder> *)>::CallVoidPtr<webrtc::AudioCodingModule::SetEncoder(std::unique_ptr<webrtc::AudioEncoder>)::{lambda(std::unique_ptr<webrtc::AudioEncoder> *)#1}>);
  result = v20;
  v20 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::CallEncoder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
}

void webrtc::voe::anonymous namespace::ChannelSend::SetRTCP_CNAME(uint64_t a1, char *a2, unint64_t a3)
{
  if (a3 >= 0xFF)
  {
    v4 = 255;
  }

  else
  {
    v4 = a3;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v11 = v4;
  v5 = &__s[v4];
  if (__s <= a2 && v5 > a2)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    memmove(__s, a2, v4);
  }

  *v5 = 0;
  v7 = *(a1 + 160);
  if ((v11 & 0x80000000) == 0)
  {
    v8 = __s;
    goto LABEL_16;
  }

  v8 = *__s;
  if (!*__s)
  {
LABEL_18:
    __break(1u);
    return;
  }

LABEL_16:
  v9 = strlen(v8);
  webrtc::RTCPSender::SetCNAME(v7 + 72, v8, v9);
  if (v11 < 0)
  {
    operator delete(*__s);
  }
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::SetSendAudioLevelIndicationStatus(webrtc::voe::_anonymous_namespace_::ChannelSend *this, int a2, int a3)
{
  atomic_store(a2, this + 280);
  v3 = *(*(this + 20) + 64);
  if (a2)
  {
    pthread_mutex_lock((v3 + 1072));
    v5 = webrtc::RtpHeaderExtensionMap::RegisterByUri((v3 + 1152), a3, "urn:ietf:params:rtp-hdrext:ssrc-audio-level", 43);
    if (*(v3 + 1160))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v3 + 1161) == 0;
    }

    v8 = !v6 || *(v3 + 1157) != 0 || *(v3 + 1153) != 0;
    *(v3 + 1296) = v8;
    webrtc::RTPSender::UpdateHeaderSizes((v3 + 1016));
    result = pthread_mutex_unlock((v3 + 1072));
    if ((v5 & 1) == 0)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_rtcp_impl2.cc", 569, "registered", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    pthread_mutex_lock((v3 + 1072));
    webrtc::RtpHeaderExtensionMap::Deregister(v3 + 1152, "urn:ietf:params:rtp-hdrext:ssrc-audio-level", 43);
    if (*(v3 + 1160))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v3 + 1161) == 0;
    }

    v11 = !v9 || *(v3 + 1157) != 0 || *(v3 + 1153) != 0;
    *(v3 + 1296) = v11;
    webrtc::RTPSender::UpdateHeaderSizes((v3 + 1016));

    return pthread_mutex_unlock((v3 + 1072));
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::RegisterSenderCongestionControlObjects(void *a1, uint64_t a2)
{
  v4 = (*(*a2 + 64))(a2);
  v5 = (*(*a2 + 16))(a2);
  v6 = a1[33];
  pthread_mutex_lock((v6 + 8));
  *(v6 + 72) = v4;
  pthread_mutex_unlock((v6 + 8));
  result = webrtc::RtpPacketHistory::SetStorePacketsStatus(*(a1[20] + 64), 1, 0x258uLL);
  a1[32] = v5;
  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::ResetSenderCongestionControlObjects(webrtc::voe::_anonymous_namespace_::ChannelSend *this)
{
  webrtc::RtpPacketHistory::SetStorePacketsStatus(*(*(this + 20) + 64), 0, 0x258uLL);
  *(this + 32) = 0;
  v2 = *(this + 33);
  pthread_mutex_lock((v2 + 8));
  *(v2 + 72) = 0;

  return pthread_mutex_unlock((v2 + 8));
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::GetRemoteRTCPReportBlocks@<X0>(webrtc::voe::_anonymous_namespace_::ChannelSend *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 20);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  pthread_mutex_lock((v3 + 896));
  v4 = *(v3 + 1168);
  for (i = *(v3 + 1176); v4 != i; v4 += 72)
  {
    std::vector<webrtc::ReportBlockData>::push_back[abi:sn200100](a2, (v4 + 8));
  }

  return pthread_mutex_unlock((v3 + 896));
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::RegisterCngPayloadType(webrtc::voe::_anonymous_namespace_::ChannelSend *this, char a2, int a3)
{
  webrtc::RTCPSender::SetRtpClockRate((*(this + 20) + 72), a2, a3);
  v6 = *(this + 21);
  pthread_mutex_lock((v6 + 16));
  if (a3 > 31999)
  {
    if (a3 == 32000)
    {
      *(v6 + 211) = a2;
      v7 = (v6 + 16);
    }

    else
    {
      if (a3 != 48000)
      {
LABEL_5:
        v7 = (v6 + 16);

        return pthread_mutex_unlock(v7);
      }

      *(v6 + 212) = a2;
      v7 = (v6 + 16);
    }
  }

  else
  {
    if (a3 != 8000)
    {
      if (a3 == 16000)
      {
        *(v6 + 210) = a2;
      }

      goto LABEL_5;
    }

    *(v6 + 209) = a2;
    v7 = (v6 + 16);
  }

  return pthread_mutex_unlock(v7);
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::SetSendTelephoneEventPayloadType(webrtc::voe::_anonymous_namespace_::ChannelSend *this, char a2, int a3)
{
  webrtc::RTCPSender::SetRtpClockRate((*(this + 20) + 72), a2, a3);
  v6 = *(this + 21);
  pthread_mutex_lock((v6 + 16));
  *(v6 + 82) = a2;
  *(v6 + 84) = a3;

  return pthread_mutex_unlock((v6 + 16));
}

BOOL webrtc::voe::anonymous namespace::ChannelSend::SendTelephoneEventOutband(webrtc::voe::_anonymous_namespace_::ChannelSend *this)
{
  if (*(this + 156) != 1)
  {
    return 0;
  }

  v1 = *(this + 21);
  pthread_mutex_lock((v1 + 16));
  v2 = *(v1 + 82);
  pthread_mutex_unlock((v1 + 16));
  if (v2 < 0)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 120));
  v3 = *(v1 + 200);
  v4 = v3 < 0x14;
  if (v3 <= 0x13)
  {
    operator new();
  }

  pthread_mutex_unlock((v1 + 120));
  return v4;
}

void webrtc::voe::anonymous namespace::ChannelSend::OnBitrateAllocation(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v2 = operator new(0x30uLL);
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  operator new();
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::SetInputMute(webrtc::voe::_anonymous_namespace_::ChannelSend *this, char a2)
{
  pthread_mutex_lock((this + 88));
  *(this + 248) = a2;

  return pthread_mutex_unlock((this + 88));
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::ProcessAndEncodeAudio(uint64_t result, uint64_t *a2)
{
  v2 = atomic_load((result + 281));
  if (v2)
  {
    v4 = result;
    v5 = atomic_load((result + 282));
    if (v5)
    {
      atomic_store(0, (result + 282));
      v6 = *a2;
      if (*(result + 200) == 1 && (*(v6 + 15448) & 1) != 0)
      {
        v7 = (((*(v6 + 15440) - *(result + 192)) * *(v6 + 32) / 1000) / *(v6 + 24) - 1) * *(v6 + 24);
        *(result + 184) += v7 & ~(v7 >> 63);
      }
    }

    else
    {
      v6 = *a2;
    }

    v8 = *(result + 184);
    *v6 = v8;
    *(result + 184) = v8 + *(v6 + 24);
    v9 = *(v6 + 15440);
    v10 = *(v6 + 15448);
    *(result + 192) = v9;
    *(result + 200) = v10;
    v11 = *a2;
    if (webrtc::g_clock)
    {
      v12 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v12 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    *(v11 + 56) = v12 / 1000000;
    v13 = *(v4 + 424);
    v14 = *a2;
    *a2 = 0;
    v17[0] = v4;
    v17[1] = v14;
    (*(*v13 + 8))(v13, v17, &v16, &v15);
    return v18(1, v17, v17);
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::StopSend(uint64_t this)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(this + 156) == 1)
  {
    v1 = this;
    *(this + 156) = 0;
    atomic_store(0, (this + 281));
    webrtc::Event::Event(&v24, 0, 0);
    v2 = *(v1 + 424);
    v19[0] = v1;
    v19[1] = &v24;
    v20 = absl::internal_any_invocable::LocalManagerTrivial;
    (*(*v2 + 8))(v2, v19, &v18, &v17);
    v20(1, v19, v19);
    v3.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v4.var0 = 3000000;
    webrtc::Event::Wait(&v24, v3, v4);
    v5 = *(v1 + 160);
    pthread_mutex_lock((v5 + 184));
    v6 = *(v5 + 248);
    pthread_mutex_unlock((v5 + 184));
    if (v6 == 1)
    {
      webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(v5, v19);
      pthread_mutex_lock((v5 + 184));
      *(v5 + 248) = 0;
      pthread_mutex_unlock((v5 + 184));
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }
    }

    v7 = *(*(v1 + 160) + 64);
    pthread_mutex_lock((v7 + 1072));
    *(v7 + 1136) = 0;
    pthread_mutex_unlock((v7 + 1072));
    webrtc::PacketRouter::RemoveSendRtpModule(*(v1 + 256), *(v1 + 160), v8, v9, v10, v11, v12, v13);
    v14 = *(v1 + 264);
    v15 = *(v1 + 160);
    pthread_mutex_lock((v15 + 184));
    v16 = *(v15 + 116);
    pthread_mutex_unlock((v15 + 184));
    (*(*v14 + 24))(v14, v16);
    pthread_mutex_destroy(&v24);
    return pthread_cond_destroy(&v25);
  }

  return this;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::SetFrameEncryptor(uint64_t a1, void *a2)
{
  v3 = *(a1 + 424);
  v4 = *a2;
  if (*a2)
  {
    (**v4)(*a2);
  }

  v8[0] = a1;
  v8[1] = v4;
  (*(*v3 + 8))(v3, v8, &v7, &v6);
  return v9(1, v8, v8);
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::SetEncoderToPacketizerFrameTransformer(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 424);
    *a2 = 0;
    v6[0] = result;
    v6[1] = v2;
    (*(*v3 + 8))(v3, v6, &v5, &v4);
    return v7(1, v6, v6);
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::GetUsedRate(webrtc::voe::_anonymous_namespace_::ChannelSend *this)
{
  pthread_mutex_lock((this + 496));
  v2 = *(this + 73);
  pthread_mutex_unlock((this + 496));
  return v2;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::RegisterPacketOverhead(webrtc::voe::_anonymous_namespace_::ChannelSend *this, int a2)
{
  pthread_mutex_lock((this + 496));
  *(this + 71) = a2;

  return pthread_mutex_unlock((this + 496));
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::RtcpPacketTypesCounterUpdated(uint64_t result, int a2, uint64_t a3)
{
  if (*(result + 152) == a2)
  {
    v5 = result;
    pthread_mutex_lock((result + 336));
    v6 = *(a3 + 16);
    *(v5 + 400) = *a3;
    *(v5 + 416) = v6;

    return pthread_mutex_unlock((v5 + 336));
  }

  return result;
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::SendData(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = atomic_load((a1 + 280));
  if (v12)
  {
    v13 = *(a1 + 216);
    if (v13)
    {
      v14 = *(a1 + 208);
      v15 = v14 / v13;
      if (v15 <= 0.00021424 || (v16 = a4, v17 = a2, v18 = a5, v19 = log10f(v15 * 9.3132e-10), a5 = v18, a2 = v17, a4 = v16, v20 = ((v19 * -10.0) + 0.5), v20 == 127))
      {
        if (v14 == 0.0)
        {
          LOBYTE(v20) = 127;
        }

        else
        {
          LOBYTE(v20) = 126;
        }
      }

      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      if (*(a1 + 240) == 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v20) = 127;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      if (*(a1 + 240) == 1)
      {
LABEL_9:
        *(a1 + 240) = 0;
      }
    }

    v21 = v20;
    v22 = 256;
    v23 = *(a1 + 328);
    if (v23)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v21 = 0;
  v22 = 0;
  v23 = *(a1 + 328);
  if (v23)
  {
LABEL_11:
    v39 = 5;
    if (&__p <= "audio" && &__p + 5 > "audio")
    {
      goto LABEL_38;
    }

    v37 = a4;
    LODWORD(__p) = *"audio";
    WORD2(__p) = webrtc::kMediaTypeAudio[4];
    strcpy(__s, "audio/");
    v25 = *(a1 + 455);
    v36 = a2;
    v35 = a5;
    if ((v25 & 0x8000000000000000) != 0)
    {
      v26 = *(a1 + 432);
      v25 = *(a1 + 440);
    }

    else
    {
      v26 = (a1 + 432);
    }

    if (v25 >= 0x3F9)
    {
      v28 = 1017;
    }

    else
    {
      v28 = v25;
    }

    memcpy(&__s[6], v26, v28);
    __s[v28 + 6] = 0;
    v29 = *(*(a1 + 160) + 64);
    pthread_mutex_lock((v29 + 1072));
    v30 = *(v29 + 1192);
    pthread_mutex_unlock((v29 + 1072));
    v31 = *(a1 + 160);
    pthread_mutex_lock((v31 + 184));
    v32 = *(v31 + 116);
    pthread_mutex_unlock((v31 + 184));
    v33 = strlen(__s);
    if (v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v34 = v33;
    if (v33 > 0x16)
    {
      operator new();
    }

    v39 = v33;
    if (&__p <= __s && &__p + v33 > __s)
    {
LABEL_38:
      __break(1u);
    }

    if (v33)
    {
      memcpy(&__p, __s, v33);
    }

    *(&__p + v34) = 0;
    webrtc::ChannelSendFrameTransformerDelegate::Transform(v23, v36, a3, v30 + v37, v35, a6, a7, v32, &__p, v22 | v21);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

LABEL_18:
  if (!a6)
  {
    a5 = 0;
  }
}

void non-virtual thunk towebrtc::voe::anonymous namespace::ChannelSend::~ChannelSend(uint64_t a1)
{
}

{

  JUMPOUT(0x2743DA540);
}

{
}

{

  JUMPOUT(0x2743DA540);
}

{
}

{

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::voe::anonymous namespace::ChannelSend::RtcpPacketTypesCounterUpdated(uint64_t result, int a2, uint64_t a3)
{
  if (*(result + 136) == a2)
  {
    v5 = result;
    pthread_mutex_lock((result + 320));
    v6 = *(a3 + 16);
    *(v5 + 384) = *a3;
    *(v5 + 400) = v6;

    return pthread_mutex_unlock((v5 + 320));
  }

  return result;
}

void webrtc::voe::anonymous namespace::RtpPacketSenderProxy::~RtpPacketSenderProxy(webrtc::voe::_anonymous_namespace_::RtpPacketSenderProxy *this)
{
  *this = &unk_288291148;
  pthread_mutex_destroy((this + 8));
}

{
  *this = &unk_288291148;
  pthread_mutex_destroy((this + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::voe::anonymous namespace::RtpPacketSenderProxy::EnqueuePackets(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = *(a1 + 72);
  if (v4)
  {
    *__p = *a2;
    v16 = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    (*(*v4 + 16))(v4, __p);
    v5 = __p[0];
    if (__p[0])
    {
      v6 = __p[1];
      v7 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            v10 = v8[22];
            if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 8))(v10);
            }

            v11 = v8[11];
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

            v13 = v8[7];
            if (v13)
            {
              v8[8] = v13;
              operator delete(v13);
            }

            MEMORY[0x2743DA540](v8, 0x1020C4060F6C936);
          }
        }

        while (v6 != v5);
        v7 = __p[0];
      }

      __p[1] = v5;
      operator delete(v7);
    }
  }

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t webrtc::voe::anonymous namespace::RtpPacketSenderProxy::RemovePacketsForSsrc(webrtc::voe::_anonymous_namespace_::RtpPacketSenderProxy *this, uint64_t a2)
{
  pthread_mutex_lock((this + 8));
  v4 = *(this + 9);
  if (v4)
  {
    (*(*v4 + 24))(v4, a2);
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t std::__function::__func<webrtc::voe::anonymous namespace::ChannelSend::InitFrameTransformerDelegate(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0,std::allocator<webrtc::voe::anonymous namespace::ChannelSend::InitFrameTransformerDelegate(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>,int ()(webrtc::AudioFrameType,unsigned char,unsigned int,webrtc::ArrayView<unsigned char const,-4711l>,long long,webrtc::ArrayView<unsigned int const,-4711l>,std::optional<unsigned char>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288291178;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::voe::anonymous namespace::ChannelSend::InitFrameTransformerDelegate(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0,std::allocator<webrtc::voe::anonymous namespace::ChannelSend::InitFrameTransformerDelegate(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>,int ()(webrtc::AudioFrameType,unsigned char,unsigned int,webrtc::ArrayView<unsigned char const,-4711l>,long long,webrtc::ArrayView<unsigned int const,-4711l>,std::optional<unsigned char>)>::operator()(uint64_t a1, int *a2, unsigned __int8 *a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned __int16 *a8)
{
  v8 = *(a1 + 8);
  v22 = *a3;
  v23 = *a2;
  v9 = *a4;
  v11 = *a5;
  v10 = a5[1];
  v12 = *a6;
  v13 = *a7;
  v14 = a7[1];
  v15 = *a8;
  v16 = *(*(v8 + 160) + 64);
  pthread_mutex_lock((v16 + 1072));
  v17 = *(v16 + 1192);
  pthread_mutex_unlock((v16 + 1072));
  if (v10)
  {
    v19 = v11;
  }

  else
  {
    v19 = 0;
  }

  if (v14)
  {
    v20 = v13;
  }

  else
  {
    v20 = 0;
  }
}

uint64_t webrtc::voe::anonymous namespace::ChannelSend::SendRtpAudio(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a6;
  v14 = a4;
  v16 = a2;
  if (a6)
  {
    v18 = *(a1 + 288);
    if (v18)
    {
      if ((*(*v18 + 40))(v18, 0, a6))
      {
        operator new[]();
      }

      v31[0] = 0;
      v20 = *(a1 + 288);
      v21 = *(a1 + 160);
      pthread_mutex_lock((v21 + 184));
      v22 = *(v21 + 116);
      pthread_mutex_unlock((v21 + 184));
      if ((*(*v20 + 32))(v20, 0, v22, 0, 0, a5, v12))
      {
        return 0xFFFFFFFFLL;
      }

      v12 = v31[0];
      a5 = 0;
      v16 = a2;
      v14 = a4;
    }

    else if (*(a1 + 300))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!webrtc::ModuleRtpRtcpImpl2::OnSendingRtpFrame(*(a1 + 160), v14, a7, a3, 0))
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v31[0]) = v16;
  if (v12)
  {
    v23 = a5;
  }

  else
  {
    v23 = 0;
  }

  v31[1] = v23;
  v31[2] = v12;
  v32 = a3;
  v24 = *(*(a1 + 160) + 64);
  pthread_mutex_lock((v24 + 1072));
  v25 = *(v24 + 1192);
  pthread_mutex_unlock((v24 + 1072));
  v33 = v25 + v14;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v36) = 0;
  v37 = 0;
  if (a10)
  {
    v26 = a9;
  }

  else
  {
    v26 = 0;
  }

  v38 = v26;
  v39 = a10;
  if (a7 >= 1)
  {
    v35 = 1;
    v34 = 1000 * a7;
  }

  v27 = atomic_load((a1 + 280));
  if ((v27 & 1) != 0 && (a11 & 0x100) != 0)
  {
    v37 = 1;
    v36 = a11;
  }

  return (webrtc::RTPSenderAudio::SendAudio(*(a1 + 168), v31) - 1);
}

BOOL webrtc::RefCountedObject<webrtc::ChannelSendFrameTransformerDelegate>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 31, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::ChannelSendFrameTransformerDelegate>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288291208;
  v2 = *(a1 + 104);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3 == a1 + 72)
  {
    (*(*v3 + 32))(v3);
    pthread_mutex_destroy((a1 + 8));
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    pthread_mutex_destroy((a1 + 8));
    return a1;
  }
}

void webrtc::RefCountedObject<webrtc::ChannelSendFrameTransformerDelegate>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288291208;
  v2 = *(a1 + 104);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3 == a1 + 72)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  pthread_mutex_destroy((a1 + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::voe::anonymous namespace::ChannelSend::CallEncoderAsync(absl::AnyInvocable<void ()(webrtc::AudioEncoder *)>)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (*(v3 + 24))(1, v3 + 8, v3 + 8);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(std::unique_ptr<webrtc::AudioEncoder> *)>::CallVoidPtr<webrtc::AudioCodingModule::SetEncoder(std::unique_ptr<webrtc::AudioEncoder>)::{lambda(std::unique_ptr<webrtc::AudioEncoder> *)#1}>(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  **a1 = 0;
  result = *a2;
  *a2 = v2;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(std::unique_ptr<webrtc::AudioEncoder> *)>::CallVoidPtr<webrtc::voe::anonymous namespace::ChannelSend::CallEncoder(webrtc::FunctionView<void ()(webrtc::AudioEncoder*)>)::$_0>(uint64_t result, void *a2)
{
  if (*a2)
  {
    return (*(result + 8))(*result);
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::voe::anonymous namespace::ChannelSend::OnBitrateAllocation(webrtc::BitrateAllocationUpdate)::$_0 &,webrtc::AudioEncoder *>(__int128 **a1, uint64_t a2)
{
  v2 = **a1;
  v3 = (*a1)[2];
  v5[1] = (*a1)[1];
  v5[2] = v3;
  v5[0] = v2;
  return (*(*a2 + 176))(a2, v5);
}

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::voe::anonymous namespace::ChannelSend::ProcessAndEncodeAudio(std::unique_ptr<webrtc::AudioFrame>)::$_0 &&>(uint64_t *result)
{
  v1 = *result;
  v2 = atomic_load((*result + 281));
  if ((v2 & 1) == 0)
  {
    return result;
  }

  v3 = result;
  {
    v4 = *(v3[1] + 56);
    if (v4)
    {
      if (webrtc::g_clock)
      {
        LODWORD(v7) = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!dword_28100D8E4)
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v7 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      v8 = v7 / 1000000 - v4;
    }

    else
    {
      v8 = -1;
    }

    webrtc::metrics::HistogramAdd(explicit, v8);
  }

  pthread_mutex_lock((v1 + 88));
  v9 = *(v1 + 248);
  pthread_mutex_unlock((v1 + 88));
  v15 = v3[1];
  if ((v9 & 1) != 0 || *(v1 + 249))
  {
    if (v9)
    {
      v16 = *(v1 + 249) == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      *(v15 + 15432) = 1;
      goto LABEL_25;
    }

    if ((*(v15 + 15432) & 1) == 0)
    {
      v17 = *(v15 + 24);
      if (v17 > 0x7F)
      {
        v19 = 128;
      }

      else
      {
        if (v17)
        {
          v18 = 1.0 / v17;
          v19 = *(v15 + 24);
LABEL_57:
          v46 = 0.0;
          v47 = v17 - v19;
          v14.i32[0] = 1.0;
          if (v9)
          {
            v48 = *(v15 + 24);
          }

          else
          {
            v47 = 0;
            v48 = v19;
          }

          if (v9)
          {
            v46 = 1.0;
            v18 = -v18;
          }

          v49 = *(v15 + 40);
          if (v49)
          {
            v50 = v49 * v47;
            v51 = v49 * v48;
            if (v50 < v49 * v48)
            {
              v52 = 0;
              v53 = v15 + 72;
              do
              {
                v54 = v50;
                v55 = v46;
                do
                {
                  v55 = v18 + v55;
                  v14.i16[0] = *(v53 + 2 * v54);
                  v14 = vmovl_s16(v14).u64[0];
                  *v14.i32 = v55 * v14.i32[0];
                  *(v53 + 2 * v54) = *v14.i32;
                  v54 += v49;
                }

                while (v54 < v51);
                ++v52;
                v53 += 2;
              }

              while (v52 != v49);
            }
          }

          goto LABEL_25;
        }

        v19 = 0;
      }

      v18 = 0.0078125;
      goto LABEL_57;
    }
  }

LABEL_25:
  v20 = atomic_load((v1 + 280));
  if (v20)
  {
    v21 = v3[1];
    v22 = *(v21 + 24);
    v23 = *(v21 + 40);
    v24 = v23 * v22;
    if ((v23 * v22) >= 0x3C01)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/channel_send.cc", 876, "length <= AudioFrame::kMaxDataSizeBytes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v10, v11, v12, v13, v23 * v22);
LABEL_98:
      v67 = v22;
      v68 = v24;
      v66 = v23;
      v23 = v66;
      v22 = v67;
      v24 = v68;
      if (v65)
      {
        operator new[]();
      }

LABEL_34:
      v26 = v4[257];
      if (!v24)
      {
        goto LABEL_75;
      }

LABEL_37:
      if (*(v1 + 240) == 1 && *(v1 + 232) == v24)
      {
        v27 = (v23 * v22 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v27 < 3)
        {
LABEL_40:
          v28 = 0.0;
          v29 = v26;
          goto LABEL_70;
        }
      }

      else
      {
        *(v1 + 208) = 0;
        *(v1 + 216) = 0;
        *(v1 + 224) = 0;
        *(v1 + 232) = v24;
        *(v1 + 240) = 1;
        v27 = (v23 * v22 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v27 < 3)
        {
          goto LABEL_40;
        }
      }

      v30 = v27 + 1;
      if (v27 >= 0xF)
      {
        v31 = v30 & 0xFFFFFFFFFFFFFFF0;
        v32 = v26 + 1;
        v28 = 0.0;
        v33 = v30 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v34 = v32[-1];
          v35 = *v32;
          v36 = vmull_s16(*v34.i8, *v34.i8);
          v37 = vmull_s16(*v35.i8, *v35.i8);
          v38 = vcvtq_f32_u32(vmull_high_s16(v34, v34));
          v39 = vcvtq_f32_u32(v36);
          v40 = vcvtq_f32_u32(vmull_high_s16(v35, v35));
          v41 = vcvtq_f32_u32(v37);
          v28 = (((((((((((((((v28 + v39.f32[0]) + v39.f32[1]) + v39.f32[2]) + v39.f32[3]) + v38.f32[0]) + v38.f32[1]) + v38.f32[2]) + v38.f32[3]) + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3]) + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3];
          v32 += 2;
          v33 -= 16;
        }

        while (v33);
        if (v30 == v31)
        {
          goto LABEL_72;
        }

        if ((v30 & 0xC) == 0)
        {
          v29 = &v26->i16[v31];
LABEL_70:
          v56 = &v26->i16[v24];
          do
          {
            v57 = *v29++;
            v28 = v28 + (v57 * v57);
          }

          while (v29 != v56);
LABEL_72:
          *(v1 + 208) = v28 + *(v1 + 208);
          *(v1 + 216) += v24;
          if (*(v1 + 224) >= v28)
          {
            v28 = *(v1 + 224);
          }

          *(v1 + 224) = v28;
          goto LABEL_75;
        }
      }

      else
      {
        v31 = 0;
        v28 = 0.0;
      }

      v29 = &v26->i16[v30 & 0xFFFFFFFFFFFFFFFCLL];
      v42 = (v26 + 2 * v31);
      v43 = v31 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v44 = *v42++;
        v45 = vcvtq_f32_u32(vmull_s16(v44, v44));
        v28 = (((v28 + v45.f32[0]) + v45.f32[1]) + v45.f32[2]) + v45.f32[3];
        v43 += 4;
      }

      while (v43);
      if (v30 == (v30 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    if (v9 && *(v1 + 249) == 1)
    {
      if (*(v1 + 240) == 1 && *(v1 + 232) == v24)
      {
        v25 = *(v1 + 216);
      }

      else
      {
        v25 = 0;
        *(v1 + 208) = 0;
        *(v1 + 224) = 0;
        *(v1 + 232) = v24;
        *(v1 + 240) = 1;
      }

      *(v1 + 216) = v25 + v24;
      goto LABEL_75;
    }

    if (*(v21 + 15432) == 1)
    {
      v4 = &unk_280905000;
      {
        goto LABEL_34;
      }

      goto LABEL_98;
    }

    v26 = (v21 + 72);
    if (v24)
    {
      goto LABEL_37;
    }
  }

LABEL_75:
  *(v1 + 249) = v9;
  v58 = (*(**(v1 + 176) + 40))(*(v1 + 176), v3[1]);
  pthread_mutex_lock((v1 + 496));
  if ((v58 & 0x80000000) != 0)
  {
    *(v1 + 576) = 0;
    *(v1 + 560) = 0;
    if (*(v1 + 592) == 1)
    {
      *(v1 + 592) = 0;
    }
  }

  else
  {
    v59 = *(v1 + 560);
    if (v59 == 0x8000000000000000)
    {
      v60 = 0x8000000000000000;
    }

    else
    {
      v60 = v59 + 10000;
    }

    if (v59 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = v60;
    }

    *(v1 + 560) = v59;
    if (v58)
    {
      v61 = *(v1 + 568);
      if (v61 == 0x8000000000000000)
      {
        v62 = 0;
      }

      else
      {
        v62 = 8000000 * (v61 + v58);
      }

      if (v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v62 = -8000000;
      }

      v63 = v62 / v59;
      v64 = *(v1 + 576);
      if (v63 > v64)
      {
        v64 = v63;
      }

      if ((*(v1 + 592) & 1) == 0)
      {
        *(v1 + 592) = 1;
      }

      *(v1 + 584) = v64;
      *(v1 + 576) = v63;
      *(v1 + 560) = 0;
    }
  }

  return pthread_mutex_unlock((v1 + 496));
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::voe::anonymous namespace::ChannelSend::ProcessAndEncodeAudio(std::unique_ptr<webrtc::AudioFrame>)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  *(a2 + 1) = 0;
  if (result)
  {
    v5 = *(result + 64);
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

    JUMPOUT(0x2743DA540);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::voe::anonymous namespace::ChannelSend::StopSend(void)::$_0 &&>(void *a1)
{
  (*(**(*a1 + 176) + 24))(*(*a1 + 176));
  v2 = a1[1];
  pthread_mutex_lock(v2);
  *(v2 + 113) = 1;
  pthread_cond_broadcast((v2 + 64));

  return pthread_mutex_unlock(v2);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::voe::anonymous namespace::ChannelSend::SetFrameEncryptor(webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  a1[1] = 0;
  result = *(v1 + 288);
  *(v1 + 288) = v2;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::voe::anonymous namespace::ChannelSend::SetFrameEncryptor(webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::voe::anonymous namespace::ChannelSend::SetEncoderToPacketizerFrameTransformer(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  a1[1] = 0;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::voe::anonymous namespace::ChannelSend::SetEncoderToPacketizerFrameTransformer(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t webrtc::ChannelSendFrameTransformerDelegate::Transform(uint64_t a1, int a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10)
{
  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 120) != 1)
  {
    pthread_mutex_unlock((a1 + 8));
    operator new();
  }

  if (a6)
  {
    v17 = a5;
  }

  else
  {
    v17 = 0;
  }

  v27[0] = v17;
  v27[1] = a6;
  v26[0] = 0;
  v26[1] = 0;
  v25 = a10;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a7;
  v18 = *(a1 + 96);
  if (v18)
  {
    (*(*v18 + 48))(v18, &v24, &v23, &v22, v27, &v21, v26, &v25);
    return pthread_mutex_unlock((a1 + 8));
  }

  else
  {
    v20 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::ChannelSendFrameTransformerDelegate::OnTransformedFrame(v20);
  }
}

uint64_t webrtc::ChannelSendFrameTransformerDelegate::OnTransformedFrame(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 96))
  {
    (**a1)(a1);
    v4 = *(a1 + 112);
    v5 = *a2;
    *a2 = 0;
    v9[0] = a1;
    v9[1] = v5;
    v10 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ChannelSendFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>;
    v11 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ChannelSendFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0 &&>;
    (*(*v4 + 8))(v4, v9, &v8, &v7);
    v10(1, v9, v9);
  }

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t webrtc::ChannelSendFrameTransformerDelegate::StartShortCircuiting(webrtc::ChannelSendFrameTransformerDelegate *this)
{
  pthread_mutex_lock((this + 8));
  *(this + 120) = 1;

  return pthread_mutex_unlock((this + 8));
}

void webrtc::CloneSenderAudioFrame(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v2 = (*(*a1 + 152))(a1);
  v3 = (*(*a1 + 152))(a1);
  std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int const*,unsigned int const*>(v6, v2, (v3 + 4 * v4), (v3 + 4 * v4 - v2) >> 2);
  (*(*a1 + 176))(a1);
  (*(*a1 + 32))(a1);
  (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1);
  (*(*a1 + 16))(a1);
  (*(*a1 + 168))(a1);
  (*(*a1 + 56))(a1);
  (*(*a1 + 104))(__p, a1);
  (*(*a1 + 160))(a1);
  (*(*a1 + 184))(a1);
  operator new();
}

void webrtc::TransformableOutgoingAudioFrame::~TransformableOutgoingAudioFrame(void **this)
{
  *this = &unk_288291248;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this[9];
  if (v2)
  {
    this[10] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  this[5] = 0;
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }
}

{
  *this = &unk_288291248;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this[9];
  if (v2)
  {
    this[10] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  this[5] = 0;
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::TransformableOutgoingAudioFrame::GetData(webrtc::TransformableOutgoingAudioFrame *this)
{
  if (*(this + 3))
  {
    return *(this + 5);
  }

  else
  {
    return 0;
  }
}

void *webrtc::TransformableOutgoingAudioFrame::SetData(void *result, const void *a2, size_t __n)
{
  *(result + 3) = 0;
  if (__n)
  {
    v4 = result;
    if (*(result + 4) < __n)
    {
      operator new[]();
    }

    result = memcpy(*(result + 5), a2, __n);
    v4[3] = __n;
  }

  return result;
}

void webrtc::TransformableOutgoingAudioFrame::GetMimeType(webrtc::TransformableOutgoingAudioFrame *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 12), *(this + 13));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 6);
    a2->__r_.__value_.__r.__words[2] = *(this + 14);
  }
}

uint64_t webrtc::TransformableOutgoingAudioFrame::CaptureTime(webrtc::TransformableOutgoingAudioFrame *this)
{
  if (*(this + 56) == 1)
  {
    return 1000 * *(this + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::TransformableOutgoingAudioFrame::SetCaptureTime(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = 0;
    v4 = *(result + 56);
    if (!*(result + 56))
    {
      goto LABEL_9;
    }

LABEL_6:
    if (v4)
    {
      *(result + 56) = 0;
    }

    else
    {
      *(result + 48) = v3;
      *(result + 56) = 1;
    }

    return result;
  }

  if (a2 < 0)
  {
    if (-a2 % 0x3E8uLL <= 0x1F4)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    v3 = v5 - -a2 / 0x3E8uLL;
    v4 = *(result + 56);
    if (v4 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v3 = a2 / 0x3E8uLL;
  if (a2 % 0x3E8uLL > 0x1F3)
  {
    ++v3;
  }

  v4 = *(result + 56);
  if (v4 != 1)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v4)
  {
    *(result + 48) = v3;
  }

  return result;
}

uint64_t webrtc::TransformableOutgoingAudioFrame::GetContributingSources(webrtc::TransformableOutgoingAudioFrame *this)
{
  if (*(this + 10) == *(this + 9))
  {
    return 0;
  }

  else
  {
    return *(this + 9);
  }
}

uint64_t webrtc::TransformableOutgoingAudioFrame::Type(webrtc::TransformableOutgoingAudioFrame *this)
{
  v1 = *(this + 2);
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

uint64_t webrtc::TransformableOutgoingAudioFrame::SetAudioLevel(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x80) != 0)
  {
    v2 = 127;
  }

  else
  {
    v2 = a2;
  }

  if ((a2 & 0x100) == 0)
  {
    v2 = a2;
  }

  *(result + 124) = v2 | ((a2 >> 8) << 8);
  return result;
}

char *std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int const*,unsigned int const*>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v12 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 62))
      {
        operator new();
      }
    }

    goto LABEL_23;
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 2)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      v20 = result;
      memmove(result, __src, v19);
      result = v20;
    }

    a1[1] = &result[v19];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = v13;
    if (&__src[v14] != a3)
    {
      v16 = v13;
      v17 = v13;
      while (v17)
      {
        v18 = *v15;
        v15 += 4;
        *v17 = v18;
        v17 += 4;
        v16 += 4;
        if (v15 == a3)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_23:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_18:
    a1[1] = v16;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ChannelSendFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0 &&>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  a1[1] = 0;
  pthread_mutex_lock((v2 + 8));
  if (!*(v2 + 96))
  {
    result = pthread_mutex_unlock((v2 + 8));
    if (!v1)
    {
      return result;
    }

    goto LABEL_13;
  }

  v3 = (*(*v1 + 176))(v1);
  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 1;
  }

  v5 = (*(*v1 + 32))(v1);
  v6 = (*(*v1 + 64))(v1);
  v7 = (*(*v1 + 16))(v1);
  v9 = v8;
  (*(*v1 + 168))(v1);
  if (v10)
  {
    v11 = (*(*v1 + 168))(v1);
    if ((v12 & 1) == 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v15 = (*(*v1 + 152))(v1);
  v17 = v16;
  v18 = (*(*v1 + 184))(v1);
  v30[0] = v7;
  v30[1] = v9;
  v29[0] = v15;
  v29[1] = v17;
  v28 = v18;
  v27 = v4;
  v26 = v5;
  v25 = v6;
  v24 = v13;
  v19 = *(v2 + 96);
  if (!v19)
  {
LABEL_18:
    v21 = std::__throw_bad_function_call[abi:sn200100]();
    return absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ChannelSendFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>(v21, v22, v23);
  }

  (*(*v19 + 48))(v19, &v27, &v26, &v25, v30, &v24, v29, &v28);
  pthread_mutex_unlock((v2 + 8));
LABEL_13:
  v20 = *(*v1 + 8);

  return v20(v1);
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ChannelSendFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>(char a1, uint64_t *a2, _OWORD *a3)
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