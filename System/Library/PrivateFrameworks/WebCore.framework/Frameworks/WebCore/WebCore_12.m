void webrtc::FindAllMatchingCodecs(std::string::size_type *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a2 + 39) < 0)
  {
    v4 = a2;
    std::string::__init_copy_ctor_external(&v27, *(a2 + 16), *(a2 + 24));
    a2 = v4;
  }

  else
  {
    v27 = *(a2 + 16);
  }

  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  v5 = *(a2 + 168);
  v6 = (a2 + 176);
  if (v5 != (a2 + 176))
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v28, v29, v5 + 4);
      v9 = v5[1];
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
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v6);
  }

  v30 = 0;
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    while (1)
    {
      if (*(v7 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *(v7 + 16), *(v7 + 24));
        v23 = 0;
        v24 = 0;
        v22 = &v23;
        v12 = *(v7 + 168);
        v13 = (v7 + 176);
        if (v12 == (v7 + 176))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = *(v7 + 16);
        v22 = &v23;
        v23 = 0;
        v24 = 0;
        v12 = *(v7 + 168);
        v13 = (v7 + 176);
        if (v12 == (v7 + 176))
        {
          goto LABEL_19;
        }
      }

      do
      {
        if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v22, &v23, &v20, &v19, v12 + 4))
        {
          operator new();
        }

        v16 = v12[1];
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
            v17 = v12[2];
            v11 = *v17 == v12;
            v12 = v17;
          }

          while (!v11);
        }

        v12 = v17;
      }

      while (v17 != v13);
LABEL_19:
      v25 = 0;
      webrtc::SdpVideoFormat::IsSameCodec(&v27, &v21);
      v15 = v14;
      if (v25)
      {
        operator delete(__p);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v22, v23);
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_21:
          if (v15)
          {
            goto LABEL_35;
          }

          goto LABEL_14;
        }
      }

      else
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v22, v23);
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }
      }

      operator delete(v21.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_35:
        v21.__r_.__value_.__r.__words[0] = v7;
        std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v21);
      }

LABEL_14:
      v7 += 216;
      if (v7 == v8)
      {
        if (v30)
        {
          operator delete(v31);
        }

        break;
      }
    }
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v28, v29[0]);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void webrtc::AddH264ConstrainedBaselineProfileToSupportedFormats(webrtc::SdpVideoFormat ***a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    goto LABEL_59;
  }

  v5 = v38 <= "profile-level-id" && &v38[2] > "profile-level-id";
  if (&__p <= "profile-level-id" && &__p.__r_.__value_.__r.__words[2] > "profile-level-id")
  {
    while (1)
    {
      v36 = *(v2 + 23);
      if (v36 < 0)
      {
        if (v2[1] == 4)
        {
          v37 = *v2;
LABEL_70:
          if (*v37 == *"H264")
          {
LABEL_77:
            __break(1u);
          }
        }
      }

      else
      {
        v37 = v2;
        if (v36 == 4)
        {
          goto LABEL_70;
        }
      }

      v2 += 12;
      if (v2 == v1)
      {
        goto LABEL_59;
      }
    }
  }

  v6 = -v2;
  do
  {
    v7 = *(v2 + 23);
    if (v7 < 0)
    {
      if (v2[1] != 4 || **v2 != *"H264")
      {
        goto LABEL_13;
      }
    }

    else if (v7 != 4 || *v2 != *"H264")
    {
      goto LABEL_13;
    }

    *(&__p.__r_.__value_.__s + 23) = 16;
    strcpy(&__p, "profile-level-id");
    v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((v2 + 3), &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v8;
      operator delete(__p.__r_.__value_.__l.__data_);
      v8 = v10;
      if (v2 + 4 == v10)
      {
        goto LABEL_13;
      }
    }

    else if (v2 + 4 == v8)
    {
      goto LABEL_13;
    }

    v11 = (v8 + 7);
    if (*(v8 + 79) < 0)
    {
      v11 = *v11;
    }

    v12 = webrtc::ParseH264ProfileLevelId(v11, v9);
    if (v13)
    {
      v14 = HIDWORD(v12);
      if (v12)
      {
        webrtc::SdpVideoFormat::SdpVideoFormat(&__p, v2);
        v42[1] = v14;
        v42[0] = 0;
        webrtc::H264ProfileLevelIdToString(v42, v39);
        if ((v41 & 1) == 0)
        {
          goto LABEL_77;
        }

        HIBYTE(v38[2]) = 16;
        if (v5)
        {
          goto LABEL_77;
        }

        strcpy(v38, "profile-level-id");
        v46 = v38;
        v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48, v38);
        v16 = v15;
        if (*(v15 + 79) < 0)
        {
          operator delete(v15[7]);
        }

        *(v16 + 7) = *v39;
        v16[9] = v40;
        HIBYTE(v40) = 0;
        LOBYTE(v39[0]) = 0;
        if (SHIBYTE(v38[2]) < 0)
        {
          operator delete(v38[0]);
          if (v41 == 1 && SHIBYTE(v40) < 0)
          {
            operator delete(v39[0]);
          }
        }

        if (v44 >= v45)
        {
          std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat const&>(&v43);
        }

        if (!v44)
        {
          goto LABEL_77;
        }

        v44 = webrtc::SdpVideoFormat::SdpVideoFormat(v44, &__p) + 4;
        if (v49)
        {
          operator delete(v50);
        }

        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v48, v48[1]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

LABEL_13:
    v2 += 12;
    v6 -= 96;
  }

  while (v2 != a1[1]);
  v17 = v43;
  v18 = v44;
  if (v43 != v44)
  {
    v19 = -v6 - *a1;
    do
    {
      v21 = *a1;
      v20 = a1[1];
      if (v20 == *a1)
      {
        v22 = 0;
      }

      else
      {
        v22 = *a1;
      }

      if (v20 != *a1)
      {
        v23 = (v22 + v20 - *a1);
        do
        {
          webrtc::SdpVideoFormat::IsSameCodec(v17, v21);
          if (v24)
          {
            goto LABEL_44;
          }

          v21 += 12;
        }

        while (v21 != v23);
        v20 = a1[1];
      }

      if (v20 >= a1[2])
      {
        std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat const&>(a1);
      }

      if (!v20)
      {
        goto LABEL_77;
      }

      a1[1] = &webrtc::SdpVideoFormat::SdpVideoFormat(v20, v17)[4];
LABEL_44:
      v17 += 12;
    }

    while (v17 != v18);
    if (a1[1] - *a1 > v19 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec.cc");
    }
  }

LABEL_59:
  v32 = v43;
  if (v43)
  {
    v33 = v44;
    v34 = v43;
    if (v44 != v43)
    {
      do
      {
        while (1)
        {
          if (v33[-2].__r_.__value_.__s.__data_[0])
          {
            operator delete(v33[-2].__r_.__value_.__l.__size_);
          }

          p_data = &v33[-4].__r_.__value_.__l.__data_;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v33[-3], v33[-3].__r_.__value_.__l.__size_);
          if (SHIBYTE(v33[-4].__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          v33 -= 4;
          if (p_data == v32)
          {
            goto LABEL_67;
          }
        }

        operator delete(*p_data);
        v33 -= 4;
      }

      while (p_data != v32);
LABEL_67:
      v34 = v43;
    }

    v44 = v32;
    operator delete(v34);
  }
}

void *std::vector<webrtc::FeedbackParam>::vector[abi:sn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void std::vector<webrtc::FeedbackParam>::__assign_with_size[abi:sn200100]<webrtc::FeedbackParam*,webrtc::FeedbackParam*>(void ***a1, void **a2, void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
  {
    if (!v8)
    {
      goto LABEL_68;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_67:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_68:
      if (a4 <= 0x555555555555555)
      {
        v45 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
        v46 = 2 * v45;
        if (2 * v45 <= a4)
        {
          v46 = a4;
        }

        if (v45 >= 0x2AAAAAAAAAAAAAALL)
        {
          v47 = 0x555555555555555;
        }

        else
        {
          v47 = v46;
        }

        if (v47 <= 0x555555555555555)
        {
          operator new();
        }
      }

LABEL_98:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
LABEL_10:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
          goto LABEL_10;
        }
      }

      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        goto LABEL_67;
      }
    }
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v30 = 0;
      while (1)
      {
        if (v5 != v8)
        {
          v34 = &v8[v30];
          v35 = &v5[v30];
          v36 = HIBYTE(v5[v30 + 2]);
          if (SHIBYTE(v8[v30 + 2]) < 0)
          {
            if (v36 >= 0)
            {
              v42 = &v5[v30];
            }

            else
            {
              v42 = v5[v30];
            }

            if (v36 >= 0)
            {
              v43 = HIBYTE(v5[v30 + 2]);
            }

            else
            {
              v43 = v5[v30 + 1];
            }

            std::string::__assign_no_alias<false>(v34, v42, v43);
            v38 = &v8[v30];
            v39 = &v5[v30];
            v40 = &v5[v30 + 3];
            v41 = HIBYTE(v5[v30 + 5]);
            if (SHIBYTE(v8[v30 + 5]) < 0)
            {
LABEL_41:
              v31 = v39[4];
              if ((v41 & 0x80u) == 0)
              {
                v32 = v40;
              }

              else
              {
                v32 = *v40;
              }

              if ((v41 & 0x80u) == 0)
              {
                v33 = v41;
              }

              else
              {
                v33 = v31;
              }

              std::string::__assign_no_alias<false>(v38 + 1, v32, v33);
              goto LABEL_48;
            }
          }

          else if ((HIBYTE(v5[v30 + 2]) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v34, v5[v30], v5[v30 + 1]);
            v38 = &v8[v30];
            v39 = &v5[v30];
            v40 = &v5[v30 + 3];
            v41 = HIBYTE(v5[v30 + 5]);
            if (SHIBYTE(v8[v30 + 5]) < 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v37 = *v35;
            v34->__r_.__value_.__r.__words[2] = v35[2];
            *&v34->__r_.__value_.__l.__data_ = v37;
            v38 = &v8[v30];
            v39 = &v5[v30];
            v40 = &v5[v30 + 3];
            v41 = HIBYTE(v5[v30 + 5]);
            if (SHIBYTE(v8[v30 + 5]) < 0)
            {
              goto LABEL_41;
            }
          }

          if ((v41 & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(&v38[1], *v40, v5[v30 + 4]);
          }

          else
          {
            v44 = *v40;
            v38[1].__r_.__value_.__r.__words[2] = *(v40 + 16);
            *&v38[1].__r_.__value_.__l.__data_ = v44;
          }
        }

LABEL_48:
        v30 += 6;
        if (&v5[v30] == a3)
        {
          v13 = a1[1];
          v8 = (v8 + v30 * 8);
          break;
        }
      }
    }

    if (v13 == v8)
    {
LABEL_90:
      a1[1] = v8;
      return;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v56 = v13 - 6;
        if (*(v13 - 25) < 0)
        {
LABEL_96:
          operator delete(*v56);
        }
      }

      else
      {
        v56 = v13 - 6;
        if (*(v13 - 25) < 0)
        {
          goto LABEL_96;
        }
      }

      v13 = v56;
      if (v56 == v8)
      {
        goto LABEL_90;
      }
    }
  }

  if (v13 == v8)
  {
    goto LABEL_77;
  }

  v15 = 0;
  do
  {
    if (v5 == v8)
    {
      goto LABEL_21;
    }

    v19 = &v8[v15 / 8];
    v20 = &v5[v15 / 8];
    v21 = HIBYTE(v5[v15 / 8 + 2]);
    if (SHIBYTE(v8[v15 / 8 + 2]) < 0)
    {
      if (v21 >= 0)
      {
        v27 = &v5[v15 / 8];
      }

      else
      {
        v27 = v5[v15 / 8];
      }

      if (v21 >= 0)
      {
        v28 = HIBYTE(v5[v15 / 8 + 2]);
      }

      else
      {
        v28 = v5[v15 / 8 + 1];
      }

      std::string::__assign_no_alias<false>(v19, v27, v28);
      v23 = &v8[v15 / 8];
      v24 = &v5[v15 / 8];
      v25 = &v5[v15 / 8 + 3];
      v26 = HIBYTE(v5[v15 / 8 + 5]);
      if ((SHIBYTE(v8[v15 / 8 + 5]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((v26 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&v23[1], *v25, v5[v15 / 8 + 4]);
        }

        else
        {
          v29 = *v25;
          v23[1].__r_.__value_.__r.__words[2] = *(v25 + 16);
          *&v23[1].__r_.__value_.__l.__data_ = v29;
        }

        goto LABEL_21;
      }
    }

    else if ((HIBYTE(v5[v15 / 8 + 2]) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v19, v5[v15 / 8], v5[v15 / 8 + 1]);
      v23 = &v8[v15 / 8];
      v24 = &v5[v15 / 8];
      v25 = &v5[v15 / 8 + 3];
      v26 = HIBYTE(v5[v15 / 8 + 5]);
      if ((SHIBYTE(v8[v15 / 8 + 5]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 = *v20;
      v19->__r_.__value_.__r.__words[2] = v20[2];
      *&v19->__r_.__value_.__l.__data_ = v22;
      v23 = &v8[v15 / 8];
      v24 = &v5[v15 / 8];
      v25 = &v5[v15 / 8 + 3];
      v26 = HIBYTE(v5[v15 / 8 + 5]);
      if ((SHIBYTE(v8[v15 / 8 + 5]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    v16 = v24[4];
    if ((v26 & 0x80u) == 0)
    {
      v17 = v25;
    }

    else
    {
      v17 = *v25;
    }

    if ((v26 & 0x80u) == 0)
    {
      v18 = v26;
    }

    else
    {
      v18 = v16;
    }

    std::string::__assign_no_alias<false>(v23 + 1, v17, v18);
LABEL_21:
    v15 += 48;
  }

  while (v14 != v15);
  v13 = a1[1];
  v5 = (v5 + v14);
LABEL_77:
  v48 = v13;
  if (v5 == a3)
  {
    goto LABEL_87;
  }

  v49 = 0;
  while (2)
  {
    while (2)
    {
      v50 = &v13[v49];
      if (!&v13[v49])
      {
        __break(1u);
        goto LABEL_98;
      }

      v51 = &v5[v49];
      if ((SHIBYTE(v5[v49 + 2]) & 0x80000000) == 0)
      {
        v52 = *v51;
        v50->__r_.__value_.__r.__words[2] = v51[2];
        *&v50->__r_.__value_.__l.__data_ = v52;
        v53 = &v13[v49];
        v54 = &v5[v49];
        if ((SHIBYTE(v5[v49 + 5]) & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_79;
      }

      std::string::__init_copy_ctor_external(v50, v5[v49], v5[v49 + 1]);
      v53 = &v13[v49];
      v54 = &v5[v49];
      if (SHIBYTE(v5[v49 + 5]) < 0)
      {
LABEL_79:
        std::string::__init_copy_ctor_external(v53 + 1, v54[3], v54[4]);
        v49 += 6;
        if (&v5[v49] == a3)
        {
          goto LABEL_86;
        }

        continue;
      }

      break;
    }

    v55 = *(v54 + 3);
    v53[1].__r_.__value_.__r.__words[2] = v54[5];
    *&v53[1].__r_.__value_.__l.__data_ = v55;
    v49 += 6;
    if (&v5[v49] != a3)
    {
      continue;
    }

    break;
  }

LABEL_86:
  v48 = &v13[v49];
LABEL_87:
  a1[1] = v48;
}

void std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat const&>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) + 1;
  if (v1 <= 0x2AAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
    {
      v2 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

unint64_t *absl::inlined_vector_internal::Storage<webrtc::ScalabilityMode,34ul,std::allocator<webrtc::ScalabilityMode>>::InitFrom(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (v2)
    {
      operator new();
    }

    result = memcpy(result + 1, a2 + 1, v2 >> 1);
    *v4 = *a2;
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void webrtc::MatchesWithCodecRules(webrtc *this, const webrtc::Codec *a2, const webrtc::Codec *a3)
{
  v3 = *(this + 3);
  v5 = (v3 - 35) < 0x1F || (v3 & 0xFFFFFFE0) == 96;
  v6 = *(a2 + 3);
  v8 = ((v6 - 35) < 0x1F || (v6 & 0xFFFFFFE0) == 96) && v5;
  if (v6 != -1 && v3 != -1 && !v8)
  {
    if (v3 != v6)
    {
      return;
    }

    goto LABEL_38;
  }

  v11 = this + 16;
  if (*(this + 39) >= 0)
  {
    v12 = *(this + 39);
  }

  else
  {
    v11 = *(this + 2);
    v12 = *(this + 3);
  }

  v13 = a2 + 16;
  if (*(a2 + 39) >= 0)
  {
    v14 = *(a2 + 39);
  }

  else
  {
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
  }

  if (v12 == v14)
  {
    if (!v12)
    {
LABEL_38:
      v19 = *(this + 2);
      if (v19 == 1)
      {
      }

      return;
    }

    while (1)
    {
      v16 = *v11++;
      v15 = v16;
      v18 = *v13++;
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

      if (!--v12)
      {
        goto LABEL_38;
      }
    }
  }
}

uint64_t webrtc::MatchesWithReferenceAttributes(webrtc *this, const webrtc::Codec *a2, const webrtc::Codec *a3)
{
  v8 = absl::internal_any_invocable::LocalInvoker<false,BOOL,webrtc::MatchesWithReferenceAttributes(webrtc::Codec const&,webrtc::Codec const&)::$_0 &,int,int>;
  v7 = absl::internal_any_invocable::LocalManagerTrivial;
  v4 = v3;
  v7(1, v6, v6);
  return v4;
}

void webrtc::anonymous namespace::MatchesWithReferenceAttributesAndComparator(webrtc *a1, const webrtc::Codec *a2, const webrtc::Codec *a3)
{
  webrtc::MatchesWithCodecRules(a1, a2, a3);
  if (v6)
  {
    ResiliencyType = webrtc::Codec::GetResiliencyType(a1);
    if (ResiliencyType != 1)
    {
      if (ResiliencyType != 4)
      {
        return;
      }

      v42 = 3;
      if (v41 > "apt" || v41 + 3 <= "apt")
      {
        LOWORD(v41[0]) = *"apt";
        WORD1(v41[0]) = webrtc::kCodecParamAssociatedPayloadType[2];
        v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, v41);
        if ((a1 + 176) == v9 || ((v10 = *(v9 + 79), (v10 & 0x8000000000000000) != 0) ? (v19 = v9, v11 = v9[7], v10 = v19[8]) : (v11 = (v9 + 7)), (v20 = webrtc::string_to_number_internal::ParseSigned(v11, v10, 0xAuLL), (v21 & ((v20 + 0x80000000) >> 32 == 0)) == 0) ? (v22 = 0) : (v22 = v20 | 0x100000000), !HIDWORD(v22)))
        {
          v22 = 0;
          v26 = 0;
          v27 = 1;
          if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_41;
        }

        v40 = 3;
        if (__p > "apt" || __p + 3 <= "apt")
        {
          LOWORD(__p[0]) = *"apt";
          WORD1(__p[0]) = webrtc::kCodecParamAssociatedPayloadType[2];
          v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2 + 168, __p);
          if ((a2 + 176) == v23)
          {
            v26 = 0;
            v27 = 1;
          }

          else
          {
            v24 = *(v23 + 79);
            if ((v24 & 0x8000000000000000) != 0)
            {
              v28 = v23;
              v25 = v23[7];
              v24 = v28[8];
            }

            else
            {
              v25 = (v23 + 7);
            }

            v29 = webrtc::string_to_number_internal::ParseSigned(v25, v24, 0xAuLL);
            if ((v30 & ((v29 + 0x80000000) >> 32 == 0)) != 0)
            {
              v31 = v29 | 0x100000000;
            }

            else
            {
              v31 = 0;
            }

            v27 = HIDWORD(v31) == 0;
            if (v31 <= 0x100000000)
            {
              v26 = 0x100000000;
            }

            else
            {
              v26 = v31;
            }
          }

          if (v40 < 0)
          {
            operator delete(__p[0]);
            if ((v42 & 0x80000000) == 0)
            {
LABEL_54:
              if (v27)
              {
LABEL_55:
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                {
                  webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec_comparators.cc");
                }

                return;
              }

LABEL_42:
              (*(a3 + 3))(a3, v22, v26);
              return;
            }
          }

          else if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

LABEL_41:
          operator delete(v41[0]);
          if (v27)
          {
            goto LABEL_55;
          }

          goto LABEL_42;
        }
      }

      __break(1u);
      abort();
    }

    v42 = 0;
    LOBYTE(v41[0]) = 0;
    v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, v41);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    v42 = 0;
    LOBYTE(v41[0]) = 0;
    v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2 + 168, v41);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    v14 = (a2 + 176);
    if (*(a2 + 3) != -1 || v14 != v13)
    {
      v15 = (a1 + 176);
      if ((*(a1 + 3) != -1 || v15 != v12) && v15 != v12 && v14 != v13)
      {
        v16 = v12 + 7;
        v17 = *(v12 + 79);
        if (v17 < 0)
        {
          v16 = v12[7];
          v17 = v12[8];
        }

        if (v17)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*(v16 + i) == 47)
            {
              operator new();
            }
          }
        }

        operator new();
      }
    }
  }
}

webrtc::Codec *webrtc::FindMatchingCodec@<X0>(webrtc::Codec *result@<X0>, const webrtc::Codec **a2@<X1>, webrtc *a3@<X2>, webrtc::Codec *a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
LABEL_5:
    v12 = 0;
    *a4 = 0;
  }

  else
  {
    v9 = result;
    while (1)
    {
      v13[0] = v9;
      v13[1] = a2;
      v15 = absl::internal_any_invocable::LocalInvoker<false,BOOL,webrtc::FindMatchingCodec(std::vector<webrtc::Codec> const&,std::vector<webrtc::Codec> const&,webrtc::Codec const&)::$_1 &,int,int>;
      v14 = absl::internal_any_invocable::LocalManagerTrivial;
      v11 = v10;
      result = (v14)(1, v13, v13);
      if (v11)
      {
        break;
      }

      v5 = (v5 + 216);
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    result = webrtc::Codec::Codec(a4, v5);
    v12 = 1;
  }

  *(a4 + 216) = v12;
  return result;
}

uint64_t webrtc::IsSameRtpCodec(webrtc *this, const webrtc::Codec *a2, const webrtc::RtpCodec *a3)
{
  (*(*this + 16))(&v20);
  v4 = *(a2 + 1);
  v5 = *(a2 + 31);
  if (v5 < 0)
  {
    v5 = *(a2 + 2);
  }

  else
  {
    v4 = a2 + 8;
  }

  v6 = v22;
  if ((v22 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = v21[0];
  }

  if ((v22 & 0x80u) != 0)
  {
    v6 = v21[1];
  }

  if (v5 != v6)
  {
    goto LABEL_32;
  }

  if (v5)
  {
    do
    {
      v11 = *v4++;
      v10 = v11;
      v13 = *v7;
      v7 = (v7 + 1);
      v12 = v13;
      if (v10 != v13)
      {
        if ((v10 - 65) < 0x1A)
        {
          LOBYTE(v10) = v10 + 32;
        }

        if ((v12 - 65) < 0x1A)
        {
          LOBYTE(v12) = v12 + 32;
        }

        if (v10 != v12)
        {
          goto LABEL_32;
        }
      }
    }

    while (--v5);
  }

  if (*(a2 + 8) != v23)
  {
    goto LABEL_32;
  }

  v8 = *(a2 + 48);
  if (v8 != 1 || v27 == 0)
  {
    if (v8 == v27)
    {
      goto LABEL_28;
    }

LABEL_32:
    v16 = 0;
    goto LABEL_33;
  }

  if (*(a2 + 11) != v26)
  {
    goto LABEL_32;
  }

LABEL_28:
  v14 = *(a2 + 40);
  v15 = v25;
  if (v14 == 1 && v25)
  {
    v14 = *(a2 + 9);
    v15 = v24;
  }

  if (v14 != v15)
  {
    goto LABEL_32;
  }

  v16 = std::operator==[abi:sn200100]<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string const,std::string>>>(v19, v18);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v18, v18[1]);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v19, v19[1]);
LABEL_33:
  v20 = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v30, v30[1]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  return v16;
}

void webrtc::anonymous namespace::InsertDefaultParams(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v83[2] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v8 = a3 + 1;
  v7 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, v6, v7 + 4);
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      v7 = v19;
    }

    while (v19 != v8);
  }

  v9 = a2[23];
  if ((v9 & 0x80u) == 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 1);
  }

  if (v9 == 3)
  {
    v11 = *v10;
    v12 = webrtc::kVp9CodecName;
    if (v11 == webrtc::kVp9CodecName)
    {
      goto LABEL_14;
    }

    if ((v11 - 65) < 0x1A)
    {
      LOBYTE(v11) = v11 + 32;
    }

    if (webrtc::kVp9CodecName - 65 < 0x1A)
    {
      v12 = webrtc::kVp9CodecName + 32;
    }

    if (v11 == v12)
    {
LABEL_14:
      v13 = v10[1];
      v14 = HIBYTE(webrtc::kVp9CodecName);
      if (v13 == HIBYTE(webrtc::kVp9CodecName))
      {
        goto LABEL_24;
      }

      if ((v13 - 65) < 0x1A)
      {
        LOBYTE(v13) = v13 + 32;
      }

      if (HIBYTE(webrtc::kVp9CodecName) - 65 < 0x1A)
      {
        v14 = HIBYTE(webrtc::kVp9CodecName) + 32;
      }

      if (v13 == v14)
      {
LABEL_24:
        v15 = v10[2];
        if (v15 == 57 || ((v15 - 65) >= 0x1A ? (v16 = v10[2]) : (v16 = v15 + 32), v16 == 57))
        {
          __p[23] = 10;
          if (__p <= "profile-id" && &__p[10] > "profile-id")
          {
            goto LABEL_265;
          }

          strcpy(__p, "profile-id");
          v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
          if ((__p[23] & 0x80000000) != 0)
          {
            v21 = v17;
            operator delete(*__p);
            if (v8 != v21)
            {
              goto LABEL_54;
            }
          }

          else if (v8 != v17)
          {
            goto LABEL_54;
          }

          *&__p[8] = 0;
          *&__p[16] = 0;
          *__p = &__p[8];
          v22 = webrtc::ParseSdpForVP9Profile(__p);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__p, *&__p[8]);
          if ((v22 & 0x100000000) != 0)
          {
            *(&v82.__r_.__value_.__s + 23) = 1;
            if (v22 > 1)
            {
              if (v22 == 2)
              {
                v23 = "2";
                v24 = 50;
LABEL_47:
                if (&v82 <= v23 && &v82.__r_.__value_.__l.__data_ + 1 > v23)
                {
                  goto LABEL_265;
                }

                LOWORD(v82.__r_.__value_.__l.__data_) = v24;
                __p[23] = 10;
                if (__p <= "profile-id" && &__p[10] > "profile-id")
                {
                  goto LABEL_265;
                }

                strcpy(__p, "profile-id");
                v81 = v82;
                memset(&v82, 0, sizeof(v82));
                std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
                if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v81.__r_.__value_.__l.__data_);
                  if ((__p[23] & 0x80000000) == 0)
                  {
LABEL_53:
                    if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_54;
                    }

LABEL_229:
                    operator delete(v82.__r_.__value_.__l.__data_);
                    goto LABEL_54;
                  }
                }

                else if ((__p[23] & 0x80000000) == 0)
                {
                  goto LABEL_53;
                }

                operator delete(*__p);
                if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_54;
                }

                goto LABEL_229;
              }

              if (v22 == 3)
              {
                v23 = "3";
                v24 = 51;
                goto LABEL_47;
              }
            }

            else if (v22 == 1)
            {
              v23 = "1";
              v24 = 49;
              goto LABEL_47;
            }

            v23 = "0";
            v24 = 48;
            goto LABEL_47;
          }
        }
      }
    }
  }

LABEL_54:
  v25 = a2[23];
  if ((v25 & 0x80u) == 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = *a2;
  }

  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a2 + 1);
  }

  if (v25 == 3)
  {
    v27 = *v26;
    v28 = webrtc::kAv1CodecName;
    if (v27 == webrtc::kAv1CodecName)
    {
      goto LABEL_66;
    }

    if ((v27 - 65) < 0x1A)
    {
      LOBYTE(v27) = v27 + 32;
    }

    if (webrtc::kAv1CodecName - 65 < 0x1A)
    {
      v28 = webrtc::kAv1CodecName + 32;
    }

    if (v27 == v28)
    {
LABEL_66:
      v29 = v26[1];
      v30 = HIBYTE(webrtc::kAv1CodecName);
      if (v29 == HIBYTE(webrtc::kAv1CodecName))
      {
        goto LABEL_76;
      }

      if ((v29 - 65) < 0x1A)
      {
        LOBYTE(v29) = v29 + 32;
      }

      if (HIBYTE(webrtc::kAv1CodecName) - 65 < 0x1A)
      {
        v30 = HIBYTE(webrtc::kAv1CodecName) + 32;
      }

      if (v29 == v30)
      {
LABEL_76:
        v31 = v26[2];
        if (v31 == 49 || ((v31 - 65) >= 0x1A ? (v32 = v26[2]) : (v32 = v31 + 32), v32 == 49))
        {
          __p[23] = 7;
          if (__p <= "profile" && &__p[7] > "profile")
          {
            goto LABEL_265;
          }

          strcpy(__p, "profile");
          v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
          v34 = v33;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (v8 != v34)
            {
              goto LABEL_92;
            }
          }

          else if (v8 != v33)
          {
            goto LABEL_92;
          }

          *&__p[8] = 0;
          *&__p[16] = 0;
          *__p = &__p[8];
          v35 = webrtc::ParseSdpForAV1Profile(__p);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__p, *&__p[8]);
          if ((v35 & 0x100000000) != 0)
          {
            v36 = "0";
            if (v35 == 1)
            {
              v36 = "1";
            }

            if (v35 == 2)
            {
              v36 = "2";
            }

            v82.__r_.__value_.__r.__words[0] = v36;
            std::pair<std::string const,std::string>::pair[abi:sn200100]<char const(&)[],char const*,0>(__p, "profile", &v82.__r_.__value_.__l.__data_);
            std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
            }

            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

LABEL_92:
          __p[23] = 4;
          if (__p <= "tier" && &__p[4] > "tier")
          {
            goto LABEL_265;
          }

          strcpy(__p, "tier");
          v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
          v38 = v37;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (v8 == v38)
            {
LABEL_98:
              v78 = 0;
              v79 = 0;
              v77 = &v78;
              __p[23] = 4;
              if (__p <= "tier" && &__p[4] > "tier")
              {
                goto LABEL_265;
              }

              strcpy(__p, "tier");
              v81 = v82;
              memset(&v82, 0, sizeof(v82));
              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
              if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v81.__r_.__value_.__l.__data_);
                if ((__p[23] & 0x80000000) == 0)
                {
LABEL_102:
                  if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_103:
                    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v77, v78);
                    goto LABEL_104;
                  }

LABEL_220:
                  operator delete(v82.__r_.__value_.__l.__data_);
                  goto LABEL_103;
                }
              }

              else if ((__p[23] & 0x80000000) == 0)
              {
                goto LABEL_102;
              }

              operator delete(*__p);
              if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_103;
              }

              goto LABEL_220;
            }
          }

          else if (v8 == v37)
          {
            goto LABEL_98;
          }

LABEL_104:
          __p[23] = 9;
          if (__p <= "level-idx" && &__p[9] > "level-idx")
          {
            goto LABEL_265;
          }

          *__p = *"level-idx";
          *&__p[8] = webrtc::kAv1FmtpLevelIdx[8];
          v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
          v40 = v39;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (v8 != v40)
            {
              goto LABEL_116;
            }
          }

          else if (v8 != v39)
          {
            goto LABEL_116;
          }

          v78 = 0;
          v79 = 0;
          v77 = &v78;
          __p[23] = 9;
          if (__p <= "level-idx" && &__p[9] > "level-idx")
          {
            goto LABEL_265;
          }

          *__p = *"level-idx";
          *&__p[8] = webrtc::kAv1FmtpLevelIdx[8];
          v81 = v82;
          memset(&v82, 0, sizeof(v82));
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
            if ((__p[23] & 0x80000000) == 0)
            {
LABEL_114:
              if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_115:
                std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v77, v78);
                goto LABEL_116;
              }

LABEL_223:
              operator delete(v82.__r_.__value_.__l.__data_);
              goto LABEL_115;
            }
          }

          else if ((__p[23] & 0x80000000) == 0)
          {
            goto LABEL_114;
          }

          operator delete(*__p);
          if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_115;
          }

          goto LABEL_223;
        }
      }
    }
  }

LABEL_116:
  v41 = a2[23];
  if ((v41 & 0x80u) == 0)
  {
    v42 = a2;
  }

  else
  {
    v42 = *a2;
  }

  if ((v41 & 0x80u) != 0)
  {
    v41 = *(a2 + 1);
  }

  if (v41 == 4)
  {
    v43 = *v42;
    v44 = webrtc::kH264CodecName[0];
    if (v43 == webrtc::kH264CodecName[0])
    {
      goto LABEL_128;
    }

    if ((v43 - 65) < 0x1A)
    {
      LOBYTE(v43) = v43 + 32;
    }

    if (webrtc::kH264CodecName[0] - 65 < 0x1A)
    {
      v44 = webrtc::kH264CodecName[0] + 32;
    }

    if (v43 == v44)
    {
LABEL_128:
      v45 = v42[1];
      v46 = webrtc::kH264CodecName[1];
      if (v45 == webrtc::kH264CodecName[1])
      {
        goto LABEL_146;
      }

      if ((v45 - 65) < 0x1A)
      {
        LOBYTE(v45) = v45 + 32;
      }

      if (webrtc::kH264CodecName[1] - 65 < 0x1A)
      {
        v46 = webrtc::kH264CodecName[1] + 32;
      }

      if (v45 == v46)
      {
LABEL_146:
        v47 = v42[2];
        v48 = webrtc::kH264CodecName[2];
        if (v47 == webrtc::kH264CodecName[2])
        {
          goto LABEL_268;
        }

        if ((v47 - 65) < 0x1A)
        {
          LOBYTE(v47) = v47 + 32;
        }

        if (webrtc::kH264CodecName[2] - 65 < 0x1A)
        {
          v48 = webrtc::kH264CodecName[2] + 32;
        }

        if (v47 == v48)
        {
LABEL_268:
          v49 = v42[3];
          v50 = webrtc::kH264CodecName[3];
          if (v49 == webrtc::kH264CodecName[3])
          {
            goto LABEL_147;
          }

          if ((v49 - 65) >= 0x1A)
          {
            v51 = v49;
          }

          else
          {
            v51 = v49 + 32;
          }

          if (webrtc::kH264CodecName[3] - 65 < 0x1A)
          {
            v50 = webrtc::kH264CodecName[3] + 32;
          }

          if (v51 == v50)
          {
LABEL_147:
            __p[23] = 18;
            if (__p <= "packetization-mode" && &__p[18] > "packetization-mode")
            {
              goto LABEL_265;
            }

            strcpy(__p, "packetization-mode");
            v52 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
            v53 = v52;
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
              if (v8 != v53)
              {
                goto LABEL_159;
              }
            }

            else if (v8 != v52)
            {
              goto LABEL_159;
            }

            v78 = 0;
            v79 = 0;
            v77 = &v78;
            __p[23] = 18;
            if (__p <= "packetization-mode" && &__p[18] > "packetization-mode")
            {
              goto LABEL_265;
            }

            strcpy(__p, "packetization-mode");
            v81 = v82;
            memset(&v82, 0, sizeof(v82));
            std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
              if ((__p[23] & 0x80000000) == 0)
              {
LABEL_157:
                if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_158:
                  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v77, v78);
                  goto LABEL_159;
                }

LABEL_226:
                operator delete(v82.__r_.__value_.__l.__data_);
                goto LABEL_158;
              }
            }

            else if ((__p[23] & 0x80000000) == 0)
            {
              goto LABEL_157;
            }

            operator delete(*__p);
            if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_158;
            }

            goto LABEL_226;
          }
        }
      }
    }
  }

LABEL_159:
  v54 = a2[23];
  if ((v54 & 0x80u) == 0)
  {
    v55 = a2;
  }

  else
  {
    v55 = *a2;
  }

  if ((v54 & 0x80u) != 0)
  {
    v54 = *(a2 + 1);
  }

  if (v54 == 4)
  {
    v56 = *v55;
    v57 = webrtc::kH265CodecName[0];
    if (v56 == webrtc::kH265CodecName[0])
    {
      goto LABEL_171;
    }

    if ((v56 - 65) < 0x1A)
    {
      LOBYTE(v56) = v56 + 32;
    }

    if (webrtc::kH265CodecName[0] - 65 < 0x1A)
    {
      v57 = webrtc::kH265CodecName[0] + 32;
    }

    if (v56 == v57)
    {
LABEL_171:
      v58 = v55[1];
      v59 = webrtc::kH265CodecName[1];
      if (v58 == webrtc::kH265CodecName[1])
      {
        goto LABEL_189;
      }

      if ((v58 - 65) < 0x1A)
      {
        LOBYTE(v58) = v58 + 32;
      }

      if (webrtc::kH265CodecName[1] - 65 < 0x1A)
      {
        v59 = webrtc::kH265CodecName[1] + 32;
      }

      if (v58 == v59)
      {
LABEL_189:
        v60 = v55[2];
        v61 = webrtc::kH265CodecName[2];
        if (v60 == webrtc::kH265CodecName[2])
        {
          goto LABEL_269;
        }

        if ((v60 - 65) < 0x1A)
        {
          LOBYTE(v60) = v60 + 32;
        }

        if (webrtc::kH265CodecName[2] - 65 < 0x1A)
        {
          v61 = webrtc::kH265CodecName[2] + 32;
        }

        if (v60 == v61)
        {
LABEL_269:
          v62 = v55[3];
          v63 = webrtc::kH265CodecName[3];
          if (v62 == webrtc::kH265CodecName[3])
          {
            goto LABEL_190;
          }

          if ((v62 - 65) >= 0x1A)
          {
            v64 = v62;
          }

          else
          {
            v64 = v62 + 32;
          }

          if (webrtc::kH265CodecName[3] - 65 < 0x1A)
          {
            v63 = webrtc::kH265CodecName[3] + 32;
          }

          if (v64 == v63)
          {
LABEL_190:
            *&__p[8] = 0;
            *&__p[16] = 0;
            *__p = &__p[8];
            webrtc::ParseSdpForH265ProfileTierLevel(__p);
            v66 = v65;
            v68 = v67;
            std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__p, *&__p[8]);
            if ((v68 & 0x100000000) == 0)
            {
              goto LABEL_238;
            }

            __p[23] = 10;
            if (__p <= "profile-id" && &__p[10] > "profile-id")
            {
              goto LABEL_265;
            }

            strcpy(__p, "profile-id");
            v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            if (v8 != v69)
            {
LABEL_201:
              __p[23] = 8;
              if (__p <= "level-id" && &__p[8] > "level-id")
              {
                goto LABEL_265;
              }

              strcpy(__p, "level-id");
              v70 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              if (v8 != v70)
              {
LABEL_211:
                __p[23] = 9;
                if (__p <= "tier-flag" && &__p[9] > "tier-flag")
                {
                  goto LABEL_265;
                }

                *__p = *"tier-flag";
                *&__p[8] = webrtc::kH265FmtpTierFlag[8];
                v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
                if ((__p[23] & 0x80000000) != 0)
                {
                  v72 = v71;
                  operator delete(*__p);
                  v71 = v72;
                }

                if (v8 == v71)
                {
                  *(&v82.__r_.__value_.__s + 23) = 1;
                  if (HIDWORD(v66))
                  {
                    v73 = "1";
                    v74 = 49;
                  }

                  else
                  {
                    v73 = "0";
                    v74 = 48;
                  }

                  if (&v82 <= v73 && &v82.__r_.__value_.__l.__data_ + 1 > v73)
                  {
                    goto LABEL_265;
                  }

                  LOWORD(v82.__r_.__value_.__l.__data_) = v74;
                  __p[23] = 9;
                  if (__p <= "tier-flag" && &__p[9] > "tier-flag")
                  {
                    goto LABEL_265;
                  }

                  *__p = *"tier-flag";
                  *&__p[8] = webrtc::kH265FmtpTierFlag[8];
                  v81 = v82;
                  memset(&v82, 0, sizeof(v82));
                  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
                  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v81.__r_.__value_.__l.__data_);
                    if ((__p[23] & 0x80000000) == 0)
                    {
LABEL_237:
                      if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_238;
                      }

LABEL_263:
                      operator delete(v82.__r_.__value_.__l.__data_);
                      __p[23] = 7;
                      if (__p <= "tx-mode")
                      {
LABEL_239:
                        if (&__p[7] > "tx-mode")
                        {
                          goto LABEL_265;
                        }
                      }

LABEL_240:
                      strcpy(__p, "tx-mode");
                      v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, __p);
                      v76 = v75;
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                        if (v8 != v76)
                        {
                          return;
                        }
                      }

                      else if (v8 != v75)
                      {
                        return;
                      }

                      v78 = 0;
                      v79 = 0;
                      v77 = &v78;
                      if (__p > "tx-mode" || &__p[7] <= "tx-mode")
                      {
                        *(&v82.__r_.__value_.__s + 23) = 4;
                        if (&v82 > "SRST" || v82.__r_.__value_.__r.__words + 4 <= "SRST")
                        {
                          strcpy(&v82, "SRST");
                          v83[0] = v82.__r_.__value_.__l.__size_;
                          *(v83 + 7) = *(&v82.__r_.__value_.__r.__words[1] + 7);
                          __p[23] = 7;
                          if (__p > "tx-mode" || &__p[7] <= "tx-mode")
                          {
                            strcpy(__p, "tx-mode");
                            v81.__r_.__value_.__r.__words[0] = v82.__r_.__value_.__r.__words[0];
                            v81.__r_.__value_.__l.__size_ = v83[0];
                            *(&v81.__r_.__value_.__r.__words[1] + 7) = *(v83 + 7);
                            *(&v81.__r_.__value_.__s + 23) = *(&v82.__r_.__value_.__s + 23);
                            v83[0] = 0;
                            *(v83 + 7) = 0;
                            std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
                            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v81.__r_.__value_.__l.__data_);
                            }

                            if ((__p[23] & 0x80000000) != 0)
                            {
                              operator delete(*__p);
                            }

                            std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v77, v78);
                            return;
                          }
                        }
                      }

LABEL_265:
                      __break(1u);
                      return;
                    }
                  }

                  else if ((__p[23] & 0x80000000) == 0)
                  {
                    goto LABEL_237;
                  }

                  operator delete(*__p);
                  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_263;
                  }
                }

LABEL_238:
                __p[23] = 7;
                if (__p <= "tx-mode")
                {
                  goto LABEL_239;
                }

                goto LABEL_240;
              }

              webrtc::H265LevelToString(v68, &v82);
              __p[23] = 8;
              if (__p <= "level-id" && &__p[8] > "level-id")
              {
                goto LABEL_265;
              }

              strcpy(__p, "level-id");
              v81 = v82;
              memset(&v82, 0, sizeof(v82));
              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
              if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v81.__r_.__value_.__l.__data_);
                if ((__p[23] & 0x80000000) == 0)
                {
LABEL_210:
                  if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_211;
                  }

LABEL_260:
                  operator delete(v82.__r_.__value_.__l.__data_);
                  goto LABEL_211;
                }
              }

              else if ((__p[23] & 0x80000000) == 0)
              {
                goto LABEL_210;
              }

              operator delete(*__p);
              if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_211;
              }

              goto LABEL_260;
            }

            webrtc::H265ProfileToString(v66, &v82);
            __p[23] = 10;
            if (__p <= "profile-id" && &__p[10] > "profile-id")
            {
              goto LABEL_265;
            }

            strcpy(__p, "profile-id");
            v81 = v82;
            memset(&v82, 0, sizeof(v82));
            std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a1, __p);
            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
              if ((__p[23] & 0x80000000) == 0)
              {
LABEL_200:
                if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_201;
                }

LABEL_257:
                operator delete(v82.__r_.__value_.__l.__data_);
                goto LABEL_201;
              }
            }

            else if ((__p[23] & 0x80000000) == 0)
            {
              goto LABEL_200;
            }

            operator delete(*__p);
            if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_201;
            }

            goto LABEL_257;
          }
        }
      }
    }
  }
}

uint64_t webrtc::IsSameRtpCodecIgnoringLevel(webrtc *this, const webrtc::Codec *a2, const webrtc::RtpCodec *a3)
{
  (*(*this + 16))(&v24);
  v4 = *(a2 + 1);
  v5 = *(a2 + 31);
  if (v5 < 0)
  {
    v5 = *(a2 + 2);
  }

  else
  {
    v4 = a2 + 8;
  }

  v6 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v7 = v25;
  }

  else
  {
    v7 = v25[0];
  }

  if ((v26 & 0x80u) != 0)
  {
    v6 = v25[1];
  }

  if (v5 != v6)
  {
    goto LABEL_32;
  }

  if (v5)
  {
    do
    {
      v11 = *v4++;
      v10 = v11;
      v13 = *v7;
      v7 = (v7 + 1);
      v12 = v13;
      if (v10 != v13)
      {
        if ((v10 - 65) < 0x1A)
        {
          LOBYTE(v10) = v10 + 32;
        }

        if ((v12 - 65) < 0x1A)
        {
          LOBYTE(v12) = v12 + 32;
        }

        if (v10 != v12)
        {
          goto LABEL_32;
        }
      }
    }

    while (--v5);
  }

  if (*(a2 + 8) != v27)
  {
    goto LABEL_32;
  }

  v8 = *(a2 + 48);
  if (v8 != 1 || v31 == 0)
  {
    if (v8 == v31)
    {
      goto LABEL_28;
    }

LABEL_32:
    v16 = 0;
    goto LABEL_33;
  }

  if (*(a2 + 11) != v30)
  {
    goto LABEL_32;
  }

LABEL_28:
  v14 = *(a2 + 40);
  v15 = v29;
  if (v14 == 1 && v29)
  {
    v14 = *(a2 + 9);
    v15 = v28;
  }

  if (v14 != v15)
  {
    goto LABEL_32;
  }

  v18 = *(a2 + 8);
  if (v18 == 1)
  {
    if (webrtc::RtpCodec::IsResiliencyCodec(a2))
    {
LABEL_40:
      v18 = *(a2 + 8);
      goto LABEL_41;
    }

    v20 = *(a2 + 31);
    if (v20 < 0)
    {
      if (*(a2 + 2) != 2)
      {
        goto LABEL_51;
      }

      v21 = *(a2 + 1);
    }

    else
    {
      v21 = (a2 + 8);
      if (v20 != 2)
      {
        goto LABEL_51;
      }
    }

    if (*v21 == *"CN")
    {
      goto LABEL_40;
    }

LABEL_51:
    goto LABEL_52;
  }

LABEL_41:
  if (v18 || !std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, &webrtc::kRedCodecName))
  {
    v19 = std::operator==[abi:sn200100]<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string const,std::string>>>(v23, v22);
LABEL_52:
    v16 = v19;
    goto LABEL_53;
  }

  v16 = 1;
LABEL_53:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v22, v22[1]);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
LABEL_33:
  v24 = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v34, v34[1]);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return v16;
}

void webrtc::anonymous namespace::IsSameCodecSpecific(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56[23] = 4;
  if (v56 <= "H264" && &v56[4] > "H264")
  {
    goto LABEL_167;
  }

  strcpy(v56, "H264");
  v7 = *(a1 + 23);
  v8 = v7 < 0;
  if (v7 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 23);
  }

  if (v10 == 4)
  {
    v11 = *v9;
    if (v11 == 72)
    {
      goto LABEL_16;
    }

    if ((v11 - 65) < 0x1A)
    {
      LOBYTE(v11) = v11 + 32;
    }

    if (v11 == 104)
    {
LABEL_16:
      v12 = v9[1];
      if (v12 == 50)
      {
        goto LABEL_27;
      }

      if ((v12 - 65) < 0x1A)
      {
        LOBYTE(v12) = v12 + 32;
      }

      if (v12 == 50)
      {
LABEL_27:
        v13 = v9[2];
        if (v13 == 54)
        {
          goto LABEL_170;
        }

        if ((v13 - 65) < 0x1A)
        {
          LOBYTE(v13) = v13 + 32;
        }

        if (v13 == 54)
        {
LABEL_170:
          v14 = v9[3];
          if (v14 == 52)
          {
            goto LABEL_50;
          }

          if ((v14 - 65) < 0x1A)
          {
            LOBYTE(v14) = v14 + 32;
          }

          if (v14 == 52)
          {
            goto LABEL_50;
          }
        }
      }
    }
  }

  v15 = *(a3 + 23);
  if ((v15 & 0x80u) == 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 8);
  }

  if (v15 == 4)
  {
    v17 = *v16;
    if (v17 == 72)
    {
      goto LABEL_38;
    }

    if ((v17 - 65) < 0x1A)
    {
      LOBYTE(v17) = v17 + 32;
    }

    if (v17 == 104)
    {
LABEL_38:
      v18 = v16[1];
      if (v18 == 50)
      {
        goto LABEL_49;
      }

      if ((v18 - 65) < 0x1A)
      {
        LOBYTE(v18) = v18 + 32;
      }

      if (v18 == 50)
      {
LABEL_49:
        v19 = v16[2];
        if (v19 == 54)
        {
          goto LABEL_171;
        }

        if ((v19 - 65) < 0x1A)
        {
          LOBYTE(v19) = v19 + 32;
        }

        if (v19 == 54)
        {
LABEL_171:
          v20 = v16[3];
          if (v20 == 52)
          {
            goto LABEL_50;
          }

          if ((v20 - 65) < 0x1A)
          {
            LOBYTE(v20) = v20 + 32;
          }

          if (v20 == 52)
          {
LABEL_50:
            webrtc::H264IsSameProfile(a2, a4);
            if (!v21)
            {
              return;
            }

            v22 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
            if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v58.__r_.__value_.__l.__size_;
            }

            v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v24 = __p.__r_.__value_.__l.__size_;
            }

            if (size == v24)
            {
              if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v26 = &v58;
              }

              else
              {
                v26 = v58.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              memcmp(v26, p_p, size);
              if ((v25 & 0x80000000) == 0)
              {
                goto LABEL_142;
              }
            }

            else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_142;
            }

            goto LABEL_141;
          }
        }
      }
    }
  }

  v55[23] = 3;
  if (v55 <= &webrtc::kVp9CodecName && &v55[3] > &webrtc::kVp9CodecName)
  {
    goto LABEL_167;
  }

  strcpy(v55, "VP9");
  if (v10 == 3)
  {
    v28 = *v9;
    if (v28 == 86)
    {
      goto LABEL_72;
    }

    if ((v28 - 65) < 0x1A)
    {
      LOBYTE(v28) = v28 + 32;
    }

    if (v28 == 118)
    {
LABEL_72:
      v29 = v9[1];
      if (v29 == 80)
      {
        goto LABEL_79;
      }

      if ((v29 - 65) < 0x1A)
      {
        LOBYTE(v29) = v29 + 32;
      }

      if (v29 == 112)
      {
LABEL_79:
        v30 = v9[2];
        if (v30 == 57)
        {
          goto LABEL_93;
        }

        if ((v30 - 65) < 0x1A)
        {
          LOBYTE(v30) = v30 + 32;
        }

        if (v30 == 57)
        {
          goto LABEL_93;
        }
      }
    }
  }

  if (v15 == 3)
  {
    v31 = *v16;
    if (v31 == 86)
    {
      goto LABEL_85;
    }

    if ((v31 - 65) < 0x1A)
    {
      LOBYTE(v31) = v31 + 32;
    }

    if (v31 == 118)
    {
LABEL_85:
      v32 = v16[1];
      if (v32 == 80)
      {
        goto LABEL_92;
      }

      if ((v32 - 65) < 0x1A)
      {
        LOBYTE(v32) = v32 + 32;
      }

      if (v32 == 112)
      {
LABEL_92:
        v33 = v16[2];
        if (v33 == 57)
        {
          goto LABEL_93;
        }

        if ((v33 - 65) < 0x1A)
        {
          LOBYTE(v33) = v33 + 32;
        }

        if (v33 == 57)
        {
LABEL_93:
          webrtc::ParseSdpForVP9Profile(a2);
          webrtc::ParseSdpForVP9Profile(a4);
          return;
        }
      }
    }
  }

  v54[23] = 3;
  if (v54 <= &webrtc::kAv1CodecName && &v54[3] > &webrtc::kAv1CodecName)
  {
LABEL_167:
    __break(1u);
    return;
  }

  strcpy(v54, "AV1");
  if (v10 == 3)
  {
    v34 = *v9;
    if (v34 == 65)
    {
      goto LABEL_101;
    }

    if ((v34 - 65) < 0x1A)
    {
      LOBYTE(v34) = v34 + 32;
    }

    if (v34 == 97)
    {
LABEL_101:
      v35 = v9[1];
      if (v35 == 86)
      {
        goto LABEL_108;
      }

      if ((v35 - 65) < 0x1A)
      {
        LOBYTE(v35) = v35 + 32;
      }

      if (v35 == 118)
      {
LABEL_108:
        v36 = v9[2];
        if (v36 == 49)
        {
          goto LABEL_124;
        }

        if ((v36 - 65) < 0x1A)
        {
          LOBYTE(v36) = v36 + 32;
        }

        if (v36 == 49)
        {
          goto LABEL_124;
        }
      }
    }
  }

  if (v15 == 3)
  {
    v37 = *v16;
    if (v37 == 65)
    {
      goto LABEL_114;
    }

    if ((v37 - 65) < 0x1A)
    {
      LOBYTE(v37) = v37 + 32;
    }

    if (v37 == 97)
    {
LABEL_114:
      v38 = v16[1];
      if (v38 == 86)
      {
        goto LABEL_121;
      }

      if ((v38 - 65) < 0x1A)
      {
        LOBYTE(v38) = v38 + 32;
      }

      if (v38 == 118)
      {
LABEL_121:
        v39 = v16[2];
        if (v39 == 49)
        {
          goto LABEL_124;
        }

        if ((v39 - 65) < 0x1A)
        {
          LOBYTE(v39) = v39 + 32;
        }

        if (v39 == 49)
        {
LABEL_124:
          v40 = webrtc::ParseSdpForAV1Profile(a2);
          v41 = webrtc::ParseSdpForAV1Profile(a4);
          if ((v40 & 0x100000000) != 0 && (v41 & 0x100000000) != 0 && v40 == v41)
          {
            v42 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
            if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v43 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v43 = v58.__r_.__value_.__l.__size_;
            }

            v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v45 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v44 = __p.__r_.__value_.__l.__size_;
            }

            if (v43 == v44)
            {
              if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v46 = &v58;
              }

              else
              {
                v46 = v58.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v47 = &__p;
              }

              else
              {
                v47 = __p.__r_.__value_.__r.__words[0];
              }

              v48 = memcmp(v46, v47, v43) == 0;
              if ((v45 & 0x80000000) == 0)
              {
LABEL_147:
                if (v42 < 0)
                {
                  operator delete(v58.__r_.__value_.__l.__data_);
                  if (!v48)
                  {
                    return;
                  }
                }

                else if (!v48)
                {
                  return;
                }

                v22 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
                if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v49 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v49 = v58.__r_.__value_.__l.__size_;
                }

                v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                v51 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v50 = __p.__r_.__value_.__l.__size_;
                }

                if (v49 == v50)
                {
                  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v52 = &v58;
                  }

                  else
                  {
                    v52 = v58.__r_.__value_.__r.__words[0];
                  }

                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v53 = &__p;
                  }

                  else
                  {
                    v53 = __p.__r_.__value_.__r.__words[0];
                  }

                  memcmp(v52, v53, v49);
                  if ((v51 & 0x80000000) == 0)
                  {
                    goto LABEL_142;
                  }
                }

                else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_142:
                  if (v22 < 0)
                  {
                    operator delete(v58.__r_.__value_.__l.__data_);
                  }

                  return;
                }

LABEL_141:
                operator delete(__p.__r_.__value_.__l.__data_);
                v22 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
                goto LABEL_142;
              }
            }

            else
            {
              v48 = 0;
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_147;
              }
            }

            operator delete(__p.__r_.__value_.__l.__data_);
            v42 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
            goto LABEL_147;
          }
        }
      }
    }
  }
}

BOOL std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  if (!__s)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 != -1)
    {
      a1 = *a1;
      return memcmp(a1, __s, v4) == 0;
    }

LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return 0;
}

void webrtc::anonymous namespace::AV1GetTierOrDefault(std::string *a1, uint64_t a2)
{
  v10 = 4;
  v2 = v9 <= "tier" && v9 + 4 > "tier";
  if (v2 || (strcpy(v9, "tier"), HIBYTE(v8) = 1, __p <= "0") && __p + 1 > "0")
  {
    __break(1u);
    return;
  }

  LOWORD(__p[0]) = 48;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, v9);
  if ((a2 + 8) != v5)
  {
    if (*(v5 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(a1, v5[7], v5[8]);
      if ((SHIBYTE(v8) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = *(v5 + 7);
      a1->__r_.__value_.__r.__words[2] = v5[9];
      *&a1->__r_.__value_.__l.__data_ = v6;
      if ((SHIBYTE(v8) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    *&a1->__r_.__value_.__l.__data_ = *__p;
    a1->__r_.__value_.__r.__words[2] = v8;
    goto LABEL_15;
  }

  std::string::__init_copy_ctor_external(a1, __p[0], __p[1]);
  if (SHIBYTE(v8) < 0)
  {
LABEL_14:
    operator delete(__p[0]);
  }

LABEL_15:
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void webrtc::anonymous namespace::AV1GetLevelIdxOrDefault(std::string *a1, uint64_t a2)
{
  v10 = 9;
  v2 = v9 <= "level-idx" && &v9[1] + 1 > "level-idx";
  if (v2 || (strcpy(v9, "level-idx"), HIBYTE(v8) = 1, __p <= "5") && __p + 1 > "5")
  {
    __break(1u);
    return;
  }

  LOWORD(__p[0]) = 53;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, v9);
  if ((a2 + 8) != v5)
  {
    if (*(v5 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(a1, v5[7], v5[8]);
      if ((SHIBYTE(v8) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = *(v5 + 7);
      a1->__r_.__value_.__r.__words[2] = v5[9];
      *&a1->__r_.__value_.__l.__data_ = v6;
      if ((SHIBYTE(v8) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    *&a1->__r_.__value_.__l.__data_ = *__p;
    a1->__r_.__value_.__r.__words[2] = v8;
    goto LABEL_15;
  }

  std::string::__init_copy_ctor_external(a1, __p[0], __p[1]);
  if (SHIBYTE(v8) < 0)
  {
LABEL_14:
    operator delete(__p[0]);
  }

LABEL_15:
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void webrtc::anonymous namespace::H264GetPacketizationModeOrDefault(std::string *a1, uint64_t a2)
{
  HIBYTE(v9[2]) = 18;
  v2 = v9 <= "packetization-mode" && &v9[2] + 2 > "packetization-mode";
  if (v2 || (strcpy(v9, "packetization-mode"), HIBYTE(v8) = 1, __p <= "0") && __p + 1 > "0")
  {
    __break(1u);
    return;
  }

  LOWORD(__p[0]) = 48;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, v9);
  if ((a2 + 8) != v5)
  {
    if (*(v5 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(a1, v5[7], v5[8]);
      if ((SHIBYTE(v8) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = *(v5 + 7);
      a1->__r_.__value_.__r.__words[2] = v5[9];
      *&a1->__r_.__value_.__l.__data_ = v6;
      if ((SHIBYTE(v8) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    *&a1->__r_.__value_.__l.__data_ = *__p;
    a1->__r_.__value_.__r.__words[2] = v8;
    goto LABEL_15;
  }

  std::string::__init_copy_ctor_external(a1, __p[0], __p[1]);
  if (SHIBYTE(v8) < 0)
  {
LABEL_14:
    operator delete(__p[0]);
  }

LABEL_15:
  if (SHIBYTE(v9[2]) < 0)
  {
    operator delete(v9[0]);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = memcmp(v11, v4, v13);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return result;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

char *std::pair<std::string const,std::string>::pair[abi:sn200100]<char const(&)[],char const*,0>(char *a1, char *__s, const char **a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_22:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v6 > 0x16)
  {
    operator new();
  }

  a1[23] = v6;
  v7 = &a1[v6];
  if (a1 <= __s && v7 > __s)
  {
    goto LABEL_21;
  }

  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *v7 = 0;
  v9 = *a3;
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = strlen(v9);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_22;
  }

  if (v10 > 0x16)
  {
    operator new();
  }

  a1[47] = v10;
  v11 = &a1[v10 + 24];
  if (a1 + 24 <= v9 && v11 > v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10)
  {
    memmove(a1 + 24, v9, v10);
  }

  *v11 = 0;
  return a1;
}

void absl::internal_any_invocable::LocalInvoker<false,BOOL,webrtc::FindMatchingCodec(std::vector<webrtc::Codec> const&,std::vector<webrtc::Codec> const&,webrtc::Codec const&)::$_1 &,int,int>(webrtc ***a1, int a2, const webrtc::Codec *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = **a1;
  v6 = v4[1];
  if (v5 == v6)
  {
LABEL_4:
    v5 = 0;
  }

  else
  {
    while (*(v5 + 3) != a2)
    {
      v5 = (v5 + 216);
      if (v5 == v6)
      {
        goto LABEL_4;
      }
    }
  }

  v7 = *v3;
  v8 = v3[1];
  if (v7 != v8)
  {
    while (*(v7 + 3) != a3)
    {
      v7 = (v7 + 216);
      if (v7 == v8)
      {
        return;
      }
    }

    if (v5)
    {
      webrtc::MatchesWithCodecRules(v5, v7, a3);
    }
  }
}

void webrtc::CodecList::Create(webrtc::Codec **a1@<X0>, uint64_t a2@<X8>)
{
  v75[0] = 0;
  v75[1] = 0;
  v74 = v75;
  v5 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    v7 = 0;
    do
    {
      v3 = v5 + 216 * v7;
      v2 = *(v3 + 12);
      if (v2 != -1)
      {
        operator new();
      }

      ++v7;
    }

    while (v7 < 0x84BDA12F684BDA13 * ((v6 - v5) >> 3));
  }

  if (v5 == v6)
  {
LABEL_64:
    std::__tree<sigslot::_signal_base_interface *>::destroy(&v74, v75[0]);
    v57 = 0uLL;
    memset(&__p, 0, sizeof(__p));
    if (&__p == a1)
    {
      v58 = 0;
    }

    else
    {
      std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(&__p, *a1, a1[1], 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3));
      v57 = *&__p.__r_.__value_.__l.__data_;
      v58 = __p.__r_.__value_.__r.__words[2];
    }

    *a2 = 0;
    *(a2 + 38) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 29) = 0;
    *(a2 + 40) = v57;
    *(a2 + 56) = v58;
    *(a2 + 64) = 1;
  }

  else
  {
    if (&__p > "apt" || __p.__r_.__value_.__r.__words + 3 <= "apt")
    {
      while (1)
      {
        if (webrtc::Codec::GetResiliencyType(v5) == 4)
        {
          *(&__p.__r_.__value_.__s + 23) = 3;
          LOWORD(__p.__r_.__value_.__l.__data_) = *"apt";
          *&__p.__r_.__value_.__s.__data_[2] = webrtc::kCodecParamAssociatedPayloadType[2];
          v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v5 + 168, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v10 = (v5 + 176);
            if (*(v5 + 3) != -1)
            {
LABEL_16:
              if (v10 == v9)
              {
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                {
                  v3 = v3 & 0xFFFFFFFF00000000 | 0x22A;
                  v76 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec_list.cc";
                  v77 = v3;
                  v78 = &v69;
                  v71[0] = "Surprising condition: RTX codec without";
                  v71[1] = &v76;
                  v67 = " apt parameter: ";
                  v68 = v71;
                  webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(v5, &v70);
                  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__p, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
                    v27 = &v67;
                    v73 = &v67;
                    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v70.__r_.__value_.__l.__data_);
                      v27 = v73;
                    }
                  }

                  else
                  {
                    __p = v70;
                    v27 = &v67;
                    v73 = &v67;
                  }

                  webrtc::webrtc_logging_impl::Log("\r\t\t\n", v20, v21, v22, v23, v24, v25, v26, **(v27[1] + 1));
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }

              else
              {
                v11 = *(v9 + 79);
                if ((v11 & 0x8000000000000000) != 0)
                {
                  v12 = v9[7];
                  v11 = v9[8];
                }

                else
                {
                  v12 = (v9 + 7);
                }

                v28 = webrtc::string_to_number_internal::ParseSigned(v12, v11, 0xAuLL);
                if ((v29 & ((v28 + 0x80000000) >> 32 == 0)) != 0)
                {
                  v30 = v28 | 0x100000000;
                }

                else
                {
                  v30 = 0;
                }

                if ((v30 & 0x100000000) == 0)
                {
                  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                  {
                    v76 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec_list.cc";
                    v77 = 603;
                    v78 = v71;
                    v67 = "Non-numeric argument to rtx apt: ";
                    v68 = &v76;
                    webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(v5, &v70);
                    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&__p, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
                      v56 = &v67;
                      v73 = &v67;
                      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v70.__r_.__value_.__l.__data_);
                        v56 = v73;
                      }
                    }

                    else
                    {
                      __p = v70;
                      v56 = &v67;
                      v73 = &v67;
                    }

                    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v49, v50, v51, v52, v53, v54, v55, *v56[1]);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                  {
                    __p.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
                    __p.__r_.__value_.__l.__size_ = 17;
                    webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v59, v60, v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec_list.cc");
                  }

                  operator new();
                }

                if (*(v5 + 3) != -1)
                {
                  v31 = v75[0];
                  if (!v75[0])
                  {
LABEL_43:
                    if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                    {
                      v76 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec_list.cc";
                      v77 = 658;
                      v78 = v71;
                      v67 = "Surprising condition: RTX codec APT not found: ";
                      v68 = &v76;
                      webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(v5, &v70);
                      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&__p, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
                        v73 = &v67;
                        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v70.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        __p = v70;
                        v73 = &v67;
                      }

                      for (i = v75[0]; i; i = *i)
                      {
                        v41 = *(i + 7);
                        if (v41 <= v30)
                        {
                          if (v41 >= v30)
                          {
                            break;
                          }

                          ++i;
                        }
                      }

                      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v33, v34, v35, v36, v37, v38, v39, *v73[1]);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                    {
                      __p.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
                      __p.__r_.__value_.__l.__size_ = 17;
                      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec_list.cc");
                    }

                    operator new();
                  }

                  while (1)
                  {
                    v32 = *(v31 + 7);
                    if (v32 <= v30)
                    {
                      if (v32 >= v30)
                      {
                        goto LABEL_12;
                      }

                      ++v31;
                    }

                    v31 = *v31;
                    if (!v31)
                    {
                      goto LABEL_43;
                    }
                  }
                }
              }

              goto LABEL_12;
            }
          }

          else
          {
            v10 = (v5 + 176);
            if (*(v5 + 3) != -1)
            {
              goto LABEL_16;
            }
          }

          if (v10 != v9 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            v2 = v2 & 0xFFFFFFFF00000000 | 0x1F2;
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/codec_list.cc");
          }
        }

LABEL_12:
        v5 = (v5 + 216);
        if (v5 == v6)
        {
          goto LABEL_64;
        }
      }
    }

    while (webrtc::Codec::GetResiliencyType(v5) != 4)
    {
      v5 = (v5 + 216);
      if (v5 == v6)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
  }
}

void webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  p_p = &__p;
  webrtc::AbslStringify<absl::strings_internal::StringifySink>(&__p, a1);
  if (v10 >= 0)
  {
    v4 = HIBYTE(v10);
  }

  else
  {
    p_p = __p;
    v4 = v9;
  }

  if (p_p)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    goto LABEL_21;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_22;
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  a2[23] = v4;
  v6 = &a2[v4];
  if (a2 <= p_p && v6 > p_p)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v4)
  {
    memmove(a2, p_p, v4);
  }

  *v6 = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void webrtc::CodecVendor::GetNegotiatedCodecsForOffer(const webrtc::Codec **a1@<X0>, int *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v236 = *MEMORY[0x277D85DE8];
  v221 = 0;
  v222 = 0;
  v223 = 0;
  v12 = a2 + 2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, *(a2 + 1), *(a2 + 2));
    if (!a4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *&v220.__r_.__value_.__l.__data_ = *v12;
    v220.__r_.__value_.__r.__words[2] = *(a2 + 3);
    if (!a4)
    {
      goto LABEL_18;
    }
  }

  v13 = *(a4 + 31);
  if (v13 >= 0)
  {
    v14 = *(a4 + 31);
  }

  else
  {
    v14 = *(a4 + 16);
  }

  size = HIBYTE(v220.__r_.__value_.__r.__words[2]);
  if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v220.__r_.__value_.__l.__size_;
  }

  if (v14 != size)
  {
    goto LABEL_18;
  }

  v16 = v13 >= 0 ? (a4 + 8) : *(a4 + 8);
  v17 = (v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v220 : v220.__r_.__value_.__r.__words[0];
  if (memcmp(v16, v17, v14))
  {
    goto LABEL_18;
  }

  webrtc::CodecList::Create((*(a4 + 32) + 280), v229);
  v116 = v229[0];
  v195 = a3;
  if (LODWORD(v229[0]))
  {
    v117 = v229[2];
    *(a6 + 8) = v229[1];
    *(a6 + 16) = v117;
    *(a6 + 23) = *(&v229[2] + 7);
    LOBYTE(v117) = HIBYTE(v229[3]);
    memset(&v229[1], 0, 24);
    *(a6 + 32) = v230[0];
    *(a6 + 35) = *(v230 + 3);
    *a6 = v116;
    *(a6 + 31) = v117;
    *(a6 + 40) = 0;
    *(a6 + 64) = 0;
  }

  else
  {
    if ((v233 & 1) == 0)
    {
      goto LABEL_361;
    }

    if (v219 < 0)
    {
      operator delete(v218);
    }
  }

  if (v233 == 1)
  {
    v126 = v231;
    if (v231)
    {
      v127 = v231;
      if (*(&v231 + 1) != v231)
      {
        v190 = a5;
        v128 = *(&v231 + 1) - 216;
        v129 = *(&v231 + 1) - 216;
        v130 = (*(&v231 + 1) - 216);
        do
        {
          v131 = *v130;
          v130 -= 27;
          (*v131)(v129);
          v128 -= 216;
          v28 = v129 == v126;
          v129 = v130;
        }

        while (!v28);
        v127 = v231;
        a5 = v190;
      }

      *(&v231 + 1) = v126;
      operator delete(v127);
    }
  }

  if (SHIBYTE(v229[3]) < 0)
  {
    operator delete(v229[1]);
  }

  a3 = v195;
  if (!v116)
  {
LABEL_18:
    if (*a2)
    {
      webrtc::CodecVendor::all_video_codecs(v229, a1);
      if (v213 < 0)
      {
        operator delete(__p);
      }

      v18 = v229[0];
      if (!v229[0])
      {
        goto LABEL_36;
      }

      v19 = v229[0];
      if (v229[1] != v229[0])
      {
        v196 = a1;
        v20 = v12;
        v21 = a6;
        v22 = a3;
        v23 = a5;
        v24 = v229[1] - 216;
        v25 = v229[1] - 216;
        v26 = (v229[1] - 216);
        do
        {
          v27 = *v26;
          v26 -= 27;
          (*v27)(v25);
          v24 -= 216;
          v28 = v25 == v18;
          v25 = v26;
        }

        while (!v28);
        v19 = v229[0];
        a5 = v23;
        a3 = v22;
        a6 = v21;
        v12 = v20;
        a1 = v196;
      }
    }

    else
    {
      webrtc::CodecVendor::all_audio_codecs(v229, a1);
      if (v216 < 0)
      {
        operator delete(v215);
      }

      v18 = v229[0];
      if (!v229[0])
      {
        goto LABEL_36;
      }

      v19 = v229[0];
      if (v229[1] != v229[0])
      {
        v197 = a6;
        v29 = a3;
        v30 = a5;
        v31 = v229[1] - 216;
        v32 = v229[1] - 216;
        v33 = (v229[1] - 216);
        do
        {
          v34 = *v33;
          v33 -= 27;
          (*v34)(v32);
          v31 -= 216;
          v28 = v32 == v18;
          v32 = v33;
        }

        while (!v28);
        v19 = v229[0];
        a5 = v30;
        a3 = v29;
        a6 = v197;
      }
    }

    v229[1] = v18;
    operator delete(v19);
LABEL_36:
    v209 = 0uLL;
    v210 = 0;
    v35 = a2[8];
    if (*a2)
    {
      webrtc::CodecVendor::GetVideoCodecsForOffer(&v207, a1, v35);
      v36 = (a2 + 28);
      if (*(a2 + 14) != *(a2 + 15))
      {
        goto LABEL_38;
      }
    }

    else
    {
      webrtc::CodecVendor::GetAudioCodecsForOffer(&v207, a1, v35);
      v36 = (a2 + 28);
      if (*(a2 + 14) != *(a2 + 15))
      {
LABEL_38:
        webrtc::CodecList::Create(v36, v229);
        v41 = v229[0];
        if (LODWORD(v229[0]))
        {
          v42 = v229[2];
          *(a6 + 8) = v229[1];
          *(a6 + 16) = v42;
          *(a6 + 23) = *(&v229[2] + 7);
          LOBYTE(v42) = HIBYTE(v229[3]);
          memset(&v229[1], 0, 24);
          *(a6 + 32) = v230[0];
          *(a6 + 35) = *(v230 + 3);
          *a6 = v41;
          *(a6 + 31) = v42;
          *(a6 + 40) = 0;
          *(a6 + 64) = 0;
          if (v233 != 1)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if ((v233 & 1) == 0)
          {
            goto LABEL_361;
          }

          v53 = v231;
          v54 = v232;
          v232 = 0;
          v231 = 0uLL;
          v55 = v209;
          if (v209)
          {
            v198 = v53;
            v56 = v209;
            if (*(&v209 + 1) != v209)
            {
              v57 = *(&v209 + 1) - 216;
              v58 = *(&v209 + 1) - 216;
              v59 = (*(&v209 + 1) - 216);
              do
              {
                v60 = *v59;
                v59 -= 27;
                (*v60)(v58);
                v57 -= 216;
                v28 = v58 == v55;
                v58 = v59;
              }

              while (!v28);
              v56 = v209;
            }

            *(&v209 + 1) = v55;
            operator delete(v56);
            v53 = v198;
          }

          v209 = v53;
          v210 = v54;
          if (v233 != 1)
          {
LABEL_70:
            if (SHIBYTE(v229[3]) < 0)
            {
              operator delete(v229[1]);
              if (!v41)
              {
                goto LABEL_331;
              }
            }

            else if (!v41)
            {
LABEL_331:
              if (v201 < 0)
              {
                operator delete(v200);
              }

              *a6 = 0;
              *(a6 + 38) = 0;
              *(a6 + 16) = 0;
              *(a6 + 24) = 0;
              *(a6 + 8) = 0;
              *(a6 + 29) = 0;
              *(a6 + 48) = 0;
              *(a6 + 56) = 0;
              *(a6 + 40) = 0;
              if (*(&v209 + 1) != v209)
              {
                if (0x84BDA12F684BDA13 * ((*(&v209 + 1) - v209) >> 3) < 0x12F684BDA12F685)
                {
                  operator new();
                }

                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              *(a6 + 64) = 1;
            }

LABEL_337:
            v166 = v207;
            if (v207)
            {
              v167 = v207;
              if (v208 != v207)
              {
                v168 = v208 - 216;
                v169 = v208 - 216;
                v170 = (v208 - 216);
                do
                {
                  v171 = *v170;
                  v170 -= 27;
                  (*v171)(v169);
                  v168 -= 216;
                  v28 = v169 == v166;
                  v169 = v170;
                }

                while (!v28);
                v167 = v207;
              }

              v208 = v166;
              operator delete(v167);
            }

            v172 = v209;
            if (v209)
            {
              v173 = v209;
              if (*(&v209 + 1) != v209)
              {
                v174 = *(&v209 + 1) - 216;
                v175 = *(&v209 + 1) - 216;
                v176 = (*(&v209 + 1) - 216);
                do
                {
                  v177 = *v176;
                  v176 -= 27;
                  (*v177)(v175);
                  v174 -= 216;
                  v28 = v175 == v172;
                  v175 = v176;
                }

                while (!v28);
                v173 = v209;
              }

              *(&v209 + 1) = v172;
              operator delete(v173);
            }

            goto LABEL_351;
          }
        }

        v61 = v231;
        if (v231)
        {
          v62 = v231;
          if (*(&v231 + 1) != v231)
          {
            v63 = *(&v231 + 1) - 216;
            v64 = *(&v231 + 1) - 216;
            v65 = (*(&v231 + 1) - 216);
            do
            {
              v66 = *v65;
              v65 -= 27;
              (*v66)(v64);
              v63 -= 216;
              v28 = v64 == v61;
              v64 = v65;
            }

            while (!v28);
            v62 = v231;
          }

          *(&v231 + 1) = v61;
          operator delete(v62);
        }

        goto LABEL_70;
      }
    }

    v43 = *(a2 + 8);
    v44 = *(a2 + 9);
    if (v43 != v44)
    {
      v46 = v209;
      if (v209)
      {
        v47 = v209;
        if (*(&v209 + 1) != v209)
        {
          v48 = *(&v209 + 1) - 216;
          v49 = *(&v209 + 1) - 216;
          v50 = (*(&v209 + 1) - 216);
          do
          {
            v51 = *v50;
            v50 -= 27;
            (*v51)(v49);
            v48 -= 216;
            v28 = v49 == v46;
            v49 = v50;
          }

          while (!v28);
          v47 = v209;
        }

        *(&v209 + 1) = v46;
        operator delete(v47);
      }

      v209 = *v229;
      v210 = v229[2];
      v52 = *a2;
      if (*a2 != 1)
      {
        goto LABEL_51;
      }

LABEL_130:
      if (a3[4] != 1)
      {
        goto LABEL_156;
      }

      v87 = *(&v209 + 1);
      v88 = v209;
      if (v209 == *(&v209 + 1))
      {
        goto LABEL_156;
      }

      while (1)
      {
        if (!webrtc::Codec::GetResiliencyType(v88))
        {
          v89 = *(v88 + 39);
          if (v89 < 0)
          {
            v90 = *(v88 + 16);
            if (*(v88 + 24) != 2)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v90 = (v88 + 16);
            if (v89 != 2)
            {
              goto LABEL_148;
            }
          }

          v91 = *v90;
          if (v91 != 67)
          {
            if ((v91 - 65) < 0x1A)
            {
              LOBYTE(v91) = v91 + 32;
            }

            if (v91 != 99)
            {
              goto LABEL_148;
            }
          }

          v92 = v90[1];
          if (v92 != 78)
          {
            if ((v92 - 65) < 0x1A)
            {
              LOBYTE(v92) = v92 + 32;
            }

            if (v92 != 110)
            {
LABEL_148:
              v93 = (v88 + 56);
              if (*(v88 + 80) == 1)
              {
                if (*(v88 + 79) < 0)
                {
                  *(v88 + 64) = 3;
                  v93 = *(v88 + 56);
                }

                else
                {
                  *(v88 + 79) = 3;
                }

                *v93 = webrtc::kPacketizationParamRaw;
                v93[1] = 119;
              }

              else
              {
                *(v88 + 79) = 3;
                if (v93 <= &webrtc::kPacketizationParamRaw && v88 + 59 > &webrtc::kPacketizationParamRaw)
                {
                  goto LABEL_361;
                }

                *v93 = webrtc::kPacketizationParamRaw;
                *(v88 + 58) = 119;
                *(v88 + 80) = 1;
              }
            }
          }
        }

        v88 += 216;
        if (v88 == v87)
        {
          goto LABEL_156;
        }
      }
    }

    if (a4 && (*(a4 + 4) & 1) == 0)
    {
      v67 = *(a4 + 31);
      if (v67 >= 0)
      {
        v68 = *(a4 + 31);
      }

      else
      {
        v68 = *(a4 + 16);
      }

      v69 = *(a2 + 31);
      v70 = v69;
      if ((v69 & 0x80u) != 0)
      {
        v69 = *(a2 + 2);
      }

      if (v68 == v69)
      {
        v71 = v67 >= 0 ? (a4 + 8) : *(a4 + 8);
        v72 = v70 >= 0 ? v12 : *v12;
        if (!memcmp(v71, v72, v68))
        {
          v132 = *(a4 + 32);
          if (!v132 || (v133 = *a2, (*(*v132 + 16))(v132) != v133))
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              std::operator+<char>();
              std::operator+[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>("' does not match previous type.", v227, v229);
              v204.__r_.__value_.__r.__words[0] = "INTERNAL_ERROR";
              v204.__r_.__value_.__l.__size_ = 14;
              webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v137, v138, v139, v140, v141, v142, v143, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
              if (SHIBYTE(v229[2]) < 0)
              {
                operator delete(v229[0]);
              }

              if (SHIBYTE(v227[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v227[0].__r_.__value_.__l.__data_);
              }
            }

            std::operator+<char>();
            std::operator+[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>("' does not match previous type.", &v204, v227);
            if ((v227[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v144 = v227;
            }

            else
            {
              v144 = v227[0].__r_.__value_.__r.__words[0];
            }

            if ((v227[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v145 = HIBYTE(v227[0].__r_.__value_.__r.__words[2]);
            }

            else
            {
              v145 = v227[0].__r_.__value_.__l.__size_;
            }

            webrtc::RTCError::RTCError(v229, 10, v144, v145);
            *a6 = v229[0];
            *(a6 + 8) = *&v229[1];
            *(a6 + 24) = v229[3];
            memset(&v229[1], 0, 24);
            *(a6 + 32) = v230[0];
            *(a6 + 35) = *(v230 + 3);
            *(a6 + 40) = 0;
            *(a6 + 64) = 0;
            if (SHIBYTE(v227[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v227[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v204.__r_.__value_.__l.__data_);
            }

            goto LABEL_337;
          }

          v134 = *(a4 + 32);
          v135 = *(v134 + 280);
          v136 = *(v134 + 288);
          while (v135 != v136)
          {
            webrtc::FindMatchingCodec((v134 + 280), &v221, v135, v229);
            if (v235)
            {
              webrtc::Codec::~Codec(v229);
              if (*(&v209 + 1) >= v210)
              {
                std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(&v209);
              }

              if (!*(&v209 + 1))
              {
                goto LABEL_361;
              }

              *(&v209 + 1) = webrtc::Codec::Codec(*(&v209 + 1), v135) + 216;
            }

            v135 = (v135 + 216);
          }
        }
      }
    }

    v204.__r_.__value_.__l.__size_ = 0x7F00000023;
    LODWORD(v204.__r_.__value_.__r.__words[2]) = 127;
    v206[0] = 0;
    v206[1] = 0;
    v205 = v206;
    v204.__r_.__value_.__r.__words[0] = &unk_288291450;
    v73 = *(&v209 + 1);
    for (i = v209; i != v73; i += 216)
    {
      webrtc::UsedIds<webrtc::Codec>::FindAndSetIdUsed(&v204, i);
    }

    v75 = v207;
    v76 = v208;
    if (v207 == v208)
    {
LABEL_129:
      v204.__r_.__value_.__r.__words[0] = &unk_288291480;
      std::__tree<sigslot::_signal_base_interface *>::destroy(&v205, v206[0]);
      v52 = *a2;
      if (*a2 != 1)
      {
LABEL_51:
        if (!v52 && (*a3 & 1) == 0)
        {
        }

LABEL_156:
        if (v209 != *(&v209 + 1))
        {
          v94 = v207;
          v95 = v208;
          if (v207 != v208 && *a2 == 1)
          {
            memset(v229, 0, sizeof(v229));
            v230[0] = 1065353216;
            v187 = webrtc::kH265CodecName[0] - 65;
            if (v187 >= 0x1A)
            {
              v96 = webrtc::kH265CodecName[0];
            }

            else
            {
              v96 = webrtc::kH265CodecName[0] + 32;
            }

            v97 = webrtc::kH265CodecName[1];
            v186 = webrtc::kH265CodecName[1] - 65;
            if (v186 >= 0x1A)
            {
              v98 = webrtc::kH265CodecName[1];
            }

            else
            {
              v98 = webrtc::kH265CodecName[1] + 32;
            }

            v99 = webrtc::kH265CodecName[2];
            v100 = webrtc::kH265CodecName[2] + 32;
            v185 = webrtc::kH265CodecName[2] - 65;
            if (v185 >= 0x1A)
            {
              v100 = webrtc::kH265CodecName[2];
            }

            v192 = v100;
            v193 = v98;
            v101 = webrtc::kH265CodecName[3] + 32;
            v184 = webrtc::kH265CodecName[3] - 65;
            if (v184 >= 0x1A)
            {
              v101 = webrtc::kH265CodecName[3];
            }

            v191 = v101;
            v188 = v96;
            v189 = a5;
            do
            {
              v102 = *(v94 + 39);
              if (v102 < 0)
              {
                v103 = *(v94 + 2);
                if (*(v94 + 3) != 4)
                {
                  goto LABEL_170;
                }
              }

              else
              {
                v103 = v94 + 16;
                if (v102 != 4)
                {
                  goto LABEL_170;
                }
              }

              v104 = *v103;
              if (v104 == webrtc::kH265CodecName[0])
              {
                goto LABEL_366;
              }

              if ((v104 - 65) < 0x1A)
              {
                LOBYTE(v104) = v104 + 32;
              }

              if (v104 == v96)
              {
LABEL_366:
                v105 = v103[1];
                if (v105 == v97)
                {
                  goto LABEL_367;
                }

                if ((v105 - 65) < 0x1A)
                {
                  LOBYTE(v105) = v105 + 32;
                }

                if (v105 == v193)
                {
LABEL_367:
                  v106 = v103[2];
                  if (v106 == v99)
                  {
                    goto LABEL_368;
                  }

                  if ((v106 - 65) < 0x1A)
                  {
                    LOBYTE(v106) = v106 + 32;
                  }

                  if (v106 == v192)
                  {
LABEL_368:
                    v107 = v103[3];
                    if (v107 == webrtc::kH265CodecName[3])
                    {
                      goto LABEL_369;
                    }

                    if ((v107 - 65) < 0x1A)
                    {
                      LOBYTE(v107) = v107 + 32;
                    }

                    if (v107 == v191)
                    {
LABEL_369:
                      webrtc::ParseSdpForH265ProfileTierLevel(v94 + 168);
                      if ((v109 & 0x100000000) != 0)
                      {
                        if (!v229[1])
                        {
                          goto LABEL_212;
                        }

                        v110 = vcnt_s8(v229[1]);
                        v110.i16[0] = vaddlv_u8(v110);
                        if (v110.u32[0] > 1uLL)
                        {
                          v111 = v108;
                          if (v229[1] <= v108)
                          {
                            v111 = v108 % v229[1];
                          }
                        }

                        else
                        {
                          v111 = (v229[1] - 1) & v108;
                        }

                        v112 = *(v229[0] + v111);
                        if (!v112 || (v113 = *v112) == 0)
                        {
LABEL_212:
                          operator new();
                        }

                        if (v110.u32[0] < 2uLL)
                        {
                          while (1)
                          {
                            v115 = v113[1];
                            if (v115 == v108)
                            {
                              if (*(v113 + 4) == v108)
                              {
                                goto LABEL_213;
                              }
                            }

                            else if ((v115 & (v229[1] - 1)) != v111)
                            {
                              goto LABEL_212;
                            }

                            v113 = *v113;
                            if (!v113)
                            {
                              goto LABEL_212;
                            }
                          }
                        }

                        while (1)
                        {
                          v114 = v113[1];
                          if (v114 == v108)
                          {
                            if (*(v113 + 4) == v108)
                            {
LABEL_213:
                              v99 = webrtc::kH265CodecName[2];
                              v96 = v188;
                              *(v113 + 5) = v109;
                              a5 = v189;
                              v97 = webrtc::kH265CodecName[1];
                              break;
                            }
                          }

                          else
                          {
                            if (v114 >= v229[1])
                            {
                              v114 %= v229[1];
                            }

                            if (v114 != v111)
                            {
                              goto LABEL_212;
                            }
                          }

                          v113 = *v113;
                          if (!v113)
                          {
                            goto LABEL_212;
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_170:
              v94 = (v94 + 216);
            }

            while (v94 != v95);
            if (v229[3])
            {
              v119 = *(&v209 + 1);
              v118 = v209;
              if (v209 != *(&v209 + 1))
              {
                v121 = &v204 <= "level-id" && &v204.__r_.__value_.__r.__words[1] > "level-id";
                v194 = v121;
                if (v187 >= 0x1A)
                {
                  v122 = webrtc::kH265CodecName[0];
                }

                else
                {
                  v122 = webrtc::kH265CodecName[0] + 32;
                }

                if (v186 >= 0x1A)
                {
                  v123 = v97;
                }

                else
                {
                  v123 = v97 + 32;
                }

                if (v185 >= 0x1A)
                {
                  v124 = webrtc::kH265CodecName[2];
                }

                else
                {
                  v124 = webrtc::kH265CodecName[2] + 32;
                }

                if (v184 >= 0x1A)
                {
                  v125 = webrtc::kH265CodecName[3];
                }

                else
                {
                  v125 = webrtc::kH265CodecName[3] + 32;
                }

                do
                {
                  v146 = *(v118 + 39);
                  if (v146 < 0)
                  {
                    v147 = *(v118 + 16);
                    if (*(v118 + 24) != 4)
                    {
                      goto LABEL_277;
                    }
                  }

                  else
                  {
                    v147 = (v118 + 16);
                    if (v146 != 4)
                    {
                      goto LABEL_277;
                    }
                  }

                  v148 = *v147;
                  if (v148 == webrtc::kH265CodecName[0])
                  {
                    goto LABEL_370;
                  }

                  if ((v148 - 65) < 0x1A)
                  {
                    LOBYTE(v148) = v148 + 32;
                  }

                  if (v148 == v122)
                  {
LABEL_370:
                    v149 = v147[1];
                    if (v149 == v97)
                    {
                      goto LABEL_371;
                    }

                    if ((v149 - 65) < 0x1A)
                    {
                      LOBYTE(v149) = v149 + 32;
                    }

                    if (v149 == v123)
                    {
LABEL_371:
                      v150 = v147[2];
                      if (v150 == webrtc::kH265CodecName[2])
                      {
                        goto LABEL_372;
                      }

                      if ((v150 - 65) < 0x1A)
                      {
                        LOBYTE(v150) = v150 + 32;
                      }

                      if (v150 == v124)
                      {
LABEL_372:
                        v151 = v147[3];
                        if (v151 == webrtc::kH265CodecName[3])
                        {
                          goto LABEL_373;
                        }

                        if ((v151 - 65) < 0x1A)
                        {
                          LOBYTE(v151) = v151 + 32;
                        }

                        if (v151 == v125)
                        {
LABEL_373:
                          webrtc::ParseSdpForH265ProfileTierLevel(v118 + 168);
                          if ((v153 & 0x100000000) != 0 && v229[1])
                          {
                            v154 = vcnt_s8(v229[1]);
                            v154.i16[0] = vaddlv_u8(v154);
                            if (v154.u32[0] > 1uLL)
                            {
                              v155 = v152;
                              if (v229[1] <= v152)
                              {
                                v155 = v152 % v229[1];
                              }
                            }

                            else
                            {
                              v155 = (v229[1] - 1) & v152;
                            }

                            v156 = *(v229[0] + v155);
                            if (v156)
                            {
                              v157 = *v156;
                              if (v157)
                              {
                                if (v154.u32[0] < 2uLL)
                                {
                                  while (1)
                                  {
                                    v159 = v157[1];
                                    if (v159 == v152)
                                    {
                                      if (*(v157 + 4) == v152)
                                      {
                                        goto LABEL_320;
                                      }
                                    }

                                    else if ((v159 & (v229[1] - 1)) != v155)
                                    {
                                      goto LABEL_277;
                                    }

                                    v157 = *v157;
                                    if (!v157)
                                    {
                                      goto LABEL_277;
                                    }
                                  }
                                }

                                do
                                {
                                  v158 = v157[1];
                                  if (v158 == v152)
                                  {
                                    if (*(v157 + 4) == v152)
                                    {
LABEL_320:
                                      v160 = *(v157 + 5);
                                      if (v160 == v153)
                                      {
                                        break;
                                      }

                                      webrtc::H265LevelToString(v160, v227);
                                      *(&v204.__r_.__value_.__s + 23) = 8;
                                      if (!v194)
                                      {
                                        strcpy(&v204, "level-id");
                                        *&v224 = &v204;
                                        v161 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 168, &v204.__r_.__value_.__l.__data_);
                                        v162 = v161;
                                        if (*(v161 + 79) < 0)
                                        {
                                          operator delete(v161[7]);
                                        }

                                        *(v162 + 7) = v227[0];
                                        *(&v227[0].__r_.__value_.__s + 23) = 0;
                                        v227[0].__r_.__value_.__s.__data_[0] = 0;
                                        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(v204.__r_.__value_.__l.__data_);
                                          v97 = webrtc::kH265CodecName[1];
                                          if (SHIBYTE(v227[0].__r_.__value_.__r.__words[2]) < 0)
                                          {
                                            operator delete(v227[0].__r_.__value_.__l.__data_);
                                          }
                                        }

                                        else
                                        {
                                          v97 = webrtc::kH265CodecName[1];
                                        }

                                        break;
                                      }

LABEL_361:
                                      __break(1u);
                                    }
                                  }

                                  else
                                  {
                                    if (v158 >= v229[1])
                                    {
                                      v158 %= v229[1];
                                    }

                                    if (v158 != v155)
                                    {
                                      break;
                                    }
                                  }

                                  v157 = *v157;
                                }

                                while (v157);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_277:
                  v118 += 216;
                }

                while (v118 != v119);
              }
            }

            v163 = v229[2];
            if (v229[2])
            {
              do
              {
                v164 = *v163;
                operator delete(v163);
                v163 = v164;
              }

              while (v164);
            }

            v165 = v229[0];
            v229[0] = 0;
            if (v165)
            {
              operator delete(v165);
            }
          }
        }

        goto LABEL_331;
      }

      goto LABEL_130;
    }

    v78 = v202 <= "apt" && v202 + 3 > "apt";
    while (1)
    {
      webrtc::FindMatchingCodec(&v207, &v221, v75, v229);
      if (v235 != 1)
      {
        goto LABEL_103;
      }

      webrtc::FindMatchingCodec(&v207, &v209, v75, v227);
      if (v228 == 1)
      {
        break;
      }

      if (*a2 == 1)
      {
        if ((v235 & 1) == 0)
        {
          goto LABEL_361;
        }

        if (webrtc::Codec::GetResiliencyType(v229) == 4)
        {
          webrtc::FindMatchingCodec(&v207, &v209, AssociatedCodecForRtx, v227);
          if (v228 == 1)
          {
            if ((v235 & 1) == 0)
            {
              goto LABEL_361;
            }

            v203 = 3;
            if (v78)
            {
              goto LABEL_361;
            }

            LOWORD(v202[0]) = *"apt";
            WORD1(v202[0]) = webrtc::kCodecParamAssociatedPayloadType[2];
            v225 = 0x1600000000000000;
            v224 = 0uLL;
            v82 = absl::numbers_internal::FastIntToBuffer(HIDWORD(v227[0].__r_.__value_.__r.__words[1]), &v224, v81);
            v83 = v82 - &v224;
            if ((SHIBYTE(v225) & 0x8000000000000000) != 0)
            {
              if (*(&v224 + 1) < v83)
              {
LABEL_363:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              v84 = v224;
              *(&v224 + 1) = v82 - &v224;
            }

            else
            {
              if (v83 > SHIBYTE(v225))
              {
                goto LABEL_363;
              }

              HIBYTE(v225) = v82 - &v224;
              v84 = &v224;
            }

            *(v84 + v83) = 0;
            v226 = v202;
            v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v234, v202);
            v86 = v85;
            if (*(v85 + 79) < 0)
            {
              operator delete(v85[7]);
            }

            *(v86 + 7) = v224;
            v86[9] = v225;
            if (v203 < 0)
            {
              operator delete(v202[0]);
            }

            if (v228)
            {
              webrtc::Codec::~Codec(v227);
            }
          }
        }
      }

      if ((v235 & 1) == 0)
      {
        goto LABEL_361;
      }

      webrtc::UsedIds<webrtc::Codec>::FindAndSetIdUsed(&v204, v229);
      if ((v235 & 1) == 0)
      {
        goto LABEL_361;
      }

      if (*(&v209 + 1) >= v210)
      {
        std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(&v209);
      }

      if (!*(&v209 + 1))
      {
        goto LABEL_361;
      }

      *(&v209 + 1) = webrtc::Codec::Codec(*(&v209 + 1), v229) + 216;
      if (v235 == 1)
      {
LABEL_104:
        webrtc::Codec::~Codec(v229);
      }

LABEL_99:
      v75 = (v75 + 216);
      if (v75 == v76)
      {
        goto LABEL_129;
      }
    }

    webrtc::Codec::~Codec(v227);
LABEL_103:
    if (v235 == 1)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_351:
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  v178 = v221;
  if (v221)
  {
    v179 = v221;
    if (v222 != v221)
    {
      v180 = v222 - 216;
      v181 = v222 - 216;
      v182 = (v222 - 216);
      do
      {
        v183 = *v182;
        v182 -= 27;
        (*v183)(v181);
        v180 -= 216;
        v28 = v181 == v178;
        v181 = v182;
      }

      while (!v28);
      v179 = v221;
    }

    v222 = v178;
    operator delete(v179);
  }
}

void webrtc::anonymous namespace::MergeCodecs(uint64_t a1, webrtc::Codec **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    goto LABEL_16;
  }

  while (1)
  {
    if (webrtc::Codec::GetResiliencyType(v10) == 4 || webrtc::Codec::GetResiliencyType(v10) == 1)
    {
      goto LABEL_4;
    }

    webrtc::FindMatchingCodec(a2, a4, v10, &v62);
    if (v68 != 1)
    {
      break;
    }

LABEL_3:
    webrtc::Codec::~Codec(&v62);
LABEL_4:
    v10 = (v10 + 216);
    if (v10 == v11)
    {
      v10 = *a2;
      v11 = a2[1];
LABEL_16:
      if (v10 == v11)
      {
LABEL_92:
        *a1 = 0;
        *(a1 + 38) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *(a1 + 29) = 0;
        return;
      }

      v14 = &v49 <= "apt" && v49.__r_.__value_.__r.__words + 3 > "apt";
      v48 = v14;
      while (1)
      {
        if (webrtc::Codec::GetResiliencyType(v10) != 4)
        {
          goto LABEL_30;
        }

        webrtc::FindMatchingCodec(a2, a4, v10, &v62);
        if (v68 == 1)
        {
          break;
        }

        webrtc::Codec::Codec(&v54, v10);
        if (!AssociatedCodecForRtx)
        {
          v15 = &v54;
          goto LABEL_25;
        }

        webrtc::FindMatchingCodec(a2, a4, AssociatedCodecForRtx, &v62);
        if (v68)
        {
          v52.__r_.__value_.__r.__words[2] = 0x1600000000000000;
          *&v52.__r_.__value_.__l.__data_ = 0uLL;
          v25 = absl::numbers_internal::FastIntToBuffer(DWORD1(v63), &v52, v24);
          v26 = v25 - &v52;
          if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (v52.__r_.__value_.__l.__size_ < v26)
            {
              goto LABEL_95;
            }

            v52.__r_.__value_.__l.__size_ = v25 - &v52;
            *(v52.__r_.__value_.__r.__words[0] + v26) = 0;
            *(&v49.__r_.__value_.__s + 23) = 3;
            if (v48)
            {
              goto LABEL_94;
            }
          }

          else
          {
            if (v26 > SHIBYTE(v52.__r_.__value_.__r.__words[2]))
            {
              goto LABEL_95;
            }

            *(&v52.__r_.__value_.__s + 23) = v25 - &v52;
            *v25 = 0;
            *(&v49.__r_.__value_.__s + 23) = 3;
            if (v48)
            {
              goto LABEL_94;
            }
          }

          LOWORD(v49.__r_.__value_.__l.__data_) = *"apt";
          *&v49.__r_.__value_.__s.__data_[2] = webrtc::kCodecParamAssociatedPayloadType[2];
          v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v60, &v49.__r_.__value_.__l.__data_);
          v43 = v42;
          if (*(v42 + 79) < 0)
          {
            operator delete(v42[7]);
          }

          *(v43 + 7) = v52;
          *(&v52.__r_.__value_.__s + 23) = 0;
          v52.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__r_.__value_.__l.__data_);
            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }
          }

          webrtc::Codec::Codec(v51, &v54);
          (*(*a5 + 16))(&v52, a5, a3, v51);
          webrtc::Codec::~Codec(v51);
          if (LODWORD(v52.__r_.__value_.__l.__data_))
          {
            *a1 = v52.__r_.__value_.__l.__data_;
            *(a1 + 8) = *&v52.__r_.__value_.__r.__words[1];
            *(a1 + 24) = v53.__r_.__value_.__r.__words[0];
            *(a1 + 32) = v53.__r_.__value_.__r.__words[1];
            *(a1 + 35) = *(&v53.__r_.__value_.__r.__words[1] + 3);
            v34 = 1;
            if (v68 != 1)
            {
              goto LABEL_88;
            }
          }

          else
          {
            if ((v53.__r_.__value_.__s.__data_[17] & 1) == 0)
            {
              goto LABEL_94;
            }

            DWORD1(__p) = v53.__r_.__value_.__s.__data_[16];
            v44 = *(a4 + 8);
            if (v44 >= *(a4 + 16))
            {
              std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a4);
            }

            if (!v44)
            {
              goto LABEL_94;
            }

            *(a4 + 8) = webrtc::Codec::Codec(v44, &v54) + 216;
            if (v53.__r_.__value_.__s.__data_[7] < 0)
            {
              operator delete(v52.__r_.__value_.__l.__size_);
            }

            v34 = 0;
            if (v68 != 1)
            {
              goto LABEL_88;
            }
          }
        }

        else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          v34 = 5;
          if (v68 != 1)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v47 = v47 & 0xFFFFFFFF00000000 | 0x662;
          webrtc::webrtc_logging_impl::Log("\r\t\n\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
          v34 = 5;
          if (v68 != 1)
          {
            goto LABEL_88;
          }
        }

        webrtc::Codec::~Codec(&v62);
LABEL_88:
        webrtc::Codec::~Codec(&v54);
        if (v34 && v34 != 5)
        {
          return;
        }

LABEL_26:
        v10 = (v10 + 216);
        if (v10 == v11)
        {
          goto LABEL_92;
        }
      }

      webrtc::Codec::~Codec(&v62);
LABEL_30:
      if (webrtc::Codec::GetResiliencyType(v10) != 1)
      {
        goto LABEL_26;
      }

      webrtc::FindMatchingCodec(a2, a4, v10, &v62);
      if (v68 == 1)
      {
        v15 = &v62;
LABEL_25:
        webrtc::Codec::~Codec(v15);
        goto LABEL_26;
      }

      webrtc::Codec::Codec(&v54, v10);
      if (!AssociatedCodecForRed)
      {
        goto LABEL_76;
      }

      webrtc::FindMatchingCodec(a2, a4, AssociatedCodecForRed, &v62);
      v19 = v68;
      if (v68)
      {
        v49.__r_.__value_.__r.__words[2] = 0x1600000000000000;
        *&v49.__r_.__value_.__l.__data_ = 0uLL;
        v20 = absl::numbers_internal::FastIntToBuffer(DWORD1(v63), &v49, v18);
        v21 = v20 - &v49;
        if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v49.__r_.__value_.__l.__size_ >= v21)
          {
            v49.__r_.__value_.__l.__size_ = v20 - &v49;
            *(v49.__r_.__value_.__r.__words[0] + v21) = 0;
            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_70;
            }

LABEL_37:
            v52 = v49;
LABEL_71:
            v53 = v49;
LABEL_72:
            operator new();
          }
        }

        else if (v21 <= SHIBYTE(v49.__r_.__value_.__r.__words[2]))
        {
          *(&v49.__r_.__value_.__s + 23) = v20 - &v49;
          *v20 = 0;
          if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

LABEL_70:
          std::string::__init_copy_ctor_external(&v52, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_71;
          }

          std::string::__init_copy_ctor_external(&v53, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
          goto LABEL_72;
        }

LABEL_95:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v46 = v46 & 0xFFFFFFFF00000000 | 0x72A;
        webrtc::webrtc_logging_impl::Log("\r\t\n\t", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
      }

      v34 = 5;
      if (v68 == 1)
      {
        webrtc::Codec::~Codec(&v62);
      }

      if (v19)
      {
LABEL_76:
        webrtc::Codec::Codec(v50, &v54);
        (*(*a5 + 16))(&v62, a5, a3, v50);
        webrtc::Codec::~Codec(v50);
        if (v62)
        {
          *a1 = v62;
          *(a1 + 8) = v63;
          *(a1 + 24) = v64;
          *(a1 + 32) = v65[0];
          *(a1 + 35) = *(v65 + 3);
          v34 = 1;
        }

        else
        {
          if ((v67 & 1) == 0)
          {
            goto LABEL_94;
          }

          DWORD1(__p) = v66;
          v45 = *(a4 + 8);
          if (v45 >= *(a4 + 16))
          {
            std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a4);
          }

          if (!v45)
          {
            goto LABEL_94;
          }

          *(a4 + 8) = webrtc::Codec::Codec(v45, &v54) + 216;
          if (SHIBYTE(v64) < 0)
          {
            operator delete(v63);
          }

          v34 = 0;
        }
      }

      goto LABEL_88;
    }
  }

  webrtc::Codec::Codec(&v62, v10);
  webrtc::Codec::Codec(v61, &v62);
  (*(*a5 + 16))(&v54, a5, a3, v61);
  webrtc::Codec::~Codec(v61);
  if (!v54)
  {
    if ((v59 & 1) == 0)
    {
      goto LABEL_94;
    }

    DWORD1(v63) = v58;
    v12 = *(a4 + 8);
    if (v12 >= *(a4 + 16))
    {
      std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a4);
    }

    if (!v12)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    *(a4 + 8) = webrtc::Codec::Codec(v12, &v62) + 216;
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_3;
  }

  *a1 = v54;
  *(a1 + 8) = __p;
  *(a1 + 24) = v56;
  *(a1 + 32) = v57[0];
  *(a1 + 35) = *(v57 + 3);
  webrtc::Codec::~Codec(&v62);
}

void webrtc::CodecVendor::all_audio_codecs(webrtc::CodecVendor *this, const webrtc::Codec **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    v6 = *(this + 1);
    if (v6 >= *(this + 2))
    {
      std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(this);
    }

    if (!v6)
    {
      goto LABEL_20;
    }

    *(this + 1) = webrtc::Codec::Codec(v6, v4) + 216;
    webrtc::FindMatchingCodec(a2, a2 + 3, v4, v10);
    if (v11 == 1)
    {
      webrtc::Codec::~Codec(v10);
    }

    v4 = (v4 + 216);
  }

  v7 = a2[3];
  v8 = a2[4];
  if (v7 != v8)
  {
    while (1)
    {
      while (1)
      {
        webrtc::FindMatchingCodec((a2 + 3), a2, v7, v10);
        if (v11 != 1)
        {
          break;
        }

        webrtc::Codec::~Codec(v10);
        v7 = (v7 + 216);
        if (v7 == v8)
        {
          return;
        }
      }

      v9 = *(this + 1);
      if (v9 >= *(this + 2))
      {
        std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(this);
      }

      if (!v9)
      {
        break;
      }

      *(this + 1) = webrtc::Codec::Codec(v9, v7) + 216;
      v7 = (v7 + 216);
      if (v7 == v8)
      {
        return;
      }
    }

LABEL_20:
    __break(1u);
  }
}

void webrtc::CodecVendor::all_video_codecs(webrtc::CodecVendor *this, void *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v71[1] = 0x7F00000023;
  v72 = 127;
  v74[0] = 0;
  v74[1] = 0;
  v73 = v74;
  v71[0] = &unk_288291450;
  v4 = a2[9];
  v5 = a2[10];
  while (v4 != v5)
  {
    webrtc::Codec::Codec(v86, v4);
    webrtc::UsedIds<webrtc::Codec>::FindAndSetIdUsed(v71, v86);
    v6 = *(this + 1);
    if (v6 >= *(this + 2))
    {
      std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(this);
    }

    if (!v6)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(this + 1) = webrtc::Codec::Codec(v6, v86) + 216;
    webrtc::Codec::~Codec(v86);
    v4 = (v4 + 216);
  }

  v8 = a2[6];
  v9 = a2[7];
  v7 = (a2 + 6);
  if (v8 != v9)
  {
    do
    {
      if (webrtc::Codec::GetResiliencyType(v8) != 4 && webrtc::Codec::GetResiliencyType(v8) != 1)
      {
        webrtc::FindMatchingCodec((a2 + 6), this, v8, v86);
        if (v88 != 1)
        {
          webrtc::Codec::Codec(v86, v8);
          webrtc::UsedIds<webrtc::Codec>::FindAndSetIdUsed(v71, v86);
          v10 = *(this + 1);
          if (v10 >= *(this + 2))
          {
            std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(this);
          }

          if (!v10)
          {
            goto LABEL_134;
          }

          *(this + 1) = webrtc::Codec::Codec(v10, v86) + 216;
        }

        webrtc::Codec::~Codec(v86);
      }

      v8 = (v8 + 216);
    }

    while (v8 != v9);
    v11 = a2[6];
    v12 = a2[7];
    if (v11 != v12)
    {
      v14 = &__p <= "apt" && __p.__r_.__value_.__r.__words + 3 > "apt";
      v70 = v14;
      while (1)
      {
        if (webrtc::Codec::GetResiliencyType(v11) == 4)
        {
          webrtc::FindMatchingCodec(v7, this, v11, v86);
          if (v88 != 1)
          {
            webrtc::Codec::Codec(v84, v11);
            if (AssociatedCodecForRtx)
            {
              webrtc::FindMatchingCodec(v7, this, AssociatedCodecForRtx, v86);
              if (v88)
              {
                v81.__r_.__value_.__r.__words[2] = 0x1600000000000000;
                *&v81.__r_.__value_.__l.__data_ = 0uLL;
                v19 = absl::numbers_internal::FastIntToBuffer(v87, &v81, v18);
                v20 = v19 - &v81;
                if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  if (v81.__r_.__value_.__l.__size_ < v20)
                  {
                    goto LABEL_135;
                  }

                  v81.__r_.__value_.__l.__size_ = v19 - &v81;
                  *(v81.__r_.__value_.__r.__words[0] + v20) = 0;
                  *(&__p.__r_.__value_.__s + 23) = 3;
                  if (v70)
                  {
                    goto LABEL_134;
                  }
                }

                else
                {
                  if (v20 > SHIBYTE(v81.__r_.__value_.__r.__words[2]))
                  {
                    goto LABEL_135;
                  }

                  *(&v81.__r_.__value_.__s + 23) = v19 - &v81;
                  *v19 = 0;
                  *(&__p.__r_.__value_.__s + 23) = 3;
                  if (v70)
                  {
                    goto LABEL_134;
                  }
                }

                LOWORD(__p.__r_.__value_.__l.__data_) = *"apt";
                *&__p.__r_.__value_.__s.__data_[2] = webrtc::kCodecParamAssociatedPayloadType[2];
                p_p = &__p;
                v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v85, &__p.__r_.__value_.__l.__data_);
                if (*(v43 + 79) < 0)
                {
                  v44 = v43;
                  operator delete(v43[7]);
                  v43 = v44;
                }

                *(v43 + 7) = v81;
                *(&v81.__r_.__value_.__s + 23) = 0;
                v81.__r_.__value_.__s.__data_[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0 && (operator delete(__p.__r_.__value_.__l.__data_), SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0))
                {
                  operator delete(v81.__r_.__value_.__l.__data_);
                  webrtc::UsedIds<webrtc::Codec>::FindAndSetIdUsed(v71, v84);
                  v45 = *(this + 1);
                  if (v45 >= *(this + 2))
                  {
LABEL_78:
                    std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(this);
                  }
                }

                else
                {
                  webrtc::UsedIds<webrtc::Codec>::FindAndSetIdUsed(v71, v84);
                  v45 = *(this + 1);
                  if (v45 >= *(this + 2))
                  {
                    goto LABEL_78;
                  }
                }

                if (!v45)
                {
                  goto LABEL_134;
                }

                *(this + 1) = webrtc::Codec::Codec(v45, v84) + 216;
              }

              else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
                v69 = v69 & 0xFFFFFFFF00000000 | 0x8EA;
                webrtc::webrtc_logging_impl::Log("\r\t\n\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
              }

              if (v88 == 1)
              {
                webrtc::Codec::~Codec(v86);
              }
            }

            goto LABEL_27;
          }

          webrtc::Codec::~Codec(v86);
        }

        if (webrtc::Codec::GetResiliencyType(v11) != 1)
        {
          goto LABEL_29;
        }

        webrtc::FindMatchingCodec(v7, this, v11, v86);
        if (v88 == 1)
        {
          v15 = v86;
          goto LABEL_28;
        }

        webrtc::Codec::Codec(v84, v11);
        if (!AssociatedCodecForRed)
        {
LABEL_125:
          webrtc::UsedIds<webrtc::Codec>::FindAndSetIdUsed(v71, v84);
          v67 = *(this + 1);
          if (v67 >= *(this + 2))
          {
            std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(this);
          }

          if (!v67)
          {
            goto LABEL_134;
          }

          *(this + 1) = webrtc::Codec::Codec(v67, v84) + 216;
          goto LABEL_27;
        }

        webrtc::FindMatchingCodec(v7, this, AssociatedCodecForRed, v86);
        v24 = v88;
        if (v88)
        {
          break;
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          goto LABEL_122;
        }

        v68 = v68 & 0xFFFFFFFF00000000 | 0x98A;
        webrtc::webrtc_logging_impl::Log("\r\t\n\t", v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
        if (v88 == 1)
        {
          goto LABEL_123;
        }

LABEL_124:
        if (v24)
        {
          goto LABEL_125;
        }

LABEL_27:
        v15 = v84;
LABEL_28:
        webrtc::Codec::~Codec(v15);
LABEL_29:
        v11 = (v11 + 216);
        if (v11 == v12)
        {
          goto LABEL_133;
        }
      }

      __p.__r_.__value_.__r.__words[2] = 0x1600000000000000;
      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v25 = absl::numbers_internal::FastIntToBuffer(v87, &__p, v23);
      v27 = v25 - &__p;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (__p.__r_.__value_.__l.__size_ < v27)
        {
          goto LABEL_135;
        }

        v28 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__l.__size_ = v25 - &__p;
      }

      else
      {
        if (v27 > SHIBYTE(__p.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_135;
        }

        *(&__p.__r_.__value_.__s + 23) = v25 - &__p;
        v28 = &__p;
      }

      v28->__r_.__value_.__s.__data_[v27] = 0;
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = 22;
      }

      else
      {
        v47 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (v47 == size)
      {
        std::string::__grow_by_and_replace(&__p, v47, 1uLL, v47, v47, 0, 1uLL, "/");
      }

      else
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = &__p;
        }

        else
        {
          v48 = __p.__r_.__value_.__r.__words[0];
        }

        v49 = v48 + size;
        if (v48 + size <= "/" && v49 + 1 > "/")
        {
          goto LABEL_134;
        }

        *v49 = 47;
        v50 = size + 1;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = v50;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v50 & 0x7F;
        }

        v48->__r_.__value_.__s.__data_[v50] = 0;
      }

      v81 = __p;
      memset(&__p, 0, sizeof(__p));
      if ((v88 & 1) == 0)
      {
        goto LABEL_134;
      }

      v78 = 0;
      v79 = 0x1600000000000000;
      p_p = 0;
      v51 = absl::numbers_internal::FastIntToBuffer(v87, &p_p, v26);
      v52 = v51 - &p_p;
      if ((SHIBYTE(v79) & 0x8000000000000000) != 0)
      {
        if (v78 < v52)
        {
          goto LABEL_135;
        }

        p_p_p = p_p;
        v78 = v51 - &p_p;
      }

      else
      {
        if (v52 > SHIBYTE(v79))
        {
          goto LABEL_135;
        }

        HIBYTE(v79) = v51 - &p_p;
        p_p_p = &p_p;
      }

      p_p_p[v52] = 0;
      if (v79 >= 0)
      {
        v54 = &p_p;
      }

      else
      {
        v54 = p_p;
      }

      if (v79 >= 0)
      {
        v55 = HIBYTE(v79);
      }

      else
      {
        v55 = v78;
      }

      if (!v54 && v55)
      {
        goto LABEL_134;
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = 22;
      }

      else
      {
        v56 = (v81.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = v81.__r_.__value_.__l.__size_;
      }

      if (v56 - v57 >= v55)
      {
        if (v55)
        {
          if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = &v81;
          }

          else
          {
            v58 = v81.__r_.__value_.__r.__words[0];
          }

          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_134;
          }

          v59 = v58 + v57;
          if (v58 + v57 <= v54 && &v59[v55] > v54)
          {
            goto LABEL_134;
          }

          v60 = v55;
          memmove(v59, v54, v55);
          v61 = v57 + v60;
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            v81.__r_.__value_.__l.__size_ = v57 + v60;
          }

          else
          {
            *(&v81.__r_.__value_.__s + 23) = v61 & 0x7F;
          }

          v58->__r_.__value_.__s.__data_[v61] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v81, v56, v57 + v55 - v56, v57, v57, 0, v55, v54);
      }

      v83[0] = v81.__r_.__value_.__l.__size_;
      v62 = v81.__r_.__value_.__r.__words[0];
      *(v83 + 7) = *(&v81.__r_.__value_.__r.__words[1] + 7);
      v63 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      memset(&v81, 0, sizeof(v81));
      v76 = 0;
      LOBYTE(v75[0]) = 0;
      v82 = v75;
      v64 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v85, v75);
      v65 = v64;
      if (*(v64 + 79) < 0)
      {
        operator delete(v64[7]);
      }

      v66 = v83[0];
      v65[7] = v62;
      v65[8] = v66;
      *(v65 + 71) = *(v83 + 7);
      *(v65 + 79) = v63;
      if (v76 < 0)
      {
        operator delete(v75[0]);
        if ((SHIBYTE(v79) & 0x80000000) == 0)
        {
LABEL_120:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_121;
          }

          goto LABEL_130;
        }
      }

      else if ((SHIBYTE(v79) & 0x80000000) == 0)
      {
        goto LABEL_120;
      }

      operator delete(p_p);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_121:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_122;
        }

LABEL_131:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v88 == 1)
        {
          goto LABEL_123;
        }

        goto LABEL_124;
      }

LABEL_130:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_122:
        if (v88 != 1)
        {
          goto LABEL_124;
        }

LABEL_123:
        webrtc::Codec::~Codec(v86);
        goto LABEL_124;
      }

      goto LABEL_131;
    }
  }

LABEL_133:
  v71[0] = &unk_288291480;
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v73, v74[0]);
}

void webrtc::CodecVendor::GetAudioCodecsForOffer(webrtc::CodecList *a1, const webrtc::Codec **a2, int a3)
{
  if (a3 > 2)
  {
    if ((a3 - 3) > 1)
    {
      goto LABEL_16;
    }

LABEL_9:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    if (v8 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v3 = a2[3];
      v4 = a2[4];
      if (v4 != v3)
      {
        if (0x84BDA12F684BDA13 * ((v4 - v3) >> 3) <= 0x12F684BDA12F684)
        {
          operator new();
        }

        goto LABEL_15;
      }

      return;
    }

LABEL_16:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v5 = a2[1];
  if (v5 != *a2)
  {
    if (0x84BDA12F684BDA13 * ((v5 - *a2) >> 3) <= 0x12F684BDA12F684)
    {
      operator new();
    }

LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }
}

void webrtc::CodecVendor::GetVideoCodecsForOffer(webrtc::CodecList *a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    if ((a3 - 3) > 1)
    {
      goto LABEL_16;
    }

LABEL_9:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    if (v9 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v3 = *(a2 + 72);
      v4 = *(a2 + 80);
      if (v4 != v3)
      {
        if (0x84BDA12F684BDA13 * ((v4 - v3) >> 3) <= 0x12F684BDA12F684)
        {
          operator new();
        }

        goto LABEL_15;
      }

      return;
    }

LABEL_16:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  if (v6 != v5)
  {
    if (0x84BDA12F684BDA13 * ((v6 - v5) >> 3) <= 0x12F684BDA12F684)
    {
      operator new();
    }

LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }
}

void webrtc::anonymous namespace::MatchCodecPreference(uint64_t *a1, webrtc::Codec *a2, webrtc::Codec *a3, const webrtc::Codec **a4, webrtc **a5)
{
  v66 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v8 = a2;
    v9 = a1;
    v10 = 0;
    v55 = 0;
    if (webrtc::kRtxCodecName[0] - 65 >= 0x1A)
    {
      v11 = webrtc::kRtxCodecName[0];
    }

    else
    {
      v11 = webrtc::kRtxCodecName[0] + 32;
    }

    if (webrtc::kRtxCodecName[1] - 65 >= 0x1A)
    {
      v12 = webrtc::kRtxCodecName[1];
    }

    else
    {
      v12 = webrtc::kRtxCodecName[1] + 32;
    }

    if (webrtc::kRtxCodecName[2] - 65 >= 0x1A)
    {
      v13 = webrtc::kRtxCodecName[2];
    }

    else
    {
      v13 = webrtc::kRtxCodecName[2] + 32;
    }

    if (webrtc::kRedCodecName - 65 >= 0x1A)
    {
      v14 = webrtc::kRedCodecName;
    }

    else
    {
      v14 = webrtc::kRedCodecName + 32;
    }

    if (HIBYTE(webrtc::kRedCodecName) - 65 >= 0x1A)
    {
      v15 = HIBYTE(webrtc::kRedCodecName);
    }

    else
    {
      v15 = HIBYTE(webrtc::kRedCodecName) + 32;
    }

    v16 = a2;
    do
    {
      v17 = (v16 + 8);
      if (*(v16 + 31) >= 0)
      {
        v18 = *(v16 + 31);
      }

      else
      {
        v17 = *(v16 + 8);
        v18 = *(v16 + 16);
      }

      if (v18 == 3)
      {
        v19 = *v17;
        if (v19 != webrtc::kRtxCodecName[0])
        {
          if ((v19 - 65) < 0x1A)
          {
            LOBYTE(v19) = v19 + 32;
          }

          if (v19 != v11)
          {
            goto LABEL_36;
          }
        }

        v20 = v17[1];
        if (v20 != webrtc::kRtxCodecName[1])
        {
          if ((v20 - 65) < 0x1A)
          {
            LOBYTE(v20) = v20 + 32;
          }

          if (v20 != v12)
          {
            goto LABEL_36;
          }
        }

        v21 = v17[2];
        if (v21 == webrtc::kRtxCodecName[2])
        {
          goto LABEL_18;
        }

        if ((v21 - 65) < 0x1A)
        {
          LOBYTE(v21) = v21 + 32;
        }

        if (v21 == v13)
        {
LABEL_18:
          v10 = 1;
        }

        else
        {
LABEL_36:
          v22 = *v17;
          if (v22 == webrtc::kRedCodecName)
          {
            goto LABEL_40;
          }

          if ((v22 - 65) < 0x1A)
          {
            LOBYTE(v22) = v22 + 32;
          }

          if (v22 == v14)
          {
LABEL_40:
            v23 = v17[1];
            if (v23 == HIBYTE(webrtc::kRedCodecName))
            {
              goto LABEL_44;
            }

            if ((v23 - 65) < 0x1A)
            {
              LOBYTE(v23) = v23 + 32;
            }

            if (v23 == v15)
            {
LABEL_44:
              v24 = v17[2];
              if (v24 == 100)
              {
                goto LABEL_48;
              }

              if ((v24 - 65) < 0x1A)
              {
                LOBYTE(v24) = v24 + 32;
              }

              if (v24 == 100)
              {
LABEL_48:
                v55 = 1;
              }
            }
          }
        }
      }

      v16 += 160;
    }

    while (v16 != a3);
    v25 = 0;
    v53 = v55 | v10;
    v27 = __p <= "apt" && __p + 3 > "apt";
    v54 = v27;
    do
    {
      v56 = v10;
      v29 = *a5;
      v28 = a5[1];
      if (*a5 != v28)
      {
        while ((webrtc::IsSameRtpCodecIgnoringLevel(v29, v8, v16) & 1) == 0)
        {
          v29 = (v29 + 216);
          if (v29 == v28)
          {
            v29 = v28;
            break;
          }
        }

        v28 = a5[1];
      }

      if (v29 == v28 || (webrtc::FindMatchingCodec(a5, a4, v29, v63), v65 != 1))
      {
        v10 = v56;
        goto LABEL_57;
      }

      v31 = webrtc::Codec::GetResiliencyType(v63) == 1;
      if (v31 & v25)
      {
        v25 = 1;
      }

      else
      {
        if ((v65 & 1) == 0)
        {
          goto LABEL_130;
        }

        v32 = v9[1];
        if (v32 >= v9[2])
        {
          std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(v9);
        }

        if (!v32)
        {
LABEL_130:
          __break(1u);
          abort();
        }

        v25 |= v31;
        v9[1] = webrtc::Codec::Codec(v32, v63) + 216;
      }

      v10 = v56;
      if ((v65 & 1) == 0)
      {
        goto LABEL_130;
      }

      v61 = 0;
      v62 = 0x1600000000000000;
      v60 = 0;
      v33 = absl::numbers_internal::FastIntToBuffer(v64, &v60, v30);
      v34 = v33 - &v60;
      if ((SHIBYTE(v62) & 0x8000000000000000) != 0)
      {
        if (v61 < v34)
        {
LABEL_131:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v61 = v33 - &v60;
        *(v60 + v34) = 0;
        if ((v53 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (v34 > SHIBYTE(v62))
        {
          goto LABEL_131;
        }

        HIBYTE(v62) = v33 - &v60;
        *v33 = 0;
        if ((v53 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      v35 = *a4;
      v57 = a4[1];
      if (*a4 == v57)
      {
        goto LABEL_120;
      }

      v52 = v25;
      while (1)
      {
        if ((v56 & 1) == 0 || webrtc::Codec::GetResiliencyType(v35) != 4)
        {
          if ((v55 & 1) != 0 && webrtc::Codec::GetResiliencyType(v35) == 1)
          {
            v59 = 0;
            LOBYTE(__p[0]) = 0;
            v38 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v35 + 168, __p);
            v39 = v38;
            if (v59 < 0)
            {
              operator delete(__p[0]);
              if ((v35 + 176) != v39)
              {
LABEL_109:
                v47 = *(v39 + 79);
                if (v47 < 0)
                {
                  v48 = v39[7];
                  v47 = v39[8];
                  if (v47)
                  {
                    goto LABEL_111;
                  }
                }

                else
                {
                  v48 = v39 + 7;
                  if (*(v39 + 79))
                  {
LABEL_111:
                    v49 = 0;
                    do
                    {
                      if (*(v48 + v49) == 47)
                      {
                        operator new();
                      }

                      ++v49;
                    }

                    while (v49 != v47);
                  }
                }

                operator new();
              }
            }

            else if ((v35 + 176) != v38)
            {
              goto LABEL_109;
            }
          }

          goto LABEL_81;
        }

        v59 = 3;
        if (v54)
        {
          goto LABEL_130;
        }

        LOWORD(__p[0]) = *"apt";
        WORD1(__p[0]) = webrtc::kCodecParamAssociatedPayloadType[2];
        v36 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v35 + 168, __p);
        v37 = v36;
        if (v59 < 0)
        {
          break;
        }

        if ((v35 + 176) != v36)
        {
          goto LABEL_94;
        }

LABEL_81:
        v35 = (v35 + 216);
        if (v35 == v57)
        {
          v9 = a1;
          goto LABEL_119;
        }
      }

      operator delete(__p[0]);
      if ((v35 + 176) == v37)
      {
        goto LABEL_81;
      }

LABEL_94:
      v40 = *(v37 + 79);
      if (v40 >= 0)
      {
        v16 = *(v37 + 79);
      }

      else
      {
        v16 = v37[8];
      }

      v41 = HIBYTE(v62);
      if (v62 < 0)
      {
        v41 = v61;
      }

      if (v16 != v41)
      {
        goto LABEL_81;
      }

      v44 = v37[7];
      v43 = v37 + 7;
      v42 = v44;
      v45 = v40 >= 0 ? v43 : v42;
      v46 = v62 >= 0 ? &v60 : v60;
      if (memcmp(v45, v46, v16))
      {
        goto LABEL_81;
      }

      v9 = a1;
      v50 = a1[1];
      if (v50 >= a1[2])
      {
        std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
      }

      if (!v50)
      {
        goto LABEL_130;
      }

      a1[1] = webrtc::Codec::Codec(v50, v35) + 216;
LABEL_119:
      v25 = v52;
LABEL_120:
      if (SHIBYTE(v62) < 0)
      {
        operator delete(v60);
        if (v65)
        {
          goto LABEL_128;
        }
      }

      else if (v65)
      {
LABEL_128:
        webrtc::Codec::~Codec(v63);
      }

LABEL_57:
      v8 = (v8 + 160);
    }

    while (v8 != a3);
  }
}

void std::operator+[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(char *__s@<X1>, std::string *a2@<X0>, uint64_t a3@<X8>)
{
  if (__s)
  {
    v6 = strlen(__s);
    v7 = v6;
    v8 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v8 >= 0)
    {
      v9 = 22;
    }

    else
    {
      v9 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v8 >= 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    if (v9 - size < v6)
    {
      std::string::__grow_by_and_replace(a2, v9, size + v6 - v9, size, size, 0, v6, __s);
LABEL_23:
      *a3 = *&a2->__r_.__value_.__l.__data_;
      *(a3 + 16) = *(&a2->__r_.__value_.__l + 2);
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      a2->__r_.__value_.__r.__words[0] = 0;
      return;
    }

    if (!v6)
    {
      goto LABEL_23;
    }

    if (v8 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2->__r_.__value_.__r.__words[0];
    }

    if ((v6 & 0x8000000000000000) == 0 && (v11 + size > __s || v11 + size + v6 <= __s))
    {
      memmove(v11 + size, __s, v6);
      v13 = size + v7;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v13;
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v13 & 0x7F;
      }

      v11->__r_.__value_.__s.__data_[v13] = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t webrtc::RTCError::RTCError(uint64_t a1, int a2, char *__src, size_t __len)
{
  *a1 = a2;
  v5 = (a1 + 8);
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  v6 = &v5[__len];
  if (v5 <= __src && v6 > __src)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__len)
  {
    memmove(v5, __src, __len);
  }

  *v6 = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 38) = 0;
  return a1;
}

_DWORD *webrtc::UsedIds<webrtc::Codec>::FindAndSetIdUsed(_DWORD *result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 <= result[3])
  {
    v3 = result;
    if (v2 >= result[2])
    {
      result = (*(*result + 16))(result, *(a2 + 12));
      if (!result)
      {
        v5 = v3[4];
        if (v5)
        {
          goto LABEL_9;
        }

LABEL_12:
        operator new();
      }

      result = (*(*v3 + 24))(v3);
      v2 = result;
      *(a2 + 12) = result;
      v5 = v3[4];
      if (!v5)
      {
        goto LABEL_12;
      }

      while (1)
      {
LABEL_9:
        while (1)
        {
          v6 = v5;
          v7 = *(v5 + 28);
          if (v7 <= v2)
          {
            break;
          }

          v5 = *v6;
          if (!*v6)
          {
            goto LABEL_12;
          }
        }

        if (v7 >= v2)
        {
          break;
        }

        v5 = v6[1];
        if (!v5)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

uint64_t *webrtc::anonymous namespace::GetAssociatedCodecForRtx(uint64_t *this, const webrtc::CodecList *a2, const webrtc::Codec *a3)
{
  __dst = 0uLL;
  v34 = 0;
  v32 = 3;
  if (__p <= "apt" && __p + 3 > "apt")
  {
    __break(1u);
    return this;
  }

  v5 = this;
  LOWORD(__p[0]) = *"apt";
  WORD1(__p[0]) = webrtc::kCodecParamAssociatedPayloadType[2];
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2 + 168, __p);
  v7 = v6;
  v8 = a2 + 176;
  if ((a2 + 176) == v6 || v6 + 7 == &__dst)
  {
LABEL_9:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if ((*(v6 + 79) & 0x80000000) == 0)
  {
    __dst = *(v6 + 7);
    v34 = v6[9];
    goto LABEL_9;
  }

  std::string::__assign_no_alias<true>(&__dst, v6[7], v6[8]);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_10:
    if (v8 != v7)
    {
      goto LABEL_11;
    }

LABEL_31:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
    }

    goto LABEL_33;
  }

LABEL_30:
  operator delete(__p[0]);
  if (v8 == v7)
  {
    goto LABEL_31;
  }

LABEL_11:
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v34 >= 0)
  {
    v10 = HIBYTE(v34);
  }

  else
  {
    v10 = *(&__dst + 1);
  }

  v11 = webrtc::string_to_number_internal::ParseSigned(p_dst, v10, 0xAuLL);
  if ((v12 & ((v11 + 0x80000000) >> 32 == 0)) != 0)
  {
    v13 = v11 | 0x100000000;
  }

  else
  {
    v13 = 0;
  }

  if ((v13 & 0x100000000) != 0)
  {
    v15 = *v5;
    v14 = v5[1];
    if (*v5 != v14)
    {
      while (*(v15 + 12) != v13)
      {
        v15 += 216;
        if (v15 == v14)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_34;
    }

LABEL_24:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      v23 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
LABEL_28:
      webrtc::webrtc_logging_impl::Log(v23, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    v23 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_28;
  }

LABEL_33:
  v15 = 0;
LABEL_34:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst);
  }

  return v15;
}

void webrtc::UsedPayloadTypes::~UsedPayloadTypes(webrtc::UsedPayloadTypes *this)
{
  *this = &unk_288291480;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 24, *(this + 4));
}

{
  *this = &unk_288291480;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 24, *(this + 4));

  JUMPOUT(0x2743DA540);
}

unint64_t *webrtc::anonymous namespace::StripCNCodecs(unint64_t *this, webrtc::CodecList *a2)
{
  v2 = this;
  v3 = *this;
  v4 = this[1];
  if (*this != v4)
  {
    v5 = webrtc::kComfortNoiseCodecName[0] - 65;
    v6 = webrtc::kComfortNoiseCodecName[0] + 32;
    if (v5 >= 0x1A)
    {
      v6 = webrtc::kComfortNoiseCodecName[0];
    }

    v7 = webrtc::kComfortNoiseCodecName[1] - 65;
    v8 = webrtc::kComfortNoiseCodecName[1] + 32;
    if (v7 >= 0x1A)
    {
      v8 = webrtc::kComfortNoiseCodecName[1];
    }

    while (1)
    {
      v9 = (v3 + 16);
      if (*(v3 + 39) >= 0)
      {
        v10 = *(v3 + 39);
      }

      else
      {
        v9 = *(v3 + 16);
        v10 = *(v3 + 24);
      }

      if (v10 == 2)
      {
        v11 = *v9;
        if (v11 == webrtc::kComfortNoiseCodecName[0])
        {
          goto LABEL_18;
        }

        if ((v11 - 65) < 0x1A)
        {
          LOBYTE(v11) = v11 + 32;
        }

        if (v11 == v6)
        {
LABEL_18:
          v12 = v9[1];
          if (v12 == webrtc::kComfortNoiseCodecName[1])
          {
            break;
          }

          if ((v12 - 65) < 0x1A)
          {
            LOBYTE(v12) = v12 + 32;
          }

          if (v12 == v8)
          {
            break;
          }
        }
      }

      v3 += 216;
      if (v3 == v4)
      {
        return this;
      }
    }

    if (v3 != v4)
    {
      v13 = v3 + 216;
      if (v3 + 216 != v4)
      {
        if (v5 >= 0x1A)
        {
          v14 = webrtc::kComfortNoiseCodecName[0];
        }

        else
        {
          v14 = webrtc::kComfortNoiseCodecName[0] + 32;
        }

        if (v7 >= 0x1A)
        {
          v15 = webrtc::kComfortNoiseCodecName[1];
        }

        else
        {
          v15 = webrtc::kComfortNoiseCodecName[1] + 32;
        }

        do
        {
          v16 = (v13 + 16);
          if (*(v13 + 39) >= 0)
          {
            v17 = *(v13 + 39);
          }

          else
          {
            v16 = *(v13 + 16);
            v17 = *(v13 + 24);
          }

          if (v17 != 2)
          {
            goto LABEL_27;
          }

          v18 = *v16;
          if (v18 != webrtc::kComfortNoiseCodecName[0])
          {
            if ((v18 - 65) < 0x1A)
            {
              LOBYTE(v18) = v18 + 32;
            }

            if (v18 != v14)
            {
              goto LABEL_27;
            }
          }

          v19 = v16[1];
          if (v19 != webrtc::kComfortNoiseCodecName[1])
          {
            if ((v19 - 65) < 0x1A)
            {
              LOBYTE(v19) = v19 + 32;
            }

            if (v19 != v15)
            {
LABEL_27:
              this = webrtc::Codec::operator=(v3, v13);
              v3 += 216;
            }
          }

          v13 += 216;
        }

        while (v13 != v4);
        v4 = v2[1];
      }
    }
  }

  if (v3 > v4)
  {
    __break(1u);
  }

  else if (v3 != v4)
  {
    v20 = (v4 - 216);
    v21 = v20;
    v22 = v20;
    do
    {
      v23 = *v22;
      v22 -= 27;
      this = (*v23)(v21);
      v20 -= 27;
      v24 = v21 == v3;
      v21 = v22;
    }

    while (!v24);
    v2[1] = v3;
  }

  return this;
}

void webrtc::anonymous namespace::AssignCodecIdsAndLinkRed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = *a4;
  v10 = a4[1];
  if (*a4 == v10)
  {
    goto LABEL_135;
  }

  if (webrtc::kOpusCodecName[0] - 65 >= 0x1A)
  {
    v12 = webrtc::kOpusCodecName[0];
  }

  else
  {
    v12 = webrtc::kOpusCodecName[0] + 32;
  }

  if (webrtc::kOpusCodecName[1] - 65 >= 0x1A)
  {
    v13 = webrtc::kOpusCodecName[1];
  }

  else
  {
    v13 = webrtc::kOpusCodecName[1] + 32;
  }

  v62 = v13;
  if (webrtc::kOpusCodecName[2] - 65 >= 0x1A)
  {
    v14 = webrtc::kOpusCodecName[2];
  }

  else
  {
    v14 = webrtc::kOpusCodecName[2] + 32;
  }

  v60 = v14;
  v65 = v12;
  if (webrtc::kOpusCodecName[3] - 65 >= 0x1A)
  {
    v15 = webrtc::kOpusCodecName[3];
  }

  else
  {
    v15 = webrtc::kOpusCodecName[3] + 32;
  }

  v58 = v15;
  if (a2)
  {
    v17 = -1;
    while (1)
    {
      if (*(v9 + 12) != -1)
      {
        goto LABEL_26;
      }

      webrtc::Codec::Codec(v80, v9);
      (*(*a2 + 16))(&v74, a2, a3, v80);
      webrtc::Codec::~Codec(v80);
      v19 = v74;
      if (!v74)
      {
        break;
      }

      *a1 = v74;
      if ((SHIBYTE(v76) & 0x80000000) == 0)
      {
        *(a1 + 8) = __p;
        *(a1 + 24) = v76;
        *(a1 + 32) = v77[0];
        *(a1 + 35) = *(v77 + 3);
        if ((SHIBYTE(v76) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      std::string::__init_copy_ctor_external((a1 + 8), __p, *(&__p + 1));
      *(a1 + 32) = v77[0];
      *(a1 + 35) = *(v77 + 3);
      if (SHIBYTE(v76) < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v19)
      {
        return;
      }

LABEL_26:
      v20 = *(v9 + 39);
      if (v20 < 0)
      {
        v21 = *(v9 + 16);
        if (*(v9 + 24) != 4)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = (v9 + 16);
        if (v20 != 4)
        {
          goto LABEL_16;
        }
      }

      v22 = *v21;
      if (v22 == webrtc::kOpusCodecName[0])
      {
        goto LABEL_45;
      }

      if ((v22 - 65) < 0x1A)
      {
        LOBYTE(v22) = v22 + 32;
      }

      if (v22 == v65)
      {
LABEL_45:
        v23 = v21[1];
        if (v23 == webrtc::kOpusCodecName[1])
        {
          goto LABEL_142;
        }

        if ((v23 - 65) < 0x1A)
        {
          LOBYTE(v23) = v23 + 32;
        }

        if (v23 == v62)
        {
LABEL_142:
          v24 = v21[2];
          if (v24 == webrtc::kOpusCodecName[2])
          {
            goto LABEL_143;
          }

          if ((v24 - 65) < 0x1A)
          {
            LOBYTE(v24) = v24 + 32;
          }

          if (v24 == v60)
          {
LABEL_143:
            v25 = v21[3];
            if (v25 == webrtc::kOpusCodecName[3])
            {
              goto LABEL_46;
            }

            if ((v25 - 65) < 0x1A)
            {
              LOBYTE(v25) = v25 + 32;
            }

            if (v25 == v58)
            {
LABEL_46:
              v18 = 1;
              goto LABEL_17;
            }
          }
        }
      }

LABEL_16:
      v18 = 0;
LABEL_17:
      if ((v18 & (v17 == -1)) != 0)
      {
        v17 = *(v9 + 12);
      }

      v9 += 216;
      if (v9 == v10)
      {
        goto LABEL_79;
      }
    }

    if ((v79 & 1) == 0)
    {
LABEL_137:
      __break(1u);
LABEL_138:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc", 587, "pt_suggester", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v56);
    }

    *(v9 + 12) = v78;
    if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(__p);
    goto LABEL_25;
  }

  v17 = -1;
  do
  {
    if (*(v9 + 12) == -1)
    {
      goto LABEL_138;
    }

    v27 = *(v9 + 39);
    if (v27 < 0)
    {
      v28 = *(v9 + 16);
      if (*(v9 + 24) != 4)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v28 = (v9 + 16);
      if (v27 != 4)
      {
        goto LABEL_53;
      }
    }

    v29 = *v28;
    if (v29 != webrtc::kOpusCodecName[0])
    {
      if ((v29 - 65) < 0x1A)
      {
        LOBYTE(v29) = v29 + 32;
      }

      if (v29 != v12)
      {
        goto LABEL_53;
      }
    }

    v30 = v28[1];
    if (v30 != webrtc::kOpusCodecName[1])
    {
      if ((v30 - 65) < 0x1A)
      {
        LOBYTE(v30) = v30 + 32;
      }

      if (v30 != v62)
      {
        goto LABEL_53;
      }
    }

    v31 = v28[2];
    if (v31 != webrtc::kOpusCodecName[2])
    {
      if ((v31 - 65) < 0x1A)
      {
        LOBYTE(v31) = v31 + 32;
      }

      if (v31 != v60)
      {
        goto LABEL_53;
      }
    }

    v32 = v28[3];
    if (v32 != webrtc::kOpusCodecName[3])
    {
      if ((v32 - 65) < 0x1A)
      {
        LOBYTE(v32) = v32 + 32;
      }

      if (v32 != v15)
      {
LABEL_53:
        v26 = 0;
        goto LABEL_54;
      }
    }

    v26 = 1;
LABEL_54:
    if ((v26 & (v17 == -1)) != 0)
    {
      v17 = *(v9 + 12);
    }

    v9 += 216;
  }

  while (v9 != v10);
LABEL_79:
  if (v17 != -1)
  {
    v33 = a4[1];
    if (*a4 != v33)
    {
      if (webrtc::kRedCodecName - 65 >= 0x1A)
      {
        v34 = webrtc::kRedCodecName;
      }

      else
      {
        v34 = webrtc::kRedCodecName + 32;
      }

      v35 = HIBYTE(webrtc::kRedCodecName);
      if (HIBYTE(webrtc::kRedCodecName) - 65 >= 0x1A)
      {
        v36 = HIBYTE(webrtc::kRedCodecName);
      }

      else
      {
        v36 = HIBYTE(webrtc::kRedCodecName) + 32;
      }

      v37 = 100;
      v38 = 100;
      v39 = *a4 + 168;
      v40 = xmmword_273B8FB60;
      do
      {
        if (!*(v39 - 160))
        {
          v44 = *(v39 - 129);
          if (v44 < 0)
          {
            v45 = *(v39 - 152);
            if (*(v39 - 144) == 3)
            {
LABEL_106:
              v46 = *v45;
              if (v46 != webrtc::kRedCodecName)
              {
                if ((v46 - 65) < 0x1A)
                {
                  LOBYTE(v46) = v46 + 32;
                }

                if (v46 != v34)
                {
                  goto LABEL_100;
                }
              }

              v47 = v45[1];
              if (v47 != v35)
              {
                if ((v47 - 65) < 0x1A)
                {
                  LOBYTE(v47) = v47 + 32;
                }

                if (v47 != v36)
                {
                  goto LABEL_100;
                }
              }

              v48 = v45[2];
              if (v48 != v37)
              {
                if ((v48 - 65) < 0x1A)
                {
                  LOBYTE(v48) = v48 + 32;
                }

                if (v48 != v38)
                {
                  goto LABEL_100;
                }
              }

              if (*(v39 + 16))
              {
                goto LABEL_100;
              }

              v59 = v35;
              v61 = v37;
              v64 = v38;
              v66 = v36;
              __s = &v74;
              v63 = v40;
              v72 = v40;
              LOBYTE(v74) = 0;
              webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", v17);
              v49 = v72;
              v50 = *(&v72 + 1) + 1;
              memcpy(&__s[*(&v72 + 1)], "/", v72 != *(&v72 + 1) + 1);
              v51 = *(&v72 + 1);
              if (v49 != v50)
              {
                v51 = *(&v72 + 1) + 1;
              }

              *(&v72 + 1) = v51;
              __s[v51] = 0;
              webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", v17);
              v70 = 0;
              LOBYTE(v69[0]) = 0;
              if (!__s)
              {
                goto LABEL_137;
              }

              v52 = strlen(__s);
              if (v52 >= 0x7FFFFFFFFFFFFFF8)
              {
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              if (v52 > 0x16)
              {
                operator new();
              }

              HIBYTE(v68) = v52;
              v53 = v67 + v52;
              if (v67 <= __s && v53 > __s)
              {
                goto LABEL_137;
              }

              if (v52)
              {
                memmove(v67, __s, v52);
              }

              *v53 = 0;
              v73 = v69;
              v54 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v39, v69);
              v55 = (v54 + 7);
              if (v54 + 7 != v67)
              {
                if (*(v54 + 79) < 0)
                {
                  if (v68 >= 0)
                  {
                    v41 = v67;
                  }

                  else
                  {
                    v41 = v67[0];
                  }

                  if (v68 >= 0)
                  {
                    v42 = HIBYTE(v68);
                  }

                  else
                  {
                    v42 = v67[1];
                  }

                  std::string::__assign_no_alias<false>(v55, v41, v42);
                }

                else
                {
                  if ((v68 & 0x8000000000000000) == 0)
                  {
                    *&v55->__r_.__value_.__l.__data_ = *v67;
                    v54[9] = v68;
LABEL_97:
                    if (v70 < 0)
                    {
                      operator delete(v69[0]);
                    }

                    v38 = v64;
                    v36 = v66;
                    v40 = v63;
                    v35 = v59;
                    v37 = v61;
                    goto LABEL_100;
                  }

                  std::string::__assign_no_alias<true>(v55, v67[0], v67[1]);
                }
              }

              if (SHIBYTE(v68) < 0)
              {
                operator delete(v67[0]);
              }

              goto LABEL_97;
            }
          }

          else
          {
            v45 = (v39 - 152);
            if (v44 == 3)
            {
              goto LABEL_106;
            }
          }
        }

LABEL_100:
        v43 = v39 + 48;
        v39 += 216;
      }

      while (v43 != v33);
    }
  }

LABEL_135:
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

void webrtc::CodecVendor::GetNegotiatedCodecsForAnswer(const webrtc::Codec **a1@<X0>, int *a2@<X1>, _BYTE *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, webrtc::Codec **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a6;
  v13 = a2;
  v186 = *MEMORY[0x277D85DE8];
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v148 = a2 + 2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, *(a2 + 1), *(a2 + 2));
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v176 = *(a2 + 2);
    if (!a6)
    {
      goto LABEL_18;
    }
  }

  v16 = *(v10 + 31);
  if (v16 >= 0)
  {
    v17 = *(v10 + 31);
  }

  else
  {
    v17 = *(v10 + 16);
  }

  size = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v176.__r_.__value_.__l.__size_;
  }

  if (v17 != size)
  {
    goto LABEL_18;
  }

  v19 = v16 >= 0 ? (v10 + 8) : *(v10 + 8);
  v20 = (v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v176 : v176.__r_.__value_.__r.__words[0];
  if (memcmp(v19, v20, v17))
  {
    goto LABEL_18;
  }

  webrtc::CodecList::Create((*(v10 + 32) + 280), v180);
  v61 = *v180;
  if (*v180)
  {
    v62 = *&v180[16];
    *(a9 + 8) = *&v180[8];
    *(a9 + 16) = v62;
    *(a9 + 23) = *&v180[23];
    LOBYTE(v62) = v180[31];
    memset(&v180[8], 0, 24);
    *(a9 + 32) = v181[0];
    *(a9 + 35) = *(v181 + 3);
    *a9 = v61;
    *(a9 + 31) = v62;
    *(a9 + 40) = 0;
    *(a9 + 64) = 0;
  }

  else
  {
    if ((v184 & 1) == 0)
    {
      goto LABEL_240;
    }

    if (v175 < 0)
    {
      operator delete(v174);
    }
  }

  if (v184 == 1)
  {
    v63 = v182;
    if (v182)
    {
      v64 = v182;
      if (*(&v182 + 1) != v182)
      {
        v142 = v61;
        v145 = a8;
        v65 = *(&v182 + 1) - 216;
        v66 = *(&v182 + 1) - 216;
        v67 = (*(&v182 + 1) - 216);
        do
        {
          v68 = *v67;
          v67 -= 27;
          (*v68)(v66);
          v65 -= 216;
          v33 = v66 == v63;
          v66 = v67;
        }

        while (!v33);
        v64 = v182;
        a8 = v145;
        v61 = v142;
      }

      *(&v182 + 1) = v63;
      operator delete(v64);
    }
  }

  if ((v180[31] & 0x80000000) != 0)
  {
    operator delete(*&v180[8]);
  }

  if (!v61)
  {
LABEL_18:
    if (*v13)
    {
      webrtc::CodecVendor::all_video_codecs(v180, a1);
      if (v169 < 0)
      {
        operator delete(__p);
      }

      v21 = *v180;
      if (*v180)
      {
        v22 = *v180;
        if (*&v180[8] != *v180)
        {
          v143 = a9;
          v23 = v13;
          v24 = v10;
          v25 = a1;
          v26 = a5;
          v27 = a4;
          v28 = a8;
          v29 = *&v180[8] - 216;
          v30 = *&v180[8] - 216;
          v31 = (*&v180[8] - 216);
          do
          {
            v32 = *v31;
            v31 -= 27;
            (*v32)(v30);
            v29 -= 216;
            v33 = v30 == v21;
            v30 = v31;
          }

          while (!v33);
          v22 = *v180;
          a8 = v28;
          a4 = v27;
          a5 = v26;
          a1 = v25;
          v10 = v24;
          v13 = v23;
          a9 = v143;
        }

LABEL_35:
        *&v180[8] = v21;
        operator delete(v22);
      }
    }

    else
    {
      webrtc::CodecVendor::all_audio_codecs(v180, a1);
      if (v172 < 0)
      {
        operator delete(v171);
      }

      v21 = *v180;
      if (*v180)
      {
        v22 = *v180;
        if (*&v180[8] != *v180)
        {
          v144 = a1;
          v34 = a5;
          v35 = a4;
          v36 = a8;
          v37 = *&v180[8] - 216;
          v38 = *&v180[8] - 216;
          v39 = (*&v180[8] - 216);
          do
          {
            v40 = *v39;
            v39 -= 27;
            (*v40)(v38);
            v37 -= 216;
            v33 = v38 == v21;
            v38 = v39;
          }

          while (!v33);
          v22 = *v180;
          a8 = v36;
          a4 = v35;
          a5 = v34;
          a1 = v144;
        }

        goto LABEL_35;
      }
    }

    v165[0] = 0;
    v165[1] = 0;
    v166 = 0;
    v163[0] = 0;
    v163[1] = 0;
    v164 = 0;
    v41 = (v13 + 28);
    if (*(v13 + 14) != *(v13 + 15))
    {
      webrtc::CodecList::Create(v41, v180);
      v46 = *v180;
      if (*v180)
      {
        v47 = *&v180[16];
        *(a9 + 8) = *&v180[8];
        *(a9 + 16) = v47;
        *(a9 + 23) = *&v180[23];
        LOBYTE(v47) = v180[31];
        memset(&v180[8], 0, 24);
        *(a9 + 32) = v181[0];
        *(a9 + 35) = *(v181 + 3);
        *a9 = v46;
        *(a9 + 31) = v47;
        *(a9 + 40) = 0;
        *(a9 + 64) = 0;
        if (v184)
        {
          v48 = v182;
          if (v182)
          {
            v49 = v182;
            if (*(&v182 + 1) != v182)
            {
              v50 = a8;
              v51 = *(&v182 + 1) - 216;
              v52 = *(&v182 + 1) - 216;
              v53 = (*(&v182 + 1) - 216);
              do
              {
                v54 = *v53;
                v53 -= 27;
                (*v54)(v52);
                v51 -= 216;
                v33 = v52 == v48;
                v52 = v53;
              }

              while (!v33);
              v49 = v182;
              a8 = v50;
            }

            *(&v182 + 1) = v48;
            operator delete(v49);
          }
        }

        if ((v180[31] & 0x80000000) != 0)
        {
LABEL_58:
          operator delete(*&v180[8]);
          if (v46)
          {
            goto LABEL_187;
          }

LABEL_181:
          if (v151 < 0)
          {
            operator delete(v150);
          }

          *a9 = 0;
          *(a9 + 38) = 0;
          *(a9 + 16) = 0;
          *(a9 + 24) = 0;
          *(a9 + 8) = 0;
          *(a9 + 29) = 0;
          *(a9 + 48) = 0;
          *(a9 + 56) = 0;
          *(a9 + 40) = 0;
          if (v163[1] != v163[0])
          {
            if (0x84BDA12F684BDA13 * ((v163[1] - v163[0]) >> 3) <= 0x12F684BDA12F684)
            {
              operator new();
            }

            goto LABEL_241;
          }

          *(a9 + 64) = 1;
LABEL_187:
          v110 = v163[0];
          if (!v163[0])
          {
LABEL_194:
            v115 = v165[0];
            if (v165[0])
            {
              v116 = v165[0];
              if (v165[1] != v165[0])
              {
                v117 = v165[1] - 216;
                v118 = v165[1] - 216;
                v119 = (v165[1] - 216);
                do
                {
                  v120 = *v119;
                  v119 -= 27;
                  (*v120)(v118);
                  v117 -= 216;
                  v33 = v118 == v115;
                  v118 = v119;
                }

                while (!v33);
                v116 = v165[0];
              }

              v165[1] = v115;
              operator delete(v116);
            }

            goto LABEL_201;
          }

LABEL_188:
          if (v163[1] != v110)
          {
            v111 = v163[1] - 216;
            v112 = v163[1] - 216;
            v113 = (v163[1] - 216);
            do
            {
              v114 = *v113;
              v113 -= 27;
              (*v114)(v112);
              v111 -= 216;
              v33 = v112 == v110;
              v112 = v113;
            }

            while (!v33);
            v110 = v163[0];
          }

          operator delete(v110);
          goto LABEL_194;
        }

LABEL_180:
        if (v46)
        {
          goto LABEL_187;
        }

        goto LABEL_181;
      }

      if (v184)
      {
        v57 = v183;
        v58 = v182;
        v183 = 0;
        v182 = 0uLL;
        *v163 = v58;
        v164 = v57;
        if ((v180[31] & 0x80000000) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_180;
      }

LABEL_240:
      __break(1u);
    }

    if (*v13)
    {
      if (a5 > 2)
      {
        if ((a5 - 3) > 1)
        {
          goto LABEL_242;
        }
      }

      else if (a5)
      {
        if (a5 != 1)
        {
          if (a5 == 2)
          {
            v160 = 0;
            v161 = 0;
            v162 = 0;
            v56 = a1[9];
            v55 = a1[10];
            if (v55 != v56)
            {
              if (0x84BDA12F684BDA13 * ((v55 - v56) >> 3) <= 0x12F684BDA12F684)
              {
                operator new();
              }

              goto LABEL_241;
            }

            goto LABEL_102;
          }

LABEL_242:
          webrtc::webrtc_checks_impl::UnreachableCodeReached(v41);
        }

        v160 = 0;
        v161 = 0;
        v162 = 0;
        v70 = a1[6];
        v69 = a1[7];
        if (v69 != v70)
        {
          if (0x84BDA12F684BDA13 * ((v69 - v70) >> 3) <= 0x12F684BDA12F684)
          {
            operator new();
          }

          goto LABEL_241;
        }

LABEL_102:
        v72 = *(v13 + 8);
        v73 = *(v13 + 9);
        if (v72 == v73)
        {
          if (v10 && (*(v10 + 4) & 1) == 0)
          {
            v82 = *(v10 + 31);
            if (v82 >= 0)
            {
              v83 = *(v10 + 31);
            }

            else
            {
              v83 = *(v10 + 16);
            }

            v84 = *(v13 + 31);
            v85 = v84;
            if ((v84 & 0x80u) != 0)
            {
              v84 = *(v13 + 2);
            }

            if (v83 == v84)
            {
              v86 = v82 >= 0 ? (v10 + 8) : *(v10 + 8);
              v87 = v85 >= 0 ? v148 : *v148;
              if (!memcmp(v86, v87, v83))
              {
                v127 = *(v10 + 32);
                if (!v127 || (v128 = *v13, (*(*v127 + 16))(v127) != v128))
                {
                  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                  {
                    std::operator+<char>();
                    std::operator+[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>("' does not match previous type.", &v159, v180);
                    v158.__r_.__value_.__r.__words[0] = "INTERNAL_ERROR";
                    v158.__r_.__value_.__l.__size_ = 14;
                    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v133, v134, v135, v136, v137, v138, v139, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
                    if ((v180[23] & 0x80000000) != 0)
                    {
                      operator delete(*v180);
                    }

                    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v159.__r_.__value_.__l.__data_);
                    }
                  }

                  std::operator+<char>();
                  std::operator+[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>("' does not match previous type.", &v158, &v159);
                  if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v140 = &v159;
                  }

                  else
                  {
                    v140 = v159.__r_.__value_.__r.__words[0];
                  }

                  if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v141 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v141 = v159.__r_.__value_.__l.__size_;
                  }

                  webrtc::RTCError::RTCError(v180, 10, v140, v141);
                  *a9 = *v180;
                  *(a9 + 8) = *&v180[8];
                  *(a9 + 24) = *&v180[24];
                  memset(&v180[8], 0, 24);
                  *(a9 + 32) = v181[0];
                  *(a9 + 35) = *(v181 + 3);
                  *(a9 + 40) = 0;
                  *(a9 + 64) = 0;
                  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v159.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v158.__r_.__value_.__l.__data_);
                  }

                  webrtc::CodecList::~CodecList(&v160);
                  v110 = v163[0];
                  if (!v163[0])
                  {
                    goto LABEL_194;
                  }

                  goto LABEL_188;
                }

                v129 = *(v10 + 32);
                v131 = *(v129 + 280);
                v130 = *(v129 + 288);
                while (v131 != v130)
                {
                  webrtc::FindMatchingCodec((v129 + 280), &v177, v131, v180);
                  if (v185 == 1)
                  {
                    if (v165[1] >= v166)
                    {
                      std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(v165);
                    }

                    if (!v165[1])
                    {
                      goto LABEL_240;
                    }

                    v132 = webrtc::Codec::Codec(v165[1], v180) + 216;
                    v165[1] = v132;
                    if (v185)
                    {
                      webrtc::Codec::~Codec(v180);
                    }
                  }

                  v131 = (v131 + 216);
                }
              }
            }
          }

          if (v157 < 0)
          {
            operator delete(v156);
          }
        }

        else
        {
          v75 = v165[0];
          if (v165[0])
          {
            v76 = v165[0];
            if (v165[1] != v165[0])
            {
              v77 = a8;
              v78 = v165[1] - 216;
              v79 = v165[1] - 216;
              v80 = (v165[1] - 216);
              do
              {
                v81 = *v80;
                v80 -= 27;
                (*v81)(v79);
                v78 -= 216;
                v33 = v79 == v75;
                v79 = v80;
              }

              while (!v33);
              v76 = v165[0];
              a8 = v77;
            }

            v165[1] = v75;
            operator delete(v76);
          }

          *v165 = *v180;
          v166 = *&v180[16];
        }

        if (*v13 != 1)
        {
          if (!*v13 && (*a3 & 1) == 0)
          {
          }

LABEL_158:
          webrtc::CodecList::Create(a7, v180);
          v46 = *v180;
          if (*v180)
          {
            v95 = *&v180[16];
            *(a9 + 8) = *&v180[8];
            *(a9 + 16) = v95;
            *(a9 + 23) = *&v180[23];
            LOBYTE(v95) = v180[31];
            memset(&v180[8], 0, 24);
            *(a9 + 32) = v181[0];
            *(a9 + 35) = *(v181 + 3);
            *a9 = v46;
            *(a9 + 31) = v95;
            *(a9 + 40) = 0;
            *(a9 + 64) = 0;
          }

          else
          {
            if ((v184 & 1) == 0)
            {
              goto LABEL_240;
            }

            if (v154 < 0)
            {
              operator delete(v153);
            }
          }

          if (v184 == 1)
          {
            v96 = v182;
            if (v182)
            {
              v97 = v182;
              if (*(&v182 + 1) != v182)
              {
                v98 = a8;
                v99 = *(&v182 + 1) - 216;
                v100 = *(&v182 + 1) - 216;
                v101 = (*(&v182 + 1) - 216);
                do
                {
                  v102 = *v101;
                  v101 -= 27;
                  (*v102)(v100);
                  v99 -= 216;
                  v33 = v100 == v96;
                  v100 = v101;
                }

                while (!v33);
                v97 = v182;
                a8 = v98;
              }

              *(&v182 + 1) = v96;
              operator delete(v97);
            }
          }

          if ((v180[31] & 0x80000000) != 0)
          {
            operator delete(*&v180[8]);
          }

          v103 = v160;
          if (v160)
          {
            v104 = v160;
            if (v161 != v160)
            {
              v105 = a8;
              v106 = v161 - 216;
              v107 = v161 - 216;
              v108 = (v161 - 216);
              do
              {
                v109 = *v108;
                v108 -= 27;
                (*v109)(v107);
                v106 -= 216;
                v33 = v107 == v103;
                v107 = v108;
              }

              while (!v33);
              v104 = v160;
              a8 = v105;
            }

            v161 = v103;
            operator delete(v104);
          }

          goto LABEL_180;
        }

        if (a3[4] != 1)
        {
          goto LABEL_158;
        }

        v89 = v165[0];
        v88 = v165[1];
        if (v165[0] == v165[1])
        {
          goto LABEL_158;
        }

        while (1)
        {
          if (webrtc::Codec::GetResiliencyType(v89))
          {
            goto LABEL_136;
          }

          v90 = v89[39];
          if (v90 < 0)
          {
            v91 = *(v89 + 2);
            if (*(v89 + 3) == 2)
            {
LABEL_142:
              v92 = *v91;
              if (v92 == 67)
              {
                goto LABEL_149;
              }

              if ((v92 - 65) < 0x1A)
              {
                LOBYTE(v92) = v92 + 32;
              }

              if (v92 == 99)
              {
LABEL_149:
                v93 = v91[1];
                if (v93 == 78)
                {
                  goto LABEL_136;
                }

                if ((v93 - 65) < 0x1A)
                {
                  LOBYTE(v93) = v93 + 32;
                }

                if (v93 == 110)
                {
                  goto LABEL_136;
                }
              }
            }
          }

          else
          {
            v91 = (v89 + 16);
            if (v90 == 2)
            {
              goto LABEL_142;
            }
          }

          v94 = (v89 + 56);
          if (v89[80] == 1)
          {
            if (v89[79] < 0)
            {
              *(v89 + 8) = 3;
              v94 = *(v89 + 7);
            }

            else
            {
              v89[79] = 3;
            }

            *v94 = webrtc::kPacketizationParamRaw;
            v94[1] = 119;
          }

          else
          {
            v89[79] = 3;
            if (v94 <= &webrtc::kPacketizationParamRaw && v89 + 59 > &webrtc::kPacketizationParamRaw)
            {
              goto LABEL_240;
            }

            *v94 = webrtc::kPacketizationParamRaw;
            *(v89 + 29) = 119;
            v89[80] = 1;
          }

LABEL_136:
          v89 += 216;
          if (v89 == v88)
          {
            goto LABEL_158;
          }
        }
      }

      if (a4 == 2)
      {
        a4 = 1;
      }

      else if (a4 == 1)
      {
        a4 = 2;
      }

      webrtc::CodecVendor::GetVideoCodecsForOffer(&v160, a1, a4);
      goto LABEL_102;
    }

    if (a5 > 2)
    {
      if ((a5 - 3) > 1)
      {
        goto LABEL_242;
      }
    }

    else if (a5)
    {
      if (a5 == 1)
      {
        v160 = 0;
        v161 = 0;
        v162 = 0;
        v71 = a1[1] - *a1;
        if (!v71)
        {
          goto LABEL_102;
        }

        if (0x84BDA12F684BDA13 * (v71 >> 3) <= 0x12F684BDA12F684)
        {
          operator new();
        }
      }

      else
      {
        if (a5 != 2)
        {
          goto LABEL_242;
        }

        v160 = 0;
        v161 = 0;
        v162 = 0;
        v60 = a1[3];
        v59 = a1[4];
        if (v59 == v60)
        {
          goto LABEL_102;
        }

        if (0x84BDA12F684BDA13 * ((v59 - v60) >> 3) <= 0x12F684BDA12F684)
        {
          operator new();
        }
      }

LABEL_241:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (a4 == 2)
    {
      a4 = 1;
    }

    else if (a4 == 1)
    {
      a4 = 2;
    }

    webrtc::CodecVendor::GetAudioCodecsForOffer(&v160, a1, a4);
    goto LABEL_102;
  }

LABEL_201:
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v121 = v177;
  if (v177)
  {
    v122 = v177;
    if (v178 != v177)
    {
      v123 = v178 - 216;
      v124 = v178 - 216;
      v125 = (v178 - 216);
      do
      {
        v126 = *v125;
        v125 -= 27;
        (*v126)(v124);
        v123 -= 216;
        v33 = v124 == v121;
        v124 = v125;
      }

      while (!v33);
      v122 = v177;
    }

    v178 = v121;
    operator delete(v122);
  }
}

void webrtc::anonymous namespace::NegotiateCodecs(webrtc::_anonymous_namespace_ *this, const webrtc::CodecList *a2, const webrtc::Codec **a3, webrtc::CodecList *a4, char a5)
{
  v218 = *MEMORY[0x277D85DE8];
  v5 = v183;
  v183[0] = 0;
  v183[1] = 0;
  v181 = 0;
  v182 = v183;
  v179 = 0;
  v180 = 0;
  v6 = *a2;
  v7 = *(a2 + 1);
  if (*a2 == v7)
  {
    goto LABEL_313;
  }

  v9 = __dst;
  v176 = v215;
  v11 = &__s2 <= "rtx-time" && &__s2.__r_.__value_.__r.__words[1] > "rtx-time";
  v174 = v11;
  v13 = &__s2 <= "rtx-time" && &__s2.__r_.__value_.__r.__words[1] > "rtx-time";
  v165 = v13;
  if (webrtc::kH264CodecName[0] - 65 >= 0x1A)
  {
    v14 = webrtc::kH264CodecName[0];
  }

  else
  {
    v14 = webrtc::kH264CodecName[0] + 32;
  }

  v173 = v14;
  if (webrtc::kH264CodecName[1] - 65 >= 0x1A)
  {
    v15 = webrtc::kH264CodecName[1];
  }

  else
  {
    v15 = webrtc::kH264CodecName[1] + 32;
  }

  v171 = v15;
  if (webrtc::kH264CodecName[2] - 65 >= 0x1A)
  {
    v16 = webrtc::kH264CodecName[2];
  }

  else
  {
    v16 = webrtc::kH264CodecName[2] + 32;
  }

  v167 = v16;
  if (webrtc::kH264CodecName[3] - 65 >= 0x1A)
  {
    v17 = webrtc::kH264CodecName[3];
  }

  else
  {
    v17 = webrtc::kH264CodecName[3] + 32;
  }

  v164 = v17;
  if (webrtc::kH265CodecName[0] - 65 >= 0x1A)
  {
    v18 = webrtc::kH265CodecName[0];
  }

  else
  {
    v18 = webrtc::kH265CodecName[0] + 32;
  }

  v172 = v18;
  if (webrtc::kH265CodecName[1] - 65 >= 0x1A)
  {
    v19 = webrtc::kH265CodecName[1];
  }

  else
  {
    v19 = webrtc::kH265CodecName[1] + 32;
  }

  v170 = v19;
  if (webrtc::kH265CodecName[2] - 65 >= 0x1A)
  {
    v20 = webrtc::kH265CodecName[2];
  }

  else
  {
    v20 = webrtc::kH265CodecName[2] + 32;
  }

  v166 = v20;
  if (webrtc::kH265CodecName[3] - 65 >= 0x1A)
  {
    v21 = webrtc::kH265CodecName[3];
  }

  else
  {
    v21 = webrtc::kH265CodecName[3] + 32;
  }

  v163 = v21;
  while (2)
  {
    webrtc::FindMatchingCodec(a2, a3, v6, __p);
    if (v217 != 1)
    {
      goto LABEL_39;
    }

    webrtc::Codec::Codec(__dst, v6);
    if ((v217 & 1) == 0)
    {
      goto LABEL_354;
    }

    v22 = (v6 + 56);
    v23 = *(v6 + 80);
    v24 = v23 != 1 || v210 == 0;
    if (v24)
    {
      if (v23 != v210)
      {
LABEL_62:
        v30 = 0;
        __s2.__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_68;
      }
    }

    else
    {
      v25 = *(v6 + 79);
      if (v25 >= 0)
      {
        v26 = *(v6 + 79);
      }

      else
      {
        v26 = *(v6 + 64);
      }

      v27 = v209;
      if ((v209 & 0x80u) != 0)
      {
        v27 = v208;
      }

      if (v26 != v27)
      {
        goto LABEL_62;
      }

      v28 = (v25 >= 0 ? v6 + 56 : *v22);
      v29 = (v209 & 0x80u) == 0 ? &v207 : v207;
      if (memcmp(v28, v29, v26))
      {
        goto LABEL_62;
      }
    }

    __s2.__r_.__value_.__s.__data_[0] = 0;
    v185 = 0;
    if (!v23)
    {
      goto LABEL_69;
    }

    if (*(v6 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&__s2, *(v6 + 56), *(v6 + 64));
    }

    else
    {
      *&__s2.__r_.__value_.__l.__data_ = *v22;
      __s2.__r_.__value_.__r.__words[2] = *(v6 + 72);
    }

    v30 = 1;
LABEL_68:
    v185 = v30;
LABEL_69:
    std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v190, &__s2);
    if (v185 == 1 && SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s2.__r_.__value_.__l.__data_);
    }

    if ((v217 & 1) == 0)
    {
      goto LABEL_354;
    }

    webrtc::FeedbackParams::Intersect(v203, &v216);
    if (webrtc::Codec::GetResiliencyType(__dst) != 4)
    {
      if (webrtc::Codec::GetResiliencyType(__dst) != 1)
      {
        goto LABEL_131;
      }

      if ((v217 & 1) == 0)
      {
        goto LABEL_354;
      }

      v43 = v215[0];
      if (!v215[0])
      {
        goto LABEL_131;
      }

      do
      {
        v44 = v43;
        v43 = *v43;
      }

      while (v43);
      if (v44 == v215)
      {
        goto LABEL_131;
      }

      v45 = *(v44 + 55);
      if ((v45 & 0x80u) != 0)
      {
        v45 = v44[5];
      }

      if (v45)
      {
        goto LABEL_131;
      }

      *(&__s2.__r_.__value_.__s + 23) = 0;
      __s2.__r_.__value_.__s.__data_[0] = 0;
      p_s2 = &__s2;
      v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v200, &__s2.__r_.__value_.__l.__data_);
      if (v44 == v46)
      {
        goto LABEL_130;
      }

      v47 = (v44 + 7);
      v48 = *(v44 + 79);
      if ((*(v46 + 79) & 0x80000000) == 0)
      {
        if ((v48 & 0x80) != 0)
        {
          v49 = v44[7];
          v50 = v44[8];
          goto LABEL_129;
        }

LABEL_123:
        v51 = *v47;
        v46[9] = *(v47 + 2);
        *(v46 + 7) = v51;
        if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_131;
        }

        goto LABEL_124;
      }

      v56 = v48;
      v57 = v44[7];
      v58 = v44[8];
LABEL_231:
      if (v56 >= 0)
      {
        v90 = v47;
      }

      else
      {
        v90 = v57;
      }

      if (v56 >= 0)
      {
        v91 = v48;
      }

      else
      {
        v91 = v58;
      }

      std::string::__assign_no_alias<false>((v46 + 7), v90, v91);
      if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_124;
      }

LABEL_131:
      v52 = (v6 + 16);
      v53 = *(v6 + 39);
      v54 = (v6 + 16);
      v55 = v53;
      if (*(v6 + 39) < 0)
      {
        goto LABEL_125;
      }

LABEL_132:
      if (v55 == 4)
      {
        goto LABEL_133;
      }

      goto LABEL_151;
    }

    if ((v217 & 1) == 0)
    {
      goto LABEL_354;
    }

    *(&__s2.__r_.__value_.__s + 23) = 8;
    if (v174)
    {
      goto LABEL_354;
    }

    strcpy(&__s2, "rtx-time");
    v31 = v215[0];
    if (!v215[0])
    {
      goto LABEL_131;
    }

    v32 = v215;
    do
    {
      while (1)
      {
        v33 = *(v31 + 55);
        v34 = v33 >= 0 ? v31 + 4 : v31[4];
        v35 = v33 >= 0 ? *(v31 + 55) : v31[5];
        v36 = v35 >= 8 ? 8 : v35;
        v37 = memcmp(v34, &__s2, v36);
        if (v37)
        {
          break;
        }

        if (v35 >= 8)
        {
          goto LABEL_92;
        }

LABEL_78:
        v31 = v31[1];
        if (!v31)
        {
          goto LABEL_93;
        }
      }

      if (v37 < 0)
      {
        goto LABEL_78;
      }

LABEL_92:
      v32 = v31;
      v31 = *v31;
    }

    while (v31);
LABEL_93:
    if (v32 == v215)
    {
      goto LABEL_131;
    }

    v38 = *(v32 + 55);
    if (v38 >= 0)
    {
      v39 = v32 + 4;
    }

    else
    {
      v39 = v32[4];
    }

    if (v38 >= 0)
    {
      v40 = *(v32 + 55);
    }

    else
    {
      v40 = v32[5];
    }

    if (v40 >= 8)
    {
      v41 = 8;
    }

    else
    {
      v41 = v40;
    }

    v42 = memcmp(&__s2, v39, v41);
    if (v42)
    {
      if (v42 < 0)
      {
        goto LABEL_131;
      }
    }

    else if (v40 > 8)
    {
      goto LABEL_131;
    }

    *(&__s2.__r_.__value_.__s + 23) = 8;
    if (v165)
    {
      goto LABEL_354;
    }

    strcpy(&__s2, "rtx-time");
    p_s2 = &__s2;
    v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v200, &__s2.__r_.__value_.__l.__data_);
    if (v32 == v46)
    {
      goto LABEL_130;
    }

    v47 = (v32 + 7);
    v48 = *(v32 + 79);
    if (*(v46 + 79) < 0)
    {
      v56 = v48;
      v57 = v32[7];
      v58 = v32[8];
      goto LABEL_231;
    }

    if ((v48 & 0x80) == 0)
    {
      goto LABEL_123;
    }

    v49 = v32[7];
    v50 = v32[8];
LABEL_129:
    std::string::__assign_no_alias<true>(v46 + 56, v49, v50);
LABEL_130:
    if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_131;
    }

LABEL_124:
    operator delete(__s2.__r_.__value_.__l.__data_);
    v52 = (v6 + 16);
    v53 = *(v6 + 39);
    v54 = (v6 + 16);
    v55 = v53;
    if ((*(v6 + 39) & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

LABEL_125:
    v54 = *(v6 + 16);
    if (*(v6 + 24) != 4)
    {
      goto LABEL_151;
    }

LABEL_133:
    v59 = *v54;
    if (v59 == webrtc::kH264CodecName[0])
    {
      goto LABEL_148;
    }

    if ((v59 - 65) < 0x1A)
    {
      LOBYTE(v59) = v59 + 32;
    }

    if (v59 == v173)
    {
LABEL_148:
      v60 = v54[1];
      if (v60 == webrtc::kH264CodecName[1])
      {
        goto LABEL_359;
      }

      if ((v60 - 65) < 0x1A)
      {
        LOBYTE(v60) = v60 + 32;
      }

      if (v60 == v171)
      {
LABEL_359:
        v61 = v54[2];
        if (v61 == webrtc::kH264CodecName[2])
        {
          goto LABEL_360;
        }

        if ((v61 - 65) < 0x1A)
        {
          LOBYTE(v61) = v61 + 32;
        }

        if (v61 == v167)
        {
LABEL_360:
          v62 = v54[3];
          if (v62 == webrtc::kH264CodecName[3])
          {
            goto LABEL_149;
          }

          if ((v62 - 65) < 0x1A)
          {
            LOBYTE(v62) = v62 + 32;
          }

          if (v62 == v164)
          {
LABEL_149:
            if (v217)
            {
              webrtc::H264GenerateProfileLevelIdForAnswer(v6 + 168, &v214);
              v53 = *(v6 + 39);
              goto LABEL_151;
            }

LABEL_354:
            __break(1u);
LABEL_355:
            abort();
          }
        }
      }
    }

LABEL_151:
    if ((v53 & 0x80) != 0)
    {
      v52 = *(v6 + 16);
      if (*(v6 + 24) != 4)
      {
        goto LABEL_199;
      }
    }

    else if (v53 != 4)
    {
      goto LABEL_199;
    }

    v63 = *v52;
    if (v63 == webrtc::kH265CodecName[0])
    {
      goto LABEL_170;
    }

    if ((v63 - 65) < 0x1A)
    {
      LOBYTE(v63) = v63 + 32;
    }

    if (v63 == v172)
    {
LABEL_170:
      v64 = v52[1];
      if (v64 == webrtc::kH265CodecName[1])
      {
        goto LABEL_361;
      }

      if ((v64 - 65) < 0x1A)
      {
        LOBYTE(v64) = v64 + 32;
      }

      if (v64 == v170)
      {
LABEL_361:
        v65 = v52[2];
        if (v65 == webrtc::kH265CodecName[2])
        {
          goto LABEL_362;
        }

        if ((v65 - 65) < 0x1A)
        {
          LOBYTE(v65) = v65 + 32;
        }

        if (v65 == v166)
        {
LABEL_362:
          v66 = v52[3];
          if (v66 == webrtc::kH265CodecName[3])
          {
            goto LABEL_363;
          }

          if ((v66 - 65) < 0x1A)
          {
            LOBYTE(v66) = v66 + 32;
          }

          if (v66 == v163)
          {
LABEL_363:
            if ((v217 & 1) == 0)
            {
              goto LABEL_354;
            }

            webrtc::H265GenerateProfileTierLevelForAnswer(v6 + 168, &v214, &v200);
            if ((v217 & 1) == 0)
            {
              goto LABEL_354;
            }

            v67 = (v6 + 136);
            v68 = *(v6 + 160);
            if (v68 == 1 && v213)
            {
              v69 = *(v6 + 159);
              if (v69 >= 0)
              {
                v70 = *(v6 + 159);
              }

              else
              {
                v70 = *(v6 + 144);
              }

              v71 = v212;
              if ((v212 & 0x80u) != 0)
              {
                v71 = v211[1];
              }

              if (v70 != v71 || (v69 >= 0 ? (v72 = (v6 + 136)) : (v72 = *v67), (v212 & 0x80u) == 0 ? (v73 = v211) : (v73 = v211[0]), memcmp(v72, v73, v70)))
              {
LABEL_188:
                v74 = 0;
                __s2.__r_.__value_.__s.__data_[0] = 0;
                goto LABEL_195;
              }
            }

            else if (v68 != v213)
            {
              goto LABEL_188;
            }

            __s2.__r_.__value_.__s.__data_[0] = 0;
            v185 = 0;
            if (v68)
            {
              if (*(v6 + 159) < 0)
              {
                std::string::__init_copy_ctor_external(&__s2, *(v6 + 136), *(v6 + 144));
              }

              else
              {
                *&__s2.__r_.__value_.__l.__data_ = *v67;
                __s2.__r_.__value_.__r.__words[2] = *(v6 + 152);
              }

              v74 = 1;
LABEL_195:
              v185 = v74;
            }

            std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v197, &__s2);
            if (v185 == 1 && SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s2.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

LABEL_199:
    if ((v217 & 1) == 0)
    {
      goto LABEL_354;
    }

    v75 = v183[0];
    if (!v183[0])
    {
LABEL_206:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v76 = v75;
        v77 = *(v75 + 7);
        if (*&__dst[12] >= v77)
        {
          break;
        }

        v75 = *v76;
        if (!*v76)
        {
          goto LABEL_206;
        }
      }

      if (v77 >= *&__dst[12])
      {
        break;
      }

      v75 = v76[1];
      if (!v75)
      {
        goto LABEL_206;
      }
    }

    *&__dst[12] = HIDWORD(__p[1]);
    if (SHIBYTE(v188) < 0)
    {
      if (v205 >= 0)
      {
        v88 = &__p[2];
      }

      else
      {
        v88 = __p[2];
      }

      if (v205 >= 0)
      {
        v89 = HIBYTE(v205);
      }

      else
      {
        v89 = __p[3];
      }

      std::string::__assign_no_alias<false>(&__dst[16], v88, v89);
      v78 = v180;
      if (v180 >= v181)
      {
        goto LABEL_224;
      }
    }

    else
    {
      if ((v205 & 0x8000000000000000) == 0)
      {
        *&__dst[16] = *&__p[2];
        v188 = v205;
        v78 = v180;
        if (v180 < v181)
        {
          goto LABEL_210;
        }

LABEL_224:
        std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec>(&v179);
      }

      std::string::__assign_no_alias<true>(&__dst[16], __p[2], __p[3]);
      v78 = v180;
      if (v180 >= v181)
      {
        goto LABEL_224;
      }
    }

LABEL_210:
    if (!v78)
    {
      goto LABEL_354;
    }

    *v78 = &unk_288291428;
    *(v78 + 1) = *&__dst[8];
    v79 = *&__dst[16];
    *(v78 + 4) = v188;
    *(v78 + 1) = v79;
    v188 = 0;
    *&__dst[16] = 0uLL;
    *(v78 + 40) = v189;
    *(v78 + 56) = 0;
    *(v78 + 80) = 0;
    if (v192 == 1)
    {
      v80 = v190;
      *(v78 + 9) = v191;
      *(v78 + 56) = v80;
      v191 = 0;
      v190 = 0uLL;
      *(v78 + 80) = 1;
    }

    *(v78 + 136) = 0;
    *(v78 + 11) = 0;
    *(v78 + 11) = v193;
    v81 = v194;
    v82 = v195;
    *(v78 + 16) = v196;
    *(v78 + 7) = v82;
    *(v78 + 6) = v81;
    v193 = 0;
    *(v78 + 160) = 0;
    if (v199 == 1)
    {
      v83 = v197;
      *(v78 + 19) = v198;
      *(v78 + 136) = v83;
      v198 = 0;
      v197 = 0uLL;
      *(v78 + 160) = 1;
    }

    v85 = v200;
    v84 = v201;
    *(v78 + 22) = v201;
    v86 = v78 + 176;
    *(v78 + 21) = v85;
    v87 = v202;
    *(v78 + 23) = v202;
    if (v87)
    {
      *(v84 + 16) = v86;
      v200 = &v201;
      v201 = 0;
      v202 = 0;
    }

    else
    {
      *(v78 + 21) = v86;
    }

    std::vector<webrtc::FeedbackParam>::vector[abi:sn200100](v78 + 24, v203);
    v180 = (v78 + 216);
    webrtc::Codec::~Codec(__dst);
    if (v217)
    {
      webrtc::Codec::~Codec(__p);
    }

LABEL_39:
    v6 += 216;
    if (v6 != v7)
    {
      continue;
    }

    break;
  }

  v93 = v179;
  v92 = v180;
  if (v179 == v180)
  {
    goto LABEL_313;
  }

  v95 = &__s2 <= "apt" && __s2.__r_.__value_.__r.__words + 3 > "apt";
  v175 = v95;
  if (__p <= "apt" && __p + 3 > "apt")
  {
    while (webrtc::Codec::GetResiliencyType(v93) != 4)
    {
      v93 = (v93 + 216);
      if (v93 == v180)
      {
        goto LABEL_313;
      }
    }

    goto LABEL_354;
  }

  while (2)
  {
    if (webrtc::Codec::GetResiliencyType(v93) != 4)
    {
      goto LABEL_249;
    }

    memset(__dst, 0, 24);
    HIBYTE(__p[2]) = 3;
    LOWORD(__p[0]) = *"apt";
    WORD1(__p[0]) = webrtc::kCodecParamAssociatedPayloadType[2];
    v96 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v93 + 168, __p);
    v97 = v96;
    v98 = (v93 + 176);
    if ((v93 + 176) == v96 || v96 + 7 == __dst)
    {
LABEL_266:
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_256;
    }

    v99 = *(v96 + 79);
    if ((__dst[23] & 0x80000000) != 0)
    {
      if (v99 >= 0)
      {
        v107 = (v96 + 7);
      }

      else
      {
        v107 = v96[7];
      }

      if (v99 >= 0)
      {
        v108 = *(v96 + 79);
      }

      else
      {
        v108 = v96[8];
      }

      std::string::__assign_no_alias<false>(__dst, v107, v108);
      goto LABEL_266;
    }

    if ((*(v96 + 79) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, v96[7], v96[8]);
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_267;
      }

LABEL_256:
      operator delete(__p[0]);
      if (v98 != v97)
      {
        goto LABEL_268;
      }

      goto LABEL_257;
    }

    *__dst = *(v96 + 7);
    *&__dst[16] = v96[9];
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_256;
    }

LABEL_267:
    if (v98 == v97)
    {
LABEL_257:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_297;
      }

      v9 = v9 & 0xFFFFFFFF00000000 | 0x10AA;
LABEL_294:
      webrtc::webrtc_logging_impl::Log("\r\t", v100, v101, v102, v103, v104, v105, v106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
      goto LABEL_297;
    }

LABEL_268:
    if (__dst[23] >= 0)
    {
      v109 = __dst;
    }

    else
    {
      v109 = *__dst;
    }

    if (__dst[23] >= 0)
    {
      v110 = __dst[23];
    }

    else
    {
      v110 = *&__dst[8];
    }

    v111 = webrtc::string_to_number_internal::ParseSigned(v109, v110, 0xAuLL);
    if ((v113 & ((v111 + 0x80000000) >> 32 == 0)) != 0)
    {
      v114 = v111 | 0x100000000;
    }

    else
    {
      v114 = 0;
    }

    if ((v114 & 0x100000000) == 0)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_297;
      }

      v5 = v5 & 0xFFFFFFFF00000000 | 0x10D2;
      goto LABEL_294;
    }

    v115 = v183[0];
    if (!v183[0])
    {
LABEL_295:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v176 = v176 & 0xFFFFFFFF00000000 | 0x10F2;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v119, v120, v121, v122, v123, v124, v125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
      }

      goto LABEL_297;
    }

    v116 = v183[0];
    while (2)
    {
      v117 = *(v116 + 7);
      if (v117 > v114)
      {
LABEL_281:
        v116 = *v116;
        if (!v116)
        {
          goto LABEL_295;
        }

        continue;
      }

      break;
    }

    if (v117 < v114)
    {
      ++v116;
      goto LABEL_281;
    }

    *(&__s2.__r_.__value_.__s + 23) = 3;
    if (v175)
    {
      goto LABEL_354;
    }

    LOWORD(__s2.__r_.__value_.__l.__data_) = *"apt";
    *&__s2.__r_.__value_.__s.__data_[2] = webrtc::kCodecParamAssociatedPayloadType[2];
    while (1)
    {
      while (1)
      {
        v118 = *(v115 + 7);
        if (v118 <= v114)
        {
          break;
        }

        v115 = *v115;
        if (!v115)
        {
          goto LABEL_355;
        }
      }

      if (v118 >= v114)
      {
        break;
      }

      v115 = v115[1];
      if (!v115)
      {
        goto LABEL_355;
      }
    }

    v126 = *(v115 + 8);
    __p[2] = 0x1600000000000000;
    __p[1] = 0;
    __p[0] = 0;
    v127 = absl::numbers_internal::FastIntToBuffer(v126, __p, v112);
    v128 = (v127 - __p);
    if ((SHIBYTE(__p[2]) & 0x8000000000000000) == 0)
    {
      if (v128 <= SHIBYTE(__p[2]))
      {
        HIBYTE(__p[2]) = v127 - __p;
        v129 = __p;
        goto LABEL_306;
      }

LABEL_356:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (__p[1] < v128)
    {
      goto LABEL_356;
    }

    v129 = __p[0];
    __p[1] = (v127 - __p);
LABEL_306:
    v128[v129] = 0;
    p_s2 = &__s2;
    v130 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v93 + 168, &__s2.__r_.__value_.__l.__data_);
    v131 = v130;
    if (*(v130 + 79) < 0)
    {
      operator delete(v130[7]);
      *(v131 + 7) = *__p;
      v131[9] = __p[2];
      if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_310;
      }
    }

    else
    {
      *(v130 + 7) = *__p;
      v130[9] = __p[2];
      if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_310:
        operator delete(__s2.__r_.__value_.__l.__data_);
      }
    }

LABEL_297:
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

LABEL_249:
    v93 = (v93 + 216);
    if (v93 != v92)
    {
      continue;
    }

    break;
  }

LABEL_313:
  if (a5)
  {
    memset(__p, 0, sizeof(__p));
    LODWORD(v205) = 1065353216;
    v133 = *a3;
    v132 = a3[1];
    if (*a3 != v132)
    {
      v134 = 1749801491 * ((v132 - v133) >> 3) + 1;
      do
      {
        *__dst = v133 + 12;
        v135 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(__p, v133 + 3);
        if (!v135)
        {
          goto LABEL_354;
        }

        *(v135 + 5) = v134--;
        v133 = (v133 + 216);
      }

      while (v133 != v132);
    }

    v136 = 126 - 2 * __clz(0x84BDA12F684BDA13 * ((v180 - v179) >> 3));
    *__dst = __p;
    if (v180 == v179)
    {
      v137 = 0;
    }

    else
    {
      v137 = v136;
    }

    v138 = __p[2];
    if (__p[2])
    {
      do
      {
        v139 = *v138;
        operator delete(v138);
        v138 = v139;
      }

      while (v139);
    }

    v140 = __p[0];
    __p[0] = 0;
    if (v140)
    {
      operator delete(v140);
    }
  }

  webrtc::CodecList::Create(&v179, __p);
  if (!LODWORD(__p[0]))
  {
    if (v208)
    {
      v141 = v206;
      v142 = v207;
      v207 = 0;
      v206 = 0uLL;
      v143 = *a4;
      if (*a4)
      {
        v178 = v141;
        v144 = *(a4 + 1);
        v145 = *a4;
        if (v144 != v143)
        {
          v146 = v144 - 27;
          v147 = v144 - 27;
          v148 = v144 - 27;
          do
          {
            v149 = *v148;
            v148 -= 27;
            (*v149)(v147);
            v146 -= 27;
            v24 = v147 == v143;
            v147 = v148;
          }

          while (!v24);
          v145 = *a4;
        }

        *(a4 + 1) = v143;
        operator delete(v145);
        v141 = v178;
      }

      *a4 = v141;
      *(a4 + 2) = v142;
      *this = 0;
      *(this + 38) = 0;
      *(this + 2) = 0;
      *(this + 3) = 0;
      *(this + 1) = 0;
      *(this + 29) = 0;
      if (v208 == 1)
      {
        goto LABEL_337;
      }

      goto LABEL_344;
    }

    goto LABEL_354;
  }

  *this = __p[0];
  *(this + 8) = *&__p[1];
  *(this + 3) = __p[3];
  memset(&__p[1], 0, 24);
  *(this + 8) = v205;
  *(this + 35) = *(&v205 + 3);
  if (v208 != 1)
  {
    goto LABEL_344;
  }

LABEL_337:
  v150 = v206;
  if (v206)
  {
    v151 = v206;
    if (*(&v206 + 1) != v206)
    {
      v152 = *(&v206 + 1) - 216;
      v153 = *(&v206 + 1) - 216;
      v154 = (*(&v206 + 1) - 216);
      do
      {
        v155 = *v154;
        v154 -= 27;
        (*v155)(v153);
        v152 -= 216;
        v24 = v153 == v150;
        v153 = v154;
      }

      while (!v24);
      v151 = v206;
    }

    *(&v206 + 1) = v150;
    operator delete(v151);
  }

LABEL_344:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  v156 = v179;
  if (v179)
  {
    v157 = v179;
    if (v180 != v179)
    {
      v158 = v180 - 216;
      v159 = v180 - 216;
      v160 = (v180 - 216);
      do
      {
        v161 = *v160;
        v160 -= 27;
        (*v161)(v159);
        v158 -= 216;
        v24 = v159 == v156;
        v159 = v160;
      }

      while (!v24);
      v157 = v179;
    }

    v180 = v156;
    operator delete(v157);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(&v182, v183[0]);
}