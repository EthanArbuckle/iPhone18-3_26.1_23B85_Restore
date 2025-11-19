void *webrtc::internal::ReceiveStatisticsProxy::GetStats@<X0>(webrtc::internal::ReceiveStatisticsProxy *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(this + 3) + 16))(*(this + 3));
  v5 = v4 / 0x3E8uLL;
  if (v4 % 0x3E8uLL > 0x1F3)
  {
    ++v5;
  }

  if (-v4 % 0x3E8uLL <= 0x1F4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 - -v4 / 0x3E8uLL;
  if (v4 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(this + 186);
  if (v9)
  {
    do
    {
      v10 = *(this + 184);
      if (v10[4] >= v8 - 1000)
      {
        break;
      }

      v11 = v10[1];
      v12 = *(this + 184);
      if (v11)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      *(this + 184) = v13;
      *(this + 186) = v9 - 1;
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(this + 185), v10);
      operator delete(v10);
      v9 = *(this + 186);
    }

    while (v9);
    v9 = (1000 * v9 + 500) / 0x3E8;
  }

  *(this + 10) = v9;
  v15 = webrtc::RateStatistics::Rate((this + 840), v8);
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  *(this + 12) = v17;
  v18 = webrtc::RateStatistics::Rate((this + 744), v8);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  *(this + 11) = v20;
  if (*(this + 1544) == 1)
  {
    v21 = *(this + 160);
    v22 = *(this + 163);
    v23 = (v21 + 8 * (v22 >> 8));
    if (*(this + 161) == v21)
    {
      v27 = 0;
      v25 = 0;
      v28 = (v21 + 8 * (v22 >> 8));
    }

    else
    {
      v24 = *v23;
      v25 = *v23 + 16 * v22;
      v26 = *(v21 + (((*(this + 164) + v22) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 1312) + v22);
      v27 = v25;
      v28 = v23;
      if (v25 != v26)
      {
        v27 = (*v23 + 16 * v22);
        v28 = v23;
        while (*v27 < *(this + 192) - *(this + 158))
        {
          v27 += 16;
          if (v27 - v24 == 4096)
          {
            v29 = *(v28 + 1);
            v28 += 8;
            v24 = v29;
            v27 = v29;
          }

          if (v27 == v26)
          {
            std::deque<std::pair<long long,int>>::erase(this + 159, v23, v25, v28, v26);
            v30 = *(this + 164);
            if (v30)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }
        }
      }
    }

    std::deque<std::pair<long long,int>>::erase(this + 159, v23, v25, v28, v27);
    v30 = *(this + 164);
    if (v30)
    {
LABEL_37:
      v30 = *(*(*(this + 160) + ((*(this + 163) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 163) + 8) | 0x100000000;
    }

LABEL_38:
    if ((v30 & 0x100000000) != 0)
    {
      v30 = v30;
    }

    else
    {
      v30 = -1;
    }
  }

  else
  {
    v30 = -1;
  }

  *(this + 20) = v30;
  v31 = *(this + 157);
  v32 = *(v31 + 104);
  *(this + 75) = v32;
  v33 = *(v31 + 136);
  *(this + 76) = v33;
  if (v32 < 1)
  {
    *(this + 77) = 0;
    if (v33 >= 1)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(this + 77) = *(v31 + 96);
    if (v33 >= 1)
    {
LABEL_43:
      v34 = *(v31 + 128);
      goto LABEL_46;
    }
  }

  v34 = 0;
LABEL_46:
  *(this + 78) = v34;
  v35 = *(v31 + 88);
  *(this + 26) = (*v31 - *(v31 + 16)) / 1000.0;
  *(this + 27) = v35;
  *(this + 316) = *(this + 1496);
  v36 = *(this + 198);
  v37 = *(this + 201);
  v38 = (v36 + 8 * (v37 / 0x22));
  if (*(this + 199) == v36)
  {
    v42 = 0;
    v40 = 0;
    v43 = (v36 + 8 * (v37 / 0x22));
  }

  else
  {
    v39 = *(v36 + 8 * (v37 / 0x22));
    v40 = &v39[120 * (v37 % 0x22)];
    v41 = *(v36 + 8 * ((*(this + 202) + v37) / 0x22)) + 120 * ((*(this + 202) + v37) % 0x22);
    v42 = v40;
    v43 = v38;
    if (v40 != v41)
    {
      v42 = &v39[120 * (v37 % 0x22)];
      v43 = v38;
      while (*v42 < v8 - *(this + 196))
      {
        v42 += 120;
        if (v42 - v39 == 4080)
        {
          v44 = v43[1];
          ++v43;
          v39 = v44;
          v42 = v44;
        }

        if (v42 == v41)
        {
          std::deque<std::pair<long long,webrtc::TimingFrameInfo>>::erase(this + 197, v38, v40, v43, v41);
          v45 = *(this + 202);
          if (v45)
          {
            goto LABEL_55;
          }

          goto LABEL_57;
        }
      }
    }
  }

  std::deque<std::pair<long long,webrtc::TimingFrameInfo>>::erase(this + 197, v38, v40, v43, v42);
  v45 = *(this + 202);
  if (v45)
  {
LABEL_55:
    v45 = *(*(this + 198) + 8 * (*(this + 201) / 0x22uLL)) + 120 * (*(this + 201) % 0x22uLL);
    v46 = *(v45 + 8);
    v65 = *(v45 + 73);
    *v66 = *(v45 + 89);
    *&v66[15] = *(v45 + 104);
    v61 = *(v45 + 9);
    v62 = *(v45 + 25);
    v63 = *(v45 + 41);
    v64 = *(v45 + 57);
    LOBYTE(v45) = 1;
  }

  else
  {
LABEL_57:
    v46 = 0;
  }

  *(this + 544) = v46;
  *(this + 40) = *&v66[15];
  *(this + 609) = v65;
  *(this + 625) = *v66;
  *(this + 545) = v61;
  *(this + 561) = v62;
  *(this + 577) = v63;
  *(this + 593) = v64;
  *(this + 656) = v45;
  if (*(this + 1640) == 1 && *(this + 1656) == 1)
  {
    v47 = (*(this + 204) + v8 - *(this + 206)) & 0xFFFFFFFFFFFFFF00;
    v48 = (*(this + 1632) + v8 - *(this + 1648));
    v49 = 1;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v47 = 0;
  }

  *(this + 40) = v47 | v48;
  *(this + 328) = v49;
  *a2 = *(this + 40);
  *(a2 + 16) = 0;
  v50 = (a2 + 16);
  *(a2 + 40) = 0;
  if (*(this + 80) == 1)
  {
    if (*(this + 79) < 0)
    {
      std::string::__init_copy_ctor_external(v50, *(this + 7), *(this + 8));
    }

    else
    {
      *&v50->__r_.__value_.__l.__data_ = *(this + 56);
      *(a2 + 32) = *(this + 9);
    }

    *(a2 + 40) = 1;
  }

  v51 = *(this + 232);
  *(a2 + 176) = *(this + 216);
  *(a2 + 192) = v51;
  v52 = *(this + 168);
  *(a2 + 112) = *(this + 152);
  *(a2 + 128) = v52;
  v53 = *(this + 200);
  *(a2 + 144) = *(this + 184);
  *(a2 + 160) = v53;
  v54 = *(this + 104);
  *(a2 + 48) = *(this + 88);
  *(a2 + 64) = v54;
  v55 = *(this + 136);
  *(a2 + 80) = *(this + 120);
  *(a2 + 96) = v55;
  v56 = *(this + 296);
  v57 = *(this + 312);
  v58 = *(this + 264);
  *(a2 + 240) = *(this + 280);
  *(a2 + 256) = v56;
  v59 = *(this + 328);
  *(a2 + 272) = v57;
  *(a2 + 288) = v59;
  *(a2 + 208) = *(this + 248);
  *(a2 + 224) = v58;
  if (*(this + 367) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 304), *(this + 43), *(this + 44));
  }

  else
  {
    *(a2 + 304) = *(this + 344);
    *(a2 + 320) = *(this + 45);
  }

  return memcpy((a2 + 328), this + 368, 0x170uLL);
}

void webrtc::internal::ReceiveStatisticsProxy::OnIncomingPayloadType(webrtc::internal::ReceiveStatisticsProxy *this)
{
  v1 = *(this + 209);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::internal::ReceiveStatisticsProxy::OnDecoderInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1672);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
  }

  v4 = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v6 = *(a2 + 24);
  operator new();
}

void *webrtc::internal::ReceiveStatisticsProxy::OnDecodableFrame(void *this, TimeDelta a2, TimeDelta a3, TimeDelta a4)
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = 0x8000000000000000;
  v6 = this[15];
  v7 = this[16];
  v8 = a2.var0 == 0x8000000000000000 || v6 == 0x8000000000000000;
  v9 = v6 + a2.var0;
  if (v8)
  {
    v9 = 0x8000000000000000;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  v12 = a3.var0 == 0x8000000000000000 || v7 == 0x8000000000000000;
  v13 = v7 + a3.var0;
  if (v12)
  {
    v13 = 0x8000000000000000;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || a3.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v13;
  }

  this[15] = v11;
  this[16] = v15;
  v16 = this[18];
  if (a4.var0 != 0x8000000000000000 && v16 != 0x8000000000000000)
  {
    v5 = v16 + a4.var0;
  }

  if (a4.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v5;
  }

  ++this[17];
  this[18] = v4;
  return this;
}

uint64_t webrtc::internal::ReceiveStatisticsProxy::OnFrameBufferTimingsUpdated(uint64_t this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *(this + 104) = a2;
  *(this + 108) = a3;
  *(this + 112) = a4;
  *(this + 116) = a5;
  *(this + 152) = a6;
  *(this + 156) = a7;
  v7 = vdupq_n_s64(1uLL);
  v7.i64[0] = a5;
  *(this + 1128) = vaddq_s64(*(this + 1128), v7);
  if (*(this + 1148) != 1 || *(this + 1144) < a5)
  {
    *(this + 1144) = a5;
    *(this + 1148) = 1;
  }

  if (*(this + 1156) != 1 || *(this + 1152) > a5)
  {
    *(this + 1152) = a5;
    *(this + 1156) = 1;
  }

  v8 = vdupq_n_s64(1uLL);
  v8.i64[0] = a4;
  *(this + 1160) = vaddq_s64(*(this + 1160), v8);
  if (*(this + 1180) != 1 || *(this + 1176) < a4)
  {
    *(this + 1176) = a4;
    *(this + 1180) = 1;
  }

  if (*(this + 1188) != 1 || *(this + 1184) > a4)
  {
    *(this + 1184) = a4;
    *(this + 1188) = 1;
  }

  v9 = vdupq_n_s64(1uLL);
  v9.i64[0] = a3;
  *(this + 1192) = vaddq_s64(*(this + 1192), v9);
  if (*(this + 1212) != 1 || *(this + 1208) < a3)
  {
    *(this + 1208) = a3;
    *(this + 1212) = 1;
  }

  if (*(this + 1220) != 1 || *(this + 1216) > a3)
  {
    *(this + 1216) = a3;
    *(this + 1220) = 1;
  }

  v10 = *(this + 1464) / 2 + a4;
  v11 = vdupq_n_s64(1uLL);
  v11.i64[0] = v10;
  *(this + 1224) = vaddq_s64(*(this + 1224), v11);
  if (*(this + 1244) != 1 || *(this + 1240) < v10)
  {
    *(this + 1240) = v10;
    *(this + 1244) = 1;
  }

  if (*(this + 1252) != 1 || *(this + 1248) > v10)
  {
    *(this + 1248) = v10;
    *(this + 1252) = 1;
  }

  return this;
}

void webrtc::internal::ReceiveStatisticsProxy::OnTimingFrameInfoUpdated(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 104) != 255)
  {
    v4 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v5 = v4 / 0x3E8uLL;
    if (v4 % 0x3E8uLL > 0x1F3)
    {
      ++v5;
    }

    if (-v4 % 0x3E8uLL <= 0x1F4)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    if (v4 < 0)
    {
      v7 = v6 - -v4 / 0x3E8uLL;
    }

    else
    {
      v7 = v5;
    }

    v8 = *(a1 + 1584);
    v9 = *(a1 + 1608);
    v10 = (v8 + 8 * (v9 / 0x22));
    if (*(a1 + 1592) == v8)
    {
      v14 = 0;
      v12 = 0;
      v15 = (v8 + 8 * (v9 / 0x22));
    }

    else
    {
      v11 = *(v8 + 8 * (v9 / 0x22));
      v12 = &v11[120 * (v9 % 0x22)];
      v13 = *(v8 + 8 * ((*(a1 + 1616) + v9) / 0x22)) + 120 * ((*(a1 + 1616) + v9) % 0x22);
      v14 = v12;
      v15 = v10;
      if (v12 != v13)
      {
        v14 = &v11[120 * (v9 % 0x22)];
        v15 = v10;
        do
        {
          if (*v14 >= v7 - *(a1 + 1568))
          {
            goto LABEL_18;
          }

          v14 += 120;
          if (v14 - v11 == 4080)
          {
            v16 = v15[1];
            ++v15;
            v11 = v16;
            v14 = v16;
          }
        }

        while (v14 != v13);
        std::deque<std::pair<long long,webrtc::TimingFrameInfo>>::erase((a1 + 1576), v10, v12, v15, v13);
        v17 = *(a1 + 1616);
        if (v17)
        {
          goto LABEL_21;
        }

        goto LABEL_34;
      }
    }

LABEL_18:
    std::deque<std::pair<long long,webrtc::TimingFrameInfo>>::erase((a1 + 1576), v10, v12, v15, v14);
    v17 = *(a1 + 1616);
    if (!v17)
    {
      goto LABEL_34;
    }

LABEL_21:
    while (1)
    {
      v18 = *(a1 + 1608);
      v19 = v17 - 1 + v18;
      v20 = *(a1 + 1584);
      v21 = *(v20 + 8 * (v19 / 0x22));
      v22 = v19 % 0x22;
      v23 = *(a2 + 1);
      if (v23 < 0)
      {
        break;
      }

      v24 = *(a2 + 11) - v23;
      if (v24 == -1)
      {
        break;
      }

      v25 = v21 + 120 * v22;
      v26 = *(v25 + 16);
      if (v26 < 0)
      {
        if (v24 < -1)
        {
          break;
        }
      }

      else if (*(v25 + 96) - v26 > v24)
      {
        break;
      }

      v27 = *(a1 + 1592);
      v29 = v27 - v20;
      v28 = v29 == 0;
      v30 = 34 * (v29 >> 3) - 1;
      *(a1 + 1616) = v17 - 1;
      if (v28)
      {
        v30 = 0;
      }

      v31 = v30 - (v17 + v18) + 1;
      --v17;
      if (v31 >= 0x44)
      {
        operator delete(*(v27 - 8));
        *(a1 + 1592) -= 8;
        v17 = *(a1 + 1616);
      }

      if (!v17)
      {
        goto LABEL_34;
      }
    }

    if (*(v21 + 120 * v22) < v7)
    {
LABEL_34:
      v32 = *(a1 + 1592);
      v33 = *(a1 + 1584);
      v46 = a2[4];
      v47 = a2[5];
      v48 = a2[6];
      v42 = *a2;
      v43 = a2[1];
      v44 = a2[2];
      v45 = a2[3];
      if (v32 == v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = 34 * ((v32 - v33) >> 3) - 1;
      }

      v35 = *(a1 + 1608);
      if (v34 == v35 + v17)
      {
        if (v35 < 0x22)
        {
          v36 = *(a1 + 1600);
          v37 = *(a1 + 1576);
          if (v32 - v33 < (v36 - v37))
          {
            operator new();
          }

          if (v36 == v37)
          {
            v38 = 1;
          }

          else
          {
            v38 = (v36 - v37) >> 2;
          }

          if (!(v38 >> 61))
          {
            operator new();
          }

          goto LABEL_57;
        }

        *(a1 + 1608) = v35 - 34;
        v49 = *v33;
        *(a1 + 1584) = v33 + 8;
        std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>((a1 + 1576), &v49);
        v33 = *(a1 + 1584);
        v32 = *(a1 + 1592);
      }

      if (v32 != v33)
      {
        v39 = *(a1 + 1616) + *(a1 + 1608);
        v40 = *&v33[8 * (v39 / 0x22)];
        if (v40)
        {
          v41 = v40 + 120 * (v39 % 0x22);
          *(v41 + 56) = v45;
          *(v41 + 72) = v46;
          *(v41 + 88) = v47;
          *(v41 + 104) = v48;
          *(v41 + 8) = v42;
          *(v41 + 24) = v43;
          *v41 = v7;
          *(v41 + 40) = v44;
          ++*(a1 + 1616);
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_57:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_50:
  if ((*(a1 + 1512) & 1) == 0)
  {
    *(a1 + 1504) = *(a2 + 9);
    *(a1 + 1512) = 1;
  }

  if (*(a1 + 224) == -1 && *(a1 + 1528) == 1)
  {
    *(a1 + 224) = *(a1 + 1520) - *(a1 + 1504);
  }
}

__n128 webrtc::internal::ReceiveStatisticsProxy::RtcpPacketTypesCounterUpdated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 736) == a2)
  {
    v8 = a2;
    v10 = *(a1 + 1664);
    {
      v12 = v11;
      {
        operator new();
      }

      v13 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
      if (v13)
      {
        v14 = v13 == v10;
      }

      else
      {
        v14 = 0;
      }

      v11 = v12;
      if (!v14)
      {
        v15 = *(a1 + 1672);
        if (v15)
        {
          atomic_fetch_add_explicit(v15, 1u, memory_order_relaxed);
        }

        v18 = *v12;
        v19 = v12[1].n128_u32[0];
        v16 = operator new(0x20uLL);
        *v16 = v8;
        *(v16 + 4) = v18;
        *(v16 + 5) = v19;
        *(v16 + 3) = a1;
        operator new();
      }
    }

    result = *v11;
    *(a1 + 456) = v11[1].n128_u32[0];
    *(a1 + 440) = result;
  }

  return result;
}

double webrtc::internal::ReceiveStatisticsProxy::OnCname(uint64_t a1, int a2, __int128 *__src, size_t __len)
{
  if (*(a1 + 736) != a2)
  {
    return result;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  HIBYTE(v9) = __len;
  v5 = (&v8 + __len);
  if (&v8 <= __src && v5 > __src)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__len)
  {
    memmove(&v8, __src, __len);
  }

  *v5 = 0;
  v6 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    operator delete(*v6);
  }

  result = *&v8;
  *v6 = v8;
  *(a1 + 360) = v9;
  return result;
}

double non-virtual thunk towebrtc::internal::ReceiveStatisticsProxy::OnCname(uint64_t a1, int a2, __int128 *__src, size_t __len)
{
  if (*(a1 + 728) != a2)
  {
    return result;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  HIBYTE(v8) = __len;
  v5 = (&v7 + __len);
  if (&v7 <= __src && v5 > __src)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__len)
  {
    memmove(&v7, __src, __len);
  }

  *v5 = 0;
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  result = *&v7;
  *(a1 + 336) = v7;
  *(a1 + 352) = v8;
  return result;
}

void webrtc::internal::ReceiveStatisticsProxy::OnDecodedFrame(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, char a5, int a6)
{
  v12 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v13 = *(a2 + 184);
  if (v13)
  {
    v55 = a5;
    v54 = a4;
    if (*(v13 + 16) == *(v13 + 8))
    {
      goto LABEL_33;
    }
  }

  else
  {
    {
      operator new();
    }

    v55 = a5;
    v54 = a4;
    if (*(webrtc::RtpPacketInfos::empty_entries(void)::value + 1) == *webrtc::RtpPacketInfos::empty_entries(void)::value)
    {
      goto LABEL_33;
    }
  }

  v14 = *(a2 + 184);
  if (v14)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    v17 = v16 + 104;
    if (v16 != v15 && v17 != v15)
    {
      goto LABEL_45;
    }

LABEL_19:
    v21 = v16;
    v17 = v16;
    goto LABEL_20;
  }

  {
    operator new();
  }

  v19 = *(a2 + 184);
  v16 = *webrtc::RtpPacketInfos::empty_entries(void)::value;
  if (v19)
  {
    v15 = *(v19 + 16);
    v17 = v16 + 104;
    if (v16 == v15 || v17 == v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    {
      operator new();
    }

    v15 = *(webrtc::RtpPacketInfos::empty_entries(void)::value + 1);
    v17 = v16 + 104;
    if (v16 == v15 || v17 == v15)
    {
      goto LABEL_19;
    }
  }

LABEL_45:
  v39 = *(v16 + 144);
  v40 = *(v16 + 40);
  v41 = v39 < v40;
  if (v39 >= v40)
  {
    v21 = v16;
  }

  else
  {
    v21 = v17;
  }

  if (v41)
  {
    v17 = v16;
  }

  v42 = v16 + 208;
  if (v16 + 208 != v15)
  {
    while (1)
    {
      v43 = v42 + 104;
      if (v42 + 104 == v15)
      {
        break;
      }

      v44 = *(v42 + 144);
      v45 = *(v42 + 40);
      v46 = v44 < v45;
      if (v44 >= v45)
      {
        v47 = *(v42 + 40);
      }

      else
      {
        v47 = *(v42 + 144);
      }

      if (v44 >= v45)
      {
        v48 = v42;
      }

      else
      {
        v48 = v42 + 104;
      }

      if (v44 < v45)
      {
        v44 = *(v42 + 40);
      }

      if (v46)
      {
        v43 = v42;
      }

      if (v47 < *(v21 + 40))
      {
        v21 = v48;
      }

      if (v44 >= *(v17 + 40))
      {
        v17 = v43;
      }

      v42 += 208;
      if (v42 == v15)
      {
        goto LABEL_20;
      }
    }

    v49 = *(v42 + 40);
    if (v49 >= *(v21 + 40))
    {
      if (v49 >= *(v17 + 40))
      {
        v17 = v42;
      }
    }

    else
    {
      v21 = v42;
    }
  }

LABEL_20:
  v22 = *(v21 + 40);
  if ((v22 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v12 - v22;
    if (v12 == 0x8000000000000000)
    {
      v23 = 0x8000000000000000;
    }

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24 = *(v17 + 40);
    v25 = v24 - v22;
    if (v24 == 0x8000000000000000)
    {
      v25 = 0x8000000000000000;
    }

    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    v51 = v26;
    v52 = v23;
    v27 = *(a2 + 16);
    v28 = *(a2 + 24);
    v29 = *(a2 + 32);
    v30 = *(a2 + 8);
    v53 = a3;
    v50 = v12;
    if (v30)
    {
LABEL_34:
      v32 = (*(*v30 + 40))(v30);
      v36 = *(a2 + 8);
      if (v36)
      {
        v31 = a6;
        v33 = (*(*v36 + 48))(v36);
        v34 = a1;
        v35 = *(a1 + 1672);
        if (!v35)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v31 = a6;
      v33 = 0;
      v34 = a1;
      v35 = *(a1 + 1672);
      if (!v35)
      {
LABEL_37:
        v37 = operator new(0x58uLL);
        *v37 = v27;
        v37[1] = v29;
        v37[2] = v28;
        *(v37 + 6) = v32;
        *(v37 + 7) = v33;
        v37[4] = v50;
        *(v37 + 20) = v53;
        v37[6] = v54;
        v37[7] = v52;
        v37[8] = v51;
        *(v37 + 72) = v55;
        *(v37 + 19) = v31;
        v37[10] = v34;
        operator new();
      }

LABEL_36:
      atomic_fetch_add_explicit(v35, 1u, memory_order_relaxed);
      goto LABEL_37;
    }

LABEL_31:
    v31 = a6;
    v32 = 0;
    v33 = 0;
    v34 = a1;
    v35 = *(a1 + 1672);
    if (!v35)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_33:
  v51 = 0;
  v52 = 0;
  v27 = *(a2 + 16);
  v28 = *(a2 + 24);
  v29 = *(a2 + 32);
  v30 = *(a2 + 8);
  v53 = a3;
  v50 = v12;
  if (v30)
  {
    goto LABEL_34;
  }

  goto LABEL_31;
}

uint64_t webrtc::internal::ReceiveStatisticsProxy::OnRenderedFrame(uint64_t a1, uint64_t a2)
{
  webrtc::internal::VideoQualityObserver::OnRenderedFrame(*(a1 + 1256), a2);
  v4 = std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::__emplace_unique_key_args<webrtc::VideoContentType,std::piecewise_construct_t const&,std::tuple<webrtc::VideoContentType const&>,std::tuple<>>(a1 + 1320, *(a1 + 1496));
  v5 = *(a2 + 32);
  v6 = v5 / 0x3E8uLL;
  if (v5 % 0x3E8uLL > 0x1F3)
  {
    ++v6;
  }

  if (-v5 % 0x3E8uLL <= 0x1F4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 - -v5 / 0x3E8uLL;
  if (v5 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  webrtc::RateStatistics::Update((a1 + 840), 1, v9);
  ++*(a1 + 52);
  *(a1 + 292) = *(a2 + 24);
  v10 = (*(*(a1 + 936) + 16))(a1 + 936);
  if (*(a1 + 984) == -1)
  {
    v11 = (*(*(a1 + 936) + 16))(a1 + 936);
    *(a1 + 992) = v11;
    *(a1 + 984) = v11;
    *(a1 + 976) = 0;
    **(a1 + 960) = 0;
  }

  v12 = 0;
  v13 = *(a1 + 952);
  while (1)
  {
    v14 = *(a1 + 984);
    v15 = *(a1 + 944);
    if (v15 + v14 > v10)
    {
      break;
    }

    *(a1 + 984) = v15 + v14;
    v16 = (*(a1 + 976) + 1) % (v13 + 1);
    *(a1 + 976) = v16;
    v17 = *(a1 + 960);
    *(v17 + 8 * v16) = 0;
    if (++v12 > v13)
    {
      v15 = *(a1 + 944);
      v14 = *(a1 + 984);
      goto LABEL_16;
    }
  }

  v17 = *(a1 + 960);
  v16 = *(a1 + 976);
LABEL_16:
  *(a1 + 984) = v14 + (v10 - v14) / v15 * v15;
  ++*(v17 + 8 * v16);
  ++*(a1 + 968);
  v18 = sqrt((*(a2 + 28) * *(a2 + 24)));
  result = (*(*(a1 + 1000) + 16))(a1 + 1000);
  v20 = result;
  if (*(a1 + 1048) == -1)
  {
    result = (*(*(a1 + 1000) + 16))(a1 + 1000);
    *(a1 + 1056) = result;
    *(a1 + 1048) = result;
    *(a1 + 1040) = 0;
    **(a1 + 1024) = 0;
  }

  v21 = 0;
  v22 = v18;
  v23 = *(a1 + 1016);
  while (1)
  {
    v24 = *(a1 + 1048);
    v25 = *(a1 + 1008);
    if (v25 + v24 > v20)
    {
      break;
    }

    *(a1 + 1048) = v25 + v24;
    v26 = (*(a1 + 1040) + 1) % (v23 + 1);
    *(a1 + 1040) = v26;
    v27 = *(a1 + 1024);
    *(v27 + 8 * v26) = 0;
    if (++v21 > v23)
    {
      v25 = *(a1 + 1008);
      v24 = *(a1 + 1048);
      goto LABEL_23;
    }
  }

  v27 = *(a1 + 1024);
  v26 = *(a1 + 1040);
LABEL_23:
  *(a1 + 1048) = v24 + (v20 - v24) / v25 * v25;
  *(v27 + 8 * v26) += v22;
  *(a1 + 1032) += v22;
  v28 = *(a2 + 24);
  v29 = vdupq_n_s64(1uLL);
  v29.i64[0] = v28;
  *(v4 + 15) = vaddq_s64(*(v4 + 15), v29);
  if (*(v4 + 140) != 1 || *(v4 + 34) < v28)
  {
    *(v4 + 34) = v28;
    *(v4 + 140) = 1;
  }

  if (*(v4 + 148) != 1 || *(v4 + 36) > v28)
  {
    *(v4 + 36) = v28;
    *(v4 + 148) = 1;
  }

  v30 = *(a2 + 28);
  v31 = vdupq_n_s64(1uLL);
  v31.i64[0] = v30;
  *(v4 + 19) = vaddq_s64(*(v4 + 19), v31);
  if (*(v4 + 172) != 1 || *(v4 + 42) < v30)
  {
    *(v4 + 42) = v30;
    *(v4 + 172) = 1;
  }

  if (*(v4 + 180) != 1 || *(v4 + 44) > v30)
  {
    *(v4 + 44) = v30;
    *(v4 + 180) = 1;
  }

  v32 = *(a2 + 32);
  v33 = v32 / 0x3E8uLL;
  if (v32 % 0x3E8uLL > 0x1F3)
  {
    ++v33;
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

  v37 = *(a2 + 8) / 1000 - v36;
  if (v37 < 0)
  {
    *(a1 + 1560) -= v37;
    ++*(a1 + 1552);
  }

  if (*(a2 + 16) >= 1)
  {
    v38 = *(a1 + 24);
    v39 = (*(*v38 + 16))(v38);
    result = (*(*v38 + 24))(v38, v39);
    v40 = 1000 * HIDWORD(result) - *(a2 + 16) + (result / 4294967.3 + 0.5);
    if (v40 >= 0)
    {
      v41 = vdupq_n_s64(1uLL);
      v41.i64[0] = v40;
      *(v4 + 5) = vaddq_s64(*(v4 + 5), v41);
      if (*(v4 + 60) != 1 || *(v4 + 14) < v40)
      {
        *(v4 + 14) = v40;
        *(v4 + 60) = 1;
      }

      if (*(v4 + 68) != 1 || *(v4 + 16) > v40)
      {
        *(v4 + 16) = v40;
        *(v4 + 68) = 1;
      }
    }
  }

  return result;
}

unint64_t webrtc::internal::ReceiveStatisticsProxy::OnSyncOffsetUpdated(webrtc::internal::ReceiveStatisticsProxy *this, uint64_t a2, uint64_t a3, double a4)
{
  v8 = (*(**(this + 3) + 16))(*(this + 3));
  v9 = v8 / 0x3E8uLL;
  if (v8 % 0x3E8uLL > 0x1F3)
  {
    ++v9;
  }

  if (-v8 % 0x3E8uLL <= 0x1F4)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v8 < 0)
  {
    v9 = v10 - -v8 / 0x3E8uLL;
  }

  if (a3 >= 0)
  {
    LODWORD(v11) = a3;
  }

  else
  {
    v11 = -a3;
  }

  v12 = vdupq_n_s64(1uLL);
  v12.i64[0] = v11;
  *(this + 1064) = vaddq_s64(*(this + 1064), v12);
  if (*(this + 1084) != 1 || *(this + 270) < v11)
  {
    *(this + 270) = v11;
    *(this + 1084) = 1;
  }

  if (*(this + 1092) != 1 || *(this + 272) > v11)
  {
    *(this + 272) = v11;
    *(this + 1092) = 1;
  }

  *(this + 84) = a3;
  *(this + 204) = a2;
  *(this + 1640) = 1;
  *(this + 206) = v9;
  *(this + 1656) = 1;
  v13 = a4 > 0.0 && a4 < 10000.0;
  v14 = (fabs(a4 + -90.0) + 0.5);
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 10000;
  }

  return webrtc::StatsCounter::Add((this + 1344), v15);
}

void webrtc::internal::ReceiveStatisticsProxy::OnCompleteFrame(uint64_t a1, int a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 & 1) == 0)
  {
    a4 = *(a1 + 1496);
  }

  v23 = a4;
  v24 = &v23;
  v7 = std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::__emplace_unique_key_args<webrtc::VideoContentType,std::piecewise_construct_t const&,std::tuple<webrtc::VideoContentType const&>,std::tuple<>>(a1 + 1320, a4);
  v7[14] += a3;
  if (a2)
  {
    ++*(v7 + 54);
  }

  else
  {
    ++*(v7 + 55);
  }

  v8 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v9 = v8 / 0x3E8uLL;
  if (v8 % 0x3E8uLL > 0x1F3)
  {
    ++v9;
  }

  if (-v8 % 0x3E8uLL <= 0x1F4)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 - -v8 / 0x3E8uLL;
  if (v8 < 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(a1 + 1480);
  if (!v13)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v14 = v13;
      v15 = v13[4];
      if (v12 >= v15)
      {
        break;
      }

      v13 = *v14;
      if (!*v14)
      {
        goto LABEL_20;
      }
    }

    if (v15 >= v12)
    {
      break;
    }

    v13 = v14[1];
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  v16 = *(a1 + 1488);
  if (v16)
  {
    v17 = v12 - 1000;
    do
    {
      v18 = *(a1 + 1472);
      if (v18[4] >= v17)
      {
        break;
      }

      v19 = v18[1];
      v20 = *(a1 + 1472);
      if (v19)
      {
        do
        {
          v21 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v21 = v20[2];
          v22 = *v21 == v20;
          v20 = v21;
        }

        while (!v22);
      }

      *(a1 + 1472) = v21;
      *(a1 + 1488) = v16 - 1;
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 1480), v18);
      operator delete(v18);
      v16 = *(a1 + 1488);
    }

    while (v16);
    v16 = (1000 * v16 + 500) / 0x3E8;
  }

  *(a1 + 40) = v16;
}

void webrtc::internal::ReceiveStatisticsProxy::OnDroppedFrames(webrtc::internal::ReceiveStatisticsProxy *this)
{
  v1 = *(this + 209);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::internal::ReceiveStatisticsProxy::OnCorruptionScore(uint64_t a1, char a2, double a3)
{
  v6 = *(a1 + 1672);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 1u, memory_order_relaxed);
  }

  v7 = operator new(0x18uLL);
  *v7 = a3;
  v7[8] = a2;
  *(v7 + 2) = a1;
  operator new();
}

void **std::deque<std::pair<long long,webrtc::TimingFrameInfo>>::~deque[abi:sn200100](void **result)
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
    v6 = &v2[v5 / 0x22];
    v7 = *v6;
    v8 = *v6 + 120 * (v5 % 0x22);
    while (v8 != v2[(result[5] + v5) / 0x22] + 120 * ((result[5] + v5) % 0x22))
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v8 += 120;
      if (v8 - v7 == 4080)
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
    v11 = 17;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 34;
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

void std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::destroy(a1, a2[1]);
    std::__tree<sigslot::_signal_base_interface *>::destroy((a2 + 31), a2[32]);
    v4 = a2[28];
    if (v4)
    {
      a2[29] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void std::deque<std::pair<long long,int>>::erase(void *a1, char *a2, unint64_t a3, char *a4, unint64_t a5)
{
  if (a4 <= a2 && (a4 != a2 || a3 > a5))
  {
    goto LABEL_141;
  }

  if (a5 == a3)
  {
    v6 = 0;
    v7 = a1[4];
    v8 = a1[1];
    v9 = a1[2];
    v10 = &v8[v7 >> 8];
    if (v9 != v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
    v7 = a1[4];
    v8 = a1[1];
    v9 = a1[2];
    v10 = &v8[v7 >> 8];
    if (v9 != v8)
    {
LABEL_6:
      v11 = *v10 + 16 * v7;
      if (a3 == v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v11 = 0;
  if (!a3)
  {
LABEL_7:
    v12 = 0;
    v13 = v11;
    v14 = v10;
    if (v6 < 1)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_11:
  v15 = ((a3 - *a2) >> 4) + 32 * (a2 - v10);
  v16 = v11 - *v10;
  v12 = v15 - (v16 >> 4);
  if (v15 == v16 >> 4)
  {
    v13 = v11;
    v14 = v10;
    if (v6 < 1)
    {
      return;
    }
  }

  else if (v15 < 1)
  {
    v69 = 255 - v15;
    v14 = &v10[-(v69 >> 8)];
    v13 = *v14 + 16 * ~v69;
    if (v6 < 1)
    {
      return;
    }
  }

  else
  {
    v14 = &v10[v15 >> 8];
    v13 = *v14 + 16 * v15;
    if (v6 < 1)
    {
      return;
    }
  }

LABEL_16:
  v17 = a1[5];
  v18 = v17 - v6;
  v19 = *v14;
  v20 = v6 + ((v13 - *v14) >> 4);
  if (v12 <= (v17 - v6) >> 1)
  {
    if (v20 < 1)
    {
      v40 = &v14[-((255 - v20) >> 8)];
      v41 = *v40;
      v42 = *v40 + 16 * ~(-1 - v20);
      if (v10 != v14)
      {
LABEL_48:
        if (v19 != v13)
        {
          while (1)
          {
            v44 = (v42 - v41) >> 4;
            if ((v13 - v19) >> 4 < v44)
            {
              v44 = (v13 - v19) >> 4;
            }

            if (v44)
            {
              v45 = (v13 - 8);
              v46 = -16 * v44;
              do
              {
                *(v42 - 16) = *(v45 - 1);
                v42 -= 16;
                v47 = *v45;
                v45 -= 4;
                *(v42 + 8) = v47;
                v46 += 16;
              }

              while (v46);
            }

            v13 -= 16 * v44;
            if (v13 == v19)
            {
              break;
            }

            v43 = *--v40;
            v41 = v43;
            v42 = v43 + 4096;
          }

          goto LABEL_57;
        }

        while (--v14 != v10)
        {
          v49 = *v14;
          v50 = *v14 + 4096;
          while (1)
          {
            v51 = (v42 - v41) >> 4;
            if ((v50 - v49) >> 4 < v51)
            {
              v51 = (v50 - v49) >> 4;
            }

            if (v51)
            {
              v52 = (v50 - 8);
              v53 = -16 * v51;
              do
              {
                *(v42 - 16) = *(v52 - 1);
                v42 -= 16;
                v54 = *v52;
                v52 -= 4;
                *(v42 + 8) = v54;
                v53 += 16;
              }

              while (v53);
            }

            v50 -= 16 * v51;
            if (v50 == v49)
            {
              break;
            }

            v55 = *--v40;
            v41 = v55;
            v42 = v55 + 4096;
          }

LABEL_57:
          if (v41 + 4096 == v42)
          {
            v48 = v40[1];
            ++v40;
            v41 = v48;
            v42 = v48;
          }
        }

        v62 = *v10 + 4096;
        if (v62 == v11)
        {
          goto LABEL_137;
        }

        v63 = *v40;
        while (1)
        {
          v64 = (v42 - v63) >> 4;
          if ((v62 - v11) >> 4 < v64)
          {
            v64 = (v62 - v11) >> 4;
          }

          if (v64)
          {
            v65 = (v62 - 8);
            v66 = -16 * v64;
            do
            {
              *(v42 - 16) = *(v65 - 1);
              v42 -= 16;
              v67 = *v65;
              v65 -= 4;
              *(v42 + 8) = v67;
              v66 += 16;
            }

            while (v66);
          }

          v62 -= 16 * v64;
          if (v62 == v11)
          {
            break;
          }

          v68 = *--v40;
          v63 = v68;
          v42 = (v68 + 4096);
        }

        if (v63 + 4096 != v42)
        {
          goto LABEL_137;
        }

        goto LABEL_133;
      }
    }

    else
    {
      v40 = &v14[v20 >> 8];
      v41 = *v40;
      v42 = *v40 + 16 * v20;
      if (v10 != v14)
      {
        goto LABEL_48;
      }
    }

    if (v11 == v13)
    {
      goto LABEL_134;
    }

    while (1)
    {
      v76 = (v42 - v41) >> 4;
      if ((v13 - v11) >> 4 < v76)
      {
        v76 = (v13 - v11) >> 4;
      }

      if (v76)
      {
        v77 = (v13 - 8);
        v78 = -16 * v76;
        do
        {
          *(v42 - 16) = *(v77 - 1);
          v42 -= 16;
          v79 = *v77;
          v77 -= 4;
          *(v42 + 8) = v79;
          v78 += 16;
        }

        while (v78);
      }

      v13 -= 16 * v76;
      if (v13 == v11)
      {
        break;
      }

      v80 = *--v40;
      v41 = v80;
      v42 = v80 + 4096;
    }

    if (v41 + 4096 != v42)
    {
LABEL_134:
      while (1)
      {
LABEL_137:
        if (v11 == v42)
        {
          v86 = v7 + v6;
          a1[4] = v86;
          a1[5] = v18;
          if (v86 >= 0x200)
          {
            do
            {
              operator delete(*v8);
              v8 = (a1[1] + 8);
              a1[1] = v8;
              v87 = a1[4] - 256;
              a1[4] = v87;
            }

            while (v87 >= 0x200);
          }

          return;
        }

        if (!v11)
        {
          break;
        }

        v11 += 16;
        if (v11 - *v10 == 4096)
        {
          v85 = v10[1];
          ++v10;
          v11 = v85;
        }
      }

LABEL_141:
      __break(1u);
      return;
    }

LABEL_133:
    v42 = v40[1];
    goto LABEL_137;
  }

  if (v20 < 1)
  {
    v21 = &v14[-((255 - v20) >> 8)];
    v22 = *v21;
    v23 = *v21 + 16 * ~(-1 - v20);
    v24 = v17 + v7;
    v25 = &v8[(v17 + v7) >> 8];
    if (v9 != v8)
    {
LABEL_19:
      v26 = *v25 + 16 * v24;
      if (v21 != v25)
      {
        goto LABEL_20;
      }

LABEL_95:
      if (v26 == v23)
      {
        goto LABEL_107;
      }

      while (1)
      {
        v72 = v19 + 4096;
        v73 = (v19 + 4096 - v13) >> 4;
        if ((v26 - v23) >> 4 < v73)
        {
          v73 = (v26 - v23) >> 4;
        }

        if (v73)
        {
          v70 = v23 + 16 * v73;
          do
          {
            *v13 = *v23;
            *(v13 + 8) = *(v23 + 8);
            v23 += 16;
            v13 += 16;
          }

          while (v23 != v70);
          if (v70 == v26)
          {
            if (v13 == v72)
            {
              goto LABEL_106;
            }

            goto LABEL_107;
          }
        }

        else
        {
          v70 = v23;
        }

        v71 = v14[1];
        ++v14;
        v19 = v71;
        v23 = v70;
        v13 = v71;
      }
    }
  }

  else
  {
    v21 = &v14[v20 >> 8];
    v22 = *v21;
    v23 = *v21 + 16 * v20;
    v24 = v17 + v7;
    v25 = &v8[(v17 + v7) >> 8];
    if (v9 != v8)
    {
      goto LABEL_19;
    }
  }

  v26 = 0;
  if (v21 == v25)
  {
    goto LABEL_95;
  }

LABEL_20:
  v27 = v22 + 4096;
  if (v22 + 4096 == v23)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v30 = (v19 + 4096 - v13) >> 4;
    if (&v27[-v23] >> 4 < v30)
    {
      v30 = &v27[-v23] >> 4;
    }

    if (!v30)
    {
      v28 = v23;
      goto LABEL_23;
    }

    v28 = v23 + 16 * v30;
    do
    {
      *v13 = *v23;
      *(v13 + 8) = *(v23 + 8);
      v23 += 16;
      v13 += 16;
    }

    while (v23 != v28);
    if (v28 == v27)
    {
      break;
    }

LABEL_23:
    v29 = v14[1];
    ++v14;
    v19 = v29;
    v23 = v28;
    v13 = v29;
  }

  if (v13 == v19 + 4096)
  {
    v31 = v14[1];
    ++v14;
    v19 = v31;
    v13 = v31;
  }

LABEL_32:
  v32 = v21 + 1;
  if (v32 != v25)
  {
LABEL_35:
    v33 = 0;
    v34 = *v32;
    while (1)
    {
      v37 = (v19 + 4096 - v13) >> 4;
      if ((4096 - v33) >> 4 < v37)
      {
        v37 = (4096 - v33) >> 4;
      }

      if (v37)
      {
        v35 = v33 + 16 * v37;
        v38 = &v34[v33];
        do
        {
          *v13 = *v38;
          *(v13 + 8) = *(v38 + 2);
          v38 += 16;
          v13 += 16;
        }

        while (v38 != &v34[v35]);
        if (v35 == 4096)
        {
          if (v13 == v19 + 4096)
          {
            v39 = v14[1];
            ++v14;
            v19 = v39;
            v13 = v39;
          }

          if (++v32 == v25)
          {
            break;
          }

          goto LABEL_35;
        }
      }

      else
      {
        v35 = v33;
      }

      v36 = v14[1];
      ++v14;
      v19 = v36;
      v33 = v35;
      v13 = v36;
    }
  }

  v56 = *v25;
  if (*v25 == v26)
  {
    goto LABEL_107;
  }

  v57 = *v14;
  while (2)
  {
    v60 = v57 + 4096;
    v61 = (v60 - v13) >> 4;
    if ((v26 - v56) >> 4 < v61)
    {
      v61 = (v26 - v56) >> 4;
    }

    if (!v61)
    {
      v58 = v56;
LABEL_71:
      v59 = v14[1];
      ++v14;
      v57 = v59;
      v56 = v58;
      v13 = v59;
      continue;
    }

    break;
  }

  v58 = &v56[4 * v61];
  do
  {
    *v13 = *v56;
    *(v13 + 8) = v56[2];
    v56 += 4;
    v13 += 16;
  }

  while (v56 != v58);
  if (v58 != v26)
  {
    goto LABEL_71;
  }

  if (v13 == v60)
  {
LABEL_106:
    v74 = v14[1];
    ++v14;
    v13 = v74;
  }

LABEL_107:
  if (v9 == v8)
  {
    v75 = 0;
    if (!v13)
    {
      goto LABEL_120;
    }

LABEL_129:
    while (v13)
    {
      v13 += 16;
      if (v13 - *v14 == 4096)
      {
        v84 = v14[1];
        ++v14;
        v13 = v84;
      }

      if (v13 == v75)
      {
        goto LABEL_120;
      }
    }

    goto LABEL_141;
  }

  v75 = *v25 + 16 * v24;
  if (v75 != v13)
  {
    goto LABEL_129;
  }

LABEL_120:
  a1[5] = v18;
  if (v9 == v8)
  {
    v81 = 0;
  }

  else
  {
    v81 = 32 * (v9 - v8) - 1;
  }

  if (v81 - (v7 + v18) >= 0x200)
  {
    do
    {
      operator delete(*(v9 - 8));
      v82 = a1[1];
      v9 = a1[2] - 8;
      v83 = 32 * (v9 - v82) - 1;
      a1[2] = v9;
      if (v9 == v82)
      {
        v83 = 0;
      }
    }

    while ((v83 - (a1[5] + a1[4])) > 0x1FF);
  }
}

void std::deque<std::pair<long long,webrtc::TimingFrameInfo>>::erase(void *a1, void *a2, unint64_t a3, void *a4, unint64_t a5)
{
  if (a4 <= a2 && (a4 != a2 || a3 > a5))
  {
    goto LABEL_142;
  }

  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 34 * (a4 - a2) - 0x1111111111111111 * ((a5 - *a4) >> 3) + 0x1111111111111111 * ((a3 - *a2) >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = a1[2];
  v10 = (v8 + 8 * (v7 / 0x22));
  if (v9 == v8)
  {
    v11 = 0;
    if (!a3)
    {
LABEL_9:
      v12 = 0;
      v13 = v11;
      v14 = (v8 + 8 * (v7 / 0x22));
      if (v6 < 1)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v11 = *v10 + 120 * (v7 % 0x22);
    if (a3 == v11)
    {
      goto LABEL_9;
    }
  }

  v12 = 34 * (a2 - v10) - 0x1111111111111111 * ((a3 - *a2) >> 3) + 0x1111111111111111 * ((v11 - *v10) >> 3);
  if (v12)
  {
    v15 = 34 * (a2 - v10) - 0x1111111111111111 * ((a3 - *a2) >> 3);
    if (v15 < 1)
    {
      v58 = 33 - v15;
      v14 = &v10[-(v58 / 0x22)];
      v13 = *v14 + 120 * (34 * (v58 / 0x22) - v58) + 3960;
      if (v6 < 1)
      {
        return;
      }
    }

    else
    {
      v14 = &v10[v15 / 0x22uLL];
      v13 = *v14 + 120 * (v15 % 0x22uLL);
      if (v6 < 1)
      {
        return;
      }
    }
  }

  else
  {
    v13 = v11;
    v14 = (v8 + 8 * (v7 / 0x22));
    if (v6 < 1)
    {
      return;
    }
  }

LABEL_17:
  v16 = a1[5];
  v17 = *v14;
  v18 = v6 - 0x1111111111111111 * ((v13 - *v14) >> 3);
  if (v12 <= (v16 - v6) >> 1)
  {
    if (v18 < 1)
    {
      v97 = (33 - v18) / 0x22uLL;
      v22 = &v14[-v97];
      v23 = *v22;
      v24 = *v22 + 120 * (34 * v97 - (33 - v18)) + 3960;
      if (v10 != v14)
      {
LABEL_22:
        if (v17 != v13)
        {
          while (1)
          {
            v25 = 0xEEEEEEEEEEEEEEEFLL * ((v24 - v23) >> 3);
            if ((0xEEEEEEEEEEEEEEEFLL * ((v13 - v17) >> 3)) < v25)
            {
              v25 = 0xEEEEEEEEEEEEEEEFLL * ((v13 - v17) >> 3);
            }

            if (v25)
            {
              v26 = v13 - 120;
              v27 = -120 * v25;
              do
              {
                *(v24 - 120) = *v26;
                v24 -= 120;
                v28 = *(v26 + 8);
                v29 = *(v26 + 24);
                *(v24 + 40) = *(v26 + 40);
                *(v24 + 24) = v29;
                *(v24 + 8) = v28;
                v30 = *(v26 + 56);
                v31 = *(v26 + 72);
                v32 = *(v26 + 88);
                *(v24 + 97) = *(v26 + 97);
                *(v24 + 88) = v32;
                *(v24 + 72) = v31;
                *(v24 + 56) = v30;
                v26 -= 120;
                v27 += 120;
              }

              while (v27);
            }

            v13 -= 120 * v25;
            if (v13 == v17)
            {
              break;
            }

            v33 = *--v22;
            v23 = v33;
            v24 = v33 + 4080;
          }

          v23 = *v22;
          if (*v22 + 4080 == v24)
          {
            v34 = v22[1];
            ++v22;
            v23 = v34;
            v24 = v34;
          }
        }

        for (i = v14 - 1; i != v10; --i)
        {
          while (1)
          {
            v36 = *i;
            v37 = *i + 4080;
            while (1)
            {
              v38 = 0xEEEEEEEEEEEEEEEFLL * ((v24 - v23) >> 3);
              if ((0xEEEEEEEEEEEEEEEFLL * ((v37 - v36) >> 3)) < v38)
              {
                v38 = 0xEEEEEEEEEEEEEEEFLL * ((v37 - v36) >> 3);
              }

              if (v38)
              {
                v39 = v37 - 120;
                v40 = -120 * v38;
                do
                {
                  *(v24 - 120) = *v39;
                  v24 -= 120;
                  v41 = *(v39 + 8);
                  v42 = *(v39 + 24);
                  *(v24 + 40) = *(v39 + 40);
                  *(v24 + 24) = v42;
                  *(v24 + 8) = v41;
                  v43 = *(v39 + 56);
                  v44 = *(v39 + 72);
                  v45 = *(v39 + 88);
                  *(v24 + 97) = *(v39 + 97);
                  *(v24 + 88) = v45;
                  *(v24 + 72) = v44;
                  *(v24 + 56) = v43;
                  v39 -= 120;
                  v40 += 120;
                }

                while (v40);
              }

              v37 -= 120 * v38;
              if (v37 == v36)
              {
                break;
              }

              v46 = *--v22;
              v23 = v46;
              v24 = v46 + 4080;
            }

            v23 = *v22;
            if (*v22 + 4080 == v24)
            {
              break;
            }

            if (--i == v10)
            {
              goto LABEL_45;
            }
          }

          v47 = v22[1];
          ++v22;
          v23 = v47;
          v24 = v47;
        }

LABEL_45:
        v48 = *v10 + 4080;
        if (v48 != v11)
        {
          while (1)
          {
            v49 = 0xEEEEEEEEEEEEEEEFLL * ((v24 - v23) >> 3);
            if ((0xEEEEEEEEEEEEEEEFLL * ((v48 - v11) >> 3)) < v49)
            {
              v49 = 0xEEEEEEEEEEEEEEEFLL * ((v48 - v11) >> 3);
            }

            if (v49)
            {
              v50 = v48 - 120;
              v51 = -120 * v49;
              do
              {
                *(v24 - 120) = *v50;
                v24 -= 120;
                v52 = *(v50 + 8);
                v53 = *(v50 + 24);
                *(v24 + 40) = *(v50 + 40);
                *(v24 + 24) = v53;
                *(v24 + 8) = v52;
                v54 = *(v50 + 56);
                v55 = *(v50 + 72);
                v56 = *(v50 + 88);
                *(v24 + 97) = *(v50 + 97);
                *(v24 + 88) = v56;
                *(v24 + 72) = v55;
                *(v24 + 56) = v54;
                v50 -= 120;
                v51 += 120;
              }

              while (v51);
            }

            v48 -= 120 * v49;
            if (v48 == v11)
            {
              break;
            }

            v57 = *--v22;
            v23 = v57;
            v24 = v57 + 4080;
          }

LABEL_104:
          if (*v22 + 4080 == v24)
          {
            v24 = v22[1];
          }

          goto LABEL_109;
        }

        goto LABEL_109;
      }
    }

    else
    {
      v22 = &v14[v18 / 0x22uLL];
      v23 = *v22;
      v24 = *v22 + 120 * (v18 % 0x22uLL);
      if (v10 != v14)
      {
        goto LABEL_22;
      }
    }

    if (v11 != v13)
    {
      while (1)
      {
        v98 = 0xEEEEEEEEEEEEEEEFLL * ((v24 - v23) >> 3);
        if ((0xEEEEEEEEEEEEEEEFLL * ((v13 - v11) >> 3)) < v98)
        {
          v98 = 0xEEEEEEEEEEEEEEEFLL * ((v13 - v11) >> 3);
        }

        if (v98)
        {
          v99 = v13 - 120;
          v100 = -120 * v98;
          do
          {
            *(v24 - 120) = *v99;
            v24 -= 120;
            v101 = *(v99 + 8);
            v102 = *(v99 + 24);
            *(v24 + 40) = *(v99 + 40);
            *(v24 + 24) = v102;
            *(v24 + 8) = v101;
            v103 = *(v99 + 56);
            v104 = *(v99 + 72);
            v105 = *(v99 + 88);
            *(v24 + 97) = *(v99 + 97);
            *(v24 + 88) = v105;
            *(v24 + 72) = v104;
            *(v24 + 56) = v103;
            v99 -= 120;
            v100 += 120;
          }

          while (v100);
        }

        v13 -= 120 * v98;
        if (v13 == v11)
        {
          break;
        }

        v106 = *--v22;
        v23 = v106;
        v24 = v106 + 4080;
      }

      goto LABEL_104;
    }

LABEL_109:
    while (v11 != v24)
    {
      if (!v11)
      {
        goto LABEL_142;
      }

      v11 += 120;
      if (v11 - *v10 == 4080)
      {
        v107 = v10[1];
        ++v10;
        v11 = v107;
      }
    }

    v108 = a1[5] - v6;
    v109 = a1[4] + v6;
    a1[4] = v109;
    a1[5] = v108;
    if (v109 >= 0x44)
    {
      v110 = a1[1];
      do
      {
        operator delete(*v110);
        v110 = (a1[1] + 8);
        a1[1] = v110;
        v111 = a1[4] - 34;
        a1[4] = v111;
      }

      while (v111 >= 0x44);
    }

    return;
  }

  if (v18 < 1)
  {
    v59 = (33 - v18) / 0x22uLL;
    v19 = &v14[-v59];
    v20 = *v19;
    v21 = *v19 + 120 * (34 * v59 - (33 - v18)) + 3960;
  }

  else
  {
    v19 = &v14[v18 / 0x22uLL];
    v20 = *v19;
    v21 = *v19 + 120 * (v18 % 0x22uLL);
  }

  v60 = v16 + v7;
  v61 = (v16 + v7) / 0x22;
  v62 = (v8 + 8 * v61);
  if (v9 != v8)
  {
    v63 = *v62 + 120 * (v60 - 34 * v61);
    if (v19 != v62)
    {
      goto LABEL_58;
    }

LABEL_115:
    if (v63 == v21)
    {
      goto LABEL_126;
    }

    while (1)
    {
      v114 = 0xEEEEEEEEEEEEEEEFLL * ((v17 - v13 + 4080) >> 3);
      if ((0xEEEEEEEEEEEEEEEFLL * ((v63 - v21) >> 3)) < v114)
      {
        v114 = 0xEEEEEEEEEEEEEEEFLL * ((v63 - v21) >> 3);
      }

      if (v114)
      {
        v112 = v21 + 120 * v114;
        do
        {
          *v13 = *v21;
          v115 = *(v21 + 8);
          v116 = *(v21 + 24);
          *(v13 + 40) = *(v21 + 40);
          *(v13 + 24) = v116;
          *(v13 + 8) = v115;
          v117 = *(v21 + 56);
          v118 = *(v21 + 72);
          v119 = *(v21 + 88);
          *(v13 + 97) = *(v21 + 97);
          *(v13 + 88) = v119;
          *(v13 + 72) = v118;
          *(v13 + 56) = v117;
          v21 += 120;
          v13 += 120;
        }

        while (v21 != v112);
        if (v112 == v63)
        {
LABEL_125:
          if (v13 != *v14 + 4080)
          {
            goto LABEL_126;
          }

          v124 = v14[1];
          ++v14;
          v13 = v124;
          v120 = a1[5];
          v122 = a1[1];
          v121 = a1[2];
          if (v121 == v122)
          {
            goto LABEL_130;
          }

LABEL_127:
          v123 = *(v122 + 8 * ((a1[4] + v120) / 0x22uLL)) + 120 * ((a1[4] + v120) % 0x22uLL);
          if (v123 != v13)
          {
            goto LABEL_139;
          }

LABEL_131:
          v125 = 34 * ((v121 - v122) >> 3) - 1;
          if (v121 == v122)
          {
            v125 = 0;
          }

          v126 = v120 - v6;
          a1[5] = v126;
          if ((v125 - (v126 + a1[4])) >= 0x44)
          {
            do
            {
              operator delete(*(v121 - 8));
              v127 = a1[1];
              v121 = a1[2] - 8;
              v128 = 34 * ((v121 - v127) >> 3) - 1;
              a1[2] = v121;
              if (v121 == v127)
              {
                v128 = 0;
              }
            }

            while ((v128 - (a1[5] + a1[4])) > 0x43);
          }

          return;
        }
      }

      else
      {
        v112 = v21;
      }

      v113 = v14[1];
      ++v14;
      v17 = v113;
      v21 = v112;
      v13 = v113;
    }
  }

  v63 = 0;
  if (v19 == v62)
  {
    goto LABEL_115;
  }

LABEL_58:
  v64 = v20 + 4080;
  if (v20 + 4080 == v21)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v67 = 0xEEEEEEEEEEEEEEEFLL * ((v17 - v13 + 4080) >> 3);
    if ((0xEEEEEEEEEEEEEEEFLL * ((v64 - v21) >> 3)) < v67)
    {
      v67 = 0xEEEEEEEEEEEEEEEFLL * ((v64 - v21) >> 3);
    }

    if (!v67)
    {
      v65 = v21;
      goto LABEL_61;
    }

    v65 = v21 + 120 * v67;
    do
    {
      *v13 = *v21;
      v68 = *(v21 + 8);
      v69 = *(v21 + 24);
      *(v13 + 40) = *(v21 + 40);
      *(v13 + 24) = v69;
      *(v13 + 8) = v68;
      v70 = *(v21 + 56);
      v71 = *(v21 + 72);
      v72 = *(v21 + 88);
      *(v13 + 97) = *(v21 + 97);
      *(v13 + 88) = v72;
      *(v13 + 72) = v71;
      *(v13 + 56) = v70;
      v21 += 120;
      v13 += 120;
    }

    while (v21 != v65);
    if (v65 == v64)
    {
      break;
    }

LABEL_61:
    v66 = v14[1];
    ++v14;
    v17 = v66;
    v21 = v65;
    v13 = v66;
  }

  v17 = *v14;
  if (v13 == *v14 + 4080)
  {
    v73 = v14[1];
    ++v14;
    v17 = v73;
    v13 = v73;
  }

LABEL_70:
  v74 = v19 + 1;
  if (v74 != v62)
  {
LABEL_73:
    v75 = 0;
    v76 = *v74;
    while (1)
    {
      v79 = 0xEEEEEEEEEEEEEEEFLL * ((v17 - v13 + 4080) >> 3);
      if ((0xEEEEEEEEEEEEEEEFLL * ((4080 - v75) >> 3)) < v79)
      {
        v79 = 0xEEEEEEEEEEEEEEEFLL * ((4080 - v75) >> 3);
      }

      if (v79)
      {
        v77 = v75 + 120 * v79;
        v80 = v76 + v75;
        do
        {
          *v13 = *v80;
          v81 = *(v80 + 8);
          v82 = *(v80 + 24);
          *(v13 + 40) = *(v80 + 40);
          *(v13 + 24) = v82;
          *(v13 + 8) = v81;
          v83 = *(v80 + 56);
          v84 = *(v80 + 72);
          v85 = *(v80 + 88);
          *(v13 + 97) = *(v80 + 97);
          *(v13 + 88) = v85;
          *(v13 + 72) = v84;
          *(v13 + 56) = v83;
          v80 += 120;
          v13 += 120;
        }

        while (v80 != v76 + v77);
        if (v77 == 4080)
        {
          v17 = *v14;
          if (v13 == *v14 + 4080)
          {
            v86 = v14[1];
            ++v14;
            v17 = v86;
            v13 = v86;
          }

          if (++v74 == v62)
          {
            break;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v77 = v75;
      }

      v78 = v14[1];
      ++v14;
      v17 = v78;
      v75 = v77;
      v13 = v78;
    }
  }

  v87 = *v62;
  if (*v62 != v63)
  {
    v88 = *v14;
    while (1)
    {
      v91 = 0xEEEEEEEEEEEEEEEFLL * ((v88 - v13 + 4080) >> 3);
      if ((0xEEEEEEEEEEEEEEEFLL * ((v63 - v87) >> 3)) < v91)
      {
        v91 = 0xEEEEEEEEEEEEEEEFLL * ((v63 - v87) >> 3);
      }

      if (v91)
      {
        v89 = v87 + 120 * v91;
        do
        {
          *v13 = *v87;
          v92 = *(v87 + 8);
          v93 = *(v87 + 24);
          *(v13 + 40) = *(v87 + 40);
          *(v13 + 24) = v93;
          *(v13 + 8) = v92;
          v94 = *(v87 + 56);
          v95 = *(v87 + 72);
          v96 = *(v87 + 88);
          *(v13 + 97) = *(v87 + 97);
          *(v13 + 88) = v96;
          *(v13 + 72) = v95;
          *(v13 + 56) = v94;
          v87 += 120;
          v13 += 120;
        }

        while (v87 != v89);
        if (v89 == v63)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v89 = v87;
      }

      v90 = v14[1];
      ++v14;
      v88 = v90;
      v87 = v89;
      v13 = v90;
    }
  }

LABEL_126:
  v120 = a1[5];
  v122 = a1[1];
  v121 = a1[2];
  if (v121 != v122)
  {
    goto LABEL_127;
  }

LABEL_130:
  v123 = 0;
  if (!v13)
  {
    goto LABEL_131;
  }

LABEL_139:
  while (v13)
  {
    v13 += 120;
    if (v13 - *v14 == 4080)
    {
      v129 = v14[1];
      ++v14;
      v13 = v129;
    }

    if (v13 == v123)
    {
      goto LABEL_131;
    }
  }

LABEL_142:
  __break(1u);
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::internal::ReceiveStatisticsProxy::OnDecoderInfo(webrtc::VideoDecoder::DecoderInfo const&)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1 + 1);
  v3 = **a1;
  v4 = (v3 + 56);
  if (*(v3 + 80) == 1)
  {
    if (v4 == v2)
    {
LABEL_6:
      *(v3 + 88) = *(v1 + 32) | 0x100;
      return;
    }

    v5 = *(v1 + 31);
    if (*(v3 + 79) < 0)
    {
      if (v5 >= 0)
      {
        v8 = v2;
      }

      else
      {
        v8 = v1[1];
      }

      if (v5 >= 0)
      {
        v9 = *(v1 + 31);
      }

      else
      {
        v9 = v1[2];
      }

      std::string::__assign_no_alias<false>(v4, v8, v9);
      *(v3 + 88) = *(v1 + 32) | 0x100;
    }

    else
    {
      if ((*(v1 + 31) & 0x80) == 0)
      {
        v6 = *v2;
        *(v3 + 72) = *(v2 + 16);
        *&v4->__r_.__value_.__l.__data_ = v6;
        goto LABEL_6;
      }

      std::string::__assign_no_alias<true>(v4, v1[1], v1[2]);
      *(v3 + 88) = *(v1 + 32) | 0x100;
    }
  }

  else
  {
    if (*(v1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v4, v1[1], v1[2]);
    }

    else
    {
      v7 = *v2;
      *(v3 + 72) = *(v2 + 16);
      *&v4->__r_.__value_.__l.__data_ = v7;
    }

    *(v3 + 80) = 1;
    *(v3 + 88) = *(v1 + 32) | 0x100;
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::internal::ReceiveStatisticsProxy::OnDecoderInfo(webrtc::VideoDecoder::DecoderInfo const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::internal::ReceiveStatisticsProxy::OnDecodedFrame(webrtc::VideoFrame const&,std::optional<unsigned char>,webrtc::TimeDelta,webrtc::VideoContentType,webrtc::VideoFrameType)::$_1 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 76);
  v95 = *(*a1 + 72);
  v8 = *(v2 + 1496) & 1;
  if ((v95 & 1) != v8)
  {
    webrtc::internal::VideoQualityObserver::UpdateHistograms(*(v2 + 1256), v8);
    operator new();
  }

  webrtc::internal::VideoQualityObserver::OnDecodedFrame(*(v2 + 1256), *v1, v3, *(v2 + 1500));
  v96 = &v95;
  v9 = std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::__emplace_unique_key_args<webrtc::VideoContentType,std::piecewise_construct_t const&,std::tuple<webrtc::VideoContentType const&>,std::tuple<>>(v2 + 1320, v95);
  v10 = *(v2 + 172);
  *(v2 + 172) = v10 + 1;
  v11 = 96;
  if (v7 == 3)
  {
    v11 = 92;
  }

  ++*(v2 + v11);
  if ((v3 & 0x100) != 0)
  {
    if (*(v2 + 240) == 1)
    {
      v19 = *(v2 + 232);
    }

    else
    {
      if (v10 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/receive_statistics_proxy.cc");
      }

      v19 = 0;
      if ((*(v2 + 240) & 1) == 0)
      {
        *(v2 + 240) = 1;
      }
    }

    *(v2 + 232) = v19 + v3;
    v27 = vdupq_n_s64(1uLL);
    v27.i64[0] = v3;
    *(v9 + 23) = vaddq_s64(*(v9 + 23), v27);
    if (*(v9 + 204) != 1 || *(v9 + 50) < v3)
    {
      *(v9 + 50) = v3;
      *(v9 + 204) = 1;
    }

    if (*(v9 + 212) != 1 || *(v9 + 52) > v3)
    {
      *(v9 + 52) = v3;
      *(v9 + 212) = 1;
    }
  }

  else if (*(v2 + 240) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/receive_statistics_proxy.cc");
    }

    if (*(v2 + 240) == 1)
    {
      *(v2 + 240) = 0;
    }
  }

  v28 = v5 / 0x3E8uLL;
  if (v5 % 0x3E8uLL > 0x1F3)
  {
    LODWORD(v28) = v28 + 1;
  }

  if (-v5 % 0x3E8uLL <= 0x1F4)
  {
    v29 = 0;
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 - -v5 / 0x3E8uLL;
  if (v5 < 0)
  {
    LODWORD(v28) = v30;
  }

  v31 = vdupq_n_s64(1uLL);
  v31.i64[0] = v28;
  *(v2 + 1096) = vaddq_s64(v31, *(v2 + 1096));
  if (*(v2 + 1116) != 1 || *(v2 + 1112) < v28)
  {
    *(v2 + 1112) = v28;
    *(v2 + 1116) = 1;
  }

  if (*(v2 + 1124) != 1 || *(v2 + 1120) > v28)
  {
    *(v2 + 1120) = v28;
    *(v2 + 1124) = 1;
  }

  *(v2 + 100) = v28;
  v32 = *(v2 + 176);
  v33 = 0x7FFFFFFFFFFFFFFFLL;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  if (v32 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = 0x8000000000000000;
    v35 = v5 == 0x8000000000000000 || v32 == 0x8000000000000000;
    v36 = v32 + v5;
    if (!v35)
    {
      v34 = v36;
    }
  }

  *(v2 + 176) = v34;
  v37 = *(v2 + 184);
  if (v37 != 0x7FFFFFFFFFFFFFFFLL && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0x8000000000000000;
    v38 = v4 == 0x8000000000000000 || v37 == 0x8000000000000000;
    v39 = v37 + v4;
    if (!v38)
    {
      v33 = v39;
    }
  }

  *(v2 + 184) = v33;
  v40 = *(v2 + 192);
  v41 = 0x7FFFFFFFFFFFFFFFLL;
  if (v40 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = 0x8000000000000000;
    v42 = v6 == 0x8000000000000000 || v40 == 0x8000000000000000;
    v43 = v40 + v6;
    if (!v42)
    {
      v41 = v43;
    }
  }

  *(v2 + 192) = v41;
  if (v6)
  {
    ++*(v2 + 200);
  }

  *(v2 + 1496) = v95;
  v44 = *(v1 + 32);
  v45 = v44 / 0x3E8uLL;
  if (v44 % 0x3E8uLL > 0x1F3)
  {
    ++v45;
  }

  if (-v44 % 0x3E8uLL <= 0x1F4)
  {
    v46 = 0;
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 - -v44 / 0x3E8uLL;
  if (v44 < 0)
  {
    v48 = v47;
  }

  else
  {
    v48 = v45;
  }

  webrtc::RateStatistics::Update((v2 + 744), 1, v48);
  if (*(v2 + 1544) == 1)
  {
    v49 = *(v1 + 32);
    v50 = *(v2 + 1536);
    if ((v49 & 0x8000000000000000) != 0)
    {
      v53 = -v49;
      v54 = v53 / 0x3E8;
      if (v53 % 0x3E8 <= 0x1F4)
      {
        v55 = 0;
      }

      else
      {
        v55 = -1;
      }

      v52 = v55 - (v54 + v50);
      v51 = v55 - v54;
    }

    else
    {
      if (v49 % 0x3E8 <= 0x1F3)
      {
        v51 = v49 / 0x3E8;
      }

      else
      {
        v51 = v49 / 0x3E8 + 1;
      }

      v52 = v51 - v50;
    }

    v56 = *(v2 + 1280);
    v57 = *(v2 + 1304);
    v58 = (v56 + 8 * (v57 >> 8));
    if (*(v2 + 1288) == v56)
    {
      v62 = 0;
      v60 = 0;
      v63 = (v56 + 8 * (v57 >> 8));
    }

    else
    {
      v59 = *v58;
      v60 = *v58 + 16 * v57;
      v61 = *(v56 + (((*(v2 + 1312) + v57) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v2 + 1312) + v57);
      v62 = v60;
      v63 = v58;
      if (v60 != v61)
      {
        v62 = (*v58 + 16 * v57);
        v63 = v58;
        do
        {
          if (*v62 >= v51 - *(v2 + 1264))
          {
            goto LABEL_86;
          }

          v62 += 16;
          if (v62 - v59 == 4096)
          {
            v64 = *(v63 + 1);
            v63 += 8;
            v59 = v64;
            v62 = v64;
          }
        }

        while (v62 != v61);
        std::deque<std::pair<long long,int>>::erase((v2 + 1272), v58, v60, v63, v61);
        v65 = *(v2 + 1312);
        if (v65)
        {
LABEL_91:
          while (1)
          {
            v66 = *(v2 + 1304);
            v67 = v66 + v65 - 1;
            v68 = *(v2 + 1280);
            v69 = *(v68 + ((v67 >> 5) & 0x7FFFFFFFFFFFFF8));
            if (*(v69 + 16 * v67 + 8) > v52)
            {
              break;
            }

            v70 = *(v2 + 1288);
            *(v2 + 1312) = v65 - 1;
            if (v70 == v68)
            {
              v71 = 0;
            }

            else
            {
              v71 = 32 * (v70 - v68) - 1;
            }

            v72 = v71 - (v65 + v66) + 1;
            --v65;
            if (v72 >= 0x200)
            {
              operator delete(*(v70 - 8));
              *(v2 + 1288) -= 8;
              v65 = *(v2 + 1312);
            }

            if (!v65)
            {
              goto LABEL_98;
            }
          }

          if (*(v69 + 16 * (v66 + v65 - 1)) >= v51)
          {
            goto LABEL_114;
          }
        }

LABEL_98:
        v73 = *(v2 + 1288);
        v74 = *(v2 + 1280);
        if (v73 == v74)
        {
          v75 = 0;
        }

        else
        {
          v75 = 32 * (v73 - v74) - 1;
        }

        v76 = *(v2 + 1304);
        if (v75 == v76 + v65)
        {
          if (v76 < 0x100)
          {
            v77 = *(v2 + 1296);
            v78 = *(v2 + 1272);
            if (v73 - v74 < (v77 - v78))
            {
              operator new();
            }

            if (v77 == v78)
            {
              v79 = 1;
            }

            else
            {
              v79 = (v77 - v78) >> 2;
            }

            if (!(v79 >> 61))
            {
              operator new();
            }

            goto LABEL_141;
          }

          *(v2 + 1304) = v76 - 256;
          v96 = *v74;
          *(v2 + 1280) = v74 + 1;
          std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>((v2 + 1272), &v96);
          v74 = *(v2 + 1280);
          v73 = *(v2 + 1288);
        }

        if (v73 != v74)
        {
          v80 = *(v2 + 1312);
          v81 = v80 + *(v2 + 1304);
          v82 = *(v74 + ((v81 >> 5) & 0x7FFFFFFFFFFFFF8));
          if (v82)
          {
            v83 = v82 + 16 * v81;
            *v83 = v51;
            *(v83 + 8) = v52;
            *(v2 + 1312) = v80 + 1;
LABEL_114:
            v84 = vdupq_n_s64(1uLL);
            v84.i64[0] = v52;
            *(v9 + 9) = vaddq_s64(*(v9 + 9), v84);
            if (*(v9 + 92) != 1 || *(v9 + 22) < v52)
            {
              *(v9 + 22) = v52;
              *(v9 + 92) = 1;
            }

            if (*(v9 + 100) != 1 || *(v9 + 24) > v52)
            {
              *(v9 + 24) = v52;
              *(v9 + 100) = 1;
            }

            webrtc::HistogramPercentileCounter::Add((v9 + 28), v52, 1);
            v9[13] += v52;
            goto LABEL_121;
          }
        }

        __break(1u);
LABEL_141:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

LABEL_86:
    std::deque<std::pair<long long,int>>::erase((v2 + 1272), v58, v60, v63, v62);
    v65 = *(v2 + 1312);
    if (v65)
    {
      goto LABEL_91;
    }

    goto LABEL_98;
  }

LABEL_121:
  if (*(v2 + 172) == 1)
  {
    v85 = *(v1 + 32);
    v86 = v85 / 0x3E8uLL;
    if (v85 % 0x3E8uLL > 0x1F3)
    {
      ++v86;
    }

    if (-v85 % 0x3E8uLL <= 0x1F4)
    {
      v87 = 0;
    }

    else
    {
      v87 = -1;
    }

    v88 = v87 - -v85 / 0x3E8uLL;
    if (v85 < 0)
    {
      v89 = v88;
    }

    else
    {
      v89 = v86;
    }

    *(v2 + 1520) = v89;
    *(v2 + 1528) = 1;
  }

  v90 = *(v1 + 32);
  v91 = v90 / 0x3E8uLL;
  if (v90 % 0x3E8uLL > 0x1F3)
  {
    ++v91;
  }

  if (-v90 % 0x3E8uLL <= 0x1F4)
  {
    v92 = 0;
  }

  else
  {
    v92 = -1;
  }

  v93 = v92 - -v90 / 0x3E8uLL;
  if (v90 < 0)
  {
    v94 = v93;
  }

  else
  {
    v94 = v91;
  }

  *(v2 + 1536) = v94;
  *(v2 + 1544) = 1;
}

uint64_t *std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::__emplace_unique_key_args<webrtc::VideoContentType,std::piecewise_construct_t const&,std::tuple<webrtc::VideoContentType const&>,std::tuple<>>(uint64_t a1, unsigned __int8 a2)
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
      v4 = *(v2 + 32);
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

uint64_t *absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::internal::ReceiveStatisticsProxy::OnCorruptionScore(double,webrtc::VideoContentType)::$_0 &&>(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (*(v2 + 256) == 1)
  {
    v3 = *(v2 + 272);
    *(v2 + 248) = *(v2 + 248) + *v1;
    if ((v3 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 264);
  }

  else
  {
    *(v2 + 256) = 1;
    *(v2 + 248) = 0;
    if ((*(v2 + 272) & 1) == 0)
    {
      *(v2 + 272) = 1;
    }

    *(v2 + 264) = 0;
    v4 = 0.0;
    *(v2 + 248) = *v1 + 0.0;
  }

  *(v2 + 264) = v4 + *v1 * *v1;
  ++*(v2 + 280);
  result = std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::__emplace_unique_key_args<webrtc::VideoContentType,std::piecewise_construct_t const&,std::tuple<webrtc::VideoContentType const&>,std::tuple<>>(v2 + 1320, *(v1 + 8));
  v5 = *v1;
  v7 = *(result + 38);
  v6 = *(result + 39);
  if (v6 < *v1)
  {
    v6 = *v1;
  }

  if (v7 > v5)
  {
    v7 = *v1;
  }

  *(result + 38) = v7;
  *(result + 39) = v6;
  v8 = *(result + 41);
  v9 = v5 + *(result + 42);
  v10 = result[37] + 1;
  v11 = *(result + 40);
  v12 = v5 - v11;
  v13 = v11 + (v5 - v11) / v10;
  result[37] = v10;
  *(result + 40) = v13;
  *(result + 41) = v8 + v12 * (v5 - v13);
  *(result + 42) = v9;
  return result;
}

uint64_t webrtc::ReceiveTimeCalculatorConfig::ReceiveTimeCalculatorConfig(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 55) = 6;
  if (a1 + 32 <= "maxrep" && a1 + 38 > "maxrep" || (strcpy((a1 + 32), "maxrep"), *(a1 + 56) = 0, *a1 = &unk_28828FFD0, *(a1 + 64) = 2000000, *(a1 + 88) = 0, *(a1 + 96) = 0, *(a1 + 127) = 5, *(a1 + 80) = 0, a1 + 104 <= "stall") && a1 + 109 > "stall" || (*(a1 + 108) = 108, *(a1 + 104) = 1818326131, *(a1 + 109) = 0, *(a1 + 128) = 0, *(a1 + 72) = &unk_28828FFD0, *(a1 + 136) = 5000, *(a1 + 160) = 0, *(a1 + 168) = 0, *(a1 + 199) = 3, *(a1 + 152) = 0, a1 + 176 <= "tol") && a1 + 179 > "tol" || (*(a1 + 178) = 108, *(a1 + 176) = 28532, *(a1 + 179) = 0, *(a1 + 200) = 0, *(a1 + 144) = &unk_28828FFD0, *(a1 + 208) = 1000, *(a1 + 232) = 0, *(a1 + 240) = 0, *(a1 + 271) = 8, *(a1 + 224) = 0, a1 + 248 <= "maxstall") && a1 + 256 > "maxstall")
  {
    __break(1u);
  }

  strcpy((a1 + 248), "maxstall");
  *(a1 + 272) = 0;
  *(a1 + 216) = &unk_28828FFD0;
  *(a1 + 280) = 5000000;
  (*(*a2 + 16))(__p, a2, "WebRTC-Bwe-ReceiveTimeFix", 25);
  v8[0] = a1;
  v8[1] = a1 + 72;
  v8[2] = a1 + 144;
  v8[3] = a1 + 216;
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  webrtc::ParseFieldTrial(v8, 4, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void webrtc::ReceiveTimeCalculatorConfig::~ReceiveTimeCalculatorConfig(webrtc::ReceiveTimeCalculatorConfig *this)
{
  *(this + 27) = &unk_288293910;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  *(this + 18) = &unk_288293910;
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  *(this + 9) = &unk_288293910;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  *this = &unk_288293910;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

uint64_t webrtc::ReceiveTimeCalculator::ReconcileReceiveTimes(webrtc::ReceiveTimeCalculator *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2;
  v5 = *(this + 4);
  v6 = *(this + 24);
  if (v5 < v6 && v4 >= *(this + 42))
  {
    v4 = *(this + 42);
  }

  v7 = *(this + 1);
  if (v7 == -1 && v4 < 0)
  {
    *(this + 5) = v4;
    v8 = a4;
LABEL_7:
    *this = v8;
    *(this + 1) = a2;
    *(this + 2) = a3;
    *(this + 3) = a4;
    return v8;
  }

  v8 = a4 - v4;
  if (v7 < 1)
  {
    goto LABEL_7;
  }

  v10 = a2 - v7;
  v12 = *(this + 2);
  v11 = *(this + 3);
  v13 = __OFSUB__(a3, v12);
  v14 = a3 - v12;
  if (v14 < 0 != v13)
  {
    v15 = *(this + 24);
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v5;
  *(this + 4) = v16;
  v17 = *(this + 5);
  if (v10 < 0 && v16 < v6)
  {
    v17 -= v10;
    *(this + 5) = v17;
  }

  v18 = a4 - v11;
  v19 = *(this + 33);
  if ((v10 & 0x8000000000000000) == 0 && a3 >= a2 && v14 > v19 + v10 && v18 > v19 + v14)
  {
    v20 = 1;
LABEL_28:
    *(this + 6) = v20;
    goto LABEL_29;
  }

  v20 = 0;
  v22 = v10 < 0 && v14 >= 0;
  if (v18 > v6 || v22)
  {
    goto LABEL_28;
  }

LABEL_29:
  v23 = *this;
  if (a3 >= a2)
  {
    v8 += v17;
    if (v8 + v19 >= v23 && !*(this + 6))
    {
      goto LABEL_7;
    }
  }

  v24 = *(this + 15);
  if (v10 < v24)
  {
    v24 = v10;
  }

  if (v10 <= 0)
  {
    v24 = 0;
  }

  v25 = v24 + v23;
  *this = v25;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  return v25;
}

uint64_t webrtc::ReceivedIpPacket::ReceivedIpPacket(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  *result = v8;
  *(result + 8) = a3;
  *(result + 16) = a5;
  *(result + 24) = a6;
  *(result + 32) = a4;
  *(result + 40) = a7;
  *(result + 44) = a8;
  return result;
}

void webrtc::rtcp::ReceiverReport::~ReceiverReport(webrtc::rtcp::ReceiverReport *this)
{
  *this = &unk_28829A3B0;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829A3B0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::rtcp::ReceiverReport::Parse(webrtc::rtcp::ReceiverReport *this, const webrtc::rtcp::CommonHeader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 1);
  v4 = (24 * v2) | 4;
  if (v4 > v3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/receiver_report.cc");
    }
  }

  else
  {
    v5 = *(a2 + 1);
    v7 = *v5;
    v6 = (v5 + 1);
    v8 = *(this + 2);
    *(this + 2) = bswap32(v7);
    v9 = *(this + 3);
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 2);
    if (v2 <= v10)
    {
      if (v2 < v10)
      {
        v9 = (v8 + 28 * v2);
        *(this + 3) = v9;
      }
    }

    else
    {
      std::vector<webrtc::rtcp::ReportBlock>::__append(this + 2, v2 - v10);
      v8 = *(this + 2);
      v9 = *(this + 3);
    }

    while (v8 != v9)
    {
      webrtc::rtcp::ReportBlock::Parse(v8, v6, 0x18uLL);
      v6 += 24;
      v8 = (v8 + 28);
    }
  }

  return v4 <= v3;
}

uint64_t webrtc::rtcp::ReceiverReport::Create(unsigned int *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    v13 = (a1[6] - a1[4]) >> 2;
    v14 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = (-73 * v13) | 0x80;
    *(a2 + *a3 + 1) = -55;
    *(a2 + *a3 + 2) = (v14 - 4) >> 10;
    *(a2 + *a3 + 3) = (v14 - 4) >> 2;
    v15 = *a3 + 4;
    *a3 = v15;
    *(a2 + v15) = bswap32(a1[2]);
    v16 = *a3 + 4;
    *a3 = v16;
    v18 = *(a1 + 2);
    for (i = *(a1 + 3); v18 != i; v18 += 28)
    {
      webrtc::rtcp::ReportBlock::Create(v18, (a2 + v16));
      v16 = *a3 + 24;
      *a3 = v16;
    }

    return 1;
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }
}

void std::vector<webrtc::rtcp::ReportBlock>::__append(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 2) < a2)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *a1) >> 2);
    v5 = v4 + a2;
    if (v4 + a2 <= 0x924924924924924)
    {
      v6 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 2);
      if (2 * v6 > v5)
      {
        v5 = 2 * v6;
      }

      if (v6 >= 0x492492492492492)
      {
        v7 = 0x924924924924924;
      }

      else
      {
        v7 = v5;
      }

      if (v7)
      {
        if (v7 <= 0x924924924924924)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v9 = 28 * v4 + 28 * a2;
      v10 = 28 * v4;
      do
      {
        if (!v10)
        {
          goto LABEL_32;
        }

        *v10 = 0;
        *(v10 + 4) = 0;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        v10 += 28;
      }

      while (v10 != v9);
      v11 = *a1;
      v12 = a1[1];
      v13 = 28 * v4 + *a1 - v12;
      if (v12 != *a1)
      {
        v14 = *a1;
        v15 = (28 * v4 + *a1 - v12);
        do
        {
          if (!v15)
          {
            goto LABEL_32;
          }

          v16 = *v14;
          *(v15 + 12) = *(v14 + 12);
          *v15 = v16;
          v15 = (v15 + 28);
          v14 = (v14 + 28);
        }

        while (v14 != v12);
        do
        {
          if (!v11)
          {
            goto LABEL_32;
          }

          v11 = (v11 + 28);
        }

        while (v11 != v12);
        v11 = *a1;
      }

      *a1 = v13;
      a1[1] = v9;
      a1[2] = 0;
      if (v11)
      {

        operator delete(v11);
      }

      return;
    }

LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v8 = v2 + 28 * a2;
  do
  {
    if (!v2)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    *v2 = 0;
    *(v2 + 4) = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    v2 += 28;
  }

  while (v2 != v8);
  v2 = v8;
LABEL_16:
  a1[1] = v2;
}

unsigned __int8 *dcsctp::ReConfigChunk::Parse@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 4 || *result != 130 || ((v3 = __rev16(*(result + 1)), v3 >= 4) ? (v4 = a2 >= v3) : (v4 = 0), v4 ? (v5 = a2 - v3 >= 4) : (v5 = 1), v5))
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 32) = 0;
    return result;
  }

  v6 = v3 - 4;
  if (v3 >= 5)
  {
    v7 = result + 4;
  }

  else
  {
    v7 = 0;
  }

  if (v3 >= 5 && v3 != 4)
  {
    v9 = v3 - 4;
    v10 = v7;
    while (v9 >= 4)
    {
      v11 = __rev16(*(v10 + 1));
      if (v11 < 4 || v9 < v11)
      {
        break;
      }

      v13 = (v11 + 3) & 0xFFFC;
      v14 = v9 - v13;
      if (v9 >= v13)
      {
        if (v14 >= v9)
        {
          v14 = v9;
        }

        v10 += v13;
        v15 = v9 > v13;
        if (v9 <= v13)
        {
          v10 = 0;
        }

        v9 = v14;
        if (v15)
        {
          continue;
        }
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_11;
  }

  *a3 = &unk_28829A3E0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

void dcsctp::ReConfigChunk::~ReConfigChunk(dcsctp::ReConfigChunk *this)
{
  *this = &unk_28829A3E0;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829A3E0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::ReConfigChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = *a2;
  v14 = a2[1] - *a2;
  v15 = v11 + 4;
  v16 = v14 + v11 + 4;
  if (v14 >= v16)
  {
    if (v14 > v16)
    {
      a2[1] = v13 + v16;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v11 + 4);
    v13 = *a2;
  }

  v17 = (v13 + v14);
  *v17 = -126;
  v17[2] = HIBYTE(v15);
  v17[3] = v15;
  if (v11 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v20);
    dcsctp::ReConfigChunk::ToString(v19);
  }

  else if (v9 && v10 != v9)
  {
    v18 = (*a2 + v14 + 4);

    memcpy(v18, v12, v10 - v9);
  }
}

void dcsctp::ReConfigChunk::ToString(char *a1@<X8>)
{
  a1[23] = 9;
  if (a1 <= "RE-CONFIG" && a1 + 9 > "RE-CONFIG")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "RE-CONFIG");
  }
}

unsigned __int16 *dcsctp::ReconfigurationResponseParameter::Parse@<X0>(unsigned __int16 *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a2 < 0xC || __rev16(*v3) != 16 || ((v4 = *(v3 + 3), v5 = v4 | (*(v3 + 2) << 8), (v4 & 3) == 0) ? (v6 = v5 >= 0xC) : (v6 = 0), v6 ? (v7 = a2 >= v5) : (v7 = 0), v7 ? (v8 = a2 - v5 >= 4) : (v8 = 1), v8 || (v9 = bswap32(*(v3 + 2)), v9 >= 7)))
  {
LABEL_20:
    *a3 = 0;
    *(a3 + 32) = 0;
    return result;
  }

  v10 = bswap32(*(v3 + 1));
  if (v5 > 0xC)
  {
    if (v5 == 20)
    {
      v11 = bswap32(*(v3 + 3));
      v12 = bswap32(*(v3 + 4));
      *a3 = &unk_28829A410;
      *(a3 + 8) = v10;
      *(a3 + 12) = v9;
      *(a3 + 16) = v11;
      *(a3 + 20) = 1;
      *(a3 + 24) = v12;
      *(a3 + 28) = 1;
      *(a3 + 32) = 1;
      return result;
    }

    goto LABEL_20;
  }

  *a3 = &unk_28829A410;
  *(a3 + 8) = v10;
  *(a3 + 12) = v9;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 1;
  return result;
}

void dcsctp::ReconfigurationResponseParameter::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16) & 0x100000000;
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = (v10 >> 29) + 12;
  if (v12 >= v12 + v13)
  {
    if (v12 > v12 + v13)
    {
      a2[1] = v11 + v12 + v13;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, (v10 >> 29) + 12);
    v11 = *a2;
  }

  v14 = v11 + v12;
  *v14 = 4096;
  *(v14 + 2) = 0;
  *(v14 + 3) = v13;
  v15 = (*a2 + v12);
  v15[1] = bswap32(*(a1 + 8));
  v15[2] = bswap32(*(a1 + 12));
  v16 = *(a1 + 16);
  if ((v16 & 0x100000000) != 0)
  {
    if (v10)
    {
      v15[3] = bswap32(v16);
      if (*(a1 + 28) == 1)
      {
        v17 = *(a1 + 24);
      }

      else
      {
        v17 = 0;
      }

      v15[4] = bswap32(v17);
    }

    else
    {
      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 84, "FixedSize + variable_offset + SubSize <= data_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v19);
      dcsctp::ReconfigurationResponseParameter::ToString(v18);
    }
  }
}

uint64_t webrtc::RedPayloadSplitter::SplitRed(uint64_t a1, void *a2)
{
  v2 = a2[1];
  while (2)
  {
    if (v2 == a2)
    {
LABEL_32:
      v31 = 1;
    }

    else
    {
      v3 = 0;
      v4 = v2[5];
      v5 = v2[3];
      do
      {
        if (!v5)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            v34 = v34 & 0xFFFFFFFF00000000 | 0x242;
            webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/red_payload_splitter.cc");
          }

          v17 = 0;
          goto LABEL_2;
        }

        v6 = *v4;
        if (v6 < 0)
        {
          if (v5 <= 3)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
            {
              v33 = v33 & 0xFFFFFFFF00000000 | 0x2CA;
              webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/red_payload_splitter.cc");
            }

            v17 = 0;
            goto LABEL_2;
          }

          v9 = v4[3] | ((v4[2] & 3) << 8);
          v3 += v9 + 4;
          v7 = -4;
          v8 = 4;
          if (v9)
          {
LABEL_12:
            operator new();
          }
        }

        else
        {
          ++v3;
          v7 = -1;
          v8 = 1;
          if (v2[3] != v3)
          {
            goto LABEL_12;
          }
        }

        v4 += v8;
        v5 += v7;
      }

      while (v6 < 0);
      v36[0] = v36;
      v36[1] = v36;
      v36[2] = 0;
      if (v36 == a2)
      {
        __break(1u);
        goto LABEL_32;
      }

      v25 = *v2;
      v26 = v2[1];
      *(v25 + 8) = v26;
      *v26 = v25;
      --a2[2];
      v27 = v2[22];
      v2[22] = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      v28 = v2[21];
      v2[21] = 0;
      if (v28)
      {
        MEMORY[0x2743DA540](v28, 0x1060C40C2E02434);
      }

      if (*(v2 + 160) == 1)
      {
        v29 = v2[8];
        if (v29)
        {
          v2[9] = v29;
          operator delete(v29);
        }
      }

      v30 = v2[5];
      v2[5] = 0;
      if (v30)
      {
        MEMORY[0x2743DA520](v30, 0x1000C8077774924);
      }

      operator delete(v2);
      v17 = 1;
      v2 = v26;
LABEL_2:
      if (v17)
      {
        continue;
      }

      v31 = 0;
    }

    return v31 & 1;
  }
}

void webrtc::RedPayloadSplitter::CheckRedPayloads(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3 != a2)
  {
    v6 = 0xFFFFFFFFLL;
    while (1)
    {
      v7 = *(v3 + 22);
      v8 = (*(*a3 + 64))(a3, v7);
      if (v8 && *(v8 + 144) == 3)
      {
        goto LABEL_16;
      }

      v9 = (*(*a3 + 64))(a3, v7);
      if (v9 && *(v9 + 144) == 2 || (v10 = (*(*a3 + 64))(a3, v7)) != 0 && *(v10 + 144) == 1)
      {
LABEL_12:
        v7 = v6;
        goto LABEL_13;
      }

      if (v6 == -1)
      {
LABEL_13:
        v3 = v3[1];
        v6 = v7;
        if (v3 == a2)
        {
          return;
        }
      }

      else
      {
        if (v6 == v7)
        {
          goto LABEL_12;
        }

        if (v3 == a2)
        {
          __break(1u);
          return;
        }

LABEL_16:
        v11 = *v3;
        v12 = v3[1];
        *(v11 + 8) = v12;
        *v12 = v11;
        --a2[2];
        v13 = v3[22];
        v3[22] = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        v14 = v3[21];
        v3[21] = 0;
        if (v14)
        {
          MEMORY[0x2743DA540](v14, 0x1060C40C2E02434);
        }

        if (*(v3 + 160) == 1)
        {
          v15 = v3[8];
          if (v15)
          {
            v3[9] = v15;
            operator delete(v15);
          }
        }

        v16 = v3[5];
        v3[5] = 0;
        if (v16)
        {
          MEMORY[0x2743DA520](v16, 0x1000C8077774924);
        }

        operator delete(v3);
        v3 = v12;
        if (v12 == a2)
        {
          return;
        }
      }
    }
  }
}

int32x4_t *webrtc::RefinedFilterUpdateGain::HandleEchoPathChange(int32x4_t *result, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v2 = vdupq_n_s32(0x461C4000u);
    result[7] = v2;
    result[8] = v2;
    result[9] = v2;
    result[10] = v2;
    result[11] = v2;
    result[12] = v2;
    result[13] = v2;
    result[14] = v2;
    result[15] = v2;
    result[16] = v2;
    result[17] = v2;
    result[18] = v2;
    result[19] = v2;
    result[20] = v2;
    result[21] = v2;
    result[22] = v2;
    result[23].i32[0] = 1176256512;
  }

  if ((*a2 & 1) == 0)
  {
    result[23].i64[1] = 1000;
    result[24].i64[0] = 0;
  }

  return result;
}

void webrtc::RefinedFilterUpdateGain::Compute(uint64_t a1, float32x4_t *a2, void *a3, uint64_t a4, unint64_t a5, int a6, unint64_t a7, char a8, float32x4_t a9, float32x4_t a10, char a11, float32x4_t *a12)
{
  v14 = (a4 + 1544);
  v15 = *(a1 + 384) + 1;
  *(a1 + 384) = v15;
  v16 = *(a1 + 392);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v18 < 0 == v17)
  {
    *(a1 + 392) = v18;
    if (v18)
    {
      v19 = *(a1 + 12) * v18;
      *(a1 + 24) = vmlaq_n_f32(vmulq_n_f32(*(a1 + 56), 1.0 - v19), *(a1 + 88), v19);
      *(a1 + 40) = ((1.0 - v19) * *(a1 + 72)) + (*(a1 + 104) * v19);
    }

    else
    {
      a9 = *(a1 + 48);
      a10 = *(a1 + 64);
      *(a1 + 80) = a9;
      *(a1 + 96) = a10;
      *(a1 + 16) = a9;
      *(a1 + 32) = a10;
    }
  }

  v20 = 1;
  do
  {
    v21 = a3[v20];
    if (v21 > 0xA)
    {
      break;
    }
  }

  while (v20++ != 63);
  if (v21 <= 0xA)
  {
    v23 = *(a1 + 376) + 1;
    *(a1 + 376) = v23;
    if (v23 < a7)
    {
LABEL_19:
      bzero(a12, 0x208uLL);
      goto LABEL_40;
    }
  }

  else
  {
    *(a1 + 376) = 1;
    if (a7 > 1)
    {
      goto LABEL_19;
    }
  }

  if ((a8 & 1) != 0 || v15 <= a7)
  {
    goto LABEL_19;
  }

  v24 = 0;
  v25 = *(a1 + 40);
  v26 = a1 + 112;
  do
  {
    v27 = a2->f32[v24];
    v28 = 0.0;
    if (v27 >= v25)
    {
      v28 = *(v26 + v24 * 4) / ((v14[v24] * a7) + ((*(v26 + v24 * 4) * 0.5) * v27));
    }

    v125.f32[v24++] = v28;
  }

  while (v24 != 65);
  if (a3[1] > 5uLL)
  {
    v125.i64[0] = 0;
  }

  v29 = 0;
  v30 = a3 + 2;
  do
  {
    v31 = *v30++;
    if (v31 >= 6)
    {
      v32 = &v125 + v29;
      *(v32 + 4) = 0;
      *v32 = 0;
      *(v32 + 1) = 0;
    }

    v29 += 4;
  }

  while (v29 != 244);
  if (a3[63] > 5uLL)
  {
    v140.i32[3] = 0;
    v141 = 0;
  }

  if (v26 >= a2[16].u64 + 4 || a1 + 372 <= a2)
  {
    v34.i64[0] = 0xBF000000BF000000;
    v34.i64[1] = 0xBF000000BF000000;
    v35 = vmlaq_f32(*(a1 + 128), *(a1 + 128), vmulq_f32(vmulq_f32(v126, v34), a2[1]));
    *(a1 + 112) = vmlaq_f32(*(a1 + 112), *(a1 + 112), vmulq_f32(vmulq_f32(v125, v34), *a2));
    *(a1 + 128) = v35;
    v36 = vmlaq_f32(*(a1 + 160), *(a1 + 160), vmulq_f32(vmulq_f32(v128, v34), a2[3]));
    *(a1 + 144) = vmlaq_f32(*(a1 + 144), *(a1 + 144), vmulq_f32(vmulq_f32(v127, v34), a2[2]));
    *(a1 + 160) = v36;
    v37 = vmlaq_f32(*(a1 + 192), *(a1 + 192), vmulq_f32(vmulq_f32(v130, v34), a2[5]));
    *(a1 + 176) = vmlaq_f32(*(a1 + 176), *(a1 + 176), vmulq_f32(vmulq_f32(v129, v34), a2[4]));
    *(a1 + 192) = v37;
    v38 = vmlaq_f32(*(a1 + 224), *(a1 + 224), vmulq_f32(vmulq_f32(v132, v34), a2[7]));
    *(a1 + 208) = vmlaq_f32(*(a1 + 208), *(a1 + 208), vmulq_f32(vmulq_f32(v131, v34), a2[6]));
    *(a1 + 224) = v38;
    v39 = vmlaq_f32(*(a1 + 256), *(a1 + 256), vmulq_f32(vmulq_f32(v134, v34), a2[9]));
    *(a1 + 240) = vmlaq_f32(*(a1 + 240), *(a1 + 240), vmulq_f32(vmulq_f32(v133, v34), a2[8]));
    *(a1 + 256) = v39;
    v40 = vmlaq_f32(*(a1 + 288), *(a1 + 288), vmulq_f32(vmulq_f32(v136, v34), a2[11]));
    *(a1 + 272) = vmlaq_f32(*(a1 + 272), *(a1 + 272), vmulq_f32(vmulq_f32(v135, v34), a2[10]));
    *(a1 + 288) = v40;
    v41 = vmlaq_f32(*(a1 + 320), *(a1 + 320), vmulq_f32(vmulq_f32(v138, v34), a2[13]));
    *(a1 + 304) = vmlaq_f32(*(a1 + 304), *(a1 + 304), vmulq_f32(vmulq_f32(v137, v34), a2[12]));
    *(a1 + 320) = v41;
    a10 = vmulq_f32(vmulq_f32(v139, v34), a2[14]);
    a9 = vmulq_f32(vmulq_f32(v140, v34), a2[15]);
    v42 = vmlaq_f32(*(a1 + 352), *(a1 + 352), a9);
    v33 = 64;
    *(a1 + 336) = vmlaq_f32(*(a1 + 336), *(a1 + 336), a10);
    *(a1 + 352) = v42;
  }

  else
  {
    v33 = 0;
  }

  v43 = v33;
  do
  {
    *(v26 + v43 * 4) = *(v26 + v43 * 4) + (((v125.f32[v43] * -0.5) * a2->f32[v43]) * *(v26 + v43 * 4));
    ++v43;
  }

  while (v43 != 65);
  if (v14 <= a12 || a4 + 1024 >= &a12[32].u64[1])
  {
    v45 = v126;
    v46 = *(a4 + 1300);
    v47 = vmulq_f32(v125, *(a4 + 1284));
    v48 = vmulq_f32(v126, *(a4 + 1040));
    *a12 = vmulq_f32(v125, *(a4 + 1024));
    a12[1] = v48;
    *(a12 + 260) = v47;
    *(a12 + 276) = vmulq_f32(v45, v46);
    v49 = v128;
    v50 = *(a4 + 1332);
    v51 = vmulq_f32(v127, *(a4 + 1316));
    v52 = vmulq_f32(v128, *(a4 + 1072));
    a12[2] = vmulq_f32(v127, *(a4 + 1056));
    a12[3] = v52;
    *(a12 + 292) = v51;
    *(a12 + 308) = vmulq_f32(v49, v50);
    v53 = v130;
    v54 = *(a4 + 1364);
    v55 = vmulq_f32(v129, *(a4 + 1348));
    v56 = vmulq_f32(v130, *(a4 + 1104));
    a12[4] = vmulq_f32(v129, *(a4 + 1088));
    a12[5] = v56;
    *(a12 + 324) = v55;
    *(a12 + 340) = vmulq_f32(v53, v54);
    v57 = v132;
    v58 = *(a4 + 1396);
    v59 = vmulq_f32(v131, *(a4 + 1380));
    v60 = vmulq_f32(v132, *(a4 + 1136));
    a12[6] = vmulq_f32(v131, *(a4 + 1120));
    a12[7] = v60;
    *(a12 + 356) = v59;
    *(a12 + 372) = vmulq_f32(v57, v58);
    v61 = v134;
    v62 = *(a4 + 1428);
    v63 = vmulq_f32(v133, *(a4 + 1412));
    v64 = vmulq_f32(v134, *(a4 + 1168));
    a12[8] = vmulq_f32(v133, *(a4 + 1152));
    a12[9] = v64;
    *(a12 + 388) = v63;
    *(a12 + 404) = vmulq_f32(v61, v62);
    v65 = v136;
    v66 = *(a4 + 1460);
    v67 = vmulq_f32(v135, *(a4 + 1444));
    v68 = vmulq_f32(v136, *(a4 + 1200));
    a12[10] = vmulq_f32(v135, *(a4 + 1184));
    a12[11] = v68;
    *(a12 + 420) = v67;
    *(a12 + 436) = vmulq_f32(v65, v66);
    v69 = v138;
    v70 = *(a4 + 1492);
    v71 = vmulq_f32(v137, *(a4 + 1476));
    v72 = vmulq_f32(v138, *(a4 + 1232));
    a12[12] = vmulq_f32(v137, *(a4 + 1216));
    a12[13] = v72;
    *(a12 + 452) = v71;
    *(a12 + 468) = vmulq_f32(v69, v70);
    v73 = v140;
    v74 = *(a4 + 1524);
    a10 = vmulq_f32(v139, *(a4 + 1508));
    v75 = vmulq_f32(v140, *(a4 + 1264));
    a12[14] = vmulq_f32(v139, *(a4 + 1248));
    a12[15] = v75;
    a9 = vmulq_f32(v73, v74);
    v44 = 64;
    *(a12 + 484) = a10;
    *(a12 + 500) = a9;
  }

  else
  {
    v44 = 0;
  }

  v76 = &a12->f32[v44];
  v77 = (4 * v44 + a4 + 1024);
  do
  {
    v78 = v125.f32[v44];
    *v76 = v78 * *v77;
    v76[65] = v78 * v77[65];
    ++v44;
    ++v76;
    ++v77;
  }

  while (v44 != 65);
LABEL_40:
  v79 = (a1 + 112);
  a9.i32[0] = *(a1 + 32);
  a10.i32[0] = *(a1 + 36);
  if (a11)
  {
    v80 = *(a1 + 24);
    if (v79 >= a5 + 260 || a1 + 372 <= a5)
    {
      v87 = vdupq_lane_s32(*a10.f32, 0);
      v88 = vdupq_lane_s32(*a9.f32, 0);
      v89 = vmlaq_n_f32(*(a1 + 112), *a5, v80);
      v90 = vmlaq_n_f32(*(a1 + 128), *(a5 + 16), v80);
      v91 = vbslq_s8(vcgtq_f32(v88, v89), v88, v89);
      v92 = vbslq_s8(vcgtq_f32(v88, v90), v88, v90);
      v93 = vmlaq_n_f32(*(a1 + 144), *(a5 + 32), v80);
      v94 = vmlaq_n_f32(*(a1 + 160), *(a5 + 48), v80);
      v95 = vbslq_s8(vcgtq_f32(v88, v93), v88, v93);
      v96 = vbslq_s8(vcgtq_f32(v88, v94), v88, v94);
      v97 = vmlaq_n_f32(*(a1 + 176), *(a5 + 64), v80);
      v98 = vmlaq_n_f32(*(a1 + 192), *(a5 + 80), v80);
      *(a1 + 112) = vbslq_s8(vcgtq_f32(v91, v87), v87, v91);
      *(a1 + 128) = vbslq_s8(vcgtq_f32(v92, v87), v87, v92);
      v99 = vbslq_s8(vcgtq_f32(v88, v97), v88, v97);
      *(a1 + 144) = vbslq_s8(vcgtq_f32(v95, v87), v87, v95);
      *(a1 + 160) = vbslq_s8(vcgtq_f32(v96, v87), v87, v96);
      v100 = vbslq_s8(vcgtq_f32(v88, v98), v88, v98);
      *(a1 + 176) = vbslq_s8(vcgtq_f32(v99, v87), v87, v99);
      *(a1 + 192) = vbslq_s8(vcgtq_f32(v100, v87), v87, v100);
      v101 = vmlaq_n_f32(*(a1 + 208), *(a5 + 96), v80);
      v102 = vmlaq_n_f32(*(a1 + 224), *(a5 + 112), v80);
      v103 = vbslq_s8(vcgtq_f32(v88, v101), v88, v101);
      v104 = vbslq_s8(vcgtq_f32(v88, v102), v88, v102);
      *(a1 + 208) = vbslq_s8(vcgtq_f32(v103, v87), v87, v103);
      *(a1 + 224) = vbslq_s8(vcgtq_f32(v104, v87), v87, v104);
      v105 = vmlaq_n_f32(*(a1 + 240), *(a5 + 128), v80);
      v106 = vmlaq_n_f32(*(a1 + 256), *(a5 + 144), v80);
      v107 = vbslq_s8(vcgtq_f32(v88, v105), v88, v105);
      v108 = vbslq_s8(vcgtq_f32(v88, v106), v88, v106);
      *(a1 + 240) = vbslq_s8(vcgtq_f32(v107, v87), v87, v107);
      *(a1 + 256) = vbslq_s8(vcgtq_f32(v108, v87), v87, v108);
      v109 = vmlaq_n_f32(*(a1 + 272), *(a5 + 160), v80);
      v110 = vmlaq_n_f32(*(a1 + 288), *(a5 + 176), v80);
      v111 = vbslq_s8(vcgtq_f32(v88, v109), v88, v109);
      v112 = vbslq_s8(vcgtq_f32(v88, v110), v88, v110);
      v113 = *(a5 + 208);
      v114 = *(a1 + 320);
      v115 = vmlaq_n_f32(*(a1 + 304), *(a5 + 192), v80);
      *(a1 + 272) = vbslq_s8(vcgtq_f32(v111, v87), v87, v111);
      *(a1 + 288) = vbslq_s8(vcgtq_f32(v112, v87), v87, v112);
      v116 = vmlaq_n_f32(v114, v113, v80);
      v117 = vbslq_s8(vcgtq_f32(v88, v115), v88, v115);
      v118 = vbslq_s8(vcgtq_f32(v88, v116), v88, v116);
      *(a1 + 304) = vbslq_s8(vcgtq_f32(v117, v87), v87, v117);
      *(a1 + 320) = vbslq_s8(vcgtq_f32(v118, v87), v87, v118);
      v119 = vmlaq_n_f32(*(a1 + 336), *(a5 + 224), v80);
      v120 = vmlaq_n_f32(*(a1 + 352), *(a5 + 240), v80);
      v121 = vbslq_s8(vcgtq_f32(v88, v119), v88, v119);
      v122 = vbslq_s8(vcgtq_f32(v88, v120), v88, v120);
      *(a1 + 336) = vbslq_s8(vcgtq_f32(v121, v87), v87, v121);
      *(a1 + 352) = vbslq_s8(vcgtq_f32(v122, v87), v87, v122);
      v81 = 64;
    }

    else
    {
      v81 = 0;
    }

    v123 = v81;
    do
    {
      v124 = v79[v123] + (v80 * *(a5 + v123 * 4));
      if (v124 < a9.f32[0])
      {
        v124 = a9.f32[0];
      }

      if (a10.f32[0] < v124)
      {
        v124 = a10.f32[0];
      }

      v79[v123++] = v124;
    }

    while (v123 != 65);
  }

  else
  {
    v82 = 65;
    do
    {
      v83 = *a5;
      a5 += 4;
      v84 = v83;
      if (*v14 <= v14[65])
      {
        v85 = 24;
      }

      else
      {
        v85 = 28;
      }

      v86 = *v79 + (*(a1 + v85) * v84);
      if (v86 < a9.f32[0])
      {
        v86 = a9.f32[0];
      }

      if (a10.f32[0] < v86)
      {
        v86 = a10.f32[0];
      }

      *v79++ = v86;
      ++v14;
      --v82;
    }

    while (v82);
  }
}

void webrtc::BasicRegatheringController::BasicRegatheringController(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(a1 + 16) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_28829A470;
  *(a1 + 64) = *a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = 0;
  *(a1 + 88) = a4;
  operator new();
}

void webrtc::BasicRegatheringController::~BasicRegatheringController(webrtc::BasicRegatheringController *this)
{
  *this = &unk_28829A470;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = *v2;
    *(v3 + 4) = 0;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    MEMORY[0x2743DA540](v2, 0x20C4093837F09);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
}

{
  *this = &unk_28829A470;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = *v2;
    *(v3 + 4) = 0;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    MEMORY[0x2743DA540](v2, 0x20C4093837F09);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));

  JUMPOUT(0x2743DA540);
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::BasicRegatheringController,webrtc::IceTransportInternal *>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::BasicRegatheringController,webrtc::PacketTransportInternal *>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::BasicRegatheringController,std::optional<webrtc::NetworkRoute>>(void *a1, uint64_t a2)
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BasicRegatheringController::ScheduleRecurringRegatheringOnFailedNetworks(void)::$_0 &&>(webrtc::BasicRegatheringController **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);
  if (v2 && (*(*v2 + 56))(v2))
  {
    (*(**(v1 + 10) + 72))(*(v1 + 10));
  }

  return webrtc::BasicRegatheringController::ScheduleRecurringRegatheringOnFailedNetworks(v1);
}

void webrtc::rtcp::Remb::~Remb(webrtc::rtcp::Remb *this)
{
  *this = &unk_28829A490;
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829A490;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtcp::Remb::Parse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 <= 0xF)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/remb.cc");
    }

    return 0;
  }

  v10 = *(a2 + 8);
  if (bswap32(*(v10 + 8)) != 1380273474)
  {
    return 0;
  }

  v11 = *(v10 + 12);
  if (4 * v11 + 16 != v2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/remb.cc");
    }

    return 0;
  }

  *(a1 + 8) = bswap32(*v10);
  *(a1 + 12) = bswap32(*(v10 + 4));
  v12 = *(v10 + 13);
  v13 = v12 >> 2;
  v14 = __rev16(*(v10 + 14)) & 0xFFFCFFFF | ((v12 & 3) << 16);
  v15 = v14 << (*(v10 + 13) >> 2);
  *(a1 + 16) = v15;
  if ((v15 & 0x8000000000000000) != 0 || v15 >> v13 != v14)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)6,unsigned long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)6,unsigned long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/remb.cc");
    }

    return 0;
  }

  v17 = (a1 + 24);
  v16 = *(a1 + 24);
  *(a1 + 32) = v16;
  if (v11 > (*(a1 + 40) - v16) >> 2)
  {
    operator new();
  }

  if (v11)
  {
    v18 = 0;
    v19 = (v10 + 16);
    do
    {
      v20 = *v19++;
      v36 = bswap32(v20);
      std::vector<unsigned int>::push_back[abi:sn200100](v17, &v36);
      ++v18;
    }

    while (v18 < v11);
  }

  return 1;
}

uint64_t webrtc::rtcp::Remb::Create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    (*(*a1 + 16))(a1);
    v13 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = -113;
    *(a2 + *a3 + 1) = -50;
    *(a2 + *a3 + 2) = (v13 - 4) >> 10;
    *(a2 + *a3 + 3) = (v13 - 4) >> 2;
    v14 = *a3 + 4;
    *a3 = v14;
    v15 = (a2 + v14);
    *v15 = bswap32(*(a1 + 8));
    v15[1] = bswap32(*(a1 + 12));
    v16 = *a3 + 8;
    *a3 = v16;
    *(a2 + v16) = 1112360274;
    v17 = *a3;
    v18 = *(a1 + 16);
    if (v18 < 0x40000)
    {
      v21 = 0;
    }

    else
    {
      v19 = 0;
      do
      {
        v20 = v18 >> 19;
        v18 >>= 1;
        ++v19;
      }

      while (v20);
      v21 = 4 * v19;
    }

    v22 = (*(a1 + 32) - *(a1 + 24)) >> 2;
    *a3 = v17 + 5;
    *(a2 + v17 + 4) = v22;
    v23 = v21 + BYTE2(v18);
    v24 = (*a3)++;
    *(a2 + v24) = v23;
    *(a2 + *a3) = bswap32(v18) >> 16;
    v25 = *a3 + 2;
    *a3 = v25;
    v26 = *(a1 + 24);
    for (i = *(a1 + 32); v26 != i; *a3 = v25)
    {
      v28 = *v26++;
      *(a2 + v25) = bswap32(v28);
      v25 = *a3 + 4;
    }

    return 1;
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }
}

void webrtc::RembThrottler::OnReceiveBitrateChanged(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  pthread_mutex_lock((a1 + 48));
  if (((103 * a3 * 0x28F5C28F5C28F5DuLL) >> 64) > *(a1 + 120))
  {
    v7 = *(a1 + 112);
    v8 = v7 + 200000;
    if (v7 == 0x8000000000000000)
    {
      v8 = 0x8000000000000000;
    }

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v8;
    }

    if (v6 < v7)
    {

      pthread_mutex_unlock((a1 + 48));
      return;
    }
  }

  *(a1 + 112) = v6;
  *(a1 + 120) = a3;
  if (*(a1 + 128) >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(a1 + 128);
  }

  pthread_mutex_unlock((a1 + 48));
  v13 = 0;
  v14 = 0;
  __p = 0;
  v10 = a2[1] - *a2;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v15 = v9;
  v11 = *(a1 + 32);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    goto LABEL_21;
  }

  (*(*v11 + 48))(v11, &v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void webrtc::RembThrottler::~RembThrottler(webrtc::RembThrottler *this)
{
  *this = &unk_28829A4C0;
  pthread_mutex_destroy((this + 48));
  v2 = *(this + 4);
  if (v2 == (this + 8))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

{
  *this = &unk_28829A4C0;
  pthread_mutex_destroy((this + 48));
  v2 = *(this + 4);
  if (v2 == (this + 8))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::voe::RemixAndResample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v9 = v4;
  v11 = v10;
  v12 = v3;
  v13 = *v3;
  v14 = *(v4 + 40);
  if (*v3 > v14)
  {
    v15 = v3[1];
    v16 = v15 * v14;
    v17 = &v67;
    if (!(v15 * v14))
    {
      v17 = 0;
    }

    if (v13 < 2)
    {
      goto LABEL_40;
    }

    v18 = v3[2];
    if (v14 == 1)
    {
      v19 = v15 * v13;
      if (v19 >= 1)
      {
        v20 = &v18[v19];
        if (v13 <= 1)
        {
          v47 = v17;
          do
          {
            v48 = *v18++;
            *v47++ = v48 / v13;
          }

          while (v18 < v20);
        }

        else
        {
          v21 = v13;
          v22 = v17;
          do
          {
            v23 = &v18[v21];
            v25 = v18 + 2;
            v24 = *v18;
            v26 = v18 + 1;
            if (&v18[v21] > v18 + 2)
            {
              v25 = &v18[v21];
            }

            v27 = v25 - v18 - 3;
            if (v27 < 0x1E)
            {
              goto LABEL_68;
            }

            v28 = (v27 >> 1) + 1;
            v26 += v28 & 0xFFFFFFFFFFFFFFF0;
            v29 = 0uLL;
            v30 = *v18;
            v31 = (v18 + 9);
            v32 = v28 & 0xFFFFFFFFFFFFFFF0;
            v33 = 0uLL;
            v34 = 0uLL;
            do
            {
              v35 = v31[-1];
              v29 = vaddw_high_s16(v29, v35);
              v30 = vaddw_s16(v30, *v35.i8);
              v34 = vaddw_high_s16(v34, *v31);
              v33 = vaddw_s16(v33, *v31->i8);
              v31 += 2;
              v32 -= 16;
            }

            while (v32);
            v24 = vaddvq_s32(vaddq_s32(vaddq_s32(v33, v30), vaddq_s32(v34, v29)));
            if (v28 != (v28 & 0xFFFFFFFFFFFFFFF0))
            {
LABEL_68:
              do
              {
                v36 = *v26++;
                v24 += v36;
              }

              while (v26 < v23);
            }

            *v22++ = v24 / v13;
            v18 = v26;
          }

          while (v26 < v20);
        }
      }

      goto LABEL_40;
    }

    if (v13 == 4 && v14 == 2 && v15)
    {
      if (v15 < 8)
      {
        goto LABEL_34;
      }

      v37 = 2 * (v15 - 1);
      v38 = &v17[v37];
      v39 = v68;
      if (!v16)
      {
        v39 = 2;
      }

      v40 = v39 + v37 * 2;
      v41 = v38 >= v17 && v40 >= v39;
      v42 = v41 && (v15 - 1) >> 62 == 0;
      if (v42 && (v17 >= &v18[4 * v15] || v18 >= &v17[2 * v15]))
      {
        v43 = v15 & 0x7FFFFFFFFFFFFFF8;
        v61 = v15 & 0x7FFFFFFFFFFFFFF8;
        v62 = v17;
        v63 = v3[2];
        do
        {
          v70 = vld4q_s16(v63);
          v63 += 32;
          v69.val[0] = vhaddq_s16(v70.val[1], v70.val[0]);
          v69.val[1] = vhaddq_s16(v70.val[3], v70.val[2]);
          vst2q_s16(v62, v69);
          v62 += 16;
          v61 -= 8;
        }

        while (v61);
        if (v15 == v43)
        {
          goto LABEL_40;
        }
      }

      else
      {
LABEL_34:
        v43 = 0;
      }

      v44 = v15 - v43;
      v45 = &v17[2 * v43 + 1];
      v46 = &v18[4 * v43 + 2];
      do
      {
        *(v45 - 1) = (*(v46 - 1) + *(v46 - 2)) >> 1;
        *v45 = (v46[1] + *v46) >> 1;
        v45 += 2;
        v46 += 4;
        --v44;
      }

      while (v44);
    }

LABEL_40:
    *v3 = v14;
    v3[2] = v17;
    v3[3] = v16;
    v13 = v14;
    v14 = *(v4 + 40);
  }

  v49 = *(v3 + 1);
  v66[0] = *v3;
  v66[1] = v49;
  v50 = *(v4 + 24);
  v51 = v50 * v13;
  if (v50 * v13 >= 0x1E01)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 174, "total_samples <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v5, v6, v7, v8, v50 * v13);
    goto LABEL_65;
  }

  if (v13 >= 0x19)
  {
LABEL_65:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 175, "num_channels <= kMaxNumberOfAudioChannels", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v5, v6, v7, v8, v13);
    webrtc::RemoteAudioSource::~RemoteAudioSource(v64);
    return;
  }

  if (*(v4 + 15432) == 1)
  {
    bzero((v4 + 72), 2 * v51);
    *(v9 + 15432) = 0;
  }

  *(v9 + 40) = v13;
  v65[0] = v13;
  v65[1] = v50;
  if (v51)
  {
    v52 = v9 + 72;
  }

  else
  {
    v52 = 0;
  }

  v65[2] = v52;
  v65[3] = v50 * v13;
  webrtc::PushResampler<short>::Resample(v11, v66, v65, v4, v5, v6, v7, v8);
  if (*v12 == 1 && v14 == 2 && *(v9 + 40) == 1)
  {
    v53 = *(v9 + 24);
    if ((2 * v53) <= 0x1E00)
    {
      v54 = *(v9 + 15432);
      *(v9 + 40) = 2;
      if ((v54 & 1) == 0)
      {
        if (2 * v53)
        {
          v55 = v9 + 72;
        }

        else
        {
          v55 = 0;
        }

        v56 = (v53 - 1);
        if (v53 - 1 >= 0)
        {
          v57 = v56 + 1;
          v58 = (v55 + 2 * v56);
          v59 = (v55 + 4 * v56 + 2);
          do
          {
            v60 = *v58--;
            *(v59 - 1) = v60;
            *v59 = v60;
            v59 -= 2;
            --v57;
          }

          while (v57);
        }
      }
    }
  }
}

void webrtc::RemoteAudioSource::~RemoteAudioSource(webrtc::RemoteAudioSource *this)
{
  *this = &unk_28829A4E8;
  *(this + 1) = &unk_28829A568;
  if (*(this + 21))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/remote_audio_source.cc");
    }

    if (*(this + 21))
    {
      v9 = *(this + 20);
      v10 = *(*(this + 19) + 8);
      v11 = *v9;
      *(v11 + 8) = v10;
      *v10 = v11;
      *(this + 21) = 0;
      if (v9 != (this + 152))
      {
        do
        {
          v12 = *(v9 + 1);
          operator delete(v9);
          v9 = v12;
        }

        while (v12 != (this + 152));
      }
    }
  }

  pthread_mutex_destroy((this + 88));
  if (*(this + 10))
  {
    v13 = *(this + 9);
    v14 = *(*(this + 8) + 8);
    v15 = *v13;
    *(v15 + 8) = v14;
    *v14 = v15;
    *(this + 10) = 0;
    if (v13 != (this + 64))
    {
      do
      {
        v16 = *(v13 + 1);
        operator delete(v13);
        v13 = v16;
      }

      while (v16 != (this + 64));
    }
  }

  *this = &unk_288295D28;
  *(this + 1) = &unk_288295DA8;
  if (*(this + 4))
  {
    v17 = *(this + 3);
    v18 = *(*(this + 2) + 8);
    v19 = *v17;
    *(v19 + 8) = v18;
    *v18 = v19;
    *(this + 4) = 0;
    if (v17 != (this + 16))
    {
      do
      {
        v20 = *(v17 + 1);
        operator delete(v17);
        v17 = v20;
      }

      while (v20 != (this + 16));
    }
  }
}

void webrtc::RemoteAudioSource::SetVolume(webrtc::RemoteAudioSource *this, double a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::StringFormat("RAS::%s({volume=%.2f})", &__p, "SetVolume", *&a2);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/remote_audio_source.cc");
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  v11 = this + 64;
  for (i = *(this + 9); i != v11; i = *(i + 8))
  {
    (***(i + 16))(*(i + 16), a2);
  }
}

void *webrtc::RemoteAudioSource::UnregisterAudioObserver(void *result, uint64_t a2)
{
  v2 = result + 8;
  v22 = &v22;
  __p = &v22;
  v3 = result[9];
  if (v3 == result + 8)
  {
    return result;
  }

  if (&v22 != v2)
  {
    v4 = 0;
    v5 = &v22;
    while (1)
    {
      v6 = v3[1];
      if (v3[2] == a2)
      {
        if (v6 == v2)
        {
          v7 = 1;
          if (v3 != v6)
          {
            goto LABEL_13;
          }
        }

        else
        {
          do
          {
            v7 = v6[2] == a2;
            if (v6[2] != a2)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != v2);
          if (v3 != v6)
          {
LABEL_13:
            v5 = *v6;
            v8 = 1;
            if (*v6 != v3)
            {
              v9 = v3;
              do
              {
                v9 = v9[1];
                ++v8;
              }

              while (v9 != v5);
            }

            result[10] -= v8;
            v4 += v8;
            v10 = v5[1];
            v11 = *v3;
            *(v11 + 8) = v10;
            *v10 = v11;
            v12 = v22;
            v22[1] = v3;
            *v3 = v12;
            v22 = v5;
            v5[1] = &v22;
            if (v7)
            {
              goto LABEL_4;
            }

LABEL_17:
            v6 = v6[1];
            goto LABEL_4;
          }
        }

        if (!v7)
        {
          goto LABEL_17;
        }
      }

LABEL_4:
      v3 = v6;
      if (v6 == v2)
      {
        if (v4)
        {
          result = __p;
          v13 = v5[1];
          v14 = *__p;
          *(v14 + 8) = v13;
          *v13 = v14;
          v24 = 0;
          if (result != &v22)
          {
            do
            {
              v15 = result[1];
              operator delete(result);
              result = v15;
            }

            while (v15 != &v22);
          }
        }

        return result;
      }
    }
  }

  do
  {
    v16 = v3[1];
    if (v3[2] == a2)
    {
      if (v16 == &v22)
      {
        v17 = 1;
      }

      else if (v16[2] == a2)
      {
        do
        {
          v16 = v16[1];
          v17 = v16 == &v22;
        }

        while (v16 != &v22 && v16[2] == a2);
      }

      else
      {
        v17 = 0;
      }

      if (v3 != v16)
      {
        v18 = *v16;
        v19 = *(*v16 + 8);
        v20 = *v3;
        *(v20 + 8) = v19;
        *v19 = v20;
        v21 = v22;
        v22[1] = v3;
        *v3 = v21;
        v22 = v18;
        v18[1] = &v22;
      }

      if (!v17)
      {
        v16 = v16[1];
      }
    }

    v3 = v16;
  }

  while (v16 != &v22);
  return result;
}

uint64_t webrtc::RemoteAudioSource::RemoveSink(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 88));
  v4 = (a1 + 152);
  v26 = &v26;
  __p = &v26;
  v5 = *(a1 + 160);
  if (v5 == (a1 + 152))
  {
    return pthread_mutex_unlock((a1 + 88));
  }

  if (&v26 != v4)
  {
    v6 = 0;
    v7 = &v26;
    while (1)
    {
      v8 = v5[1];
      if (v5[2] == a2)
      {
        if (v8 == v4)
        {
          v9 = 1;
          if (v5 != v8)
          {
            goto LABEL_13;
          }
        }

        else
        {
          do
          {
            v9 = v8[2] == a2;
            if (v8[2] != a2)
            {
              break;
            }

            v8 = v8[1];
          }

          while (v8 != v4);
          if (v5 != v8)
          {
LABEL_13:
            v7 = *v8;
            v10 = 1;
            if (*v8 != v5)
            {
              v11 = v5;
              do
              {
                v11 = v11[1];
                ++v10;
              }

              while (v11 != v7);
            }

            *(a1 + 168) -= v10;
            v6 += v10;
            v12 = v7[1];
            v13 = *v5;
            *(v13 + 8) = v12;
            *v12 = v13;
            v14 = v26;
            v26[1] = v5;
            *v5 = v14;
            v26 = v7;
            v7[1] = &v26;
            if (v9)
            {
              goto LABEL_4;
            }

LABEL_17:
            v8 = v8[1];
            goto LABEL_4;
          }
        }

        if (!v9)
        {
          goto LABEL_17;
        }
      }

LABEL_4:
      v5 = v8;
      if (v8 == v4)
      {
        if (v6)
        {
          v15 = __p;
          v16 = v7[1];
          v17 = *__p;
          *(v17 + 8) = v16;
          *v16 = v17;
          v28 = 0;
          if (v15 != &v26)
          {
            do
            {
              v18 = v15[1];
              operator delete(v15);
              v15 = v18;
            }

            while (v18 != &v26);
          }
        }

        return pthread_mutex_unlock((a1 + 88));
      }
    }
  }

  do
  {
    v20 = v5[1];
    if (v5[2] == a2)
    {
      if (v20 == &v26)
      {
        v21 = 1;
      }

      else if (v20[2] == a2)
      {
        do
        {
          v20 = v20[1];
          v21 = v20 == &v26;
        }

        while (v20 != &v26 && v20[2] == a2);
      }

      else
      {
        v21 = 0;
      }

      if (v5 != v20)
      {
        v22 = *v20;
        v23 = *(*v20 + 8);
        v24 = *v5;
        *(v24 + 8) = v23;
        *v23 = v24;
        v25 = v26;
        v26[1] = v5;
        *v5 = v25;
        v26 = v22;
        v22[1] = &v26;
      }

      if (!v21)
      {
        v20 = v20[1];
      }
    }

    v5 = v20;
  }

  while (v20 != &v26);
  return pthread_mutex_unlock((a1 + 88));
}

void webrtc::RemoteAudioSource::AudioDataProxy::~AudioDataProxy(webrtc::RemoteAudioSource::AudioDataProxy *this)
{
  *this = &unk_28829A598;
  v2 = *(this + 1);
  if (v2[14] != 1 || (v3 = v2, (**v2)(), v4 = *(v3 + 5), v7[0] = v3, v8 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RemoteAudioSource::OnAudioChannelGone(void)::$_0>, v9 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RemoteAudioSource::OnAudioChannelGone(void)::$_0 &&>, (*(*v4 + 8))(v4, v7, &v6, &v5), v8(1, v7, v7), (v2 = *(this + 1)) != 0))
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_28829A598;
  v2 = *(this + 1);
  if (v2[14] != 1 || (v3 = v2, (**v2)(), v4 = *(v3 + 5), v7[0] = v3, v8 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RemoteAudioSource::OnAudioChannelGone(void)::$_0>, v9 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RemoteAudioSource::OnAudioChannelGone(void)::$_0 &&>, (*(*v4 + 8))(v4, v7, &v6, &v5), v8(1, v7, v7), (v2 = *(this + 1)) != 0))
  {
    (*(*v2 + 8))(v2);
  }

  MEMORY[0x2743DA540](this, 0xA1C40BD48D6D6);
}

uint64_t webrtc::RemoteAudioSource::AudioDataProxy::OnData(webrtc::RemoteAudioSource::AudioDataProxy *this, const Data *a2)
{
  v3 = *(this + 1);
  pthread_mutex_lock((v3 + 88));
  for (i = *(v3 + 160); i != v3 + 152; i = *(i + 8))
  {
    (*(**(i + 16) + 8))(*(i + 16), a2->var0.var0, 16, *&a2->var1.var0[16], *&a2->var1.var0[24], a2->var0.var1, 0, 0);
  }

  return pthread_mutex_unlock((v3 + 88));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RemoteAudioSource::OnAudioChannelGone(void)::$_0 &&>(uint64_t *a1)
{
  result = *a1;
  if (*(result + 168))
  {
    v3 = result + 152;
    v4 = *(result + 160);
    v5 = *(*(result + 152) + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(result + 168) = 0;
    if (v4 != (result + 152))
    {
      v7 = v4;
      do
      {
        v8 = v7[1];
        operator delete(v7);
        v7 = v8;
      }

      while (v8 != v3);
      result = *a1;
    }
  }

  if (*(result + 176) != 2)
  {
    *(result + 176) = 2;

    return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RemoteAudioSource::OnAudioChannelGone(void)::$_0>(char a1, uint64_t *a2, uint64_t *a3)
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

void webrtc::RemoteBitrateEstimatorAbsSendTime::~RemoteBitrateEstimatorAbsSendTime(webrtc::RemoteBitrateEstimatorAbsSendTime *this)
{
  *this = &unk_28829A5C0;
  *(this + 79) = &unk_288293910;
  if (*(this + 687) < 0)
  {
    operator delete(*(this + 83));
  }

  v2 = *(this + 80);
  if (v2)
  {
    *(this + 81) = v2;
    operator delete(v2);
  }

  *(this + 71) = &unk_288293910;
  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  v3 = *(this + 72);
  if (v3)
  {
    *(this + 73) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 35));
  if (*(this + 29))
  {
    v4 = *(this + 28);
    v5 = *(*(this + 27) + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(this + 29) = 0;
    if (v4 != (this + 216))
    {
      do
      {
        v7 = *(v4 + 1);
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != (this + 216));
    }
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 14);
  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    std::deque<long long>::~deque[abi:sn200100]((v8 + 96));
    MEMORY[0x2743DA540](v8, 0x1080C40DFEA68C8);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    MEMORY[0x2743DA540](v9, 0x1000C40BDE76CD9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v10 + 8))(v10);
    }
  }
}

{
  webrtc::RemoteBitrateEstimatorAbsSendTime::~RemoteBitrateEstimatorAbsSendTime(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::RemoteBitrateEstimatorAbsSendTime::IncomingPacket(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 37))
  {
    goto LABEL_22;
  }

  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v3 == v4)
  {
    goto LABEL_22;
  }

  while (*v3 != *(a2 + 37))
  {
    v3 += 4;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  v6 = *(a2 + 88);
  if (v6)
  {
    v6 = *(v6 + 16) + *(a2 + 96);
  }

  if (v3[1] != 3)
  {
LABEL_22:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/remote_bitrate_estimator_abs_send_time.cc");
    }

    return;
  }

  v7 = (*(v6 + *(v3 + 1)) << 16) | (*(v6 + *(v3 + 1) + 1) << 8) | *(v6 + *(v3 + 1) + 2);
  v8 = *(a2 + 112);
  v134 = *(a2 + 24) + *(a2 + 2);
  if ((*(a1 + 264) & 1) == 0)
  {
    *(a1 + 264) = 1;
  }

  v132 = v7 << 8;
  v9 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if (v8 % 0x3E8 <= 0x1F3)
  {
    v10 = v8 / 0x3E8;
  }

  else
  {
    v10 = v8 / 0x3E8 + 1;
  }

  if (-v8 % 0x3E8uLL <= 0x1F4)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 - -v8 / 0x3E8uLL;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  webrtc::RateStatistics::Rate((a1 + 112), v13);
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    if (*(a1 + 208) != 1)
    {
      goto LABEL_28;
    }

    webrtc::RateStatistics::Reset((a1 + 112));
    v15 = 0;
  }

  *(a1 + 208) = v15;
LABEL_28:
  if (v8 % 0x3E8 <= 0x1F3)
  {
    v23 = v8 / 0x3E8;
  }

  else
  {
    v23 = v8 / 0x3E8 + 1;
  }

  if (-v8 % 0x3E8uLL <= 0x1F4)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 - -v8 / 0x3E8uLL;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = v23;
  }

  webrtc::RateStatistics::Update((a1 + 112), v134, v26);
  if ((*(a1 + 248) - 0x7FFFFFFFFFFFFFFFLL) <= 1)
  {
    *(a1 + 248) = v9;
  }

  v137 = 0;
  v136 = 0;
  v135 = 0;
  v27 = *(a1 + 272);
  v28 = (a1 + 280);
  if (v27 != (a1 + 280))
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      do
      {
        v30 = v27[1];
        v31 = v30;
        v32 = v27;
        if (v30)
        {
          do
          {
            v33 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v33 = v32[2];
            v34 = *v33 == v32;
            v32 = v33;
          }

          while (!v34);
        }

        v35 = v27;
        if (v30)
        {
          do
          {
            v36 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v36 = v35[2];
            v34 = *v36 == v35;
            v35 = v36;
          }

          while (!v34);
        }

        if (*(a1 + 272) == v27)
        {
          *(a1 + 272) = v36;
        }

        v29 = *(a1 + 280);
        --*(a1 + 288);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v29, v27);
        operator delete(v27);
        v27 = v33;
      }

      while (v33 != v28);
    }

    else
    {
      do
      {
        v38 = v27[5];
        if (v38 != 0x8000000000000000 && (v9 == 0x8000000000000000 || (v38 != 0x7FFFFFFFFFFFFFFFLL ? (v39 = (v9 - v38) <= 2000000) : (v39 = 1), v39)))
        {
          v46 = v27[1];
          if (v46)
          {
            do
            {
              v43 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v43 = v27[2];
              v34 = *v43 == v27;
              v27 = v43;
            }

            while (!v34);
          }
        }

        else
        {
          v40 = v27[1];
          v41 = v40;
          v42 = v27;
          if (v40)
          {
            do
            {
              v43 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v43 = v42[2];
              v34 = *v43 == v42;
              v42 = v43;
            }

            while (!v34);
          }

          v44 = v27;
          if (v40)
          {
            do
            {
              v45 = v40;
              v40 = *v40;
            }

            while (v40);
          }

          else
          {
            do
            {
              v45 = v44[2];
              v34 = *v45 == v44;
              v44 = v45;
            }

            while (!v34);
          }

          if (*(a1 + 272) == v27)
          {
            *(a1 + 272) = v45;
          }

          v37 = *(a1 + 280);
          --*(a1 + 288);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v37, v27);
          operator delete(v27);
        }

        v27 = v43;
      }

      while (v43 != v28);
    }
  }

  v133 = v8;
  if (!*(a1 + 288))
  {
    operator new();
  }

  v47 = *(a2 + 12);
  v48 = *v28;
  if (!*v28)
  {
    v49 = (a1 + 280);
    v51 = v8 / 0x3E8;
    if (*(a1 + 272) != v28)
    {
      goto LABEL_97;
    }

    v56 = 0;
    v49 = (a1 + 280);
    v58 = (a1 + 280);
    v55 = v133;
LABEL_111:
    if (v56)
    {
      v60 = v58 + 1;
    }

    else
    {
      v60 = v49;
    }

    goto LABEL_114;
  }

  v49 = (a1 + 280);
  v50 = *v28;
  v51 = v8 / 0x3E8;
  do
  {
    v52 = *(v50 + 32);
    v53 = v52 >= v47;
    v54 = v52 < v47;
    if (v53)
    {
      v49 = v50;
    }

    v50 = *(v50 + 8 * v54);
  }

  while (v50);
  v55 = v133;
  if (v49 != v28 && v47 >= *(v49 + 8))
  {
    v49[5] = v9;
    goto LABEL_116;
  }

  v56 = *v49;
  if (*(a1 + 272) == v49)
  {
    v58 = v49;
    goto LABEL_111;
  }

  if (v56)
  {
    v57 = *v49;
    do
    {
      v58 = v57;
      v57 = v57[1];
    }

    while (v57);
    goto LABEL_100;
  }

LABEL_97:
  v58 = v49;
  do
  {
    v59 = v58;
    v58 = v58[2];
  }

  while (*v58 == v59);
  v56 = 0;
  v55 = v133;
LABEL_100:
  if (*(v58 + 8) < v47)
  {
    goto LABEL_111;
  }

  if (v48)
  {
    v60 = (a1 + 280);
    while (1)
    {
      while (1)
      {
        v61 = v48;
        v62 = *(v48 + 32);
        if (v62 <= v47)
        {
          break;
        }

        v48 = *v61;
        v60 = v61;
        if (!*v61)
        {
          goto LABEL_115;
        }
      }

      if (v62 >= v47)
      {
        break;
      }

      v60 = v61 + 1;
      v48 = v61[1];
      if (!v48)
      {
        goto LABEL_115;
      }
    }

LABEL_114:
    if (!*v60)
    {
      goto LABEL_115;
    }

    goto LABEL_116;
  }

  if (!*v28)
  {
LABEL_115:
    operator new();
  }

LABEL_116:
  if (v134 >= 201)
  {
    if (*(a1 + 528) != 1 || v9 != 0x7FFFFFFFFFFFFFFFLL && (v63 = *(a1 + 248), v63 != 0x8000000000000000) && (v9 == 0x8000000000000000 || v63 == 0x7FFFFFFFFFFFFFFFLL || (v9 - v63) < 2000000))
    {
      if (*(a1 + 240) <= 0xEuLL && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v125, v126, v127, v128, v129, v130, v131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/remote_bitrate_estimator_abs_send_time.cc");
      }

      operator new();
    }
  }

  if (v55 - 1000 * v51 <= 0x1F3)
  {
    v64 = v51;
  }

  else
  {
    v64 = v51 + 1;
  }

  if (-v55 % 0x3E8uLL <= 0x1F4)
  {
    v65 = 0;
  }

  else
  {
    v65 = -1;
  }

  v66 = v65 - -v55 / 0x3E8uLL;
  if (v55 < 0)
  {
    v67 = v66;
  }

  else
  {
    v67 = v64;
  }

  v68 = v9 / 0x3E8;
  if (v9 % 0x3E8 <= 0x1F3)
  {
    v69 = v9 / 0x3E8;
  }

  else
  {
    v69 = v68 + 1;
  }

  if (-v9 % 0x3E8uLL <= 0x1F4)
  {
    v70 = 0;
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 - -v9 / 0x3E8uLL;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v72 = v71;
  }

  else
  {
    v72 = v69;
  }

  if (webrtc::InterArrival::ComputeDeltas(*(a1 + 56), v132, v67, v72, v134, &v137, &v136, &v135))
  {
    LODWORD(v73) = v137;
    v74 = v73 * 1000.0 * 0.0000000149011612;
    webrtc::OveruseEstimator::Update(*(a1 + 64), v136, v135, *(a1 + 108), v74);
    v75 = *(a1 + 64);
    v76 = *v75;
    if (v55 < 0)
    {
      if (-v55 % 0x3E8uLL <= 0x1F4)
      {
        v78 = 0;
      }

      else
      {
        v78 = -1;
      }

      v77 = v78 - -v55 / 0x3E8uLL;
      if (v76 < 2)
      {
        goto LABEL_181;
      }
    }

    else
    {
      if (v55 - 1000 * v51 <= 0x1F3)
      {
        v77 = v51;
      }

      else
      {
        v77 = v51 + 1;
      }

      if (v76 < 2)
      {
        goto LABEL_181;
      }
    }

    v79 = *(v75 + 16);
    if (v76 >= 0x3C)
    {
      v76 = 60;
    }

    v80 = v79 * v76;
    v81 = *(a1 + 72);
    if (v80 <= v81)
    {
      v86 = v80 < -v81;
      *(a1 + 96) = 0xBFF0000000000000;
      *(a1 + 104) = 0;
    }

    else
    {
      v82 = *(a1 + 96);
      if (v82 == -1.0)
      {
        v83 = v74 * 0.5;
      }

      else
      {
        v83 = v74 + v82;
      }

      *(a1 + 96) = v83;
      v84 = *(a1 + 104);
      *(a1 + 104) = v84 + 1;
      v85 = v83 <= 10.0 || v84 < 1;
      if (v85 || *(a1 + 88) > v79)
      {
        goto LABEL_168;
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      v86 = 2;
    }

    *(a1 + 108) = v86;
LABEL_168:
    *(a1 + 88) = v79;
    v87 = fabs(v80);
    if (v87 <= v81 + 15.0)
    {
      v88 = *(a1 + 80);
      v89 = v77 - v88;
      if ((v77 - v88) >= 100)
      {
        v89 = 100;
      }

      if (v88 == -1)
      {
        v90 = 0;
      }

      else
      {
        v90 = v89;
      }

      v91 = v81 + (v87 - v81) * *(&xmmword_273BA01C0 + (v87 < v81)) * v90;
      v92 = 600.0;
      if (v91 < 600.0)
      {
        v92 = v91;
      }

      if (v91 > 6.0)
      {
        v93 = v92;
      }

      else
      {
        v93 = 6.0;
      }

      *(a1 + 72) = v93;
    }

    *(a1 + 80) = v77;
  }

LABEL_181:
  v94 = *(a1 + 256);
  if ((v94 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
    goto LABEL_208;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    if (-v9 % 0x3E8uLL <= 0x1F4)
    {
      v96 = 0;
    }

    else
    {
      v96 = -1;
    }

    v95 = v96 - -v9 / 0x3E8uLL;
  }

  else if (v9 % 0x3E8 <= 0x1F3)
  {
    v95 = v9 / 0x3E8;
  }

  else
  {
    v95 = v68 + 1;
  }

  v97 = v94 / 0x3E8uLL;
  if (v94 % 0x3E8uLL > 0x1F3)
  {
    ++v97;
  }

  if (-v94 % 0x3E8uLL <= 0x1F4)
  {
    v98 = 0;
  }

  else
  {
    v98 = -1;
  }

  v99 = v98 - -v94 / 0x3E8uLL;
  if (v94 < 0)
  {
    v100 = v99;
  }

  else
  {
    v100 = v97;
  }

  v101 = v95 - v100;
  v102 = 640000000 / llround(*(a1 + 312) * 0.05);
  if (v102 >= 1000000)
  {
    v102 = 1000000;
  }

  if (v102 <= 200000)
  {
    v102 = 200000;
  }

  v103 = v102 % 0x3E8 <= 0x1F3 ? (274877907 * v102) >> 38 : ((274877907 * v102) >> 38) + 1;
  if (v101 > v103 || *(a1 + 108) == 2 && (v119.var0 = v55, v120 = webrtc::BitrateTracker::Rate((a1 + 112), v119), (v121 & 1) != 0) && webrtc::AimdRateControl::TimeToReduceFurther(a1 + 296, v9, v120))
  {
LABEL_208:
    v104 = *(a1 + 108);
    if (v55 - 1000 * v51 <= 0x1F3)
    {
      v105 = v51;
    }

    else
    {
      v105 = v51 + 1;
    }

    if (-v55 % 0x3E8uLL <= 0x1F4)
    {
      v106 = 0;
    }

    else
    {
      v106 = -1;
    }

    v107 = v106 - -v55 / 0x3E8uLL;
    if (v55 < 0)
    {
      v108 = v107;
    }

    else
    {
      v108 = v105;
    }

    v109 = webrtc::RateStatistics::Rate((a1 + 112), v108);
    if (v110)
    {
      v111 = v109;
    }

    else
    {
      v111 = 0;
    }

    LODWORD(v138) = v104;
    v139 = v111;
    LOBYTE(v140) = v110 & 1;
    if (*(a1 + 528))
    {
LABEL_221:
      webrtc::AimdRateControl::ChangeBitrate(a1 + 296, &v138, v9);
      if (*(a1 + 528) == 1)
      {
        v112 = *(a1 + 312);
        *(a1 + 256) = v9;
        v113 = *(a1 + 48);
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v114 = *(a1 + 288);
        if (v114)
        {
          if (!(v114 >> 62))
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v115 = *(a1 + 272);
        if (v115 != v28)
        {
          do
          {
            std::vector<unsigned int>::push_back[abi:sn200100](&v138, v115 + 8);
            v116 = v115[1];
            if (v116)
            {
              do
              {
                v117 = v116;
                v116 = *v116;
              }

              while (v116);
            }

            else
            {
              do
              {
                v117 = v115[2];
                v34 = *v117 == v115;
                v115 = v117;
              }

              while (!v34);
            }

            v115 = v117;
          }

          while (v117 != v28);
        }

        (**v113)(v113, &v138, v112);
        if (v138)
        {
          v139 = v138;
          operator delete(v138);
        }
      }

      return;
    }

    v118 = *(a1 + 520);
    if ((v118 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
    {
      if (v110)
      {
        *(a1 + 520) = v9;
      }

      goto LABEL_221;
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((v110 & 1) == 0)
      {
        goto LABEL_221;
      }
    }

    else
    {
      v122 = v9 - v118;
      v124 = v9 != 0x8000000000000000 && v122 > 5000000;
      if ((v124 & v110 & 1) == 0)
      {
        goto LABEL_221;
      }
    }

    *(a1 + 312) = v111;
    *(a1 + 528) = 1;
    goto LABEL_221;
  }
}

void webrtc::RemoteBitrateEstimatorAbsSendTime::RemoveStream(webrtc::RemoteBitrateEstimatorAbsSendTime *this, unsigned int a2)
{
  v3 = *(this + 35);
  if (v3)
  {
    v4 = this + 280;
    v5 = v3;
    do
    {
      v6 = *(v5 + 8);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v4 = v5;
      }

      v5 = v5[v8];
    }

    while (v5);
    if (v4 != this + 280 && *(v4 + 8) <= a2)
    {
      v9 = *(v4 + 1);
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
        v11 = v4;
        do
        {
          v10 = *(v11 + 2);
          v12 = *v10 == v11;
          v11 = v10;
        }

        while (!v12);
      }

      if (*(this + 34) == v4)
      {
        *(this + 34) = v10;
      }

      --*(this + 36);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v3, v4);

      operator delete(v4);
    }
  }
}

uint64_t webrtc::RemoteBitrateEstimatorAbsSendTime::LatestEstimate(webrtc::RemoteBitrateEstimatorAbsSendTime *this)
{
  if (*(this + 528) == 1 && *(this + 36))
  {
    return *(this + 39);
  }

  else
  {
    return 0;
  }
}

void webrtc::RemoteBitrateEstimatorSingleStream::~RemoteBitrateEstimatorSingleStream(webrtc::RemoteBitrateEstimatorSingleStream *this)
{
  *this = &unk_28829A608;
  *(this + 65) = &unk_288293910;
  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  v2 = *(this + 66);
  if (v2)
  {
    *(this + 67) = v2;
    operator delete(v2);
  }

  *(this + 57) = &unk_288293910;
  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  v3 = *(this + 58);
  if (v3)
  {
    *(this + 59) = v3;
    operator delete(v3);
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 10);
  std::__tree<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>>>::destroy(*(this + 8));
  v4 = *(this + 1);
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 8))(v4);
    }
  }
}

{
  *this = &unk_28829A608;
  *(this + 65) = &unk_288293910;
  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  v2 = *(this + 66);
  if (v2)
  {
    *(this + 67) = v2;
    operator delete(v2);
  }

  *(this + 57) = &unk_288293910;
  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  v3 = *(this + 58);
  if (v3)
  {
    *(this + 59) = v3;
    operator delete(v3);
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 10);
  std::__tree<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>>>::destroy(*(this + 8));
  v4 = *(this + 1);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RemoteBitrateEstimatorSingleStream::IncomingPacket(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 33))
  {
    goto LABEL_13;
  }

  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v4 == v5)
  {
    goto LABEL_13;
  }

  while (*v4 != *(a2 + 33))
  {
    v4 += 4;
    if (v4 == v5)
    {
      goto LABEL_13;
    }
  }

  v6 = *(a2 + 88);
  if (v6)
  {
    v7 = *(v6 + 16) + *(a2 + 96);
    if (v4[1] == 3)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 1;
    v11 = 0;
    if (*(a1 + 624))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = 0;
  if (v4[1] != 3)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 0;
  v9 = (v7 + *(v4 + 1));
  v10 = *v9;
  v11 = v9[2] | (v10 << 16) | (v9[1] << 8);
  if ((v10 & 0x80u) != 0)
  {
    v11 |= 0xFF000000;
  }

  if ((*(a1 + 624) & 1) == 0)
  {
LABEL_14:
    *(a1 + 624) = 1;
  }

LABEL_15:
  v12 = *(a2 + 12);
  v68 = *(a2 + 8);
  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v14 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v15 = *(a1 + 64);
  if (!v15)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v16 = v15;
      v17 = *(v15 + 8);
      if (v17 <= v12)
      {
        break;
      }

      v15 = *v16;
      if (!*v16)
      {
        goto LABEL_24;
      }
    }

    if (v17 >= v12)
    {
      break;
    }

    v15 = v16[1];
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  v16[5] = v14;
  v18 = v14 / 0x3E8;
  if (v14 % 0x3E8 <= 0x1F3)
  {
    v19 = v14 / 0x3E8;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (-v14 % 0x3E8uLL <= 0x1F4)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 - -v14 / 0x3E8uLL;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  v23 = webrtc::RateStatistics::Rate((a1 + 80), v22);
  if (v24)
  {
    *(a1 + 176) = v23;
  }

  else if (*(a1 + 176) >= 1)
  {
    webrtc::RateStatistics::Reset((a1 + 80));
    *(a1 + 176) = 0;
  }

  v25 = *(a2 + 24);
  v26 = *(a2 + 2);
  if (v14 % 0x3E8 <= 0x1F3)
  {
    v27 = v14 / 0x3E8;
  }

  else
  {
    v27 = v18 + 1;
  }

  if (-v14 % 0x3E8uLL <= 0x1F4)
  {
    v28 = 0;
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 - -v14 / 0x3E8uLL;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = v27;
  }

  webrtc::RateStatistics::Update((a1 + 80), v25 + v26, v30);
  v67 = *(v16 + 83);
  v71 = 0;
  v70 = 0;
  v69 = 0;
  if (v14 % 0x3E8 <= 0x1F3)
  {
    v31 = v14 / 0x3E8;
  }

  else
  {
    v31 = v18 + 1;
  }

  if (-v14 % 0x3E8uLL <= 0x1F4)
  {
    v32 = 0;
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 - -v14 / 0x3E8uLL;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v34 = v33;
  }

  else
  {
    v34 = v31;
  }

  v35 = *(a2 + 112);
  v36 = v35 / 0x3E8uLL;
  if (v35 % 0x3E8uLL > 0x1F3)
  {
    ++v36;
  }

  if (-v35 % 0x3E8uLL <= 0x1F4)
  {
    v37 = 0;
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 - -v35 / 0x3E8uLL;
  if (v35 < 0)
  {
    v39 = v38;
  }

  else
  {
    v39 = v36;
  }

  if (webrtc::InterArrival::ComputeDeltas((v16 + 6), v68 + v13, v39, v34, v25 + v26, &v71, &v70, &v69))
  {
    LODWORD(v40) = v71;
    v41 = v40 * 0.0111111111;
    webrtc::OveruseEstimator::Update((v16 + 19), v70, v69, *(v16 + 83), v41);
    v42 = *(v16 + 38);
    if (v42 >= 2)
    {
      v43 = *(v16 + 21);
      if (v42 >= 0x3C)
      {
        v42 = 60;
      }

      v44 = v43 * v42;
      v45 = *(v16 + 37);
      if (v44 <= v45)
      {
        v50 = v44 < -v45;
        v16[40] = 0xBFF0000000000000;
        *(v16 + 82) = 0;
      }

      else
      {
        v46 = *(v16 + 40);
        if (v46 == -1.0)
        {
          v47 = v41 * 0.5;
        }

        else
        {
          v47 = v41 + v46;
        }

        *(v16 + 40) = v47;
        v48 = *(v16 + 82);
        *(v16 + 82) = v48 + 1;
        v49 = v47 <= 10.0 || v48 < 1;
        if (v49 || *(v16 + 39) > v43)
        {
          goto LABEL_80;
        }

        v16[40] = 0;
        *(v16 + 82) = 0;
        v50 = 2;
      }

      *(v16 + 83) = v50;
LABEL_80:
      *(v16 + 39) = v43;
      v51 = fabs(v44);
      if (v51 <= v45 + 15.0)
      {
        v52 = v16[38];
        v53 = v34 - v52;
        if (v34 - v52 >= 100)
        {
          v53 = 100;
        }

        if (v52 == -1)
        {
          v54 = 0;
        }

        else
        {
          v54 = v53;
        }

        v55 = v45 + (v51 - v45) * *(&xmmword_273BA01C0 + (v51 < v45)) * v54;
        v56 = 600.0;
        if (v55 < 600.0)
        {
          v56 = v55;
        }

        if (v55 > 6.0)
        {
          v57 = v56;
        }

        else
        {
          v57 = 6.0;
        }

        *(v16 + 37) = v57;
      }

      v16[38] = v34;
    }
  }

  if (*(v16 + 83) == 2)
  {
    v58 = v14 % 0x3E8 <= 0x1F3 ? v14 / 0x3E8 : v18 + 1;
    v59 = -v14 % 0x3E8uLL <= 0x1F4 ? 0 : -1;
    v60 = v59 - -v14 / 0x3E8uLL;
    v61 = (v14 & 0x8000000000000000) != 0 ? v60 : v58;
    v62 = webrtc::RateStatistics::Rate((a1 + 80), v61);
    if (v63)
    {
      if (v67 != 2)
      {
        goto LABEL_114;
      }

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_114;
      }

      v64 = *(a1 + 392);
      if (v64 == 0x8000000000000000)
      {
        goto LABEL_114;
      }

      v65 = *(a1 + 440);
      if (v65 >= 200000)
      {
        v65 = 200000;
      }

      if (v65 <= 10000)
      {
        v65 = 10000;
      }

      if (v14 != 0x8000000000000000 && v64 != 0x7FFFFFFFFFFFFFFFLL && (v14 - v64) >= v65 || *(a1 + 416) == 1 && llround(*(a1 + 200) * 0.5) > v62)
      {
LABEL_114:
        v66.var0 = v14;
        webrtc::RemoteBitrateEstimatorSingleStream::UpdateEstimate(a1, v66);
      }
    }
  }
}

void webrtc::RemoteBitrateEstimatorSingleStream::UpdateEstimate(Timestamp *this, Timestamp a2)
{
  var0 = this[7].var0;
  v5 = &this[8];
  if (var0 == &this[8])
  {
    var0_high = 0;
    goto LABEL_45;
  }

  if (a2.var0 != 0x7FFFFFFFFFFFFFFFLL)
  {
    var0_high = 0;
    do
    {
      v16 = var0[5].var0;
      if (v16 != 0x8000000000000000 && (a2.var0 == 0x8000000000000000 || (v16 != 0x7FFFFFFFFFFFFFFFLL ? (v17 = a2.var0 - v16 < 2000001) : (v17 = 1), v17)))
      {
        if (SHIDWORD(var0[41].var0) > var0_high)
        {
          var0_high = HIDWORD(var0[41].var0);
        }

        v24 = var0[1].var0;
        if (v24)
        {
          do
          {
            v21 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = var0;
            var0 = var0[2].var0;
          }

          while (var0->var0 != v25);
          v21 = var0;
        }
      }

      else
      {
        v18 = var0[1].var0;
        v19 = v18;
        p_var0 = &var0->var0;
        if (v18)
        {
          do
          {
            v21 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v21 = p_var0[2];
            v12 = *v21 == p_var0;
            p_var0 = v21;
          }

          while (!v12);
        }

        v22 = var0;
        if (v18)
        {
          do
          {
            v23 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v23 = v22[2].var0;
            v12 = *v23 == v22;
            v22 = v23;
          }

          while (!v12);
        }

        if (this[7].var0 == var0)
        {
          this[7].var0 = v23;
        }

        v15 = this[8].var0;
        --this[9].var0;
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v15, &var0->var0);
        std::deque<long long>::~deque[abi:sn200100](&var0[31]);
        operator delete(var0);
      }

      var0 = v21;
    }

    while (v21 != v5);
LABEL_45:
    if (!this[9].var0)
    {
      return;
    }

LABEL_48:
    v26 = a2.var0 / 0x3E8;
    if (a2.var0 % 0x3E8 > 0x1F3)
    {
      ++v26;
    }

    if (-a2.var0 % 0x3E8uLL <= 0x1F4)
    {
      v27 = 0;
    }

    else
    {
      v27 = -1;
    }

    if (a2.var0 < 0)
    {
      v28 = v27 - -a2.var0 / 0x3E8uLL;
    }

    else
    {
      v28 = v26;
    }

    v29 = webrtc::RateStatistics::Rate(&this[10], v28);
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    v46 = var0_high;
    v47 = v31;
    v48 = v30 & 1;
    if (this[52].var0)
    {
      goto LABEL_60;
    }

    v39 = this[51].var0;
    if ((v39 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
    {
      if (v30)
      {
        this[51].var0 = a2.var0;
      }

      goto LABEL_60;
    }

    if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((v30 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v40 = a2.var0 - v39;
      v42 = a2.var0 != 0x8000000000000000 && v40 > 5000000;
      if ((v42 & v30 & 1) == 0)
      {
LABEL_60:
        webrtc::AimdRateControl::ChangeBitrate(&this[23], &v46, a2.var0);
        if (LOBYTE(this[52].var0) == 1)
        {
          v32 = this[25].var0;
          v33 = 640000000 / llround(v32 * 0.05);
          if (v33 >= 1000000)
          {
            v33 = 1000000;
          }

          if (v33 <= 200000)
          {
            v33 = 200000;
          }

          this[77].var0 = v33;
          v34 = this[6].var0;
          if (v34)
          {
            __p = 0;
            v44 = 0;
            v45 = 0;
            v35 = this[9].var0;
            if (v35)
            {
              if (!(v35 >> 62))
              {
                operator new();
              }

              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v36 = this[7].var0;
            if (v36 != v5)
            {
              do
              {
                std::vector<unsigned int>::push_back[abi:sn200100](&__p, v36 + 8);
                v37 = *(v36 + 1);
                if (v37)
                {
                  do
                  {
                    v38 = v37;
                    v37 = *v37;
                  }

                  while (v37);
                }

                else
                {
                  do
                  {
                    v38 = *(v36 + 2);
                    v12 = *v38 == v36;
                    v36 = v38;
                  }

                  while (!v12);
                }

                v36 = v38;
              }

              while (v38 != v5);
            }

            (**v34)(v34, &__p, v32);
            if (__p)
            {
              v44 = __p;
              operator delete(__p);
            }
          }
        }

        return;
      }
    }

    this[25].var0 = v31;
    LOBYTE(this[52].var0) = 1;
    goto LABEL_60;
  }

  do
  {
    v8 = var0[1].var0;
    v9 = v8;
    v10 = &var0->var0;
    if (v8)
    {
      do
      {
        v11 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v11 = v10[2];
        v12 = *v11 == v10;
        v10 = v11;
      }

      while (!v12);
    }

    v13 = var0;
    if (v8)
    {
      do
      {
        v14 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v14 = v13[2].var0;
        v12 = *v14 == v13;
        v13 = v14;
      }

      while (!v12);
    }

    if (this[7].var0 == var0)
    {
      this[7].var0 = v14;
    }

    v7 = this[8].var0;
    --this[9].var0;
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v7, &var0->var0);
    std::deque<long long>::~deque[abi:sn200100](&var0[31]);
    operator delete(var0);
    var0 = v11;
  }

  while (v11 != v5);
  var0_high = 0;
  if (this[9].var0)
  {
    goto LABEL_48;
  }
}

uint64_t webrtc::RemoteBitrateEstimatorSingleStream::Process(webrtc::RemoteBitrateEstimatorSingleStream *this)
{
  v2 = (*(**(this + 3) + 16))(*(this + 3));
  v3 = v2;
  v4 = v2;
  if (*(this + 608) == 1)
  {
    v5 = *(this + 77);
    v6 = *(this + 75);
    v7 = 0x8000000000000000;
    if (v5 != 0x8000000000000000 && v6 != 0x8000000000000000)
    {
      v7 = v6 + v5;
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v7;
    }
  }

  v10 = v2 / 0x3E8uLL;
  if (v2 % 0x3E8uLL > 0x1F3)
  {
    ++v10;
  }

  if (-v2 % 0x3E8uLL <= 0x1F4)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 - -v2 / 0x3E8uLL;
  if (v2 < 0)
  {
    v10 = v12;
  }

  v13 = v4 / 0x3E8uLL;
  if (v4 % 0x3E8uLL > 0x1F3)
  {
    ++v13;
  }

  if (-v4 % 0x3E8uLL <= 0x1F4)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 - -v4 / 0x3E8uLL;
  if (v4 >= 0)
  {
    v15 = v13;
  }

  if (v10 >= v15)
  {
    v19.var0 = v2;
    webrtc::RemoteBitrateEstimatorSingleStream::UpdateEstimate(this, v19);
    if ((*(this + 608) & 1) == 0)
    {
      *(this + 608) = 1;
    }

    *(this + 75) = v3;
    return *(this + 77);
  }

  else
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL && v3 != 0x8000000000000000)
    {
      if (v3 == 0x7FFFFFFFFFFFFFFFLL || v4 == 0x8000000000000000)
      {
        return 0x8000000000000000;
      }

      else
      {
        return v4 - v3;
      }
    }
  }

  return result;
}

void webrtc::RemoteBitrateEstimatorSingleStream::RemoveStream(webrtc::RemoteBitrateEstimatorSingleStream *this, unsigned int a2)
{
  v4 = this + 64;
  v3 = *(this + 8);
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 8);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 8) <= a2)
    {
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
        v12 = v5;
        do
        {
          v11 = *(v12 + 2);
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*(this + 7) == v5)
      {
        *(this + 7) = v11;
      }

      --*(this + 9);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v3, v5);
      std::deque<long long>::~deque[abi:sn200100](v5 + 31);

      operator delete(v5);
    }
  }
}

uint64_t webrtc::RemoteBitrateEstimatorSingleStream::LatestEstimate(webrtc::RemoteBitrateEstimatorSingleStream *this)
{
  if (*(this + 416) == 1 && *(this + 9))
  {
    return *(this + 25);
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::RemoteBitrateEstimatorSingleStream::Detector>>>::destroy(a1[1]);
    std::deque<long long>::~deque[abi:sn200100](a1 + 31);

    operator delete(a1);
  }
}

uint64_t webrtc::rtcp::GetRemoteEstimateSerializer(webrtc::rtcp *this)
{
  {
    operator new();
  }

  return webrtc::rtcp::GetRemoteEstimateSerializer(void)::serializer;
}

uint64_t webrtc::rtcp::anonymous namespace::DataRateSerializer::DataRateSerializer(uint64_t result, char a2, uint64_t a3)
{
  *result = a2;
  v3 = result + 8;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      *(result + 32) = v3;
      v7 = result;
      (*(**(a3 + 24) + 24))(*(a3 + 24));
      return v7;
    }

    else
    {
      v5 = result;
      v6 = (*(*v4 + 16))(*(a3 + 24), v3);
      result = v5;
      *(v5 + 32) = v6;
    }
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

void *std::vector<webrtc::rtcp::anonymous namespace::DataRateSerializer>::vector[abi:sn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void *webrtc::rtcp::anonymous namespace::RemoteEstimateSerializerImpl::RemoteEstimateSerializerImpl(void *result, void *a2)
{
  *result = &unk_28829A680;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void **std::vector<webrtc::rtcp::anonymous namespace::DataRateSerializer>::~vector[abi:sn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        if (v3 - 32 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v3 -= 40;
        v5 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void webrtc::rtcp::anonymous namespace::DataRateSerializer::~DataRateSerializer(webrtc::rtcp::_anonymous_namespace_::DataRateSerializer *this)
{
  v1 = this + 8;
  v2 = *(this + 4);
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

uint64_t std::function<webrtc::DataRate * ()(webrtc::NetworkStateEstimate *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void webrtc::rtcp::RemoteEstimate::~RemoteEstimate(webrtc::rtcp::RemoteEstimate *this)
{
  *this = &unk_28828CCD8;
  v1 = *(this + 5);
  *(this + 5) = 0;
  if (v1)
  {
    MEMORY[0x2743DA520](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_28828CCD8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtcp::anonymous namespace::RemoteEstimateSerializerImpl::Parse(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 & 3;
  if ((a3 & 3) != 0 || a3 < 1 || *(a1 + 8) == *(a1 + 16))
  {
    return v4 == 0;
  }

  v8 = a2;
  v9 = &a2[a3];
  while (1)
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v10 == v11)
    {
      goto LABEL_6;
    }

    while (*v10 != *v8)
    {
      v10 += 40;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    v12 = *(v10 + 4);
    v13 = (v8[1] << 16) | (v8[2] << 8) | v8[3];
    if (v13 != 0xFFFFFF)
    {
      break;
    }

    v15 = a4;
    if (!v12)
    {
      goto LABEL_16;
    }

    *(*(*v12 + 48))(v12, &v15) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
    v8 += 4;
    if (v8 >= v9)
    {
      return v4 == 0;
    }
  }

  v15 = a4;
  if (v12)
  {
    *(*(*v12 + 48))(v12, &v15) = 1000 * v13;
    goto LABEL_6;
  }

LABEL_16:
  v14 = std::__throw_bad_function_call[abi:sn200100]();
}

uint64_t webrtc::rtcp::anonymous namespace::RemoteEstimateSerializerImpl::Serialize@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  a2[1] = 0x3333333333333334 * ((v2 - v3) >> 3);
  if (v2 != v3)
  {
    operator new[]();
  }

  a2[2] = 0;
  *a2 = 0;
  return result;
}

void webrtc::rtcp::anonymous namespace::RemoteEstimateSerializerImpl::~RemoteEstimateSerializerImpl(webrtc::rtcp::_anonymous_namespace_::RemoteEstimateSerializerImpl *this)
{
  *this = &unk_28829A680;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        if (v3 - 32 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v3 -= 40;
        v5 -= 40;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_28829A680;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        if (v3 - 32 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v3 -= 40;
        v5 -= 40;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

webrtc::webrtc_checks_impl *webrtc::RemoteNtpTimeEstimator::UpdateRtcpTimestamp(void *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  result = webrtc::RtpToNtpEstimator::UpdateMeasurements((a1 + 12), a3, a4);
  if (result >= 2)
  {
    if (((a2 < 0xFFFFFFFF80000000) | (2 * (a2 > 0x7FFFFFFF))) <= 2)
    {
      v7 = *a1;
      v8 = (*(**a1 + 16))(*a1);
      (*(*v7 + 24))(v7, v8);
      webrtc::MovingPercentileFilter<long long>::Insert();
    }

    webrtc::webrtc_checks_impl::UnreachableCodeReached(result);
  }

  return result;
}

uint64_t webrtc::RemoteNtpTimeEstimator::EstimateNtp(webrtc::RemoteNtpTimeEstimator *this, unsigned int a2)
{
  if (*(this + 144) != 1)
  {
    return 0;
  }

  if (*(this + 164))
  {
    v3 = *(this + 40);
    v4 = a2 >= v3;
    v5 = a2 - v3;
    v6 = v5 != 0 && v4;
    if (v5 != 0x80000000)
    {
      v6 = v5 >= 0;
    }

    if (!v6)
    {
      v5 |= 0xFFFFFFFF00000000;
    }

    v7 = v5 + *(this + 19);
  }

  else
  {
    v7 = a2;
  }

  *(this + 19) = v7;
  *(this + 40) = a2;
  *(this + 164) = 1;
  v8 = *(this + 17) + v7 * *(this + 16) + 0.5;
  v9 = (v8 < 0.0) | (2 * (v8 > 1.84467441e19));
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
    }

    v10 = -1;
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v10 = v8;
    if (!v8)
    {
      return 0;
    }
  }

  v12 = *(this + 4);
  if (v12)
  {
    v12 = *(*(this + 5) + 32);
  }

  v13 = v12 + v10;
  v14 = (*(**this + 16))();
  v15 = v14;
  v16 = *(this + 21);
  v17 = v14 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0x8000000000000000;
  if (v17 || (v14 != 0x8000000000000000 ? (v18 = v16 == 0x7FFFFFFFFFFFFFFFLL) : (v18 = 1), !v18 ? (v19 = v14 - v16 < 10000001) : (v19 = 1), !v19))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/remote_ntp_time_estimator.cc");
    }

    *(this + 21) = v15;
  }

  return v13;
}

uint64_t webrtc::RenderBuffer::SpectralSums(uint64_t result, unint64_t a2, unint64_t a3, float32x4_t *__src, float32x4_t *__dst)
{
  v7 = a2;
  v8 = result;
  __src[16].i32[0] = 0;
  __src[14] = 0u;
  __src[15] = 0u;
  __src[12] = 0u;
  __src[13] = 0u;
  __src[10] = 0u;
  __src[11] = 0u;
  __src[8] = 0u;
  __src[9] = 0u;
  __src[6] = 0u;
  __src[7] = 0u;
  __src[4] = 0u;
  __src[5] = 0u;
  __src[2] = 0u;
  __src[3] = 0u;
  *__src = 0u;
  __src[1] = 0u;
  v9 = *(result + 8);
  v10 = *(v9 + 36);
  if (a2)
  {
    v11 = 0;
    v12 = *(v9 + 8);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 16) - v12) >> 3);
    while (v13 > v10)
    {
      v14 = (v12 + 24 * v10);
      v15 = *v14;
      v16 = v14[1];
      if (v15 != v16)
      {
        result = &v15[16].i32[65 * ((&v16[-17].u64[1] + 4 - v15) / 0x104uLL) + 1] > __src && v15 < &__src[16].i32[1];
        do
        {
          if (result)
          {
            v18 = 0;
          }

          else
          {
            v19 = vaddq_f32(v15[1], __src[1]);
            *__src = vaddq_f32(*v15, *__src);
            __src[1] = v19;
            v20 = vaddq_f32(v15[3], __src[3]);
            __src[2] = vaddq_f32(v15[2], __src[2]);
            __src[3] = v20;
            v21 = vaddq_f32(v15[5], __src[5]);
            __src[4] = vaddq_f32(v15[4], __src[4]);
            __src[5] = v21;
            v22 = vaddq_f32(v15[7], __src[7]);
            __src[6] = vaddq_f32(v15[6], __src[6]);
            __src[7] = v22;
            v23 = vaddq_f32(v15[9], __src[9]);
            __src[8] = vaddq_f32(v15[8], __src[8]);
            __src[9] = v23;
            v24 = vaddq_f32(v15[11], __src[11]);
            __src[10] = vaddq_f32(v15[10], __src[10]);
            __src[11] = v24;
            v25 = vaddq_f32(v15[13], __src[13]);
            __src[12] = vaddq_f32(v15[12], __src[12]);
            __src[13] = v25;
            v26 = vaddq_f32(v15[15], __src[15]);
            v18 = 64;
            __src[14] = vaddq_f32(v15[14], __src[14]);
            __src[15] = v26;
          }

          v27 = v18;
          do
          {
            __src->f32[v27] = v15->f32[v27] + __src->f32[v27];
            ++v27;
          }

          while (v27 != 65);
          v15 = (v15 + 260);
        }

        while (v15 != v16);
      }

      if (*v9 - 1 > v10)
      {
        ++v10;
      }

      else
      {
        v10 = 0;
      }

      if (++v11 == v7)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_44;
  }

LABEL_22:
  result = memmove(__dst, __src, 0x104uLL);
  if (v7 < a3)
  {
    v28 = *(v8 + 8);
    v29 = *(v28 + 8);
    v30 = 0xAAAAAAAAAAAAAAABLL * ((*(v28 + 16) - v29) >> 3);
    while (v30 > v10)
    {
      v31 = (v29 + 24 * v10);
      v32 = *v31;
      v33 = v31[1];
      if (v32 != v33)
      {
        v35 = &v32[16].i32[65 * ((&v33[-17].u64[1] + 4 - v32) / 0x104uLL) + 1] > __dst && v32 < &__dst[16].i32[1];
        do
        {
          if (v35)
          {
            v36 = 0;
          }

          else
          {
            v37 = vaddq_f32(v32[1], __dst[1]);
            *__dst = vaddq_f32(*v32, *__dst);
            __dst[1] = v37;
            v38 = vaddq_f32(v32[3], __dst[3]);
            __dst[2] = vaddq_f32(v32[2], __dst[2]);
            __dst[3] = v38;
            v39 = vaddq_f32(v32[5], __dst[5]);
            __dst[4] = vaddq_f32(v32[4], __dst[4]);
            __dst[5] = v39;
            v40 = vaddq_f32(v32[7], __dst[7]);
            __dst[6] = vaddq_f32(v32[6], __dst[6]);
            __dst[7] = v40;
            v41 = vaddq_f32(v32[9], __dst[9]);
            __dst[8] = vaddq_f32(v32[8], __dst[8]);
            __dst[9] = v41;
            v42 = vaddq_f32(v32[11], __dst[11]);
            __dst[10] = vaddq_f32(v32[10], __dst[10]);
            __dst[11] = v42;
            v43 = vaddq_f32(v32[13], __dst[13]);
            __dst[12] = vaddq_f32(v32[12], __dst[12]);
            __dst[13] = v43;
            v44 = vaddq_f32(v32[15], __dst[15]);
            v36 = 64;
            __dst[14] = vaddq_f32(v32[14], __dst[14]);
            __dst[15] = v44;
          }

          result = 4 * v36;
          do
          {
            *(__dst->f32 + result) = *(v32->f32 + result) + *(__dst->f32 + result);
            result += 4;
          }

          while (result != 260);
          v32 = (v32 + 260);
        }

        while (v32 != v33);
      }

      if (*v28 - 1 > v10)
      {
        ++v10;
      }

      else
      {
        v10 = 0;
      }

      if (++v7 == a3)
      {
        return result;
      }
    }

LABEL_44:
    __break(1u);
  }

  return result;
}

void webrtc::anonymous namespace::RenderDelayBufferImpl::Reset(webrtc::_anonymous_namespace_::RenderDelayBufferImpl *this, std::string::size_type a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 1036) = 0;
  *(this + 260) = 1;
  *(this + 1096) = 0u;
  v9 = *(this + 214);
  v10 = *(this + 162);
  v11 = (v10 + v9 + *(this + 206)) % *(this + 206);
  *(this + 215) = v11;
  if (*(this + 1084) == 1)
  {
    v12 = *(this + 270);
    if (v12 < 3)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v12 - 2);
    }

    v14 = ~*(this + 258);
    if (((*(this + 84) - *(this + 83)) >> 5) + v14 >= v13)
    {
      LODWORD(v15) = v13;
    }

    else
    {
      v15 = ((*(this + 84) - *(this + 83)) >> 5) + v14;
    }

    v16 = *(this + 159);
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
      v11 = *(this + 215);
      v9 = *(this + 214);
      v10 = *(this + 162);
    }

    *(this + 173) = (*(this + 172) - v15 + *(this + 164)) % *(this + 164);
    v17 = *(this + 182);
    v18 = *(this + 174);
    v19 = (v17 + v18 + v15) % v18;
    *(this + 183) = v19;
    *(this + 193) = (*(this + 192) + *(this + 184) + v15) % *(this + 184);
    if (v19 >= v17)
    {
      v18 = 0;
    }

    v20 = (*(this + 105) - *(this + 104)) >> 2;
    v21 = v19 + v18 - v17 - ((v20 + v11 - v9) % v20) / v10;
    if ((*(this + 784) & 1) == 0)
    {
      *(this + 784) = 1;
    }

    *(this + 97) = v21;
    v22 = this + 1088;
    goto LABEL_23;
  }

  v23 = *(this + 10);
  v24 = *(this + 159);
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
  }

  *(this + 173) = (*(this + 172) - v23 + *(this + 164)) % *(this + 164);
  *(this + 183) = (*(this + 182) + v23 + *(this + 174)) % *(this + 174);
  *(this + 193) = (*(this + 192) + v23 + *(this + 184)) % *(this + 184);
  if (*(this + 784) == 1)
  {
    v22 = this + 784;
LABEL_23:
    *v22 = 0;
  }
}

void webrtc::anonymous namespace::RenderDelayBufferImpl::~RenderDelayBufferImpl(webrtc::_anonymous_namespace_::RenderDelayBufferImpl *this)
{
  v2 = *(this + 126);
  if (v2)
  {
    *(this + 127) = v2;
    operator delete(v2);
  }

  v3 = *(this + 122);
  if (v3)
  {
    *(this + 123) = v3;
    operator delete(v3);
  }

  v4 = *(this + 119);
  if (v4)
  {
    *(this + 120) = v4;
    operator delete(v4);
  }

  v5 = *(this + 113);
  if (v5)
  {
    *(this + 114) = v5;
    operator delete(v5);
  }

  v6 = *(this + 104);
  if (v6)
  {
    *(this + 105) = v6;
    operator delete(v6);
  }

  v7 = *(this + 93);
  if (v7)
  {
    v8 = *(this + 94);
    v9 = *(this + 93);
    if (v8 != v7)
    {
      v10 = *(this + 94);
      do
      {
        v12 = *(v10 - 24);
        v10 -= 24;
        v11 = v12;
        if (v12)
        {
          *(v8 - 16) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(this + 93);
    }

    *(this + 94) = v7;
    operator delete(v9);
  }

  v13 = *(this + 88);
  if (v13)
  {
    v14 = *(this + 89);
    v15 = *(this + 88);
    if (v14 != v13)
    {
      v16 = *(this + 89);
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 16) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = *(this + 88);
    }

    *(this + 89) = v13;
    operator delete(v15);
  }

  v19 = *(this + 83);
  if (v19)
  {
    v20 = *(this + 84);
    v21 = *(this + 83);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 24);
        if (v22)
        {
          *(v20 - 16) = v22;
          operator delete(v22);
        }

        v20 -= 32;
      }

      while (v20 != v19);
      v21 = *(this + 83);
    }

    *(this + 84) = v19;
    operator delete(v21);
  }

  v23 = *(this + 1);
  *(this + 1) = 0;
  if (v23)
  {
    MEMORY[0x2743DA540](v23, 0xC400A2AC0F1);
  }
}

{

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::RenderDelayBufferImpl::Insert(uint64_t a1, std::string::size_type a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a2;
  ++*(a1 + 1056);
  if (*(a1 + 784) == 1)
  {
    if (*(a1 + 1036))
    {
      v10 = *(a1 + 1040);
      *(a1 + 1040) = v10 + 1;
      if (v10 >= *(a1 + 1044))
      {
        *(a1 + 1044) = v10 + 1;
        v11 = *(a1 + 636);
        if (v12 || (webrtc::LogMessage::streams_empty_ & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
        }
      }
    }

    else
    {
      *(a1 + 1036) = 1;
      *(a1 + 1040) = 1;
    }
  }

  v13 = *(a1 + 688);
  v14 = (*(a1 + 856) - *(a1 + 648) + *(a1 + 824)) % *(a1 + 824);
  *(a1 + 856) = v14;
  if (*(a1 + 656) - 1 > v13)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 688) = v15;
  v16 = *(a1 + 728);
  if (v16 <= 0)
  {
    *(a1 + 728) = *(a1 + 696) - 1;
    v17 = *(a1 + 768);
    if (v17 > 0)
    {
LABEL_16:
      *(a1 + 768) = v17 - 1;
      if (*(a1 + 860) == v14)
      {
        goto LABEL_17;
      }

LABEL_21:
      v18 = *(a1 + 692) == v15;
      if (*(a1 + 1064))
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else
  {
    *(a1 + 728) = v16 - 1;
    v17 = *(a1 + 768);
    if (v17 > 0)
    {
      goto LABEL_16;
    }
  }

  *(a1 + 768) = *(a1 + 736) - 1;
  if (*(a1 + 860) != v14)
  {
    goto LABEL_21;
  }

LABEL_17:
  v18 = 1;
  if (*(a1 + 1064))
  {
    goto LABEL_26;
  }

LABEL_22:
  v19 = *(v8 + 8);
  if (*(v8 + 16) == v19)
  {
    goto LABEL_84;
  }

  v20 = v19[11];
  v21 = ((((((((((((((((((((((*v19 * *v19) + 0.0) + (v19[1] * v19[1])) + (v19[2] * v19[2])) + (v19[3] * v19[3])) + (v19[4] * v19[4])) + (v19[5] * v19[5])) + (v19[6] * v19[6])) + (v19[7] * v19[7])) + (v19[8] * v19[8])) + (v19[9] * v19[9])) + (v19[10] * v19[10])) + (v20 * v20)) + (v19[12] * v19[12])) + (v19[13] * v19[13])) + (v19[14] * v19[14])) + (v19[15] * v19[15])) + (v19[16] * v19[16])) + (v19[17] * v19[17])) + (v19[18] * v19[18])) + (v19[19] * v19[19])) + (v19[20] * v19[20])) + (v19[21] * v19[21]);
  v22 = v19[33];
  v23 = (((((((((((((((((((((v21 + (v19[22] * v19[22])) + (v19[23] * v19[23])) + (v19[24] * v19[24])) + (v19[25] * v19[25])) + (v19[26] * v19[26])) + (v19[27] * v19[27])) + (v19[28] * v19[28])) + (v19[29] * v19[29])) + (v19[30] * v19[30])) + (v19[31] * v19[31])) + (v19[32] * v19[32])) + (v22 * v22)) + (v19[34] * v19[34])) + (v19[35] * v19[35])) + (v19[36] * v19[36])) + (v19[37] * v19[37])) + (v19[38] * v19[38])) + (v19[39] * v19[39])) + (v19[40] * v19[40])) + (v19[41] * v19[41])) + (v19[42] * v19[42])) + (v19[43] * v19[43]);
  v24 = v19[55];
  v25 = (((((((((((((((((((v23 + (v19[44] * v19[44])) + (v19[45] * v19[45])) + (v19[46] * v19[46])) + (v19[47] * v19[47])) + (v19[48] * v19[48])) + (v19[49] * v19[49])) + (v19[50] * v19[50])) + (v19[51] * v19[51])) + (v19[52] * v19[52])) + (v19[53] * v19[53])) + (v19[54] * v19[54])) + (v24 * v24)) + (v19[56] * v19[56])) + (v19[57] * v19[57])) + (v19[58] * v19[58])) + (v19[59] * v19[59])) + (v19[60] * v19[60])) + (v19[61] * v19[61])) + (v19[62] * v19[62])) + (v19[63] * v19[63]);
  v26 = *(a1 + 1072);
  if (v25 > ((*(a1 + 340) * *(a1 + 340)) * 64.0))
  {
    ++v26;
  }

  *(a1 + 1072) = v26;
  *(a1 + 1064) = v26 > 0x13;
LABEL_26:
  v27 = v15;
  v28 = *(a1 + 664);
  v29 = (*(a1 + 672) - v28) >> 5;
  if (v29 <= v27)
  {
    goto LABEL_84;
  }

  v30 = (v28 + 32 * v27);
  v31 = *v30;
  v32 = v30[1];
  if (v31)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = 0;
LABEL_32:
    v35 = 0;
    while (1)
    {
      v36 = *(a1 + 688);
      v37 = *(a1 + 664);
      if (v36 >= (*(a1 + 672) - v37) >> 5)
      {
        goto LABEL_84;
      }

      memmove((*(v37 + 32 * v36 + 8) + 4 * ((v35 + v34 * *(v37 + 32 * v36 + 4)) << 6)), (*(v8 + 8) + 4 * ((v35 + v34 * *(v8 + 4)) << 6)), 0x100uLL);
      if (v32 == ++v35)
      {
        if (++v34 != v31)
        {
          goto LABEL_32;
        }

        v38 = *(a1 + 672);
        v28 = *(a1 + 664);
        if (*(a1 + 632) == 1.0)
        {
          v29 = (v38 - v28) >> 5;
          break;
        }

        v132 = *(a1 + 688);
        v29 = (v38 - v28) >> 5;
        if (v29 > v132)
        {
          v133 = 0;
          v134 = 0;
          v135 = (a1 + 632);
          v136 = v28 + 32 * v132;
          v137 = *(v136 + 4);
          v139 = v136 + 8;
          v138 = *(v136 + 8);
          v140 = (*(v139 + 8) - v138) >> 2;
          v141 = v137 << 6;
LABEL_95:
          a2 = 0;
          a3 = (v137 * v134);
          a4 = (v134 * v141) << 32;
          a5 = v133;
          while (1)
          {
            a6 = (a3 + a2) << 6;
            if (v140 <= a6)
            {
              break;
            }

            a7 = (a4 + (a2 << 38)) >> 30;
            a8 = v138 + a7;
            if (v138 + a7 >= a1 + 636 || (a7 += v138 + 256, v135 >= a7))
            {
              v142 = *v135;
              a6 = v138 + 4 * a6;
              v143 = vmulq_n_f32(*(a6 + 16), *v135);
              *a6 = vmulq_n_f32(*a6, *v135);
              *(a6 + 16) = v143;
              v144 = vmulq_n_f32(*(a6 + 48), v142);
              *(a6 + 32) = vmulq_n_f32(*(a6 + 32), v142);
              *(a6 + 48) = v144;
              v145 = vmulq_n_f32(*(a6 + 80), v142);
              *(a6 + 64) = vmulq_n_f32(*(a6 + 64), v142);
              *(a6 + 80) = v145;
              v146 = vmulq_n_f32(*(a6 + 112), v142);
              *(a6 + 96) = vmulq_n_f32(*(a6 + 96), v142);
              *(a6 + 112) = v146;
              v147 = vmulq_n_f32(*(a6 + 128), v142);
              v148 = vmulq_n_f32(*(a6 + 144), v142);
              *(a6 + 128) = v147;
              *(a6 + 144) = v148;
              v149 = vmulq_n_f32(*(a6 + 176), *v135);
              *(a6 + 160) = vmulq_n_f32(*(a6 + 160), *v135);
              *(a6 + 176) = v149;
              v150 = vmulq_n_f32(*(a6 + 208), *v135);
              *(a6 + 192) = vmulq_n_f32(*(a6 + 192), *v135);
              *(a6 + 208) = v150;
              v151 = vmulq_n_f32(*(a6 + 240), *v135);
              *(a6 + 224) = vmulq_n_f32(*(a6 + 224), *v135);
              *(a6 + 240) = v151;
            }

            else
            {
              a6 = 0;
              a7 = v138 + 4 * a5;
              do
              {
                *(a7 + a6) = *v135 * *(a7 + a6);
                a6 += 4;
              }

              while (a6 != 256);
            }

            ++a2;
            a5 = (a5 + 64);
            if (a2 == v32)
            {
              ++v134;
              v133 = (v133 + v141);
              if (v134 == v31)
              {
                goto LABEL_38;
              }

              goto LABEL_95;
            }
          }
        }

        goto LABEL_84;
      }
    }
  }

LABEL_38:
  v39 = *(a1 + 688);
  if (v29 <= v39)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v40 = v28 + 32 * v39;
  v41 = *(a1 + 884);
  if (v41 == 2)
  {
    v75 = 0;
LABEL_54:
    memmove(&__dst, (v75 + *(v40 + 8)), 0x100uLL);
    goto LABEL_56;
  }

  v42 = (a1 + 864);
  if (v41)
  {
    v75 = 4 * (webrtc::AlignmentMixer::SelectChannel(v42, v40) << 6);
    goto LABEL_54;
  }

  v43 = *(v40 + 8);
  if (*(v40 + 16) == v43)
  {
    goto LABEL_84;
  }

  v44 = *v43;
  v45 = v43[1];
  v46 = v43[3];
  v154 = v43[2];
  v155 = v46;
  __dst = v44;
  v153 = v45;
  v47 = v43[4];
  v48 = v43[5];
  v49 = v43[7];
  v158 = v43[6];
  v159 = v49;
  v156 = v47;
  v157 = v48;
  v50 = v43[8];
  v51 = v43[9];
  v52 = v43[11];
  v162 = v43[10];
  v163 = v52;
  v160 = v50;
  v161 = v51;
  v53 = v43[12];
  v54 = v43[13];
  v55 = v43[15];
  v166 = v43[14];
  v167 = v55;
  v164 = v53;
  v165 = v54;
  v56 = *v42;
  if (*v42 >= 2)
  {
    v57 = 0;
    v58 = *(v40 + 8);
    v59 = (*(v40 + 16) - v58) >> 2;
    v60 = v58 + 256;
    v61 = 64;
    v62 = 1;
    do
    {
      v72 = (v62 << 6);
      if (v59 <= v72)
      {
        goto LABEL_84;
      }

      v73 = 4 * ((v57 << 6) + 64);
      a2 = v60 + v73;
      if (&__dst >= v60 + v73 || v58 + v73 >= &v168)
      {
        v63 = (v58 + 4 * v72);
        v64 = vaddq_f32(v63[1], v153);
        __dst = vaddq_f32(*v63, __dst);
        v153 = v64;
        v65 = vaddq_f32(v63[3], v155);
        v154 = vaddq_f32(v63[2], v154);
        v155 = v65;
        v66 = vaddq_f32(v63[5], v157);
        v156 = vaddq_f32(v63[4], v156);
        v157 = v66;
        v67 = vaddq_f32(v63[7], v159);
        v158 = vaddq_f32(v63[6], v158);
        v159 = v67;
        v68 = vaddq_f32(v63[9], v161);
        v160 = vaddq_f32(v63[8], v160);
        v161 = v68;
        v69 = vaddq_f32(v63[11], v163);
        v162 = vaddq_f32(v63[10], v162);
        v163 = v69;
        v70 = vaddq_f32(v63[13], v165);
        v164 = vaddq_f32(v63[12], v164);
        v165 = v70;
        v71 = vaddq_f32(v63[15], v167);
        v166 = vaddq_f32(v63[14], v166);
        v167 = v71;
      }

      else
      {
        for (i = 0; i != 64; ++i)
        {
          __dst.f32[i] = *(v58 + 4 * v61 + i * 4) + __dst.f32[i];
        }
      }

      ++v62;
      ++v57;
      v61 += 64;
    }

    while (v62 != v56);
  }

  v76 = *(a1 + 872);
  __dst = vmulq_n_f32(__dst, v76);
  v153 = vmulq_n_f32(v153, v76);
  v154 = vmulq_n_f32(v154, v76);
  v155 = vmulq_n_f32(v155, v76);
  v156 = vmulq_n_f32(v156, v76);
  v157 = vmulq_n_f32(v157, v76);
  v158 = vmulq_n_f32(v158, v76);
  v159 = vmulq_n_f32(v159, v76);
  v160 = vmulq_n_f32(v160, v76);
  v161 = vmulq_n_f32(v161, v76);
  v162 = vmulq_n_f32(v162, v76);
  v163 = vmulq_n_f32(v163, v76);
  v164 = vmulq_n_f32(v164, v76);
  v165 = vmulq_n_f32(v165, v76);
  v166 = vmulq_n_f32(v166, v76);
  v167 = vmulq_n_f32(v167, v76);
LABEL_56:
  v77 = *(a1 + 1016) - *(a1 + 1008);
  if (v77)
  {
    v78 = *(a1 + 1008);
  }

  else
  {
    v78 = 0;
  }

  webrtc::Decimator::Decimate((a1 + 944), __dst.f32, 64, v78, v77 >> 2);
  v79 = *(a1 + 1016);
  v80 = *(a1 + 1008);
  if (v79 != v80)
  {
    v81 = *(a1 + 832) + 4 * *(a1 + 856);
    v82 = v79 - v80 - 4;
    if (v82 < 0x4C || v79 > v81 && v80 < v81 + v79 - v80)
    {
      v83 = (*(a1 + 832) + 4 * *(a1 + 856));
      v84 = *(a1 + 1016);
      do
      {
LABEL_64:
        v85 = *(v84 - 4);
        v84 -= 4;
        *v83++ = v85;
      }

      while (v84 != v80);
      goto LABEL_65;
    }

    v125 = (v82 >> 2) + 1;
    v126 = 4 * (v125 & 0x7FFFFFFFFFFFFFF8);
    v83 = (v81 + v126);
    v84 = v79 - v126;
    v127 = (v81 + 16);
    v128 = (v79 - 16);
    v129 = v125 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v130 = vrev64q_s32(*v128);
      v131 = vrev64q_s32(v128[-1]);
      v127[-1] = vextq_s8(v130, v130, 8uLL);
      *v127 = vextq_s8(v131, v131, 8uLL);
      v127 += 2;
      v128 -= 2;
      v129 -= 8;
    }

    while (v129);
    if (v125 != (v125 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  v86 = *(a1 + 688);
  v87 = *(a1 + 664);
  v88 = (*(a1 + 672) - v87) >> 5;
  if (v88 <= v86)
  {
    goto LABEL_84;
  }

  v89 = 0;
  v90 = 0;
  while (1)
  {
    v91 = v87 + 32 * v86;
    if (v90 >= *(v91 + 4))
    {
      break;
    }

    v92 = (v90 << 6);
    v94 = v91 + 8;
    v93 = *(v91 + 8);
    if (v92 < (*(v94 + 8) - v93) >> 2 && v88 > v13)
    {
      v96 = (v87 + 32 * v13 + 8);
      v95 = *v96;
      if (v92 < (v96[1] - *v96) >> 2)
      {
        v97 = *(a1 + 768);
        v98 = *(a1 + 744);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 752) - v98) >> 3) > v97)
        {
          v100 = (v98 + 24 * v97);
          v99 = *v100;
          if (0xFC0FC0FC0FC0FC1 * ((v100[1] - *v100) >> 3) > v90)
          {
            webrtc::Aec3Fft::PaddedFft((a1 + 1000), (v93 + 4 * v92), 64, (v95 + 4 * v92), 64, 0, v99 + 520 * v90);
            v101 = *(a1 + 768);
            v102 = *(a1 + 744);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 752) - v102) >> 3) > v101)
            {
              v104 = (v102 + 24 * v101);
              v103 = *v104;
              if (0xFC0FC0FC0FC0FC1 * ((v104[1] - *v104) >> 3) > v90)
              {
                v105 = *(a1 + 728);
                v106 = *(a1 + 704);
                if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 712) - v106) >> 3) > v105)
                {
                  v107 = (v106 + 24 * v105);
                  v108 = *v107;
                  if (0xFC0FC0FC0FC0FC1 * ((v107[1] - *v107) >> 2) > v90)
                  {
                    v109 = v103 + 520 * v90;
                    v110 = v108 + 260 * v90;
                    v111 = (v109 + 260);
                    if (v110 >= v109 + 520 || v109 >= v108 + 260 * v90 + 260)
                    {
                      v113 = vmlaq_f32(vmulq_f32(*(v109 + 276), *(v109 + 276)), *(v109 + 16), *(v109 + 16));
                      *v110 = vmlaq_f32(vmulq_f32(*v111, *v111), *v109, *v109);
                      *(v110 + 16) = v113;
                      v114 = vmlaq_f32(vmulq_f32(*(v109 + 308), *(v109 + 308)), *(v109 + 48), *(v109 + 48));
                      *(v110 + 32) = vmlaq_f32(vmulq_f32(*(v109 + 292), *(v109 + 292)), *(v109 + 32), *(v109 + 32));
                      *(v110 + 48) = v114;
                      v115 = vmlaq_f32(vmulq_f32(*(v109 + 340), *(v109 + 340)), *(v109 + 80), *(v109 + 80));
                      *(v110 + 64) = vmlaq_f32(vmulq_f32(*(v109 + 324), *(v109 + 324)), *(v109 + 64), *(v109 + 64));
                      *(v110 + 80) = v115;
                      v116 = vmlaq_f32(vmulq_f32(*(v109 + 372), *(v109 + 372)), *(v109 + 112), *(v109 + 112));
                      *(v110 + 96) = vmlaq_f32(vmulq_f32(*(v109 + 356), *(v109 + 356)), *(v109 + 96), *(v109 + 96));
                      *(v110 + 112) = v116;
                      v117 = vmlaq_f32(vmulq_f32(*(v109 + 404), *(v109 + 404)), *(v109 + 144), *(v109 + 144));
                      *(v110 + 128) = vmlaq_f32(vmulq_f32(*(v109 + 388), *(v109 + 388)), *(v109 + 128), *(v109 + 128));
                      *(v110 + 144) = v117;
                      v118 = vmlaq_f32(vmulq_f32(*(v109 + 436), *(v109 + 436)), *(v109 + 176), *(v109 + 176));
                      *(v110 + 160) = vmlaq_f32(vmulq_f32(*(v109 + 420), *(v109 + 420)), *(v109 + 160), *(v109 + 160));
                      *(v110 + 176) = v118;
                      v119 = vmlaq_f32(vmulq_f32(*(v109 + 468), *(v109 + 468)), *(v109 + 208), *(v109 + 208));
                      v120 = vmlaq_f32(vmulq_f32(*(v109 + 484), *(v109 + 484)), *(v109 + 224), *(v109 + 224));
                      v121 = vmlaq_f32(vmulq_f32(*(v109 + 500), *(v109 + 500)), *(v109 + 240), *(v109 + 240));
                      v111 = (v109 + 516);
                      *(v110 + 192) = vmlaq_f32(vmulq_f32(*(v109 + 452), *(v109 + 452)), *(v109 + 192), *(v109 + 192));
                      *(v110 + 208) = v119;
                      *(v110 + 224) = v120;
                      *(v110 + 240) = v121;
                      v110 += 256;
                      v112 = 256;
                    }

                    else
                    {
                      v112 = 0;
                    }

                    v122 = v103 + v89;
                    do
                    {
                      v123 = v111->f32[0];
                      v111 = (v111 + 4);
                      *v110 = (v123 * v123) + (*(v122 + v112) * *(v122 + v112));
                      v110 += 4;
                      v112 += 4;
                    }

                    while (v112 != 260);
                    ++v90;
                    v86 = *(a1 + 688);
                    v87 = *(a1 + 664);
                    v88 = (*(a1 + 672) - v87) >> 5;
                    v89 += 520;
                    if (v88 > v86)
                    {
                      continue;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_84;
  }

LABEL_85:
  if (!v18)
  {
    return 0;
  }

  return 2;
}