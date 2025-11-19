__n128 std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (!v13)
  {
    if (v8 >= v11)
    {
      goto LABEL_18;
    }

LABEL_31:
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
      v22 = a3[1];
    }

    if (v8 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v8;
    }

    v24 = memcmp(v21, v7, v23);
    if (v24)
    {
      if ((v24 & 0x80000000) == 0)
      {
LABEL_42:
        v25 = a1[2];
        v26 = *a1;
        v27 = a2[2];
        *a1 = *a2;
        a1[2] = v27;
        *a2 = v26;
        a2[2] = v25;
        v28 = *(a3 + 23);
        if (v28 >= 0)
        {
          v29 = a3;
        }

        else
        {
          v29 = *a3;
        }

        if (v28 >= 0)
        {
          v30 = *(a3 + 23);
        }

        else
        {
          v30 = a3[1];
        }

        v31 = *(a2 + 23);
        if (v31 >= 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        if (v31 >= 0)
        {
          v33 = *(a2 + 23);
        }

        else
        {
          v33 = a2[1];
        }

        if (v33 >= v30)
        {
          v34 = v30;
        }

        else
        {
          v34 = v33;
        }

        v35 = memcmp(v29, v32, v34);
        if (v35)
        {
          if ((v35 & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (v30 >= v33)
        {
          return result;
        }

        v47 = a2[2];
        result = *a2;
        v49 = a3[2];
        *a2 = *a3;
        a2[2] = v49;
LABEL_83:
        *a3 = result;
        a3[2] = v47;
        return result;
      }
    }

    else if (v22 >= v8)
    {
      goto LABEL_42;
    }

    v47 = a1[2];
    result = *a1;
    v48 = a3[2];
    *a1 = *a3;
    a1[2] = v48;
    goto LABEL_83;
  }

  if (v13 < 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v16 >= v8)
  {
    return result;
  }

  v36 = a2[2];
  v37 = *a2;
  v38 = a3[2];
  *a2 = *a3;
  a2[2] = v38;
  *a3 = v37;
  a3[2] = v36;
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
    v41 = a2[1];
  }

  v42 = *(a1 + 23);
  if (v42 >= 0)
  {
    v43 = a1;
  }

  else
  {
    v43 = *a1;
  }

  if (v42 >= 0)
  {
    v44 = *(a1 + 23);
  }

  else
  {
    v44 = a1[1];
  }

  if (v44 >= v41)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = memcmp(v40, v43, v45);
  if (v46)
  {
    if (v46 < 0)
    {
      goto LABEL_85;
    }
  }

  else if (v41 < v44)
  {
LABEL_85:
    v50 = a1[2];
    result = *a1;
    v51 = a2[2];
    *a1 = *a2;
    a1[2] = v51;
    *a2 = result;
    a2[2] = v50;
  }

  return result;
}

__n128 std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(uint64_t a1, __int128 *a2, __int128 *a3, const void **a4)
{
  std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 1);
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
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v10 >= v13)
  {
    return result;
  }

  v17 = *(a3 + 2);
  v18 = *a3;
  v19 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v19;
  *a4 = v18;
  a4[2] = v17;
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
    v22 = *(a3 + 1);
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
    v25 = *(a2 + 1);
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
      return result;
    }
  }

  else if (v22 >= v25)
  {
    return result;
  }

  v28 = *(a2 + 2);
  v29 = *a2;
  v30 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v30;
  *a3 = v29;
  *(a3 + 2) = v28;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = a2;
  }

  else
  {
    v32 = *a2;
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 23);
  }

  else
  {
    v33 = *(a2 + 1);
  }

  v34 = *(a1 + 23);
  if (v34 >= 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = *a1;
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 23);
  }

  else
  {
    v36 = *(a1 + 8);
  }

  if (v36 >= v33)
  {
    v37 = v33;
  }

  else
  {
    v37 = v36;
  }

  v38 = memcmp(v32, v35, v37);
  if (v38)
  {
    if (v38 < 0)
    {
      goto LABEL_58;
    }
  }

  else if (v33 < v36)
  {
LABEL_58:
    v39 = *(a1 + 16);
    result = *a1;
    v40 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v40;
    *a2 = result;
    *(a2 + 2) = v39;
  }

  return result;
}

__n128 std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
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
      return result;
    }
  }

  else if (v12 >= v15)
  {
    return result;
  }

  v19 = *(a4 + 2);
  v20 = *a4;
  v21 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v21;
  *a5 = v20;
  a5[2] = v19;
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
    v24 = *(a4 + 1);
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
      return result;
    }
  }

  else if (v24 >= v27)
  {
    return result;
  }

  v30 = *(a3 + 16);
  v31 = *a3;
  v32 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 16) = v32;
  *a4 = v31;
  *(a4 + 2) = v30;
  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = *(a3 + 8);
  }

  v36 = *(a2 + 23);
  if (v36 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v36 >= 0)
  {
    v38 = *(a2 + 23);
  }

  else
  {
    v38 = *(a2 + 8);
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v34, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v35 >= v38)
  {
    return result;
  }

  v41 = *(a2 + 16);
  v42 = *a2;
  v43 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v43;
  *a3 = v42;
  *(a3 + 16) = v41;
  v44 = *(a2 + 23);
  if (v44 >= 0)
  {
    v45 = a2;
  }

  else
  {
    v45 = *a2;
  }

  if (v44 >= 0)
  {
    v46 = *(a2 + 23);
  }

  else
  {
    v46 = *(a2 + 8);
  }

  v47 = *(a1 + 23);
  if (v47 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v47 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v45, v48, v50);
  if (v51)
  {
    if ((v51 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v46 >= v49)
  {
    return result;
  }

  v52 = *(a1 + 16);
  result = *a1;
  v53 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v53;
  *a2 = result;
  *(a2 + 16) = v52;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 24, a1 + 48, (a1 + 72), a2 - 3);
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
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      if (v10 >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 23);
      }

      else
      {
        v12 = *(a1 + 8);
      }

      if (v12 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v12;
      }

      v14 = memcmp(v8, v11, v13);
      if (v14)
      {
        if ((v14 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v9 >= v12)
      {
        return 1;
      }

      v38 = *(a1 + 16);
      v39 = *a1;
      v40 = v6[2];
      *a1 = *v6;
      *(a1 + 16) = v40;
      *v6 = v39;
      v6[2] = v38;
      return 1;
    }
  }

  v15 = a1 + 48;
  std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48));
  v16 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  v41 = v2;
  while (2)
  {
    v20 = *(v16 + 23);
    if (v20 >= 0)
    {
      v21 = v16;
    }

    else
    {
      v21 = *v16;
    }

    if (v20 >= 0)
    {
      v22 = *(v16 + 23);
    }

    else
    {
      v22 = v16[1];
    }

    v23 = *(v15 + 23);
    if (v23 >= 0)
    {
      v24 = v15;
    }

    else
    {
      v24 = *v15;
    }

    if (v23 >= 0)
    {
      v25 = *(v15 + 23);
    }

    else
    {
      v25 = *(v15 + 8);
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
        goto LABEL_32;
      }
    }

    else if (v22 >= v25)
    {
      goto LABEL_32;
    }

    v42 = v18;
    v43 = *v16;
    v44 = v16[2];
    *v16 = *v15;
    v16[2] = *(v15 + 16);
    *(v15 + 23) = 0;
    *v15 = 0;
    v28 = v17;
    while (1)
    {
      v29 = a1 + v28;
      v30 = (a1 + v28 + 24);
      if (SHIBYTE(v44) >= 0)
      {
        v31 = &v43;
      }

      else
      {
        v31 = v43;
      }

      if (SHIBYTE(v44) >= 0)
      {
        v32 = HIBYTE(v44);
      }

      else
      {
        v32 = *(&v43 + 1);
      }

      v33 = *(v29 + 47);
      if (v33 >= 0)
      {
        v34 = (a1 + v28 + 24);
      }

      else
      {
        v34 = *(a1 + v28 + 24);
      }

      if (v33 >= 0)
      {
        v35 = *(v29 + 47);
      }

      else
      {
        v35 = *(v29 + 32);
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
      if (!v37)
      {
        if (v32 >= v35)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if ((v37 & 0x80000000) == 0)
      {
        break;
      }

LABEL_54:
      v15 -= 24;
      *(v29 + 48) = *v30;
      *(v29 + 64) = *(a1 + v28 + 40);
      *(v29 + 47) = 0;
      *v30 = 0;
      v28 -= 24;
      if (v28 == -48)
      {
        v15 = a1;
        goto LABEL_31;
      }
    }

    v15 = a1 + v28 + 48;
LABEL_31:
    v19 = v43;
    *(v15 + 16) = v44;
    *v15 = v19;
    v18 = v42 + 1;
    v2 = v41;
    if (v42 != 7)
    {
LABEL_32:
      v15 = v16;
      v17 += 24;
      v16 += 3;
      if (v16 == v2)
      {
        return 1;
      }

      continue;
    }

    return v16 + 3 == v41;
  }
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::UpdateTransceiverChannel(webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::ContentInfo const&,webrtc::ContentGroup const*)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::UpdateTransceiverChannel(webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::ContentInfo const&,webrtc::ContentGroup const*)::$_0>,webrtc::RtpTransportInternal * ()(std::string_view)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F7F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::UpdateTransceiverChannel(webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::ContentInfo const&,webrtc::ContentGroup const*)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::UpdateTransceiverChannel(webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::ContentInfo const&,webrtc::ContentGroup const*)::$_0>,webrtc::RtpTransportInternal * ()(std::string_view)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = (*(**(*(a1 + 8) + 8) + 112))(*(*(a1 + 8) + 8));
  result = webrtc::JsepTransportCollection::GetTransportForMid(v4 + 384, v2, v3);
  if (result)
  {
    v6 = result;
    result = *(result + 96);
    if (!result)
    {
      result = *(v6 + 88);
      if (!result)
      {
        return *(v6 + 80);
      }
    }
  }

  return result;
}

double webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::vector<webrtc::IceParameters> webrtc::Thread::BlockingCall<webrtc::SdpOfferAnswerHandler::GetOptionsForOffer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::MediaSessionOptions *)::$_0,std::vector<webrtc::IceParameters>,void>(webrtc::SdpOfferAnswerHandler::GetOptionsForOffer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::MediaSessionOptions *)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 8);
  v3 = (*(*v2 + 128))(v2);
  webrtc::PortAllocator::GetPooledIceCredentials(v3, &v10);
  v4 = *a1;
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = *v4;
    if (v6 == v5)
    {
LABEL_11:
      v4[1] = v5;
      operator delete(v7);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v6 - 9) < 0)
      {
        operator delete(*(v6 - 4));
        v8 = v6 - 7;
        if (*(v6 - 33) < 0)
        {
LABEL_9:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v6 - 7;
        if (*(v6 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v6 = v8;
      if (v8 == v5)
      {
        v7 = *v4;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  result = *&v10;
  *v4 = v10;
  v4[2] = v11;
  return result;
}

void *std::deque<unsigned long>::__add_back_capacity(void *a1)
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
  return std::__split_buffer<long long *>::emplace_back<long long *&>(a1, &v10);
}

void webrtc::webrtc_checks_impl::MakeVal<webrtc::MediaType,(void *)0>(_BYTE *a1, int a2)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (a2 == 2)
  {
    v21 = 4;
    v3 = &v19;
    if (&__src <= "data" && &v19 > "data")
    {
      goto LABEL_43;
    }

    __src = 1635017060;
    v6 = 4;
  }

  else
  {
    if (a2 == 1)
    {
      v21 = 5;
      v3 = v20;
      v4 = "video";
    }

    else
    {
      if (a2)
      {
        v6 = 0;
        goto LABEL_23;
      }

      v21 = 5;
      v3 = v20;
      v4 = "audio";
    }

    if (&__src <= v4 && v20 > v4)
    {
      goto LABEL_43;
    }

    __src = *v4;
    v19 = v4[4];
    v6 = 5;
  }

  *v3 = 0;
  v8 = (&__p | v6);
  if (&__p <= &__src && v8 > &__src)
  {
    goto LABEL_43;
  }

  memcpy(&__p, &__src, v6);
  if (SHIBYTE(v17) < 0)
  {
    v16 = v6;
    v6 = SHIBYTE(v17);
  }

  else
  {
    HIBYTE(v17) = v6;
  }

  *v8 = 0;
LABEL_23:
  v9 = v6;
  v10 = v6 < 0;
  if (v6 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v10)
  {
    v12 = v16;
  }

  else
  {
    v12 = v9;
  }

  if (!p_p && v12)
  {
    goto LABEL_43;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_44;
  }

  if (v12 > 0x16)
  {
    operator new();
  }

  a1[23] = v12;
  v13 = &a1[v12];
  if (a1 <= p_p && v13 > p_p)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v12)
  {
    memmove(a1, p_p, v12);
  }

  *v13 = 0;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }
}

double webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::vector<webrtc::IceParameters> webrtc::Thread::BlockingCall<webrtc::SdpOfferAnswerHandler::GetOptionsForAnswer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::MediaSessionOptions *)::$_0,std::vector<webrtc::IceParameters>,void>(webrtc::SdpOfferAnswerHandler::GetOptionsForAnswer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::MediaSessionOptions *)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 8);
  v3 = (*(*v2 + 128))(v2);
  webrtc::PortAllocator::GetPooledIceCredentials(v3, &v10);
  v4 = *a1;
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = *v4;
    if (v6 == v5)
    {
LABEL_11:
      v4[1] = v5;
      operator delete(v7);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v6 - 9) < 0)
      {
        operator delete(*(v6 - 4));
        v8 = v6 - 7;
        if (*(v6 - 33) < 0)
        {
LABEL_9:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v6 - 7;
        if (*(v6 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v6 = v8;
      if (v8 == v5)
      {
        v7 = *v4;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  result = *&v10;
  *v4 = v10;
  v4[2] = v11;
  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::SdpOfferAnswerHandler::PushdownMediaDescription(webrtc::SdpType,webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::$_0,BOOL,void>(webrtc::SdpOfferAnswerHandler::PushdownMediaDescription(webrtc::SdpType,webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ***(v2 + 8);
  if (**v2)
  {
    result = (*(v3 + 136))();
  }

  else
  {
    result = (*(v3 + 128))();
  }

  **a1 = result;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SessionDescription const&)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SessionDescription const&)::$_0>,webrtc::RtpTransportInternal * ()(std::string_view)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F838;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SessionDescription const&)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SessionDescription const&)::$_0>,webrtc::RtpTransportInternal * ()(std::string_view)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = (*(**(*(a1 + 8) + 8) + 112))(*(*(a1 + 8) + 8));
  result = webrtc::JsepTransportCollection::GetTransportForMid(v4 + 384, v2, v3);
  if (result)
  {
    v6 = result;
    result = *(result + 96);
    if (!result)
    {
      result = *(v6 + 88);
      if (!result)
      {
        return *(v6 + 80);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SessionDescription const&)::$_1,std::allocator<webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SessionDescription const&)::$_1>,webrtc::RtpTransportInternal * ()(std::string_view)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F880;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SessionDescription const&)::$_1,std::allocator<webrtc::SdpOfferAnswerHandler::CreateChannels(webrtc::SessionDescription const&)::$_1>,webrtc::RtpTransportInternal * ()(std::string_view)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = (*(**(*(a1 + 8) + 8) + 112))(*(*(a1 + 8) + 8));
  result = webrtc::JsepTransportCollection::GetTransportForMid(v4 + 384, v2, v3);
  if (result)
  {
    v6 = result;
    result = *(result + 96);
    if (!result)
    {
      result = *(v6 + 88);
      if (!result)
      {
        return *(v6 + 80);
      }
    }
  }

  return result;
}

void std::__tree<std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::PayloadTypes>>>::destroy(a1[1]);
    std::__tree<sigslot::_signal_base_interface *>::destroy((a1 + 8), a1[9]);
    std::__tree<sigslot::_signal_base_interface *>::destroy((a1 + 5), a1[6]);

    operator delete(a1);
  }
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::$_0,BOOL,void>(webrtc::SdpOfferAnswerHandler::UpdatePayloadTypeDemuxingState(webrtc::ContentSource,std::map<std::string,webrtc::ContentGroup const*> const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = **(a1 + 8);
  v3 = v2[1];
  if (*v2 == v3)
  {
    result = 1;
    **a1 = 1;
  }

  else
  {
    v4 = *v2 + 16;
    do
    {
      result = (*(**(v4 - 8) + 144))(*(v4 - 8), *(v4 - 16));
      if (result)
      {
        v6 = v4 == v3;
      }

      else
      {
        v6 = 1;
      }

      v4 += 16;
    }

    while (!v6);
    **a1 = result;
  }

  return result;
}

std::string *webrtc::SdpVideoFormat::SdpVideoFormat(std::string *this, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[0] = &this[1].__r_.__value_.__l.__size_;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v8 = *a3;
  v6 = a3 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&this[1], &this[1].__r_.__value_.__l.__size_, v7 + 4);
      v10 = v7[1];
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
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v6);
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  return this;
}

std::string *webrtc::SdpVideoFormat::SdpVideoFormat(std::string *this, const webrtc::SdpVideoFormat *a2)
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

  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[0] = &this[1].__r_.__value_.__l.__size_;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v5 = *(a2 + 3);
  if (v5 != (a2 + 32))
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&this[1], &this[1].__r_.__value_.__l.__size_, v5 + 4);
      v10 = *(v5 + 1);
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
          v11 = *(v5 + 2);
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a2 + 32));
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  v6 = *(a2 + 6);
  if (v6 < 2)
  {
    return this;
  }

  if ((v6 & 1) == 0)
  {
    this[2].__r_.__value_.__r.__words[0] = v6;
    v7 = *(a2 + 56);
    v8 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v8;
    *&this[2].__r_.__value_.__r.__words[1] = v7;
    return this;
  }

  absl::inlined_vector_internal::Storage<webrtc::ScalabilityMode,34ul,std::allocator<webrtc::ScalabilityMode>>::InitFrom(&this[2], a2 + 6);
  return this;
}

void webrtc::SdpVideoFormat::~SdpVideoFormat(webrtc::SdpVideoFormat *this)
{
  if ((*(this + 48) & 1) == 0)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 24, *(this + 4));
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*this);
    return;
  }

  operator delete(*(this + 7));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 24, *(this + 4));
  if (*(this + 23) < 0)
  {
    goto LABEL_5;
  }
}

double webrtc::SdpVideoFormat::ToString@<D0>(webrtc::SdpVideoFormat *this@<X0>, std::string *a2@<X8>)
{
  *&v87.__r_.__value_.__r.__words[1] = 0uLL;
  v3 = &v87.__r_.__value_.__s.__data_[12];
  if (&v87 <= "Codec name: " && &v87.__r_.__value_.__r.__words[1] + 4 > "Codec name: ")
  {
    goto LABEL_235;
  }

  LODWORD(v87.__r_.__value_.__r.__words[1]) = 540697965;
  v87.__r_.__value_.__r.__words[0] = *"Codec name: ";
  *(&v87.__r_.__value_.__s + 23) = 12;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v7 = *this;
    v5 = *(this + 1);
    v6 = v5 == 0;
    if (!*this && v5)
    {
      goto LABEL_235;
    }
  }

  else
  {
    v6 = v5 == 0;
    v7 = this;
  }

  if (v5 > 0xA)
  {
    if (v5 - 0x7FFFFFFFFFFFFFEBLL > 0x800000000000001ELL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v6)
  {
    v8 = 12;
  }

  else
  {
    if (&v87.__r_.__value_.__r.__words[1] + 4 <= v7 && &v87.__r_.__value_.__r.__words[1] + v5 + 4 > v7)
    {
      goto LABEL_235;
    }

    v3 = memmove(&v87.__r_.__value_.__r.__words[1] + 4, v7, v5);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      v87.__r_.__value_.__l.__size_ = v5 + 12;
    }

    else
    {
      *(&v87.__r_.__value_.__s + 23) = v5 + 12;
    }

    v87.__r_.__value_.__s.__data_[v5 + 12] = 0;
    v8 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
  }

  if ((v8 & 0x80u) == 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v8 & 0x80u) == 0)
  {
    size = v8;
  }

  else
  {
    size = v87.__r_.__value_.__l.__size_;
  }

  if (v9 - size < 0xF)
  {
    std::string::__grow_by_and_replace(&v87, v9, size - v9 + 15, size, size, 0, 0xFuLL, ", parameters: {");
    v11 = *(this + 3);
    v86 = this;
    v12 = this + 32;
    if (v11 != (this + 32))
    {
      goto LABEL_39;
    }

    goto LABEL_123;
  }

  v13 = &v87;
  if ((v8 & 0x80u) != 0)
  {
    v13 = v87.__r_.__value_.__r.__words[0];
  }

  v14 = v13 + size;
  if (v13 + size <= ", parameters: {" && v14 + 15 > ", parameters: {")
  {
    goto LABEL_235;
  }

  qmemcpy(v14, ", parameters: {", 15);
  v15 = size + 15;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    v87.__r_.__value_.__l.__size_ = size + 15;
    v13->__r_.__value_.__s.__data_[v15] = 0;
    v11 = *(this + 3);
    v86 = this;
    v12 = this + 32;
    if (v11 == (this + 32))
    {
      goto LABEL_123;
    }

    while (1)
    {
LABEL_39:
      v16 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = 22;
      }

      else
      {
        v17 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v87.__r_.__value_.__l.__size_;
      }

      if (v17 == v16)
      {
        std::string::__grow_by_and_replace(&v87, v17, 1uLL, v17, v17, 0, 1uLL, " ");
        v18 = *(v11 + 55);
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v87;
        }

        else
        {
          v21 = v87.__r_.__value_.__r.__words[0];
        }

        if (v21 + v16 <= " " && &v21->__r_.__value_.__l.__data_ + v16 + 1 > " ")
        {
          goto LABEL_235;
        }

        v21->__r_.__value_.__s.__data_[v16] = 32;
        v23 = v16 + 1;
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          v87.__r_.__value_.__l.__size_ = v23;
          v21->__r_.__value_.__s.__data_[v23] = 0;
          v18 = *(v11 + 55);
          if ((v18 & 0x8000000000000000) == 0)
          {
LABEL_46:
            v19 = (v11 + 4);
            v20 = v18 == 0;
            goto LABEL_58;
          }
        }

        else
        {
          *(&v87.__r_.__value_.__s + 23) = v23 & 0x7F;
          v21->__r_.__value_.__s.__data_[v23] = 0;
          v18 = *(v11 + 55);
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }
        }
      }

      v19 = v11[4];
      v18 = v11[5];
      v20 = v18 == 0;
      if (!v19 && v18)
      {
        goto LABEL_235;
      }

LABEL_58:
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = 22;
      }

      else
      {
        v24 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v87.__r_.__value_.__l.__size_;
      }

      if (v24 - v25 >= v18)
      {
        if (!v20)
        {
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v87;
          }

          else
          {
            v26 = v87.__r_.__value_.__r.__words[0];
          }

          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_235;
          }

          v3 = v26 + v25;
          if (v26 + v25 <= v19 && &v3[v18] > v19)
          {
            goto LABEL_235;
          }

          v27 = v18;
          v3 = memmove(v3, v19, v18);
          v28 = v25 + v27;
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            v87.__r_.__value_.__l.__size_ = v25 + v27;
          }

          else
          {
            *(&v87.__r_.__value_.__s + 23) = v28 & 0x7F;
          }

          v26->__r_.__value_.__s.__data_[v28] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v87, v24, v25 + v18 - v24, v25, v25, 0, v18, v19);
      }

      v29 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = 22;
      }

      else
      {
        v30 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v29 = v87.__r_.__value_.__l.__size_;
      }

      if (v30 == v29)
      {
        std::string::__grow_by_and_replace(&v87, v30, 1uLL, v30, v30, 0, 1uLL, "=");
        v31 = *(v11 + 79);
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v87;
        }

        else
        {
          v34 = v87.__r_.__value_.__r.__words[0];
        }

        v35 = v34 + v29;
        if (v34 + v29 <= "=" && v35 + 1 > "=")
        {
          goto LABEL_235;
        }

        *v35 = 61;
        v36 = v29 + 1;
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          v87.__r_.__value_.__l.__size_ = v36;
          v34->__r_.__value_.__s.__data_[v36] = 0;
          v31 = *(v11 + 79);
          if ((v31 & 0x8000000000000000) == 0)
          {
LABEL_86:
            v32 = (v11 + 7);
            v33 = v31 == 0;
            goto LABEL_96;
          }
        }

        else
        {
          *(&v87.__r_.__value_.__s + 23) = v36 & 0x7F;
          v34->__r_.__value_.__s.__data_[v36] = 0;
          v31 = *(v11 + 79);
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_86;
          }
        }
      }

      v32 = v11[7];
      v31 = v11[8];
      v33 = v31 == 0;
      if (!v32 && v31)
      {
        goto LABEL_235;
      }

LABEL_96:
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = 22;
      }

      else
      {
        v37 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v87.__r_.__value_.__l.__size_;
      }

      if (v37 - v38 < v31)
      {
        std::string::__grow_by_and_replace(&v87, v37, v38 + v31 - v37, v38, v38, 0, v31, v32);
        v39 = v11[1];
        if (v39)
        {
          goto LABEL_115;
        }

        goto LABEL_120;
      }

      if (v33)
      {
        goto LABEL_114;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v87;
      }

      else
      {
        v40 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_235;
      }

      v3 = v40 + v38;
      if (v40 + v38 <= v32 && &v3[v31] > v32)
      {
        goto LABEL_235;
      }

      v41 = v31;
      v3 = memmove(v3, v32, v31);
      v42 = v38 + v41;
      if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&v87.__r_.__value_.__s + 23) = v42 & 0x7F;
        v40->__r_.__value_.__s.__data_[v42] = 0;
LABEL_114:
        v39 = v11[1];
        if (v39)
        {
          goto LABEL_115;
        }

        goto LABEL_120;
      }

      v87.__r_.__value_.__l.__size_ = v38 + v41;
      v40->__r_.__value_.__s.__data_[v42] = 0;
      v39 = v11[1];
      if (v39)
      {
        do
        {
LABEL_115:
          v43 = v39;
          v39 = *v39;
        }

        while (v39);
        goto LABEL_38;
      }

      do
      {
LABEL_120:
        v43 = v11[2];
        v44 = *v43 == v11;
        v11 = v43;
      }

      while (!v44);
LABEL_38:
      v11 = v43;
      if (v43 == v12)
      {
        goto LABEL_123;
      }
    }
  }

  *(&v87.__r_.__value_.__s + 23) = v15 & 0x7F;
  v13->__r_.__value_.__s.__data_[v15] = 0;
  v11 = *(this + 3);
  v86 = this;
  v12 = this + 32;
  if (v11 != (this + 32))
  {
    goto LABEL_39;
  }

LABEL_123:
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = 22;
  }

  else
  {
    v45 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v87.__r_.__value_.__l.__size_;
  }

  if (v45 - v46 >= 2)
  {
    v48 = &v87;
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = v87.__r_.__value_.__r.__words[0];
    }

    if (v48 + v46 <= " }" && &v48->__r_.__value_.__s.__data_[v46 + 2] > " }")
    {
      goto LABEL_235;
    }

    *(&v48->__r_.__value_.__l.__data_ + v46) = 32032;
    v50 = v46 + 2;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      v87.__r_.__value_.__l.__size_ = v46 + 2;
      v47 = v86;
      v48->__r_.__value_.__s.__data_[v50] = 0;
      if (*(v86 + 6) < 2uLL)
      {
        goto LABEL_194;
      }
    }

    else
    {
      *(&v87.__r_.__value_.__s + 23) = v50 & 0x7F;
      v47 = v86;
      v48->__r_.__value_.__s.__data_[v50] = 0;
      if (*(v86 + 6) < 2uLL)
      {
        goto LABEL_194;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v87, v45, v46 - v45 + 2, v46, v46, 0, 2uLL, " }");
    v47 = v86;
    if (*(v86 + 6) < 2uLL)
    {
      goto LABEL_194;
    }
  }

  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = 22;
  }

  else
  {
    v51 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v52 = v87.__r_.__value_.__l.__size_;
  }

  if (v51 - v52 < 0x16)
  {
    std::string::__grow_by_and_replace(&v87, v51, v52 - v51 + 22, v52, v52, 0, 0x16uLL, ", scalability_modes: [");
    v53 = *(v47 + 6);
    v54 = v47 + 56;
    if ((v53 & 1) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  v57 = &v87;
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v57 = v87.__r_.__value_.__r.__words[0];
  }

  v58 = v57 + v52;
  if (v57 + v52 <= ", scalability_modes: [" && v58 + 22 > ", scalability_modes: [")
  {
    goto LABEL_235;
  }

  qmemcpy(v58, ", scalability_modes: [", 22);
  v59 = v52 + 22;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    v87.__r_.__value_.__l.__size_ = v52 + 22;
    v57->__r_.__value_.__s.__data_[v59] = 0;
    v53 = *(v47 + 6);
    v54 = v47 + 56;
    if (v53)
    {
LABEL_150:
      v54 = *v54;
    }
  }

  else
  {
    *(&v87.__r_.__value_.__s + 23) = v59 & 0x7F;
    v57->__r_.__value_.__s.__data_[v59] = 0;
    v53 = *(v47 + 6);
    v54 = v47 + 56;
    if (v53)
    {
      goto LABEL_150;
    }
  }

LABEL_151:
  if (v53 < 2)
  {
    goto LABEL_152;
  }

  v60 = *v54;
  if (v60 >= 0x22)
  {
    goto LABEL_236;
  }

  v61 = qword_273BA4158[v60];
  v62 = off_279E952B8[v60];
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = 22;
  }

  else
  {
    v63 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v64 = v87.__r_.__value_.__l.__size_;
  }

  if (v63 - v64 >= v61)
  {
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &v87;
    }

    else
    {
      v69 = v87.__r_.__value_.__r.__words[0];
    }

    v3 = v69 + v64;
    if (v69 + v64 > v62 || &v3[v61] <= v62)
    {
      v3 = memmove(v3, v62, v61);
      v70 = v64 + v61;
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        v87.__r_.__value_.__l.__size_ = v64 + v61;
        v69->__r_.__value_.__s.__data_[v70] = 0;
        v65 = (v53 >> 1) - 1;
        if (!v65)
        {
          goto LABEL_152;
        }
      }

      else
      {
        *(&v87.__r_.__value_.__s + 23) = v70 & 0x7F;
        v69->__r_.__value_.__s.__data_[v70] = 0;
        v65 = (v53 >> 1) - 1;
        if (!v65)
        {
          goto LABEL_152;
        }
      }

LABEL_196:
      v72 = v54 + 1;
      while (1)
      {
        v73 = *v72;
        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = 22;
        }

        else
        {
          v74 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v75 = v87.__r_.__value_.__l.__size_;
        }

        if (v74 - v75 >= 2)
        {
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = &v87;
          }

          else
          {
            v76 = v87.__r_.__value_.__r.__words[0];
          }

          if (v76 + v75 <= ", " && &v76->__r_.__value_.__s.__data_[v75 + 2] > ", ")
          {
            break;
          }

          *(&v76->__r_.__value_.__l.__data_ + v75) = 8236;
          v78 = v75 + 2;
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            v87.__r_.__value_.__l.__size_ = v75 + 2;
            v76->__r_.__value_.__s.__data_[v78] = 0;
            if (v73 >= 0x22)
            {
              goto LABEL_236;
            }
          }

          else
          {
            *(&v87.__r_.__value_.__s + 23) = v78 & 0x7F;
            v76->__r_.__value_.__s.__data_[v78] = 0;
            if (v73 >= 0x22)
            {
              goto LABEL_236;
            }
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&v87, v74, v75 - v74 + 2, v75, v75, 0, 2uLL, ", ");
          if (v73 >= 0x22)
          {
            goto LABEL_236;
          }
        }

        v79 = qword_273BA4158[v73];
        v80 = off_279E952B8[v73];
        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = 22;
        }

        else
        {
          v81 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v82 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v82 = v87.__r_.__value_.__l.__size_;
        }

        if (v81 - v82 < v79)
        {
          std::string::__grow_by_and_replace(&v87, v81, v82 + v79 - v81, v82, v82, 0, v79, v80);
        }

        else
        {
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &v87;
          }

          else
          {
            v83 = v87.__r_.__value_.__r.__words[0];
          }

          v3 = v83 + v82;
          if (v83 + v82 <= v80 && &v3[v79] > v80)
          {
            break;
          }

          v3 = memmove(v3, v80, v79);
          v84 = v82 + v79;
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            v87.__r_.__value_.__l.__size_ = v82 + v79;
          }

          else
          {
            *(&v87.__r_.__value_.__s + 23) = v84 & 0x7F;
          }

          v83->__r_.__value_.__s.__data_[v84] = 0;
        }

        ++v72;
        if (!--v65)
        {
          goto LABEL_152;
        }
      }
    }

LABEL_235:
    __break(1u);
LABEL_236:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(v3);
  }

  std::string::__grow_by_and_replace(&v87, v63, v64 + v61 - v63, v64, v64, 0, v61, v62);
  v65 = (v53 >> 1) - 1;
  if (v65)
  {
    goto LABEL_196;
  }

LABEL_152:
  v55 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = 22;
  }

  else
  {
    v56 = (v87.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v55 = v87.__r_.__value_.__l.__size_;
  }

  if (v56 == v55)
  {
    std::string::__grow_by_and_replace(&v87, v56, 1uLL, v56, v56, 0, 1uLL, "]");
    goto LABEL_194;
  }

  v66 = &v87;
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v66 = v87.__r_.__value_.__r.__words[0];
  }

  v67 = v66 + v55;
  if (v66 + v55 <= "]" && v67 + 1 > "]")
  {
    goto LABEL_235;
  }

  *v67 = 93;
  v68 = v55 + 1;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    v87.__r_.__value_.__l.__size_ = v68;
  }

  else
  {
    *(&v87.__r_.__value_.__s + 23) = v68 & 0x7F;
  }

  v66->__r_.__value_.__s.__data_[v68] = 0;
LABEL_194:
  result = *&v87.__r_.__value_.__l.__data_;
  *a2 = v87;
  return result;
}

void webrtc::SdpVideoFormat::IsSameCodec(webrtc::SdpVideoFormat **this, webrtc::SdpVideoFormat **a2)
{
  v4 = *(this + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *this;
    v4 = this[1];
  }

  else
  {
    v5 = this;
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 < 0)
  {
    v6 = a2[1];
  }

  if (v4 != v6)
  {
    return;
  }

  for (; v4; v4 = (v4 - 1))
  {
    v11 = *v5;
    v5 = (v5 + 1);
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
        return;
      }
    }
  }

  v8 = webrtc::PayloadStringToCodecType(this);
  switch(v8)
  {
    case 2:
      webrtc::ParseSdpForVP9Profile((this + 3));
      webrtc::ParseSdpForVP9Profile((a2 + 3));
      return;
    case 3:
      v14 = webrtc::ParseSdpForAV1Profile((this + 3));
      v15 = webrtc::ParseSdpForAV1Profile((a2 + 3));
      if ((v14 & 0x100000000) == 0 || (v15 & 0x100000000) == 0 || v14 != v15)
      {
        return;
      }

      v16 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v19 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v18 = __p.__r_.__value_.__l.__size_;
      }

      if (size == v18)
      {
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v30;
        }

        else
        {
          v20 = v30.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v22 = memcmp(v20, p_p, size) == 0;
      }

      else
      {
        v22 = 0;
      }

      if (v19 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((*(&v30.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_45:
          if (!v22)
          {
            return;
          }

LABEL_46:
LABEL_47:
          v23 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v30.__r_.__value_.__l.__size_;
          }

          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = __p.__r_.__value_.__l.__size_;
          }

          if (v24 == v25)
          {
            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v30;
            }

            else
            {
              v27 = v30.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = &__p;
            }

            else
            {
              v28 = __p.__r_.__value_.__r.__words[0];
            }

            memcmp(v27, v28, v24);
            if ((v26 & 0x80000000) == 0)
            {
              goto LABEL_63;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
          v23 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
LABEL_63:
          if (v23 < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          return;
        }
      }

      else if ((v16 & 0x80) == 0)
      {
        goto LABEL_45;
      }

      operator delete(v30.__r_.__value_.__l.__data_);
      if (!v22)
      {
        return;
      }

      goto LABEL_46;
    case 4:
      webrtc::H264IsSameProfile((this + 3), (a2 + 3));
      if (v9)
      {
        goto LABEL_47;
      }

      break;
  }
}

BOOL webrtc::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || v7[5] != v6[5])
  {
    return 0;
  }

  v8 = v7[3];
  if (v8 != v7 + 4)
  {
    v9 = v6[3];
    do
    {
      v11 = *(v8 + 55);
      if (v11 >= 0)
      {
        v12 = *(v8 + 55);
      }

      else
      {
        v12 = v8[5];
      }

      v13 = *(v9 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = v9[5];
      }

      if (v12 != v13)
      {
        return 0;
      }

      v15 = v11 >= 0 ? v8 + 4 : v8[4];
      v16 = v14 >= 0 ? v9 + 4 : v9[4];
      if (memcmp(v15, v16, v12))
      {
        return 0;
      }

      v17 = *(v8 + 79);
      if (v17 >= 0)
      {
        v18 = *(v8 + 79);
      }

      else
      {
        v18 = v8[8];
      }

      v19 = *(v9 + 79);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = v9[8];
      }

      if (v18 != v19)
      {
        return 0;
      }

      v21 = v17 >= 0 ? v8 + 7 : v8[7];
      v22 = v20 >= 0 ? v9 + 7 : v9[7];
      if (memcmp(v21, v22, v18))
      {
        return 0;
      }

      v23 = v8[1];
      v24 = v8;
      if (v23)
      {
        do
        {
          v8 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v8 = v24[2];
          v41 = *v8 == v24;
          v24 = v8;
        }

        while (!v41);
      }

      v25 = v9[1];
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
        do
        {
          v26 = v9[2];
          v41 = *v26 == v9;
          v9 = v26;
        }

        while (!v41);
      }

      v9 = v26;
    }

    while (v8 != v7 + 4);
  }

  v29 = v7[7];
  v28 = (v7 + 7);
  v27 = v29;
  v30 = *(v28 - 1);
  if ((v30 & 1) == 0)
  {
    v27 = v28;
  }

  v33 = v6[7];
  v32 = (v6 + 7);
  v31 = v33;
  v34 = *(v32 - 1);
  if ((v34 & 1) == 0)
  {
    v31 = v32;
  }

  v35 = v30 >> 1;
  v36 = v34 >> 1;
  if (v30 >> 1 != v34 >> 1)
  {
    return 0;
  }

  if (v30 >= 2 && v34 >= 2)
  {
    v42 = v35 - 1;
    v43 = v36 - 1;
    v39 = v27;
    v38 = v31;
    while (*v39 == *v38)
    {
      ++v39;
      ++v38;
      if (v42)
      {
        --v42;
        if (v43--)
        {
          continue;
        }
      }

      goto LABEL_64;
    }

    return 0;
  }

  v38 = v31;
  v39 = v27;
LABEL_64:
  v40 = &v31[v36];
  return v39 == &v27[v35] && v38 == v40;
}

void webrtc::H265GenerateProfileTierLevelForAnswer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  {
    webrtc::ParseSdpForH265ProfileTierLevel(a1);
    v7 = v6;
    webrtc::ParseSdpForH265ProfileTierLevel(a2);
    if ((v7 & 0x100000000) != 0 && (v8 & 0x100000000) != 0 && (v7 >= v8 ? (v9 = v8) : (v9 = v7), (webrtc::H265LevelToString(v9, v14), v13 = 8, __p > "level-id") || &__p[1] <= "level-id"))
    {
      strcpy(__p, "level-id");
      v16 = __p;
      v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
      v11 = v10;
      if (*(v10 + 79) < 0)
      {
        operator delete(v10[7]);
      }

      *(v11 + 7) = *v14;
      v11[9] = v15;
      HIBYTE(v15) = 0;
      LOBYTE(v14[0]) = 0;
      if (v13 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t webrtc::anonymous namespace::IsDefaultH265PTL(uint64_t result)
{
  v22 = 10;
  if (__s1 <= "profile-id" && &__s1[1] + 2 > "profile-id")
  {
    goto LABEL_73;
  }

  strcpy(__s1, "profile-id");
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(result + 8);
    do
    {
      v3 = *(v2 + 55);
      if (v3 >= 0)
      {
        v4 = (v2 + 4);
      }

      else
      {
        v4 = v2[4];
      }

      if (v3 >= 0)
      {
        v5 = *(v2 + 55);
      }

      else
      {
        v5 = v2[5];
      }

      if (v5 >= 0xA)
      {
        v6 = 10;
      }

      else
      {
        v6 = v5;
      }

      result = memcmp(__s1, v4, v6);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (v5 <= 0xA)
      {
LABEL_21:
        result = memcmp(v4, __s1, v6);
        if (result)
        {
          if ((result & 0x80000000) == 0)
          {
            return 0;
          }
        }

        else if (v5 >= 0xA)
        {
          return 0;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  v20 = 9;
  if (__s2 <= "tier-flag" && &__s2[1] + 1 > "tier-flag")
  {
    goto LABEL_73;
  }

  strcpy(__s2, "tier-flag");
  if (!v1)
  {
    result = 1;
    if (v18 <= "level-id" && &v18[8] > "level-id")
    {
      goto LABEL_73;
    }

    return result;
  }

  v7 = v1;
  do
  {
    v8 = *(v7 + 55);
    if (v8 >= 0)
    {
      v9 = (v7 + 4);
    }

    else
    {
      v9 = v7[4];
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 55);
    }

    else
    {
      v10 = v7[5];
    }

    if (v10 >= 9)
    {
      v11 = 9;
    }

    else
    {
      v11 = v10;
    }

    result = memcmp(__s2, v9, v11);
    if (result)
    {
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    else if (v10 > 9)
    {
      goto LABEL_30;
    }

    result = memcmp(v9, __s2, v11);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if (v10 >= 9)
    {
      return 0;
    }

    ++v7;
LABEL_30:
    v7 = *v7;
  }

  while (v7);
  v18[23] = 8;
  if (v18 > "level-id" || &v18[8] <= "level-id")
  {
    strcpy(v18, "level-id");
    while (1)
    {
      v12 = *(v1 + 55);
      if (v12 >= 0)
      {
        v13 = v1 + 4;
      }

      else
      {
        v13 = v1[4];
      }

      if (v12 >= 0)
      {
        v14 = *(v1 + 55);
      }

      else
      {
        v14 = v1[5];
      }

      if (v14 >= 8)
      {
        v15 = 8;
      }

      else
      {
        v15 = v14;
      }

      v16 = memcmp(v18, v13, v15);
      if (v16)
      {
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_66;
        }
      }

      else if (v14 <= 8)
      {
LABEL_66:
        v17 = memcmp(v13, v18, v15);
        if (v17)
        {
          if ((v17 & 0x80000000) == 0)
          {
            return 0;
          }
        }

        else if (v14 >= 8)
        {
          return 0;
        }

        ++v1;
      }

      v1 = *v1;
      if (!v1)
      {
        return 1;
      }
    }
  }

LABEL_73:
  __break(1u);
  return result;
}

void webrtc::H264GenerateProfileLevelIdForAnswer(uint64_t a1, uint64_t a2)
{
  v28 = 16;
  if (__s1 <= "profile-level-id" && &__s1[16] > "profile-level-id")
  {
    goto LABEL_65;
  }

  strcpy(__s1, "profile-level-id");
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_24:
    v30 = 16;
    if (__s2 <= "profile-level-id" && &__s2[16] > "profile-level-id")
    {
      goto LABEL_65;
    }

    strcpy(__s2, "profile-level-id");
    v12 = *(a2 + 8);
    if (!v12)
    {
      return;
    }

    while (1)
    {
      v13 = *(v12 + 55);
      if (v13 >= 0)
      {
        v14 = (v12 + 4);
      }

      else
      {
        v14 = v12[4];
      }

      if (v13 >= 0)
      {
        v15 = *(v12 + 55);
      }

      else
      {
        v15 = v12[5];
      }

      if (v15 >= 0x10)
      {
        v16 = 16;
      }

      else
      {
        v16 = v15;
      }

      v17 = memcmp(__s2, v14, v16);
      if (v17)
      {
        if (v17 < 0)
        {
          goto LABEL_30;
        }
      }

      else if (v15 > 0x10)
      {
        goto LABEL_30;
      }

      v18 = memcmp(v14, __s2, v16);
      if (v18)
      {
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }
      }

      else if (v15 >= 0x10)
      {
        goto LABEL_46;
      }

      ++v12;
LABEL_30:
      v12 = *v12;
      if (!v12)
      {
        return;
      }
    }
  }

  while (1)
  {
    v6 = *(v4 + 55);
    if (v6 >= 0)
    {
      v7 = (v4 + 4);
    }

    else
    {
      v7 = v4[4];
    }

    if (v6 >= 0)
    {
      v8 = *(v4 + 55);
    }

    else
    {
      v8 = v4[5];
    }

    if (v8 >= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    v10 = memcmp(__s1, v7, v9);
    if (v10)
    {
      if (v10 < 0)
      {
        goto LABEL_7;
      }
    }

    else if (v8 > 0x10)
    {
      goto LABEL_7;
    }

    v11 = memcmp(v7, __s1, v9);
    if (!v11)
    {
      if (v8 >= 0x10)
      {
        break;
      }

      goto LABEL_6;
    }

    if ((v11 & 0x80000000) == 0)
    {
      break;
    }

LABEL_6:
    ++v4;
LABEL_7:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_24;
    }
  }

LABEL_46:
  v28 = 16;
  if (__s1 > "profile-level-id" || &__s1[16] <= "profile-level-id")
  {
    strcpy(__s1, "profile-level-id");
    v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, __s1);
    v21 = v19;
    if ((v28 & 0x80000000) == 0)
    {
      if (v5 != v19)
      {
        goto LABEL_50;
      }

LABEL_55:
      v28 = 16;
      if (__s1 <= "profile-level-id")
      {
        goto LABEL_56;
      }

LABEL_57:
      strcpy(__s1, "profile-level-id");
      v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, __s1);
      if (v28 < 0)
      {
        v26 = v23;
        operator delete(*__s1);
        v23 = v26;
        if ((a2 + 8) != v26)
        {
LABEL_59:
          v25 = (v23 + 7);
          if (*(v23 + 79) < 0)
          {
            v25 = *v25;
          }

          webrtc::ParseH264ProfileLevelId(v25, v24);
        }
      }

      else if ((a2 + 8) != v23)
      {
        goto LABEL_59;
      }

      operator new();
    }

    operator delete(*__s1);
    if (v5 == v21)
    {
      goto LABEL_55;
    }

LABEL_50:
    v22 = (v21 + 7);
    if (*(v21 + 79) < 0)
    {
      v22 = *v22;
    }

    webrtc::ParseH264ProfileLevelId(v22, v20);
    v28 = 16;
    if (__s1 > "profile-level-id")
    {
      goto LABEL_57;
    }

LABEL_56:
    if (&__s1[16] <= "profile-level-id")
    {
      goto LABEL_57;
    }
  }

LABEL_65:
  __break(1u);
}

BOOL webrtc::SupportsPerLayerPictureLossIndication(void *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  if (*a1 != a1 + 1)
  {
    while (1)
    {
      if (*(v2 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v2[4], v2[5]);
        if ((*(v2 + 79) & 0x80000000) == 0)
        {
LABEL_6:
          __p = *(v2 + 7);
          v3 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v15 = *(v2 + 4);
        if ((*(v2 + 79) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      std::string::__init_copy_ctor_external(&__p, v2[7], v2[8]);
      v3 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_7:
        if (v3 != 22)
        {
          goto LABEL_20;
        }

        v4 = &v15;
        goto LABEL_13;
      }

LABEL_11:
      if (v15.__r_.__value_.__l.__size_ != 22)
      {
        goto LABEL_20;
      }

      v4 = v15.__r_.__value_.__r.__words[0];
LABEL_13:
      v5 = v4->__r_.__value_.__r.__words[0];
      size = v4->__r_.__value_.__l.__size_;
      v7 = *(&v4->__r_.__value_.__r.__words[1] + 6);
      v8 = v5 == *"x-google-per-layer-pli" && size == *"-per-layer-pli";
      if (v8 && v7 == *"ayer-pli")
      {
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          p_p = &__p;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
          {
            v10 = 0;
            goto LABEL_23;
          }

          goto LABEL_37;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ == 1)
        {
LABEL_37:
          v10 = p_p->__r_.__value_.__s.__data_[0] == 49;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

LABEL_21:
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          v10 = 0;
        }

        operator delete(p_p);
        LOBYTE(v3) = *(&v15.__r_.__value_.__s + 23);
        goto LABEL_23;
      }

LABEL_20:
      v10 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_21;
      }

LABEL_23:
      if ((v3 & 0x80) != 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
        if (v10)
        {
          return v2 != v1;
        }
      }

      else if (v10)
      {
        return v2 != v1;
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v8 = *v13 == v2;
          v2 = v13;
        }

        while (!v8);
      }

      v2 = v13;
      if (v13 == v1)
      {
        v2 = v1;
        return v2 != v1;
      }
    }
  }

  return v2 != v1;
}

void webrtc::SendDelayStats::~SendDelayStats(webrtc::SendDelayStats *this)
{
  if ((*(this + 12) || *(this + 13)) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/send_delay_stats.cc");
  }

  pthread_mutex_lock((this + 8));
  v10 = *(this + 14);
  if (v10 != (this + 120))
  {
    do
    {
      v11 = *(v10 + 8);
      v14 = *(v11 + 16);
      v12 = (v11 + 16);
      v13 = v14;
      if (v14)
      {
        *(*(v10 + 8) + 32) = (*(*(v10 + 8) + 8) + v13 / 2) / v13;
      }

      v29 = *v12;
      v30 = *(v12 + 2);
      if (v29 < 5)
      {
        goto LABEL_16;
      }

      explicit = atomic_load_explicit(&webrtc::SendDelayStats::UpdateHistograms(void)::atomic_histogram_pointer, memory_order_acquire);
      if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v16 = 0, atomic_compare_exchange_strong(&webrtc::SendDelayStats::UpdateHistograms(void)::atomic_histogram_pointer, &v16, explicit), explicit))
      {
        webrtc::metrics::HistogramAdd(explicit, v30);
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (v1 = v1 & 0xFFFFFFFF00000000 | 0x1C9, webrtc::AggregatedStats::ToStringWithMultiplier(&v29, 1, v17, &__p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/send_delay_stats.cc"), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v25 = *(v10 + 1);
        if (!v25)
        {
          do
          {
LABEL_20:
            v26 = *(v10 + 2);
            v27 = *v26 == v10;
            v10 = v26;
          }

          while (!v27);
          goto LABEL_7;
        }
      }

      else
      {
LABEL_16:
        v25 = *(v10 + 1);
        if (!v25)
        {
          goto LABEL_20;
        }
      }

      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25);
LABEL_7:
      v10 = v26;
    }

    while (v26 != (this + 120));
  }

  pthread_mutex_unlock((this + 8));
  std::__tree<std::__value_type<unsigned int,webrtc::AvgCounter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::AvgCounter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::AvgCounter>>>::destroy(*(this + 15));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 10));
  pthread_mutex_destroy((this + 8));
}

uint64_t webrtc::SendDelayStats::AddSsrcs(uint64_t a1, unsigned int **a2)
{
  pthread_mutex_lock((a1 + 8));
  v5 = *a2;
  v4 = a2[1];
  if ((*(a1 + 128) + v4 - *a2) <= 0x32 && v5 != v4)
  {
    v8 = (a1 + 120);
    do
    {
      v9 = *v5;
      v10 = *v8;
      if (!*v8)
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
          if (v9 >= v12)
          {
            break;
          }

          v10 = *v11;
          if (!*v11)
          {
            goto LABEL_16;
          }
        }

        if (v12 >= v9)
        {
          break;
        }

        v10 = v11[1];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t webrtc::SendDelayStats::OnSendPacket(webrtc::SendDelayStats *this, unsigned __int16 a2, Timestamp a3, unsigned int a4)
{
  v13 = a2;
  pthread_mutex_lock((this + 8));
  v6 = *(this + 15);
  if (v6)
  {
    v7 = (this + 120);
    do
    {
      v8 = v6[8];
      v9 = v8 >= a4;
      v10 = v8 < a4;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10];
    }

    while (v6);
    if (v7 != (this + 120) && v7[8] <= a4)
    {
      v11.var0 = (*(**this + 16))();
      webrtc::SendDelayStats::RemoveOld(this, v11);
      if (*(this + 11) < 0x7D1uLL)
      {
        std::__tree<std::__value_type<unsigned short,webrtc::SendDelayStats::Packet>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,webrtc::SendDelayStats::Packet>,webrtc::SendDelayStats::SequenceNumberOlderThan,true>,std::allocator<std::__value_type<unsigned short,webrtc::SendDelayStats::Packet>>>::__emplace_unique_key_args<unsigned short,unsigned short &,webrtc::SendDelayStats::Packet>(this + 72, &v13);
      }

      else
      {
        ++*(this + 13);
      }
    }
  }

  return pthread_mutex_unlock((this + 8));
}

void webrtc::SendDelayStats::RemoveOld(webrtc::SendDelayStats *this, Timestamp a2)
{
  v2 = *(this + 11);
  if (v2)
  {
    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      do
      {
        v5 = *(this + 9);
        v6 = v5[1];
        v7 = v5;
        if (v6)
        {
          do
          {
            v8 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (!v9);
        }

        *(this + 9) = v8;
        *(this + 11) = v2 - 1;
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(this + 10), v5);
        operator delete(v5);
        v2 = *(this + 11);
        ++*(this + 12);
      }

      while (v2);
    }

    else if (a2.var0 == 0x8000000000000000)
    {
      do
      {
        v16 = *(this + 9);
        if (v16[6] != 0x8000000000000000)
        {
          break;
        }

        v17 = v16[1];
        v18 = *(this + 9);
        if (v17)
        {
          do
          {
            v19 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v19 = v18[2];
            v9 = *v19 == v18;
            v18 = v19;
          }

          while (!v9);
        }

        *(this + 9) = v19;
        *(this + 11) = v2 - 1;
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(this + 10), v16);
        operator delete(v16);
        v2 = *(this + 11);
        ++*(this + 12);
      }

      while (v2);
    }

    else
    {
      do
      {
        v10 = *(this + 9);
        v11 = v10[6];
        if (v11 != 0x8000000000000000 && (v11 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 - v11 < 11000000))
        {
          break;
        }

        v13 = v10[1];
        v14 = *(this + 9);
        if (v13)
        {
          do
          {
            v15 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v15 = v14[2];
            v9 = *v15 == v14;
            v14 = v15;
          }

          while (!v9);
        }

        *(this + 9) = v15;
        *(this + 11) = v2 - 1;
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(this + 10), v10);
        operator delete(v10);
        v2 = *(this + 11);
        ++*(this + 12);
      }

      while (v2);
    }
  }
}

uint64_t webrtc::SendDelayStats::OnSentPacket(webrtc::SendDelayStats *this, int a2, Timestamp a3)
{
  if (a2 != -1)
  {
    v4 = a2;
    pthread_mutex_lock((this + 8));
    v6 = *(this + 10);
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = v4;
    v8 = this + 80;
    do
    {
      v9 = *(v6 + 16);
      v10 = v7 - v9;
      v11 = ((v7 - v9) & 0x8000) != 0 || v9 == v7;
      v12 = !v11;
      v13 = v9 < v7;
      if (v10 != 0x8000)
      {
        v13 = v12;
      }

      v14 = !v13;
      if (v13)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v8 = v6;
      }

      v6 = *&v6[v15];
    }

    while (v6);
    if (v8 == this + 80)
    {
      goto LABEL_22;
    }

    v16 = *(v8 + 16);
    if (v16 - v7 == 0x8000)
    {
      if (v16 > v7)
      {
LABEL_22:
        v17 = 0;
LABEL_23:
        pthread_mutex_unlock((this + 8));
        return v17;
      }
    }

    else if (v16 != v7 && ((v16 - v7) & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    if (a3.var0 == 0x7FFFFFFFFFFFFFFFLL || (v20 = *(v8 + 7), v20 == 0x8000000000000000))
    {
      v21 = *(v8 + 5);
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (a3.var0 == 0x8000000000000000 || v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = *(v8 + 5);
        v22 = 0x8000000000000000;
        goto LABEL_42;
      }

      v21 = *(v8 + 5);
      v22 = a3.var0 - v20;
      if ((v22 & 0x8000000000000000) != 0)
      {
LABEL_42:
        v25 = -v22;
        v26 = v25 / 0x3E8;
        if (v25 % 0x3E8 <= 0x1F4)
        {
          v27 = 0;
        }

        else
        {
          v27 = -1;
        }

        webrtc::StatsCounter::Add(v21, v27 - v26);
        v24 = *(v8 + 1);
        if (v24)
        {
          do
          {
LABEL_46:
            v28 = v24;
            v24 = *v24;
          }

          while (v24);
          goto LABEL_51;
        }

LABEL_48:
        v29 = v8;
        do
        {
          v28 = *(v29 + 2);
          v11 = *v28 == v29;
          v29 = v28;
        }

        while (!v11);
LABEL_51:
        if (*(this + 9) == v8)
        {
          *(this + 9) = v28;
        }

        v30 = *(this + 10);
        --*(this + 11);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v30, v8);
        operator delete(v8);
        v17 = 1;
        goto LABEL_23;
      }
    }

    if (v22 % 0x3E8 <= 0x1F3)
    {
      v23 = v22 / 0x3E8;
    }

    else
    {
      v23 = v22 / 0x3E8 + 1;
    }

    webrtc::StatsCounter::Add(v21, v23);
    v24 = *(v8 + 1);
    if (v24)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  return 0;
}

void std::__tree<std::__value_type<unsigned int,webrtc::AvgCounter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::AvgCounter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::AvgCounter>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,webrtc::AvgCounter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::AvgCounter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::AvgCounter>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,webrtc::AvgCounter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::AvgCounter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::AvgCounter>>>::destroy(a1[1]);
    a1[5] = &unk_2882A00F0;
    v2 = a1[11];
    a1[11] = 0;
    if (v2)
    {
      (*(*v2 + 16))(v2);
    }

    v3 = a1[9];
    a1[9] = 0;
    if (v3)
    {
      std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
      MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
    }

    v4 = a1[8];
    a1[8] = 0;
    if (v4)
    {
      MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
    }

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,webrtc::SendDelayStats::Packet>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,webrtc::SendDelayStats::Packet>,webrtc::SendDelayStats::SequenceNumberOlderThan,true>,std::allocator<std::__value_type<unsigned short,webrtc::SendDelayStats::Packet>>>::__emplace_unique_key_args<unsigned short,unsigned short &,webrtc::SendDelayStats::Packet>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_20:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v5 - v3 != 0x8000)
      {
        break;
      }

      if (v5 <= v3)
      {
        goto LABEL_11;
      }

LABEL_3:
      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_20;
      }
    }

    if (v5 != v3 && ((v5 - v3) & 0x8000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (v3 - v5 == 0x8000)
    {
      if (v3 <= v5)
      {
        return v4;
      }

      goto LABEL_19;
    }

    if (v3 == v5 || ((v3 - v5) & 0x8000) != 0)
    {
      return v4;
    }

LABEL_19:
    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_20;
    }
  }
}

void webrtc::SendSideBandwidthEstimation::SendSideBandwidthEstimation(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __p[5] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 63) = 8;
  if (a1 + 40 > "Disabled" || a1 + 48 <= "Disabled")
  {
    strcpy((a1 + 40), "Disabled");
    *(a1 + 64) = 0;
    *(a1 + 8) = &unk_288293940;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    *(a1 + 127) = 5;
    if (a1 + 104 > "limit" || a1 + 109 <= "limit")
    {
      *(a1 + 108) = 116;
      *(a1 + 104) = 1768778092;
      *(a1 + 109) = 0;
      *(a1 + 128) = 0;
      *(a1 + 72) = &unk_28828FFD0;
      *(a1 + 136) = 3000000;
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      *(a1 + 152) = 0;
      *(a1 + 199) = 8;
      if (a1 + 176 > "fraction" || a1 + 184 <= "fraction")
      {
        strcpy((a1 + 176), "fraction");
        *(a1 + 200) = 0;
        *(a1 + 144) = &unk_2882937C0;
        *(a1 + 208) = 0x3FE999999999999ALL;
        *(a1 + 232) = 0;
        *(a1 + 240) = 0;
        *(a1 + 224) = 0;
        *(a1 + 271) = 8;
        if (a1 + 248 > "interval" || a1 + 256 <= "interval")
        {
          strcpy((a1 + 248), "interval");
          *(a1 + 272) = 0;
          *(a1 + 216) = &unk_28828FFD0;
          *(a1 + 280) = 1000000;
          *(a1 + 304) = 0;
          *(a1 + 312) = 0;
          *(a1 + 343) = 5;
          *(a1 + 296) = 0;
          if (a1 + 320 > "floor" || a1 + 325 <= "floor")
          {
            *(a1 + 324) = 114;
            *(a1 + 320) = 1869573222;
            *(a1 + 325) = 0;
            *(a1 + 344) = 0;
            *(a1 + 288) = &unk_28828FF08;
            *(a1 + 352) = xmmword_273BA42B0;
            *(a1 + 368) = xmmword_273B96EA0;
            *(a1 + 384) = 0x8000000000000000;
            __p[0] = (a1 + 8);
            __p[1] = (a1 + 72);
            __p[2] = (a1 + 144);
            __p[3] = (a1 + 216);
            __p[4] = (a1 + 288);
            (*(*a2 + 16))(v38, a2, "WebRTC-Bwe-MaxRttLimit", 22);
            if ((v39 & 0x80u) == 0)
            {
              v10 = v38;
            }

            else
            {
              v10 = v38[0];
            }

            if ((v39 & 0x80u) == 0)
            {
              v11 = v39;
            }

            else
            {
              v11 = v38[1];
            }

            webrtc::ParseFieldTrial(__p, 5, v10, v11);
            if (v39 < 0)
            {
              operator delete(v38[0]);
              if (*(a1 + 65))
              {
LABEL_20:
                *(a1 + 392) = 0;
                *(a1 + 480) = 0;
                *(a1 + 400) = xmmword_273B94C20;
                *(a1 + 416) = 0u;
                *(a1 + 432) = 0u;
                *(a1 + 448) = 0u;
                *(a1 + 457) = 0u;
                *(a1 + 488) = 0;
                *(a1 + 496) = 0;
                *(a1 + 504) = xmmword_273BA42C0;
                *(a1 + 520) = 0x8000000000000000;
                *(a1 + 528) = 0;
                *(a1 + 536) = 0x8000000000000000;
                *(a1 + 544) = 0x8000000000000000;
                *(a1 + 552) = 0;
                *(a1 + 560) = xmmword_273B96E90;
                *(a1 + 576) = xmmword_273B94C10;
                *(a1 + 592) = 0x8000000000000000;
                *(a1 + 600) = 0;
                *(a1 + 640) = 0;
                *(a1 + 608) = 0u;
                *(a1 + 624) = 0u;
                operator new();
              }
            }

            else if (*(a1 + 65))
            {
              goto LABEL_20;
            }

            *(a1 + 360) = *(a1 + 136);
            goto LABEL_20;
          }
        }
      }
    }
  }

  __break(1u);
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/send_side_bandwidth_estimation.cc", 85, "*low_loss_threshold > 0.0f", "\r\a\a\t", a6, a7, a8, a9, COERCE__INT64(a3));
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/send_side_bandwidth_estimation.cc", 87, "*low_loss_threshold <= 1.0f", "\r\a\a\t", v13, v14, v15, v16, COERCE__INT64(v12));
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/send_side_bandwidth_estimation.cc", 89, "*high_loss_threshold > 0.0f", "\r\a\a\t", v18, v19, v20, v21, COERCE__INT64(v17));
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/send_side_bandwidth_estimation.cc", 91, "*high_loss_threshold <= 1.0f", "\r\a\a\t", v23, v24, v25, v26, COERCE__INT64(v22));
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/send_side_bandwidth_estimation.cc", 93, "*low_loss_threshold <= *high_loss_threshold", "\r\a\a\t", v28, v29, v30, v31, COERCE__INT64(v27));
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/send_side_bandwidth_estimation.cc", 99, "*bitrate_threshold_kbps < std::numeric_limits<int>::max() / 1000", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, v32, v33, v34, v35, v36);
  webrtc::SendSideBandwidthEstimation::~SendSideBandwidthEstimation(v37);
}

void webrtc::SendSideBandwidthEstimation::~SendSideBandwidthEstimation(webrtc::SendSideBandwidthEstimation *this)
{
  *(this + 240) = &unk_288293910;
  if (*(this + 1975) < 0)
  {
    operator delete(*(this + 244));
  }

  v2 = *(this + 241);
  if (v2)
  {
    *(this + 242) = v2;
    operator delete(v2);
  }

  v3 = *(this + 238);
  *(this + 238) = 0;
  if (v3)
  {
    webrtc::LossBasedBweV2::~LossBasedBweV2(v3);
    MEMORY[0x2743DA540]();
  }

  webrtc::LossBasedControlConfig::~LossBasedControlConfig((this + 680));
  v4 = *(this + 78);
  if (v4)
  {
    operator delete(v4);
  }

  std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100](this + 52);
  *(this + 36) = &unk_288293910;
  if (*(this + 343) < 0)
  {
    operator delete(*(this + 40));
  }

  v5 = *(this + 37);
  if (v5)
  {
    *(this + 38) = v5;
    operator delete(v5);
  }

  *(this + 27) = &unk_288293910;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v6 = *(this + 28);
  if (v6)
  {
    *(this + 29) = v6;
    operator delete(v6);
  }

  *(this + 18) = &unk_288293910;
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  *(this + 9) = &unk_288293910;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v8 = *(this + 10);
  if (v8)
  {
    *(this + 11) = v8;
    operator delete(v8);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v9 = *(this + 2);
  if (v9)
  {
    *(this + 3) = v9;
    operator delete(v9);
  }
}

double webrtc::SendSideBandwidthEstimation::OnRouteChange(webrtc::SendSideBandwidthEstimation *this)
{
  *(this + 58) = 0;
  *(this + 61) = 0;
  *(this + 63) = 5000;
  *(this + 32) = xmmword_273BA42D0;
  *(this + 528) = 0;
  *(this + 67) = 0x8000000000000000;
  *(this + 68) = 0x8000000000000000;
  *(this + 276) = 0;
  *(this + 35) = xmmword_273B96E90;
  *(this + 36) = xmmword_273B94C10;
  *(this + 74) = 0x8000000000000000;
  *(this + 150) = 0;
  result = 0.0;
  *(this + 38) = 0u;
  *(this + 82) = 0x8000000000000000;
  v2 = *(this + 238);
  if (*(v2 + 304) == 1 && *(v2 + 250) == 1)
  {
    operator new();
  }

  return result;
}

void webrtc::SendSideBandwidthEstimation::SetSendBitrate(Timestamp *a1, uint64_t a2, Timestamp a3)
{
  a1[72].var0 = 0x7FFFFFFFFFFFFFFFLL;
  webrtc::SendSideBandwidthEstimation::UpdateTargetBitrate(a1, a2, a3);
  var0 = a1[53].var0;
  v5 = a1[54].var0 - var0;
  if (v5)
  {
    v6 = a1[56].var0;
    v7 = &var0[v6 >> 8];
    v8 = *v7;
    v9 = *v7 + 16 * v6;
    v10 = a1 + 57;
    v11 = *(var0 + (((a1[57].var0 + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (LOBYTE(a1[57].var0) + v6);
    while (v9 != v11)
    {
      if (!v9)
      {
        __break(1u);
        return;
      }

      v9 += 16;
      if (v9 - v8 == 4096)
      {
        v12 = v7[1];
        ++v7;
        v8 = v12;
        v9 = v12;
      }
    }
  }

  else
  {
    v10 = a1 + 57;
  }

  v10->var0 = 0;
  v13 = v5 >> 3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*var0);
      v14 = a1[54].var0;
      var0 = (a1[53].var0 + 8);
      a1[53].var0 = var0;
      v13 = (v14 - var0) >> 3;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v15 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      return;
    }

    v15 = 256;
  }

  a1[56].var0 = v15;
}

void webrtc::SendSideBandwidthEstimation::UpdateTargetBitrate(Timestamp *this, uint64_t a2, Timestamp a3)
{
  var0 = this[72].var0;
  if (BYTE1(this[247].var0) == 1 && this[71].var0 < var0)
  {
    var0 = this[71].var0;
  }

  if (this[64].var0 < var0)
  {
    var0 = this[64].var0;
  }

  if (var0 < a2)
  {
    a2 = var0;
  }

  if (a2 >= this[63].var0)
  {
    this[61].var0 = a2;
    webrtc::SendSideBandwidthEstimation::MaybeLogLossBasedEvent(this, a3);
    if ((this[60].var0 & 1) == 0)
    {
      return;
    }

LABEL_12:
    if (this[59].var0 >= this[61].var0)
    {
      v8 = this[61].var0;
    }

    else
    {
      v8 = this[59].var0;
    }

    v9 = v8;
    v10 = *&this[49].var0;
    if (v10 >= v8)
    {
      goto LABEL_31;
    }

    v11 = 0.0;
    if (a3.var0 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = this[50].var0;
      v13 = 0x8000000000000000;
      if (v12 != 0x8000000000000000)
      {
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && a3.var0 != 0x8000000000000000)
        {
          v13 = a3.var0 - v12;
        }

        if ((v13 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = exp(v13 / -10000000.0);
        }
      }
    }

    if (v8 == 0x8000000000000000)
    {
      v15 = 0xFFF0000000000000;
    }

    else
    {
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_30:
        *&this[49].var0 = (1.0 - v11) * v9 + v11 * v10;
LABEL_31:
        this[50].var0 = a3.var0;
        return;
      }

      v15 = 0x7FF0000000000000;
    }

    v9 = *&v15;
    goto LABEL_30;
  }

  webrtc::SendSideBandwidthEstimation::MaybeLogLowBitrateWarning(this, a2, a3.var0);
  this[61].var0 = this[63].var0;
  v7.var0 = a3.var0;
  webrtc::SendSideBandwidthEstimation::MaybeLogLossBasedEvent(this, v7);
  if (this[60].var0)
  {
    goto LABEL_12;
  }
}

void webrtc::SendSideBandwidthEstimation::SetAcknowledgedRate(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(a1 + 472) = a2;
  *(a1 + 480) = a3;
  if ((a3 & 1) == 0)
  {
    return;
  }

  v4 = *(a1 + 1904);
  if (*(a1 + 680) == 1 && (*(v4 + 304) & 1) == 0)
  {
    v5 = *(a1 + 1864);
    v6 = v5 + 0x7FFFFFFFFFFFFFFFLL;
    v7 = a4 - v5;
    if (a4 == 0x8000000000000000)
    {
      v7 = 0x8000000000000000;
    }

    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v6 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1000000;
    }

    *(a1 + 1864) = a4;
    v9 = *(a1 + 1856);
    v10 = a2;
    v11 = v9 - a2;
    if (v9 < a2)
    {
      goto LABEL_36;
    }

    v12 = v4;
    v13 = a1;
    v14 = *(a1 + 1256);
    if (v14 < 1)
    {
      v19 = 1.0;
      v20 = 9.22337204e18;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_20:
        a1 = v13;
        v4 = v12;
        if (a2 != 0x8000000000000000)
        {
          v21 = a2 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x8000000000000000;
          v20 = v11;
          if (v21)
          {
            v20 = -9.22337204e18;
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
      v15 = INFINITY;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v8;
      }

      if (v8 == 0x8000000000000000)
      {
        v15 = -INFINITY;
      }

      v16 = v14;
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = INFINITY;
      }

      v17 = a2;
      v18 = exp(-v15 / v16);
      a2 = v17;
      v19 = 1.0 - v18;
      v20 = 9.22337204e18;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }
    }

    a1 = v13;
    v4 = v12;
LABEL_29:
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = llround(v19 * v20);
      if (v22 != 0x8000000000000000)
      {
        v10 = v9 - v22;
        if (v22 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x8000000000000000)
        {
          v10 = 0x8000000000000000;
        }
      }
    }

LABEL_36:
    *(a1 + 1856) = v10;
  }

  if (*(v4 + 304) == 1)
  {

    webrtc::LossBasedBweV2::SetAcknowledgedBitrate(v4, a2);
  }
}

void webrtc::SendSideBandwidthEstimation::UpdateEstimate(webrtc::SendSideBandwidthEstimation *this, Timestamp a2, double a3)
{
  v5 = *(this + 46);
  v6 = *(this + 48);
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0x8000000000000000)
  {
    v9 = v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x8000000000000000;
    v10 = (v6 - v5) & ~((v6 - v5) >> 63);
    if (v9)
    {
      v10 = 0;
    }

    v11 = *(this + 47);
    if (v11 == 0x8000000000000000)
    {
      v12 = *(this + 47);
    }

    else
    {
      v12 = v11 + v10;
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL && v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v12;
    }
  }

  if (v7 > *(this + 45))
  {
    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }

    v14 = *(this + 73);
    v15 = 0x8000000000000000;
    if (v14 == 0x8000000000000000)
    {
      goto LABEL_27;
    }

    if (v14 != 0x7FFFFFFFFFFFFFFFLL && a2.var0 != 0x8000000000000000)
    {
      v15 = a2.var0 - v14;
    }

    if (v15 >= *(this + 35))
    {
LABEL_27:
      v17 = *(this + 44);
      v18 = *(this + 61);
      if (v18 <= v17)
      {
        goto LABEL_167;
      }

      *(this + 73) = a2;
      v19 = llround(*(this + 26) * v18);
      if (v19 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v19;
      }

      if (v18 == 0x8000000000000000)
      {
        v20 = 0xFFF0000000000000;
      }

      else
      {
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v72 = v18;
          goto LABEL_134;
        }

        v20 = 0x7FF0000000000000;
      }

      v72 = *&v20;
LABEL_134:
      if (v72 >= *(this + 49))
      {
        v72 = *(this + 49);
      }

      *(this + 49) = v72;
      *(this + 50) = a2;
      goto LABEL_167;
    }

LABEL_130:
    v18 = *(this + 61);
    goto LABEL_167;
  }

  if (!*(this + 552))
  {
    v41 = *(this + 74);
    if ((v41 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v42 = a2.var0 - v41, a2.var0 != 0x8000000000000000) ? (v43 = v42 < 2000000) : (v43 = 1), !v43 ? (v44 = 0) : (v44 = 1), a2.var0 != 0x7FFFFFFFFFFFFFFFLL && v44))
    {
      v45 = *(this + 238);
      v46 = *(v45 + 304);
      if (v46 != 1 || (*(v45 + 320) + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL || *(v45 + 328) < *(v45 + 252) || (*(v45 + 250) & 1) == 0)
      {
        v47 = *(this + 61);
        v48 = *(this + 71);
        v49 = v48 + 0x7FFFFFFFFFFFFFFFLL;
        if (v48 <= v47)
        {
          v48 = *(this + 61);
        }

        if (v49 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v48 = *(this + 61);
        }

        v50 = *(this + 72);
        v51 = v50 + 0x7FFFFFFFFFFFFFFFLL;
        if (v50 <= v48)
        {
          v50 = v48;
        }

        if (v51 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v18 = v48;
        }

        else
        {
          v18 = v50;
        }

        if (v46 & 1) == 0 && (*(this + 680))
        {
          *(this + 231) = v18;
          a3 = 0.0;
          *(this + 1832) = 0u;
        }

        if (v18 != v47)
        {
          v52 = *(this + 53);
          v53 = *(this + 54);
          if (v53 == v52)
          {
            v58 = (this + 456);
          }

          else
          {
            v54 = *(this + 56);
            v55 = &v52[v54 >> 8];
            v56 = *v55;
            v57 = *v55 + 16 * v54;
            v58 = (this + 456);
            v59 = *(v52 + (((*(this + 57) + v54) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 456) + v54);
            while (v57 != v59)
            {
              if (!v57)
              {
                goto LABEL_172;
              }

              v57 += 16;
              if (v57 - v56 == 4096)
              {
                v60 = v55[1];
                ++v55;
                v56 = v60;
                v57 = v60;
              }
            }
          }

          *v58 = 0;
          v77 = v53 - v52;
          if (v77 >= 3)
          {
            v78 = v18;
            do
            {
              operator delete(*v52);
              v53 = *(this + 54);
              v52 = (*(this + 53) + 8);
              *(this + 53) = v52;
              v77 = v53 - v52;
            }

            while (v77 > 2);
            v18 = v78;
          }

          if (v77 == 1)
          {
            v79 = 128;
          }

          else
          {
            if (v77 != 2)
            {
              goto LABEL_151;
            }

            v79 = 256;
          }

          *(this + 56) = v79;
LABEL_151:
          if (*(this + 680) == 1 && (*(*(this + 238) + 304) & 1) == 0)
          {
            *&v96 = a2;
            *(&v96 + 1) = v18;
            v86 = v18;
            std::deque<std::pair<webrtc::Timestamp,webrtc::DataRate>>::push_back(this + 52, &v96);
LABEL_161:
            v18 = v86;
            goto LABEL_167;
          }

          v80 = 32 * (v53 - v52) - 1;
          v81 = *(this + 61);
          if (v53 == v52)
          {
            v80 = 0;
          }

          if (v80 == *(this + 57) + *(this + 56))
          {
            v82 = v18;
            std::deque<std::pair<webrtc::Timestamp,webrtc::DataRate>>::__add_back_capacity(this + 52);
            v18 = v82;
            v52 = *(this + 53);
            v53 = *(this + 54);
          }

          if (v53 != v52)
          {
            v83 = *(this + 57) + *(this + 56);
            v84 = *(v52 + ((v83 >> 5) & 0x7FFFFFFFFFFFFF8));
            if (v84)
            {
              v85 = (v84 + 16 * v83);
              v85->var0 = a2.var0;
              v85[1].var0 = v81;
              ++*(this + 57);
              goto LABEL_167;
            }
          }

          goto LABEL_172;
        }
      }
    }
  }

  v21 = *(this + 57);
  if (!v21)
  {
    goto LABEL_61;
  }

  v22 = *(this + 53);
  v23 = *(this + 56);
  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      --v21;
      *(this + 56) = ++v23;
      *(this + 57) = v21;
      if (v23 >= 0x200)
      {
        operator delete(*v22);
        v22 = (*(this + 53) + 8);
        *(this + 53) = v22;
        v21 = *(this + 57);
        v23 = *(this + 56) - 256;
        *(this + 56) = v23;
      }
    }

    while (v21);
LABEL_61:
    v21 = 0;
    goto LABEL_62;
  }

  if (a2.var0 == 0x8000000000000000)
  {
    while ((*(v22 + ((v23 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v23] == 0x8000000000000000)
    {
      --v21;
      *(this + 56) = ++v23;
      *(this + 57) = v21;
      if (v23 >= 0x200)
      {
        operator delete(*v22);
        v22 = (*(this + 53) + 8);
        *(this + 53) = v22;
        v21 = *(this + 57);
        v23 = *(this + 56) - 256;
        *(this + 56) = v23;
      }

      if (!v21)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    while (1)
    {
      v24 = (*(v22 + ((v23 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v23];
      if (v24 != 0x8000000000000000 && (v24 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 - v24 < 999001))
      {
        break;
      }

      --v21;
      *(this + 56) = ++v23;
      *(this + 57) = v21;
      if (v23 >= 0x200)
      {
        operator delete(*v22);
        v22 = (*(this + 53) + 8);
        *(this + 53) = v22;
        v21 = *(this + 57);
        v23 = *(this + 56) - 256;
        *(this + 56) = v23;
      }

      if (!v21)
      {
        goto LABEL_61;
      }
    }
  }

  do
  {
    v26 = *(this + 56);
    v27 = *(this + 53);
    if (*(this + 61) > *(*(v27 + (((v26 + v21 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v26 + v21 - 1) + 8))
    {
      break;
    }

    v28 = *(this + 54);
    *(this + 57) = v21 - 1;
    if (v28 == v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = 32 * (v28 - v27) - 1;
    }

    v30 = v29 - (v21 + v26) + 1;
    --v21;
    if (v30 >= 0x200)
    {
      operator delete(*(v28 - 8));
      *(this + 54) -= 8;
      v21 = *(this + 57);
    }
  }

  while (v21);
LABEL_62:
  v31 = *(this + 53);
  v32 = *(this + 54);
  v33 = 32 * (v32 - v31) - 1;
  v34 = *(this + 61);
  if (v32 == v31)
  {
    v33 = 0;
  }

  if (v33 == *(this + 56) + v21)
  {
    std::deque<std::pair<webrtc::Timestamp,webrtc::DataRate>>::__add_back_capacity(this + 52);
    v31 = *(this + 53);
    v32 = *(this + 54);
  }

  if (v32 == v31)
  {
    goto LABEL_172;
  }

  v35 = *(this + 57) + *(this + 56);
  v36 = *(v31 + ((v35 >> 5) & 0x7FFFFFFFFFFFFF8));
  if (!v36)
  {
    goto LABEL_172;
  }

  v37 = (v36 + 16 * v35);
  v37->var0 = a2.var0;
  v37[1].var0 = v34;
  v38 = *(this + 57) + 1;
  *(this + 57) = v38;
  v39 = *(this + 68);
  if ((v39 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
  {
    goto LABEL_130;
  }

  v40 = *(this + 238);
  if ((*(this + 680) & 1) == 0)
  {
    if ((*(v40 + 304) & 1) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_107;
  }

  if (*(v40 + 304))
  {
LABEL_107:
    if ((*(v40 + 320) + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL && *(v40 + 328) >= *(v40 + 252))
    {
      webrtc::LossBasedBweV2::GetLossBasedResult(v40);
      v75 = v74;
      v18 = v76;
      *(this + 478) = v75;
      goto LABEL_167;
    }

    goto LABEL_109;
  }

  if ((*(this + 236) + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (v38)
    {
      v18 = webrtc::LossBasedBandwidthEstimation::Update(this + 680, a2.var0, *(*(*(this + 53) + ((*(this + 56) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 56) + 8), *(this + 72), *(this + 70));
      goto LABEL_167;
    }

    goto LABEL_172;
  }

LABEL_109:
  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_130;
  }

  v61 = a2.var0 - v39;
  if (a2.var0 == 0x8000000000000000)
  {
    v61 = 0x8000000000000000;
  }

  a3 = 6000000.0;
  if (v61 >= llround(6000000.0))
  {
    goto LABEL_130;
  }

  v62 = *(this + 61);
  v63 = *(this + 84);
  if (v62 >= v63)
  {
    v64 = *(this + 552);
    v65 = vcvts_n_f32_u32(v64, 8uLL);
    LODWORD(a3) = *(this + 166);
    if (v65 > *&a3)
    {
      if (v62 <= v63 || v65 <= *(this + 167) || (*(this + 528) & 1) != 0)
      {
        goto LABEL_130;
      }

      v66 = *(this + 73);
      v67 = a2.var0 - v66;
      if (v66 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 == 0x8000000000000000)
      {
        v67 = 0x8000000000000000;
      }

      v69 = *(this + 70);
      v70 = v69 + 300000;
      if (v69 == 0x8000000000000000)
      {
        v70 = *(this + 70);
      }

      v71 = v69 == 0x7FFFFFFFFFFFFFFFLL ? *(this + 70) : v70;
      if (v66 != 0x8000000000000000 && v67 < v71)
      {
        goto LABEL_130;
      }

      *(this + 73) = a2;
      a3 = v62 * (512 - v64) * 0.001953125;
      if (a3 == INFINITY)
      {
        v86 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_176;
      }

LABEL_173:
      if (a3 == -INFINITY)
      {
        v86 = 0x8000000000000000;
      }

      else
      {
        v86 = a3;
      }

LABEL_176:
      *(this + 528) = 1;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v89, v90, v91, v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/send_side_bandwidth_estimation.cc");
      }

      goto LABEL_161;
    }
  }

  if (!v38)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v73 = *(*(*(this + 53) + ((*(this + 56) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 56) + 8) * 1.08 + 0.5;
  if (v73 == INFINITY)
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_167;
  }

  if (v73 == -INFINITY)
  {
    goto LABEL_163;
  }

  v87 = v73;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  if (v73 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_167;
  }

  if (v87 == 0x8000000000000000)
  {
LABEL_163:
    v18 = 0x8000000000000000;
    goto LABEL_167;
  }

  v18 = v87 + 1000;
LABEL_167:
  v88.var0 = a2.var0;

  webrtc::SendSideBandwidthEstimation::UpdateTargetBitrate(this, v18, v88);
}

unint64_t webrtc::SendSideBandwidthEstimation::UpdateUmaStatsPacketsLost(unint64_t this, Timestamp a2, int a3)
{
  v4 = this;
  v5 = 0;
  v6 = (*(this + 488) + 500) / 1000;
  v7 = 1000 * v6;
  v8 = ((((125 * v6) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
  if (1000 * v6 - 1000 * v8 > 0x1F3)
  {
    ++v8;
  }

  v9 = -1000 * v6;
  v10 = v9 / 0x3E8;
  if (v9 % 0x3E8 <= 0x1F4)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 - v10;
  if (v7 >= 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  do
  {
    if (*(v4 + 632) <= v5)
    {
LABEL_84:
      __break(1u);
      return this;
    }

    if ((**(v4 + 624) & (1 << v5)) == 0 && v13 >= *(v14 + 2))
    {
      if (v5 == 2)
      {
        this = atomic_load_explicit(&qword_28100BBB8, memory_order_acquire);
        if (!this)
        {
          if (!*v14)
          {
            goto LABEL_84;
          }

          strlen(*v14);
          this = webrtc::metrics::HistogramFactoryGetCountsLinear();
          v16 = 0;
          atomic_compare_exchange_strong(&qword_28100BBB8, &v16, this);
          if (!this)
          {
            goto LABEL_40;
          }
        }
      }

      else if (v5 == 1)
      {
        this = atomic_load_explicit(&qword_28100BBB0, memory_order_acquire);
        if (!this)
        {
          if (!*v14)
          {
            goto LABEL_84;
          }

          strlen(*v14);
          this = webrtc::metrics::HistogramFactoryGetCountsLinear();
          v15 = 0;
          atomic_compare_exchange_strong(&qword_28100BBB0, &v15, this);
          if (!this)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        this = atomic_load_explicit(&_MergedGlobals_21, memory_order_acquire);
        if (!this)
        {
          if (!*v14)
          {
            goto LABEL_84;
          }

          strlen(*v14);
          this = webrtc::metrics::HistogramFactoryGetCountsLinear();
          v17 = 0;
          atomic_compare_exchange_strong(&_MergedGlobals_21, &v17, this);
          if (!this)
          {
            goto LABEL_40;
          }
        }
      }

      v18 = 0x7FFFFFFFFFFFFFFFLL;
      if (a2.var0 != 0x7FFFFFFFFFFFFFFFLL && (v19 = *(v4 + 592), v19 != 0x8000000000000000) && ((v18 = 0x8000000000000000, a2.var0 == 0x8000000000000000) || v19 == 0x7FFFFFFFFFFFFFFFLL || (v18 = a2.var0 - v19, a2.var0 - v19 < 0)))
      {
        v21 = -v18;
        v22 = v21 / 0x3E8;
        if (v21 % 0x3E8 <= 0x1F4)
        {
          v23 = 0;
        }

        else
        {
          v23 = -1;
        }

        v20 = v23 - v22;
      }

      else if (v18 % 0x3E8 <= 0x1F3)
      {
        v20 = v18 / 0x3E8;
      }

      else
      {
        v20 = v18 / 0x3E8 + 1;
      }

      this = webrtc::metrics::HistogramAdd(this, v20);
LABEL_40:
      if (*(v4 + 632) <= v5)
      {
        goto LABEL_84;
      }

      **(v4 + 624) |= 1 << v5;
    }

    ++v5;
    v14 += 2;
  }

  while (v5 != 3);
  v24 = *(v4 + 592);
  if (v24 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v25 = a2.var0 - v24, a2.var0 != 0x8000000000000000) ? (v26 = v25 < 2000000) : (v26 = 1), !v26 ? (v27 = 0) : (v27 = 1), a2.var0 != 0x7FFFFFFFFFFFFFFFLL && (v27))
  {
    *(v4 + 600) += a3;
    return this;
  }

  v28 = *(v4 + 616);
  if (v28 == 1)
  {
    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL || v25 >= 20000000)
    {
      *(v4 + 616) = 2;
      v37 = *(v4 + 608);
      v38 = v37 / 0x3E8uLL;
      if (v37 % 0x3E8uLL > 0x1F3)
      {
        LODWORD(v38) = v38 + 1;
      }

      v39 = -v37 % 0x3E8uLL <= 0x1F4 ? 0 : -1;
      v40 = v39 - -v37 / 0x3E8uLL;
      v41 = v37 < 0 ? v40 : v38;
      this = atomic_load_explicit(&qword_28100BBD0, memory_order_acquire);
      if (this || (this = webrtc::metrics::HistogramFactoryGetCountsLinear(), v42 = 0, atomic_compare_exchange_strong(&qword_28100BBD0, &v42, this), this))
      {
        v36 = (v41 - v13) & ~((v41 - v13) >> 31);
        goto LABEL_81;
      }
    }
  }

  else if (!v28)
  {
    *(v4 + 616) = 1;
    *(v4 + 608) = v7;
    explicit = atomic_load_explicit(&qword_28100BBC0, memory_order_acquire);
    if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v30 = 0, atomic_compare_exchange_strong(&qword_28100BBC0, &v30, explicit), explicit))
    {
      webrtc::metrics::HistogramAdd(explicit, *(v4 + 600));
    }

    this = atomic_load_explicit(&qword_28100BBC8, memory_order_acquire);
    if (this || (this = webrtc::metrics::HistogramFactoryGetCountsLinear(), v31 = 0, atomic_compare_exchange_strong(&qword_28100BBC8, &v31, this), this))
    {
      v32 = *(v4 + 608);
      v33 = v32 / 0x3E8uLL;
      if (v32 % 0x3E8uLL > 0x1F3)
      {
        LODWORD(v33) = v33 + 1;
      }

      if (-v32 % 0x3E8uLL <= 0x1F4)
      {
        v34 = 0;
      }

      else
      {
        v34 = -1;
      }

      v35 = v34 - -v32 / 0x3E8uLL;
      if (v32 < 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = v33;
      }

LABEL_81:

      return webrtc::metrics::HistogramAdd(this, v36);
    }
  }

  return this;
}

void *std::deque<std::pair<webrtc::Timestamp,webrtc::DataRate>>::push_back(void *result, _OWORD *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = 32 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == result[5] + result[4])
  {
    result = std::deque<std::pair<webrtc::Timestamp,webrtc::DataRate>>::__add_back_capacity(result);
    v4 = v3[1];
    v5 = v3[2];
  }

  if (v5 == v4 || (v7 = *(v4 + (((v3[5] + v3[4]) >> 5) & 0x7FFFFFFFFFFFFF8))) == 0)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16 * (*(v3 + 40) + *(v3 + 32))) = *a2;
    ++v3[5];
  }

  return result;
}

void webrtc::SendSideBandwidthEstimation::MaybeLogLowBitrateWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 520);
  v7 = a3 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x8000000000000000;
  if (v7 || a3 != 0x8000000000000000 && (v6 != 0x7FFFFFFFFFFFFFFFLL ? (v8 = a3 - v6 < 10000001) : (v8 = 1), !v8))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::ToString(a2, &v18);
      webrtc::ToString(*(a1 + 504), &__p);
      webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/send_side_bandwidth_estimation.cc");
      if (v17 < 0)
      {
        operator delete(__p);
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(v18);
    }

LABEL_13:
    *(a1 + 520) = a3;
  }
}

uint64_t webrtc::SendSideBandwidthEstimation::MaybeLogLossBasedEvent(uint64_t this, Timestamp a2)
{
  if (*(this + 488) != *(this + 496) || *(this + 552) != *(this + 553) || a2.var0 == 0x7FFFFFFFFFFFFFFFLL || (v2 = *(this + 656), v2 == 0x8000000000000000) || a2.var0 != 0x8000000000000000 && v2 != 0x7FFFFFFFFFFFFFFFLL && a2.var0 - v2 >= 5000001)
  {
    operator new();
  }

  return this;
}

void webrtc::LossBasedBweV2::~LossBasedBweV2(webrtc::LossBasedBweV2 *this)
{
  v2 = *(this + 61);
  if (v2)
  {
    *(this + 62) = v2;
    operator delete(v2);
  }

  v3 = *(this + 58);
  if (v3)
  {
    *(this + 59) = v3;
    operator delete(v3);
  }

  v4 = *(this + 48);
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(this + 46);
  *(this + 46) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 42);
  if (v7)
  {
    *(this + 43) = v7;
    operator delete(v7);
  }

  if (*(this + 304) == 1)
  {
    v8 = *(this + 7);
    if (v8)
    {
      *(this + 8) = v8;
      operator delete(v8);
    }
  }
}

void *std::deque<std::pair<webrtc::Timestamp,webrtc::DataRate>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v10);
}

void webrtc::SendStatisticsProxy::SendStatisticsProxy(uint64_t a1, uint64_t a2, webrtc::RtpConfig *a3, int a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829F8C8;
  *(a1 + 8) = &unk_28829F998;
  *(a1 + 16) = &unk_28829F9C0;
  *(a1 + 24) = &unk_28829F9E8;
  *(a1 + 32) = &unk_28829FA18;
  *(a1 + 40) = &unk_28829FA40;
  *(a1 + 48) = a2;
  if (*(a3 + 143) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a3 + 15), *(a3 + 16));
  }

  else
  {
    v10 = *(a3 + 120);
    *(a1 + 72) = *(a3 + 17);
    *(a1 + 56) = v10;
  }

  webrtc::RtpConfig::RtpConfig((a1 + 80), a3);
  (*(*a5 + 16))(&__p, a5, "WebRTC-VP8-Forced-Fallback-Encoder-v2", 37);
  if ((v46 & 0x80u) == 0)
  {
    v11 = v46;
  }

  else
  {
    v11 = *__p.__opaque;
  }

  if (v11 < 7 || ((sig = __p.__sig, (v46 & 0x80u) == 0) ? (p_p = &__p) : (p_p = __p.__sig), (v14 = p_p->__sig, v15 = *(&p_p->__sig + 3), v14 == 1650552389) ? (v16 = v15 == 1684368482) : (v16 = 0), !v16))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = a1 + 376;
    if ((v46 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v46 < 0)
  {
    if (*__p.__opaque < 7uLL)
    {
      goto LABEL_105;
    }

    v31 = *__p.__opaque - 7;
    if ((*__p.__opaque - 7) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_106;
    }
  }

  else
  {
    if (v46 <= 6)
    {
      goto LABEL_105;
    }

    sig = &__p;
    v31 = v46 - 7;
    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_106;
    }
  }

  v32 = (&sig->__sig + 7);
  if (v31 > 0x16)
  {
    operator new();
  }

  v42 = v31;
  v33 = (&v40 + v31);
  if (&v40 <= v32 && v33 > v32)
  {
    goto LABEL_104;
  }

  if (v31)
  {
    memmove(&v40, v32, v31);
  }

  *v33 = 0;
  if (v42 < 0)
  {
    if (!v41)
    {
      v39 = 0;
      v18 = 0;
      goto LABEL_93;
    }

    v44 = 0;
    v43 = 0;
    v34 = v40;
  }

  else
  {
    if (!v42)
    {
      v39 = 0;
      v18 = 0;
      goto LABEL_94;
    }

    v44 = 0;
    v34 = &v40;
    v43 = 0;
  }

  if (sscanf(v34, "-%d,%d,%d", &v44 + 4, &v44, &v43) != 3)
  {
    v18 = 0;
    goto LABEL_85;
  }

  v18 = 0;
  if (SHIDWORD(v44) >= 1)
  {
    if (v44 >= 1 && v44 >= SHIDWORD(v44))
    {
      v18 = 0x100000000;
      v39 = v44 & 0x7FFFFFFF;
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }

LABEL_85:
    v39 = 0;
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v39 = 0;
  if ((v42 & 0x80000000) == 0)
  {
LABEL_94:
    v17 = v39 & 0x7FFFFF00;
    v19 = v39;
    v20 = a1 + 376;
    if ((v46 & 0x80) == 0)
    {
LABEL_17:
      *(v20 + 4) = BYTE4(v18);
      *v20 = v18 | v17 | v19;
      (*(*a5 + 16))(&__p, a5, "WebRTC-VP8-Forced-Fallback-Encoder-v2", 37);
      v21 = v46;
      if ((v46 & 0x80u) == 0)
      {
        v22 = v46;
      }

      else
      {
        v22 = *__p.__opaque;
      }

      if (v22 < 8 || ((v23 = __p.__sig, (v46 & 0x80u) == 0) ? (v24 = &__p) : (v24 = __p.__sig), v24->__sig != 0x64656C6261736944))
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        if ((v46 & 0x80) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v46 < 0)
      {
        if (*__p.__opaque >= 8uLL)
        {
          v21 = *__p.__opaque;
          if (*__p.__opaque <= 7)
          {
            goto LABEL_106;
          }

          goto LABEL_58;
        }
      }

      else if (v46 > 7)
      {
        v23 = &__p;
        if (v46 <= 7uLL)
        {
LABEL_106:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_58:
        opaque = v23->__opaque;
        v36 = v21 - 8;
        if ((v21 - 8) > 0x16)
        {
          operator new();
        }

        v42 = v21 - 8;
        v37 = &v40 + v36;
        if (&v40 > opaque || v37 <= opaque)
        {
          if (v21 != 8)
          {
            memmove(&v40, opaque, v36);
          }

          *v37 = 0;
          if (v42 < 0)
          {
            if (!v41)
            {
              v27 = 0;
              v26 = 0;
              goto LABEL_97;
            }

            v44 = 0;
            v43 = 0;
            v38 = v40;
          }

          else
          {
            if (!v42)
            {
              v27 = 0;
              v26 = 0;
              goto LABEL_98;
            }

            v44 = 0;
            v38 = &v40;
            v43 = 0;
          }

          if (sscanf(v38, "-%d,%d,%d", &v44 + 4, &v44, &v43) != 3)
          {
            v26 = 0;
            goto LABEL_88;
          }

          v26 = 0;
          if (SHIDWORD(v44) >= 1)
          {
            if (v44 >= 1 && v44 >= SHIDWORD(v44))
            {
              v26 = 0x100000000;
              v27 = v44 & 0x7FFFFFFF;
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_98;
              }

              goto LABEL_97;
            }

LABEL_88:
            v27 = 0;
            if ((v42 & 0x80000000) == 0)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          }

          v27 = 0;
          if ((v42 & 0x80000000) == 0)
          {
LABEL_98:
            v25 = v27 & 0x7FFFFF00;
            v27 = v27;
            if ((v46 & 0x80) == 0)
            {
LABEL_27:
              *(v20 + 12) = BYTE4(v26);
              *(v20 + 8) = v26 | v25 | v27;
              pthread_mutexattr_init(&__p);
              pthread_mutexattr_setpolicy_np(&__p, 3);
              pthread_mutex_init((a1 + 392), &__p);
              pthread_mutexattr_destroy(&__p);
              *(a1 + 456) = a4;
              v28 = (*(*a2 + 16))(a2);
              if ((v28 & 0x8000000000000000) != 0)
              {
                if (-v28 % 0x3E8uLL <= 0x1F4)
                {
                  v30 = 0;
                }

                else
                {
                  v30 = -1;
                }

                v29 = v30 - -v28 / 0x3E8uLL;
              }

              else
              {
                v29 = v28 / 0x3E8;
                if (v28 % 0x3E8 > 0x1F3)
                {
                  ++v29;
                }
              }

              *(a1 + 464) = v29;
              *(a1 + 472) = 0;
              *(a1 + 496) = 0;
              *(a1 + 588) = 0;
              *(a1 + 600) = 0;
              *(a1 + 608) = 0u;
              *(a1 + 584) = 0;
              *(a1 + 504) = 0u;
              *(a1 + 520) = 0u;
              *(a1 + 536) = 0u;
              *(a1 + 552) = 0u;
              *(a1 + 568) = 0u;
              *(a1 + 592) = a1 + 600;
              *(a1 + 640) = 0u;
              *(a1 + 621) = 0;
              *(a1 + 632) = a1 + 640;
              *(a1 + 656) = 0;
              *(a1 + 668) = 0;
              *(a1 + 660) = 0;
              *(a1 + 680) = -1082130432;
              *(a1 + 672) = 0xBF8000003F000000;
              webrtc::QualityLimitationReasonTracker::QualityLimitationReasonTracker(a1 + 688, *(a1 + 48));
              *(a1 + 736) = &unk_28829A088;
              *(a1 + 744) = 100;
              *(a1 + 752) = 10;
              operator new[]();
            }

LABEL_26:
            operator delete(__p.__sig);
            goto LABEL_27;
          }

LABEL_97:
          operator delete(v40);
          goto LABEL_98;
        }

LABEL_104:
        __break(1u);
      }

LABEL_105:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_16:
    operator delete(__p.__sig);
    goto LABEL_17;
  }

LABEL_93:
  operator delete(v40);
  goto LABEL_94;
}

void webrtc::SendStatisticsProxy::~SendStatisticsProxy(webrtc::SendStatisticsProxy *this)
{
  *this = &unk_28829F8C8;
  *(this + 1) = &unk_28829F998;
  *(this + 2) = &unk_28829F9C0;
  *(this + 3) = &unk_28829F9E8;
  *(this + 4) = &unk_28829FA18;
  *(this + 5) = &unk_28829FA40;
  pthread_mutex_lock((this + 392));
  webrtc::SendStatisticsProxy::UmaSamplesContainer::UpdateHistograms(*(this + 125), (this + 80), (this + 472));
  v2 = (*(**(this + 6) + 16))(*(this + 6));
  v3 = v2 / 0x3E8uLL;
  if (v2 % 0x3E8uLL > 0x1F3)
  {
    ++v3;
  }

  if (-v2 % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 - -v2 / 0x3E8uLL;
  if (v2 < 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = *(this + 58);
  explicit = atomic_load_explicit(&webrtc::SendStatisticsProxy::~SendStatisticsProxy()::atomic_histogram_pointer, memory_order_acquire);
  if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v9 = 0, atomic_compare_exchange_strong(&webrtc::SendStatisticsProxy::~SendStatisticsProxy()::atomic_histogram_pointer, &v9, explicit), explicit))
  {
    webrtc::metrics::HistogramAdd(explicit, (v6 - v7) / 1000);
  }

  pthread_mutex_unlock((this + 392));
  v10 = *(this + 125);
  *(this + 125) = 0;
  if (v10)
  {
    webrtc::SendStatisticsProxy::UmaSamplesContainer::~UmaSamplesContainer(v10);
    MEMORY[0x2743DA540]();
  }

  if (*(this + 992) == 1)
  {
    if (*(this + 991) < 0)
    {
      operator delete(*(this + 121));
      if ((*(this + 967) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(this + 967) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(*(this + 118));
  }

LABEL_17:
  std::__tree<std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>>>::destroy(*(this + 109));
  *(this + 100) = &unk_28829A088;
  v11 = *(this + 103);
  if (v11)
  {
    MEMORY[0x2743DA520](v11, 0x1000C8000313F17);
  }

  *(this + 92) = &unk_28829A088;
  v12 = *(this + 95);
  if (v12)
  {
    MEMORY[0x2743DA520](v12, 0x1000C8000313F17);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 712, *(this + 90));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 632, *(this + 80));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 592, *(this + 75));
  if (*(this + 496) != 1 || (*(this + 495) & 0x80000000) == 0)
  {
    pthread_mutex_destroy((this + 392));
    webrtc::RtpConfig::~RtpConfig(this + 10);
    if ((*(this + 79) & 0x80000000) == 0)
    {
      return;
    }

LABEL_28:
    operator delete(*(this + 7));
    return;
  }

  operator delete(*(this + 59));
  pthread_mutex_destroy((this + 392));
  webrtc::RtpConfig::~RtpConfig(this + 10);
  if (*(this + 79) < 0)
  {
    goto LABEL_28;
  }
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::SendStatisticsProxy::UmaSamplesContainer::UpdateHistograms(webrtc::SendStatisticsProxy::UmaSamplesContainer *this, const webrtc::RtpConfig *a2, const webrtc::VideoSendStream::Stats *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v5 = v4;
  v719 = v6;
  v7 = v3;
  v732 = *MEMORY[0x277D85DE8];
  if (*(v3 + 23) < 0 && *(v3 + 8) == 25)
  {
    v8 = **v3 == 0x562E435452626557 && *(*v3 + 8) == 0x7263532E6F656469;
    v11 = v8 && *(*v3 + 16) == 0x65726168736E6565 && *(*v3 + 24) == 46;
  }

  else
  {
    v11 = 0;
  }

  v729 = &v731;
  v730 = xmmword_273BA1B30;
  v731 = 0;
  v12 = *(v3 + 40);
  if (v12 < 200)
  {
    LODWORD(v13) = -1;
    v14 = *(v3 + 56);
    if (v14 >= 200)
    {
      goto LABEL_18;
    }

LABEL_21:
    LODWORD(v15) = -1;
    if (v13 == -1)
    {
      goto LABEL_123;
    }

    goto LABEL_22;
  }

  v13 = (*(v3 + 32) + (v12 >> 1)) / v12;
  v14 = *(v3 + 56);
  if (v14 < 200)
  {
    goto LABEL_21;
  }

LABEL_18:
  v15 = (*(v3 + 48) + (v14 >> 1)) / v14;
  if (v13 == -1)
  {
    goto LABEL_123;
  }

LABEL_22:
  if (v11)
  {
    explicit = atomic_load_explicit(&qword_28100BBE0, memory_order_acquire);
    if (explicit)
    {
      goto LABEL_50;
    }

    v17 = v7[23];
    if (v17 >= 0)
    {
      v18 = v7[23];
    }

    else
    {
      v18 = *(v7 + 1);
    }

    if (v18 + 18 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_1835;
    }

    if (v18 + 18 >= 0x17)
    {
      operator new();
    }

    v728 = 0;
    __dst = 0uLL;
    HIBYTE(v728) = v18 + 18;
    if (v17 >= 0)
    {
      v22 = v7;
    }

    else
    {
      v22 = *v7;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_1834;
    }

    v23 = &__dst + v18;
    if (v22 >= &__dst && v23 > v22)
    {
      goto LABEL_1834;
    }

    if (v18)
    {
      memmove(&__dst, v22, v18);
    }

    if (v23 <= "InputWidthInPixels" && v23 + 18 > "InputWidthInPixels")
    {
      goto LABEL_1834;
    }

    strcpy(v23, "InputWidthInPixels");
    explicit = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (SHIBYTE(v728) < 0)
    {
      v24 = explicit;
      operator delete(__dst);
      explicit = v24;
    }

    v25 = 0;
    atomic_compare_exchange_strong(&qword_28100BBE0, &v25, explicit);
    if (explicit)
    {
LABEL_50:
      webrtc::metrics::HistogramAdd(explicit, v13);
    }

    v26 = &qword_28100BBF0;
    v27 = atomic_load_explicit(&qword_28100BBF0, memory_order_acquire);
    if (!v27)
    {
      v28 = v7[23];
      if (v28 >= 0)
      {
        v29 = v7[23];
      }

      else
      {
        v29 = *(v7 + 1);
      }

      if (v29 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v29 + 19 >= 0x17)
      {
        operator new();
      }

      v728 = 0;
      __dst = 0uLL;
      HIBYTE(v728) = v29 + 19;
      if (v28 >= 0)
      {
        v35 = v7;
      }

      else
      {
        v35 = *v7;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_1834;
      }

      v36 = &__dst + v29;
      if (v35 >= &__dst && v36 > v35)
      {
        goto LABEL_1834;
      }

      goto LABEL_92;
    }
  }

  else
  {
    CountsLinear = atomic_load_explicit(&_MergedGlobals_22, memory_order_acquire);
    if (CountsLinear)
    {
      goto LABEL_71;
    }

    v20 = v7[23];
    if (v20 >= 0)
    {
      v21 = v7[23];
    }

    else
    {
      v21 = *(v7 + 1);
    }

    if (v21 + 18 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_1835;
    }

    if (v21 + 18 >= 0x17)
    {
      operator new();
    }

    v728 = 0;
    __dst = 0uLL;
    HIBYTE(v728) = v21 + 18;
    if (v20 >= 0)
    {
      v30 = v7;
    }

    else
    {
      v30 = *v7;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_1834;
    }

    v31 = &__dst + v21;
    if (v30 >= &__dst && v31 > v30)
    {
      goto LABEL_1834;
    }

    if (v21)
    {
      memmove(&__dst, v30, v21);
    }

    if (v31 <= "InputWidthInPixels" && v31 + 18 > "InputWidthInPixels")
    {
      goto LABEL_1834;
    }

    strcpy(v31, "InputWidthInPixels");
    CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (SHIBYTE(v728) < 0)
    {
      v32 = CountsLinear;
      operator delete(__dst);
      CountsLinear = v32;
    }

    v33 = 0;
    atomic_compare_exchange_strong(&_MergedGlobals_22, &v33, CountsLinear);
    if (CountsLinear)
    {
LABEL_71:
      webrtc::metrics::HistogramAdd(CountsLinear, v13);
    }

    v26 = &qword_28100BBE8;
    v27 = atomic_load_explicit(&qword_28100BBE8, memory_order_acquire);
    if (!v27)
    {
      v34 = v7[23];
      if (v34 >= 0)
      {
        v29 = v7[23];
      }

      else
      {
        v29 = *(v7 + 1);
      }

      if (v29 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v29 + 19 >= 0x17)
      {
        operator new();
      }

      v728 = 0;
      __dst = 0uLL;
      HIBYTE(v728) = v29 + 19;
      if (v34 >= 0)
      {
        v35 = v7;
      }

      else
      {
        v35 = *v7;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_1834;
      }

      v36 = &__dst + v29;
      if (v35 >= &__dst && v36 > v35)
      {
        goto LABEL_1834;
      }

LABEL_92:
      if (v29)
      {
        memmove(&__dst, v35, v29);
      }

      if (v36 <= "InputHeightInPixels" && v36 + 19 > "InputHeightInPixels")
      {
        goto LABEL_1834;
      }

      strcpy(v36, "InputHeightInPixels");
      v27 = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (SHIBYTE(v728) < 0)
      {
        v37 = v27;
        operator delete(__dst);
        v27 = v37;
      }

      v38 = 0;
      atomic_compare_exchange_strong(v26, &v38, v27);
      if (!v27)
      {
        goto LABEL_100;
      }
    }
  }

  webrtc::metrics::HistogramAdd(v27, v15);
LABEL_100:
  v39 = v7[23];
  if ((v39 & 0x8000000000000000) != 0)
  {
    v40 = *v7;
    v39 = *(v7 + 1);
  }

  else
  {
    v40 = v7;
  }

  if (v39 >= v730 + ~*(&v730 + 1))
  {
    v41 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v41 = v39;
  }

  memcpy(&v729[*(&v730 + 1)], v40, v41);
  *(&v730 + 1) += v41;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x13uLL)
  {
    v42 = 19;
  }

  else
  {
    v42 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "InputWidthInPixels ", v42);
  *(&v730 + 1) += v42;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%d", v13);
  v43 = v730;
  v44 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v45 = *(&v730 + 1);
  if (v43 != v44)
  {
    v45 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v45;
  v729[v45] = 0;
  v46 = v7[23];
  if ((v46 & 0x8000000000000000) != 0)
  {
    v47 = *v7;
    v46 = *(v7 + 1);
  }

  else
  {
    v47 = v7;
  }

  if (v46 >= v730 + ~*(&v730 + 1))
  {
    v48 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v48 = v46;
  }

  memcpy(&v729[*(&v730 + 1)], v47, v48);
  *(&v730 + 1) += v48;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x14uLL)
  {
    v49 = 20;
  }

  else
  {
    v49 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "InputHeightInPixels ", v49);
  *(&v730 + 1) += v49;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%d", v15);
  v50 = v730;
  v51 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v52 = *(&v730 + 1);
  if (v50 != v51)
  {
    v52 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v52;
  v729[v52] = 0;
LABEL_123:
  v53 = *(v7 + 41);
  v56 = *(v53 + 16);
  v54 = (v53 + 16);
  v55 = v56;
  if (v56)
  {
    *(*(v7 + 41) + 32) = (*(*(v7 + 41) + 8) + v55 / 2) / v55;
  }

  __dst = *v54;
  v728 = *(v54 + 2);
  if (__dst < 6)
  {
LABEL_179:
    v77 = *(v7 + 9);
    if (v77 < 200)
    {
      goto LABEL_180;
    }

    goto LABEL_184;
  }

  if ((v11 & 1) == 0)
  {
    v57 = &qword_28100BBF8;
    v58 = atomic_load_explicit(&qword_28100BBF8, memory_order_acquire);
    if (!v58)
    {
      v62 = v7[23];
      if (v62 >= 0)
      {
        v60 = v7[23];
      }

      else
      {
        v60 = *(v7 + 1);
      }

      if (v60 + 20 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v60 + 20 < 0x17)
      {
        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v60 + 20;
        if (v62 >= 0)
        {
          v61 = v7;
        }

        else
        {
          v61 = *v7;
        }

        if ((v60 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        goto LABEL_149;
      }

LABEL_144:
      operator new();
    }

LABEL_158:
    webrtc::metrics::HistogramAdd(v58, v728);
    goto LABEL_159;
  }

  v57 = &qword_28100BC00;
  v58 = atomic_load_explicit(&qword_28100BC00, memory_order_acquire);
  if (v58)
  {
    goto LABEL_158;
  }

  v59 = v7[23];
  if (v59 >= 0)
  {
    v60 = v7[23];
  }

  else
  {
    v60 = *(v7 + 1);
  }

  if (v60 + 20 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_1835;
  }

  if (v60 + 20 >= 0x17)
  {
    goto LABEL_144;
  }

  memset(&__p, 0, sizeof(__p));
  *(&__p.__r_.__value_.__s + 23) = v60 + 20;
  if (v59 >= 0)
  {
    v61 = v7;
  }

  else
  {
    v61 = *v7;
  }

  if ((v60 & 0x8000000000000000) != 0)
  {
    goto LABEL_1834;
  }

LABEL_149:
  v63 = &__p + v60;
  if (v61 >= &__p && v63 > v61)
  {
    goto LABEL_1834;
  }

  if (v60)
  {
    memmove(&__p, v61, v60);
  }

  if (v63 <= "InputFramesPerSecond" && v63 + 20 > "InputFramesPerSecond")
  {
    goto LABEL_1834;
  }

  strcpy(v63, "InputFramesPerSecond");
  v58 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v64 = v58;
    operator delete(__p.__r_.__value_.__l.__data_);
    v58 = v64;
  }

  v65 = 0;
  atomic_compare_exchange_strong(v57, &v65, v58);
  if (v58)
  {
    goto LABEL_158;
  }

LABEL_159:
  v66 = v7[23];
  if ((v66 & 0x8000000000000000) != 0)
  {
    v67 = *v7;
    v66 = *(v7 + 1);
  }

  else
  {
    v67 = v7;
  }

  if (v66 >= v730 + ~*(&v730 + 1))
  {
    v68 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v68 = v66;
  }

  memcpy(&v729[*(&v730 + 1)], v67, v68);
  *(&v730 + 1) += v68;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x15uLL)
  {
    v69 = 21;
  }

  else
  {
    v69 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "InputFramesPerSecond ", v69);
  *(&v730 + 1) += v69;
  v729[*(&v730 + 1)] = 0;
  webrtc::AggregatedStats::ToStringWithMultiplier(&__dst, 1, v70, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size >= v730 + ~*(&v730 + 1))
  {
    v73 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v73 = size;
  }

  memcpy(&v729[*(&v730 + 1)], p_p, v73);
  *(&v730 + 1) += v73;
  v729[*(&v730 + 1)] = 0;
  v74 = v730;
  v75 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v76 = *(&v730 + 1);
  if (v74 != v75)
  {
    v76 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v76;
  v729[v76] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_179;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v77 = *(v7 + 9);
  if (v77 < 200)
  {
LABEL_180:
    LODWORD(v78) = -1;
    v79 = *(v7 + 11);
    if (v79 >= 200)
    {
      goto LABEL_181;
    }

LABEL_185:
    v80 = 0xFFFFFFFFLL;
    if (v78 == -1)
    {
      goto LABEL_284;
    }

    goto LABEL_186;
  }

LABEL_184:
  v78 = (*(v7 + 8) + (v77 >> 1)) / v77;
  v79 = *(v7 + 11);
  if (v79 < 200)
  {
    goto LABEL_185;
  }

LABEL_181:
  v80 = (*(v7 + 10) + (v79 >> 1)) / v79;
  if (v78 == -1)
  {
    goto LABEL_284;
  }

LABEL_186:
  if (v11)
  {
    v81 = atomic_load_explicit(&qword_28100BC10, memory_order_acquire);
    if (v81)
    {
      goto LABEL_214;
    }

    v82 = v7[23];
    if (v82 >= 0)
    {
      v83 = v7[23];
    }

    else
    {
      v83 = *(v7 + 1);
    }

    if (v83 + 17 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_1835;
    }

    if (v83 + 17 >= 0x17)
    {
      operator new();
    }

    memset(&__p, 0, sizeof(__p));
    *(&__p.__r_.__value_.__s + 23) = v83 + 17;
    if (v82 >= 0)
    {
      v87 = v7;
    }

    else
    {
      v87 = *v7;
    }

    if ((v83 & 0x8000000000000000) != 0)
    {
      goto LABEL_1834;
    }

    v88 = &__p + v83;
    if (v87 >= &__p && v88 > v87)
    {
      goto LABEL_1834;
    }

    if (v83)
    {
      memmove(&__p, v87, v83);
    }

    if (v88 <= "SentWidthInPixels" && v88 + 17 > "SentWidthInPixels")
    {
      goto LABEL_1834;
    }

    strcpy(v88, "SentWidthInPixels");
    v81 = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v89 = v81;
      operator delete(__p.__r_.__value_.__l.__data_);
      v81 = v89;
    }

    v90 = 0;
    atomic_compare_exchange_strong(&qword_28100BC10, &v90, v81);
    if (v81)
    {
LABEL_214:
      webrtc::metrics::HistogramAdd(v81, v78);
    }

    v91 = &qword_28100BC20;
    v92 = atomic_load_explicit(&qword_28100BC20, memory_order_acquire);
    if (!v92)
    {
      v93 = v7[23];
      if (v93 >= 0)
      {
        v94 = v7[23];
      }

      else
      {
        v94 = *(v7 + 1);
      }

      if (v94 + 18 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v94 + 18 < 0x17)
      {
        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v94 + 18;
        if (v93 >= 0)
        {
          v95 = v7;
        }

        else
        {
          v95 = *v7;
        }

        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

LABEL_251:
        v101 = &__p + v94;
        if (v95 >= &__p && v101 > v95)
        {
          goto LABEL_1834;
        }

        if (v94)
        {
          memmove(&__p, v95, v94);
        }

        if (v101 <= "SentHeightInPixels" && v101 + 18 > "SentHeightInPixels")
        {
          goto LABEL_1834;
        }

        strcpy(v101, "SentHeightInPixels");
        v92 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v102 = v92;
          operator delete(__p.__r_.__value_.__l.__data_);
          v92 = v102;
        }

        v103 = 0;
        atomic_compare_exchange_strong(v91, &v103, v92);
        if (!v92)
        {
          goto LABEL_261;
        }

        goto LABEL_260;
      }

      goto LABEL_246;
    }
  }

  else
  {
    v84 = atomic_load_explicit(&qword_28100BC08, memory_order_acquire);
    if (v84)
    {
      goto LABEL_239;
    }

    v85 = v7[23];
    if (v85 >= 0)
    {
      v86 = v7[23];
    }

    else
    {
      v86 = *(v7 + 1);
    }

    if (v86 + 17 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_1835;
    }

    if (v86 + 17 >= 0x17)
    {
      operator new();
    }

    memset(&__p, 0, sizeof(__p));
    *(&__p.__r_.__value_.__s + 23) = v86 + 17;
    if (v85 >= 0)
    {
      v96 = v7;
    }

    else
    {
      v96 = *v7;
    }

    if ((v86 & 0x8000000000000000) != 0)
    {
      goto LABEL_1834;
    }

    v97 = &__p + v86;
    if (v96 >= &__p && v97 > v96)
    {
      goto LABEL_1834;
    }

    if (v86)
    {
      memmove(&__p, v96, v86);
    }

    if (v97 <= "SentWidthInPixels" && v97 + 17 > "SentWidthInPixels")
    {
      goto LABEL_1834;
    }

    strcpy(v97, "SentWidthInPixels");
    v84 = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v98 = v84;
      operator delete(__p.__r_.__value_.__l.__data_);
      v84 = v98;
    }

    v99 = 0;
    atomic_compare_exchange_strong(&qword_28100BC08, &v99, v84);
    if (v84)
    {
LABEL_239:
      webrtc::metrics::HistogramAdd(v84, v78);
    }

    v91 = &qword_28100BC18;
    v92 = atomic_load_explicit(&qword_28100BC18, memory_order_acquire);
    if (!v92)
    {
      v100 = v7[23];
      if (v100 >= 0)
      {
        v94 = v7[23];
      }

      else
      {
        v94 = *(v7 + 1);
      }

      if (v94 + 18 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v94 + 18 < 0x17)
      {
        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v94 + 18;
        if (v100 >= 0)
        {
          v95 = v7;
        }

        else
        {
          v95 = *v7;
        }

        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        goto LABEL_251;
      }

LABEL_246:
      operator new();
    }
  }

LABEL_260:
  webrtc::metrics::HistogramAdd(v92, v80);
LABEL_261:
  v104 = v7[23];
  if ((v104 & 0x8000000000000000) != 0)
  {
    v105 = *v7;
    v104 = *(v7 + 1);
  }

  else
  {
    v105 = v7;
  }

  if (v104 >= v730 + ~*(&v730 + 1))
  {
    v106 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v106 = v104;
  }

  memcpy(&v729[*(&v730 + 1)], v105, v106);
  *(&v730 + 1) += v106;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x12uLL)
  {
    v107 = 18;
  }

  else
  {
    v107 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "SentWidthInPixels ", v107);
  *(&v730 + 1) += v107;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%d", v78);
  v108 = v730;
  v109 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v110 = *(&v730 + 1);
  if (v108 != v109)
  {
    v110 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v110;
  v729[v110] = 0;
  v111 = v7[23];
  if ((v111 & 0x8000000000000000) != 0)
  {
    v112 = *v7;
    v111 = *(v7 + 1);
  }

  else
  {
    v112 = v7;
  }

  if (v111 >= v730 + ~*(&v730 + 1))
  {
    v113 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v113 = v111;
  }

  memcpy(&v729[*(&v730 + 1)], v112, v113);
  *(&v730 + 1) += v113;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x13uLL)
  {
    v114 = 19;
  }

  else
  {
    v114 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "SentHeightInPixels ", v114);
  *(&v730 + 1) += v114;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%d", v80);
  v115 = v730;
  v116 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v117 = *(&v730 + 1);
  if (v115 != v116)
  {
    v117 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v117;
  v729[v117] = 0;
LABEL_284:
  v118 = *(v7 + 52);
  v121 = *(v118 + 16);
  v119 = (v118 + 16);
  v120 = v121;
  if (v121)
  {
    *(*(v7 + 52) + 32) = (*(*(v7 + 52) + 8) + v120 / 2) / v120;
  }

  __p = *v119;
  if (__p.__r_.__value_.__l.__data_ < 6)
  {
    goto LABEL_355;
  }

  if (v11)
  {
    v122 = &qword_28100BC30;
    v123 = atomic_load_explicit(&qword_28100BC30, memory_order_acquire);
    if (!v123)
    {
      v124 = v7[23];
      if (v124 >= 0)
      {
        v125 = v7[23];
      }

      else
      {
        v125 = *(v7 + 1);
      }

      if (v125 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v125 + 19 < 0x17)
      {
        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v125 + 19;
        if (v124 >= 0)
        {
          v126 = v7;
        }

        else
        {
          v126 = *v7;
        }

        if ((v125 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

LABEL_310:
        v128 = &v725 + v125;
        if (v126 >= &v725 && v128 > v126)
        {
          goto LABEL_1834;
        }

        if (v125)
        {
          memmove(&v725, v126, v125);
        }

        if (v128 <= "SentFramesPerSecond" && v128 + 19 > "SentFramesPerSecond")
        {
          goto LABEL_1834;
        }

        strcpy(v128, "SentFramesPerSecond");
        v123 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
        {
          v129 = v123;
          operator delete(v725.__r_.__value_.__l.__data_);
          v123 = v129;
        }

        v130 = 0;
        atomic_compare_exchange_strong(v122, &v130, v123);
        if (!v123)
        {
          goto LABEL_320;
        }

        goto LABEL_319;
      }

      goto LABEL_305;
    }
  }

  else
  {
    v122 = &qword_28100BC28;
    v123 = atomic_load_explicit(&qword_28100BC28, memory_order_acquire);
    if (!v123)
    {
      v127 = v7[23];
      if (v127 >= 0)
      {
        v125 = v7[23];
      }

      else
      {
        v125 = *(v7 + 1);
      }

      if (v125 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v125 + 19 < 0x17)
      {
        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v125 + 19;
        if (v127 >= 0)
        {
          v126 = v7;
        }

        else
        {
          v126 = *v7;
        }

        if ((v125 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        goto LABEL_310;
      }

LABEL_305:
      operator new();
    }
  }

LABEL_319:
  webrtc::metrics::HistogramAdd(v123, __p.__r_.__value_.__r.__words[2]);
LABEL_320:
  v131 = v7[23];
  if ((v131 & 0x8000000000000000) != 0)
  {
    v132 = *v7;
    v131 = *(v7 + 1);
  }

  else
  {
    v132 = v7;
  }

  if (v131 >= v730 + ~*(&v730 + 1))
  {
    v133 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v133 = v131;
  }

  memcpy(&v729[*(&v730 + 1)], v132, v133);
  *(&v730 + 1) += v133;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x14uLL)
  {
    v134 = 20;
  }

  else
  {
    v134 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "SentFramesPerSecond ", v134);
  *(&v730 + 1) += v134;
  v729[*(&v730 + 1)] = 0;
  webrtc::AggregatedStats::ToStringWithMultiplier(&__p, 1, v135, &v725);
  v136 = HIBYTE(v725.__r_.__value_.__r.__words[2]);
  if ((v725.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v137 = &v725;
  }

  else
  {
    v137 = v725.__r_.__value_.__r.__words[0];
  }

  if ((v725.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v136 = v725.__r_.__value_.__l.__size_;
  }

  if (v136 >= v730 + ~*(&v730 + 1))
  {
    v80 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v80 = v136;
  }

  memcpy(&v729[*(&v730 + 1)], v137, v80);
  *(&v730 + 1) += v80;
  v729[*(&v730 + 1)] = 0;
  v138 = v730;
  v139 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v140 = *(&v730 + 1);
  if (v138 != v139)
  {
    v140 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v140;
  v729[v140] = 0;
  if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v725.__r_.__value_.__l.__data_);
    if (__dst < 7)
    {
      goto LABEL_355;
    }
  }

  else if (__dst < 7)
  {
    goto LABEL_355;
  }

  if (__p.__r_.__value_.__l.__data_ >= 6 && v728 >= 1)
  {
    if (v7[23] >= 0)
    {
      v141 = v7[23];
    }

    else
    {
      v141 = *(v7 + 1);
    }

    v142 = v141 + 26;
    if (v11)
    {
      if ((v141 + 26) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v142 >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if ((v141 + 26) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v142 >= 0x17)
      {
        operator new();
      }
    }

    goto LABEL_1834;
  }

LABEL_355:
  v143 = *(v7 + 13);
  if (v143 < 200)
  {
    goto LABEL_402;
  }

  v80 = (*(v7 + 12) + (v143 >> 1)) / v143;
  if (v80 == -1)
  {
    goto LABEL_402;
  }

  if (v11)
  {
    v144 = &qword_28100BC40;
    v145 = atomic_load_explicit(&qword_28100BC40, memory_order_acquire);
    if (!v145)
    {
      v146 = v7[23];
      if (v146 >= 0)
      {
        v147 = v7[23];
      }

      else
      {
        v147 = *(v7 + 1);
      }

      if (v147 + 14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v147 + 14 < 0x17)
      {
        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v147 + 14;
        if (v146 >= 0)
        {
          v148 = v7;
        }

        else
        {
          v148 = *v7;
        }

        if ((v147 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

LABEL_380:
        v150 = &v725 + v147;
        if (v148 >= &v725 && v150 > v148)
        {
          goto LABEL_1834;
        }

        if (v147)
        {
          memmove(&v725, v148, v147);
        }

        if (v150 <= "EncodeTimeInMs" && v150 + 14 > "EncodeTimeInMs")
        {
          goto LABEL_1834;
        }

        strcpy(v150, "EncodeTimeInMs");
        v145 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
        {
          v151 = v145;
          operator delete(v725.__r_.__value_.__l.__data_);
          v145 = v151;
        }

        v152 = 0;
        atomic_compare_exchange_strong(v144, &v152, v145);
        if (!v145)
        {
          goto LABEL_390;
        }

        goto LABEL_389;
      }

      goto LABEL_375;
    }
  }

  else
  {
    v144 = &qword_28100BC38;
    v145 = atomic_load_explicit(&qword_28100BC38, memory_order_acquire);
    if (!v145)
    {
      v149 = v7[23];
      if (v149 >= 0)
      {
        v147 = v7[23];
      }

      else
      {
        v147 = *(v7 + 1);
      }

      if (v147 + 14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v147 + 14 < 0x17)
      {
        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v147 + 14;
        if (v149 >= 0)
        {
          v148 = v7;
        }

        else
        {
          v148 = *v7;
        }

        if ((v147 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        goto LABEL_380;
      }

LABEL_375:
      operator new();
    }
  }

LABEL_389:
  webrtc::metrics::HistogramAdd(v145, v80);
LABEL_390:
  v153 = v7[23];
  if ((v153 & 0x8000000000000000) != 0)
  {
    v154 = *v7;
    v153 = *(v7 + 1);
  }

  else
  {
    v154 = v7;
  }

  if (v153 >= v730 + ~*(&v730 + 1))
  {
    v155 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v155 = v153;
  }

  memcpy(&v729[*(&v730 + 1)], v154, v155);
  *(&v730 + 1) += v155;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0xFuLL)
  {
    v156 = 15;
  }

  else
  {
    v156 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "EncodeTimeInMs ", v156);
  *(&v730 + 1) += v156;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%d", v80);
  v157 = v730;
  v158 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v159 = *(&v730 + 1);
  if (v157 != v158)
  {
    v159 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v159;
  v729[v159] = 0;
LABEL_402:
  v160 = *(v7 + 15);
  if (v160 >= 200)
  {
    v80 = (((*(v7 + 14) * 1000.0) / v160) + 0.5);
    if (v80 != -1)
    {
      if (v11)
      {
        v161 = atomic_load_explicit(&qword_28100BC50, memory_order_acquire);
        if (!v161)
        {
          if (v7[23] >= 0)
          {
            v162 = v7[23];
          }

          else
          {
            v162 = *(v7 + 1);
          }

          if (v162 + 23 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v162 >= 0xFFFFFFFFFFFFFFE9)
            {
              goto LABEL_1834;
            }

            goto LABEL_418;
          }

          goto LABEL_1835;
        }
      }

      else
      {
        v161 = atomic_load_explicit(&qword_28100BC48, memory_order_acquire);
        if (!v161)
        {
          if (v7[23] >= 0)
          {
            v163 = v7[23];
          }

          else
          {
            v163 = *(v7 + 1);
          }

          if (v163 + 23 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v163 >= 0xFFFFFFFFFFFFFFE9)
            {
LABEL_1834:
              __break(1u);
              goto LABEL_1835;
            }

LABEL_418:
            operator new();
          }

LABEL_1835:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      webrtc::metrics::HistogramAdd(v161, v80);
      v164 = v7[23];
      if ((v164 & 0x8000000000000000) != 0)
      {
        v165 = *v7;
        v164 = *(v7 + 1);
      }

      else
      {
        v165 = v7;
      }

      if (v164 >= v730 + ~*(&v730 + 1))
      {
        v166 = v730 + ~*(&v730 + 1);
      }

      else
      {
        v166 = v164;
      }

      memcpy(&v729[*(&v730 + 1)], v165, v166);
      *(&v730 + 1) += v166;
      v729[*(&v730 + 1)] = 0;
      if (v730 + ~*(&v730 + 1) >= 0x18uLL)
      {
        v167 = 24;
      }

      else
      {
        v167 = v730 + ~*(&v730 + 1);
      }

      memcpy(&v729[*(&v730 + 1)], "KeyFramesSentInPermille ", v167);
      *(&v730 + 1) += v167;
      v729[*(&v730 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v729, "%d", v80);
      v168 = v730;
      v169 = *(&v730 + 1) + 1;
      memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
      v170 = *(&v730 + 1);
      if (v168 != v169)
      {
        v170 = *(&v730 + 1) + 1;
      }

      *(&v730 + 1) = v170;
      v729[v170] = 0;
    }
  }

  v171 = *(v7 + 17);
  if (v171 >= 200 && (((*(v7 + 16) * 100.0) / v171) + 0.5) != -1)
  {
    if (v7[23] >= 0)
    {
      v172 = v7[23];
    }

    else
    {
      v172 = *(v7 + 1);
    }

    v173 = v172 + 33;
    if (v11)
    {
      if ((v172 + 33) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v173 >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if ((v172 + 33) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v173 >= 0x17)
      {
        operator new();
      }
    }

    goto LABEL_1834;
  }

  v174 = *(v7 + 19);
  if (v174 >= 200 && ((*(v7 + 18) + (v174 >> 1)) / v174) != -1)
  {
    if (v7[23] >= 0)
    {
      v175 = v7[23];
    }

    else
    {
      v175 = *(v7 + 1);
    }

    v176 = v175 + 34;
    if (v11)
    {
      if ((v175 + 34) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v176 >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if ((v175 + 34) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v176 >= 0x17)
      {
        operator new();
      }
    }

    goto LABEL_1834;
  }

  v177 = *(v7 + 21);
  if (v177 >= 200 && (((*(v7 + 20) * 100.0) / v177) + 0.5) != -1)
  {
    if (v7[23] >= 0)
    {
      v178 = v7[23];
    }

    else
    {
      v178 = *(v7 + 1);
    }

    v179 = v178 + 29;
    if (v11)
    {
      if ((v178 + 29) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v179 >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if ((v178 + 29) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v179 >= 0x17)
      {
        operator new();
      }
    }

    goto LABEL_1834;
  }

  v180 = *(v7 + 23);
  if (v180 >= 200 && (((*(v7 + 22) * 100.0) / v180) + 0.5) != -1)
  {
    if (v7[23] >= 0)
    {
      v181 = v7[23];
    }

    else
    {
      v181 = *(v7 + 1);
    }

    v182 = v181 + 35;
    if (v11)
    {
      if ((v181 + 35) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v182 >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if ((v181 + 35) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v182 >= 0x17)
      {
        operator new();
      }
    }

    goto LABEL_1834;
  }

  v183 = *(v7 + 25);
  if (v183 >= 200 && ((*(v7 + 24) + (v183 >> 1)) / v183) != -1)
  {
    if (v7[23] >= 0)
    {
      v184 = v7[23];
    }

    else
    {
      v184 = *(v7 + 1);
    }

    v185 = v184 + 35;
    if (v11)
    {
      if ((v184 + 35) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v185 >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if ((v184 + 35) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v185 >= 0x17)
      {
        operator new();
      }
    }

    goto LABEL_1834;
  }

  v186 = *(v7 + 27);
  if (v186 < 200)
  {
    goto LABEL_526;
  }

  v80 = (*(v7 + 26) + (v186 >> 1)) / v186;
  if (v80 == -1)
  {
    goto LABEL_526;
  }

  if ((v11 & 1) == 0)
  {
    v187 = &qword_28100BC58;
    v188 = atomic_load_explicit(&qword_28100BC58, memory_order_acquire);
    if (!v188)
    {
      v192 = v7[23];
      if (v192 >= 0)
      {
        v190 = v7[23];
      }

      else
      {
        v190 = *(v7 + 1);
      }

      if (v190 + 17 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v190 + 17 < 0x17)
      {
        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v190 + 17;
        if (v192 >= 0)
        {
          v191 = v7;
        }

        else
        {
          v191 = *v7;
        }

        if ((v190 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        goto LABEL_516;
      }

LABEL_511:
      operator new();
    }

LABEL_525:
    webrtc::metrics::HistogramAdd(v188, v80);
    goto LABEL_526;
  }

  v187 = &qword_28100BC60;
  v188 = atomic_load_explicit(&qword_28100BC60, memory_order_acquire);
  if (v188)
  {
    goto LABEL_525;
  }

  v189 = v7[23];
  if (v189 >= 0)
  {
    v190 = v7[23];
  }

  else
  {
    v190 = *(v7 + 1);
  }

  if (v190 + 17 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_1835;
  }

  if (v190 + 17 >= 0x17)
  {
    goto LABEL_511;
  }

  memset(&v725, 0, sizeof(v725));
  *(&v725.__r_.__value_.__s + 23) = v190 + 17;
  if (v189 >= 0)
  {
    v191 = v7;
  }

  else
  {
    v191 = *v7;
  }

  if ((v190 & 0x8000000000000000) != 0)
  {
    goto LABEL_1834;
  }

LABEL_516:
  v193 = &v725 + v190;
  if (v191 >= &v725 && v193 > v191)
  {
    goto LABEL_1834;
  }

  if (v190)
  {
    memmove(&v725, v191, v190);
  }

  if (v193 <= "SendSideDelayInMs" && v193 + 17 > "SendSideDelayInMs")
  {
    goto LABEL_1834;
  }

  strcpy(v193, "SendSideDelayInMs");
  v188 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
  {
    v194 = v188;
    operator delete(v725.__r_.__value_.__l.__data_);
    v188 = v194;
  }

  v195 = 0;
  atomic_compare_exchange_strong(v187, &v195, v188);
  if (v188)
  {
    goto LABEL_525;
  }

LABEL_526:
  v196 = *(v7 + 29);
  if (v196 < 200)
  {
    goto LABEL_561;
  }

  v80 = (*(v7 + 28) + (v196 >> 1)) / v196;
  if (v80 == -1)
  {
    goto LABEL_561;
  }

  if ((v11 & 1) == 0)
  {
    v197 = &qword_28100BC68;
    v198 = atomic_load_explicit(&qword_28100BC68, memory_order_acquire);
    if (!v198)
    {
      v202 = v7[23];
      if (v202 >= 0)
      {
        v200 = v7[23];
      }

      else
      {
        v200 = *(v7 + 1);
      }

      if (v200 + 20 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v200 + 20 < 0x17)
      {
        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v200 + 20;
        if (v202 >= 0)
        {
          v201 = v7;
        }

        else
        {
          v201 = *v7;
        }

        if ((v200 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        goto LABEL_551;
      }

LABEL_546:
      operator new();
    }

LABEL_560:
    webrtc::metrics::HistogramAdd(v198, v80);
    goto LABEL_561;
  }

  v197 = &qword_28100BC70;
  v198 = atomic_load_explicit(&qword_28100BC70, memory_order_acquire);
  if (v198)
  {
    goto LABEL_560;
  }

  v199 = v7[23];
  if (v199 >= 0)
  {
    v200 = v7[23];
  }

  else
  {
    v200 = *(v7 + 1);
  }

  if (v200 + 20 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_1835;
  }

  if (v200 + 20 >= 0x17)
  {
    goto LABEL_546;
  }

  memset(&v725, 0, sizeof(v725));
  *(&v725.__r_.__value_.__s + 23) = v200 + 20;
  if (v199 >= 0)
  {
    v201 = v7;
  }

  else
  {
    v201 = *v7;
  }

  if ((v200 & 0x8000000000000000) != 0)
  {
    goto LABEL_1834;
  }

LABEL_551:
  v203 = &v725 + v200;
  if (v201 >= &v725 && v203 > v201)
  {
    goto LABEL_1834;
  }

  if (v200)
  {
    memmove(&v725, v201, v200);
  }

  if (v203 <= "SendSideDelayMaxInMs" && v203 + 20 > "SendSideDelayMaxInMs")
  {
    goto LABEL_1834;
  }

  strcpy(v203, "SendSideDelayMaxInMs");
  v198 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
  {
    v204 = v198;
    operator delete(v725.__r_.__value_.__l.__data_);
    v198 = v204;
  }

  v205 = 0;
  atomic_compare_exchange_strong(v197, &v205, v198);
  if (v198)
  {
    goto LABEL_560;
  }

LABEL_561:
  v718 = v5;
  v206 = *(v7 + 179);
  if (v206 != v7 + 1440)
  {
    do
    {
      v207 = *(v206 + 6);
      if (v207 < 200)
      {
        goto LABEL_661;
      }

      v208 = (*(v206 + 5) + (v207 >> 1)) / v207;
      if (v208 == -1)
      {
        goto LABEL_661;
      }

      v209 = *(v206 + 8);
      if (v209 > 0)
      {
        if (v209 == 1)
        {
          if (v11)
          {
            v210 = atomic_load_explicit(&qword_28100BCA0, memory_order_acquire);
            if (!v210)
            {
              v224 = v7[23];
              if (v224 >= 0)
              {
                v225 = v7[23];
              }

              else
              {
                v225 = *(v7 + 1);
              }

              if (v225 + 17 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_1835;
              }

              if (v225 + 17 >= 0x17)
              {
                operator new();
              }

              memset(&v725, 0, sizeof(v725));
              *(&v725.__r_.__value_.__s + 23) = v225 + 17;
              if (v224 >= 0)
              {
                v278 = v7;
              }

              else
              {
                v278 = *v7;
              }

              if ((v225 & 0x8000000000000000) != 0)
              {
                goto LABEL_1834;
              }

              v279 = &v725 + v225;
              if (v278 >= &v725 && v279 > v278)
              {
                goto LABEL_1834;
              }

              if (v225)
              {
                memmove(&v725, v278, v225);
              }

              if (v279 <= "Encoded.Qp.Vp8.S1" && v279 + 17 > "Encoded.Qp.Vp8.S1")
              {
                goto LABEL_1834;
              }

              strcpy(v279, "Encoded.Qp.Vp8.S1");
              v210 = webrtc::metrics::HistogramFactoryGetCountsLinear();
              if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
              {
                v374 = v210;
                operator delete(v725.__r_.__value_.__l.__data_);
                v210 = v374;
                v375 = 0;
                atomic_compare_exchange_strong(&qword_28100BCA0, &v375, v374);
                if (!v374)
                {
                  goto LABEL_661;
                }
              }

              else
              {
                v280 = 0;
                atomic_compare_exchange_strong(&qword_28100BCA0, &v280, v210);
                if (!v210)
                {
                  goto LABEL_661;
                }
              }
            }
          }

          else
          {
            v210 = atomic_load_explicit(&qword_28100BC98, memory_order_acquire);
            if (!v210)
            {
              v232 = v7[23];
              if (v232 >= 0)
              {
                v233 = v7[23];
              }

              else
              {
                v233 = *(v7 + 1);
              }

              if (v233 + 17 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_1835;
              }

              if (v233 + 17 >= 0x17)
              {
                operator new();
              }

              memset(&v725, 0, sizeof(v725));
              *(&v725.__r_.__value_.__s + 23) = v233 + 17;
              if (v232 >= 0)
              {
                v284 = v7;
              }

              else
              {
                v284 = *v7;
              }

              if ((v233 & 0x8000000000000000) != 0)
              {
                goto LABEL_1834;
              }

              v285 = &v725 + v233;
              if (v284 >= &v725 && v285 > v284)
              {
                goto LABEL_1834;
              }

              if (v233)
              {
                memmove(&v725, v284, v233);
              }

              if (v285 <= "Encoded.Qp.Vp8.S1" && v285 + 17 > "Encoded.Qp.Vp8.S1")
              {
                goto LABEL_1834;
              }

              strcpy(v285, "Encoded.Qp.Vp8.S1");
              v210 = webrtc::metrics::HistogramFactoryGetCountsLinear();
              if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
              {
                v378 = v210;
                operator delete(v725.__r_.__value_.__l.__data_);
                v210 = v378;
                v379 = 0;
                atomic_compare_exchange_strong(&qword_28100BC98, &v379, v378);
                if (!v378)
                {
                  goto LABEL_661;
                }
              }

              else
              {
                v286 = 0;
                atomic_compare_exchange_strong(&qword_28100BC98, &v286, v210);
                if (!v210)
                {
                  goto LABEL_661;
                }
              }
            }
          }

LABEL_660:
          webrtc::metrics::HistogramAdd(v210, v208);
          goto LABEL_661;
        }

        if (v209 != 2)
        {
LABEL_587:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            v716 = v716 & 0xFFFFFFFF00000000 | 0xED2;
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v215, v216, v217, v218, v219, v220, v221, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/send_statistics_proxy.cc");
          }

          goto LABEL_661;
        }

        if ((v11 & 1) == 0)
        {
          v210 = atomic_load_explicit(&qword_28100BCA8, memory_order_acquire);
          if (!v210)
          {
            v228 = v7[23];
            if (v228 >= 0)
            {
              v229 = v7[23];
            }

            else
            {
              v229 = *(v7 + 1);
            }

            if (v229 + 17 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1835;
            }

            if (v229 + 17 >= 0x17)
            {
              operator new();
            }

            memset(&v725, 0, sizeof(v725));
            *(&v725.__r_.__value_.__s + 23) = v229 + 17;
            if (v228 >= 0)
            {
              v272 = v7;
            }

            else
            {
              v272 = *v7;
            }

            if ((v229 & 0x8000000000000000) != 0)
            {
              goto LABEL_1834;
            }

            v273 = &v725 + v229;
            if (v272 >= &v725 && v273 > v272)
            {
              goto LABEL_1834;
            }

            if (v229)
            {
              memmove(&v725, v272, v229);
            }

            if (v273 <= "Encoded.Qp.Vp8.S2" && v273 + 17 > "Encoded.Qp.Vp8.S2")
            {
              goto LABEL_1834;
            }

            strcpy(v273, "Encoded.Qp.Vp8.S2");
            v210 = webrtc::metrics::HistogramFactoryGetCountsLinear();
            if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
            {
              v370 = v210;
              operator delete(v725.__r_.__value_.__l.__data_);
              v210 = v370;
              v371 = 0;
              atomic_compare_exchange_strong(&qword_28100BCA8, &v371, v370);
              if (!v370)
              {
                goto LABEL_661;
              }
            }

            else
            {
              v274 = 0;
              atomic_compare_exchange_strong(&qword_28100BCA8, &v274, v210);
              if (!v210)
              {
                goto LABEL_661;
              }
            }
          }

          goto LABEL_660;
        }

        v210 = atomic_load_explicit(&qword_28100BCB0, memory_order_acquire);
        if (v210)
        {
          goto LABEL_660;
        }

        v213 = v7[23];
        if (v213 >= 0)
        {
          v214 = v7[23];
        }

        else
        {
          v214 = *(v7 + 1);
        }

        if (v214 + 17 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v214 + 17 >= 0x17)
        {
          operator new();
        }

        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v214 + 17;
        if (v213 >= 0)
        {
          v238 = v7;
        }

        else
        {
          v238 = *v7;
        }

        if ((v214 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        v239 = &v725 + v214;
        if (v238 >= &v725 && v239 > v238)
        {
          goto LABEL_1834;
        }

        if (v214)
        {
          memmove(&v725, v238, v214);
        }

        if (v239 <= "Encoded.Qp.Vp8.S2" && v239 + 17 > "Encoded.Qp.Vp8.S2")
        {
          goto LABEL_1834;
        }

        strcpy(v239, "Encoded.Qp.Vp8.S2");
        v210 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
        {
          v240 = v210;
          operator delete(v725.__r_.__value_.__l.__data_);
          v210 = v240;
        }

        v241 = 0;
        atomic_compare_exchange_strong(&qword_28100BCB0, &v241, v210);
        if (v210)
        {
          goto LABEL_660;
        }
      }

      else
      {
        if (v209 == -1)
        {
          if (v11)
          {
            v210 = atomic_load_explicit(&qword_28100BC80, memory_order_acquire);
            if (!v210)
            {
              v222 = v7[23];
              if (v222 >= 0)
              {
                v223 = v7[23];
              }

              else
              {
                v223 = *(v7 + 1);
              }

              if (v223 + 14 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_1835;
              }

              if (v223 + 14 >= 0x17)
              {
                operator new();
              }

              memset(&v725, 0, sizeof(v725));
              *(&v725.__r_.__value_.__s + 23) = v223 + 14;
              if (v222 >= 0)
              {
                v275 = v7;
              }

              else
              {
                v275 = *v7;
              }

              if ((v223 & 0x8000000000000000) != 0)
              {
                goto LABEL_1834;
              }

              v276 = &v725 + v223;
              if (v275 >= &v725 && v276 > v275)
              {
                goto LABEL_1834;
              }

              if (v223)
              {
                memmove(&v725, v275, v223);
              }

              if (v276 <= "Encoded.Qp.Vp8" && v276 + 14 > "Encoded.Qp.Vp8")
              {
                goto LABEL_1834;
              }

              strcpy(v276, "Encoded.Qp.Vp8");
              v210 = webrtc::metrics::HistogramFactoryGetCountsLinear();
              if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
              {
                v372 = v210;
                operator delete(v725.__r_.__value_.__l.__data_);
                v210 = v372;
                v373 = 0;
                atomic_compare_exchange_strong(&qword_28100BC80, &v373, v372);
                if (!v372)
                {
                  goto LABEL_661;
                }
              }

              else
              {
                v277 = 0;
                atomic_compare_exchange_strong(&qword_28100BC80, &v277, v210);
                if (!v210)
                {
                  goto LABEL_661;
                }
              }
            }
          }

          else
          {
            v210 = atomic_load_explicit(&qword_28100BC78, memory_order_acquire);
            if (!v210)
            {
              v230 = v7[23];
              if (v230 >= 0)
              {
                v231 = v7[23];
              }

              else
              {
                v231 = *(v7 + 1);
              }

              if (v231 + 14 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_1835;
              }

              if (v231 + 14 >= 0x17)
              {
                operator new();
              }

              memset(&v725, 0, sizeof(v725));
              *(&v725.__r_.__value_.__s + 23) = v231 + 14;
              if (v230 >= 0)
              {
                v281 = v7;
              }

              else
              {
                v281 = *v7;
              }

              if ((v231 & 0x8000000000000000) != 0)
              {
                goto LABEL_1834;
              }

              v282 = &v725 + v231;
              if (v281 >= &v725 && v282 > v281)
              {
                goto LABEL_1834;
              }

              if (v231)
              {
                memmove(&v725, v281, v231);
              }

              if (v282 <= "Encoded.Qp.Vp8" && v282 + 14 > "Encoded.Qp.Vp8")
              {
                goto LABEL_1834;
              }

              strcpy(v282, "Encoded.Qp.Vp8");
              v210 = webrtc::metrics::HistogramFactoryGetCountsLinear();
              if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
              {
                v376 = v210;
                operator delete(v725.__r_.__value_.__l.__data_);
                v210 = v376;
                v377 = 0;
                atomic_compare_exchange_strong(&qword_28100BC78, &v377, v376);
                if (!v376)
                {
                  goto LABEL_661;
                }
              }

              else
              {
                v283 = 0;
                atomic_compare_exchange_strong(&qword_28100BC78, &v283, v210);
                if (!v210)
                {
                  goto LABEL_661;
                }
              }
            }
          }

          goto LABEL_660;
        }

        if (v209)
        {
          goto LABEL_587;
        }

        if ((v11 & 1) == 0)
        {
          v210 = atomic_load_explicit(&qword_28100BC88, memory_order_acquire);
          if (!v210)
          {
            v226 = v7[23];
            if (v226 >= 0)
            {
              v227 = v7[23];
            }

            else
            {
              v227 = *(v7 + 1);
            }

            if (v227 + 17 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1835;
            }

            if (v227 + 17 >= 0x17)
            {
              operator new();
            }

            memset(&v725, 0, sizeof(v725));
            *(&v725.__r_.__value_.__s + 23) = v227 + 17;
            if (v226 >= 0)
            {
              v269 = v7;
            }

            else
            {
              v269 = *v7;
            }

            if ((v227 & 0x8000000000000000) != 0)
            {
              goto LABEL_1834;
            }

            v270 = &v725 + v227;
            if (v269 >= &v725 && v270 > v269)
            {
              goto LABEL_1834;
            }

            if (v227)
            {
              memmove(&v725, v269, v227);
            }

            if (v270 <= "Encoded.Qp.Vp8.S0" && v270 + 17 > "Encoded.Qp.Vp8.S0")
            {
              goto LABEL_1834;
            }

            strcpy(v270, "Encoded.Qp.Vp8.S0");
            v210 = webrtc::metrics::HistogramFactoryGetCountsLinear();
            if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
            {
              v368 = v210;
              operator delete(v725.__r_.__value_.__l.__data_);
              v210 = v368;
              v369 = 0;
              atomic_compare_exchange_strong(&qword_28100BC88, &v369, v368);
              if (!v368)
              {
                goto LABEL_661;
              }
            }

            else
            {
              v271 = 0;
              atomic_compare_exchange_strong(&qword_28100BC88, &v271, v210);
              if (!v210)
              {
                goto LABEL_661;
              }
            }
          }

          goto LABEL_660;
        }

        v210 = atomic_load_explicit(&qword_28100BC90, memory_order_acquire);
        if (v210)
        {
          goto LABEL_660;
        }

        v211 = v7[23];
        if (v211 >= 0)
        {
          v212 = v7[23];
        }

        else
        {
          v212 = *(v7 + 1);
        }

        if (v212 + 17 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v212 + 17 >= 0x17)
        {
          operator new();
        }

        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v212 + 17;
        if (v211 >= 0)
        {
          v234 = v7;
        }

        else
        {
          v234 = *v7;
        }

        if ((v212 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        v235 = &v725 + v212;
        if (v234 >= &v725 && v235 > v234)
        {
          goto LABEL_1834;
        }

        if (v212)
        {
          memmove(&v725, v234, v212);
        }

        if (v235 <= "Encoded.Qp.Vp8.S0" && v235 + 17 > "Encoded.Qp.Vp8.S0")
        {
          goto LABEL_1834;
        }

        strcpy(v235, "Encoded.Qp.Vp8.S0");
        v210 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
        {
          v236 = v210;
          operator delete(v725.__r_.__value_.__l.__data_);
          v210 = v236;
        }

        v237 = 0;
        atomic_compare_exchange_strong(&qword_28100BC90, &v237, v210);
        if (v210)
        {
          goto LABEL_660;
        }
      }

LABEL_661:
      v242 = *(v206 + 8);
      if (v242 < 200)
      {
        goto LABEL_836;
      }

      v243 = (*(v206 + 7) + (v242 >> 1)) / v242;
      if (v243 == -1)
      {
        goto LABEL_836;
      }

      v244 = *(v206 + 8);
      if (v244 > 0)
      {
        if (v244 == 1)
        {
          if (v11)
          {
            v245 = atomic_load_explicit(&qword_28100BCE0, memory_order_acquire);
            if (!v245)
            {
              v259 = v7[23];
              if (v259 >= 0)
              {
                v260 = v7[23];
              }

              else
              {
                v260 = *(v7 + 1);
              }

              if (v260 + 17 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_1835;
              }

              if (v260 + 17 >= 0x17)
              {
                operator new();
              }

              memset(&v725, 0, sizeof(v725));
              *(&v725.__r_.__value_.__s + 23) = v260 + 17;
              if (v259 >= 0)
              {
                v331 = v7;
              }

              else
              {
                v331 = *v7;
              }

              if ((v260 & 0x8000000000000000) != 0)
              {
                goto LABEL_1834;
              }

              v332 = &v725 + v260;
              if (v331 >= &v725 && v332 > v331)
              {
                goto LABEL_1834;
              }

              if (v260)
              {
                memmove(&v725, v331, v260);
              }

              if (v332 <= "Encoded.Qp.Vp9.S1" && v332 + 17 > "Encoded.Qp.Vp9.S1")
              {
                goto LABEL_1834;
              }

              strcpy(v332, "Encoded.Qp.Vp9.S1");
              v245 = webrtc::metrics::HistogramFactoryGetCountsLinear();
              if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
              {
                v386 = v245;
                operator delete(v725.__r_.__value_.__l.__data_);
                v245 = v386;
                v387 = 0;
                atomic_compare_exchange_strong(&qword_28100BCE0, &v387, v386);
                if (!v386)
                {
                  goto LABEL_836;
                }
              }

              else
              {
                v333 = 0;
                atomic_compare_exchange_strong(&qword_28100BCE0, &v333, v245);
                if (!v245)
                {
                  goto LABEL_836;
                }
              }
            }
          }

          else
          {
            v245 = atomic_load_explicit(&qword_28100BCD8, memory_order_acquire);
            if (!v245)
            {
              v267 = v7[23];
              if (v267 >= 0)
              {
                v268 = v7[23];
              }

              else
              {
                v268 = *(v7 + 1);
              }

              if (v268 + 17 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_1835;
              }

              if (v268 + 17 >= 0x17)
              {
                operator new();
              }

              memset(&v725, 0, sizeof(v725));
              *(&v725.__r_.__value_.__s + 23) = v268 + 17;
              if (v267 >= 0)
              {
                v337 = v7;
              }

              else
              {
                v337 = *v7;
              }

              if ((v268 & 0x8000000000000000) != 0)
              {
                goto LABEL_1834;
              }

              v338 = &v725 + v268;
              if (v337 >= &v725 && v338 > v337)
              {
                goto LABEL_1834;
              }

              if (v268)
              {
                memmove(&v725, v337, v268);
              }

              if (v338 <= "Encoded.Qp.Vp9.S1" && v338 + 17 > "Encoded.Qp.Vp9.S1")
              {
                goto LABEL_1834;
              }

              strcpy(v338, "Encoded.Qp.Vp9.S1");
              v245 = webrtc::metrics::HistogramFactoryGetCountsLinear();
              if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
              {
                v390 = v245;
                operator delete(v725.__r_.__value_.__l.__data_);
                v245 = v390;
                v391 = 0;
                atomic_compare_exchange_strong(&qword_28100BCD8, &v391, v390);
                if (!v390)
                {
                  goto LABEL_836;
                }
              }

              else
              {
                v339 = 0;
                atomic_compare_exchange_strong(&qword_28100BCD8, &v339, v245);
                if (!v245)
                {
                  goto LABEL_836;
                }
              }
            }
          }

LABEL_835:
          webrtc::metrics::HistogramAdd(v245, v243);
          goto LABEL_836;
        }

        if (v244 != 2)
        {
LABEL_684:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            v715 = v715 & 0xFFFFFFFF00000000 | 0xF72;
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v250, v251, v252, v253, v254, v255, v256, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/send_statistics_proxy.cc");
          }

          goto LABEL_836;
        }

        if ((v11 & 1) == 0)
        {
          v245 = atomic_load_explicit(&qword_28100BCE8, memory_order_acquire);
          if (!v245)
          {
            v263 = v7[23];
            if (v263 >= 0)
            {
              v264 = v7[23];
            }

            else
            {
              v264 = *(v7 + 1);
            }

            if (v264 + 17 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1835;
            }

            if (v264 + 17 >= 0x17)
            {
              operator new();
            }

            memset(&v725, 0, sizeof(v725));
            *(&v725.__r_.__value_.__s + 23) = v264 + 17;
            if (v263 >= 0)
            {
              v325 = v7;
            }

            else
            {
              v325 = *v7;
            }

            if ((v264 & 0x8000000000000000) != 0)
            {
              goto LABEL_1834;
            }

            v326 = &v725 + v264;
            if (v325 >= &v725 && v326 > v325)
            {
              goto LABEL_1834;
            }

            if (v264)
            {
              memmove(&v725, v325, v264);
            }

            if (v326 <= "Encoded.Qp.Vp9.S2" && v326 + 17 > "Encoded.Qp.Vp9.S2")
            {
              goto LABEL_1834;
            }

            strcpy(v326, "Encoded.Qp.Vp9.S2");
            v245 = webrtc::metrics::HistogramFactoryGetCountsLinear();
            if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
            {
              v382 = v245;
              operator delete(v725.__r_.__value_.__l.__data_);
              v245 = v382;
              v383 = 0;
              atomic_compare_exchange_strong(&qword_28100BCE8, &v383, v382);
              if (!v382)
              {
                goto LABEL_836;
              }
            }

            else
            {
              v327 = 0;
              atomic_compare_exchange_strong(&qword_28100BCE8, &v327, v245);
              if (!v245)
              {
                goto LABEL_836;
              }
            }
          }

          goto LABEL_835;
        }

        v245 = atomic_load_explicit(&qword_28100BCF0, memory_order_acquire);
        if (v245)
        {
          goto LABEL_835;
        }

        v248 = v7[23];
        if (v248 >= 0)
        {
          v249 = v7[23];
        }

        else
        {
          v249 = *(v7 + 1);
        }

        if (v249 + 17 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v249 + 17 >= 0x17)
        {
          operator new();
        }

        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v249 + 17;
        if (v248 >= 0)
        {
          v291 = v7;
        }

        else
        {
          v291 = *v7;
        }

        if ((v249 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        v292 = &v725 + v249;
        if (v291 >= &v725 && v292 > v291)
        {
          goto LABEL_1834;
        }

        if (v249)
        {
          memmove(&v725, v291, v249);
        }

        if (v292 <= "Encoded.Qp.Vp9.S2" && v292 + 17 > "Encoded.Qp.Vp9.S2")
        {
          goto LABEL_1834;
        }

        strcpy(v292, "Encoded.Qp.Vp9.S2");
        v245 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
        {
          v293 = v245;
          operator delete(v725.__r_.__value_.__l.__data_);
          v245 = v293;
        }

        v294 = 0;
        atomic_compare_exchange_strong(&qword_28100BCF0, &v294, v245);
        if (v245)
        {
          goto LABEL_835;
        }
      }

      else
      {
        if (v244 == -1)
        {
          if (v11)
          {
            v245 = atomic_load_explicit(&qword_28100BCC0, memory_order_acquire);
            if (!v245)
            {
              v257 = v7[23];
              if (v257 >= 0)
              {
                v258 = v7[23];
              }

              else
              {
                v258 = *(v7 + 1);
              }

              if (v258 + 14 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_1835;
              }

              if (v258 + 14 >= 0x17)
              {
                operator new();
              }

              memset(&v725, 0, sizeof(v725));
              *(&v725.__r_.__value_.__s + 23) = v258 + 14;
              if (v257 >= 0)
              {
                v328 = v7;
              }

              else
              {
                v328 = *v7;
              }

              if ((v258 & 0x8000000000000000) != 0)
              {
                goto LABEL_1834;
              }

              v329 = &v725 + v258;
              if (v328 >= &v725 && v329 > v328)
              {
                goto LABEL_1834;
              }

              if (v258)
              {
                memmove(&v725, v328, v258);
              }

              if (v329 <= "Encoded.Qp.Vp9" && v329 + 14 > "Encoded.Qp.Vp9")
              {
                goto LABEL_1834;
              }

              strcpy(v329, "Encoded.Qp.Vp9");
              v245 = webrtc::metrics::HistogramFactoryGetCountsLinear();
              if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
              {
                v384 = v245;
                operator delete(v725.__r_.__value_.__l.__data_);
                v245 = v384;
                v385 = 0;
                atomic_compare_exchange_strong(&qword_28100BCC0, &v385, v384);
                if (!v384)
                {
                  goto LABEL_836;
                }
              }

              else
              {
                v330 = 0;
                atomic_compare_exchange_strong(&qword_28100BCC0, &v330, v245);
                if (!v245)
                {
                  goto LABEL_836;
                }
              }
            }
          }

          else
          {
            v245 = atomic_load_explicit(&qword_28100BCB8, memory_order_acquire);
            if (!v245)
            {
              v265 = v7[23];
              if (v265 >= 0)
              {
                v266 = v7[23];
              }

              else
              {
                v266 = *(v7 + 1);
              }

              if (v266 + 14 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_1835;
              }

              if (v266 + 14 >= 0x17)
              {
                operator new();
              }

              memset(&v725, 0, sizeof(v725));
              *(&v725.__r_.__value_.__s + 23) = v266 + 14;
              if (v265 >= 0)
              {
                v334 = v7;
              }

              else
              {
                v334 = *v7;
              }

              if ((v266 & 0x8000000000000000) != 0)
              {
                goto LABEL_1834;
              }

              v335 = &v725 + v266;
              if (v334 >= &v725 && v335 > v334)
              {
                goto LABEL_1834;
              }

              if (v266)
              {
                memmove(&v725, v334, v266);
              }

              if (v335 <= "Encoded.Qp.Vp9" && v335 + 14 > "Encoded.Qp.Vp9")
              {
                goto LABEL_1834;
              }

              strcpy(v335, "Encoded.Qp.Vp9");
              v245 = webrtc::metrics::HistogramFactoryGetCountsLinear();
              if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
              {
                v388 = v245;
                operator delete(v725.__r_.__value_.__l.__data_);
                v245 = v388;
                v389 = 0;
                atomic_compare_exchange_strong(&qword_28100BCB8, &v389, v388);
                if (!v388)
                {
                  goto LABEL_836;
                }
              }

              else
              {
                v336 = 0;
                atomic_compare_exchange_strong(&qword_28100BCB8, &v336, v245);
                if (!v245)
                {
                  goto LABEL_836;
                }
              }
            }
          }

          goto LABEL_835;
        }

        if (v244)
        {
          goto LABEL_684;
        }

        if ((v11 & 1) == 0)
        {
          v245 = atomic_load_explicit(&qword_28100BCC8, memory_order_acquire);
          if (!v245)
          {
            v261 = v7[23];
            if (v261 >= 0)
            {
              v262 = v7[23];
            }

            else
            {
              v262 = *(v7 + 1);
            }

            if (v262 + 17 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1835;
            }

            if (v262 + 17 >= 0x17)
            {
              operator new();
            }

            memset(&v725, 0, sizeof(v725));
            *(&v725.__r_.__value_.__s + 23) = v262 + 17;
            if (v261 >= 0)
            {
              v322 = v7;
            }

            else
            {
              v322 = *v7;
            }

            if ((v262 & 0x8000000000000000) != 0)
            {
              goto LABEL_1834;
            }

            v323 = &v725 + v262;
            if (v322 >= &v725 && v323 > v322)
            {
              goto LABEL_1834;
            }

            if (v262)
            {
              memmove(&v725, v322, v262);
            }

            if (v323 <= "Encoded.Qp.Vp9.S0" && v323 + 17 > "Encoded.Qp.Vp9.S0")
            {
              goto LABEL_1834;
            }

            strcpy(v323, "Encoded.Qp.Vp9.S0");
            v245 = webrtc::metrics::HistogramFactoryGetCountsLinear();
            if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
            {
              v380 = v245;
              operator delete(v725.__r_.__value_.__l.__data_);
              v245 = v380;
              v381 = 0;
              atomic_compare_exchange_strong(&qword_28100BCC8, &v381, v380);
              if (!v380)
              {
                goto LABEL_836;
              }
            }

            else
            {
              v324 = 0;
              atomic_compare_exchange_strong(&qword_28100BCC8, &v324, v245);
              if (!v245)
              {
                goto LABEL_836;
              }
            }
          }

          goto LABEL_835;
        }

        v245 = atomic_load_explicit(&qword_28100BCD0, memory_order_acquire);
        if (v245)
        {
          goto LABEL_835;
        }

        v246 = v7[23];
        if (v246 >= 0)
        {
          v247 = v7[23];
        }

        else
        {
          v247 = *(v7 + 1);
        }

        if (v247 + 17 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v247 + 17 >= 0x17)
        {
          operator new();
        }

        memset(&v725, 0, sizeof(v725));
        *(&v725.__r_.__value_.__s + 23) = v247 + 17;
        if (v246 >= 0)
        {
          v287 = v7;
        }

        else
        {
          v287 = *v7;
        }

        if ((v247 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        v288 = &v725 + v247;
        if (v287 >= &v725 && v288 > v287)
        {
          goto LABEL_1834;
        }

        if (v247)
        {
          memmove(&v725, v287, v247);
        }

        if (v288 <= "Encoded.Qp.Vp9.S0" && v288 + 17 > "Encoded.Qp.Vp9.S0")
        {
          goto LABEL_1834;
        }

        strcpy(v288, "Encoded.Qp.Vp9.S0");
        v245 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
        {
          v289 = v245;
          operator delete(v725.__r_.__value_.__l.__data_);
          v245 = v289;
        }

        v290 = 0;
        atomic_compare_exchange_strong(&qword_28100BCD0, &v290, v245);
        if (v245)
        {
          goto LABEL_835;
        }
      }

LABEL_836:
      v295 = *(v206 + 10);
      if (v295 >= 200)
      {
        v296 = (*(v206 + 9) + (v295 >> 1)) / v295;
        if (v296 != -1)
        {
          v297 = *(v206 + 8);
          if (v297 > 0)
          {
            if (v297 == 1)
            {
              if (v11)
              {
                v298 = atomic_load_explicit(&qword_28100BD20, memory_order_acquire);
                if (!v298)
                {
                  v312 = v7[23];
                  if (v312 >= 0)
                  {
                    v313 = v7[23];
                  }

                  else
                  {
                    v313 = *(v7 + 1);
                  }

                  if (v313 + 18 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_1835;
                  }

                  if (v313 + 18 >= 0x17)
                  {
                    operator new();
                  }

                  memset(&v725, 0, sizeof(v725));
                  *(&v725.__r_.__value_.__s + 23) = v313 + 18;
                  if (v312 >= 0)
                  {
                    v359 = v7;
                  }

                  else
                  {
                    v359 = *v7;
                  }

                  if ((v313 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1834;
                  }

                  v360 = &v725 + v313;
                  if (v359 >= &v725 && v360 > v359)
                  {
                    goto LABEL_1834;
                  }

                  if (v313)
                  {
                    memmove(&v725, v359, v313);
                  }

                  if (v360 <= "Encoded.Qp.H264.S1" && v360 + 18 > "Encoded.Qp.H264.S1")
                  {
                    goto LABEL_1834;
                  }

                  strcpy(v360, "Encoded.Qp.H264.S1");
                  v298 = webrtc::metrics::HistogramFactoryGetCountsLinear();
                  if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v398 = v298;
                    operator delete(v725.__r_.__value_.__l.__data_);
                    v298 = v398;
                    v399 = 0;
                    atomic_compare_exchange_strong(&qword_28100BD20, &v399, v398);
                    if (!v398)
                    {
                      goto LABEL_1011;
                    }
                  }

                  else
                  {
                    v361 = 0;
                    atomic_compare_exchange_strong(&qword_28100BD20, &v361, v298);
                    if (!v298)
                    {
                      goto LABEL_1011;
                    }
                  }
                }
              }

              else
              {
                v298 = atomic_load_explicit(&qword_28100BD18, memory_order_acquire);
                if (!v298)
                {
                  v320 = v7[23];
                  if (v320 >= 0)
                  {
                    v321 = v7[23];
                  }

                  else
                  {
                    v321 = *(v7 + 1);
                  }

                  if (v321 + 18 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_1835;
                  }

                  if (v321 + 18 >= 0x17)
                  {
                    operator new();
                  }

                  memset(&v725, 0, sizeof(v725));
                  *(&v725.__r_.__value_.__s + 23) = v321 + 18;
                  if (v320 >= 0)
                  {
                    v365 = v7;
                  }

                  else
                  {
                    v365 = *v7;
                  }

                  if ((v321 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1834;
                  }

                  v366 = &v725 + v321;
                  if (v365 >= &v725 && v366 > v365)
                  {
                    goto LABEL_1834;
                  }

                  if (v321)
                  {
                    memmove(&v725, v365, v321);
                  }

                  if (v366 <= "Encoded.Qp.H264.S1" && v366 + 18 > "Encoded.Qp.H264.S1")
                  {
                    goto LABEL_1834;
                  }

                  strcpy(v366, "Encoded.Qp.H264.S1");
                  v298 = webrtc::metrics::HistogramFactoryGetCountsLinear();
                  if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v402 = v298;
                    operator delete(v725.__r_.__value_.__l.__data_);
                    v298 = v402;
                    v403 = 0;
                    atomic_compare_exchange_strong(&qword_28100BD18, &v403, v402);
                    if (!v402)
                    {
                      goto LABEL_1011;
                    }
                  }

                  else
                  {
                    v367 = 0;
                    atomic_compare_exchange_strong(&qword_28100BD18, &v367, v298);
                    if (!v298)
                    {
                      goto LABEL_1011;
                    }
                  }
                }
              }

LABEL_1010:
              webrtc::metrics::HistogramAdd(v298, v296);
              goto LABEL_1011;
            }

            if (v297 != 2)
            {
LABEL_859:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
                v80 = v80 & 0xFFFFFFFF00000000 | 0x1012;
                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v303, v304, v305, v306, v307, v308, v309, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/send_statistics_proxy.cc");
              }

              goto LABEL_1011;
            }

            if ((v11 & 1) == 0)
            {
              v298 = atomic_load_explicit(&qword_28100BD28, memory_order_acquire);
              if (!v298)
              {
                v316 = v7[23];
                if (v316 >= 0)
                {
                  v317 = v7[23];
                }

                else
                {
                  v317 = *(v7 + 1);
                }

                if (v317 + 18 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_1835;
                }

                if (v317 + 18 >= 0x17)
                {
                  operator new();
                }

                memset(&v725, 0, sizeof(v725));
                *(&v725.__r_.__value_.__s + 23) = v317 + 18;
                if (v316 >= 0)
                {
                  v353 = v7;
                }

                else
                {
                  v353 = *v7;
                }

                if ((v317 & 0x8000000000000000) != 0)
                {
                  goto LABEL_1834;
                }

                v354 = &v725 + v317;
                if (v353 >= &v725 && v354 > v353)
                {
                  goto LABEL_1834;
                }

                if (v317)
                {
                  memmove(&v725, v353, v317);
                }

                if (v354 <= "Encoded.Qp.H264.S2" && v354 + 18 > "Encoded.Qp.H264.S2")
                {
                  goto LABEL_1834;
                }

                strcpy(v354, "Encoded.Qp.H264.S2");
                v298 = webrtc::metrics::HistogramFactoryGetCountsLinear();
                if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
                {
                  v394 = v298;
                  operator delete(v725.__r_.__value_.__l.__data_);
                  v298 = v394;
                  v395 = 0;
                  atomic_compare_exchange_strong(&qword_28100BD28, &v395, v394);
                  if (!v394)
                  {
                    goto LABEL_1011;
                  }
                }

                else
                {
                  v355 = 0;
                  atomic_compare_exchange_strong(&qword_28100BD28, &v355, v298);
                  if (!v298)
                  {
                    goto LABEL_1011;
                  }
                }
              }

              goto LABEL_1010;
            }

            v298 = atomic_load_explicit(&qword_28100BD30, memory_order_acquire);
            if (v298)
            {
              goto LABEL_1010;
            }

            v301 = v7[23];
            if (v301 >= 0)
            {
              v302 = v7[23];
            }

            else
            {
              v302 = *(v7 + 1);
            }

            if (v302 + 18 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1835;
            }

            if (v302 + 18 >= 0x17)
            {
              operator new();
            }

            memset(&v725, 0, sizeof(v725));
            *(&v725.__r_.__value_.__s + 23) = v302 + 18;
            if (v301 >= 0)
            {
              v344 = v7;
            }

            else
            {
              v344 = *v7;
            }

            if ((v302 & 0x8000000000000000) != 0)
            {
              goto LABEL_1834;
            }

            v345 = &v725 + v302;
            if (v344 >= &v725 && v345 > v344)
            {
              goto LABEL_1834;
            }

            if (v302)
            {
              memmove(&v725, v344, v302);
            }

            if (v345 <= "Encoded.Qp.H264.S2" && v345 + 18 > "Encoded.Qp.H264.S2")
            {
              goto LABEL_1834;
            }

            strcpy(v345, "Encoded.Qp.H264.S2");
            v298 = webrtc::metrics::HistogramFactoryGetCountsLinear();
            if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
            {
              v346 = v298;
              operator delete(v725.__r_.__value_.__l.__data_);
              v298 = v346;
            }

            v347 = 0;
            atomic_compare_exchange_strong(&qword_28100BD30, &v347, v298);
            if (v298)
            {
              goto LABEL_1010;
            }
          }

          else
          {
            if (v297 == -1)
            {
              if (v11)
              {
                v298 = atomic_load_explicit(&qword_28100BD00, memory_order_acquire);
                if (!v298)
                {
                  v310 = v7[23];
                  if (v310 >= 0)
                  {
                    v311 = v7[23];
                  }

                  else
                  {
                    v311 = *(v7 + 1);
                  }

                  if (v311 + 15 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_1835;
                  }

                  if (v311 + 15 >= 0x17)
                  {
                    operator new();
                  }

                  memset(&v725, 0, sizeof(v725));
                  *(&v725.__r_.__value_.__s + 23) = v311 + 15;
                  if (v310 >= 0)
                  {
                    v356 = v7;
                  }

                  else
                  {
                    v356 = *v7;
                  }

                  if ((v311 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1834;
                  }

                  v357 = &v725 + v311;
                  if (v356 >= &v725 && v357 > v356)
                  {
                    goto LABEL_1834;
                  }

                  if (v311)
                  {
                    memmove(&v725, v356, v311);
                  }

                  if (v357 <= "Encoded.Qp.H264" && v357 + 15 > "Encoded.Qp.H264")
                  {
                    goto LABEL_1834;
                  }

                  strcpy(v357, "Encoded.Qp.H264");
                  v298 = webrtc::metrics::HistogramFactoryGetCountsLinear();
                  if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v396 = v298;
                    operator delete(v725.__r_.__value_.__l.__data_);
                    v298 = v396;
                    v397 = 0;
                    atomic_compare_exchange_strong(&qword_28100BD00, &v397, v396);
                    if (!v396)
                    {
                      goto LABEL_1011;
                    }
                  }

                  else
                  {
                    v358 = 0;
                    atomic_compare_exchange_strong(&qword_28100BD00, &v358, v298);
                    if (!v298)
                    {
                      goto LABEL_1011;
                    }
                  }
                }
              }

              else
              {
                v298 = atomic_load_explicit(&qword_28100BCF8, memory_order_acquire);
                if (!v298)
                {
                  v318 = v7[23];
                  if (v318 >= 0)
                  {
                    v319 = v7[23];
                  }

                  else
                  {
                    v319 = *(v7 + 1);
                  }

                  if (v319 + 15 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_1835;
                  }

                  if (v319 + 15 >= 0x17)
                  {
                    operator new();
                  }

                  memset(&v725, 0, sizeof(v725));
                  *(&v725.__r_.__value_.__s + 23) = v319 + 15;
                  if (v318 >= 0)
                  {
                    v362 = v7;
                  }

                  else
                  {
                    v362 = *v7;
                  }

                  if ((v319 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1834;
                  }

                  v363 = &v725 + v319;
                  if (v362 >= &v725 && v363 > v362)
                  {
                    goto LABEL_1834;
                  }

                  if (v319)
                  {
                    memmove(&v725, v362, v319);
                  }

                  if (v363 <= "Encoded.Qp.H264" && v363 + 15 > "Encoded.Qp.H264")
                  {
                    goto LABEL_1834;
                  }

                  strcpy(v363, "Encoded.Qp.H264");
                  v298 = webrtc::metrics::HistogramFactoryGetCountsLinear();
                  if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v400 = v298;
                    operator delete(v725.__r_.__value_.__l.__data_);
                    v298 = v400;
                    v401 = 0;
                    atomic_compare_exchange_strong(&qword_28100BCF8, &v401, v400);
                    if (!v400)
                    {
                      goto LABEL_1011;
                    }
                  }

                  else
                  {
                    v364 = 0;
                    atomic_compare_exchange_strong(&qword_28100BCF8, &v364, v298);
                    if (!v298)
                    {
                      goto LABEL_1011;
                    }
                  }
                }
              }

              goto LABEL_1010;
            }

            if (v297)
            {
              goto LABEL_859;
            }

            if ((v11 & 1) == 0)
            {
              v298 = atomic_load_explicit(&qword_28100BD08, memory_order_acquire);
              if (!v298)
              {
                v314 = v7[23];
                if (v314 >= 0)
                {
                  v315 = v7[23];
                }

                else
                {
                  v315 = *(v7 + 1);
                }

                if (v315 + 18 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_1835;
                }

                if (v315 + 18 >= 0x17)
                {
                  operator new();
                }

                memset(&v725, 0, sizeof(v725));
                *(&v725.__r_.__value_.__s + 23) = v315 + 18;
                if (v314 >= 0)
                {
                  v350 = v7;
                }

                else
                {
                  v350 = *v7;
                }

                if ((v315 & 0x8000000000000000) != 0)
                {
                  goto LABEL_1834;
                }

                v351 = &v725 + v315;
                if (v350 >= &v725 && v351 > v350)
                {
                  goto LABEL_1834;
                }

                if (v315)
                {
                  memmove(&v725, v350, v315);
                }

                if (v351 <= "Encoded.Qp.H264.S0" && v351 + 18 > "Encoded.Qp.H264.S0")
                {
                  goto LABEL_1834;
                }

                strcpy(v351, "Encoded.Qp.H264.S0");
                v298 = webrtc::metrics::HistogramFactoryGetCountsLinear();
                if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
                {
                  v392 = v298;
                  operator delete(v725.__r_.__value_.__l.__data_);
                  v298 = v392;
                  v393 = 0;
                  atomic_compare_exchange_strong(&qword_28100BD08, &v393, v392);
                  if (!v392)
                  {
                    goto LABEL_1011;
                  }
                }

                else
                {
                  v352 = 0;
                  atomic_compare_exchange_strong(&qword_28100BD08, &v352, v298);
                  if (!v298)
                  {
                    goto LABEL_1011;
                  }
                }
              }

              goto LABEL_1010;
            }

            v298 = atomic_load_explicit(&qword_28100BD10, memory_order_acquire);
            if (v298)
            {
              goto LABEL_1010;
            }

            v299 = v7[23];
            if (v299 >= 0)
            {
              v300 = v7[23];
            }

            else
            {
              v300 = *(v7 + 1);
            }

            if (v300 + 18 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1835;
            }

            if (v300 + 18 >= 0x17)
            {
              operator new();
            }

            memset(&v725, 0, sizeof(v725));
            *(&v725.__r_.__value_.__s + 23) = v300 + 18;
            if (v299 >= 0)
            {
              v340 = v7;
            }

            else
            {
              v340 = *v7;
            }

            if ((v300 & 0x8000000000000000) != 0)
            {
              goto LABEL_1834;
            }

            v341 = &v725 + v300;
            if (v340 >= &v725 && v341 > v340)
            {
              goto LABEL_1834;
            }

            if (v300)
            {
              memmove(&v725, v340, v300);
            }

            if (v341 <= "Encoded.Qp.H264.S0" && v341 + 18 > "Encoded.Qp.H264.S0")
            {
              goto LABEL_1834;
            }

            strcpy(v341, "Encoded.Qp.H264.S0");
            v298 = webrtc::metrics::HistogramFactoryGetCountsLinear();
            if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
            {
              v342 = v298;
              operator delete(v725.__r_.__value_.__l.__data_);
              v298 = v342;
            }

            v343 = 0;
            atomic_compare_exchange_strong(&qword_28100BD10, &v343, v298);
            if (v298)
            {
              goto LABEL_1010;
            }
          }
        }
      }

LABEL_1011:
      v348 = *(v206 + 1);
      if (v348)
      {
        do
        {
          v349 = v348;
          v348 = *v348;
        }

        while (v348);
      }

      else
      {
        do
        {
          v349 = *(v206 + 2);
          v8 = *v349 == v206;
          v206 = v349;
        }

        while (!v8);
      }

      v206 = v349;
    }

    while (v349 != v7 + 1440);
  }

  if (*(v7 + 127) == -1)
  {
    goto LABEL_1189;
  }

  v404 = (*(**(v7 + 3) + 16))(*(v7 + 3));
  v405 = v404 / 0x3E8uLL;
  if (v404 % 0x3E8uLL > 0x1F3)
  {
    ++v405;
  }

  if (-v404 % 0x3E8uLL <= 0x1F4)
  {
    v406 = 0;
  }

  else
  {
    v406 = -1;
  }

  v407 = v406 - -v404 / 0x3E8uLL;
  if (v404 < 0)
  {
    v405 = v407;
  }

  v408 = *(v7 + 130);
  if (v408 != -1)
  {
    v409 = *(v7 + 131) + v405 - v408;
    *(v7 + 131) = v409;
    *(v7 + 130) = -1;
    if (v409 < 10000)
    {
      goto LABEL_1162;
    }

LABEL_1143:
    v410 = *(v718 + 152) - *(v7 + 334);
    if (*(v7 + 357) + *(v7 + 356) <= v410)
    {
      v411 = *(v7 + 357) + *(v7 + 356);
    }

    else
    {
      v411 = 0;
    }

    if (v11)
    {
      v412 = atomic_load_explicit(&qword_28100BD40, memory_order_acquire);
      if (!v412)
      {
        if (v7[23] >= 0)
        {
          v413 = v7[23];
        }

        else
        {
          v413 = *(v7 + 1);
        }

        if ((v413 + 29) <= 0x7FFFFFFFFFFFFFF7)
        {
          if ((v413 + 29) >= 0x17)
          {
            operator new();
          }

          goto LABEL_1834;
        }

        goto LABEL_1835;
      }
    }

    else
    {
      v412 = atomic_load_explicit(&qword_28100BD38, memory_order_acquire);
      if (!v412)
      {
        if (v7[23] >= 0)
        {
          v414 = v7[23];
        }

        else
        {
          v414 = *(v7 + 1);
        }

        if ((v414 + 29) <= 0x7FFFFFFFFFFFFFF7)
        {
          if ((v414 + 29) >= 0x17)
          {
            operator new();
          }

          goto LABEL_1834;
        }

        goto LABEL_1835;
      }
    }

    webrtc::metrics::HistogramAdd(v412, 60 * (v410 - v411) / (v409 / 1000));
    goto LABEL_1162;
  }

  v409 = *(v7 + 131);
  if (v409 >= 10000)
  {
    goto LABEL_1143;
  }

LABEL_1162:
  v415 = (*(**(v7 + 3) + 16))(*(v7 + 3));
  v416 = v415 / 0x3E8uLL;
  if (v415 % 0x3E8uLL > 0x1F3)
  {
    ++v416;
  }

  if (-v415 % 0x3E8uLL <= 0x1F4)
  {
    v417 = 0;
  }

  else
  {
    v417 = -1;
  }

  v418 = v417 - -v415 / 0x3E8uLL;
  if (v415 < 0)
  {
    v416 = v418;
  }

  v419 = *(v7 + 128);
  if (v419 == -1)
  {
    v420 = *(v7 + 129);
    if (v420 < 10000)
    {
      goto LABEL_1189;
    }
  }

  else
  {
    v420 = *(v7 + 129) + v416 - v419;
    *(v7 + 129) = v420;
    *(v7 + 128) = -1;
    if (v420 < 10000)
    {
      goto LABEL_1189;
    }
  }

  v421 = *(v718 + 148);
  v422 = *(v7 + 333);
  if (v11)
  {
    v423 = atomic_load_explicit(&qword_28100BD50, memory_order_acquire);
    if (!v423)
    {
      if (v7[23] >= 0)
      {
        v424 = v7[23];
      }

      else
      {
        v424 = *(v7 + 1);
      }

      if ((v424 + 25) <= 0x7FFFFFFFFFFFFFF7)
      {
        if ((v424 + 25) >= 0x17)
        {
          operator new();
        }

        goto LABEL_1834;
      }

      goto LABEL_1835;
    }
  }

  else
  {
    v423 = atomic_load_explicit(&qword_28100BD48, memory_order_acquire);
    if (!v423)
    {
      if (v7[23] >= 0)
      {
        v425 = v7[23];
      }

      else
      {
        v425 = *(v7 + 1);
      }

      if ((v425 + 25) <= 0x7FFFFFFFFFFFFFF7)
      {
        if ((v425 + 25) >= 0x17)
        {
          operator new();
        }

        goto LABEL_1834;
      }

      goto LABEL_1835;
    }
  }

  webrtc::metrics::HistogramAdd(v423, 60 * (v421 - v422) / (v420 / 1000));
LABEL_1189:
  if (*(v7 + 126) == -1)
  {
    goto LABEL_1290;
  }

  v426 = (*(**(v7 + 3) + 16))(*(v7 + 3));
  v427 = v426 / 0x3E8uLL;
  if (v426 % 0x3E8uLL > 0x1F3)
  {
    ++v427;
  }

  if (-v426 % 0x3E8uLL <= 0x1F4)
  {
    v428 = 0;
  }

  else
  {
    v428 = -1;
  }

  v429 = v428 - -v426 / 0x3E8uLL;
  if (v426 < 0)
  {
    v427 = v429;
  }

  v430 = v427 - *(v7 + 126);
  if (v430 < 10000)
  {
    goto LABEL_1290;
  }

  v431 = *(v7 + 288);
  if (v431 && 100 * ((255 * *(v7 + 289) + (v431 >> 1)) / v431) + 509 >= 0xFF)
  {
    if (v7[23] >= 0)
    {
      v432 = v7[23];
    }

    else
    {
      v432 = *(v7 + 1);
    }

    v433 = v432 + 24;
    if (v11)
    {
      if ((v432 + 24) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v433 >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if ((v432 + 24) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v433 >= 0x17)
      {
        operator new();
      }
    }

    goto LABEL_1834;
  }

  v434 = (v430 * 0x20C49BA5E353F7CFLL) >> 64;
  v435 = v434 >> 7;
  v436 = *v719;
  v437 = v719[1];
  if (*v719 == v437 || !*(v718 + 168))
  {
    v455 = 0;
    v717 = 0;
    v456 = 1;
    v457 = v435 + (v434 >> 63);
    if ((v11 & 1) == 0)
    {
LABEL_1254:
      v464 = atomic_load_explicit(&qword_28100BD58, memory_order_acquire);
      if (!v464)
      {
        if (v7[23] >= 0)
        {
          v465 = v7[23];
        }

        else
        {
          v465 = *(v7 + 1);
        }

        if ((v465 + 28) <= 0x7FFFFFFFFFFFFFF7)
        {
          if ((v465 + 28) >= 0x17)
          {
            operator new();
          }

          goto LABEL_1834;
        }

        goto LABEL_1835;
      }

      webrtc::metrics::HistogramAdd(v464, v455 / v457);
      v466 = atomic_load_explicit(&qword_28100BD68, memory_order_acquire);
      if (!v466)
      {
        if (v7[23] >= 0)
        {
          v467 = v7[23];
        }

        else
        {
          v467 = *(v7 + 1);
        }

        if ((v467 + 27) <= 0x7FFFFFFFFFFFFFF7)
        {
          if ((v467 + 27) >= 0x17)
          {
            operator new();
          }

          goto LABEL_1834;
        }

        goto LABEL_1835;
      }

      webrtc::metrics::HistogramAdd(v466, v717.u32[0] / v457);
      v462 = atomic_load_explicit(&qword_28100BD78, memory_order_acquire);
      if (!v462)
      {
        if (v7[23] >= 0)
        {
          v468 = v7[23];
        }

        else
        {
          v468 = *(v7 + 1);
        }

        if ((v468 + 27) <= 0x7FFFFFFFFFFFFFF7)
        {
          if ((v468 + 27) >= 0x17)
          {
            operator new();
          }

          goto LABEL_1834;
        }

        goto LABEL_1835;
      }

      goto LABEL_1269;
    }
  }

  else
  {
    v438 = 0;
    v439 = 0;
    v440 = v7 + 1352;
    v441 = 0;
    do
    {
      v442 = *v436;
      v443 = v718 + 168;
      v444 = *(v718 + 168);
      do
      {
        v445 = *(v444 + 32);
        v446 = v445 >= v442;
        v447 = v445 < v442;
        if (v446)
        {
          v443 = v444;
        }

        v444 = *(v444 + 8 * v447);
      }

      while (v444);
      if (v443 != v718 + 168 && v442 >= *(v443 + 32))
      {
        v448 = *(v443 + 216);
        v449 = *(v443 + 220);
        v450 = *(v443 + 228);
        v451 = *v440;
        if (*v440)
        {
          v452 = v7 + 1352;
          do
          {
            v453 = *(v451 + 8);
            v446 = v453 >= v442;
            v454 = v453 < v442;
            if (v446)
            {
              v452 = v451;
            }

            v451 = *&v451[8 * v454];
          }

          while (v451);
          if (v452 != v440 && v442 >= *(v452 + 8))
          {
            v448 -= *(v452 + 54);
            v449 = vsub_s32(v449, *(v452 + 220));
            v450 -= *(v452 + 57);
          }
        }

        v438 += v448;
        v441 = vadd_s32(v449, v441);
        v439 += v450;
      }

      ++v436;
    }

    while (v436 != v437);
    v455 = (60 * v438);
    v717 = vmul_s32(v441, 0x3C0000003CLL);
    v456 = v439 == 0;
    v457 = v435 + (v434 >> 63);
    if ((v11 & 1) == 0)
    {
      goto LABEL_1254;
    }
  }

  v458 = atomic_load_explicit(&qword_28100BD60, memory_order_acquire);
  if (!v458)
  {
    if (v7[23] >= 0)
    {
      v459 = v7[23];
    }

    else
    {
      v459 = *(v7 + 1);
    }

    if ((v459 + 28) <= 0x7FFFFFFFFFFFFFF7)
    {
      if ((v459 + 28) >= 0x17)
      {
        operator new();
      }

      goto LABEL_1834;
    }

    goto LABEL_1835;
  }

  webrtc::metrics::HistogramAdd(v458, v455 / v457);
  v460 = atomic_load_explicit(&qword_28100BD70, memory_order_acquire);
  if (!v460)
  {
    if (v7[23] >= 0)
    {
      v461 = v7[23];
    }

    else
    {
      v461 = *(v7 + 1);
    }

    if ((v461 + 27) <= 0x7FFFFFFFFFFFFFF7)
    {
      if ((v461 + 27) >= 0x17)
      {
        operator new();
      }

      goto LABEL_1834;
    }

    goto LABEL_1835;
  }

  webrtc::metrics::HistogramAdd(v460, v717.u32[0] / v457);
  v462 = atomic_load_explicit(&qword_28100BD80, memory_order_acquire);
  if (!v462)
  {
    if (v7[23] >= 0)
    {
      v463 = v7[23];
    }

    else
    {
      v463 = *(v7 + 1);
    }

    if ((v463 + 27) <= 0x7FFFFFFFFFFFFFF7)
    {
      if ((v463 + 27) >= 0x17)
      {
        operator new();
      }

      goto LABEL_1834;
    }

    goto LABEL_1835;
  }

LABEL_1269:
  webrtc::metrics::HistogramAdd(v462, v717.u32[1] / v457);
  if (!v456)
  {
    if (v11)
    {
      if (v7[23] >= 0)
      {
        v469 = v7[23];
      }

      else
      {
        v469 = *(v7 + 1);
      }

      if ((v469 + 35) <= 0x7FFFFFFFFFFFFFF7)
      {
        if ((v469 + 35) >= 0x17)
        {
          operator new();
        }

        goto LABEL_1834;
      }
    }

    else
    {
      if (v7[23] >= 0)
      {
        v470 = v7[23];
      }

      else
      {
        v470 = *(v7 + 1);
      }

      if ((v470 + 35) <= 0x7FFFFFFFFFFFFFF7)
      {
        if ((v470 + 35) >= 0x17)
        {
          operator new();
        }

        goto LABEL_1834;
      }
    }

    goto LABEL_1835;
  }

LABEL_1290:
  if (*(v7 + 127) == -1)
  {
    goto LABEL_1388;
  }

  v471 = (*(**(v7 + 3) + 16))(*(v7 + 3));
  v472 = v471 / 0x3E8uLL;
  if (v471 % 0x3E8uLL > 0x1F3)
  {
    ++v472;
  }

  if (-v471 % 0x3E8uLL <= 0x1F4)
  {
    v473 = 0;
  }

  else
  {
    v473 = -1;
  }

  v474 = v473 - -v471 / 0x3E8uLL;
  if (v471 < 0)
  {
    v472 = v474;
  }

  if ((v472 - *(v7 + 127)) < 10000)
  {
    goto LABEL_1388;
  }

  if (v11)
  {
    v475 = &qword_28100BD90;
    v476 = atomic_load_explicit(&qword_28100BD90, memory_order_acquire);
    if (!v476)
    {
      v477 = v7[23];
      if (v477 >= 0)
      {
        v478 = v7[23];
      }

      else
      {
        v478 = *(v7 + 1);
      }

      if (v478 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v478 + 19 >= 0x17)
      {
        operator new();
      }

      memset(&v725, 0, sizeof(v725));
      *(&v725.__r_.__value_.__s + 23) = v478 + 19;
      if (v477 >= 0)
      {
        v481 = v7;
      }

      else
      {
        v481 = *v7;
      }

      if ((v478 & 0x8000000000000000) != 0)
      {
        goto LABEL_1834;
      }

      v482 = &v725 + v478;
      if (v481 >= &v725 && v482 > v481)
      {
        goto LABEL_1834;
      }

      if (v478)
      {
        memmove(&v725, v481, v478);
      }

      if (v482 <= "NumberOfPauseEvents" && v482 + 19 > "NumberOfPauseEvents")
      {
        goto LABEL_1834;
      }

      goto LABEL_1335;
    }

LABEL_1338:
    webrtc::metrics::HistogramAdd(v476, *(v7 + 268));
    goto LABEL_1339;
  }

  v475 = &qword_28100BD88;
  v476 = atomic_load_explicit(&qword_28100BD88, memory_order_acquire);
  if (v476)
  {
    goto LABEL_1338;
  }

  v479 = v7[23];
  if (v479 >= 0)
  {
    v480 = v7[23];
  }

  else
  {
    v480 = *(v7 + 1);
  }

  if (v480 + 19 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_1835;
  }

  if (v480 + 19 >= 0x17)
  {
    operator new();
  }

  memset(&v725, 0, sizeof(v725));
  *(&v725.__r_.__value_.__s + 23) = v480 + 19;
  if (v479 >= 0)
  {
    v483 = v7;
  }

  else
  {
    v483 = *v7;
  }

  if ((v480 & 0x8000000000000000) != 0)
  {
    goto LABEL_1834;
  }

  v482 = &v725 + v480;
  if (v483 >= &v725 && v482 > v483)
  {
    goto LABEL_1834;
  }

  if (v480)
  {
    memmove(&v725, v483, v480);
  }

  if (v482 <= "NumberOfPauseEvents" && v482 + 19 > "NumberOfPauseEvents")
  {
    goto LABEL_1834;
  }

LABEL_1335:
  strcpy(v482, "NumberOfPauseEvents");
  v476 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
  {
    v484 = v476;
    operator delete(v725.__r_.__value_.__l.__data_);
    v476 = v484;
  }

  v485 = 0;
  atomic_compare_exchange_strong(v475, &v485, v476);
  if (v476)
  {
    goto LABEL_1338;
  }

LABEL_1339:
  v486 = v7[23];
  if ((v486 & 0x8000000000000000) != 0)
  {
    v487 = *v7;
    v486 = *(v7 + 1);
  }

  else
  {
    v487 = v7;
  }

  if (v486 >= v730 + ~*(&v730 + 1))
  {
    v488 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v488 = v486;
  }

  memcpy(&v729[*(&v730 + 1)], v487, v488);
  *(&v730 + 1) += v488;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x14uLL)
  {
    v489 = 20;
  }

  else
  {
    v489 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "NumberOfPauseEvents ", v489);
  *(&v730 + 1) += v489;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%d", *(v7 + 268));
  v490 = v730;
  v491 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v492 = *(&v730 + 1);
  if (v490 != v491)
  {
    v492 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v492;
  v729[v492] = 0;
  v493 = *(v7 + 133);
  if (v493 >= 10000)
  {
    v494 = (((*(v7 + 132) * 100.0) / v493) + 0.5);
    if (v494 != -1)
    {
      if (v11)
      {
        v495 = v7[23];
        if (v495 >= 0)
        {
          v496 = v7[23];
        }

        else
        {
          v496 = *(v7 + 1);
        }

        v497 = v496 + 19;
        if (v496 + 19 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v497 >= 0x17)
        {
          goto LABEL_1358;
        }
      }

      else
      {
        v495 = v7[23];
        if (v495 >= 0)
        {
          v496 = v7[23];
        }

        else
        {
          v496 = *(v7 + 1);
        }

        v497 = v496 + 19;
        if (v496 + 19 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v497 >= 0x17)
        {
LABEL_1358:
          operator new();
        }
      }

      memset(&v725, 0, sizeof(v725));
      *(&v725.__r_.__value_.__s + 23) = v497;
      if (v495 >= 0)
      {
        v498 = v7;
      }

      else
      {
        v498 = *v7;
      }

      if ((v496 & 0x8000000000000000) != 0)
      {
        goto LABEL_1834;
      }

      v499 = &v725 + v496;
      if (v498 >= &v725 && v499 > v498)
      {
        goto LABEL_1834;
      }

      if (v496)
      {
        memmove(&v725, v498, v496);
      }

      if (v499 <= "PausedTimeInPercent" && v499 + 19 > "PausedTimeInPercent")
      {
        goto LABEL_1834;
      }

      strcpy(v499, "PausedTimeInPercent");
      if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v725.__r_.__value_.__l.__data_);
      }

      v500 = v7[23];
      if ((v500 & 0x8000000000000000) != 0)
      {
        v501 = *v7;
        v500 = *(v7 + 1);
      }

      else
      {
        v501 = v7;
      }

      if (v500 >= v730 + ~*(&v730 + 1))
      {
        v502 = v730 + ~*(&v730 + 1);
      }

      else
      {
        v502 = v500;
      }

      memcpy(&v729[*(&v730 + 1)], v501, v502);
      *(&v730 + 1) += v502;
      v729[*(&v730 + 1)] = 0;
      if (v730 + ~*(&v730 + 1) >= 0x14uLL)
      {
        v503 = 20;
      }

      else
      {
        v503 = v730 + ~*(&v730 + 1);
      }

      memcpy(&v729[*(&v730 + 1)], "PausedTimeInPercent ", v503);
      *(&v730 + 1) += v503;
      v729[*(&v730 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v729, "%d", v494);
      v504 = v730;
      v505 = *(&v730 + 1) + 1;
      memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
      v506 = *(&v730 + 1);
      if (v504 != v505)
      {
        v506 = *(&v730 + 1) + 1;
      }

      *(&v730 + 1) = v506;
      v729[v506] = 0;
    }
  }

LABEL_1388:
  if (v7[1104] == 1)
  {
    v507 = *(v7 + 137);
    if (v507 >= 20000 && (((*(v7 + 136) * 100.0) / v507) + 0.5) != -1 && *(v7 + 139) >= 20000)
    {
      if (v7[23] >= 0)
      {
        v509 = v7[23];
      }

      else
      {
        v509 = *(v7 + 1);
      }

      v510 = v509 + 41;
      if (v11)
      {
        if ((v509 + 41) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v510 >= 0x17)
        {
          operator new();
        }
      }

      else
      {
        if ((v509 + 41) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v510 >= 0x17)
        {
          operator new();
        }
      }

      goto LABEL_1834;
    }
  }

  v511 = *(v7 + 63);
  v514 = *(v511 + 16);
  v512 = (v511 + 16);
  v513 = v514;
  if (v514)
  {
    *(*(v7 + 63) + 32) = (*(*(v7 + 63) + 8) + v513 / 2) / v513;
  }

  v725 = *v512;
  v515 = v719;
  if (v725.__r_.__value_.__l.__data_ >= 7)
  {
    if (v11)
    {
      v516 = &qword_28100BDB0;
      v517 = atomic_load_explicit(&qword_28100BDB0, memory_order_acquire);
      if (!v517)
      {
        v518 = v7[23];
        if (v518 >= 0)
        {
          v519 = v7[23];
        }

        else
        {
          v519 = *(v7 + 1);
        }

        v520 = v519 + 17;
        if (v519 + 17 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v520 >= 0x17)
        {
          goto LABEL_1414;
        }

        goto LABEL_1421;
      }
    }

    else
    {
      v516 = &qword_28100BDA8;
      v517 = atomic_load_explicit(&qword_28100BDA8, memory_order_acquire);
      if (!v517)
      {
        v518 = v7[23];
        if (v518 >= 0)
        {
          v519 = v7[23];
        }

        else
        {
          v519 = *(v7 + 1);
        }

        v520 = v519 + 17;
        if (v519 + 17 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1835;
        }

        if (v520 >= 0x17)
        {
LABEL_1414:
          operator new();
        }

LABEL_1421:
        memset(&v724, 0, sizeof(v724));
        *(&v724.__r_.__value_.__s + 23) = v520;
        if (v518 >= 0)
        {
          v521 = v7;
        }

        else
        {
          v521 = *v7;
        }

        if ((v519 & 0x8000000000000000) != 0)
        {
          goto LABEL_1834;
        }

        v522 = &v724 + v519;
        if (v521 >= &v724 && v522 > v521)
        {
          goto LABEL_1834;
        }

        if (v519)
        {
          memmove(&v724, v521, v519);
        }

        if (v522 <= "BitrateSentInKbps" && v522 + 17 > "BitrateSentInKbps")
        {
          goto LABEL_1834;
        }

        strcpy(v522, "BitrateSentInKbps");
        v517 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v724.__r_.__value_.__r.__words[2]) < 0)
        {
          v523 = v517;
          operator delete(v724.__r_.__value_.__l.__data_);
          v517 = v523;
        }

        v524 = 0;
        atomic_compare_exchange_strong(v516, &v524, v517);
        if (!v517)
        {
          goto LABEL_1435;
        }
      }
    }

    webrtc::metrics::HistogramAdd(v517, SLODWORD(v725.__r_.__value_.__r.__words[2]) / 125);
LABEL_1435:
    v525 = v7[23];
    if ((v525 & 0x8000000000000000) != 0)
    {
      v526 = *v7;
      v525 = *(v7 + 1);
    }

    else
    {
      v526 = v7;
    }

    if (v525 >= v730 + ~*(&v730 + 1))
    {
      v527 = v730 + ~*(&v730 + 1);
    }

    else
    {
      v527 = v525;
    }

    memcpy(&v729[*(&v730 + 1)], v526, v527);
    *(&v730 + 1) += v527;
    v729[*(&v730 + 1)] = 0;
    if (v730 + ~*(&v730 + 1) >= 0x11uLL)
    {
      v528 = 17;
    }

    else
    {
      v528 = v730 + ~*(&v730 + 1);
    }

    memcpy(&v729[*(&v730 + 1)], "BitrateSentInBps ", v528);
    *(&v730 + 1) += v528;
    v729[*(&v730 + 1)] = 0;
    webrtc::AggregatedStats::ToStringWithMultiplier(&v725, 8, v529, &v724);
    v530 = HIBYTE(v724.__r_.__value_.__r.__words[2]);
    if ((v724.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v531 = &v724;
    }

    else
    {
      v531 = v724.__r_.__value_.__r.__words[0];
    }

    if ((v724.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v530 = v724.__r_.__value_.__l.__size_;
    }

    if (v530 >= v730 + ~*(&v730 + 1))
    {
      v532 = v730 + ~*(&v730 + 1);
    }

    else
    {
      v532 = v530;
    }

    memcpy(&v729[*(&v730 + 1)], v531, v532);
    *(&v730 + 1) += v532;
    v729[*(&v730 + 1)] = 0;
    v533 = v730;
    v534 = *(&v730 + 1) + 1;
    memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
    v535 = *(&v730 + 1);
    if (v533 != v534)
    {
      v535 = *(&v730 + 1) + 1;
    }

    *(&v730 + 1) = v535;
    v729[v535] = 0;
    if (SHIBYTE(v724.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v724.__r_.__value_.__l.__data_);
    }
  }

  v536 = *(v7 + 74);
  v539 = *(v536 + 16);
  v537 = (v536 + 16);
  v538 = v539;
  if (v539)
  {
    *(*(v7 + 74) + 32) = (*(*(v7 + 74) + 8) + v538 / 2) / v538;
  }

  v724 = *v537;
  if (v724.__r_.__value_.__l.__data_ < 7)
  {
    goto LABEL_1502;
  }

  if (v11)
  {
    v540 = &qword_28100BDC0;
    v541 = atomic_load_explicit(&qword_28100BDC0, memory_order_acquire);
    if (!v541)
    {
LABEL_1463:
      v542 = v7[23];
      if (v542 >= 0)
      {
        v543 = v7[23];
      }

      else
      {
        v543 = *(v7 + 1);
      }

      if ((v543 + 22) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if ((v543 + 22) > 0x16)
      {
        operator new();
      }

      memset(&v723, 0, sizeof(v723));
      *(&v723.__r_.__value_.__s + 23) = v543 + 22;
      if (v543 < 0)
      {
        goto LABEL_1834;
      }

      v544 = v542 >= 0 ? v7 : *v7;
      v545 = &v723 + v543;
      if (v544 >= &v723 && v545 > v544)
      {
        goto LABEL_1834;
      }

      if (v545 <= "MediaBitrateSentInKbps" && v545 + 22 > "MediaBitrateSentInKbps")
      {
        goto LABEL_1834;
      }

      strcpy(v545, "MediaBitrateSentInKbps");
      v541 = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (SHIBYTE(v723.__r_.__value_.__r.__words[2]) < 0)
      {
        v546 = v541;
        operator delete(v723.__r_.__value_.__l.__data_);
        v541 = v546;
      }

      v547 = 0;
      atomic_compare_exchange_strong(v540, &v547, v541);
      if (!v541)
      {
        goto LABEL_1481;
      }
    }
  }

  else
  {
    v540 = &qword_28100BDB8;
    v541 = atomic_load_explicit(&qword_28100BDB8, memory_order_acquire);
    if (!v541)
    {
      goto LABEL_1463;
    }
  }

  webrtc::metrics::HistogramAdd(v541, SLODWORD(v724.__r_.__value_.__r.__words[2]) / 125);
LABEL_1481:
  v548 = v7[23];
  if ((v548 & 0x8000000000000000) != 0)
  {
    v549 = *v7;
    v548 = *(v7 + 1);
  }

  else
  {
    v549 = v7;
  }

  if (v548 >= v730 + ~*(&v730 + 1))
  {
    v550 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v550 = v548;
  }

  memcpy(&v729[*(&v730 + 1)], v549, v550);
  *(&v730 + 1) += v550;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x16uLL)
  {
    v551 = 22;
  }

  else
  {
    v551 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "MediaBitrateSentInBps ", v551);
  *(&v730 + 1) += v551;
  v729[*(&v730 + 1)] = 0;
  webrtc::AggregatedStats::ToStringWithMultiplier(&v724, 8, v552, &v723);
  v553 = HIBYTE(v723.__r_.__value_.__r.__words[2]);
  if ((v723.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v554 = &v723;
  }

  else
  {
    v554 = v723.__r_.__value_.__r.__words[0];
  }

  if ((v723.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v553 = v723.__r_.__value_.__l.__size_;
  }

  if (v553 >= v730 + ~*(&v730 + 1))
  {
    v555 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v555 = v553;
  }

  memcpy(&v729[*(&v730 + 1)], v554, v555);
  *(&v730 + 1) += v555;
  v729[*(&v730 + 1)] = 0;
  v556 = v730;
  v557 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v558 = *(&v730 + 1);
  if (v556 != v557)
  {
    v558 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v558;
  v729[v558] = 0;
  if (SHIBYTE(v723.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v723.__r_.__value_.__l.__data_);
  }

LABEL_1502:
  v559 = *(v7 + 96);
  v562 = *(v559 + 16);
  v560 = (v559 + 16);
  v561 = v562;
  if (v562)
  {
    *(*(v7 + 96) + 32) = (*(*(v7 + 96) + 8) + v561 / 2) / v561;
  }

  v723 = *v560;
  if (v723.__r_.__value_.__l.__data_ >= 7)
  {
    if (v11)
    {
      v563 = atomic_load_explicit(&qword_28100BDD0, memory_order_acquire);
      if (!v563)
      {
LABEL_1509:
        if (v7[23] >= 0)
        {
          v564 = v7[23];
        }

        else
        {
          v564 = *(v7 + 1);
        }

        if ((v564 + 24) <= 0x7FFFFFFFFFFFFFF7)
        {
          if ((v564 + 24) >= 0x17)
          {
            operator new();
          }

          goto LABEL_1834;
        }

        goto LABEL_1835;
      }
    }

    else
    {
      v563 = atomic_load_explicit(&qword_28100BDC8, memory_order_acquire);
      if (!v563)
      {
        goto LABEL_1509;
      }
    }

    webrtc::metrics::HistogramAdd(v563, SLODWORD(v723.__r_.__value_.__r.__words[2]) / 125);
    v565 = v7[23];
    if ((v565 & 0x8000000000000000) != 0)
    {
      v566 = *v7;
      v565 = *(v7 + 1);
    }

    else
    {
      v566 = v7;
    }

    if (v565 >= v730 + ~*(&v730 + 1))
    {
      v567 = v730 + ~*(&v730 + 1);
    }

    else
    {
      v567 = v565;
    }

    memcpy(&v729[*(&v730 + 1)], v566, v567);
    *(&v730 + 1) += v567;
    v729[*(&v730 + 1)] = 0;
    if (v730 + ~*(&v730 + 1) >= 0x18uLL)
    {
      v568 = 24;
    }

    else
    {
      v568 = v730 + ~*(&v730 + 1);
    }

    memcpy(&v729[*(&v730 + 1)], "PaddingBitrateSentInBps ", v568);
    *(&v730 + 1) += v568;
    v729[*(&v730 + 1)] = 0;
    webrtc::AggregatedStats::ToStringWithMultiplier(&v723, 8, v569, &v722);
    v570 = HIBYTE(v722.__r_.__value_.__r.__words[2]);
    if ((v722.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v571 = &v722;
    }

    else
    {
      v571 = v722.__r_.__value_.__r.__words[0];
    }

    if ((v722.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v570 = v722.__r_.__value_.__l.__size_;
    }

    if (v570 >= v730 + ~*(&v730 + 1))
    {
      v572 = v730 + ~*(&v730 + 1);
    }

    else
    {
      v572 = v570;
    }

    memcpy(&v729[*(&v730 + 1)], v571, v572);
    *(&v730 + 1) += v572;
    v729[*(&v730 + 1)] = 0;
    v573 = v730;
    v574 = *(&v730 + 1) + 1;
    memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
    v575 = *(&v730 + 1);
    if (v573 != v574)
    {
      v575 = *(&v730 + 1) + 1;
    }

    *(&v730 + 1) = v575;
    v729[v575] = 0;
    if (SHIBYTE(v722.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v722.__r_.__value_.__l.__data_);
    }
  }

  v576 = *(v7 + 107);
  v579 = *(v576 + 16);
  v577 = (v576 + 16);
  v578 = v579;
  if (v579)
  {
    *(*(v7 + 107) + 32) = (*(*(v7 + 107) + 8) + v578 / 2) / v578;
  }

  v722 = *v577;
  if (v722.__r_.__value_.__l.__data_ < 7)
  {
    goto LABEL_1569;
  }

  if (v11)
  {
    v580 = atomic_load_explicit(&qword_28100BDE0, memory_order_acquire);
    if (!v580)
    {
LABEL_1543:
      if (v7[23] >= 0)
      {
        v581 = v7[23];
      }

      else
      {
        v581 = *(v7 + 1);
      }

      if ((v581 + 30) <= 0x7FFFFFFFFFFFFFF7)
      {
        if ((v581 + 30) >= 0x17)
        {
          operator new();
        }

        goto LABEL_1834;
      }

      goto LABEL_1835;
    }
  }

  else
  {
    v580 = atomic_load_explicit(&qword_28100BDD8, memory_order_acquire);
    if (!v580)
    {
      goto LABEL_1543;
    }
  }

  webrtc::metrics::HistogramAdd(v580, SLODWORD(v722.__r_.__value_.__r.__words[2]) / 125);
  v582 = v7[23];
  if ((v582 & 0x8000000000000000) != 0)
  {
    v583 = *v7;
    v582 = *(v7 + 1);
  }

  else
  {
    v583 = v7;
  }

  if (v582 >= v730 + ~*(&v730 + 1))
  {
    v584 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v584 = v582;
  }

  memcpy(&v729[*(&v730 + 1)], v583, v584);
  *(&v730 + 1) += v584;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x1EuLL)
  {
    v585 = 30;
  }

  else
  {
    v585 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "RetransmittedBitrateSentInBps ", v585);
  *(&v730 + 1) += v585;
  v729[*(&v730 + 1)] = 0;
  webrtc::AggregatedStats::ToStringWithMultiplier(&v722, 8, v586, &v721);
  v587 = HIBYTE(v721.__r_.__value_.__r.__words[2]);
  if ((v721.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v588 = &v721;
  }

  else
  {
    v588 = v721.__r_.__value_.__r.__words[0];
  }

  if ((v721.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v587 = v721.__r_.__value_.__l.__size_;
  }

  if (v587 >= v730 + ~*(&v730 + 1))
  {
    v589 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v589 = v587;
  }

  memcpy(&v729[*(&v730 + 1)], v588, v589);
  *(&v730 + 1) += v589;
  v729[*(&v730 + 1)] = 0;
  v590 = v730;
  v591 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v592 = *(&v730 + 1);
  if (v590 != v591)
  {
    v592 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v592;
  v729[v592] = 0;
  if ((SHIBYTE(v721.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_1569:
    if (v719[29] == v719[30])
    {
      goto LABEL_1629;
    }

LABEL_1570:
    v593 = *(v7 + 85);
    v596 = *(v593 + 16);
    v594 = (v593 + 16);
    v595 = v596;
    if (v596)
    {
      *(*(v7 + 85) + 32) = (*(*(v7 + 85) + 8) + v595 / 2) / v595;
    }

    v721 = *v594;
    if (v721.__r_.__value_.__l.__data_ < 7)
    {
      if (v725.__r_.__value_.__l.__data_ > 6)
      {
        v599 = 0;
        goto LABEL_1600;
      }
    }

    else
    {
      v597 = v7[23];
      if ((v597 & 0x8000000000000000) != 0)
      {
        v598 = *v7;
        v597 = *(v7 + 1);
      }

      else
      {
        v598 = v7;
      }

      v599 = v721.__r_.__value_.__r.__words[2];
      if (v597 >= v730 + ~*(&v730 + 1))
      {
        v600 = v730 + ~*(&v730 + 1);
      }

      else
      {
        v600 = v597;
      }

      memcpy(&v729[*(&v730 + 1)], v598, v600);
      *(&v730 + 1) += v600;
      v729[*(&v730 + 1)] = 0;
      if (v730 + ~*(&v730 + 1) >= 0x14uLL)
      {
        v601 = 20;
      }

      else
      {
        v601 = v730 + ~*(&v730 + 1);
      }

      memcpy(&v729[*(&v730 + 1)], "RtxBitrateSentInBps ", v601);
      *(&v730 + 1) += v601;
      v729[*(&v730 + 1)] = 0;
      webrtc::AggregatedStats::ToStringWithMultiplier(&v721, 8, v602, &v720);
      v603 = HIBYTE(v720.__r_.__value_.__r.__words[2]);
      if ((v720.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v604 = &v720;
      }

      else
      {
        v604 = v720.__r_.__value_.__r.__words[0];
      }

      if ((v720.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v603 = v720.__r_.__value_.__l.__size_;
      }

      if (v603 >= v730 + ~*(&v730 + 1))
      {
        v605 = v730 + ~*(&v730 + 1);
      }

      else
      {
        v605 = v603;
      }

      memcpy(&v729[*(&v730 + 1)], v604, v605);
      *(&v730 + 1) += v605;
      v729[*(&v730 + 1)] = 0;
      v606 = v730;
      v607 = *(&v730 + 1) + 1;
      memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
      v608 = *(&v730 + 1);
      if (v606 != v607)
      {
        v608 = *(&v730 + 1) + 1;
      }

      *(&v730 + 1) = v608;
      v729[v608] = 0;
      if ((SHIBYTE(v720.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (v599 == -1)
        {
          goto LABEL_1628;
        }

LABEL_1600:
        if (v11)
        {
          v609 = &qword_28100BDF0;
          v610 = atomic_load_explicit(&qword_28100BDF0, memory_order_acquire);
          if (!v610)
          {
            v611 = v7[23];
            if (v611 >= 0)
            {
              v612 = v7[23];
            }

            else
            {
              v612 = *(v7 + 1);
            }

            v613 = v612 + 20;
            if (v612 + 20 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1835;
            }

            if (v613 >= 0x17)
            {
              goto LABEL_1607;
            }

LABEL_1614:
            memset(&v720, 0, sizeof(v720));
            *(&v720.__r_.__value_.__s + 23) = v613;
            if (v611 >= 0)
            {
              v614 = v7;
            }

            else
            {
              v614 = *v7;
            }

            if ((v612 & 0x8000000000000000) != 0)
            {
              goto LABEL_1834;
            }

            v615 = &v720 + v612;
            if (v614 >= &v720 && v615 > v614)
            {
              goto LABEL_1834;
            }

            if (v612)
            {
              memmove(&v720, v614, v612);
            }

            if (v615 <= "RtxBitrateSentInKbps" && v615 + 20 > "RtxBitrateSentInKbps")
            {
              goto LABEL_1834;
            }

            strcpy(v615, "RtxBitrateSentInKbps");
            v610 = webrtc::metrics::HistogramFactoryGetCountsLinear();
            if (SHIBYTE(v720.__r_.__value_.__r.__words[2]) < 0)
            {
              v616 = v610;
              operator delete(v720.__r_.__value_.__l.__data_);
              v610 = v616;
            }

            v617 = 0;
            atomic_compare_exchange_strong(v609, &v617, v610);
            if (!v610)
            {
              goto LABEL_1628;
            }
          }
        }

        else
        {
          v609 = &qword_28100BDE8;
          v610 = atomic_load_explicit(&qword_28100BDE8, memory_order_acquire);
          if (!v610)
          {
            v611 = v7[23];
            if (v611 >= 0)
            {
              v612 = v7[23];
            }

            else
            {
              v612 = *(v7 + 1);
            }

            v613 = v612 + 20;
            if (v612 + 20 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1835;
            }

            if (v613 >= 0x17)
            {
LABEL_1607:
              operator new();
            }

            goto LABEL_1614;
          }
        }

        webrtc::metrics::HistogramAdd(v610, v599 / 125);
        goto LABEL_1628;
      }

      operator delete(v720.__r_.__value_.__l.__data_);
      if (v599 != -1)
      {
        goto LABEL_1600;
      }
    }

LABEL_1628:
    v515 = v719;
    goto LABEL_1629;
  }

  operator delete(v721.__r_.__value_.__l.__data_);
  if (v719[29] != v719[30])
  {
    goto LABEL_1570;
  }

LABEL_1629:
  if (*(v515 + 50) != -1 || *(v515 + 47) != -1)
  {
    v618 = *(v7 + 118);
    v621 = *(v618 + 16);
    v619 = (v618 + 16);
    v620 = v621;
    if (v621)
    {
      *(*(v7 + 118) + 32) = (*(*(v7 + 118) + 8) + v620 / 2) / v620;
    }

    v721 = *v619;
    if (v721.__r_.__value_.__l.__data_ >= 7)
    {
      if (v11)
      {
        v622 = &qword_28100BE00;
        v623 = atomic_load_explicit(&qword_28100BE00, memory_order_acquire);
        if (!v623)
        {
          v624 = v7[23];
          if (v624 >= 0)
          {
            v625 = v7[23];
          }

          else
          {
            v625 = *(v7 + 1);
          }

          v626 = v625 + 20;
          if (v625 + 20 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_1835;
          }

          if (v626 >= 0x17)
          {
            goto LABEL_1641;
          }

          goto LABEL_1648;
        }
      }

      else
      {
        v622 = &qword_28100BDF8;
        v623 = atomic_load_explicit(&qword_28100BDF8, memory_order_acquire);
        if (!v623)
        {
          v624 = v7[23];
          if (v624 >= 0)
          {
            v625 = v7[23];
          }

          else
          {
            v625 = *(v7 + 1);
          }

          v626 = v625 + 20;
          if (v625 + 20 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_1835;
          }

          if (v626 >= 0x17)
          {
LABEL_1641:
            operator new();
          }

LABEL_1648:
          memset(&v720, 0, sizeof(v720));
          *(&v720.__r_.__value_.__s + 23) = v626;
          if (v624 >= 0)
          {
            v627 = v7;
          }

          else
          {
            v627 = *v7;
          }

          if ((v625 & 0x8000000000000000) != 0)
          {
            goto LABEL_1834;
          }

          v628 = &v720 + v625;
          if (v627 >= &v720 && v628 > v627)
          {
            goto LABEL_1834;
          }

          if (v625)
          {
            memmove(&v720, v627, v625);
          }

          if (v628 <= "FecBitrateSentInKbps" && v628 + 20 > "FecBitrateSentInKbps")
          {
            goto LABEL_1834;
          }

          strcpy(v628, "FecBitrateSentInKbps");
          v623 = webrtc::metrics::HistogramFactoryGetCountsLinear();
          if (SHIBYTE(v720.__r_.__value_.__r.__words[2]) < 0)
          {
            v629 = v623;
            operator delete(v720.__r_.__value_.__l.__data_);
            v623 = v629;
          }

          v630 = 0;
          atomic_compare_exchange_strong(v622, &v630, v623);
          if (!v623)
          {
            goto LABEL_1662;
          }
        }
      }

      webrtc::metrics::HistogramAdd(v623, SLODWORD(v721.__r_.__value_.__r.__words[2]) / 125);
LABEL_1662:
      v631 = v7[23];
      if ((v631 & 0x8000000000000000) != 0)
      {
        v632 = *v7;
        v631 = *(v7 + 1);
      }

      else
      {
        v632 = v7;
      }

      if (v631 >= v730 + ~*(&v730 + 1))
      {
        v633 = v730 + ~*(&v730 + 1);
      }

      else
      {
        v633 = v631;
      }

      memcpy(&v729[*(&v730 + 1)], v632, v633);
      *(&v730 + 1) += v633;
      v729[*(&v730 + 1)] = 0;
      if (v730 + ~*(&v730 + 1) >= 0x14uLL)
      {
        v634 = 20;
      }

      else
      {
        v634 = v730 + ~*(&v730 + 1);
      }

      memcpy(&v729[*(&v730 + 1)], "FecBitrateSentInBps ", v634);
      *(&v730 + 1) += v634;
      v729[*(&v730 + 1)] = 0;
      webrtc::AggregatedStats::ToStringWithMultiplier(&v721, 8, v635, &v720);
      v636 = HIBYTE(v720.__r_.__value_.__r.__words[2]);
      if ((v720.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v637 = &v720;
      }

      else
      {
        v637 = v720.__r_.__value_.__r.__words[0];
      }

      if ((v720.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v636 = v720.__r_.__value_.__l.__size_;
      }

      if (v636 >= v730 + ~*(&v730 + 1))
      {
        v638 = v730 + ~*(&v730 + 1);
      }

      else
      {
        v638 = v636;
      }

      memcpy(&v729[*(&v730 + 1)], v637, v638);
      *(&v730 + 1) += v638;
      v729[*(&v730 + 1)] = 0;
      v639 = v730;
      v640 = *(&v730 + 1) + 1;
      memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
      v641 = *(&v730 + 1);
      if (v639 != v640)
      {
        v641 = *(&v730 + 1) + 1;
      }

      *(&v730 + 1) = v641;
      v729[v641] = 0;
      if (SHIBYTE(v720.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v720.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v730 + ~*(&v730 + 1) >= 0xFuLL)
  {
    v642 = 15;
  }

  else
  {
    v642 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "Frames encoded ", v642);
  *(&v730 + 1) += v642;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%u", *(v718 + 52));
  v643 = v730;
  v644 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v645 = *(&v730 + 1);
  if (v643 != v644)
  {
    v645 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v645;
  v729[v645] = 0;
  v646 = v7[23];
  if ((v646 & 0x8000000000000000) != 0)
  {
    v647 = *v7;
    v646 = *(v7 + 1);
  }

  else
  {
    v647 = v7;
  }

  if (v646 >= v730 + ~*(&v730 + 1))
  {
    v648 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v648 = v646;
  }

  memcpy(&v729[*(&v730 + 1)], v647, v648);
  *(&v730 + 1) += v648;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x17uLL)
  {
    v649 = 23;
  }

  else
  {
    v649 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "DroppedFrames.Capturer ", v649);
  *(&v730 + 1) += v649;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%u", *(v718 + 76));
  v650 = v730;
  v651 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v652 = *(&v730 + 1);
  if (v650 != v651)
  {
    v652 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v652;
  v729[v652] = 0;
  if ((v11 & 1) == 0)
  {
    v653 = &qword_28100BE08;
    v654 = atomic_load_explicit(&qword_28100BE08, memory_order_acquire);
    if (!v654)
    {
      goto LABEL_1703;
    }

LABEL_1720:
    webrtc::metrics::HistogramAdd(v654, *(v718 + 76));
    goto LABEL_1721;
  }

  v653 = &qword_28100BE10;
  v654 = atomic_load_explicit(&qword_28100BE10, memory_order_acquire);
  if (v654)
  {
    goto LABEL_1720;
  }

LABEL_1703:
  v655 = v7[23];
  if (v655 >= 0)
  {
    v656 = v7[23];
  }

  else
  {
    v656 = *(v7 + 1);
  }

  if ((v656 + 22) > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_1835;
  }

  if ((v656 + 22) > 0x16)
  {
    operator new();
  }

  memset(&v721, 0, sizeof(v721));
  *(&v721.__r_.__value_.__s + 23) = v656 + 22;
  if (v656 < 0)
  {
    goto LABEL_1834;
  }

  v657 = v655 >= 0 ? v7 : *v7;
  v658 = &v721 + v656;
  if (v657 >= &v721 && v658 > v657)
  {
    goto LABEL_1834;
  }

  if (v658 <= "DroppedFrames.Capturer" && v658 + 22 > "DroppedFrames.Capturer")
  {
    goto LABEL_1834;
  }

  strcpy(v658, "DroppedFrames.Capturer");
  v654 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (SHIBYTE(v721.__r_.__value_.__r.__words[2]) < 0)
  {
    v659 = v654;
    operator delete(v721.__r_.__value_.__l.__data_);
    v654 = v659;
  }

  v660 = 0;
  atomic_compare_exchange_strong(v653, &v660, v654);
  if (v654)
  {
    goto LABEL_1720;
  }

LABEL_1721:
  v661 = v7[23];
  if ((v661 & 0x8000000000000000) != 0)
  {
    v662 = *v7;
    v661 = *(v7 + 1);
  }

  else
  {
    v662 = v7;
  }

  if (v661 >= v730 + ~*(&v730 + 1))
  {
    v663 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v663 = v661;
  }

  memcpy(&v729[*(&v730 + 1)], v662, v663);
  *(&v730 + 1) += v663;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x1AuLL)
  {
    v664 = 26;
  }

  else
  {
    v664 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "DroppedFrames.BadTimestamp", v664);
  *(&v730 + 1) += v664;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%u", *(v718 + 80));
  v665 = v730;
  v666 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v667 = *(&v730 + 1);
  if (v665 != v666)
  {
    v667 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v667;
  v729[v667] = 0;
  if (v11)
  {
    v668 = atomic_load_explicit(&qword_28100BE20, memory_order_acquire);
    if (!v668)
    {
LABEL_1736:
      if (v7[23] >= 0)
      {
        v669 = v7[23];
      }

      else
      {
        v669 = *(v7 + 1);
      }

      if ((v669 + 26) <= 0x7FFFFFFFFFFFFFF7)
      {
        if ((v669 + 26) >= 0x17)
        {
          operator new();
        }

        goto LABEL_1834;
      }

      goto LABEL_1835;
    }
  }

  else
  {
    v668 = atomic_load_explicit(&qword_28100BE18, memory_order_acquire);
    if (!v668)
    {
      goto LABEL_1736;
    }
  }

  webrtc::metrics::HistogramAdd(v668, *(v718 + 80));
  v670 = v7[23];
  if ((v670 & 0x8000000000000000) != 0)
  {
    v671 = *v7;
    v670 = *(v7 + 1);
  }

  else
  {
    v671 = v7;
  }

  if (v670 >= v730 + ~*(&v730 + 1))
  {
    v672 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v672 = v670;
  }

  memcpy(&v729[*(&v730 + 1)], v671, v672);
  *(&v730 + 1) += v672;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x1BuLL)
  {
    v673 = 27;
  }

  else
  {
    v673 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "DroppedFrames.EncoderQueue ", v673);
  *(&v730 + 1) += v673;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%u", *(v718 + 84));
  v674 = v730;
  v675 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v676 = *(&v730 + 1);
  if (v674 != v675)
  {
    v676 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v676;
  v729[v676] = 0;
  if (v11)
  {
    v677 = atomic_load_explicit(&qword_28100BE30, memory_order_acquire);
    if (!v677)
    {
LABEL_1757:
      if (v7[23] >= 0)
      {
        v678 = v7[23];
      }

      else
      {
        v678 = *(v7 + 1);
      }

      if ((v678 + 26) <= 0x7FFFFFFFFFFFFFF7)
      {
        if ((v678 + 26) >= 0x17)
        {
          operator new();
        }

        goto LABEL_1834;
      }

      goto LABEL_1835;
    }
  }

  else
  {
    v677 = atomic_load_explicit(&qword_28100BE28, memory_order_acquire);
    if (!v677)
    {
      goto LABEL_1757;
    }
  }

  webrtc::metrics::HistogramAdd(v677, *(v718 + 84));
  v679 = v7[23];
  if ((v679 & 0x8000000000000000) != 0)
  {
    v680 = *v7;
    v679 = *(v7 + 1);
  }

  else
  {
    v680 = v7;
  }

  if (v679 >= v730 + ~*(&v730 + 1))
  {
    v681 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v681 = v679;
  }

  memcpy(&v729[*(&v730 + 1)], v680, v681);
  *(&v730 + 1) += v681;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x16uLL)
  {
    v682 = 22;
  }

  else
  {
    v682 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "DroppedFrames.Encoder ", v682);
  *(&v730 + 1) += v682;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%u", *(v718 + 96));
  v683 = v730;
  v684 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v685 = *(&v730 + 1);
  if (v683 != v684)
  {
    v685 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v685;
  v729[v685] = 0;
  if (v11)
  {
    v686 = &qword_28100BE40;
    v687 = atomic_load_explicit(&qword_28100BE40, memory_order_acquire);
    if (!v687)
    {
      v688 = v7[23];
      if (v688 >= 0)
      {
        v689 = v7[23];
      }

      else
      {
        v689 = *(v7 + 1);
      }

      v690 = v689 + 21;
      if (v689 + 21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_1835;
      }

      if (v690 >= 0x17)
      {
        goto LABEL_1781;
      }

      goto LABEL_1788;
    }

LABEL_1801:
    webrtc::metrics::HistogramAdd(v687, *(v718 + 96));
    goto LABEL_1802;
  }

  v686 = &qword_28100BE38;
  v687 = atomic_load_explicit(&qword_28100BE38, memory_order_acquire);
  if (v687)
  {
    goto LABEL_1801;
  }

  v688 = v7[23];
  if (v688 >= 0)
  {
    v689 = v7[23];
  }

  else
  {
    v689 = *(v7 + 1);
  }

  v690 = v689 + 21;
  if (v689 + 21 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_1835;
  }

  if (v690 >= 0x17)
  {
LABEL_1781:
    operator new();
  }

LABEL_1788:
  memset(&v721, 0, sizeof(v721));
  *(&v721.__r_.__value_.__s + 23) = v690;
  if (v688 >= 0)
  {
    v691 = v7;
  }

  else
  {
    v691 = *v7;
  }

  if ((v689 & 0x8000000000000000) != 0)
  {
    goto LABEL_1834;
  }

  v692 = &v721 + v689;
  if (v691 >= &v721 && v692 > v691)
  {
    goto LABEL_1834;
  }

  if (v689)
  {
    memmove(&v721, v691, v689);
  }

  if (v692 <= "DroppedFrames.Encoder" && v692 + 21 > "DroppedFrames.Encoder")
  {
    goto LABEL_1834;
  }

  strcpy(v692, "DroppedFrames.Encoder");
  v687 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (SHIBYTE(v721.__r_.__value_.__r.__words[2]) < 0)
  {
    v693 = v687;
    operator delete(v721.__r_.__value_.__l.__data_);
    v687 = v693;
  }

  v694 = 0;
  atomic_compare_exchange_strong(v686, &v694, v687);
  if (v687)
  {
    goto LABEL_1801;
  }

LABEL_1802:
  v695 = v7[23];
  if ((v695 & 0x8000000000000000) != 0)
  {
    v696 = *v7;
    v695 = *(v7 + 1);
  }

  else
  {
    v696 = v7;
  }

  if (v695 >= v730 + ~*(&v730 + 1))
  {
    v697 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v697 = v695;
  }

  memcpy(&v729[*(&v730 + 1)], v696, v697);
  *(&v730 + 1) += v697;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x1AuLL)
  {
    v698 = 26;
  }

  else
  {
    v698 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "DroppedFrames.Ratelimiter ", v698);
  *(&v730 + 1) += v698;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%u", *(v718 + 88));
  v699 = v730;
  v700 = *(&v730 + 1) + 1;
  memcpy(&v729[*(&v730 + 1)], "\n", v730 != *(&v730 + 1) + 1);
  v701 = *(&v730 + 1);
  if (v699 != v700)
  {
    v701 = *(&v730 + 1) + 1;
  }

  *(&v730 + 1) = v701;
  v729[v701] = 0;
  if (v11)
  {
    v702 = atomic_load_explicit(&qword_28100BE50, memory_order_acquire);
    if (!v702)
    {
LABEL_1817:
      if (v7[23] >= 0)
      {
        v703 = v7[23];
      }

      else
      {
        v703 = *(v7 + 1);
      }

      if ((v703 + 25) <= 0x7FFFFFFFFFFFFFF7)
      {
        if ((v703 + 25) >= 0x17)
        {
          operator new();
        }

        goto LABEL_1834;
      }

      goto LABEL_1835;
    }
  }

  else
  {
    v702 = atomic_load_explicit(&qword_28100BE48, memory_order_acquire);
    if (!v702)
    {
      goto LABEL_1817;
    }
  }

  webrtc::metrics::HistogramAdd(v702, *(v718 + 88));
  v704 = v7[23];
  if ((v704 & 0x8000000000000000) != 0)
  {
    v705 = v7;
    v7 = *v7;
    v704 = *(v705 + 1);
  }

  if (v704 >= v730 + ~*(&v730 + 1))
  {
    v706 = v730 + ~*(&v730 + 1);
  }

  else
  {
    v706 = v704;
  }

  memcpy(&v729[*(&v730 + 1)], v7, v706);
  *(&v730 + 1) += v706;
  v729[*(&v730 + 1)] = 0;
  if (v730 + ~*(&v730 + 1) >= 0x1FuLL)
  {
    v707 = 31;
  }

  else
  {
    v707 = v730 + ~*(&v730 + 1);
  }

  memcpy(&v729[*(&v730 + 1)], "DroppedFrames.CongestionWindow ", v707);
  *(&v730 + 1) += v707;
  v729[*(&v730 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v729, "%u", *(v718 + 92));
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v708, v709, v710, v711, v712, v713, v714, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/send_statistics_proxy.cc");
  }
}