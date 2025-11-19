int64x2_t *std::deque<std::unique_ptr<webrtc::RtpFrameObject>>::erase(int64x2_t *result, char *a2, int64x2_t **a3)
{
  v3 = a3;
  v5 = result[2].u64[0];
  v4 = result[2].i64[1];
  v6 = v5 + v4;
  v7 = result->i64[1];
  v8 = result[1].i64[0];
  v9 = (v7 + 8 * ((v5 + v4) >> 9));
  v112 = result;
  if (v8 == v7)
  {
    if (!a3)
    {
      goto LABEL_151;
    }

    v12 = 0;
    v15 = 0;
    v10 = (v7 + 8 * (v5 >> 9));
    v11 = *v10;
  }

  else
  {
    if (&(*v9)[v6 & 0x1FF] == a3)
    {
      goto LABEL_151;
    }

    v10 = (v7 + 8 * (v5 >> 9));
    v11 = *v10;
    v12 = &(*v10)[result[2].i64[0] & 0x1FF];
    if (a3 == v12)
    {
      v13 = (v7 + 8 * (v5 >> 9));
      v110 = a3;
      v111 = 0;
      v109 = 1;
      v14 = a3 - v11;
      if (v14 < 0)
      {
LABEL_26:
        v29 = 510 - v14;
        v30 = ~v29;
        v19 = &v13[-(v29 >> 9)];
        v20 = *v19;
        v21 = &(*v19)[v30 & 0x1FF];
        if (v10 != v13)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }

LABEL_13:
      v18 = v14 + 1;
      v19 = &v13[(v14 + 1) >> 9];
      v20 = *v19;
      v21 = &(*v19)[v18 & 0x1FF];
      if (v10 != v13)
      {
LABEL_27:
        if (v11 != v3)
        {
          while (1)
          {
            v31 = v21 - v20;
            if (v3 - v11 >= v31)
            {
              v32 = v31;
            }

            else
            {
              v32 = v3 - v11;
            }

            if (v32)
            {
              v33 = -8 * v32;
              v34 = v3 - 1;
              do
              {
                v35 = *v34;
                *v34 = 0;
                v36 = *--v21;
                result = v36;
                *v21 = v35;
                if (v36)
                {
                  result = (*(result->i64[0] + 8))(result);
                }

                --v34;
                v33 += 8;
              }

              while (v33);
            }

            v3 -= v32;
            if (v3 == v11)
            {
              break;
            }

            v37 = *--v19;
            v20 = v37;
            v21 = v37 + 512;
          }

          v20 = *v19;
          if (*v19 + 512 == v21)
          {
            v38 = v19[1];
            ++v19;
            v20 = v38;
            v21 = v38;
          }
        }

        for (i = v13 - 1; i != v10; --i)
        {
          v40 = *i;
          v41 = (*i + 512);
          while (1)
          {
            v42 = v21 - v20;
            if ((v41 - v40) >> 3 >= v42)
            {
              v43 = v42;
            }

            else
            {
              v43 = (v41 - v40) >> 3;
            }

            if (v43)
            {
              v44 = -8 * v43;
              v45 = (v41 - 8);
              do
              {
                v46 = *v45;
                *v45 = 0;
                v47 = *--v21;
                result = v47;
                *v21 = v46;
                if (v47)
                {
                  result = (*(result->i64[0] + 8))(result);
                }

                --v45;
                v44 += 8;
              }

              while (v44);
            }

            v41 -= 8 * v43;
            if (v41 == v40)
            {
              break;
            }

            v48 = *--v19;
            v20 = v48;
            v21 = v48 + 512;
          }

          v20 = *v19;
          if (*v19 + 512 == v21)
          {
            v49 = v19[1];
            ++v19;
            v20 = v49;
            v21 = v49;
          }
        }

        v50 = (*i + 512);
        if (v50 != v12)
        {
          while (1)
          {
            v51 = v21 - v20;
            if ((v50 - v12) >> 3 >= v51)
            {
              v52 = v51;
            }

            else
            {
              v52 = (v50 - v12) >> 3;
            }

            if (v52)
            {
              v53 = v21 - 1;
              v54 = -8 * v52;
              v55 = (v50 - 8);
              do
              {
                v56 = *v55;
                *v55 = 0;
                result = *v53;
                *v53 = v56;
                if (result)
                {
                  result = (*(result->i64[0] + 8))(result);
                }

                --v53;
                --v55;
                v54 += 8;
              }

              while (v54);
            }

            v50 -= 8 * v52;
            if (v50 == v12)
            {
              break;
            }

            v57 = *--v19;
            v20 = v57;
            v21 = v57 + 512;
          }
        }

        goto LABEL_67;
      }

LABEL_14:
      if (v12 != v3)
      {
        while (1)
        {
          v22 = v21 - v20;
          if (v3 - v12 >= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = v3 - v12;
          }

          if (v23)
          {
            v24 = v21 - 1;
            v25 = -8 * v23;
            v26 = v3 - 1;
            do
            {
              v27 = *v26;
              *v26 = 0;
              result = *v24;
              *v24 = v27;
              if (result)
              {
                result = (*(result->i64[0] + 8))(result);
              }

              --v24;
              --v26;
              v25 += 8;
            }

            while (v25);
          }

          v3 -= v23;
          if (v3 == v12)
          {
            break;
          }

          v28 = *--v19;
          v20 = v28;
          v21 = v28 + 512;
        }
      }

LABEL_67:
      if (v110)
      {
        v58 = *v12;
        *v12 = 0;
        if (v58)
        {
          (*(v58->i64[0] + 8))(v58);
        }

        v59 = v112;
        v60 = vaddq_s64(v112[2], xmmword_273B93620);
        v112[2] = v60;
        v61 = v60.i64[0];
        v62 = v112->i64[1];
        v63 = v109;
        if (v60.i64[0] < 0x400uLL)
        {
LABEL_142:
          result = &v62[v61 >> 9];
          if (v59[1].i64[0] == v62)
          {
            goto LABEL_146;
          }
        }

        else
        {
          operator delete(*v62);
          v64 = v112->i64[1] + 8;
          v112->i64[1] = v64;
          v61 = v112[2].i64[0] - 512;
          v112[2].i64[0] = v61;
          result = (v64 + 8 * (v61 >> 9));
          if (v112[1].i64[0] == v64)
          {
            goto LABEL_146;
          }
        }

        goto LABEL_143;
      }

      goto LABEL_151;
    }

    v15 = &(*v10)[result[2].i64[0] & 0x1FF];
  }

  v13 = v10;
  v16 = ((a3 - *a2) >> 3) + ((a2 - v10) << 6);
  v17 = v16 == (v15 - v11) >> 3;
  v111 = v16 - ((v15 - v11) >> 3);
  if (!v111)
  {
    v3 = v12;
    v110 = v15;
    v109 = v16 == (v15 - v11) >> 3;
    v14 = v12 - v11;
    if (v14 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if (v16 < 1)
  {
    v65 = 511 - v16;
    v13 = &v10[-(v65 >> 9)];
    v11 = *v13;
    v3 = &(*v13)[~v65 & 0x1FFLL];
    if (v111 <= (v4 - 1) >> 1)
    {
LABEL_12:
      v110 = v15;
      v109 = v17;
      v14 = v3 - v11;
      if (v14 < 0)
      {
        goto LABEL_26;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v13 = &v10[v16 >> 9];
    v11 = *v13;
    v3 = &(*v13)[v16 & 0x1FF];
    if (v111 <= (v4 - 1) >> 1)
    {
      goto LABEL_12;
    }
  }

  v66 = v3 - v11;
  if (v66 < 0)
  {
    v95 = 510 - v66;
    v96 = ~v95;
    v68 = &v13[-(v95 >> 9)];
    v69 = *v68;
    v70 = &(*v68)[v96 & 0x1FF];
    if (v8 != v7)
    {
LABEL_76:
      v71 = &(*v9)[v6 & 0x1FF];
      if (v68 != v9)
      {
        goto LABEL_77;
      }

LABEL_121:
      if (v71 == v70)
      {
        goto LABEL_135;
      }

      while (1)
      {
        v98 = (v11 - v3 + 4096) >> 3;
        if ((v71 - v70) >> 3 < v98)
        {
          v98 = (v71 - v70) >> 3;
        }

        if (v98)
        {
          v99 = 8 * v98;
          v100 = &v70[v98];
          do
          {
            v101 = *v70;
            *v70 = 0;
            result = *v3;
            *v3 = v101;
            if (result)
            {
              result = (*(result->i64[0] + 8))(result);
            }

            ++v70;
            ++v3;
            v99 -= 8;
          }

          while (v99);
          if (v100 == v71)
          {
LABEL_133:
            if (v3 == *v13 + 512)
            {
              v3 = v13[1];
            }

            goto LABEL_135;
          }
        }

        else
        {
          v100 = v70;
        }

        v97 = v13[1];
        ++v13;
        v11 = v97;
        v70 = v100;
        v3 = v97;
      }
    }
  }

  else
  {
    v67 = v66 + 1;
    v68 = &v13[(v66 + 1) >> 9];
    v69 = *v68;
    v70 = &(*v68)[v67 & 0x1FF];
    if (v8 != v7)
    {
      goto LABEL_76;
    }
  }

  v71 = 0;
  if (v68 == v9)
  {
    goto LABEL_121;
  }

LABEL_77:
  v72 = v69 + 512;
  if (v69 + 512 == v70)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v74 = (v11 - v3 + 4096) >> 3;
    if (v72 - v70 < v74)
    {
      v74 = v72 - v70;
    }

    if (!v74)
    {
      v76 = v70;
      goto LABEL_80;
    }

    v75 = 8 * v74;
    v76 = &v70[v74];
    do
    {
      v77 = *v70;
      *v70 = 0;
      result = *v3;
      *v3 = v77;
      if (result)
      {
        result = (*(result->i64[0] + 8))(result);
      }

      ++v70;
      ++v3;
      v75 -= 8;
    }

    while (v75);
    if (v76 == v72)
    {
      break;
    }

LABEL_80:
    v73 = v13[1];
    ++v13;
    v11 = v73;
    v70 = v76;
    v3 = v73;
  }

  v11 = *v13;
  if (v3 == *v13 + 512)
  {
    v78 = v13[1];
    ++v13;
    v11 = v78;
    v3 = v78;
  }

LABEL_91:
  v79 = (v68 + 1);
  if (v68 + 1 == v9)
  {
    goto LABEL_107;
  }

  while (2)
  {
    while (2)
    {
      v80 = 0;
      v81 = *v79;
      while (2)
      {
        v83 = (v11 - v3 + 4096) >> 3;
        if ((4096 - v80) >> 3 < v83)
        {
          v83 = (4096 - v80) >> 3;
        }

        if (!v83)
        {
          v85 = v80;
LABEL_97:
          v82 = v13[1];
          ++v13;
          v11 = v82;
          v80 = v85;
          v3 = v82;
          continue;
        }

        break;
      }

      v84 = 8 * v83;
      v85 = 8 * v83 + v80;
      v86 = (v81 + v80);
      do
      {
        v87 = *v86;
        *v86 = 0;
        result = *v3;
        *v3 = v87;
        if (result)
        {
          result = (*(result->i64[0] + 8))(result);
        }

        ++v86;
        ++v3;
        v84 -= 8;
      }

      while (v84);
      if (v85 != 4096)
      {
        goto LABEL_97;
      }

      v11 = *v13;
      if (v3 == *v13 + 512)
      {
        v88 = v13[1];
        ++v13;
        v11 = v88;
        v3 = v88;
        if (++v79 == v9)
        {
          goto LABEL_107;
        }

        continue;
      }

      break;
    }

    if (++v79 != v9)
    {
      continue;
    }

    break;
  }

LABEL_107:
  v89 = *v9;
  if (*v9 != v71)
  {
    while (1)
    {
      v91 = (v11 - v3 + 4096) >> 3;
      if ((v71 - v89) >> 3 < v91)
      {
        v91 = (v71 - v89) >> 3;
      }

      if (v91)
      {
        v92 = 8 * v91;
        v93 = &v89[v91];
        do
        {
          v94 = *v89;
          *v89 = 0;
          result = *v3;
          *v3 = v94;
          if (result)
          {
            result = (*(result->i64[0] + 8))(result);
          }

          ++v89;
          ++v3;
          v92 -= 8;
        }

        while (v92);
        if (v93 == v71)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v93 = v89;
      }

      v90 = v13[1];
      ++v13;
      v11 = v90;
      v89 = v93;
      v3 = v90;
    }
  }

LABEL_135:
  if (!v3)
  {
LABEL_151:
    __break(1u);
    return result;
  }

  v102 = *v3;
  *v3 = 0;
  v59 = v112;
  if (v102)
  {
    (*(v102->i64[0] + 8))(v102);
  }

  v62 = v112->i64[1];
  v103 = v112[1].i64[0];
  v61 = v112[2].u64[0];
  v104 = v112[2].i64[1];
  v112[2].i64[1] = v104 - 1;
  v105 = ((v103 - v62) << 6) - 1;
  if (v103 == v62)
  {
    v105 = 0;
  }

  if (v105 - (v104 + v61) + 1 < 0x400)
  {
    v63 = 0;
    goto LABEL_142;
  }

  operator delete(*(v103 - 1));
  v63 = 0;
  v107 = v112->i64[1];
  v112[1].i64[0] -= 8;
  v61 = v112[2].u64[0];
  result = (v107 + 8 * (v61 >> 9));
  if (v112[1].i64[0] == v107)
  {
LABEL_146:
    v106 = 0;
    if (!v63)
    {
      goto LABEL_147;
    }

    return result;
  }

LABEL_143:
  v106 = result->i64[0] + 8 * (v61 & 0x1FF);
  if (!v63)
  {
LABEL_147:
    v108 = v111 + ((v106 - result->i64[0]) >> 3);
    if (v108 < 1)
    {
      return (result - 8 * ((511 - v108) >> 9));
    }

    else
    {
      return (result + 8 * (v108 >> 9));
    }
  }

  return result;
}

int64x2_t *webrtc::RtpSeqNumOnlyRefFinder::PaddingReceived@<X0>(int64x2_t *this@<X0>, unsigned __int16 a2@<W1>, unint64_t *a3@<X8>)
{
  v21 = a2;
  v6 = this + 2;
  v5 = this[2].i64[0];
  v7 = &this[1].i64[1];
  if (v5)
  {
    v8 = a2 - 100;
    do
    {
      while (1)
      {
        v14 = v5[1].u16[5];
        if (v14 != v8)
        {
          break;
        }

        v6 = v5;
        v5 = v5->i64[0];
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      v9 = (a2 - 100) - v14;
      v10 = v14 < v8;
      v11 = (v8 - v14) >= 0;
      if (v9 == 0x8000)
      {
        v11 = v10;
      }

      v12 = !v11;
      v13 = v11;
      if (v12)
      {
        v6 = v5;
      }

      v5 = v5->i64[v13];
    }

    while (v5);
  }

LABEL_14:
  v15 = *v7;
  if (*v7 != v6)
  {
    do
    {
      v18 = v15[1];
      v19 = v15;
      if (v18)
      {
        do
        {
          v20 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v20 = v19[2];
          v12 = *v20 == v19;
          v19 = v20;
        }

        while (!v12);
      }

      if (*v7 == v15)
      {
        *v7 = v20;
      }

      v17 = this[2].i64[0];
      --this[2].i64[1];
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v17, v15);
      operator delete(v15);
      v15 = v20;
    }

    while (v20 != v6);
  }

  std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)0>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(v7, &v21);
  webrtc::RtpSeqNumOnlyRefFinder::UpdateLastPictureIdWithPadding(this, v21);
  *a3 = 0;
  return webrtc::RtpSeqNumOnlyRefFinder::RetryStashedFrames(this, a3);
}

void absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::EmplaceBackSlow<std::unique_ptr<webrtc::RtpFrameObject>>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void webrtc::RtpSequenceNumberMap::InsertPacket(void *a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[6];
  if (!v6)
  {
    v7 = a1[2];
    v9 = a1[3];
    v40 = 341 * ((v9 - v7) >> 3) - 1;
    if (v9 == v7)
    {
      v40 = 0;
    }

    if (v40 != a1[5])
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v7 = a1[2];
  v8 = a1[5];
  v9 = &v7[v8 / 0x155];
  v10 = *v9;
  v11 = (*v9 + 12 * (v8 % 0x155));
  v12 = *v11;
  v13 = a2 >= v12;
  v14 = a2 - v12;
  v15 = v14 != 0 && v13;
  if (v14 == 0x8000)
  {
    v16 = v15;
  }

  else
  {
    v16 = (v14 & 0x8000u) == 0;
  }

  if (v16)
  {
    v17 = *(v7[(v6 + v8 - 1) / 0x155] + 6 * ((v6 + v8 - 1) % 0x155));
    v13 = v17 >= a2;
    v18 = v17 - a2;
    v19 = v18 != 0 && v13;
    v20 = v18 == 0x8000 ? v19 : (v18 & 0x8000u) == 0;
    if (v20 == 1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sequence_number_map.cc");
      }

      v7 = a1[2];
      v9 = a1[3];
      if (v9 != v7)
      {
        v28 = a1[5];
        v29 = &v7[v28 / 0x155];
        v30 = *v29;
        v31 = *v29 + 12 * (v28 % 0x155);
        v32 = v7[(a1[6] + v28) / 0x155] + 12 * ((a1[6] + v28) % 0x155);
        while (v31 != v32)
        {
          if (!v31)
          {
            goto LABEL_85;
          }

          v31 += 12;
          if (v31 - v30 == 4092)
          {
            v33 = v29[1];
            ++v29;
            v30 = v33;
            v31 = v33;
          }
        }
      }

      a1[6] = 0;
      v60 = (v9 - v7) >> 3;
      if (v60 >= 3)
      {
        do
        {
          operator delete(*v7);
          v9 = a1[3];
          v7 = (a1[2] + 8);
          a1[2] = v7;
          v60 = (v9 - v7) >> 3;
        }

        while (v60 > 2);
      }

      if (v60 != 1)
      {
        if (v60 != 2)
        {
          v61 = a1[5];
          goto LABEL_89;
        }

        v61 = 341;
        goto LABEL_87;
      }

      goto LABEL_86;
    }
  }

  v34 = a1[3];
  if (v34 == v7)
  {
    v11 = 0;
  }

  if (v6 == *a1)
  {
    v35 = *v9;
    v36 = v11;
    v37 = &v7[v8 / 0x155];
    v38 = v6 - ((3 * v6) >> 2);
    if (v38)
    {
      v39 = v38 - 0x5555555555555555 * ((v11 - v10) >> 2);
      if (v39 < 1)
      {
        v65 = 340 - v39;
        v37 = (v9 - 8 * (v65 / 0x155));
        v35 = *v37;
        v36 = (*v37 + 12 * (341 * (v65 / 0x155) - v65) + 4080);
      }

      else
      {
        v37 = (v9 + 8 * (v39 / 0x155uLL));
        v35 = *v37;
        v36 = (*v37 + 12 * (v39 % 0x155uLL));
      }
    }
  }

  else
  {
    v37 = &v7[v8 / 0x155];
    v35 = *v9;
    v36 = v11;
  }

  v42 = ((v8 + v6) * 0x8060180601806019) >> 64;
  v43 = (v42 + ((v8 + v6 - v42) >> 1)) >> 8;
  v44 = &v7[v43];
  if (v34 == v7)
  {
    v45 = 0;
    if (!v36)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v45 = *v44 + 12 * (v8 + v6 - 341 * v43);
    if (v45 == v36)
    {
      goto LABEL_61;
    }
  }

  v46 = 341 * (v44 - v37) + 0x5555555555555555 * ((v36 - v35) >> 2) - 0x5555555555555555 * ((v45 - *v44) >> 2);
  if (v46)
  {
    do
    {
      v47 = v46 >> 1;
      if (v46 == 1)
      {
        v48 = v36;
        v49 = v37;
        v50 = *v36;
        if (v50 != a2)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v51 = v47 - 0x5555555555555555 * ((v36 - *v37) >> 2);
        if (v51 < 1)
        {
          v52 = 340 - v51;
          v49 = &v37[-(v52 / 0x155)];
          v48 = (*v49 + 12 * (341 * (v52 / 0x155) - v52) + 4080);
          v50 = *v48;
          if (v50 != a2)
          {
LABEL_53:
            v53 = v50 - a2;
            v13 = v50 >= a2;
            v54 = v50 - a2;
            v55 = v54 != 0 && v13;
            v56 = (v54 & 0x8000u) == 0;
            if (v53 == 0x8000)
            {
              v56 = v55;
            }

            if (v56)
            {
              v36 = v48 + 6;
              if ((v48 + 6) - *v49 == 4092)
              {
                v57 = v49[1];
                ++v49;
                v36 = v57;
              }

              v47 = v46 + ~v47;
              v37 = v49;
            }
          }
        }

        else
        {
          v49 = &v37[v51 / 0x155uLL];
          v48 = (*v49 + 12 * (v51 % 0x155uLL));
          v50 = *v48;
          if (v50 != a2)
          {
            goto LABEL_53;
          }
        }
      }

      v46 = v47;
    }

    while (v47);
  }

LABEL_61:
  if (v37 > v9 || v37 == v9 && v11 <= v36)
  {
    if (v36 != v11)
    {
      v58 = 0x5555555555555555 * ((v11 - v10) >> 2) + 341 * ((v37 - v9) >> 3) - 0x5555555555555555 * ((v36 - *v37) >> 2);
      if (v58 >= 1)
      {
        v59 = v58 - 0x5555555555555555 * ((v11 - v10) >> 2);
        if (v59 < 1)
        {
          v7 = (*(v9 - 8 * ((340 - v59) / 0x155uLL)) + 12 * (341 * ((340 - v59) / 0x155uLL) - (340 - v59)) + 4080);
        }

        else
        {
          v7 = (*(v9 + 8 * (v59 / 0x155uLL)) + 12 * (v59 % 0x155uLL));
        }

        while (v11 != v7)
        {
          if (!v11)
          {
            goto LABEL_85;
          }

          v11 = (v11 + 12);
          if ((v11 - *v9) == 4092)
          {
            v62 = *(v9 + 8);
            v9 += 8;
            v11 = v62;
          }
        }

        v6 = a1[6] - v58;
        v8 = a1[5] + v58;
        a1[5] = v8;
        a1[6] = v6;
        v7 = a1[2];
        if (v8 >= 0x2AA)
        {
          do
          {
            operator delete(*v7);
            v7 = (a1[2] + 8);
            a1[2] = v7;
            v8 = a1[5] - 341;
            a1[5] = v8;
          }

          while (v8 > 0x2A9);
          v6 = a1[6];
        }
      }
    }

    v9 = a1[3];
    v63 = 341 * ((v9 - v7) >> 3) - 1;
    if (v9 == v7)
    {
      v63 = 0;
    }

    if (v63 != v6 + v8)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  while (1)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    v61 = 170;
LABEL_87:
    a1[5] = v61;
LABEL_89:
    v64 = 341 * ((v9 - v7) >> 3) - 1;
    if (v9 == v7)
    {
      v64 = 0;
    }

    if (v64 == a1[6] + v61)
    {
LABEL_33:
      std::deque<webrtc::RtpSequenceNumberMap::Association>::__add_back_capacity(a1 + 1);
      v7 = a1[2];
      v9 = a1[3];
    }

LABEL_34:
    if (v9 != v7)
    {
      v9 = a1[6] + a1[5];
      v7 = *(v7 + (((((v9 * 0x8060180601806019) >> 64) + ((v9 - ((v9 * 0x8060180601806019) >> 64)) >> 1)) >> 5) & 0x7FFFFFFFFFFFFF8));
      if (v7)
      {
        break;
      }
    }
  }

  v41 = v7 + 12 * (v9 % 0x155);
  *v41 = v4;
  *(v41 + 4) = a3;
  ++a1[6];
}

uint64_t webrtc::RtpSequenceNumberMap::Get(webrtc::RtpSequenceNumberMap *this, int a2)
{
  v2 = *(this + 6);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (*(this + 3) == v3)
  {
    return 0;
  }

  v4 = *(this + 5);
  v5 = 8 * (v4 / 0x155);
  v6 = v4 % 0x155;
  v7 = v4 + v2;
  v8 = 8 * (v7 / 0x155);
  v9 = (*(v3 + v5) + 12 * v6);
  v10 = v7 % 0x155;
  v11 = *(v3 + v8) + 12 * (v7 % 0x155);
  if (v11 != v9)
  {
    v12 = v10 - v6 + 341 * ((v8 - v5) >> 3);
    if (v12)
    {
      v13 = (v3 + v5);
      v14 = *v9;
      v15 = a2 - *v9;
      do
      {
        v16 = v12 >> 1;
        if (v12 == 1)
        {
          v17 = v9;
          v18 = v13;
          if ((*v9 - v14) < v15)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v19 = v16 - 0x5555555555555555 * ((v9 - *v13) >> 2);
          if (v19 < 1)
          {
            v20 = 340 - v19;
            v18 = &v13[-(v20 / 0x155)];
            v17 = (*v18 + 12 * (341 * (v20 / 0x155) - v20) + 4080);
            if ((*v17 - v14) < v15)
            {
LABEL_15:
              v9 = v17 + 6;
              if ((v17 - *v18 + 12) == 4092)
              {
                v21 = v18[1];
                ++v18;
                v9 = v21;
              }

              v16 = v12 + ~v16;
              v13 = v18;
            }
          }

          else
          {
            v18 = &v13[v19 / 0x155uLL];
            v17 = (*v18 + 12 * (v19 % 0x155uLL));
            if ((*v17 - v14) < v15)
            {
              goto LABEL_15;
            }
          }
        }

        v12 = v16;
      }

      while (v16);
    }
  }

  if (v9 == v11 || *v9 != a2)
  {
    return 0;
  }

  else
  {
    return *(v9 + 2);
  }
}

void **std::deque<webrtc::RtpSequenceNumberMap::Association>::~deque[abi:sn200100](void **result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v3 == v2)
  {
    v4 = result + 5;
  }

  else
  {
    v4 = result + 5;
    v5 = result[4];
    v6 = &v2[v5 / 0x155];
    v7 = *v6;
    v8 = *v6 + 12 * (v5 % 0x155);
    while (v8 != v2[(result[5] + v5) / 0x155] + 12 * ((result[5] + v5) % 0x155))
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v8 += 12;
      if (v8 - v7 == 4092)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
        v8 = v9;
      }
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = v1[2];
      v2 = (v1[1] + 8);
      v1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 170;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 341;
  }

  v1[4] = v11;
LABEL_15:
  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = v1[1];
    v13 = v1[2];
    if (v13 != v14)
    {
      v1[2] = &v13[(v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8];
    }
  }

  if (*v1)
  {
    operator delete(*v1);
  }

  return v1;
}

void *std::deque<webrtc::RtpSequenceNumberMap::Association>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
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

void webrtc::RtpStreamReceiverController::Receiver::~Receiver(webrtc::RtpStreamReceiverController::Receiver *this)
{
  *this = &unk_28829D3F8;
  webrtc::RtpDemuxer::RemoveSink(*(this + 1) + 24, *(this + 2));
}

{
  *this = &unk_28829D3F8;
  webrtc::RtpDemuxer::RemoveSink(*(this + 1) + 24, *(this + 2));

  JUMPOUT(0x2743DA540);
}

void webrtc::RtpStreamReceiverController::~RtpStreamReceiverController(webrtc::RtpStreamReceiverController *this)
{
  *this = &unk_28829D418;
  *(this + 1) = &unk_28829D448;
  webrtc::RtpDemuxer::~RtpDemuxer((this + 24));
}

{
  *this = &unk_28829D418;
  *(this + 1) = &unk_28829D448;
  webrtc::RtpDemuxer::~RtpDemuxer((this + 24));

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::RtpStreamReceiverController::~RtpStreamReceiverController(webrtc::RtpStreamReceiverController *this)
{
  *(this - 1) = &unk_28829D418;
  *this = &unk_28829D448;
  webrtc::RtpDemuxer::~RtpDemuxer((this + 16));
}

{
  *(this - 1) = &unk_28829D418;
  *this = &unk_28829D448;
  webrtc::RtpDemuxer::~RtpDemuxer((this + 16));

  JUMPOUT(0x2743DA540);
}

const void *webrtc::RtpStreamReceiverController::OnRecoveredPacket(uint64_t a1, uint64_t a2)
{
  result = webrtc::RtpDemuxer::ResolveSink(a1 + 24, a2);
  if (result)
  {
    v3 = *(*result + 16);

    return v3();
  }

  return result;
}

const void *non-virtual thunk towebrtc::RtpStreamReceiverController::OnRecoveredPacket(uint64_t a1, uint64_t a2)
{
  result = webrtc::RtpDemuxer::ResolveSink(a1 + 16, a2);
  if (result)
  {
    v3 = *(*result + 16);

    return v3();
  }

  return result;
}

void webrtc::internal::RtpStreamsSynchronizer::~RtpStreamsSynchronizer(webrtc::internal::RtpStreamsSynchronizer *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 26) = 0;
  }

  if (*(this + 18))
  {
    v3 = *(this + 17);
    v4 = *(*(this + 16) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 18) = 0;
    if (v3 != (this + 128))
    {
      do
      {
        v6 = *(v3 + 1);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (this + 128));
    }
  }

  if (*(this + 7))
  {
    v7 = *(this + 6);
    v8 = *(*(this + 5) + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(this + 7) = 0;
    if (v7 != (this + 40))
    {
      do
      {
        v10 = *(v7 + 1);
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != (this + 40));
    }
  }

  v11 = *(this + 3);
  *(this + 3) = 0;
  if (v11)
  {
    MEMORY[0x2743DA540](v11, 0x1000C40E0EAB150);
  }
}

uint64_t webrtc::internal::RtpStreamsSynchronizer::ConfigureSync(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    v2 = result;
    v3 = *(result + 24);
    v2[2] = a2;
    v2[3] = 0;
    if (v3)
    {
      MEMORY[0x2743DA540](v3, 0x1000C40E0EAB150);
      a2 = v2[2];
    }

    if (a2)
    {
      operator new();
    }

    result = v2[26];
    if (result)
    {
      *(result + 4) = 0;
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        result = MEMORY[0x2743DA540]();
      }

      v2[26] = 0;
    }
  }

  return result;
}

uint64_t webrtc::internal::RtpStreamsSynchronizer::GetStreamSyncOffsetInMs(webrtc::internal::RtpStreamsSynchronizer *this, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6)
{
  result = *(this + 2);
  if (!result)
  {
    return result;
  }

  v36 = 0;
  v35 = 0;
  result = (*(*result + 32))(result, &v36, &v35);
  if (!result)
  {
    return result;
  }

  if (*(this + 80) != 1)
  {
    return 0;
  }

  v13 = v36;
  if (*(this + 100))
  {
    v14 = *(this + 24);
    v15 = v36 >= v14;
    v16 = v36 - v14;
    v17 = v16 != 0 && v15;
    if (v16 != 0x80000000)
    {
      v17 = v16 >= 0;
    }

    if (!v17)
    {
      v16 |= 0xFFFFFFFF00000000;
    }

    v18 = v16 + *(this + 11);
  }

  else
  {
    v18 = v36;
  }

  *(this + 11) = v18;
  *(this + 24) = v13;
  *(this + 100) = 1;
  v19 = *(this + 9) + v18 * *(this + 8) + 0.5;
  v20 = (v19 < 0.0) | (2 * (v19 > 1.84467441e19));
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_46;
    }

    v21 = -1;
  }

  else
  {
    if (v20)
    {
      return 0;
    }

    v21 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  v22 = (v21 / 4294967.3 + 0.5) + 1000 * HIDWORD(v21);
  result = (*(**(this + 2) + 48))(*(this + 2), v22, v35);
  if (*(this + 168) != 1)
  {
    return 0;
  }

  if (*(this + 188))
  {
    v23 = *(this + 46);
    v15 = a2 >= v23;
    v24 = a2 - v23;
    v25 = v24 != 0 && v15;
    if (v24 != 0x80000000)
    {
      v25 = v24 >= 0;
    }

    if (!v25)
    {
      v24 |= 0xFFFFFFFF00000000;
    }

    v26 = v24 + *(this + 22);
  }

  else
  {
    v26 = a2;
  }

  *(this + 22) = v26;
  *(this + 46) = a2;
  *(this + 188) = 1;
  v27 = *(this + 20) + v26 * *(this + 19) + 0.5;
  v28 = (v27 < 0.0) | (2 * (v27 > 1.84467441e19));
  if (v28 <= 1)
  {
    if (v28)
    {
      return 0;
    }

    v29 = v27;
    if (!v27)
    {
      return 0;
    }

    goto LABEL_38;
  }

  if (v28 != 2)
  {
LABEL_46:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(result);
  }

  v29 = -1;
LABEL_38:
  v30 = (v29 / 4294967.3 + 0.5) + 1000 * HIDWORD(v29);
  if (webrtc::g_clock)
  {
    v31 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v31 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v32 = v35;
  v33 = v30 - ((a3 - v31 / 1000000) & ~((a3 - v31 / 1000000) >> 63));
  *a4 = v33;
  *a5 = v31 / 1000000 + v22 - (v32 + v33);
  v34 = 0.0;
  if (*(this + 168) == 1)
  {
    v34 = 4294967.3 / *(this + 19);
  }

  *a6 = v34;
  return 1;
}

void absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::internal::RtpStreamsSynchronizer::ConfigureSync(webrtc::Syncable *)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16))
  {
    if (webrtc::g_clock)
    {
      v2 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v2 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v3 = v2 / 1000000 - *(v1 + 216);
    if (v3 >= 10001)
    {
      *(v1 + 216) = v2 / 1000000;
    }

    v4 = *(v1 + 104);
    (*(**(v1 + 16) + 24))(&v34);
    if (v40 == 1)
    {
      v5 = v36;
      *(v1 + 112) = v35;
      *(v1 + 104) = v34;
      if (webrtc::RtpToNtpEstimator::UpdateMeasurements(v1 + 32, v37 | (v5 << 32), v38))
      {
        if (v4 != *(v1 + 104))
        {
          v6 = *(v1 + 192);
          (*(**(v1 + 8) + 24))(&v27);
          if (v33 == 1)
          {
            v7 = v29;
            *(v1 + 200) = v28;
            *(v1 + 192) = v27;
            if (webrtc::RtpToNtpEstimator::UpdateMeasurements(v1 + 120, v30 | (v7 << 32), v31))
            {
              if (v6 != *(v1 + 192))
              {
                v26 = 0;
                if (webrtc::StreamSynchronization::ComputeRelativeDelay(v1 + 32, v1 + 120, &v26))
                {
                  if (v3 >= 10001 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
                  {
                    if ((v40 & 1) == 0 || (v33 & 1) == 0)
                    {
                      goto LABEL_32;
                    }

                    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_streams_synchronizer2.cc");
                  }

                  v25 = 0;
                  if (v33)
                  {
                    v24 = v32;
                    if (v40)
                    {
                      if (webrtc::StreamSynchronization::ComputeDelays(*(v1 + 24), v26, v39, &v25, &v24))
                      {
                        if (v3 >= 10001 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
                        {
                          v23[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_streams_synchronizer2.cc";
                          v23[1] = 1265;
                          v23[2] = &v22;
                          v23[3] = "Sync delay stats: ";
                          v23[4] = v23;
                          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_streams_synchronizer2.cc");
                        }

                        if (((*(**(v1 + 16) + 40))(*(v1 + 16), v25) & 1) == 0)
                        {
                          *(*(v1 + 24) + 8) = (*(*(v1 + 24) + 8) * 0.9);
                        }

                        if (((*(**(v1 + 8) + 40))(*(v1 + 8), v24) & 1) == 0)
                        {
                          *(*(v1 + 24) + 16) = (*(*(v1 + 24) + 16) * 0.9);
                        }
                      }

                      return;
                    }
                  }

LABEL_32:
                  __break(1u);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t webrtc::RtpToNtpEstimator::UpdateMeasurements(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (*(a1 + 68))
  {
    v4 = *(a1 + 64);
    v13 = a3 >= v4;
    v5 = a3 - v4;
    v6 = v5 != 0 && v13;
    if (v5 != 0x80000000)
    {
      v6 = v5 >= 0;
    }

    if (!v6)
    {
      v5 |= 0xFFFFFFFF00000000;
    }

    v7 = v5 + *(a1 + 56);
  }

  else
  {
    v7 = a3;
  }

  *(a1 + 56) = v7;
  *(a1 + 64) = a3;
  *(a1 + 68) = 1;
  v8 = (a1 + 8);
  v9 = *(a1 + 16);
  if (v9 == a1 + 8)
  {
LABEL_18:
    if (!a2)
    {
      return 0;
    }

    if (!*(a1 + 24))
    {
      *a1 = 0;
      goto LABEL_40;
    }

    v12 = *(v9 + 16);
    v13 = v12 < a2 && v12 + 0xE1000000000 >= a2;
    if (v13)
    {
      v16 = *(v9 + 24);
      v17 = __OFSUB__(v7, v16);
      v18 = v7 - v16;
      if ((v18 < 0) ^ v17 | (v18 == 0))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/rtp_to_ntp_estimator.cc");
        }
      }

      else if (v18 < 33554433)
      {
LABEL_38:
        v30 = *(a1 + 24);
        *a1 = 0;
        if (v30 == 20)
        {
          v31 = *(a1 + 8);
          v33 = *v31;
          v32 = v31[1];
          *(v33 + 8) = v32;
          *v32 = v33;
          *(a1 + 24) = 19;
          operator delete(v31);
        }

LABEL_40:
        operator new();
      }
    }

    v14 = (*a1)++;
    if (v14 < 2)
    {
      return 0;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/rtp_to_ntp_estimator.cc");
    }

    if (*(a1 + 24))
    {
      v26 = *(a1 + 16);
      v27 = *(*(a1 + 8) + 8);
      v28 = *v26;
      *(v28 + 8) = v27;
      *v27 = v28;
      *(a1 + 24) = 0;
      if (v26 != v8)
      {
        do
        {
          v29 = v26[1];
          operator delete(v26);
          v26 = v29;
        }

        while (v29 != v8);
      }
    }

    if (*(a1 + 48) == 1)
    {
      *(a1 + 48) = 0;
    }

    goto LABEL_38;
  }

  v10 = *(a1 + 16);
  while (v10[2] != a2 && v10[3] != v7)
  {
    v10 = v10[1];
    if (v10 == v8)
    {
      goto LABEL_18;
    }
  }

  return 1;
}

uint64_t webrtc::RtpTransceiver::RtpTransceiver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  *a1 = &unk_28829D470;
  if (!v12)
  {
    v13 = &unk_280905000;
    {
      v13 = &unk_280905000;
      if (v15)
      {
        operator new();
      }
    }

    v12 = pthread_getspecific(*(v13[403] + 88));
  }

  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  *(a1 + 20) = v10;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 84) = 3;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 154) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a3;
  *(a1 + 176) = a4;
  *(a1 + 352) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return a1;
}

uint64_t webrtc::RtpTransceiver::RtpTransceiver(uint64_t a1, uint64_t a2, void (****a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_28829D470;
  if (!v15)
  {
    {
      operator new();
    }

    v15 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  }

  *(a1 + 8) = v15;
  *(a1 + 16) = 1;
  *(a1 + 20) = (*(**a2 + 64))();
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 84) = 3;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 154) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a4;
  *(a1 + 176) = a5;
  *(a1 + 184) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 280) = *a6;
  *(a1 + 296) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v16 = *(a7 + 24);
  if (v16)
  {
    if (v16 == a7)
    {
      *(a1 + 352) = a1 + 328;
      (*(**(a7 + 24) + 24))(*(a7 + 24));
    }

    else
    {
      *(a1 + 352) = v16;
      *(a7 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 352) = 0;
  }

  v17 = *(*a2 + 24);
  v18 = (*(**a2 + 64))();
  v19 = (*(**(a1 + 176) + 24))(*(a1 + 176));
  v20 = 48;
  if (v18 != 1)
  {
    v20 = 0;
  }

  v21 = (v19 + v20);
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v22 = v21[1];
  if (v22 != *v21)
  {
    if (0x84BDA12F684BDA13 * ((v22 - *v21) >> 3) < 0x12F684BDA12F685)
    {
      operator new();
    }

LABEL_67:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  (*(*v17 + 304))(v17, &v47);
  v23 = v47;
  if (v47)
  {
    v24 = v47;
    if (v48 != v47)
    {
      v25 = v48 - 216;
      v26 = v48 - 216;
      v27 = v48 - 216;
      do
      {
        v28 = *v27;
        v27 -= 216;
        (*v28)(v26);
        v25 -= 216;
        v37 = v26 == v23;
        v26 = v27;
      }

      while (!v37);
      v24 = v47;
    }

    v48 = v23;
    operator delete(v24);
  }

  v29 = *(a1 + 40);
  if (v29 >= *(a1 + 48))
  {
    std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>((a1 + 32));
  }

  if (!v29)
  {
    goto LABEL_66;
  }

  v30 = *a2;
  *v29 = *a2;
  if (v30)
  {
    (**v30)(v30);
  }

  *(a1 + 40) = v29 + 1;
  v31 = *(a1 + 64);
  if (v31 >= *(a1 + 72))
  {
    std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>((a1 + 56));
  }

  if (!v31)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v32 = *a3;
  *v31 = *a3;
  if (v32)
  {
    (**v32)(v32);
  }

  *(a1 + 64) = v31 + 1;
  (*(**(*a2 + 24) + 240))(v44);
  if (v46 == v45 || *(v45 + 104) != 1)
  {
    v36 = 0;
    goto LABEL_40;
  }

  v33 = *(v45 + 103);
  v34 = v33;
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(v45 + 88);
  }

  if (v33 == 4)
  {
    v35 = (v45 + 80);
    if (v34 < 0)
    {
      v35 = *(v45 + 80);
    }

    v36 = *"L1T1" != *v35;
LABEL_40:
    v37 = 0xF0F0F0F0F0F0F0F1 * ((v46 - v45) >> 4) <= 1 && !v36;
    if (v37)
    {
      goto LABEL_65;
    }
  }

  v38 = *(a1 + 288);
  v39 = *(a1 + 280);
  v40 = v39;
  if (v39 != v38)
  {
    v40 = *(a1 + 280);
    while ((*(v40 + 23) & 0x80000000) == 0 || *(v40 + 8) != 72 || memcmp(*v40, "http://www.webrtc.org/experiments/rtp-hdrext/generic-frame-descriptor-00", 0x48uLL) || *(v40 + 36) == 4)
    {
      v40 += 40;
      if (v40 == v38)
      {
        goto LABEL_54;
      }
    }
  }

  if (v40 == v38)
  {
LABEL_54:
    while (v39 != v38)
    {
      if (*(v39 + 23) < 0)
      {
        v42 = *(v39 + 8);
        if (v42 == 87)
        {
          if (memcmp(*v39, "https://aomediacodec.github.io/av1-rtp-spec/#dependency-descriptor-rtp-header-extension", 0x57uLL))
          {
            goto LABEL_57;
          }
        }

        else if (v42 != 70 || memcmp(*v39, "http://www.webrtc.org/experiments/rtp-hdrext/video-layers-allocation00", 0x46uLL))
        {
          goto LABEL_57;
        }

        *(v39 + 36) = 0;
      }

LABEL_57:
      v39 += 40;
    }
  }

LABEL_65:
  webrtc::RtpParameters::~RtpParameters(v44);
  return a1;
}

void webrtc::RtpTransceiver::~RtpTransceiver(webrtc::RtpTransceiver *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_28829D470;
  if ((*(this + 80) & 1) == 0)
  {
    webrtc::RtpTransceiver::StopTransceiverProcedure(this);
  }

  if (*(this + 20))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 195, "!channel_", "\t", a5, a6, a7, a8, "Missing call to ClearChannel?");
    webrtc::RtpTransceiver::~RtpTransceiver(v59);
  }

  v9 = *(this + 44);
  if (v9 == (this + 328))
  {
    (*(*v9 + 32))(v9);
    v10 = *(this + 38);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = *(this + 38);
    if (!v10)
    {
LABEL_8:
      v11 = *(this + 35);
      if (!v11)
      {
        goto LABEL_9;
      }

LABEL_46:
      v31 = *(this + 36);
      if (v31 == v11)
      {
        *(this + 36) = v11;
        operator delete(v11);
        v12 = *(this + 32);
        if (v12)
        {
          goto LABEL_53;
        }
      }

      else
      {
        do
        {
          v32 = *(v31 - 17);
          v31 -= 5;
          if (v32 < 0)
          {
            operator delete(*v31);
          }
        }

        while (v31 != v11);
        v33 = *(this + 35);
        *(this + 36) = v11;
        operator delete(v33);
        v12 = *(this + 32);
        if (v12)
        {
          goto LABEL_53;
        }
      }

LABEL_10:
      v13 = *(this + 29);
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_59;
    }
  }

  v28 = *(this + 39);
  if (v28 == v10)
  {
    *(this + 39) = v10;
    operator delete(v10);
    v11 = *(this + 35);
    if (v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
    do
    {
      v29 = *(v28 - 9);
      v28 -= 4;
      if (v29 < 0)
      {
        operator delete(*v28);
      }
    }

    while (v28 != v10);
    v30 = *(this + 38);
    *(this + 39) = v10;
    operator delete(v30);
    v11 = *(this + 35);
    if (v11)
    {
      goto LABEL_46;
    }
  }

LABEL_9:
  v12 = *(this + 32);
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_53:
  v34 = *(this + 33);
  v35 = v12;
  if (v34 != v12)
  {
    v36 = v34 - 160;
    v37 = v34 - 160;
    v38 = v34 - 160;
    do
    {
      v39 = *v38;
      v38 -= 160;
      (*v39)(v37);
      v36 -= 160;
      v40 = v37 == v12;
      v37 = v38;
    }

    while (!v40);
    v35 = *(this + 32);
  }

  *(this + 33) = v12;
  operator delete(v35);
  v13 = *(this + 29);
  if (!v13)
  {
LABEL_11:
    v14 = *(this + 26);
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_65;
  }

LABEL_59:
  v41 = *(this + 30);
  v42 = v13;
  if (v41 != v13)
  {
    v43 = v41 - 160;
    v44 = v41 - 160;
    v45 = v41 - 160;
    do
    {
      v46 = *v45;
      v45 -= 160;
      (*v46)(v44);
      v43 -= 160;
      v40 = v44 == v13;
      v44 = v45;
    }

    while (!v40);
    v42 = *(this + 29);
  }

  *(this + 30) = v13;
  operator delete(v42);
  v14 = *(this + 26);
  if (!v14)
  {
LABEL_12:
    v15 = *(this + 23);
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_71:
    v53 = *(this + 24);
    v54 = v15;
    if (v53 != v15)
    {
      v55 = v53 - 160;
      v56 = v53 - 160;
      v57 = v53 - 160;
      do
      {
        v58 = *v57;
        v57 -= 160;
        (*v58)(v56);
        v55 -= 160;
        v40 = v56 == v15;
        v56 = v57;
      }

      while (!v40);
      v54 = *(this + 23);
    }

    *(this + 24) = v15;
    operator delete(v54);
    v16 = *(this + 20);
    *(this + 20) = 0;
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_65:
  v47 = *(this + 27);
  v48 = v14;
  if (v47 != v14)
  {
    v49 = v47 - 160;
    v50 = v47 - 160;
    v51 = v47 - 160;
    do
    {
      v52 = *v51;
      v51 -= 160;
      (*v52)(v50);
      v49 -= 160;
      v40 = v50 == v14;
      v50 = v51;
    }

    while (!v40);
    v48 = *(this + 26);
  }

  *(this + 27) = v14;
  operator delete(v48);
  v15 = *(this + 23);
  if (v15)
  {
    goto LABEL_71;
  }

LABEL_13:
  v16 = *(this + 20);
  *(this + 20) = 0;
  if (v16)
  {
LABEL_14:
    (*(*v16 + 8))(v16);
  }

LABEL_15:
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v17 = *(this + 7);
  if (v17)
  {
    v18 = *(this + 8);
    v19 = *(this + 7);
    if (v18 != v17)
    {
      do
      {
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (v21)
        {
          (*(*v20 + 8))(v20);
        }
      }

      while (v18 != v17);
      v19 = *(this + 7);
    }

    *(this + 8) = v17;
    operator delete(v19);
  }

  v22 = *(this + 4);
  if (v22)
  {
    v23 = *(this + 5);
    v24 = *(this + 4);
    if (v23 != v22)
    {
      do
      {
        v26 = *(v23 - 8);
        v23 -= 8;
        v25 = v26;
        if (v26)
        {
          (*(*v25 + 8))(v25);
        }
      }

      while (v23 != v22);
      v24 = *(this + 4);
    }

    *(this + 5) = v22;
    operator delete(v24);
  }

  v27 = *(this + 3);
  if (v27)
  {
    if (atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }
  }
}

void webrtc::RtpTransceiver::CreateChannel(_BYTE *a1@<X0>, void **a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, size_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = *MEMORY[0x277D85DE8];
  v50[0] = a2;
  v50[1] = a3;
  v49 = a4;
  v48 = a6;
  if (!*(*(a1 + 21) + 96))
  {
    if (a3 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_76;
    }

    if (a3 > 0x16)
    {
      operator new();
    }

    HIBYTE(v47) = a3;
    v21 = (v46 + a3);
    if (v46 > a2 || v21 <= a2)
    {
      if (a3)
      {
        memmove(v46, a2, a3);
      }

      *v21 = 0;
      if (v47 >= 0)
      {
        v24 = HIBYTE(v47);
      }

      else
      {
        v24 = v46[1];
      }

      if (v47 >= 0)
      {
        v25 = 22;
      }

      else
      {
        v25 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v25 - v24 < 0x18)
      {
        if (0x7FFFFFFFFFFFFFF6 - v25 >= v24 + 24 - v25)
        {
          operator new();
        }

LABEL_76:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v47 >= 0)
      {
        v26 = v46;
      }

      else
      {
        v26 = v46[0];
      }

      v27 = "No media engine for mid=";
      if (v24)
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_75;
        }

        v28 = v26 + v24 <= "No media engine for mid=" || v26 > "No media engine for mid=";
        v29 = 24;
        if (v28)
        {
          v29 = 0;
        }

        v27 = &aNoMediaEngineF[v29];
        v30 = v46;
        if (v47 < 0)
        {
          v30 = v46[0];
        }

        memmove(v30 + 3, v26, v24);
      }

      *v26 = *v27;
      v26[2] = *(v27 + 2);
      v31 = v24 + 24;
      if (SHIBYTE(v47) < 0)
      {
        v46[1] = (v24 + 24);
      }

      else
      {
        HIBYTE(v47) = v31 & 0x7F;
      }

      *(v26 + v31) = 0;
      __len = v47;
      *__p = *v46;
      v46[1] = 0;
      v47 = 0;
      v46[0] = 0;
      v32 = SHIBYTE(__len);
      if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
      {
        v33 = __p[0];
        v34 = __p[1];
        *a9 = 10;
        if (v34 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_76;
        }
      }

      else
      {
        *a9 = 10;
        v33 = __p;
        v34 = v32;
      }

      if (v34 > 0x16)
      {
        operator new();
      }

      *(a9 + 31) = v34;
      v35 = &v34[a9 + 8];
      if (a9 + 8 > v33 || v35 <= v33)
      {
        if (v34)
        {
          memmove((a9 + 8), v33, v34);
        }

        *v35 = 0;
        *(a9 + 32) = 0;
        *(a9 + 36) = 0;
        *(a9 + 38) = 0;
        if ((v32 & 0x80000000) != 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v47) & 0x80000000) == 0)
          {
            return;
          }
        }

        else if ((SHIBYTE(v47) & 0x80000000) == 0)
        {
          return;
        }

        operator delete(v46[0]);
        return;
      }
    }

LABEL_75:
    __break(1u);
  }

  v17 = a12;
  v46[0] = 0;
  v18 = (*(*a1 + 32))(a1);
  v19 = *(*(a1 + 21) + 40);
  if (v18)
  {
    __p[0] = a1;
    __p[1] = &v49;
    __len = a5;
    v40 = a10;
    v41 = a7;
    v42 = &a11;
    v43 = v46;
    v44 = v50;
    v45 = &v48;
    v20 = webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::CreateChannel(std::string_view,webrtc::Call *,webrtc::MediaConfig const&,BOOL,webrtc::CryptoOptions,webrtc::AudioOptions const&,webrtc::VideoOptions const&,webrtc::VideoBitrateAllocatorFactory *,std::function<webrtc::RtpTransportInternal * ()(std::string_view)>)::$_1>;
  }

  else
  {
    __p[0] = a1;
    __p[1] = &v49;
    __len = a5;
    v40 = a8;
    v41 = a7;
    v42 = v46;
    v43 = v50;
    v44 = &v48;
    v20 = webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::CreateChannel(std::string_view,webrtc::Call *,webrtc::MediaConfig const&,BOOL,webrtc::CryptoOptions,webrtc::AudioOptions const&,webrtc::VideoOptions const&,webrtc::VideoBitrateAllocatorFactory *,std::function<webrtc::RtpTransportInternal * ()(std::string_view)>)::$_0>;
  }

  (*(*v19 + 96))(v19, __p, v20, &v51);
  v22 = v46[0];
  v46[0] = 0;
  v23 = *(v17 + 24);
  if (!v23)
  {
    v53 = 0;
    v55 = 0;
    goto LABEL_61;
  }

  if (v23 == v17)
  {
    v53 = v52;
    (*(*v23 + 24))(v23, v52);
    v55 = 0;
    if (!v53)
    {
      goto LABEL_61;
    }

LABEL_44:
    operator new();
  }

  v53 = (*(*v23 + 16))(v23);
  v55 = 0;
  if (v53)
  {
    goto LABEL_44;
  }

LABEL_61:
  if ((a1[80] & 1) == 0)
  {
    operator new();
  }

  if (v55 == &v54)
  {
    (*(*v55 + 32))(v55);
    v36 = v53;
    if (v53 != v52)
    {
LABEL_65:
      if (v36)
      {
        (*(*v36 + 40))(v36);
      }

      if (!v22)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v36 = v53;
    if (v53 != v52)
    {
      goto LABEL_65;
    }
  }

  (*(*v36 + 32))(v36);
  if (v22)
  {
LABEL_68:
    (*(*v22 + 8))(v22);
  }

LABEL_69:
  *a9 = 0;
  *(a9 + 38) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 8) = 0;
  *(a9 + 29) = 0;
  v37 = v46[0];
  v46[0] = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }
}

uint64_t webrtc::RtpTransceiver::ClearChannel(uint64_t this)
{
  if (*(this + 160))
  {
    v1 = this;
    v2 = *(this + 24);
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(v1 + 24) = 0;
    v3 = *(*(v1 + 168) + 24);
    v6 = v1;
    (*(*v3 + 96))(v3, &v6, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::ClearChannel(void)::$_0>, &v5);
    v4 = *(*(v1 + 168) + 40);
    v6 = v1;
    return (*(*v4 + 96))(v4, &v6, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::DeleteChannel(void)::$_0>, &v5);
  }

  return this;
}

void webrtc::RtpTransceiver::AddSender(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = (*(**(a1 + 176) + 24))(*(a1 + 176));
  v6 = 48;
  if (v4 != 1)
  {
    v6 = 0;
  }

  v7 = (v5 + v6);
  v8 = v7[1];
  if (v8 != *v7)
  {
    if (0x84BDA12F684BDA13 * ((v8 - *v7) >> 3) <= 0x12F684BDA12F684)
    {
      operator new();
    }

LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v9 = *(*a2 + 24);
  v20 = 0;
  v21 = 0;
  __p = 0;
  (*(*v9 + 304))(v9, &__p);
  v10 = __p;
  if (__p)
  {
    v11 = __p;
    if (v20 != __p)
    {
      v12 = v20 - 216;
      v13 = v20 - 216;
      v14 = (v20 - 216);
      do
      {
        v15 = *v14;
        v14 -= 27;
        (*v15)(v13);
        v12 -= 216;
        v16 = v13 == v10;
        v13 = v14;
      }

      while (!v16);
      v11 = __p;
    }

    v20 = v10;
    operator delete(v11);
  }

  v17 = *(a1 + 40);
  if (v17 >= *(a1 + 48))
  {
    std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>((a1 + 32));
  }

  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = *a2;
  *v17 = *a2;
  if (v18)
  {
    (**v18)(v18);
  }

  *(a1 + 40) = v17 + 1;
}

uint64_t webrtc::RtpTransceiver::RemoveSender(webrtc::RtpTransceiver *this, webrtc::RtpSenderInterface *a2)
{
  v4 = *(this + 4);
  v3 = *(this + 5);
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        return 0;
      }
    }
  }

  if (v4 == v3)
  {
    return 0;
  }

  result = (*(**(*v4 + 24) + 232))(*(*v4 + 24), a2);
  v6 = *(this + 5);
  if (v6 == v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v4 + 1;
    if (v4 + 1 != v6)
    {
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *v7;
        *v7 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        ++v7;
      }

      while (v7 != v6);
      v6 = *(this + 5);
      v4 = v7 - 1;
    }

    while (v6 != v4)
    {
      v10 = *--v6;
      v9 = v10;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    *(this + 5) = v4;
    return 1;
  }

  return result;
}

uint64_t webrtc::RtpTransceiver::RemoveReceiver(webrtc::RtpTransceiver *this, webrtc::RtpReceiverInterface *a2)
{
  v3 = *(this + 7);
  v4 = *(this + 8);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        return 0;
      }
    }
  }

  v15 = v3;
  if (v3 == v4)
  {
    return 0;
  }

  (*(**(*v3 + 32) + 160))(*(*v3 + 32), a2);
  v5 = *(*(this + 21) + 40);
  v14 = &v15;
  result = (*(*v5 + 96))(v5, &v14, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::RemoveReceiver(webrtc::RtpReceiverInterface *)::$_0>, &v13);
  v7 = v15;
  v8 = *(this + 8);
  if (v8 == v15)
  {
    __break(1u);
  }

  else
  {
    v9 = v15 + 1;
    if (v15 + 1 != v8)
    {
      do
      {
        v10 = *(v9 - 1);
        *(v9 - 1) = *v9;
        *v9 = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        ++v9;
      }

      while (v9 != v8);
      v8 = *(this + 8);
      v7 = v9 - 1;
    }

    while (v8 != v7)
    {
      v12 = *--v8;
      v11 = v12;
      if (v12)
      {
        (*(*v11 + 8))(v11);
      }
    }

    *(this + 8) = v7;
    return 1;
  }

  return result;
}

uint64_t (***webrtc::RtpTransceiver::sender_internal@<X0>(webrtc::RtpTransceiver *this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t (****a6)(void)@<X8>))(void)
{
  v7 = *(this + 4);
  if (*(this + 5) - v7 == 8)
  {
    result = *(*v7 + 24);
    *a6 = result;
    if (result)
    {
      v9 = **result;

      return v9();
    }
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 460, "1u == senders_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a2, a3, a4, a5, 1);
    return webrtc::RtpTransceiver::media_type(v10);
  }

  return result;
}

void webrtc::RtpTransceiver::mid(webrtc::RtpTransceiver *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(this + 128) == 1)
  {
    if (*(this + 127) < 0)
    {
      v2 = a2;
      std::string::__init_copy_ctor_external(a2, *(this + 13), *(this + 14));
      a2 = v2;
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 104);
      a2->__r_.__value_.__r.__words[2] = *(this + 15);
    }

    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t (***webrtc::RtpTransceiver::sender@<X0>(webrtc::RtpTransceiver *this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t (****a6)(void)@<X8>))(void)
{
  v7 = *(this + 4);
  if (*(this + 5) - v7 == 8)
  {
    result = *v7;
    *a6 = *v7;
    if (result)
    {
      v9 = **result;

      return v9();
    }
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 492, "1u == senders_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a2, a3, a4, a5, 1);
    return webrtc::RtpTransceiver::receiver(v10);
  }

  return result;
}

uint64_t (***webrtc::RtpTransceiver::receiver@<X0>(webrtc::RtpTransceiver *this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t (****a6)(void)@<X8>))(void)
{
  v7 = *(this + 7);
  if (*(this + 8) - v7 == 8)
  {
    result = *v7;
    *a6 = *v7;
    if (result)
    {
      v9 = **result;

      return v9();
    }
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 498, "1u == receivers_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a2, a3, a4, a5, 1);
    return webrtc::RtpTransceiver::set_current_direction();
  }

  return result;
}

void webrtc::RtpTransceiver::set_current_direction(uint64_t a1, unsigned int a2)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_10;
  }

  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 127) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(a1 + 104), *(a1 + 112));
    }

    else
    {
      v11 = *(a1 + 104);
    }
  }

  else
  {
    *(&v11.__r_.__value_.__s + 23) = 9;
    if (&v11 <= "<not set>" && &v11.__r_.__value_.__r.__words[1] + 1 > "<not set>")
    {
      __break(1u);
      return;
    }

    strcpy(&v11, "<not set>");
  }

  webrtc::webrtc_logging_impl::Log("\r\t\n\t\t\t\t\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc");
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    *(a1 + 88) = a2;
    *(a1 + 92) = 1;
    if (a2 > 1)
    {
      return;
    }

    goto LABEL_11;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  *(a1 + 88) = a2;
  *(a1 + 92) = 1;
  if (a2 <= 1)
  {
LABEL_11:
    *(a1 + 154) = 1;
  }
}

uint64_t webrtc::RtpTransceiver::direction(webrtc::RtpTransceiver *this)
{
  if (*(this + 16) == 1 && ((*(*this + 72))(this) & 1) != 0)
  {
    return 4;
  }

  else
  {
    return *(this + 21);
  }
}

_BYTE *webrtc::RtpTransceiver::SetDirectionWithError@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (result[16] == 1)
  {
    result = (*(*result + 72))(result);
    if (result)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc");
      }

      *a3 = 6;
      operator new();
    }
  }

  if (*(v4 + 21) == a2)
  {
    goto LABEL_13;
  }

  if (a2 == 4)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc");
    }

    *a3 = 3;
    operator new();
  }

  *(v4 + 21) = a2;
  v20 = *(v4 + 44);
  if (v20)
  {
    result = (*(*v20 + 48))(v20);
LABEL_13:
    *a3 = 0;
    *(a3 + 38) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 29) = 0;
    return result;
  }

  v21 = std::__throw_bad_function_call[abi:sn200100]();
  return webrtc::RtpTransceiver::current_direction(v21);
}

uint64_t webrtc::RtpTransceiver::current_direction(webrtc::RtpTransceiver *this)
{
  if (*(this + 16) == 1 && ((*(*this + 64))(this) & 1) != 0)
  {
    return 0x100000004;
  }

  else
  {
    return *(this + 11);
  }
}

uint64_t webrtc::RtpTransceiver::StopStandard@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 16) & 1) == 0)
  {
    this = (*(*this + 128))(this);
LABEL_7:
    *a2 = 0;
    *(a2 + 38) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 29) = 0;
    return this;
  }

  if (*(this + 82) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v20[0] = "INVALID_STATE";
      v20[1] = 13;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc");
    }

    *a2 = 6;
    operator new();
  }

  if (*(this + 81) == 1)
  {
    goto LABEL_7;
  }

  v10 = *(this + 32);
  v11 = *(this + 40);
  v12 = this;
  while (v10 != v11)
  {
    v13 = *v10++;
    (*(**(v13 + 24) + 232))(*(v13 + 24));
  }

  v14 = *(v12 + 56);
  v15 = *(v12 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    (*(**(v16 + 32) + 160))(*(v16 + 32));
  }

  v17 = *(*(v12 + 168) + 40);
  v20[0] = v12;
  (*(*v17 + 96))(v17, v20, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::StopSendingAndReceiving(void)::$_0>, &v21);
  *(v12 + 81) = 1;
  *(v12 + 84) = 3;
  v18 = *(v12 + 352);
  if (v18)
  {
    this = (*(*v18 + 48))(v18);
    goto LABEL_7;
  }

  v19 = std::__throw_bad_function_call[abi:sn200100]();
  return webrtc::RtpTransceiver::StopInternal(v19);
}

uint64_t webrtc::RtpTransceiver::StopTransceiverProcedure(uint64_t this)
{
  v1 = this;
  if ((*(this + 81) & 1) == 0)
  {
    v2 = *(this + 32);
    v3 = *(this + 40);
    while (v2 != v3)
    {
      v4 = *v2++;
      (*(**(v4 + 24) + 232))(*(v4 + 24));
    }

    v5 = *(v1 + 56);
    v6 = *(v1 + 64);
    while (v5 != v6)
    {
      v7 = *v5++;
      (*(**(v7 + 32) + 160))(*(v7 + 32));
    }

    v8 = *(*(v1 + 168) + 40);
    v13 = v1;
    this = (*(*v8 + 96))(v8, &v13, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::StopSendingAndReceiving(void)::$_0>, &v12);
    *(v1 + 81) = 1;
    *(v1 + 84) = 3;
  }

  *(v1 + 80) = 1;
  v9 = *(v1 + 32);
  for (i = *(v1 + 40); v9 != i; this = (*(**(v11 + 24) + 296))(*(v11 + 24)))
  {
    v11 = *v9++;
  }

  if (*(v1 + 92) == 1)
  {
    *(v1 + 92) = 0;
  }

  return this;
}

void webrtc::RtpTransceiver::SetCodecPreferences(webrtc::RtpCodec *a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    memset(v31, 0, sizeof(v31));
    std::vector<webrtc::RtpCodecCapability>::__emplace_back_slow_path<webrtc::RtpCodecCapability const&>(v31);
  }

  v7 = a2[23];
  v6 = a2[24];
  if (v6 != v7)
  {
    v8 = v6 - 20;
    v9 = v6 - 20;
    v10 = v6 - 20;
    do
    {
      v11 = *v10;
      v10 -= 20;
      (*v11)(v9, a1);
      v8 -= 20;
      v12 = v9 == v7;
      v9 = v10;
    }

    while (!v12);
  }

  a2[24] = v7;
  v14 = a2[26];
  v13 = a2[27];
  if (v13 != v14)
  {
    v15 = v13 - 20;
    v16 = v13 - 20;
    v17 = v13 - 20;
    do
    {
      v18 = *v17;
      v17 -= 20;
      (*v18)(v16);
      v15 -= 20;
      v12 = v16 == v14;
      v16 = v17;
    }

    while (!v12);
  }

  a2[27] = v14;
  v20 = a2[29];
  v19 = a2[30];
  if (v19 != v20)
  {
    v21 = v19 - 20;
    v22 = v19 - 20;
    v23 = v19 - 20;
    do
    {
      v24 = *v23;
      v23 -= 20;
      (*v24)(v22);
      v21 -= 20;
      v12 = v22 == v20;
      v22 = v23;
    }

    while (!v12);
  }

  a2[30] = v20;
  v26 = a2[32];
  v25 = a2[33];
  if (v25 != v26)
  {
    v27 = v25 - 20;
    v28 = v25 - 20;
    v29 = v25 - 20;
    do
    {
      v30 = *v29;
      v29 -= 20;
      (*v30)(v28);
      v27 -= 20;
      v12 = v28 == v26;
      v28 = v29;
    }

    while (!v12);
  }

  a2[33] = v26;
  *a4 = 0;
  *(a4 + 38) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 29) = 0;
}

uint64_t webrtc::RtpTransceiver::GetHeaderExtensionsToNegotiate@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 280);
  v3 = *(this + 288);
  if (v3 != v2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t webrtc::RtpTransceiver::GetNegotiatedHeaderExtensions@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 280);
  v2 = *(this + 288);
  if (v2 != v3)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3) <= 0x666666666666666)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t webrtc::RtpTransceiver::SetHeaderExtensionsToNegotiate@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 280);
  if (a3 != 0xCCCCCCCCCCCCCCCDLL * ((*(result + 288) - v5) >> 3))
  {
    *a4 = 7;
    operator new();
  }

  v6 = a3;
  if (a3)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = (a2 + v8);
      v11 = v5 + v8;
      v12 = *(a2 + v8 + 23);
      v13 = *(a2 + v8 + 8);
      if (v12 >= 0)
      {
        v14 = *(a2 + v8 + 23);
      }

      else
      {
        v14 = *(a2 + v8 + 8);
      }

      v15 = *(v11 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v11 + 8);
      }

      if (v14 != v15 || ((v17 = *v10, v12 >= 0) ? (v18 = (a2 + v8)) : (v18 = *v10), v16 >= 0 ? (v19 = (v5 + v8)) : (v19 = *v11), result = memcmp(v18, v19, v14), result))
      {
        *a4 = 7;
        operator new();
      }

      if (v12 < 0 && v13 == 35)
      {
        if (*v17 ^ *"urn:ietf:params:rtp-hdrext:sdes:mid" | v17[1] ^ *":params:rtp-hdrext:sdes:mid" | v17[2] ^ *"rtp-hdrext:sdes:mid" | v17[3] ^ *"xt:sdes:mid" | *(v17 + 27) ^ *"sdes:mid")
        {
          v20 = 1;
        }

        else
        {
          v20 = *(a2 + v8 + 36) == 0;
        }

        if (!v20)
        {
          *a4 = 7;
          operator new();
        }
      }

      v8 += 40;
      --v9;
    }

    while (v9);
    v21 = (a2 + 36);
    v22 = (v5 + 36);
    do
    {
      v23 = *v21;
      v21 += 10;
      *v22 = v23;
      v22 += 10;
      --v6;
    }

    while (v6);
  }

  *a4 = 0;
  *(a4 + 38) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 29) = 0;
  return result;
}

void std::vector<webrtc::Codec>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::Codec const*>,std::__wrap_iter<webrtc::Codec const*>>(void *a1, uint64_t a2, const webrtc::Codec *a3, const webrtc::Codec *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v5 = a3;
  v6 = a2;
  v8 = a1[1];
  v7 = a1[2];
  if ((0x84BDA12F684BDA13 * ((v7 - v8) >> 3)) < a5)
  {
    v9 = *a1;
    v10 = a5 - 0x7B425ED097B425EDLL * ((v8 - *a1) >> 3);
    if (v10 <= 0x12F684BDA12F684)
    {
      v11 = 0x84BDA12F684BDA13 * ((v7 - v9) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x97B425ED097B42)
      {
        v12 = 0x12F684BDA12F684;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (v12 <= 0x12F684BDA12F684)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v37 = 0x84BDA12F684BDA13 * ((a2 - v9) >> 3);
      v38 = 216 * a5;
      v39 = 8 * ((a2 - v9) >> 3) + 216 * a5;
      v40 = (8 * ((a2 - v9) >> 3));
      do
      {
        if (!v40)
        {
          goto LABEL_88;
        }

        v40 = (webrtc::Codec::Codec(v40, v5) + 216);
        v5 = (v5 + 216);
        v38 -= 216;
      }

      while (v38);
      v106 = 8 * ((v6 - v9) >> 3);
      v41 = a1;
      v42 = a1[1];
      v43 = v6;
      if (v42 != v6)
      {
        v44 = 0;
        do
        {
          v50 = v39 + v44;
          *v50 = &unk_288291428;
          v51 = v6 + v44;
          *(v50 + 8) = *(v6 + v44 + 8);
          v52 = *(v6 + v44 + 16);
          *(v50 + 32) = *(v6 + v44 + 32);
          *(v50 + 16) = v52;
          *(v51 + 24) = 0;
          *(v51 + 32) = 0;
          *(v51 + 16) = 0;
          *(v50 + 40) = *(v6 + v44 + 40);
          *(v39 + v44 + 56) = 0;
          *(v50 + 80) = 0;
          if (*(v6 + v44 + 80) == 1)
          {
            v53 = *(v51 + 56);
            *(v39 + v44 + 72) = *(v51 + 72);
            *(v39 + v44 + 56) = v53;
            *(v51 + 64) = 0;
            *(v51 + 72) = 0;
            *(v51 + 56) = 0;
            *(v50 + 80) = 1;
          }

          *(v50 + 88) = *(v51 + 88);
          v54 = *(v51 + 96);
          v55 = *(v51 + 112);
          *(v50 + 128) = *(v51 + 128);
          *(v50 + 96) = v54;
          *(v50 + 112) = v55;
          *(v51 + 88) = 0;
          *(v50 + 136) = 0;
          *(v50 + 160) = 0;
          if (*(v51 + 160) == 1)
          {
            v56 = (v6 + v44);
            v57 = *(v6 + v44 + 136);
            *(v50 + 152) = *(v6 + v44 + 152);
            *(v50 + 136) = v57;
            v56[18] = 0;
            v56[19] = 0;
            v56[17] = 0;
            *(v50 + 160) = 1;
          }

          v45 = v39 + v44;
          v46 = (v6 + v44 + 176);
          v47 = *v46;
          *(v45 + 168) = *(v6 + v44 + 168);
          *(v39 + v44 + 176) = v47;
          v48 = v39 + v44 + 176;
          v49 = *(v6 + v44 + 184);
          *(v45 + 184) = v49;
          if (v49)
          {
            *(v47 + 16) = v48;
            *(v6 + v44 + 168) = v46;
            *v46 = 0;
            *(v6 + v44 + 184) = 0;
          }

          else
          {
            *(v45 + 168) = v48;
          }

          std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((v39 + v44 + 192), (v6 + v44 + 192));
          v44 += 216;
        }

        while ((v6 + v44) != v42);
        v58 = v6;
        v59 = v6;
        do
        {
          if (!v59)
          {
            goto LABEL_88;
          }

          v60 = v59 + 27;
          (**v59)(v59);
          v58 += 216;
          v59 = v60;
        }

        while (v60 != v42);
        v41 = a1;
        v43 = a1[1];
      }

      v41[1] = v6;
      v61 = *v41;
      v62 = v6 - *v41;
      if (*v41 != v6)
      {
        v63 = 0;
        v64 = -8 * (v62 >> 3) + 216 * v37;
        do
        {
          if (!(v64 + v63 * 8))
          {
            goto LABEL_88;
          }

          v70 = v64 + v63 * 8;
          *v70 = &unk_288291428;
          v71 = &v61[v63];
          *(v70 + 8) = v61[v63 + 1];
          v72 = *&v61[v63 + 2];
          *(v70 + 32) = v61[v63 + 4];
          *(v70 + 16) = v72;
          v71[3] = 0;
          v71[4] = 0;
          v71[2] = 0;
          *(v70 + 40) = *&v61[v63 + 5];
          *(v64 + v63 * 8 + 56) = 0;
          *(v70 + 80) = 0;
          if (LOBYTE(v61[v63 + 10]) == 1)
          {
            v73 = *(v71 + 7);
            *(v64 + v63 * 8 + 72) = v71[9];
            *(v64 + v63 * 8 + 56) = v73;
            v71[8] = 0;
            v71[9] = 0;
            v71[7] = 0;
            *(v70 + 80) = 1;
          }

          *(v70 + 88) = 0;
          *(v70 + 88) = v71[11];
          v74 = *(v71 + 6);
          v75 = *(v71 + 7);
          *(v70 + 128) = v71[16];
          *(v70 + 96) = v74;
          *(v70 + 112) = v75;
          v71[11] = 0;
          *(v70 + 136) = 0;
          *(v70 + 160) = 0;
          if (*(v71 + 160) == 1)
          {
            v76 = &v61[v63];
            v77 = *&v61[v63 + 17];
            *(v70 + 152) = v61[v63 + 19];
            *(v70 + 136) = v77;
            v76[18] = 0;
            v76[19] = 0;
            v76[17] = 0;
            *(v70 + 160) = 1;
          }

          v65 = v64 + v63 * 8;
          v66 = &v61[v63 + 22];
          v67 = *v66;
          *(v65 + 168) = v61[v63 + 21];
          *(v64 + v63 * 8 + 176) = v67;
          v68 = v64 + v63 * 8 + 176;
          v69 = v61[v63 + 23];
          *(v65 + 184) = v69;
          if (v69)
          {
            *(v67 + 2) = v68;
            v61[v63 + 21] = v66;
            *v66 = 0;
            v61[v63 + 23] = 0;
          }

          else
          {
            *(v65 + 168) = v68;
          }

          std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((v64 + v63 * 8 + 192), &v61[v63 + 24]);
          v63 += 27;
        }

        while (&v61[v63] != v6);
        v78 = v61;
        do
        {
          if (!v61)
          {
            goto LABEL_88;
          }

          (**v61)(v61);
          v78 += 27;
          v61 += 27;
        }

        while (v61 != v6);
        v41 = a1;
        v61 = *a1;
      }

      *v41 = v106 - v62;
      v41[1] = v39 + v43 - v6;
      v41[2] = 0;
      if (v61)
      {

        operator delete(v61);
      }

      return;
    }

LABEL_89:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = v8 - a2;
  if ((0x84BDA12F684BDA13 * ((v8 - a2) >> 3)) >= a5)
  {
    v19 = a2 + 216 * a5;
    v20 = v8 - 216 * a5;
    v21 = a1[1];
    if (v20 < v8)
    {
      v22 = a5;
      v23 = 0;
      do
      {
        v29 = v8 + v23;
        *v29 = &unk_288291428;
        v30 = v20 + v23;
        *(v29 + 8) = *(v20 + v23 + 8);
        v31 = *(v20 + v23 + 16);
        *(v29 + 32) = *(v20 + v23 + 32);
        *(v29 + 16) = v31;
        *(v30 + 24) = 0;
        *(v30 + 32) = 0;
        *(v30 + 16) = 0;
        *(v29 + 40) = *(v20 + v23 + 40);
        *(v8 + v23 + 56) = 0;
        *(v29 + 80) = 0;
        if (*(v20 + v23 + 80) == 1)
        {
          v32 = *(v30 + 56);
          *(v8 + v23 + 72) = *(v30 + 72);
          *(v8 + v23 + 56) = v32;
          *(v30 + 64) = 0;
          *(v30 + 72) = 0;
          *(v30 + 56) = 0;
          *(v29 + 80) = 1;
        }

        *(v29 + 88) = 0;
        *(v29 + 88) = *(v30 + 88);
        v33 = *(v30 + 96);
        v34 = *(v30 + 112);
        *(v29 + 128) = *(v30 + 128);
        *(v29 + 96) = v33;
        *(v29 + 112) = v34;
        *(v30 + 88) = 0;
        *(v29 + 136) = 0;
        *(v29 + 160) = 0;
        if (*(v30 + 160) == 1)
        {
          v35 = (v20 + v23);
          v36 = *(v20 + v23 + 136);
          *(v29 + 152) = *(v20 + v23 + 152);
          *(v29 + 136) = v36;
          v35[18] = 0;
          v35[19] = 0;
          v35[17] = 0;
          *(v29 + 160) = 1;
        }

        v24 = v8 + v23;
        v25 = (v20 + v23 + 176);
        v26 = *v25;
        *(v24 + 168) = *(v20 + v23 + 168);
        *(v8 + v23 + 176) = v26;
        v27 = v8 + v23 + 176;
        v28 = *(v20 + v23 + 184);
        *(v24 + 184) = v28;
        if (v28)
        {
          *(v26 + 16) = v27;
          *(v20 + v23 + 168) = v25;
          *v25 = 0;
          *(v20 + v23 + 184) = 0;
        }

        else
        {
          *(v24 + 168) = v27;
        }

        std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((v8 + v23 + 192), (v20 + v23 + 192));
        v23 += 216;
      }

      while (v20 + v23 < v8);
      v21 = v8 + v23;
      a5 = v22;
    }

    v98 = a5;
    a1[1] = v21;
    if (v8 != v19)
    {
      v99 = v8 - 216;
      v100 = v6 + 216 * a5 - v8;
      v101 = v8 - 216 - 216 * a5;
      do
      {
        webrtc::Codec::operator=(v99, v101);
        v99 -= 216;
        v101 -= 216;
        v100 += 216;
      }

      while (v100);
    }

    v102 = (v5 + 216 * v98);
    do
    {
      webrtc::Codec::operator=(v6, v5);
      v5 = (v5 + 216);
      v6 += 216;
    }

    while (v5 != v102);
    return;
  }

  v107 = a5;
  v15 = (a3 + v13);
  v16 = a1[1];
  if ((a3 + v13) != a4)
  {
    v79 = (a3 + v13);
    v17 = a1[1];
    v18 = a1;
    while (v17)
    {
      webrtc::Codec::Codec(v17, v79);
      v79 = (v79 + 216);
      v17 = (v17 + 216);
      v16 += 216;
      if (v79 == a4)
      {
        goto LABEL_64;
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v17 = a1[1];
  v18 = a1;
LABEL_64:
  v18[1] = v16;
  v80 = v107;
  if (v13 >= 1)
  {
    v81 = v16;
    if (v16 - 216 * v107 < v8)
    {
      v82 = 0;
      v83 = 0;
      v84 = -216 * v107;
      do
      {
        v90 = v83 + v16;
        *v90 = &unk_288291428;
        v91 = v84 + v16;
        *(v90 + 8) = *(v84 + v16 + 8);
        v92 = *(v84 + v16 + 16);
        *(v90 + 32) = *(v84 + v16 + 32);
        *(v90 + 16) = v92;
        *(v91 + 24) = 0;
        *(v91 + 32) = 0;
        *(v91 + 16) = 0;
        *(v90 + 40) = *(v84 + v16 + 40);
        *(v83 + v16 + 56) = 0;
        *(v90 + 80) = 0;
        if (*(v84 + v16 + 80) == 1)
        {
          v93 = *(v91 + 56);
          *(v83 + v16 + 72) = *(v91 + 72);
          *(v83 + v16 + 56) = v93;
          *(v91 + 64) = 0;
          *(v91 + 72) = 0;
          *(v91 + 56) = 0;
          *(v90 + 80) = 1;
        }

        *(v90 + 88) = 0;
        *(v90 + 88) = *(v91 + 88);
        v94 = *(v91 + 96);
        v95 = *(v91 + 112);
        *(v90 + 128) = *(v91 + 128);
        *(v90 + 96) = v94;
        *(v90 + 112) = v95;
        *(v91 + 88) = 0;
        *(v90 + 136) = 0;
        *(v90 + 160) = 0;
        if (*(v91 + 160) == 1)
        {
          v96 = (v84 + v16);
          v97 = *(v84 + v16 + 136);
          *(v90 + 152) = *(v84 + v16 + 152);
          *(v90 + 136) = v97;
          v96[18] = 0;
          v96[19] = 0;
          v96[17] = 0;
          *(v90 + 160) = 1;
        }

        v85 = v83 + v16;
        v86 = (v84 + v16 + 176);
        v87 = *v86;
        *(v85 + 168) = *(v84 + v16 + 168);
        *(v83 + v16 + 176) = v87;
        v88 = v83 + v16 + 176;
        v89 = *(v84 + v16 + 184);
        *(v85 + 184) = v89;
        if (v89)
        {
          *(v87 + 16) = v88;
          *(v84 + v16 + 168) = v86;
          *v86 = 0;
          *(v84 + v16 + 184) = 0;
        }

        else
        {
          *(v85 + 168) = v88;
        }

        std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((v83 + v16 + 192), (v84 + v16 + 192));
        v83 += 216;
        v82 += 216;
        v84 += 216;
      }

      while (v84 + v16 < v8);
      v81 = v83 + v16;
      v80 = v107;
      v18 = a1;
    }

    v18[1] = v81;
    if (v17 != (v6 + 216 * v107))
    {
      v103 = v16 - 216;
      v104 = v6 + 216 * v80 - v16;
      v105 = v16 - 216 - 216 * v80;
      do
      {
        webrtc::Codec::operator=(v103, v105);
        v103 -= 216;
        v105 -= 216;
        v104 += 216;
      }

      while (v104);
    }

    do
    {
      webrtc::Codec::operator=(v6, v5);
      v5 = (v5 + 216);
      v6 += 216;
    }

    while (v5 != v15);
  }
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::CreateChannel(std::string_view,webrtc::Call *,webrtc::MediaConfig const&,BOOL,webrtc::CryptoOptions,webrtc::AudioOptions const&,webrtc::VideoOptions const&,webrtc::VideoBitrateAllocatorFactory *,std::function<webrtc::RtpTransportInternal * ()(std::string_view)>)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(**(*(v1 + 168) + 96) + 24))(*(*(v1 + 168) + 96));
  (*(*v2 + 40))(&v8);
  v3 = (*(**(*(v1 + 168) + 96) + 24))(*(*(v1 + 168) + 96));
  (*(*v3 + 48))(&v7);
  v4.n128_u64[0] = v7;
  v6 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpTransceiver::CreateChannel(std::string_view,webrtc::Call *,webrtc::MediaConfig const&,BOOL,webrtc::CryptoOptions,webrtc::AudioOptions const&,webrtc::VideoOptions const&,webrtc::VideoBitrateAllocatorFactory *,std::function<webrtc::RtpTransportInternal * ()(std::string_view)>)::$_0::operator() const(void)::{lambda(std::set<unsigned int> const&)#1} &,std::set<unsigned int> const&>;
  v5 = absl::internal_any_invocable::LocalManagerTrivial;
  (*(*v8 + 168))(v8, &v4);
  v5(1, &v4, &v4);
  operator new();
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::CreateChannel(std::string_view,webrtc::Call *,webrtc::MediaConfig const&,BOOL,webrtc::CryptoOptions,webrtc::AudioOptions const&,webrtc::VideoOptions const&,webrtc::VideoBitrateAllocatorFactory *,std::function<webrtc::RtpTransportInternal * ()(std::string_view)>)::$_1>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*(*a1 + 168) + 96);
  v3 = (*(*v2 + 32))(v2);
  (*(*v3 + 24))(&v9);
  v4 = (*(**(*(v1 + 168) + 96) + 32))(*(*(v1 + 168) + 96));
  (*(*v4 + 32))(&v8);
  v5.n128_u64[0] = v8;
  v7 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpTransceiver::CreateChannel(std::string_view,webrtc::Call *,webrtc::MediaConfig const&,BOOL,webrtc::CryptoOptions,webrtc::AudioOptions const&,webrtc::VideoOptions const&,webrtc::VideoBitrateAllocatorFactory *,std::function<webrtc::RtpTransportInternal * ()(std::string_view)>)::$_1::operator() const(void)::{lambda(std::set<unsigned int> const&)#1} &,std::set<unsigned int> const&>;
  v6 = absl::internal_any_invocable::LocalManagerTrivial;
  (*(*v9 + 168))(v9, &v5);
  v6(1, &v5, &v5);
  operator new();
}

void *std::__function::__func<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>,std::allocator<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>>,webrtc::RtpTransportInternal * ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_28829D538;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
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

void std::__function::__func<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>,std::allocator<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>>,webrtc::RtpTransportInternal * ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_28829D538;
  v1 = a1 + 1;
  v2 = a1[4];
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

uint64_t std::__function::__func<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>,std::allocator<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>>,webrtc::RtpTransportInternal * ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_28829D538;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>,std::allocator<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>>,webrtc::RtpTransportInternal * ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>,std::allocator<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>>,webrtc::RtpTransportInternal * ()(std::string const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>,std::allocator<std::function<webrtc::RtpTransportInternal * ()(std::string_view)>>,webrtc::RtpTransportInternal * ()(std::string const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v7[0] = v3;
  v7[1] = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    return (*(*v4 + 48))(v4, v7);
  }

  v6 = std::__throw_bad_function_call[abi:sn200100]();
  return webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0>(v6);
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0>(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(*a1 + 160);
  v4 = (*(*v3 + 96))(v3);
  v5 = *(v1 + 24);
  if (v5)
  {
    v6 = (*(*v5 + 48))(v5, v4);
    (*(*v3 + 168))(v3, v6);
    v7 = *(v2 + 24);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
    }

    operator new();
  }

  std::__throw_bad_function_call[abi:sn200100]();
}

void *std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *result)
{
  *result = &unk_28829D580;
  v1 = result[2];
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28829D580;
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

void *std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_28829D580;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

atomic_uint *std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

void std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = a1;
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
    a1 = v3;
  }

  operator delete(a1);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1} &&>(uint64_t result)
{
  v1 = *(*result + 56);
  for (i = *(*result + 64); v1 != i; result = (*(**(v3 + 32) + 208))(*(v3 + 32)))
  {
    v3 = *v1++;
  }

  return result;
}

void *std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(void *result)
{
  *result = &unk_28829D5C8;
  v1 = result[2];
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28829D5C8;
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

void *std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_28829D5C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

atomic_uint *std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

void std::__function::__func<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = a1;
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
    a1 = v3;
  }

  operator delete(a1);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpTransceiver::SetChannel(std::unique_ptr<webrtc::ChannelInterface>,std::function<webrtc::RtpTransportInternal * ()(std::string const&)>)::$_0::operator() const(void)::{lambda(void)#2}::operator()(void)::{lambda(void)#1} &&>(uint64_t result)
{
  v1 = *(*result + 32);
  for (i = *(*result + 40); v1 != i; result = (*(**(v3 + 24) + 320))(*(v3 + 24)))
  {
    v3 = *v1++;
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::ClearChannel(void)::$_0>(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(*a1 + 160);
  v8 = 0;
  (*(*v2 + 112))(v2, v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))();
  }

  v3 = *(v1 + 160);
  v6 = 0;
  (*(*v3 + 120))(v3, v5);
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))();
  }

  return (*(**(v1 + 160) + 168))(*(v1 + 160), 0);
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::PushNewMediaChannel(void)::$_0>(uint64_t ***a1)
{
  v1 = *a1;
  v2 = (*(*(*a1)[20] + 40))((*a1)[20]);
  v3 = v1[4];
  v4 = v1[5];
  if (v3 != v4)
  {
    v5 = v2;
    do
    {
      v6 = *v3++;
      (*(**(v6 + 24) + 192))(*(v6 + 24), v5);
    }

    while (v3 != v4);
  }

  result = (*(*v1[20] + 64))(v1[20]);
  v9 = v1[7];
  v8 = v1[8];
  if (v9 != v8)
  {
    v10 = result;
    do
    {
      v11 = *v9++;
      result = (*(**(v11 + 32) + 168))(*(v11 + 32), v10);
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::DeleteChannel(void)::$_0>(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 160);
  v1[20] = 0;
  v3 = v1[4];
  for (i = v1[5]; v3 != i; result = (*(**(v5 + 24) + 192))(*(v5 + 24), 0))
  {
    v5 = *v3++;
  }

  v7 = v1[7];
  for (j = v1[8]; v7 != j; result = (*(**(v8 + 32) + 168))(*(v8 + 32), 0))
  {
    v8 = *v7++;
  }

  if (v2)
  {
    v9 = *(*v2 + 8);

    return v9(v2);
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpTransceiver::StopSendingAndReceiving(void)::$_0>(uint64_t result)
{
  v1 = *(*result + 56);
  for (i = *(*result + 64); v1 != i; result = (*(**(v3 + 32) + 168))(*(v3 + 32), 0))
  {
    v3 = *v1++;
  }

  return result;
}

double webrtc::RtpTransceiverInit::RtpTransceiverInit(webrtc::RtpTransceiverInit *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void webrtc::RtpTransceiverInit::~RtpTransceiverInit(webrtc::RtpTransceiverInit *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        webrtc::RtpEncodingParameters::~RtpEncodingParameters((v3 - 272));
      }

      while (v3 != v2);
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = *(this + 1);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 1);
    }

    *(this + 2) = v5;
    operator delete(v7);
  }
}

void webrtc::RtpTransceiverInterface::StopStandard(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

void webrtc::RtpTransceiverInterface::SetDirection(uint64_t a1)
{
  (*(*a1 + 96))(v1);
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void webrtc::RtpTransceiverInterface::SetDirectionWithError(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

uint64_t webrtc::RtpTransmissionManager::OnSetStreams(uint64_t this)
{
  if (*(this + 217) == 1)
  {
    v2 = *(this + 288);
    if (v2)
    {
      v3 = *(*v2 + 48);

      return v3();
    }

    else
    {
      v4 = std::__throw_bad_function_call[abi:sn200100]();
      return webrtc::RtpTransmissionManager::GetAudioTransceiver(v4, v5);
    }
  }

  return this;
}

uint64_t webrtc::RtpTransmissionManager::GetAudioTransceiver@<X0>(webrtc::RtpTransmissionManager *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  result = v3 - v2;
  if (v3 != v2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a2 = 0;
  return result;
}

uint64_t webrtc::RtpTransmissionManager::GetVideoTransceiver@<X0>(webrtc::RtpTransmissionManager *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  result = v3 - v2;
  if (v3 != v2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a2 = 0;
  return result;
}

uint64_t webrtc::RtpTransmissionManager::AddTrack@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  if (*(a1 + 217) != 1)
  {
    v14 = *a2;
    if (v5)
    {
      (**v5)(v5);
      webrtc::RtpTransmissionManager::AddTrackPlanB(a1, &v14, a3);
    }

    webrtc::RtpTransmissionManager::AddTrackPlanB(a1, &v14, a3);
  }

  v15 = *a2;
  if (!v5)
  {
    return webrtc::RtpTransmissionManager::AddTrackUnifiedPlan(a1, &v15, a3, a4, a5);
  }

  (**v5)(v5);
  webrtc::RtpTransmissionManager::AddTrackUnifiedPlan(a1, &v15, a3, a4, a5);
  v12 = *(*v5 + 8);

  return v12(v5);
}

uint64_t webrtc::RtpTransmissionManager::AddTrackUnifiedPlan@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v69 = *a2;
  v10 = v69;
  if (v69)
  {
    (**v69)(v69);
    webrtc::RtpTransmissionManager::FindFirstTransceiverForAddedTrack(v70, a1, &v69, a4);
    (*v10)[1](v10);
    v11 = v70[0];
    if (v70[0])
    {
      goto LABEL_3;
    }

LABEL_7:
    (*(**a2 + 32))(__p);
    if (v43 < 0)
    {
      if (__p[1] == 5)
      {
        v13 = *__p[0] != *"audio" || *(__p[0] + 4) != webrtc::kMediaTypeAudio[4];
        operator delete(__p[0]);
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
          goto LABEL_67;
        }

        goto LABEL_58;
      }

      v13 = 1;
      operator delete(__p[0]);
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v43 == 5)
      {
        v13 = LODWORD(__p[0]) != *"audio" || BYTE4(__p[0]) != webrtc::kMediaTypeAudio[4];
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
          goto LABEL_67;
        }

LABEL_58:
        if (!v13)
        {
          v43 = 5;
          if (__p <= "audio" && __p + 5 > "audio")
          {
            goto LABEL_77;
          }

          v13 = 0;
          qmemcpy(__p, "audio", 5);
LABEL_65:
          BYTE5(__p[0]) = 0;
          webrtc::webrtc_logging_impl::Log("\r\t\n\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
          if (v43 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_67;
        }

LABEL_59:
        v43 = 5;
        if (__p <= "video" && __p + 5 > "video")
        {
          goto LABEL_77;
        }

        qmemcpy(__p, "video", 5);
        v13 = 1;
        goto LABEL_65;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        goto LABEL_59;
      }

      v13 = 1;
    }

LABEL_67:
    (*(**a2 + 40))(&v68);
    webrtc::RtpTransmissionManager::FindSenderById(a1, __p);
    if (__p[0])
    {
      (*(*__p[0] + 8))(__p[0]);
      webrtc::CreateRandomUuid(__p);
    }

    v67 = *a2;
    if (v67)
    {
      (**v67)(v67);
    }

    if (!a4)
    {
      LOBYTE(__p[0]) = 0;
      BYTE4(__p[0]) = 0;
      __p[1] = 0x3FF0000000000000;
      v41 = 1;
      v42 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      LOBYTE(v53) = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 1;
      v62 = 0;
      v63 = 0;
      v58 = 0;
      v59 = 0;
      v61 = 0;
      v60 = 0;
      operator new();
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    v38 = a4[1];
    if (v38 == *a4)
    {
      webrtc::RtpTransmissionManager::CreateSender(a1, v13);
    }

    if (0xF0F0F0F0F0F0F0F1 * ((v38 - *a4) >> 4) < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

LABEL_79:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  webrtc::RtpTransmissionManager::FindFirstTransceiverForAddedTrack(v70, a1, &v69, a4);
  v11 = v70[0];
  if (!v70[0])
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    v21 = (*(*v11 + 32))(v11);
    switch(v21)
    {
      case 2:
        v43 = 4;
        v25 = (__p + 4);
        if (__p <= "data" && __p + 4 > "data")
        {
          goto LABEL_77;
        }

        LODWORD(__p[0]) = 1635017060;
        break;
      case 1:
        v43 = 5;
        v25 = (__p + 5);
        v26 = "video";
        if (__p > "video")
        {
LABEL_35:
          LODWORD(__p[0]) = *v26;
          BYTE4(__p[0]) = v26[4];
          break;
        }

        goto LABEL_34;
      case 0:
        v43 = 5;
        v25 = (__p + 5);
        v26 = "audio";
        if (__p > "audio")
        {
          goto LABEL_35;
        }

LABEL_34:
        if (__p + 5 <= v26)
        {
          goto LABEL_35;
        }

LABEL_77:
        __break(1u);
LABEL_78:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 460, "1u == senders_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v17, v18, v19, v20, 1);
        goto LABEL_79;
      default:
        v43 = 0;
        v25 = __p;
        break;
    }

    *v25 = 0;
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v22, v23, v24, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
    if (v43 < 0)
    {
      operator delete(__p[0]);
      if (!(*(*v11 + 72))(v11))
      {
        goto LABEL_46;
      }
    }

    else if (!(*(*v11 + 72))(v11))
    {
      goto LABEL_46;
    }

LABEL_42:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __p[0] = "INVALID_PARAMETER";
      __p[1] = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
    }

    operator new();
  }

  if ((*(*v11 + 72))(v11))
  {
    goto LABEL_42;
  }

LABEL_46:
  if ((*(*v11 + 80))(v11) == 2)
  {
    v35 = 0;
  }

  else
  {
    if ((*(*v11 + 80))(v11) != 3)
    {
      goto LABEL_51;
    }

    v35 = 1;
  }

  *(v11[2] + 84) = v35;
LABEL_51:
  (*(*v11 + 48))(__p, v11);
  (*(*__p[0] + 32))(__p[0], *a2);
  if (__p[0])
  {
    (*(*__p[0] + 8))(__p[0]);
  }

  v36 = *(v11[2] + 32);
  if (*(v11[2] + 40) - v36 != 8)
  {
    goto LABEL_78;
  }

  v37 = *(*v36 + 24);
  if (v37)
  {
    (**v37)(v37);
  }

  (*(*v37 + 208))(v37, a3);
  (*(*v37 + 8))(v37);
  *(v11[2] + 153) = 1;
  (*(*v11 + 48))(v11);
  *a5 = 0;
  *(a5 + 38) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 8) = 0;
  *(a5 + 29) = 0;
  *(a5 + 48) = 1;
  return (*(*v11 + 8))(v11);
}

void webrtc::RtpTransmissionManager::AddTrackPlanB(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a3) >> 3) >= 2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __p[0] = "UNSUPPORTED_OPERATION";
      __p[1] = 21;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
    }

    operator new();
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (v3 != v4)
  {
    operator new();
  }

  webrtc::CreateRandomUuid(__p);
}

void webrtc::RtpTransmissionManager::CreateSender(uint64_t a1, int a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    operator new();
  }

  operator new();
}

unint64_t webrtc::RtpTransmissionManager::FindFirstTransceiverForAddedTrack(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (!a4)
  {
    v5 = *(a2 + 48);
    v6 = *(a2 + 56);
    result = v6 - v5;
    if (v6 != v5)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  *v4 = 0;
  return result;
}

uint64_t webrtc::RtpTransmissionManager::FindSenderById@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  result = v3 - v2;
  if (v3 != v2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a2 = 0;
  return result;
}

void webrtc::RtpTransmissionManager::CreateReceiver(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  operator new();
}

void webrtc::RtpTransmissionManager::CreateAndAddTransceiver(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = (*(**a2 + 64))();
  v4 = **(*(a1 + 224) + 96);
  if (v3)
  {
    v5 = (*(v4 + 32))();
  }

  else
  {
    v5 = (*(v4 + 24))();
  }

  (*(*v5 + 16))(__p);
  v6 = *(a1 + 296);
  if (!v6 || atomic_load_explicit((v6 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v7 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v7 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v7, 0x1000C404A09149ALL);
    }
  }

  operator new();
}

uint64_t webrtc::RtpTransmissionManager::GetSendersInternal@<X0>(webrtc::RtpTransmissionManager *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 6);
  v3 = *(this + 7);
  result = v3 - v2;
  if (v3 != v2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

uint64_t webrtc::RtpTransmissionManager::GetReceiversInternal@<X0>(webrtc::RtpTransmissionManager *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 6);
  v3 = *(this + 7);
  result = v3 - v2;
  if (v3 != v2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::RtpTransmissionManager::AddAudioTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  webrtc::RtpTransmissionManager::FindSenderForTrack(a1, &v9);
  if (v9)
  {
    (*(*a3 + 32))(&v11, a3);
    operator new();
  }

  (*(*a2 + 40))(&v11, a2);
  (**a2)(a2);
  v8 = a2;
  (*(*a3 + 32))(&v10, a3);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  operator new();
}

uint64_t webrtc::RtpTransmissionManager::FindSenderForTrack@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  result = v3 - v2;
  if (v3 != v2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a2 = 0;
  return result;
}

void webrtc::RtpTransmissionManager::RemoveAudioTrack(webrtc::RtpTransmissionManager *a1, uint64_t a2)
{
  webrtc::RtpTransmissionManager::FindSenderForTrack(a1, &v16);
  v4 = v16;
  if (v16)
  {
    webrtc::RtpTransmissionManager::GetAudioTransceiver(a1, __p);
    v5 = __p[0];
    webrtc::RtpTransceiver::RemoveSender(*(__p[0] + 2), v4);
    (*(*v5 + 8))(v5);
    v6 = *(*v4 + 8);

    v6(v4);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    (*(*a2 + 40))(__p, a2);
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void webrtc::RtpTransmissionManager::AddVideoTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  webrtc::RtpTransmissionManager::FindSenderForTrack(a1, &v9);
  if (v9)
  {
    (*(*a3 + 32))(&v11, a3);
    operator new();
  }

  (*(*a2 + 40))(&v11, a2);
  (**a2)(a2);
  v8 = a2;
  (*(*a3 + 32))(&v10, a3);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  operator new();
}

void webrtc::RtpTransmissionManager::RemoveVideoTrack(webrtc::RtpTransmissionManager *a1, uint64_t a2)
{
  webrtc::RtpTransmissionManager::FindSenderForTrack(a1, &v16);
  v4 = v16;
  if (v16)
  {
    webrtc::RtpTransmissionManager::GetVideoTransceiver(a1, __p);
    v5 = __p[0];
    webrtc::RtpTransceiver::RemoveSender(*(__p[0] + 2), v4);
    (*(*v5 + 8))(v5);
    v6 = *(*v4 + 8);

    v6(v4);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    (*(*a2 + 40))(__p, a2);
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void webrtc::RtpTransmissionManager::CreateAudioReceiver(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    (**a2)(a2);
  }

  operator new();
}

void webrtc::RtpTransmissionManager::CreateVideoReceiver(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    (**a2)(a2);
  }

  operator new();
}

void webrtc::RtpTransmissionManager::RemoveAndStopReceiver(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
  }

  *a1 = 0;
}

void webrtc::RtpTransmissionManager::OnRemoteSenderAdded(uint64_t a1, uint64_t a2, void (***a3)(void), int a4)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
LABEL_20:
    if (a4 != 1)
    {
      goto LABEL_21;
    }

LABEL_25:
    webrtc::RtpTransmissionManager::CreateVideoReceiver(a1, a3);
  }

  switch(a4)
  {
    case 2:
      v19 = 4;
      v14 = (v18 + 4);
      if (v18 <= "data" && v18 + 4 > "data")
      {
        goto LABEL_26;
      }

      LODWORD(v18[0]) = 1635017060;
      break;
    case 1:
      v19 = 5;
      v14 = (v18 + 5);
      v15 = "video";
      if (v18 <= "video" && v18 + 5 > "video")
      {
        goto LABEL_26;
      }

LABEL_12:
      LODWORD(v18[0]) = *v15;
      BYTE4(v18[0]) = v15[4];
      break;
    case 0:
      v19 = 5;
      v14 = (v18 + 5);
      v15 = "audio";
      if (v18 <= "audio" && v18 + 5 > "audio")
      {
LABEL_26:
        __break(1u);
        return;
      }

      goto LABEL_12;
    default:
      v19 = 0;
      v14 = v18;
      break;
  }

  *v14 = 0;
  webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v18[0]);
  if (a4 == 1)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (!a4)
  {
    webrtc::RtpTransmissionManager::CreateAudioReceiver(a1, a3);
  }
}

void webrtc::RtpTransmissionManager::OnRemoteSenderRemoved(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
LABEL_20:
    if (a4 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  switch(a4)
  {
    case 2:
      v26 = 4;
      v15 = (v25 + 4);
      if (v25 <= "data" && v25 + 4 > "data")
      {
        goto LABEL_36;
      }

      LODWORD(v25[0]) = 1635017060;
      break;
    case 1:
      v26 = 5;
      v15 = (v25 + 5);
      v16 = "video";
      if (v25 <= "video" && v25 + 5 > "video")
      {
        goto LABEL_36;
      }

LABEL_12:
      LODWORD(v25[0]) = *v16;
      BYTE4(v25[0]) = v16[4];
      break;
    case 0:
      v26 = 5;
      v15 = (v25 + 5);
      v16 = "audio";
      if (v25 <= "audio" && v25 + 5 > "audio")
      {
LABEL_36:
        __break(1u);
        return;
      }

      goto LABEL_12;
    default:
      v26 = 0;
      v15 = v25;
      break;
  }

  *v15 = 0;
  webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v25[0]);
  if (a4 != 1)
  {
LABEL_21:
    if (a4)
    {
      return;
    }

    webrtc::RtpTransmissionManager::RemoveAndStopReceiver(v25, a1);
    v19 = v25[0];
    (*(*a3 + 56))(v25, a3, a2 + 24);
    if (v25[0])
    {
      v24 = v25[0];
      (**v25[0])(v25[0]);
      (*(*a3 + 88))(a3, &v24);
      v20 = v24;
      if (!v24)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_31;
  }

LABEL_28:
  webrtc::RtpTransmissionManager::RemoveAndStopReceiver(v25, a1);
  v19 = v25[0];
  (*(*a3 + 64))(v25, a3, a2 + 24);
  if (v25[0])
  {
    v23 = v25[0];
    (**v25[0])(v25[0]);
    (*(*a3 + 96))(a3, &v23);
    v20 = v23;
    if (!v23)
    {
LABEL_25:
      if (v25[0])
      {
        (*(*v25[0] + 8))(v25[0]);
      }

      goto LABEL_31;
    }

LABEL_24:
    (*(*v20 + 8))(v20);
    goto LABEL_25;
  }

LABEL_31:
  if (v19)
  {
    v21 = *(a1 + 248);
    v22 = v19;
    (**v19)(v19);
    (*(*v21 + 152))(v21, &v22);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    (*(*v19 + 8))(v19);
  }
}

void webrtc::RtpTransmissionManager::OnLocalSenderAdded(uint64_t a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  webrtc::RtpTransmissionManager::FindSenderById(a1, &v20);
  v5 = v20;
  if (v20)
  {
    if ((*(*v20 + 64))(v20) == a3)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
      }

      else
      {
        v21 = *a2;
      }

      operator new();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
    }

    (*(*v5 + 8))(v5);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transmission_manager.cc");
  }
}

void webrtc::RtpTransmissionManager::~RtpTransmissionManager(webrtc::RtpTransmissionManager *this)
{
  webrtc::RtpTransmissionManager::~RtpTransmissionManager(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_28829D6D8;
  *(this + 38) = 0;
  v2 = *(this + 37);
  if (v2)
  {
    *v2 = 0;
    if (atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 37) = 0;
  }

  v3 = *(this + 36);
  if (v3 == (this + 264))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 24);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 24);
    if (!v4)
    {
LABEL_9:
      v5 = *(this + 21);
      if (v5)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }
  }

  v8 = *(this + 25);
  if (v8 == v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
    v5 = *(this + 21);
    if (v5)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  do
  {
    if (*(v8 - 9) < 0)
    {
      operator delete(*(v8 - 4));
      v9 = v8 - 7;
      if ((*(v8 - 33) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = v8 - 7;
      if ((*(v8 - 33) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    operator delete(*v9);
LABEL_17:
    v8 = v9;
  }

  while (v9 != v4);
  v10 = *(this + 24);
  *(this + 25) = v4;
  operator delete(v10);
  v5 = *(this + 21);
  if (!v5)
  {
LABEL_10:
    v6 = *(this + 18);
    if (v6)
    {
      goto LABEL_34;
    }

    goto LABEL_11;
  }

LABEL_24:
  v11 = *(this + 22);
  if (v11 == v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
    v6 = *(this + 18);
    if (v6)
    {
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  while (2)
  {
    if (*(v11 - 9) < 0)
    {
      operator delete(*(v11 - 4));
      v12 = v11 - 7;
      if (*(v11 - 33) < 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = v11 - 7;
      if (*(v11 - 33) < 0)
      {
LABEL_32:
        operator delete(*v12);
      }
    }

    v11 = v12;
    if (v12 != v5)
    {
      continue;
    }

    break;
  }

  v13 = *(this + 21);
  *(this + 22) = v5;
  operator delete(v13);
  v6 = *(this + 18);
  if (!v6)
  {
LABEL_11:
    v7 = *(this + 15);
    if (v7)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

LABEL_34:
  v14 = *(this + 19);
  if (v14 != v6)
  {
    while (1)
    {
      if (*(v14 - 9) < 0)
      {
        operator delete(*(v14 - 4));
        v15 = v14 - 7;
        if (*(v14 - 33) < 0)
        {
LABEL_42:
          operator delete(*v15);
        }
      }

      else
      {
        v15 = v14 - 7;
        if (*(v14 - 33) < 0)
        {
          goto LABEL_42;
        }
      }

      v14 = v15;
      if (v15 == v6)
      {
        v16 = *(this + 18);
        *(this + 19) = v6;
        operator delete(v16);
        v7 = *(this + 15);
        if (!v7)
        {
          goto LABEL_54;
        }

LABEL_44:
        v17 = *(this + 16);
        v18 = v7;
        if (v17 == v7)
        {
LABEL_53:
          *(this + 16) = v7;
          operator delete(v18);
          goto LABEL_54;
        }

        while (2)
        {
          if (*(v17 - 9) < 0)
          {
            operator delete(*(v17 - 4));
            v19 = v17 - 7;
            if (*(v17 - 33) < 0)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v19 = v17 - 7;
            if (*(v17 - 33) < 0)
            {
LABEL_51:
              operator delete(*v19);
            }
          }

          v17 = v19;
          if (v19 == v7)
          {
            v18 = *(this + 15);
            goto LABEL_53;
          }

          continue;
        }
      }
    }
  }

  *(this + 19) = v6;
  operator delete(v6);
  v7 = *(this + 15);
  if (v7)
  {
    goto LABEL_44;
  }

LABEL_54:
  std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>>>::destroy(*(this + 13));
  std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::destroy(this + 72, *(this + 10));
  v20 = *(this + 6);
  if (v20)
  {
    v21 = *(this + 7);
    v22 = *(this + 6);
    if (v21 != v20)
    {
      do
      {
        v24 = *(v21 - 8);
        v21 -= 8;
        v23 = v24;
        if (v24)
        {
          (*(*v23 + 8))(v23);
        }
      }

      while (v21 != v20);
      v22 = *(this + 6);
    }

    *(this + 7) = v20;
    operator delete(v22);
  }

  v25 = *(this + 1);
  if (v25)
  {
    if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }
}

void std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::vector<std::string>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
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
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    v6 = a1[4];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::destroy(a1, a2[1]);
    std::pair<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>> const,webrtc::TransceiverStableState>::~pair(a2 + 4);

    operator delete(a2);
  }
}

void *std::pair<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>> const,webrtc::TransceiverStableState>::~pair(void *a1)
{
  if (*(a1 + 112) == 1)
  {
    v2 = a1[11];
    if (v2)
    {
      v3 = a1[12];
      v4 = a1[11];
      if (v3 != v2)
      {
        do
        {
          webrtc::RtpEncodingParameters::~RtpEncodingParameters((v3 - 272));
        }

        while (v3 != v2);
        v4 = a1[11];
      }

      a1[12] = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v5 = a1[7];
    if (v5)
    {
      v6 = a1[8];
      v7 = a1[7];
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = a1[7];
      }

      a1[8] = v5;
      operator delete(v7);
    }
  }

  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  return a1;
}

BOOL webrtc::RefCountedObject<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 10, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829D7E0;
  a1[1] = &unk_28829D890;
  v14 = a1;
  v15 = webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[2];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[4];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>::~RefCountedObject(void *a1)
{
  webrtc::RefCountedObject<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::dtls_transport@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v21 = 0;
  v22 = 0;
  v19 = v4;
  v20 = webrtc::RtpReceiverInterface::dtls_transport;
  webrtc::Event::Event(&v23, 0, 0);
  v5 = *(a1 + 16);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    (v20)(&v16, v19 + (v21 >> 1));
    v11 = v16.n128_u64[0];
    v16.n128_u64[0] = 0;
    v12 = v22;
    v22 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      if (v16.n128_u64[0])
      {
        (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
      }
    }
  }

  else
  {
    v16.n128_u64[0] = &v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,webrtc::scoped_refptr<webrtc::DtlsTransportInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v23, v7, v8);
  }

  v9 = v22;
  v22 = 0;
  *a2 = v9;
  pthread_mutex_destroy(&v23);
  pthread_cond_destroy(&v24);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 8))(v22);
  }

  return result;
}

void webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::stream_ids(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = *(a1 + 32);
  v26 = webrtc::RtpReceiverInterface::stream_ids;
  memset(__p, 0, sizeof(__p));
  webrtc::Event::Event(&v28, 0, 0);
  v4 = *(a1 + 16);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v19)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) != v4)
  {
    *&v22 = &v25;
    v23 = absl::internal_any_invocable::LocalManagerTrivial;
    v24 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,std::vector<std::string>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v22, &v21, &v20);
    v23(1, &v22, &v22);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v28, v6, v7);
    v8 = *&__p[1];
    v9 = __p[3];
    goto LABEL_16;
  }

  v10 = (v25 + (__p[0] >> 1));
  if ((__p[0] & 1) == 0)
  {
    (v26)(&v22, v10);
    v11 = __p[1];
    if (!__p[1])
    {
      goto LABEL_15;
    }

LABEL_8:
    v12 = __p[2];
    v13 = v11;
    if (__p[2] != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p[1];
    }

    __p[2] = v11;
    operator delete(v13);
    goto LABEL_15;
  }

  (*(*v10 + v26))(&v22);
  v11 = __p[1];
  if (__p[1])
  {
    goto LABEL_8;
  }

LABEL_15:
  v8 = v22;
  v9 = v23;
LABEL_16:
  *a2 = v8;
  *(a2 + 16) = v9;
  memset(&__p[1], 0, 24);
  pthread_mutex_destroy(&v28);
  pthread_cond_destroy(&v29);
  v15 = __p[1];
  if (__p[1])
  {
    v16 = __p[2];
    v17 = __p[1];
    if (__p[2] != __p[1])
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p[1];
    }

    __p[2] = v15;
    operator delete(v17);
  }
}

void webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::streams(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = *(a1 + 32);
  v26 = webrtc::RtpReceiverInterface::streams;
  memset(__p, 0, sizeof(__p));
  webrtc::Event::Event(&v28, 0, 0);
  v4 = *(a1 + 16);
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) != v4)
  {
    *&v22 = &v25;
    v23 = absl::internal_any_invocable::LocalManagerTrivial;
    v24 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,std::vector<webrtc::scoped_refptr<webrtc::MediaStreamInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v22, &v21, &v20);
    v23(1, &v22, &v22);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v28, v5, v6);
    v7 = *&__p[1];
    v8 = __p[3];
    goto LABEL_16;
  }

  v9 = (v25 + (__p[0] >> 1));
  if ((__p[0] & 1) == 0)
  {
    (v26)(&v22, v9);
    v10 = __p[1];
    if (!__p[1])
    {
      goto LABEL_15;
    }

LABEL_8:
    v11 = __p[2];
    v12 = v10;
    if (__p[2] != v10)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 8;
        v13 = v14;
        if (v14)
        {
          (*(*v13 + 8))(v13);
        }
      }

      while (v11 != v10);
      v12 = __p[1];
    }

    __p[2] = v10;
    operator delete(v12);
    goto LABEL_15;
  }

  (*(*v9 + v26))(&v22);
  v10 = __p[1];
  if (__p[1])
  {
    goto LABEL_8;
  }

LABEL_15:
  v7 = v22;
  v8 = v23;
LABEL_16:
  *a2 = v7;
  *(a2 + 16) = v8;
  memset(&__p[1], 0, 24);
  pthread_mutex_destroy(&v28);
  pthread_cond_destroy(&v29);
  v15 = __p[1];
  if (__p[1])
  {
    v16 = __p[2];
    v17 = __p[1];
    if (__p[2] != __p[1])
    {
      do
      {
        v19 = *(v16 - 1);
        v16 -= 8;
        v18 = v19;
        if (v19)
        {
          (*(*v18 + 8))(v18);
        }
      }

      while (v16 != v15);
      v17 = __p[1];
    }

    __p[2] = v15;
    operator delete(v17);
  }
}

void webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::GetParameters(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 32);
  v16 = webrtc::RtpReceiverInterface::GetParameters;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 256;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v24 = 0;
  v25 = 0;
  webrtc::Event::Event(&v26, 0, 0);
  v4 = *(a1 + 24);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v16;
    v9 = (v15 + (v17[0] >> 1));
    if (v17[0])
    {
      v8 = *(*v9 + v16);
    }

    (v8)(&v12, v9);
    webrtc::RtpParameters::operator=(&v17[1], &v12);
    webrtc::RtpParameters::~RtpParameters(&v12.__r_.__value_.__l.__data_);
  }

  else
  {
    v12.__r_.__value_.__r.__words[0] = &v15;
    v12.__r_.__value_.__r.__words[2] = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,webrtc::RtpParameters>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v12, &v14, &v11);
    (v12.__r_.__value_.__r.__words[2])(1, &v12, &v12);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v26, v6, v7);
  }

  webrtc::RtpParameters::RtpParameters(a2, &v17[1]);
  pthread_mutex_destroy(&v26);
  pthread_cond_destroy(&v27);
  webrtc::RtpParameters::~RtpParameters(&v17[1]);
}

uint64_t webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::SetObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 32);
  v18 = webrtc::RtpReceiverInterface::SetObserver;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::RtpReceiverObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::SetJitterBufferMinimumDelay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v12[0] = a2;
  v12[1] = a3;
  v18 = *(a1 + 32);
  v19 = webrtc::RtpReceiverInterface::SetJitterBufferMinimumDelay;
  v20 = 0;
  v21 = v12;
  webrtc::Event::Event(&v22, 0, 0);
  v4 = *(a1 + 24);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    (v8)(v9, *v21, v21[1]);
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void,std::optional<double>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v22, v6, v7);
  }

  pthread_mutex_destroy(&v22);
  return pthread_cond_destroy(&v23);
}

void webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::GetSources(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 32);
  v19 = webrtc::RtpReceiverInterface::GetSources;
  memset(__p, 0, sizeof(__p));
  webrtc::Event::Event(&v21, 0, 0);
  v4 = *(a1 + 24);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) != v4)
  {
    *&v15 = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,std::vector<webrtc::RtpSource>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v21, v6, v7);
    v8 = *&__p[1];
    v9 = __p[3];
    goto LABEL_10;
  }

  v10 = (v18 + (__p[0] >> 1));
  if ((__p[0] & 1) == 0)
  {
    (v19)(&v15, v10);
    v11 = __p[1];
    if (!__p[1])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v10 + v19))(&v15);
  v11 = __p[1];
  if (__p[1])
  {
LABEL_8:
    __p[2] = v11;
    operator delete(v11);
  }

LABEL_9:
  v8 = v15;
  v9 = v16;
LABEL_10:
  *a2 = v8;
  *(a2 + 16) = v9;
  memset(&__p[1], 0, 24);
  pthread_mutex_destroy(&v21);
  pthread_cond_destroy(&v22);
  if (__p[1])
  {
    __p[2] = __p[1];
    operator delete(__p[1]);
  }
}

uint64_t webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::SetFrameDecryptor(uint64_t a1, unint64_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 32);
  v18 = webrtc::RtpReceiverInterface::SetFrameDecryptor;
  v19 = 0;
  v20 = a2;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = v17 + (v19 >> 1);
    v9 = *v20;
    *v20 = 0;
    v14.n128_u64[0] = v9;
    (v7)(v8, &v14);
    if (v14.n128_u64[0])
    {
      (*(*v14.n128_u64[0] + 8))(v14.n128_u64[0]);
    }
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::scoped_refptr<webrtc::FrameDecryptorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::GetFrameDecryptor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v21 = 0;
  v22 = 0;
  v19 = v4;
  v20 = webrtc::RtpReceiverInterface::GetFrameDecryptor;
  webrtc::Event::Event(&v23, 0, 0);
  v5 = *(a1 + 24);
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == v5)
  {
    (v20)(&v16, v19 + (v21 >> 1));
    v11 = v16.n128_u64[0];
    v16.n128_u64[0] = 0;
    v12 = v22;
    v22 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      if (v16.n128_u64[0])
      {
        (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
      }
    }
  }

  else
  {
    v16.n128_u64[0] = &v19;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,webrtc::scoped_refptr<webrtc::FrameDecryptorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v5 + 8))(v5, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait(&v23, v7, v8);
  }

  v9 = v22;
  v22 = 0;
  *a2 = v9;
  pthread_mutex_destroy(&v23);
  pthread_cond_destroy(&v24);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 8))(v22);
  }

  return result;
}

uint64_t webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::GenerateKeyFrame(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 32);
  v14 = webrtc::RtpReceiverInterface::GenerateKeyFrame;
  v15 = 0;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::SetFrameTransformer(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 32);
  v4[1] = webrtc::RtpReceiverInterface::SetFrameTransformer;
  v4[2] = 0;
  v4[4] = a2;
  webrtc::Event::Event(&v5, 0, 0);
  webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(v4, *(a1 + 24));
  pthread_mutex_destroy(&v5);
  return pthread_cond_destroy(&v6);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>::~RefCountedObject((a1 - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::SetFrameTransformer(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 24);
  v4[1] = webrtc::RtpReceiverInterface::SetFrameTransformer;
  v4[2] = 0;
  v4[4] = a2;
  webrtc::Event::Event(&v5, 0, 0);
  webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(v4, *(a1 + 16));
  pthread_mutex_destroy(&v5);
  return pthread_cond_destroy(&v6);
}

uint64_t webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 32) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,webrtc::scoped_refptr<webrtc::DtlsTransportInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,std::vector<std::string>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v10);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v10, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v8 = *(v6 - 1);
      v6 -= 3;
      if (v8 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v10;
  *(v1 + 40) = v11;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,std::vector<webrtc::scoped_refptr<webrtc::MediaStreamInterface>>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v11);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2(&v11, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + 32);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v9 = *(v6 - 1);
      v6 -= 8;
      v8 = v9;
      if (v9)
      {
        (*(*v8 + 8))(v8);
      }
    }

    while (v6 != v5);
    v7 = *(v1 + 24);
  }

  *(v1 + 32) = v5;
  operator delete(v7);
LABEL_12:
  *(v1 + 24) = v11;
  *(v1 + 40) = v12;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,webrtc::RtpParameters>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v6, v4);
  webrtc::RtpParameters::operator=((v1 + 24), v6);
  webrtc::RtpParameters::~RtpParameters(&v6[0].__r_.__value_.__l.__data_);
  pthread_mutex_lock((v1 + 200));
  *(v1 + 313) = 1;
  pthread_cond_broadcast((v1 + 264));
  return pthread_mutex_unlock((v1 + 200));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::RtpReceiverObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void,std::optional<double>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4, v4[1]);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,std::vector<webrtc::RtpSource>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if ((v3 & 1) == 0)
  {
    v2(&v7, v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (*(*v4 + v2))(&v7);
  v5 = *(v1 + 24);
  if (v5)
  {
LABEL_5:
    *(v1 + 32) = v5;
    operator delete(v5);
  }

LABEL_6:
  *(v1 + 24) = v7;
  *(v1 + 40) = v8;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::scoped_refptr<webrtc::FrameDecryptorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  v2(v5, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpReceiverInterface,webrtc::scoped_refptr<webrtc::FrameDecryptorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(void *a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[4];
    v11 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v11 + v8);
    }

    v12 = *v10;
    *v10 = 0;
    v16.n128_u64[0] = v12;
    v8(v11, &v16);
    result = v16.n128_u64[0];
    if (v16.n128_u64[0])
    {
      return (*(*v16.n128_u64[0] + 8))(v16.n128_u64[0]);
    }
  }

  else
  {
    v16.n128_u64[0] = a1;
    v17 = absl::internal_any_invocable::LocalManagerTrivial;
    v18 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v16, &v15, &v14);
    v17(1, &v16, &v16);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    return webrtc::Event::Wait((a1 + 5), v5, v6);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpReceiverInterface,void,webrtc::scoped_refptr<webrtc::FrameTransformerInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v6 = *v4;
  *v4 = 0;
  v8 = v6;
  v2(v5, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

void webrtc::RefCountedObject<webrtc::AudioRtpReceiver>::~RefCountedObject(webrtc::AudioRtpReceiver *a1)
{
  webrtc::AudioRtpReceiver::~AudioRtpReceiver(a1);

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RefCountedObject<webrtc::AudioRtpReceiver>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 50, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 16))(a1);
  }

  return add != 1;
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::AudioRtpReceiver>::~RefCountedObject(uint64_t a1)
{
  webrtc::AudioRtpReceiver::~AudioRtpReceiver((a1 - 8));
}

{
  webrtc::AudioRtpReceiver::~AudioRtpReceiver((a1 - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::AudioRtpReceiver::~AudioRtpReceiver((a1 - 16));
}

{
  webrtc::AudioRtpReceiver::~AudioRtpReceiver((a1 - 16));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::AudioRtpReceiver::~AudioRtpReceiver((a1 - 24));
}

{
  webrtc::AudioRtpReceiver::~AudioRtpReceiver((a1 - 24));

  JUMPOUT(0x2743DA540);
}

BOOL non-virtual thunk towebrtc::RefCountedObject<webrtc::AudioRtpReceiver>::Release(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 184), 0xFFFFFFFF);
  if (add == 1)
  {
    (*(*(a1 - 16) + 16))();
  }

  return add != 1;
}

BOOL webrtc::RefCountedObject<webrtc::VideoRtpReceiver>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 45, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::VideoRtpReceiver>::~RefCountedObject(webrtc::VideoRtpReceiver *a1)
{
  webrtc::VideoRtpReceiver::~VideoRtpReceiver(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t (***webrtc::VideoRtpReceiver::track@<X0>(webrtc::VideoRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 11);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

void webrtc::VideoRtpReceiver::id(webrtc::VideoRtpReceiver *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoRtpReceiver>::~RefCountedObject(uint64_t a1)
{
  webrtc::VideoRtpReceiver::~VideoRtpReceiver((a1 - 8));
}

{
  webrtc::VideoRtpReceiver::~VideoRtpReceiver((a1 - 8));

  JUMPOUT(0x2743DA540);
}

void *std::__function::__func<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1,std::allocator<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1>,void ()(void)>::~__func(void *result)
{
  *result = &unk_28829DC38;
  v1 = result[1];
  if (v1)
  {
    if (atomic_fetch_add((v1 + 4), 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C404A09149ALL);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1,std::allocator<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28829DC38;
  v2 = a1[1];
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1,std::allocator<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829DC38;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 4), 1u, memory_order_relaxed);
  }

  a2[2] = *(result + 16);
  return result;
}

uint64_t std::__function::__func<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1,std::allocator<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    if (atomic_fetch_add((result + 4), 0xFFFFFFFF) == 1)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

void std::__function::__func<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1,std::allocator<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[1];
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    v3 = a1;
    MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
    a1 = v3;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1,std::allocator<webrtc::RtpTransmissionManager::CreateAndAddTransceiver(webrtc::scoped_refptr<webrtc::RtpSenderProxyWithInternal<webrtc::RtpSenderInternal>>,webrtc::scoped_refptr<webrtc::RtpReceiverProxyWithInternal<webrtc::RtpReceiverInternal>>)::$_1>,void ()(void)>::operator()(uint64_t result)
{
  v2 = *(result + 8);
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = *(result + 16);
      if (v3)
      {
        v4 = *(v3 + 288);
        if (v4)
        {
          v5 = *(*v4 + 48);

          return v5();
        }

        else
        {
          v6 = std::__throw_bad_function_call[abi:sn200100]();
          return webrtc::RtpTransport::SetRtcpMuxEnabled(v6, v7);
        }
      }
    }
  }

  return result;
}

uint64_t *webrtc::RtpTransport::MaybeSignalReadyToSend(uint64_t *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (*(this + 273) == 1)
  {
    if (*(this + 274))
    {
      v9 = 1;
      if (*(this + 272) == 1)
      {
        return this;
      }
    }

    else
    {
      v9 = *(this + 249) & 1;
      if (*(this + 272) == v9)
      {
        return this;
      }
    }
  }

  else
  {
    v9 = 0;
    if (!*(this + 272))
    {
      return this;
    }
  }

  if (*(this + 503) == 1)
  {
    v10 = *(v8 + 512);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
    }

    operator new();
  }

  v12 = this + 10;
  v11 = *(this + 80);
  *(this + 272) = v9;
  *(this + 503) = 1;
  if (v11 == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v18);
    return webrtc::RtpTransport::transport_name(v17);
  }

  else
  {
    *(this + 80) = 1;
    v13 = this[7];
    v14 = this[8];
    if (v13 == v14)
    {
      *v12 = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        this = (*(v13 + 40))(v13 + 8, v9);
        v16 = *v13;
        v13 += 56;
        v15 |= v16 == v12;
      }

      while (v13 != v14);
      *v12 = 0;
      if (v15)
      {
        this = webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v8 + 56), (v8 + 80));
      }
    }

    *(v8 + 503) = 0;
  }

  return this;
}

uint64_t webrtc::RtpTransport::SetRtcpOption(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    return (*(*v1 + 48))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t *webrtc::RtpTransport::SetRtpPacketTransport(uint64_t *this, webrtc::PacketTransportInternal *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = this[32];
  if (v8 != a2)
  {
    v10 = this;
    if (!v8)
    {
      goto LABEL_37;
    }

    v11 = *(v8 + 17);
    if (v11 != (v8 + 128))
    {
      while (v11[3] != this)
      {
        v11 = v11[1];
        if (v11 == (v8 + 128))
        {
          goto LABEL_10;
        }
      }

      v12 = *(v8 + 19);
      v13 = *v11;
      v14 = v11[1];
      *(v13 + 8) = v14;
      *v14 = v13;
      --*(v8 + 18);
      operator delete(v11);
      if (v12 == v11)
      {
        *(v8 + 19) = v14;
      }

      (*(v10 + 16))(v10, v8 + 14);
      v8 = *(v10 + 256);
    }

LABEL_10:
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v8 + 43, v10);
    v15 = *(v10 + 256);
    v16 = v15[38];
    if (v16 != v15 + 37)
    {
      while (v16[3] != v10)
      {
        v16 = v16[1];
        if (v16 == v15 + 37)
        {
          goto LABEL_17;
        }
      }

      v17 = v15[40];
      v18 = *v16;
      v19 = v16[1];
      *(v18 + 8) = v19;
      *v19 = v18;
      --v15[39];
      operator delete(v16);
      if (v17 == v16)
      {
        v15[40] = v19;
      }

      (*(v10 + 16))(v10, v15 + 35);
      v15 = *(v10 + 256);
    }

LABEL_17:
    v20 = v15[10];
    if (v20 != v15 + 9)
    {
      while (v20[3] != v10)
      {
        v20 = v20[1];
        if (v20 == v15 + 9)
        {
          goto LABEL_24;
        }
      }

      v21 = v15[12];
      v22 = *v20;
      v23 = v20[1];
      *(v22 + 8) = v23;
      *v23 = v22;
      --v15[11];
      operator delete(v20);
      if (v21 == v20)
      {
        v15[12] = v23;
      }

      (*(v10 + 16))(v10, v15 + 7);
      v15 = *(v10 + 256);
    }

LABEL_24:
    v24 = v15[31];
    if (v24 == v15 + 30)
    {
LABEL_27:
      v25 = (v10 + 176);
      if (*(v10 + 176) != 1)
      {
LABEL_32:
        *(v10 + 176) = 1;
        v29 = *(v10 + 152);
        v30 = *(v10 + 160);
        if (v29 == v30)
        {
          *v25 = 0;
          if (a2)
          {
LABEL_38:
            operator new();
          }

          goto LABEL_40;
        }

        v31 = 0;
        do
        {
          v32 = v29[5];
          v45 = 0;
          v46 = v51;
          *v47 = *v52;
          *&v47[15] = *&v52[15];
          v48 = 0;
          v49 = v43;
          v50 = v44;
          (v32)(v29 + 1, &v45);
          v33 = *v29;
          v29 += 7;
          v31 |= v33 == v25;
        }

        while (v29 != v30);
        *v25 = 0;
        if (v31)
        {
          webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v25 - 3, v25);
        }

LABEL_37:
        if (a2)
        {
          goto LABEL_38;
        }

LABEL_40:
        *(v10 + 256) = 0;
        *(v10 + 273) = 0;
        return webrtc::RtpTransport::MaybeSignalReadyToSend(v10, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      while (v24[3] != v10)
      {
        v24 = v24[1];
        if (v24 == v15 + 30)
        {
          goto LABEL_27;
        }
      }

      v26 = v15[33];
      v27 = *v24;
      v28 = v24[1];
      *(v27 + 8) = v28;
      *v28 = v27;
      --v15[32];
      operator delete(v24);
      if (v26 == v24)
      {
        v15[33] = v28;
      }

      (*(v10 + 16))(v10, v15 + 28);
      v25 = (v10 + 176);
      if (*(v10 + 176) != 1)
      {
        goto LABEL_32;
      }
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v42);
    return webrtc::RtpTransport::OnReadyToSend(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  return this;
}

uint64_t *webrtc::RtpTransport::OnReadyToSend(uint64_t *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this[33] == a2)
  {
    *(this + 274) = 1;
  }

  else
  {
    *(this + 273) = 1;
  }

  return webrtc::RtpTransport::MaybeSignalReadyToSend(this, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t *webrtc::RtpTransport::OnSentPacket(uint64_t *this, webrtc::PacketTransportInternal *a2, const webrtc::SentPacketInfo *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this;
  if (*(this + 504) == 1)
  {
    v10 = *(v9 + 512);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
    }

    operator new();
  }

  v12 = this + 30;
  v11 = *(this + 240);
  *(this + 504) = 1;
  if (v11 == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v19);
    return webrtc::RtpTransport::SetRtcpPacketTransport(v17, v18);
  }

  else
  {
    *(this + 240) = 1;
    v13 = this[27];
    v14 = this[28];
    if (v13 == v14)
    {
      *v12 = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        this = (*(v13 + 40))(v13 + 8, a3);
        v16 = *v13;
        v13 += 56;
        v15 |= v16 == v12;
      }

      while (v13 != v14);
      *v12 = 0;
      if (v15)
      {
        this = webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v9 + 216), (v9 + 240));
      }
    }

    *(v9 + 504) = 0;
  }

  return this;
}

uint64_t *webrtc::RtpTransport::SetRtcpPacketTransport(uint64_t *this, webrtc::PacketTransportInternal *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = this[33];
  if (v8 != a2)
  {
    v10 = this;
    if (!v8)
    {
      goto LABEL_37;
    }

    v11 = *(v8 + 17);
    if (v11 != (v8 + 128))
    {
      while (v11[3] != this)
      {
        v11 = v11[1];
        if (v11 == (v8 + 128))
        {
          goto LABEL_10;
        }
      }

      v12 = *(v8 + 19);
      v13 = *v11;
      v14 = v11[1];
      *(v13 + 8) = v14;
      *v14 = v13;
      --*(v8 + 18);
      operator delete(v11);
      if (v12 == v11)
      {
        *(v8 + 19) = v14;
      }

      (*(v10 + 16))(v10, v8 + 14);
      v8 = *(v10 + 264);
    }

LABEL_10:
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v8 + 43, v10);
    v15 = *(v10 + 264);
    v16 = v15[38];
    if (v16 != v15 + 37)
    {
      while (v16[3] != v10)
      {
        v16 = v16[1];
        if (v16 == v15 + 37)
        {
          goto LABEL_17;
        }
      }

      v17 = v15[40];
      v18 = *v16;
      v19 = v16[1];
      *(v18 + 8) = v19;
      *v19 = v18;
      --v15[39];
      operator delete(v16);
      if (v17 == v16)
      {
        v15[40] = v19;
      }

      (*(v10 + 16))(v10, v15 + 35);
      v15 = *(v10 + 264);
    }

LABEL_17:
    v20 = v15[10];
    if (v20 != v15 + 9)
    {
      while (v20[3] != v10)
      {
        v20 = v20[1];
        if (v20 == v15 + 9)
        {
          goto LABEL_24;
        }
      }

      v21 = v15[12];
      v22 = *v20;
      v23 = v20[1];
      *(v22 + 8) = v23;
      *v23 = v22;
      --v15[11];
      operator delete(v20);
      if (v21 == v20)
      {
        v15[12] = v23;
      }

      (*(v10 + 16))(v10, v15 + 7);
      v15 = *(v10 + 264);
    }

LABEL_24:
    v24 = v15[31];
    if (v24 == v15 + 30)
    {
LABEL_27:
      v25 = (v10 + 176);
      if (*(v10 + 176) != 1)
      {
LABEL_32:
        *(v10 + 176) = 1;
        v29 = *(v10 + 152);
        v30 = *(v10 + 160);
        if (v29 == v30)
        {
          *v25 = 0;
          if (a2)
          {
LABEL_38:
            operator new();
          }

          goto LABEL_40;
        }

        v31 = 0;
        do
        {
          v32 = v29[5];
          v39 = 0;
          v40 = v45;
          *v41 = *v46;
          *&v41[15] = *&v46[15];
          v42 = 0;
          v43 = v37;
          v44 = v38;
          (v32)(v29 + 1, &v39);
          v33 = *v29;
          v29 += 7;
          v31 |= v33 == v25;
        }

        while (v29 != v30);
        *v25 = 0;
        if (v31)
        {
          webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v25 - 3, v25);
        }

LABEL_37:
        if (a2)
        {
          goto LABEL_38;
        }

LABEL_40:
        *(v10 + 264) = 0;
        *(v10 + 274) = 0;
        return webrtc::RtpTransport::MaybeSignalReadyToSend(v10, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      while (v24[3] != v10)
      {
        v24 = v24[1];
        if (v24 == v15 + 30)
        {
          goto LABEL_27;
        }
      }

      v26 = v15[33];
      v27 = *v24;
      v28 = v24[1];
      *(v27 + 8) = v28;
      *v28 = v27;
      --v15[32];
      operator delete(v24);
      if (v26 == v24)
      {
        v15[33] = v28;
      }

      (*(v10 + 16))(v10, v15 + 28);
      v25 = (v10 + 176);
      if (*(v10 + 176) != 1)
      {
        goto LABEL_32;
      }
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v36);
    return webrtc::RtpTransport::IsWritable(v34, v35);
  }

  return this;
}

uint64_t webrtc::RtpTransport::IsWritable(webrtc::RtpTransport *this, int a2)
{
  if (!a2 || *(this + 249) == 1)
  {
    result = *(this + 32);
    if (!result)
    {
      return result;
    }

    return (*(*result + 24))();
  }

  result = *(this + 33);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

BOOL webrtc::RtpTransport::SendRtpPacket(webrtc::RtpTransport *this, webrtc::CopyOnWriteBuffer *a2, const webrtc::AsyncSocketPacketOptions *a3, uint64_t a4)
{
  v6 = *(this + 32);
  if (*a2)
  {
    v7 = *(*a2 + 16) + *(a2 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(*v6 + 40))(*(this + 32), v7, *(a2 + 2), a3, a4);
  v9 = *(a2 + 4);
  if (v8 != v9 && *(this + 248) == 1 && (*(*v6 + 64))(v6) == 57)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transport.cc");
    }

    *(this + 273) = 0;
    webrtc::RtpTransport::MaybeSignalReadyToSend(this, v10, v11, v12, v13, v14, v15, v16);
  }

  return v8 == v9;
}

BOOL webrtc::RtpTransport::SendRtcpPacket(webrtc::RtpTransport *this, webrtc::CopyOnWriteBuffer *a2, const webrtc::AsyncSocketPacketOptions *a3, uint64_t a4)
{
  v6 = 264;
  if (*(this + 249))
  {
    v6 = 256;
  }

  v7 = *(this + v6);
  if (*a2)
  {
    v8 = *(*a2 + 16) + *(a2 + 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*v7 + 40))(v7, v8, *(a2 + 2), a3, a4);
  v10 = *(a2 + 4);
  if (v9 != v10 && *(this + 248) == 1 && (*(*v7 + 64))(v7) == 57)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transport.cc");
    }

    *(this + 274) = 0;
    webrtc::RtpTransport::MaybeSignalReadyToSend(this, v11, v12, v13, v14, v15, v16, v17);
  }

  return v9 == v10;
}

double webrtc::RtpTransport::UpdateRtpHeaderExtensionMap(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v3 = *(a2 + 8);
  memset(v10, 0, 23);
  v5 = v3 - v4;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = (v6 + v5);
    do
    {
      while (1)
      {
        v8 = *(v4 + 23);
        if (v8 < 0)
        {
          break;
        }

        webrtc::RtpHeaderExtensionMap::RegisterByUri(v10, *(v4 + 6), v4, v8);
        v4 += 4;
        if (v4 == v7)
        {
          goto LABEL_9;
        }
      }

      webrtc::RtpHeaderExtensionMap::RegisterByUri(v10, *(v4 + 6), *v4, v4[1]);
      v4 += 4;
    }

    while (v4 != v7);
  }

LABEL_9:
  result = v10[0];
  *(a1 + 480) = *v10;
  *(a1 + 495) = *(&v10[1] + 7);
  return result;
}

uint64_t webrtc::RtpTransport::RegisterRtpDemuxerSink(uint64_t a1, uint64_t a2, void *a3)
{
  webrtc::RtpDemuxer::RemoveSink(a1 + 280, a3);
  v6 = webrtc::RtpDemuxer::AddSink(a1 + 280, a2, a3);
  if ((v6 & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transport.cc");
  }

  return v6;
}

uint64_t webrtc::RtpTransport::UnregisterRtpDemuxerSink(uint64_t a1, void *a2)
{
  webrtc::RtpDemuxer::RemoveSink(a1 + 280, a2);
  v3 = v2;
  if ((v2 & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transport.cc");
  }

  return v3;
}

uint64_t *webrtc::RtpTransport::OnNetworkRouteChanged(uint64_t *result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 4);
  v8 = result + 22;
  if (*(result + 176) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v16);
    return webrtc::RtpTransport::OnWritableState(v14, v15);
  }

  else
  {
    *(result + 176) = 1;
    v9 = result[19];
    v10 = result[20];
    if (v9 == v10)
    {
      *v8 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = v9[5];
        v19[0] = v16;
        v19[1] = v17;
        v20 = v18;
        result = (v12)(v9 + 1, v19);
        v13 = *v9;
        v9 += 7;
        v11 |= v13 == v8;
      }

      while (v9 != v10);
      *v8 = 0;
      if (v11)
      {
        return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v8 - 3, v8);
      }
    }
  }

  return result;
}

void webrtc::RtpTransport::OnWritableState(webrtc::RtpTransport *this, webrtc::PacketTransportInternal *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 249))
  {
    v9 = 0;
    v10 = *(this + 32);
    if (!v10)
    {
LABEL_9:
      while (1)
      {
        v11 = 0;
        v12 = (this + 208);
        if (*(this + 208) != 1)
        {
          break;
        }

LABEL_8:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v17);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(this + 32);
    v9 = *(this + 33);
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  if (!(*(*v10 + 24))(v10, a2))
  {
    goto LABEL_9;
  }

  if (v9)
  {
    v11 = (*(*v9 + 24))(v9);
    v12 = (this + 208);
    if (*(this + 208) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 1;
    v12 = (this + 208);
    if (*(this + 208) == 1)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  *(this + 208) = 1;
  v13 = *(this + 23);
  v14 = *(this + 24);
  if (v13 == v14)
  {
    *v12 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      (*(v13 + 40))(v13 + 8, v11);
      v16 = *v13;
      v13 += 56;
      v15 |= v16 == v12;
    }

    while (v13 != v14);
    *v12 = 0;
    if (v15)
    {

      webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v12 - 3, v12);
    }
  }
}

void webrtc::RtpTransport::OnRtpPacketReceived(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    operator new();
  }

  webrtc::RtpTransport::DemuxPacket(a1);
}

uint64_t *webrtc::RtpTransport::OnRtcpPacketReceived(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (*(a2 + 8))
  {
    operator new();
  }

  memset(v18, 0, sizeof(v18));
  if (*(a2 + 24))
  {
    v9 = *(a2 + 16);
  }

  else
  {
    v9 = -1;
  }

  v10 = result + 14;
  if (*(result + 112) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v17);
    return webrtc::RtpTransport::OnReadPacket();
  }

  *(result + 112) = 1;
  v11 = result[11];
  v12 = result[12];
  if (v11 == v12)
  {
    *v10 = 0;
    v15 = v18[0];
    if (!v18[0])
    {
      return result;
    }

    goto LABEL_15;
  }

  v13 = 0;
  do
  {
    result = (*(v11 + 40))(v11 + 8, v18, v9);
    v14 = *v11;
    v11 += 56;
    v13 |= v14 == v10;
  }

  while (v11 != v12);
  *v10 = 0;
  if (v13)
  {
    result = webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v8 + 11, v8 + 14);
  }

  v15 = v18[0];
  if (v18[0])
  {
LABEL_15:
    if (atomic_fetch_add((v15 + 24), 0xFFFFFFFF) == 1)
    {
      v16 = *(v15 + 16);
      *(v15 + 16) = 0;
      if (v16)
      {
        MEMORY[0x2743DA520](v16, 0x1000C8077774924);
      }

      return MEMORY[0x2743DA540](v15, 0x1010C40EE34DA14);
    }
  }

  return result;
}

void webrtc::RtpTransport::OnReadPacket(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (!v2)
  {
    v3 = 0;
  }

  if (v2 >= 4 && (*v3 & 0xC0) == 0x80)
  {
    v4 = v3[1] & 0x60;
    if (v4 == 64)
    {
      if (v2 <= 0x800 && v2 >= 4)
      {
LABEL_19:
        v14 = *a1;
        if (v4 == 64)
        {
          v15 = *(v14 + 136);
        }

        else
        {
          v15 = *(v14 + 128);
        }

        v15();
        return;
      }
    }

    else
    {
      if (v2 < 0xC)
      {
        return;
      }

      if (v2 <= 0x800 && v2 >= 0xC)
      {
        goto LABEL_19;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transport.cc");
    }
  }
}

void webrtc::RtpTransport::~RtpTransport(webrtc::RtpTransport *this)
{
  *this = &unk_28829DC80;
  v2 = *(this + 64);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::RtpDemuxer::~RtpDemuxer((this + 280));
  *this = &unk_288292B80;
  if (*(this + 240) == 1)
  {
    goto LABEL_49;
  }

  v7 = *(this + 27);
  if (v7)
  {
    v8 = *(this + 28);
    v9 = *(this + 27);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 8);
        if (v10)
        {
          v10(v8 - 48);
        }

        v8 -= 56;
      }

      while (v8 != v7);
      v9 = *(this + 27);
    }

    *(this + 28) = v7;
    operator delete(v9);
  }

  if (*(this + 208) == 1)
  {
    goto LABEL_49;
  }

  v11 = *(this + 23);
  if (v11)
  {
    v12 = *(this + 24);
    v13 = *(this + 23);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 8);
        if (v14)
        {
          v14(v12 - 48);
        }

        v12 -= 56;
      }

      while (v12 != v11);
      v13 = *(this + 23);
    }

    *(this + 24) = v11;
    operator delete(v13);
  }

  if (*(this + 176) == 1)
  {
    goto LABEL_49;
  }

  v15 = *(this + 19);
  if (v15)
  {
    v16 = *(this + 20);
    v17 = *(this + 19);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 8);
        if (v18)
        {
          v18(v16 - 48);
        }

        v16 -= 56;
      }

      while (v16 != v15);
      v17 = *(this + 19);
    }

    *(this + 20) = v15;
    operator delete(v17);
  }

  (*(this + 17))(1, this + 120, this + 120);
  if (*(this + 112) == 1)
  {
    goto LABEL_49;
  }

  v19 = *(this + 11);
  if (v19)
  {
    v20 = *(this + 12);
    v21 = *(this + 11);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22)
        {
          v22(v20 - 48);
        }

        v20 -= 56;
      }

      while (v20 != v19);
      v21 = *(this + 11);
    }

    *(this + 12) = v19;
    operator delete(v21);
  }

  if (*(this + 80) == 1)
  {
LABEL_49:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v3, v4, v5, v6, v28);
    webrtc::RtpTransport::~RtpTransport(v27);
  }

  else
  {
    v23 = *(this + 7);
    if (v23)
    {
      v24 = *(this + 8);
      v25 = *(this + 7);
      if (v24 != v23)
      {
        do
        {
          v26 = *(v24 - 8);
          if (v26)
          {
            v26(v24 - 48);
          }

          v24 -= 56;
        }

        while (v24 != v23);
        v25 = *(this + 7);
      }

      *(this + 8) = v23;
      operator delete(v25);
    }

    *this = &unk_28828CEE0;
    (*(this + 3))(this);
    std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
  }
}

{
  *this = &unk_28829DC80;
  v2 = *(this + 64);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::RtpDemuxer::~RtpDemuxer((this + 280));
  *this = &unk_288292B80;
  if (*(this + 240) != 1)
  {
    v7 = *(this + 27);
    if (v7)
    {
      v8 = *(this + 28);
      v9 = *(this + 27);
      if (v8 != v7)
      {
        do
        {
          v10 = *(v8 - 8);
          if (v10)
          {
            v10(v8 - 48);
          }

          v8 -= 56;
        }

        while (v8 != v7);
        v9 = *(this + 27);
      }

      *(this + 28) = v7;
      operator delete(v9);
    }

    if (*(this + 208) != 1)
    {
      v11 = *(this + 23);
      if (v11)
      {
        v12 = *(this + 24);
        v13 = *(this + 23);
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 8);
            if (v14)
            {
              v14(v12 - 48);
            }

            v12 -= 56;
          }

          while (v12 != v11);
          v13 = *(this + 23);
        }

        *(this + 24) = v11;
        operator delete(v13);
      }

      if (*(this + 176) != 1)
      {
        v15 = *(this + 19);
        if (v15)
        {
          v16 = *(this + 20);
          v17 = *(this + 19);
          if (v16 != v15)
          {
            do
            {
              v18 = *(v16 - 8);
              if (v18)
              {
                v18(v16 - 48);
              }

              v16 -= 56;
            }

            while (v16 != v15);
            v17 = *(this + 19);
          }

          *(this + 20) = v15;
          operator delete(v17);
        }

        (*(this + 17))(1, this + 120, this + 120);
        if (*(this + 112) != 1)
        {
          v19 = *(this + 11);
          if (v19)
          {
            v20 = *(this + 12);
            v21 = *(this + 11);
            if (v20 != v19)
            {
              do
              {
                v22 = *(v20 - 8);
                if (v22)
                {
                  v22(v20 - 48);
                }

                v20 -= 56;
              }

              while (v20 != v19);
              v21 = *(this + 11);
            }

            *(this + 12) = v19;
            operator delete(v21);
          }

          if (*(this + 80) != 1)
          {
            v23 = *(this + 7);
            if (v23)
            {
              v24 = *(this + 8);
              v25 = *(this + 7);
              if (v24 != v23)
              {
                do
                {
                  v26 = *(v24 - 8);
                  if (v26)
                  {
                    v26(v24 - 48);
                  }

                  v24 -= 56;
                }

                while (v24 != v23);
                v25 = *(this + 7);
              }

              *(this + 8) = v23;
              operator delete(v25);
            }

            *this = &unk_28828CEE0;
            (*(this + 3))(this);
            std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));

            JUMPOUT(0x2743DA540);
          }
        }
      }
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v3, v4, v5, v6, v28);
  webrtc::RtpTransport::IsSrtpActive(v27);
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::RtpTransport,webrtc::PacketTransportInternal *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::RtpTransport,std::optional<webrtc::NetworkRoute>>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v11 = v2;
  v12 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = *(a2 + 32);
  return v4(v6, v9);
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::RtpTransport,webrtc::PacketTransportInternal *,webrtc::SentPacketInfo const&>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t *absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::RtpTransport::OnSentPacket(webrtc::PacketTransportInternal *,webrtc::SentPacketInfo const&)::$_0 &&>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result + 8;
  v9 = **result;
  v10 = (v9 + 240);
  if (*(v9 + 240) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v18);
    return absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::RtpTransport::OnSentPacket(webrtc::PacketTransportInternal *,webrtc::SentPacketInfo const&)::$_0>(v15, v16, v17);
  }

  else
  {
    *(v9 + 240) = 1;
    v11 = *(v9 + 216);
    v12 = *(v9 + 224);
    if (v11 == v12)
    {
      *v10 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        result = (*(v11 + 40))(v11 + 8, v8);
        v14 = *v11;
        v11 += 56;
        v13 |= v14 == v10;
      }

      while (v11 != v12);
      *v10 = 0;
      if (v13)
      {

        return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v9 + 216), v10);
      }
    }
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::RtpTransport::OnSentPacket(webrtc::PacketTransportInternal *,webrtc::SentPacketInfo const&)::$_0>(char a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void webrtc::RtpTransportControllerSend::RtpTransportControllerSend(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829DD28;
  *(a1 + 8) = &unk_28829DE70;
  *(a1 + 16) = &unk_28829DEB8;
  v10 = *a2;
  *(a1 + 24) = *a2;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 1);
  *(a1 + 48) = v11;
  webrtc::PacketRouter::PacketRouter((a1 + 80));
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  v12 = a2[5];
  *(a1 + 376) = *(a2 + 12);
  *(a1 + 368) = v12;
  *(a1 + 380) = 0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  *(a1 + 396) = 0;
  *(a1 + 400) = 0;
  v13 = a2[5];
  *(a1 + 412) = *(a2 + 12);
  *(a1 + 404) = v13;
  *(a1 + 432) = 0u;
  *(a1 + 416) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 424) = a1 + 432;
  *(a1 + 448) = 0;
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  *(a1 + 456) = &unk_2882A0A70;
  *(a1 + 464) = &unk_2882A0B08;
  *(a1 + 472) = v14;
  *(a1 + 480) = 5000;
  *(a1 + 488) = 3;
  LOBYTE(__p[0]) = 1;
  __p[1] = 2000000;
  v23 = 0;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v24 = vnegq_f64(v16);
  v25 = xmmword_273BA3980;
  webrtc::PacingController::PacingController(a1 + 496, v14, a1 + 80, v15, __p);
  *(a1 + 1336) = 0x8000000000000000;
  *(a1 + 1344) = 0;
  *(a1 + 1348) = 1064514355;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 1352) = _D0;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0x8000000000000000;
  *(a1 + 1400) = 0;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1408) = 0;
  operator new();
}

void webrtc::RtpTransportControllerSend::~RtpTransportControllerSend(webrtc::RtpTransportControllerSend *this)
{
  v2 = *(this + 260);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 260) = 0;
  }

  v3 = *(this + 261);
  if (v3)
  {
    *(v3 + 4) = 0;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 261) = 0;
  }

  v4 = *(this + 288);
  *(v4 + 4) = 0;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 274);
  pthread_mutex_destroy((this + 2128));
  v5 = *(this + 261);
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v6 = *(this + 260);
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  *(this + 249) = &unk_288293910;
  if (*(this + 2047) < 0)
  {
    operator delete(*(this + 253));
  }

  v7 = *(this + 250);
  if (v7)
  {
    *(this + 251) = v7;
    operator delete(v7);
  }

  v8 = *(this + 216);
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 213));
  v9 = *(this + 210);
  *(this + 210) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 209);
  *(this + 209) = 0;
  if (v10)
  {
    MEMORY[0x2743DA540](v10, 0x1000C4073EF22EALL);
  }

  v11 = *(this + 208);
  *(this + 208) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 205));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 202));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 191));
  v12 = *(this + 181);
  if (v12)
  {
    v13 = *(this + 182);
    v14 = *(this + 181);
    if (v13 != v12)
    {
      v15 = *(this + 182);
      do
      {
        v17 = *(v15 - 32);
        v15 -= 32;
        v16 = v17;
        if (v17)
        {
          *(v13 - 24) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = *(this + 181);
    }

    *(this + 182) = v12;
    operator delete(v14);
  }

  *(this + 57) = &unk_2882A0A70;
  *(this + 58) = &unk_2882A0B08;
  *(this + 1345) = 1;
  v18 = *(this + 177);
  *(v18 + 4) = 0;
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::PacingController::~PacingController((this + 496));
  std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(*(this + 54));
  v19 = *(this + 43);
  if (v19)
  {
    v20 = *(this + 44);
    v21 = *(this + 43);
    if (v20 != v19)
    {
      do
      {
        v23 = *--v20;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          (*(*v22 + 8))(v22);
        }
      }

      while (v20 != v19);
      v21 = *(this + 43);
    }

    *(this + 44) = v19;
    operator delete(v21);
  }

  webrtc::PacketRouter::~PacketRouter((this + 80));
  v24 = *(this + 3);
  if (v24)
  {
    if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v24 + 8))(v24);
    }
  }
}

{
  webrtc::RtpTransportControllerSend::~RtpTransportControllerSend(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::RtpTransportControllerSend::~RtpTransportControllerSend(webrtc::RtpTransportControllerSend *this)
{
  webrtc::RtpTransportControllerSend::~RtpTransportControllerSend((this - 8));
}

{
  webrtc::RtpTransportControllerSend::~RtpTransportControllerSend((this - 16));
}

{
  webrtc::RtpTransportControllerSend::~RtpTransportControllerSend((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpTransportControllerSend::~RtpTransportControllerSend((this - 16));

  JUMPOUT(0x2743DA540);
}

void *webrtc::RtpTransportControllerSend::DestroyRtpVideoSender(void *result, uint64_t a2)
{
  v4 = result[43];
  v3 = result[44];
  if (v4 == v3)
  {
LABEL_5:
    __break(1u);
  }

  else
  {
    v2 = result;
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  v5 = v4 + 1;
  if (v4 + 1 != v3)
  {
    do
    {
      result = *(v5 - 1);
      *(v5 - 1) = *v5;
      *v5 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++v5;
    }

    while (v5 != v3);
    v3 = v2[44];
    v4 = v5 - 1;
  }

  while (v3 != v4)
  {
    v6 = *--v3;
    result = v6;
    *v3 = 0;
    if (v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  v2[44] = v4;
  return result;
}

void webrtc::RtpTransportControllerSend::DeRegisterSendingRtpStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  webrtc::PacketRouter::RemoveSendRtpModule((a1 + 80), a2, a3, a4, a5, a6, a7, a8);
  (*(*a2 + 208))(a2);
  webrtc::TaskQueuePacedSender::RemovePacketsForSsrc((a1 + 456));
}

void webrtc::RtpTransportControllerSend::SetAllocatedSendBitrateLimits(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(a1 + 1944))
  {
    *(a1 + 1936) = v3;
    v4 = a2[2];
    if (*(a1 + 1960))
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 1944) = 1;
    *(a1 + 1936) = v3;
    v4 = a2[2];
    if (*(a1 + 1960))
    {
LABEL_3:
      *(a1 + 1952) = v4;
      v5 = a2[1];
      if (*(a1 + 1976))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  *(a1 + 1960) = 1;
  *(a1 + 1952) = v4;
  v5 = a2[1];
  if ((*(a1 + 1976) & 1) == 0)
  {
LABEL_4:
    *(a1 + 1976) = 1;
  }

LABEL_5:
  *(a1 + 1968) = v5;
  v6 = (*(**(a1 + 40) + 16))(*(a1 + 40));
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
    v7 = v8 - -v6 / 0x3E8uLL;
  }

  *(a1 + 1904) = 1000 * v7;
  v9 = *(a1 + 1680);
  if (v9)
  {
    (*(*v9 + 72))(v16);
    webrtc::RtpTransportControllerSend::PostUpdates(a1, v16, v10, v11, v12, v13, v14, v15);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }
}

void webrtc::RtpTransportControllerSend::SetPacingFactor(webrtc::RtpTransportControllerSend *this, float a2)
{
  if ((*(this + 1928) & 1) == 0)
  {
    *(this + 1928) = 1;
  }

  *(this + 240) = a2;
  v3 = (*(**(this + 5) + 16))(*(this + 5));
  v4 = v3 / 0x3E8uLL;
  if (v3 % 0x3E8uLL > 0x1F3)
  {
    ++v4;
  }

  if (-v3 % 0x3E8uLL <= 0x1F4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 < 0)
  {
    v4 = v5 - -v3 / 0x3E8uLL;
  }

  *(this + 238) = 1000 * v4;
  v6 = *(this + 210);
  if (v6)
  {
    (*(*v6 + 72))(v13);
    webrtc::RtpTransportControllerSend::PostUpdates(this, v13, v7, v8, v9, v10, v11, v12);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }
}

_BYTE *webrtc::RtpTransportControllerSend::SetQueueTimeLimit(webrtc::RtpTransportControllerSend *this, int a2)
{
  *(this + 165) = 1000 * a2;
  v2.var0 = 0x8000000000000000;
  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this + 456, v2);
}

__int128 *webrtc::RtpTransportControllerSend::ReconfigureBandwidthEstimation(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *(a1 + 448) = v3;
  *(a1 + 1914) = v3 | 0x100;
  if (v3)
  {
    v4 = a1 + 136;
    v5 = *(a1 + 144);
    if (v5 == a1 + 136)
    {
      LOBYTE(v6) = 0;
      *(a1 + 816) = 0;
      if (!*(a1 + 656))
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    do
    {
      v6 = (*(**(v5 + 16) + 128))(*(v5 + 16));
      if (v6)
      {
        break;
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  *(a1 + 816) = v6;
  if (!*(a1 + 656))
  {
    goto LABEL_15;
  }

LABEL_8:
  if (*(a1 + 608) == 1)
  {
    if (v6)
    {
      goto LABEL_13;
    }

    v7 = (*(*(a1 + 624) + 8 * (*(a1 + 648) / 0x49uLL)) + 56 * (*(a1 + 648) % 0x49uLL));
    v8 = ((*v7 * v7[4] + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
    v9 = (v8 >> 21) + (v8 >> 63);
    if (*(a1 + 808) < v9)
    {
      v9 = *(a1 + 808);
    }

    if (v9 <= 0)
    {
LABEL_13:
      *(a1 + 664) = 0x8000000000000000;
      *(a1 + 608) = 2;
    }
  }

LABEL_15:
  result = *(a1 + 1680);
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 1672);
  *(a1 + 1672) = 0;
  if (!v11)
  {
    *(a1 + 1680) = 0;
LABEL_21:
    (*(*result + 8))(result);
    result = webrtc::RtpTransportControllerSend::MaybeCreateControllers(a1);
    if (!*(a1 + 1680))
    {
      return result;
    }

    goto LABEL_22;
  }

  MEMORY[0x2743DA540](v11, 0x1000C4073EF22EALL);
  result = *(a1 + 1680);
  *(a1 + 1680) = 0;
  if (result)
  {
    goto LABEL_21;
  }

  result = webrtc::RtpTransportControllerSend::MaybeCreateControllers(a1);
  if (!*(a1 + 1680))
  {
    return result;
  }

LABEL_22:
  v12 = *(a1 + 376);
  v25 = *(a1 + 368);
  v26 = v12;
  webrtc::RtpTransportControllerSend::UpdateBitrateConstraints(a1, &v25);
  v13 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v14 = v13 / 0x3E8uLL;
  if (v13 % 0x3E8uLL > 0x1F3)
  {
    ++v14;
  }

  if (-v13 % 0x3E8uLL <= 0x1F4)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v13 < 0)
  {
    v14 = v15 - -v13 / 0x3E8uLL;
  }

  *(a1 + 1904) = 1000 * v14;
  v16 = *(a1 + 1680);
  if (v16)
  {
    v17 = *(a1 + 1952);
    v29 = *(a1 + 1936);
    v30[0] = v17;
    v18 = *(a1 + 1920);
    v27 = *(a1 + 1904);
    v28 = v18;
    *(v30 + 9) = *(a1 + 1961);
    (*(*v16 + 72))(v31);
    webrtc::RtpTransportControllerSend::PostUpdates(a1, v31, v19, v20, v21, v22, v23, v24);
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }
  }

  return webrtc::RtpTransportControllerSend::UpdateNetworkAvailability(a1);
}

uint64_t webrtc::RtpTransportControllerSend::MaybeCreateControllers(uint64_t this)
{
  if (*(this + 2072) == 1)
  {
    v3 = v1;
    v4 = v2;
    if (*(this + 1432))
    {
      operator new();
    }
  }

  return this;
}

void webrtc::RtpTransportControllerSend::UpdateBitrateConstraints(uint64_t a1, int *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = *a2;
  v6 = (*(**(a1 + 40) + 16))(*(a1 + 40));
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
    v7 = v8 - -v6 / 0x3E8uLL;
  }

  v9 = 1000 * v7;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 > 0)
  {
    v10 = v4;
  }

  v11 = *(a1 + 1680);
  if (v11)
  {
    (*(*v11 + 80))(v20);
    webrtc::RtpTransportControllerSend::PostUpdates(a1, v20, v12, v13, v14, v15, v16, v17);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (v3 <= 0)
    {
      v18 = *(a1 + 1808);
      v19 = *(a1 + 1816);
    }

    else
    {
      v18 = (v3 & ~(v3 >> 31)) | ((v3 >> 8) << 8);
      v19 = 1;
    }

    *(a1 + 1768) = v9;
    *(a1 + 1776) = v5 & ~(v5 >> 31);
    *(a1 + 1784) = 1;
    *(a1 + 1792) = v10;
    *(a1 + 1800) = 1;
    *(a1 + 1808) = v18;
    *(a1 + 1816) = v19;
  }
}