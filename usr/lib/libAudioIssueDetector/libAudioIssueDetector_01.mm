void sub_296C44C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a73 < 0)
  {
    operator delete(__p);
  }

  if (*(v74 - 217) < 0)
  {
    operator delete(*(v74 - 240));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a74);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
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
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 8) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void rtaid::handleRMSIssue(std::string *a1, uint64_t a2, uint64_t a3, const std::string *a4, char **a5)
{
  v8 = a1;
  v137 = *MEMORY[0x29EDCA608];
  memset(v126, 0, 24);
  memset(&v124, 0, sizeof(v124));
  if (!HIDWORD(a1[11].__r_.__value_.__r.__words[1]))
  {
    goto LABEL_29;
  }

  v9 = 0;
  v10 = &a1[12];
  do
  {
    v11 = v126[23];
    if (v126[23] < 0)
    {
      v11 = *&v126[8];
    }

    if (v11)
    {
      std::string::append(v126, ", ", 2uLL);
    }

    size = HIBYTE(v124.__r_.__value_.__r.__words[2]);
    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v124.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&v124, ", ", 2uLL);
    }

    std::to_string(&v123, *(v10 - 1));
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v123;
    }

    else
    {
      v13 = v123.__r_.__value_.__r.__words[0];
    }

    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v123.__r_.__value_.__l.__size_;
    }

    std::string::append(v126, v13, v14);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    std::to_string(&v123, *v10);
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v123;
    }

    else
    {
      v15 = v123.__r_.__value_.__r.__words[0];
    }

    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v123.__r_.__value_.__l.__size_;
    }

    a1 = std::string::append(&v124, v15, v16);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    ++v9;
    v10 += 2;
  }

  while (v9 < HIDWORD(v8[11].__r_.__value_.__r.__words[1]));
  if ((v126[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v126, *&v126[8]);
  }

  else
  {
LABEL_29:
    __str = *v126;
  }

  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v122 = v124;
  }

  if ((v126[23] & 0x80000000) != 0)
  {
    operator delete(*v126);
  }

  v17 = a3;
  v18 = *(&v8[11].__r_.__value_.__r.__words[2] + 1);
  v19 = *&v8[12].__r_.__value_.__l.__data_;
  rtaid::GetClientUseCaseMap(a1);
  v20 = std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap, 4u);
  if (!v20)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v21 = *(a5 + 23);
  v22 = a5;
  if (v21 >= 0)
  {
    v23 = a5;
  }

  else
  {
    v23 = *a5;
  }

  if (v21 < 0)
  {
    v21 = a5[1];
  }

  v26 = v20[3];
  v24 = v20 + 3;
  v25 = v26;
  v27 = *(v24 + 23);
  if (v27 >= 0)
  {
    v28 = v24;
  }

  else
  {
    v28 = v25;
  }

  if (v27 >= 0)
  {
    v29 = *(v24 + 23);
  }

  else
  {
    v29 = v24[1];
  }

  if (!v29)
  {
    goto LABEL_102;
  }

  if (v21 >= v29)
  {
    v44 = &v21[v23];
    v45 = *v28;
    v46 = v23;
    while (1)
    {
      v47 = &v21[-v29];
      if (v47 == -1)
      {
        goto LABEL_51;
      }

      v48 = memchr(v46, v45, (v47 + 1));
      if (!v48)
      {
        goto LABEL_51;
      }

      v49 = v48;
      if (!memcmp(v48, v28, v29))
      {
        break;
      }

      v46 = v49 + 1;
      v21 = (v44 - (v49 + 1));
      if (v21 < v29)
      {
        goto LABEL_51;
      }
    }

    if (v49 != v44 && &v49[-v23] != -1)
    {
LABEL_102:
      if (v18 > -55.0 || v18 <= -120.0)
      {
        *&v126[8] = 0uLL;
        *v126 = &v126[8];
        std::string::basic_string[abi:ne200100]<0>(&v124, "rtaid_client");
        v58 = a4;
        v123.__r_.__value_.__r.__words[0] = &v124;
        v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v67 + 7), a4);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::to_string(&v124, *&v8[20].__r_.__value_.__l.__size_);
        std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
        __p[0] = &v123;
        v68 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v123);
        v69 = v68;
        if (*(v68 + 79) < 0)
        {
          operator delete(v68[7]);
        }

        *(v69 + 7) = v124;
        *(&v124.__r_.__value_.__s + 23) = 0;
        v124.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "node");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v70 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::__assign_external((v70 + 7), v8);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "alarms_rms");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v71 + 7), &__str);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "alarms_peak");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v72 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v72 + 7), &v122);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "report_type");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        if (*(v73 + 79) < 0)
        {
          v73[8] = 3;
          v74 = v73[7];
        }

        else
        {
          v74 = v73 + 7;
          *(v73 + 79) = 3;
        }

        *v74 = 5459282;
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if ((*v17 & 1) == 0 && LODWORD(v8[10].__r_.__value_.__r.__words[2]) != 1)
        {
LABEL_144:
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&v126[8]);
          {
            rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
          }

          v78 = rtaid::get_log(void)::rtaid_os_log;
          if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v22 + 23) >= 0)
            {
              v79 = v22;
            }

            else
            {
              v79 = *v22;
            }

            if ((v58->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v80 = v58;
            }

            else
            {
              v80 = v58->__r_.__value_.__r.__words[0];
            }

            v81 = v8[20].__r_.__value_.__l.__size_;
            p_str = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v83 = &v122;
            }

            else
            {
              v83 = v122.__r_.__value_.__r.__words[0];
            }

            *v126 = 136316930;
            *&v126[4] = "IssueReporting.cpp";
            *&v126[12] = 1024;
            *&v126[14] = 433;
            *&v126[18] = 2080;
            *&v126[20] = v79;
            v127 = 2080;
            v128 = v80;
            v129 = 2080;
            v130 = v8;
            v131 = 2048;
            v132 = v81;
            v133 = 2080;
            v134 = p_str;
            v135 = 2080;
            v136 = v83;
            v84 = "%s:%-5d RTAID [ use_case=%s report_type=Alarms RMS Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
            goto LABEL_244;
          }

          goto LABEL_245;
        }

        v75 = v8[13].__r_.__value_.__s.__data_[4];
        v76 = *(**(v17 + 24) + 24);
      }

      else
      {
        *&v126[8] = 0uLL;
        *v126 = &v126[8];
        std::string::basic_string[abi:ne200100]<0>(&v124, "rtaid_client");
        v58 = a4;
        v123.__r_.__value_.__r.__words[0] = &v124;
        v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v59 + 7), a4);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::to_string(&v124, *&v8[20].__r_.__value_.__l.__size_);
        std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
        __p[0] = &v123;
        v60 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v123);
        v61 = v60;
        if (*(v60 + 79) < 0)
        {
          operator delete(v60[7]);
        }

        *(v61 + 7) = v124;
        *(&v124.__r_.__value_.__s + 23) = 0;
        v124.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "node");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v62 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::__assign_external((v62 + 7), v8);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "alarms_rms");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v63 + 7), &__str);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "alarms_peak");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v64 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        std::string::operator=((v64 + 7), &v122);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "issue_type");
        v123.__r_.__value_.__r.__words[0] = &v124;
        v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
        if (*(v65 + 79) < 0)
        {
          v65[8] = 6;
          v66 = v65[7];
        }

        else
        {
          v66 = (v65 + 7);
          *(v65 + 79) = 6;
        }

        strcpy(v66, "LowRMS");
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        v77 = v8[13].__r_.__value_.__s.__data_[4];
        v76 = *(**(v17 + 24) + 24);
      }

      v76();
      goto LABEL_144;
    }
  }

LABEL_51:
  v30 = v8[13].__r_.__value_.__s.__data_[4];
  if (v8[13].__r_.__value_.__s.__data_[4])
  {
    v31 = &v8[18].__r_.__value_.__r.__words[2];
    do
    {
      v32 = *v31;
      v31 = (v31 + 2);
      if (v32 != 13)
      {
        goto LABEL_74;
      }

      --v30;
    }

    while (v30);
    if (v18 > -70.0 && v19 > -60.0)
    {
      *&v126[8] = 0uLL;
      *v126 = &v126[8];
      std::string::basic_string[abi:ne200100]<0>(&v124, "rtaid_client");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v50 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v50 + 7), a4);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::to_string(&v124, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
      __p[0] = &v123;
      v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v123);
      v52 = v51;
      if (*(v51 + 79) < 0)
      {
        operator delete(v51[7]);
      }

      *(v52 + 7) = v124;
      *(&v124.__r_.__value_.__s + 23) = 0;
      v124.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "node");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::__assign_external((v53 + 7), v8);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "systemSounds_rms");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v54 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v54 + 7), &__str);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "systemSounds_peak");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v55 + 7), &v122);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "report_type");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v56 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      if (*(v56 + 79) < 0)
      {
        v56[8] = 3;
        v57 = v56[7];
      }

      else
      {
        v57 = v56 + 7;
        *(v56 + 79) = 3;
      }

      *v57 = 5459282;
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      if ((*v17 & 1) == 0 && LODWORD(v8[10].__r_.__value_.__r.__words[2]) != 1)
      {
LABEL_230:
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&v126[8]);
        {
          rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
        }

        v78 = rtaid::get_log(void)::rtaid_os_log;
        if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v22 + 23) >= 0)
          {
            v112 = v22;
          }

          else
          {
            v112 = *v22;
          }

          if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v113 = a4;
          }

          else
          {
            v113 = a4->__r_.__value_.__r.__words[0];
          }

          v114 = v8[20].__r_.__value_.__l.__size_;
          v115 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v115 = __str.__r_.__value_.__r.__words[0];
          }

          if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v116 = &v122;
          }

          else
          {
            v116 = v122.__r_.__value_.__r.__words[0];
          }

          *v126 = 136316930;
          *&v126[4] = "IssueReporting.cpp";
          *&v126[12] = 1024;
          *&v126[14] = 463;
          *&v126[18] = 2080;
          *&v126[20] = v112;
          v127 = 2080;
          v128 = v113;
          v129 = 2080;
          v130 = v8;
          v131 = 2048;
          v132 = v114;
          v133 = 2080;
          v134 = v115;
          v135 = 2080;
          v136 = v116;
          v84 = "%s:%-5d RTAID [ use_case=%s report_type=System Sounds RMS Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
          goto LABEL_244;
        }

        goto LABEL_245;
      }

      v111 = v8[13].__r_.__value_.__s.__data_[4];
      v110 = *(**(v17 + 24) + 24);
    }

    else
    {
      *&v126[8] = 0uLL;
      *v126 = &v126[8];
      std::string::basic_string[abi:ne200100]<0>(&v124, "rtaid_client");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v34 + 7), a4);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::to_string(&v124, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
      __p[0] = &v123;
      v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v123);
      v36 = v35;
      if (*(v35 + 79) < 0)
      {
        operator delete(v35[7]);
      }

      *(v36 + 7) = v124;
      *(&v124.__r_.__value_.__s + 23) = 0;
      v124.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "node");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::__assign_external((v37 + 7), v8);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "systemSounds_rms");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v38 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v38 + 7), &__str);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "systemSounds_peak");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      std::string::operator=((v39 + 7), &v122);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, "issue_type");
      v123.__r_.__value_.__r.__words[0] = &v124;
      v40 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126, &v124);
      if (*(v40 + 79) < 0)
      {
        v40[8] = 6;
        v41 = v40[7];
      }

      else
      {
        v41 = (v40 + 7);
        *(v40 + 79) = 6;
      }

      strcpy(v41, "LowRMS");
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      v109 = v8[13].__r_.__value_.__s.__data_[4];
      v110 = *(**(v17 + 24) + 24);
    }

    v110();
    goto LABEL_230;
  }

LABEL_74:
  if ((*v17 & 1) != 0 || LODWORD(v8[10].__r_.__value_.__r.__words[2]) == 1)
  {
    *&v124.__r_.__value_.__r.__words[1] = 0uLL;
    v124.__r_.__value_.__r.__words[0] = &v124.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(v126, "report_type");
    v123.__r_.__value_.__r.__words[0] = v126;
    v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    if (*(v42 + 79) < 0)
    {
      v42[8] = 3;
      v43 = v42[7];
    }

    else
    {
      v43 = v42 + 7;
      *(v42 + 79) = 3;
    }

    *v43 = 5459282;
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "rtaid_client");
    v123.__r_.__value_.__r.__words[0] = v126;
    v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    std::string::operator=((v85 + 7), a4);
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    std::to_string(v126, *&v8[20].__r_.__value_.__l.__size_);
    std::string::basic_string[abi:ne200100]<0>(&v123, "issue_detected_sample_time");
    __p[0] = &v123;
    v86 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, &v123);
    v87 = v86;
    if (*(v86 + 79) < 0)
    {
      operator delete(v86[7]);
    }

    *(v87 + 7) = *v126;
    v87[9] = *&v126[16];
    v126[23] = 0;
    v126[0] = 0;
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "node");
    v123.__r_.__value_.__r.__words[0] = v126;
    v88 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    std::string::__assign_external((v88 + 7), v8);
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "rms");
    v123.__r_.__value_.__r.__words[0] = v126;
    v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    std::string::operator=((v89 + 7), &__str);
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "peak");
    v123.__r_.__value_.__r.__words[0] = v126;
    v90 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v124, v126);
    std::string::operator=((v90 + 7), &v122);
    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }

    (*(**(v17 + 24) + 24))(*(v17 + 24), a2, v8[13].__r_.__value_.__s.__data_[4], &v124, 1, 7);
    if (HIDWORD(v8[11].__r_.__value_.__r.__words[0]))
    {
      v91 = v8[11].__r_.__value_.__r.__words[1];
      *&v123.__r_.__value_.__r.__words[1] = 0uLL;
      v123.__r_.__value_.__r.__words[0] = &v123.__r_.__value_.__l.__size_;
      std::string::basic_string[abi:ne200100]<0>(v126, "issue_type");
      __p[0] = v126;
      v92 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, v126);
      if (*(v92 + 79) < 0)
      {
        v92[8] = 2;
        v93 = v92[7];
      }

      else
      {
        v93 = (v92 + 7);
        *(v92 + 79) = 2;
      }

      strcpy(v93, "DC");
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }

      std::string::basic_string[abi:ne200100]<0>(v126, "rtaid_client");
      __p[0] = v126;
      v94 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, v126);
      std::string::operator=((v94 + 7), a4);
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }

      std::to_string(v126, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(__p, "issue_detected_sample_time");
      v125 = __p;
      v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, __p);
      v96 = v95;
      if (*(v95 + 79) < 0)
      {
        operator delete(v95[7]);
      }

      *(v96 + 7) = *v126;
      v96[9] = *&v126[16];
      v126[23] = 0;
      v126[0] = 0;
      if (v120 < 0)
      {
        operator delete(__p[0]);
        if ((v126[23] & 0x80000000) != 0)
        {
          operator delete(*v126);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(v126, "node");
      __p[0] = v126;
      v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, v126);
      std::string::__assign_external((v97 + 7), v8);
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }

      std::to_string(v126, v91);
      std::string::basic_string[abi:ne200100]<0>(__p, "dc_consecutive_samples");
      v125 = __p;
      v98 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v123, __p);
      v99 = v98;
      if (*(v98 + 79) < 0)
      {
        operator delete(v98[7]);
      }

      *(v99 + 7) = *v126;
      v99[9] = *&v126[16];
      v126[23] = 0;
      v126[0] = 0;
      if (v120 < 0)
      {
        operator delete(__p[0]);
        if ((v126[23] & 0x80000000) != 0)
        {
          operator delete(*v126);
        }
      }

      (*(**(v17 + 24) + 24))(*(v17 + 24), a2, v8[13].__r_.__value_.__s.__data_[4], &v123, 1, 7);
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v100 = rtaid::get_log(void)::rtaid_os_log;
      if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v22 + 23) >= 0)
        {
          v101 = v22;
        }

        else
        {
          v101 = *v22;
        }

        if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = a4;
        }

        else
        {
          v102 = a4->__r_.__value_.__r.__words[0];
        }

        v103 = v8[20].__r_.__value_.__l.__size_;
        *v126 = 136316674;
        *&v126[4] = "IssueReporting.cpp";
        *&v126[12] = 1024;
        *&v126[14] = 489;
        *&v126[18] = 2080;
        *&v126[20] = v101;
        v127 = 2080;
        v128 = v102;
        v129 = 2080;
        v130 = v8;
        v131 = 2048;
        v132 = v103;
        v133 = 1024;
        LODWORD(v134) = v91;
        _os_log_impl(&dword_296C34000, v100, OS_LOG_TYPE_DEFAULT, "%s:%-5d RTAID [ use_case=%s issue_type=DC Generic Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ %d ] ", v126, 0x40u);
      }

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v123.__r_.__value_.__l.__size_);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v124.__r_.__value_.__l.__size_);
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v78 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v22 + 23) >= 0)
    {
      v104 = v22;
    }

    else
    {
      v104 = *v22;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v105 = a4;
    }

    else
    {
      v105 = a4->__r_.__value_.__r.__words[0];
    }

    v106 = v8[20].__r_.__value_.__l.__size_;
    v107 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v107 = __str.__r_.__value_.__r.__words[0];
    }

    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v108 = &v122;
    }

    else
    {
      v108 = v122.__r_.__value_.__r.__words[0];
    }

    *v126 = 136316930;
    *&v126[4] = "IssueReporting.cpp";
    *&v126[12] = 1024;
    *&v126[14] = 492;
    *&v126[18] = 2080;
    *&v126[20] = v104;
    v127 = 2080;
    v128 = v105;
    v129 = 2080;
    v130 = v8;
    v131 = 2048;
    v132 = v106;
    v133 = 2080;
    v134 = v107;
    v135 = 2080;
    v136 = v108;
    v84 = "%s:%-5d RTAID [ use_case=%s report_type=RMS Generic Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
LABEL_244:
    _os_log_impl(&dword_296C34000, v78, OS_LOG_TYPE_DEFAULT, v84, v126, 0x4Eu);
  }

LABEL_245:
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v117 = *MEMORY[0x29EDCA608];
}

void sub_296C466B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, void *a42, int a43, __int16 a44, char a45, char a46)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a42);
  std::pair<std::string,std::string>::~pair(&a18);
  _Unwind_Resume(a1);
}

void rtaid::GetClientUseCaseMap(rtaid *this)
{
  {
    rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap = 0u;
    *&qword_2A18A5040 = 0u;
    dword_2A18A5050 = 1065353216;
  }

  if (rtaid::GetClientUseCaseMap(void)::onceToken != -1)
  {

    dispatch_once(&rtaid::GetClientUseCaseMap(void)::onceToken, &__block_literal_global_13);
  }
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void rtaid::AudioStatisticsSPIImplementation::SendMessage(uint64_t a1, uint64_t *a2, unsigned int a3, const UInt8 **a4, unsigned int a5, unsigned int a6)
{
  v55 = 0;
  v56 = 0uLL;
  v9 = a4[2];
  if (v9)
  {
    if (!(v9 >> 60))
    {
      v63 = &v55;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v9);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  v11 = a4 + 1;
  v10 = *a4;
  v12 = v56;
  if (*a4 != (a4 + 1))
  {
    do
    {
      if (v12 >= *(&v56 + 1))
      {
        v13 = (v12 - v55) >> 4;
        if ((v13 + 1) >> 60)
        {
          std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
        }

        v14 = (*(&v56 + 1) - v55) >> 3;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (*(&v56 + 1) - v55 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v63 = &v55;
        if (v15)
        {
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v15);
        }

        keys = 0;
        v61 = 16 * v13;
        v62 = (16 * v13);
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v13), v10 + 32, (v10 + 56));
        *&v62 = v62 + 16;
        v16 = &v55[v61 - v56];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v55, v55, v56, v16);
        v17 = v55;
        v18 = *(&v56 + 1);
        v55 = v16;
        v53 = v62;
        v56 = v62;
        *&v62 = v17;
        *(&v62 + 1) = v18;
        keys = v17;
        v61 = v17;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&keys);
        v12 = v53;
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v12, v10 + 32, (v10 + 56));
        v12 += 2;
      }

      *&v56 = v12;
      v19 = *(v10 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v10 + 2);
          v21 = *v20 == v10;
          v10 = v20;
        }

        while (!v21);
      }

      v10 = v20;
    }

    while (v20 != v11);
  }

  v22 = (v12 - v55) >> 4;
  keys = 0;
  v61 = 0;
  *&v62 = 0;
  std::vector<void const*>::reserve(&keys, v22);
  v50 = a2;
  v51 = a6;
  values = 0;
  v58 = 0;
  v59 = 0;
  std::vector<void const*>::reserve(&values, v22);
  v23 = v55;
  v24 = keys;
  v25 = values;
  v54 = v56;
  if (v55 != v56)
  {
    v49 = v22;
    v27 = v61;
    v26 = v62;
    v29 = v58;
    v28 = v59;
    do
    {
      v30 = *v23;
      if (!*v23 || !*(v23 + 1))
      {
        keys = v24;
        values = v25;
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C260B30](exception, "Could not construct");
      }

      if (v27 >= v26)
      {
        v31 = v27 - v24;
        v32 = (v27 - v24) >> 3;
        v33 = v32 + 1;
        if ((v32 + 1) >> 61)
        {
          keys = v24;
          values = v25;
          std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
        }

        if ((v26 - v24) >> 2 > v33)
        {
          v33 = (v26 - v24) >> 2;
        }

        if (v26 - v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v34);
        }

        v35 = (8 * v32);
        v26 = 0;
        *v35 = v30;
        v27 = (v35 + 1);
        memcpy(0, v24, v31);
        if (v24)
        {
          operator delete(v24);
        }

        v24 = 0;
      }

      else
      {
        *v27 = v30;
        v27 += 8;
      }

      v36 = *(v23 + 1);
      if (v29 >= v28)
      {
        v37 = v29 - v25;
        v38 = (v29 - v25) >> 3;
        v39 = v38 + 1;
        if ((v38 + 1) >> 61)
        {
          keys = v24;
          values = v25;
          std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
        }

        if ((v28 - v25) >> 2 > v39)
        {
          v39 = (v28 - v25) >> 2;
        }

        if (v28 - v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        if (v40)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v40);
        }

        v41 = (8 * v38);
        v28 = 0;
        *v41 = v36;
        v29 = (v41 + 1);
        memcpy(0, v25, v37);
        if (v25)
        {
          operator delete(v25);
        }

        v25 = 0;
      }

      else
      {
        *v29 = v36;
        v29 += 8;
      }

      v23 += 16;
    }

    while (v23 != v54);
    v61 = v27;
    *&v62 = v26;
    v59 = v28;
    keys = v24;
    values = v25;
    v58 = v29;
    v22 = v49;
  }

  v42 = v50;
  v43 = CFDictionaryCreate(0, v24, v25, v22, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v43)
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C260B30](v48, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  keys = &v55;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&keys);
  if (a3)
  {
    v44 = a3;
    do
    {
      v46 = *v42++;
      v45 = v46;
      if (v46)
      {
        if (AudioStatisticsLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_218);
        }

        if (AudioStatisticsLibraryLoader(void)::libSym)
        {
          AudioStatisticsLibraryLoader(void)::libSym(v45, v43, a5, v51);
        }
      }

      --v44;
    }

    while (v44);
  }

  else
  {
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_218);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v43, a5, v51);
    }
  }

  CFRelease(v43);
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C260B30](exception, "Could not construct");
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C260B30](v14, "Could not construct");
  }

  return a1;
}

void sub_296C47328(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void rtaid::ConfigurationManager::addSiriConfiguration(rtaid::ConfigurationManager *this, const rtaid::Detector *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(this) & 1) == 0)
  {
    rtaid::Detector::GetNodeIDs(&v11, a2);
    v4 = v11;
    v5 = v12;
    if (v11 != v12)
    {
      v6 = v11;
      do
      {
        v7 = *v6;
        v8 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(*(a2 + 1), *(a2 + 2), *v6);
        if (!v8 || !*(v8[3] + 188))
        {
          v13[0] = 2;
          v13[1] = v7;
          std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](v10, v13, 1);
          std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(this + 24, v10);
          std::__tree<ADAM::EndPointBitMask>::destroy(v10[1]);
        }

        ++v6;
      }

      while (v6 != v5);
    }

    if (v4)
    {
      operator delete(v4);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void rtaid::Detector::GetNodeIDs(rtaid::Detector *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    if (!(v2 >> 62))
    {
      std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](v2);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  if (*(a2 + 24))
  {
    std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](1uLL);
  }
}

void sub_296C478E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(rtaid::ConfigurationManager *this)
{
  v12 = *MEMORY[0x29EDCA608];
  {
    rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection = CFPreferencesGetAppBooleanValue(@"DisableAudio", @"com.apple.audio.virtualaudio", 0) != 0;
  }

  if (rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection == 1)
  {
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v1 = rtaid::get_log(void)::rtaid_os_log;
    v2 = os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT);
    v3 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
    if (v2)
    {
      v6 = 136315650;
      v7 = "ConfigurationManager.cpp";
      v8 = 1024;
      v9 = 409;
      v10 = 1024;
      v11 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
      _os_log_impl(&dword_296C34000, v1, OS_LOG_TYPE_DEFAULT, "%s:%-5d Defaults write for DisableAudio set to %d - silence detection will be bypassed", &v6, 0x18u);
      v3 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3 & 1;
}

void ADAM::session_lock_exclusive::session_lock_exclusive(ADAM::session_lock_exclusive *this)
{
  ADAM::session_lock_exclusive::shared_cnt(this);
  ADAM::session_lock_exclusive::exclusive_flag(v1);
  v3 = 0;
  atomic_compare_exchange_strong(&ADAM::session_lock_exclusive::exclusive_flag(void)::_f, &v3, 1u);
  if (v3)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong(&ADAM::session_lock_exclusive::exclusive_flag(void)::_f, &v4, 1u);
      v5 = v4 == v3;
      LOBYTE(v3) = v4;
    }

    while (!v5);
  }

    ;
  }

  ADAM::session_lock::lock_inst(v2);

  JUMPOUT(0x29C260D10);
}

void AudioDataAnalysisManagerCreate(ADAM::AudioDataAnalysisManager *a1)
{
  v1 = a1;
  v9 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  ADAM::session_lock_exclusive::session_lock_exclusive(v2);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v3 = *ADAM::ADAMLogScope(void)::scope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    buf[0] = 136315394;
    *&buf[1] = "AudioDataAnalysisManager.cpp";
    v7 = 1024;
    LODWORD(v8) = 84;
    _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d createSessionManager: Exclusive lock acquired", buf, 0x12u);
  }

  do
  {
LABEL_10:
    v5 = rand();
  }

  while (std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, (v1 << 24) | v5 & 0xFFFFFF));
  operator new();
}

void sub_296C482CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>>>>::~unique_ptr[abi:ne200100](va1);
  v3 = std::unique_ptr<ADAM::ClientSessionManager>::~unique_ptr[abi:ne200100](va);
  ADAM::session_lock_exclusive::~session_lock_exclusive(v3);
  _Unwind_Resume(a1);
}

void ADAM::AudioDataAnalysisManager::instance(ADAM::AudioDataAnalysisManager *this)
{
  {
    if (v1)
    {
      ADAM::AudioDataAnalysisManager::AudioDataAnalysisManager(v1);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__tree<std::__value_type<rtaid::AnalyzerType,unsigned int>,std::__map_value_compare<rtaid::AnalyzerType,std::__value_type<rtaid::AnalyzerType,unsigned int>,std::less<rtaid::AnalyzerType>,true>,std::allocator<std::__value_type<rtaid::AnalyzerType,unsigned int>>>::__emplace_hint_unique_key_args<rtaid::AnalyzerType,std::pair<rtaid::AnalyzerType const,unsigned int> const&>(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 28);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 7) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 28);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

void sub_296C48850(_Unwind_Exception *a1)
{
  std::__tree<ADAM::EndPointBitMask>::destroy(v2[5]);
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::map<rtaid::AnalyzerType,unsigned int>,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__construct_node<std::map<rtaid::AnalyzerType,unsigned int> const&>();
  }

  v3 = a2 + 1;
  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2[4];
      if ((_ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(v4, v3, v6, v2 + 5) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    result = _ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(v6, v5 + 5, v4, v3);
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<rtaid::AnalyzerType,unsigned int>,std::__map_value_compare<rtaid::AnalyzerType,std::__value_type<rtaid::AnalyzerType,unsigned int>,std::less<rtaid::AnalyzerType>,true>,std::allocator<std::__value_type<rtaid::AnalyzerType,unsigned int>>>::__emplace_hint_unique_key_args<rtaid::AnalyzerType,std::pair<rtaid::AnalyzerType const,unsigned int> const&>(a1, v4, *a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::allocator<AudioServiceType>::allocate_at_least[abi:ne200100](uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t _ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a3 == a4;
  v5 = a1 == a2;
  if (a1 == a2 || a3 == a4)
  {
LABEL_17:
    if (v5)
    {
      return (v4 - 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    while (1)
    {
      v6 = *(a1 + 7);
      v7 = *(a3 + 7);
      v8 = v6 >= v7;
      if (v6 != v7)
      {
        break;
      }

      v9 = *(a1 + 8);
      v10 = *(a3 + 8);
      v8 = v9 >= v10;
      if (v9 != v10)
      {
        break;
      }

      v11 = a1[1];
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
          v12 = a1[2];
          v13 = *v12 == a1;
          a1 = v12;
        }

        while (!v13);
      }

      v14 = a3[1];
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
          v15 = a3[2];
          v13 = *v15 == a3;
          a3 = v15;
        }

        while (!v13);
      }

      v4 = v15 == a4;
      v5 = v12 == a2;
      if (v12 != a2)
      {
        a1 = v12;
        a3 = v15;
        if (v15 != a4)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }
}

void AudioIssueDetectorDispose(unint64_t a1)
{
  if (AudioDSPAnalysisEnabled())
  {
    RealTimeAudioIssueDetectorDispose();
  }

  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  atomic_fetch_add(&dword_2A18A5398, 1u);
  v2 = qword_2A18A5370;
  if (qword_2A18A5370)
  {
    v3 = vcnt_s8(qword_2A18A5370);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a1;
      if (qword_2A18A5370 <= a1)
      {
        v4 = a1 % qword_2A18A5370;
      }
    }

    else
    {
      v4 = (qword_2A18A5370 - 1) & a1;
    }

    v5 = *(qword_2A18A5368 + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = qword_2A18A5370 - 1;
        do
        {
          v8 = v6[1];
          if (v8 == a1)
          {
            if (v6[2] == a1)
            {
              v9 = v6[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v9 >= qword_2A18A5370)
                {
                  v9 %= qword_2A18A5370;
                }
              }

              else
              {
                v9 &= v7;
              }

              v10 = *(qword_2A18A5368 + 8 * v9);
              do
              {
                v11 = v10;
                v10 = *v10;
              }

              while (v10 != v6);
              if (v11 == &qword_2A18A5378)
              {
                goto LABEL_38;
              }

              v12 = v11[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v12 >= qword_2A18A5370)
                {
                  v12 %= qword_2A18A5370;
                }
              }

              else
              {
                v12 &= v7;
              }

              if (v12 != v9)
              {
LABEL_38:
                if (!*v6)
                {
                  goto LABEL_39;
                }

                v13 = *(*v6 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v13 >= qword_2A18A5370)
                  {
                    v13 %= qword_2A18A5370;
                  }
                }

                else
                {
                  v13 &= v7;
                }

                if (v13 != v9)
                {
LABEL_39:
                  *(qword_2A18A5368 + 8 * v9) = 0;
                }
              }

              v14 = *v6;
              if (*v6)
              {
                v15 = *(v14 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v15 >= v2)
                  {
                    v15 %= v2;
                  }
                }

                else
                {
                  v15 &= v7;
                }

                if (v15 != v9)
                {
                  *(qword_2A18A5368 + 8 * v15) = v11;
                  v14 = *v6;
                }
              }

              *v11 = v14;
              *v6 = 0;
              --qword_2A18A5380;
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,void *>>>::operator()[abi:ne200100](1, v6);
              break;
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v8 >= qword_2A18A5370)
              {
                v8 %= qword_2A18A5370;
              }
            }

            else
            {
              v8 &= v7;
            }

            if (v8 != v4)
            {
              break;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  atomic_fetch_add(&dword_2A18A5398, 0xFFFFFFFF);

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void rtaid::Detector::~Detector(std::__shared_weak_count **this)
{
  v21 = *MEMORY[0x29EDCA608];
  for (i = this + 3; ; rtaid::Detector::checkAndResetAnalyzers(this, i + 3))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v3 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
  {
    v11 = 136316162;
    v12 = "Detector.cpp";
    v13 = 1024;
    v14 = 34;
    v15 = 1040;
    v16 = 15;
    v17 = 2080;
    v18 = "rtaid::Detector]";
    v19 = 2048;
    v20 = this;
    _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] destroyed", &v11, 0x2Cu);
  }

  v4 = this[81];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[77];
  if (v5)
  {
    this[78] = v5;
    operator delete(v5);
  }

  v6 = this[74];
  if (v6)
  {
    this[75] = v6;
    operator delete(v6);
  }

  std::__function::__value_func<void ()(rtaid::IssueDictionary)>::~__value_func[abi:ne200100]((this + 8));
  v7 = this[3];
  if (v7)
  {
    do
    {
      v8 = v7->__vftable;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,rtaid::Detector::NodeBook>,0>(&v7->__shared_weak_owners_);
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = this[1];
  this[1] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296C48FD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

std::__shared_weak_count **std::__shared_ptr_pointer<rtaid::Detector  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    rtaid::Detector::~Detector(result);

    JUMPOUT(0x29C260F00);
  }

  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void ADAM::session_lock_exclusive::~session_lock_exclusive(ADAM::session_lock_exclusive *this)
{
  ADAM::session_lock::lock_inst(this);
  v1 = MEMORY[0x29C260D20](&ADAM::session_lock::lock_inst(void)::_m);
  ADAM::session_lock_exclusive::exclusive_flag(v1);
  atomic_store(0, &ADAM::session_lock_exclusive::exclusive_flag(void)::_f);
}

uint64_t *std::unique_ptr<ADAM::ClientSessionManager>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(v2 + 248);
    if (v4)
    {
      if ((*(v2 + 280) & 4) != 0)
      {
        Copy = @"Codec";
      }

      else
      {
        Copy = CFStringCreateCopy(0, v4);
      }
    }

    else
    {
      Copy = 0;
    }

    v6 = *(v2 + 280);
    v7 = [MEMORY[0x29EDC1528] sharedInstance];
    [v7 deviceSessionDestroyed:Copy isWired:(v6 >> 1) & 1];

    objc_autoreleasePoolPop(v3);
    ADAM::releaseADAMDeviceInfo(v2 + 248);
    std::deque<std::shared_ptr<ADAM::BufferNodeMsg>>::~deque[abi:ne200100](v2 + 384);
    std::mutex::~mutex((v2 + 320));
    v8 = *(v2 + 296);
    if (v8)
    {
      *(v2 + 304) = v8;
      operator delete(v8);
    }

    std::mutex::~mutex((v2 + 184));
    std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::~__hash_table(v2 + 144);
    v10 = (v2 + 120);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
    std::mutex::~mutex((v2 + 56));
    std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::~__hash_table(v2 + 16);
    MEMORY[0x29C260F00](v2, 0x10E0C40934A0773);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<ADAM::ClientSessionManager>::~unique_ptr[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void ADAM::ClientSessionManager::updateReportingSessions(uint64_t a1, const __CFDictionary ***a2)
{
  v47 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (!ADAM::ADAMLogScope(void)::scope)
  {
    v3 = MEMORY[0x29EDCA988];
    v4 = MEMORY[0x29EDCA988];
    goto LABEL_7;
  }

  v3 = *ADAM::ADAMLogScope(void)::scope;
  if (v3)
  {
LABEL_7:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = a2[1] - *a2;
      *buf = 136315650;
      *&buf[4] = "ADAMClientSessionManager.cpp";
      buf_12 = 1024;
      buf_14 = 65;
      v45 = 2048;
      v46 = v5;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d updating reporting sessions with %lu keys", buf, 0x1Cu);
    }
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = *a2;
  if (v7 == *a2)
  {
    goto LABEL_78;
  }

  v40[0] = 0;
  v40[1] = 0;
  v9 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
  v39 = v40;
  do
  {
    v10 = *v8;
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_1204);
      v9 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
    }

    if (*(v9 + 23))
    {
      v11 = (*(v9 + 23))(v10);
    }

    else
    {
      v11 = 0;
    }

    theDict[0] = v11;
    LOWORD(theDict[1]) = 1;
    if (CFDictionaryContainsKey(v11, @"HostApplicationDisplayID"))
    {
      if (theDict[0])
      {
        Value = CFDictionaryGetValue(theDict[0], @"HostApplicationDisplayID");
        v13 = Value;
        if (Value)
        {
          v14 = CFGetTypeID(Value);
          if (v14 == CFStringGetTypeID())
          {
            if (ADAM::ADAMLogScope(void)::once != -1)
            {
              dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
            }

            if (ADAM::ADAMLogScope(void)::scope)
            {
              v15 = *ADAM::ADAMLogScope(void)::scope;
              if (!v15)
              {
LABEL_50:
                v16 = v13;
                v22 = v16;
                v23 = [v16 UTF8String];
                v24 = strlen(v23);
                if (v24 >= 0x7FFFFFFFFFFFFFF8)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v25 = v24;
                if (v24 >= 0x17)
                {
                  operator new();
                }

                BYTE3(v46) = v24;
                if (v24)
                {
                  memmove(buf, v23, v24);
                }

                buf[v25] = 0;
                v26 = v40[0];
                if (!v40[0])
                {
LABEL_62:
                  operator new();
                }

                while (1)
                {
                  while (1)
                  {
                    v27 = v26;
                    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, v26 + 4) & 0x80) == 0)
                    {
                      break;
                    }

                    v26 = *v27;
                    if (!*v27)
                    {
                      goto LABEL_62;
                    }
                  }

                  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27 + 4, buf) & 0x80) == 0)
                  {
                    break;
                  }

                  v26 = *(v27 + 1);
                  if (!v26)
                  {
                    goto LABEL_62;
                  }
                }

                if (SBYTE3(v46) < 0)
                {
                  operator delete(*buf);
                }

                goto LABEL_43;
              }
            }

            else
            {
              v15 = MEMORY[0x29EDCA988];
              v21 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              *&buf[4] = "ADAMClientSessionManager.cpp";
              buf_12 = 1024;
              buf_14 = 85;
              v45 = 2112;
              v46 = v13;
              _os_log_impl(&dword_296C34000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d updating bundleID: %@", buf, 0x1Cu);
            }

            goto LABEL_50;
          }
        }
      }

      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (!ADAM::ADAMLogScope(void)::scope)
      {
        v16 = MEMORY[0x29EDCA988];
        v17 = MEMORY[0x29EDCA988];
LABEL_37:
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "ADAMClientSessionManager.cpp";
          buf_12 = 1024;
          buf_14 = 91;
          v45 = 2048;
          v46 = v10;
          v18 = v16;
          v19 = "%25s:%-5d Missing HostApplicationDisplayID for CAReporterID %llu";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v16 = *ADAM::ADAMLogScope(void)::scope;
      if (v16)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (!ADAM::ADAMLogScope(void)::scope)
      {
        v16 = MEMORY[0x29EDCA988];
        v20 = MEMORY[0x29EDCA988];
LABEL_40:
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "ADAMClientSessionManager.cpp";
          buf_12 = 1024;
          buf_14 = 79;
          v45 = 2112;
          v46 = theDict[0];
          v18 = v16;
          v19 = "%25s:%-5d Configuration has no key 'HostApplicationDisplayID', %@";
LABEL_42:
          _os_log_impl(&dword_296C34000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x1Cu);
        }

LABEL_43:

        goto LABEL_44;
      }

      v16 = *ADAM::ADAMLogScope(void)::scope;
      if (v16)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    CACFDictionary::~CACFDictionary(theDict);
    ++v8;
    v9 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
  }

  while (v8 != v7);
  std::mutex::lock((a1 + 184));
  theDict[1] = 0;
  v38 = 0;
  theDict[0] = 0;
  if (v39 != v40)
  {
    v28 = 0;
    v29 = v39;
    do
    {
      v30 = v28;
      v31 = v29[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v29[2];
          v33 = *v32 == v29;
          v29 = v32;
        }

        while (!v33);
      }

      ++v28;
      v29 = v32;
    }

    while (v32 != v40);
    v40[2] = theDict;
    v41 = 0;
    if (v30 < 0xAAAAAAAAAAAAAAALL)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v28);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  std::vector<std::string>::__vdeallocate((a1 + 120));
  *(a1 + 120) = *theDict;
  *(a1 + 136) = v38;
  theDict[1] = 0;
  v38 = 0;
  theDict[0] = 0;
  *buf = theDict;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  for (i = *(a1 + 160); i; i = *i)
  {
    *(i + 20) = 1;
  }

  std::mutex::unlock((a1 + 184));
  std::__tree<std::string>::destroy(v40[0]);
LABEL_78:
  v35 = *MEMORY[0x29EDCA608];
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t AudioDataAnalysisManagerCreateNodePCM(ADAM::AudioDataAnalysisManager *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (ADAM::isSpeechAnalysisEnabled(void)::once != -1)
  {
    dispatch_once(&ADAM::isSpeechAnalysisEnabled(void)::once, &__block_literal_global_33);
  }

  if ((ADAM::isSpeechAnalysisEnabled(void)::ans & 1) == 0)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      result = *ADAM::ADAMLogScope(void)::scope;
      v7 = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
      v8 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      buf_4 = "AudioDataAnalysisManager.cpp";
      buf_12 = 1024;
      buf_14 = 182;
      _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d speech analysis is disabled", &buf, 0x12u);
    }

    goto LABEL_19;
  }

  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    result = 561211748;
    goto LABEL_20;
  }

  v5 = ClientSessionMananger;
  if (ADAM::hasEntitlementForSensorkitSiri(void)::once != -1)
  {
    dispatch_once(&ADAM::hasEntitlementForSensorkitSiri(void)::once, &__block_literal_global_74);
  }

  if ((ADAM::hasEntitlementForSensorkitSiri(void)::ans & 1) == 0)
  {
    if (ADAM::hasEntitlementForSensorkitTelephony(void)::once != -1)
    {
      dispatch_once(&ADAM::hasEntitlementForSensorkitTelephony(void)::once, &__block_literal_global_79);
    }

    if (ADAM::hasEntitlementForSensorkitTelephony(void)::ans == 1)
    {
      if (*(v5 + 433))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (ADAM::isXCTest(void)::once != -1)
      {
        dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
      }

      if (ADAM::isXCTest(void)::isXCTest)
      {
        goto LABEL_8;
      }
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      result = *ADAM::ADAMLogScope(void)::scope;
      v7 = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
      v10 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      buf_4 = "ADAMClientSessionManager.cpp";
      buf_12 = 1024;
      buf_14 = 359;
      _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d speech analysis is not monitoring", &buf, 0x12u);
    }

LABEL_19:

    result = 0;
    goto LABEL_20;
  }

LABEL_8:
  if (!std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v5 + 16), a2))
  {
    operator new();
  }

  result = 1852400673;
LABEL_20:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296C4A800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  operator delete(v15);
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock(v13 + 5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t ADAM::AudioDataAnalysisManager::getClientSessionMananger(ADAM::AudioDataAnalysisManager *this, unint64_t a2)
{
  ADAM::session_lock::lock_inst(this);
  MEMORY[0x29C260CF0](&ADAM::session_lock::lock_inst(void)::_m);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(this, a2);
  if (v4)
  {
    v5 = *(v4 + 3);
  }

  else
  {
    v5 = 0;
  }

  ADAM::session_lock_shared::~session_lock_shared(v4);
  return v5;
}

void *std::vector<ADAM::BufferNodeMsg>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_296C4AA30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADAM::Parameters::GetParamValue<BOOL>(unsigned int a1)
{
  if (a1 >= ((qword_2A18A5310 - ADAM::Parameters::instance(void)::gParams) >> 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v6, a1);
    v5 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v7, "unknown ADAMParameterType ", &v6);
    MEMORY[0x29C260B10](exception, &v7, v5);
  }

  v2 = std::any_cast[abi:ne200100]<BOOL>((*(ADAM::Parameters::instance(void)::gParams + 16 * a1) + 16));
  if (!v2)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v2;
}

void sub_296C4AB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_296C4AD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v26 & 1) == 0)
    {
LABEL_12:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v27);
  goto LABEL_12;
}

void sub_296C4AE0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v14);
  __cxa_end_catch();
  JUMPOUT(0x296C4AE34);
}

uint64_t ADAM::BufferNodeBase::getEndPointBitMask(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v32 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    v8 = a1[1];
    if (v8 > 13)
    {
      if (v8 == 14)
      {
        v3 = *a1;
LABEL_46:
        if (*v3 == 0x532D747365544358 && *(v3 + 6) == 0x65646F4E4C50532DLL)
        {
          v2 = a2 | 0x20;
          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v16 = *ADAM::ADAMLogScope(void)::scope;
            if (!v16)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v16 = MEMORY[0x29EDCA988];
            v23 = MEMORY[0x29EDCA988];
          }

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_66;
          }

          v26 = 136315394;
          v27 = "ADAMBufferNodes.cpp";
          v28 = 1024;
          v29 = 96;
          v20 = "%25s:%-5d ADAM enable csv file for XCTest";
          v21 = v16;
          v22 = 18;
          goto LABEL_65;
        }

        goto LABEL_67;
      }

      if (v8 != 16)
      {
        goto LABEL_67;
      }

      v9 = *(*a1 + 8);
      v10 = **a1 == 0x6365722D63767661;
      v11 = 0x657565755164726FLL;
    }

    else
    {
      if (v8 == 5)
      {
        if (**a1 != 1970237541 || *(*a1 + 4) != 116)
        {
          goto LABEL_67;
        }

LABEL_39:
        ADAM::Parameters::instance(a1);
        if (!ADAM::Parameters::GetParamValue<BOOL>(0))
        {
          goto LABEL_67;
        }

        v2 |= 8uLL;
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v16 = *ADAM::ADAMLogScope(void)::scope;
          if (!v16)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v16 = MEMORY[0x29EDCA988];
          v18 = MEMORY[0x29EDCA988];
        }

        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
LABEL_66:

          goto LABEL_67;
        }

        if (*(v3 + 23) >= 0)
        {
          v19 = v3;
        }

        else
        {
          v19 = *v3;
        }

        v26 = 136315650;
        v27 = "ADAMBufferNodes.cpp";
        v28 = 1024;
        v29 = 92;
        v30 = 2080;
        v31 = v19;
        v20 = "%25s:%-5d ADAM enable dumping audio file for %s";
        v21 = v16;
        v22 = 28;
LABEL_65:
        _os_log_impl(&dword_296C34000, v21, OS_LOG_TYPE_DEFAULT, v20, &v26, v22);
        goto LABEL_66;
      }

      if (v8 != 11)
      {
        goto LABEL_67;
      }

      v9 = *(*a1 + 3);
      v10 = **a1 == 0x4E2D747365544358;
      v11 = 0x65646F4E2D747365;
    }

    if (!v10 || v9 != v11)
    {
      goto LABEL_67;
    }

    goto LABEL_39;
  }

  v4 = *(a1 + 23);
  if (v4 > 0xD)
  {
    if (v4 != 14)
    {
      if (v4 != 16)
      {
        goto LABEL_67;
      }

      v5 = a1[1];
      v6 = *a1 == 0x6365722D63767661;
      v7 = 0x657565755164726FLL;
      goto LABEL_13;
    }

    goto LABEL_46;
  }

  if (v4 != 5)
  {
    if (v4 != 11)
    {
      goto LABEL_67;
    }

    v5 = *(a1 + 3);
    v6 = *a1 == 0x4E2D747365544358;
    v7 = 0x65646F4E2D747365;
LABEL_13:
    if (!v6 || v5 != v7)
    {
      goto LABEL_67;
    }

    goto LABEL_39;
  }

  if (*a1 == 1970237541 && *(a1 + 4) == 116)
  {
    goto LABEL_39;
  }

LABEL_67:
  v24 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t (**std::any_cast[abi:ne200100]<BOOL>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<BOOL>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ADAM::Parameters::instance(ADAM::Parameters *this)
{
  {
    if (v1)
    {
      ADAM::Parameters::Parameters(v1);
    }
  }
}

uint64_t std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<BOOL>::__id && a4 == 0;
  v6 = a2 + 8;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void ADAM::allocAudioBufferList(ADAM *this, AudioBufferList **a2, const AudioStreamBasicDescription *a3, int a4)
{
  v5 = a3;
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v8 = *(a2 + 7);
  }

  else
  {
    v8 = 1;
  }

  v9 = 16 * (v8 - 1);
  v10 = malloc_type_malloc(v9 + 24, 0x5221892AuLL);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  bzero(v10, v9 + 24);
  *this = v11;
  *v11 = v8;
  if (v8 == 1)
  {
    v12 = *(a2 + 7);
  }

  else
  {
    v12 = 1;
  }

  if (v8)
  {
    v13 = 0;
    v14 = (*(a2 + 6) * a4 * v5);
    while (1)
    {
      v15 = *this + v13;
      *(v15 + 8) = v12;
      *(v15 + 12) = 0;
      v16 = malloc_type_malloc(v14, 0x47F368E1uLL);
      v17 = v16;
      if (v14)
      {
        if (!v16)
        {
          break;
        }
      }

      bzero(v16, v14);
      *(*this + v13 + 16) = v17;
      v13 += 16;
      if (16 * v8 == v13)
      {
        return;
      }
    }

LABEL_14:
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_alloc::bad_alloc(exception);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::allocator<std::__state<char> *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ADAM::AudioDataAnalysisManager::signal(unint64_t *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = qword_2A18A51E0[0];
    atomic_store(qword_2A18A51E0[0], a1);
    v2 = v1;
    atomic_compare_exchange_strong(qword_2A18A51E0, &v2, a1);
    if (v2 != v1)
    {
      v3 = v2;
      do
      {
        atomic_store(v2, a1);
        atomic_compare_exchange_strong(qword_2A18A51E0, &v3, a1);
        v4 = v3 == v2;
        v2 = v3;
      }

      while (!v4);
    }
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v5 = *ADAM::ADAMLogScope(void)::scope;
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v5 = MEMORY[0x29EDCA988];
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioDataAnalysisManager.cpp";
      v11 = 1024;
      v12 = 582;
      _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d *****SEVER ERROR: A NULL msg is received", &v9, 0x12u);
    }
  }

LABEL_16:
  result = caulk::semaphore::signal(&unk_2A18A51C8);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioDataAnalysisManagerInitialize(ADAM::AudioDataAnalysisManager *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  ADAM::AudioDataAnalysisManager::initialize(v2);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (ClientSessionMananger)
  {
    v4 = ClientSessionMananger;
    std::vector<ADAM::BufferNodeMsg>::vector[abi:ne200100](v14, *(ClientSessionMananger + 40));
    v5 = *(v4 + 296);
    if (v5)
    {
      *(v4 + 304) = v5;
      operator delete(v5);
    }

    *(v4 + 296) = *v14;
    *(v4 + 312) = *&v14[16];
    for (i = *(v4 + 32); i; i = *i)
    {
      v7 = *(i + 4);
      *v14 = i + 2;
      *(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v4 + 144), v7) + 20) = 0;
      (**i[3])(i[3]);
    }

    *(v4 + 432) = 1;
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      result = *ADAM::ADAMLogScope(void)::scope;
      v9 = result;
      if (!result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = MEMORY[0x29EDCA988];
      v10 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v4 + 40);
      v12 = *(v4 + 8);
      *v14 = 136315906;
      *&v14[4] = "ADAMClientSessionManager.cpp";
      *&v14[12] = 1024;
      *&v14[14] = 325;
      *&v14[18] = 2048;
      *&v14[20] = v11;
      v15 = 2048;
      v16 = v12;
      _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created %lu buffers for session: %llx", v14, 0x26u);
    }

    result = 0;
  }

  else
  {
    result = 561211748;
  }

LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
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

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void ADAM::BufferNodePCM::initialize(ADAM::BufferNodePCM *this)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((*(this + 8) & 1) == 0)
  {
    ADAM::AudioDataAnalysisManager::instance(this);
    ADAM::Dispatcher::addWriter(qword_2A18A5230, *(this + 2), *(this + 12));
    *(this + 8) = 1;
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v2 = *ADAM::ADAMLogScope(void)::scope;
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = MEMORY[0x29EDCA988];
      v3 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(this + 2);
      v6 = 136315650;
      v7 = "ADAMBufferNodes.cpp";
      v8 = 1024;
      v9 = 35;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session: %llx initialized", &v6, 0x1Cu);
    }
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
}

void ADAM::AudioDataAnalysisManager::initialize(ADAM::AudioDataAnalysisManager *this)
{
  v19 = *MEMORY[0x29EDCA608];
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &ADAM::AudioDataAnalysisManager::initialize(void)::sLock, &dword_296C34000);
  }

  std::mutex::lock(&ADAM::AudioDataAnalysisManager::initialize(void)::sLock);
  if (byte_2A18A51D8)
  {
    goto LABEL_44;
  }

  if (ADAM::isXCTest(void)::once != -1)
  {
    dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
  }

  if (ADAM::isXCTest(void)::isXCTest)
  {
    goto LABEL_24;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (!ADAM::ADAMLogScope(void)::scope)
  {
    v1 = MEMORY[0x29EDCA988];
    v2 = MEMORY[0x29EDCA988];
    goto LABEL_12;
  }

  v1 = *ADAM::ADAMLogScope(void)::scope;
  if (v1)
  {
LABEL_12:
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AudioDataAnalysisManager.cpp";
      v17 = 1024;
      v18 = 801;
      _os_log_impl(&dword_296C34000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting ADAM XPC Service Listeners...", buf, 0x12u);
    }
  }

  v3 = [objc_alloc(MEMORY[0x29EDBA180]) initWithMachServiceName:@"com.apple.audio.adam.xpc"];
  v4 = *(qword_2A18A5240 + 8);
  *(qword_2A18A5240 + 8) = v3;

  v5 = objc_alloc_init(ADAMServiceListenerDelegate);
  v6 = *qword_2A18A5240;
  *qword_2A18A5240 = v5;

  [*(qword_2A18A5240 + 8) setDelegate:*qword_2A18A5240];
  [*(qword_2A18A5240 + 8) resume];
  [MEMORY[0x29EDC1530] startNotificationCenterServer];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v7 = *ADAM::ADAMLogScope(void)::scope;
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AudioDataAnalysisManager.cpp";
    v17 = 1024;
    v18 = 809;
    _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ADAM XPC Services Started...", buf, 0x12u);
  }

LABEL_24:
  v14 = qword_2A18A5238;
  if (atomic_load_explicit(&ADAM::Sequencer::init(void)::mOnce, memory_order_acquire) != -1)
  {
    *buf = &v14;
    v15 = buf;
    std::__call_once(&ADAM::Sequencer::init(void)::mOnce, &v15, std::__call_once_proxy[abi:ne200100]<std::tuple<ADAM::Sequencer::init(void)::$_0 &&>>);
  }

  *(qword_2A18A5228 + 112) = 1;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (!ADAM::ADAMLogScope(void)::scope)
  {
    v9 = MEMORY[0x29EDCA988];
    v10 = MEMORY[0x29EDCA988];
    goto LABEL_32;
  }

  v9 = *ADAM::ADAMLogScope(void)::scope;
  if (v9)
  {
LABEL_32:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "ADAMAnalyzerManager.cpp";
      v17 = 1024;
      v18 = 55;
      _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d AnalyzerManager initialized", buf, 0x12u);
    }
  }

  byte_2A18A51D8 = 1;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v11 = *ADAM::ADAMLogScope(void)::scope;
    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
    v12 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AudioDataAnalysisManager.cpp";
    v17 = 1024;
    v18 = 73;
    _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ADAM Initialized", buf, 0x12u);
  }

LABEL_44:
  std::mutex::unlock(&ADAM::AudioDataAnalysisManager::initialize(void)::sLock);
  v13 = *MEMORY[0x29EDCA608];
}

void ADAM::Dispatcher::addWriter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v94 = *MEMORY[0x29EDCA608];
  v78 = a2;
  std::mutex::lock(a1);
  v61 = a1;
  v7 = (a1 + 72);
  v6 = *(a1 + 72);
  v62 = a1 + 64;
  if (!v6)
  {
    *v83 = a2;
    *&v83[16] = 0;
    *&v83[24] = 0;
    memset(&v82, 0, sizeof(v82));
LABEL_17:
    operator new();
  }

  v8 = (a1 + 72);
  v9 = *(a1 + 72);
  do
  {
    v10 = v9[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v8 = v9;
    }

    v9 = v9[v12];
  }

  while (v9);
  if (v8 == v7 || v8[4] > a2)
  {
    *v83 = a2;
    *&v83[16] = 0;
    *&v83[24] = 0;
    memset(&v82, 0, sizeof(v82));
    while (1)
    {
      while (1)
      {
        v13 = v6;
        v14 = v6[4];
        if (v14 <= a2)
        {
          break;
        }

        v6 = *v13;
        if (!*v13)
        {
          goto LABEL_17;
        }
      }

      if (v14 >= a2)
      {
        break;
      }

      v6 = v13[1];
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    *buf = &v83[8];
    std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = &v82;
    std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v72 = v7;
  v15 = ADAM::unpackEndPoints(&v76, a3);
  v16 = v76;
  if (v76 != v77)
  {
    v70 = *(MEMORY[0x29EDC9528] + 24);
    v71 = *(MEMORY[0x29EDC9528] + 16);
    v69 = *(MEMORY[0x29EDC9528] + 32);
    v68 = *(MEMORY[0x29EDC9528] + 40);
    v17 = *(MEMORY[0x29EDC9528] + 8);
    v66 = v17;
    v67 = *(MEMORY[0x29EDC9528] + 48);
    v65 = *MEMORY[0x29EDC9528];
    v63 = *(MEMORY[0x29EDC9528] + 72);
    v64 = *(MEMORY[0x29EDC9528] + 64);
    do
    {
      v18 = *v72;
      if (!*v72)
      {
LABEL_132:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }

      v19 = v16[4];
      while (1)
      {
        while (1)
        {
          v20 = v18[4];
          if (v20 <= a2)
          {
            break;
          }

          v18 = *v18;
          if (!v18)
          {
            goto LABEL_132;
          }
        }

        if (v20 >= a2)
        {
          break;
        }

        v18 = v18[1];
        if (!v18)
        {
          goto LABEL_132;
        }
      }

      v22 = v18[5];
      v21 = v18[6];
      if (v22 != v21)
      {
        v23 = v22 + 8;
        do
        {
          v24 = *(*(v23 - 8) + 40);
          v25 = v24 == v19 || v23 == v21;
          v23 += 8;
        }

        while (!v25);
        if (v24 == v19)
        {
          goto LABEL_116;
        }
      }

      __val = v16[4];
      v81 = a2;
      ADAM::AudioDataAnalysisManager::instance(v15);
      NodeDescriptor = ADAM::AudioDataAnalysisManager::getNodeDescriptor(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a2);
      v92[6] = 0;
      v26 = MEMORY[0x29EDC9590] + 104;
      v92[0] = MEMORY[0x29EDC9590] + 104;
      v27 = MEMORY[0x29EDC9590] + 64;
      *&v83[16] = MEMORY[0x29EDC9590] + 64;
      *v83 = v71;
      *&v83[*(v71 - 24)] = v70;
      *&v83[8] = 0;
      v28 = &v83[*(*v83 - 24)];
      std::ios_base::init(v28, &v83[24]);
      v29 = MEMORY[0x29EDC9590] + 24;
      v28[1].__vftable = 0;
      v28[1].__fmtflags_ = -1;
      *&v83[16] = v69;
      *&v83[*(v69 - 24) + 16] = v68;
      *v83 = v66;
      *&v83[*(v66 - 24)] = v67;
      v92[0] = v26;
      *v83 = v29;
      v30 = MEMORY[0x29EDC9568] + 16;
      *&v83[16] = v27;
      *&v83[24] = MEMORY[0x29EDC9568] + 16;
      MEMORY[0x29C260DE0](&v83[32]);
      v88 = 0u;
      v87 = 0u;
      v31 = MEMORY[0x29EDC9570] + 16;
      memset(&__p, 0, sizeof(__p));
      v91 = 24;
      p_p = &__p;
      *&v83[24] = MEMORY[0x29EDC9570] + 16;
      v85 = &__p;
      v86 = &__p;
      *&v87 = &__p;
      std::string::resize(&__p, 0x16uLL, 0);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      *(&v87 + 1) = &__p;
      *&v88 = &__p;
      *(&v88 + 1) = &__p + size;
      v33 = NodeDescriptor + 8;
      v34 = *(NodeDescriptor + 31);
      v73 = (NodeDescriptor + 8);
      if (__val == 2)
      {
        if ((v34 & 0x80) != 0)
        {
          v36 = *(NodeDescriptor + 16);
          if (v36 == 5)
          {
            if (**v33 == 1970237541 && *(*v33 + 4) == 116)
            {
LABEL_104:
              v40 = "TelephonyUplink";
              v41 = 15;
              goto LABEL_63;
            }
          }

          else if (v36 == 16)
          {
            v35 = *v33;
LABEL_47:
            v38 = *v35;
            v37 = v35[1];
            if (v38 == 0x6365722D63767661 && v37 == 0x657565755164726FLL)
            {
              v40 = "SiriUplink";
              v41 = 10;
              goto LABEL_63;
            }
          }
        }

        else if (v34 == 5)
        {
          if (*v33 == 1970237541 && *(NodeDescriptor + 12) == 116)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v35 = (NodeDescriptor + 8);
          if (v34 == 16)
          {
            goto LABEL_47;
          }
        }
      }

      if ((v34 & 0x80u) == 0)
      {
        v40 = (NodeDescriptor + 8);
      }

      else
      {
        v40 = *(NodeDescriptor + 8);
      }

      if ((v34 & 0x80u) == 0)
      {
        v41 = *(NodeDescriptor + 31);
      }

      else
      {
        v41 = *(NodeDescriptor + 16);
      }

LABEL_63:
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83[16], v40, v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "-", 1);
      *&v83[*(*&v83[16] - 24) + 24] = *&v83[*(*&v83[16] - 24) + 24] & 0xFFFFFFB5 | 8;
      MEMORY[0x29C260CA0]();
      if ((v91 & 0x10) != 0)
      {
        v45 = p_p;
        if (p_p < v88)
        {
          p_p = v88;
          v45 = v88;
        }

        v46 = *(&v87 + 1);
      }

      else
      {
        if ((v91 & 8) == 0)
        {
          v44 = 0;
          v80 = 0;
          goto LABEL_76;
        }

        v46 = v85;
        v45 = v87;
      }

      v44 = v45 - v46;
      if ((v45 - v46) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v44 >= 0x17)
      {
        operator new();
      }

      v80 = v45 - v46;
      if (v44)
      {
        memmove(&__dst, v46, v44);
      }

LABEL_76:
      *(&__dst + v44) = 0;
      *v83 = v65;
      *&v83[*(v65 - 24)] = v64;
      *&v83[16] = v63;
      *&v83[24] = v31;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *&v83[24] = v30;
      std::locale::~locale(&v83[32]);
      std::iostream::~basic_iostream();
      MEMORY[0x29C260E40](v92);
      if (__val <= 15)
      {
        switch(__val)
        {
          case 1:
            *v83 = &v81;
            std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v62, v81);
            operator new();
          case 2:
            *v83 = &v81;
            std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v62, v81);
            operator new();
          case 8:
            *v83 = &v81;
            std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v62, v81);
            operator new();
        }
      }

      else if (__val > 63)
      {
        if (__val == 64)
        {
          *v83 = &v81;
          std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v62, v81);
          operator new();
        }

        if (__val == 256)
        {
          *v83 = &v81;
          std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v62, v81);
          operator new();
        }
      }

      else
      {
        if (__val == 16)
        {
          *v83 = &v81;
          std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v62, v81);
          operator new();
        }

        if (__val == 32)
        {
          *v83 = &v81;
          std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v62, v81);
          operator new();
        }
      }

      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (!ADAM::ADAMLogScope(void)::scope)
      {
        v48 = MEMORY[0x29EDCA988];
        v49 = MEMORY[0x29EDCA988];
        v15 = v48;
LABEL_106:
        v50 = v15;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          if (*(NodeDescriptor + 31) < 0)
          {
            v73 = *v73;
          }

          v51 = v81;
          ADAM::getEndPointName(&v82, __val);
          v52 = &v82;
          if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v52 = v82.__r_.__value_.__r.__words[0];
          }

          *v83 = 136316162;
          *&v83[4] = "ADAMDispatcher.cpp";
          *&v83[12] = 1024;
          *&v83[14] = 206;
          *&v83[18] = 2048;
          *&v83[20] = v51;
          *&v83[28] = 2080;
          *&v83[30] = v73;
          v84 = 2080;
          v85 = v52;
          _os_log_impl(&dword_296C34000, v50, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx, No writer exists for node %s, endPoint: %s", v83, 0x30u);
          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v82.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_114;
      }

      v15 = *ADAM::ADAMLogScope(void)::scope;
      if (v15)
      {
        goto LABEL_106;
      }

LABEL_114:
      if (v80 < 0)
      {
        operator delete(__dst);
      }

LABEL_116:
      v53 = v16[1];
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v16[2];
          v25 = *v54 == v16;
          v16 = v54;
        }

        while (!v25);
      }

      v16 = v54;
    }

    while (v54 != v77);
  }

  std::__tree<ADAM::EndPointBitMask>::destroy(v77[0]);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v55 = *ADAM::ADAMLogScope(void)::scope;
    if (!v55)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v55 = MEMORY[0x29EDCA988];
    v56 = MEMORY[0x29EDCA988];
  }

  v57 = v55;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    v82.__r_.__value_.__r.__words[0] = &v78;
    v58 = std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v62, v78);
    v59 = (v58[6] - v58[5]) >> 3;
    *v83 = 136315906;
    *&v83[4] = "ADAMDispatcher.cpp";
    *&v83[12] = 1024;
    *&v83[14] = 58;
    *&v83[18] = 2048;
    *&v83[20] = a2;
    *&v83[28] = 2048;
    *&v83[30] = v59;
    _os_log_impl(&dword_296C34000, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session %llx: size of writers: %lu", v83, 0x26u);
  }

LABEL_131:
  std::mutex::unlock(v61);
  v60 = *MEMORY[0x29EDCA608];
}

void *ADAM::unpackEndPoints(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2)
  {
    operator new();
  }

  return result;
}

uint64_t AudioIssueDetectorReset(unint64_t a1)
{
  if (AudioDSPAnalysisEnabled())
  {
    RealTimeAudioIssueDetectorReset();
  }

  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v2 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (v2)
  {
    v3 = v2;
    v4 = v2[3];
    v5 = v3[4];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      rtaid::Detector::checkAndFlushState(v4, 1);
      v6 = 0;
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v6 = 0xFFFFFFFFLL;
    if (v5)
    {
LABEL_11:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

LABEL_12:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  return v6;
}

void sub_296C4E96C(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 40))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ADAM::AudioDataAnalysisManager::getNodeDescriptor(ADAM::AudioDataAnalysisManager *this, unint64_t a2)
{
  v2 = a2;
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(this, HIDWORD(a2));
  if (!ClientSessionMananger)
  {
    return 0;
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((ClientSessionMananger + 16), v2);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v4[3] + 40);

  return v5();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C260C60](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C260C70](v20);
  return a1;
}

void sub_296C4ED60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C260C70](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x296C4ED34);
}

void *std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

id **std::unique_ptr<ADAM::SensorKitWriter::SensorKitWriterInternalState>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x29C260F00);
  }

  return result;
}

void ADAM::Sequencer::run_impl(ADAM::Sequencer *this)
{
  v215 = *MEMORY[0x29EDCA608];
  while (1)
  {
LABEL_2:
    caulk::semaphore::timed_wait((*(this + 5) + 144), -1.0);
    v2 = *(this + 5);
    v3 = *(v2 + 232);
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = atomic_exchange_explicit((v2 + 168), 0, memory_order_acquire);
    if (v4)
    {
      v3 = 0;
      do
      {
        v5 = v3;
        v3 = v4;
        v4 = atomic_load(v4);
        atomic_store(v5, v3);
      }

      while (v4);
      *(v2 + 232) = v3;
LABEL_7:
      v6 = atomic_load(v3);
      *(v2 + 232) = v6;
      goto LABEL_8;
    }

    v3 = 0;
LABEL_8:
    v7 = *(v3 + 4);
    if (v7 <= 1)
    {
      break;
    }

    switch(v7)
    {
      case 2:
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v27 = *ADAM::ADAMLogScope(void)::scope;
          if (!v27)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v27 = MEMORY[0x29EDCA988];
          v36 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v3[1];
          *buf = 136315650;
          *&buf[4] = "ADAMSequencer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 126;
          *&buf[18] = 2048;
          *&buf[20] = v37;
          _os_log_impl(&dword_296C34000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer got Dispose Signal for ClientSession: %llx", buf, 0x1Cu);
        }

LABEL_76:
        v38 = v3[1];
        NodeDescriptor = ADAM::AudioDataAnalysisManager::getNodeDescriptor(*(this + 5), v38);
        v40 = *(NodeDescriptor + 4);
        v41 = *(*(this + 5) + 240);
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v42 = *ADAM::ADAMLogScope(void)::scope;
          if (!v42)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v42 = MEMORY[0x29EDCA988];
          v65 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "ADAMAnalyzerManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 183;
          *&buf[18] = 2048;
          *&buf[20] = v38;
          _os_log_impl(&dword_296C34000, v42, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx: disposing analyzers", buf, 0x1Cu);
        }

LABEL_112:
        v67 = *v41;
        v66 = *(v41 + 8);
        while (v67 != v66)
        {
          if ((*(NodeDescriptor + 4) & *(*v67 + 16)) != 0)
          {
            (*(**v67 + 16))(*v67);
          }

          ++v67;
        }

        ADAM::AudioDataAnalysisManager::dispatch(*(*(this + 5) + 248), v38, NodeDescriptor);
        v68 = *(*(this + 5) + 248);
        std::mutex::lock(v68);
        v69 = *(v68 + 72);
        if (!v69)
        {
          goto LABEL_125;
        }

        v70 = (v68 + 72);
        do
        {
          v71 = v69[4];
          v14 = v71 >= v38;
          v72 = v71 < v38;
          if (v14)
          {
            v70 = v69;
          }

          v69 = v69[v72];
        }

        while (v69);
        if (v70 == (v68 + 72) || v70[4] > v38)
        {
LABEL_125:
          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v73 = *ADAM::ADAMLogScope(void)::scope;
            if (!v73)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v73 = MEMORY[0x29EDCA988];
            v75 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "ADAMDispatcher.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 234;
            *&buf[18] = 2048;
            *&buf[20] = v38;
            v76 = v73;
            v77 = OS_LOG_TYPE_DEFAULT;
            v78 = "%25s:%-5d Session %llx: failed to dispose writer, writer already disposed?";
            goto LABEL_137;
          }

          goto LABEL_138;
        }

        v90 = v70[5];
        v89 = v70[6];
        while (v90 != v89)
        {
          (*(**v90 + 24))(*v90, v90);
          ++v90;
        }

        v91 = v70[1];
        v92 = v70;
        if (v91)
        {
          do
          {
            v93 = v91;
            v91 = *v91;
          }

          while (v91);
        }

        else
        {
          do
          {
            v93 = v92[2];
            v143 = *v93 == v92;
            v92 = v93;
          }

          while (!v143);
        }

        if (*(v68 + 64) == v70)
        {
          *(v68 + 64) = v93;
        }

        v94 = *(v68 + 72);
        --*(v68 + 80);
        v95 = *v70;
        v96 = v70;
        if (*v70)
        {
          v97 = v70[1];
          if (!v97)
          {
            v96 = v70;
LABEL_237:
            v99 = 0;
            v98 = v96[2];
            *(v95 + 16) = v98;
            goto LABEL_238;
          }

          do
          {
            v96 = v97;
            v97 = *v97;
          }

          while (v97);
        }

        v95 = v96[1];
        if (v95)
        {
          goto LABEL_237;
        }

        v98 = v96[2];
        v99 = 1;
LABEL_238:
        v121 = *v98;
        if (*v98 == v96)
        {
          *v98 = v95;
          if (v96 == v94)
          {
            v121 = 0;
            v94 = v95;
          }

          else
          {
            v121 = v98[1];
          }
        }

        else
        {
          v98[1] = v95;
        }

        v125 = *(v96 + 24);
        if (v96 != v70)
        {
          v126 = v70[2];
          v96[2] = v126;
          v126[*v126 != v70] = v96;
          v127 = *v70;
          *v96 = *v70;
          *(v127 + 16) = v96;
          v128 = v70[1];
          v96[1] = v128;
          if (v128)
          {
            *(v128 + 16) = v96;
          }

          *(v96 + 24) = *(v70 + 24);
          if (v94 == v70)
          {
            v94 = v96;
          }
        }

        if (!v94 || !v125)
        {
          goto LABEL_409;
        }

        if (!v99)
        {
          *(v95 + 24) = 1;
          goto LABEL_409;
        }

        while (1)
        {
          v129 = v121[2];
          v130 = *v129;
          v131 = *(v121 + 24);
          if (*v129 == v121)
          {
            break;
          }

          if ((v121[3] & 1) == 0)
          {
            *(v121 + 24) = 1;
            *(v129 + 24) = 0;
            v132 = v129[1];
            v133 = *v132;
            v129[1] = *v132;
            if (v133)
            {
              *(v133 + 16) = v129;
            }

            v134 = v129[2];
            v132[2] = v134;
            v134[*v134 != v129] = v132;
            *v132 = v129;
            v129[2] = v132;
            if (v94 == *v121)
            {
              v94 = v121;
            }

            v121 = *(*v121 + 8);
          }

          v135 = *v121;
          if (*v121 && *(v135 + 24) != 1)
          {
            v136 = v121[1];
            if (v136 && (v136[3] & 1) == 0)
            {
LABEL_349:
              v135 = v121;
            }

            else
            {
              *(v135 + 24) = 1;
              *(v121 + 24) = 0;
              v159 = v135[1];
              *v121 = v159;
              if (v159)
              {
                *(v159 + 16) = v121;
              }

              v160 = v121[2];
              v135[2] = v160;
              v160[*v160 != v121] = v135;
              v135[1] = v121;
              v121[2] = v135;
              v136 = v121;
            }

            v161 = v135[2];
            *(v135 + 24) = *(v161 + 24);
            *(v161 + 24) = 1;
            *(v136 + 24) = 1;
            v162 = *(v161 + 8);
            v163 = *v162;
            *(v161 + 8) = *v162;
            if (v163)
            {
              *(v163 + 16) = v161;
            }

            v164 = *(v161 + 16);
            v162[2] = v164;
            v164[*v164 != v161] = v162;
            *v162 = v161;
            goto LABEL_408;
          }

          v136 = v121[1];
          if (v136 && *(v136 + 24) != 1)
          {
            goto LABEL_349;
          }

          *(v121 + 24) = 0;
          v137 = v121[2];
          if (v137 == v94 || (v137[24] & 1) == 0)
          {
            goto LABEL_289;
          }

LABEL_287:
          v121 = *(*(v137 + 2) + 8 * (**(v137 + 2) == v137));
        }

        if ((v121[3] & 1) == 0)
        {
          *(v121 + 24) = 1;
          *(v129 + 24) = 0;
          v138 = v130[1];
          *v129 = v138;
          if (v138)
          {
            *(v138 + 16) = v129;
          }

          v139 = v129[2];
          v130[2] = v139;
          v139[*v139 != v129] = v130;
          v130[1] = v129;
          v129[2] = v130;
          v140 = v121[1];
          if (v94 == v140)
          {
            v94 = v121;
          }

          v121 = *v140;
        }

        v141 = *v121;
        if (*v121 && *(v141 + 24) != 1)
        {
          goto LABEL_404;
        }

        v142 = v121[1];
        if (!v142 || *(v142 + 24) == 1)
        {
          *(v121 + 24) = 0;
          v137 = v121[2];
          v143 = v137[24] != 1 || v137 == v94;
          if (v143)
          {
LABEL_289:
            v137[24] = 1;
            goto LABEL_409;
          }

          goto LABEL_287;
        }

        if (v141 && (v141[3] & 1) == 0)
        {
LABEL_404:
          v142 = v121;
          goto LABEL_405;
        }

        *(v142 + 24) = 1;
        *(v121 + 24) = 0;
        v188 = *v142;
        v121[1] = *v142;
        if (v188)
        {
          *(v188 + 16) = v121;
        }

        v189 = v121[2];
        v142[2] = v189;
        v189[*v189 != v121] = v142;
        *v142 = v121;
        v121[2] = v142;
        v141 = v121;
LABEL_405:
        v161 = v142[2];
        *(v142 + 24) = *(v161 + 24);
        *(v161 + 24) = 1;
        *(v141 + 24) = 1;
        v162 = *v161;
        v190 = *(*v161 + 8);
        *v161 = v190;
        if (v190)
        {
          *(v190 + 16) = v161;
        }

        v191 = *(v161 + 16);
        v162[2] = v191;
        v191[*v191 != v161] = v162;
        v162[1] = v161;
LABEL_408:
        *(v161 + 16) = v162;
LABEL_409:
        *buf = v70 + 5;
        std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](buf);
        operator delete(v70);
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (!ADAM::ADAMLogScope(void)::scope)
        {
          v73 = MEMORY[0x29EDCA988];
          v192 = MEMORY[0x29EDCA988];
LABEL_415:
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "ADAMDispatcher.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 243;
            *&buf[18] = 2048;
            *&buf[20] = v38;
            v76 = v73;
            v77 = OS_LOG_TYPE_DEBUG;
            v78 = "%25s:%-5d Session %llx: writers detached";
LABEL_137:
            _os_log_impl(&dword_296C34000, v76, v77, v78, buf, 0x1Cu);
          }

LABEL_138:

          goto LABEL_139;
        }

        v73 = *ADAM::ADAMLogScope(void)::scope;
        if (v73)
        {
          goto LABEL_415;
        }

LABEL_139:
        std::mutex::unlock(v68);
        v79 = *(this + 5);
        ADAM::session_lock::lock_inst(v80);
        MEMORY[0x29C260CF0](&ADAM::session_lock::lock_inst(void)::_m);
        v81 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(v79, HIDWORD(v38));
        if (!v81)
        {
          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v81 = *ADAM::ADAMLogScope(void)::scope;
            v87 = v81;
            if (!v81)
            {
LABEL_189:
              ADAM::session_lock_shared::~session_lock_shared(v81);
              v86 = 0;
              goto LABEL_190;
            }
          }

          else
          {
            v87 = MEMORY[0x29EDCA988];
            v105 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "AudioDataAnalysisManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 137;
            *&buf[18] = 2048;
            *&buf[20] = HIDWORD(v38);
            _os_log_impl(&dword_296C34000, v87, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sessiion %llx already disposed?", buf, 0x1Cu);
          }

          goto LABEL_189;
        }

        isa = v81[3].isa;
        if ((*(isa + 432) & 1) == 0)
        {
          goto LABEL_189;
        }

        std::mutex::lock((isa + 56));
        if (std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(isa + 2, v38))
        {
          std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::__erase_unique<unsigned int>(isa + 2, v38);
        }

        v83 = *(isa + 5);
        std::mutex::unlock((isa + 56));
        ADAM::session_lock_shared::~session_lock_shared(v84);
        if (v83)
        {
          v86 = 0;
          goto LABEL_190;
        }

        ADAM::session_lock_exclusive::session_lock_exclusive(v85);
        v112 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(v79, HIDWORD(v38));
        if (v112)
        {
          v113 = v79[1];
          v114 = v112[1];
          v115 = vcnt_s8(v113);
          v115.i16[0] = vaddlv_u8(v115);
          if (v115.u32[0] > 1uLL)
          {
            if (v114 >= *&v113)
            {
              v114 %= *&v113;
            }
          }

          else
          {
            v114 &= *&v113 - 1;
          }

          v122 = *(*v79 + 8 * v114);
          do
          {
            v123 = v122;
            v122 = *v122;
          }

          while (v122 != v112);
          if (v123 == v79 + 2)
          {
            goto LABEL_298;
          }

          v124 = v123[1];
          if (v115.u32[0] > 1uLL)
          {
            if (v124 >= *&v113)
            {
              v124 %= *&v113;
            }
          }

          else
          {
            v124 &= *&v113 - 1;
          }

          if (v124 != v114)
          {
LABEL_298:
            if (!*v112)
            {
              goto LABEL_299;
            }

            v144 = *(*v112 + 8);
            if (v115.u32[0] > 1uLL)
            {
              if (v144 >= *&v113)
              {
                v144 %= *&v113;
              }
            }

            else
            {
              v144 &= *&v113 - 1;
            }

            if (v144 != v114)
            {
LABEL_299:
              *(*v79 + 8 * v114) = 0;
            }
          }

          v145 = *v112;
          if (*v112)
          {
            v146 = *(v145 + 8);
            if (v115.u32[0] > 1uLL)
            {
              if (v146 >= *&v113)
              {
                v146 %= *&v113;
              }
            }

            else
            {
              v146 &= *&v113 - 1;
            }

            if (v146 != v114)
            {
              *(*v79 + 8 * v146) = v123;
              v145 = *v112;
            }
          }

          *v123 = v145;
          *v112 = 0;
          --v79[3];
          *buf = v112;
          *&buf[8] = v79;
          buf[16] = 1;
          *&buf[17] = 0;
          *&buf[20] = 0;
          std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
        }

        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v147 = *ADAM::ADAMLogScope(void)::scope;
          v148 = v147;
          if (!v147)
          {
            goto LABEL_317;
          }
        }

        else
        {
          v148 = MEMORY[0x29EDCA988];
          v149 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AudioDataAnalysisManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 150;
          *&buf[18] = 2048;
          *&buf[20] = HIDWORD(v38);
          _os_log_impl(&dword_296C34000, v148, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx dispose * Finished *", buf, 0x1Cu);
        }

LABEL_317:
        ADAM::session_lock_exclusive::~session_lock_exclusive(v147);
        v86 = 1;
LABEL_190:
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (!v86)
        {
          if (ADAM::ADAMLogScope(void)::scope)
          {
            v30 = *ADAM::ADAMLogScope(void)::scope;
            if (!v30)
            {
              continue;
            }
          }

          else
          {
            v30 = MEMORY[0x29EDCA988];
            v111 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "ADAMSequencer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 147;
            *&buf[18] = 2048;
            *&buf[20] = v38;
            _os_log_impl(&dword_296C34000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer Not ready to reset analyzers for %llx", buf, 0x1Cu);
          }

LABEL_211:

          continue;
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v106 = *ADAM::ADAMLogScope(void)::scope;
          if (!v106)
          {
            goto LABEL_203;
          }
        }

        else
        {
          v106 = MEMORY[0x29EDCA988];
          v107 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "ADAMSequencer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 142;
          *&buf[18] = 2048;
          *&buf[20] = v38;
          _os_log_impl(&dword_296C34000, v106, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer hard reset analyzers for %llx", buf, 0x1Cu);
        }

LABEL_203:
        v108 = *(*(this + 5) + 240);
        v109 = *v108;
        v110 = *(v108 + 8);
        while (v109 != v110)
        {
          if ((*(*v109 + 16) & v40) != 0)
          {
            (*(**v109 + 48))(*v109);
          }

          ++v109;
        }

        break;
      case 3:
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (!ADAM::ADAMLogScope(void)::scope)
        {
          v28 = MEMORY[0x29EDCA988];
          v43 = MEMORY[0x29EDCA988];
LABEL_82:
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v44 = v3[1];
            *buf = 136315650;
            *&buf[4] = "ADAMSequencer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 153;
            *&buf[18] = 2048;
            *&buf[20] = v44;
            _os_log_impl(&dword_296C34000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer Configure action: %llx", buf, 0x1Cu);
          }

          goto LABEL_85;
        }

        v28 = *ADAM::ADAMLogScope(void)::scope;
        if (v28)
        {
          goto LABEL_82;
        }

LABEL_85:
        v45 = *(this + 5);
        v46 = v3[1];
        v47 = ADAM::AudioDataAnalysisManager::getNodeDescriptor(v45, v46);
        v48 = *(v45 + 30);
        v49 = *v48;
        v50 = *(v48 + 8);
        if (*v48 != v50)
        {
          v51 = v47;
          do
          {
            if ((*(v51 + 32) & *(*v49 + 16)) != 0)
            {
              (*(**v49 + 24))(*v49, v46, v51);
            }

            ++v49;
          }

          while (v49 != v50);
        }

        v52 = v3[1];
        ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(*(this + 5), HIDWORD(v52));
        v54 = ClientSessionMananger;
        if (ClientSessionMananger)
        {
          std::mutex::lock(ClientSessionMananger + 5);
          if (*&v54[6].__m_.__opaque[32])
          {
            v55 = *&v54[6].__m_.__opaque[24];
            v56 = *(*v54[6].__m_.__opaque + ((v55 >> 5) & 0x7FFFFFFFFFFFFF8));
            v57 = (v56 + 16 * v55);
            v59 = *v57;
            v58 = v57[1];
            if (v58)
            {
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              v55 = *&v54[6].__m_.__opaque[24];
              v60 = v55;
              v56 = *(*v54[6].__m_.__opaque + ((v55 >> 5) & 0x7FFFFFFFFFFFFF8));
            }

            else
            {
              v60 = *&v54[6].__m_.__opaque[24];
            }

            v100 = *(v56 + 16 * v60 + 8);
            if (v100)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v100);
              v55 = *&v54[6].__m_.__opaque[24];
            }

            v101 = *&v54[6].__m_.__opaque[32] - 1;
            v102 = v55 + 1;
            *&v54[6].__m_.__opaque[24] = v102;
            *&v54[6].__m_.__opaque[32] = v101;
            if (v102 >= 0x200)
            {
              operator delete(**v54[6].__m_.__opaque);
              *v54[6].__m_.__opaque += 8;
              *&v54[6].__m_.__opaque[24] -= 256;
            }

            if (*(v59 + 8) != v52)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v103 = *ADAM::ADAMLogScope(void)::scope;
                if (!v103)
                {
                  goto LABEL_233;
                }
              }

              else
              {
                v103 = MEMORY[0x29EDCA988];
                v119 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                v120 = *(v59 + 8);
                *buf = 136315906;
                *&buf[4] = "ADAMClientSessionManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 341;
                *&buf[18] = 2048;
                *&buf[20] = v120;
                v210 = 1024;
                LODWORD(v211) = v52;
                _os_log_impl(&dword_296C34000, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d unexpected node id: expected: %llx, actual:%x", buf, 0x22u);
              }
            }

LABEL_233:
            if (v58)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
            }

LABEL_235:
            std::mutex::unlock(v54 + 5);
            continue;
          }

          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v88 = *ADAM::ADAMLogScope(void)::scope;
            if (!v88)
            {
              goto LABEL_235;
            }
          }

          else
          {
            v88 = MEMORY[0x29EDCA988];
            v116 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADAMClientSessionManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 346;
            _os_log_impl(&dword_296C34000, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d config msg queue empty", buf, 0x12u);
          }

          goto LABEL_235;
        }

        break;
      case 4:
        v8 = v3[1];
        v9 = ADAM::AudioDataAnalysisManager::getNodeDescriptor(*(this + 5), v8);
        if (v9)
        {
          v10 = *(*(this + 5) + 248);
          std::mutex::lock(v10);
          v11 = *(v10 + 72);
          if (!v11)
          {
            goto LABEL_61;
          }

          v12 = (v10 + 72);
          do
          {
            v13 = v11[4];
            v14 = v13 >= v8;
            v15 = v13 < v8;
            if (v14)
            {
              v12 = v11;
            }

            v11 = v11[v15];
          }

          while (v11);
          if (v12 == (v10 + 72) || v12[4] > v8 || (v16 = v12[5], v17 = v12[6], v16 == v17))
          {
LABEL_61:
            std::mutex::unlock(v10);
            v22 = *(this + 5);
            goto LABEL_62;
          }

          v18 = v16 + 8;
          do
          {
            v19 = (*(**(v18 - 8) + 8))(*(v18 - 8));
            v20 = v19;
            if (v18 == v17)
            {
              v21 = 1;
            }

            else
            {
              v21 = v19;
            }

            v18 += 8;
          }

          while ((v21 & 1) == 0);
          std::mutex::unlock(v10);
          v22 = *(this + 5);
          if (v20)
          {
            v23 = *(v22 + 30);
            v24 = *(v9 + 40);
            *(v23 + 24) = 0u;
            v25 = (v23 + 24);
            *(v23 + 104) = 0;
            *(v23 + 88) = 0u;
            *(v23 + 72) = 0u;
            *(v23 + 56) = 0u;
            *(v23 + 40) = 0u;
            ADAM::AudioDataAnalysisManager::instance(v22);
            if (v24 == 2)
            {
              operator new();
            }

            if (v24 == 1)
            {
              operator new();
            }

            if (v24)
            {
              v151 = 1970168353;
              goto LABEL_360;
            }

            ADAM::allocAudioBufferList(v25, (v9 + 48), *(v9 + 88), 1);
            v150 = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, HIDWORD(v8));
            v151 = 1852400673;
            if (v150)
            {
              if (*(v150 + 432) == 1)
              {
                v152 = *v25;
                v153 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v150 + 16), v8);
                if (v153)
                {
                  v151 = (*(*v153[3] + 24))(v153[3], v152, v23 + 32);
                }
              }

              else
              {
                v151 = 1634625825;
              }
            }

            v154 = ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
            v155 = ++ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
            if (!v154 && v151)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v156 = *ADAM::ADAMLogScope(void)::scope;
                if (!v156)
                {
LABEL_357:
                  v169 = ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                  if (ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt > 0xFFE)
                  {
                    v169 = 0;
                  }

                  ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt = v169;
LABEL_360:
                  v170 = ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                  v171 = ++ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                  if (v170)
                  {
                    v172 = &ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                    goto LABEL_373;
                  }

                  if (ADAM::ADAMLogScope(void)::once != -1)
                  {
                    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
                  }

                  if (ADAM::ADAMLogScope(void)::scope)
                  {
                    v173 = *ADAM::ADAMLogScope(void)::scope;
                    if (!v173)
                    {
LABEL_371:
                      v172 = &ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                      goto LABEL_372;
                    }
                  }

                  else
                  {
                    v173 = MEMORY[0x29EDCA988];
                    v174 = MEMORY[0x29EDCA988];
                  }

                  if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "ADAMAnalyzerManager.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 75;
                    *&buf[18] = 2048;
                    *&buf[20] = v8;
                    _os_log_impl(&dword_296C34000, v173, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Failed to Fetch Data", buf, 0x1Cu);
                  }

                  goto LABEL_371;
                }
              }

              else
              {
                v165 = v151;
                v166 = MEMORY[0x29EDCA988];
                v167 = MEMORY[0x29EDCA988];
                v156 = v166;
                v151 = v165;
              }

              v168 = v156;
              if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
              {
                CAX4CCString::CAX4CCString(v214, v151);
                *buf = 136315906;
                *&buf[4] = "ADAMAnalyzerManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 175;
                *&buf[18] = 2048;
                *&buf[20] = v8;
                v210 = 2080;
                v211 = v214;
                _os_log_impl(&dword_296C34000, v168, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session %llx: faild to read buffer: %s", buf, 0x26u);
              }

              goto LABEL_357;
            }

            if (v155 > 0xFFE)
            {
              v155 = 0;
            }

            ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt = v155;
            if (v151)
            {
              goto LABEL_360;
            }

            v157 = *v23;
            v208 = *(v23 + 8);
            if (*v23 == v208)
            {
              ADAM::AnalyzerManager::releaseData(v23, v9);
LABEL_418:
              v193 = ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
              v171 = ++ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
              if (v193)
              {
                v172 = &ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                v151 = 561476709;
LABEL_373:
                if (v171 > 0xFFE)
                {
                  v171 = 0;
                }

                *v172 = v171;
                v158 = v151;
LABEL_376:
                v175 = &ADAM::Sequencer::run_impl(void)::errCnt;
                v176 = ADAM::Sequencer::run_impl(void)::errCnt;
                v177 = ++ADAM::Sequencer::run_impl(void)::errCnt;
                if (v176)
                {
                  goto LABEL_377;
                }

                if (ADAM::ADAMLogScope(void)::once != -1)
                {
                  dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
                }

                if (ADAM::ADAMLogScope(void)::scope)
                {
                  v179 = *ADAM::ADAMLogScope(void)::scope;
                  if (!v179)
                  {
LABEL_389:
                    v178 = &ADAM::Sequencer::run_impl(void)::errCnt;
                    goto LABEL_390;
                  }
                }

                else
                {
                  v180 = MEMORY[0x29EDCA988];
                  v181 = MEMORY[0x29EDCA988];
                  v179 = v180;
                }

                v182 = v179;
                if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
                {
                  v183 = (v9 + 8);
                  if (*(v9 + 31) < 0)
                  {
                    v183 = *v183;
                  }

                  CAX4CCString::CAX4CCString(v214, v158);
                  *buf = 136316162;
                  *&buf[4] = "ADAMSequencer.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 181;
                  *&buf[18] = 2048;
                  *&buf[20] = v8;
                  v210 = 2080;
                  v211 = v183;
                  v212 = 2080;
                  v213 = v214;
                  _os_log_impl(&dword_296C34000, v182, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Error Analyzing Data, nodeName: %s, err code: %s", buf, 0x30u);
                }

                goto LABEL_389;
              }

              v151 = 561476709;
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v194 = *ADAM::ADAMLogScope(void)::scope;
                if (!v194)
                {
                  goto LABEL_436;
                }
              }

              else
              {
                v194 = MEMORY[0x29EDCA988];
                v199 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
              {
                v200 = *(v9 + 32);
                *buf = 136315906;
                *&buf[4] = "ADAMAnalyzerManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 91;
                *&buf[18] = 2048;
                *&buf[20] = v8;
                v210 = 2048;
                v211 = v200;
                _os_log_impl(&dword_296C34000, v194, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: No Analyzer found, nodeEndPointMask: %llx", buf, 0x26u);
              }

LABEL_436:
              v172 = &ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
LABEL_372:
              v171 = *v172;
              goto LABEL_373;
            }

            v158 = 561476709;
            do
            {
              if ((*(v9 + 32) & *(*v157 + 16)) != 0)
              {
                v158 = (*(**v157 + 32))(*v157, v8, *v25, v23 + 32);
                if (v158)
                {
                  break;
                }
              }

              ++v157;
            }

            while (v157 != v208);
            ADAM::AnalyzerManager::releaseData(v23, v9);
            if (v158)
            {
              if (v158 == 561476709)
              {
                goto LABEL_418;
              }

              goto LABEL_376;
            }

            v195 = ADAM::AudioDataAnalysisManager::dispatch(*(*(this + 5) + 248), v8, v9);
            v175 = &ADAM::Sequencer::run_impl(void)::errCnt;
            v196 = ADAM::Sequencer::run_impl(void)::errCnt;
            v177 = ++ADAM::Sequencer::run_impl(void)::errCnt;
            if (v196)
            {
LABEL_377:
              v178 = v175;
              goto LABEL_391;
            }

            v197 = v195;
            v178 = &ADAM::Sequencer::run_impl(void)::errCnt;
            if (v195)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v198 = *ADAM::ADAMLogScope(void)::scope;
                if (!v198)
                {
                  goto LABEL_443;
                }
              }

              else
              {
                v201 = MEMORY[0x29EDCA988];
                v202 = MEMORY[0x29EDCA988];
                v198 = v201;
              }

              v203 = v198;
              if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
              {
                v204 = (v9 + 8);
                if (*(v9 + 31) < 0)
                {
                  v204 = *v204;
                }

                CAX4CCString::CAX4CCString(v214, v197);
                *buf = 136316162;
                *&buf[4] = "ADAMSequencer.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 177;
                *&buf[18] = 2048;
                *&buf[20] = v8;
                v210 = 2080;
                v211 = v204;
                v212 = 2080;
                v213 = v214;
                _os_log_impl(&dword_296C34000, v203, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Error Dispatch Data, nodeName: %s, err code: %s", buf, 0x30u);
              }

LABEL_443:
              v178 = &ADAM::Sequencer::run_impl(void)::errCnt;
LABEL_390:
              v177 = *v178;
            }

LABEL_391:
            if (v177 > 0xFFE)
            {
              v177 = 0;
            }

            *v178 = v177;
            v184 = *(*(this + 5) + 240);
            v185 = *v184;
            v186 = v184[1];
            while (v185 != v186)
            {
              v187 = *v185;
              if (*(*v185 + 112) == 1 && (*(v9 + 32) & v187[2]) != 0)
              {
                (*(*v187 + 40))(v187);
              }

              v185 += 8;
            }
          }

          else
          {
LABEL_62:
            v31 = ADAM::AudioDataAnalysisManager::getClientSessionMananger(v22, HIDWORD(v8));
            if (v31)
            {
              if (*(v31 + 432) == 1)
              {
                v32 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v31 + 16), v8);
                if (v32)
                {
                  (*(*v32[3] + 32))(v32[3]);
                }
              }
            }

            v33 = ADAM::Sequencer::run_impl(void)::errCnt;
            v34 = ++ADAM::Sequencer::run_impl(void)::errCnt;
            if (!v33)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v35 = *ADAM::ADAMLogScope(void)::scope;
                if (!v35)
                {
LABEL_225:
                  v34 = ADAM::Sequencer::run_impl(void)::errCnt;
                  goto LABEL_226;
                }
              }

              else
              {
                v35 = MEMORY[0x29EDCA988];
                v117 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v118 = (v9 + 8);
                if (*(v9 + 31) < 0)
                {
                  v118 = *v118;
                }

                *buf = 136315906;
                *&buf[4] = "ADAMSequencer.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 191;
                *&buf[18] = 2048;
                *&buf[20] = v8;
                v210 = 2080;
                v211 = v118;
                _os_log_impl(&dword_296C34000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: end point not enabled, nodeName: %s, data discarded", buf, 0x26u);
              }

              goto LABEL_225;
            }

LABEL_226:
            if (v34 > 0xFFE)
            {
              v34 = 0;
            }

            ADAM::Sequencer::run_impl(void)::errCnt = v34;
          }
        }

        else
        {
          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v64 = *ADAM::ADAMLogScope(void)::scope;
            if (!v64)
            {
              continue;
            }
          }

          else
          {
            v64 = MEMORY[0x29EDCA988];
            v104 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ADAMSequencer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 163;
            *&buf[18] = 2048;
            *&buf[20] = v8;
            _os_log_impl(&dword_296C34000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Sequencer getting a invalid node descriptor", buf, 0x1Cu);
          }
        }

        break;
      default:
        goto LABEL_55;
    }
  }

  if (v7)
  {
    if (v7 != 1)
    {
LABEL_55:
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v30 = *ADAM::ADAMLogScope(void)::scope;
        if (!v30)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v30 = MEMORY[0x29EDCA988];
        v62 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v63 = *(v3 + 4);
        *buf = 136315650;
        *&buf[4] = "ADAMSequencer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 197;
        *&buf[18] = 1024;
        *&buf[20] = v63;
        _os_log_impl(&dword_296C34000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown Msg Action Type: %d", buf, 0x18u);
      }

      goto LABEL_211;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v26 = *ADAM::ADAMLogScope(void)::scope;
      if (!v26)
      {
LABEL_98:
        atomic_store(1u, this + 17);
        goto LABEL_2;
      }
    }

    else
    {
      v26 = MEMORY[0x29EDCA988];
      v61 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ADAMSequencer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 121;
      _os_log_impl(&dword_296C34000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer got Reset Signal", buf, 0x12u);
    }

    goto LABEL_98;
  }

  v29 = atomic_load(this + 16);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if ((v29 & 1) == 0)
  {
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v30 = *ADAM::ADAMLogScope(void)::scope;
      if (!v30)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v30 = MEMORY[0x29EDCA988];
      v74 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ADAMSequencer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      _os_log_impl(&dword_296C34000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Sequencer got Terminate Signal, but stop is not set", buf, 0x12u);
    }

    goto LABEL_211;
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v205 = *ADAM::ADAMLogScope(void)::scope;
    if (!v205)
    {
      goto LABEL_451;
    }
  }

  else
  {
    v205 = MEMORY[0x29EDCA988];
    v206 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ADAMSequencer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 114;
    _os_log_impl(&dword_296C34000, v205, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer got Terminate Signal", buf, 0x12u);
  }

LABEL_451:
  v207 = *MEMORY[0x29EDCA608];
}

void ADAM::session_lock::lock_inst(ADAM::session_lock *this)
{
  {
    std::shared_timed_mutex::shared_timed_mutex(&ADAM::session_lock::lock_inst(void)::_m);
  }
}

void ADAM::Analyzer::PCMBuffer::configure(ADAM::Analyzer::PCMBuffer *this, unint64_t a2, const ADAM::BufferNodeDescriptorBase *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v6 = *ADAM::ADAMLogScope(void)::scope;
    v7 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v27 = 136315650;
    v28 = "PCMBuffer.cpp";
    v29 = 1024;
    v30 = 118;
    v31 = 2048;
    *v32 = a2;
    _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx: Configuring PCM Buffer", &v27, 0x1Cu);
  }

LABEL_10:
  ADAM::AudioDataAnalysisManager::instance(v6);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, HIDWORD(a2));
  if (ClientSessionMananger)
  {
    v10 = *ClientSessionMananger;
    ADAM::Parameters::instance(ClientSessionMananger);
    if (v10 == 3)
    {
      Param = ADAM::Parameters::GetParamValue<float>(0xDu);
      if (Param <= 1)
      {
        Param = 1;
      }

      v12 = Param < 240;
      v13 = 240;
      goto LABEL_19;
    }
  }

  else
  {
    ADAM::Parameters::instance(0);
  }

  Param = ADAM::Parameters::GetParamValue<float>(0xEu);
  if (Param <= 1)
  {
    Param = 1;
  }

  v12 = Param < 60;
  v13 = 60;
LABEL_19:
  if (v12)
  {
    v14 = Param;
  }

  else
  {
    v14 = v13;
  }

  v16 = *(a3 + 6);
  v15 = (a3 + 48);
  *(this + 43) = (v15[10] + v14 * v16) / v15[10];
  v18 = *v15;
  v17 = *(v15 + 1);
  *(this + 20) = *(v15 + 4);
  *(this + 8) = v18;
  *(this + 9) = v17;
  v19 = v15[10];
  *(this + 42) = (1.0 - (v19 - v14 * *(this + 16)));
  *(this + 44) = v19;
  *(this + 23) = a2;
  *(this + 192) = 1;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v20 = *ADAM::ADAMLogScope(void)::scope;
    if (!v20)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v20 = MEMORY[0x29EDCA988];
    v21 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(this + 43);
    v22 = *(this + 44);
    v24 = *(this + 42);
    v25 = *v15;
    v27 = 136316674;
    v28 = "PCMBuffer.cpp";
    v29 = 1024;
    v30 = 154;
    v31 = 1024;
    *v32 = v14;
    *&v32[4] = 1024;
    *&v32[6] = v23;
    v33 = 1024;
    v34 = v22;
    v35 = 1024;
    v36 = v24;
    v37 = 2048;
    v38 = v25;
    _os_log_impl(&dword_296C34000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PCM Buffer Configured: duration: %us numSlots: %u, maxFramesPerBlock %u, maxFrames: %u, sample rate: %.2lf", &v27, 0x34u);
  }

LABEL_31:
  v26 = *MEMORY[0x29EDCA608];
}

uint64_t (**std::any_cast[abi:ne200100]<float>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<float>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float ADAM::Parameters::GetParamValue<float>(unsigned int a1)
{
  if (a1 >= ((qword_2A18A5310 - ADAM::Parameters::instance(void)::gParams) >> 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v6, a1);
    v5 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v7, "unknown ADAMParameterType ", &v6);
    MEMORY[0x29C260B10](exception, &v7, v5);
  }

  v2 = std::any_cast[abi:ne200100]<float>((*(ADAM::Parameters::instance(void)::gParams + 16 * a1) + 16));
  if (!v2)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v2;
}

void sub_296C51454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_296C5163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v26 & 1) == 0)
    {
LABEL_12:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v27);
  goto LABEL_12;
}

void sub_296C51740(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v14);
  __cxa_end_catch();
  JUMPOUT(0x296C51768);
}

float std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = *(a2 + 8);
      *(a3 + 8) = result;
      *a3 = std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100];
      return result;
    }

LABEL_7:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = *(a2 + 8);
    *(a3 + 8) = result;
    *a3 = std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100];
    goto LABEL_7;
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<ADAM::Writer>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 40))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ADAM::getEndPointName(uint64_t a1, int64_t __val)
{
  if (__val <= 15)
  {
    if (__val > 3)
    {
      if (__val == 4)
      {
        v3 = "EndPoint_EnvExposure";
        goto LABEL_22;
      }

      if (__val == 8)
      {
        v3 = "EndPoint_AudioFile";
        goto LABEL_22;
      }
    }

    else
    {
      if (__val == 1)
      {
        v3 = "EndPoint_HealthKit";
        goto LABEL_22;
      }

      if (__val == 2)
      {
        v3 = "EndPoint_SensorKit";
        goto LABEL_22;
      }
    }
  }

  else if (__val <= 63)
  {
    if (__val == 16)
    {
      v3 = "EndPoint_BinFile";
      goto LABEL_22;
    }

    if (__val == 32)
    {
      v3 = "EndPoint_CsvFile";
      goto LABEL_22;
    }
  }

  else
  {
    switch(__val)
    {
      case 64:
        v3 = "EndPoint_ADAFramework";
        goto LABEL_22;
      case 128:
        v3 = "EndPoint_EnvSoundClass";
        goto LABEL_22;
      case 256:
        v3 = "EndPoint_MicLevel";
LABEL_22:

        std::string::basic_string[abi:ne200100]<0>(a1, v3);
        return;
    }
  }

  std::to_string(&v6, __val);
  v4 = std::string::insert(&v6, 0, "EndPoint_Unknown:", 0x11uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v4->__r_.__value_.__l + 2);
  *a1 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_296C519D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDataAnalysisManagerIsSessionInitialized(ADAM::AudioDataAnalysisManager *a1, _BYTE *a2)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (a2)
  {
    *a2 = 0;
  }

  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (ClientSessionMananger)
  {
    result = 0;
  }

  else
  {
    result = 561211748;
  }

  if (a2)
  {
    if (ClientSessionMananger)
    {
      result = 0;
      *a2 = *(ClientSessionMananger + 432);
    }
  }

  return result;
}

uint64_t AudioDataAnalysisManagerDispose(ADAM::AudioDataAnalysisManager *a1)
{
  *&v23[5] = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    goto LABEL_31;
  }

  v3 = ClientSessionMananger;
  if (!*(ClientSessionMananger + 40))
  {
    goto LABEL_31;
  }

  if (*(ClientSessionMananger + 432) == 1)
  {
    ADAM::AudioDataAnalysisManager::instance(ClientSessionMananger);
    v17 = *(v3 + 8);
    std::mutex::lock((v3 + 56));
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = 0;
      do
      {
        v6 = *(v3 + 296) + 24 * v5;
        *(v6 + 8) = *(v4 + 4) | (*(v3 + 8) << 32);
        *(v6 + 16) = 2;
        v7 = qword_2A18A51E0[0];
        atomic_store(qword_2A18A51E0[0], v6);
        v8 = v7;
        atomic_compare_exchange_strong(qword_2A18A51E0, &v8, v6);
        if (v8 != v7)
        {
          v9 = v8;
          do
          {
            atomic_store(v8, v6);
            atomic_compare_exchange_strong(qword_2A18A51E0, &v9, v6);
            v10 = v9 == v8;
            v8 = v9;
          }

          while (!v10);
        }

        caulk::semaphore::signal(&unk_2A18A51C8);
        ++v5;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    std::mutex::unlock((v3 + 56));
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v11 = *ADAM::ADAMLogScope(void)::scope;
      if (!v11)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = "ADAMClientSessionManager.cpp";
      v20 = 1024;
      v21 = 303;
      v22 = 1024;
      v23[0] = v5;
      LOWORD(v23[1]) = 2048;
      *(&v23[1] + 2) = v17;
      _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sent [ %u ] dispose signals for session: %llx", buf, 0x22u);
    }
  }

LABEL_22:
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v13 = *ADAM::ADAMLogScope(void)::scope;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = MEMORY[0x29EDCA988];
    v14 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "AudioDataAnalysisManager.cpp";
    v20 = 1024;
    v21 = 113;
    v22 = 2048;
    *v23 = a1;
    _os_log_impl(&dword_296C34000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx dispose * Pending *", buf, 0x1Cu);
  }

LABEL_31:
  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

void ADAM::Analyzer::PCMBuffer::flush(ADAM::Analyzer::PCMBuffer *this)
{
  v14 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(this + 23);
    v8 = 136315650;
    v9 = "PCMBuffer.cpp";
    v10 = 1024;
    v11 = 161;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx: flushing PCM Buffer", &v8, 0x1Cu);
  }

LABEL_10:
  if (*(this + 24))
  {
    *(this + 3) = *(this + 15);
    *(this + 13) = 1;
    *(this + 112) = 1;
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v5 = *ADAM::ADAMLogScope(void)::scope;
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = MEMORY[0x29EDCA988];
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "PCMBuffer.cpp";
      v10 = 1024;
      v11 = 168;
      _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d PCM Buffer will be flushed", &v8, 0x12u);
    }
  }

LABEL_20:
  v7 = *MEMORY[0x29EDCA608];
}

uint64_t ADAM::AudioDataAnalysisManager::dispatch(ADAM::AudioDataAnalysisManager *this, unint64_t a2, const ADAM::BufferNodeDescriptorBase *a3)
{
  v59 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(this);
  v6 = *qword_2A18A5228;
  v7 = *(qword_2A18A5228 + 8);
  if (*qword_2A18A5228 == v7)
  {
    v8 = 0;
    goto LABEL_63;
  }

  v8 = 0;
  v9 = (this + 72);
  v40 = *(qword_2A18A5228 + 8);
  v41 = a3;
  v43 = this;
  do
  {
    v10 = *v6;
    v11 = *(a3 + 4) & *(*v6 + 16);
    if (!v11 || *(v10 + 112) != 1)
    {
      goto LABEL_60;
    }

    v42 = v6;
    v12 = *(v10 + 24);
    ADAM::unpackEndPoints(&v46, v11);
    v13 = v46;
    v8 = 561476709;
    v14 = v43;
    if (v46 == v47)
    {
      goto LABEL_59;
    }

    do
    {
      v15 = v13[4];
      std::mutex::lock(v14);
      v16 = *v9;
      if (!*v9)
      {
        goto LABEL_21;
      }

      v17 = v9;
      do
      {
        v18 = v16[4];
        v19 = v18 >= a2;
        v20 = v18 < a2;
        if (v19)
        {
          v17 = v16;
        }

        v16 = v16[v20];
      }

      while (v16);
      if (v17 == v9 || v17[4] > a2 || (v22 = v17[5], v21 = v17[6], v21 == v22))
      {
LABEL_21:
        v24 = ADAM::Dispatcher::dispatch2EndPoint(unsigned long long,ADAM::EndPointBitMask,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        v25 = ++ADAM::Dispatcher::dispatch2EndPoint(unsigned long long,ADAM::EndPointBitMask,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        if (v24)
        {
LABEL_32:
          if (v25 > 0x3FE)
          {
            v25 = 0;
          }

          ADAM::Dispatcher::dispatch2EndPoint(unsigned long long,ADAM::EndPointBitMask,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v25;
          std::mutex::unlock(v14);
          v23 = 561476709;
LABEL_35:
          CAX4CCString::CAX4CCString(v58, v23);
          v28 = ADAM::Dispatcher::dispatch(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
          v29 = ++ADAM::Dispatcher::dispatch(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
          if (v28)
          {
LABEL_49:
            if (v29 > 0x1D)
            {
              v29 = 0;
            }

            ADAM::Dispatcher::dispatch(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt = v29;
            goto LABEL_52;
          }

          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v30 = *ADAM::ADAMLogScope(void)::scope;
            if (!v30)
            {
LABEL_48:
              v29 = ADAM::Dispatcher::dispatch(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
              goto LABEL_49;
            }
          }

          else
          {
            v31 = MEMORY[0x29EDCA988];
            v32 = MEMORY[0x29EDCA988];
            v30 = v31;
          }

          v33 = v30;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            ADAM::getEndPointName(__p, v15);
            v34 = __p;
            if (v45 < 0)
            {
              v34 = __p[0];
            }

            *buf = 136316162;
            v49 = "ADAMDispatcher.cpp";
            v50 = 1024;
            v51 = 99;
            v52 = 2048;
            v53 = a2;
            v54 = 2080;
            v55 = v34;
            v56 = 2080;
            v57 = v58;
            _os_log_impl(&dword_296C34000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Failed to dispatch to endpoint: %s err: %s", buf, 0x30u);
            if (v45 < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_48;
        }

        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v26 = *ADAM::ADAMLogScope(void)::scope;
          if (!v26)
          {
LABEL_31:
            v25 = ADAM::Dispatcher::dispatch2EndPoint(unsigned long long,ADAM::EndPointBitMask,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
            v14 = v43;
            goto LABEL_32;
          }
        }

        else
        {
          v26 = MEMORY[0x29EDCA988];
          v27 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v49 = "ADAMDispatcher.cpp";
          v50 = 1024;
          v51 = 125;
          v52 = 2048;
          v53 = a2;
          _os_log_impl(&dword_296C34000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx, no writers exists", buf, 0x1Cu);
        }

        goto LABEL_31;
      }

      v23 = 561476709;
      do
      {
        if (*(*v22 + 40) == v15)
        {
          v23 = (***v22)(*v22, v12, v10 + 32);
        }

        ++v22;
      }

      while (v22 != v21);
      std::mutex::unlock(v43);
      if (v23)
      {
        goto LABEL_35;
      }

LABEL_52:
      v35 = v13[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v13[2];
          v37 = *v36 == v13;
          v13 = v36;
        }

        while (!v37);
      }

      v13 = v36;
      v14 = v43;
    }

    while (v36 != v47);
    v8 = 0;
LABEL_59:
    std::__tree<ADAM::EndPointBitMask>::destroy(v47[0]);
    a3 = v41;
    v6 = v42;
    v7 = v40;
LABEL_60:
    ++v6;
  }

  while (v6 != v7);
LABEL_63:
  v38 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t AudioDataAnalysisManagerProcessAudio(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _OWORD *a5)
{
  v26 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (ADAM::isSpeechAnalysisEnabled(void)::once != -1)
  {
    dispatch_once(&ADAM::isSpeechAnalysisEnabled(void)::once, &__block_literal_global_33);
  }

  if (ADAM::isSpeechAnalysisEnabled(void)::ans != 1)
  {
    goto LABEL_29;
  }

  v10 = 1634625825;
  if (byte_2A18A51D8 != 1)
  {
    goto LABEL_30;
  }

  ADAM::session_lock_exclusive::session_lock_exclusive_flag::session_lock_exclusive_flag(buf);
  if (buf[0] == 1)
  {
    v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
    if (!v11 || (v12 = *(v11 + 3)) == 0)
    {
      v10 = 561211748;
      ADAM::session_lock_exclusive::shared_cnt(v11);
      atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 0xFFFFFFFF, memory_order_relaxed);
      goto LABEL_30;
    }

    ADAM::session_lock_exclusive::shared_cnt(v11);
    atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 0xFFFFFFFF, memory_order_relaxed);
    if (*(v12 + 432) == 1)
    {
      if (ADAM::hasEntitlementForSensorkitSiri(void)::once != -1)
      {
        dispatch_once(&ADAM::hasEntitlementForSensorkitSiri(void)::once, &__block_literal_global_74);
      }

      if (ADAM::hasEntitlementForSensorkitSiri(void)::ans == 1)
      {
        if (+[ADAMSensorKitWriterFactory IsMonitoringSiri])
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (ADAM::hasEntitlementForSensorkitTelephony(void)::once != -1)
        {
          dispatch_once(&ADAM::hasEntitlementForSensorkitTelephony(void)::once, &__block_literal_global_79);
        }

        if (ADAM::hasEntitlementForSensorkitTelephony(void)::ans == 1)
        {
          if (*(v12 + 433))
          {
LABEL_13:
            v13 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v12 + 16), a2);
            if (v13)
            {
              v14 = a5[3];
              v22 = a5[2];
              v23 = v14;
              v15 = a5[1];
              *buf = *a5;
              *&buf[16] = v15;
              v25 = 0;
              v24 = a4;
              v10 = (*(*v13[3] + 16))(v13[3], a3, buf);
            }

            else
            {
              v10 = 1852400673;
            }

            goto LABEL_30;
          }
        }

        else
        {
          if (ADAM::isXCTest(void)::once != -1)
          {
            dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
          }

          if (ADAM::isXCTest(void)::isXCTest)
          {
            goto LABEL_13;
          }
        }
      }

LABEL_29:
      v10 = 0;
    }
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    v10 = 1835102241;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v16 = *ADAM::ADAMLogScope(void)::scope;
      if (!v16)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v16 = MEMORY[0x29EDCA988];
      v17 = MEMORY[0x29EDCA988];
    }

    v18 = v16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AudioDataAnalysisManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 281;
      *&buf[18] = 2048;
      *&buf[20] = a2 | (a1 << 32);
      _os_log_impl(&dword_296C34000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session %llx, Map is mutating", buf, 0x1Cu);
    }
  }

LABEL_30:
  v19 = *MEMORY[0x29EDCA608];
  return v10;
}

void ADAM::Writer::detach(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a1 && *(a1 + 80) == 1)
  {
    std::mutex::lock(&ADAM::Writer::getAsyncMutex(void)::sAsyncMutex);
    if (*(a1 + 81) == 1)
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *(a1 + 72);
      *(a1 + 72) = v4;
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }
    }

    std::mutex::unlock(&ADAM::Writer::getAsyncMutex(void)::sAsyncMutex);
  }
}

ADAM::session_lock_exclusive::session_lock_exclusive_flag *ADAM::session_lock_exclusive::session_lock_exclusive_flag::session_lock_exclusive_flag(ADAM::session_lock_exclusive::session_lock_exclusive_flag *this)
{
  *this = 0;
  ADAM::session_lock_exclusive::shared_cnt(this);
  ADAM::session_lock_exclusive::exclusive_flag(v2);
  v4 = 0;
  atomic_compare_exchange_strong(&ADAM::session_lock_exclusive::exclusive_flag(void)::_f, &v4, 1u);
  if (!v4)
  {
    atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 1u, memory_order_relaxed);
    *this = 1;
    ADAM::session_lock_exclusive::exclusive_flag(v3);
    atomic_store(0, &ADAM::session_lock_exclusive::exclusive_flag(void)::_f);
  }

  return this;
}

void ADAM::SensorKitWriter::~SensorKitWriter(ADAM::SensorKitWriter *this)
{
  ADAM::SensorKitWriter::~SensorKitWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  v16 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1DEE520;
  v3 = (this + 88);
  v2 = *(this + 11);
  if (v2)
  {
    atomic_store(0, (v2 + 44));
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 16);
    if (*(this + 39) < 0)
    {
      v6 = *v6;
    }

    v8 = 136315906;
    v9 = "SensorKitWriter.mm";
    v10 = 1024;
    v11 = 260;
    v12 = 2080;
    v13 = v6;
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SensorKit Writer [%s](%p) destroyed...", &v8, 0x26u);
  }

LABEL_14:
  std::mutex::~mutex((this + 96));
  std::unique_ptr<ADAM::SensorKitWriter::SensorKitWriterInternalState>::reset[abi:ne200100](v3, 0);
  ADAM::Writer::~Writer(this);
  v7 = *MEMORY[0x29EDCA608];
}

void ADAM::session_lock_exclusive::shared_cnt(ADAM::session_lock_exclusive *this)
{
  {
    ADAM::session_lock_exclusive::shared_cnt(void)::_c = 0;
  }
}

void ADAM::session_lock_exclusive::exclusive_flag(ADAM::session_lock_exclusive *this)
{
  {
    ADAM::session_lock_exclusive::exclusive_flag(void)::_f = 0;
  }
}

void std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void ADAM::Writer::~Writer(ADAM::Writer *this)
{
  *this = &unk_2A1DEE8D8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 9) = 0;
    (*(*v2 + 40))(v2);
    v3 = *(this + 9);
    *(this + 9) = 0;
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  v4 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::__erase_unique<unsigned int>(void *a1, unsigned int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,void *>>>::operator()[abi:ne200100](1, v3);
  }
}

void ADAM::BufferNodePCM::~BufferNodePCM(ADAM::BufferNodePCM *this, AudioBufferList **a2)
{
  *this = &unk_2A1DEE6C0;
  ADAM::releaseAudioBufferList(this + 20, a2);
  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  *(this + 8) = &unk_2A1DEEA98;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_2A1DEEA28;
  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

{
  ADAM::BufferNodePCM::~BufferNodePCM(this, a2);

  JUMPOUT(0x29C260F00);
}

void ADAM::releaseAudioBufferList(unsigned int **this, AudioBufferList **a2)
{
  if (this)
  {
    v3 = *this;
    if (v3)
    {
      v4 = *v3;
      if (v4)
      {
        v5 = 0;
        v6 = 4;
        do
        {
          if (*&v3[v6])
          {
            free(*&v3[v6]);
            v3 = *this;
            v4 = **this;
          }

          ++v5;
          v6 += 4;
        }

        while (v5 < v4);
      }

      free(v3);
      *this = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 56))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::deque<std::shared_ptr<ADAM::BufferNodeMsg>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ADAM::releaseADAMDeviceInfo(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 56))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

double ADAM::Analyzer::PCMBuffer::hardReset(ADAM::Analyzer::PCMBuffer *this)
{
  v15 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v3 = *ADAM::ADAMLogScope(void)::scope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 23);
    v9 = 136315650;
    v10 = "PCMBuffer.cpp";
    v11 = 1024;
    v12 = 187;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d hard reset pcm buffer for session %llx", &v9, 0x1Cu);
  }

LABEL_10:
  v6 = *(this + 15);
  *(this + 112) = 0;
  if (v6)
  {
    ADAM::releaseAudioBufferList(this + 15, v2);
  }

  *(this + 15) = 0;
  strcpy(this + 184, "don!dis!");
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 97) = 0u;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<ADAM::Sequencer::init(void)::$_0 &&>>(ADAM::AudioDataAnalysisManager *a1)
{
  v1 = ***a1;
  ADAM::AudioDataAnalysisManager::instance(a1);
  *(v1 + 40) = &ADAM::AudioDataAnalysisManager::instance(void)::gAdam;
  atomic_store(0, (v1 + 16));
  std::thread::thread<void (ADAM::Sequencer::*)(void),ADAM::Sequencer*,0>();
}

void sub_296C538C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ADAM::Sequencer::generateRandomDataForWatch(ADAM::Sequencer *this, __n128 a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  a2.n128_u64[0] = 136315650;
  v13 = a2;
LABEL_2:
  ADAM::AudioDataAnalysisManager::instance(this);
  ADAM::AudioDataAnalysisManager::getServerDelegates(v14, 0x65766E64u);
  v4 = v14[0];
  v3 = v14[1];
  while (1)
  {
    if (v4 == v3)
    {
      sleep(2u);
      *buf = v14;
      std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_2;
    }

    WeakRetained = objc_loadWeakRetained(v4);
    v6 = [WeakRetained isActive:1702260324];

    if (v6)
    {
      break;
    }

LABEL_15:
    ++v4;
  }

  v7 = arc4random_uniform(0x59u);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  v8 = v7 + 33;
  if (ADAM::ADAMLogScope(void)::scope)
  {
    v9 = *ADAM::ADAMLogScope(void)::scope;
    if (!v9)
    {
LABEL_14:
      v11 = [MEMORY[0x29EDBA070] numberWithInt:{v8, *&v13}];
      v12 = objc_loadWeakRetained(v4);
      [v12 sendAudioSample:v11 withType:1702260324 metadata:0];

      goto LABEL_15;
    }
  }

  else
  {
    v10 = v2;
    v9 = v2;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = v13.n128_u32[0];
    *&buf[4] = "ADAMSequencer.cpp";
    v16 = 1024;
    v17 = 219;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ADAM generated a random number: %d", buf, 0x18u);
  }

  goto LABEL_14;
}

void sub_296C53AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        objc_destroyWeak(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void std::__throw_bad_any_cast[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = std::bad_any_cast::bad_any_cast(exception);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

std::bad_cast *std::bad_any_cast::bad_any_cast(std::bad_any_cast *this)
{
  result = std::bad_cast::bad_cast(this);
  result->__vftable = (MEMORY[0x29EDC95C8] + 16);
  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (ADAM::Sequencer::*)(void),ADAM::Sequencer*>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x29C260F00](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x29C260CE0]();
    MEMORY[0x29C260F00](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (ADAM::Sequencer::*)(void),ADAM::Sequencer*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (ADAM::Sequencer::*)(void),ADAM::Sequencer*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_296C53F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (ADAM::Sequencer::*)(void),ADAM::Sequencer*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ADAM::Sequencer::run(ADAM::Sequencer *this)
{
  v9 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v6 = "ADAMSequencer.cpp";
    v7 = 1024;
    v8 = 87;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Sequencer starts running", buf, 0x12u);
  }

LABEL_10:
  ADAM::Sequencer::run_impl(this);
  v4 = *MEMORY[0x29EDCA608];
}

id CALog::LogObjIfEnabled(id *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = MEMORY[0x29EDCA988];
    v2 = MEMORY[0x29EDCA988];
  }

  return v1;
}

void CAX4CCString::CAX4CCString(CAX4CCString *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *(this + 1) = v4;
  v5 = MEMORY[0x29EDCA600];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 5) = 39;
    *this = 39;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_296C54B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  v15 = v13;

  std::mutex::unlock((v14 + 24));
  objc_destroyWeak(&location);

  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_296C55578(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_296C56BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void ADAM::MediaExposureWriter::~MediaExposureWriter(ADAM::MediaExposureWriter *this)
{
  ADAM::MediaExposureWriter::~MediaExposureWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  v12 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1DEDC80;
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(this + 13) + 8);
  if (v3)
  {
    [v3 finishWithCompletion:&__block_literal_global];
  }

  objc_autoreleasePoolPop(v2);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "MediaExposureWriter.mm";
    v10 = 1024;
    v11 = 102;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d HAE writer destroyed", &v8, 0x12u);
  }

LABEL_12:
  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::unique_ptr<ADAM::MediaExposureWriter::HealthKitWriterInternalState>::reset[abi:ne200100](this + 13, 0);
  ADAM::Writer::~Writer(this);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296C56DFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

id **std::unique_ptr<ADAM::MediaExposureWriter::HealthKitWriterInternalState>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x29C260F00);
  }

  return result;
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t ADAM::MediaExposureWriter::write(uint64_t a1, float *a2, uint64_t a3)
{
  v81 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  SessionBundleIDs = ADAM::AudioDataAnalysisManager::fetchSessionBundleIDs(*(a1 + 8), (a1 + 48));
  if (SessionBundleIDs)
  {
    v7 = a2;
    v8 = a3;
    context = objc_autoreleasePoolPush();
    v9 = [objc_alloc(MEMORY[0x29EDBA050]) initWithString:&stru_2A1DEEE38];
    v10 = *(a1 + 48);
    if (*(a1 + 56) != v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (*(v10 + v11 + 23) < 0)
        {
          v13 = *(v10 + v11);
        }

        v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:?];
        [v9 appendString:v14];

        v10 = *(a1 + 48);
        v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v10) >> 3);
        if (v15 - 1 > v12)
        {
          [v9 appendString:{@", "}];
          v10 = *(a1 + 48);
          v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v10) >> 3);
        }

        ++v12;
        v11 += 24;
      }

      while (v15 > v12);
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    a3 = v8;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v16 = *ADAM::ADAMLogScope(void)::scope;
      a2 = v7;
      if (!v16)
      {
LABEL_18:
        [*(*(a1 + 104) + 24) setObject:v9 forKey:@"_HKPrivateMediaSourceBundleIdentifier"];

        objc_autoreleasePoolPop(context);
        goto LABEL_19;
      }
    }

    else
    {
      v16 = MEMORY[0x29EDCA988];
      v17 = MEMORY[0x29EDCA988];
      a2 = v7;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "MediaExposureWriter.mm";
      v75 = 1024;
      v76 = 191;
      v77 = 2112;
      v78 = v9;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d HAE Updated bundleIDs: %@", buf, 0x1Cu);
    }

    goto LABEL_18;
  }

LABEL_19:
  if (*(*(a1 + 104) + 16))
  {
    goto LABEL_20;
  }

  ADAM::AudioDataAnalysisManager::instance(SessionBundleIDs);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, *(a1 + 12));
  if (ClientSessionMananger)
  {
    v43 = ClientSessionMananger + 248;
  }

  else
  {
    v43 = 0;
  }

  if (ClientSessionMananger && *v43)
  {
    if (objc_opt_class())
    {
      v44 = objc_autoreleasePoolPush();
      v45 = [objc_alloc(MEMORY[0x29EDBAB38]) initWithName:*v43 manufacturer:*(v43 + 8) model:*(v43 + 16) hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:*(v43 + 24) UDIDeviceIdentifier:0];
      v46 = *(a1 + 104);
      v47 = *(v46 + 16);
      *(v46 + 16) = v45;

      if (*(v43 + 32))
      {
        v49 = 1;
      }

      else
      {
        v48 = [*(*(a1 + 104) + 16) manufacturer];
        v49 = [v48 isEqualToString:@"Apple Inc."];
      }

      *(*(a1 + 104) + 32) = v49;
      objc_autoreleasePoolPop(v44);
      if (*(*(a1 + 104) + 16))
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v57 = *ADAM::ADAMLogScope(void)::scope;
          if (!v57)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v57 = MEMORY[0x29EDCA988];
          v63 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(*(a1 + 104) + 16);
          *buf = 136315650;
          *&buf[4] = "MediaExposureWriter.mm";
          v75 = 1024;
          v76 = 168;
          v77 = 2112;
          v78 = v64;
          _os_log_impl(&dword_296C34000, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HAE HKDevice created: %@", buf, 0x1Cu);
        }

LABEL_20:
        v18 = *(a1 + 104);
        v19 = *(v18 + 48);
        if (!v19)
        {
          v20 = objc_alloc_init(MEMORY[0x29EDBFAC8]);
          v21 = [v20 getPreferenceFor:@"_ADAFPreferenceKeyHAENotificationIsMandatory"];
          v22 = *(a1 + 104);
          v23 = *(v22 + 48);
          *(v22 + 48) = v21;

          v24 = [*(*(a1 + 104) + 48) BOOLValue];
          if (v24)
          {
            ADAM::Parameters::instance(v24);
            CFPreferencesAppSynchronize(@"com.apple.coreaudio");
            (***(ADAM::Parameters::instance(void)::gParams + 176))(*(ADAM::Parameters::instance(void)::gParams + 176));
            if ([v20 shouldSufaceHAENotificationMigrationAlert])
            {
              dispatch_async(MEMORY[0x29EDCA578], &__block_literal_global_380);
            }
          }

          v18 = *(a1 + 104);
          v19 = *(v18 + 48);
        }

        if (ADAM::haeMeasurementEnabled(*(v18 + 32), [v19 BOOLValue]))
        {
          v25.n128_f32[0] = *a2;
          if (*a2 > 0.00000011921)
          {
            if (*(a1 + 112) || !objc_opt_class())
            {
LABEL_65:
              result = *(a1 + 72);
              if (result)
              {
                *(a1 + 72) = 0;
                (*(*result + 40))(result, v25);
                result = 0;
              }

              goto LABEL_93;
            }

            v26 = objc_autoreleasePoolPush();
            if (*(a3 + 8) <= ADAM::MediaExposureWriter::writeToHealthKit(ADAM::SPLData const*,ADAM::Metadata const&)::prevTimeStamp)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v33 = *ADAM::ADAMLogScope(void)::scope;
                if (!v33)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                v33 = MEMORY[0x29EDCA988];
                v66 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v67 = *(a3 + 8);
                *buf = 136315906;
                *&buf[4] = "MediaExposureWriter.mm";
                v75 = 1024;
                v76 = 208;
                v77 = 2048;
                v78 = ADAM::MediaExposureWriter::writeToHealthKit(ADAM::SPLData const*,ADAM::Metadata const&)::prevTimeStamp;
                v79 = 2048;
                v80 = v67;
                _os_log_impl(&dword_296C34000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d A out of order timestamp received for HAE: %llu (p) vs. %llu (c)", buf, 0x26u);
              }

LABEL_116:

LABEL_117:
              objc_autoreleasePoolPop(v26);
              goto LABEL_65;
            }

            ADAM::MediaExposureWriter::writeToHealthKit(ADAM::SPLData const*,ADAM::Metadata const&)::prevTimeStamp = *(a3 + 8);
            v27 = objc_alloc(MEMORY[0x29EDBAD00]);
            v28 = [MEMORY[0x29EDBA140] UUID];
            v29 = ADAM::getSampleDateInterval(*(a3 + 8), a2[4]);
            v30 = MEMORY[0x29EDBACF0];
            v31 = [MEMORY[0x29EDBAE58] unitFromString:@"dBASPL"];
            v32 = [v30 quantityWithUnit:v31 doubleValue:*a2];
            v33 = [v27 initWithIdentifier:v28 dateInterval:v29 quantity:v32 resumeContext:0];

            v34 = [*(*(a1 + 104) + 48) BOOLValue];
            if (v34)
            {
              ADAM::Parameters::instance(v34);
              Param = ADAM::Parameters::GetParamValue<BOOL>(0xBu);
              v36 = *(*(a1 + 104) + 24);
              v37 = [MEMORY[0x29EDBA070] numberWithBool:Param];
              [v36 setObject:v37 forKey:*MEMORY[0x29EDBAF20]];
            }

            if (ADAM::ADAMLogScope(void)::once != -1)
            {
              dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
            }

            if (ADAM::ADAMLogScope(void)::scope)
            {
              v38 = *ADAM::ADAMLogScope(void)::scope;
              if (!v38)
              {
LABEL_115:
                v70 = *(*(a1 + 104) + 8);
                *buf = v33;
                v71 = [MEMORY[0x29EDB8D80] arrayWithObjects:buf count:1];
                [v70 insertDatums:v71 device:*(*(a1 + 104) + 16) metadata:*(*(a1 + 104) + 24) completion:0];

                goto LABEL_116;
              }
            }

            else
            {
              v38 = MEMORY[0x29EDCA988];
              v68 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v69 = *(*(a1 + 104) + 24);
              *buf = 136315906;
              *&buf[4] = "MediaExposureWriter.mm";
              v75 = 1024;
              v76 = 228;
              v77 = 2112;
              v78 = v33;
              v79 = 2112;
              v80 = v69;
              _os_log_impl(&dword_296C34000, v38, OS_LOG_TYPE_INFO, "%25s:%-5d %@, metadata: %@", buf, 0x26u);
            }

            goto LABEL_115;
          }
        }

        v39 = ADAM::MediaExposureWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        v40 = ++ADAM::MediaExposureWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        if (v39)
        {
LABEL_62:
          if (v40 > 0x13)
          {
            v40 = 0;
          }

          ADAM::MediaExposureWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v40;
          goto LABEL_65;
        }

        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v41 = *ADAM::ADAMLogScope(void)::scope;
          if (!v41)
          {
LABEL_61:
            v40 = ADAM::MediaExposureWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
            goto LABEL_62;
          }
        }

        else
        {
          v41 = MEMORY[0x29EDCA988];
          v53 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *&v54 = *a2;
          *buf = 136315650;
          *&buf[4] = "MediaExposureWriter.mm";
          v75 = 1024;
          v76 = 131;
          v77 = 2048;
          v78 = v54;
          _os_log_impl(&dword_296C34000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HAE writing to healthkit disabled or zero-db value %f", buf, 0x1Cu);
        }

        goto LABEL_61;
      }

      v58 = ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
      v59 = ++ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
      if (v58)
      {
        goto LABEL_123;
      }

      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v60 = *ADAM::ADAMLogScope(void)::scope;
        if (!v60)
        {
LABEL_122:
          v59 = ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
LABEL_123:
          if (v59 > 0x1D)
          {
            v59 = 0;
          }

          ADAM::MediaExposureWriter::createHKDevice(void)::errCnt = v59;
          result = 560232035;
          goto LABEL_93;
        }
      }

      else
      {
        v60 = MEMORY[0x29EDCA988];
        v72 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "MediaExposureWriter.mm";
        v75 = 1024;
        v76 = 170;
        _os_log_impl(&dword_296C34000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d HAE Device failed to be created", buf, 0x12u);
      }

      goto LABEL_122;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v56 = *ADAM::ADAMLogScope(void)::scope;
      if (!v56)
      {
LABEL_102:
        result = 0xFFFFFFFFLL;
        goto LABEL_93;
      }
    }

    else
    {
      v56 = MEMORY[0x29EDCA988];
      v65 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "MediaExposureWriter.mm";
      v75 = 1024;
      v76 = 148;
      _os_log_impl(&dword_296C34000, v56, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HAE HKDevice cannot be created: HealthKit is not available", buf, 0x12u);
    }

    goto LABEL_102;
  }

  v50 = ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
  v51 = ++ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
  if (!v50)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v52 = *ADAM::ADAMLogScope(void)::scope;
      if (!v52)
      {
LABEL_89:
        v51 = ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
        goto LABEL_90;
      }
    }

    else
    {
      v52 = MEMORY[0x29EDCA988];
      v61 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MediaExposureWriter.mm";
      v75 = 1024;
      v76 = 144;
      _os_log_impl(&dword_296C34000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d HAE Device information must be valid", buf, 0x12u);
    }

    goto LABEL_89;
  }

LABEL_90:
  if (v51 > 0x1D)
  {
    v51 = 0;
  }

  ADAM::MediaExposureWriter::createHKDevice(void)::errCnt = v51;
  result = 560555629;
LABEL_93:
  v62 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZNK4ADAM19MediaExposureWriter21surfaceMigrationAlertEv_block_invoke()
{
  v34[2] = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v0 = *ADAM::ADAMLogScope(void)::scope;
    if (!v0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
    v1 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "MediaExposureWriter.mm";
    v29 = 1024;
    v30 = 350;
    _os_log_impl(&dword_296C34000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d surfacing migration alert...", buf, 0x12u);
  }

LABEL_10:
  v2 = objc_alloc_init(MEMORY[0x29EDBFAC8]);
  [v2 didSurfaceMigrationAlert];

  v26 = 0;
  v4 = ADAM::LocalizationUtilityGetBundle(v3);
  v5 = [v4 localizedStringForKey:@"MigrationAlertTitle" value:&stru_2A1DEEE38 table:0];
  v6 = ADAM::LocalizationUtilityGetBundle(v5);
  v7 = [v6 localizedStringForKey:@"MigrationAlertMessage" value:&stru_2A1DEEE38 table:0];
  v8 = ADAM::LocalizationUtilityGetBundle(v7);
  v9 = [v8 localizedStringForKey:@"MigrationAlertButtonOK" value:&stru_2A1DEEE38 table:0];
  v10 = ADAM::LocalizationUtilityGetBundle(v9);
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, v5, v7, v9, [v10 localizedStringForKey:@"MigrationAlertButtonSettings" value:&stru_2A1DEEE38 table:0], 0, &v26);

  v11 = v26;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (v11)
  {
    if (v11 == 1)
    {
      if (ADAM::ADAMLogScope(void)::scope)
      {
        v12 = *ADAM::ADAMLogScope(void)::scope;
        if (!v12)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v12 = MEMORY[0x29EDCA988];
        v14 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "MediaExposureWriter.mm";
        v29 = 1024;
        v30 = 366;
        _os_log_impl(&dword_296C34000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Migration Alert -> Settings", buf, 0x12u);
      }

LABEL_27:
      v15 = *MEMORY[0x29EDC1190];
      v33[0] = *MEMORY[0x29EDC1198];
      v33[1] = v15;
      v34[0] = MEMORY[0x29EDB8EB0];
      v34[1] = MEMORY[0x29EDB8EB0];
      v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
      v16 = [MEMORY[0x29EDB8E70] URLWithString:*MEMORY[0x29EDC14F0]];
      v17 = [MEMORY[0x29EDB9400] defaultWorkspace];
      v25 = 0;
      [v17 openSensitiveURL:v16 withOptions:v13 error:&v25];
      v18 = v25;

      if (v18)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v19 = *ADAM::ADAMLogScope(void)::scope;
          if (!v19)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v19 = MEMORY[0x29EDCA988];
          v23 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v28 = "MediaExposureWriter.mm";
          v29 = 1024;
          v30 = 376;
          v31 = 2112;
          v32 = v18;
          _os_log_impl(&dword_296C34000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to open settings because %@", buf, 0x1Cu);
        }
      }

LABEL_44:

      goto LABEL_45;
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v13 = *ADAM::ADAMLogScope(void)::scope;
      if (!v13)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = MEMORY[0x29EDCA988];
      v22 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315394;
    v28 = "MediaExposureWriter.mm";
    v29 = 1024;
    v30 = 384;
    v21 = "%25s:%-5d Migration Alert -> Unknown";
    goto LABEL_39;
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v13 = *ADAM::ADAMLogScope(void)::scope;
    if (!v13)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = MEMORY[0x29EDCA988];
    v20 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "MediaExposureWriter.mm";
    v29 = 1024;
    v30 = 381;
    v21 = "%25s:%-5d Migration Alert -> OK";
LABEL_39:
    _os_log_impl(&dword_296C34000, v13, OS_LOG_TYPE_DEFAULT, v21, buf, 0x12u);
  }

LABEL_45:

LABEL_46:
  v24 = *MEMORY[0x29EDCA608];
}

uint64_t ADAM::Writer::Writer(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *a1 = &unk_2A1DEE8D8;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v6;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return a1;
}