void std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 28);
  v7 = *(a1 + 28);
  if (v6 != v7)
  {
    if (v6 <= v7)
    {
      goto LABEL_19;
    }

LABEL_39:
    v25 = *(a3 + 28);
    if (v25 == v6)
    {
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = *a3;
      }

      if (v26 >= 0)
      {
        v28 = *(a3 + 23);
      }

      else
      {
        v28 = a3[1];
      }

      v29 = *(a2 + 23);
      if (v29 >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = *a2;
      }

      if (v29 >= 0)
      {
        v31 = *(a2 + 23);
      }

      else
      {
        v31 = *(a2 + 8);
      }

      if (v31 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v31;
      }

      v33 = memcmp(v27, v30, v32);
      if (v33)
      {
        if ((v33 & 0x80000000) == 0)
        {
LABEL_57:
          std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, a2);
          v34 = *(a3 + 28);
          v35 = *(a2 + 28);
          if (v34 == v35)
          {
            v36 = *(a3 + 23);
            if (v36 >= 0)
            {
              v37 = a3;
            }

            else
            {
              v37 = *a3;
            }

            if (v36 >= 0)
            {
              v38 = *(a3 + 23);
            }

            else
            {
              v38 = a3[1];
            }

            v39 = *(a2 + 23);
            if (v39 >= 0)
            {
              v40 = a2;
            }

            else
            {
              v40 = *a2;
            }

            if (v39 >= 0)
            {
              v41 = *(a2 + 23);
            }

            else
            {
              v41 = *(a2 + 8);
            }

            if (v41 >= v38)
            {
              v42 = v38;
            }

            else
            {
              v42 = v41;
            }

            v43 = memcmp(v37, v40, v42);
            if (v43)
            {
              if ((v43 & 0x80000000) == 0)
              {
                return;
              }
            }

            else if (v38 >= v41)
            {
              return;
            }
          }

          else if (v34 <= v35)
          {
            return;
          }

          v44 = a2;
LABEL_110:
          v55 = a3;

          goto LABEL_112;
        }
      }

      else if (v28 >= v31)
      {
        goto LABEL_57;
      }
    }

    else if (v25 <= v6)
    {
      goto LABEL_57;
    }

    v44 = a1;
    goto LABEL_110;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = *(a1 + 8);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (!v15)
  {
    if (v10 >= v13)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

  if (v15 < 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  v16 = *(a3 + 28);
  if (v16 == v6)
  {
    v17 = *(a3 + 23);
    if (v17 >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    if (v17 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = a3[1];
    }

    v20 = *(a2 + 23);
    if (v20 >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    if (v20 >= 0)
    {
      v22 = *(a2 + 23);
    }

    else
    {
      v22 = *(a2 + 8);
    }

    if (v22 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v18, v21, v23);
    if (v24)
    {
      if ((v24 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v19 >= v22)
    {
      return;
    }
  }

  else if (v16 <= v6)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a2, a3);
  v45 = *(a2 + 28);
  v46 = *(a1 + 28);
  if (v45 == v46)
  {
    v47 = *(a2 + 23);
    if (v47 >= 0)
    {
      v48 = a2;
    }

    else
    {
      v48 = *a2;
    }

    if (v47 >= 0)
    {
      v49 = *(a2 + 23);
    }

    else
    {
      v49 = *(a2 + 8);
    }

    v50 = *(a1 + 23);
    if (v50 >= 0)
    {
      v51 = a1;
    }

    else
    {
      v51 = *a1;
    }

    if (v50 >= 0)
    {
      v52 = *(a1 + 23);
    }

    else
    {
      v52 = *(a1 + 8);
    }

    if (v52 >= v49)
    {
      v53 = v49;
    }

    else
    {
      v53 = v52;
    }

    v54 = memcmp(v48, v51, v53);
    if (v54)
    {
      if ((v54 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_114;
    }

    if (v49 < v52)
    {
LABEL_114:
      v44 = a1;
      v55 = a2;

LABEL_112:
      std::swap[abi:sn200100]<webrtc::RtpExtension>(v44, v55);
    }
  }

  else if (v45 > v46)
  {
    goto LABEL_114;
  }
}

void std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1, a2, a3);
  v8 = *(a4 + 28);
  v9 = *(a3 + 28);
  if (v8 == v9)
  {
    v10 = *(a4 + 23);
    if (v10 >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    if (v10 >= 0)
    {
      v12 = *(a4 + 23);
    }

    else
    {
      v12 = a4[1];
    }

    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= 0)
    {
      v15 = *(a3 + 23);
    }

    else
    {
      v15 = *(a3 + 8);
    }

    if (v15 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    v17 = memcmp(v11, v14, v16);
    if (v17)
    {
      if ((v17 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v12 >= v15)
    {
      return;
    }
  }

  else if (v8 <= v9)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a3, a4);
  v18 = *(a3 + 28);
  v19 = *(a2 + 28);
  if (v18 == v19)
  {
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = *(a3 + 8);
    }

    v23 = *(a2 + 23);
    if (v23 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    if (v23 >= 0)
    {
      v25 = *(a2 + 23);
    }

    else
    {
      v25 = *(a2 + 8);
    }

    if (v25 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v25;
    }

    v27 = memcmp(v21, v24, v26);
    if (v27)
    {
      if ((v27 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v22 >= v25)
    {
      return;
    }
  }

  else if (v18 <= v19)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a2, a3);
  v28 = *(a2 + 28);
  v29 = *(a1 + 28);
  if (v28 == v29)
  {
    v30 = *(a2 + 23);
    if (v30 >= 0)
    {
      v31 = a2;
    }

    else
    {
      v31 = *a2;
    }

    if (v30 >= 0)
    {
      v32 = *(a2 + 23);
    }

    else
    {
      v32 = *(a2 + 8);
    }

    v33 = *(a1 + 23);
    if (v33 >= 0)
    {
      v34 = a1;
    }

    else
    {
      v34 = *a1;
    }

    if (v33 >= 0)
    {
      v35 = *(a1 + 23);
    }

    else
    {
      v35 = *(a1 + 8);
    }

    if (v35 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v35;
    }

    v37 = memcmp(v31, v34, v36);
    if (v37)
    {
      if ((v37 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v32 >= v35)
    {
      return;
    }
  }

  else if (v28 <= v29)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, a2);
}

void std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1, a2, a3, a4);
  v10 = *(a5 + 28);
  v11 = *(a4 + 28);
  if (v10 == v11)
  {
    v12 = *(a5 + 23);
    if (v12 >= 0)
    {
      v13 = a5;
    }

    else
    {
      v13 = *a5;
    }

    if (v12 >= 0)
    {
      v14 = *(a5 + 23);
    }

    else
    {
      v14 = a5[1];
    }

    v15 = *(a4 + 23);
    if (v15 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if (v15 >= 0)
    {
      v17 = *(a4 + 23);
    }

    else
    {
      v17 = *(a4 + 8);
    }

    if (v17 >= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    v19 = memcmp(v13, v16, v18);
    if (v19)
    {
      if ((v19 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v14 >= v17)
    {
      return;
    }
  }

  else if (v10 <= v11)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a4, a5);
  v20 = *(a4 + 28);
  v21 = *(a3 + 28);
  if (v20 == v21)
  {
    v22 = *(a4 + 23);
    if (v22 >= 0)
    {
      v23 = a4;
    }

    else
    {
      v23 = *a4;
    }

    if (v22 >= 0)
    {
      v24 = *(a4 + 23);
    }

    else
    {
      v24 = *(a4 + 8);
    }

    v25 = *(a3 + 23);
    if (v25 >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    if (v25 >= 0)
    {
      v27 = *(a3 + 23);
    }

    else
    {
      v27 = *(a3 + 8);
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v23, v26, v28);
    if (v29)
    {
      if ((v29 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v24 >= v27)
    {
      return;
    }
  }

  else if (v20 <= v21)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a3, a4);
  v30 = *(a3 + 28);
  v31 = *(a2 + 28);
  if (v30 == v31)
  {
    v32 = *(a3 + 23);
    if (v32 >= 0)
    {
      v33 = a3;
    }

    else
    {
      v33 = *a3;
    }

    if (v32 >= 0)
    {
      v34 = *(a3 + 23);
    }

    else
    {
      v34 = *(a3 + 8);
    }

    v35 = *(a2 + 23);
    if (v35 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    if (v35 >= 0)
    {
      v37 = *(a2 + 23);
    }

    else
    {
      v37 = *(a2 + 8);
    }

    if (v37 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v37;
    }

    v39 = memcmp(v33, v36, v38);
    if (v39)
    {
      if ((v39 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v34 >= v37)
    {
      return;
    }
  }

  else if (v30 <= v31)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a2, a3);
  v40 = *(a2 + 28);
  v41 = *(a1 + 28);
  if (v40 == v41)
  {
    v42 = *(a2 + 23);
    if (v42 >= 0)
    {
      v43 = a2;
    }

    else
    {
      v43 = *a2;
    }

    if (v42 >= 0)
    {
      v44 = *(a2 + 23);
    }

    else
    {
      v44 = *(a2 + 8);
    }

    v45 = *(a1 + 23);
    if (v45 >= 0)
    {
      v46 = a1;
    }

    else
    {
      v46 = *a1;
    }

    if (v45 >= 0)
    {
      v47 = *(a1 + 23);
    }

    else
    {
      v47 = *(a1 + 8);
    }

    if (v47 >= v44)
    {
      v48 = v44;
    }

    else
    {
      v48 = v47;
    }

    v49 = memcmp(v43, v46, v48);
    if (v49)
    {
      if ((v49 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v44 >= v47)
    {
      return;
    }
  }

  else if (v40 <= v41)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, a2);
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1, a1 + 32, (a2 - 32));
        return 1;
      case 4:
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1, a1 + 32, a1 + 64, (a2 - 32));
        return 1;
      case 5:
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1, a1 + 32, a1 + 64, a1 + 96, (a2 - 32));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 32);
      v6 = *(a2 - 4);
      v7 = *(a1 + 28);
      if (v6 == v7)
      {
        v8 = *(a2 - 9);
        if (v8 >= 0)
        {
          v9 = (a2 - 32);
        }

        else
        {
          v9 = *(a2 - 32);
        }

        if (v8 >= 0)
        {
          v10 = *(a2 - 9);
        }

        else
        {
          v10 = *(a2 - 24);
        }

        v11 = *(a1 + 23);
        if (v11 >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        if (v11 >= 0)
        {
          v13 = *(a1 + 23);
        }

        else
        {
          v13 = *(a1 + 8);
        }

        if (v13 >= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        v15 = memcmp(v9, v12, v14);
        if (!v15)
        {
          if (v10 >= v13)
          {
            return 1;
          }

          goto LABEL_110;
        }

        if (v15 < 0)
        {
LABEL_110:
          std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, v5);
        }
      }

      else if (v6 > v7)
      {
        goto LABEL_110;
      }

      return 1;
    }
  }

  v16 = (a1 + 64);
  std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1, a1 + 32, (a1 + 64));
  v17 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 28);
    v21 = *(v16 + 28);
    if (v20 == v21)
    {
      break;
    }

    if (v20 > v21)
    {
      if ((*(v17 + 23) & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_53;
    }

LABEL_30:
    v16 = v17;
    v18 += 32;
    v17 += 32;
    if (v17 == a2)
    {
      return 1;
    }
  }

  v22 = *(v17 + 23);
  if (v22 >= 0)
  {
    v23 = v17;
  }

  else
  {
    v23 = *v17;
  }

  if (v22 >= 0)
  {
    v24 = *(v17 + 23);
  }

  else
  {
    v24 = *(v17 + 8);
  }

  v25 = *(v16 + 23);
  if (v25 >= 0)
  {
    v26 = v16;
  }

  else
  {
    v26 = *v16;
  }

  if (v25 >= 0)
  {
    v27 = *(v16 + 23);
  }

  else
  {
    v27 = v16[1];
  }

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  v29 = memcmp(v23, v26, v28);
  if (v29)
  {
    if (v29 < 0)
    {
      goto LABEL_49;
    }

    goto LABEL_30;
  }

  if (v24 >= v27)
  {
    goto LABEL_30;
  }

LABEL_49:
  if ((v22 & 0x80) == 0)
  {
LABEL_50:
    __p = *v17;
    goto LABEL_54;
  }

LABEL_53:
  std::string::__init_copy_ctor_external(&__p, *v17, *(v17 + 8));
LABEL_54:
  v50 = *(v17 + 24);
  v51 = *(v17 + 28);
  for (i = v18; ; i -= 32)
  {
    v31 = (a1 + i);
    v32 = (a1 + i + 64);
    v33 = *(a1 + i + 87);
    if (*(a1 + i + 119) < 0)
    {
      v34 = v33 >= 0 ? (a1 + i + 64) : *v32;
      v35 = v33 >= 0 ? *(a1 + i + 87) : v31[3].__r_.__value_.__r.__words[0];
      std::string::__assign_no_alias<false>(v31 + 4, v34, v35);
    }

    else if ((*(a1 + i + 87) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&v31[4], *v32, *(a1 + i + 72));
    }

    else
    {
      *&v31[4].__r_.__value_.__l.__data_ = *v32;
      v31[4].__r_.__value_.__r.__words[2] = *(a1 + i + 80);
    }

    v36 = a1 + i;
    *(v36 + 120) = *(a1 + i + 88);
    *(v36 + 124) = *(a1 + i + 92);
    if (i == -64)
    {
      break;
    }

    v37 = *(v36 + 60);
    if (v51 == v37)
    {
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

      v40 = *(a1 + i + 55);
      if (v40 >= 0)
      {
        v41 = (v36 + 32);
      }

      else
      {
        v41 = *(v36 + 32);
      }

      if (v40 >= 0)
      {
        v42 = *(a1 + i + 55);
      }

      else
      {
        v42 = *(a1 + i + 40);
      }

      if (v42 >= size)
      {
        v43 = size;
      }

      else
      {
        v43 = v42;
      }

      v44 = memcmp(p_p, v41, v43);
      if (v44)
      {
        if ((v44 & 0x80000000) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (size >= v42)
      {
LABEL_89:
        v45 = a1 + i + 64;
        if (v45 == &__p)
        {
          goto LABEL_105;
        }

        goto LABEL_92;
      }
    }

    else if (v51 <= v37)
    {
      goto LABEL_89;
    }
  }

  v45 = a1;
  if (a1 == &__p)
  {
    goto LABEL_105;
  }

LABEL_92:
  if (*(v45 + 23) < 0)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &__p;
    }

    else
    {
      v46 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = __p.__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(v45, v46, v47);
  }

  else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *v45 = __p;
  }

LABEL_105:
  *(v36 + 88) = v50;
  *(v36 + 92) = v51;
  if (++v19 != 8)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_30;
  }

  result = v17 + 32 == a2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    return v17 + 32 == a2;
  }

  return result;
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *a1, _BYTE *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  a1[23] = a3;
  v4 = &a1[a3];
  if (a1 <= a2 && v4 > a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *v4 = 0;
  return a1;
}

uint64_t webrtc::GetMediaStreamIds(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result;
    do
    {
      v3 = *(v2 + 96);
      v4 = *(v2 + 104);
      result = v4 - v3;
      if (v4 != v3)
      {
        if (0xAAAAAAAAAAAAAAABLL * (result >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v2 += 144;
    }

    while (v2 != a2);
  }

  return result;
}

void webrtc::SdpSerialize(webrtc *this@<X0>, const webrtc::JsepSessionDescription *a2@<X1>, unint64_t a3@<X8>)
{
  v7 = (*(*this + 32))(this, a2);
  if (!v7)
  {
    *(a3 + 23) = 0;
    *a3 = 0;
    return;
  }

  v10 = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  p_src = a3 + 3;
  size = "v=0";
  if (a3 <= "v=0" && p_src > "v=0")
  {
    goto LABEL_584;
  }

  *(a3 + 2) = 48;
  *a3 = 15734;
  *(a3 + 23) = 3;
  size = "\r\n";
  if (p_src <= "\r\n")
  {
    LOBYTE(p_src) = a3 + 5;
    if (a3 + 5 > "\r\n")
    {
      goto LABEL_584;
    }
  }

  *(a3 + 3) = 2573;
  *(a3 + 23) = 5;
  memset(&__src, 0, sizeof(__src));
  v3 = 1;
  webrtc::InitLine(111, "-", 1uLL, &__src);
  (*(*this + 40))(&__p, this);
  v13 = v150;
  LOBYTE(p_src) = v150;
  if (v150 < 0)
  {
    v13 = v149;
  }

  if (v13)
  {
    (*(*this + 40))(v151, this);
    if ((v150 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v152 = 1;
  if (v151 <= "0")
  {
    size = v151 + 1;
    if (v151 + 1 > "0")
    {
      goto LABEL_584;
    }
  }

  LOWORD(v151[0]) = 48;
  if (v150 < 0)
  {
LABEL_10:
    operator delete(__p);
  }

LABEL_11:
  (*(*this + 48))(__p_new_stuff, this);
  v14 = HIBYTE(v147);
  LOBYTE(p_src) = HIBYTE(v147);
  if (v147 < 0)
  {
    v14 = v146;
  }

  if (v14)
  {
    (*(*this + 48))(&__p, this);
    if (v147 < 0)
    {
LABEL_15:
      operator delete(*__p_new_stuff);
    }
  }

  else
  {
    v150 = 1;
    if (&__p <= &webrtc::kSessionOriginSessionVersion)
    {
      size = &__p + 1;
      if (&__p + 1 > &webrtc::kSessionOriginSessionVersion)
      {
        goto LABEL_584;
      }
    }

    LOWORD(__p) = 48;
    if (v147 < 0)
    {
      goto LABEL_15;
    }
  }

  size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
  }

  if (v15 == size)
  {
    std::string::__grow_by_and_replace(&__src, v15, 1uLL, v15, v15, 0, 1uLL, " ");
  }

  else
  {
    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    v16 = &size[p_src];
    if (&size[p_src] <= " " && v16 + 1 > " ")
    {
      goto LABEL_584;
    }

    *v16 = 32;
    v17 = (size + 1);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      __src.__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    *(p_src + v17) = 0;
  }

  LOBYTE(p_src) = v152;
  size = v151;
  if (v152 >= 0)
  {
    v9 = v151;
  }

  else
  {
    v9 = v151[0];
  }

  if (v152 >= 0)
  {
    v8 = v152;
  }

  else
  {
    v8 = v151[1];
  }

  if (!v9 && v8)
  {
    goto LABEL_584;
  }

  v143 = a3;
  v144 = v10;
  v18 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v10 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__src.__r_.__value_.__r.__words[2]) : __src.__r_.__value_.__l.__size_;
  if (v18 - v10 >= v8)
  {
    if (v8)
    {
      LODWORD(size) = __src.__r_.__value_.__l.__data_;
      p_src = &__src;
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v3 = &__src;
      }

      else
      {
        v3 = __src.__r_.__value_.__r.__words[0];
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_584;
      }

      v19 = (v3 + v10);
      if (v3 + v10 <= v9)
      {
        LOBYTE(p_src) = v19 + v8;
        if (&v19[v8] > v9)
        {
          goto LABEL_584;
        }
      }

      v20 = v8;
      memmove(v19, v9, v8);
      v21 = v10 + v20;
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        __src.__r_.__value_.__l.__size_ = v10 + v20;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = v21 & 0x7F;
      }

      a3 = v143;
      *(v3 + v21) = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&__src, v18, v10 + v8 - v18, v10, v10, 0, v8, v9);
  }

  size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = 22;
  }

  else
  {
    v22 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
  }

  if (v22 == size)
  {
    std::string::__grow_by_and_replace(&__src, v22, 1uLL, v22, v22, 0, 1uLL, " ");
  }

  else
  {
    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    v23 = &size[p_src];
    if (&size[p_src] <= " " && v23 + 1 > " ")
    {
      goto LABEL_584;
    }

    *v23 = 32;
    v24 = (size + 1);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      __src.__r_.__value_.__l.__size_ = v24;
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v24 & 0x7F;
    }

    *(p_src + v24) = 0;
  }

  LOBYTE(p_src) = v150;
  size = &__p;
  v9 = v150 >= 0 ? &__p : __p;
  v8 = v150 >= 0 ? v150 : v149;
  if (!v9 && v8)
  {
    goto LABEL_584;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = 22;
  }

  else
  {
    v25 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __src.__r_.__value_.__l.__size_;
  }

  if (v25 - v10 >= v8)
  {
    if (v8)
    {
      LODWORD(size) = __src.__r_.__value_.__l.__data_;
      p_src = &__src;
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v3 = &__src;
      }

      else
      {
        v3 = __src.__r_.__value_.__r.__words[0];
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_584;
      }

      v26 = (v3 + v10);
      if (v3 + v10 <= v9)
      {
        LOBYTE(p_src) = v26 + v8;
        if (&v26[v8] > v9)
        {
          goto LABEL_584;
        }
      }

      v27 = v8;
      memmove(v26, v9, v8);
      v28 = v10 + v27;
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        __src.__r_.__value_.__l.__size_ = v10 + v27;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = v28 & 0x7F;
      }

      a3 = v143;
      *(v3 + v28) = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&__src, v25, v10 + v8 - v25, v10, v10, 0, v8, v9);
  }

  size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = 22;
  }

  else
  {
    v29 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
  }

  if (v29 == size)
  {
    std::string::__grow_by_and_replace(&__src, v29, 1uLL, v29, v29, 0, 1uLL, " ");
    v10 = v144;
  }

  else
  {
    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    v30 = &size[p_src];
    v10 = v144;
    if (&size[p_src] <= " " && v30 + 1 > " ")
    {
      goto LABEL_584;
    }

    *v30 = 32;
    v31 = (size + 1);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      __src.__r_.__value_.__l.__size_ = v31;
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v31 & 0x7F;
    }

    *(p_src + v31) = 0;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = 22;
  }

  else
  {
    v32 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = __src.__r_.__value_.__l.__size_;
  }

  if (v32 - v33 >= 2)
  {
    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    size = (p_src + v33);
    if (p_src + v33 <= "IN" && size + 2 > "IN")
    {
      goto LABEL_584;
    }

    *size = 20041;
    v34 = v33 + 2;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      __src.__r_.__value_.__l.__size_ = v33 + 2;
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v34 & 0x7F;
    }

    *(p_src + v34) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&__src, v32, v33 - v32 + 2, v33, v33, 0, 2uLL, "IN");
  }

  size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = 22;
  }

  else
  {
    v35 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
  }

  if (v35 == size)
  {
    std::string::__grow_by_and_replace(&__src, v35, 1uLL, v35, v35, 0, 1uLL, " ");
  }

  else
  {
    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    v36 = &size[p_src];
    if (&size[p_src] <= " " && v36 + 1 > " ")
    {
      goto LABEL_584;
    }

    *v36 = 32;
    v37 = (size + 1);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      __src.__r_.__value_.__l.__size_ = v37;
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v37 & 0x7F;
    }

    *(p_src + v37) = 0;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = 22;
  }

  else
  {
    v38 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = __src.__r_.__value_.__l.__size_;
  }

  if (v38 - v39 >= 3)
  {
    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    size = (p_src + v39);
    if (p_src + v39 <= "IP4" && size + 3 > "IP4")
    {
      goto LABEL_584;
    }

    size[2] = 52;
    *size = 20553;
    v40 = v39 + 3;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      __src.__r_.__value_.__l.__size_ = v39 + 3;
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v40 & 0x7F;
    }

    *(p_src + v40) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&__src, v38, v39 - v38 + 3, v39, v39, 0, 3uLL, "IP4");
  }

  size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = 22;
  }

  else
  {
    v41 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
  }

  if (v41 == size)
  {
    std::string::__grow_by_and_replace(&__src, v41, 1uLL, v41, v41, 0, 1uLL, " ");
  }

  else
  {
    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    v42 = &size[p_src];
    if (&size[p_src] <= " " && v42 + 1 > " ")
    {
      goto LABEL_584;
    }

    *v42 = 32;
    v43 = (size + 1);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      __src.__r_.__value_.__l.__size_ = v43;
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v43 & 0x7F;
    }

    *(p_src + v43) = 0;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = 22;
  }

  else
  {
    v44 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = __src.__r_.__value_.__l.__size_;
  }

  if (v44 - v45 >= 9)
  {
    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    size = (p_src + v45);
    if (p_src + v45 <= "127.0.0.1" && size + 9 > "127.0.0.1")
    {
      goto LABEL_584;
    }

    size[8] = 49;
    *size = *"127.0.0.1";
    size = (v45 + 9);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      __src.__r_.__value_.__l.__size_ = v45 + 9;
      size[p_src] = 0;
      v8 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_195;
      }
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = size & 0x7F;
      size[p_src] = 0;
      v8 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_195;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&__src, v44, v45 - v44 + 9, v45, v45, 0, 9uLL, "127.0.0.1");
    v8 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_195:
      LOBYTE(p_src) = v8 == 0;
      v9 = &__src;
      goto LABEL_204;
    }
  }

  v8 = __src.__r_.__value_.__l.__size_;
  v9 = __src.__r_.__value_.__r.__words[0];
  LOBYTE(p_src) = __src.__r_.__value_.__l.__size_ == 0;
  if (!__src.__r_.__value_.__r.__words[0] && __src.__r_.__value_.__l.__size_)
  {
    goto LABEL_584;
  }

LABEL_204:
  LODWORD(size) = *(a3 + 23);
  if (size >= 0)
  {
    v46 = 22;
  }

  else
  {
    v46 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (size >= 0)
  {
    v3 = *(a3 + 23);
  }

  else
  {
    v3 = *(a3 + 8);
  }

  if (v46 - v3 >= v8)
  {
    if ((p_src & 1) == 0)
    {
      p_src = *a3;
      if (size >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_584;
      }

      v47 = (v10 + v3);
      if (v10 + v3 <= v9)
      {
        LOBYTE(p_src) = v47 + v8;
        if (&v47[v8] > v9)
        {
          goto LABEL_584;
        }
      }

      v48 = v8;
      memmove(v47, v9, v8);
      v49 = v3 + v48;
      a3 = v143;
      if (SHIBYTE(v143->__r_.__value_.__r.__words[2]) < 0)
      {
        v143->__r_.__value_.__l.__size_ = v49;
      }

      else
      {
        *(&v143->__r_.__value_.__s + 23) = v49 & 0x7F;
      }

      *(v10 + v49) = 0;
      v10 = v144;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(a3, v46, v3 + v8 - v46, v3, v3, 0, v8, v9);
  }

  v50 = *(a3 + 23);
  if (v50 >= 0)
  {
    v51 = 22;
  }

  else
  {
    v51 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v50 >= 0)
  {
    v52 = *(a3 + 23);
  }

  else
  {
    v52 = *(a3 + 8);
  }

  if (v51 - v52 >= 2)
  {
    if (v50 >= 0)
    {
      p_src = a3;
    }

    else
    {
      p_src = *a3;
    }

    size = (p_src + v52);
    if (p_src + v52 <= "\r\n" && size + 2 > "\r\n")
    {
      goto LABEL_584;
    }

    *size = 2573;
    v53 = v52 + 2;
    if (*(a3 + 23) < 0)
    {
      *(a3 + 8) = v53;
    }

    else
    {
      *(a3 + 23) = v53 & 0x7F;
    }

    *(p_src + v53) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(a3, v51, v52 - v51 + 2, v52, v52, 0, 2uLL, "\r\n");
  }

  v54 = *(a3 + 23);
  if (v54 >= 0)
  {
    v55 = 22;
  }

  else
  {
    v55 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v54 >= 0)
  {
    v56 = *(a3 + 23);
  }

  else
  {
    v56 = *(a3 + 8);
  }

  if (v55 - v56 >= 3)
  {
    if (v54 >= 0)
    {
      p_src = a3;
    }

    else
    {
      p_src = *a3;
    }

    size = (p_src + v56);
    if (p_src + v56 <= "s=-" && size + 3 > "s=-")
    {
      goto LABEL_584;
    }

    size[2] = 45;
    *size = 15731;
    v57 = v56 + 3;
    if (*(a3 + 23) < 0)
    {
      *(a3 + 8) = v57;
    }

    else
    {
      *(a3 + 23) = v57 & 0x7F;
    }

    *(p_src + v57) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(a3, v55, v56 - v55 + 3, v56, v56, 0, 3uLL, "s=-");
  }

  v58 = *(a3 + 23);
  if (v58 >= 0)
  {
    v59 = 22;
  }

  else
  {
    v59 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v58 >= 0)
  {
    v60 = *(a3 + 23);
  }

  else
  {
    v60 = *(a3 + 8);
  }

  if (v59 - v60 >= 2)
  {
    if (v58 >= 0)
    {
      p_src = a3;
    }

    else
    {
      p_src = *a3;
    }

    size = (p_src + v60);
    if (p_src + v60 <= "\r\n" && size + 2 > "\r\n")
    {
      goto LABEL_584;
    }

    *size = 2573;
    v61 = v60 + 2;
    if (*(a3 + 23) < 0)
    {
      *(a3 + 8) = v61;
    }

    else
    {
      *(a3 + 23) = v61 & 0x7F;
    }

    *(p_src + v61) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(a3, v59, v60 - v59 + 2, v60, v60, 0, 2uLL, "\r\n");
  }

  v62 = *(a3 + 23);
  if (v62 >= 0)
  {
    v63 = 22;
  }

  else
  {
    v63 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v62 >= 0)
  {
    v64 = *(a3 + 23);
  }

  else
  {
    v64 = *(a3 + 8);
  }

  if (v63 - v64 >= 5)
  {
    if (v62 >= 0)
    {
      p_src = a3;
    }

    else
    {
      p_src = *a3;
    }

    size = (p_src + v64);
    if (p_src + v64 <= "t=0 0" && size + 5 > "t=0 0")
    {
      goto LABEL_584;
    }

    size[4] = 48;
    *size = 540032372;
    v65 = v64 + 5;
    if (*(a3 + 23) < 0)
    {
      *(a3 + 8) = v65;
    }

    else
    {
      *(a3 + 23) = v65 & 0x7F;
    }

    *(p_src + v65) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(a3, v63, v64 - v63 + 5, v64, v64, 0, 5uLL, "t=0 0");
  }

  v66 = *(a3 + 23);
  if (v66 >= 0)
  {
    v67 = 22;
  }

  else
  {
    v67 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v66 >= 0)
  {
    v68 = *(a3 + 23);
  }

  else
  {
    v68 = *(a3 + 8);
  }

  if (v67 - v68 >= 2)
  {
    if (v66 >= 0)
    {
      p_src = a3;
    }

    else
    {
      p_src = *a3;
    }

    size = (p_src + v68);
    if (p_src + v68 <= "\r\n" && size + 2 > "\r\n")
    {
      goto LABEL_584;
    }

    *size = 2573;
    v69 = v68 + 2;
    if (*(a3 + 23) < 0)
    {
      *(a3 + 8) = v69;
    }

    else
    {
      *(a3 + 23) = v69 & 0x7F;
    }

    *(p_src + v69) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(a3, v67, v68 - v67 + 2, v68, v68, 0, 2uLL, "\r\n");
  }

  HIBYTE(v147) = 6;
  p_src = "BUNDLE";
  if (__p_new_stuff <= "BUNDLE")
  {
    size = &__p_new_stuff[6];
    if (&__p_new_stuff[6] > "BUNDLE")
    {
LABEL_584:
      while (1)
      {
        __break(1u);
LABEL_585:
        if (p_src)
        {
          goto LABEL_596;
        }

        p_src = *a3;
        if (size >= 0)
        {
          v10 = a3;
        }

        else
        {
          v10 = *a3;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          v134 = (v10 + v3);
          if (v10 + v3 > v9 || (LOBYTE(p_src) = v134 + v8, &v134[v8] <= v9))
          {
            v135 = v8;
            memmove(v134, v9, v8);
            v136 = v3 + v135;
            a3 = v143;
            if (SHIBYTE(v143->__r_.__value_.__r.__words[2]) < 0)
            {
              v143->__r_.__value_.__l.__size_ = v136;
            }

            else
            {
              *(&v143->__r_.__value_.__s + 23) = v136 & 0x7F;
            }

            *(v10 + v136) = 0;
            v10 = v144;
            goto LABEL_596;
          }
        }
      }
    }
  }

  v142 = this;
  strcpy(__p_new_stuff, "BUNDLE");
  v70 = *(v10 + 48);
  v71 = *(v10 + 56);
  if (v70 == v71)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v72 = *(v70 + 23);
      if (v72 >= 0)
      {
        v73 = *(v70 + 23);
      }

      else
      {
        v73 = *(v70 + 8);
      }

      v74 = HIBYTE(v147);
      if (v147 < 0)
      {
        v74 = v146;
      }

      if (v73 == v74)
      {
        v75 = v72 >= 0 ? v70 : *v70;
        v76 = v147 >= 0 ? __p_new_stuff : *__p_new_stuff;
        if (!memcmp(v75, v76, v73))
        {
          operator new();
        }
      }

      v70 += 48;
    }

    while (v70 != v71);
    if (SHIBYTE(v147) < 0)
    {
      operator delete(*__p_new_stuff);
    }

    a3 = v143;
  }

  if (*(v10 + 76))
  {
    webrtc::InitLine(97, "extmap-allow-mixed", 0x12uLL, &__src);
    v8 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v8 = __src.__r_.__value_.__l.__size_;
      v9 = __src.__r_.__value_.__r.__words[0];
      LOBYTE(p_src) = __src.__r_.__value_.__l.__size_ == 0;
      if (!__src.__r_.__value_.__r.__words[0] && __src.__r_.__value_.__l.__size_)
      {
        goto LABEL_584;
      }
    }

    else
    {
      LOBYTE(p_src) = SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 0;
      v9 = &__src;
    }

    LODWORD(size) = *(a3 + 23);
    if (size >= 0)
    {
      v77 = 22;
    }

    else
    {
      v77 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (size >= 0)
    {
      v3 = *(a3 + 23);
    }

    else
    {
      v3 = *(a3 + 8);
    }

    if (v77 - v3 >= v8)
    {
      if ((p_src & 1) == 0)
      {
        p_src = *a3;
        if (size >= 0)
        {
          v10 = a3;
        }

        else
        {
          v10 = *a3;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_584;
        }

        v78 = (v10 + v3);
        if (v10 + v3 <= v9)
        {
          LOBYTE(p_src) = v78 + v8;
          if (&v78[v8] > v9)
          {
            goto LABEL_584;
          }
        }

        v79 = v8;
        memmove(v78, v9, v8);
        v80 = v3 + v79;
        a3 = v143;
        if (SHIBYTE(v143->__r_.__value_.__r.__words[2]) < 0)
        {
          v143->__r_.__value_.__l.__size_ = v80;
        }

        else
        {
          *(&v143->__r_.__value_.__s + 23) = v80 & 0x7F;
        }

        *(v10 + v80) = 0;
        v10 = v144;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(a3, v77, v3 + v8 - v77, v3, v3, 0, v8, v9);
    }

    v81 = *(a3 + 23);
    if (v81 >= 0)
    {
      v82 = 22;
    }

    else
    {
      v82 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v81 >= 0)
    {
      v83 = *(a3 + 23);
    }

    else
    {
      v83 = *(a3 + 8);
    }

    if (v82 - v83 < 2)
    {
      std::string::__grow_by_and_replace(a3, v82, v83 - v82 + 2, v83, v83, 0, 2uLL, "\r\n");
      if (!*(v10 + 72))
      {
        goto LABEL_531;
      }

      goto LABEL_375;
    }

    if (v81 >= 0)
    {
      p_src = a3;
    }

    else
    {
      p_src = *a3;
    }

    size = (p_src + v83);
    if (p_src + v83 <= "\r\n" && size + 2 > "\r\n")
    {
      goto LABEL_584;
    }

    *size = 2573;
    v84 = v83 + 2;
    if (*(a3 + 23) < 0)
    {
      *(a3 + 8) = v84;
      *(p_src + v84) = 0;
      if (!*(v10 + 72))
      {
        goto LABEL_531;
      }

      goto LABEL_375;
    }

    *(a3 + 23) = v84 & 0x7F;
    *(p_src + v84) = 0;
  }

  if (*(v10 + 72))
  {
LABEL_375:
    v3 = &__src;
    webrtc::InitLine(97, "msid-semantic", 0xDuLL, &__src);
    size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = 22;
    }

    else
    {
      v85 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __src.__r_.__value_.__l.__size_;
    }

    if (v85 == size)
    {
      std::string::__grow_by_and_replace(&__src, v85, 1uLL, v85, v85, 0, 1uLL, ":");
    }

    else
    {
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_src = &__src;
      }

      else
      {
        p_src = __src.__r_.__value_.__r.__words[0];
      }

      v86 = &size[p_src];
      if (&size[p_src] <= ":" && v86 + 1 > ":")
      {
        goto LABEL_584;
      }

      *v86 = 58;
      v87 = (size + 1);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        __src.__r_.__value_.__l.__size_ = v87;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = v87 & 0x7F;
      }

      *(p_src + v87) = 0;
    }

    size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = 22;
    }

    else
    {
      v88 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __src.__r_.__value_.__l.__size_;
    }

    if (v88 == size)
    {
      std::string::__grow_by_and_replace(&__src, v88, 1uLL, v88, v88, 0, 1uLL, " ");
    }

    else
    {
      p_src = &__src;
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_src = __src.__r_.__value_.__r.__words[0];
      }

      v89 = &size[p_src];
      if (&size[p_src] <= " " && v89 + 1 > " ")
      {
        goto LABEL_584;
      }

      *v89 = 32;
      v90 = (size + 1);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        __src.__r_.__value_.__l.__size_ = v90;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = v90 & 0x7F;
      }

      *(p_src + v90) = 0;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = 22;
    }

    else
    {
      v91 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v92 = __src.__r_.__value_.__l.__size_;
    }

    if (v91 - v92 >= 3)
    {
      p_src = &__src;
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_src = __src.__r_.__value_.__r.__words[0];
      }

      size = (p_src + v92);
      if (p_src + v92 <= "WMS" && size + 3 > "WMS")
      {
        goto LABEL_584;
      }

      size[2] = 83;
      *size = 19799;
      size = (v92 + 3);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        __src.__r_.__value_.__l.__size_ = v92 + 3;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = size & 0x7F;
      }

      size[p_src] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&__src, v91, v92 - v91 + 3, v92, v92, 0, 3uLL, "WMS");
    }

    v10 = &v146;
    v146 = 0;
    v147 = 0;
    *__p_new_stuff = &v146;
    v93 = *v144;
    v94 = v144[1];
    while (v93 != v94)
    {
      if (v93)
      {
        v95 = *(v93 + 32);
        if (v95)
        {
          if (!(*(*v95 + 16))())
          {
            webrtc::GetMediaStreamIds(*(*(v93 + 32) + 96), *(*(v93 + 32) + 104));
            break;
          }
        }
      }

      v93 += 40;
    }

    v3 = *v144;
    v96 = v144[1];
    while (v3 != v96)
    {
      if (v3)
      {
        v97 = *(v3 + 32);
        if (v97)
        {
          if ((*(*v97 + 16))() == 1)
          {
            webrtc::GetMediaStreamIds(*(*(v3 + 32) + 96), *(*(v3 + 32) + 104));
            break;
          }
        }
      }

      v3 += 40;
    }

    v98 = *__p_new_stuff;
    if (*__p_new_stuff == &v146)
    {
LABEL_485:
      v8 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v8 = __src.__r_.__value_.__l.__size_;
        v9 = __src.__r_.__value_.__r.__words[0];
        LOBYTE(p_src) = __src.__r_.__value_.__l.__size_ == 0;
        a3 = v143;
        v10 = v144;
        if (!__src.__r_.__value_.__r.__words[0] && __src.__r_.__value_.__l.__size_)
        {
          goto LABEL_584;
        }
      }

      else
      {
        LOBYTE(p_src) = SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 0;
        v9 = &__src;
        a3 = v143;
        v10 = v144;
      }

      LODWORD(size) = *(a3 + 23);
      if (size >= 0)
      {
        v108 = 22;
      }

      else
      {
        v108 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (size >= 0)
      {
        v3 = *(a3 + 23);
      }

      else
      {
        v3 = *(a3 + 8);
      }

      if (v108 - v3 >= v8)
      {
        if ((p_src & 1) == 0)
        {
          p_src = *a3;
          if (size >= 0)
          {
            v10 = a3;
          }

          else
          {
            v10 = *a3;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_584;
          }

          p_src = v10 + v3 + v8;
          if (v10 + v3 <= v9 && p_src > v9)
          {
            goto LABEL_584;
          }

          v110 = v8;
          memmove((v10 + v3), v9, v8);
          v111 = v3 + v110;
          a3 = v143;
          if (SHIBYTE(v143->__r_.__value_.__r.__words[2]) < 0)
          {
            v143->__r_.__value_.__l.__size_ = v111;
          }

          else
          {
            *(&v143->__r_.__value_.__s + 23) = v111 & 0x7F;
          }

          *(v10 + v111) = 0;
          v10 = v144;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(a3, v108, v3 + v8 - v108, v3, v3, 0, v8, v9);
      }

      v112 = *(a3 + 23);
      if (v112 >= 0)
      {
        v113 = 22;
      }

      else
      {
        v113 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v112 >= 0)
      {
        v114 = *(a3 + 23);
      }

      else
      {
        v114 = *(a3 + 8);
      }

      if (v113 - v114 >= 2)
      {
        if (v112 >= 0)
        {
          p_src = a3;
        }

        else
        {
          p_src = *a3;
        }

        size = (p_src + v114);
        if (p_src + v114 <= "\r\n" && size + 2 > "\r\n")
        {
          goto LABEL_584;
        }

        *size = 2573;
        v115 = v114 + 2;
        if (*(a3 + 23) < 0)
        {
          *(a3 + 8) = v115;
        }

        else
        {
          *(a3 + 23) = v115 & 0x7F;
        }

        *(p_src + v115) = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(a3, v113, v114 - v113 + 2, v114, v114, 0, 2uLL, "\r\n");
      }

      std::__tree<webrtc::SocketAddress>::destroy(__p_new_stuff, v146);
      goto LABEL_531;
    }

    a3 = 22;
    while (1)
    {
      size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = 22;
      }

      else
      {
        v99 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __src.__r_.__value_.__l.__size_;
      }

      if (v99 == size)
      {
        std::string::__grow_by_and_replace(&__src, v99, 1uLL, v99, v99, 0, 1uLL, " ");
        v8 = v98[55];
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_446;
        }
      }

      else
      {
        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_src = &__src;
        }

        else
        {
          p_src = __src.__r_.__value_.__r.__words[0];
        }

        if (&size[p_src] <= " " && &size[p_src + 1] > " ")
        {
          goto LABEL_584;
        }

        (size++)[p_src] = 32;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          __src.__r_.__value_.__l.__size_ = size;
          size[p_src] = 0;
          v8 = v98[55];
          if ((v8 & 0x8000000000000000) == 0)
          {
LABEL_446:
            v9 = (v98 + 32);
            LOBYTE(p_src) = v8 == 0;
            goto LABEL_458;
          }
        }

        else
        {
          *(&__src.__r_.__value_.__s + 23) = size & 0x7F;
          size[p_src] = 0;
          v8 = v98[55];
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_446;
          }
        }
      }

      v9 = *(v98 + 4);
      v8 = *(v98 + 5);
      LOBYTE(p_src) = v8 == 0;
      if (!v9 && v8)
      {
        goto LABEL_584;
      }

LABEL_458:
      LODWORD(size) = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = 22;
      }

      else
      {
        v101 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v3 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v3 = __src.__r_.__value_.__l.__size_;
      }

      if (v101 - v3 < v8)
      {
        std::string::__grow_by_and_replace(&__src, v101, v3 + v8 - v101, v3, v3, 0, v8, v9);
        size = *(v98 + 1);
        if (size)
        {
          goto LABEL_477;
        }

        goto LABEL_482;
      }

      if (p_src)
      {
        goto LABEL_476;
      }

      LOBYTE(p_src) = __src.__r_.__value_.__s.__data_[0];
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v102 = &__src;
      }

      else
      {
        v102 = __src.__r_.__value_.__r.__words[0];
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_584;
      }

      v103 = v102 + v3;
      if ((v102 + v3) <= v9)
      {
        LOBYTE(p_src) = v103 + v8;
        if (&v103[v8] > v9)
        {
          goto LABEL_584;
        }
      }

      v104 = v8;
      memmove(v103, v9, v8);
      v105 = v3 + v104;
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&__src.__r_.__value_.__s + 23) = v105 & 0x7F;
        v102->__r_.__value_.__s.__data_[v105] = 0;
LABEL_476:
        size = *(v98 + 1);
        if (size)
        {
          goto LABEL_477;
        }

        goto LABEL_482;
      }

      __src.__r_.__value_.__l.__size_ = v3 + v104;
      v102->__r_.__value_.__s.__data_[v105] = 0;
      size = *(v98 + 1);
      if (size)
      {
        do
        {
LABEL_477:
          v106 = size;
          size = *size;
        }

        while (size);
        goto LABEL_438;
      }

      do
      {
LABEL_482:
        v106 = *(v98 + 2);
        size = *v106;
        v107 = *v106 == v98;
        v98 = v106;
      }

      while (!v107);
LABEL_438:
      v98 = v106;
      if (v106 == &v146)
      {
        goto LABEL_485;
      }
    }
  }

LABEL_531:
  v116 = *(v10 + 24);
  v117 = *(v10 + 32);
  if (v116 == v117)
  {
    goto LABEL_534;
  }

  while (*(v116 + 96) != 1)
  {
    v116 += 112;
    if (v116 == v117)
    {
      goto LABEL_534;
    }
  }

  webrtc::InitLine(97, "ice-lite", 8uLL, &__src);
  v8 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v8 = __src.__r_.__value_.__l.__size_;
    v9 = __src.__r_.__value_.__r.__words[0];
    LOBYTE(p_src) = __src.__r_.__value_.__l.__size_ == 0;
    if (!__src.__r_.__value_.__r.__words[0] && __src.__r_.__value_.__l.__size_)
    {
      goto LABEL_584;
    }
  }

  else
  {
    LOBYTE(p_src) = SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 0;
    v9 = &__src;
  }

  LODWORD(size) = *(a3 + 23);
  if (size >= 0)
  {
    v133 = 22;
  }

  else
  {
    v133 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (size >= 0)
  {
    v3 = *(a3 + 23);
  }

  else
  {
    v3 = *(a3 + 8);
  }

  if (v133 - v3 >= v8)
  {
    goto LABEL_585;
  }

  std::string::__grow_by_and_replace(a3, v133, v3 + v8 - v133, v3, v3, 0, v8, v9);
LABEL_596:
  v137 = *(a3 + 23);
  if (v137 >= 0)
  {
    v138 = 22;
  }

  else
  {
    v138 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v137 >= 0)
  {
    v139 = *(a3 + 23);
  }

  else
  {
    v139 = *(a3 + 8);
  }

  if (v138 - v139 >= 2)
  {
    if (v137 >= 0)
    {
      p_src = a3;
    }

    else
    {
      p_src = *a3;
    }

    size = (p_src + v139);
    if (p_src + v139 <= "\r\n" && size + 2 > "\r\n")
    {
      goto LABEL_584;
    }

    *size = 2573;
    v140 = v139 + 2;
    if (*(a3 + 23) < 0)
    {
      *(a3 + 8) = v140;
    }

    else
    {
      *(a3 + 23) = v140 & 0x7F;
    }

    *(p_src + v140) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(a3, v138, v139 - v138 + 2, v139, v139, 0, 2uLL, "\r\n");
  }

LABEL_534:
  v118 = *v10;
  v141 = *(v10 + 8);
  if (*v10 != v141)
  {
    v119 = -1;
    do
    {
      *__p_new_stuff = 0;
      v146 = 0;
      v147 = 0;
      v120 = (*(*v142 + 96))(v142, ++v119);
      if ((*(*v120 + 16))(v120))
      {
        v121 = (*(*v120 + 32))(v120, 0);
        (*(*v121 + 32))();
        operator new();
      }

      v122 = *(v10 + 24);
      v123 = *(v10 + 32);
      if (v122 == v123)
      {
        v122 = 0;
      }

      else
      {
        v124 = *(v118 + 31);
        if (v124 >= 0)
        {
          v125 = *(v118 + 31);
        }

        else
        {
          v125 = *(v118 + 16);
        }

        if (v124 >= 0)
        {
          v126 = (v118 + 8);
        }

        else
        {
          v126 = *(v118 + 8);
        }

        while (1)
        {
          v127 = *(v122 + 23);
          v128 = v127;
          if ((v127 & 0x80u) != 0)
          {
            v127 = *(v122 + 8);
          }

          if (v127 == v125)
          {
            v129 = v128 >= 0 ? v122 : *v122;
            if (!memcmp(v129, v126, v125))
            {
              break;
            }
          }

          v122 += 112;
          if (v122 == v123)
          {
            v122 = 0;
            break;
          }
        }

        v10 = v144;
      }

      v130 = (*(**(v118 + 32) + 16))(*(v118 + 32));
      webrtc::BuildMediaDescription(v118, v122, v130, __p_new_stuff, *(v10 + 72), v143);
      v131 = *__p_new_stuff;
      if (*__p_new_stuff)
      {
        v132 = v146;
        if (v146 != *__p_new_stuff)
        {
          do
          {
            webrtc::Candidate::~Candidate(v132 - 54);
          }

          while (v132 != v131);
        }

        operator delete(v131);
      }

      v118 += 40;
    }

    while (v118 != v141);
  }

  if (v4)
  {
    operator delete(v4);
  }

  if (v150 < 0)
  {
    operator delete(__p);
    if ((v152 & 0x80000000) == 0)
    {
LABEL_567:
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_581;
      }

      return;
    }
  }

  else if ((v152 & 0x80000000) == 0)
  {
    goto LABEL_567;
  }

  operator delete(v151[0]);
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_581:
    operator delete(__src.__r_.__value_.__l.__data_);
  }
}

void webrtc::InitLine(std::string::value_type a1, char *a2, size_t a3, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
    v7 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v23 = 1;
    __p_new_stuff[0] = a1;
    __p_new_stuff[1] = 0;
    if (v7 < 0)
    {
      if ((this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) != 1)
      {
        v7 = 0;
        v8 = this->__r_.__value_.__r.__words[0];
        goto LABEL_3;
      }

      v11 = 0;
    }

    else
    {
      v8 = this;
      if (v7 != 22)
      {
        goto LABEL_3;
      }

      v11 = 22;
    }

    std::string::__grow_by_and_replace(this, v11, 1uLL, v11, v11, 0, 1uLL, __p_new_stuff);
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    size = this->__r_.__value_.__l.__size_;
    v13 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v13 == size)
    {
LABEL_18:
      std::string::__grow_by_and_replace(this, v13, 1uLL, v13, v13, 0, 1uLL, "=");
      if (a2)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v12 = this->__r_.__value_.__r.__words[0];
    goto LABEL_21;
  }

  v7 = 0;
  this->__r_.__value_.__s.__data_[0] = 0;
  *(&this->__r_.__value_.__s + 23) = 0;
  v23 = 1;
  __p_new_stuff[0] = a1;
  v8 = this;
  __p_new_stuff[1] = 0;
LABEL_3:
  if (v8 + v7 <= __p_new_stuff && &v8->__r_.__value_.__l.__data_ + v7 + 1 > __p_new_stuff)
  {
    goto LABEL_46;
  }

  v8->__r_.__value_.__s.__data_[v7] = a1;
  v9 = v7 + 1;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v9;
    v8->__r_.__value_.__s.__data_[v9] = 0;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  *(&this->__r_.__value_.__s + 23) = v9 & 0x7F;
  v8->__r_.__value_.__s.__data_[v9] = 0;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  v12 = this;
  if (size == 22)
  {
    v13 = 22;
    goto LABEL_18;
  }

LABEL_21:
  v14 = v12 + size;
  if (v12 + size <= "=" && v14 + 1 > "=")
  {
    goto LABEL_46;
  }

  *v14 = 61;
  v15 = size + 1;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v15;
    v12->__r_.__value_.__s.__data_[v15] = 0;
    if (a2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    v12->__r_.__value_.__s.__data_[v15] = 0;
    if (a2)
    {
      goto LABEL_28;
    }
  }

LABEL_27:
  if (a3)
  {
    goto LABEL_46;
  }

LABEL_28:
  v16 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = 22;
    v18 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (22 - v16 < a3)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v18 = this->__r_.__value_.__l.__size_;
  v17 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v17 - v18 >= a3)
  {
LABEL_33:
    if (!a3)
    {
      goto LABEL_41;
    }

    v19 = this;
    if ((v16 & 0x80000000) != 0)
    {
      v19 = this->__r_.__value_.__r.__words[0];
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      v20 = v19 + v18;
      if (v19 + v18 > a2 || &v20[a3] <= a2)
      {
        memmove(v20, a2, a3);
        v21 = v18 + a3;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          this->__r_.__value_.__l.__size_ = v21;
          v19->__r_.__value_.__s.__data_[v21] = 0;
          if ((v23 & 0x80000000) == 0)
          {
            return;
          }

LABEL_44:
          operator delete(*__p_new_stuff);
          return;
        }

        *(&this->__r_.__value_.__s + 23) = v21 & 0x7F;
        v19->__r_.__value_.__s.__data_[v21] = 0;
LABEL_41:
        if ((v23 & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_44;
      }
    }

LABEL_46:
    __break(1u);
    return;
  }

LABEL_30:
  std::string::__grow_by_and_replace(this, v17, a3 - v17 + v18, v18, v18, 0, a3, a2);
  if (v23 < 0)
  {
    goto LABEL_44;
  }
}

void webrtc::BuildMediaDescription(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, char a5, std::string *a6)
{
  if (!a1)
  {
    return;
  }

  v6 = a2;
  memset(&v637, 0, sizeof(v637));
  v7 = *(a1 + 32);
  memset(&v642, 0, sizeof(v642));
  memset(&__dst, 0, sizeof(__dst));
  memset(&v640, 0, sizeof(v640));
  v634 = v7;
  v629 = a3;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v33 = (*(*v7 + 80))(v7);
      if (&__dst != (v33 + 304))
      {
        if (*(v33 + 327) < 0)
        {
          std::string::__assign_no_alias<true>(&__dst, *(v33 + 304), *(v33 + 312));
        }

        else
        {
          __dst = *(v33 + 304);
        }
      }
    }

    else if (a3 == 2)
    {
      *(&__dst.__r_.__value_.__s + 23) = 11;
      strcpy(&__dst, "application");
      v28 = (*(*v7 + 64))(v7);
      if (v28)
      {
        if (&v640 <= " " && &v640.__r_.__value_.__l.__data_ + 1 > " ")
        {
          goto LABEL_1866;
        }

        LOWORD(v640.__r_.__value_.__l.__data_) = 32;
        *(&v640.__r_.__value_.__s + 23) = 1;
        if (*(v28 + 304))
        {
          v29 = *(v28 + 308);
          __p.__r_.__value_.__r.__words[2] = 0x1600000000000000;
          *&__p.__r_.__value_.__l.__data_ = 0uLL;
          v30 = absl::numbers_internal::FastIntToBuffer(v29, &__p, a3);
          v31 = v30 - &__p;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (__p.__r_.__value_.__l.__size_ < v31)
            {
              goto LABEL_1867;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            __p.__r_.__value_.__l.__size_ = v30 - &__p;
          }

          else
          {
            if (v31 > SHIBYTE(__p.__r_.__value_.__r.__words[2]))
            {
              goto LABEL_1867;
            }

            *(&__p.__r_.__value_.__s + 23) = v30 - &__p;
            p_p = &__p;
          }

          p_p->__r_.__value_.__s.__data_[v31] = 0;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &__p;
          }

          else
          {
            v34 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (!v34 && size)
          {
            goto LABEL_1866;
          }

          if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = 22;
          }

          else
          {
            v36 = (v640.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = HIBYTE(v640.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v37 = v640.__r_.__value_.__l.__size_;
          }

          if (v36 - v37 >= size)
          {
            if (size)
            {
              if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v38 = &v640;
              }

              else
              {
                v38 = v640.__r_.__value_.__r.__words[0];
              }

              if ((size & 0x8000000000000000) != 0)
              {
                goto LABEL_1866;
              }

              v39 = v38 + v37;
              if ((v38 + v37) <= v34 && &v39[size] > v34)
              {
                goto LABEL_1866;
              }

              v40 = size;
              memmove(v39, v34, size);
              v41 = v37 + v40;
              if (SHIBYTE(v640.__r_.__value_.__r.__words[2]) < 0)
              {
                v640.__r_.__value_.__l.__size_ = v37 + v40;
              }

              else
              {
                *(&v640.__r_.__value_.__s + 23) = v41 & 0x7F;
              }

              v38->__r_.__value_.__s.__data_[v41] = 0;
            }
          }

          else
          {
            std::string::__grow_by_and_replace(&v640, v36, v37 + size - v36, v37, v37, 0, size, v34);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          if (&v640.__r_.__value_.__l.__data_ + 1 <= "webrtc-datachannel" && &v640.__r_.__value_.__r.__words[2] + 3 > "webrtc-datachannel")
          {
            goto LABEL_1866;
          }

          strcpy(&v640.__r_.__value_.__s.__data_[1], "webrtc-datachannel");
          *(&v640.__r_.__value_.__s + 23) = 19;
        }
      }
    }
  }

  else
  {
    if (a3)
    {
      v8 = "video";
    }

    else
    {
      v8 = "audio";
    }

    std::string::__assign_external(&__dst, v8);
    v10 = v7[35];
    for (i = v7[36]; v10 != i; v10 += 216)
    {
      v11 = HIBYTE(v640.__r_.__value_.__r.__words[2]);
      if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = 22;
      }

      else
      {
        v12 = (v640.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v640.__r_.__value_.__l.__size_;
      }

      if (v12 == v11)
      {
        std::string::__grow_by_and_replace(&v640, v12, 1uLL, v12, v12, 0, 1uLL, " ");
      }

      else
      {
        if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v640;
        }

        else
        {
          v13 = v640.__r_.__value_.__r.__words[0];
        }

        if (v13 + v11 <= " " && &v13->__r_.__value_.__l.__data_ + v11 + 1 > " ")
        {
          goto LABEL_1866;
        }

        v13->__r_.__value_.__s.__data_[v11] = 32;
        v15 = v11 + 1;
        if (SHIBYTE(v640.__r_.__value_.__r.__words[2]) < 0)
        {
          v640.__r_.__value_.__l.__size_ = v15;
        }

        else
        {
          *(&v640.__r_.__value_.__s + 23) = v15 & 0x7F;
        }

        v13->__r_.__value_.__s.__data_[v15] = 0;
      }

      v16 = *(v10 + 12);
      __p.__r_.__value_.__r.__words[2] = 0x1600000000000000;
      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v17 = absl::numbers_internal::FastIntToBuffer(v16, &__p, a3);
      v18 = v17 - &__p;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (__p.__r_.__value_.__l.__size_ < v18)
        {
          goto LABEL_1867;
        }

        v19 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__l.__size_ = v17 - &__p;
      }

      else
      {
        if (v18 > SHIBYTE(__p.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_1867;
        }

        *(&__p.__r_.__value_.__s + 23) = v17 - &__p;
        v19 = &__p;
      }

      v19->__r_.__value_.__s.__data_[v18] = 0;
      v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      if (!v20 && v21)
      {
        goto LABEL_1866;
      }

      if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = 22;
      }

      else
      {
        v22 = (v640.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v640.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v640.__r_.__value_.__l.__size_;
      }

      if (v22 - v23 >= v21)
      {
        if (v21)
        {
          if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v640;
          }

          else
          {
            v24 = v640.__r_.__value_.__r.__words[0];
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_1866;
          }

          v25 = v24 + v23;
          if ((v24 + v23) <= v20 && &v25[v21] > v20)
          {
            goto LABEL_1866;
          }

          v26 = v21;
          memmove(v25, v20, v21);
          v27 = v23 + v26;
          if (SHIBYTE(v640.__r_.__value_.__r.__words[2]) < 0)
          {
            v640.__r_.__value_.__l.__size_ = v23 + v26;
          }

          else
          {
            *(&v640.__r_.__value_.__s + 23) = v27 & 0x7F;
          }

          v6 = a2;
          v24->__r_.__value_.__s.__data_[v27] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v640, v22, v23 + v21 - v22, v23, v23, 0, v21, v20);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v42 = HIBYTE(v640.__r_.__value_.__r.__words[2]);
  if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v42 = v640.__r_.__value_.__l.__size_;
  }

  v43 = a1;
  if (!v42)
  {
    if (SHIBYTE(v640.__r_.__value_.__r.__words[2]) < 0)
    {
      v640.__r_.__value_.__l.__size_ = 2;
      v44 = v640.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v640.__r_.__value_.__s + 23) = 2;
      v44 = &v640;
    }

    strcpy(v44, " 0");
  }

  *(&__p.__r_.__value_.__s + 23) = 1;
  if (&__p <= "9" && &__p.__r_.__value_.__l.__data_ + 1 > "9")
  {
    goto LABEL_1866;
  }

  LOWORD(__p.__r_.__value_.__l.__data_) = 57;
  if ((*(a1 + 4) & 1) != 0 || *(a1 + 5) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 48;
    v46 = a6;
    v45 = v634;
    goto LABEL_131;
  }

  v45 = v634;
  if ((*(v634 + 151) & 0x8000000000000000) != 0)
  {
    v46 = a6;
    if (v634[17])
    {
      goto LABEL_126;
    }
  }

  else
  {
    v46 = a6;
    if (*(v634 + 151))
    {
      goto LABEL_126;
    }
  }

  if (!*(v634 + 40) && !*(v634 + 92))
  {
    goto LABEL_131;
  }

LABEL_126:
  v47 = *(v634 + 92);
  v638.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&v638.__r_.__value_.__l.__data_ = 0uLL;
  v48 = absl::numbers_internal::FastIntToBuffer(v47, &v638, a3);
  v49 = v48 - &v638;
  if ((SHIBYTE(v638.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v638.__r_.__value_.__l.__size_ < v49)
    {
      goto LABEL_1867;
    }

    v638.__r_.__value_.__l.__size_ = v48 - &v638;
    *(v638.__r_.__value_.__r.__words[0] + v49) = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }
  }

  else
  {
    if (v49 > SHIBYTE(v638.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_1867;
    }

    *(&v638.__r_.__value_.__s + 23) = v48 - &v638;
    *v48 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_130:
  __p = v638;
LABEL_131:
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
    v51 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v51 = __dst.__r_.__value_.__l.__size_;
  }

  webrtc::InitLine(109, p_dst, v51, &v642);
  v52 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = 22;
  }

  else
  {
    v53 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v52 = v642.__r_.__value_.__l.__size_;
  }

  if (v53 == v52)
  {
    std::string::__grow_by_and_replace(&v642, v53, 1uLL, v53, v53, 0, 1uLL, " ");
  }

  else
  {
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v642;
    }

    else
    {
      v54 = v642.__r_.__value_.__r.__words[0];
    }

    v55 = v54 + v52;
    if (v54 + v52 <= " " && v55 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v55 = 32;
    v56 = v52 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v56;
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v56 & 0x7F;
    }

    v54->__r_.__value_.__s.__data_[v56] = 0;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = &__p;
  }

  else
  {
    v57 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v58 = __p.__r_.__value_.__l.__size_;
  }

  if (!v57 && v58)
  {
    goto LABEL_1866;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = 22;
  }

  else
  {
    v59 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v642.__r_.__value_.__l.__size_;
  }

  if (v59 - v60 >= v58)
  {
    if (v58)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &v642;
      }

      else
      {
        v61 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v58 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v62 = v61 + v60;
      if ((v61 + v60) <= v57 && &v62[v58] > v57)
      {
        goto LABEL_1866;
      }

      v63 = v58;
      memmove(v62, v57, v58);
      v64 = v60 + v63;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v60 + v63;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v64 & 0x7F;
      }

      v61->__r_.__value_.__s.__data_[v64] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v59, v60 + v58 - v59, v60, v60, 0, v58, v57);
  }

  v65 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = 22;
  }

  else
  {
    v66 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v65 = v642.__r_.__value_.__l.__size_;
  }

  if (v66 == v65)
  {
    std::string::__grow_by_and_replace(&v642, v66, 1uLL, v66, v66, 0, 1uLL, " ");
    if ((*(v45 + 31) & 0x80000000) == 0)
    {
LABEL_187:
      v67 = *(v45 + 1);
      v638.__r_.__value_.__r.__words[2] = v45[3];
      *&v638.__r_.__value_.__l.__data_ = v67;
      goto LABEL_195;
    }
  }

  else
  {
    v68 = &v642;
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = v642.__r_.__value_.__r.__words[0];
    }

    v69 = v68 + v65;
    if (v68 + v65 <= " " && v69 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v69 = 32;
    v70 = v65 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v70;
      v68->__r_.__value_.__s.__data_[v70] = 0;
      if ((*(v45 + 31) & 0x80000000) == 0)
      {
        goto LABEL_187;
      }
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v70 & 0x7F;
      v68->__r_.__value_.__s.__data_[v70] = 0;
      if ((*(v45 + 31) & 0x80000000) == 0)
      {
        goto LABEL_187;
      }
    }
  }

  std::string::__init_copy_ctor_external(&v638, v45[1], v45[2]);
LABEL_195:
  if ((v638.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = &v638;
  }

  else
  {
    v71 = v638.__r_.__value_.__r.__words[0];
  }

  if ((v638.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = HIBYTE(v638.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v72 = v638.__r_.__value_.__l.__size_;
  }

  if (!v71 && v72)
  {
    goto LABEL_1866;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = 22;
  }

  else
  {
    v73 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v74 = v642.__r_.__value_.__l.__size_;
  }

  if (v73 - v74 >= v72)
  {
    if (v72)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &v642;
      }

      else
      {
        v75 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v72 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v76 = v75 + v74;
      if ((v75 + v74) <= v71 && &v76[v72] > v71)
      {
        goto LABEL_1866;
      }

      v77 = v72;
      memmove(v76, v71, v72);
      v78 = v74 + v77;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v74 + v77;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v78 & 0x7F;
      }

      v75->__r_.__value_.__s.__data_[v78] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v73, v74 + v72 - v73, v74, v74, 0, v72, v71);
  }

  if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = &v640;
  }

  else
  {
    v79 = v640.__r_.__value_.__r.__words[0];
  }

  if ((v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = HIBYTE(v640.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v80 = v640.__r_.__value_.__l.__size_;
  }

  if (!v79 && v80)
  {
    goto LABEL_1866;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = 22;
  }

  else
  {
    v81 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v82 = v642.__r_.__value_.__l.__size_;
  }

  if (v81 - v82 < v80)
  {
    std::string::__grow_by_and_replace(&v642, v81, v82 + v80 - v81, v82, v82, 0, v80, v79);
    if ((SHIBYTE(v638.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_240;
  }

  if (!v80)
  {
LABEL_250:
    if ((SHIBYTE(v638.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_251;
    }

LABEL_240:
    operator delete(v638.__r_.__value_.__l.__data_);
    goto LABEL_251;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = &v642;
  }

  else
  {
    v83 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v80 & 0x8000000000000000) != 0)
  {
    goto LABEL_1866;
  }

  v84 = v83 + v82;
  if ((v83 + v82) <= v79 && &v84[v80] > v79)
  {
    goto LABEL_1866;
  }

  v85 = v80;
  memmove(v84, v79, v80);
  v86 = v82 + v85;
  if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v642.__r_.__value_.__s + 23) = v86 & 0x7F;
    v83->__r_.__value_.__s.__data_[v86] = 0;
    goto LABEL_250;
  }

  v642.__r_.__value_.__l.__size_ = v82 + v85;
  v83->__r_.__value_.__s.__data_[v86] = 0;
  if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_240;
  }

LABEL_251:
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v87 = &v642;
  }

  else
  {
    v87 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v88 = v642.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
LABEL_287:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_288;
    }

LABEL_279:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v640.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_289;
    }

LABEL_280:
    operator delete(v640.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_290;
    }

LABEL_281:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_282;
  }

  if (!v87 && v88)
  {
    goto LABEL_1866;
  }

  v89 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v89 & 0x8000000000000000) == 0)
  {
    v90 = 22;
    v91 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v89 < v88)
    {
      goto LABEL_262;
    }

LABEL_267:
    if (v88)
    {
      v96 = v46;
      if ((v89 & 0x80000000) != 0)
      {
        v96 = v46->__r_.__value_.__r.__words[0];
      }

      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v97 = v96 + v91;
      if ((v96 + v91) <= v87 && &v97[v88] > v87)
      {
        goto LABEL_1866;
      }

      v98 = v88;
      memmove(v97, v87, v88);
      v99 = v91 + v98;
      if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
      {
        v46->__r_.__value_.__l.__size_ = v99;
        v96->__r_.__value_.__s.__data_[v99] = 0;
        v92 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if ((v92 & 0x8000000000000000) == 0)
        {
          goto LABEL_276;
        }

LABEL_263:
        v92 = v46->__r_.__value_.__l.__size_;
        v93 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v93 - v92 >= 2)
        {
          v94 = v46->__r_.__value_.__r.__words[0];
          v95 = (v46->__r_.__value_.__r.__words[0] + v92);
          if (v95 > "\r\n")
          {
            goto LABEL_285;
          }

          goto LABEL_284;
        }

LABEL_278:
        std::string::__grow_by_and_replace(v46, v93, v92 - v93 + 2, v92, v92, 0, 2uLL, "\r\n");
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_288;
        }

        goto LABEL_279;
      }

      *(&v46->__r_.__value_.__s + 23) = v99 & 0x7F;
      v96->__r_.__value_.__s.__data_[v99] = 0;
    }

    v92 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v92 & 0x8000000000000000) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_263;
  }

  v91 = v46->__r_.__value_.__l.__size_;
  v90 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v90 - v91 >= v88)
  {
    goto LABEL_267;
  }

LABEL_262:
  std::string::__grow_by_and_replace(v46, v90, v88 - v90 + v91, v91, v91, 0, v88, v87);
  v92 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v92 & 0x8000000000000000) != 0)
  {
    goto LABEL_263;
  }

LABEL_276:
  if (v92 - 21 < 2)
  {
    v93 = 22;
    goto LABEL_278;
  }

  v94 = v46;
  v95 = v46 + v92;
  if (v46 + v92 > "\r\n")
  {
    goto LABEL_285;
  }

LABEL_284:
  if (v95 + 2 > "\r\n")
  {
    goto LABEL_1866;
  }

LABEL_285:
  *v95 = 2573;
  v100 = v92 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v100 & 0x7F;
    v94->__r_.__value_.__s.__data_[v100] = 0;
    goto LABEL_287;
  }

  v46->__r_.__value_.__l.__size_ = v100;
  v94->__r_.__value_.__s.__data_[v100] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_279;
  }

LABEL_288:
  if (SHIBYTE(v640.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_280;
  }

LABEL_289:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_281;
  }

LABEL_290:
  if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_282:
    operator delete(v642.__r_.__value_.__l.__data_);
  }

LABEL_291:
  webrtc::InitLine(99, "IN", 2uLL, &v637);
  if ((*(v45 + 151) & 0x8000000000000000) != 0)
  {
    v101 = *(v45 + 40);
    if (v45[17])
    {
      goto LABEL_305;
    }
  }

  else
  {
    v101 = *(v45 + 40);
    if (*(v45 + 151))
    {
      goto LABEL_305;
    }
  }

  if (!v101)
  {
    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v102 = 22;
    }

    else
    {
      v102 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = SHIBYTE(v637.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v103 = v637.__r_.__value_.__l.__size_;
    }

    if (!*(v45 + 92))
    {
      if (v102 == v103)
      {
        std::string::__grow_by_and_replace(&v637, v102, 1uLL, v102, v102, 0, 1uLL, " ");
      }

      else
      {
        v105 = &v637;
        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v105 = v637.__r_.__value_.__r.__words[0];
        }

        v106 = v105 + v103;
        if (v105 + v103 <= " " && v106 + 1 > " ")
        {
          goto LABEL_1866;
        }

        *v106 = 32;
        v107 = v103 + 1;
        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          v637.__r_.__value_.__l.__size_ = v107;
        }

        else
        {
          *(&v637.__r_.__value_.__s + 23) = v107 & 0x7F;
        }

        v105->__r_.__value_.__s.__data_[v107] = 0;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v131 = 22;
      }

      else
      {
        v131 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v132 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v132 = v637.__r_.__value_.__l.__size_;
      }

      if (v131 - v132 >= 3)
      {
        v133 = &v637;
        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v133 = v637.__r_.__value_.__r.__words[0];
        }

        v134 = v133 + v132;
        if (v133 + v132 <= "IP4" && v134 + 3 > "IP4")
        {
          goto LABEL_1866;
        }

        v134[2] = 52;
        *v134 = 20553;
        v135 = v132 + 3;
        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          v637.__r_.__value_.__l.__size_ = v132 + 3;
        }

        else
        {
          *(&v637.__r_.__value_.__s + 23) = v135 & 0x7F;
        }

        v133->__r_.__value_.__s.__data_[v135] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v637, v131, v132 - v131 + 3, v132, v132, 0, 3uLL, "IP4");
      }

      v136 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v137 = 22;
      }

      else
      {
        v137 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v136 = v637.__r_.__value_.__l.__size_;
      }

      if (v137 == v136)
      {
        std::string::__grow_by_and_replace(&v637, v137, 1uLL, v137, v137, 0, 1uLL, " ");
      }

      else
      {
        v138 = &v637;
        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v138 = v637.__r_.__value_.__r.__words[0];
        }

        v139 = v138 + v136;
        if (v138 + v136 <= " " && v139 + 1 > " ")
        {
          goto LABEL_1866;
        }

        *v139 = 32;
        v140 = v136 + 1;
        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          v637.__r_.__value_.__l.__size_ = v140;
        }

        else
        {
          *(&v637.__r_.__value_.__s + 23) = v140 & 0x7F;
        }

        v138->__r_.__value_.__s.__data_[v140] = 0;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v127 = 22;
      }

      else
      {
        v127 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v128 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v128 = v637.__r_.__value_.__l.__size_;
      }

      if (v127 - v128 >= 7)
      {
        v129 = &v637;
        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v129 = v637.__r_.__value_.__r.__words[0];
        }

        v130 = (v129 + v128);
        if (v129 + v128 <= "0.0.0.0" && v130 + 7 > "0.0.0.0")
        {
          goto LABEL_1866;
        }

LABEL_445:
        *(v130 + 3) = 808333358;
        *v130 = 774909488;
        v141 = v128 + 7;
        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          v637.__r_.__value_.__l.__size_ = v128 + 7;
        }

        else
        {
          *(&v637.__r_.__value_.__s + 23) = v141 & 0x7F;
        }

        v129->__r_.__value_.__s.__data_[v141] = 0;
        goto LABEL_566;
      }

LABEL_440:
      std::string::__grow_by_and_replace(&v637, v127, v128 - v127 + 7, v128, v128, 0, 7uLL, "0.0.0.0");
      goto LABEL_566;
    }

    if (v102 == v103)
    {
      goto LABEL_320;
    }

    v104 = SHIBYTE(v637.__r_.__value_.__r.__words[2]) >> 63;
    goto LABEL_347;
  }

LABEL_305:
  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v102 = 22;
  }

  else
  {
    v102 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v103 = SHIBYTE(v637.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v103 = v637.__r_.__value_.__l.__size_;
  }

  if (v101 != 30)
  {
    if (v101 == 2)
    {
      if (v102 == v103)
      {
        std::string::__grow_by_and_replace(&v637, v102, 1uLL, v102, v102, 0, 1uLL, " ");
      }

      else
      {
        v108 = &v637;
        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v108 = v637.__r_.__value_.__r.__words[0];
        }

        v109 = v108 + v103;
        if (v108 + v103 <= " " && v109 + 1 > " ")
        {
          goto LABEL_1866;
        }

        *v109 = 32;
        v110 = v103 + 1;
        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          v637.__r_.__value_.__l.__size_ = v110;
        }

        else
        {
          *(&v637.__r_.__value_.__s + 23) = v110 & 0x7F;
        }

        v108->__r_.__value_.__s.__data_[v110] = 0;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = 22;
      }

      else
      {
        v142 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v143 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v143 = v637.__r_.__value_.__l.__size_;
      }

      if (v142 - v143 >= 3)
      {
        v144 = &v637;
        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v144 = v637.__r_.__value_.__r.__words[0];
        }

        v145 = v144 + v143;
        if (v144 + v143 <= "IP4" && v145 + 3 > "IP4")
        {
          goto LABEL_1866;
        }

        v145[2] = 52;
        *v145 = 20553;
        v146 = v143 + 3;
        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          v637.__r_.__value_.__l.__size_ = v143 + 3;
        }

        else
        {
          *(&v637.__r_.__value_.__s + 23) = v146 & 0x7F;
        }

        v144->__r_.__value_.__s.__data_[v146] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v637, v142, v143 - v142 + 3, v143, v143, 0, 3uLL, "IP4");
      }

      v152 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v153 = 22;
      }

      else
      {
        v153 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v152 = v637.__r_.__value_.__l.__size_;
      }

      if (v153 == v152)
      {
        std::string::__grow_by_and_replace(&v637, v153, 1uLL, v153, v153, 0, 1uLL, " ");
      }

      else
      {
        v154 = &v637;
        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v154 = v637.__r_.__value_.__r.__words[0];
        }

        v155 = v154 + v152;
        if (v154 + v152 <= " " && v155 + 1 > " ")
        {
          goto LABEL_1866;
        }

        *v155 = 32;
        v156 = v152 + 1;
        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          v637.__r_.__value_.__l.__size_ = v156;
        }

        else
        {
          *(&v637.__r_.__value_.__s + 23) = v156 & 0x7F;
        }

        v154->__r_.__value_.__s.__data_[v156] = 0;
      }

      webrtc::IPAddress::ToString((v45 + 19), &v642);
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v162 = &v642;
      }

      else
      {
        v162 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v163 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v163 = v642.__r_.__value_.__l.__size_;
      }

      if (!v162 && v163)
      {
        goto LABEL_1866;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v164 = 22;
      }

      else
      {
        v164 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v165 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v165 = v637.__r_.__value_.__l.__size_;
      }

      if (v164 - v165 >= v163)
      {
        if (!v163)
        {
          goto LABEL_564;
        }

        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v166 = &v637;
        }

        else
        {
          v166 = v637.__r_.__value_.__r.__words[0];
        }

        if ((v163 & 0x8000000000000000) != 0)
        {
          goto LABEL_1866;
        }

        v167 = v166 + v165;
        if ((v166 + v165) <= v162 && &v167[v163] > v162)
        {
          goto LABEL_1866;
        }

        goto LABEL_562;
      }

LABEL_553:
      std::string::__grow_by_and_replace(&v637, v164, v165 + v163 - v164, v165, v165, 0, v163, v162);
      if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_566;
      }

      goto LABEL_565;
    }

    if (v102 == v103)
    {
LABEL_320:
      std::string::__grow_by_and_replace(&v637, v102, 1uLL, v102, v102, 0, 1uLL, " ");
      goto LABEL_355;
    }

    v104 = SHIBYTE(v637.__r_.__value_.__r.__words[2]) >> 63;
LABEL_347:
    v254 = v104 == 0;
    v114 = &v637;
    if (!v254)
    {
      v114 = v637.__r_.__value_.__r.__words[0];
    }

    v115 = v114 + v103;
    if (v114 + v103 <= " " && v115 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v115 = 32;
    v116 = v103 + 1;
    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      v637.__r_.__value_.__l.__size_ = v116;
    }

    else
    {
      *(&v637.__r_.__value_.__s + 23) = v116 & 0x7F;
    }

    v114->__r_.__value_.__s.__data_[v116] = 0;
LABEL_355:
    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = 22;
    }

    else
    {
      v117 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v118 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v118 = v637.__r_.__value_.__l.__size_;
    }

    if (v117 - v118 >= 3)
    {
      v119 = &v637;
      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v119 = v637.__r_.__value_.__r.__words[0];
      }

      v120 = v119 + v118;
      if (v119 + v118 <= "IP4" && v120 + 3 > "IP4")
      {
        goto LABEL_1866;
      }

      v120[2] = 52;
      *v120 = 20553;
      v121 = v118 + 3;
      if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
      {
        v637.__r_.__value_.__l.__size_ = v118 + 3;
      }

      else
      {
        *(&v637.__r_.__value_.__s + 23) = v121 & 0x7F;
      }

      v119->__r_.__value_.__s.__data_[v121] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v637, v117, v118 - v117 + 3, v118, v118, 0, 3uLL, "IP4");
    }

    v122 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v123 = 22;
    }

    else
    {
      v123 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v122 = v637.__r_.__value_.__l.__size_;
    }

    if (v123 == v122)
    {
      std::string::__grow_by_and_replace(&v637, v123, 1uLL, v123, v123, 0, 1uLL, " ");
    }

    else
    {
      v124 = &v637;
      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v124 = v637.__r_.__value_.__r.__words[0];
      }

      v125 = v124 + v122;
      if (v124 + v122 <= " " && v125 + 1 > " ")
      {
        goto LABEL_1866;
      }

      *v125 = 32;
      v126 = v122 + 1;
      if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
      {
        v637.__r_.__value_.__l.__size_ = v126;
      }

      else
      {
        *(&v637.__r_.__value_.__s + 23) = v126 & 0x7F;
      }

      v124->__r_.__value_.__s.__data_[v126] = 0;
    }

    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v127 = 22;
    }

    else
    {
      v127 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v128 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v128 = v637.__r_.__value_.__l.__size_;
    }

    if (v127 - v128 >= 7)
    {
      v129 = &v637;
      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v129 = v637.__r_.__value_.__r.__words[0];
      }

      v130 = (v129 + v128);
      if (v129 + v128 <= "0.0.0.0" && v130 + 7 > "0.0.0.0")
      {
        goto LABEL_1866;
      }

      goto LABEL_445;
    }

    goto LABEL_440;
  }

  if (v102 == v103)
  {
    std::string::__grow_by_and_replace(&v637, v102, 1uLL, v102, v102, 0, 1uLL, " ");
  }

  else
  {
    v111 = &v637;
    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v111 = v637.__r_.__value_.__r.__words[0];
    }

    v112 = v111 + v103;
    if (v111 + v103 <= " " && v112 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v112 = 32;
    v113 = v103 + 1;
    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      v637.__r_.__value_.__l.__size_ = v113;
    }

    else
    {
      *(&v637.__r_.__value_.__s + 23) = v113 & 0x7F;
    }

    v111->__r_.__value_.__s.__data_[v113] = 0;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v147 = 22;
  }

  else
  {
    v147 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v148 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v148 = v637.__r_.__value_.__l.__size_;
  }

  if (v147 - v148 >= 3)
  {
    v149 = &v637;
    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v149 = v637.__r_.__value_.__r.__words[0];
    }

    v150 = v149 + v148;
    if (v149 + v148 <= "IP6" && v150 + 3 > "IP6")
    {
      goto LABEL_1866;
    }

    v150[2] = 54;
    *v150 = 20553;
    v151 = v148 + 3;
    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      v637.__r_.__value_.__l.__size_ = v148 + 3;
    }

    else
    {
      *(&v637.__r_.__value_.__s + 23) = v151 & 0x7F;
    }

    v149->__r_.__value_.__s.__data_[v151] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v637, v147, v148 - v147 + 3, v148, v148, 0, 3uLL, "IP6");
  }

  v157 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v158 = 22;
  }

  else
  {
    v158 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v157 = v637.__r_.__value_.__l.__size_;
  }

  if (v158 == v157)
  {
    std::string::__grow_by_and_replace(&v637, v158, 1uLL, v158, v158, 0, 1uLL, " ");
  }

  else
  {
    v159 = &v637;
    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v159 = v637.__r_.__value_.__r.__words[0];
    }

    v160 = v159 + v157;
    if (v159 + v157 <= " " && v160 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v160 = 32;
    v161 = v157 + 1;
    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      v637.__r_.__value_.__l.__size_ = v161;
    }

    else
    {
      *(&v637.__r_.__value_.__s + 23) = v161 & 0x7F;
    }

    v159->__r_.__value_.__s.__data_[v161] = 0;
  }

  webrtc::IPAddress::ToString((v45 + 19), &v642);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v162 = &v642;
  }

  else
  {
    v162 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v163 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v163 = v642.__r_.__value_.__l.__size_;
  }

  if (!v162 && v163)
  {
    goto LABEL_1866;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v164 = 22;
  }

  else
  {
    v164 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v165 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v165 = v637.__r_.__value_.__l.__size_;
  }

  if (v164 - v165 < v163)
  {
    goto LABEL_553;
  }

  if (!v163)
  {
    goto LABEL_564;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v166 = &v637;
  }

  else
  {
    v166 = v637.__r_.__value_.__r.__words[0];
  }

  if ((v163 & 0x8000000000000000) != 0)
  {
    goto LABEL_1866;
  }

  v167 = v166 + v165;
  if ((v166 + v165) <= v162 && &v167[v163] > v162)
  {
    goto LABEL_1866;
  }

LABEL_562:
  v168 = v163;
  memmove(v167, v162, v163);
  v169 = v165 + v168;
  if ((SHIBYTE(v637.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v637.__r_.__value_.__s + 23) = v169 & 0x7F;
    v166->__r_.__value_.__s.__data_[v169] = 0;
LABEL_564:
    if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_566;
    }

    goto LABEL_565;
  }

  v637.__r_.__value_.__l.__size_ = v165 + v168;
  v166->__r_.__value_.__s.__data_[v169] = 0;
  if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_565:
    operator delete(v642.__r_.__value_.__l.__data_);
  }

LABEL_566:
  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v170 = &v637;
  }

  else
  {
    v170 = v637.__r_.__value_.__r.__words[0];
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v171 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v171 = v637.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
LABEL_602:
    v183 = *(v45 + 9);
    if ((*(v45 + 63) & 0x80000000) == 0)
    {
      goto LABEL_603;
    }

LABEL_594:
    std::string::__init_copy_ctor_external(&v638, v45[5], v45[6]);
    v184 = SHIBYTE(v638.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v638.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_604;
    }

LABEL_595:
    if (v638.__r_.__value_.__l.__size_ != 2)
    {
      if (v638.__r_.__value_.__l.__size_ != 4)
      {
        goto LABEL_725;
      }

      goto LABEL_626;
    }

    v186 = v638.__r_.__value_.__r.__words[0];
LABEL_609:
    if (LOWORD(v186->__r_.__value_.__l.__data_) == *"AS" && v183 >= 1000)
    {
      if ((v184 & 0x80000000) == 0)
      {
        v187 = &v638;
      }

      else
      {
        v187 = v638.__r_.__value_.__r.__words[0];
      }

      if ((v184 & 0x80000000) == 0)
      {
        v188 = v184;
      }

      else
      {
        v188 = v638.__r_.__value_.__l.__size_;
      }

      webrtc::InitLine(98, v187, v188, &v637);
      v190 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v191 = 22;
      }

      else
      {
        v191 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v190 = v637.__r_.__value_.__l.__size_;
      }

      if (v191 == v190)
      {
        std::string::__grow_by_and_replace(&v637, v191, 1uLL, v191, v191, 0, 1uLL, ":");
      }

      else
      {
        if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v200 = &v637;
        }

        else
        {
          v200 = v637.__r_.__value_.__r.__words[0];
        }

        v201 = v200 + v190;
        if (v200 + v190 <= ":" && v201 + 1 > ":")
        {
          goto LABEL_1866;
        }

        *v201 = 58;
        v202 = v190 + 1;
        if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
        {
          v637.__r_.__value_.__l.__size_ = v202;
        }

        else
        {
          *(&v637.__r_.__value_.__s + 23) = v202 & 0x7F;
        }

        v200->__r_.__value_.__s.__data_[v202] = 0;
      }

      webrtc::StringBuilder::operator<<(&v637, (v183 / 0x3E8uLL), v189);
      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v212 = &v637;
      }

      else
      {
        v212 = v637.__r_.__value_.__r.__words[0];
      }

      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v213 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v213 = v637.__r_.__value_.__l.__size_;
      }

      if (!v46)
      {
        goto LABEL_725;
      }

      if (!v212 && v213)
      {
        goto LABEL_1866;
      }

      v214 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
      if (v214 < 0)
      {
        v216 = v46->__r_.__value_.__l.__size_;
        v215 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v215 - v216 < v213)
        {
          goto LABEL_697;
        }
      }

      else
      {
        v215 = 22;
        v216 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if (22 - v214 < v213)
        {
LABEL_697:
          std::string::__grow_by_and_replace(v46, v215, v213 - v215 + v216, v216, v216, 0, v213, v212);
          goto LABEL_720;
        }
      }

      if (v213)
      {
        v217 = v46;
        if ((v214 & 0x80000000) != 0)
        {
          v217 = v46->__r_.__value_.__r.__words[0];
        }

        if ((v213 & 0x8000000000000000) != 0)
        {
          goto LABEL_1866;
        }

        v218 = v217 + v216;
        if ((v217 + v216) <= v212 && &v218[v213] > v212)
        {
          goto LABEL_1866;
        }

        v219 = v213;
        memmove(v218, v212, v213);
        v220 = v216 + v219;
        if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
        {
          v46->__r_.__value_.__l.__size_ = v220;
        }

        else
        {
          *(&v46->__r_.__value_.__s + 23) = v220 & 0x7F;
        }

        v217->__r_.__value_.__s.__data_[v220] = 0;
      }

LABEL_720:
      v221 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
      if ((v221 & 0x8000000000000000) != 0)
      {
        v221 = v46->__r_.__value_.__l.__size_;
        v224 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224 - v221 < 2)
        {
          goto LABEL_724;
        }

        v222 = v46->__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v221 - 21 < 2)
        {
LABEL_722:
          v224 = 22;
          goto LABEL_724;
        }

        v222 = v46;
      }

      v240 = (v222 + v221);
      if (v222 + v221 <= "\r\n" && v240 + 1 > "\r\n")
      {
        goto LABEL_1866;
      }

      *v240 = 2573;
      v225 = v221 + 2;
      if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_717;
      }

      goto LABEL_768;
    }

    if ((v184 & 0x80000000) == 0 || v638.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_725;
    }

LABEL_626:
    if (*v638.__r_.__value_.__l.__data_ != *"TIAS")
    {
      goto LABEL_725;
    }

    goto LABEL_627;
  }

  if (!v170 && v171)
  {
    goto LABEL_1866;
  }

  v172 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v172 & 0x8000000000000000) == 0)
  {
    v173 = 22;
    v174 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v172 < v171)
    {
      goto LABEL_577;
    }

LABEL_582:
    if (v171)
    {
      v179 = v46;
      if ((v172 & 0x80000000) != 0)
      {
        v179 = v46->__r_.__value_.__r.__words[0];
      }

      if ((v171 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v180 = v179 + v174;
      if ((v179 + v174) <= v170 && &v180[v171] > v170)
      {
        goto LABEL_1866;
      }

      v181 = v171;
      memmove(v180, v170, v171);
      v182 = v174 + v181;
      if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
      {
        v46->__r_.__value_.__l.__size_ = v182;
        v179->__r_.__value_.__s.__data_[v182] = 0;
        v175 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if ((v175 & 0x8000000000000000) == 0)
        {
          goto LABEL_591;
        }

LABEL_578:
        v175 = v46->__r_.__value_.__l.__size_;
        v176 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v176 - v175 >= 2)
        {
          v177 = v46->__r_.__value_.__r.__words[0];
          v178 = (v46->__r_.__value_.__r.__words[0] + v175);
          if (v178 > "\r\n")
          {
            goto LABEL_600;
          }

          goto LABEL_599;
        }

LABEL_593:
        std::string::__grow_by_and_replace(v46, v176, v175 - v176 + 2, v175, v175, 0, 2uLL, "\r\n");
        v183 = *(v45 + 9);
        if ((*(v45 + 63) & 0x80000000) == 0)
        {
          goto LABEL_603;
        }

        goto LABEL_594;
      }

      *(&v46->__r_.__value_.__s + 23) = v182 & 0x7F;
      v179->__r_.__value_.__s.__data_[v182] = 0;
    }

    v175 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v175 & 0x8000000000000000) == 0)
    {
      goto LABEL_591;
    }

    goto LABEL_578;
  }

  v174 = v46->__r_.__value_.__l.__size_;
  v173 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v173 - v174 >= v171)
  {
    goto LABEL_582;
  }

LABEL_577:
  std::string::__grow_by_and_replace(v46, v173, v171 - v173 + v174, v174, v174, 0, v171, v170);
  v175 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v175 & 0x8000000000000000) != 0)
  {
    goto LABEL_578;
  }

LABEL_591:
  if (v175 - 21 < 2)
  {
    v176 = 22;
    goto LABEL_593;
  }

  v177 = v46;
  v178 = v46 + v175;
  if (v46 + v175 > "\r\n")
  {
    goto LABEL_600;
  }

LABEL_599:
  if (v178 + 2 > "\r\n")
  {
    goto LABEL_1866;
  }

LABEL_600:
  *v178 = 2573;
  v185 = v175 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v185 & 0x7F;
    v177->__r_.__value_.__s.__data_[v185] = 0;
    goto LABEL_602;
  }

  v46->__r_.__value_.__l.__size_ = v185;
  v177->__r_.__value_.__s.__data_[v185] = 0;
  v183 = *(v45 + 9);
  if (*(v45 + 63) < 0)
  {
    goto LABEL_594;
  }

LABEL_603:
  v638 = *(v45 + 5);
  v184 = SHIBYTE(v638.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v638.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    goto LABEL_595;
  }

LABEL_604:
  v186 = &v638;
  if (v184 == 2)
  {
    goto LABEL_609;
  }

  if (v184 != 4 || LODWORD(v638.__r_.__value_.__l.__data_) != *"TIAS")
  {
    goto LABEL_725;
  }

LABEL_627:
  if (v183 < 1)
  {
    goto LABEL_725;
  }

  if ((v184 & 0x80000000) == 0)
  {
    v192 = &v638;
  }

  else
  {
    v192 = v638.__r_.__value_.__r.__words[0];
  }

  if ((v184 & 0x80000000) == 0)
  {
    v193 = v184;
  }

  else
  {
    v193 = v638.__r_.__value_.__l.__size_;
  }

  webrtc::InitLine(98, v192, v193, &v637);
  v195 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v196 = 22;
  }

  else
  {
    v196 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v195 = v637.__r_.__value_.__l.__size_;
  }

  if (v196 == v195)
  {
    std::string::__grow_by_and_replace(&v637, v196, 1uLL, v196, v196, 0, 1uLL, ":");
  }

  else
  {
    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v197 = &v637;
    }

    else
    {
      v197 = v637.__r_.__value_.__r.__words[0];
    }

    v198 = v197 + v195;
    if (v197 + v195 <= ":" && v198 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v198 = 58;
    v199 = v195 + 1;
    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      v637.__r_.__value_.__l.__size_ = v199;
    }

    else
    {
      *(&v637.__r_.__value_.__s + 23) = v199 & 0x7F;
    }

    v197->__r_.__value_.__s.__data_[v199] = 0;
  }

  webrtc::StringBuilder::operator<<(&v637, v183, v194);
  v203 = (v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v637 : v637.__r_.__value_.__r.__words[0];
  v204 = (v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v637.__r_.__value_.__r.__words[2]) : v637.__r_.__value_.__l.__size_;
  if (!v46)
  {
LABEL_725:
    if (*(a1 + 5) != 1)
    {
      goto LABEL_770;
    }

    goto LABEL_726;
  }

  if (!v203 && v204)
  {
    goto LABEL_1866;
  }

  v205 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if (v205 < 0)
  {
    v207 = v46->__r_.__value_.__l.__size_;
    v206 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v206 - v207 < v204)
    {
      goto LABEL_674;
    }
  }

  else
  {
    v206 = 22;
    v207 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v205 < v204)
    {
LABEL_674:
      std::string::__grow_by_and_replace(v46, v206, v204 - v206 + v207, v207, v207, 0, v204, v203);
      goto LABEL_709;
    }
  }

  if (v204)
  {
    v208 = v46;
    if ((v205 & 0x80000000) != 0)
    {
      v208 = v46->__r_.__value_.__r.__words[0];
    }

    if ((v204 & 0x8000000000000000) != 0)
    {
      goto LABEL_1866;
    }

    v209 = v208 + v207;
    if ((v208 + v207) <= v203 && &v209[v204] > v203)
    {
      goto LABEL_1866;
    }

    v210 = v204;
    memmove(v209, v203, v204);
    v211 = v207 + v210;
    if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
    {
      v46->__r_.__value_.__l.__size_ = v211;
    }

    else
    {
      *(&v46->__r_.__value_.__s + 23) = v211 & 0x7F;
    }

    v208->__r_.__value_.__s.__data_[v211] = 0;
  }

LABEL_709:
  v221 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v221 & 0x8000000000000000) == 0)
  {
    if (v221 - 21 >= 2)
    {
      v222 = v46;
      v223 = v46 + v221;
      if (v46 + v221 > "\r\n")
      {
        goto LABEL_716;
      }

      goto LABEL_715;
    }

    goto LABEL_722;
  }

  v221 = v46->__r_.__value_.__l.__size_;
  v224 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v224 - v221 < 2)
  {
LABEL_724:
    std::string::__grow_by_and_replace(v46, v224, v221 - v224 + 2, v221, v221, 0, 2uLL, "\r\n");
    goto LABEL_725;
  }

  v222 = v46->__r_.__value_.__r.__words[0];
  v223 = (v46->__r_.__value_.__r.__words[0] + v221);
  if (v223 > "\r\n")
  {
    goto LABEL_716;
  }

LABEL_715:
  if (v223 + 2 > "\r\n")
  {
    goto LABEL_1866;
  }

LABEL_716:
  *v223 = 2573;
  v225 = v221 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_717:
    *(&v46->__r_.__value_.__s + 23) = v225 & 0x7F;
    goto LABEL_769;
  }

LABEL_768:
  v46->__r_.__value_.__l.__size_ = v225;
LABEL_769:
  v222->__r_.__value_.__s.__data_[v225] = 0;
  if (*(a1 + 5) != 1)
  {
    goto LABEL_770;
  }

LABEL_726:
  webrtc::InitLine(97, "bundle-only", 0xBuLL, &v637);
  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v226 = &v637;
  }

  else
  {
    v226 = v637.__r_.__value_.__r.__words[0];
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v227 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v227 = v637.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
LABEL_770:
    if ((*(v45 + 31) & 0x80000000) == 0)
    {
      goto LABEL_771;
    }

LABEL_754:
    std::string::__init_copy_ctor_external(&v642, v45[1], v45[2]);
    goto LABEL_772;
  }

  if (!v226 && v227)
  {
    goto LABEL_1866;
  }

  v228 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v228 & 0x8000000000000000) == 0)
  {
    v229 = 22;
    v230 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v228 < v227)
    {
      goto LABEL_737;
    }

LABEL_742:
    if (v227)
    {
      v235 = v46;
      if ((v228 & 0x80000000) != 0)
      {
        v235 = v46->__r_.__value_.__r.__words[0];
      }

      if ((v227 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v236 = v235 + v230;
      if ((v235 + v230) <= v226 && &v236[v227] > v226)
      {
        goto LABEL_1866;
      }

      v237 = v227;
      memmove(v236, v226, v227);
      v238 = v230 + v237;
      if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
      {
        v46->__r_.__value_.__l.__size_ = v238;
        v235->__r_.__value_.__s.__data_[v238] = 0;
        v231 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if ((v231 & 0x8000000000000000) == 0)
        {
          goto LABEL_751;
        }

LABEL_738:
        v231 = v46->__r_.__value_.__l.__size_;
        v232 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v232 - v231 >= 2)
        {
          v233 = v46->__r_.__value_.__r.__words[0];
          v234 = (v46->__r_.__value_.__r.__words[0] + v231);
          if (v234 > "\r\n")
          {
            goto LABEL_757;
          }

LABEL_756:
          if (v234 + 2 > "\r\n")
          {
            goto LABEL_1866;
          }

          goto LABEL_757;
        }

LABEL_753:
        std::string::__grow_by_and_replace(v46, v232, v231 - v232 + 2, v231, v231, 0, 2uLL, "\r\n");
        if (*(v45 + 31) < 0)
        {
          goto LABEL_754;
        }

        goto LABEL_771;
      }

      *(&v46->__r_.__value_.__s + 23) = v238 & 0x7F;
      v235->__r_.__value_.__s.__data_[v238] = 0;
    }

    v231 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v231 & 0x8000000000000000) == 0)
    {
      goto LABEL_751;
    }

    goto LABEL_738;
  }

  v230 = v46->__r_.__value_.__l.__size_;
  v229 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v229 - v230 >= v227)
  {
    goto LABEL_742;
  }

LABEL_737:
  std::string::__grow_by_and_replace(v46, v229, v227 - v229 + v230, v230, v230, 0, v227, v226);
  v231 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v231 & 0x8000000000000000) != 0)
  {
    goto LABEL_738;
  }

LABEL_751:
  if (v231 - 21 < 2)
  {
    v232 = 22;
    goto LABEL_753;
  }

  v233 = v46;
  v234 = v46 + v231;
  if (v46 + v231 <= "\r\n")
  {
    goto LABEL_756;
  }

LABEL_757:
  *v234 = 2573;
  v239 = v231 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v239 & 0x7F;
    v233->__r_.__value_.__s.__data_[v239] = 0;
    goto LABEL_770;
  }

  v46->__r_.__value_.__l.__size_ = v239;
  v233->__r_.__value_.__s.__data_[v239] = 0;
  if (*(v45 + 31) < 0)
  {
    goto LABEL_754;
  }

LABEL_771:
  v241 = *(v45 + 1);
  v642.__r_.__value_.__r.__words[2] = v45[3];
  *&v642.__r_.__value_.__l.__data_ = v241;
LABEL_772:
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v242 = &v642;
  }

  else
  {
    v242 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v243 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v243 = v642.__r_.__value_.__l.__size_;
  }

  IsRtpProtocol = webrtc::IsRtpProtocol(v242, v243);
  v245 = IsRtpProtocol;
  if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v642.__r_.__value_.__l.__data_);
    if (!v245)
    {
      goto LABEL_1020;
    }
  }

  else if (!IsRtpProtocol)
  {
LABEL_1020:
    webrtc::BuildCandidate(*a4, a4[1], 0, v46);
    if (!v6)
    {
      goto LABEL_1532;
    }

    goto LABEL_1021;
  }

  *&__dst.__r_.__value_.__l.__data_ = 0x39uLL;
  __dst.__r_.__value_.__r.__words[2] = 0x100000000000000;
  *&v640.__r_.__value_.__r.__words[1] = 0uLL;
  __p.__r_.__value_.__r.__words[2] = 0x300000000000000;
  *&__p.__r_.__value_.__l.__data_ = 0x345049uLL;
  *(&v640.__r_.__value_.__s + 23) = 7;
  strcpy(&v640, "0.0.0.0");
  v246 = a4[1];
  if (*a4 != v246)
  {
    v247 = 0;
    v248 = 0;
    v249 = *a4 + 104;
    while (1)
    {
      if (*(v249 - 80) != 2)
      {
        goto LABEL_808;
      }

      v250 = (v249 - 72);
      v251 = *(v249 - 49);
      if (v251 < 0)
      {
        if (*(v249 - 64) != 3)
        {
          goto LABEL_808;
        }

        v250 = *v250;
LABEL_790:
        v252 = *v250;
        v253 = *(v250 + 2);
        v254 = v252 == webrtc::UDP_PROTOCOL_NAME && v253 == 112;
        if (!v254)
        {
          goto LABEL_808;
        }

        v255 = *(v249 + 104);
        if (v255 == 3)
        {
          v256 = 3;
        }

        else
        {
          v256 = 0;
        }

        if (v255 == 1)
        {
          v256 = 2;
        }

        v257 = v255 ? v256 : 1;
        v258 = *(v249 + 8);
        if (v257 <= v247 && v248 == v258)
        {
          goto LABEL_808;
        }

        if (v248 == 2 && v258 == 30)
        {
          v248 = 2;
          goto LABEL_808;
        }

        if (v258 == 2)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            __p.__r_.__value_.__l.__size_ = 3;
            v260 = __p.__r_.__value_.__r.__words[0];
            *(__p.__r_.__value_.__r.__words[0] + 2) = 52;
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = 3;
            v260 = &__p;
            __p.__r_.__value_.__s.__data_[2] = 52;
          }

LABEL_819:
          LOWORD(v260->__r_.__value_.__l.__data_) = 20553;
          v260->__r_.__value_.__s.__data_[3] = 0;
          goto LABEL_820;
        }

        if (v258 == 30)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            __p.__r_.__value_.__l.__size_ = 3;
            v260 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = 3;
            v260 = &__p;
          }

          v260->__r_.__value_.__s.__data_[2] = 54;
          goto LABEL_819;
        }

LABEL_820:
        std::to_string(&v642, *(v249 + 32));
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v642;
        webrtc::IPAddress::ToString(v249, &v642);
        if (SHIBYTE(v640.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v640.__r_.__value_.__l.__data_);
        }

        v640 = v642;
        v248 = v258;
        v261 = v249 + 328;
        v249 += 432;
        v247 = v257;
        if (v261 == v246)
        {
          break;
        }
      }

      else
      {
        if (v251 == 3)
        {
          goto LABEL_790;
        }

LABEL_808:
        v259 = v249 + 328;
        v249 += 432;
        if (v259 == v246)
        {
          break;
        }
      }
    }
  }

  memset(&v642, 0, sizeof(v642));
  webrtc::InitLine(97, "rtcp", 4uLL, &v642);
  v262 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v263 = 22;
  }

  else
  {
    v263 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v262 = v642.__r_.__value_.__l.__size_;
  }

  if (v263 == v262)
  {
    std::string::__grow_by_and_replace(&v642, v263, 1uLL, v263, v263, 0, 1uLL, ":");
    v46 = a6;
    v45 = v634;
  }

  else
  {
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v264 = &v642;
    }

    else
    {
      v264 = v642.__r_.__value_.__r.__words[0];
    }

    v265 = v264 + v262;
    v46 = a6;
    v45 = v634;
    if (v264 + v262 <= ":" && v265 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v265 = 58;
    v266 = v262 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v266;
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v266 & 0x7F;
    }

    v264->__r_.__value_.__s.__data_[v266] = 0;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v267 = &__dst;
  }

  else
  {
    v267 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v268 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v268 = __dst.__r_.__value_.__l.__size_;
  }

  if (!v267 && v268)
  {
    goto LABEL_1866;
  }

  v269 = (v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v270 = (v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v642.__r_.__value_.__r.__words[2]) : v642.__r_.__value_.__l.__size_;
  if (v269 - v270 >= v268)
  {
    v43 = a1;
    if (v268)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v271 = &v642;
      }

      else
      {
        v271 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v268 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v272 = v271 + v270;
      if ((v271 + v270) <= v267 && &v272[v268] > v267)
      {
        goto LABEL_1866;
      }

      v273 = v268;
      memmove(v272, v267, v268);
      v274 = v270 + v273;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v270 + v273;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v274 & 0x7F;
      }

      v271->__r_.__value_.__s.__data_[v274] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v269, v270 + v268 - v269, v270, v270, 0, v268, v267);
    v43 = a1;
  }

  v275 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v276 = 22;
  }

  else
  {
    v276 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v275 = v642.__r_.__value_.__l.__size_;
  }

  if (v276 == v275)
  {
    std::string::__grow_by_and_replace(&v642, v276, 1uLL, v276, v276, 0, 1uLL, " ");
  }

  else
  {
    v277 = &v642;
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v277 = v642.__r_.__value_.__r.__words[0];
    }

    v278 = v277 + v275;
    if (v277 + v275 <= " " && v278 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v278 = 32;
    v279 = v275 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v279;
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v279 & 0x7F;
    }

    v277->__r_.__value_.__s.__data_[v279] = 0;
  }

  v280 = (v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v281 = (v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v642.__r_.__value_.__r.__words[2]) : v642.__r_.__value_.__l.__size_;
  if (v280 - v281 >= 2)
  {
    v282 = &v642;
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v282 = v642.__r_.__value_.__r.__words[0];
    }

    v283 = (v282 + v281);
    if (v282 + v281 <= "IN" && v283 + 1 > "IN")
    {
      goto LABEL_1866;
    }

    *v283 = 20041;
    v284 = v281 + 2;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v281 + 2;
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v284 & 0x7F;
    }

    v282->__r_.__value_.__s.__data_[v284] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v280, v281 - v280 + 2, v281, v281, 0, 2uLL, "IN");
  }

  v285 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v286 = 22;
  }

  else
  {
    v286 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v285 = v642.__r_.__value_.__l.__size_;
  }

  if (v286 == v285)
  {
    std::string::__grow_by_and_replace(&v642, v286, 1uLL, v286, v286, 0, 1uLL, " ");
  }

  else
  {
    v287 = &v642;
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v287 = v642.__r_.__value_.__r.__words[0];
    }

    v288 = v287 + v285;
    if (v287 + v285 <= " " && v288 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v288 = 32;
    v289 = v285 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v289;
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v289 & 0x7F;
    }

    v287->__r_.__value_.__s.__data_[v289] = 0;
  }

  v290 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
  v291 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  if (!v290 && v291)
  {
    goto LABEL_1866;
  }

  v292 = (v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v293 = (v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v642.__r_.__value_.__r.__words[2]) : v642.__r_.__value_.__l.__size_;
  if (v292 - v293 >= v291)
  {
    if (v291)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v294 = &v642;
      }

      else
      {
        v294 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v291 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v295 = v294 + v293;
      if ((v294 + v293) <= v290 && &v295[v291] > v290)
      {
        goto LABEL_1866;
      }

      v296 = v291;
      memmove(v295, v290, v291);
      v297 = v293 + v296;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v293 + v296;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v297 & 0x7F;
      }

      v294->__r_.__value_.__s.__data_[v297] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v292, v293 + v291 - v292, v293, v293, 0, v291, v290);
  }

  v298 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v299 = 22;
  }

  else
  {
    v299 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v298 = v642.__r_.__value_.__l.__size_;
  }

  if (v299 == v298)
  {
    std::string::__grow_by_and_replace(&v642, v299, 1uLL, v299, v299, 0, 1uLL, " ");
  }

  else
  {
    v300 = &v642;
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v300 = v642.__r_.__value_.__r.__words[0];
    }

    v301 = v300 + v298;
    if (v300 + v298 <= " " && v301 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v301 = 32;
    v302 = v298 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v302;
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v302 & 0x7F;
    }

    v300->__r_.__value_.__s.__data_[v302] = 0;
  }

  v303 = (v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v640 : v640.__r_.__value_.__r.__words[0];
  v304 = (v640.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v640.__r_.__value_.__r.__words[2]) : v640.__r_.__value_.__l.__size_;
  if (!v303 && v304)
  {
    goto LABEL_1866;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v305 = 22;
  }

  else
  {
    v305 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v306 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v306 = v642.__r_.__value_.__l.__size_;
  }

  if (v305 - v306 >= v304)
  {
    if (v304)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v309 = &v642;
      }

      else
      {
        v309 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v304 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v310 = v309 + v306;
      if ((v309 + v306) <= v303 && &v310[v304] > v303)
      {
        goto LABEL_1866;
      }

      v311 = v304;
      memmove(v310, v303, v304);
      v312 = v306 + v311;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v306 + v311;
        v309->__r_.__value_.__s.__data_[v312] = 0;
        __n_add = v642;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_988;
        }

LABEL_972:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v640.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_973;
        }

        goto LABEL_989;
      }

      *(&v642.__r_.__value_.__s + 23) = v312 & 0x7F;
      v309->__r_.__value_.__s.__data_[v312] = 0;
    }

    __n_add = v642;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_988;
    }

    goto LABEL_972;
  }

  std::string::__grow_by_and_replace(&v642, v305, v306 + v304 - v305, v306, v306, 0, v304, v303);
  __n_add = v642;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_972;
  }

LABEL_988:
  if (SHIBYTE(v640.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_973:
    operator delete(v640.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_974;
    }

LABEL_990:
    v307 = SHIBYTE(__n_add.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__n_add.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      goto LABEL_975;
    }

    goto LABEL_991;
  }

LABEL_989:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_990;
  }

LABEL_974:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v307 = SHIBYTE(__n_add.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__n_add.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
LABEL_975:
    v307 = __n_add.__r_.__value_.__l.__size_;
    if (!__n_add.__r_.__value_.__l.__size_)
    {
      goto LABEL_1019;
    }

    p_n_add = __n_add.__r_.__value_.__r.__words[0];
    if (!v46)
    {
      goto LABEL_1019;
    }

    goto LABEL_993;
  }

LABEL_991:
  if (!v307)
  {
    goto LABEL_1020;
  }

  p_n_add = &__n_add;
  if (!v46)
  {
LABEL_1019:
    if ((SHIBYTE(__n_add.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1020;
    }

    goto LABEL_1013;
  }

LABEL_993:
  if (!p_n_add)
  {
    goto LABEL_1866;
  }

  v313 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v313 & 0x8000000000000000) == 0)
  {
    v314 = 22;
    v315 = v46;
    if (22 - v313 >= v307)
    {
      goto LABEL_1006;
    }

LABEL_998:
    std::string::__grow_by_and_replace(v46, v314, v313 + v307 - v314, v313, v313, 0, v307, p_n_add);
    v316 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v316 & 0x8000000000000000) != 0)
    {
      goto LABEL_1011;
    }

    goto LABEL_999;
  }

  v313 = v46->__r_.__value_.__l.__size_;
  v314 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v314 - v313 < v307)
  {
    goto LABEL_998;
  }

  v315 = v46->__r_.__value_.__r.__words[0];
LABEL_1006:
  if ((v307 & 0x8000000000000000) != 0)
  {
    goto LABEL_1866;
  }

  v320 = v315 + v313;
  if ((v315 + v313) <= p_n_add && &v320[v307] > p_n_add)
  {
    goto LABEL_1866;
  }

  memmove(v320, p_n_add, v307);
  v321 = v313 + v307;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v321 & 0x7F;
    v315->__r_.__value_.__s.__data_[v321] = 0;
    v316 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v316 & 0x8000000000000000) != 0)
    {
      goto LABEL_1011;
    }

LABEL_999:
    if (v316 - 21 < 2)
    {
      v317 = 22;
      goto LABEL_1012;
    }

    v318 = v46;
    v319 = v46 + v316;
    if (v46 + v316 <= "\r\n")
    {
      goto LABEL_1016;
    }

    goto LABEL_1017;
  }

  v46->__r_.__value_.__l.__size_ = v321;
  v315->__r_.__value_.__s.__data_[v321] = 0;
  v316 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v316 & 0x8000000000000000) == 0)
  {
    goto LABEL_999;
  }

LABEL_1011:
  v316 = v46->__r_.__value_.__l.__size_;
  v317 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v317 - v316 < 2)
  {
LABEL_1012:
    std::string::__grow_by_and_replace(v46, v317, v316 - v317 + 2, v316, v316, 0, 2uLL, "\r\n");
    if ((SHIBYTE(__n_add.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1020;
    }

    goto LABEL_1013;
  }

  v318 = v46->__r_.__value_.__r.__words[0];
  v319 = (v46->__r_.__value_.__r.__words[0] + v316);
  if (v319 <= "\r\n")
  {
LABEL_1016:
    if (v319 + 2 > "\r\n")
    {
      goto LABEL_1866;
    }
  }

LABEL_1017:
  *v319 = 2573;
  v322 = v316 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v322 & 0x7F;
    v318->__r_.__value_.__s.__data_[v322] = 0;
    goto LABEL_1019;
  }

  v46->__r_.__value_.__l.__size_ = v322;
  v318->__r_.__value_.__s.__data_[v322] = 0;
  if ((SHIBYTE(__n_add.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_1020;
  }

LABEL_1013:
  operator delete(__n_add.__r_.__value_.__l.__data_);
  webrtc::BuildCandidate(*a4, a4[1], 0, v46);
  if (!v6)
  {
    goto LABEL_1532;
  }

LABEL_1021:
  memset(&v642, 0, sizeof(v642));
  if ((*(v6 + 71) & 0x8000000000000000) != 0)
  {
    if (!*(v6 + 56))
    {
      goto LABEL_1097;
    }
  }

  else if (!*(v6 + 71))
  {
    goto LABEL_1097;
  }

  webrtc::InitLine(97, "ice-ufrag", 9uLL, &v642);
  v323 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v324 = 22;
  }

  else
  {
    v324 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v323 = v642.__r_.__value_.__l.__size_;
  }

  if (v324 == v323)
  {
    std::string::__grow_by_and_replace(&v642, v324, 1uLL, v324, v324, 0, 1uLL, ":");
    v325 = *(v6 + 71);
    if ((v325 & 0x8000000000000000) == 0)
    {
LABEL_1032:
      v326 = (v6 + 48);
      v327 = v325 == 0;
      goto LABEL_1042;
    }
  }

  else
  {
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v328 = &v642;
    }

    else
    {
      v328 = v642.__r_.__value_.__r.__words[0];
    }

    v329 = v328 + v323;
    if (v328 + v323 <= ":" && v329 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v329 = 58;
    v330 = v323 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v330;
      v328->__r_.__value_.__s.__data_[v330] = 0;
      v325 = *(v6 + 71);
      if ((v325 & 0x8000000000000000) == 0)
      {
        goto LABEL_1032;
      }
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v330 & 0x7F;
      v328->__r_.__value_.__s.__data_[v330] = 0;
      v325 = *(v6 + 71);
      if ((v325 & 0x8000000000000000) == 0)
      {
        goto LABEL_1032;
      }
    }
  }

  v326 = *(v6 + 48);
  v325 = *(v6 + 56);
  v327 = v325 == 0;
  if (!v326 && v325)
  {
    goto LABEL_1866;
  }

LABEL_1042:
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v331 = 22;
  }

  else
  {
    v331 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v332 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v332 = v642.__r_.__value_.__l.__size_;
  }

  if (v331 - v332 >= v325)
  {
    if (!v327)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v333 = &v642;
      }

      else
      {
        v333 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v325 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v334 = v333 + v332;
      if (v333 + v332 <= v326 && &v334[v325] > v326)
      {
        goto LABEL_1866;
      }

      v335 = v325;
      memmove(v334, v326, v325);
      v336 = v332 + v335;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v332 + v335;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v336 & 0x7F;
      }

      v333->__r_.__value_.__s.__data_[v336] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v331, v332 + v325 - v331, v332, v332, 0, v325, v326);
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v337 = &v642;
  }

  else
  {
    v337 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v338 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v338 = v642.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
LABEL_1097:
    v350 = *(v6 + 95);
    if ((v350 & 0x8000000000000000) == 0)
    {
      goto LABEL_1098;
    }

    goto LABEL_1091;
  }

  if (!v337 && v338)
  {
    goto LABEL_1866;
  }

  v339 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v339 & 0x8000000000000000) == 0)
  {
    v340 = 22;
    v341 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v339 < v338)
    {
      goto LABEL_1074;
    }

LABEL_1079:
    if (v338)
    {
      v346 = v46;
      if ((v339 & 0x80000000) != 0)
      {
        v346 = v46->__r_.__value_.__r.__words[0];
      }

      if ((v338 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v347 = v346 + v341;
      if ((v346 + v341) <= v337 && &v347[v338] > v337)
      {
        goto LABEL_1866;
      }

      v348 = v338;
      memmove(v347, v337, v338);
      v349 = v341 + v348;
      if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
      {
        v46->__r_.__value_.__l.__size_ = v349;
        v346->__r_.__value_.__s.__data_[v349] = 0;
        v342 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if ((v342 & 0x8000000000000000) == 0)
        {
          goto LABEL_1088;
        }

LABEL_1075:
        v342 = v46->__r_.__value_.__l.__size_;
        v343 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v343 - v342 >= 2)
        {
          v344 = v46->__r_.__value_.__r.__words[0];
          v345 = (v46->__r_.__value_.__r.__words[0] + v342);
          if (v345 > "\r\n")
          {
            goto LABEL_1095;
          }

          goto LABEL_1094;
        }

LABEL_1090:
        std::string::__grow_by_and_replace(v46, v343, v342 - v343 + 2, v342, v342, 0, 2uLL, "\r\n");
        v350 = *(v6 + 95);
        if ((v350 & 0x8000000000000000) == 0)
        {
          goto LABEL_1098;
        }

        goto LABEL_1091;
      }

      *(&v46->__r_.__value_.__s + 23) = v349 & 0x7F;
      v346->__r_.__value_.__s.__data_[v349] = 0;
    }

    v342 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v342 & 0x8000000000000000) == 0)
    {
      goto LABEL_1088;
    }

    goto LABEL_1075;
  }

  v341 = v46->__r_.__value_.__l.__size_;
  v340 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v340 - v341 >= v338)
  {
    goto LABEL_1079;
  }

LABEL_1074:
  std::string::__grow_by_and_replace(v46, v340, v338 - v340 + v341, v341, v341, 0, v338, v337);
  v342 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v342 & 0x8000000000000000) != 0)
  {
    goto LABEL_1075;
  }

LABEL_1088:
  if (v342 - 21 < 2)
  {
    v343 = 22;
    goto LABEL_1090;
  }

  v344 = v46;
  v345 = v46 + v342;
  if (v46 + v342 > "\r\n")
  {
    goto LABEL_1095;
  }

LABEL_1094:
  if (v345 + 2 > "\r\n")
  {
    goto LABEL_1866;
  }

LABEL_1095:
  *v345 = 2573;
  v351 = v342 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v351 & 0x7F;
    v344->__r_.__value_.__s.__data_[v351] = 0;
    goto LABEL_1097;
  }

  v46->__r_.__value_.__l.__size_ = v351;
  v344->__r_.__value_.__s.__data_[v351] = 0;
  v350 = *(v6 + 95);
  if ((v350 & 0x8000000000000000) == 0)
  {
LABEL_1098:
    if (!v350)
    {
      goto LABEL_1173;
    }

    goto LABEL_1099;
  }

LABEL_1091:
  if (!*(v6 + 80))
  {
    goto LABEL_1173;
  }

LABEL_1099:
  webrtc::InitLine(97, "ice-pwd", 7uLL, &v642);
  v352 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v353 = 22;
  }

  else
  {
    v353 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v352 = v642.__r_.__value_.__l.__size_;
  }

  if (v353 == v352)
  {
    std::string::__grow_by_and_replace(&v642, v353, 1uLL, v353, v353, 0, 1uLL, ":");
    v354 = *(v6 + 95);
    if ((v354 & 0x8000000000000000) == 0)
    {
LABEL_1106:
      v355 = (v6 + 72);
      v356 = v354 == 0;
      goto LABEL_1116;
    }
  }

  else
  {
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v357 = &v642;
    }

    else
    {
      v357 = v642.__r_.__value_.__r.__words[0];
    }

    v358 = v357 + v352;
    if (v357 + v352 <= ":" && v358 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v358 = 58;
    v359 = v352 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v359;
      v357->__r_.__value_.__s.__data_[v359] = 0;
      v354 = *(v6 + 95);
      if ((v354 & 0x8000000000000000) == 0)
      {
        goto LABEL_1106;
      }
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v359 & 0x7F;
      v357->__r_.__value_.__s.__data_[v359] = 0;
      v354 = *(v6 + 95);
      if ((v354 & 0x8000000000000000) == 0)
      {
        goto LABEL_1106;
      }
    }
  }

  v355 = *(v6 + 72);
  v354 = *(v6 + 80);
  v356 = v354 == 0;
  if (!v355 && v354)
  {
    goto LABEL_1866;
  }

LABEL_1116:
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v360 = 22;
  }

  else
  {
    v360 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v361 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v361 = v642.__r_.__value_.__l.__size_;
  }

  if (v360 - v361 >= v354)
  {
    if (!v356)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v362 = &v642;
      }

      else
      {
        v362 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v354 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v363 = v362 + v361;
      if (v362 + v361 <= v355 && &v363[v354] > v355)
      {
        goto LABEL_1866;
      }

      v364 = v354;
      memmove(v363, v355, v354);
      v365 = v361 + v364;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v361 + v364;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v365 & 0x7F;
      }

      v362->__r_.__value_.__s.__data_[v365] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v360, v361 + v354 - v360, v361, v361, 0, v354, v355);
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v366 = &v642;
  }

  else
  {
    v366 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v367 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v367 = v642.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
LABEL_1173:
    if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1174;
    }

    goto LABEL_1167;
  }

  if (!v366 && v367)
  {
    goto LABEL_1866;
  }

  v368 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v368 & 0x8000000000000000) == 0)
  {
    v369 = 22;
    v370 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v368 < v367)
    {
      goto LABEL_1150;
    }

LABEL_1155:
    if (v367)
    {
      v375 = v46;
      if ((v368 & 0x80000000) != 0)
      {
        v375 = v46->__r_.__value_.__r.__words[0];
      }

      if ((v367 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v376 = v375 + v370;
      if ((v375 + v370) <= v366 && &v376[v367] > v366)
      {
        goto LABEL_1866;
      }

      v377 = v367;
      memmove(v376, v366, v367);
      v378 = v370 + v377;
      if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
      {
        v46->__r_.__value_.__l.__size_ = v378;
        v375->__r_.__value_.__s.__data_[v378] = 0;
        v371 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if ((v371 & 0x8000000000000000) == 0)
        {
          goto LABEL_1164;
        }

LABEL_1151:
        v371 = v46->__r_.__value_.__l.__size_;
        v372 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v372 - v371 >= 2)
        {
          v373 = v46->__r_.__value_.__r.__words[0];
          v374 = (v46->__r_.__value_.__r.__words[0] + v371);
          if (v374 > "\r\n")
          {
            goto LABEL_1171;
          }

          goto LABEL_1170;
        }

LABEL_1166:
        std::string::__grow_by_and_replace(v46, v372, v371 - v372 + 2, v371, v371, 0, 2uLL, "\r\n");
        if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_1174;
        }

        goto LABEL_1167;
      }

      *(&v46->__r_.__value_.__s + 23) = v378 & 0x7F;
      v375->__r_.__value_.__s.__data_[v378] = 0;
    }

    v371 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v371 & 0x8000000000000000) == 0)
    {
      goto LABEL_1164;
    }

    goto LABEL_1151;
  }

  v370 = v46->__r_.__value_.__l.__size_;
  v369 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v369 - v370 >= v367)
  {
    goto LABEL_1155;
  }

LABEL_1150:
  std::string::__grow_by_and_replace(v46, v369, v367 - v369 + v370, v370, v370, 0, v367, v366);
  v371 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v371 & 0x8000000000000000) != 0)
  {
    goto LABEL_1151;
  }

LABEL_1164:
  if (v371 - 21 < 2)
  {
    v372 = 22;
    goto LABEL_1166;
  }

  v373 = v46;
  v374 = v46 + v371;
  if (v46 + v371 > "\r\n")
  {
    goto LABEL_1171;
  }

LABEL_1170:
  if (v374 + 2 > "\r\n")
  {
    goto LABEL_1866;
  }

LABEL_1171:
  *v374 = 2573;
  v379 = v371 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v379 & 0x7F;
    v373->__r_.__value_.__s.__data_[v379] = 0;
    goto LABEL_1173;
  }

  v46->__r_.__value_.__l.__size_ = v379;
  v373->__r_.__value_.__s.__data_[v379] = 0;
  if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_1174:
    if (*(v6 + 24) == *(v6 + 32))
    {
      goto LABEL_1304;
    }

    goto LABEL_1175;
  }

LABEL_1167:
  operator delete(v642.__r_.__value_.__l.__data_);
  if (*(v6 + 24) == *(v6 + 32))
  {
    goto LABEL_1304;
  }

LABEL_1175:
  memset(&v642, 0, sizeof(v642));
  webrtc::InitLine(97, "ice-options", 0xBuLL, &v642);
  v380 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v381 = 22;
  }

  else
  {
    v381 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v380 = v642.__r_.__value_.__l.__size_;
  }

  if (v381 == v380)
  {
    std::string::__grow_by_and_replace(&v642, v381, 1uLL, v381, v381, 0, 1uLL, ":");
    v382 = *(v6 + 24);
    if (*(v6 + 32) == v382)
    {
      goto LABEL_1866;
    }
  }

  else
  {
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v383 = &v642;
    }

    else
    {
      v383 = v642.__r_.__value_.__r.__words[0];
    }

    v384 = v383 + v380;
    if (v383 + v380 <= ":" && v384 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v384 = 58;
    v385 = v380 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v385;
      v383->__r_.__value_.__s.__data_[v385] = 0;
      v382 = *(v6 + 24);
      if (*(v6 + 32) == v382)
      {
        goto LABEL_1866;
      }
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v385 & 0x7F;
      v383->__r_.__value_.__s.__data_[v385] = 0;
      v382 = *(v6 + 24);
      if (*(v6 + 32) == v382)
      {
        goto LABEL_1866;
      }
    }
  }

  v386 = *(v382 + 23);
  if ((v386 & 0x8000000000000000) != 0)
  {
    v388 = *v382;
    v386 = v382[1];
    v387 = v386 == 0;
    if (!*v382 && v386)
    {
      goto LABEL_1866;
    }
  }

  else
  {
    v387 = v386 == 0;
    v388 = v382;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v389 = 22;
  }

  else
  {
    v389 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v390 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v390 = v642.__r_.__value_.__l.__size_;
  }

  if (v389 - v390 >= v386)
  {
    if (!v387)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v391 = &v642;
      }

      else
      {
        v391 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v386 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v392 = v391 + v390;
      if (v391 + v390 <= v388 && &v392[v386] > v388)
      {
        goto LABEL_1866;
      }

      v393 = v386;
      memmove(v392, v388, v386);
      v394 = v390 + v393;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v390 + v393;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v394 & 0x7F;
      }

      v391->__r_.__value_.__s.__data_[v394] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v389, v390 + v386 - v389, v390, v390, 0, v386, v388);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 32) - *(v6 + 24)) >> 3) >= 2)
  {
    v395 = 0;
    for (j = 1; j < 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 32) - *(v6 + 24)) >> 3); ++j)
    {
      v397 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v398 = 22;
      }

      else
      {
        v398 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v397 = v642.__r_.__value_.__l.__size_;
      }

      if (v398 == v397)
      {
        std::string::__grow_by_and_replace(&v642, v398, 1uLL, v398, v398, 0, 1uLL, " ");
        v399 = *(v6 + 24);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 32) - v399) >> 3) <= j)
        {
          goto LABEL_1866;
        }
      }

      else
      {
        if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v400 = &v642;
        }

        else
        {
          v400 = v642.__r_.__value_.__r.__words[0];
        }

        if (v400 + v397 <= " " && &v400->__r_.__value_.__l.__data_ + v397 + 1 > " ")
        {
          goto LABEL_1866;
        }

        v400->__r_.__value_.__s.__data_[v397] = 32;
        v402 = v397 + 1;
        if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
        {
          v642.__r_.__value_.__l.__size_ = v402;
        }

        else
        {
          *(&v642.__r_.__value_.__s + 23) = v402 & 0x7F;
        }

        v400->__r_.__value_.__s.__data_[v402] = 0;
        v399 = *(v6 + 24);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 32) - v399) >> 3) <= j)
        {
          goto LABEL_1866;
        }
      }

      v403 = v399 + v395;
      v404 = (v403 + 24);
      v405 = *(v403 + 47);
      if ((v405 & 0x8000000000000000) != 0)
      {
        v404 = *v404;
        v405 = *(v403 + 32);
        v406 = v405 == 0;
        if (v404)
        {
          v407 = 1;
        }

        else
        {
          v407 = v405 == 0;
        }

        if (!v407)
        {
          goto LABEL_1866;
        }
      }

      else
      {
        v406 = v405 == 0;
      }

      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v408 = 22;
      }

      else
      {
        v408 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v409 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v409 = v642.__r_.__value_.__l.__size_;
      }

      if (v408 - v409 < v405)
      {
        std::string::__grow_by_and_replace(&v642, v408, v409 + v405 - v408, v409, v409, 0, v405, v404);
      }

      else if (!v406)
      {
        if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v410 = &v642;
        }

        else
        {
          v410 = v642.__r_.__value_.__r.__words[0];
        }

        if ((v405 & 0x8000000000000000) != 0)
        {
          goto LABEL_1866;
        }

        v411 = v410 + v409;
        if (v410 + v409 <= v404 && &v411[v405] > v404)
        {
          goto LABEL_1866;
        }

        v412 = v405;
        memmove(v411, v404, v405);
        v413 = v409 + v412;
        if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
        {
          v642.__r_.__value_.__l.__size_ = v409 + v412;
        }

        else
        {
          *(&v642.__r_.__value_.__s + 23) = v413 & 0x7F;
        }

        v6 = a2;
        v410->__r_.__value_.__s.__data_[v413] = 0;
      }

      v395 += 24;
    }
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v414 = &v642;
  }

  else
  {
    v414 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v415 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v415 = v642.__r_.__value_.__l.__size_;
  }

  v46 = a6;
  v45 = v634;
  v43 = a1;
  if (a6)
  {
    if (!v414 && v415)
    {
      goto LABEL_1866;
    }

    v416 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
    if (v416 < 0)
    {
      v418 = a6->__r_.__value_.__l.__size_;
      v417 = (a6->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v417 - v418 < v415)
      {
LABEL_1280:
        std::string::__grow_by_and_replace(a6, v417, v415 - v417 + v418, v418, v418, 0, v415, v414);
        v419 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
        if ((v419 & 0x8000000000000000) != 0)
        {
          goto LABEL_1281;
        }

LABEL_1294:
        if (v419 - 21 >= 2)
        {
          v421 = a6;
          v422 = a6 + v419;
          if (a6 + v419 > "\r\n")
          {
LABEL_1301:
            *v422 = 2573;
            v428 = v419 + 2;
            if ((SHIBYTE(a6->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              *(&a6->__r_.__value_.__s + 23) = v428 & 0x7F;
              v421->__r_.__value_.__s.__data_[v428] = 0;
              goto LABEL_1303;
            }

            a6->__r_.__value_.__l.__size_ = v428;
            v421->__r_.__value_.__s.__data_[v428] = 0;
            if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_1297;
            }

LABEL_1304:
            memset(&v642, 0, sizeof(v642));
            v427 = *(v6 + 104);
            if (!v427)
            {
              goto LABEL_1530;
            }

            goto LABEL_1305;
          }

LABEL_1300:
          if (v422 + 2 > "\r\n")
          {
            goto LABEL_1866;
          }

          goto LABEL_1301;
        }

        v420 = 22;
LABEL_1296:
        std::string::__grow_by_and_replace(a6, v420, v419 - v420 + 2, v419, v419, 0, 2uLL, "\r\n");
        if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_1304;
        }

        goto LABEL_1297;
      }
    }

    else
    {
      v417 = 22;
      v418 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
      if (22 - v416 < v415)
      {
        goto LABEL_1280;
      }
    }

    if (v415)
    {
      v423 = a6;
      if ((v416 & 0x80000000) != 0)
      {
        v423 = a6->__r_.__value_.__r.__words[0];
      }

      if ((v415 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v424 = v423 + v418;
      if ((v423 + v418) <= v414 && &v424[v415] > v414)
      {
        goto LABEL_1866;
      }

      v425 = v415;
      memmove(v424, v414, v415);
      v426 = v418 + v425;
      if (SHIBYTE(a6->__r_.__value_.__r.__words[2]) < 0)
      {
        a6->__r_.__value_.__l.__size_ = v426;
        v423->__r_.__value_.__s.__data_[v426] = 0;
        v419 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
        if ((v419 & 0x8000000000000000) == 0)
        {
          goto LABEL_1294;
        }

        goto LABEL_1281;
      }

      *(&a6->__r_.__value_.__s + 23) = v426 & 0x7F;
      v423->__r_.__value_.__s.__data_[v426] = 0;
    }

    v419 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
    if ((v419 & 0x8000000000000000) == 0)
    {
      goto LABEL_1294;
    }

LABEL_1281:
    v419 = a6->__r_.__value_.__l.__size_;
    v420 = (a6->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v420 - v419 >= 2)
    {
      v421 = a6->__r_.__value_.__r.__words[0];
      v422 = (a6->__r_.__value_.__r.__words[0] + v419);
      if (v422 > "\r\n")
      {
        goto LABEL_1301;
      }

      goto LABEL_1300;
    }

    goto LABEL_1296;
  }

LABEL_1303:
  if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_1304;
  }

LABEL_1297:
  operator delete(v642.__r_.__value_.__l.__data_);
  memset(&v642, 0, sizeof(v642));
  v427 = *(v6 + 104);
  if (!v427)
  {
    goto LABEL_1530;
  }

LABEL_1305:
  webrtc::InitLine(97, "fingerprint", 0xBuLL, &v642);
  v429 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v430 = 22;
  }

  else
  {
    v430 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v429 = v642.__r_.__value_.__l.__size_;
  }

  if (v430 == v429)
  {
    std::string::__grow_by_and_replace(&v642, v430, 1uLL, v430, v430, 0, 1uLL, ":");
    v431 = *(v427 + 23);
    if ((v431 & 0x8000000000000000) == 0)
    {
LABEL_1312:
      v432 = v431 == 0;
      v433 = v427;
      goto LABEL_1322;
    }
  }

  else
  {
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v434 = &v642;
    }

    else
    {
      v434 = v642.__r_.__value_.__r.__words[0];
    }

    v435 = v434 + v429;
    if (v434 + v429 <= ":" && v435 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v435 = 58;
    v436 = v429 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v436;
      v434->__r_.__value_.__s.__data_[v436] = 0;
      v431 = *(v427 + 23);
      if ((v431 & 0x8000000000000000) == 0)
      {
        goto LABEL_1312;
      }
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v436 & 0x7F;
      v434->__r_.__value_.__s.__data_[v436] = 0;
      v431 = *(v427 + 23);
      if ((v431 & 0x8000000000000000) == 0)
      {
        goto LABEL_1312;
      }
    }
  }

  v433 = *v427;
  v431 = v427[1];
  v432 = v431 == 0;
  if (!*v427 && v431)
  {
    goto LABEL_1866;
  }

LABEL_1322:
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v437 = 22;
  }

  else
  {
    v437 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v438 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v438 = v642.__r_.__value_.__l.__size_;
  }

  if (v437 - v438 >= v431)
  {
    if (!v432)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v439 = &v642;
      }

      else
      {
        v439 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v431 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v440 = v439 + v438;
      if (v439 + v438 <= v433 && &v440[v431] > v433)
      {
        goto LABEL_1866;
      }

      v441 = v431;
      memmove(v440, v433, v431);
      v442 = v438 + v441;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v438 + v441;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v442 & 0x7F;
      }

      v439->__r_.__value_.__s.__data_[v442] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v437, v438 + v431 - v437, v438, v438, 0, v431, v433);
  }

  v443 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v444 = 22;
  }

  else
  {
    v444 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v443 = v642.__r_.__value_.__l.__size_;
  }

  if (v444 != v443)
  {
    v448 = &v642;
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v448 = v642.__r_.__value_.__r.__words[0];
    }

    v449 = v448 + v443;
    if (v448 + v443 <= " " && v449 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v449 = 32;
    v450 = v443 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v450;
      v448->__r_.__value_.__s.__data_[v450] = 0;
      v445 = v427[3];
      if (!v445)
      {
        goto LABEL_1360;
      }
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v450 & 0x7F;
      v448->__r_.__value_.__s.__data_[v450] = 0;
      v445 = v427[3];
      if (!v445)
      {
        goto LABEL_1360;
      }
    }

LABEL_1352:
    v446 = v427[5];
    v447 = &v427[4][*(v445 + 2)];
    if ((v446 & 0x8000000000000000) != 0)
    {
      goto LABEL_1866;
    }

    goto LABEL_1361;
  }

  std::string::__grow_by_and_replace(&v642, v444, 1uLL, v444, v444, 0, 1uLL, " ");
  v445 = v427[3];
  if (v445)
  {
    goto LABEL_1352;
  }

LABEL_1360:
  v447 = 0;
  v446 = v427[5];
  if ((v446 & 0x8000000000000000) != 0)
  {
    goto LABEL_1866;
  }

LABEL_1361:
  if (!v447 && v446)
  {
    goto LABEL_1866;
  }

  webrtc::hex_encode_with_delimiter(v447, v446, 58, &__dst);
  v451 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v453 = __dst.__r_.__value_.__l.__size_;
  v452 = __dst.__r_.__value_.__r.__words[0];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v454 = &__dst;
  }

  else
  {
    v454 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v455 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v455 = __dst.__r_.__value_.__l.__size_;
  }

  if (v455)
  {
    do
    {
      v454->__r_.__value_.__s.__data_[0] = __toupper(v454->__r_.__value_.__s.__data_[0]);
      v454 = (v454 + 1);
      --v455;
    }

    while (v455);
    v451 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v453 = __dst.__r_.__value_.__l.__size_;
    v452 = __dst.__r_.__value_.__r.__words[0];
  }

  v456 = (v451 & 0x80u) == 0 ? &__dst : v452;
  v457 = (v451 & 0x80u) == 0 ? v451 : v453;
  v458 = v456 || v457 == 0;
  v45 = v634;
  if (!v458)
  {
    goto LABEL_1866;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v459 = 22;
  }

  else
  {
    v459 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v460 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v460 = v642.__r_.__value_.__l.__size_;
  }

  if (v459 - v460 < v457)
  {
    std::string::__grow_by_and_replace(&v642, v459, v460 + v457 - v459, v460, v460, 0, v457, v456);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1402;
    }

    goto LABEL_1391;
  }

  if (!v457)
  {
LABEL_1401:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1402;
    }

LABEL_1391:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_1402;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v461 = &v642;
  }

  else
  {
    v461 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v457 & 0x8000000000000000) != 0)
  {
    goto LABEL_1866;
  }

  v462 = v461 + v460;
  if ((v461 + v460) <= v456 && &v462[v457] > v456)
  {
    goto LABEL_1866;
  }

  v463 = v457;
  memmove(v462, v456, v457);
  v464 = v460 + v463;
  if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v642.__r_.__value_.__s + 23) = v464 & 0x7F;
    v461->__r_.__value_.__s.__data_[v464] = 0;
    goto LABEL_1401;
  }

  v642.__r_.__value_.__l.__size_ = v460 + v463;
  v461->__r_.__value_.__s.__data_[v464] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_1391;
  }

LABEL_1402:
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v465 = &v642;
  }

  else
  {
    v465 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v466 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v466 = v642.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
LABEL_1435:
    v478 = *(v6 + 100);
    if (!v478)
    {
      goto LABEL_1530;
    }

    goto LABEL_1436;
  }

  if (!v465 && v466)
  {
    goto LABEL_1866;
  }

  v467 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v467 & 0x8000000000000000) == 0)
  {
    v468 = 22;
    v469 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v467 < v466)
    {
      goto LABEL_1413;
    }

LABEL_1418:
    if (v466)
    {
      v474 = v46;
      if ((v467 & 0x80000000) != 0)
      {
        v474 = v46->__r_.__value_.__r.__words[0];
      }

      if ((v466 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v475 = v474 + v469;
      if ((v474 + v469) <= v465 && &v475[v466] > v465)
      {
        goto LABEL_1866;
      }

      v476 = v466;
      memmove(v475, v465, v466);
      v477 = v469 + v476;
      if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
      {
        v46->__r_.__value_.__l.__size_ = v477;
        v474->__r_.__value_.__s.__data_[v477] = 0;
        v470 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if ((v470 & 0x8000000000000000) == 0)
        {
          goto LABEL_1427;
        }

LABEL_1414:
        v470 = v46->__r_.__value_.__l.__size_;
        v471 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v471 - v470 >= 2)
        {
          v472 = v46->__r_.__value_.__r.__words[0];
          v473 = (v46->__r_.__value_.__r.__words[0] + v470);
          if (v473 > "\r\n")
          {
            goto LABEL_1433;
          }

LABEL_1432:
          if (v473 + 2 > "\r\n")
          {
            goto LABEL_1866;
          }

          goto LABEL_1433;
        }

LABEL_1429:
        std::string::__grow_by_and_replace(v46, v471, v470 - v471 + 2, v470, v470, 0, 2uLL, "\r\n");
        v478 = *(v6 + 100);
        if (!v478)
        {
          goto LABEL_1530;
        }

        goto LABEL_1436;
      }

      *(&v46->__r_.__value_.__s + 23) = v477 & 0x7F;
      v474->__r_.__value_.__s.__data_[v477] = 0;
    }

    v470 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v470 & 0x8000000000000000) == 0)
    {
      goto LABEL_1427;
    }

    goto LABEL_1414;
  }

  v469 = v46->__r_.__value_.__l.__size_;
  v468 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v468 - v469 >= v466)
  {
    goto LABEL_1418;
  }

LABEL_1413:
  std::string::__grow_by_and_replace(v46, v468, v466 - v468 + v469, v469, v469, 0, v466, v465);
  v470 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v470 & 0x8000000000000000) != 0)
  {
    goto LABEL_1414;
  }

LABEL_1427:
  if (v470 - 21 < 2)
  {
    v471 = 22;
    goto LABEL_1429;
  }

  v472 = v46;
  v473 = v46 + v470;
  if (v46 + v470 <= "\r\n")
  {
    goto LABEL_1432;
  }

LABEL_1433:
  *v473 = 2573;
  v479 = v470 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v479 & 0x7F;
    v472->__r_.__value_.__s.__data_[v479] = 0;
    goto LABEL_1435;
  }

  v46->__r_.__value_.__l.__size_ = v479;
  v472->__r_.__value_.__s.__data_[v479] = 0;
  v478 = *(v6 + 100);
  if (!v478)
  {
    goto LABEL_1530;
  }

LABEL_1436:
  LODWORD(v640.__r_.__value_.__l.__data_) = v478;
  memset(&__dst, 0, sizeof(__dst));
  webrtc::ConnectionRoleToString(&v640, &__dst);
  webrtc::InitLine(97, "setup", 5uLL, &v642);
  v480 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v481 = 22;
  }

  else
  {
    v481 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v480 = v642.__r_.__value_.__l.__size_;
  }

  if (v481 == v480)
  {
    std::string::__grow_by_and_replace(&v642, v481, 1uLL, v481, v481, 0, 1uLL, ":");
  }

  else
  {
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v482 = &v642;
    }

    else
    {
      v482 = v642.__r_.__value_.__r.__words[0];
    }

    v483 = v482 + v480;
    if (v482 + v480 <= ":" && v483 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v483 = 58;
    v484 = v480 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v484;
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v484 & 0x7F;
    }

    v482->__r_.__value_.__s.__data_[v484] = 0;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v485 = &__dst;
  }

  else
  {
    v485 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v486 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v486 = __dst.__r_.__value_.__l.__size_;
  }

  if (!v485 && v486)
  {
    goto LABEL_1866;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v487 = 22;
  }

  else
  {
    v487 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v488 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v488 = v642.__r_.__value_.__l.__size_;
  }

  if (v487 - v488 >= v486)
  {
    if (v486)
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v489 = &v642;
      }

      else
      {
        v489 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v486 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v490 = v489 + v488;
      if ((v489 + v488) <= v485 && &v490[v486] > v485)
      {
        goto LABEL_1866;
      }

      v491 = v486;
      memmove(v490, v485, v486);
      v492 = v488 + v491;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v488 + v491;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v492 & 0x7F;
      }

      v489->__r_.__value_.__s.__data_[v492] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v642, v487, v488 + v486 - v487, v488, v488, 0, v486, v485);
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v493 = &v642;
  }

  else
  {
    v493 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v494 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v494 = v642.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
LABEL_1528:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1530;
    }

    goto LABEL_1529;
  }

  if (!v493 && v494)
  {
    goto LABEL_1866;
  }

  v495 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if (v495 < 0)
  {
    v497 = v46->__r_.__value_.__l.__size_;
    v496 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v496 - v497 < v494)
    {
      goto LABEL_1502;
    }
  }

  else
  {
    v496 = 22;
    v497 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v495 < v494)
    {
LABEL_1502:
      std::string::__grow_by_and_replace(v46, v496, v494 - v496 + v497, v497, v497, 0, v494, v493);
      goto LABEL_1516;
    }
  }

  if (v494)
  {
    v498 = v46;
    if ((v495 & 0x80000000) != 0)
    {
      v498 = v46->__r_.__value_.__r.__words[0];
    }

    if ((v494 & 0x8000000000000000) != 0)
    {
      goto LABEL_1866;
    }

    v499 = v498 + v497;
    if ((v498 + v497) <= v493 && &v499[v494] > v493)
    {
      goto LABEL_1866;
    }

    v500 = v494;
    memmove(v499, v493, v494);
    v501 = v497 + v500;
    if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
    {
      v46->__r_.__value_.__l.__size_ = v501;
    }

    else
    {
      *(&v46->__r_.__value_.__s + 23) = v501 & 0x7F;
    }

    v498->__r_.__value_.__s.__data_[v501] = 0;
  }

LABEL_1516:
  v502 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v502 & 0x8000000000000000) != 0)
  {
    v502 = v46->__r_.__value_.__l.__size_;
    v503 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v503 - v502 < 2)
    {
LABEL_1520:
      std::string::__grow_by_and_replace(v46, v503, v502 - v503 + 2, v502, v502, 0, 2uLL, "\r\n");
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_1530;
      }

      goto LABEL_1529;
    }

    v504 = v46->__r_.__value_.__r.__words[0];
    v505 = (v46->__r_.__value_.__r.__words[0] + v502);
    if (v505 > "\r\n")
    {
      goto LABEL_1526;
    }
  }

  else
  {
    if (v502 - 21 < 2)
    {
      v503 = 22;
      goto LABEL_1520;
    }

    v504 = v46;
    v505 = v46 + v502;
    if (v46 + v502 > "\r\n")
    {
      goto LABEL_1526;
    }
  }

  if (v505 + 2 > "\r\n")
  {
    goto LABEL_1866;
  }

LABEL_1526:
  *v505 = 2573;
  v506 = v502 + 2;
  if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v46->__r_.__value_.__s + 23) = v506 & 0x7F;
    v504->__r_.__value_.__s.__data_[v506] = 0;
    goto LABEL_1528;
  }

  v46->__r_.__value_.__l.__size_ = v506;
  v504->__r_.__value_.__s.__data_[v506] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_1529:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_1530:
  if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v642.__r_.__value_.__l.__data_);
  }

LABEL_1532:
  webrtc::InitLine(97, "mid", 3uLL, &v637);
  v507 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v508 = 22;
  }

  else
  {
    v508 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v507 = v637.__r_.__value_.__l.__size_;
  }

  if (v508 == v507)
  {
    std::string::__grow_by_and_replace(&v637, v508, 1uLL, v508, v508, 0, 1uLL, ":");
    v509 = *(v43 + 31);
    if ((v509 & 0x8000000000000000) == 0)
    {
LABEL_1539:
      v510 = (v43 + 8);
      v511 = v509 == 0;
      goto LABEL_1549;
    }
  }

  else
  {
    if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v512 = &v637;
    }

    else
    {
      v512 = v637.__r_.__value_.__r.__words[0];
    }

    v513 = v512 + v507;
    if (v512 + v507 <= ":" && v513 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v513 = 58;
    v514 = v507 + 1;
    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      v637.__r_.__value_.__l.__size_ = v514;
      v512->__r_.__value_.__s.__data_[v514] = 0;
      v509 = *(v43 + 31);
      if ((v509 & 0x8000000000000000) == 0)
      {
        goto LABEL_1539;
      }
    }

    else
    {
      *(&v637.__r_.__value_.__s + 23) = v514 & 0x7F;
      v512->__r_.__value_.__s.__data_[v514] = 0;
      v509 = *(v43 + 31);
      if ((v509 & 0x8000000000000000) == 0)
      {
        goto LABEL_1539;
      }
    }
  }

  v510 = *(v43 + 8);
  v509 = *(v43 + 16);
  v511 = v509 == 0;
  if (!v510 && v509)
  {
    goto LABEL_1866;
  }

LABEL_1549:
  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v515 = 22;
  }

  else
  {
    v515 = (v637.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v516 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v516 = v637.__r_.__value_.__l.__size_;
  }

  if (v515 - v516 >= v509)
  {
    if (!v511)
    {
      if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v517 = &v637;
      }

      else
      {
        v517 = v637.__r_.__value_.__r.__words[0];
      }

      if ((v509 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v518 = v517 + v516;
      if (v517 + v516 <= v510 && &v518[v509] > v510)
      {
        goto LABEL_1866;
      }

      v519 = v509;
      memmove(v518, v510, v509);
      v520 = v516 + v519;
      if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
      {
        v637.__r_.__value_.__l.__size_ = v516 + v519;
      }

      else
      {
        *(&v637.__r_.__value_.__s + 23) = v520 & 0x7F;
      }

      v517->__r_.__value_.__s.__data_[v520] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v637, v515, v516 + v509 - v515, v516, v516, 0, v509, v510);
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v521 = &v637;
  }

  else
  {
    v521 = v637.__r_.__value_.__r.__words[0];
  }

  if ((v637.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v522 = HIBYTE(v637.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v522 = v637.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
    goto LABEL_1603;
  }

  if (!v521 && v522)
  {
    goto LABEL_1866;
  }

  v523 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v523 & 0x8000000000000000) == 0)
  {
    v524 = 22;
    v525 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v523 < v522)
    {
      goto LABEL_1581;
    }

LABEL_1586:
    if (v522)
    {
      v530 = v46;
      if ((v523 & 0x80000000) != 0)
      {
        v530 = v46->__r_.__value_.__r.__words[0];
      }

      if ((v522 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v531 = v530 + v525;
      if ((v530 + v525) <= v521 && &v531[v522] > v521)
      {
        goto LABEL_1866;
      }

      v532 = v522;
      memmove(v531, v521, v522);
      v533 = v525 + v532;
      if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
      {
        v46->__r_.__value_.__l.__size_ = v533;
        v530->__r_.__value_.__s.__data_[v533] = 0;
        v526 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if ((v526 & 0x8000000000000000) == 0)
        {
          goto LABEL_1595;
        }

        goto LABEL_1582;
      }

      *(&v46->__r_.__value_.__s + 23) = v533 & 0x7F;
      v530->__r_.__value_.__s.__data_[v533] = 0;
    }

    v526 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v526 & 0x8000000000000000) == 0)
    {
      goto LABEL_1595;
    }

LABEL_1582:
    v526 = v46->__r_.__value_.__l.__size_;
    v527 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v527 - v526 >= 2)
    {
      v528 = v46->__r_.__value_.__r.__words[0];
      v529 = (v46->__r_.__value_.__r.__words[0] + v526);
      if (v529 > "\r\n")
      {
        goto LABEL_1601;
      }

LABEL_1600:
      if (v529 + 2 <= "\r\n")
      {
        goto LABEL_1601;
      }

LABEL_1866:
      __break(1u);
LABEL_1867:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_1597;
  }

  v525 = v46->__r_.__value_.__l.__size_;
  v524 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v524 - v525 >= v522)
  {
    goto LABEL_1586;
  }

LABEL_1581:
  std::string::__grow_by_and_replace(v46, v524, v522 - v524 + v525, v525, v525, 0, v522, v521);
  v526 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v526 & 0x8000000000000000) != 0)
  {
    goto LABEL_1582;
  }

LABEL_1595:
  if (v526 - 21 >= 2)
  {
    v528 = v46;
    v529 = v46 + v526;
    if (v46 + v526 > "\r\n")
    {
LABEL_1601:
      *v529 = 2573;
      v534 = v526 + 2;
      if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
      {
        v46->__r_.__value_.__l.__size_ = v534;
        v528->__r_.__value_.__s.__data_[v534] = 0;
        if ((*(v45 + 31) & 0x80000000) == 0)
        {
          goto LABEL_1604;
        }

        goto LABEL_1598;
      }

      *(&v46->__r_.__value_.__s + 23) = v534 & 0x7F;
      v528->__r_.__value_.__s.__data_[v534] = 0;
LABEL_1603:
      if ((*(v45 + 31) & 0x80000000) == 0)
      {
        goto LABEL_1604;
      }

LABEL_1598:
      std::string::__init_copy_ctor_external(&v642, v45[1], v45[2]);
      goto LABEL_1605;
    }

    goto LABEL_1600;
  }

  v527 = 22;
LABEL_1597:
  std::string::__grow_by_and_replace(v46, v527, v526 - v527 + 2, v526, v526, 0, 2uLL, "\r\n");
  if (*(v45 + 31) < 0)
  {
    goto LABEL_1598;
  }

LABEL_1604:
  v535 = *(v45 + 1);
  v642.__r_.__value_.__r.__words[2] = v45[3];
  *&v642.__r_.__value_.__l.__data_ = v535;
LABEL_1605:
  v536 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  v537 = &v642;
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v536 = v642.__r_.__value_.__l.__size_;
    v537 = v642.__r_.__value_.__r.__words[0];
  }

  if (v536 == 13)
  {
    if (v537->__r_.__value_.__r.__words[0] == *"UDP/DTLS/SCTP" && *(v537->__r_.__value_.__r.__words + 5) == *"TLS/SCTP")
    {
      v541 = 1;
      if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_1616;
      }
    }

    else
    {
      v548 = v537->__r_.__value_.__r.__words[0];
      v549 = *(v537->__r_.__value_.__r.__words + 5);
      v541 = v548 == *"TCP/DTLS/SCTP" && v549 == *"TLS/SCTP";
      if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_1616:
        if (v541)
        {
          goto LABEL_1617;
        }

LABEL_1640:
        if (*(v45 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v642, v45[1], v45[2]);
        }

        else
        {
          v551 = *(v45 + 1);
          v642.__r_.__value_.__r.__words[2] = v45[3];
          *&v642.__r_.__value_.__l.__data_ = v551;
        }

        if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v552 = &v642;
        }

        else
        {
          v552 = v642.__r_.__value_.__r.__words[0];
        }

        if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v553 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v553 = v642.__r_.__value_.__l.__size_;
        }

        v554 = webrtc::IsRtpProtocol(v552, v553);
        v555 = v554;
        if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v642.__r_.__value_.__l.__data_);
          if (!v555)
          {
            goto LABEL_1854;
          }
        }

        else if (!v554)
        {
          goto LABEL_1854;
        }

        webrtc::BuildRtpContentAttributes(v45, v629, a5, v46);
        if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_1654;
        }

        goto LABEL_1855;
      }
    }
  }

  else if (v536 == 9)
  {
    v538 = v537->__r_.__value_.__r.__words[0];
    v539 = v537->__r_.__value_.__s.__data_[8];
    v541 = v538 == *"DTLS/SCTP" && v539 == webrtc::kMediaProtocolDtlsSctp[8];
    if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1616;
    }
  }

  else
  {
    v541 = 0;
    if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1616;
    }
  }

  operator delete(v642.__r_.__value_.__l.__data_);
  if (!v541)
  {
    goto LABEL_1640;
  }

LABEL_1617:
  v542 = (*(*v45 + 64))(v45);
  if (!v542)
  {
    goto LABEL_1854;
  }

  v543 = v542;
  memset(&v642, 0, sizeof(v642));
  if (*(v542 + 304) != 1)
  {
    webrtc::InitLine(97, "sctp-port", 9uLL, &v642);
    v557 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v558 = 22;
    }

    else
    {
      v558 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v557 = v642.__r_.__value_.__l.__size_;
    }

    if (v558 == v557)
    {
      std::string::__grow_by_and_replace(&v642, v558, 1uLL, v558, v558, 0, 1uLL, ":");
    }

    else
    {
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v562 = &v642;
      }

      else
      {
        v562 = v642.__r_.__value_.__r.__words[0];
      }

      v563 = v562 + v557;
      if (v562 + v557 <= ":" && v563 + 1 > ":")
      {
        goto LABEL_1866;
      }

      *v563 = 58;
      v564 = v557 + 1;
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        v642.__r_.__value_.__l.__size_ = v564;
      }

      else
      {
        *(&v642.__r_.__value_.__s + 23) = v564 & 0x7F;
      }

      v562->__r_.__value_.__s.__data_[v564] = 0;
    }

    webrtc::StringBuilder::operator<<(&v642, *(v543 + 308), v556);
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v574 = &v642;
    }

    else
    {
      v574 = v642.__r_.__value_.__r.__words[0];
    }

    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v575 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v575 = v642.__r_.__value_.__l.__size_;
    }

    if (!v46)
    {
LABEL_1787:
      if (*(v543 + 312) == 0x10000)
      {
        goto LABEL_1853;
      }

LABEL_1797:
      webrtc::InitLine(97, "max-message-size", 0x10uLL, &v642);
      v609 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v610 = 22;
      }

      else
      {
        v610 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v609 = v642.__r_.__value_.__l.__size_;
      }

      if (v610 == v609)
      {
        std::string::__grow_by_and_replace(&v642, v610, 1uLL, v610, v610, 0, 1uLL, ":");
      }

      else
      {
        if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v611 = &v642;
        }

        else
        {
          v611 = v642.__r_.__value_.__r.__words[0];
        }

        v612 = v611 + v609;
        if (v611 + v609 <= ":" && v612 + 1 > ":")
        {
          goto LABEL_1866;
        }

        *v612 = 58;
        v613 = v609 + 1;
        if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
        {
          v642.__r_.__value_.__l.__size_ = v613;
        }

        else
        {
          *(&v642.__r_.__value_.__s + 23) = v613 & 0x7F;
        }

        v611->__r_.__value_.__s.__data_[v613] = 0;
      }

      webrtc::StringBuilder::operator<<(&v642, *(v543 + 312), v608);
      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v614 = &v642;
      }

      else
      {
        v614 = v642.__r_.__value_.__r.__words[0];
      }

      if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v615 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v615 = v642.__r_.__value_.__l.__size_;
      }

      if (v46)
      {
        if (!v614 && v615)
        {
          goto LABEL_1866;
        }

        v616 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if (v616 < 0)
        {
          v618 = v46->__r_.__value_.__l.__size_;
          v617 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        else
        {
          v617 = 22;
          v618 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        }

        if (v617 - v618 >= v615)
        {
          if (v615)
          {
            v619 = v46;
            if ((v616 & 0x80000000) != 0)
            {
              v619 = v46->__r_.__value_.__r.__words[0];
            }

            if ((v615 & 0x8000000000000000) != 0)
            {
              goto LABEL_1866;
            }

            v620 = v619 + v618;
            if ((v619 + v618) <= v614 && &v620[v615] > v614)
            {
              goto LABEL_1866;
            }

            v621 = v615;
            memmove(v620, v614, v615);
            v622 = v618 + v621;
            if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
            {
              v46->__r_.__value_.__l.__size_ = v622;
            }

            else
            {
              *(&v46->__r_.__value_.__s + 23) = v622 & 0x7F;
            }

            v619->__r_.__value_.__s.__data_[v622] = 0;
          }
        }

        else
        {
          std::string::__grow_by_and_replace(v46, v617, v615 - v617 + v618, v618, v618, 0, v615, v614);
        }

        v623 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
        if ((v623 & 0x8000000000000000) != 0)
        {
          v623 = v46->__r_.__value_.__l.__size_;
          v625 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v625 - v623 < 2)
          {
            goto LABEL_1852;
          }

          v624 = v46->__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v623 - 21 < 2)
          {
LABEL_1851:
            v625 = 22;
LABEL_1852:
            std::string::__grow_by_and_replace(v46, v625, v623 - v625 + 2, v623, v623, 0, 2uLL, "\r\n");
            goto LABEL_1853;
          }

          v624 = v46;
        }

        v628 = (v624 + v623);
        if (v624 + v623 <= "\r\n" && v628 + 1 > "\r\n")
        {
          goto LABEL_1866;
        }

        *v628 = 2573;
        v627 = v623 + 2;
        if ((SHIBYTE(v46->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_1845;
        }

LABEL_1863:
        v46->__r_.__value_.__l.__size_ = v627;
        v624->__r_.__value_.__s.__data_[v627] = 0;
        if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_1864;
        }

        goto LABEL_1854;
      }

LABEL_1853:
      if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_1864;
      }

      goto LABEL_1854;
    }

    if (!v574 && v575)
    {
      goto LABEL_1866;
    }

    v576 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (v576 < 0)
    {
      v578 = v46->__r_.__value_.__l.__size_;
      v577 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v577 - v578 < v575)
      {
        goto LABEL_1712;
      }
    }

    else
    {
      v577 = 22;
      v578 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
      if (22 - v576 < v575)
      {
LABEL_1712:
        std::string::__grow_by_and_replace(v46, v577, v575 - v577 + v578, v578, v578, 0, v575, v574);
        goto LABEL_1782;
      }
    }

    if (v575)
    {
      if ((v576 & 0x80000000) != 0)
      {
        v46 = a6->__r_.__value_.__r.__words[0];
      }

      if ((v575 & 0x8000000000000000) != 0)
      {
        goto LABEL_1866;
      }

      v579 = v46 + v578;
      if ((v46 + v578) <= v574 && &v579[v575] > v574)
      {
        goto LABEL_1866;
      }

      v580 = v575;
      memmove(v579, v574, v575);
      v581 = v578 + v580;
      if (SHIBYTE(a6->__r_.__value_.__r.__words[2]) < 0)
      {
        a6->__r_.__value_.__l.__size_ = v581;
      }

      else
      {
        *(&a6->__r_.__value_.__s + 23) = v581 & 0x7F;
      }

      v46->__r_.__value_.__s.__data_[v581] = 0;
      v46 = a6;
    }

LABEL_1782:
    v603 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if ((v603 & 0x8000000000000000) != 0)
    {
      v603 = v46->__r_.__value_.__l.__size_;
      v604 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v604 - v603 < 2)
      {
        goto LABEL_1786;
      }

      v605 = v46->__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v603 - 21 < 2)
      {
        v604 = 22;
LABEL_1786:
        std::string::__grow_by_and_replace(v46, v604, v603 - v604 + 2, v603, v603, 0, 2uLL, "\r\n");
        goto LABEL_1787;
      }

      v605 = v46;
    }

    v606 = (v605 + v603);
    if (v605 + v603 <= "\r\n" && v606 + 1 > "\r\n")
    {
      goto LABEL_1866;
    }

    *v606 = 2573;
    v607 = v603 + 2;
    if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
    {
      v46->__r_.__value_.__l.__size_ = v607;
    }

    else
    {
      *(&v46->__r_.__value_.__s + 23) = v607 & 0x7F;
    }

    v605->__r_.__value_.__s.__data_[v607] = 0;
    if (*(v543 + 312) == 0x10000)
    {
      goto LABEL_1853;
    }

    goto LABEL_1797;
  }

  webrtc::InitLine(97, "sctpmap", 7uLL, &v642);
  v545 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v546 = 22;
  }

  else
  {
    v546 = (v642.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v545 = v642.__r_.__value_.__l.__size_;
  }

  if (v546 == v545)
  {
    std::string::__grow_by_and_replace(&v642, v546, 1uLL, v546, v546, 0, 1uLL, ":");
  }

  else
  {
    if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v559 = &v642;
    }

    else
    {
      v559 = v642.__r_.__value_.__r.__words[0];
    }

    v560 = v559 + v545;
    if (v559 + v545 <= ":" && v560 + 1 > ":")
    {
      goto LABEL_1866;
    }

    *v560 = 58;
    v561 = v545 + 1;
    if (SHIBYTE(v642.__r_.__value_.__r.__words[2]) < 0)
    {
      v642.__r_.__value_.__l.__size_ = v561;
    }

    else
    {
      *(&v642.__r_.__value_.__s + 23) = v561 & 0x7F;
    }

    v559->__r_.__value_.__s.__data_[v561] = 0;
  }

  v565 = webrtc::StringBuilder::operator<<(&v642, *(v543 + 308), v544);
  v567 = v565;
  v568 = HIBYTE(v565->__r_.__value_.__r.__words[2]);
  v569 = v568;
  if ((v568 & 0x80u) == 0)
  {
    v570 = 22;
  }

  else
  {
    v570 = (v565->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v568 & 0x80u) != 0)
  {
    v568 = v565->__r_.__value_.__l.__size_;
  }

  if (v570 == v568)
  {
    std::string::__grow_by_and_replace(v565, v570, 1uLL, v570, v570, 0, 1uLL, " ");
  }

  else
  {
    if (v569 >= 0)
    {
      v571 = v565;
    }

    else
    {
      v571 = v565->__r_.__value_.__r.__words[0];
    }

    v572 = v571 + v568;
    if (v571 + v568 <= " " && v572 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v572 = 32;
    v573 = v568 + 1;
    if (SHIBYTE(v565->__r_.__value_.__r.__words[2]) < 0)
    {
      v565->__r_.__value_.__l.__size_ = v573;
    }

    else
    {
      *(&v565->__r_.__value_.__s + 23) = v573 & 0x7F;
    }

    v571->__r_.__value_.__s.__data_[v573] = 0;
  }

  v582 = SHIBYTE(v567->__r_.__value_.__r.__words[2]);
  if (v582 >= 0)
  {
    v583 = 22;
  }

  else
  {
    v583 = (v567->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v582 >= 0)
  {
    v584 = HIBYTE(v567->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v584 = v567->__r_.__value_.__l.__size_;
  }

  if (v583 - v584 >= 0x12)
  {
    if (v582 >= 0)
    {
      v585 = v567;
    }

    else
    {
      v585 = v567->__r_.__value_.__r.__words[0];
    }

    v586 = v585 + v584;
    if (v585 + v584 <= "webrtc-datachannel" && v586 + 18 > "webrtc-datachannel")
    {
      goto LABEL_1866;
    }

    *(v586 + 16) = 27749;
    *v586 = *"webrtc-datachannel";
    v587 = v584 + 18;
    if (SHIBYTE(v567->__r_.__value_.__r.__words[2]) < 0)
    {
      v567->__r_.__value_.__l.__size_ = v587;
    }

    else
    {
      *(&v567->__r_.__value_.__s + 23) = v587 & 0x7F;
    }

    v585->__r_.__value_.__s.__data_[v587] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v567, v583, v584 - v583 + 18, v584, v584, 0, 0x12uLL, "webrtc-datachannel");
  }

  v588 = HIBYTE(v567->__r_.__value_.__r.__words[2]);
  v589 = v588;
  if ((v588 & 0x80u) == 0)
  {
    v590 = 22;
  }

  else
  {
    v590 = (v567->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v588 & 0x80u) != 0)
  {
    v588 = v567->__r_.__value_.__l.__size_;
  }

  if (v590 == v588)
  {
    std::string::__grow_by_and_replace(v567, v590, 1uLL, v590, v590, 0, 1uLL, " ");
  }

  else
  {
    if (v589 >= 0)
    {
      v591 = v567;
    }

    else
    {
      v591 = v567->__r_.__value_.__r.__words[0];
    }

    v592 = v591 + v588;
    if (v591 + v588 <= " " && v592 + 1 > " ")
    {
      goto LABEL_1866;
    }

    *v592 = 32;
    v593 = v588 + 1;
    if (SHIBYTE(v567->__r_.__value_.__r.__words[2]) < 0)
    {
      v567->__r_.__value_.__l.__size_ = v593;
    }

    else
    {
      *(&v567->__r_.__value_.__s + 23) = v593 & 0x7F;
    }

    v591->__r_.__value_.__s.__data_[v593] = 0;
  }

  webrtc::StringBuilder::operator<<(v567, 0x400, v566);
  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v594 = &v642;
  }

  else
  {
    v594 = v642.__r_.__value_.__r.__words[0];
  }

  if ((v642.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v595 = HIBYTE(v642.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v595 = v642.__r_.__value_.__l.__size_;
  }

  if (!v46)
  {
    goto LABEL_1853;
  }

  if (!v594 && v595)
  {
    goto LABEL_1866;
  }

  v596 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if (v596 < 0)
  {
    v598 = v46->__r_.__value_.__l.__size_;
    v597 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v597 - v598 < v595)
    {
      goto LABEL_1768;
    }
  }

  else
  {
    v597 = 22;
    v598 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
    if (22 - v596 < v595)
    {
LABEL_1768:
      std::string::__grow_by_and_replace(v46, v597, v595 - v597 + v598, v598, v598, 0, v595, v594);
      goto LABEL_1837;
    }
  }

  if (v595)
  {
    v599 = v46;
    if ((v596 & 0x80000000) != 0)
    {
      v599 = v46->__r_.__value_.__r.__words[0];
    }

    if ((v595 & 0x8000000000000000) != 0)
    {
      goto LABEL_1866;
    }

    v600 = v599 + v598;
    if ((v599 + v598) <= v594 && &v600[v595] > v594)
    {
      goto LABEL_1866;
    }

    v601 = v595;
    memmove(v600, v594, v595);
    v602 = v598 + v601;
    if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
    {
      v46->__r_.__value_.__l.__size_ = v602;
    }

    else
    {
      *(&v46->__r_.__value_.__s + 23) = v602 & 0x7F;
    }

    v599->__r_.__value_.__s.__data_[v602] = 0;
  }

LABEL_1837:
  v623 = SHIBYTE(v46->__r_.__value_.__r.__words[2]);
  if ((v623 & 0x8000000000000000) != 0)
  {
    v623 = v46->__r_.__value_.__l.__size_;
    v625 = (v46->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v625 - v623 >= 2)
    {
      v624 = v46->__r_.__value_.__r.__words[0];
      goto LABEL_1842;
    }

    goto LABEL_1852;
  }

  if (v623 - 21 < 2)
  {
    goto LABEL_1851;
  }

  v624 = v46;
LABEL_1842:
  v626 = (v624 + v623);
  if (v624 + v623 <= "\r\n" && v626 + 1 > "\r\n")
  {
    goto LABEL_1866;
  }

  *v626 = 2573;
  v627 = v623 + 2;
  if (SHIBYTE(v46->__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_1863;
  }

LABEL_1845:
  *(&v46->__r_.__value_.__s + 23) = v627 & 0x7F;
  v624->__r_.__value_.__s.__data_[v627] = 0;
  if ((SHIBYTE(v642.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_1854:
    if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_1654;
    }

LABEL_1855:
    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_1655;
    }

    return;
  }

LABEL_1864:
  operator delete(v642.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v638.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_1855;
  }

LABEL_1654:
  operator delete(v638.__r_.__value_.__l.__data_);
  if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_1655:
    operator delete(v637.__r_.__value_.__l.__data_);
  }
}