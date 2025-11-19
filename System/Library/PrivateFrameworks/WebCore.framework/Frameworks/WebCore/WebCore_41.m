void webrtc::Port::CreateStunUsername(uint64_t a1@<X0>, std::string *a2@<X1>, size_t a3@<X2>, std::string *a4@<X8>)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_50:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  *(&v21.__r_.__value_.__s + 23) = a3;
  v6 = (&v21 + a3);
  if (&v21 <= a2 && v6 > a2)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    memmove(&v21, a2, a3);
  }

  v6->__r_.__value_.__s.__data_[0] = 0;
  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = 22;
  }

  else
  {
    v8 = (v21.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  if (v8 == size)
  {
    std::string::__grow_by_and_replace(&v21, v8, 1uLL, v8, v8, 0, 1uLL, ":");
  }

  else
  {
    v9 = &v21;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v21.__r_.__value_.__r.__words[0];
    }

    v10 = v9 + size;
    if (v9 + size <= ":" && v10 + 1 > ":")
    {
      goto LABEL_49;
    }

    *v10 = 58;
    v11 = size + 1;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      v21.__r_.__value_.__l.__size_ = v11;
    }

    else
    {
      *(&v21.__r_.__value_.__s + 23) = v11 & 0x7F;
    }

    v9->__r_.__value_.__s.__data_[v11] = 0;
  }

  v22 = v21;
  memset(&v21, 0, sizeof(v21));
  v12 = *(a1 + 647);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = *(a1 + 624);
    v12 = *(a1 + 632);
    v14 = v12 == 0;
    if (v13 || !v12)
    {
      goto LABEL_28;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v13 = (a1 + 624);
  v14 = v12 == 0;
LABEL_28:
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v22.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v22.__r_.__value_.__l.__size_;
  }

  if (v15 - v16 < v12)
  {
    std::string::__grow_by_and_replace(&v22, v15, v16 + v12 - v15, v16, v16, 0, v12, v13);
    goto LABEL_47;
  }

  if (!v14)
  {
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      v18 = v17 + v16;
      if (v17 + v16 > v13 || &v18[v12] <= v13)
      {
        v19 = v12;
        memmove(v18, v13, v12);
        v20 = v16 + v19;
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          v22.__r_.__value_.__l.__size_ = v16 + v19;
        }

        else
        {
          *(&v22.__r_.__value_.__s + 23) = v20 & 0x7F;
        }

        v17->__r_.__value_.__s.__data_[v20] = 0;
        goto LABEL_47;
      }
    }

    goto LABEL_49;
  }

LABEL_47:
  *a4 = v22;
  memset(&v22, 0, sizeof(v22));
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void webrtc::Port::SendBindingErrorResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a6;
  if (*(a2 + 32) == 1)
  {
    v7 = 273;
  }

  else
  {
    v7 = 784;
  }

  v8 = *(a2 + 63);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = *(a2 + 40);
    v8 = *(a2 + 48);
  }

  else
  {
    v9 = (a2 + 40);
  }

  webrtc::StunMessage::StunMessage(v10, v7, v9, v8);
  operator new();
}

double webrtc::Port::ToString@<D0>(webrtc::Port *this@<X0>, std::string *a2@<X8>)
{
  v100 = *MEMORY[0x277D85DE8];
  memset(&v98, 0, sizeof(v98));
  if (&v98 <= "Port[" && v98.__r_.__value_.__r.__words + 5 > "Port[")
  {
    goto LABEL_259;
  }

  qmemcpy(&v98, "Port[", 5);
  *(&v98.__r_.__value_.__s + 23) = 5;
  snprintf(__str, 0x32uLL, "%x", this);
  v4 = strlen(__str);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = v4;
  if (v4 > 0x16)
  {
    operator new();
  }

  v97 = v4;
  if (__p <= __str && __p + v4 > __str)
  {
    goto LABEL_259;
  }

  if (v4)
  {
    memcpy(__p, __str, v4);
  }

  *(__p + v6) = 0;
  v7 = (v97 & 0x80u) == 0 ? __p : __p[0];
  v8 = (v97 & 0x80u) == 0 ? v97 : __p[1];
  if (!v7 && v8)
  {
    goto LABEL_259;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v98.__r_.__value_.__l.__size_;
  }

  if (v9 - size >= v8)
  {
    if (v8)
    {
      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v98;
      }

      else
      {
        v11 = v98.__r_.__value_.__r.__words[0];
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_259;
      }

      v12 = v11 + size;
      if (v11 + size <= v7 && &v12[v8] > v7)
      {
        goto LABEL_259;
      }

      v13 = v8;
      memmove(v12, v7, v8);
      v14 = size + v13;
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        v98.__r_.__value_.__l.__size_ = size + v13;
      }

      else
      {
        *(&v98.__r_.__value_.__s + 23) = v14 & 0x7F;
      }

      v11->__r_.__value_.__s.__data_[v14] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v98, v9, size + v8 - v9, size, size, 0, v8, v7);
  }

  v15 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = 22;
  }

  else
  {
    v16 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v98.__r_.__value_.__l.__size_;
  }

  if (v16 == v15)
  {
    std::string::__grow_by_and_replace(&v98, v16, 1uLL, v16, v16, 0, 1uLL, ":");
    v17 = *(this + 615);
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_45:
      v18 = this + 592;
      v19 = v17 == 0;
      goto LABEL_54;
    }
  }

  else
  {
    v20 = &v98;
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v98.__r_.__value_.__r.__words[0];
    }

    v21 = v20 + v15;
    if (v20 + v15 <= ":" && v21 + 1 > ":")
    {
      goto LABEL_259;
    }

    *v21 = 58;
    v22 = v15 + 1;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      v98.__r_.__value_.__l.__size_ = v22;
      v20->__r_.__value_.__s.__data_[v22] = 0;
      v17 = *(this + 615);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      *(&v98.__r_.__value_.__s + 23) = v22 & 0x7F;
      v20->__r_.__value_.__s.__data_[v22] = 0;
      v17 = *(this + 615);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  v18 = *(this + 74);
  v17 = *(this + 75);
  v19 = v17 == 0;
  if (!v18 && v17)
  {
    goto LABEL_259;
  }

LABEL_54:
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = 22;
  }

  else
  {
    v23 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v98.__r_.__value_.__l.__size_;
  }

  if (v23 - v24 >= v17)
  {
    if (!v19)
    {
      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v98;
      }

      else
      {
        v25 = v98.__r_.__value_.__r.__words[0];
      }

      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_259;
      }

      v26 = v25 + v24;
      if (v25 + v24 <= v18 && &v26[v17] > v18)
      {
        goto LABEL_259;
      }

      v27 = v17;
      memmove(v26, v18, v17);
      v28 = v24 + v27;
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        v98.__r_.__value_.__l.__size_ = v24 + v27;
      }

      else
      {
        *(&v98.__r_.__value_.__s + 23) = v28 & 0x7F;
      }

      v25->__r_.__value_.__s.__data_[v28] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v98, v23, v24 + v17 - v23, v24, v24, 0, v17, v18);
  }

  v29 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = 22;
  }

  else
  {
    v30 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v98.__r_.__value_.__l.__size_;
  }

  if (v30 == v29)
  {
    std::string::__grow_by_and_replace(&v98, v30, 1uLL, v30, v30, 0, 1uLL, ":");
  }

  else
  {
    v31 = &v98;
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v98.__r_.__value_.__r.__words[0];
    }

    v32 = v31 + v29;
    if (v31 + v29 <= ":" && v32 + 1 > ":")
    {
      goto LABEL_259;
    }

    *v32 = 58;
    v33 = v29 + 1;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      v98.__r_.__value_.__l.__size_ = v33;
    }

    else
    {
      *(&v98.__r_.__value_.__s + 23) = v33 & 0x7F;
    }

    v31->__r_.__value_.__s.__data_[v33] = 0;
  }

  v34 = *(this + 154);
  __str[0].__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&__str[0].__r_.__value_.__l.__data_ = 0uLL;
  v35 = absl::numbers_internal::FastIntToBuffer(v34, __str, v5);
  v37 = v35 - __str;
  if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__str[0].__r_.__value_.__l.__size_ < v37)
    {
      goto LABEL_260;
    }

    __str[0].__r_.__value_.__l.__size_ = v35 - __str;
    *(__str[0].__r_.__value_.__r.__words[0] + v37) = 0;
    v38 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (v37 > SHIBYTE(__str[0].__r_.__value_.__r.__words[2]))
    {
      goto LABEL_260;
    }

    *(&__str[0].__r_.__value_.__s + 23) = v35 - __str;
    *v35 = 0;
    v38 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_93:
      v39 = v38 == 0;
      v40 = __str;
      goto LABEL_98;
    }
  }

  v38 = __str[0].__r_.__value_.__l.__size_;
  v40 = __str[0].__r_.__value_.__r.__words[0];
  v39 = __str[0].__r_.__value_.__l.__size_ == 0;
  if (!__str[0].__r_.__value_.__r.__words[0] && __str[0].__r_.__value_.__l.__size_)
  {
    goto LABEL_259;
  }

LABEL_98:
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = 22;
  }

  else
  {
    v41 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v98.__r_.__value_.__l.__size_;
  }

  if (v41 - v42 < v38)
  {
    std::string::__grow_by_and_replace(&v98, v41, v42 + v38 - v41, v42, v42, 0, v38, v40);
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_106;
  }

  if (v39)
  {
LABEL_116:
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_106:
    operator delete(__str[0].__r_.__value_.__l.__data_);
    goto LABEL_117;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v98;
  }

  else
  {
    v43 = v98.__r_.__value_.__r.__words[0];
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_259;
  }

  v44 = v43 + v42;
  if ((v43 + v42) <= v40 && &v44[v38] > v40)
  {
    goto LABEL_259;
  }

  v45 = v38;
  memmove(v44, v40, v38);
  v46 = v42 + v45;
  if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v98.__r_.__value_.__s + 23) = v46 & 0x7F;
    v43->__r_.__value_.__s.__data_[v46] = 0;
    goto LABEL_116;
  }

  v98.__r_.__value_.__l.__size_ = v42 + v45;
  v43->__r_.__value_.__s.__data_[v46] = 0;
  if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_106;
  }

LABEL_117:
  v47 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = 22;
  }

  else
  {
    v48 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v47 = v98.__r_.__value_.__l.__size_;
  }

  if (v48 == v47)
  {
    std::string::__grow_by_and_replace(&v98, v48, 1uLL, v48, v48, 0, 1uLL, ":");
  }

  else
  {
    v49 = &v98;
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v49 = v98.__r_.__value_.__r.__words[0];
    }

    v50 = v49 + v47;
    if (v49 + v47 <= ":" && v50 + 1 > ":")
    {
      goto LABEL_259;
    }

    *v50 = 58;
    v51 = v47 + 1;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      v98.__r_.__value_.__l.__size_ = v51;
    }

    else
    {
      *(&v98.__r_.__value_.__s + 23) = v51 & 0x7F;
    }

    v49->__r_.__value_.__s.__data_[v51] = 0;
  }

  v52 = *(this + 155);
  __str[0].__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&__str[0].__r_.__value_.__l.__data_ = 0uLL;
  v53 = absl::numbers_internal::FastIntToBuffer(v52, __str, v36);
  v54 = v53 - __str;
  if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__str[0].__r_.__value_.__l.__size_ < v54)
    {
      goto LABEL_260;
    }

    __str[0].__r_.__value_.__l.__size_ = v53 - __str;
    *(__str[0].__r_.__value_.__r.__words[0] + v54) = 0;
    v55 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_135;
    }
  }

  else
  {
    if (v54 > SHIBYTE(__str[0].__r_.__value_.__r.__words[2]))
    {
      goto LABEL_260;
    }

    *(&__str[0].__r_.__value_.__s + 23) = v53 - __str;
    *v53 = 0;
    v55 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_135:
      v56 = v55 == 0;
      v57 = __str;
      goto LABEL_140;
    }
  }

  v55 = __str[0].__r_.__value_.__l.__size_;
  v57 = __str[0].__r_.__value_.__r.__words[0];
  v56 = __str[0].__r_.__value_.__l.__size_ == 0;
  if (!__str[0].__r_.__value_.__r.__words[0] && __str[0].__r_.__value_.__l.__size_)
  {
    goto LABEL_259;
  }

LABEL_140:
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = 22;
  }

  else
  {
    v58 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = v98.__r_.__value_.__l.__size_;
  }

  if (v58 - v59 < v55)
  {
    std::string::__grow_by_and_replace(&v98, v58, v59 + v55 - v58, v59, v59, 0, v55, v57);
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_148;
  }

  if (v56)
  {
LABEL_158:
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

LABEL_148:
    operator delete(__str[0].__r_.__value_.__l.__data_);
    goto LABEL_159;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = &v98;
  }

  else
  {
    v60 = v98.__r_.__value_.__r.__words[0];
  }

  if ((v55 & 0x8000000000000000) != 0)
  {
    goto LABEL_259;
  }

  v61 = v60 + v59;
  if ((v60 + v59) <= v57 && &v61[v55] > v57)
  {
    goto LABEL_259;
  }

  v62 = v55;
  memmove(v61, v57, v55);
  v63 = v59 + v62;
  if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v98.__r_.__value_.__s + 23) = v63 & 0x7F;
    v60->__r_.__value_.__s.__data_[v63] = 0;
    goto LABEL_158;
  }

  v98.__r_.__value_.__l.__size_ = v59 + v62;
  v60->__r_.__value_.__s.__data_[v63] = 0;
  if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_148;
  }

LABEL_159:
  v64 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = 22;
  }

  else
  {
    v65 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v64 = v98.__r_.__value_.__l.__size_;
  }

  if (v65 == v64)
  {
    std::string::__grow_by_and_replace(&v98, v65, 1uLL, v65, v65, 0, 1uLL, ":");
    v66 = *(this + 142) - 1;
    if (v66 <= 2)
    {
LABEL_166:
      v67 = off_279E94550[v66];
      v68 = 5;
      goto LABEL_174;
    }
  }

  else
  {
    v69 = &v98;
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v69 = v98.__r_.__value_.__r.__words[0];
    }

    v70 = v69 + v64;
    if (v69 + v64 <= ":" && v70 + 1 > ":")
    {
      goto LABEL_259;
    }

    *v70 = 58;
    v71 = v64 + 1;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      v98.__r_.__value_.__l.__size_ = v71;
      v69->__r_.__value_.__s.__data_[v71] = 0;
      v66 = *(this + 142) - 1;
      if (v66 <= 2)
      {
        goto LABEL_166;
      }
    }

    else
    {
      *(&v98.__r_.__value_.__s + 23) = v71 & 0x7F;
      v69->__r_.__value_.__s.__data_[v71] = 0;
      v66 = *(this + 142) - 1;
      if (v66 <= 2)
      {
        goto LABEL_166;
      }
    }
  }

  v67 = "host";
  v68 = 4;
LABEL_174:
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = 22;
  }

  else
  {
    v72 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v73 = v98.__r_.__value_.__l.__size_;
  }

  if (v72 - v73 >= v68)
  {
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v98;
    }

    else
    {
      v74 = v98.__r_.__value_.__r.__words[0];
    }

    v75 = v74 + v73;
    if (v74 + v73 <= v67 && &v75[v68] > v67)
    {
      goto LABEL_259;
    }

    memcpy(v75, v67, v68);
    v76 = v73 + v68;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      v98.__r_.__value_.__l.__size_ = v73 + v68;
    }

    else
    {
      *(&v98.__r_.__value_.__s + 23) = v76 & 0x7F;
    }

    v74->__r_.__value_.__s.__data_[v76] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v98, v72, v73 + v68 - v72, v73, v73, 0, v68, v67);
  }

  v77 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = 22;
  }

  else
  {
    v78 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v77 = v98.__r_.__value_.__l.__size_;
  }

  if (v78 == v77)
  {
    std::string::__grow_by_and_replace(&v98, v78, 1uLL, v78, v78, 0, 1uLL, ":");
  }

  else
  {
    v79 = &v98;
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v79 = v98.__r_.__value_.__r.__words[0];
    }

    v80 = v79 + v77;
    if (v79 + v77 <= ":" && v80 + 1 > ":")
    {
      goto LABEL_259;
    }

    *v80 = 58;
    v81 = v77 + 1;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      v98.__r_.__value_.__l.__size_ = v81;
    }

    else
    {
      *(&v98.__r_.__value_.__s + 23) = v81 & 0x7F;
    }

    v79->__r_.__value_.__s.__data_[v81] = 0;
  }

  webrtc::Network::ToString(*(this + 72), __str);
  if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = __str;
  }

  else
  {
    v82 = __str[0].__r_.__value_.__r.__words[0];
  }

  if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v83 = __str[0].__r_.__value_.__l.__size_;
  }

  if (!v82 && v83)
  {
LABEL_259:
    __break(1u);
LABEL_260:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = 22;
  }

  else
  {
    v84 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = v98.__r_.__value_.__l.__size_;
  }

  if (v84 - v85 < v83)
  {
    std::string::__grow_by_and_replace(&v98, v84, v85 + v83 - v84, v85, v85, 0, v83, v82);
    goto LABEL_235;
  }

  if (v83)
  {
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = &v98;
    }

    else
    {
      v86 = v98.__r_.__value_.__r.__words[0];
    }

    if ((v83 & 0x8000000000000000) == 0)
    {
      v87 = v86 + v85;
      if ((v86 + v85) > v82 || &v87[v83] <= v82)
      {
        v88 = v83;
        memmove(v87, v82, v83);
        v89 = v85 + v88;
        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          v98.__r_.__value_.__l.__size_ = v85 + v88;
        }

        else
        {
          *(&v98.__r_.__value_.__s + 23) = v89 & 0x7F;
        }

        v86->__r_.__value_.__s.__data_[v89] = 0;
        goto LABEL_235;
      }
    }

    goto LABEL_259;
  }

LABEL_235:
  v90 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = 22;
  }

  else
  {
    v91 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v90 = v98.__r_.__value_.__l.__size_;
  }

  if (v91 == v90)
  {
    std::string::__grow_by_and_replace(&v98, v91, 1uLL, v91, v91, 0, 1uLL, "]");
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_242;
  }

  v93 = &v98;
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v93 = v98.__r_.__value_.__r.__words[0];
  }

  v94 = v93 + v90;
  if (v93 + v90 <= "]" && v94 + 1 > "]")
  {
    goto LABEL_259;
  }

  *v94 = 93;
  v95 = v90 + 1;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    v98.__r_.__value_.__l.__size_ = v95;
    v93->__r_.__value_.__s.__data_[v95] = 0;
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_242;
    }
  }

  else
  {
    *(&v98.__r_.__value_.__s + 23) = v95 & 0x7F;
    v93->__r_.__value_.__s.__data_[v95] = 0;
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_242:
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }
  }

LABEL_243:
  if (v97 < 0)
  {
    operator delete(__p[0]);
  }

  result = *&v98.__r_.__value_.__l.__data_;
  *a2 = v98;
  return result;
}

void webrtc::Port::UpdateNetworkCost(webrtc::Port *this)
{
  Cost = webrtc::Network::GetCost(*(this + 72), *(this + 65));
  if (*(this + 373) == Cost)
  {
    return;
  }

  v3 = Cost;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v27[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/port.cc";
    v27[1] = 6921;
    v27[2] = &v26;
    v27[3] = "Network cost changed from ";
    v27[4] = v27;
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/port.cc");
  }

  *(this + 373) = v3;
  v11 = *(this + 84);
  v12 = *(this + 85);
  if (v11 != v12)
  {
    v13 = v12 - v11 - 432;
    if (v13 <= 0x1AF)
    {
      v14 = *(this + 84);
      do
      {
LABEL_10:
        *(v14 + 402) = v3;
        v14 += 432;
      }

      while (v14 != v12);
      goto LABEL_11;
    }

    v15 = v13 / 0x1B0 + 1;
    v14 = v11 + 432 * (v15 & 0x1FFFFFFFFFFFFFELL);
    v16 = v15 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *(v11 + 402) = v3;
      *(v11 + 834) = v3;
      v11 += 864;
      v16 -= 2;
    }

    while (v16);
    if (v15 != (v15 & 0x1FFFFFFFFFFFFFELL))
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v17 = *(this + 87);
  if (v17 != (this + 704))
  {
    do
    {
      v18 = *(v17 + 13);
      v19 = *(this + 373);
      if (*(v18 + 666) != v19)
      {
        *(v18 + 666) = v19;
        v23 = *(v18 + 32);
        for (*(v18 + 48) = v23; v23 != v18 + 24; v23 = *(v18 + 48))
        {
          v25 = *(v23 + 16);
          v24 = v23 + 16;
          *(v18 + 48) = *(v24 - 8);
          v25(v24, v18);
        }
      }

      v20 = *(v17 + 1);
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
          v21 = *(v17 + 2);
          v22 = *v21 == v17;
          v17 = v21;
        }

        while (!v22);
      }

      v17 = v21;
    }

    while (v21 != (this + 704));
  }
}

uint64_t webrtc::Port::DestroyConnectionInternal(webrtc::Port *this, webrtc::Connection *a2, int a3)
{
  result = (*(*a2 + 24))(a2);
  v7 = *(this + 88);
  if (v7)
  {
    v8 = result;
    v9 = (this + 704);
    do
    {
      result = webrtc::SocketAddress::operator<(v7 + 4, (v8 + 80));
      if (result)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if (!result)
      {
        v9 = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
    if (v9 != (this + 704))
    {
      result = webrtc::SocketAddress::operator<((v8 + 80), v9 + 4);
      if ((result & 1) == 0)
      {
        v11 = v9[1];
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
          v13 = v9;
          do
          {
            v12 = v13[2];
            v14 = *v12 == v13;
            v13 = v12;
          }

          while (!v14);
        }

        if (*(this + 87) == v9)
        {
          *(this + 87) = v12;
        }

        --*(this + 89);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(this + 88), v9);
        if (*(v9 + 55) < 0)
        {
          operator delete(v9[4]);
        }

        operator delete(v9);
        (*(*this + 352))(this, a2);
        if (!*(this + 89))
        {
          if (webrtc::g_clock)
          {
            v16 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
          }

          else
          {
            if (!dword_28100D8E4)
            {
              mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
            }

            v16 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
          }

          *(this + 94) = v16 / 1000000;
          webrtc::Port::PostDestroyIfDead(this);
        }

        webrtc::Connection::Shutdown(a2);
        if (a3)
        {
          v15 = *(this + 69);
          v20[0] = a2;
          v21 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::Port::DestroyConnectionInternal(webrtc::Connection *,BOOL)::$_0>;
          v22 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::Port::DestroyConnectionInternal(webrtc::Connection *,BOOL)::$_0 &&>;
          (*(*v15 + 8))(v15, v20, &v19, &v18);
          return v21(1, v20, v20);
        }

        else
        {
          v17 = *(*a2 + 8);

          return v17(a2);
        }
      }
    }
  }

  return result;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::Port,webrtc::Network const*>(void *a1)
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

uint64_t std::__function::__func<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0,std::allocator<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0>,void ()(webrtc::IPAddress const&,std::string_view)>::~__func(uint64_t a1)
{
  *a1 = &unk_288299BE0;
  webrtc::Candidate::~Candidate((a1 + 24));
  v2 = *(a1 + 8);
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void std::__function::__func<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0,std::allocator<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0>,void ()(webrtc::IPAddress const&,std::string_view)>::~__func(uint64_t a1)
{
  *a1 = &unk_288299BE0;
  webrtc::Candidate::~Candidate((a1 + 24));
  v2 = *(a1 + 8);
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

std::string *std::__function::__func<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0,std::allocator<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0>,void ()(webrtc::IPAddress const&,std::string_view)>::__clone(std::string *a1, uint64_t a2)
{
  size = a1->__r_.__value_.__l.__size_;
  *a2 = &unk_288299BE0;
  *(a2 + 8) = size;
  if (size)
  {
    atomic_fetch_add_explicit((size + 4), 1u, memory_order_relaxed);
  }

  *(a2 + 16) = *(&a1->__r_.__value_.__l + 2);
  result = webrtc::Candidate::Candidate((a2 + 24), a1 + 1);
  *(a2 + 456) = a1[19].__r_.__value_.__s.__data_[0];
  *(a2 + 457) = 0;
  *(a2 + 460) = 0;
  return result;
}

uint64_t std::__function::__func<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0,std::allocator<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0>,void ()(webrtc::IPAddress const&,std::string_view)>::destroy(uint64_t a1)
{
  webrtc::Candidate::~Candidate((a1 + 24));
  result = *(a1 + 8);
  if (result && atomic_fetch_add((result + 4), 0xFFFFFFFF) == 1)
  {

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void std::__function::__func<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0,std::allocator<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0>,void ()(webrtc::IPAddress const&,std::string_view)>::destroy_deallocate(uint64_t a1)
{
  webrtc::Candidate::~Candidate((a1 + 24));
  v2 = *(a1 + 8);
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  operator delete(a1);
}

void std::__function::__func<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0,std::allocator<webrtc::Port::MaybeObfuscateAddress(webrtc::Candidate const&,BOOL)::$_0>,void ()(webrtc::IPAddress const&,std::string_view)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = (a1 + 104);
  v8 = *(a1 + 160);
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  memset(v35, 0, sizeof(v35));
  v34 = &unk_28828CE50;
  webrtc::SocketAddress::SetIP(v32, v5, v6);
  v36 = v8;
  *v35 = *(a2 + 8);
  *&v35[4] = *(a2 + 12);
  v37 = 0;
  if (v7 != v32)
  {
    if (*(a1 + 127) < 0)
    {
      if (v33 >= 0)
      {
        v9 = v32;
      }

      else
      {
        v9 = v32[0];
      }

      if (v33 >= 0)
      {
        v10 = HIBYTE(v33);
      }

      else
      {
        v10 = v32[1];
      }

      std::string::__assign_no_alias<false>(v7, v9, v10);
    }

    else if (v33 < 0)
    {
      std::string::__assign_no_alias<true>(v7, v32[0], v32[1]);
    }

    else
    {
      *&v7->__r_.__value_.__l.__data_ = *v32;
      v7->__r_.__value_.__r.__words[2] = v33;
    }
  }

  *(a1 + 136) = *v35;
  *(a1 + 140) = *&v35[4];
  *(a1 + 160) = v36;
  *(a1 + 168) = v38;
  *(a1 + 164) = v37;
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  v26 = &unk_28828CE50;
  v31 = 0;
  memset(v39, 0, sizeof(v39));
  v27 = 0;
  v28 = *&v39[4];
  v29 = 0;
  v11 = (a1 + 304);
  v30 = 0;
  if ((a1 + 304) == __p)
  {
    goto LABEL_16;
  }

  if ((*(a1 + 327) & 0x80000000) == 0)
  {
    v11->__r_.__value_.__r.__words[0] = 0;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
LABEL_16:
    *(a1 + 336) = 0;
    *(a1 + 340) = v28;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
    *(a1 + 364) = 0;
    goto LABEL_17;
  }

  std::string::__assign_no_alias<false>(v11, __p, 0);
  v18 = v29;
  v19 = v31;
  v20 = v30;
  v21 = SHIBYTE(v25);
  *(a1 + 336) = v27;
  *(a1 + 340) = v28;
  *(a1 + 360) = v18;
  *(a1 + 368) = v19;
  *(a1 + 364) = v20;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_17:
  v12 = *(a1 + 8);
  if (v12)
  {
    if (*v12 == 1)
    {
      v13 = *(a1 + 16);
      if (v13)
      {
        *(v13 + 760) = 2;
        v14 = *(a1 + 16);
        v15 = *(a1 + 456);
        v16 = v14[85];
        if (v16 >= v14[86])
        {
          std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>(v14 + 84);
        }

        if (!v16)
        {
          __break(1u);
          return;
        }

        v14[85] = webrtc::Candidate::Candidate(v16, (a1 + 24)) + 18;
        v17 = v14[39];
        for (v14[41] = v17; v17 != v14 + 38; v17 = v14[41])
        {
          v23 = v17[2];
          v22 = v17 + 2;
          v14[41] = *(v22 - 1);
          v23(v22, v14, a1 + 24);
        }

        (*(*v14 + 344))(v14, v15);
      }
    }
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::Port::PostDestroyIfDead(BOOL)::$_0 &&>(uint64_t result)
{
  v1 = **result;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = *(*result + 8);
      if (v2)
      {
        if ((*(v2 + 748) | 2) == 2 && !*(v2 + 712))
        {
          if (webrtc::g_clock)
          {
            result = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
          }

          else
          {
            if (!dword_28100D8E4)
            {
              mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
            }

            result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
          }

          if (result / 1000000 - *(v2 + 752) >= *(v2 + 720))
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              (*(*v2 + 176))(&__p, v2);
              webrtc::webrtc_logging_impl::Log("\r\n\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/port.cc");
              if (v24 < 0)
              {
                operator delete(__p);
              }
            }

            if (*(v2 + 792) == 1)
            {
              webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v3, v4, v5, v6, v22);
              return absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::Port::PostDestroyIfDead(BOOL)::$_0>(v19, v20, v21);
            }

            else
            {
              v14 = (v2 + 792);
              *(v2 + 792) = 1;
              v15 = *(v2 + 768);
              v16 = *(v2 + 776);
              if (v15 == v16)
              {
                *v14 = 0;
              }

              else
              {
                v17 = 0;
                do
                {
                  (*(v15 + 40))(v15 + 8, v2);
                  v18 = *v15;
                  v15 += 56;
                  v17 |= v18 == v14;
                }

                while (v15 != v16);
                *v14 = 0;
                if (v17)
                {
                  webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v2 + 768), (v2 + 792));
                }
              }

              return (*(*v2 + 8))(v2);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::Port::PostDestroyIfDead(BOOL)::$_0>(char a1, uint64_t **a2, uint64_t **a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v6 = *result;
      if (*result && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540](v6, 0x1000C404A09149ALL);
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

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::PortInterface *)>::CallVoidPtr<std::function<void ()(webrtc::PortInterface *)>>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  v3 = *(v2 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v5);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:sn200100]();
    webrtc::UntypedFunction::PrepareArgs<void ()(webrtc::PortInterface *),std::function<void ()(webrtc::PortInterface *)> &,std::function<void ()(webrtc::PortInterface *)>,(void *)0>(std::function<void ()(webrtc::PortInterface *)> &)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(v4);
  }
}

void webrtc::UntypedFunction::PrepareArgs<void ()(webrtc::PortInterface *),std::function<void ()(webrtc::PortInterface *)> &,std::function<void ()(webrtc::PortInterface *)>,(void *)0>(std::function<void ()(webrtc::PortInterface *)> &)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::Port::DestroyConnectionInternal(webrtc::Connection *,BOOL)::$_0>(char a1, uint64_t *a2, uint64_t *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *a2 = 0;
    *a3 = v3;
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_BYTE *webrtc::RelayServerConfig::RelayServerConfig(uint64_t a1, uint64_t a2, _BYTE *a3, size_t a4, _BYTE *__src, size_t __len, int a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = webrtc::RelayCredentials::RelayCredentials((a1 + 24), a3, a4, __src, __len);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  __p[0] = 0;
  __p[1] = 0;
  memset(v16, 0, sizeof(v16));
  v14 = 0;
  v15 = &unk_28828CE50;
  if (__p != a2)
  {
    if (*(a2 + 23) < 0)
    {
      result = std::string::__assign_no_alias<true>(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v14 = *(a2 + 16);
    }
  }

  *v16 = *(a2 + 32);
  *&v16[4] = *(a2 + 36);
  v17 = *(a2 + 56);
  v19 = *(a2 + 64);
  v18 = *(a2 + 60);
  v20 = a7;
  v11 = *(a1 + 8);
  if (v11 >= *(a1 + 16))
  {
    std::vector<webrtc::ProtocolAddress>::__emplace_back_slow_path<webrtc::ProtocolAddress>(a1);
  }

  if (v11)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = &unk_28828CE50;
    *(v11 + 48) = 0;
    if (v11 != __p)
    {
      if (SHIBYTE(v14) < 0)
      {
        std::string::__assign_no_alias<true>(v11, __p[0], __p[1]);
      }

      else
      {
        v12 = *__p;
        *(v11 + 16) = v14;
        *v11 = v12;
      }
    }

    *(v11 + 32) = *v16;
    *(v11 + 36) = *&v16[4];
    *(v11 + 56) = v17;
    *(v11 + 64) = v19;
    *(v11 + 60) = v18;
    *(v11 + 72) = v20;
    *(a1 + 8) = v11 + 80;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

webrtc::RelayServerConfig *webrtc::RelayServerConfig::RelayServerConfig(webrtc::RelayServerConfig *this, const webrtc::RelayServerConfig *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - *a2) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v5;
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_6:
      v6 = *(a2 + 3);
      *(this + 8) = *(a2 + 8);
      *(this + 3) = v6;
      goto LABEL_9;
    }
  }

  std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
LABEL_9:
  *(this + 18) = *(a2 + 18);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  v7 = *(a2 + 10);
  v8 = *(a2 + 11);
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    goto LABEL_19;
  }

  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v9 = *(a2 + 13);
  v10 = *(a2 + 14);
  if (v10 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 16) = *(a2 + 16);
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v11 = *(a2 + 136);
    *(this + 19) = *(a2 + 19);
    *(this + 136) = v11;
  }

  return this;
}

void webrtc::RelayServerConfig::~RelayServerConfig(void **this)
{
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  v2 = this[13];
  if (v2)
  {
    v3 = this[14];
    v4 = this[13];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = this[13];
    }

    this[14] = v2;
    operator delete(v4);
  }

  v6 = this[10];
  if (v6)
  {
    v7 = this[11];
    v8 = this[10];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = this[10];
    }

    this[11] = v6;
    operator delete(v8);
  }

  if ((*(this + 71) & 0x80000000) == 0)
  {
    if ((*(this + 47) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(this[3]);
    v10 = *this;
    if (!*this)
    {
      return;
    }

    goto LABEL_25;
  }

  operator delete(this[6]);
  if (*(this + 47) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v10 = *this;
  if (!*this)
  {
    return;
  }

LABEL_25:
  v11 = this[1];
  v12 = v10;
  if (v11 != v10)
  {
    do
    {
      v13 = *(v11 - 57);
      v11 -= 10;
      if (v13 < 0)
      {
        operator delete(*v11);
      }
    }

    while (v11 != v10);
    v12 = *this;
  }

  this[1] = v10;
  operator delete(v12);
}

uint64_t webrtc::PortAllocatorSession::PortAllocatorSession(uint64_t a1, _BYTE *a2, size_t a3, int a4, _BYTE *__src, size_t __len, _BYTE *a7, size_t a8, unsigned int a9)
{
  *(a1 + 8) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(a1 + 16) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(a1 + 40) = 0;
  *(a1 + 24) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_288299C28;
  *(a1 + 48) = 0;
  *(a1 + 56) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 64) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 72;
  *(a1 + 104) = 0;
  *(a1 + 112) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 120) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 128) = a1 + 128;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 128;
  *(a1 + 160) = 0;
  *(a1 + 168) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 176) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 184;
  *(a1 + 216) = 0;
  *(a1 + 224) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 232) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 240) = a1 + 240;
  *(a1 + 248) = a1 + 240;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 240;
  *(a1 + 272) = 0;
  *(a1 + 280) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 288) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 296) = a1 + 296;
  *(a1 + 304) = a1 + 296;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 296;
  *(a1 + 328) = 0;
  *(a1 + 336) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 344) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 352) = a1 + 352;
  *(a1 + 360) = a1 + 352;
  *(a1 + 368) = 0;
  *(a1 + 376) = a1 + 352;
  *(a1 + 384) = 0;
  *(a1 + 392) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 400) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 408) = a1 + 408;
  *(a1 + 416) = a1 + 408;
  *(a1 + 424) = 0;
  *(a1 + 432) = a1 + 408;
  *(a1 + 440) = 0;
  *(a1 + 448) = a9;
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_27;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v15 = (a1 + 456);
  *(a1 + 479) = a3;
  v16 = (a1 + 456 + a3);
  if (a1 + 456 <= a2 && v16 > a2)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    memmove(v15, a2, a3);
  }

  *v16 = 0;
  *(a1 + 480) = a4;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_27;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(a1 + 511) = __len;
  v17 = (a1 + 488 + __len);
  if (a1 + 488 <= __src && v17 > __src)
  {
    goto LABEL_26;
  }

  if (__len)
  {
    memmove((a1 + 488), __src, __len);
  }

  *v17 = 0;
  if (a8 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_27:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a8 > 0x16)
  {
    operator new();
  }

  *(a1 + 535) = a8;
  v18 = (a1 + 512 + a8);
  if (a1 + 512 <= a7 && v18 > a7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a8)
  {
    memmove((a1 + 512), a7, a8);
  }

  *v18 = 0;
  *(a1 + 536) = 0;
  return a1;
}

void webrtc::PortAllocatorSession::~PortAllocatorSession(void **this)
{
  *this = &unk_288299C28;
  if ((*(this + 535) & 0x80000000) == 0)
  {
    if ((*(this + 511) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(this[61]);
    if ((*(this + 479) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  operator delete(this[64]);
  if (*(this + 511) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(this + 479) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  operator delete(this[57]);
LABEL_9:
  while (1)
  {
    v6 = this[53];
    if (!v6)
    {
      break;
    }

    v2 = this[52];
    v3 = v2[3];
    v5 = *v2;
    v4 = v2[1];
    *(v5 + 8) = v4;
    *v4 = v5;
    this[53] = v6 - 1;
    operator delete(v2);
    (*(v3 + 16))(v3, this + 392);
  }

  this[54] = this + 51;
  for (i = this[46]; i; i = this[46])
  {
    v8 = this[45];
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    *(v11 + 8) = v10;
    *v10 = v11;
    this[46] = i - 1;
    operator delete(v8);
    (*(v9 + 16))(v9, this + 336);
  }

  this[47] = this + 44;
  for (j = this[39]; j; j = this[39])
  {
    v13 = this[38];
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v16 + 8) = v15;
    *v15 = v16;
    this[39] = j - 1;
    operator delete(v13);
    (*(v14 + 16))(v14, this + 280);
  }

  this[40] = this + 37;
  for (k = this[32]; k; k = this[32])
  {
    v18 = this[31];
    v19 = v18[3];
    v21 = *v18;
    v20 = v18[1];
    *(v21 + 8) = v20;
    *v20 = v21;
    this[32] = k - 1;
    operator delete(v18);
    (*(v19 + 16))(v19, this + 224);
  }

  this[33] = this + 30;
  for (m = this[25]; m; m = this[25])
  {
    v23 = this[24];
    v24 = v23[3];
    v26 = *v23;
    v25 = v23[1];
    *(v26 + 8) = v25;
    *v25 = v26;
    this[25] = m - 1;
    operator delete(v23);
    (*(v24 + 16))(v24, this + 168);
  }

  this[26] = this + 23;
  for (n = this[18]; n; n = this[18])
  {
    v28 = this[17];
    v29 = v28[3];
    v31 = *v28;
    v30 = v28[1];
    *(v31 + 8) = v30;
    *v30 = v31;
    this[18] = n - 1;
    operator delete(v28);
    (*(v29 + 16))(v29, this + 112);
  }

  this[19] = this + 16;
  for (ii = this[11]; ii; ii = this[11])
  {
    v33 = this[10];
    v34 = v33[3];
    v36 = *v33;
    v35 = v33[1];
    *(v36 + 8) = v35;
    *v35 = v36;
    this[11] = ii - 1;
    operator delete(v33);
    (*(v34 + 16))(v34, this + 56);
  }

  this[12] = this + 9;
  *this = &unk_28828CEE0;
  (this[3])(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy((this + 4), this[5]);
}

webrtc::PortAllocator *webrtc::PortAllocator::PortAllocator(webrtc::PortAllocator *this)
{
  *(this + 1) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(this + 2) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(this + 5) = 0;
  *(this + 3) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(this + 4) = this + 40;
  *this = &unk_288299CD0;
  *(this + 6) = 0;
  *(this + 7) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 8) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 9) = this + 72;
  *(this + 10) = this + 72;
  *(this + 11) = 0;
  *(this + 12) = this + 72;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 116) = xmmword_273BA1290;
  *(this + 33) = 1000;
  *(this + 136) = 1;
  *(this + 35) = 7;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 43) = 0;
  *(this + 23) = 0;
  *(this + 22) = this + 184;
  *(this + 33) = 0;
  *(this + 272) = 0;
  *(this + 276) = 0;
  *(this + 280) = 0;
  *(this + 56) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 29) = 0;
  RandomId = webrtc::CreateRandomId(this);
  *(this + 36) = webrtc::CreateRandomId(RandomId) | (RandomId << 32);
  return this;
}

void webrtc::PortAllocator::~PortAllocator(webrtc::PortAllocator *this)
{
  *this = &unk_288299CD0;
  v2 = *(this + 29);
  if (v2)
  {
    v3 = *(this + 30);
    v4 = *(this + 29);
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
      v4 = *(this + 29);
    }

    *(this + 30) = v2;
    operator delete(v4);
  }

  v7 = *(this + 25);
  if (v7)
  {
    v8 = *(this + 26);
    v9 = *(this + 25);
    if (v8 != v7)
    {
      do
      {
        webrtc::RelayServerConfig::~RelayServerConfig((v8 - 160));
      }

      while (v8 != v7);
      v9 = *(this + 25);
    }

    *(this + 26) = v7;
    operator delete(v9);
  }

  std::__tree<webrtc::SocketAddress>::destroy(this + 176, *(this + 23));
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  while (1)
  {
    v14 = *(this + 11);
    if (!v14)
    {
      break;
    }

    v10 = *(this + 10);
    v11 = v10[3];
    v13 = *v10;
    v12 = v10[1];
    *(v13 + 8) = v12;
    *v12 = v13;
    *(this + 11) = v14 - 1;
    operator delete(v10);
    (*(v11 + 16))(v11, this + 56);
  }

  *(this + 12) = this + 72;
  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
}

uint64_t webrtc::PortAllocator::SetConfiguration(uint64_t a1, uint64_t a2, const webrtc::RelayServerConfig **a3, int a4, int a5, uint64_t a6, int *a7)
{
  v79 = a1 + 176;
  if (*(a2 + 16) != *(a1 + 192))
  {
    goto LABEL_53;
  }

  v11 = (a2 + 8);
  v12 = *a2;
  if (*a2 != a2 + 8)
  {
    v13 = *(a1 + 176);
    while (webrtc::SocketAddress::operator==((v12 + 32), (v13 + 4)))
    {
      v14 = *(v12 + 1);
      v15 = v12;
      if (v14)
      {
        do
        {
          v12 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v12 = *(v15 + 2);
          v16 = *v12 == v15;
          v15 = v12;
        }

        while (!v16);
      }

      v17 = v13[1];
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
        do
        {
          v18 = v13[2];
          v16 = *v18 == v13;
          v13 = v18;
        }

        while (!v16);
      }

      v13 = v18;
      if (v12 == v11)
      {
        goto LABEL_17;
      }
    }

LABEL_53:
    v25 = 1;
LABEL_54:
    v38 = v79;
    if (v79 != a2)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

LABEL_17:
  v20 = *a3;
  v19 = a3[1];
  v21 = *(a1 + 200);
  if (v19 - *a3 != *(a1 + 208) - v21)
  {
    goto LABEL_53;
  }

  if (v20 != v19)
  {
    v75 = a3[1];
    while (1)
    {
      v23 = *v20;
      v22 = *(v20 + 1);
      v24 = *v21;
      if (v22 - *v20 != *(v21 + 8) - *v21)
      {
        goto LABEL_53;
      }

      for (; v23 != v22; v24 += 80)
      {
        v25 = 1;
        if (!webrtc::SocketAddress::operator==(v23, v24) || *(v23 + 72) != *(v24 + 72))
        {
          goto LABEL_54;
        }

        v23 += 80;
      }

      v26 = *(v20 + 47);
      if (v26 >= 0)
      {
        v27 = *(v20 + 47);
      }

      else
      {
        v27 = *(v20 + 4);
      }

      v28 = *(v21 + 47);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v21 + 32);
      }

      if (v27 != v28)
      {
        goto LABEL_53;
      }

      v30 = v26 >= 0 ? v20 + 24 : *(v20 + 3);
      v31 = v29 >= 0 ? (v21 + 24) : *(v21 + 24);
      if (memcmp(v30, v31, v27))
      {
        goto LABEL_53;
      }

      v32 = *(v20 + 71);
      if (v32 >= 0)
      {
        v33 = *(v20 + 71);
      }

      else
      {
        v33 = *(v20 + 7);
      }

      v34 = *(v21 + 71);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v21 + 56);
      }

      if (v33 != v34)
      {
        goto LABEL_53;
      }

      v36 = v32 >= 0 ? v20 + 48 : *(v20 + 6);
      v37 = v35 >= 0 ? (v21 + 48) : *(v21 + 48);
      if (memcmp(v36, v37, v33))
      {
        goto LABEL_53;
      }

      v25 = 0;
      v20 = (v20 + 160);
      v21 += 160;
      if (v20 == v75)
      {
        goto LABEL_54;
      }
    }
  }

  v25 = 0;
  v38 = v79;
  if (v79 != a2)
  {
LABEL_55:
    std::__tree<webrtc::SocketAddress>::__assign_multi<std::__tree_const_iterator<webrtc::SocketAddress,std::__tree_node<webrtc::SocketAddress,void *> *,long>>(v38, *a2, (a2 + 8));
  }

LABEL_56:
  v39 = (a1 + 200);
  if ((a1 + 200) != a3)
  {
    v40 = *a3;
    v41 = a3[1];
    v42 = v41 - *a3;
    v43 = *(a1 + 216);
    v44 = *(a1 + 200);
    if (v43 - v44 < v42)
    {
      v45 = 0xCCCCCCCCCCCCCCCDLL * (v42 >> 5);
      if (v44)
      {
        v46 = *(a1 + 208);
        v47 = *(a1 + 200);
        if (v46 != v44)
        {
          do
          {
            webrtc::RelayServerConfig::~RelayServerConfig((v46 - 160));
          }

          while (v46 != v44);
          v47 = *v39;
        }

        *(a1 + 208) = v44;
        operator delete(v47);
        v43 = 0;
        *v39 = 0;
        *(a1 + 208) = 0;
        *(a1 + 216) = 0;
      }

      if (v45 <= 0x199999999999999)
      {
        v48 = 0xCCCCCCCCCCCCCCCDLL * (v43 >> 5);
        v49 = 2 * v48;
        if (2 * v48 <= v45)
        {
          v49 = v45;
        }

        if (v48 >= 0xCCCCCCCCCCCCCCLL)
        {
          v50 = 0x199999999999999;
        }

        else
        {
          v50 = v49;
        }

        if (v50 <= 0x199999999999999)
        {
          operator new();
        }
      }

      goto LABEL_135;
    }

    v53 = *(a1 + 208);
    v54 = v53 - v44;
    if (v53 - v44 >= v42)
    {
      if (v40 != v41)
      {
        do
        {
          webrtc::RelayServerConfig::operator=(v44, v40);
          v40 = (v40 + 160);
          v44 += 160;
        }

        while (v40 != v41);
        v53 = *(a1 + 208);
      }

      while (v53 != v44)
      {
        v53 -= 20;
        webrtc::RelayServerConfig::~RelayServerConfig(v53);
      }

      *(a1 + 208) = v44;
      *(a1 + 256) = a5;
      *(a1 + 224) = a4;
      if (v25)
      {
        goto LABEL_83;
      }

      goto LABEL_71;
    }

    if (v53 != v44)
    {
      v55 = &v54[v40];
      do
      {
        webrtc::RelayServerConfig::operator=(v44, v40);
        v40 = (v40 + 160);
        v44 += 160;
        v54 -= 160;
      }

      while (v54);
      v53 = *(a1 + 208);
      v40 = v55;
    }

    v56 = v53;
    if (v40 != v41)
    {
      v56 = v53;
      v57 = v53;
      while (v57)
      {
        v58 = webrtc::RelayServerConfig::RelayServerConfig(v57, v40);
        v40 = (v40 + 160);
        v57 = (v58 + 160);
        v56 += 20;
        if (v40 == v41)
        {
          goto LABEL_81;
        }
      }

LABEL_134:
      __break(1u);
LABEL_135:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_81:
    *(a1 + 208) = v56;
  }

  *(a1 + 256) = a5;
  *(a1 + 224) = a4;
  if (v25)
  {
LABEL_83:
    v51 = *(a1 + 232);
    v59 = *(a1 + 240);
    v52 = a6;
    if (v59 != v51)
    {
      do
      {
        v61 = *(v59 - 1);
        v59 -= 8;
        v60 = v61;
        *v59 = 0;
        if (v61)
        {
          (*(*v60 + 8))(v60);
        }
      }

      while (v59 != v51);
      a4 = *(a1 + 224);
    }

    *(a1 + 240) = v51;
    goto LABEL_90;
  }

LABEL_71:
  v51 = *(a1 + 240);
  v52 = a6;
LABEL_90:
  v62 = *(a1 + 232);
  *(a1 + 264) = v52;
  while (a4 < ((v51 - v62) >> 3))
  {
    if (v62 == v51)
    {
      goto LABEL_134;
    }

    v63 = *(v51 - 1);
    *(v51 - 1) = 0;
    if (v63)
    {
      (*(*v63 + 8))(v63);
      v62 = *(a1 + 232);
      v51 = *(a1 + 240);
    }

    if (v62 == v51)
    {
      goto LABEL_134;
    }

    v65 = *(v51 - 1);
    v51 -= 8;
    v64 = v65;
    *v51 = 0;
    if (v65)
    {
      (*(*v64 + 8))(v64);
      v62 = *(a1 + 232);
    }

    *(a1 + 240) = v51;
    a4 = *(a1 + 224);
  }

  v66 = *a7;
  *(a1 + 276) = *(a7 + 4);
  *(a1 + 272) = v66;
  if (v62 != v51)
  {
    do
    {
      v67 = *v62;
      v62 += 8;
      (*(*v67 + 88))(v67, a1 + 272);
    }

    while (v62 != v51);
    if (*(a1 + 224) <= ((*(a1 + 240) - *(a1 + 232)) >> 3))
    {
      return 1;
    }

    while (1)
    {
LABEL_107:
      webrtc::IceCredentialsIterator::CreateRandomIceCredentials(v81);
      if ((v82 & 0x80u) == 0)
      {
        v68 = v81;
      }

      else
      {
        v68 = v81[0];
      }

      if ((v82 & 0x80u) == 0)
      {
        v69 = v82;
      }

      else
      {
        v69 = v81[1];
      }

      if ((v84 & 0x80u) == 0)
      {
        v70 = __p;
      }

      else
      {
        v70 = __p[0];
      }

      if ((v84 & 0x80u) == 0)
      {
        v71 = v84;
      }

      else
      {
        v71 = __p[1];
      }

      v72 = (*(*a1 + 64))(a1, "", 0, 0, v68, v69, v70, v71);
      v72[536] = 1;
      (*(*v72 + 24))(v72);
      v80 = v72;
      std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100]((a1 + 232), &v80);
      v73 = v80;
      v80 = 0;
      if (v73)
      {
        (*(*v73 + 8))(v73);
      }

      if (v84 < 0)
      {
        operator delete(__p[0]);
        if ((v82 & 0x80000000) == 0)
        {
          goto LABEL_106;
        }

LABEL_123:
        operator delete(v81[0]);
        if (*(a1 + 224) <= ((*(a1 + 240) - *(a1 + 232)) >> 3))
        {
          return 1;
        }
      }

      else
      {
        if (v82 < 0)
        {
          goto LABEL_123;
        }

LABEL_106:
        if (*(a1 + 224) <= ((*(a1 + 240) - *(a1 + 232)) >> 3))
        {
          return 1;
        }
      }
    }
  }

  if (a4 > 0)
  {
    goto LABEL_107;
  }

  return 1;
}

void webrtc::PortAllocator::TakePooledSession(__int128 *__src@<X6>, size_t __len@<X7>, uint64_t a3@<X0>, __int128 *a4@<X1>, size_t a5@<X2>, int a6@<W3>, __int128 *a7@<X4>, size_t a8@<X5>, void *a9@<X8>)
{
  if (*(a3 + 232) == *(a3 + 240))
  {
    *a9 = 0;
    return;
  }

  webrtc::IceParameters::IceParameters(v57, a7, a8, __src, __len, 0);
  if (*(a3 + 280))
  {
    v11 = v57;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a3 + 240);
  v13 = *(a3 + 232);
  if (v13 == v12)
  {
    goto LABEL_69;
  }

  if (*(a3 + 280))
  {
    v14 = &v61;
  }

  else
  {
    v14 = 47;
  }

  if (*(a3 + 280))
  {
    v15 = &v60;
  }

  else
  {
    v15 = 32;
  }

  if (*(a3 + 280))
  {
    p_p = &__p;
  }

  else
  {
    p_p = 24;
  }

  if (*(a3 + 280))
  {
    if ((v58 & 0x80u) == 0)
    {
      v17 = v58;
    }

    else
    {
      v17 = v57[1];
    }

    if ((v58 & 0x80) != 0)
    {
      while (1)
      {
        v28 = *v13;
        v29 = *(*v13 + 511);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(*v13 + 496);
        }

        if (v29 == v17)
        {
          v31 = v30 >= 0 ? (v28 + 488) : *(v28 + 488);
          if (!memcmp(v31, *v11, v17))
          {
            v32 = *(v28 + 535);
            if (v32 >= 0)
            {
              v33 = *(v28 + 535);
            }

            else
            {
              v33 = *(v28 + 520);
            }

            v34 = *v14;
            v35 = v34;
            if ((v34 & 0x80u) != 0)
            {
              v34 = *v15;
            }

            if (v33 == v34)
            {
              v36 = v32 >= 0 ? (v28 + 512) : *(v28 + 512);
              v37 = v35 >= 0 ? p_p : *p_p;
              if (!memcmp(v36, v37, v33))
              {
                break;
              }
            }
          }
        }

        if (++v13 == v12)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      while (1)
      {
        v18 = *v13;
        v19 = *(*v13 + 511);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(*v13 + 496);
        }

        if (v19 == v17)
        {
          v21 = v20 >= 0 ? (v18 + 488) : *(v18 + 488);
          if (!memcmp(v21, v11, v17))
          {
            v22 = *(v18 + 535);
            if (v22 >= 0)
            {
              v23 = *(v18 + 535);
            }

            else
            {
              v23 = *(v18 + 520);
            }

            v24 = *v14;
            v25 = v24;
            if ((v24 & 0x80u) != 0)
            {
              v24 = *v15;
            }

            if (v23 == v24)
            {
              v26 = v22 >= 0 ? (v18 + 512) : *(v18 + 512);
              v27 = v25 >= 0 ? p_p : *p_p;
              if (!memcmp(v26, v27, v23))
              {
                break;
              }
            }
          }
        }

        if (++v13 == v12)
        {
          goto LABEL_69;
        }
      }
    }
  }

  if (v12 == v13)
  {
LABEL_69:
    *a9 = 0;
    if (v61 < 0)
    {
      goto LABEL_110;
    }

    goto LABEL_70;
  }

  v38 = *v13;
  *v13 = 0;
  *a9 = v38;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_114;
  }

  if (a5 > 0x16)
  {
    operator new();
  }

  HIBYTE(v63) = a5;
  v39 = (&v62 + a5);
  if (&v62 <= a4 && v39 > a4)
  {
    goto LABEL_113;
  }

  if (a5)
  {
    memmove(&v62, a4, a5);
  }

  *v39 = 0;
  v40 = (v38 + 456);
  if (*(v38 + 479) < 0)
  {
    operator delete(*v40);
  }

  *v40 = v62;
  *(v38 + 472) = v63;
  *(v38 + 480) = a6;
  if (a8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_114;
  }

  if (a8 > 0x16)
  {
    operator new();
  }

  HIBYTE(v63) = a8;
  v41 = (&v62 + a8);
  if (&v62 <= a7 && v41 > a7)
  {
    goto LABEL_113;
  }

  if (a8)
  {
    memmove(&v62, a7, a8);
  }

  *v41 = 0;
  v42 = (v38 + 488);
  if (*(v38 + 511) < 0)
  {
    operator delete(*v42);
  }

  *v42 = v62;
  *(v38 + 504) = v63;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_114:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  HIBYTE(v63) = __len;
  v43 = (&v62 + __len);
  if (&v62 <= __src && v43 > __src)
  {
    goto LABEL_113;
  }

  if (__len)
  {
    memmove(&v62, __src, __len);
  }

  *v43 = 0;
  v44 = (v38 + 512);
  if (*(v38 + 535) < 0)
  {
    operator delete(*v44);
  }

  *v44 = v62;
  *(v38 + 528) = v63;
  (*(*v38 + 144))(v38);
  *(v38 + 536) = 0;
  (*(*v38 + 16))(v38, *(a3 + 140));
  v45 = *(a3 + 240);
  if (v45 == v13)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v46 = v13 + 1;
  if (v13 + 1 != v45)
  {
    do
    {
      v47 = *(v46 - 1);
      *(v46 - 1) = *v46;
      *v46 = 0;
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }

      ++v46;
    }

    while (v46 != v45);
    v45 = *(a3 + 240);
    v13 = v46 - 1;
  }

  while (v45 != v13)
  {
    v49 = *--v45;
    v48 = v49;
    *v45 = 0;
    if (v49)
    {
      (*(*v48 + 8))(v48);
    }
  }

  *(a3 + 240) = v13;
  if (v61 < 0)
  {
LABEL_110:
    operator delete(__p);
    if ((v58 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_111;
  }

LABEL_70:
  if ((v58 & 0x80000000) == 0)
  {
    return;
  }

LABEL_111:
  operator delete(v57[0]);
}

uint64_t webrtc::PortAllocator::GetCandidateStatsFromPooledSessions(uint64_t result, uint64_t a2)
{
  v2 = *(result + 232);
  for (i = *(result + 240); v2 != i; result = (*(*v5 + 80))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

void webrtc::PortAllocator::GetPooledIceCredentials(webrtc::PortAllocator *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 29);
  v3 = *(this + 30);
  while (v2 != v3)
  {
    v5 = *v2;
    v6 = *(*v2 + 511);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = *(v5 + 488);
      v6 = *(v5 + 496);
      v8 = *(v5 + 535);
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_6:
        webrtc::IceParameters::IceParameters(__p, v7, v6, (v5 + 512), v8, 0);
        v9 = a2[1];
        if (v9 >= a2[2])
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v7 = (v5 + 488);
      v8 = *(v5 + 535);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    webrtc::IceParameters::IceParameters(__p, v7, v6, *(v5 + 512), *(v5 + 520), 0);
    v9 = a2[1];
    if (v9 >= a2[2])
    {
LABEL_12:
      std::vector<webrtc::IceParameters>::__emplace_back_slow_path<webrtc::IceParameters>(a2);
    }

LABEL_7:
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = *__p;
    *(v9 + 16) = v13;
    *v9 = v10;
    __p[1] = 0;
    v13 = 0;
    __p[0] = 0;
    v11 = v15;
    *(v9 + 24) = v14;
    *(v9 + 40) = v11;
    v15 = 0;
    v14 = 0uLL;
    *(v9 + 48) = v16;
    a2[1] = v9 + 56;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    ++v2;
  }
}

_BYTE *webrtc::RelayCredentials::RelayCredentials(_BYTE *a1, _BYTE *a2, size_t a3, _BYTE *__src, size_t __len)
{
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  a1[23] = a3;
  v8 = &a1[a3];
  if (a1 <= a2 && v8 > a2)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *v8 = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  a1[47] = __len;
  v9 = &a1[__len + 24];
  if (a1 + 24 <= __src && v9 > __src)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__len)
  {
    memmove(a1 + 24, __src, __len);
  }

  *v9 = 0;
  return a1;
}

void std::vector<webrtc::ProtocolAddress>::__emplace_back_slow_path<webrtc::ProtocolAddress>(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 <= 0x333333333333333)
  {
    if (0x999999999999999ALL * ((a1[2] - v1) >> 4) > v2)
    {
      v2 = 0x999999999999999ALL * ((a1[2] - v1) >> 4);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - v1) >> 4) >= 0x199999999999999)
    {
      v2 = 0x333333333333333;
    }

    if (v2)
    {
      if (v2 <= 0x333333333333333)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::RelayServerConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 128) = *(a2 + 128);
    return a1;
  }

  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (v7 - *a1 < v6)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 4);
    if (v8)
    {
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 57);
          v10 -= 10;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
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
    }

    if (v9 <= 0x333333333333333)
    {
      v30 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v31 = 2 * v30;
      if (2 * v30 <= v9)
      {
        v31 = v9;
      }

      if (v30 >= 0x199999999999999)
      {
        v32 = 0x333333333333333;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 0x333333333333333)
      {
        operator new();
      }
    }

    goto LABEL_102;
  }

  v13 = *(a1 + 8);
  v14 = (v13 - v8);
  if (v13 - v8 < v6)
  {
    if (v13 == v8)
    {
      v16 = *a2;
      v33 = *(a1 + 8);
      if (v5 == v4)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v15 = 0;
      v16 = &v14[v5];
      do
      {
        v19 = &v15[v8];
        v20 = &v15[v5];
        if (v5 != v8)
        {
          v21 = v20[23];
          if (*(v19 + 23) < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v15[v5];
            }

            else
            {
              v17 = *&v15[v5];
            }

            if (v21 >= 0)
            {
              v18 = v20[23];
            }

            else
            {
              v18 = *&v15[v5 + 8];
            }

            std::string::__assign_no_alias<false>(&v15[v8], v17, v18);
          }

          else if (v20[23] < 0)
          {
            std::string::__assign_no_alias<true>(&v15[v8], *&v15[v5], *&v15[v5 + 8]);
          }

          else
          {
            v22 = *v20;
            v19[2] = *(v20 + 2);
            *v19 = v22;
          }
        }

        *(v19 + 8) = *(v20 + 8);
        *(v19 + 36) = *(v20 + 36);
        *(v19 + 28) = *(v20 + 28);
        *(v19 + 64) = v20[64];
        *(v19 + 15) = *(v20 + 15);
        *(v19 + 18) = *(v20 + 18);
        v15 += 80;
      }

      while (v14 != v15);
      v13 = *(a1 + 8);
      v33 = v13;
      if (v16 == v4)
      {
LABEL_78:
        *(a1 + 8) = v33;
        v35 = (a2 + 24);
        v36 = *(a2 + 47);
        if (*(a1 + 47) < 0)
        {
          goto LABEL_79;
        }

        goto LABEL_58;
      }
    }

    v42 = 0;
    while (1)
    {
      v43 = &v13[v42 / 8];
      if (!&v13[v42 / 8])
      {
        break;
      }

      v44 = &v16[v42];
      *v43 = 0;
      v43[1] = 0;
      v43[2] = 0;
      v45 = &v13[v42 / 8];
      v13[v42 / 8 + 4] = 0;
      v46 = &v13[v42 / 8 + 4];
      *(v46 - 8) = &unk_28828CE50;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      if (v43 != &v16[v42])
      {
        if (v16[v42 + 23] < 0)
        {
          std::string::__assign_no_alias<true>(v43, *&v16[v42], *&v16[v42 + 8]);
        }

        else
        {
          v47 = *v44;
          v43[2] = *(v44 + 2);
          *v43 = v47;
        }
      }

      *v46 = *&v16[v42 + 32];
      *(v45 + 36) = *&v16[v42 + 36];
      *(v45 + 28) = *&v16[v42 + 56];
      *(v45 + 64) = v16[v42 + 64];
      *(v45 + 15) = *&v16[v42 + 60];
      *(v45 + 18) = *&v16[v42 + 72];
      v42 += 80;
      if (&v16[v42] == v4)
      {
        v33 = &v13[v42 / 8];
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_102:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v5 != v4)
  {
    v23 = 0;
    do
    {
      v26 = &v8[v23];
      v27 = &v5[v23];
      if (v5 != v8)
      {
        v28 = *(v27 + 23);
        if (*(v26 + 23) < 0)
        {
          if (v28 >= 0)
          {
            v24 = &v5[v23];
          }

          else
          {
            v24 = v5[v23];
          }

          if (v28 >= 0)
          {
            v25 = *(v27 + 23);
          }

          else
          {
            v25 = v5[v23 + 1];
          }

          std::string::__assign_no_alias<false>(&v8[v23], v24, v25);
        }

        else if ((*(v27 + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&v8[v23], v5[v23], v5[v23 + 1]);
        }

        else
        {
          v29 = *v27;
          v26[2] = v27[2];
          *v26 = v29;
        }
      }

      *(v26 + 8) = *(v27 + 8);
      *(v26 + 36) = *(v27 + 36);
      *(v26 + 28) = *(v27 + 28);
      *(v26 + 64) = *(v27 + 64);
      *(v26 + 15) = *(v27 + 15);
      *(v26 + 18) = *(v27 + 18);
      v23 += 10;
    }

    while (&v5[v23] != v4);
    v13 = *(a1 + 8);
    v8 = (v8 + v23 * 8);
  }

  while (v13 != v8)
  {
    v34 = *(v13 - 57);
    v13 -= 10;
    if (v34 < 0)
    {
      operator delete(*v13);
    }
  }

  *(a1 + 8) = v8;
  v35 = (a2 + 24);
  v36 = *(a2 + 47);
  if (*(a1 + 47) < 0)
  {
LABEL_79:
    if ((v36 & 0x80u) == 0)
    {
      v48 = v35;
    }

    else
    {
      v48 = *(a2 + 24);
    }

    if ((v36 & 0x80u) == 0)
    {
      v49 = v36;
    }

    else
    {
      v49 = *(a2 + 32);
    }

    std::string::__assign_no_alias<false>((a1 + 24), v48, v49);
    v38 = (a2 + 48);
    v39 = *(a2 + 71);
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

LABEL_62:
    if ((v39 & 0x80u) == 0)
    {
      v40 = v38;
    }

    else
    {
      v40 = *(a2 + 48);
    }

    if ((v39 & 0x80u) == 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *(a2 + 56);
    }

    std::string::__assign_no_alias<false>((a1 + 48), v40, v41);
    goto LABEL_89;
  }

LABEL_58:
  if ((v36 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((a1 + 24), *(a2 + 24), *(a2 + 32));
    v38 = (a2 + 48);
    v39 = *(a2 + 71);
    if (*(a1 + 71) < 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v37 = *v35;
    *(a1 + 40) = *(v35 + 2);
    *(a1 + 24) = v37;
    v38 = (a2 + 48);
    v39 = *(a2 + 71);
    if (*(a1 + 71) < 0)
    {
      goto LABEL_62;
    }
  }

LABEL_86:
  if ((v39 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v50 = *v38;
    *(a1 + 64) = *(v38 + 2);
    *(a1 + 48) = v50;
  }

LABEL_89:
  *(a1 + 72) = *(a2 + 72);
  std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>((a1 + 104), *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(a1 + 128) = *(a2 + 128);
  v51 = *(a2 + 159);
  if (*(a1 + 159) < 0)
  {
    if (v51 >= 0)
    {
      v53 = (a2 + 136);
    }

    else
    {
      v53 = *(a2 + 136);
    }

    if (v51 >= 0)
    {
      v54 = *(a2 + 159);
    }

    else
    {
      v54 = *(a2 + 144);
    }

    std::string::__assign_no_alias<false>((a1 + 136), v53, v54);
  }

  else if ((*(a2 + 159) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v52 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v52;
  }

  return a1;
}

void std::vector<webrtc::IceParameters>::__emplace_back_slow_path<webrtc::IceParameters>(void *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x492492492492492)
  {
    if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
    {
      v2 = 0x492492492492492;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x492492492492492)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::PortInterface::PortInterface(uint64_t this)
{
  *this = &unk_288299D30;
  *(this + 8) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 16) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 24) = this + 24;
  *(this + 32) = this + 24;
  *(this + 40) = 0;
  *(this + 48) = this + 24;
  *(this + 56) = 0;
  *(this + 64) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 72) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 80) = this + 80;
  *(this + 88) = this + 80;
  *(this + 96) = 0;
  *(this + 104) = this + 80;
  *(this + 112) = 0;
  *(this + 120) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 128) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 136) = this + 136;
  *(this + 144) = this + 136;
  *(this + 152) = 0;
  *(this + 160) = this + 136;
  *(this + 168) = 0;
  *(this + 176) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 184) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 192) = this + 192;
  *(this + 200) = this + 192;
  *(this + 208) = 0;
  *(this + 216) = this + 192;
  *(this + 224) = 0;
  return this;
}

void webrtc::PortInterface::~PortInterface(webrtc::PortInterface *this)
{
  *this = &unk_288299D30;
  for (i = *(this + 26); i; i = *(this + 26))
  {
    v3 = *(this + 25);
    v4 = v3[3];
    v6 = *v3;
    v5 = v3[1];
    *(v6 + 8) = v5;
    *v5 = v6;
    *(this + 26) = i - 1;
    operator delete(v3);
    (*(v4 + 16))(v4, this + 176);
  }

  *(this + 27) = this + 192;
  for (j = *(this + 19); j; j = *(this + 19))
  {
    v8 = *(this + 18);
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    *(v11 + 8) = v10;
    *v10 = v11;
    *(this + 19) = j - 1;
    operator delete(v8);
    (*(v9 + 16))(v9, this + 120);
  }

  *(this + 20) = this + 136;
  for (k = *(this + 12); k; k = *(this + 12))
  {
    v13 = *(this + 11);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v16 + 8) = v15;
    *v15 = v16;
    *(this + 12) = k - 1;
    operator delete(v13);
    (*(v14 + 16))(v14, this + 64);
  }

  *(this + 13) = this + 80;
  for (m = *(this + 5); m; m = *(this + 5))
  {
    v18 = *(this + 4);
    v19 = v18[3];
    v21 = *v18;
    v20 = v18[1];
    *(v21 + 8) = v20;
    *v20 = v21;
    *(this + 5) = m - 1;
    operator delete(v18);
    (*(v19 + 16))(v19, this + 8);
  }

  *(this + 6) = this + 24;
}

void *webrtc::PostFilter::PostFilter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a4)
  {
    std::vector<std::unique_ptr<webrtc::CascadedBiQuadFilter>>::__append(a1, a4);
    if (a1[1] != *a1)
    {
      if (a3)
      {
        operator new();
      }

      operator new();
    }
  }

  return a1;
}

uint64_t webrtc::PpsParser::ParseInternal@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v47 = v8;
  if (((a2 >> 28) & 0x1FFFFFFFFLL) == 0)
  {
    v48 = 8 * a2;
    v49 = 1;
    ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
    v10 = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
    v49 = 0;
    v11 = v48;
    v12 = v48 - 1;
    if (v48 < 1)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      --v48;
      v13 = v47;
      v14 = v12 & 7;
      if (v14)
      {
        v15 = (*v47 >> v14) & 1;
        v49 = 0;
        if (v11 != 1)
        {
LABEL_13:
          v48 = v11 - 2;
          v19 = (v11 - 2) & 7;
          if (v19)
          {
            v17 = (*v13 >> v19) & 1;
            v18 = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
            if (!v18)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v47 = v13 + 1;
            LOBYTE(v17) = *v13 & 1;
            v18 = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
            if (!v18)
            {
              goto LABEL_37;
            }
          }

LABEL_17:
          v20 = v18;
          v21 = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
          v22 = v21;
          if (v21)
          {
            if (v21 != 1)
            {
              if (v21 == 2)
              {
                for (i = 0; i <= v20; ++i)
                {
                  v49 = 1;
                  if (v48 < 0)
                  {
                    break;
                  }

                  webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
                  webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
                }
              }

              else if (v21 - 3 > 2)
              {
                if (v21 == 6)
                {
                  result = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
                  if (v48 < 0)
                  {
                    goto LABEL_54;
                  }

                  v26 = (result + 1) * (33 - __clz(v20));
                  if (v26 >> 31)
                  {
                    goto LABEL_54;
                  }

                  v49 = 0;
                  v27 = v48 >= v26;
                  v28 = v48 - v26;
                  if (v27)
                  {
                    v46 = v28 + 7;
                    if (v28 < -7)
                    {
                      v46 = v28 + 14;
                    }

                    v47 += (((v48 + 7) >> 3) - (v46 >> 3));
                  }

                  else
                  {
                    v28 = -1;
                  }

                  v48 = v28;
                }
              }

              else
              {
                v49 = 0;
                v24 = v48 - 1;
                if (v48 < 1)
                {
                  v24 = -1;
                }

                else
                {
                  v47 += (((v48 + 7) >> 3) - ((v48 + 6) >> 3));
                }

                v48 = v24;
                webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
              }
            }
          }

          else
          {
            do
            {
              v49 = 1;
              if (v48 < 0)
              {
                break;
              }

              webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
              ++v22;
            }

            while (v22 <= v20);
          }

LABEL_37:
          v29 = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
          result = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
          if (v29 > 0x1F || result >= 0x20)
          {
            goto LABEL_54;
          }

          v49 = 0;
          v30 = v48;
          v31 = v48 - 1;
          if (v48 < 1)
          {
            LOBYTE(v34) = 0;
          }

          else
          {
            --v48;
            v32 = v47;
            v33 = v31 & 7;
            if ((v31 & 7) != 0)
            {
              v34 = (*v47 >> v33) & 1;
              if (v30 >= 3)
              {
                v48 = v30 - 3;
                v35 = *v47;
                if (v33 >= 3)
                {
                  v36 = result;
                  v37 = (v35 >> (v33 - 2)) & 3;
                  goto LABEL_47;
                }

                v37 = (v35 << (2 - v33)) & 3;
                v38 = ++v47;
                if (v33 == 2)
                {
                  v36 = result;
                  goto LABEL_47;
                }

                v45 = 7;
LABEL_62:
                v36 = result;
                v37 |= *v38 >> v45;
LABEL_47:
                result = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
                if (result)
                {
                  v39 = (result + 1) >> 1;
                }

                else
                {
                  v39 = -(result >> 1);
                }

                v49 = 1;
                if ((v48 & 0x80000000) == 0 && v39 + 26 < 0x34)
                {
                  webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
                  result = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
                  v40 = v48;
                  if (v48 >= 2)
                  {
                    v41 = &v47[((v48 + 7) >> 3) - ((v48 + 5) >> 3)];
                    v47 = v41;
                    v49 = 0;
                    if (v48 != 2)
                    {
                      v48 -= 3;
                      v43 = (v40 - 3) & 7;
                      if (v43)
                      {
                        v44 = *v41 >> v43;
                      }

                      else
                      {
                        v47 = v41 + 1;
                        LOBYTE(v44) = *v41;
                      }

                      *a7 = v17;
                      *(a7 + 1) = v34;
                      *(a7 + 2) = v15;
                      *(a7 + 4) = v29;
                      *(a7 + 8) = v36;
                      *(a7 + 12) = v37;
                      *(a7 + 16) = v44 & 1;
                      *(a7 + 20) = v39;
                      *(a7 + 24) = ExponentialGolomb;
                      v42 = 1;
                      *(a7 + 28) = v10;
                      goto LABEL_55;
                    }
                  }
                }

LABEL_54:
                v42 = 0;
                *a7 = 0;
LABEL_55:
                *(a7 + 32) = v42;
                return result;
              }
            }

            else
            {
              v38 = ++v47;
              LOBYTE(v34) = *v32 & 1;
              v49 = 0;
              if (v30 >= 3)
              {
                v37 = 0;
                v48 = v30 - 3;
                v45 = 6;
                goto LABEL_62;
              }
            }
          }

          v36 = result;
          v37 = 0;
          v48 = -1;
          goto LABEL_47;
        }
      }

      else
      {
        ++v47;
        v16 = *v13++;
        LOBYTE(v15) = v16 & 1;
        v49 = 0;
        if (v11 != 1)
        {
          goto LABEL_13;
        }
      }
    }

    LOBYTE(v17) = 0;
    v48 = -1;
    v18 = webrtc::BitstreamReader::ReadExponentialGolomb(&v47);
    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_17;
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a3, a4, a5, a6, v47);
  return webrtc::PpsParser::ParsePpsIds();
}

uint64_t webrtc::PpsParser::ParsePpsIds(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  webrtc::H264::ParseRbsp(a2, &__p);
  v10 = __p;
  v11 = v19 - __p;
  if (v19 == __p)
  {
    v10 = 0;
  }

  v15 = v10;
  if (((v11 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v14);
    return webrtc::PpsParser::ParseSliceHeader();
  }

  else
  {
    v16 = 8 * v11;
    v17 = 1;
    *a3 = webrtc::BitstreamReader::ReadExponentialGolomb(&v15);
    *a4 = webrtc::BitstreamReader::ReadExponentialGolomb(&v15);
    v12 = v16;
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    return v12 >= 0;
  }
}

uint64_t webrtc::PpsParser::ParseSliceHeader(uint64_t a1, uint64_t a2)
{
  webrtc::H264::ParseRbsp(a2, &__p);
  v6 = __p;
  v7 = v22 - __p;
  if (v22 == __p)
  {
    v6 = 0;
  }

  v18 = v6;
  if (((v7 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v17);
    return webrtc::PreemptiveExpand::SetParametersForPassiveSpeech(v13, v14, v15, v16);
  }

  else
  {
    v19 = 8 * v7;
    v20 = 1;
    ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v18);
    webrtc::BitstreamReader::ReadExponentialGolomb(&v18);
    v9 = webrtc::BitstreamReader::ReadExponentialGolomb(&v18);
    v10 = v19;
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    v11 = ExponentialGolomb & 0xFFFFFF00 | (v9 << 32);
    if (v10 < 0)
    {
      v11 = 0;
    }

    return v11 | (ExponentialGolomb & ~(v10 >> 31));
  }
}

uint64_t webrtc::PreemptiveExpand::SetParametersForPassiveSpeech(uint64_t this, uint64_t a2, __int16 *a3, unint64_t *a4)
{
  *a3 = 0;
  v4 = a2 - *(this + 360);
  if (v4 >= *a4)
  {
    v4 = *a4;
  }

  *a4 = v4;
  return this;
}

uint64_t webrtc::PreemptiveExpand::CheckCriteriaAndStretch(webrtc::PreemptiveExpand *this, __int16 *a2, unint64_t a3, unint64_t a4, int a5, int a6, BOOL a7, webrtc::AudioMultiVector *a8)
{
  v10 = 120 * *(this + 3);
  if (a5 < 14747)
  {
    if ((a6 & 1) == 0)
    {
      v11 = *(this + 45);
LABEL_10:
      if (v11 <= v10)
      {
        v13 = 120 * *(this + 3);
      }

      else
      {
        v13 = v11;
      }

      v14 = (v13 + a4) * *(this + 2);
      if (v14)
      {
        v15 = a2;
      }

      else
      {
        v15 = 0;
      }

      v17 = a2;
      webrtc::AudioMultiVector::PushBackInterleaved(a8, v15, v14);
      webrtc::AudioMultiVector::AudioMultiVector(&v30, *(this + 2));
      v20 = *(this + 2);
      if (v20 * a4)
      {
        v21 = &v17[v20 * (v13 - a4)];
      }

      else
      {
        v21 = 0;
      }

      webrtc::AudioMultiVector::PushBackInterleaved(&v30, v21, v20 * a4);
      webrtc::AudioMultiVector::CrossFade(a8, &v30, a4);
      v22 = *(this + 2) * v13;
      if (a3 == v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = &v17[v22];
      }

      webrtc::AudioMultiVector::PushBackInterleaved(a8, v23, a3 - v22);
      result = a6 ^ 1u;
      v30 = &unk_28828E2C0;
      v24 = __p;
      if (__p)
      {
        v25 = v32;
        v26 = __p;
        if (v32 != __p)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              v29 = *v27;
              *v27 = 0;
              if (v29)
              {
                MEMORY[0x2743DA520](v29, 0x1000C80BDFB0063);
              }

              MEMORY[0x2743DA540](v27, 0x1010C40FAA616C6);
            }
          }

          while (v25 != v24);
          v26 = __p;
        }

        v32 = v24;
        operator delete(v26);
        return a6 ^ 1u;
      }

      return result;
    }
  }

  else
  {
    v11 = *(this + 45);
    if (v11 <= v10 || (a6 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (!a3)
  {
    a2 = 0;
  }

  webrtc::AudioMultiVector::PushBackInterleaved(a8, a2, a3);
  return 2;
}

float *webrtc::PriorSignalModelEstimator::Update(float *result, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = 0.0;
  v4 = *(a2 + 20);
  v5 = *(a2 + 36);
  v6 = ((((((((((*a2 * 0.05) + 0.0) + (v2 * 0.15)) + (*(a2 + 8) * 0.25)) + (*(a2 + 12) * 0.35)) + (HIDWORD(*(a2 + 12)) * 0.45)) + (v4.i32[0] * 0.55)) + (HIDWORD(*(a2 + 20)) * 0.65)) + (*(a2 + 28) * 0.75)) + (v4.i32[3] * 0.85)) + (v5 * 0.95);
  v7.i32[0] = *a2;
  v7.i32[1] = *(a2 + 8);
  v7.i64[1] = *(a2 + 12);
  v8 = vaddvq_s32(vaddq_s32(v7, v4)) + v2 + v5;
  if (v8 >= 1)
  {
    v6 = v6 / v8;
  }

  v9 = xmmword_273B90830;
  v10 = (a2 + 16);
  v11 = 1000;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vdupq_n_s32(0x3DCCCCCDu);
  v15.i64[0] = 0x800000008;
  v15.i64[1] = 0x800000008;
  v16 = 0.0;
  do
  {
    v17 = vmulq_f32(vaddq_f32(vcvtq_f32_u32(v9), v13), v14);
    v18 = vmulq_f32(vaddq_f32(vcvtq_f32_u32(vaddq_s32(v9, v12)), v13), v14);
    v19 = vmulq_f32(v17, vcvtq_f32_s32(v10[-1]));
    v20 = vmulq_f32(v18, vcvtq_f32_s32(*v10));
    v21 = vmulq_f32(v19, v17);
    v22 = vmulq_f32(v20, v18);
    v3 = (((((((v3 + v19.f32[0]) + v19.f32[1]) + v19.f32[2]) + v19.f32[3]) + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3];
    v16 = (((((((v16 + v21.f32[0]) + v21.f32[1]) + v21.f32[2]) + v21.f32[3]) + v22.f32[0]) + v22.f32[1]) + v22.f32[2]) + v22.f32[3];
    v9 = vaddq_s32(v9, v15);
    v10 += 2;
    v11 -= 8;
  }

  while (v11);
  v23 = (v16 * 0.002) - (v6 * (v3 * 0.002));
  v24 = 1.0;
  if (v23 >= 0.05)
  {
    v24 = fminf(fmaxf(v6 * 1.2, 0.2), 1.0);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  *result = v24;
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  do
  {
    v33 = *(a2 + 4000 + 4 * v26);
    if (v33 > v29)
    {
      v29 = *(a2 + 4000 + 4 * v26);
      v32 = (v26 + 0.5) * 0.05;
      v28 = v29;
    }

    if (v33 > v27)
    {
      v25 = *(a2 + 4000 + 4 * v26);
      v30 = (v26 + 0.5) * 0.05;
      v32 = v31;
      v31 = v30;
      v29 = v27;
      v28 = v27;
      v27 = v25;
    }

    ++v26;
  }

  while (v26 != 1000);
  v34 = vcvts_n_f32_u32(v27, 1uLL);
  if (vabds_f32(v32, v31) < 0.1 && v34 < v28)
  {
    v25 = v27 + v28;
    v30 = (v31 + v32) * 0.5;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0.0;
  v42 = 0.0;
  v43 = 0.0;
  do
  {
    v44 = *(a2 + 8000 + 4 * v37);
    if (v44 > v40)
    {
      v40 = *(a2 + 8000 + 4 * v37);
      v43 = (v37 + 0.5) * 0.1;
      v39 = v40;
    }

    if (v44 > v38)
    {
      v41 = (v37 + 0.5) * 0.1;
      v36 = *(a2 + 8000 + 4 * v37);
      v43 = v42;
      v42 = v41;
      v40 = v38;
      v39 = v38;
      v38 = v36;
    }

    ++v37;
  }

  while (v37 != 1000);
  v45 = vcvts_n_f32_u32(v38, 1uLL);
  if (vabds_f32(v43, v42) < 0.2 && v45 < v39)
  {
    v36 = v38 + v39;
    v41 = (v42 + v43) * 0.5;
  }

  v48 = v30 >= 0.6 && v25 > 149;
  v50 = v23 >= 0.05 && v36 > 149;
  v51 = 1.0 / ((v48 + 1.0) + v50);
  result[2] = fminf(fmaxf(v41 * 1.2, 0.16), 1.0);
  result[3] = v51;
  v52 = 0.0;
  if (v48)
  {
    result[1] = fminf(fmaxf(v30 * 0.9, 0.1), 0.95);
    v52 = 1.0 / ((1u + 1.0) + v50);
  }

  if (!v50)
  {
    v51 = 0.0;
  }

  result[4] = v52;
  result[5] = v51;
  return result;
}

void webrtc::PrioritizedPacketQueue::Push(int8x8_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a3 + 12);
  v4 = a1[17];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = *(*a3 + 12);
      if (*&v4 <= v3)
      {
        v6 = v3 % v4.i32[0];
      }
    }

    else
    {
      v6 = (v4.i32[0] - 1) & v3;
    }

    v7 = *(*&a1[16] + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        if (v5.u32[0] < 2uLL)
        {
          while (1)
          {
            v10 = v8[1];
            if (v10 == v3)
            {
              if (*(v8 + 4) == v3)
              {
                goto LABEL_23;
              }
            }

            else if ((v10 & (*&v4 - 1)) != v6)
            {
              goto LABEL_22;
            }

            v8 = *v8;
            if (!v8)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v9 = v8[1];
          if (v9 == v3)
          {
            if (*(v8 + 4) == v3)
            {
LABEL_23:
              operator new();
            }
          }

          else
          {
            if (v9 >= *&v4)
            {
              v9 %= *&v4;
            }

            if (v9 != v6)
            {
              break;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

LABEL_22:
  operator new();
}

void webrtc::PrioritizedPacketQueue::PurgeOldPacketsAtPriorityLevel(webrtc::PrioritizedPacketQueue *this, unsigned int w1_0, Timestamp a3)
{
  v3 = w1_0;
  v4 = *(this + 1);
  if (w1_0 >= v4 >> 1)
  {
    goto LABEL_209;
  }

  v6 = (this + 16);
  if (v4)
  {
    v6 = *v6;
  }

  v139 = v6[w1_0];
  if ((v139 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
    return;
  }

  v7 = this + 48 * w1_0;
  v8 = *(v7 + 22);
  v9 = *(v7 + 23);
  v10 = (v8 + 8 * (*(v7 + 25) >> 9));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + 8 * (*(v7 + 25) & 0x1FFLL);
  }

  v137 = this + 416;
  v138 = this + 76;
  v132 = this + 48 * w1_0;
LABEL_12:
  if (v9 == v8)
  {
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v12 = *(v7 + 26) + *(v7 + 25);
    if (v11 == (*(v8 + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v12 & 0x1FF)))
    {
      return;
    }
  }

  v13 = *v11 + 48 * v3;
  v14 = *(v13 + 40);
  v141 = (v13 + 40);
  if (v14)
  {
    v130 = v10;
    v133 = *v11;
    v15 = (*v11 + 48 * v3);
    while (1)
    {
      v16 = v15[4];
      v17 = v15[1];
      v18 = v17[v16 / 0xAA];
      v19 = v18[3 * (v16 % 0xAA) + 1];
      v20 = a3.var0 == 0x7FFFFFFFFFFFFFFFLL || v19 == 0x8000000000000000;
      v21 = 0x8000000000000000;
      v22 = v20;
      if (a3.var0 != 0x8000000000000000 && v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = a3.var0 - v19;
      }

      if (v22)
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v21 <= v139)
      {
        v11 += 8;
        v10 = v130;
        if (v11 - *v130 == 4096)
        {
          v10 = v130 + 1;
          v11 = v130[1];
        }

        v3 = w1_0;
        v7 = v132;
LABEL_11:
        v8 = *(v7 + 22);
        v9 = *(v7 + 23);
        goto LABEL_12;
      }

      v24 = &v18[3 * (v16 % 0xAA)];
      v25 = *v24;
      v26 = v24[2];
      *v24 = 0;
      v27 = v16 + 1;
      v15[4] = v27;
      v15[5] = v14 - 1;
      if (v27 >= 0x154)
      {
        operator delete(*v17);
        v15[1] += 8;
        v15[4] -= 170;
        if (*(v25 + 185) != 1)
        {
LABEL_35:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }
      }

      else if (*(v25 + 185) != 1)
      {
        goto LABEL_35;
      }

      --*(v133 + 248);
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
LABEL_39:
        v136 = v136 & 0xFFFFFFFF00000000 | 0xE31;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/prioritized_packet_queue.cc");
      }

LABEL_40:
      --*(this + 18);
      if ((*(v25 + 128) & 1) == 0)
      {
        goto LABEL_210;
      }

      v35 = *(v25 + 120);
      if (v35 >= 5)
      {
        goto LABEL_209;
      }

      --*&v138[4 * v35];
      v36 = *(this + 12);
      v37 = 0x7FFFFFFFFFFFFFFFLL;
      if (v36 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = *(v25 + 24) + *(v25 + 2);
        v39 = 0x7FFFFFFFFFFFFFFFLL;
        if (v38 != 0x8000000000000000)
        {
          v39 = v36 - v38;
          if (v38 == 0x7FFFFFFFFFFFFFFFLL || v36 == 0x8000000000000000)
          {
            v39 = 0x8000000000000000;
          }
        }

        *(this + 12) = v39;
        v41 = *(this + 13);
        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_66;
        }

LABEL_50:
        if (v19 != 0x8000000000000000)
        {
          v42 = v19 == 0x7FFFFFFFFFFFFFFFLL || v41 == 0x8000000000000000;
          v43 = v42 ? 0x8000000000000000 : v41 - v19;
          v44 = *(this + 8);
          if (v43 != 0x7FFFFFFFFFFFFFFFLL && v44 != 0x8000000000000000)
          {
            v37 = v43 - v44;
            if (v44 == 0x7FFFFFFFFFFFFFFFLL || v43 == 0x8000000000000000)
            {
              v37 = 0x8000000000000000;
            }
          }
        }

        goto LABEL_66;
      }

      *(this + 12) = 0x7FFFFFFFFFFFFFFFLL;
      v41 = *(this + 13);
      if (v41 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_50;
      }

LABEL_66:
      v47 = *(this + 7);
      v48 = 0x7FFFFFFFFFFFFFFFLL;
      if (v47 != 0x7FFFFFFFFFFFFFFFLL && v37 != 0x8000000000000000)
      {
        v48 = v47 - v37;
        if (v37 == 0x7FFFFFFFFFFFFFFFLL || v47 == 0x8000000000000000)
        {
          v48 = 0x8000000000000000;
        }
      }

      *(this + 7) = v48;
      if ((*(v25 + 200) & 1) == 0)
      {
        *(v25 + 200) = 1;
      }

      *(v25 + 192) = v37;
      if (v26 == v137)
      {
        goto LABEL_211;
      }

      v51 = *v26;
      v50 = *(v26 + 1);
      *(v51 + 8) = v50;
      *v50 = v51;
      --*(this + 54);
      operator delete(v26);
      v52 = *(v25 + 176);
      if (v52 && atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v52 + 8))(v52);
      }

      v53 = *(v25 + 88);
      if (v53 && atomic_fetch_add((v53 + 24), 0xFFFFFFFF) == 1)
      {
        v54 = *(v53 + 16);
        *(v53 + 16) = 0;
        if (v54)
        {
          MEMORY[0x2743DA520](v54, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v53, 0x1010C40EE34DA14);
      }

      v55 = *(v25 + 56);
      if (v55)
      {
        *(v25 + 64) = v55;
        operator delete(v55);
      }

      MEMORY[0x2743DA540](v25, 0x1020C4060F6C936);
      v14 = *v141;
      if (!*v141)
      {
        v10 = v130;
        v7 = v132;
        v8 = *(v132 + 22);
        v9 = *(v132 + 23);
        break;
      }
    }
  }

  v57 = *(v7 + 25);
  v56 = *(v7 + 26);
  v58 = v57 + v56;
  v59 = (v8 + 8 * ((v57 + v56) >> 9));
  if (v9 == v8)
  {
    v62 = 0;
    v60 = (v8 + 8 * (v57 >> 9));
    v61 = *v60;
  }

  else
  {
    if ((*v59 + 8 * (v58 & 0x1FF)) == v11)
    {
      goto LABEL_209;
    }

    v60 = (v8 + 8 * (v57 >> 9));
    v61 = *v60;
    v62 = *v60 + 8 * (v57 & 0x1FF);
    if (v11 == v62)
    {
      v134 = 0;
      v142 = 0;
      v63 = (v8 + 8 * (v57 >> 9));
      v131 = 1;
      v64 = (v11 - v61) >> 3;
      if (v64 < 0)
      {
        goto LABEL_95;
      }

LABEL_137:
      v91 = v64 + 1;
      v67 = &v63[8 * ((v64 + 1) >> 9)];
      v68 = *v67;
      v69 = (*v67 + 8 * (v91 & 0x1FF));
      if (v60 == v63)
      {
        goto LABEL_138;
      }

      if (v61 == v11)
      {
        goto LABEL_105;
      }

LABEL_96:
      while (1)
      {
        v71 = (v69 - v68) >> 3;
        if ((v11 - v61) >> 3 < v71)
        {
          v71 = (v11 - v61) >> 3;
        }

        v11 -= 8 * v71;
        v69 -= 8 * v71;
        if (v71)
        {
          memmove(v69, v11, 8 * v71);
        }

        if (v11 == v61)
        {
          break;
        }

        v70 = *(v67 - 1);
        v67 -= 8;
        v68 = v70;
        v69 = v70 + 4096;
      }

      v68 = *v67;
      if ((*v67 + 4096) == v69)
      {
        v102 = *(v67 + 1);
        v67 += 8;
        v68 = v102;
        v69 = v102;
        v72 = v63 - 8;
        if (v63 - 8 != v60)
        {
          goto LABEL_106;
        }
      }

      else
      {
LABEL_105:
        v72 = v63 - 8;
        if (v63 - 8 != v60)
        {
LABEL_106:
          v7 = v132;
          do
          {
            while (1)
            {
              v73 = *v72;
              v74 = (*v72 + 4096);
              while (1)
              {
                v75 = (v69 - v68) >> 3;
                if ((v74 - v73) >> 3 < v75)
                {
                  v75 = (v74 - v73) >> 3;
                }

                v74 -= 8 * v75;
                v69 -= 8 * v75;
                if (v75)
                {
                  memmove(v69, v74, 8 * v75);
                }

                if (v74 == v73)
                {
                  break;
                }

                v76 = *(v67 - 1);
                v67 -= 8;
                v68 = v76;
                v69 = v76 + 4096;
              }

              v68 = *v67;
              if ((*v67 + 4096) == v69)
              {
                break;
              }

              v72 -= 8;
              if (v72 == v60)
              {
                goto LABEL_160;
              }
            }

            v77 = *(v67 + 1);
            v67 += 8;
            v68 = v77;
            v69 = v77;
            v72 -= 8;
          }

          while (v72 != v60);
LABEL_160:
          v103 = (*v72 + 4096);
          v92 = v134;
          if (v103 != v62)
          {
            for (i = v67 - 8; ; i -= 8)
            {
              v105 = (v69 - v68) >> 3;
              if (&v103[-v62] >> 3 < v105)
              {
                v105 = &v103[-v62] >> 3;
              }

              v103 -= 8 * v105;
              if (v105)
              {
                memmove(&v69[-8 * v105], v103, 8 * v105);
              }

              if (v103 == v62)
              {
                break;
              }

              v106 = *i;
              v68 = v106;
              v69 = v106 + 4096;
            }
          }

LABEL_168:
          if (!v92)
          {
            v107 = vaddq_s64(*(v7 + 200), xmmword_273B93620);
            *(v7 + 200) = v107;
            v108 = v107.i64[0];
            v109 = *(v7 + 22);
            if (v107.i64[0] >= 0x400uLL)
            {
              operator delete(*v109);
              v109 = (*(v7 + 22) + 8);
              *(v7 + 22) = v109;
              v108 = *(v7 + 25) - 512;
              *(v7 + 25) = v108;
            }

            v3 = w1_0;
            v110 = v131;
            v10 = &v109[v108 >> 9];
            if (*(v7 + 23) != v109)
            {
LABEL_172:
              v11 = *v10 + 8 * (v108 & 0x1FF);
              if (v110)
              {
                goto LABEL_11;
              }

LABEL_206:
              v125 = v142 + ((v11 - *v10) >> 3);
              if (v125 < 1)
              {
                v126 = 511 - v125;
                v10 -= v126 >> 9;
                v11 = *v10 + 8 * (~v126 & 0x1FF);
              }

              else
              {
                v10 += v125 >> 9;
                v11 = *v10 + 8 * (v125 & 0x1FF);
              }

              goto LABEL_11;
            }

LABEL_205:
            v11 = 0;
            if (v110)
            {
              goto LABEL_11;
            }

            goto LABEL_206;
          }

          goto LABEL_209;
        }
      }

      v7 = v132;
      goto LABEL_160;
    }
  }

  v78 = ((v11 - *v10) >> 3) + ((v10 - v60) << 6);
  v79 = v78 == (v62 - v61) >> 3;
  v142 = v78 - ((v62 - v61) >> 3);
  if (!v142)
  {
    v11 = v62;
    v63 = v60;
    goto LABEL_136;
  }

  if (v78 < 1)
  {
    v80 = 511 - v78;
    v63 = &v60[-8 * (v80 >> 9)];
    v61 = *v63;
    v11 = (*v63 + 8 * (~v80 & 0x1FFLL));
    if (v142 > (v56 - 1) >> 1)
    {
      goto LABEL_125;
    }

LABEL_136:
    v134 = v62 == 0;
    v131 = v79;
    v64 = (v11 - v61) >> 3;
    if ((v64 & 0x8000000000000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_95:
    v65 = 510 - v64;
    v66 = ~v65;
    v67 = &v63[-8 * (v65 >> 9)];
    v68 = *v67;
    v69 = (*v67 + 8 * (v66 & 0x1FF));
    if (v60 != v63)
    {
      goto LABEL_96;
    }

LABEL_138:
    v7 = v132;
    v92 = v134;
    if (v62 != v11)
    {
      for (j = v67 - 8; ; j -= 8)
      {
        v94 = (v69 - v68) >> 3;
        if (&v11[-v62] >> 3 < v94)
        {
          v94 = &v11[-v62] >> 3;
        }

        v11 -= 8 * v94;
        if (v94)
        {
          memmove(&v69[-8 * v94], v11, 8 * v94);
        }

        if (v11 == v62)
        {
          break;
        }

        v95 = *j;
        v68 = v95;
        v69 = v95 + 4096;
      }
    }

    goto LABEL_168;
  }

  v63 = &v60[8 * (v78 >> 9)];
  v61 = *v63;
  v11 = (*v63 + 8 * (v78 & 0x1FF));
  if (v142 <= (v56 - 1) >> 1)
  {
    goto LABEL_136;
  }

LABEL_125:
  v81 = (v11 - v61) >> 3;
  if (v81 < 0)
  {
    v96 = 510 - v81;
    v97 = ~v96;
    v83 = &v63[-8 * (v96 >> 9)];
    v84 = *v83;
    v85 = (*v83 + 8 * (v97 & 0x1FF));
    if (v9 == v8)
    {
      goto LABEL_149;
    }

LABEL_127:
    v86 = *v59 + 8 * (v58 & 0x1FF);
    if (v83 != v59)
    {
      goto LABEL_128;
    }

LABEL_150:
    if (v86 != v85)
    {
      for (k = (v63 + 8); ; ++k)
      {
        v99 = (v61 - v11 + 4096) >> 3;
        if ((v86 - v85) >> 3 < v99)
        {
          v99 = (v86 - v85) >> 3;
        }

        v100 = 8 * v99;
        if (v99)
        {
          memmove(v11, v85, 8 * v99);
        }

        v85 += v100;
        if (v85 == v86)
        {
          break;
        }

        v101 = *k;
        v61 = v101;
        v11 = v101;
      }

LABEL_196:
      v11 += v100;
      if (*(k - 1) + 4096 == v11)
      {
        v11 = *k;
      }
    }
  }

  else
  {
    v82 = v81 + 1;
    v83 = &v63[8 * ((v81 + 1) >> 9)];
    v84 = *v83;
    v85 = (*v83 + 8 * (v82 & 0x1FF));
    if (v9 != v8)
    {
      goto LABEL_127;
    }

LABEL_149:
    v86 = 0;
    if (v83 == v59)
    {
      goto LABEL_150;
    }

LABEL_128:
    v87 = (v84 + 4096);
    if ((v84 + 4096) != v85)
    {
      for (v63 += 8; ; v63 += 8)
      {
        v88 = (v61 - v11 + 4096) >> 3;
        if ((v87 - v85) >> 3 < v88)
        {
          v88 = (v87 - v85) >> 3;
        }

        v89 = 8 * v88;
        if (v88)
        {
          memmove(v11, v85, 8 * v88);
        }

        v85 += v89;
        if (v85 == v87)
        {
          break;
        }

        v90 = *v63;
        v61 = v90;
        v11 = v90;
      }

      v11 += v89;
      v61 = *(v63 - 1);
      if (v61 + 4096 == v11)
      {
        v61 = *v63;
        v11 = *v63;
      }

      else
      {
        v63 -= 8;
      }
    }

    v111 = v83 + 8;
    if (v111 != v59)
    {
      v135 = v86;
      do
      {
        while (1)
        {
          v112 = v59;
          v113 = 0;
          v114 = *v111;
          for (v63 += 8; ; v63 += 8)
          {
            v115 = (v61 - v11 + 4096) >> 3;
            if ((4096 - v113) >> 3 < v115)
            {
              v115 = (4096 - v113) >> 3;
            }

            v116 = 8 * v115;
            if (v115)
            {
              memmove(v11, (v114 + v113), 8 * v115);
            }

            v113 += v116;
            if (v113 == 4096)
            {
              break;
            }

            v117 = *v63;
            v61 = v117;
            v11 = v117;
          }

          v11 += v116;
          v61 = *(v63 - 1);
          if (v61 + 4096 != v11)
          {
            break;
          }

          v61 = *v63;
          v11 = *v63;
          v59 = v112;
          v111 += 8;
          if (v111 == v112)
          {
            goto LABEL_187;
          }
        }

        v63 -= 8;
        v59 = v112;
        v111 += 8;
      }

      while (v111 != v112);
LABEL_187:
      v86 = v135;
    }

    v118 = *v59;
    if (*v59 != v86)
    {
      for (k = (v63 + 8); ; ++k)
      {
        v119 = (v61 - v11 + 4096) >> 3;
        if ((v86 - v118) >> 3 < v119)
        {
          v119 = (v86 - v118) >> 3;
        }

        v100 = 8 * v119;
        if (v119)
        {
          memmove(v11, v118, 8 * v119);
        }

        v118 += v100;
        if (v118 == v86)
        {
          break;
        }

        v120 = *k;
        v61 = v120;
        v11 = v120;
      }

      goto LABEL_196;
    }
  }

  if (v11)
  {
    v7 = v132;
    v121 = *(v132 + 22);
    v122 = *(v132 + 23);
    v108 = *(v132 + 25);
    v123 = *(v132 + 26);
    *(v132 + 26) = v123 - 1;
    v124 = ((v122 - v121) << 6) - 1;
    if (v122 == v121)
    {
      v124 = 0;
    }

    if (v124 - (v123 + v108) + 1 >= 0x400)
    {
      operator delete(*(v122 - 8));
      v110 = 0;
      v121 = *(v132 + 22);
      *(v132 + 23) -= 8;
      v108 = *(v132 + 25);
    }

    else
    {
      v110 = 0;
    }

    v3 = w1_0;
    v10 = (v121 + 8 * (v108 >> 9));
    if (*(v132 + 23) != v121)
    {
      goto LABEL_172;
    }

    goto LABEL_205;
  }

LABEL_209:
  __break(1u);
LABEL_210:
  std::__throw_bad_optional_access[abi:sn200100]();
LABEL_211:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/prioritized_packet_queue.cc", 413, "packet.enqueue_time_iterator != enqueue_times_.end()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v31, v32, v33, v34, v128);
  webrtc::PrioritizedPacketQueue::UpdateAverageQueueTime(v127, v143);
}

uint64_t webrtc::PrioritizedPacketQueue::UpdateAverageQueueTime(uint64_t this, Timestamp a2)
{
  var0 = a2.var0;
  v3 = (this + 104);
  v2 = *(this + 104);
  v4 = a2.var0 - v2;
  if (a2.var0 < v2)
  {
    webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&var0, a2.var0, &v25);
    webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v23, &v25);
    v24 = &v22;
    webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v25.__r_.__value_.__l.__data_);
    webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(v3, v16, &v28);
    webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v25, &v28);
    v26 = &v23;
    webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v28.__r_.__value_.__l.__data_);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/prioritized_packet_queue.cc", 315, "now >= last_update_time_", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal>(char const*,int,char const*,webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal const&)::t, v17, v18, v19, v20, v26);
    return webrtc::PrioritizedPacketQueue::Pop(v21);
  }

  else if (a2.var0 != v2)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x8000000000000000;
    if (v2 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 == 0x8000000000000000)
    {
      v4 = 0x8000000000000000;
    }

    if (v2 == 0x8000000000000000)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v4;
    }

    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*(this + 112) == 1)
    {
      v9 = *(this + 64);
      if (v8 != 0x8000000000000000 && v9 != 0x8000000000000000)
      {
        v6 = v9 + v8;
      }

      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v6;
      }

      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = v11;
      }

      *(this + 64) = v5;
    }

    else
    {
      v12 = *(this + 56);
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v8 * *(this + 72);
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v5 = 0x8000000000000000;
          v14 = v13 == 0x8000000000000000 || v12 == 0x8000000000000000;
          v15 = v13 + v12;
          if (!v14)
          {
            v5 = v15;
          }
        }
      }

      *(this + 56) = v5;
    }

    *v3 = a2.var0;
  }

  return this;
}

void webrtc::PrioritizedPacketQueue::Pop(webrtc::PrioritizedPacketQueue *this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  if (!*(this + 18))
  {
    v17 = 0;
    goto LABEL_60;
  }

  v8 = this + 168;
  v9 = *(this + 102);
  v10 = (this + 48 * v9 + 168);
  if (!v10[5])
  {
    goto LABEL_63;
  }

  v11 = *(*(v10[1] + ((v10[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10[4] & 0x1FFLL));
  v12 = (v11 + 48 * v9);
  v13 = v12[5];
  if (!v13)
  {
    goto LABEL_63;
  }

  v14 = v12[1];
  v15 = v12[4];
  v16 = (v14[v15 / 0xAA] + 24 * (v15 % 0xAA));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  *v16 = 0;
  v12[4] = ++v15;
  v12[5] = v13 - 1;
  if (v15 >= 0x154)
  {
    operator delete(*v14);
    v12[1] += 8;
    v12[4] -= 170;
    if (*(v17 + 185) != 1)
    {
LABEL_6:
      --*(this + 18);
      if (*(v17 + 128))
      {
        goto LABEL_7;
      }

LABEL_58:
      std::__throw_bad_optional_access[abi:sn200100]();
      goto LABEL_59;
    }
  }

  else if (*(v17 + 185) != 1)
  {
    goto LABEL_6;
  }

  --*(v11 + 248);
  --*(this + 18);
  if ((*(v17 + 128) & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_7:
  v20 = *(v17 + 120);
  if (v20 >= 5)
  {
    goto LABEL_63;
  }

  --*(this + v20 + 19);
  v21 = *(this + 12);
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(this + 12) = 0x7FFFFFFFFFFFFFFFLL;
    v26 = *(this + 13);
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    goto LABEL_16;
  }

  v23 = *(v17 + 24) + *(v17 + 2);
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  if (v23 != 0x8000000000000000)
  {
    v24 = v21 - v23;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL || v21 == 0x8000000000000000)
    {
      v24 = 0x8000000000000000;
    }
  }

  *(this + 12) = v24;
  v26 = *(this + 13);
  if (v26 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_16:
    if (v18 != 0x8000000000000000)
    {
      v27 = v18 == 0x7FFFFFFFFFFFFFFFLL || v26 == 0x8000000000000000;
      v28 = v27 ? 0x8000000000000000 : v26 - v18;
      v29 = *(this + 8);
      if (v28 != 0x7FFFFFFFFFFFFFFFLL && v29 != 0x8000000000000000)
      {
        v22 = 0x8000000000000000;
        if (v29 != 0x7FFFFFFFFFFFFFFFLL && v28 != 0x8000000000000000)
        {
          v22 = v28 - v29;
        }
      }
    }
  }

LABEL_32:
  v32 = *(this + 7);
  v33 = 0x7FFFFFFFFFFFFFFFLL;
  if (v32 != 0x7FFFFFFFFFFFFFFFLL && v22 != 0x8000000000000000)
  {
    v33 = v32 - v22;
    if (v22 == 0x7FFFFFFFFFFFFFFFLL || v32 == 0x8000000000000000)
    {
      v33 = 0x8000000000000000;
    }
  }

  *(this + 7) = v33;
  if ((*(v17 + 200) & 1) == 0)
  {
    *(v17 + 200) = 1;
  }

  *(v17 + 192) = v22;
  if (v19 == (this + 416))
  {
    goto LABEL_64;
  }

  v36 = *v19;
  v35 = v19[1];
  *(v36 + 8) = v35;
  *v35 = v36;
  --*(this + 54);
  operator delete(v19);
  v37 = *(this + 102);
  v38 = &v8[48 * v37];
  v39 = *(v38 + 5);
  if (v39)
  {
    v40 = *(v38 + 1);
    v41 = *(v38 + 4);
    if (*(v40 + ((v41 >> 6) & 0x3FFFFFFFFFFFFF8)))
    {
      v42 = v41 + 1;
      *(v38 + 4) = v42;
      *(v38 + 5) = v39 - 1;
      if (v42 >= 0x400)
      {
        operator delete(*v40);
        *(v38 + 1) += 8;
        *(v38 + 4) -= 512;
        v37 = *(this + 102);
      }

      if (*(v11 + 48 * v37 + 40))
      {
        v43 = &v8[48 * v37];
        v44 = *(v43 + 1);
        v45 = *(v43 + 2);
        if (v45 == v44)
        {
          v46 = 0;
        }

        else
        {
          v46 = ((v45 - v44) << 6) - 1;
        }

        v47 = *(v43 + 5);
        if (v46 == v47 + *(v43 + 4))
        {
          std::deque<webrtc::PrioritizedPacketQueue::StreamQueue *>::__add_back_capacity(v43);
          v47 = *(v43 + 5);
          v44 = *(v43 + 1);
          v45 = *(v43 + 2);
        }

        if (v45 != v44)
        {
          v48 = *(v43 + 4) + v47;
          v49 = *(v44 + ((v48 >> 6) & 0x3FFFFFFFFFFFFF8));
          if (v49)
          {
            *(v49 + 8 * (v48 & 0x1FF)) = v11;
            *(v43 + 5) = v47 + 1;
LABEL_60:
            *a6 = v17;
            return;
          }
        }

        goto LABEL_63;
      }

LABEL_59:
      webrtc::PrioritizedPacketQueue::MaybeUpdateTopPrioLevel(this);
      goto LABEL_60;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/prioritized_packet_queue.cc", 413, "packet.enqueue_time_iterator != enqueue_times_.end()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a2, a3, a4, a5, v51);
  webrtc::PrioritizedPacketQueue::MaybeUpdateTopPrioLevel(v50);
}

void webrtc::PrioritizedPacketQueue::MaybeUpdateTopPrioLevel(webrtc::PrioritizedPacketQueue *this)
{
  v2 = *(this + 102);
  if (v2 == -1 || !*(this + 6 * v2 + 26))
  {
    v3.var0 = *(this + 13);
    webrtc::PrioritizedPacketQueue::PurgeOldPacketsAtPriorityLevel(this, 0, v3);
    v4 = 0;
    if (*(this + 26) || (v5.var0 = *(this + 13), v4 = 1, webrtc::PrioritizedPacketQueue::PurgeOldPacketsAtPriorityLevel(this, 1u, v5), *(this + 32)) || (v6.var0 = *(this + 13), v4 = 2, webrtc::PrioritizedPacketQueue::PurgeOldPacketsAtPriorityLevel(this, 2u, v6), *(this + 38)) || (v7.var0 = *(this + 13), v4 = 3, webrtc::PrioritizedPacketQueue::PurgeOldPacketsAtPriorityLevel(this, 3u, v7), *(this + 44)) || (v8.var0 = *(this + 13), v4 = 4, webrtc::PrioritizedPacketQueue::PurgeOldPacketsAtPriorityLevel(this, 4u, v8), *(this + 50)))
    {
      *(this + 102) = v4;
    }

    if (!*(this + 18))
    {
      *(this + 102) = -1;
    }
  }
}

void webrtc::PrioritizedPacketQueue::RemovePacketsForSsrc(webrtc::PrioritizedPacketQueue *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 17);
  if (!v9)
  {
    goto LABEL_135;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = a2;
    if (v9 <= a2)
    {
      v11 = a2 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & a2;
  }

  v12 = *(*(this + 16) + 8 * v11);
  if (!v12)
  {
    goto LABEL_135;
  }

  v13 = *v12;
  if (!v13)
  {
    goto LABEL_135;
  }

  if (v10.u32[0] < 2uLL)
  {
    v14 = v9 - 1;
    while (1)
    {
      v16 = v13[1];
      if (v16 == a2)
      {
        if (*(v13 + 4) == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v16 & v14) != v11)
      {
        goto LABEL_135;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_135;
      }
    }
  }

  while (1)
  {
    v15 = v13[1];
    if (v15 != a2)
    {
      if (v15 >= v9)
      {
        v15 %= v9;
      }

      if (v15 != v11)
      {
        goto LABEL_135;
      }

      goto LABEL_11;
    }

    if (*(v13 + 4) == a2)
    {
      break;
    }

LABEL_11:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_135;
    }
  }

LABEL_22:
  v17 = 0;
  v18 = v13[3];
  *__p = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v19 = *(v18 + 16);
  *v105 = *v18;
  v106 = v19;
  v20 = *(v18 + 48);
  v107 = *(v18 + 32);
  *v108 = v20;
  v21 = *(v18 + 80);
  v109 = *(v18 + 64);
  v110 = v21;
  v22 = *(v18 + 112);
  *v111 = *(v18 + 96);
  v112 = v22;
  v23 = *(v18 + 144);
  v113 = *(v18 + 128);
  *v114 = v23;
  v24 = *(v18 + 176);
  v115 = *(v18 + 160);
  v116 = v24;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  v25 = *(v18 + 208);
  v26 = *__p;
  v27 = v118;
  *__p = *(v18 + 192);
  v118 = v25;
  v119 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  v102 = this + 416;
  v99 = v18;
  v100 = this + 168;
  *(v18 + 192) = v26;
  *(v18 + 208) = v27;
  v28 = v119;
  v119 = *(v18 + 224);
  *(v18 + 224) = v28;
  *(v18 + 248) = 0;
  while (2)
  {
    v36 = &v105[6 * v17];
    v37 = v36[5];
    if (!v37)
    {
      goto LABEL_25;
    }

    v101 = v17;
    v38 = v36[1];
    v39 = v36[4];
    v40 = v37 - 1;
    while (2)
    {
      v41 = (v38[v39 / 0xAA] + 24 * (v39 % 0xAA));
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      *v41 = 0;
      v36[4] = (v39 + 1);
      v36[5] = v40;
      if (v39 + 1 >= 0x154)
      {
        v45 = *v38++;
        operator delete(v45);
        v36[1] = v38;
        v39 -= 169;
        v36[4] = v39;
      }

      else
      {
        ++v39;
      }

      --*(this + 18);
      if ((*(v42 + 128) & 1) == 0)
      {
        goto LABEL_137;
      }

      v46 = *(v42 + 120);
      if (v46 >= 5)
      {
        goto LABEL_136;
      }

      --*(this + v46 + 19);
      v47 = *(this + 12);
      v48 = 0x7FFFFFFFFFFFFFFFLL;
      if (v47 == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(this + 12) = 0x7FFFFFFFFFFFFFFFLL;
        v52 = *(this + 13);
        if (v52 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v49 = *(v42 + 24) + *(v42 + 2);
        v50 = 0x7FFFFFFFFFFFFFFFLL;
        if (v49 != 0x8000000000000000)
        {
          v50 = v47 - v49;
          if (v49 == 0x7FFFFFFFFFFFFFFFLL || v47 == 0x8000000000000000)
          {
            v50 = 0x8000000000000000;
          }
        }

        *(this + 12) = v50;
        v52 = *(this + 13);
        if (v52 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_42:
          if (v43 != 0x8000000000000000)
          {
            v53 = v43 == 0x7FFFFFFFFFFFFFFFLL || v52 == 0x8000000000000000;
            v54 = v53 ? 0x8000000000000000 : v52 - v43;
            v55 = *(this + 8);
            if (v54 != 0x7FFFFFFFFFFFFFFFLL && v55 != 0x8000000000000000)
            {
              v48 = v54 - v55;
              if (v55 == 0x7FFFFFFFFFFFFFFFLL || v54 == 0x8000000000000000)
              {
                v48 = 0x8000000000000000;
              }
            }
          }
        }
      }

      v58 = *(this + 7);
      v59 = 0x7FFFFFFFFFFFFFFFLL;
      if (v58 != 0x7FFFFFFFFFFFFFFFLL && v48 != 0x8000000000000000)
      {
        v59 = v58 - v48;
        if (v48 == 0x7FFFFFFFFFFFFFFFLL || v58 == 0x8000000000000000)
        {
          v59 = 0x8000000000000000;
        }
      }

      *(this + 7) = v59;
      if ((*(v42 + 200) & 1) == 0)
      {
        *(v42 + 200) = 1;
      }

      *(v42 + 192) = v48;
      if (v44 == v102)
      {
        goto LABEL_138;
      }

      v62 = *v44;
      v61 = *(v44 + 1);
      *(v62 + 8) = v61;
      *v61 = v62;
      --*(this + 54);
      operator delete(v44);
      v63 = *(v42 + 176);
      if (v63 && atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v63 + 8))(v63);
      }

      v64 = *(v42 + 88);
      if (v64 && atomic_fetch_add((v64 + 24), 0xFFFFFFFF) == 1)
      {
        v65 = *(v64 + 16);
        *(v64 + 16) = 0;
        if (v65)
        {
          MEMORY[0x2743DA520](v65, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v64, 0x1010C40EE34DA14);
      }

      v66 = *(v42 + 56);
      if (v66)
      {
        *(v42 + 64) = v66;
        operator delete(v66);
      }

      MEMORY[0x2743DA540](v42, 0x1020C4060F6C936);
      if (--v40 != -1)
      {
        continue;
      }

      break;
    }

    v17 = v101;
    v67 = &v100[48 * v101];
    v68 = *(v67 + 5);
    if (v68 == 1)
    {
      v69 = *(v67 + 1);
      v70 = *(v67 + 4);
      if (!*(v69 + ((v70 >> 6) & 0x3FFFFFFFFFFFFF8)))
      {
LABEL_136:
        __break(1u);
LABEL_137:
        std::__throw_bad_optional_access[abi:sn200100]();
LABEL_138:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/prioritized_packet_queue.cc", 413, "packet.enqueue_time_iterator != enqueue_times_.end()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v99);
        std::deque<webrtc::PrioritizedPacketQueue::StreamQueue *>::__add_back_capacity(v98);
        return;
      }

      v71 = v70 + 1;
      *(v67 + 4) = v71;
      *(v67 + 5) = 0;
      if (v71 >= 0x400)
      {
        operator delete(*v69);
        *(v67 + 1) += 8;
        *(v67 + 4) -= 512;
      }
    }

    else
    {
      v104 = 0u;
      memset(v103, 0, sizeof(v103));
      v72 = *(v67 + 4);
      v73 = *(v67 + 8);
      if (vmovn_s64(vceqq_s64(vdupq_laneq_s64(v73, 1), v73)).u8[0])
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v74 = (v73.i64[0] + 8 * (v72 >> 9));
        v75 = *v74;
        v76 = &(*v74)[8 * (*(v67 + 4) & 0x1FFLL)];
        v77 = *(v73.i64[0] + (((v72 + v68) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v72 + v68) & 0x1FF);
        v29 = 0;
        if (v76 == v77)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
        }

        else
        {
          v78 = 0;
          v33 = 0;
          v32 = 0;
          do
          {
            v79 = *v76;
            if (*v76 != v99)
            {
              v80 = ((v32 - v33) << 6) - 1;
              if (v32 == v33)
              {
                v80 = 0;
              }

              if (v80 == v78 + v29)
              {
                std::deque<webrtc::PrioritizedPacketQueue::StreamQueue *>::__add_back_capacity(v103);
                v29 = *(&v104 + 1);
                v33 = *(&v103[0] + 1);
                v32 = *&v103[1];
              }

              if (v32 == v33)
              {
                goto LABEL_136;
              }

              v78 = v104;
              v81 = *(v33 + (((v104 + v29) >> 6) & 0x3FFFFFFFFFFFFF8));
              if (!v81)
              {
                goto LABEL_136;
              }

              *(v81 + 8 * ((v104 + v29++) & 0x1FF)) = v79;
              *(&v104 + 1) = v29;
              v75 = *v74;
            }

            if (++v76 - v75 == 4096)
            {
              v82 = v74[1];
              ++v74;
              v75 = v82;
              v76 = v82;
            }
          }

          while (v76 != v77);
          v73 = *(v67 + 8);
          v34 = *&v103[0];
          v31 = *(&v103[1] + 1);
          v30 = v104;
          v72 = *(v67 + 4);
          v68 = *(v67 + 5);
        }
      }

      *&v103[0] = *v67;
      *v67 = v34;
      *(v67 + 1) = v33;
      *(v103 + 8) = v73;
      v35 = *(v67 + 3);
      *(v67 + 2) = v32;
      *(v67 + 3) = v31;
      *(&v103[1] + 1) = v35;
      *&v104 = v72;
      *(v67 + 4) = v30;
      *(v67 + 5) = v29;
      *(&v104 + 1) = v68;
      std::deque<long long>::~deque[abi:sn200100](v103);
    }

LABEL_25:
    if (++v17 != 5)
    {
      continue;
    }

    break;
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(__p);
  v83 = __p[1];
  v84 = v118;
  if (__p[1] != v118)
  {
    do
    {
      v85 = *v83++;
      operator delete(v85);
    }

    while (v83 != v84);
    v83 = __p[1];
    v84 = v118;
  }

  if (v84 != v83)
  {
    *&v118 = v84 + ((v83 - v84 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(v114);
  v86 = v114[1];
  v87 = v115;
  if (v114[1] != v115)
  {
    do
    {
      v88 = *v86++;
      operator delete(v88);
    }

    while (v86 != v87);
    v86 = v114[1];
    v87 = v115;
  }

  if (v87 != v86)
  {
    *&v115 = v87 + ((v86 - v87 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v114[0])
  {
    operator delete(v114[0]);
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(v111);
  v89 = v111[1];
  v90 = v112;
  if (v111[1] != v112)
  {
    do
    {
      v91 = *v89++;
      operator delete(v91);
    }

    while (v89 != v90);
    v89 = v111[1];
    v90 = v112;
  }

  if (v90 != v89)
  {
    *&v112 = v90 + ((v89 - v90 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v111[0])
  {
    operator delete(v111[0]);
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(v108);
  v92 = v108[1];
  v93 = v109;
  if (v108[1] != v109)
  {
    do
    {
      v94 = *v92++;
      operator delete(v94);
    }

    while (v92 != v93);
    v92 = v108[1];
    v93 = v109;
  }

  if (v93 != v92)
  {
    *&v109 = v93 + ((v92 - v93 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v108[0])
  {
    operator delete(v108[0]);
  }

  std::deque<webrtc::PrioritizedPacketQueue::QueuedPacket>::clear(v105);
  v95 = v105[1];
  v96 = v106;
  if (v105[1] != v106)
  {
    do
    {
      v97 = *v95++;
      operator delete(v97);
    }

    while (v95 != v96);
    v95 = v105[1];
    v96 = v106;
  }

  if (v96 != v95)
  {
    *&v106 = v96 + ((v95 - v96 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v105[0])
  {
    operator delete(v105[0]);
  }

LABEL_135:
  webrtc::PrioritizedPacketQueue::MaybeUpdateTopPrioLevel(this);
}

void *std::deque<webrtc::PrioritizedPacketQueue::StreamQueue *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
  return std::__split_buffer<webrtc::BufferT<unsigned char,false> **,std::allocator<webrtc::BufferT<unsigned char,false> **>>::emplace_back<webrtc::BufferT<unsigned char,false> **&>(a1, &v10);
}

webrtc::webrtc_checks_impl *webrtc::PriorityValue::PriorityValue(webrtc::webrtc_checks_impl *result, unsigned int a2)
{
  if (a2 >= 4)
  {
    webrtc::webrtc_checks_impl::UnreachableCodeReached(result);
  }

  *result = 0x400020001000080uLL >> (16 * a2);
  return result;
}

unint64_t webrtc::ProbeBitrateEstimator::HandleProbeAndEstimateBitrate(uint64_t a1, uint64_t *x1_0)
{
  v4 = *(x1_0 + 8);
  v6 = (a1 + 8);
  v5 = *a1;
  if (*a1 != a1 + 8)
  {
    v7 = x1_0[9];
    do
    {
      v9 = v5[9];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }

      if (v9 != 0x8000000000000000)
      {
        v9 += 1000000;
      }

      if (v9 >= v7)
      {
LABEL_16:
        v13 = v5[1];
        if (v13)
        {
          do
          {
            v12 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v12 = v5[2];
            v25 = *v12 == v5;
            v5 = v12;
          }

          while (!v25);
        }
      }

      else
      {
        v10 = v5[1];
        v11 = v5;
        if (v10)
        {
          do
          {
            v12 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v12 = v11[2];
            v25 = *v12 == v11;
            v11 = v12;
          }

          while (!v25);
        }

        if (*a1 == v5)
        {
          *a1 = v12;
        }

        v8 = *(a1 + 8);
        --*(a1 + 16);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v8, v5);
        operator delete(v5);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }

  v14 = *v6;
  if (!*v6)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v15 = v14;
      v16 = *(v14 + 32);
      if (v4 >= v16)
      {
        break;
      }

      v14 = *v15;
      if (!*v15)
      {
        goto LABEL_28;
      }
    }

    if (v16 >= v4)
    {
      break;
    }

    v14 = *(v15 + 8);
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  v17 = *x1_0;
  v18 = *(v15 + 48);
  if (*x1_0 < v18)
  {
    *(v15 + 48) = v17;
    v18 = v17;
    v17 = *x1_0;
    v19 = *(v15 + 56);
    if (*x1_0 <= v19)
    {
LABEL_31:
      v20 = x1_0[9];
      v21 = *(v15 + 64);
      if (v20 >= v21)
      {
        goto LABEL_32;
      }

      goto LABEL_94;
    }
  }

  else
  {
    v19 = *(v15 + 56);
    if (v17 <= v19)
    {
      goto LABEL_31;
    }
  }

  *(v15 + 56) = v17;
  *(v15 + 80) = x1_0[1];
  v19 = v17;
  v20 = x1_0[9];
  v21 = *(v15 + 64);
  if (v20 >= v21)
  {
LABEL_32:
    v22 = *(v15 + 72);
    if (v20 <= v22)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_94:
  *(v15 + 64) = v20;
  *(v15 + 88) = x1_0[1];
  v21 = v20;
  v20 = x1_0[9];
  v22 = *(v15 + 72);
  if (v20 > v22)
  {
LABEL_33:
    *(v15 + 72) = v20;
    v22 = v20;
  }

LABEL_34:
  v23 = x1_0[1];
  v24 = *(v15 + 96);
  v25 = v23 == 0x8000000000000000 || v24 == 0x8000000000000000;
  v26 = v24 + v23;
  if (v25)
  {
    v26 = 0x8000000000000000;
  }

  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = v26;
  }

  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v15 + 96) = v27;
  v28 = *(v15 + 40) + 1;
  *(v15 + 40) = v28;
  v29 = llround(*(x1_0 + 10) * 0.8);
  if (v28 < (*(x1_0 + 9) * 0.8) || v27 < v29)
  {
    goto LABEL_101;
  }

  v31 = 0x7FFFFFFFFFFFFFFFLL;
  if (v18 != 0x8000000000000000 && v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v19 == 0x8000000000000000 || v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = 0x8000000000000000;
    }

    else
    {
      v31 = v19 - v18;
    }
  }

  v33 = 0x7FFFFFFFFFFFFFFFLL;
  if (v21 == 0x8000000000000000 || v22 == 0x7FFFFFFFFFFFFFFFLL || (v22 != 0x8000000000000000 ? (v34 = v21 == 0x7FFFFFFFFFFFFFFFLL) : (v34 = 1), !v34 ? (v33 = v22 - v21) : (v33 = 0x8000000000000000), (v31 - 1000001) < 0xFFFFFFFFFFF0BDC0 || (v33 - 1000001) < 0xFFFFFFFFFFF0BDC0))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_99;
    }

    webrtc::ToString(v31, v48, &v111);
    webrtc::ToString(v33, v114, v109);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/probe_bitrate_estimator.cc");
    if (v110 < 0)
    {
      operator delete(v109[0]);
      if ((SHIBYTE(v113) & 0x80000000) == 0)
      {
LABEL_99:
        if (*(a1 + 24))
        {
          goto LABEL_100;
        }

        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v113) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    operator delete(v111);
    if (*(a1 + 24))
    {
LABEL_100:
      operator new();
    }

LABEL_101:
    v56 = 0;
    v57 = 0;
    return v57 | v56;
  }

  v35 = *(v15 + 80);
  v36 = *(v15 + 88);
  v37 = v27 - v35;
  if (v35 == 0x7FFFFFFFFFFFFFFFLL || v27 == 0x8000000000000000)
  {
    v37 = 0x8000000000000000;
  }

  if (v35 == 0x8000000000000000)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v39 = v37;
  }

  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v40 = v39;
  }

  v41 = 8000000 * v40 / v31;
  v42 = v27 - v36;
  if (v36 == 0x7FFFFFFFFFFFFFFFLL || v27 == 0x8000000000000000)
  {
    v42 = 0x8000000000000000;
  }

  if (v36 == 0x8000000000000000)
  {
    v44 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v44 = v42;
  }

  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v45 = v44;
  }

  v46 = 8000000 * v45 / v33;
  if (v46 == 0x8000000000000000)
  {
    v47 = -INFINITY;
    if (v41 != 0x8000000000000000)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  if (v46 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = v46;
    if (v41 != 0x8000000000000000)
    {
      goto LABEL_107;
    }

LABEL_110:
    v59 = -INFINITY;
LABEL_111:
    v60 = v47 / v59;
    v61 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    if (v60 > 2.0)
    {
      goto LABEL_112;
    }

    goto LABEL_124;
  }

  v47 = INFINITY;
  if (v41 == 0x8000000000000000)
  {
    goto LABEL_110;
  }

LABEL_107:
  if (v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = INFINITY;
    goto LABEL_111;
  }

  v63 = v47 / v41;
  v61 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
  if (v63 > 2.0)
  {
LABEL_112:
    if (v61)
    {
      goto LABEL_121;
    }

    v111 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/probe_bitrate_estimator.cc";
    v112 = 1145;
    v113 = &v89;
    v90[0] = "Probing unsuccessful, receive/send ratio too high [cluster id: ";
    v90[1] = &v111;
    v91[0] = v4;
    v91[1] = v90;
    v92[0] = "] [send: ";
    v92[1] = v91;
    webrtc::ToString(v40, v109);
    v93[0] = v109;
    v93[1] = v92;
    v94[0] = " / ";
    v94[1] = v93;
    webrtc::ToString(v31, v115, v87);
    v95[0] = v87;
    v95[1] = v94;
    v96[0] = " = ";
    v96[1] = v95;
    webrtc::ToString(v41, v85);
    v97 = v85;
    v98 = v96;
    v99 = "] [receive: ";
    v100 = &v97;
    webrtc::ToString(v45, v83);
    v101 = v83;
    v102 = &v99;
    v103 = " / ";
    v104 = &v101;
    webrtc::ToString(v33, v116, v81);
    v105 = v81;
    v106 = &v103;
    v107 = " = ";
    v108 = &v105;
    webrtc::ToString(v46, v79);
    webrtc::ToString(v46, &v76);
    webrtc::ToString(v41, __p);
    v62 = *(*(*(*(*(*(*(*(v108[1][1] + 1) + 8) + 8) + 8) + 8) + 8) + 8) + 8);
    webrtc::webrtc_logging_impl::Log( webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t,  *v62,  *v62[1],  *(v62[1][1] + 1),  *v62[1][1],  " ] [ratio: ",  0x4000000000000000,  ")]",  *v62[1][1]);
    if (v75 < 0)
    {
      operator delete(__p[0]);
      if ((v78 & 0x80000000) == 0)
      {
LABEL_115:
        if ((v80 & 0x80000000) == 0)
        {
          goto LABEL_116;
        }

        goto LABEL_144;
      }
    }

    else if ((v78 & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

    operator delete(v76);
    if ((v80 & 0x80000000) == 0)
    {
LABEL_116:
      if ((v82 & 0x80000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_145;
    }

LABEL_144:
    operator delete(v79[0]);
    if ((v82 & 0x80000000) == 0)
    {
LABEL_117:
      if ((v84 & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_146;
    }

LABEL_145:
    operator delete(v81[0]);
    if ((v84 & 0x80000000) == 0)
    {
LABEL_118:
      if ((v86 & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_147;
    }

LABEL_146:
    operator delete(v83[0]);
    if ((v86 & 0x80000000) == 0)
    {
LABEL_119:
      if ((v88 & 0x80000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_148;
    }

LABEL_147:
    operator delete(v85[0]);
    if ((v88 & 0x80000000) == 0)
    {
LABEL_120:
      if ((v110 & 0x80000000) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_149;
    }

LABEL_148:
    operator delete(v87[0]);
    if ((v110 & 0x80000000) == 0)
    {
LABEL_121:
      if (*(a1 + 24))
      {
        goto LABEL_122;
      }

      goto LABEL_101;
    }

LABEL_149:
    operator delete(v109[0]);
    if (*(a1 + 24))
    {
LABEL_122:
      operator new();
    }

    goto LABEL_101;
  }

LABEL_124:
  if ((v61 & 1) == 0)
  {
    v111 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/probe_bitrate_estimator.cc";
    v112 = 1313;
    v113 = v96;
    v97 = "Probing successful [cluster id: ";
    v98 = &v111;
    v99 = v4;
    v100 = &v97;
    v101 = "] [send: ";
    v102 = &v99;
    webrtc::ToString(v40, v109);
    v103 = v109;
    v104 = &v101;
    v105 = " / ";
    v106 = &v103;
    webrtc::ToString(v31, v117, v87);
    v107 = v87;
    v108 = &v105;
    __p[0] = " = ";
    __p[1] = &v107;
    webrtc::ToString(v41, v85);
    v76 = v85;
    v77 = __p;
    webrtc::ToString(v45, v83);
    webrtc::ToString(v33, v118, v81);
    webrtc::ToString(v46, v79);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v64, v65, v66, v67, v68, v69, v70, **(*(*(*(*(*(v77[1] + 1) + 8) + 8) + 8) + 8) + 8));
    if (v80 < 0)
    {
      operator delete(v79[0]);
      if ((v82 & 0x80000000) == 0)
      {
LABEL_127:
        if ((v84 & 0x80000000) == 0)
        {
          goto LABEL_128;
        }

        goto LABEL_153;
      }
    }

    else if ((v82 & 0x80000000) == 0)
    {
      goto LABEL_127;
    }

    operator delete(v81[0]);
    if ((v84 & 0x80000000) == 0)
    {
LABEL_128:
      if ((v86 & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_154;
    }

LABEL_153:
    operator delete(v83[0]);
    if ((v86 & 0x80000000) == 0)
    {
LABEL_129:
      if ((v88 & 0x80000000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_155;
    }

LABEL_154:
    operator delete(v85[0]);
    if ((v88 & 0x80000000) == 0)
    {
LABEL_130:
      if ((v110 & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

LABEL_156:
      operator delete(v109[0]);
      goto LABEL_131;
    }

LABEL_155:
    operator delete(v87[0]);
    if ((v110 & 0x80000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_156;
  }

LABEL_131:
  if (v46 >= v41)
  {
    v71 = 8000000 * v40 / v31;
  }

  else
  {
    v71 = 8000000 * v45 / v33;
  }

  v72 = llround(v46 * 0.949999988);
  if (v46 >= llround(v41 * 0.899999976))
  {
    v73 = v71;
  }

  else
  {
    v73 = v72;
  }

  if (*(a1 + 24))
  {
    operator new();
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    *(a1 + 40) = 1;
  }

  *(a1 + 32) = v73;
  v57 = v73 & 0xFFFFFFFFFFFFFF00;
  v56 = v73;
  return v57 | v56;
}

void webrtc::ProbeControllerConfig::~ProbeControllerConfig(webrtc::ProbeControllerConfig *this)
{
  *(this + 225) = &unk_288293910;
  if (*(this + 1855) < 0)
  {
    operator delete(*(this + 229));
  }

  v2 = *(this + 226);
  if (v2)
  {
    *(this + 227) = v2;
    operator delete(v2);
  }

  *(this + 216) = &unk_288293910;
  if (*(this + 1783) < 0)
  {
    operator delete(*(this + 220));
  }

  v3 = *(this + 217);
  if (v3)
  {
    *(this + 218) = v3;
    operator delete(v3);
  }

  *(this + 207) = &unk_288293910;
  if (*(this + 1711) < 0)
  {
    operator delete(*(this + 211));
  }

  v4 = *(this + 208);
  if (v4)
  {
    *(this + 209) = v4;
    operator delete(v4);
  }

  *(this + 198) = &unk_288293910;
  if (*(this + 1639) < 0)
  {
    operator delete(*(this + 202));
  }

  v5 = *(this + 199);
  if (v5)
  {
    *(this + 200) = v5;
    operator delete(v5);
  }

  *(this + 189) = &unk_288293910;
  if (*(this + 1567) < 0)
  {
    operator delete(*(this + 193));
  }

  v6 = *(this + 190);
  if (v6)
  {
    *(this + 191) = v6;
    operator delete(v6);
  }

  *(this + 181) = &unk_288293910;
  if (*(this + 1503) < 0)
  {
    operator delete(*(this + 185));
  }

  v7 = *(this + 182);
  if (v7)
  {
    *(this + 183) = v7;
    operator delete(v7);
  }

  *(this + 172) = &unk_288293910;
  if (*(this + 1431) < 0)
  {
    operator delete(*(this + 176));
  }

  v8 = *(this + 173);
  if (v8)
  {
    *(this + 174) = v8;
    operator delete(v8);
  }

  *(this + 162) = &unk_288293910;
  if (*(this + 1351) < 0)
  {
    operator delete(*(this + 166));
  }

  v9 = *(this + 163);
  if (v9)
  {
    *(this + 164) = v9;
    operator delete(v9);
  }

  *(this + 152) = &unk_288293910;
  if (*(this + 1271) < 0)
  {
    operator delete(*(this + 156));
  }

  v10 = *(this + 153);
  if (v10)
  {
    *(this + 154) = v10;
    operator delete(v10);
  }

  *(this + 144) = &unk_288293910;
  if (*(this + 1207) < 0)
  {
    operator delete(*(this + 148));
  }

  v11 = *(this + 145);
  if (v11)
  {
    *(this + 146) = v11;
    operator delete(v11);
  }

  *(this + 135) = &unk_288293910;
  if (*(this + 1135) < 0)
  {
    operator delete(*(this + 139));
  }

  v12 = *(this + 136);
  if (v12)
  {
    *(this + 137) = v12;
    operator delete(v12);
  }

  *(this + 126) = &unk_288293910;
  if (*(this + 1063) < 0)
  {
    operator delete(*(this + 130));
  }

  v13 = *(this + 127);
  if (v13)
  {
    *(this + 128) = v13;
    operator delete(v13);
  }

  *(this + 117) = &unk_288293910;
  if (*(this + 991) < 0)
  {
    operator delete(*(this + 121));
  }

  v14 = *(this + 118);
  if (v14)
  {
    *(this + 119) = v14;
    operator delete(v14);
  }

  *(this + 108) = &unk_288293910;
  if (*(this + 919) < 0)
  {
    operator delete(*(this + 112));
  }

  v15 = *(this + 109);
  if (v15)
  {
    *(this + 110) = v15;
    operator delete(v15);
  }

  *(this + 99) = &unk_288293910;
  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  v16 = *(this + 100);
  if (v16)
  {
    *(this + 101) = v16;
    operator delete(v16);
  }

  *(this + 90) = &unk_288293910;
  if (*(this + 775) < 0)
  {
    operator delete(*(this + 94));
  }

  v17 = *(this + 91);
  if (v17)
  {
    *(this + 92) = v17;
    operator delete(v17);
  }

  *(this + 81) = &unk_288293910;
  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  v18 = *(this + 82);
  if (v18)
  {
    *(this + 83) = v18;
    operator delete(v18);
  }

  *(this + 72) = &unk_288293910;
  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  v19 = *(this + 73);
  if (v19)
  {
    *(this + 74) = v19;
    operator delete(v19);
  }

  *(this + 63) = &unk_288293910;
  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  v20 = *(this + 64);
  if (v20)
  {
    *(this + 65) = v20;
    operator delete(v20);
  }

  *(this + 54) = &unk_288293910;
  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  v21 = *(this + 55);
  if (v21)
  {
    *(this + 56) = v21;
    operator delete(v21);
  }

  *(this + 45) = &unk_288293910;
  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  v22 = *(this + 46);
  if (v22)
  {
    *(this + 47) = v22;
    operator delete(v22);
  }

  *(this + 37) = &unk_288293910;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  v23 = *(this + 38);
  if (v23)
  {
    *(this + 39) = v23;
    operator delete(v23);
  }

  *(this + 28) = &unk_288293910;
  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  v24 = *(this + 29);
  if (v24)
  {
    *(this + 30) = v24;
    operator delete(v24);
  }

  *(this + 19) = &unk_288293910;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  v25 = *(this + 20);
  if (v25)
  {
    *(this + 21) = v25;
    operator delete(v25);
  }

  *(this + 9) = &unk_288293910;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v26 = *(this + 10);
  if (v26)
  {
    *(this + 11) = v26;
    operator delete(v26);
  }

  *this = &unk_288293910;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v27 = *(this + 1);
  if (v27)
  {
    *(this + 2) = v27;
    operator delete(v27);
  }
}

void webrtc::ProbeController::ProbeController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0x8000000000000000;
  *(a1 + 16) = 2;
  *(a1 + 24) = xmmword_273B94C10;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = xmmword_273B96E90;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0x8000000000000000;
  (*(*a2 + 16))(__p, a2, "WebRTC-BweRapidRecoveryExperiment", 33);
  v5 = 0;
  v6 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v6 >= 7)
  {
    v7 = __p[0];
    if ((v12 & 0x80u) == 0)
    {
      v7 = __p;
    }

    v8 = *v7;
    v9 = *(v7 + 3);
    v5 = v8 == 1650552389 && v9 == 1684368482;
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 280) = v5;
  *(a1 + 288) = a3;
  *(a1 + 296) = 1;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 359) = 2;
  if (a1 + 336 > "p1" || a1 + 338 <= "p1")
  {
    strcpy((a1 + 336), "p1");
    *(a1 + 360) = 0;
    *(a1 + 304) = &unk_2882937C0;
    *(a1 + 368) = 0x4008000000000000;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    *(a1 + 431) = 2;
    if (a1 + 408 > "p2" || a1 + 410 <= "p2")
    {
      strcpy((a1 + 408), "p2");
      *(a1 + 432) = 0;
      *(a1 + 376) = &unk_288293880;
      *(a1 + 440) = 0x4018000000000000;
      *(a1 + 448) = 1;
      *(a1 + 472) = 0;
      *(a1 + 480) = 0;
      *(a1 + 511) = 9;
      *(a1 + 464) = 0;
      if (a1 + 488 > "step_size" || a1 + 497 <= "step_size")
      {
        strcpy((a1 + 488), "step_size");
        *(a1 + 512) = 0;
        *(a1 + 456) = &unk_2882937C0;
        *(a1 + 520) = 0x4000000000000000;
        *(a1 + 528) = &unk_288293910;
        *(a1 + 536) = 0;
        *(a1 + 552) = 0;
        *(a1 + 544) = 0;
        operator new();
      }
    }
  }

  __break(1u);
}

uint64_t webrtc::ProbeController::SetBitrates@<X0>(Timestamp a1@<0:X4>, uint64_t result@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, void *a6@<X8>)
{
  if (a4 < 1)
  {
    if (!*(result + 192))
    {
      *(result + 192) = a3;
    }
  }

  else
  {
    *(result + 192) = a4;
    *(result + 40) = a4;
  }

  v6 = *(result + 200);
  if ((a5 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = 5000000;
  }

  else
  {
    v7 = a5;
  }

  *(result + 200) = v7;
  v8 = *(result + 20);
  if (v8 == 2)
  {
    v10 = *(result + 40);
    if (v10 && v6 < v7 && v10 < v7)
    {
      operator new();
    }
  }

  else if (!v8 && *result == 1)
  {

    webrtc::ProbeController::InitiateExponentialProbing(result, a1);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  return result;
}

void webrtc::ProbeController::InitiateProbing(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *(a1 + 2096);
  if (v6 <= 0.0)
  {
    goto LABEL_14;
  }

  if (*(a1 + 184) == 1)
  {
    v7 = *(a1 + 96);
    v8 = *(a1 + 272);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_9:
    v9 = (a1 + 200);
    goto LABEL_10;
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 272);
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = (a1 + 200);
  v10 = *(a1 + 200);
  v33 = llround(*(a1 + 2168) * v8);
  if (v10 >= v33)
  {
    v9 = &v33;
  }

LABEL_10:
  v11 = llround(v6 * *v9);
  if (*(a1 + 40) < v7)
  {
    v7 = *(a1 + 40);
  }

  if (v7 > v11)
  {
    *(a1 + 20) = 2;
    *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    return;
  }

LABEL_14:
  v12 = *(a1 + 16);
  if ((v12 - 3) < 2 || v12 == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/probe_controller.cc");
    }

LABEL_18:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  if ((*(a1 + 1088) + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL && *(a1 + 184) == 1)
  {
    v20 = *(a1 + 96);
    if ((v20 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL && !v20)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/probe_controller.cc");
      }

      goto LABEL_18;
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a3 != a3[1])
  {
    ++*(a1 + 296);
    if (*(a1 + 288))
    {
      operator new();
    }

    v21 = a5[2];
    if (!v21)
    {
      v22 = 1 - 0x3333333333333333 * (-*a5 >> 3);
      if (v22 > 0x666666666666666)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v23 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - *a5) >> 3);
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      v24 = v23 >= 0x333333333333333 ? 0x666666666666666 : v22;
      if (v24)
      {
        if (v24 <= 0x666666666666666)
        {
          operator new();
        }

LABEL_44:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(a1 + 32) = a2;
  if (a4)
  {
    *(a1 + 20) = 1;
    if (!*a5)
    {
      goto LABEL_43;
    }

    v25 = llround(*(a1 + 592) * MEMORY[0xFFFFFFFFFFFFFFE0]);
  }

  else
  {
    *(a1 + 20) = 2;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a1 + 24) = v25;
}

void *std::vector<webrtc::DataRate>::vector[abi:sn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::ProbeController::OnMaxTotalAllocatedBitrate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 1513) != 1 || *(a1 + 20) != 2 || *(a1 + 272) == a2 || ((v4 = *(a1 + 40), v4 < *(a1 + 200)) ? (v5 = v4 < a2) : (v5 = 0), v5 ? (v6 = *(a1 + 224) == 0) : (v6 = 1), v6))
  {
    if (a2)
    {
      *(a1 + 8) = a3;
    }

    *(a1 + 272) = a2;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
  }

  else
  {
    *(a1 + 272) = a2;
    if (*(a1 + 1592))
    {
      v9 = a2;
      v10 = llround(*(a1 + 1584) * a2);
      v12 = llround(*(a1 + 1744) * v4);
      if (v12 >= v10)
      {
        v20[0] = v10;
        std::vector<webrtc::DataRate>::vector[abi:sn200100](&__p, v20, 1uLL);
        v15 = a1;
        if (*(a1 + 1672) == 1)
        {
          v16 = llround(*(a1 + 1664) * v9);
          v13 = v12 < v16;
          if (v12 < v16)
          {
            v16 = v12;
          }

          v20[0] = v16;
          if (v16 > v10)
          {
            std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](&__p, v20);
            v15 = a1;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = a4;
      }

      else
      {
        v20[0] = v12;
        std::vector<webrtc::DataRate>::vector[abi:sn200100](&__p, v20, 1uLL);
        v13 = 1;
        v14 = a4;
        v15 = a1;
      }

      memset(v17, 0, sizeof(v17));
      if (v19 != __p)
      {
        if (((v19 - __p) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      webrtc::ProbeController::InitiateProbing(v15, a3, v17, v13, v14);
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }
  }
}

void webrtc::ProbeController::SetEstimatedBitrate(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a2;
  v32 = a2;
  *(a1 + 16) = a3;
  v8 = *(a1 + 40);
  if (llround(v8 * 0.66) > a2)
  {
    *(a1 + 256) = a4;
    *(a1 + 264) = v8;
  }

  *(a1 + 40) = a2;
  if (*(a1 + 20) == 1)
  {
    if (*(a1 + 657) == 1 && (*(a1 + 200) < a2 || (v9 = *(a1 + 272)) != 0 && 2 * v9 < a2))
    {
      *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if ((*(a1 + 1088) + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL && *(a1 + 184) == 1)
    {
      v11 = *(a1 + 96);
      if ((v11 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = llround(*(a1 + 592) * v11);
      }
    }

    v31 = v10;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_30;
    }

    v21[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/probe_controller.cc";
    v21[1] = 2873;
    v21[2] = &v20;
    v22[0] = "Measured bitrate: ";
    v22[1] = v21;
    webrtc::webrtc_logging_impl::MakeVal<webrtc::DataRate,(void *)0>(&v32, &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      v24 = v22;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v23 = v29;
      v24 = v22;
    }

    v25[0] = " Minimum to probe further: ";
    v25[1] = &v23;
    webrtc::webrtc_logging_impl::MakeVal<webrtc::DataRate,(void *)0>((a1 + 24), &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      v27 = v25;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v26 = v29;
      v27 = v25;
    }

    v28[0] = " upper limit: ";
    v28[1] = &v26;
    webrtc::webrtc_logging_impl::MakeVal<webrtc::DataRate,(void *)0>(&v31, &v33);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      v19 = v28;
      v30 = v28;
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
        v19 = v30;
      }
    }

    else
    {
      v29 = v33;
      v19 = v28;
      v30 = v28;
    }

    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n", v12, v13, v14, v15, v16, v17, v18, **(*(*(*(v19[1] + 24) + 8) + 24) + 8));
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_29:
          v10 = v31;
          v5 = v32;
LABEL_30:
          if (v5 > *(a1 + 24) && v5 <= v10)
          {
            operator new();
          }

          goto LABEL_33;
        }

LABEL_36:
        operator delete(v23.__r_.__value_.__l.__data_);
        goto LABEL_29;
      }
    }

    else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

LABEL_33:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
}

uint64_t webrtc::ProbeController::RequestProbe@<X0>(uint64_t this@<X0>, Timestamp a2@<0:X1>, void *a3@<X8>)
{
  v4 = this;
  if (*(this + 240) == 1)
  {
    v5 = *(this + 232);
    v8 = a2.var0 == 0x8000000000000000 || v5 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 - v5 < 3000000;
    v9 = v5 != 0x8000000000000000 && v8;
    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    if (*(this + 224))
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!v9 && *(this + 280) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_21;
  }

  v9 = 0;
  if ((*(this + 224) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (*(this + 20) == 2)
  {
    v10 = llround(llround(*(this + 264) * 0.85) * 0.95);
    v11 = *(this + 256);
    v14 = a2.var0 == 0x8000000000000000 || v11 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 - v11 < 5000000;
    v15 = v11 != 0x8000000000000000 && v14;
    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0;
    }

    v16 = *(this + 208);
    v19 = a2.var0 != 0x8000000000000000 && v16 != 0x7FFFFFFFFFFFFFFFLL && a2.var0 - v16 > 5000000;
    if (v16 == 0x8000000000000000)
    {
      v19 = 1;
    }

    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 1;
    }

    if (v10 > *(this + 40) && v15 && v19)
    {
      v21 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
      if ((v21 & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/probe_controller.cc");
      }

      explicit = atomic_load_explicit(&webrtc::ProbeController::RequestProbe(webrtc::Timestamp)::atomic_histogram_pointer, memory_order_acquire);
      if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v30 = 0, atomic_compare_exchange_strong(&webrtc::ProbeController::RequestProbe(webrtc::Timestamp)::atomic_histogram_pointer, &v30, explicit), explicit))
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        if (a2.var0 != 0x7FFFFFFFFFFFFFFFLL && (v32 = *(v4 + 208), v33 = 0x8000000000000000, v32 != 0x8000000000000000) && (a2.var0 == 0x8000000000000000 || v32 == 0x7FFFFFFFFFFFFFFFLL || (v33 = a2.var0 - v32, v31 = a2.var0 - v32, a2.var0 - v32 < 0)))
        {
          v35 = -v33;
          if (v35 % 0xF4240 <= 0x7A120)
          {
            v36 = 0;
          }

          else
          {
            v36 = -1;
          }

          v34 = v36 - v35 / 0xF4240;
        }

        else if (v31 % 0xF4240 <= 0x7A11F)
        {
          v34 = v31 / 0xF4240;
        }

        else
        {
          v34 = v31 / 0xF4240 + 1;
        }

        webrtc::metrics::HistogramAdd(explicit, v34);
      }

      *(v4 + 208) = a2;
      operator new();
    }
  }

LABEL_54:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return this;
}

void webrtc::ProbeController::Process(webrtc::ProbeController *this@<X0>, Timestamp a2@<0:X1>, void *a3@<X8>)
{
  v6 = *(this + 4);
  v7 = a2.var0 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x8000000000000000;
  if (v7 || a2.var0 != 0x8000000000000000 && (v6 != 0x7FFFFFFFFFFFFFFFLL ? (v8 = a2.var0 - v6 <= 1000000) : (v8 = 1), !v8))
  {
    if (*(this + 5) == 1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/probe_controller.cc");
      }

      *(this + 5) = 2;
      *(this + 3) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v16 = *(this + 5);
  if (v16 && *(this + 5) == 2)
  {
    if (*(this + 1) > a2.var0)
    {
      v17 = *(this + 4);
      if (v17 != 0x7FFFFFFFFFFFFFFFLL && (v17 == 0x8000000000000000 || v17 + 1000000 <= a2.var0))
      {
        operator new();
      }
    }

    if (*(this + 248) == 1 && *(this + 224) == 1)
    {
      v18 = *(this + 4);
      if (*(this + 27) > v18)
      {
        v18 = *(this + 27);
      }

      v19 = 0x7FFFFFFFFFFFFFFFLL;
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = *(this + 118);
        v21 = v20 == 0x8000000000000000 || v18 == 0x8000000000000000;
        v22 = v18 + v20;
        if (v21)
        {
          v22 = 0x8000000000000000;
        }

        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v22;
        }
      }

      if (v19 <= a2.var0)
      {
        goto LABEL_46;
      }
    }

    if (*(this + 184) == 1)
    {
      v23 = *(this + 12);
      if ((v23 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
      {
        if (*(this + 4) == 2 && v16 < llround(*(this + 145) * v23) && (v24 = *(this + 154), (v24 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL) || v16 < v23 && (v24 = *(this + 136), (v24 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL))
        {
          v25 = *(this + 4);
          v26 = v25 + v24;
          if (v25 == 0x8000000000000000)
          {
            v26 = 0x8000000000000000;
          }

          if (v25 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = v26;
          }

          if (v25 <= a2.var0)
          {
LABEL_46:
            operator new();
          }
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void dcsctp::ProtocolViolationCause::Parse(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 4 || __rev16(*a1) != 13 || ((v3 = __rev16(a1[1]), v3 >= 4) ? (v4 = a2 >= v3) : (v4 = 0), v4 ? (v5 = a2 - v3 >= 4) : (v5 = 1), v5))
  {
    *a3 = 0;
    *(a3 + 32) = 0;
    return;
  }

  if (v3 > 4)
  {
    v7 = (a1 + 2);
    v8 = v3 - 4;
    v9 = a3;
    if (v3 - 4 > 0x16)
    {
      operator new();
    }

    v16 = v3 - 4;
    v6 = (__p + v8);
    if (__p <= v7 && v6 > v7)
    {
      goto LABEL_37;
    }

    memmove(__p, v7, v8);
    a3 = v9;
  }

  else
  {
    v16 = 0;
    v6 = __p;
  }

  *v6 = 0;
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v17 = &unk_288299ED8;
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_38:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v11 > 0x16)
  {
    operator new();
  }

  HIBYTE(v19) = v11;
  v12 = (&v18 + v11);
  if (&v18 <= v10 && v12 > v10)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v11)
  {
    v13 = v11;
    v14 = a3;
    memmove(&v18, v10, v13);
    a3 = v14;
  }

  *v12 = 0;
  *a3 = &unk_288299ED8;
  *(a3 + 8) = v18;
  *(a3 + 24) = v19;
  v18 = 0uLL;
  v19 = 0;
  *(a3 + 32) = 1;
  v17 = &unk_288299ED8;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void dcsctp::ProtocolViolationCause::~ProtocolViolationCause(void **this)
{
  *this = &unk_288299ED8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_288299ED8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::ProtocolViolationCause::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 31);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(a1 + 16);
    v11 = *a2;
    v12 = a2[1] - *a2;
    v13 = v10 + 4;
    v14 = v12 + v10 + 4;
    v15 = v12 > v14;
    if (v12 < v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *a2;
    v12 = a2[1] - *a2;
    v13 = v10 + 4;
    v14 = v12 + v10 + 4;
    v15 = v12 > v14;
    if (v12 < v14)
    {
LABEL_3:
      std::vector<unsigned char>::__append(a2, v13);
      v11 = *a2;
      goto LABEL_8;
    }
  }

  if (v15)
  {
    a2[1] = v11 + v14;
  }

LABEL_8:
  v16 = v11 + v12;
  *v16 = 3328;
  *(v16 + 2) = BYTE1(v13);
  *(v16 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v23);
    dcsctp::ProtocolViolationCause::ToString(v22);
    return;
  }

  v17 = *(a1 + 31);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v20 = *(a1 + 16);
    if (v20)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= v20)
    {
      v19 = *(a1 + 16);
    }

    else
    {
      v19 = v10;
    }

    if (!v19)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 31))
    {
      v18 = (a1 + 8);
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= v17)
    {
      v19 = *(a1 + 31);
    }

    else
    {
      v19 = v10;
    }

    if (!v19)
    {
      return;
    }
  }

  if (v18)
  {
    v21 = (*a2 + v12 + 4);

    memcpy(v21, v18, v19);
  }
}

unint64_t webrtc::PushResampler<short>::Resample(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = result;
  if (*(result + 24) != a2[1] || *(result + 56) != *(a3 + 8) || *(result + 16) != *a2)
  {
    operator new[]();
  }

  v10 = a2[1];
  if (v10 != *(a3 + 8))
  {
    v14 = *a2;
    if (!*a2)
    {
      goto LABEL_72;
    }

    v15 = *(result + 40);
    if (v15 > 1)
    {
      goto LABEL_154;
    }

    if (!v10)
    {
LABEL_72:
      v48 = *(v9 + 80);
      if (*(v9 + 88) != v48)
      {
        for (i = 0; i < (*(v9 + 88) - v48) >> 3; ++i)
        {
          v53 = *(v48 + 8 * i);
          v54 = *(v9 + 40);
          if (v54 == 1)
          {
            v55 = *(v9 + 24);
            if (v55)
            {
              v56 = (*(v9 + 32) + 2 * v55 * i);
            }

            else
            {
              v56 = 0;
            }

            v57 = *(v9 + 72);
            if (v57 != 1)
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v54)
            {
              goto LABEL_154;
            }

            v55 = *(v9 + 24);
            if (v55)
            {
              v56 = *(*(v9 + 32) + 8 * i);
            }

            else
            {
              v56 = 0;
            }

            v57 = *(v9 + 72);
            if (v57 != 1)
            {
LABEL_90:
              if (v57)
              {
                goto LABEL_154;
              }

              v50 = *(v9 + 56);
              v51 = *(*(v9 + 64) + 8 * i);
              goto LABEL_75;
            }
          }

          v50 = *(v9 + 56);
          v51 = *(v9 + 64) + 2 * v50 * i;
LABEL_75:
          if (v50)
          {
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }

          result = webrtc::PushSincResampler::Resample(v53, v56, v55, v52, v50, a6, a7, a8);
          v48 = *(v9 + 80);
        }
      }

      v58 = *(v9 + 72);
      if (v58 < 2)
      {
        v59 = *(v9 + 48);
        if (!v59)
        {
          return result;
        }

        v60 = *(v9 + 56);
        if (!v60)
        {
          return result;
        }

        v61 = *(v9 + 64);
        v62 = *(a3 + 16);
        if (v58)
        {
          v63 = 0;
          v65 = v60 > 3 && v59 == 1;
          v67 = v62 < v61 + 2 * v59 * v60 && v61 < v62 + 2 * (v59 + v60) - 2 || (v60 & 0x4000000000000000) != 0;
          v68 = v60 & 0xBFFFFFFFFFFFFFFCLL;
          result = v62 + 16;
          v69 = (v61 + 16);
          v70 = 2 * v60;
          v71 = v67 | ~v65;
          for (j = *(a3 + 16); ; j += 2)
          {
            if (v71)
            {
              v73 = 0;
              v74 = v63;
            }

            else
            {
              if (v60 < 0x10)
              {
                v75 = 0;
LABEL_118:
                v74 = v63 + (v60 & 0xBFFFFFFFFFFFFFFCLL) * v59;
                v80 = (j + 2 * v75);
                v81 = (v61 + 2 * v75);
                v82 = v68 - v75;
                do
                {
                  v83 = *v81++;
                  *v80++ = v83;
                  v82 -= 4;
                }

                while (v82);
                v73 = v60 & 0xBFFFFFFFFFFFFFFCLL;
                if (v60 == v68)
                {
                  goto LABEL_109;
                }

                goto LABEL_123;
              }

              v76 = v60 & 0xBFFFFFFFFFFFFFF0;
              v77 = v69;
              v78 = result;
              do
              {
                v79 = *v77;
                *(v78 - 1) = *(v77 - 1);
                *v78 = v79;
                v78 += 2;
                v77 += 2;
                v76 -= 16;
              }

              while (v76);
              if (v60 == (v60 & 0xBFFFFFFFFFFFFFF0))
              {
                goto LABEL_109;
              }

              v75 = v60 & 0xBFFFFFFFFFFFFFF0;
              if ((v60 & 0xC) != 0)
              {
                goto LABEL_118;
              }

              v74 = v63 + (v60 & 0xBFFFFFFFFFFFFFF0) * v59;
              v73 = v60 & 0xBFFFFFFFFFFFFFF0;
            }

LABEL_123:
            v84 = (v62 + 2 * v74);
            do
            {
              *v84 = *(v61 + 2 * v73++);
              v84 += v59;
            }

            while (v60 != v73);
LABEL_109:
            ++v63;
            result += 2;
            v69 = (v69 + v70);
            v61 += v70;
            if (v63 == v59)
            {
              return result;
            }
          }
        }

        v85 = 0;
        v87 = v60 < 4 || v59 != 1;
        result = (v60 & 0xFFFFFFFFFFFFFFFCLL) * v59;
        v88 = (v62 + 16);
        for (k = *(a3 + 16); ; k += 2)
        {
          v90 = *(v61 + 8 * v85);
          v91 = v62 + 2 * v85 - v90 < 0x20 || v87;
          if (v91)
          {
            v92 = 0;
            v93 = v85;
          }

          else
          {
            if (v60 < 0x10)
            {
              v94 = 0;
LABEL_145:
              v93 = v85 + result;
              v99 = (k + 2 * v94);
              v100 = (v90 + 2 * v94);
              v101 = v94 - (v60 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v102 = *v100++;
                *v99++ = v102;
                v101 += 4;
              }

              while (v101);
              v92 = v60 & 0xFFFFFFFFFFFFFFFCLL;
              if (v60 == (v60 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_133;
              }

              goto LABEL_150;
            }

            v95 = (v90 + 16);
            v96 = v60 & 0xFFFFFFFFFFFFFFF0;
            v97 = v88;
            do
            {
              v98 = *v95;
              *(v97 - 1) = *(v95 - 1);
              *v97 = v98;
              v97 += 2;
              v95 += 2;
              v96 -= 16;
            }

            while (v96);
            if (v60 == (v60 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_133;
            }

            v94 = v60 & 0xFFFFFFFFFFFFFFF0;
            if ((v60 & 0xC) != 0)
            {
              goto LABEL_145;
            }

            v93 = v85 + (v60 & 0xFFFFFFFFFFFFFFF0) * v59;
            v92 = v60 & 0xFFFFFFFFFFFFFFF0;
          }

LABEL_150:
          v103 = v60 - v92;
          v104 = (v90 + 2 * v92);
          v105 = (v62 + 2 * v93);
          do
          {
            v106 = *v104++;
            *v105 = v106;
            v105 += v59;
            --v103;
          }

          while (v103);
LABEL_133:
          ++v85;
          v88 = (v88 + 2);
          if (v85 == v59)
          {
            return result;
          }
        }
      }

LABEL_154:
      v107 = std::__throw_bad_variant_access[abi:sn200100]();
      return webrtc::PushResampler<float>::EnsureInitialized(v107);
    }

    v16 = *(result + 24);
    v17 = *(result + 32);
    v18 = a2[2];
    if (v15)
    {
      if (v16)
      {
        v19 = 0;
        v21 = v10 > 3 && v14 == 1;
        v23 = v17 < v18 + 2 * (v14 + v10) - 2 && v18 < v17 + 2 * (v10 + v16 * (v14 - 1)) || (v16 & 0x4000000000000000) != 0;
        result = v18 + 16;
        v24 = (v17 + 16);
        v25 = 2 * v16;
        a6 = v23 | ~v21;
        a7 = a2[2];
        while (1)
        {
          if (a6)
          {
            v26 = 0;
            a8 = v19;
          }

          else
          {
            if (v10 < 0x10)
            {
              v27 = 0;
LABEL_36:
              a8 = v19 + (v10 & 0xFFFFFFFFFFFFFFFCLL) * v14;
              v31 = (a7 + 2 * v27);
              v32 = (v17 + 2 * v27);
              v33 = v27 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v34 = *v31++;
                *v32++ = v34;
                v33 += 4;
              }

              while (v33);
              v26 = v10 & 0xFFFFFFFFFFFFFFFCLL;
              if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_27;
              }

              goto LABEL_41;
            }

            a8 = v10 & 0xFFFFFFFFFFFFFFF0;
            v28 = v24;
            v29 = result;
            do
            {
              v30 = *v29;
              *(v28 - 1) = *(v29 - 1);
              *v28 = v30;
              v29 += 2;
              v28 += 2;
              a8 -= 16;
            }

            while (a8);
            if (v10 == (v10 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_27;
            }

            v27 = v10 & 0xFFFFFFFFFFFFFFF0;
            if ((v10 & 0xC) != 0)
            {
              goto LABEL_36;
            }

            a8 = v19 + (v10 & 0xFFFFFFFFFFFFFFF0) * v14;
            v26 = v10 & 0xFFFFFFFFFFFFFFF0;
          }

LABEL_41:
          a8 = v18 + 2 * a8;
          do
          {
            *(v17 + 2 * v26++) = *a8;
            a8 += 2 * v14;
          }

          while (v10 != v26);
LABEL_27:
          ++v19;
          result += 2;
          v24 = (v24 + v25);
          a7 += 2;
          v17 += v25;
          if (v19 == v14)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_72;
    }

    if (!v16)
    {
      goto LABEL_72;
    }

    v35 = 0;
    v37 = v10 < 4 || v14 != 1;
    result = (v10 & 0xFFFFFFFFFFFFFFFCLL) * v14;
    v38 = (v18 + 16);
    v39 = a2[2];
    while (1)
    {
      a6 = *(v17 + 8 * v35);
      v40 = a6 - (v18 + 2 * v35) < 0x20 || v37;
      if (v40)
      {
        v41 = 0;
        a7 = v35;
      }

      else
      {
        if (v10 < 0x10)
        {
          v42 = 0;
LABEL_64:
          a7 = v35 + result;
          a8 = v39 + 2 * v42;
          v45 = (a6 + 2 * v42);
          v46 = v42 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v47 = *a8;
            a8 += 8;
            *v45++ = v47;
            v46 += 4;
          }

          while (v46);
          v41 = v10 & 0xFFFFFFFFFFFFFFFCLL;
          if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_52;
          }

          goto LABEL_69;
        }

        a7 = a6 + 16;
        a8 = v10 & 0xFFFFFFFFFFFFFFF0;
        v43 = v38;
        do
        {
          v44 = *v43;
          *(a7 - 16) = *(v43 - 1);
          *a7 = v44;
          v43 += 2;
          a7 += 32;
          a8 -= 16;
        }

        while (a8);
        if (v10 == (v10 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_52;
        }

        v42 = v10 & 0xFFFFFFFFFFFFFFF0;
        if ((v10 & 0xC) != 0)
        {
          goto LABEL_64;
        }

        a7 = v35 + (v10 & 0xFFFFFFFFFFFFFFF0) * v14;
        v41 = v10 & 0xFFFFFFFFFFFFFFF0;
      }

LABEL_69:
      a8 = v10 - v41;
      a6 += 2 * v41;
      a7 = v18 + 2 * a7;
      do
      {
        *a6 = *a7;
        a6 += 2;
        a7 += 2 * v14;
        --a8;
      }

      while (a8);
LABEL_52:
      ++v35;
      v38 = (v38 + 2);
      v39 += 2;
      if (v35 == v14)
      {
        goto LABEL_72;
      }
    }
  }

  v11 = *(a3 + 16);
  v12 = a2[2];
  v13 = 2 * a2[3];

  return memcpy(v11, v12, v13);
}

void *webrtc::PushResampler<float>::EnsureInitialized(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result[3] != a2 || result[7] != a3 || result[2] != a4)
  {
    operator new[]();
  }

  return result;
}

void webrtc::PushSincResampler::~PushSincResampler(webrtc::PushSincResampler *this)
{
  *this = &unk_288299F08;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8052888210);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_288299F08;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8052888210);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

unint64_t webrtc::PushSincResampler::Resample(webrtc::PushSincResampler *this, const __int16 *a2, uint64_t a3, __int16 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 2);
  if (!v10)
  {
    operator new[]();
  }

  *(this + 4) = a2;
  webrtc::PushSincResampler::Resample(this, 0, a3, v10, *(this + 5), a6, a7, a8);
  result = *(this + 5);
  if (result)
  {
    v14 = *(this + 2);
    if (result >= 8)
    {
      v15 = result & 0xFFFFFFFFFFFFFFF8;
      v16 = vdupq_n_s32(0x46FFFE00u);
      v17.i64[0] = 0xC7000000C7000000;
      v17.i64[1] = 0xC7000000C7000000;
      v11.i64[0] = 0x3F0000003F000000;
      v11.i64[1] = 0x3F0000003F000000;
      v18.i64[0] = 0x8000000080000000;
      v18.i64[1] = 0x8000000080000000;
      v19 = result & 0xFFFFFFFFFFFFFFF8;
      v20 = a4;
      v21 = *(this + 2);
      do
      {
        v22 = *v21;
        v23 = v21[1];
        v21 += 2;
        v24 = vbslq_s8(vcgtq_f32(v22, v16), v16, v22);
        v25 = vbslq_s8(vcgtq_f32(v23, v16), v16, v23);
        v26 = vbslq_s8(vcgtq_f32(v17, v24), v17, v24);
        v27 = vbslq_s8(vcgtq_f32(v17, v25), v17, v25);
        v12 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v26, vbslq_s8(v18, v11, v26))), vcvtq_s32_f32(vaddq_f32(v27, vbslq_s8(v18, v11, v27))));
        *v20 = v12;
        v20 += 8;
        v19 -= 8;
      }

      while (v19);
      if (result == v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    v28 = result - v15;
    v29 = &a4[v15];
    v30 = (v14 + 4 * v15);
    v11.i32[0] = 0.5;
    v31.i64[0] = 0x8000000080000000;
    v31.i64[1] = 0x8000000080000000;
    do
    {
      v32 = *v30++;
      *v12.i32 = v32;
      if (v32 > 32767.0)
      {
        *v12.i32 = 32767.0;
      }

      if (*v12.i32 < -32768.0)
      {
        *v12.i32 = -32768.0;
      }

      *v29++ = (*v12.i32 + *vbslq_s8(v31, v11, v12).i32);
      --v28;
    }

    while (v28);
  }

LABEL_15:
  *(this + 4) = 0;
  return result;
}

uint64_t webrtc::PushSincResampler::Resample(webrtc::PushSincResampler *this, const float *a2, uint64_t a3, float *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 1);
  if (*(v9 + 40) != a3)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/resampler/push_sinc_resampler.cc", 52, "source_length == resampler_->request_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a3);
    goto LABEL_7;
  }

  v11 = *(this + 5);
  if (v11 > a5)
  {
LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/resampler/push_sinc_resampler.cc", 53, "destination_capacity >= destination_frames_", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a5);
    return webrtc::PushSincResampler::Run(v14, v15, v16);
  }

  *(this + 3) = a2;
  *(this + 7) = a3;
  if (*(this + 48) == 1)
  {
    webrtc::SincResampler::Resample(v9, (*(v9 + 48) / *(v9 + 8)), a4);
    v9 = *(this + 1);
    v11 = *(this + 5);
  }

  webrtc::SincResampler::Resample(v9, v11, a4);
  *(this + 3) = 0;
  return *(this + 5);
}

void webrtc::PushSincResampler::Run(webrtc::PushSincResampler *this, unint64_t a2, float *__dst, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(this + 7) != a2)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/resampler/push_sinc_resampler.cc", 83, "source_available_ == frames", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a6, a7, a8, a9, *(this + 7));
    webrtc::QpParser::Parse(v25, v26, v27, v28, v29);
    return;
  }

  if (*(this + 48) == 1)
  {
    bzero(__dst, 4 * a2);
    *(this + 48) = 0;
    return;
  }

  if (*(this + 3))
  {
    v10 = a2;
    memcpy(__dst, *(this + 3), 4 * a2);
    a2 = v10;
    v11 = *(this + 7);
LABEL_6:
    *(this + 7) = v11 - a2;
    return;
  }

  if (!a2)
  {
    *(this + 7) = 0;
    return;
  }

  v12 = *(this + 4);
  if (a2 >= 4)
  {
    if (a2 >= 0x10)
    {
      i = a2 & 0xFFFFFFFFFFFFFFF0;
      v14 = v12 + 2;
      v15 = __dst + 8;
      v16 = a2 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v17 = *v14[-2].i8;
        v18 = vcvtq_f32_s32(vmovl_s16(*v14));
        v19 = vmovl_high_s16(*v14->i8);
        *(v15 - 2) = vcvtq_f32_s32(vmovl_s16(*v17.i8));
        *(v15 - 1) = vcvtq_f32_s32(vmovl_high_s16(v17));
        a4 = vcvtq_f32_s32(v19);
        *v15 = v18;
        *(v15 + 1) = a4;
        v15 += 16;
        v14 += 4;
        v16 -= 16;
      }

      while (v16);
      v11 = a2;
      if (i == a2)
      {
        goto LABEL_6;
      }

      if ((a2 & 0xC) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      i = 0;
    }

    v20 = i;
    i = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = (v12 + 2 * v20);
    v22 = &__dst[v20];
    v23 = v20 - (a2 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v24 = *v21++;
      a4 = vcvtq_f32_s32(vmovl_s16(v24));
      *v22++ = a4;
      v23 += 4;
    }

    while (v23);
    v11 = a2;
    if (i == a2)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  for (i = 0; i != a2; ++i)
  {
LABEL_20:
    a4.n128_u16[0] = v12->u16[i];
    a4.n128_u64[0] = vmovl_s16(a4.n128_u64[0]).u64[0];
    a4.n128_f32[0] = a4.n128_i32[0];
    __dst[i] = a4.n128_f32[0];
  }

  *(this + 7) = 0;
}

uint64_t webrtc::QpParser::Parse(uint64_t a1, int a2, unint64_t a3, webrtc::vp9 *this, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  LOBYTE(v9) = 0;
  if (a3 > 2 || !this)
  {
    v12 = 0;
    return v8 | v12 | v9;
  }

  v12 = 0;
  if (!a5)
  {
    return v8 | v12 | v9;
  }

  v8 = 0;
  LOBYTE(v9) = 0;
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      v12 = 0;
      if (a2 == 5)
      {
        v13 = a1 + 160 * a3;
        pthread_mutex_lock((v13 + 528));
        webrtc::H265BitstreamParser::ParseBitstream(v13 + 592, this, a5);
        LastSliceQp = webrtc::H265BitstreamParser::GetLastSliceQp((v13 + 592));
        pthread_mutex_unlock((v13 + 528));
        v8 = LastSliceQp & 0x100000000;
        if ((LastSliceQp & 0x100000000) != 0)
        {
          v9 = LastSliceQp;
        }

        else
        {
          v9 = 0;
        }

        v12 = v9 & 0xFFFFFF00;
      }

      return v8 | v12 | v9;
    }

    v15 = a1 + 176 * a3;
    pthread_mutex_lock(v15);
    webrtc::H264::FindNaluIndices(this, a5, &v30);
    v16 = v30;
    v17 = v31;
    if (v30 != v31)
    {
      do
      {
        while (1)
        {
          v21 = v16[1];
          if (a5 > v21)
          {
            break;
          }

          webrtc::H264BitstreamParser::ParseSlice(v15 + 64, 0, 0);
          v16 += 3;
          if (v16 == v17)
          {
            goto LABEL_29;
          }
        }

        if (&a5[-v21] >= v16[2])
        {
          v18 = v16[2];
        }

        else
        {
          v18 = &a5[-v21];
        }

        v19 = this + v21;
        if (v18)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        webrtc::H264BitstreamParser::ParseSlice(v15 + 64, v20, v18);
        v16 += 3;
      }

      while (v16 != v17);
LABEL_29:
      v16 = v30;
    }

    if (v16)
    {
      v31 = v16;
      operator delete(v16);
    }

    if (*(v15 + 172) == 1 && *(v15 + 164) == 1)
    {
      v9 = *(v15 + 152) + *(v15 + 168) + 26;
      if (v9 < 0x34)
      {
        v8 = 0x100000000;
        goto LABEL_38;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/h264_bitstream_parser.cc");
      }
    }

    LOBYTE(v9) = 0;
    v8 = 0;
LABEL_38:
    pthread_mutex_unlock(v15);
    goto LABEL_39;
  }

  if (a2 == 1)
  {
    LODWORD(v30) = -1;
    if (webrtc::vp8::GetQp(this, a5, &v30, this))
    {
      goto LABEL_8;
    }

LABEL_17:
    LOBYTE(v9) = 0;
    v8 = 0;
LABEL_39:
    v12 = 0;
    return v8 | v12 | v9;
  }

  v12 = 0;
  if (a2 == 2)
  {
    LODWORD(v30) = -1;
    if (webrtc::vp9::GetQp(this, a5, &v30, this, a5, a6, a7, a8))
    {
LABEL_8:
      LOBYTE(v9) = v30;
      v12 = v30 & 0xFFFFFF00;
      v8 = 0x100000000;
      return v8 | v12 | v9;
    }

    goto LABEL_17;
  }

  return v8 | v12 | v9;
}

void **webrtc::QualityConvergenceController::Initialize(void **result, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/quality_convergence_controller.cc", 86, "number_of_layers > 0", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v19);
    return std::deque<int>::~deque[abi:sn200100](v18);
  }

  v10 = result;
  *(result + 1) = a2;
  v11 = result[1];
  v12 = result[2];
  while (v12 != v11)
  {
    v14 = *--v12;
    v13 = v14;
    *v12 = 0;
    if (v14)
    {
      std::deque<int>::~deque[abi:sn200100]((v13 + 40));
      result = MEMORY[0x2743DA540](v13, 0x1080C40B7DF58E9);
    }
  }

  v10[2] = v11;
  LOBYTE(v20) = 0;
  v15 = -1;
  v21 = 0;
  if (a4 > 2)
  {
    if ((a4 - 4) >= 2)
    {
      if (a4 == 3)
      {
        operator new();
      }

      goto LABEL_14;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      operator new();
    }

    if (a4 == 2)
    {
      operator new();
    }

LABEL_14:
    v15 = 0;
  }

  if (v15 <= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v15;
  }

  if ((a3 & 0x100000000) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (*(v10 + 1) >= 1)
  {
    webrtc::QualityConvergenceMonitor::Create(v17, a4);
  }

  *v10 = 1;
  return result;
}