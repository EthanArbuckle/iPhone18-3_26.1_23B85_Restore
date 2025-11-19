void sub_25FC3F508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FC3F52C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 24))(v2);
  std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>::~pair(va);
  _Unwind_Resume(a1);
}

std::string *HGProgramDescriptor::EncodeShaderBufferStruct(std::string *result, std::string *this)
{
  data = result[3].__r_.__value_.__s.__data_[15];
  if ((data & 0x8000000000000000) != 0)
  {
    data = result[3].__r_.__value_.__l.__data_;
    v4 = result[4].__r_.__value_.__s.__data_[15];
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v4 = result[4].__r_.__value_.__s.__data_[15];
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (result[4].__r_.__value_.__r.__words[0])
  {
LABEL_4:
    v5 = 1;
    if (!data)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_8:
  v6 = result[7].__r_.__value_.__s.__data_[15];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = result[7].__r_.__value_.__l.__data_;
  }

  v5 = v6 != 0;
  if (data)
  {
LABEL_11:
    if (v5)
    {
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = 278;
      }

      else
      {
        v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) + 255;
      }

      v8 = result;
      std::string::reserve(this, v7);
      std::string::append(this, "struct ShaderParameters {\n");
      v9 = 0;
      HGProgramDescriptor::privateEncodeShaderBufferStruct(v8, this, &v9);
      return std::string::append(this, "};\n");
    }
  }

  return result;
}

void HGProgramDescriptor::privateEncodeShaderBufferStruct(void *a1, std::string *a2, unint64_t *a3)
{
  v6 = a1[14];
  v7 = a1[15];
  while (v6 != v7)
  {
    v8 = *v6;
    LODWORD(v41) = *v6;
    v9 = *(v6 + 1);
    *(&v41 + 1) = v9;
    if (v9)
    {
      (*(*v9 + 16))(v9);
    }

    if (v8 != 2)
    {
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
        (*(*v9 + 16))(v9);
        HGProgramDescriptor::privateEncodeShaderBufferStruct(v9, a2, a3);
        ++*a3;
        (*(*v9 + 24))(v9);
LABEL_2:
        (*(*v9 + 24))(v9);
        goto LABEL_3;
      }

      ++*a3;
    }

    if (v9)
    {
      goto LABEL_2;
    }

LABEL_3:
    v6 += 4;
  }

  std::to_string(&v40, *a3);
  v11 = std::string::insert(&v40, 0, "r");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v42 = v11->__r_.__value_.__r.__words[2];
  v41 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  for (i = a1[29]; i != a1[30]; i += 48)
  {
    if (*i == 2 && *(i + 40))
    {
      *(&v36.__r_.__value_.__s + 23) = 4;
      strcpy(&v36, "    ");
      v14 = std::string::append(&v36, "alignas(16) ");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = *(i + 31);
      if (v16 >= 0)
      {
        v17 = (i + 8);
      }

      else
      {
        v17 = *(i + 8);
      }

      if (v16 >= 0)
      {
        v18 = *(i + 31);
      }

      else
      {
        v18 = *(i + 16);
      }

      v19 = std::string::append(&v37, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v38, " buffer_");
      v22 = *&v21->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (v42 >= 0)
      {
        v23 = &v41;
      }

      else
      {
        v23 = v41;
      }

      if (v42 >= 0)
      {
        v24 = HIBYTE(v42);
      }

      else
      {
        v24 = *(&v41 + 1);
      }

      v25 = std::string::append(&v39, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v40;
      }

      else
      {
        v27 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v40.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v27, size);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_49;
        }

LABEL_43:
        if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

LABEL_50:
        operator delete(v38.__r_.__value_.__l.__data_);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_51;
        }

LABEL_45:
        if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

LABEL_52:
        operator delete(v36.__r_.__value_.__l.__data_);
        v29 = *(i + 40);
        if (v29 < 2)
        {
LABEL_62:
          std::string::append(a2, ";\n");
          break;
        }
      }

      else
      {
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

LABEL_49:
        operator delete(v39.__r_.__value_.__l.__data_);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_50;
        }

LABEL_44:
        if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

LABEL_51:
        operator delete(v37.__r_.__value_.__l.__data_);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_52;
        }

LABEL_46:
        v29 = *(i + 40);
        if (v29 < 2)
        {
          goto LABEL_62;
        }
      }

      std::to_string(&v38, v29);
      v30 = std::string::insert(&v38, 0, "[");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = std::string::append(&v39, "]");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v40;
      }

      else
      {
        v34 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v40.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v34, v35);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }
      }

      else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_61:
        if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

LABEL_68:
        operator delete(v38.__r_.__value_.__l.__data_);
        goto LABEL_62;
      }

      operator delete(v39.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_68;
    }
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }
}

void sub_25FC3FA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (a35 < 0)
    {
LABEL_5:
      operator delete(a30);
      if ((a28 & 0x80000000) == 0)
      {
LABEL_9:
        if (*(v42 - 73) < 0)
        {
          operator delete(*(v42 - 96));
          _Unwind_Resume(a1);
        }

        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a23);
      goto LABEL_9;
    }
  }

  else if (a35 < 0)
  {
    goto LABEL_5;
  }

  if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void HGProgramDescriptor::EncodeShaderFunction(uint64_t a1, std::string *this)
{
  v153 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 87);
  if (v4 < 0)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 111);
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 111);
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*(a1 + 96))
  {
LABEL_4:
    v6 = 1;
    if (!v4)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_8:
  v7 = *(a1 + 183);
  if (v7 < 0)
  {
    v6 = *(a1 + 168) != 0;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v6 = v7 != 0;
    if (!v4)
    {
      return;
    }
  }

LABEL_12:
  if (!v6)
  {
    return;
  }

  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = 2070;
  }

  else
  {
    v8 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) + 2047;
  }

  std::string::reserve(this, v8);
  v149 = 0;
  v150 = 0;
  v151 = 0;
  LODWORD(v147[0]) = 7;
  HIBYTE(v147[1]) = 10;
  strcpy(v147 + 8, "VertexData");
  v148 = xmmword_260343E00;
  v9 = std::vector<HGBinding>::__emplace_back_slow_path<HGBinding>(&v149, v147);
  v150 = v9;
  if (SHIBYTE(v147[1]) < 0)
  {
    operator delete(*(&v147[0] + 1));
    v9 = v150;
  }

  LODWORD(v147[0]) = 2;
  HIBYTE(v147[1]) = 16;
  strcpy(v147 + 8, "ShaderParameters");
  v148 = xmmword_260391570;
  if (v9 >= v151)
  {
    v150 = std::vector<HGBinding>::__emplace_back_slow_path<HGBinding>(&v149, v147);
    if (SHIBYTE(v147[1]) < 0)
    {
      operator delete(*(&v147[0] + 1));
    }
  }

  else
  {
    *v9 = 2;
    v10 = *(v147 + 8);
    *(v9 + 24) = *(&v147[1] + 1);
    *(v9 + 8) = v10;
    v147[1] = 0uLL;
    *(&v147[0] + 1) = 0;
    *(v9 + 32) = v148;
    v150 = v9 + 48;
  }

  memset(v147, 0, sizeof(v147));
  LODWORD(v148) = 1065353216;
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  v142 = 0;
  memset(&v141, 0, sizeof(v141));
  std::string::reserve(&v141, 0x400uLL);
  std::string::append(&v141, "{\n");
  HGProgramDescriptor::privateEncodeShaderFunction(a1, &v141, &v149, v147, &v146, &v145, &v144, &v143);
  *(&v137.__r_.__value_.__s + 23) = 4;
  strcpy(&v137, "    ");
  v11 = std::string::append(&v137, "return ");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v152.__r_.__value_.__r.__words[0] = &v146;
  v13 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v147, &v146);
  v16 = v13[3];
  v14 = (v13 + 3);
  v15 = v16;
  v17 = v14[23];
  if (v17 >= 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = v15;
  }

  if (v17 >= 0)
  {
    v19 = *(v14 + 23);
  }

  else
  {
    v19 = *(v14 + 1);
  }

  v20 = std::string::append(&v138, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&__dst, ";\n");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v140.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v140.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v140;
  }

  else
  {
    v24 = v140.__r_.__value_.__r.__words[0];
  }

  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v140.__r_.__value_.__l.__size_;
  }

  std::string::append(&v141, v24, size);
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_78:
      operator delete(v138.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_79;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }

LABEL_37:
  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_79:
  operator delete(v137.__r_.__value_.__l.__data_);
LABEL_38:
  std::string::append(&v141, "};");
  memset(&v140, 0, sizeof(v140));
  std::string::reserve(&v140, 0x400uLL);
  std::operator+<char>();
  v26 = std::string::append(&v138, " ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = __dst.__r_.__value_.__l.__size_;
  }

  std::string::append(&v140, p_dst, v29);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_46:
      v30 = (a1 + 40);
      v31 = *(a1 + 63);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_82:
      if (*(a1 + 48))
      {
        v32 = *v30;
        v33 = strlen(*v30);
        if (v33 <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v32 = "fragmentFunc";
        v33 = strlen("fragmentFunc");
        if (v33 <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_51;
        }
      }

LABEL_84:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v138.__r_.__value_.__l.__data_);
  v30 = (a1 + 40);
  v31 = *(a1 + 63);
  if (v31 < 0)
  {
    goto LABEL_82;
  }

LABEL_47:
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = "fragmentFunc";
  }

  v33 = strlen(v32);
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_84;
  }

LABEL_51:
  v34 = v33;
  v133 = this;
  if (v33 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v33;
  if (v33)
  {
    memmove(&__dst, v32, v33);
  }

  __dst.__r_.__value_.__s.__data_[v34] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = __dst.__r_.__value_.__l.__size_;
  }

  if (v35 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v35 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v138, 0, sizeof(v138));
  *(&v138.__r_.__value_.__s + 23) = v35 + 1;
  if (v35)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &__dst;
    }

    else
    {
      v36 = __dst.__r_.__value_.__r.__words[0];
    }

    memmove(&v138, v36, v35);
  }

  *(&v138.__r_.__value_.__l.__data_ + v35) = 40;
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v138;
  }

  else
  {
    v37 = v138.__r_.__value_.__r.__words[0];
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v138.__r_.__value_.__l.__size_;
  }

  std::string::append(&v140, v37, v38);
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
    *(&v138.__r_.__value_.__s + 23) = 0;
    v138.__r_.__value_.__s.__data_[0] = 0;
    v39 = v149;
    v40 = v150;
    if (v149 == v150)
    {
      goto LABEL_237;
    }

    goto LABEL_86;
  }

  *(&v138.__r_.__value_.__s + 23) = 0;
  v138.__r_.__value_.__s.__data_[0] = 0;
  v39 = v149;
  v40 = v150;
  if (v149 != v150)
  {
LABEL_86:
    v41 = 0;
    v42 = 0;
    while (1)
    {
      v43 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
      v44 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v138.__r_.__value_.__r.__words[2]) : v138.__r_.__value_.__l.__size_;
      std::string::append(&v140, v43, v44);
      v45 = *v39;
      if (*v39 <= 5)
      {
        break;
      }

      switch(v45)
      {
        case 6:
          if (*(v39 + 31) >= 0)
          {
            v48 = *(v39 + 31);
          }

          else
          {
            v48 = *(v39 + 16);
          }

          if (v48 + 8 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v48 + 8 >= 0x17)
          {
            operator new();
          }

          memset(&v152, 0, sizeof(v152));
          *(&v152.__r_.__value_.__s + 23) = v48 + 8;
          if (v48)
          {
            if (*(v39 + 31) >= 0)
            {
              v55 = (v39 + 8);
            }

            else
            {
              v55 = *(v39 + 8);
            }

            memmove(&v152, v55, v48);
          }

          strcpy(&v152 + v48, " sampler");
          std::to_string(&v136, v41);
          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &v136;
          }

          else
          {
            v56 = v136.__r_.__value_.__r.__words[0];
          }

          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v136.__r_.__value_.__l.__size_;
          }

          v58 = std::string::append(&v152, v56, v57);
          v59 = *&v58->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v59;
          v58->__r_.__value_.__l.__size_ = 0;
          v58->__r_.__value_.__r.__words[2] = 0;
          v58->__r_.__value_.__r.__words[0] = 0;
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &v137;
          }

          else
          {
            v60 = v137.__r_.__value_.__r.__words[0];
          }

          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v61 = v137.__r_.__value_.__l.__size_;
          }

          std::string::append(&v140, v60, v61);
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_226;
            }

LABEL_154:
            if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_227:
              operator delete(v152.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_154;
            }

LABEL_226:
            operator delete(v136.__r_.__value_.__l.__data_);
            if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_227;
            }
          }

          std::to_string(&v136, v41);
          v62 = std::string::insert(&v136, 0, " [[ sampler(");
          v63 = *&v62->__r_.__value_.__l.__data_;
          v152.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
          *&v152.__r_.__value_.__l.__data_ = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          v64 = std::string::append(&v152, ") ]]");
          v65 = *&v64->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v65;
          v64->__r_.__value_.__l.__size_ = 0;
          v64->__r_.__value_.__r.__words[2] = 0;
          v64->__r_.__value_.__r.__words[0] = 0;
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v66 = &v137;
          }

          else
          {
            v66 = v137.__r_.__value_.__r.__words[0];
          }

          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v67 = v137.__r_.__value_.__l.__size_;
          }

          std::string::append(&v140, v66, v67);
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
            if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_232;
            }

LABEL_163:
            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_233:
              operator delete(v136.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_163;
            }

LABEL_232:
            operator delete(v152.__r_.__value_.__l.__data_);
            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_233;
            }
          }

          ++v41;
          break;
        case 7:
          if (*(v39 + 31) >= 0)
          {
            v49 = *(v39 + 31);
          }

          else
          {
            v49 = *(v39 + 16);
          }

          if (v49 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v49 + 1 >= 0x17)
          {
            operator new();
          }

          memset(&v152, 0, sizeof(v152));
          *(&v152.__r_.__value_.__s + 23) = v49 + 1;
          if (v49)
          {
            if (*(v39 + 31) >= 0)
            {
              v68 = (v39 + 8);
            }

            else
            {
              v68 = *(v39 + 8);
            }

            memmove(&v152, v68, v49);
          }

          *(&v152.__r_.__value_.__l.__data_ + v49) = 32;
          v69 = std::string::append(&v152, "vdata [[ stage_in ]]");
          v70 = *&v69->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v70;
          v69->__r_.__value_.__l.__size_ = 0;
          v69->__r_.__value_.__r.__words[2] = 0;
          v69->__r_.__value_.__r.__words[0] = 0;
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = &v137;
          }

          else
          {
            v71 = v137.__r_.__value_.__r.__words[0];
          }

          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v72 = v137.__r_.__value_.__l.__size_;
          }

LABEL_217:
          std::string::append(&v140, v71, v72);
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
            if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_224:
              operator delete(v152.__r_.__value_.__l.__data_);
              break;
            }
          }

          else if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_224;
          }

          break;
        case 9:
          if (*(v39 + 31) >= 0)
          {
            v46 = *(v39 + 31);
          }

          else
          {
            v46 = *(v39 + 16);
          }

          if (v46 + 8 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v46 + 8 >= 0x17)
          {
            operator new();
          }

          memset(&v152, 0, sizeof(v152));
          *(&v152.__r_.__value_.__s + 23) = v46 + 8;
          if (v46)
          {
            if (*(v39 + 31) >= 0)
            {
              v73 = (v39 + 8);
            }

            else
            {
              v73 = *(v39 + 8);
            }

            memmove(&v152, v73, v46);
          }

          strcpy(&v152 + v46, " texture");
          std::to_string(&v136, v42);
          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = &v136;
          }

          else
          {
            v74 = v136.__r_.__value_.__r.__words[0];
          }

          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v75 = v136.__r_.__value_.__l.__size_;
          }

          v76 = std::string::append(&v152, v74, v75);
          v77 = *&v76->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v77;
          v76->__r_.__value_.__l.__size_ = 0;
          v76->__r_.__value_.__r.__words[2] = 0;
          v76->__r_.__value_.__r.__words[0] = 0;
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v78 = &v137;
          }

          else
          {
            v78 = v137.__r_.__value_.__r.__words[0];
          }

          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v79 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v79 = v137.__r_.__value_.__l.__size_;
          }

          std::string::append(&v140, v78, v79);
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_229;
            }

LABEL_195:
            if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_230:
              operator delete(v152.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_195;
            }

LABEL_229:
            operator delete(v136.__r_.__value_.__l.__data_);
            if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_230;
            }
          }

          std::to_string(&v136, v42);
          v80 = std::string::insert(&v136, 0, " [[ texture(");
          v81 = *&v80->__r_.__value_.__l.__data_;
          v152.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
          *&v152.__r_.__value_.__l.__data_ = v81;
          v80->__r_.__value_.__l.__size_ = 0;
          v80->__r_.__value_.__r.__words[2] = 0;
          v80->__r_.__value_.__r.__words[0] = 0;
          v82 = std::string::append(&v152, ") ]]");
          v83 = *&v82->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = &v137;
          }

          else
          {
            v84 = v137.__r_.__value_.__r.__words[0];
          }

          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v85 = v137.__r_.__value_.__l.__size_;
          }

          std::string::append(&v140, v84, v85);
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
            if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_235;
            }

LABEL_204:
            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_236:
              operator delete(v136.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_204;
            }

LABEL_235:
            operator delete(v152.__r_.__value_.__l.__data_);
            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_236;
            }
          }

          ++v42;
          break;
      }

LABEL_219:
      *(&v137.__r_.__value_.__s + 23) = 4;
      strcpy(&v137, "    ");
      v89 = std::string::insert(&v137, 0, ",\n");
      v90 = v89->__r_.__value_.__r.__words[0];
      v152.__r_.__value_.__r.__words[0] = v89->__r_.__value_.__l.__size_;
      *(v152.__r_.__value_.__r.__words + 7) = *(&v89->__r_.__value_.__r.__words[1] + 7);
      v91 = HIBYTE(v89->__r_.__value_.__r.__words[2]);
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      v138.__r_.__value_.__r.__words[0] = v90;
      v138.__r_.__value_.__l.__size_ = v152.__r_.__value_.__r.__words[0];
      *(&v138.__r_.__value_.__r.__words[1] + 7) = *(v152.__r_.__value_.__r.__words + 7);
      *(&v138.__r_.__value_.__s + 23) = v91;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      v39 += 48;
      if (v39 == v40)
      {
        goto LABEL_237;
      }
    }

    if (v45 == 2)
    {
      v50 = *(v39 + 36) - 1;
      if (v50 <= 3)
      {
        std::string::append(&v140, off_279AA87C8[v50]);
      }

      v51 = *(v39 + 31);
      if (v51 >= 0)
      {
        v52 = (v39 + 8);
      }

      else
      {
        v52 = *(v39 + 8);
      }

      if (v51 >= 0)
      {
        v53 = *(v39 + 31);
      }

      else
      {
        v53 = *(v39 + 16);
      }

      std::string::append(&v140, v52, v53);
      v54 = *(v39 + 36) - 1;
      if (v54 <= 3)
      {
        std::string::append(&v140, off_279AA87E8[v54]);
      }

      std::string::append(&v140, "shaderParams [[ buffer(0) ]]");
      goto LABEL_219;
    }

    if (v45 != 5)
    {
      goto LABEL_219;
    }

    if (*(v39 + 31) >= 0)
    {
      v47 = *(v39 + 31);
    }

    else
    {
      v47 = *(v39 + 16);
    }

    if (v47 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v47 + 1 >= 0x17)
    {
      operator new();
    }

    memset(&v152, 0, sizeof(v152));
    *(&v152.__r_.__value_.__s + 23) = v47 + 1;
    if (v47)
    {
      if (*(v39 + 31) >= 0)
      {
        v86 = (v39 + 8);
      }

      else
      {
        v86 = *(v39 + 8);
      }

      memmove(&v152, v86, v47);
    }

    *(&v152.__r_.__value_.__l.__data_ + v47) = 32;
    v87 = std::string::append(&v152, "position [[ position ]]");
    v88 = *&v87->__r_.__value_.__l.__data_;
    v137.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
    *&v137.__r_.__value_.__l.__data_ = v88;
    v87->__r_.__value_.__l.__size_ = 0;
    v87->__r_.__value_.__r.__words[2] = 0;
    v87->__r_.__value_.__r.__words[0] = 0;
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v137;
    }

    else
    {
      v71 = v137.__r_.__value_.__r.__words[0];
    }

    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v72 = v137.__r_.__value_.__l.__size_;
    }

    goto LABEL_217;
  }

LABEL_237:
  std::string::append(&v140, ")\n");
  memset(&v137, 0, sizeof(v137));
  std::string::reserve(&v137, 0x400uLL);
  std::string::append(&v137, "struct VertexData {\n");
  *(&v136.__r_.__value_.__s + 23) = 4;
  strcpy(&v136, "    ");
  v92 = std::string::append(&v136, "float4 _position [[ position ]];\n");
  v93 = *&v92->__r_.__value_.__l.__data_;
  v152.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
  *&v152.__r_.__value_.__l.__data_ = v93;
  v92->__r_.__value_.__l.__size_ = 0;
  v92->__r_.__value_.__r.__words[2] = 0;
  v92->__r_.__value_.__r.__words[0] = 0;
  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = &v152;
  }

  else
  {
    v94 = v152.__r_.__value_.__r.__words[0];
  }

  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v95 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v95 = v152.__r_.__value_.__l.__size_;
  }

  std::string::append(&v137, v94, v95);
  if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_245;
    }

LABEL_248:
    operator delete(v136.__r_.__value_.__l.__data_);
    v96 = v145;
    if (!v145)
    {
      goto LABEL_284;
    }

    goto LABEL_249;
  }

  operator delete(v152.__r_.__value_.__l.__data_);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_248;
  }

LABEL_245:
  v96 = v145;
  if (v145)
  {
LABEL_249:
    v97 = 0;
    while (1)
    {
      *(&v135.__r_.__value_.__s + 23) = 4;
      strcpy(&v135, "    ");
      v98 = std::string::append(&v135, "float4 _texcoord");
      v99 = *&v98->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v99;
      v98->__r_.__value_.__l.__size_ = 0;
      v98->__r_.__value_.__r.__words[2] = 0;
      v98->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v134, v97);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = &v134;
      }

      else
      {
        v100 = v134.__r_.__value_.__r.__words[0];
      }

      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = HIBYTE(v134.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = v134.__r_.__value_.__l.__size_;
      }

      v102 = std::string::append(&v136, v100, v101);
      v103 = *&v102->__r_.__value_.__l.__data_;
      v152.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
      *&v152.__r_.__value_.__l.__data_ = v103;
      v102->__r_.__value_.__l.__size_ = 0;
      v102->__r_.__value_.__r.__words[2] = 0;
      v102->__r_.__value_.__r.__words[0] = 0;
      if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v104 = &v152;
      }

      else
      {
        v104 = v152.__r_.__value_.__r.__words[0];
      }

      if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v105 = v152.__r_.__value_.__l.__size_;
      }

      std::string::append(&v137, v104, v105);
      if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v152.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_266:
          if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_267;
          }

          goto LABEL_279;
        }
      }

      else if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_266;
      }

      operator delete(v134.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_267:
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_280;
        }

        goto LABEL_268;
      }

LABEL_279:
      operator delete(v136.__r_.__value_.__l.__data_);
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_280:
        operator delete(v135.__r_.__value_.__l.__data_);
      }

LABEL_268:
      std::to_string(&v135, v97);
      v106 = std::string::insert(&v135, 0, " [[ user(texcoord");
      v107 = *&v106->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v107;
      v106->__r_.__value_.__l.__size_ = 0;
      v106->__r_.__value_.__r.__words[2] = 0;
      v106->__r_.__value_.__r.__words[0] = 0;
      v108 = std::string::append(&v136, ") ]];\n");
      v109 = *&v108->__r_.__value_.__l.__data_;
      v152.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
      *&v152.__r_.__value_.__l.__data_ = v109;
      v108->__r_.__value_.__l.__size_ = 0;
      v108->__r_.__value_.__r.__words[2] = 0;
      v108->__r_.__value_.__r.__words[0] = 0;
      if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v110 = &v152;
      }

      else
      {
        v110 = v152.__r_.__value_.__r.__words[0];
      }

      if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v111 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v111 = v152.__r_.__value_.__l.__size_;
      }

      std::string::append(&v137, v110, v111);
      if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v152.__r_.__value_.__l.__data_);
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_250;
        }

LABEL_282:
        if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

LABEL_283:
        operator delete(v135.__r_.__value_.__l.__data_);
        if (v96 == ++v97)
        {
          break;
        }
      }

      else
      {
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_282;
        }

LABEL_250:
        operator delete(v136.__r_.__value_.__l.__data_);
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_283;
        }

LABEL_251:
        if (v96 == ++v97)
        {
          break;
        }
      }
    }
  }

LABEL_284:
  if ((v142 & 1) == 0)
  {
    goto LABEL_293;
  }

  *(&v136.__r_.__value_.__s + 23) = 4;
  strcpy(&v136, "    ");
  v112 = std::string::append(&v136, "float4 _color [[ user(primary) ]];\n");
  v113 = *&v112->__r_.__value_.__l.__data_;
  v152.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
  *&v152.__r_.__value_.__l.__data_ = v113;
  v112->__r_.__value_.__l.__size_ = 0;
  v112->__r_.__value_.__r.__words[2] = 0;
  v112->__r_.__value_.__r.__words[0] = 0;
  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v114 = &v152;
  }

  else
  {
    v114 = v152.__r_.__value_.__r.__words[0];
  }

  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v115 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v115 = v152.__r_.__value_.__l.__size_;
  }

  std::string::append(&v137, v114, v115);
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_293;
    }
  }

  else if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_293;
  }

  operator delete(v136.__r_.__value_.__l.__data_);
LABEL_293:
  std::string::append(&v137, "};\n");
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v116 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v116 = v137.__r_.__value_.__l.__size_;
  }

  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v117 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v117 = v140.__r_.__value_.__l.__size_;
  }

  if (v117 + v116 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v117 + v116 > 0x16)
  {
    operator new();
  }

  memset(&v136, 0, sizeof(v136));
  *(&v136.__r_.__value_.__s + 23) = v117 + v116;
  if (v116)
  {
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v118 = &v137;
    }

    else
    {
      v118 = v137.__r_.__value_.__r.__words[0];
    }

    memmove(&v136, v118, v116);
  }

  v119 = &v136 + v116;
  if (v117)
  {
    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v120 = &v140;
    }

    else
    {
      v120 = v140.__r_.__value_.__r.__words[0];
    }

    memmove(v119, v120, v117);
  }

  v119[v117] = 0;
  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = &v141;
  }

  else
  {
    v121 = v141.__r_.__value_.__r.__words[0];
  }

  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v122 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v122 = v141.__r_.__value_.__l.__size_;
  }

  v123 = std::string::append(&v136, v121, v122);
  v124 = *&v123->__r_.__value_.__l.__data_;
  v152.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
  *&v152.__r_.__value_.__l.__data_ = v124;
  v123->__r_.__value_.__l.__size_ = 0;
  v123->__r_.__value_.__r.__words[2] = 0;
  v123->__r_.__value_.__r.__words[0] = 0;
  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v125 = &v152;
  }

  else
  {
    v125 = v152.__r_.__value_.__r.__words[0];
  }

  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v126 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v126 = v152.__r_.__value_.__l.__size_;
  }

  std::string::append(v133, v125, v126);
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_326:
      if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_327;
      }

      goto LABEL_335;
    }
  }

  else if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_326;
  }

  operator delete(v136.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_327:
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_328;
    }

    goto LABEL_336;
  }

LABEL_335:
  operator delete(v137.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_328:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_329;
    }

    goto LABEL_337;
  }

LABEL_336:
  operator delete(v138.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_329:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_330;
    }

    goto LABEL_338;
  }

LABEL_337:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_330:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_331;
    }

    goto LABEL_339;
  }

LABEL_338:
  operator delete(v140.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_331:
    v127 = *&v147[1];
    if (!*&v147[1])
    {
      goto LABEL_340;
    }

    do
    {
LABEL_346:
      v132 = *v127;
      if (*(v127 + 47) < 0)
      {
        operator delete(v127[3]);
      }

      operator delete(v127);
      v127 = v132;
    }

    while (v132);
    goto LABEL_340;
  }

LABEL_339:
  operator delete(v141.__r_.__value_.__l.__data_);
  v127 = *&v147[1];
  if (*&v147[1])
  {
    goto LABEL_346;
  }

LABEL_340:
  v128 = *&v147[0];
  *&v147[0] = 0;
  if (v128)
  {
    operator delete(v128);
  }

  v129 = v149;
  if (v149)
  {
    v130 = v150;
    v131 = v149;
    if (v150 != v149)
    {
      do
      {
        if (*(v130 - 17) < 0)
        {
          operator delete(*(v130 - 40));
        }

        v130 -= 48;
      }

      while (v130 != v129);
      v131 = v149;
    }

    v150 = v129;
    operator delete(v131);
  }
}

void sub_25FC410B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v63 - 105) < 0)
  {
    operator delete(*(v63 - 128));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  std::unordered_map<unsigned long,std::string>::~unordered_map[abi:ne200100](v63 - 208);
  std::vector<HGBinding>::~vector[abi:ne200100]((v63 - 152));
  _Unwind_Resume(a1);
}

void sub_25FC414B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if ((a30 & 0x80000000) == 0)
  {
    JUMPOUT(0x25FC41470);
  }

  JUMPOUT(0x25FC41468);
}

void HGProgramDescriptor::privateEncodeShaderFunction(uint64_t a1, std::string *a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, void *a7, void *a8)
{
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  v11 = *(a1 + 240) - *(a1 + 232);
  if (v11)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v11 >> 4)) >> 61))
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  *a6 -= *(&v99 + 1);
  *a8 -= *(&v93 + 1);
  *a7 -= *(&v96 + 1);
  std::to_string(v86, *a5);
  v12 = std::string::insert(v86, 0, "r");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v90.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v90.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((v86[23] & 0x80000000) != 0)
  {
    operator delete(*v86);
    *v86 = *a5;
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v86 = *a5;
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      *&v86[8] = v90;
      goto LABEL_9;
    }
  }

  std::string::__init_copy_ctor_external(&v86[8], v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
LABEL_9:
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::string>>(a4, v86);
  if ((v86[31] & 0x80000000) != 0)
  {
    operator delete(*&v86[8]);
  }

  *(&v85.__r_.__value_.__s + 23) = 4;
  strcpy(&v85, "    ");
  v14 = *(a1 + 215);
  if (v14 >= 0)
  {
    v15 = (a1 + 192);
  }

  else
  {
    v15 = *(a1 + 192);
  }

  if (v14 >= 0)
  {
    v16 = *(a1 + 215);
  }

  else
  {
    v16 = *(a1 + 200);
  }

  v17 = std::string::append(&v85, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v87.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v87.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v87, " ");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v90;
  }

  else
  {
    v21 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v90.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(&v88, v21, size);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v89.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v89.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v89, " = ");
  v26 = *&v25->__r_.__value_.__l.__data_;
  *&v86[16] = *(&v25->__r_.__value_.__l + 2);
  *v86 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (v86[23] >= 0)
  {
    v27 = v86;
  }

  else
  {
    v27 = *v86;
  }

  if (v86[23] >= 0)
  {
    v28 = v86[23];
  }

  else
  {
    v28 = *&v86[8];
  }

  std::string::append(a2, v27, v28);
  if ((v86[23] & 0x80000000) != 0)
  {
    operator delete(*v86);
    if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }
  }

  else if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(v89.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v88.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_33:
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_40:
    operator delete(v85.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

LABEL_39:
  operator delete(v87.__r_.__value_.__l.__data_);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_35:
    *v86 = v90;
    goto LABEL_42;
  }

LABEL_41:
  std::string::__init_copy_ctor_external(v86, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
LABEL_42:
  if (*(a1 + 87) >= 0)
  {
    v29 = *(a1 + 87);
  }

  else
  {
    v29 = *(a1 + 72);
  }

  if (v29 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v29 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v89, 0, sizeof(v89));
  *(&v89.__r_.__value_.__s + 23) = v29 + 1;
  if (v29)
  {
    if (*(a1 + 87) >= 0)
    {
      v30 = (a1 + 64);
    }

    else
    {
      v30 = *(a1 + 64);
    }

    memmove(&v89, v30, v29);
  }

  *(&v89.__r_.__value_.__l.__data_ + v29) = 40;
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v89;
  }

  else
  {
    v31 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v89.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v31, v32);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
    *(&v89.__r_.__value_.__s + 23) = 0;
    v89.__r_.__value_.__s.__data_[0] = 0;
    v33 = *(a1 + 240) - *(a1 + 232);
    if (!v33)
    {
      goto LABEL_152;
    }

    goto LABEL_63;
  }

  *(&v89.__r_.__value_.__s + 23) = 0;
  v89.__r_.__value_.__s.__data_[0] = 0;
  v33 = *(a1 + 240) - *(a1 + 232);
  if (v33)
  {
LABEL_63:
    v34 = 0;
    v35 = 0;
    v36 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 4);
    if (v36 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    v38 = 0;
    while (1)
    {
      v40 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v89 : v89.__r_.__value_.__r.__words[0];
      v41 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v89.__r_.__value_.__r.__words[2]) : v89.__r_.__value_.__l.__size_;
      std::string::append(a2, v40, v41);
      MEMORY[0x2666E99D0](&v89, ", ");
      v42 = *(a1 + 232);
      v43 = *(v42 + v34);
      if (v43 <= 7)
      {
        break;
      }

      if (v43 <= 9)
      {
        if (v43 != 8)
        {
          std::to_string(&v87, *v38);
          v44 = std::string::insert(&v87, 0, "texture");
          v45 = *&v44->__r_.__value_.__l.__data_;
          v88.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v88.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = &v88;
          }

          else
          {
            v46 = v88.__r_.__value_.__r.__words[0];
          }

          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v47 = v88.__r_.__value_.__l.__size_;
          }

          std::string::append(a2, v46, v47);
          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_87;
            }
          }

          else if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_87:
            ++v35;
            goto LABEL_69;
          }

          operator delete(v87.__r_.__value_.__l.__data_);
          goto LABEL_87;
        }

        std::to_string(&v87, *v38);
        v57 = std::string::insert(&v87, 0, "vdata._texcoord");
        v58 = *&v57->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = &v88;
        }

        else
        {
          v50 = v88.__r_.__value_.__r.__words[0];
        }

        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = v88.__r_.__value_.__l.__size_;
        }

LABEL_118:
        std::string::append(a2, v50, v51);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_135:
            operator delete(v87.__r_.__value_.__l.__data_);
            goto LABEL_69;
          }
        }

        else if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_135;
        }

        goto LABEL_69;
      }

      if (v43 == 10)
      {
        v87.__r_.__value_.__r.__words[0] = *v38;
        v88.__r_.__value_.__r.__words[0] = &v87;
        v59 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a4, &v87);
        v62 = v59[3];
        v60 = (v59 + 3);
        v61 = v62;
        v63 = v60[23];
        if (v63 >= 0)
        {
          v64 = v60;
        }

        else
        {
          v64 = v61;
        }

        if (v63 >= 0)
        {
          v65 = *(v60 + 23);
        }

        else
        {
          v65 = *(v60 + 1);
        }

        std::string::append(a2, v64, v65);
        v66 = *(a1 + 112) + 16 * v35;
        v67 = *v66;
        LODWORD(v88.__r_.__value_.__l.__data_) = *v66;
        v68 = *(v66 + 8);
        v88.__r_.__value_.__l.__size_ = v68;
        if (v68)
        {
          (*(*v68 + 16))(v68);
          if (!v67)
          {
            (*(*v68 + 16))(v68);
            if (v68[46] == 4)
            {
              std::string::append(a2, ".color0");
            }

            (*(*v68 + 24))(v68);
          }

          (*(*v68 + 24))(v68);
        }

        ++v35;
        goto LABEL_69;
      }

      v39 = "vdata._color";
      if (v43 == 11)
      {
        goto LABEL_68;
      }

LABEL_69:
      v34 += 48;
      ++v38;
      if (!--v37)
      {
        goto LABEL_152;
      }
    }

    if (v43 == 2)
    {
      v52 = v42 + v34;
      v53 = *(v42 + v34 + 36);
      if (*(v42 + v34 + 40))
      {
        if (v53 == 4 || v53 == 2)
        {
          std::operator+<char>();
          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = &v88;
          }

          else
          {
            v55 = v88.__r_.__value_.__r.__words[0];
          }

          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = v88.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          std::operator+<char>();
          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = &v88;
          }

          else
          {
            v55 = v88.__r_.__value_.__r.__words[0];
          }

          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = v88.__r_.__value_.__l.__size_;
          }
        }

        std::string::append(a2, v55, v56);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
          v39 = "[0]";
          if (*(v52 + 40) <= 1u)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v39 = "[0]";
          if (*(v52 + 40) <= 1u)
          {
            goto LABEL_69;
          }
        }
      }

      else if (((v53 - 1) & 0xFFFFFFFD) != 0)
      {
        v39 = "0";
      }

      else
      {
        v39 = "0x0";
      }

      goto LABEL_68;
    }

    if (v43 == 5)
    {
      v39 = "vdata._position";
LABEL_68:
      std::string::append(a2, v39);
      goto LABEL_69;
    }

    if (v43 != 6)
    {
      goto LABEL_69;
    }

    std::to_string(&v87, *v38);
    v48 = std::string::insert(&v87, 0, "sampler");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v88;
    }

    else
    {
      v50 = v88.__r_.__value_.__r.__words[0];
    }

    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v51 = v88.__r_.__value_.__l.__size_;
    }

    goto LABEL_118;
  }

LABEL_152:
  std::string::append(a2, ");\n");
  if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v86[23] & 0x80000000) == 0)
    {
      goto LABEL_154;
    }

LABEL_161:
    operator delete(*v86);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_162;
  }

  operator delete(v89.__r_.__value_.__l.__data_);
  if ((v86[23] & 0x80000000) != 0)
  {
    goto LABEL_161;
  }

LABEL_154:
  if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_155;
  }

LABEL_162:
  operator delete(v90.__r_.__value_.__l.__data_);
LABEL_155:
  v69 = *(&v91 + 1);
  v70 = v92;
  *(&v93 + 1) = 0;
  v71 = (v92 - *(&v91 + 1)) >> 3;
  if (v71 >= 3)
  {
    do
    {
      operator delete(*v69);
      v70 = v92;
      v69 = (*(&v91 + 1) + 8);
      *(&v91 + 1) = v69;
      v71 = (v92 - v69) >> 3;
    }

    while (v71 > 2);
  }

  if (v71 == 1)
  {
    v72 = 256;
    goto LABEL_164;
  }

  if (v71 == 2)
  {
    v72 = 512;
LABEL_164:
    *&v93 = v72;
  }

  if (v69 != v70)
  {
    do
    {
      v73 = *v69++;
      operator delete(v73);
    }

    while (v69 != v70);
    if (v92 != *(&v91 + 1))
    {
      *&v92 = v92 + ((*(&v91 + 1) - v92 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v91)
  {
    operator delete(v91);
  }

  v74 = *(&v94 + 1);
  v75 = v95;
  *(&v96 + 1) = 0;
  v76 = (v95 - *(&v94 + 1)) >> 3;
  if (v76 >= 3)
  {
    do
    {
      operator delete(*v74);
      v75 = v95;
      v74 = (*(&v94 + 1) + 8);
      *(&v94 + 1) = v74;
      v76 = (v95 - v74) >> 3;
    }

    while (v76 > 2);
  }

  if (v76 == 1)
  {
    v77 = 256;
    goto LABEL_177;
  }

  if (v76 == 2)
  {
    v77 = 512;
LABEL_177:
    *&v96 = v77;
  }

  if (v74 != v75)
  {
    do
    {
      v78 = *v74++;
      operator delete(v78);
    }

    while (v74 != v75);
    if (v95 != *(&v94 + 1))
    {
      *&v95 = v95 + ((*(&v94 + 1) - v95 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v94)
  {
    operator delete(v94);
  }

  v79 = *(&v97 + 1);
  v80 = v98;
  *(&v99 + 1) = 0;
  v81 = (v98 - *(&v97 + 1)) >> 3;
  if (v81 >= 3)
  {
    do
    {
      operator delete(*v79);
      v80 = v98;
      v79 = (*(&v97 + 1) + 8);
      *(&v97 + 1) = v79;
      v81 = (v98 - v79) >> 3;
    }

    while (v81 > 2);
  }

  if (v81 == 1)
  {
    v82 = 256;
    goto LABEL_190;
  }

  if (v81 == 2)
  {
    v82 = 512;
LABEL_190:
    *&v99 = v82;
  }

  if (v79 != v80)
  {
    do
    {
      v83 = *v79++;
      operator delete(v83);
    }

    while (v79 != v80);
    if (v98 != *(&v97 + 1))
    {
      *&v98 = v98 + ((*(&v97 + 1) - v98 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v97)
  {
    operator delete(v97);
  }
}

void sub_25FC42EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>::~pair(&a24);
  if (a20)
  {
    operator delete(a20);
  }

  std::deque<unsigned long>::~deque[abi:ne200100]((v50 - 240));
  std::deque<unsigned long>::~deque[abi:ne200100]((v50 - 192));
  std::deque<unsigned long>::~deque[abi:ne200100]((v50 - 144));
  _Unwind_Resume(a1);
}

const char *HGProgramDescriptor::GetFragmentFunctionName(HGProgramDescriptor *this)
{
  if (*(this + 63) < 0)
  {
    if (*(this + 6))
    {
      return *(this + 5);
    }

    else
    {
      return "fragmentFunc";
    }
  }

  else if (*(this + 63))
  {
    return this + 40;
  }

  else
  {
    return "fragmentFunc";
  }
}

void HGProgramDescriptor::EncodeShaderProgram(uint64_t a1, std::string *this, char *a3)
{
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 111);
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(a1 + 111);
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*(a1 + 96))
  {
LABEL_4:
    v5 = 1;
    if (!v3)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

LABEL_8:
  v6 = *(a1 + 183);
  if (v6 < 0)
  {
    v5 = *(a1 + 168) != 0;
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5 = v6 != 0;
    if (!v3)
    {
      goto LABEL_22;
    }
  }

LABEL_12:
  if (v5)
  {
    v7 = 2070;
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) + 2047;
    }

    std::string::reserve(this, v7);
    *__p = 0u;
    *v18 = 0u;
    v19 = 1065353216;
    HGProgramDescriptor::privateEncodeShaderProgram(a1, this, __p);
    v10 = v18[0];
    if (v18[0])
    {
      do
      {
        v12 = *v10;
        if (*(v10 + 39) < 0)
        {
          operator delete(v10[2]);
        }

        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }

    v11 = __p[0];
    __p[0] = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return;
  }

LABEL_22:
  v13 = *(a1 + 159);
  if (v13 < 0)
  {
    if (*(a1 + 144))
    {
      goto LABEL_24;
    }
  }

  else if (*(a1 + 159))
  {
LABEL_24:
    v14 = (a1 + 136);
    if (v13 >= 0)
    {
      v15 = *(a1 + 159);
    }

    else
    {
      v14 = *(a1 + 136);
      v15 = *(a1 + 144);
    }

    std::string::append(this, v14, v15);
    return;
  }

  v16 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v16 = *v16;
  }

  HGLogger::warning("Missing fragment shader for %s\n", this, a3, v16);
}

void sub_25FC435C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unordered_map<std::string,BOOL>::~unordered_map[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **HGProgramDescriptor::privateEncodeShaderProgram(uint64_t **result, std::string *a2, void *a3)
{
  v5 = result;
  v6 = result[14];
  v7 = result[15];
  while (v6 != v7)
  {
    v8 = *v6;
    LODWORD(__p) = *v6;
    v9 = v6[1];
    v15 = v9;
    if (v9)
    {
      (*(*v9 + 16))(v9);
      if (!v8)
      {
        (*(*v9 + 16))(v9);
        HGProgramDescriptor::privateEncodeShaderProgram(v9, a2, a3);
        (*(*v9 + 24))(v9);
      }

      result = (*(*v9 + 24))(v9);
    }

    v6 += 2;
  }

  if ((*(v5 + 183) & 0x8000000000000000) != 0)
  {
    if (!v5[21])
    {
      return result;
    }
  }

  else if (!*(v5 + 183))
  {
    return result;
  }

  __p = v5 + 8;
  result = std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, (v5 + 8));
  if ((result[5] & 1) == 0)
  {
    if (*(v5 + 183) >= 0)
    {
      v10 = *(v5 + 183);
    }

    else
    {
      v10 = v5[21];
    }

    if (v10 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 + 1 >= 0x17)
    {
      operator new();
    }

    v15 = 0;
    v16 = 0;
    __p = 0;
    HIBYTE(v16) = v10 + 1;
    if (v10)
    {
      if (*(v5 + 183) >= 0)
      {
        v11 = (v5 + 20);
      }

      else
      {
        v11 = v5[20];
      }

      memmove(&__p, v11, v10);
    }

    *(&__p + v10) = 10;
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v16 >= 0)
    {
      v13 = HIBYTE(v16);
    }

    else
    {
      v13 = v15;
    }

    std::string::append(a2, p_p, v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    __p = v5 + 8;
    result = std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, (v5 + 8));
    *(result + 40) = 1;
  }

  return result;
}

void sub_25FC4384C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FC4386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 24))(v9);
  std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>::~pair(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,BOOL>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void HGProgramDescriptor::CopyDependencies(HGProgramDescriptor *this)
{
  *__p = 0u;
  *v2 = 0u;
  v3 = 1065353216;
  operator new();
}

uint64_t **HGProgramDescriptor::privateGetDependencies(uint64_t **result, uint64_t *a2, void *a3)
{
  v5 = result;
  v6 = result[14];
  v7 = result[15];
  while (v6 != v7)
  {
    if (!*v6)
    {
      v8 = v6[1];
      if (v8)
      {
        (*(*v8 + 16))(v6[1]);
        HGProgramDescriptor::privateGetDependencies(v8, a2, a3);
        result = (*(*v8 + 24))(v8);
      }
    }

    v6 += 2;
  }

  if ((*(v5 + 87) & 0x8000000000000000) != 0)
  {
    if (!v5[9])
    {
      return result;
    }
  }

  else if (!*(v5 + 87))
  {
    return result;
  }

  v14.__r_.__value_.__r.__words[0] = (v5 + 8);
  result = std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, (v5 + 8));
  if ((result[5] & 1) == 0)
  {
    if (*(v5 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, v5[11], v5[12]);
      if ((*(v5 + 87) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *(v5 + 11);
      if ((*(v5 + 87) & 0x80000000) == 0)
      {
LABEL_14:
        __p = *(v5 + 8);
LABEL_17:
        v9 = a2[1];
        if (v9 >= a2[2])
        {
          v12 = std::vector<HGProgramDescriptor::Dependency>::__emplace_back_slow_path<HGProgramDescriptor::Dependency>(a2, &v14);
          v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          a2[1] = v12;
          if (v13 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v10 = *&v14.__r_.__value_.__l.__data_;
          *(v9 + 16) = *(&v14.__r_.__value_.__l + 2);
          *v9 = v10;
          memset(&v14, 0, sizeof(v14));
          v11 = __p.__r_.__value_.__r.__words[2];
          *(v9 + 24) = *&__p.__r_.__value_.__l.__data_;
          *(v9 + 40) = v11;
          memset(&__p, 0, sizeof(__p));
          a2[1] = v9 + 48;
        }

        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        v14.__r_.__value_.__r.__words[0] = (v5 + 8);
        result = std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, (v5 + 8));
        *(result + 40) = 1;
        return result;
      }
    }

    std::string::__init_copy_ctor_external(&__p, v5[8], v5[9]);
    goto LABEL_17;
  }

  return result;
}

void sub_25FC43C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGProgramDescriptor::GetSignature@<X0>(HGProgramDescriptor *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 4) = 0u;
  *a2 = 396048;
  *(a2 + 42) = 1;
  return HGProgramDescriptor::privateGetSignature(this, a2);
}

uint64_t HGProgramDescriptor::privateGetSignature(uint64_t this, HGLimits *a2)
{
  v3 = this;
  v4 = *(this + 112);
  v5 = *(this + 120);
  while (v4 != v5)
  {
    v6 = *v4;
    v7 = *(v4 + 1);
    if (v7)
    {
      this = (*(*v7 + 16))(v7);
    }

    if (v6 == 1)
    {
      ++*(a2 + 18);
      ++*(a2 + 40);
LABEL_12:
      if (v7)
      {
        goto LABEL_2;
      }

      goto LABEL_3;
    }

    if (v6)
    {
      goto LABEL_12;
    }

    if (v7)
    {
      (*(*v7 + 16))(v7);
      HGProgramDescriptor::privateGetSignature(v7, a2);
      (*(*v7 + 24))(v7);
LABEL_2:
      this = (*(*v7 + 24))(v7);
    }

LABEL_3:
    v4 += 4;
  }

  v8 = v3[29];
  v9 = v3[30];
  if (v8 != v9)
  {
    v10 = 0;
    v11 = *(a2 + 18);
    v12 = *(a2 + 3);
    v13 = *(a2 + 16);
    v14 = *(a2 + 11);
    v15 = *(a2 + 11);
    v16 = *(a2 + 40);
    while (1)
    {
      this = *v8;
      if (this <= 7)
      {
        switch(this)
        {
          case 2:
            v14 += *(v8 + 20);
            *(a2 + 11) = v14;
            this = v8[11];
            v15 += this;
            *(a2 + 11) = v15;
            break;
          case 3:
            *(a2 + 41) = 1;
            break;
          case 7:
            this = v3[32];
            v17 = v3[33];
            while (this != v17)
            {
              if (*this == 8)
              {
                *(a2 + 18) = ++v11;
              }

              this += 48;
            }

            break;
        }

        goto LABEL_17;
      }

      if (this > 9)
      {
        break;
      }

      if (this != 8)
      {
        *(a2 + 40) = ++v16;
LABEL_35:
        ++v10;
        goto LABEL_17;
      }

      *(a2 + 18) = ++v11;
LABEL_17:
      v8 += 12;
      if (v8 == v9)
      {
        goto LABEL_38;
      }
    }

    if (this != 10)
    {
      if (this == 11)
      {
        v13 |= 0x200u;
        *(a2 + 16) = v13;
      }

      goto LABEL_17;
    }

    this = (1 << v10);
    v12 |= this;
    *(a2 + 3) = v12;
    goto LABEL_35;
  }

  v15 = *(a2 + 11);
LABEL_38:
  *(a2 + 11) = (v15 + 15) & 0xFFFFFFF0;
  return this;
}

void sub_25FC43F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 24))(v9);
  std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>::~pair(&a9);
  _Unwind_Resume(a1);
}

uint64_t HGProgramDescriptor::GetMetalLibPath(HGProgramDescriptor *this)
{
  result = this + 88;
  if (*(this + 111) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t HGProgramDescriptor::GetVertexFunctionName(HGProgramDescriptor *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

unint64_t HGProgramDescriptor::GetHash(HGProgramDescriptor *this, const char *a2, char *a3)
{
  v4 = *(this + 87);
  if (v4 < 0)
  {
    v5 = *(this + 9);
    v6 = *(this + 111);
    if ((v6 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v6)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(this + 87);
    v6 = *(this + 111);
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*(this + 12))
  {
LABEL_4:
    v7 = 1;
    if (!v5)
    {
      goto LABEL_118;
    }

    goto LABEL_12;
  }

LABEL_8:
  v8 = *(this + 183);
  if (v8 < 0)
  {
    v7 = *(this + 21) != 0;
    if (!v5)
    {
      goto LABEL_118;
    }

    goto LABEL_12;
  }

  v7 = v8 != 0;
  if (v5)
  {
LABEL_12:
    if (!v7)
    {
      goto LABEL_118;
    }

    v9 = *(this + 15) - *(this + 14);
    if (!v9)
    {
      v13 = 0;
      v12 = 0;
      if ((v4 & 0x80) != 0)
      {
        goto LABEL_150;
      }

LABEL_128:
      if (v4)
      {
        goto LABEL_129;
      }

LABEL_151:
      v67 = *(this + 63);
      if (v67 < 0)
      {
        if (!*(this + 6))
        {
          goto LABEL_163;
        }
      }

      else if (!*(this + 63))
      {
        goto LABEL_163;
      }

      if (v67 >= 0)
      {
        v68 = (this + 40);
      }

      else
      {
        v68 = *(this + 5);
      }

      if (v67 >= 0)
      {
        v69 = *(this + 63);
      }

      else
      {
        v69 = *(this + 6);
      }

      v61 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](__p, v68, v69);
      if (v12 < v13)
      {
        goto LABEL_162;
      }

      v62 = v12;
      v63 = v12 >> 3;
      v73 = (v12 >> 3) + 1;
      if (v73 >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      if (v13 >> 2 > v73)
      {
        v73 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v65 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v73;
      }

      if (v65)
      {
        if (!(v65 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

LABEL_178:
      v13 = 8 * v65;
      *(8 * v63) = v61;
      v12 = 8 * v63 + 8;
      memcpy(0, 0, v62);
      v70 = *(this + 111);
      if ((v70 & 0x8000000000000000) != 0)
      {
        goto LABEL_179;
      }

LABEL_164:
      if (!v70)
      {
        goto LABEL_165;
      }

LABEL_180:
      if ((v70 & 0x80000000) == 0)
      {
        v74 = (this + 88);
      }

      else
      {
        v74 = *(this + 11);
      }

      if ((v70 & 0x80000000) == 0)
      {
        v75 = v70;
      }

      else
      {
        v75 = *(this + 12);
      }

      v76 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](__p, v74, v75);
      if (v12 >= v13)
      {
        v77 = v12;
        v78 = v12 >> 3;
        v79 = (v12 >> 3) + 1;
        if (v79 >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        if (v13 >> 2 > v79)
        {
          v79 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v79 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (v79)
        {
          if (!(v79 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v78) = v76;
        v12 = 8 * v78 + 8;
        memcpy(0, 0, v77);
        if (8 * v78 != -8)
        {
          goto LABEL_166;
        }
      }

      else
      {
        *v12 = v76;
        v12 += 8;
        if (v12)
        {
          goto LABEL_166;
        }
      }

      return 0;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if ((v9 >> 4) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v9 >> 4;
    }

    v80 = v14;
    while (1)
    {
      v15 = *(this + 14) + v10;
      v16 = *v15;
      v84 = *v15;
      v17 = *(v15 + 8);
      v85 = v17;
      if (v17)
      {
        (*(*v17 + 16))(v17);
      }

      if (v16 > 1)
      {
        break;
      }

      if (v16)
      {
        if (v16 != 1)
        {
          goto LABEL_116;
        }

        std::to_string(&v81, v11);
        v18 = std::string::insert(&v81, 0, "Sampler");
        v19 = *&v18->__r_.__value_.__l.__data_;
        v83 = v18->__r_.__value_.__r.__words[2];
        *__p = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if (v83 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        if (v83 >= 0)
        {
          v21 = HIBYTE(v83);
        }

        else
        {
          v21 = __p[1];
        }

        v22 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v86, v20, v21);
        if (v12 >= v13)
        {
          v23 = v12;
          v24 = v12 >> 3;
          v25 = v24 + 1;
          if ((v24 + 1) >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if (v13 >> 2 > v25)
          {
            v25 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            if (!(v26 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          goto LABEL_91;
        }

LABEL_79:
        *v12 = v22;
        v12 += 8;
        if ((SHIBYTE(v83) & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

LABEL_92:
        operator delete(__p[0]);
        if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_116;
        }

        goto LABEL_93;
      }

      if (v17)
      {
        (*(*v17 + 16))(v17);
        std::to_string(&v81, v11);
        v32 = std::string::insert(&v81, 0, "Pointer");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v83 = v32->__r_.__value_.__r.__words[2];
        *__p = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        if (v83 >= 0)
        {
          v34 = __p;
        }

        else
        {
          v34 = __p[0];
        }

        if (v83 >= 0)
        {
          v35 = HIBYTE(v83);
        }

        else
        {
          v35 = __p[1];
        }

        v36 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v86, v34, v35);
        if (v12 >= v13)
        {
          v45 = v12;
          v46 = v12 >> 3;
          v47 = v46 + 1;
          if ((v46 + 1) >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if (v13 >> 2 > v47)
          {
            v47 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v48 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v47;
          }

          if (v48)
          {
            if (!(v48 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v53 = (8 * v46);
          v13 = 0;
          *v53 = v36;
          v37 = (v53 + 1);
          memcpy(0, 0, v45);
          if (SHIBYTE(v83) < 0)
          {
LABEL_67:
            operator delete(__p[0]);
          }
        }

        else
        {
          *v12 = v36;
          v37 = v12 + 8;
          if (SHIBYTE(v83) < 0)
          {
            goto LABEL_67;
          }
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        Hash = HGProgramDescriptor::GetHash(v17);
        if (v37 >= v13)
        {
          v49 = v37;
          v50 = v37 >> 3;
          v51 = v50 + 1;
          if ((v50 + 1) >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if (v13 >> 2 > v51)
          {
            v51 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v51;
          }

          if (v52)
          {
            if (!(v52 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v54 = (8 * v50);
          v13 = 0;
          *v54 = Hash;
          v12 = (v54 + 1);
          memcpy(0, 0, v49);
        }

        else
        {
          *v37 = Hash;
          v12 = v37 + 8;
        }

        v14 = v80;
        (*(*v17 + 24))(v17);
LABEL_116:
        if (v85)
        {
          (*(*v85 + 24))(v85);
        }
      }

      ++v11;
      v10 += 16;
      if (v14 == v11)
      {
        LOBYTE(v4) = *(this + 87);
        if ((v4 & 0x80) == 0)
        {
          goto LABEL_128;
        }

LABEL_150:
        if (!*(this + 9))
        {
          goto LABEL_151;
        }

LABEL_129:
        if ((v4 & 0x80u) == 0)
        {
          v59 = (this + 64);
        }

        else
        {
          v59 = *(this + 8);
        }

        if ((v4 & 0x80u) == 0)
        {
          v60 = v4;
        }

        else
        {
          v60 = *(this + 9);
        }

        v61 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](__p, v59, v60);
        if (v12 >= v13)
        {
          v62 = v12;
          v63 = v12 >> 3;
          v64 = (v12 >> 3) + 1;
          if (v64 >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if (v13 >> 2 > v64)
          {
            v64 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v65 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v64;
          }

          if (v65)
          {
            if (!(v65 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          goto LABEL_178;
        }

LABEL_162:
        *v12 = v61;
        v12 += 8;
LABEL_163:
        v70 = *(this + 111);
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_164;
        }

LABEL_179:
        if (*(this + 12))
        {
          goto LABEL_180;
        }

LABEL_165:
        if (v12)
        {
LABEL_166:
          result = 0;
          v71 = 0;
          do
          {
            v72 = *v71++;
            result ^= (result << 6) + (result >> 2) - 0x61C8864680B583EBLL + v72;
          }

          while (v71 != v12);
          return result;
        }

        return 0;
      }
    }

    if (v16 == 2)
    {
      std::to_string(&v81, v11);
      v39 = std::string::insert(&v81, 0, "Ignore");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v83 = v39->__r_.__value_.__r.__words[2];
      *__p = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      if (v83 >= 0)
      {
        v41 = __p;
      }

      else
      {
        v41 = __p[0];
      }

      if (v83 >= 0)
      {
        v42 = HIBYTE(v83);
      }

      else
      {
        v42 = __p[1];
      }

      v22 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v86, v41, v42);
      if (v12 < v13)
      {
        goto LABEL_79;
      }

      v23 = v12;
      v24 = v12 >> 3;
      v43 = v24 + 1;
      if ((v24 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      if (v13 >> 2 > v43)
      {
        v43 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v43;
      }

      if (v26)
      {
        if (!(v26 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }
    }

    else
    {
      if (v16 != 3)
      {
        goto LABEL_116;
      }

      std::to_string(&v81, v11);
      v27 = std::string::insert(&v81, 0, "Zero");
      v28 = *&v27->__r_.__value_.__l.__data_;
      v83 = v27->__r_.__value_.__r.__words[2];
      *__p = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if (v83 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      if (v83 >= 0)
      {
        v30 = HIBYTE(v83);
      }

      else
      {
        v30 = __p[1];
      }

      v22 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v86, v29, v30);
      if (v12 < v13)
      {
        goto LABEL_79;
      }

      v23 = v12;
      v24 = v12 >> 3;
      v31 = v24 + 1;
      if ((v24 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      if (v13 >> 2 > v31)
      {
        v31 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v31;
      }

      if (v26)
      {
        if (!(v26 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }
    }

LABEL_91:
    v44 = (8 * v24);
    v13 = 8 * v26;
    *v44 = v22;
    v12 = (v44 + 1);
    memcpy(0, 0, v23);
    if (SHIBYTE(v83) < 0)
    {
      goto LABEL_92;
    }

LABEL_80:
    if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

LABEL_93:
    operator delete(v81.__r_.__value_.__l.__data_);
    goto LABEL_116;
  }

LABEL_118:
  v55 = *(this + 159);
  if (v55 < 0)
  {
    if (*(this + 18))
    {
      goto LABEL_120;
    }
  }

  else if (*(this + 159))
  {
LABEL_120:
    if (v55 >= 0)
    {
      v56 = (this + 136);
    }

    else
    {
      v56 = *(this + 17);
    }

    if (v55 >= 0)
    {
      v57 = *(this + 159);
    }

    else
    {
      v57 = *(this + 18);
    }

    return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](__p, v56, v57);
  }

  v66 = (this + 40);
  if (*(this + 63) < 0)
  {
    v66 = *v66;
  }

  HGLogger::warning("Missing fragment shader for %s\n", a2, a3, v66);
  return 0;
}

void sub_25FC449D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void HGProgramDescriptor::SetVisibleShaderWithSource(HGProgramDescriptor *this, const char *a2, const char *a3)
{
  MEMORY[0x2666E99D0](this + 64, a2);

  JUMPOUT(0x2666E99D0);
}

void HGProgramDescriptor::Dependency::~Dependency(void **this)
{
  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*this);
    return;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_5;
  }
}

void **std::vector<HGBinding>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 17) < 0)
        {
          operator delete(*(v3 - 5));
        }

        v3 -= 6;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::vector<HGBinding>::__assign_with_size[abi:ne200100]<HGBinding*,HGBinding*>(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 17) < 0)
          {
            operator delete(*(v10 - 5));
          }

          v10 -= 6;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x555555555555555)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v23 = 2 * v22;
      if (2 * v22 <= a4)
      {
        v23 = a4;
      }

      if (v22 >= 0x2AAAAAAAAAAAAAALL)
      {
        v24 = 0x555555555555555;
      }

      else
      {
        v24 = v23;
      }

      if (v24 <= 0x555555555555555)
      {
        operator new();
      }
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        std::string::operator=((v8 + 1), (v5 + 8));
        *(v8 + 2) = *(v5 + 32);
        v8 += 6;
        v5 += 48;
      }

      while (v5 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      if (*(v12 - 17) < 0)
      {
        operator delete(*(v12 - 5));
      }

      v12 -= 6;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = a2 + v12 - v8;
    v14 = v12 - v8;
    if (v12 != v8)
    {
      v15 = a2;
      do
      {
        *v8 = *v15;
        std::string::operator=((v8 + 1), (v15 + 8));
        *(v8 + 2) = *(v15 + 32);
        v15 += 48;
        v8 += 6;
      }

      while (v15 != v13);
      v12 = a1[1];
    }

    v25 = v12;
    v16 = v12;
    if (v13 != a3)
    {
      v17 = v14 + v5 + 8;
      v16 = v12;
      do
      {
        v20 = v17 - 8;
        *v16 = *(v17 - 8);
        v21 = (v16 + 1);
        if (*(v17 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v21, *v17, *(v17 + 8));
          v19 = v25;
        }

        else
        {
          v18 = *v17;
          v16[3] = *(v17 + 16);
          *&v21->__r_.__value_.__l.__data_ = v18;
          v19 = v16;
        }

        *(v16 + 2) = *(v17 + 24);
        v16 = v19 + 6;
        v25 = v19 + 6;
        v17 += 48;
      }

      while (v20 + 48 != a3);
    }

    a1[1] = v16;
  }
}

void sub_25FC44F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGBinding>,HGBinding*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_25FC44F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGBinding>,HGBinding*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGBinding>,HGBinding*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 17) < 0)
      {
        operator delete(*(v3 - 40));
      }

      v3 -= 48;
    }
  }

  return a1;
}

uint64_t std::vector<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>::__emplace_back_slow_path<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 16 * v2;
  __p = 0;
  v14 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v15 = 16 * v2 + 16;
  v16 = 0;
  std::vector<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  v9 = v14;
LABEL_15:
  for (i = v15; i != v9; i -= 16)
  {
    v15 = i - 16;
    v10 = *(i - 8);
    if (v10)
    {
      (*(*v10 + 24))(v10);
      goto LABEL_15;
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25FC45104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v4 + *result - v5;
  v14 = v7;
  if (*result != v5)
  {
    v8 = v4 + v6 - v5;
    v9 = *result;
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 8);
      *(v8 + 8) = v10;
      if (v10)
      {
        (*(*v10 + 16))(v10);
        v8 = v14;
      }

      v9 += 16;
      v8 += 16;
      v14 = v8;
    }

    while (v9 != v5);
    do
    {
      result = *(v6 + 8);
      if (result)
      {
        result = (*(*result + 24))(result);
      }

      v6 += 16;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v11 = *v3;
  v3[1] = *v3;
  *v3 = a2[1];
  a2[1] = v11;
  v12 = v3[1];
  v3[1] = a2[2];
  a2[2] = v12;
  v13 = v3[2];
  v3[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>,std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        (*(*v5 + 24))(v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      v4 = i - 16;
      *(a1 + 16) = i - 16;
      v5 = *(i - 8);
      if (v5)
      {
        break;
      }

      i -= 16;
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    (*(*v5 + 24))(v5);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<HGBinding>::__emplace_back_slow_path<HGBinding>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 32) = *(a2 + 32);
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      *(v12 + 32) = *(v11 + 32);
      v11 += 48;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t std::__split_buffer<HGBinding>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 17) < 0)
      {
        operator delete(*(v2 - 40));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unordered_map<unsigned long,std::string>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
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
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_25FC45920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 47) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 24));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::vector<HGBinding>::__emplace_back_slow_path<HGBinding const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x555555555555555)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  v7 = (v6 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *(a2 + 8);
    *(v6 + 24) = *(a2 + 24);
  }

  v8 = v6;
  *(v6 + 32) = *(a2 + 32);
  v9 = v6 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      *v14 = *v13;
      v15 = *(v13 + 8);
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 8) = v15;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = 0;
      *(v14 + 32) = *(v13 + 32);
      v13 += 48;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 31) < 0)
      {
        operator delete(*(v10 + 8));
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_25FC45CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<HGBinding>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::string>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
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
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_25FC4603C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_25FC46454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FC46468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t std::vector<HGProgramDescriptor::Dependency>::__emplace_back_slow_path<HGProgramDescriptor::Dependency>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = v7;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v8 = 48 * v2 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 5);
      *(v13 + 24) = v15;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 3) = 0;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    while (1)
    {
      if (*(v9 + 47) < 0)
      {
        operator delete(*(v9 + 24));
        if (*(v9 + 23) < 0)
        {
LABEL_19:
          operator delete(*v9);
        }
      }

      else if (*(v9 + 23) < 0)
      {
        goto LABEL_19;
      }

      v9 += 48;
      if (v9 == v10)
      {
        v9 = *a1;
        break;
      }
    }
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void HGComicEdges::HGComicEdges(HGComicEdges *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287215888;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 16) |= 0x600u;
}

void HGComicEdges::~HGComicEdges(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicEdges::SetParameter(HGComicEdges *this, int a2, float a3, float a4, float a5, float a6)
{
  result = 0xFFFFFFFFLL;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (*(this + 104) != a3)
      {
        *(this + 104) = a3;
        return 1;
      }
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      if (*(this + 105) != a3)
      {
        *(this + 105) = a3;
        return 1;
      }
    }

    return 0;
  }

  if (!a2)
  {
    if (*(this + 102) != a3)
    {
      *(this + 102) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 != 1)
  {
    return result;
  }

  if (*(this + 103) == a3)
  {
    return 0;
  }

  *(this + 103) = a3;
  return 1;
}

uint64_t HGComicEdges::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HGComicEdges::GetROI@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 == 1)
  {
    *&v9.var0 = a3;
    *&v9.var2 = a4;
    goto LABEL_5;
  }

  if (!a2)
  {
    LODWORD(a5) = vcvtps_s32_f32(*(a1 + 408) + *(a1 + 408));
    *&v10.var2 = a5 | (a5 << 32);
    *&v9.var0 = a3;
    *&v9.var2 = a4;
    v10.var0 = -a5;
    v10.var1 = -a5;
    HGRect::Grow(&v9, v10);
LABEL_5:
    v5 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v7 = v6;
    *&v11.var0 = v5;
    *&v11.var2 = v7;
    HGRect::Grow(&v9, v11);
    return *&v9.var0;
  }

  return HGRectNull;
}

uint64_t HGComicEdges::RenderTile(HGComicEdges *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *(a2 + 2) - *a2;
  v86 = *(a2 + 3) - HIDWORD(*a2);
  if (v86 >= 1 && v6 >= 1)
  {
    v9 = v5;
    v10 = 0;
    *v11.f32 = vadd_f32(vcvt_f32_s32(*a2), 0x3F0000003F000000);
    v11.i64[1] = 0x3F80000000000000;
    v12 = *(this + 102);
    v89 = *(this + 103);
    v13 = v12 + v12;
    v14 = 1.0 / (v12 * (v12 + v12));
    v15 = *(a2 + 2);
    v16 = xmmword_260344CF0;
    v17 = v11;
    v92 = v11;
    do
    {
      v88 = v10;
      v18 = 0;
      v87 = v17;
      v19 = v17;
      do
      {
        v28 = *(a2 + 12);
        v29 = *(a2 + 26);
        v30 = vsubq_f32(v19, v11);
        if (v9)
        {
          v31 = vaddq_s32(vcvtq_s32_f32(v30), vcltzq_f32(v30));
          v32 = vsubq_f32(v30, vcvtq_f32_s32(v31)).u64[0];
          v33 = (v28 + 16 * (v31.i32[0] + v31.i32[1] * v29));
          v34 = vaddq_f32(*v33, vmulq_n_f32(vsubq_f32(v33[1], *v33), v32.f32[0]));
          v90 = vaddq_f32(v34, vmulq_lane_f32(vsubq_f32(vaddq_f32(v33[v29], vmulq_n_f32(vsubq_f32(v33[v29 + 1], v33[v29]), v32.f32[0])), v34), v32, 1));
          v35 = *(a2 + 10);
          v36 = *(a2 + 22);
          v93 = v19;
          v37 = vaddq_s32(vcvtq_s32_f32(v30), vcltzq_f32(v30));
          v38 = vsubq_f32(v30, vcvtq_f32_s32(v37)).u64[0];
          v39 = (v35 + 16 * (v37.i32[0] + v37.i32[1] * v36));
          v40 = vaddq_f32(*v39, vmulq_n_f32(vsubq_f32(v39[1], *v39), v38.f32[0]));
          v41 = vaddq_f32(v40, vmulq_lane_f32(vsubq_f32(vaddq_f32(v39[v36], vmulq_n_f32(vsubq_f32(v39[v36 + 1], v39[v36]), v38.f32[0])), v40), v38, 1));
        }

        else
        {
          v42.i64[0] = 0x3F0000003F000000;
          v42.i64[1] = 0x3F0000003F000000;
          v43 = vaddq_f32(v30, v42);
          v44 = vcvtq_s32_f32(v43);
          v43.i64[0] = vaddq_s32(v44, vcgtq_f32(vcvtq_f32_s32(v44), v43)).u64[0];
          v90 = *(v28 + 16 * (v43.i32[0] + v43.i32[1] * v29));
          v35 = *(a2 + 10);
          v36 = *(a2 + 22);
          v93 = v19;
          v43.i64[0] = 0x3F0000003F000000;
          v43.i64[1] = 0x3F0000003F000000;
          v45 = vaddq_f32(v30, v43);
          v46 = vcvtq_s32_f32(v45);
          v45.i64[0] = vaddq_s32(v46, vcgtq_f32(vcvtq_f32_s32(v46), v45)).u64[0];
          v41 = *(v35 + 16 * (v45.i32[0] + v45.i32[1] * v36));
        }

        v47 = v41;
        v96 = v41.f32[0];
        v48 = vmulq_f32(v41, v16);
        v49 = vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)));
        v50 = vmulq_f32(v47, xmmword_260391590);
        v51 = vaddv_f32(vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)));
        v52 = vmulq_f32(v47, xmmword_2603915A0);
        v53 = fabsf(atan2f(vaddv_f32(vadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL))), v51) + -2.3) < 0.3;
        v54 = v49 > 0.8;
        if (v49 < 0.4)
        {
          v54 = 1;
        }

        v55 = v53 || v54;
        _ZF = !v55;
        if (v55)
        {
          v57 = -1;
        }

        else
        {
          v57 = 0;
        }

        *&v58 = v96;
        if (_ZF)
        {
          *&v58 = v49;
        }

        v59.i64[1] = 0;
        v59.i32[0] = v58;
        v59.i32[1] = v58;
        if (v13 < 1.0)
        {
          v20 = xmmword_260345860;
        }

        else
        {
          v91 = vbslq_s8(vdupq_n_s32(v57), xmmword_2603429B0, xmmword_260344CF0);
          v20 = xmmword_260345860;
          v60 = vdup_n_s32(v36);
          v61 = 1.0;
          v62 = v36;
          do
          {
            v95 = v20;
            v97 = v59;
            v73 = v61 * -(v61 * v61);
            v94 = expf(v73 * 0.5);
            v74 = expf(v14 * v73);
            v75.i64[1] = 0;
            v75.f32[0] = ((v90.f32[2] + v90.f32[2]) + -1.0) * v61;
            v75.f32[1] = v61 * -((v90.f32[1] + v90.f32[1]) + -1.0);
            v76 = vsubq_f32(vsubq_f32(v93, v75.u64[0]), v92);
            if (v9)
            {
              v77 = vaddq_s32(vcvtq_s32_f32(v76), vcltzq_f32(v76));
              v78 = vsubq_f32(v76, vcvtq_f32_s32(v77)).u64[0];
              v79 = vsubq_f32(vaddq_f32(v93, v75), v92);
              v80 = vaddq_s32(vcvtq_s32_f32(v79), vcltzq_f32(v79));
              v81 = vsubq_f32(v79, vcvtq_f32_s32(v80)).u64[0];
              *v77.i8 = vmla_s32(vzip1_s32(*v77.i8, *v80.i8), vzip2_s32(*v77.i8, *v80.i8), v60);
              v82 = (v35 + 16 * v77.i32[0]);
              v83 = vaddq_f32(*v82, vmulq_n_f32(vsubq_f32(v82[1], *v82), v78.f32[0]));
              v69 = vaddq_f32(v83, vmulq_lane_f32(vsubq_f32(vaddq_f32(v82[v62], vmulq_n_f32(vsubq_f32(v82[v62 + 1], v82[v62]), v78.f32[0])), v83), v78, 1));
              v84 = (v35 + 16 * v77.i32[1]);
              v85 = vaddq_f32(*v84, vmulq_n_f32(vsubq_f32(v84[1], *v84), v81.f32[0]));
              v70 = vaddq_f32(v85, vmulq_lane_f32(vsubq_f32(vaddq_f32(v84[v62], vmulq_n_f32(vsubq_f32(v84[v62 + 1], v84[v62]), v81.f32[0])), v85), v81, 1));
            }

            else
            {
              v63.i64[0] = 0x3F0000003F000000;
              v63.i64[1] = 0x3F0000003F000000;
              v64 = vaddq_f32(v76, v63);
              v65 = vcvtq_s32_f32(v64);
              v66 = vaddq_f32(vsubq_f32(vaddq_f32(v93, v75), v92), v63);
              v67 = vcvtq_s32_f32(v66);
              *v64.f32 = vadd_s32(*v65.i8, *&vcgtq_f32(vcvtq_f32_s32(v65), v64));
              *v66.f32 = vadd_s32(*v67.i8, *&vcgtq_f32(vcvtq_f32_s32(v67), v66));
              *v66.f32 = vmla_s32(vzip1_s32(*v64.f32, *v66.f32), vzip2_s32(*v64.f32, *v66.f32), v60);
              v68 = v66.i32[1];
              v69 = *(v35 + 16 * v66.i32[0]);
              v70 = *(v35 + 16 * v68);
            }

            v71 = __PAIR64__(LODWORD(v74), LODWORD(v94));
            v72 = vmulq_f32(v91, vaddq_f32(v69, v70));
            *v72.i8 = vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
            v20 = vaddq_f32(v95, v71);
            v59 = vaddq_f32(v97, vmulq_n_f32(v71, vadd_f32(*v72.i8, vdup_lane_s32(*v72.i8, 1)).f32[0]));
            v61 = v61 + 1.0;
          }

          while (v61 <= v13);
        }

        v21.i64[0] = 0x3F0000003F000000;
        v21.i64[1] = 0x3F0000003F000000;
        v21.i64[0] = vmulq_f32(v59, vdivq_f32(v21, v20)).u64[0];
        if ((v89 * ((v21.f32[0] + vmuls_lane_f32(-0.99, *v21.f32, 1)) * 300.0)) >= 0.8)
        {
          v22 = 1.0;
        }

        else
        {
          v22 = 0.0;
        }

        v16 = xmmword_260344CF0;
        v23 = v90;
        v23.f32[0] = v22;
        __asm { FMOV            V0.4S, #1.0 }

        *(v15 + 16 * v18) = vmaxnmq_f32(vminnmq_f32(v23, _Q0), 0);
        v11 = v92;
        v19 = vaddq_f32(v93, xmmword_2603429B0);
        ++v18;
      }

      while (v18 != v6);
      v17 = vaddq_f32(v87, xmmword_2603429C0);
      v15 += 16 * *(a2 + 6);
      v10 = v88 + 1;
    }

    while (v88 + 1 != v86);
  }

  return 0;
}

const char *HGComicEdges::GetProgram(HGComicEdges *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) > 0x60B0F)
  {
    return "//Metal1.0     \n"
           "//LEN=0000000c37\n"
           "fragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n"
           "                                  const constant float4* hg_Params   [[ buffer(0) ]],\n"
           "                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],\n"
           "                                  sampler                hg_Sampler0 [[ sampler(0) ]],\n"
           "                                  texture2d< half >      hg_Texture1 [[ texture(1) ]],\n"
           "                                  sampler                hg_Sampler1 [[ sampler(1) ]])\n"
           "{\n"
           "    const half sigma {static_cast<half>(hg_Params[0].x)};\n"
           "    const float prethreshold {hg_Params[0].y};\n"
           "    //const float threshold {hg_Params[0].z};\n"
           "    const float thesholdCoeffAdj {hg_Params[0].w};\n"
           "\n"
           "    const half sigma22 {1.0h / (2.0h * sigma * sigma)};\n"
           "    const half sigmax2 {2.0h * sigma};\n"
           "\n"
           "    const half alpha {hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).a};\n"
           "\n"
           "    const half2 gradient = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).yz;\n"
           "    const half2 dirPerpen {gradient.y * 2.0h - 1.0h, -(gradient.x * 2.0h - 1.0h)};\n"
           "\n"
           "    half3 lumaWeights {0.2126h, 0.7152h, 0.0722h};\n"
           "    constexpr half3 uWeights {-0.1146h, -0.3854h, 0.5000h};\n"
           "    constexpr half3 vWeights {0.5000h, -0.4542h, -0.0458h};\n"
           "    \n"
           "    const half3 srcRGB = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).rgb;\n"
           "    \n"
           "    const half srcY {dot(srcRGB, lumaWeights)};\n"
           "    const half srcU {dot(srcRGB, uWeights)};\n"
           "    const half srcV {dot(srcRGB, vWeights)};\n"
           "    \n"
           "    const half chromaAngle {atan2(srcV, srcU)};\n"
           "    \n"
           "    // if skintone found, then detect edges only on red channel to reduce wrinkles and shadows, otherwise use ITU Rec.709 luma for sky, trees, etc.\n"
           "    half luma = {srcY};\n"
           "    \n"
           "    if (abs(chromaAngle - 2.3h) < 0.3h || srcY > 0.8h || srcY < 0.4h)\n"
           "    {\n"
           "        luma = {srcRGB.r};\n"
           "        lumaWeights = {1.0h, 0.0h, 0.0h};\n"
           "    }\n"
           "\n"
           "    // edge detection using extended difference of gaussian thresholding\n"
           "    float2 acc {luma, luma};\n"
           "    half2 norma {0.5h, 0.5h};\n"
           "\n"
           "    for (half i {1.0h}; i <= sigmax2; i++)\n"
           "    {\n"
           "        const half2 coeff {exp(-i * i * i * 0.5h), exp(-i * i * i * sigma22)};\n"
           "        \n"
           "        const float2 uNeg = frag._texCoord0.xy - static_cast<float2>(i * dirPerpen);\n"
           "        const float2 uPos = frag._texCoord0.xy + static_cast<float2>(i * dirPerpen);\n"
           "        \n"
           "        const half3 pixel1 = hg_Texture0.sample(hg_Sampler0, uNeg).rgb;\n"
           "        const half3 pixel2 = hg_Texture0.sample(hg_Sampler0, uPos).rgb;\n"
           "\n"
           "        norma += coeff;\n"
           "        acc   += static_cast<float2>(coeff * dot((pixel1+pixel2), lumaWeights));\n"
           "    }\n"
           "\n"
           "    acc = acc * 0.5f / static_cast<float2>(norma);\n"
           "\n"
           "    const half total {static_cast<half>((acc.x  - acc.y * (0.99f + thesholdCoeffAdj)) * 300.0f * prethreshold)};\n"
           "\n"
           "    FragmentOut out {float4(step(0.8h, total), static_cast<float2>(gradient), alpha)};\n"
           "    \n"
           "    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n"
           "    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n"
           "    out.color0 = clamp(out.color0, 0.0f, 1.0f);\n"
           "\n"
           "    return out;\n"
           "}\n"
           "//MD5=9d181266:b7bbbd77:46ccdefd:532fadfc\n"
           "//SIG=00000000:00000000:00000000:00000003:0021:0001:0000:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    return "//GLfs1.0      \n//LEN=0000000ae7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#define precision\n#define defaultp mediump\n#endif\n\nprecision highp float;\nprecision highp int;\n\nuniform defaultp sampler2DRect hg_Texture0; //BFFILTER\nuniform defaultp sampler2DRect hg_Texture1; //GAUSSFILTER\n\nuniform highp vec4 hg_ProgramLocal0;    // {.x == sigma, .y == prethreshold, .z == threshold, .w == threshold coeff adj}\n\nvoid main()\n{\n    float sigma = hg_ProgramLocal0.x;\n    float prethreshold = hg_ProgramLocal0.y;\n    float threshold = hg_ProgramLocal0.z;\n    float thresholdCoeffAdj = hg_ProgramLocal0.w;\n\n    float sigma22 = 1.0/ (2.0 * sigma  * sigma) ;\n    float sigmax2 = 2.0 * sigma ;\n\n    float alpha = texture2DRect(hg_Texture1, gl_TexCoord[1].xy).a;\n    vec2 gradient = texture2DRect(hg_Texture1, gl_TexCoord[1].xy).yz;\n    vec2 dirPerpen = vec2(gradient.y*2.0-1.0,  -(gradient.x*2.0-1.0));\n\n    vec3 lumaWeights = vec3( 0.2126,  0.7152, 0.0722);\n    vec3 uWeights    = vec3(-0.1146, -0.3854, 0.5000);\n    vec3 vWeights    = vec3( 0.5000, -0.4542,-0.0458);\n    vec3 srcRGB = texture2DRect( hg_Texture0, gl_TexCoord[0].xy).rgb;\n    float srcY = dot(srcRGB, lumaWeights);\n    float srcU = dot(srcRGB, uWeights);\n    float srcV = dot(srcRGB, vWeights);\n    float chromaAngle = atan(srcV, srcU);\n    \n    // if skintone found, then detect edges only on red channel to reduce wrinkles and shadows, otherwise use ITU Rec.709 luma for sky, trees, etc.\n    float luma = srcY;\n    \n    if (abs(chromaAngle - 2.3) < 0.3 || srcY > 0.8 || srcY < 0.4) \n    {\n        luma = srcRGB.r;\n        lumaWeights = vec3(1.0,0.0,0.0);\n    }\n\n    // edge detection using extended difference of gaussian thresholding\n    vec2 acc = vec2(luma, luma);\n    vec2 norma = vec2(0.5, 0.5);\n\n    for ( float i = 1.0; i <= sigmax2; i ++) \n    {\n        vec2 coeff = vec2( exp( -i*i*i*0.5), exp( -i*i*i* sigma22)); //primera  fija, segunda variable\n        \n        vec2 uNeg = gl_TexCoord[0].xy - i * dirPerpen;\n        vec2 uPos = gl_TexCoord[0].xy + i * dirPerpen;\n        \n        vec3 pixel1 = texture2DRect( hg_Texture0, uNeg).rgb;\n        vec3 pixel2 = texture2DRect( hg_Texture0, uPos).rgb;\n        norma += coeff;\n        acc   += coeff * dot((pixel1+pixel2), lumaWeights) ;\n    }\n\n    acc  = acc*0.5/norma;\n\n    float total =   (acc.x  - acc.y * (0.99 + thresholdCoeffAdj))* 300.0*prethreshold; //substract second pow3  from first pow3 and 'cranck' the result\n\n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    gl_FragColor = clamp(vec4( (step (0.8, total)),gradient, alpha), 0.0, 1.0);   // remove residual gray tones     ADD GRADIENT INSIDE THE EDGES TEXTURE\n}\n//MD5=6b6ff578:2a238d62:fa69622e:3bf77bdd\n//SIG=00000000:00000000:00000000:00000000:0042:0001:0000:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  return 0;
}

uint64_t HGComicEdges::BindTexture(HGComicEdges *this, HGHandler *a2, uint64_t a3)
{
  HGHandler::TexCoord(a2, a3, 0, 0, 0);
  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 56))(a2, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

uint64_t HGGPURenderer::Concatenate(HGRenderer *a1, void *a2, unsigned __int8 *a3, const char *a4)
{
  v7 = a1;
  v122 = *MEMORY[0x277D85DE8];
  Limits = HGRenderer::GetLimits(a1, 393216);
  v106 = HGString::Digest::isunpremult(a3);
  v8 = a3[56];
  v9 = HGLimits::isglfs((a3 + 16)) != 0;
  v10 = v9 - (HGLimits::isarbfp((a3 + 16)) != 0);
  v112 = a3;
  if (HGLimits::ismetal((a3 + 16)))
  {
    v13 = -2;
  }

  else
  {
    v13 = 0;
  }

  if (!(v10 + v13))
  {
    return 0xFFFFFFFFLL;
  }

  v111 = a2;
  v103 = v7;
  if (v8)
  {
    v14 = 0;
    v15 = 1;
    v110 = v10 + v13;
    do
    {
      if (v14 == v8 - 1 && *(v112 + 26) <= v8)
      {
        v15 = 1;
      }

      *(a2[37] + 56 * v14) = 0;
      if ((a4 & (1 << v14)) != 0)
      {
        if ((v16 = a2[10]) == 0 || (v17 = *(v16 + 8 * v14)) == 0 || (v18 = *(v17 + 16)) == 0 || (v19 = *(v18 + 144)) == 0 || (v20 = *(v19 + 64)) == 0 || (v15 & 1) == 0 && (*(v20 + 56) > 1u || *(v20 + 52) > 1u) || ((v21 = HGLimits::isglfs((v20 + 16)) != 0, v22 = v21 - (HGLimits::isarbfp((v20 + 16)) != 0), HGLimits::ismetal((v20 + 16))) ? (v23 = -2) : (v23 = 0), (v24 = v22 + v23, a2 = v111, v24 != v110) || *(v20 + 58) != 1))
        {
          v15 = 0;
          a4 = (a4 & ~(1 << v14));
        }
      }

      ++v14;
    }

    while (v14 != v8);
    v25 = v8;
    v7 = v103;
  }

  else
  {
    v25 = 0;
  }

  v26 = a2[37];
  v27 = 0x6DB6DB6DB6DB6DB7 * ((a2[38] - v26) >> 3);
  v108 = v25;
  v28 = v27 >= v25;
  v29 = v27 - v25;
  if (v29 != 0 && v28)
  {
    v30 = v108;
    if (v29 <= 1)
    {
      goto LABEL_36;
    }

    v30 = v108 + (v29 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v26 + 56 * v108);
    v32 = v29 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *v31 = 0;
      v31[7] = 0;
      v31 += 14;
      v32 -= 2;
    }

    while (v32);
    if (v29 != (v29 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_36:
      v33 = (v26 + 56 * v30);
      v34 = v27 - v30;
      do
      {
        *v33 = 0;
        v33 += 7;
        --v34;
      }

      while (v34);
    }
  }

  v102 = (a2 + 260);
  *(a2 + 71) = 0;
  if (!a4 || !a2[10])
  {
LABEL_107:
    if (!(*(*v7 + 432))(v7, v112))
    {
      v111[8] = v112;
      HGShaderBinding::reset(v102);
      return 0;
    }

    v111[8] = 0;
    HGShaderBinding::reset(v102);
    return 0xFFFFFFFFLL;
  }

  memset(v121, 0, 128);
  v119 = 0u;
  memset(v118, 0, sizeof(v118));
  WORD2(v119) = *(v112 + 26);
  BYTE8(v119) = *(v112 + 56);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v114 = 0;
  if (!v8)
  {
    v101 = 0;
    v104 = 0;
LABEL_78:
    v56 = atomic_load(HGLogger::_enabled);
    if (v56)
    {
      HGLogger::log("concat", 1, "testing concat chain:\n", v11, v12);
    }

    HGLogger::indent(1);
    v57 = (*(*v111 + 48))(v111);
    snprintf(__str, 0x100uLL, "node = %p (%s)\n", v111, v57);
    v60 = atomic_load(HGLogger::_enabled);
    if (v60)
    {
      HGLogger::log("concat", 1, "%s", v58, v59, __str);
    }

    HGString::HGString(v113);
    if (v8)
    {
      v61 = 0;
      v62 = 16;
      v63 = 1;
      do
      {
        if (v8 - 1 == v61 && *(v112 + 26) <= v8)
        {
          v63 = 1;
        }

        if ((a4 >> v61))
        {
          v64 = *(*(*(v111[10] + 8 * v61) + 16) + 144);
          v65 = (*(*v64 + 48))(v64);
          snprintf(__str, 0x100uLL, "input #%d = %p (%s)\n", v61, v64, v65);
          v68 = atomic_load(HGLogger::_enabled);
          if (v68)
          {
            HGLogger::log("concat", 1, "%s", v66, v67, __str);
          }

          HGString::push(v113, (v111[37] + v62), (v64[8] + 64), v106, (v63 & 1) == 0, 0);
        }

        else if (((a4 >> v61) & 0xFFFFFFFE) != 0)
        {
          HGString::push(v113, 0);
          v63 = 0;
        }

        ++v61;
        v62 += 56;
      }

      while (v108 != v61);
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v7 = v103;
    while (1)
    {
      if (v8 >= 1)
      {
        while (((a4 >> v8) & 1) == 0)
        {
          v69 = __OFSUB__(v8, 1);
          LODWORD(v8) = v8 - 1;
          if (((v8 & 0x80000000) != 0) ^ v69 | (v8 == 0))
          {
            LODWORD(v8) = 0;
            break;
          }
        }
      }

      v70 = 1 << v8;
      if (HGString::pop(v113, &v115, (v112 + 64), a4, 0) != -1 && (v70 & v104) == 0 && !(*(*v103 + 408))(v103, v113, 0, &v114))
      {
        v81 = atomic_load(HGLogger::_enabled);
        if (v81)
        {
          HGLogger::log("concat", 1, "concat chain OK!!\n", v71, v72);
        }

        v111[8] = v114;
        v82 = v116;
        *v102 = v115;
        *(v102 + 1) = v82;
        *(v102 + 8) = v117;
        if (a4)
        {
          v88 = *(*(*v111[10] + 16) + 144);
          v74 = v111[37];
          *v74 = v88;
          v83 = *(v88 + 64);
        }

        else
        {
          v83 = 0;
          v74 = v111[37];
        }

        v74[1] = v83;
        if ((a4 & 2) != 0)
        {
          v90 = *(*(*(v111[10] + 8) + 16) + 144);
          v74[7] = v90;
          v89 = *(v90 + 64);
        }

        else
        {
          v89 = 0;
        }

        v74[8] = v89;
        if ((a4 & 4) != 0)
        {
          v92 = *(*(*(v111[10] + 16) + 16) + 144);
          v74[14] = v92;
          v91 = *(v92 + 64);
        }

        else
        {
          v91 = 0;
        }

        v74[15] = v91;
        if ((a4 & 8) != 0)
        {
          v94 = *(*(*(v111[10] + 24) + 16) + 144);
          v74[21] = v94;
          v93 = *(v94 + 64);
        }

        else
        {
          v93 = 0;
        }

        v74[22] = v93;
        if ((a4 & 0x10) != 0)
        {
          v96 = *(*(*(v111[10] + 32) + 16) + 144);
          v74[28] = v96;
          v95 = *(v96 + 64);
        }

        else
        {
          v95 = 0;
        }

        v74[29] = v95;
        if ((a4 & 0x20) != 0)
        {
          v98 = *(*(*(v111[10] + 40) + 16) + 144);
          v74[35] = v98;
          v97 = *(v98 + 64);
        }

        else
        {
          v97 = 0;
        }

        v74[36] = v97;
        if ((a4 & 0x40) != 0)
        {
          v100 = *(*(*(v111[10] + 48) + 16) + 144);
          v74[42] = v100;
          v99 = *(v100 + 64);
        }

        else
        {
          v99 = 0;
        }

        v74[43] = v99;
        if ((a4 & 0x80) != 0)
        {
          goto LABEL_131;
        }

        goto LABEL_160;
      }

      a4 = (a4 & ~v70);
      if (!a4)
      {
        HGString::~HGString(v113);
        goto LABEL_107;
      }

      if (a4 == v101)
      {
        break;
      }

      HGString::undo(v113);
    }

    if (v101)
    {
      v84 = *(*(*v111[10] + 16) + 144);
      v74 = v111[37];
      *v74 = v84;
      v74[1] = *(v84 + 64);
      if ((v101 & 2) == 0)
      {
        goto LABEL_125;
      }

LABEL_113:
      v75 = *(*(*(v111[10] + 8) + 16) + 144);
      v74[7] = v75;
      v74[8] = *(v75 + 64);
      if ((v101 & 4) != 0)
      {
        goto LABEL_114;
      }

LABEL_126:
      v74[15] = 0;
      if ((v101 & 8) == 0)
      {
        goto LABEL_127;
      }

LABEL_115:
      v77 = *(*(*(v111[10] + 24) + 16) + 144);
      v74[21] = v77;
      v74[22] = *(v77 + 64);
      if ((v101 & 0x10) != 0)
      {
        goto LABEL_116;
      }

LABEL_128:
      v74[29] = 0;
      if ((v101 & 0x20) == 0)
      {
        goto LABEL_129;
      }

LABEL_117:
      v79 = *(*(*(v111[10] + 40) + 16) + 144);
      v74[35] = v79;
      v74[36] = *(v79 + 64);
      if ((v101 & 0x40) != 0)
      {
        goto LABEL_118;
      }

LABEL_130:
      v74[43] = 0;
      if ((v101 & 0x80) != 0)
      {
LABEL_131:
        v85 = *(*(*(v111[10] + 56) + 16) + 144);
        v74[49] = v85;
        v86 = *(v85 + 64);
        goto LABEL_161;
      }
    }

    else
    {
      v74 = v111[37];
      v74[1] = 0;
      if ((v101 & 2) != 0)
      {
        goto LABEL_113;
      }

LABEL_125:
      v74[8] = 0;
      if ((v101 & 4) == 0)
      {
        goto LABEL_126;
      }

LABEL_114:
      v76 = *(*(*(v111[10] + 16) + 16) + 144);
      v74[14] = v76;
      v74[15] = *(v76 + 64);
      if ((v101 & 8) != 0)
      {
        goto LABEL_115;
      }

LABEL_127:
      v74[22] = 0;
      if ((v101 & 0x10) == 0)
      {
        goto LABEL_128;
      }

LABEL_116:
      v78 = *(*(*(v111[10] + 32) + 16) + 144);
      v74[28] = v78;
      v74[29] = *(v78 + 64);
      if ((v101 & 0x20) != 0)
      {
        goto LABEL_117;
      }

LABEL_129:
      v74[36] = 0;
      if ((v101 & 0x40) == 0)
      {
        goto LABEL_130;
      }

LABEL_118:
      v80 = *(*(*(v111[10] + 48) + 16) + 144);
      v74[42] = v80;
      v74[43] = *(v80 + 64);
      if ((v101 & 0x80) != 0)
      {
        goto LABEL_131;
      }
    }

LABEL_160:
    v86 = 0;
LABEL_161:
    v74[50] = v86;
    HGString::~HGString(v113);
    return 1;
  }

  v35 = 0;
  v104 = 0;
  v101 = 0;
  v36 = 0;
  v37 = 16;
  v38 = 1;
  v39 = Limits;
  do
  {
    if (v8 - 1 == v35 && *(v112 + 26) <= v8)
    {
      v38 = 1;
    }

    v41 = ((2 << v35) - 1) & a4;
    if ((a4 & (1 << v35)) == 0)
    {
      goto LABEL_61;
    }

    v42 = *(v111[10] + 8 * v35);
    if (!v42)
    {
      goto LABEL_61;
    }

    v43 = *(v42 + 16);
    if (!v43)
    {
      goto LABEL_61;
    }

    v44 = *(v43 + 144);
    v107 = WORD2(v119);
    v105 = BYTE8(v119);
    if (!v44)
    {
      goto LABEL_60;
    }

    v11 = *(v44 + 64);
    if (!v11 || *(v11 + 52) + WORD2(v119) >= *(v39 + 18) || *(v11 + 56) + BYTE8(v119) >= *(v39 + 40))
    {
      goto LABEL_60;
    }

    v40 = 1 - v36;
    if (HGString::Digest::push(&v121[64 * (1 - v36)], (v111[37] + v37), &v121[64 * v36], v11, (v38 & 1) == 0, 0) == -1 || HGString::Digest::pop(v118, &v115, &v121[64 * (1 - v36)], v112, ((2 << v35) - 1) & a4, Limits) == -1)
    {
      v39 = Limits;
LABEL_60:
      WORD2(v119) = v107;
      BYTE8(v119) = v105;
      a4 = (a4 & ~(1 << v35));
LABEL_61:
      if ((a4 & ~v41) == 0)
      {
        v38 = 0;
        v40 = v36;
        goto LABEL_43;
      }

      HGString::Digest::push(&v121[64 * v36], &v121[64 * v36], v39);
      v38 = 0;
      v40 = v36;
LABEL_63:
      v39 = Limits;
      goto LABEL_43;
    }

    v45 = (*(*v103 + 416))(v103, v118, 0, &v114);
    if (v45 == -1)
    {
      goto LABEL_63;
    }

    v39 = Limits;
    if (!v45)
    {
      v111[8] = v114;
      v46 = v116;
      *v102 = v115;
      *(v102 + 1) = v46;
      *(v102 + 8) = v117;
      v101 = ((2 << v35) - 1) & a4;
      goto LABEL_43;
    }

    v104 |= a4 & (1 << v35);
    if (v45 <= -2)
    {
      goto LABEL_60;
    }

LABEL_43:
    ++v35;
    v37 += 56;
    v36 = v40;
  }

  while (v8 != v35);
  v7 = v103;
  if (!a4)
  {
    goto LABEL_107;
  }

  if (a4 != v101)
  {
    goto LABEL_78;
  }

  if (v101)
  {
    v87 = *(*(*v111[10] + 16) + 144);
    v47 = v111[37];
    *v47 = v87;
    v47[1] = *(v87 + 64);
    if ((v101 & 2) == 0)
    {
      goto LABEL_133;
    }

LABEL_70:
    v48 = *(*(*(v111[10] + 8) + 16) + 144);
    v47[7] = v48;
    v47[8] = *(v48 + 64);
    if ((v101 & 4) != 0)
    {
      goto LABEL_71;
    }

LABEL_134:
    v47[15] = 0;
    if ((v101 & 8) == 0)
    {
      goto LABEL_135;
    }

LABEL_72:
    v50 = *(*(*(v111[10] + 24) + 16) + 144);
    v47[21] = v50;
    v47[22] = *(v50 + 64);
    if ((v101 & 0x10) != 0)
    {
      goto LABEL_73;
    }

LABEL_136:
    v47[29] = 0;
    if ((v101 & 0x20) == 0)
    {
      goto LABEL_137;
    }

LABEL_74:
    v52 = *(*(*(v111[10] + 40) + 16) + 144);
    v47[35] = v52;
    v47[36] = *(v52 + 64);
    if ((v101 & 0x40) != 0)
    {
      goto LABEL_75;
    }

LABEL_138:
    v47[43] = 0;
    if ((v101 & 0x80) == 0)
    {
      goto LABEL_139;
    }

LABEL_76:
    v54 = *(*(*(v111[10] + 56) + 16) + 144);
    v55 = *(v54 + 64);
    v47[49] = v54;
    v47[50] = v55;
  }

  else
  {
    v47 = v111[37];
    v47[1] = 0;
    if ((v101 & 2) != 0)
    {
      goto LABEL_70;
    }

LABEL_133:
    v47[8] = 0;
    if ((v101 & 4) == 0)
    {
      goto LABEL_134;
    }

LABEL_71:
    v49 = *(*(*(v111[10] + 16) + 16) + 144);
    v47[14] = v49;
    v47[15] = *(v49 + 64);
    if ((v101 & 8) != 0)
    {
      goto LABEL_72;
    }

LABEL_135:
    v47[22] = 0;
    if ((v101 & 0x10) == 0)
    {
      goto LABEL_136;
    }

LABEL_73:
    v51 = *(*(*(v111[10] + 32) + 16) + 144);
    v47[28] = v51;
    v47[29] = *(v51 + 64);
    if ((v101 & 0x20) != 0)
    {
      goto LABEL_74;
    }

LABEL_137:
    v47[36] = 0;
    if ((v101 & 0x40) == 0)
    {
      goto LABEL_138;
    }

LABEL_75:
    v53 = *(*(*(v111[10] + 48) + 16) + 144);
    v47[42] = v53;
    v47[43] = *(v53 + 64);
    if ((v101 & 0x80) != 0)
    {
      goto LABEL_76;
    }

LABEL_139:
    v47[50] = 0;
  }

  return 1;
}

void sub_25FC47CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  HGString::~HGString(va);
  _Unwind_Resume(a1);
}

void sub_25FC47CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  HGString::~HGString(va);
  _Unwind_Resume(a1);
}

void sub_25FC47CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  HGString::~HGString(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::Concatenate(HGGPURenderer *this, HGNode *a2, unsigned int a3)
{
  HGNode::GetProgramDescriptor(a2, &v93);
  HGProgramDescriptor::GetSignature(v93, v90);
  if (v92)
  {
    for (i = 0; i < v92; ++i)
    {
      if ((a3 & (1 << i)) != 0)
      {
        v7 = *(a2 + 10);
        if (!v7)
        {
          goto LABEL_3;
        }

        v8 = *(v7 + 8 * i);
        if (!v8)
        {
          goto LABEL_3;
        }

        v9 = *(v8 + 16);
        if (!v9)
        {
          goto LABEL_3;
        }

        HGNode::GetProgramDescriptor(*(v9 + 144), v87);
        if (!v87[0])
        {
          goto LABEL_3;
        }

        IsMergeable = HGProgramDescriptor::IsMergeable(v87[0]);
        if (v87[0])
        {
          (*(*v87[0] + 24))(v87[0]);
        }

        if (!IsMergeable)
        {
LABEL_3:
          a3 &= ~(1 << i);
        }
      }

      v6 = v92;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *(a2 + 37);
  v12 = *(a2 + 38) - v11;
  if (v12)
  {
    v13 = v12 >> 3;
    v14 = 0x6DB6DB6DB6DB6DB7 * v13;
    v15 = (0x6DB6DB6DB6DB6DB7 * v13) > 1;
    if ((0x6DB6DB6DB6DB6DB7 * v13) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * v13;
    }

    if (!v15)
    {
      v17 = 0;
LABEL_24:
      v20 = v16 - v17;
      v21 = (v11 + 56 * v17);
      do
      {
        *v21 = 0;
        v21 += 7;
        --v20;
      }

      while (v20);
      goto LABEL_26;
    }

    v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
    v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a2 + 37);
    do
    {
      *v19 = 0;
      v19[7] = 0;
      v19 += 14;
      v18 -= 2;
    }

    while (v18);
    if (v14 != v17)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  v22 = (a2 + 260);
  *(a2 + 71) = 0;
  if (!a3 || (v23 = *(a2 + 10)) == 0)
  {
LABEL_76:
    v24.n128_f64[0] = HGShaderBinding::reset(v22);
    v64 = 0;
    v65 = v93;
    if (!v93)
    {
      return v64;
    }

    goto LABEL_92;
  }

  v24.n128_u64[1] = 0;
  v88 = 0u;
  v89 = 0u;
  *v87 = 0u;
  if (!v6)
  {
    v36 = 0;
LABEL_79:
    v43 = 0;
    v44 = BYTE4(v89) - v36;
    goto LABEL_82;
  }

  v25 = v91;
  if (a3)
  {
    v26 = *v23;
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        HGNode::GetProgramDescriptor(*(v27 + 144), &v86);
        HGProgramDescriptor::GetSignature(v86, v83);
        v28 = BYTE8(v89);
        if (v6 + v85 + BYTE8(v89) <= 8 && (v29 = BYTE4(v89), v25 + v84 + BYTE4(v89) <= 8))
        {
          v37 = BYTE10(v89);
          v38 = WORD3(v88);
          v39 = HIDWORD(v89);
          v40 = *(a2 + 37);
          *(v40 + 16) = 0;
          *(v40 + 24) = v29;
          *(v40 + 28) = v37;
          *(v40 + 32) = v38;
          *(v40 + 36) = v39;
          *(v40 + 40) = v28;
          *(v40 + 44) = 0xFFFFFFFFLL;
          HGProgramDescriptor::SetInput(v93, 0, &v86);
          v81 = 0u;
          v82 = 0u;
          v80 = 0u;
          merge(v83, v87, &v80, 0, 1);
          *v87 = v80;
          v88 = v81;
          v24.n128_u64[1] = *(&v82 + 1);
          v89 = v82;
          v30 = 1;
          v31 = v86;
          if (!v86)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v30 = 0;
          a3 &= ~1u;
          v31 = v86;
          if (!v86)
          {
LABEL_42:
            v22 = (a2 + 260);
            v32 = (a3 & 1) == 0;
            if (a3)
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          }
        }

        (*(*v31 + 24))(v31);
        goto LABEL_42;
      }
    }
  }

  v30 = 0;
  v32 = (a3 & 1) == 0;
  if (a3)
  {
    goto LABEL_43;
  }

LABEL_37:
  v33 = *(a2 + 37);
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 40) = 0;
  *(v33 + 32) = 0;
  *(v33 + 44) = 0xFFFFFFFFLL;
  v34 = ++WORD2(v89);
  v35 = ++BYTE8(v89);
  ++BYTE11(v89);
  ++BYTE10(v89);
  if (WORD2(v89) <= 0xFFu)
  {
    WORD2(v89) = (v34 << 12) | ((v35 & 0xF) << 8) | v34;
  }

LABEL_43:
  v78 = v30;
  v77 = v22;
  v41 = 0;
  v42 = v6 - 1;
  if (v6 != 1)
  {
    v45 = -v6;
    v46 = v25 - 1;
    v47 = 72;
    v48 = 1;
    v79 = v45;
    while (1)
    {
      v50 = v48 != v92 - 1 || v92 < v91;
      v51 = 1 << v48;
      if ((a3 & (1 << v48)) == 0)
      {
        goto LABEL_67;
      }

      v52 = *(*(a2 + 10) + 8 * v48);
      if (!v52)
      {
        goto LABEL_67;
      }

      v53 = *(v52 + 16);
      if (!v53)
      {
        goto LABEL_67;
      }

      HGNode::GetProgramDescriptor(*(v53 + 144), &v86);
      HGProgramDescriptor::GetSignature(v86, v83);
      v54 = BYTE8(v89);
      if ((v42 + v85 + BYTE8(v89)) <= 8)
      {
        v55 = BYTE4(v89);
        if (v46 + v84 + BYTE4(v89) < 9 && (!v50 || v85 <= 1u && v84 < 2u))
        {
          break;
        }
      }

      a3 &= ~v51;
      v56 = v86;
      if (v86)
      {
        goto LABEL_65;
      }

LABEL_66:
      v45 = v79;
LABEL_67:
      if ((a3 & v51) == 0)
      {
        v57 = *(a2 + 37) + v47;
        *v57 = 0;
        *(v57 + 8) = 0;
        *(v57 + 24) = 0;
        *(v57 + 16) = 0;
        *(v57 + 28) = 0xFFFFFFFFLL;
        v58 = ++WORD2(v89);
        v59 = ++BYTE8(v89);
        ++BYTE11(v89);
        ++BYTE10(v89);
        if (WORD2(v89) <= 0xFFu)
        {
          WORD2(v89) = (v58 << 12) | ((v59 & 0xF) << 8) | v58;
        }

        if (!v32)
        {
          v41 = v48;
        }

        v32 = 1;
      }

      ++v48;
      v47 += 56;
      --v46;
      --v42;
      if (!(v45 + v48))
      {
        goto LABEL_44;
      }
    }

    v60 = BYTE10(v89);
    v61 = WORD3(v88);
    v62 = HIDWORD(v89);
    v63 = *(a2 + 37) + v47;
    *v63 = 0;
    *(v63 + 8) = v55;
    *(v63 + 12) = v60;
    *(v63 + 16) = v61;
    *(v63 + 20) = v62;
    *(v63 + 24) = v54;
    *(v63 + 28) = 0xFFFFFFFFLL;
    HGProgramDescriptor::SetInput(v93, v48, &v86);
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    merge(v83, v87, &v80, v50, 1);
    *v87 = v80;
    v88 = v81;
    v24.n128_u64[1] = *(&v82 + 1);
    v89 = v82;
    ++v78;
    v56 = v86;
    if (!v86)
    {
      goto LABEL_66;
    }

LABEL_65:
    (*(*v56 + 24))(v56);
    goto LABEL_66;
  }

LABEL_44:
  if (!a3)
  {
    v22 = v77;
    goto LABEL_76;
  }

  if (!v32)
  {
    v22 = v77;
    v36 = v78;
    goto LABEL_79;
  }

  if (WORD2(v89) > 0xFFu)
  {
    v43 = (HIBYTE(WORD2(v89)) & 0xF) + ~v41;
    v44 = ~v41 + (WORD2(v89) >> 12);
  }

  else
  {
    v43 = BYTE8(v89) - v41;
    v44 = WORD2(v89) - v41;
  }

  v22 = v77;
LABEL_82:
  v66 = WORD3(v88);
  v67 = HIDWORD(v89);
  *v22 = 0;
  *(a2 + 67) = v44;
  *(a2 + 68) = 0;
  *(a2 + 69) = v66;
  *(a2 + 70) = v67;
  *(a2 + 71) = v43;
  v24.n128_u64[0] = 0xFFFFFFFFLL;
  *(a2 + 36) = 0xFFFFFFFFLL;
  v69 = *(a2 + 37);
  v68 = *(a2 + 38);
  v70 = v68 - v69;
  if (v68 != v69)
  {
    v71 = 0;
    v72 = 0x6DB6DB6DB6DB6DB7 * (v70 >> 3);
    if (v72 <= 1)
    {
      v72 = 1;
    }

    v73 = (v69 + 36);
    do
    {
      while (1)
      {
        if ((a3 >> v71))
        {
          v74 = *(*(a2 + 10) + 8 * v71);
          if (v74)
          {
            v75 = *(v74 + 16);
            if (v75)
            {
              break;
            }
          }
        }

        *(v73 - 1) = v66;
        *v73 = v67;
        ++v71;
        v73 += 14;
        if (v72 == v71)
        {
          goto LABEL_91;
        }
      }

      *(v73 - 9) = *(v75 + 144);
      ++v71;
      v73 += 14;
    }

    while (v72 != v71);
  }

LABEL_91:
  v64 = 1;
  v65 = v93;
  if (v93)
  {
LABEL_92:
    (*(*v65 + 24))(v65, v24);
  }

  return v64;
}

void sub_25FC48398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a26)
  {
    (*(*a26 + 24))(a26);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    (*(*v29 + 24))(v29);
  }

  _Unwind_Resume(exception_object);
}

void HGColorGamma::HGColorGamma(HGColorGamma *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287215AF0;
  *(v2 + 544) = 0;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0u;
  *(v2 + 528) = 0;
  *(v2 + 560) = 0u;
  *(v2 + 576) = 0u;
  *(v2 + 592) = 0u;
  *(v2 + 608) = 0u;
  *(v2 + 624) = 0u;
  *(v2 + 640) = 0u;
  *(v2 + 656) = 0u;
  *(v2 + 672) = 0u;
  *(v2 + 688) = 0u;
  *(v2 + 704) = 0u;
  *(v2 + 720) = 0u;
  *(v2 + 729) = 0u;
  *(v2 + 752) = 0u;
  *(v2 + 745) = 257;
  *(v2 + 1172) = 65793;
  *(v2 + 1156) = 0xBF00000040000000;
  *(v2 + 1152) = 1024;
  *(v2 + 1164) = 0x100000320;
  *(v2 + 1024) = 0;
  *(v2 + 1026) = 0;
  *(v2 + 1036) = 1;
  *(v2 + 1040) = HGRectInfinite;
  *(v2 + 1056) = 0;
  *(v2 + 1064) = 0;
  *(v2 + 408) = 0;
  *(v2 + 880) = 0;
  HGNode::ClearBits(v2, v3, v4);
  *(this + 745) = 1;
  HGNode::ClearBits(this, v5, v6);
  *(this + 745) = 1;
  *(this + 56) = xmmword_2603429B0;
  *(this + 57) = xmmword_2603429C0;
  *(this + 58) = xmmword_2603429D0;
  *(this + 59) = xmmword_2603427D0;
  HGNode::ClearBits(this, v7, v8);
  *(this + 745) = 1;
  *(this + 60) = xmmword_2603429B0;
  *(this + 61) = xmmword_2603429C0;
  *(this + 62) = xmmword_2603429D0;
  *(this + 63) = xmmword_2603427D0;
  HGNode::ClearBits(this, v9, v10);
  *(this + 745) = 1;
  *(this + 1028) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 48) = _Q0;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 880) = 1;
  HGColorGamma::SetYCbCrBiasAndScale(this, v16, v17);
  *(this + 147) = 0;
}

double HGColorGamma::SetConversionPreset(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a2;
  HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        HGNode::ClearBits(a1, v5, v6);
        *(a1 + 745) = 1;
        *(a1 + 896) = xmmword_2603429B0;
        *(a1 + 912) = xmmword_2603429C0;
        *(a1 + 928) = xmmword_2603429D0;
        *(a1 + 944) = xmmword_2603427D0;
        HGNode::ClearBits(a1, v30, v31);
        *(a1 + 745) = 1;
        *(a1 + 960) = xmmword_2603429B0;
        *(a1 + 976) = xmmword_2603429C0;
        *(a1 + 992) = xmmword_2603429D0;
        *(a1 + 1008) = xmmword_2603427D0;
        HGNode::ClearBits(a1, v32, v33);
        *(a1 + 745) = 1;
        *(a1 + 1028) = 0;
        __asm { FMOV            V0.4S, #1.0 }

        *(a1 + 768) = _Q0;
        *(a1 + 784) = 0u;
        *(a1 + 800) = 0u;
        *(a1 + 816) = 0u;
        *(a1 + 832) = 0u;
        *(a1 + 848) = 0u;
        *(a1 + 864) = 0u;
        *(a1 + 880) = 1;
        goto LABEL_19;
      case 1:
        HGNode::ClearBits(a1, v5, v6);
        *(a1 + 745) = 1;
        *(a1 + 896) = xmmword_260391640;
        *(a1 + 912) = xmmword_260391650;
        v57 = xmmword_2603427D0;
        *(a1 + 928) = xmmword_260391660;
        *(a1 + 944) = xmmword_2603427D0;
        HGNode::ClearBits(a1, v49, v50);
        *(a1 + 745) = 1;
        *(a1 + 960) = xmmword_2603429B0;
        *(a1 + 976) = xmmword_2603429C0;
        v14 = xmmword_2603429D0;
        break;
      case 2:
        HGNode::ClearBits(a1, v5, v6);
        LOBYTE(v3) = 1;
        *(a1 + 745) = 1;
        *(a1 + 896) = xmmword_260391640;
        *(a1 + 912) = xmmword_260391650;
        v57 = xmmword_2603427D0;
        *(a1 + 928) = xmmword_260391660;
        *(a1 + 944) = xmmword_2603427D0;
        HGNode::ClearBits(a1, v10, v11);
        *(a1 + 745) = 1;
        *(a1 + 960) = xmmword_260391670;
        *(a1 + 976) = xmmword_260391680;
        v14 = xmmword_260391690;
        break;
      default:
        goto LABEL_19;
    }

    *(a1 + 992) = v14;
    *(a1 + 1008) = v57;
    HGNode::ClearBits(a1, v12, v13);
    *(a1 + 745) = v3;
    *(a1 + 1028) = 6;
    __asm { FMOV            V0.4S, #1.0 }

    *(a1 + 768) = _Q0;
    *(a1 + 784) = 0u;
    *(a1 + 800) = 0u;
    *(a1 + 816) = 0u;
    *(a1 + 832) = 0u;
    *(a1 + 848) = 0u;
    *(a1 + 864) = 0u;
    *(a1 + 880) = v3;
    HGNode::ClearBits(a1, v53, v54);
    *(a1 + 745) = v3;
    v52 = 2.16 - -1.14;
    *(a1 + 1156) = v52;
    *(a1 + 1160) = -1.14;
    v29 = &HGAYCCToneCurveToLinearLUTInfo::s_1DLUTnumBins;
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      HGNode::ClearBits(a1, v5, v6);
      LOBYTE(v3) = 1;
      *(a1 + 745) = 1;
      *(a1 + 896) = xmmword_2603429B0;
      *(a1 + 912) = xmmword_2603429C0;
      *(a1 + 928) = xmmword_2603429D0;
      *(a1 + 944) = xmmword_2603427D0;
      HGNode::ClearBits(a1, v41, v42);
      *(a1 + 745) = 1;
      *(a1 + 960) = xmmword_2603429B0;
      *(a1 + 976) = xmmword_2603429C0;
      *(a1 + 992) = xmmword_2603429D0;
      *(a1 + 1008) = xmmword_2603427D0;
      HGNode::ClearBits(a1, v43, v44);
      *(a1 + 745) = 1;
      *(a1 + 1028) = 8;
      __asm { FMOV            V0.4S, #1.0 }

      *(a1 + 768) = _Q0;
      *(a1 + 784) = 0u;
      *(a1 + 800) = 0u;
      *(a1 + 816) = 0u;
      *(a1 + 832) = 0u;
      *(a1 + 848) = 0u;
      *(a1 + 864) = 0u;
      *(a1 + 880) = 1;
      HGNode::ClearBits(a1, v47, v48);
      *(a1 + 745) = 1;
      v46 = 1.252941 - -0.752941;
      *(a1 + 1156) = v46;
      *(a1 + 1160) = -0.752941;
      v29 = &HG_ERsRGBToneCurveToLinearLUTInfo::s_1DLUTnumBins;
    }

    else
    {
      if (v3 != 6)
      {
        goto LABEL_19;
      }

      HGNode::ClearBits(a1, v5, v6);
      LOBYTE(v3) = 1;
      *(a1 + 745) = 1;
      *(a1 + 896) = xmmword_2603429B0;
      *(a1 + 912) = xmmword_2603429C0;
      *(a1 + 928) = xmmword_2603429D0;
      *(a1 + 944) = xmmword_2603427D0;
      HGNode::ClearBits(a1, v15, v16);
      *(a1 + 745) = 1;
      *(a1 + 960) = xmmword_2603429B0;
      *(a1 + 976) = xmmword_2603429C0;
      *(a1 + 992) = xmmword_2603429D0;
      *(a1 + 1008) = xmmword_2603427D0;
      HGNode::ClearBits(a1, v17, v18);
      *(a1 + 745) = 1;
      *(a1 + 1028) = 9;
      __asm { FMOV            V0.4S, #1.0 }

      *(a1 + 768) = _Q0;
      *(a1 + 784) = 0u;
      *(a1 + 800) = 0u;
      *(a1 + 816) = 0u;
      *(a1 + 832) = 0u;
      *(a1 + 848) = 0u;
      *(a1 + 864) = 0u;
      *(a1 + 880) = 1;
      HGNode::ClearBits(a1, v25, v26);
      *(a1 + 745) = 1;
      v24 = 1.67496694 - -0.527113747;
      *(a1 + 1156) = v24;
      *(a1 + 1160) = -0.527113747;
      v29 = &HGLinearToERsRGBToneCurveLUTInfo::s_1DLUTnumBins;
    }
  }

  else
  {
    HGNode::ClearBits(a1, v5, v6);
    if (v3 == 3)
    {
      LOBYTE(v3) = 1;
      *(a1 + 745) = 1;
      *(a1 + 896) = xmmword_2603429B0;
      *(a1 + 912) = xmmword_2603429C0;
      v9 = xmmword_2603429D0;
    }

    else
    {
      LOBYTE(v3) = 1;
      *(a1 + 745) = 1;
      *(a1 + 896) = xmmword_2603915F0;
      *(a1 + 912) = xmmword_260391600;
      v9 = xmmword_260391610;
    }

    *(a1 + 928) = v9;
    *(a1 + 944) = xmmword_2603427D0;
    HGNode::ClearBits(a1, v7, v8);
    *(a1 + 745) = 1;
    *(a1 + 960) = xmmword_260344CF0;
    *(a1 + 976) = xmmword_260391620;
    *(a1 + 992) = xmmword_260391630;
    *(a1 + 1008) = xmmword_2603427D0;
    HGNode::ClearBits(a1, v35, v36);
    *(a1 + 745) = 1;
    *(a1 + 1028) = 7;
    __asm { FMOV            V0.4S, #1.0 }

    *(a1 + 768) = _Q0;
    *(a1 + 784) = 0u;
    *(a1 + 800) = 0u;
    *(a1 + 816) = 0u;
    *(a1 + 832) = 0u;
    *(a1 + 848) = 0u;
    *(a1 + 864) = 0u;
    *(a1 + 880) = 1;
    HGNode::ClearBits(a1, v39, v40);
    *(a1 + 745) = 1;
    v38 = 1.42 - -0.18;
    *(a1 + 1156) = v38;
    *(a1 + 1160) = -0.18;
    v29 = &HGLinearToAYCCToneCurveLUTInfo::s_1DLUTnumBins;
  }

  v55 = *v29;
  HGNode::ClearBits(a1, v27, v28);
  *(a1 + 745) = v3;
  *(a1 + 1152) = v55;
LABEL_19:

  *&result = HGColorGamma::SetYCbCrBiasAndScale(a1, v5, v6).n128_u64[0];
  return result;
}

uint64_t HGColorGamma::ReleaseNodes(HGColorGamma *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(this + 53) = 0;
  }

  v3 = *(this + 54);
  if (v3)
  {
    (*(*v3 + 24))(v3);
    *(this + 54) = 0;
  }

  v4 = *(this + 57);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(this + 57) = 0;
  }

  v5 = *(this + 55);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(this + 55) = 0;
  }

  v6 = *(this + 56);
  if (v6)
  {
    (*(*v6 + 24))(v6);
    *(this + 56) = 0;
  }

  v7 = *(this + 58);
  if (v7)
  {
    (*(*v7 + 24))(v7);
    *(this + 58) = 0;
  }

  v8 = *(this + 80);
  if (v8)
  {
    (*(*v8 + 24))(v8);
    *(this + 80) = 0;
  }

  v9 = *(this + 81);
  if (v9)
  {
    (*(*v9 + 24))(v9);
    *(this + 81) = 0;
  }

  v10 = *(this + 82);
  if (v10)
  {
    (*(*v10 + 24))(v10);
    *(this + 82) = 0;
  }

  v11 = *(this + 83);
  if (v11)
  {
    (*(*v11 + 24))(v11);
    *(this + 83) = 0;
  }

  v12 = *(this + 84);
  if (v12)
  {
    (*(*v12 + 24))(v12);
    *(this + 84) = 0;
  }

  v13 = *(this + 85);
  if (v13)
  {
    (*(*v13 + 24))(v13);
    *(this + 85) = 0;
  }

  v14 = *(this + 86);
  if (v14)
  {
    (*(*v14 + 24))(v14);
    *(this + 86) = 0;
  }

  v15 = *(this + 87);
  if (v15)
  {
    (*(*v15 + 24))(v15);
    *(this + 87) = 0;
  }

  v16 = *(this + 88);
  if (v16)
  {
    (*(*v16 + 24))(v16);
    *(this + 88) = 0;
  }

  v17 = *(this + 89);
  if (v17)
  {
    (*(*v17 + 24))(v17);
    *(this + 89) = 0;
  }

  v18 = *(this + 59);
  if (v18)
  {
    (*(*v18 + 24))(v18);
    *(this + 59) = 0;
  }

  v19 = *(this + 60);
  if (v19)
  {
    (*(*v19 + 24))(v19);
    *(this + 60) = 0;
  }

  v20 = *(this + 62);
  if (v20)
  {
    (*(*v20 + 24))(v20);
    *(this + 62) = 0;
  }

  v21 = *(this + 61);
  if (v21)
  {
    (*(*v21 + 24))(v21);
    *(this + 61) = 0;
  }

  v22 = *(this + 63);
  if (v22)
  {
    (*(*v22 + 24))(v22);
    *(this + 63) = 0;
  }

  v23 = *(this + 64);
  if (v23)
  {
    (*(*v23 + 24))(v23);
    *(this + 64) = 0;
  }

  v24 = *(this + 65);
  if (v24)
  {
    (*(*v24 + 24))(v24);
    *(this + 65) = 0;
  }

  v25 = *(this + 70);
  if (v25)
  {
    (*(*v25 + 24))(v25);
    *(this + 70) = 0;
  }

  v26 = *(this + 71);
  if (v26)
  {
    (*(*v26 + 24))(v26);
    *(this + 71) = 0;
  }

  v27 = *(this + 66);
  if (v27)
  {
    (*(*v27 + 24))(v27);
    *(this + 66) = 0;
  }

  v28 = *(this + 68);
  if (v28)
  {
    (*(*v28 + 24))(v28);
    *(this + 68) = 0;
  }

  v29 = *(this + 72);
  if (v29)
  {
    (*(*v29 + 24))(v29);
    *(this + 72) = 0;
  }

  v30 = *(this + 73);
  if (v30)
  {
    (*(*v30 + 24))(v30);
    *(this + 73) = 0;
  }

  v31 = *(this + 74);
  if (v31)
  {
    (*(*v31 + 24))(v31);
    *(this + 74) = 0;
  }

  v32 = *(this + 75);
  if (v32)
  {
    (*(*v32 + 24))(v32);
    *(this + 75) = 0;
  }

  v33 = *(this + 76);
  if (v33)
  {
    (*(*v33 + 24))(v33);
    *(this + 76) = 0;
  }

  v34 = *(this + 77);
  if (v34)
  {
    (*(*v34 + 24))(v34);
    *(this + 77) = 0;
  }

  v35 = *(this + 79);
  if (v35)
  {
    (*(*v35 + 24))(v35);
    *(this + 79) = 0;
  }

  v36 = *(this + 78);
  if (v36)
  {
    (*(*v36 + 24))(v36);
    *(this + 78) = 0;
  }

  v37 = *(this + 90);
  if (v37)
  {
    (*(*v37 + 24))(v37);
    *(this + 90) = 0;
  }

  v38 = *(this + 91);
  if (v38)
  {
    (*(*v38 + 24))(v38);
    *(this + 91) = 0;
  }

  v39 = *(this + 92);
  if (v39)
  {
    (*(*v39 + 24))(v39);
    *(this + 92) = 0;
  }

  result = *(this + 51);
  if (result)
  {
    result = MEMORY[0x2666E9F00](result, 0x1000C4028F2CA5ALL);
    *(this + 51) = 0;
  }

  return result;
}

void HGColorGamma::~HGColorGamma(HGColorGamma *this)
{
  *this = &unk_287215AF0;
  HGColorGamma::ReleaseNodes(this);

  HGNode::~HGNode(this);
}

{
  *this = &unk_287215AF0;
  HGColorGamma::ReleaseNodes(this);
  HGNode::~HGNode(this);

  HGObject::operator delete(v2);
}

uint64_t HGColorGamma::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HGColorGamma::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 || *(a1 + 416))
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

HGNode *HGColorGamma::GetOutput(HGNode *this, HGRenderer *a2)
{
  v3 = this;
  Input = HGRenderer::GetInput(a2, this, 0);
  v117 = Input;
  if (Input)
  {
    if (*(Input + 3) == 1112363084 && !*(v3 + 257))
    {
      v5 = vmvnq_s8(vceqq_f32(vmulq_f32(*(v3 + 48), xmmword_260344BA0), xmmword_260344BA0));
      *v5.i8 = vpmin_s32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      if (!vpmin_s32(*v5.i8, *v5.i8).u32[0])
      {
        v6 = vornq_s8(vornq_s8(vornq_s8(vmvnq_s8(vceqq_f32(*(v3 + 57), xmmword_2603429C0)), vceqq_f32(*(v3 + 56), xmmword_2603429B0)), vceqq_f32(*(v3 + 58), xmmword_2603429D0)), vceqq_f32(*(v3 + 59), xmmword_2603427D0));
        *v6.i8 = vpmin_s32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
        if (!vpmin_s32(*v6.i8, *v6.i8).u32[0])
        {
          v7 = vornq_s8(vornq_s8(vornq_s8(vmvnq_s8(vceqq_f32(*(v3 + 61), xmmword_2603429C0)), vceqq_f32(*(v3 + 60), xmmword_2603429B0)), vceqq_f32(*(v3 + 62), xmmword_2603429D0)), vceqq_f32(*(v3 + 63), xmmword_2603427D0));
          *v7.i8 = vpmin_s32(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
          if (!vpmin_s32(*v7.i8, *v7.i8).u32[0])
          {
            *(v3 + 147) = Input;
          }
        }
      }
    }

    HGColorGamma::ConcatenateWithUpstreamNode(v3, a2, &v117);
    if (*(v3 + 745) == 1)
    {
      HGColorGamma::ReleaseNodes(v3);
      operator new();
    }

    if ((*(v3 + 744) & 1) != 0 && (*(v3 + 1024) & 1) == 0 && (*(*a2 + 304))(a2))
    {
      *(v3 + 52) = HGBitmapLoader::GetBitmapPtr(v117);
      return v3;
    }

    if ((*(v3 + 746) & 1) == 0)
    {
      (*(**(v3 + 94) + 120))(*(v3 + 94), 0, v117);
      return *(v3 + 95);
    }

    *(v3 + 746) = 0;
    v9 = *(v3 + 265);
    if (v9 > 0x1A)
    {
      v10 = 1;
      v11 = v117;
      if (*(v117 + 3) != 1112363084)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v10 = dword_260392878[v9];
      v11 = v117;
      if (*(v117 + 3) != 1112363084)
      {
        goto LABEL_36;
      }
    }

    BitmapFormat = HGBitmapLoader::GetBitmapFormat(v11);
    switch(BitmapFormat)
    {
      case 14:
        goto LABEL_22;
      case 31:
        if (*(v3 + 265) != 2)
        {
          break;
        }

LABEL_23:
        v13 = BitmapFormat;
        if ((*(*a2 + 304))(a2))
        {
          v15 = 0;
          v16 = 0;
          v17 = *(v3 + 94);
          if (!v17)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v13 == 14)
          {
            v16 = *(v3 + 59);
            if (!v16)
            {
              v18 = HGObject::operator new(0x1A0uLL);
              *v18 = 0u;
              *(v18 + 1) = 0u;
              *(v18 + 2) = 0u;
              *(v18 + 3) = 0u;
              *(v18 + 4) = 0u;
              *(v18 + 5) = 0u;
              *(v18 + 6) = 0u;
              *(v18 + 7) = 0u;
              *(v18 + 8) = 0u;
              *(v18 + 9) = 0u;
              *(v18 + 10) = 0u;
              *(v18 + 11) = 0u;
              *(v18 + 12) = 0u;
              *(v18 + 13) = 0u;
              *(v18 + 14) = 0u;
              *(v18 + 15) = 0u;
              *(v18 + 16) = 0u;
              *(v18 + 17) = 0u;
              *(v18 + 18) = 0u;
              *(v18 + 19) = 0u;
              *(v18 + 20) = 0u;
              *(v18 + 21) = 0u;
              *(v18 + 22) = 0u;
              *(v18 + 23) = 0u;
              *(v18 + 24) = 0u;
              *(v18 + 25) = 0u;
              HgcColorGamma_2vuy_yxzx_expand::HgcColorGamma_2vuy_yxzx_expand(v18);
            }
          }

          else
          {
            if (v13 == 31)
            {
              v27 = HGColorGamma::m_Getv210_YXZXExpandNode(v3, v14);
            }

            else if (v13 == 15)
            {
              v27 = HGColorGamma::m_Get2vuy_XYXZExpandNode(v3);
            }

            else
            {
              v27 = HGColorGamma::m_Getv216_YXZXExpandNode(v3);
            }

            v16 = v27;
          }

          (*(*v16 + 120))(v16, 0, v11);
          v15 = 0;
          *(v3 + 94) = v16;
          v17 = v16;
          if (!v16)
          {
LABEL_39:
            v19 = *(v3 + 264);
            if (v19 > 15)
            {
              if (v19 == 16)
              {
                if (*(v3 + 266) != 3)
                {
                  goto LABEL_48;
                }
              }

              else if (v19 != 31 || *(v3 + 266) != 2)
              {
                goto LABEL_48;
              }
            }

            else if (v19 != 14 && v19 != 15 || *(v3 + 266) != 1)
            {
LABEL_48:
              v20 = *(v3 + 257);
              if (v20)
              {
                if (v20 > 4)
                {
                  if (v20 >= 0xA)
                  {
                    HDRFunctionNode = HGColorGamma::m_GetHDRFunctionNode(v3, v20);
                    goto LABEL_63;
                  }

LABEL_69:
                  v25 = *(v3 + 80);
                  if (!v25)
                  {
                    v25 = HGObject::operator new(0x1D0uLL);
                    HGApply1DLUT::HGApply1DLUT(v25, *(v3 + 288), *(v3 + 289), *(v3 + 290), 1, 1, 1, 0, 1, 1);
                    LODWORD(v26) = 0;
                    *(v3 + 80) = v25;
                    if (v15)
                    {
                      goto LABEL_106;
                    }

                    goto LABEL_100;
                  }

                  goto LABEL_70;
                }

                v21 = *(v3 + 292);
                if (v21 == 2)
                {
                  switch(v20)
                  {
                    case 3:
                      HDRFunctionNode = HGColorGamma::m_GetToneParamCurve3(v3);
                      break;
                    case 2:
                      HDRFunctionNode = HGColorGamma::m_GetToneParamCurve2(v3);
                      break;
                    case 1:
                      HDRFunctionNode = HGColorGamma::m_GetToneParamCurve1(v3);
                      break;
                    default:
                      HDRFunctionNode = HGColorGamma::m_GetToneParamCurve4(v3);
                      break;
                  }

LABEL_63:
                  v25 = HDRFunctionNode;
                  LODWORD(v26) = 0;
                  if (v15)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_100;
                }
              }

              else
              {
                v23 = vmvnq_s8(vceqq_f32(vmulq_f32(*(v3 + 48), xmmword_260344BA0), xmmword_260344BA0));
                *v23.i8 = vpmin_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
                if (!vpmin_s32(*v23.i8, *v23.i8).u32[0])
                {
                  if (*(v3 + 1172) == 1)
                  {
                    v25 = 0;
                    LODWORD(v26) = (v15 & *(v3 + 1173));
                    if (v15)
                    {
                      goto LABEL_106;
                    }
                  }

                  else
                  {
                    LODWORD(v26) = 0;
                    v25 = 0;
                    if (v15)
                    {
                      goto LABEL_106;
                    }
                  }

                  goto LABEL_100;
                }

                v21 = *(v3 + 292);
                if ((v21 - 1) <= 1)
                {
                  if (*(v3 + 1172) == 1 && (v15 & *(v3 + 1173)) == 1)
                  {
                    if (*(v3 + 880) == 1)
                    {
                      GammaUniformNode = HGColorGamma::m_GetGammaUniformNode(v3);
                    }

                    else
                    {
                      GammaUniformNode = HGColorGamma::m_GetGammaMCNode(v3);
                    }

                    v25 = GammaUniformNode;
                    LODWORD(v26) = 1;
                    if (v15)
                    {
                      goto LABEL_106;
                    }

LABEL_100:
                    if (*(v3 + 1026) == 1 && *(v3 + 259) == 1)
                    {
                      v30 = *(v3 + 75);
                      if (!v30)
                      {
                        v31 = HGObject::operator new(0x1A0uLL);
                        *v31 = 0u;
                        *(v31 + 1) = 0u;
                        *(v31 + 2) = 0u;
                        *(v31 + 3) = 0u;
                        *(v31 + 4) = 0u;
                        *(v31 + 5) = 0u;
                        *(v31 + 6) = 0u;
                        *(v31 + 7) = 0u;
                        *(v31 + 8) = 0u;
                        *(v31 + 9) = 0u;
                        *(v31 + 10) = 0u;
                        *(v31 + 11) = 0u;
                        *(v31 + 12) = 0u;
                        *(v31 + 13) = 0u;
                        *(v31 + 14) = 0u;
                        *(v31 + 15) = 0u;
                        *(v31 + 16) = 0u;
                        *(v31 + 17) = 0u;
                        *(v31 + 18) = 0u;
                        *(v31 + 19) = 0u;
                        *(v31 + 20) = 0u;
                        *(v31 + 21) = 0u;
                        *(v31 + 22) = 0u;
                        *(v31 + 23) = 0u;
                        *(v31 + 24) = 0u;
                        *(v31 + 25) = 0u;
                        HgcColorGamma_chroma_upsample_f1::HgcColorGamma_chroma_upsample_f1(v31);
                      }

                      v32 = *(*v30 + 120);
                      if (v16)
                      {
                        v32(v30, 0, v16);
                      }

                      else
                      {
                        v32(v30, 0, v11);
                        *(v3 + 94) = v30;
                      }

                      HGNode::SetSupportedFormatPrecisions(v30, v10, v33);
LABEL_107:
                      v34 = vornq_s8(vornq_s8(vornq_s8(vmvnq_s8(vceqq_f32(*(v3 + 57), xmmword_2603429C0)), vceqq_f32(*(v3 + 56), xmmword_2603429B0)), vceqq_f32(*(v3 + 58), xmmword_2603429D0)), vceqq_f32(*(v3 + 59), xmmword_2603427D0));
                      *v34.i8 = vpmin_s32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
                      if (vpmin_s32(*v34.i8, *v34.i8).u32[0])
                      {
                        __asm { FMOV            V2.4S, #1.0 }
                      }

                      else
                      {
                        _Q2 = *(v3 + 67);
                      }

                      v40 = vmulq_f32(_Q2, *(v3 + 69));
                      v41 = vceqzq_f32(v40);
                      *v41.i8 = vpmax_s32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
                      if (!vpmax_s32(*v41.i8, *v41.i8).u32[0])
                      {
                        goto LABEL_112;
                      }

                      __asm { FMOV            V0.4S, #1.0 }

                      v43 = vmvnq_s8(vceqq_f32(_Q2, _Q0));
                      *v43.i8 = vpmin_s32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
                      if (vpmin_s32(*v43.i8, *v43.i8).u32[0])
                      {
LABEL_112:
                        v44 = *(v3 + 66);
                        v113 = v40;
                        v114 = _Q2;
                        if (v30)
                        {
                          if (!v44)
                          {
                            v45 = HGObject::operator new(0x1A0uLL);
                            *v45 = 0u;
                            *(v45 + 1) = 0u;
                            *(v45 + 2) = 0u;
                            *(v45 + 3) = 0u;
                            *(v45 + 4) = 0u;
                            *(v45 + 5) = 0u;
                            *(v45 + 6) = 0u;
                            *(v45 + 7) = 0u;
                            *(v45 + 8) = 0u;
                            *(v45 + 9) = 0u;
                            *(v45 + 10) = 0u;
                            *(v45 + 11) = 0u;
                            *(v45 + 12) = 0u;
                            *(v45 + 13) = 0u;
                            *(v45 + 14) = 0u;
                            *(v45 + 15) = 0u;
                            *(v45 + 16) = 0u;
                            *(v45 + 17) = 0u;
                            *(v45 + 18) = 0u;
                            *(v45 + 19) = 0u;
                            *(v45 + 20) = 0u;
                            *(v45 + 21) = 0u;
                            *(v45 + 22) = 0u;
                            *(v45 + 23) = 0u;
                            *(v45 + 24) = 0u;
                            *(v45 + 25) = 0u;
                            HgcColorGamma_bias::HgcColorGamma_bias(v45);
                          }

                          (*(*v44 + 120))(v44, 0, v30);
                          v30 = *(v3 + 66);
                          if (!v30)
                          {
                            v46 = HGObject::operator new(0x1A0uLL);
                            *v46 = 0u;
                            *(v46 + 1) = 0u;
                            *(v46 + 2) = 0u;
                            *(v46 + 3) = 0u;
                            *(v46 + 4) = 0u;
                            *(v46 + 5) = 0u;
                            *(v46 + 6) = 0u;
                            *(v46 + 7) = 0u;
                            *(v46 + 8) = 0u;
                            *(v46 + 9) = 0u;
                            *(v46 + 10) = 0u;
                            *(v46 + 11) = 0u;
                            *(v46 + 12) = 0u;
                            *(v46 + 13) = 0u;
                            *(v46 + 14) = 0u;
                            *(v46 + 15) = 0u;
                            *(v46 + 16) = 0u;
                            *(v46 + 17) = 0u;
                            *(v46 + 18) = 0u;
                            *(v46 + 19) = 0u;
                            *(v46 + 20) = 0u;
                            *(v46 + 21) = 0u;
                            *(v46 + 22) = 0u;
                            *(v46 + 23) = 0u;
                            *(v46 + 24) = 0u;
                            *(v46 + 25) = 0u;
                            HgcColorGamma_bias::HgcColorGamma_bias(v46);
                          }
                        }

                        else
                        {
                          if (!v44)
                          {
                            v47 = HGObject::operator new(0x1A0uLL);
                            *v47 = 0u;
                            *(v47 + 1) = 0u;
                            *(v47 + 2) = 0u;
                            *(v47 + 3) = 0u;
                            *(v47 + 4) = 0u;
                            *(v47 + 5) = 0u;
                            *(v47 + 6) = 0u;
                            *(v47 + 7) = 0u;
                            *(v47 + 8) = 0u;
                            *(v47 + 9) = 0u;
                            *(v47 + 10) = 0u;
                            *(v47 + 11) = 0u;
                            *(v47 + 12) = 0u;
                            *(v47 + 13) = 0u;
                            *(v47 + 14) = 0u;
                            *(v47 + 15) = 0u;
                            *(v47 + 16) = 0u;
                            *(v47 + 17) = 0u;
                            *(v47 + 18) = 0u;
                            *(v47 + 19) = 0u;
                            *(v47 + 20) = 0u;
                            *(v47 + 21) = 0u;
                            *(v47 + 22) = 0u;
                            *(v47 + 23) = 0u;
                            *(v47 + 24) = 0u;
                            *(v47 + 25) = 0u;
                            HgcColorGamma_bias::HgcColorGamma_bias(v47);
                          }

                          (*(*v44 + 120))(v44, 0, v11);
                          v30 = *(v3 + 66);
                          if (!v30)
                          {
                            v48 = HGObject::operator new(0x1A0uLL);
                            *v48 = 0u;
                            *(v48 + 1) = 0u;
                            *(v48 + 2) = 0u;
                            *(v48 + 3) = 0u;
                            *(v48 + 4) = 0u;
                            *(v48 + 5) = 0u;
                            *(v48 + 6) = 0u;
                            *(v48 + 7) = 0u;
                            *(v48 + 8) = 0u;
                            *(v48 + 9) = 0u;
                            *(v48 + 10) = 0u;
                            *(v48 + 11) = 0u;
                            *(v48 + 12) = 0u;
                            *(v48 + 13) = 0u;
                            *(v48 + 14) = 0u;
                            *(v48 + 15) = 0u;
                            *(v48 + 16) = 0u;
                            *(v48 + 17) = 0u;
                            *(v48 + 18) = 0u;
                            *(v48 + 19) = 0u;
                            *(v48 + 20) = 0u;
                            *(v48 + 21) = 0u;
                            *(v48 + 22) = 0u;
                            *(v48 + 23) = 0u;
                            *(v48 + 24) = 0u;
                            *(v48 + 25) = 0u;
                            HgcColorGamma_bias::HgcColorGamma_bias(v48);
                          }

                          *(v3 + 94) = v30;
                        }

                        (*(*v30 + 96))(v30, 0, -v113.f32[0], -v113.f32[1], -v113.f32[2], 0.0);
                        (*(*v30 + 96))(v30, 1, v114, v114.n128_f32[1], v114.n128_f32[2], 1.0);
                      }

                      if (v15)
                      {
                        if (*(v3 + 1172) == 1 && (!*(v3 + 1173) || ((v26 | *(v3 + 1173) ^ 1) & 1) == 0))
                        {
                          UnpremultiplyNode = HGColorGamma::m_GetUnpremultiplyNode(v3);
                          v50 = UnpremultiplyNode;
                          if (UnpremultiplyNode)
                          {
                            if (*(v3 + 1174) == 1)
                            {
                              (*(*UnpremultiplyNode + 120))();
                              v51 = 0;
                              if (!v30)
                              {
                                *(v3 + 94) = v50;
                              }

                              v52 = v50;
                              goto LABEL_143;
                            }

                            v51 = 0;
                            if (!v30)
                            {
LABEL_151:
                              v57 = *(v3 + 53);
                              if (!v57)
                              {
                                v58 = HGObject::operator new(0x1F0uLL);
                                HGColorMatrix::HGColorMatrix(v58);
                              }

                              (*(*v57 + 120))(v57, 0, v11);
                              v59 = *(v3 + 53);
                              if (!v59)
                              {
                                v60 = HGObject::operator new(0x1F0uLL);
                                HGColorMatrix::HGColorMatrix(v60);
                              }

                              *(v3 + 94) = v59;
                              if (v51)
                              {
                                goto LABEL_158;
                              }

                              goto LABEL_157;
                            }

LABEL_142:
                            v52 = v30;
                            goto LABEL_143;
                          }

LABEL_141:
                          v51 = 1;
                          if (!v30)
                          {
                            goto LABEL_151;
                          }

                          goto LABEL_142;
                        }
                      }

                      else if ((*(v3 + 1026) & 1) == 0 && *(v3 + 259) == 1)
                      {
                        v52 = *(v3 + 75);
                        if (!v52)
                        {
                          v53 = HGObject::operator new(0x1A0uLL);
                          *v53 = 0u;
                          *(v53 + 1) = 0u;
                          *(v53 + 2) = 0u;
                          *(v53 + 3) = 0u;
                          *(v53 + 4) = 0u;
                          *(v53 + 5) = 0u;
                          *(v53 + 6) = 0u;
                          *(v53 + 7) = 0u;
                          *(v53 + 8) = 0u;
                          *(v53 + 9) = 0u;
                          *(v53 + 10) = 0u;
                          *(v53 + 11) = 0u;
                          *(v53 + 12) = 0u;
                          *(v53 + 13) = 0u;
                          *(v53 + 14) = 0u;
                          *(v53 + 15) = 0u;
                          *(v53 + 16) = 0u;
                          *(v53 + 17) = 0u;
                          *(v53 + 18) = 0u;
                          *(v53 + 19) = 0u;
                          *(v53 + 20) = 0u;
                          *(v53 + 21) = 0u;
                          *(v53 + 22) = 0u;
                          *(v53 + 23) = 0u;
                          *(v53 + 24) = 0u;
                          *(v53 + 25) = 0u;
                          HgcColorGamma_chroma_upsample_f1::HgcColorGamma_chroma_upsample_f1(v53);
                        }

                        v54 = *(*v52 + 120);
                        if (v30)
                        {
                          v54(v52, 0, v30);
                          v50 = 0;
                        }

                        else
                        {
                          v54(v52, 0, v11);
                          v50 = 0;
                          *(v3 + 94) = v52;
                        }

                        v51 = 1;
LABEL_143:
                        v55 = *(v3 + 53);
                        if (!v55)
                        {
                          v56 = HGObject::operator new(0x1F0uLL);
                          HGColorMatrix::HGColorMatrix(v56);
                        }

                        (*(*v55 + 120))(v55, 0, v52);
                        if (v51)
                        {
                          goto LABEL_158;
                        }

LABEL_157:
                        if ((*(v3 + 1174) & 1) == 0)
                        {
                          v73 = *(v3 + 53);
                          if (!v73)
                          {
                            v74 = HGObject::operator new(0x1F0uLL);
                            HGColorMatrix::HGColorMatrix(v74);
                          }

                          (*(*v50 + 120))(v50, 0, v73);
                          if (v25)
                          {
LABEL_160:
                            (*(*v25 + 120))(v25, 0, v50);
                            v61 = *(v3 + 54);
                            if (!v61)
                            {
                              v62 = HGObject::operator new(0x1F0uLL);
                              HGColorMatrix::HGColorMatrix(v62);
                            }

                            (*(*v61 + 120))(v61, 0, v25);
                            v63 = *(v3 + 54);
                            if (v63)
                            {
                              goto LABEL_163;
                            }

                            goto LABEL_170;
                          }

LABEL_167:
                          v67 = *(v3 + 54);
                          if (!v67)
                          {
                            v68 = HGObject::operator new(0x1F0uLL);
                            HGColorMatrix::HGColorMatrix(v68);
                          }

                          (*(*v67 + 120))(v67, 0, v50);
                          v63 = *(v3 + 54);
                          if (v63)
                          {
LABEL_163:
                            v64 = *(v3 + 266);
                            if (v64 > 0x1A)
                            {
                              v65 = 1;
                              if (!v15)
                              {
                                goto LABEL_187;
                              }
                            }

                            else
                            {
                              v65 = dword_260392878[v64];
                              if (!v15)
                              {
                                goto LABEL_187;
                              }
                            }

                            if (*(v3 + 1172))
                            {
                              if (((v26 | *(v3 + 1173) ^ 1) & 1) == 0)
                              {
                                v70 = *(v3 + 72);
                                if (!v70)
                                {
                                  v71 = HGObject::operator new(0x1A0uLL);
                                  HgcPremultiply::HgcPremultiply(v71);
                                }

                                (*(*v70 + 120))(v70, 0, v63);
                                v63 = *(v3 + 72);
                                if (!v63)
                                {
                                  v72 = HGObject::operator new(0x1A0uLL);
                                  HgcPremultiply::HgcPremultiply(v72);
                                }
                              }
                            }

                            else if (*(v3 + 1173))
                            {
                              v75 = *(v3 + 72);
                              if (!v75)
                              {
                                v76 = HGObject::operator new(0x1A0uLL);
                                HgcPremultiply::HgcPremultiply(v76);
                              }

                              (*(*v75 + 120))(v75, 0, v63);
                              v63 = *(v3 + 72);
                              if (!v63)
                              {
                                v77 = HGObject::operator new(0x1A0uLL);
                                HgcPremultiply::HgcPremultiply(v77);
                              }
                            }

LABEL_187:
                            v78 = vornq_s8(vornq_s8(vornq_s8(vmvnq_s8(vceqq_f32(*(v3 + 61), xmmword_2603429C0)), vceqq_f32(*(v3 + 60), xmmword_2603429B0)), vceqq_f32(*(v3 + 62), xmmword_2603429D0)), vceqq_f32(*(v3 + 63), xmmword_2603427D0));
                            *v78.i8 = vpmin_s32(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
                            if (vpmin_s32(*v78.i8, *v78.i8).u32[0])
                            {
                              __asm { FMOV            V2.4S, #1.0 }
                            }

                            else
                            {
                              _Q2 = *(v3 + 68);
                            }

                            v80 = vceqzq_f32(*(v3 + 70));
                            *v80.i8 = vpmax_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
                            if (!vpmax_s32(*v80.i8, *v80.i8).u32[0])
                            {
                              goto LABEL_192;
                            }

                            __asm { FMOV            V0.4S, #1.0 }

                            v82 = vmvnq_s8(vceqq_f32(_Q2, _Q0));
                            *v82.i8 = vpmin_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
                            if (vpmin_s32(*v82.i8, *v82.i8).u32[0])
                            {
LABEL_192:
                              v115 = _Q2;
                              *v116 = *(v3 + 70);
                              v83 = *(v3 + 68);
                              if (!v83)
                              {
                                v84 = HGObject::operator new(0x1A0uLL);
                                *v84 = 0u;
                                *(v84 + 1) = 0u;
                                *(v84 + 2) = 0u;
                                *(v84 + 3) = 0u;
                                *(v84 + 4) = 0u;
                                *(v84 + 5) = 0u;
                                *(v84 + 6) = 0u;
                                *(v84 + 7) = 0u;
                                *(v84 + 8) = 0u;
                                *(v84 + 9) = 0u;
                                *(v84 + 10) = 0u;
                                *(v84 + 11) = 0u;
                                *(v84 + 12) = 0u;
                                *(v84 + 13) = 0u;
                                *(v84 + 14) = 0u;
                                *(v84 + 15) = 0u;
                                *(v84 + 16) = 0u;
                                *(v84 + 17) = 0u;
                                *(v84 + 18) = 0u;
                                *(v84 + 19) = 0u;
                                *(v84 + 20) = 0u;
                                *(v84 + 21) = 0u;
                                *(v84 + 22) = 0u;
                                *(v84 + 23) = 0u;
                                *(v84 + 24) = 0u;
                                *(v84 + 25) = 0u;
                                HgcColorGamma_bias::HgcColorGamma_bias(v84);
                              }

                              (*(*v83 + 120))(v83, 0, v63);
                              v63 = *(v3 + 68);
                              if (!v63)
                              {
                                v85 = HGObject::operator new(0x1A0uLL);
                                *v85 = 0u;
                                *(v85 + 1) = 0u;
                                *(v85 + 2) = 0u;
                                *(v85 + 3) = 0u;
                                *(v85 + 4) = 0u;
                                *(v85 + 5) = 0u;
                                *(v85 + 6) = 0u;
                                *(v85 + 7) = 0u;
                                *(v85 + 8) = 0u;
                                *(v85 + 9) = 0u;
                                *(v85 + 10) = 0u;
                                *(v85 + 11) = 0u;
                                *(v85 + 12) = 0u;
                                *(v85 + 13) = 0u;
                                *(v85 + 14) = 0u;
                                *(v85 + 15) = 0u;
                                *(v85 + 16) = 0u;
                                *(v85 + 17) = 0u;
                                *(v85 + 18) = 0u;
                                *(v85 + 19) = 0u;
                                *(v85 + 20) = 0u;
                                *(v85 + 21) = 0u;
                                *(v85 + 22) = 0u;
                                *(v85 + 23) = 0u;
                                *(v85 + 24) = 0u;
                                *(v85 + 25) = 0u;
                                HgcColorGamma_bias::HgcColorGamma_bias(v85);
                              }

                              (*(*v63 + 96))(v63, 0, -v116[0], -v116[1], -v116[2], -v116[3]);
                              (*(*v63 + 96))(v63, 1, v115, v115.n128_f32[1], v115.n128_f32[2], v115.n128_f32[3]);
                              if (*(v3 + 1026) == 1)
                              {
                                HGNode::SetSupportedFormatPrecisions(v63, v65, v86);
                              }
                            }

                            if (*(v3 + 1025) == 1)
                            {
                              v87 = *(v3 + 92);
                              if (!v87)
                              {
                                v88 = HGObject::operator new(0x1D0uLL);
                                HGDither::HGDither(v88);
                                v87 = v88;
                                *(v3 + 92) = v88;
                              }

                              (*(*v87 + 96))(v87, 0, 0.0, 0.0, 0.0, 0.0);
                              v89 = *(v3 + 92);
                              if (!v89)
                              {
                                v90 = HGObject::operator new(0x1D0uLL);
                                HGDither::HGDither(v90);
                                v89 = v90;
                                *(v3 + 92) = v90;
                              }

                              (*(*v89 + 120))(v89, 0, v63);
                              v63 = *(v3 + 92);
                              if (!v63)
                              {
                                v63 = HGObject::operator new(0x1D0uLL);
                                HGDither::HGDither(v63);
                                *(v3 + 92) = v63;
                              }

                              if (*(v3 + 1026) == 1)
                              {
                                HGNode::SetSupportedFormatPrecisions(v63, v65, v91);
                              }
                            }

                            v92 = *(v3 + 264);
                            if (v92 <= 25)
                            {
                              if (v92 > 15)
                              {
                                if (v92 != 16)
                                {
                                  if (v92 != 22 || ((*(*a2 + 304))(a2) & 1) != 0)
                                  {
                                    goto LABEL_267;
                                  }

                                  PixelFormatConversion_kV4B_WXYZ_OutputNode = HGColorGamma::m_GetPixelFormatConversion_kV4B_WXYZ_OutputNode(v3);
                                  (*(*PixelFormatConversion_kV4B_WXYZ_OutputNode + 120))(PixelFormatConversion_kV4B_WXYZ_OutputNode, 0, v63);
                                  v94 = HGColorGamma::m_GetPixelFormatConversion_kV4B_WXYZ_OutputNode(v3);
                                  goto LABEL_246;
                                }

                                if (*(v3 + 266) != 3)
                                {
                                  goto LABEL_267;
                                }
                              }

                              else if (v92 != 14 && v92 != 15 || *(v3 + 266) != 1)
                              {
                                goto LABEL_267;
                              }
                            }

                            else
                            {
                              if (v92 <= 30)
                              {
                                if (v92 != 26)
                                {
                                  if (v92 != 29 || ((*(*a2 + 304))(a2) & 1) != 0)
                                  {
                                    goto LABEL_267;
                                  }

                                  PixelFormatConversion_kV4F_WXYZ_OutputNode = HGColorGamma::m_GetPixelFormatConversion_kV4F_WXYZ_OutputNode(v3);
                                  (*(*PixelFormatConversion_kV4F_WXYZ_OutputNode + 120))(PixelFormatConversion_kV4F_WXYZ_OutputNode, 0, v63);
                                  v94 = HGColorGamma::m_GetPixelFormatConversion_kV4F_WXYZ_OutputNode(v3);
                                  goto LABEL_246;
                                }

                                if (((*(*a2 + 304))(a2) & 1) == 0)
                                {
                                  PixelFormatConversion_kV4S_WXYZ_OutputNode = HGColorGamma::m_GetPixelFormatConversion_kV4S_WXYZ_OutputNode(v3);
                                  (*(*PixelFormatConversion_kV4S_WXYZ_OutputNode + 120))(PixelFormatConversion_kV4S_WXYZ_OutputNode, 0, v63);
                                  v94 = HGColorGamma::m_GetPixelFormatConversion_kV4S_WXYZ_OutputNode(v3);
LABEL_246:
                                  v63 = v94;
                                }

LABEL_267:
                                *(v3 + 95) = v63;
                                return v63;
                              }

                              if (v92 != 31)
                              {
                                if (v92 != 32)
                                {
                                  if (v92 != 33 || ((*(*a2 + 304))(a2) & 1) != 0)
                                  {
                                    goto LABEL_267;
                                  }

                                  PixelFormatConversion_kV4S_BE_WXYZ_OutputNode = HGColorGamma::m_GetPixelFormatConversion_kV4S_BE_WXYZ_OutputNode(v3);
                                  (*(*PixelFormatConversion_kV4S_BE_WXYZ_OutputNode + 120))(PixelFormatConversion_kV4S_BE_WXYZ_OutputNode, 0, v63);
                                  v94 = HGColorGamma::m_GetPixelFormatConversion_kV4S_BE_WXYZ_OutputNode(v3);
                                  goto LABEL_246;
                                }

                                if (((*(*a2 + 304))(a2) & 1) == 0)
                                {
                                  PixelFormatConversion_kV4B10Bit_BE_OutputNode = HGColorGamma::m_GetPixelFormatConversion_kV4B10Bit_BE_OutputNode(v3);
                                  (*(*PixelFormatConversion_kV4B10Bit_BE_OutputNode + 120))(PixelFormatConversion_kV4B10Bit_BE_OutputNode, 0, v63);
                                  v94 = HGColorGamma::m_GetPixelFormatConversion_kV4B10Bit_BE_OutputNode(v3);
                                  goto LABEL_246;
                                }

                                goto LABEL_267;
                              }

                              if (*(v3 + 266) != 2)
                              {
                                goto LABEL_267;
                              }
                            }

                            if (*(v3 + 259) == 1)
                            {
                              if (!HGRectIsInfinite(*(v3 + 130), *(v3 + 131)))
                              {
                                v97 = *(v3 + 90);
                                if (!v97)
                                {
                                  v97 = HGObject::operator new(0x1A0uLL);
                                  HGCrop::HGCrop(v97);
                                  *(v3 + 90) = v97;
                                }

                                (*(*v97 + 96))(v97, 0, *(v3 + 260), *(v3 + 261), *(v3 + 262), *(v3 + 263));
                                (*(*v97 + 120))(v97, 0, v63);
                                v63 = *(v3 + 91);
                                if (!v63)
                                {
                                  v63 = HGObject::operator new(0x1D0uLL);
                                  HGTextureWrap::HGTextureWrap(v63);
                                  *(v3 + 91) = v63;
                                }

                                HGTextureWrap::SetTextureWrapMode(v63, 1, v98);
                                (*(*v63 + 120))(v63, 0, v97);
                                if (*(v3 + 1026) == 1)
                                {
                                  HGNode::SetSupportedFormatPrecisions(v63, v65, v99);
                                }
                              }

                              v100 = *(v3 + 74);
                              if (!v100)
                              {
                                v103 = HGObject::operator new(0x1A0uLL);
                                *v103 = 0u;
                                *(v103 + 1) = 0u;
                                *(v103 + 2) = 0u;
                                *(v103 + 3) = 0u;
                                *(v103 + 4) = 0u;
                                *(v103 + 5) = 0u;
                                *(v103 + 6) = 0u;
                                *(v103 + 7) = 0u;
                                *(v103 + 8) = 0u;
                                *(v103 + 9) = 0u;
                                *(v103 + 10) = 0u;
                                *(v103 + 11) = 0u;
                                *(v103 + 12) = 0u;
                                *(v103 + 13) = 0u;
                                *(v103 + 14) = 0u;
                                *(v103 + 15) = 0u;
                                *(v103 + 16) = 0u;
                                *(v103 + 17) = 0u;
                                *(v103 + 18) = 0u;
                                *(v103 + 19) = 0u;
                                *(v103 + 20) = 0u;
                                *(v103 + 21) = 0u;
                                *(v103 + 22) = 0u;
                                *(v103 + 23) = 0u;
                                *(v103 + 24) = 0u;
                                *(v103 + 25) = 0u;
                                HgcColorGamma_chroma_downsample_f1::HgcColorGamma_chroma_downsample_f1(v103);
                              }

                              (*(*v100 + 120))(v100, 0, v63);
                              v63 = *(v3 + 74);
                              if (!v63)
                              {
                                v105 = HGObject::operator new(0x1A0uLL);
                                *v105 = 0u;
                                *(v105 + 1) = 0u;
                                *(v105 + 2) = 0u;
                                *(v105 + 3) = 0u;
                                *(v105 + 4) = 0u;
                                *(v105 + 5) = 0u;
                                *(v105 + 6) = 0u;
                                *(v105 + 7) = 0u;
                                *(v105 + 8) = 0u;
                                *(v105 + 9) = 0u;
                                *(v105 + 10) = 0u;
                                *(v105 + 11) = 0u;
                                *(v105 + 12) = 0u;
                                *(v105 + 13) = 0u;
                                *(v105 + 14) = 0u;
                                *(v105 + 15) = 0u;
                                *(v105 + 16) = 0u;
                                *(v105 + 17) = 0u;
                                *(v105 + 18) = 0u;
                                *(v105 + 19) = 0u;
                                *(v105 + 20) = 0u;
                                *(v105 + 21) = 0u;
                                *(v105 + 22) = 0u;
                                *(v105 + 23) = 0u;
                                *(v105 + 24) = 0u;
                                *(v105 + 25) = 0u;
                                HgcColorGamma_chroma_downsample_f1::HgcColorGamma_chroma_downsample_f1(v105);
                              }

                              if (*(v3 + 1026) == 1)
                              {
                                HGNode::SetSupportedFormatPrecisions(v63, v65, v104);
                              }
                            }

                            if (((*(*a2 + 304))(a2) & 1) == 0)
                            {
                              v106 = 0;
                              v107 = *(v3 + 264);
                              if (v107 > 15)
                              {
                                if (v107 == 16)
                                {
                                  v106 = *(v3 + 78);
                                  if (!v106)
                                  {
                                    v111 = HGObject::operator new(0x1A0uLL);
                                    *v111 = 0u;
                                    *(v111 + 1) = 0u;
                                    *(v111 + 2) = 0u;
                                    *(v111 + 3) = 0u;
                                    *(v111 + 4) = 0u;
                                    *(v111 + 5) = 0u;
                                    *(v111 + 6) = 0u;
                                    *(v111 + 7) = 0u;
                                    *(v111 + 8) = 0u;
                                    *(v111 + 9) = 0u;
                                    *(v111 + 10) = 0u;
                                    *(v111 + 11) = 0u;
                                    *(v111 + 12) = 0u;
                                    *(v111 + 13) = 0u;
                                    *(v111 + 14) = 0u;
                                    *(v111 + 15) = 0u;
                                    *(v111 + 16) = 0u;
                                    *(v111 + 17) = 0u;
                                    *(v111 + 18) = 0u;
                                    *(v111 + 19) = 0u;
                                    *(v111 + 20) = 0u;
                                    *(v111 + 21) = 0u;
                                    *(v111 + 22) = 0u;
                                    *(v111 + 23) = 0u;
                                    *(v111 + 24) = 0u;
                                    *(v111 + 25) = 0u;
                                    HgcColorGamma_v216_yxzx_collapse::HgcColorGamma_v216_yxzx_collapse(v111);
                                  }
                                }

                                else if (v107 == 31)
                                {
                                  v106 = *(v3 + 79);
                                  if (!v106)
                                  {
                                    v109 = HGObject::operator new(0x1A0uLL);
                                    HgcColorGamma_v210_yxzx_rgba_collapse::HgcColorGamma_v210_yxzx_rgba_collapse(v109);
                                  }
                                }
                              }

                              else if (v107 == 14)
                              {
                                v106 = *(v3 + 76);
                                if (!v106)
                                {
                                  v110 = HGObject::operator new(0x1A0uLL);
                                  *v110 = 0u;
                                  *(v110 + 1) = 0u;
                                  *(v110 + 2) = 0u;
                                  *(v110 + 3) = 0u;
                                  *(v110 + 4) = 0u;
                                  *(v110 + 5) = 0u;
                                  *(v110 + 6) = 0u;
                                  *(v110 + 7) = 0u;
                                  *(v110 + 8) = 0u;
                                  *(v110 + 9) = 0u;
                                  *(v110 + 10) = 0u;
                                  *(v110 + 11) = 0u;
                                  *(v110 + 12) = 0u;
                                  *(v110 + 13) = 0u;
                                  *(v110 + 14) = 0u;
                                  *(v110 + 15) = 0u;
                                  *(v110 + 16) = 0u;
                                  *(v110 + 17) = 0u;
                                  *(v110 + 18) = 0u;
                                  *(v110 + 19) = 0u;
                                  *(v110 + 20) = 0u;
                                  *(v110 + 21) = 0u;
                                  *(v110 + 22) = 0u;
                                  *(v110 + 23) = 0u;
                                  *(v110 + 24) = 0u;
                                  *(v110 + 25) = 0u;
                                  HgcColorGamma_2vuy_yxzx_collapse::HgcColorGamma_2vuy_yxzx_collapse(v110);
                                }
                              }

                              else if (v107 == 15)
                              {
                                v106 = *(v3 + 77);
                                if (!v106)
                                {
                                  v108 = HGObject::operator new(0x1A0uLL);
                                  *v108 = 0u;
                                  *(v108 + 1) = 0u;
                                  *(v108 + 2) = 0u;
                                  *(v108 + 3) = 0u;
                                  *(v108 + 4) = 0u;
                                  *(v108 + 5) = 0u;
                                  *(v108 + 6) = 0u;
                                  *(v108 + 7) = 0u;
                                  *(v108 + 8) = 0u;
                                  *(v108 + 9) = 0u;
                                  *(v108 + 10) = 0u;
                                  *(v108 + 11) = 0u;
                                  *(v108 + 12) = 0u;
                                  *(v108 + 13) = 0u;
                                  *(v108 + 14) = 0u;
                                  *(v108 + 15) = 0u;
                                  *(v108 + 16) = 0u;
                                  *(v108 + 17) = 0u;
                                  *(v108 + 18) = 0u;
                                  *(v108 + 19) = 0u;
                                  *(v108 + 20) = 0u;
                                  *(v108 + 21) = 0u;
                                  *(v108 + 22) = 0u;
                                  *(v108 + 23) = 0u;
                                  *(v108 + 24) = 0u;
                                  *(v108 + 25) = 0u;
                                  HgcColorGamma_2vuy_xyxz_collapse::HgcColorGamma_2vuy_xyxz_collapse(v108);
                                }
                              }

                              (*(*v106 + 120))(v106, 0, v63);
                              v63 = v106;
                            }

                            goto LABEL_267;
                          }

LABEL_170:
                          v69 = HGObject::operator new(0x1F0uLL);
                          HGColorMatrix::HGColorMatrix(v69);
                        }

LABEL_158:
                        v50 = *(v3 + 53);
                        if (!v50)
                        {
                          v66 = HGObject::operator new(0x1F0uLL);
                          HGColorMatrix::HGColorMatrix(v66);
                        }

                        if (v25)
                        {
                          goto LABEL_160;
                        }

                        goto LABEL_167;
                      }

                      v50 = 0;
                      goto LABEL_141;
                    }

LABEL_106:
                    v30 = v16;
                    goto LABEL_107;
                  }

                  v25 = *(v3 + 57);
                  if (!v25)
                  {
                    v26 = HGObject::operator new(0x1B0uLL);
                    HGGamma::HGGamma(v26);
                    *(v3 + 57) = v26;
                    HGGamma::SetPremultiplyState(v26, 0);
                    LODWORD(v26) = 0;
                    v25 = *(v3 + 57);
                    if (v15)
                    {
                      goto LABEL_106;
                    }

                    goto LABEL_100;
                  }

LABEL_70:
                  LODWORD(v26) = 0;
                  if (v15)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_100;
                }
              }

              if (v21 >= 3 && *(v3 + 880) == 1)
              {
                if (*(v3 + 1172) == 1)
                {
                  v26 = (v15 & *(v3 + 1173));
                }

                else
                {
                  v26 = 0;
                }

                GammaFittedNode = HGColorGamma::m_GetGammaFittedNode(v3);
                HGToneCurve::SetPremultiplyState(GammaFittedNode, v26, v29);
                v25 = HGColorGamma::m_GetGammaFittedNode(v3);
                if (v15)
                {
                  goto LABEL_106;
                }

                goto LABEL_100;
              }

              goto LABEL_69;
            }

            *(v3 + 1173) = 1;
            goto LABEL_48;
          }
        }

LABEL_37:
        if (*(v3 + 1026) == 1)
        {
          HGNode::SetSupportedFormatPrecisions(v17, v10, v8);
        }

        goto LABEL_39;
      case 16:
        if (*(v3 + 265) == 3)
        {
          goto LABEL_23;
        }

        break;
      case 15:
LABEL_22:
        if (*(v3 + 265) != 1)
        {
          break;
        }

        goto LABEL_23;
    }

LABEL_36:
    v16 = 0;
    v15 = 1;
    v17 = *(v3 + 94);
    if (!v17)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  return 0;
}

uint64_t HGColorGamma::ConcatenateWithUpstreamNode(HGNode *this, HGRenderer *a2, HGNode **a3)
{
  result = *a3;
  if (*a3)
  {
    if (result)
    {
      v7 = result;
      result = HGRenderer::IsMergeable(a2, this, 0, 0);
      if (result)
      {
        result = (*(*a2 + 304))(a2);
        if (result)
        {
          v10 = *(v7 + 1176);
          if (v10)
          {
            if (!*(this + 264))
            {
              if ((*(v7 + 1060) - 1) > 2)
              {
                if (*(this + 1172) != *(v7 + 1173))
                {
                  HGLogger::warning("HGColorGamma concatenating with upstream node: inconsistent premultiplication states.\n", v8, v9);
                }

                v11 = *(v7 + 1172);
                *(this + 745) = 1;
                *(this + 1172) = v11;
              }

              else
              {
                *(this + 586) = 0;
              }

              v12 = *(v7 + 1036);
              HGNode::ClearBits(this, v8, v9);
              *(this + 745) = 1;
              *(this + 259) = v12;
              v13 = *(v7 + 1060);
              HGNode::ClearBits(this, v14, v15);
              *(this + 745) = 1;
              *(this + 265) = v13;
              v18 = HGColorGamma::SetYCbCrBiasAndScale(this, v16, v17);
              result = (*(*this + 120))(this, 0, v10, v18);
              *a3 = v10;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t HGColorGamma::ScaleParams(float32x4_t *this, HGNode *a2, HGRenderer *a3)
{
  *(this[25].i64[1] + 128) = this[48];
  *(this[25].i64[1] + 144) = this[49];
  *(this[25].i64[1] + 160) = this[50];
  *(this[25].i64[1] + 176) = this[51];
  *(this[25].i64[1] + 192) = this[52];
  *(this[25].i64[1] + 208) = this[53];
  *(this[25].i64[1] + 224) = this[54];
  *(this[25].i64[1] + 240) = this[64].i32[1];
  HGColorGamma::LoadMacroNodeParams(this);
  v6 = this[64].u32[1];
  if (!v6)
  {
    v10 = vmvnq_s8(vceqq_f32(vmulq_f32(this[48], xmmword_260344BA0), xmmword_260344BA0));
    *v10.i8 = vpmin_s32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
    if (vpmin_s32(*v10.i8, *v10.i8).u32[0])
    {
      v7 = this[73].i32[0];
      if ((v7 - 1) <= 1)
      {
        if (this[55].i8[0] == 1)
        {
          v11 = this[27].i64[1];
          if (!v11)
          {
            v12 = HGObject::operator new(0x1B0uLL);
            HGGamma::HGGamma(v12);
            v11 = v12;
            this[27].i64[1] = v12;
          }
        }

        else
        {
          v11 = this[28].i64[0];
          if (!v11)
          {
            v21 = HGObject::operator new(0x1C0uLL);
            HGGammaMC::HGGammaMC(v21);
            v11 = v21;
            this[28].i64[0] = v21;
          }
        }

        (*(*v11 + 96))(v11, 0, *(this[25].i64[1] + 128), *(this[25].i64[1] + 132), *(this[25].i64[1] + 136), 1.0);
        v26 = this[28].i64[1];
        if (!v26)
        {
          v27 = HGObject::operator new(0x1B0uLL);
          HGGamma::HGGamma(v27);
          this[28].i64[1] = v27;
          HGGamma::SetPremultiplyState(v27, 0);
          v26 = this[28].i64[1];
        }

        v28 = this[25].i64[1];
        v22.n128_u32[0] = v28[32];
        v23.n128_u32[0] = v28[33];
        v24.n128_u32[0] = v28[34];
        v25.n128_u32[0] = 1.0;
        (*(*v26 + 96))(v22, v23, v24, v25);
        return 0;
      }

      goto LABEL_17;
    }

    return 0;
  }

  if (v6 > 4)
  {
    if (v6 <= 9)
    {
      goto LABEL_24;
    }

    return 0;
  }

  v7 = this[73].i32[0];
  if (v7 == 2)
  {
    if (v6 == 3)
    {
      if (this[73].i8[7])
      {
        v31 = this[44].i64[0];
        if (!v31)
        {
          v32 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3AntiSymmetric::HgcToneParamCurve3AntiSymmetric(v32);
        }
      }

      else
      {
        v31 = this[42].i64[0];
        if (!v31)
        {
          v38 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3::HgcToneParamCurve3(v38);
        }
      }

      (*(*v31 + 96))(v31, 0, *(this[25].i64[1] + 128), *(this[25].i64[1] + 132), *(this[25].i64[1] + 136), 1.0);
      if (this[73].i8[7] == 1)
      {
        v39 = this[44].i64[0];
        if (!v39)
        {
          v40 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3AntiSymmetric::HgcToneParamCurve3AntiSymmetric(v40);
        }
      }

      else
      {
        v39 = this[42].i64[0];
        if (!v39)
        {
          v50 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3::HgcToneParamCurve3(v50);
        }
      }

      (*(*v39 + 96))(v39, 1, *(this[25].i64[1] + 144), *(this[25].i64[1] + 148), *(this[25].i64[1] + 152), 1.0);
      if (this[73].i8[7] == 1)
      {
        v51 = this[44].i64[0];
        if (!v51)
        {
          v52 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3AntiSymmetric::HgcToneParamCurve3AntiSymmetric(v52);
        }
      }

      else
      {
        v51 = this[42].i64[0];
        if (!v51)
        {
          v62 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3::HgcToneParamCurve3(v62);
        }
      }

      (*(*v51 + 96))(v51, 2, *(this[25].i64[1] + 160), *(this[25].i64[1] + 164), *(this[25].i64[1] + 168), 1.0);
      if (this[73].i8[7] == 1)
      {
        v63 = this[44].i64[0];
        if (!v63)
        {
          v64 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3AntiSymmetric::HgcToneParamCurve3AntiSymmetric(v64);
        }
      }

      else
      {
        v63 = this[42].i64[0];
        if (!v63)
        {
          v82 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3::HgcToneParamCurve3(v82);
        }
      }

      (*(*v63 + 96))(v63, 3, *(this[25].i64[1] + 176), *(this[25].i64[1] + 180), *(this[25].i64[1] + 184), 1.0);
      if (this[73].i8[7] == 1)
      {
        v80 = this[44].i64[0];
        if (!v80)
        {
          v83 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3AntiSymmetric::HgcToneParamCurve3AntiSymmetric(v83);
        }
      }

      else
      {
        v80 = this[42].i64[0];
        if (!v80)
        {
          v91 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve3::HgcToneParamCurve3(v91);
        }
      }

      v92 = this[25].i64[1];
      v76.n128_u32[0] = v92[48];
      v77.n128_u32[0] = v92[49];
      v78.n128_u32[0] = v92[50];
    }

    else
    {
      if (v6 != 2)
      {
        if (v6 == 1)
        {
          if (this[73].i8[7])
          {
            v8 = this[43].i64[0];
            if (!v8)
            {
              v9 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve1AntiSymmetric::HgcToneParamCurve1AntiSymmetric(v9);
              v8 = v9;
              this[43].i64[0] = v9;
            }
          }

          else
          {
            v8 = this[41].i64[0];
            if (!v8)
            {
              v41 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve1::HgcToneParamCurve1(v41);
            }
          }

          (*(*v8 + 96))(v8, 0, *(this[25].i64[1] + 128), *(this[25].i64[1] + 132), *(this[25].i64[1] + 136), 1.0);
          if (this[73].i8[7] == 1)
          {
            v42 = this[43].i64[0];
            if (!v42)
            {
              v43 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve1AntiSymmetric::HgcToneParamCurve1AntiSymmetric(v43);
              v42 = v43;
              this[43].i64[0] = v43;
            }
          }

          else
          {
            v42 = this[41].i64[0];
            if (!v42)
            {
              v53 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve1::HgcToneParamCurve1(v53);
            }
          }

          (*(*v42 + 96))(v42, 1, *(this[25].i64[1] + 144), *(this[25].i64[1] + 148), *(this[25].i64[1] + 152), 1.0);
          if (this[73].i8[7] == 1)
          {
            v54 = this[43].i64[0];
            if (!v54)
            {
              v55 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve1AntiSymmetric::HgcToneParamCurve1AntiSymmetric(v55);
              v54 = v55;
              this[43].i64[0] = v55;
            }
          }

          else
          {
            v54 = this[41].i64[0];
            if (!v54)
            {
              v65 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve1::HgcToneParamCurve1(v65);
            }
          }

          (*(*v54 + 96))(v54, 2, *(this[25].i64[1] + 160), *(this[25].i64[1] + 164), *(this[25].i64[1] + 168), 1.0);
          if (this[73].i8[7] == 1)
          {
            v70 = this[43].i64[0];
            if (!v70)
            {
              v71 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve1AntiSymmetric::HgcToneParamCurve1AntiSymmetric(v71);
              v70 = v71;
              this[43].i64[0] = v71;
            }
          }

          else
          {
            v70 = this[41].i64[0];
            if (!v70)
            {
              v84 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve1::HgcToneParamCurve1(v84);
            }
          }

          v85 = this[25].i64[1];
          v66.n128_f64[0] = -v85[40] / v85[36];
          v66.n128_f32[0] = v66.n128_f64[0];
          v67.n128_f64[0] = -v85[41] / v85[37];
          v67.n128_f32[0] = v67.n128_f64[0];
          v69.n128_f64[0] = v85[38];
          v68.n128_f64[0] = -v85[42] / v69.n128_f64[0];
          v68.n128_f32[0] = v68.n128_f64[0];
          v69.n128_u32[0] = 1.0;
          (*(*v70 + 96))(v66, v67, v68, v69);
        }

        else
        {
          if (this[73].i8[7])
          {
            v33 = this[44].i64[1];
            if (!v33)
            {
              v34 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(v34);
              v33 = v34;
              this[44].i64[1] = v34;
            }
          }

          else
          {
            v33 = this[42].i64[1];
            if (!v33)
            {
              v44 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4::HgcToneParamCurve4(v44);
            }
          }

          (*(*v33 + 96))(v33, 0, *(this[25].i64[1] + 128), *(this[25].i64[1] + 132), *(this[25].i64[1] + 136), 1.0);
          if (this[73].i8[7] == 1)
          {
            v45 = this[44].i64[1];
            if (!v45)
            {
              v46 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(v46);
              v45 = v46;
              this[44].i64[1] = v46;
            }
          }

          else
          {
            v45 = this[42].i64[1];
            if (!v45)
            {
              v56 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4::HgcToneParamCurve4(v56);
            }
          }

          (*(*v45 + 96))(v45, 1, *(this[25].i64[1] + 144), *(this[25].i64[1] + 148), *(this[25].i64[1] + 152), 1.0);
          if (this[73].i8[7] == 1)
          {
            v57 = this[44].i64[1];
            if (!v57)
            {
              v58 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(v58);
              v57 = v58;
              this[44].i64[1] = v58;
            }
          }

          else
          {
            v57 = this[42].i64[1];
            if (!v57)
            {
              v72 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4::HgcToneParamCurve4(v72);
            }
          }

          (*(*v57 + 96))(v57, 2, *(this[25].i64[1] + 160), *(this[25].i64[1] + 164), *(this[25].i64[1] + 168), 1.0);
          if (this[73].i8[7] == 1)
          {
            v73 = this[44].i64[1];
            if (!v73)
            {
              v74 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(v74);
              v73 = v74;
              this[44].i64[1] = v74;
            }
          }

          else
          {
            v73 = this[42].i64[1];
            if (!v73)
            {
              v86 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4::HgcToneParamCurve4(v86);
            }
          }

          (*(*v73 + 96))(v73, 3, *(this[25].i64[1] + 176), *(this[25].i64[1] + 180), *(this[25].i64[1] + 184), 1.0);
          if (this[73].i8[7] == 1)
          {
            v87 = this[44].i64[1];
            if (!v87)
            {
              v88 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(v88);
              v87 = v88;
              this[44].i64[1] = v88;
            }
          }

          else
          {
            v87 = this[42].i64[1];
            if (!v87)
            {
              v93 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4::HgcToneParamCurve4(v93);
            }
          }

          (*(*v87 + 96))(v87, 4, *(this[25].i64[1] + 192), *(this[25].i64[1] + 196), *(this[25].i64[1] + 200), 1.0);
          if (this[73].i8[7] == 1)
          {
            v94 = this[44].i64[1];
            if (!v94)
            {
              v95 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(v95);
              v94 = v95;
              this[44].i64[1] = v95;
            }
          }

          else
          {
            v94 = this[42].i64[1];
            if (!v94)
            {
              v96 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4::HgcToneParamCurve4(v96);
            }
          }

          (*(*v94 + 96))(v94, 5, *(this[25].i64[1] + 208), *(this[25].i64[1] + 212), *(this[25].i64[1] + 216), 1.0);
          if (this[73].i8[7] == 1)
          {
            v101 = this[44].i64[1];
            if (!v101)
            {
              v102 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(v102);
              v101 = v102;
              this[44].i64[1] = v102;
            }
          }

          else
          {
            v101 = this[42].i64[1];
            if (!v101)
            {
              v103 = HGObject::operator new(0x1A0uLL);
              HgcToneParamCurve4::HgcToneParamCurve4(v103);
            }
          }

          v104 = this[25].i64[1];
          v97.n128_u32[0] = v104[56];
          v98.n128_u32[0] = v104[57];
          v99.n128_u32[0] = v104[58];
          v100.n128_u32[0] = 1.0;
          (*(*v101 + 96))(v97, v98, v99, v100);
        }

        return 0;
      }

      if (this[73].i8[7])
      {
        v29 = this[43].i64[1];
        if (!v29)
        {
          v30 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2AntiSymmetric::HgcToneParamCurve2AntiSymmetric(v30);
          v29 = v30;
          this[43].i64[1] = v30;
        }
      }

      else
      {
        v29 = this[41].i64[1];
        if (!v29)
        {
          v35 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2::HgcToneParamCurve2(v35);
        }
      }

      (*(*v29 + 96))(v29, 0, *(this[25].i64[1] + 128), *(this[25].i64[1] + 132), *(this[25].i64[1] + 136), 1.0);
      if (this[73].i8[7] == 1)
      {
        v36 = this[43].i64[1];
        if (!v36)
        {
          v37 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2AntiSymmetric::HgcToneParamCurve2AntiSymmetric(v37);
          v36 = v37;
          this[43].i64[1] = v37;
        }
      }

      else
      {
        v36 = this[41].i64[1];
        if (!v36)
        {
          v47 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2::HgcToneParamCurve2(v47);
        }
      }

      (*(*v36 + 96))(v36, 1, *(this[25].i64[1] + 144), *(this[25].i64[1] + 148), *(this[25].i64[1] + 152), 1.0);
      if (this[73].i8[7] == 1)
      {
        v48 = this[43].i64[1];
        if (!v48)
        {
          v49 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2AntiSymmetric::HgcToneParamCurve2AntiSymmetric(v49);
          v48 = v49;
          this[43].i64[1] = v49;
        }
      }

      else
      {
        v48 = this[41].i64[1];
        if (!v48)
        {
          v59 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2::HgcToneParamCurve2(v59);
        }
      }

      (*(*v48 + 96))(v48, 2, *(this[25].i64[1] + 160), *(this[25].i64[1] + 164), *(this[25].i64[1] + 168), 1.0);
      if (this[73].i8[7] == 1)
      {
        v60 = this[43].i64[1];
        if (!v60)
        {
          v61 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2AntiSymmetric::HgcToneParamCurve2AntiSymmetric(v61);
          v60 = v61;
          this[43].i64[1] = v61;
        }
      }

      else
      {
        v60 = this[41].i64[1];
        if (!v60)
        {
          v75 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2::HgcToneParamCurve2(v75);
        }
      }

      (*(*v60 + 96))(v60, 3, *(this[25].i64[1] + 176), *(this[25].i64[1] + 180), *(this[25].i64[1] + 184), 1.0);
      if (this[73].i8[7] == 1)
      {
        v80 = this[43].i64[1];
        if (!v80)
        {
          v81 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2AntiSymmetric::HgcToneParamCurve2AntiSymmetric(v81);
          v80 = v81;
          this[43].i64[1] = v81;
        }
      }

      else
      {
        v80 = this[41].i64[1];
        if (!v80)
        {
          v89 = HGObject::operator new(0x1A0uLL);
          HgcToneParamCurve2::HgcToneParamCurve2(v89);
        }
      }

      v90 = this[25].i64[1];
      v76.n128_f64[0] = -v90[40] / v90[36];
      v76.n128_f32[0] = v76.n128_f64[0];
      v77.n128_f64[0] = -v90[41] / v90[37];
      v77.n128_f32[0] = v77.n128_f64[0];
      v79.n128_f64[0] = v90[38];
      v78.n128_f64[0] = -v90[42] / v79.n128_f64[0];
      v78.n128_f32[0] = v78.n128_f64[0];
    }

    v79.n128_u32[0] = 1.0;
    (*(*v80 + 96))(v76, v77, v78, v79);
    return 0;
  }

LABEL_17:
  if (v7 < 3 || this[55].i8[0] != 1)
  {
LABEL_24:
    {
      v20 = this[64].i32[1];
      if (v20 > 7)
      {
LABEL_26:
        if ((v20 - 10) < 9)
        {
          operator new();
        }

        if (v20 == 8)
        {
          operator new();
        }

        if (v20 == 9)
        {
          operator new();
        }

LABEL_149:
        LUTCache = HGLUTCacheManager::getLUTCache(*(a3 + 69), &HGColorGamma::ScaleParams(HGNode *,HGRenderer *)::lutFactory);
        NewLUT = HGLUTCache::getNewLUT(LUTCache, 0);
        v107 = this[40].i64[0];
        if (!v107)
        {
          v108 = HGObject::operator new(0x1D0uLL);
          HGApply1DLUT::HGApply1DLUT(v108, this[72].i32[0], this[72].f32[1], this[72].f32[2], 1, 1, 1, 0, 1, 1);
          v107 = v108;
          this[40].i64[0] = v108;
        }

        HGApply1DLUT::SetLUTBitmap(v107, NewLUT);
        (*(*NewLUT + 24))(NewLUT);
        return 0;
      }
    }

    else
    {
      HGColorGamma::ScaleParams();
      v20 = this[64].i32[1];
      if (v20 > 7)
      {
        goto LABEL_26;
      }
    }

    if (v20 > 4)
    {
      if (v20 != 5)
      {
        if (v20 != 6)
        {
          operator new();
        }

        operator new();
      }

      switch(this[64].i32[2])
      {
        case 0:
          operator new();
        case 1:
          operator new();
        case 2:
          operator new();
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
          operator new();
        case 6:
          operator new();
        case 7:
          operator new();
        case 8:
          operator new();
        case 9:
          operator new();
        case 0xA:
          operator new();
        case 0xB:
          operator new();
        case 0xC:
          operator new();
        case 0xD:
          operator new();
        case 0xE:
          operator new();
        case 0xF:
          operator new();
        case 0x10:
          operator new();
        case 0x11:
          operator new();
        default:
          goto LABEL_149;
      }
    }

    else if (v20 < 5)
    {
      operator new();
    }

    goto LABEL_149;
  }

  v13 = this[29].i64[0];
  if (!v13)
  {
    v14 = HGObject::operator new(0x1E0uLL);
    HGToneCurve::HGToneCurve(v14);
  }

  v15 = this[25].i64[1];
  HGToneCurve::SetToneCurveParams(v13, v6, v5, v15[32], v15[36], v15[40], v15[44], v15[48], v15[52], v15[56]);
  v17 = this[29].i64[0];
  if (!v17)
  {
    v18 = HGObject::operator new(0x1E0uLL);
    HGToneCurve::HGToneCurve(v18);
  }

  HGToneCurve::SetToneCurveQuality(v17, (this[73].i32[0] - 3), v16);
  return 0;
}