void webrtc::GoogCcNetworkController::MaybeTriggerOnNetworkChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 304);
  v7 = *(v6 + 488);
  if ((*(v6 + 1977) & 1) == 0 && *(v6 + 568) < v7)
  {
    v7 = *(v6 + 568);
  }

  v8 = *(v6 + 552);
  v9 = *(v6 + 560);
  v10 = *(v6 + 504);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v6 + 504);
  }

  v12 = *(v6 + 1912);
  v13 = *(a1 + 296);
  v14 = 0.0;
  if (!v13)
  {
    v10 = v11;
    goto LABEL_33;
  }

  if (*(v13 + 16) == 1)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      v16 = *(v13 + 24);
      if (*v13 == 1)
      {
        v16 += *(v13 + 32);
      }

      v17 = v16 / v15;
      if (v17 <= 1.5)
      {
        if (v17 <= 1.0)
        {
          if (v17 < 0.1)
          {
            *(v13 + 40) = 0x3FF0000000000000;
            v18 = 1.0;
LABEL_23:
            v20 = *(v13 + 4);
            if (v20 >= v11)
            {
              v21 = v11;
            }

            else
            {
              v21 = v20;
            }

            if (v20 <= (v18 * v11))
            {
              v19 = (v18 * v11);
            }

            else
            {
              v19 = v21;
            }

            goto LABEL_29;
          }

          v18 = *(v13 + 40) * 1.05;
          if (v18 > 1.0)
          {
            v18 = 1.0;
          }
        }

        else
        {
          v18 = *(v13 + 40) * 0.95;
        }
      }

      else
      {
        v18 = *(v13 + 40) * 0.9;
      }

      *(v13 + 40) = v18;
      goto LABEL_23;
    }
  }

  v19 = v11;
LABEL_29:
  v10 = v10;
  if (v10 <= v19)
  {
    v10 = v19;
  }

  if (*(a1 + 224) == 1)
  {
    v14 = (v11 - v10) / v11;
  }

LABEL_33:
  v22 = *(v6 + 392);
  v23 = v22;
  if (v22 == -INFINITY)
  {
    v23 = 0x8000000000000000;
  }

  if (v22 == INFINITY)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v10 < v23)
  {
    v23 = v10;
  }

  if (v11 != *(a1 + 800) || v12 != *(a1 + 824) || *(a1 + 829) != 1 || v8 != *(a1 + 828) || v9 != *(a1 + 832) || v10 != *(a1 + 808) || v23 != *(a1 + 816))
  {
    *(a1 + 800) = v11;
    *(a1 + 808) = v10;
    *(a1 + 828) = v8 | 0x100;
    *(a1 + 832) = v9;
    *(a1 + 816) = v23;
    *(a1 + 824) = v12;
    v24 = *(a1 + 312);
    v25 = *v24 * v11 / 1000.0;
    *(v24 + 40) = v25;
    v26 = 500 * v25 / 8;
    if (*(v24 + 56) <= 500 * v25 / -8)
    {
      v27 = 500 * v25 / -8;
    }

    else
    {
      v27 = *(v24 + 56);
    }

    if (v26 < v27)
    {
      v27 = 500 * v25 / 8;
    }

    *(v24 + 48) = v26;
    *(v24 + 56) = v27;
    v28 = *(a1 + 344);
    v29 = ((33333 * *(v28 + 168) + 4000000) / 8000000);
    v30 = llround(v29 / ceil(v29 / 1200.0));
    v31 = *(v28 + 408);
    v32 = 2 * v31 + 200000;
    if (v31 == 0x8000000000000000)
    {
      v32 = 0;
    }

    v33 = -2;
    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v32;
    }

    v34 = (8000000 * v30) / v33;
    if (v34 == 0x8000000000000000)
    {
      v35 = -INFINITY;
      if (*(v28 + 560) == 1)
      {
        goto LABEL_58;
      }
    }

    else if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = INFINITY;
      if (*(v28 + 560) == 1)
      {
LABEL_58:
        v36 = *(v28 + 552) / fmax(v35, 4000.0) * 1000000.0;
        if (v36 == INFINITY)
        {
          v37 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = 0x8000000000000000;
          if (v36 != -INFINITY)
          {
            v37 = v36;
          }
        }

        if (v37 >= 50000000)
        {
          v37 = 50000000;
        }

        if (v37 <= 2000000)
        {
          v37 = 2000000;
        }

LABEL_70:
        v38 = *(a1 + 224) == 0;
        if (!*(a1 + 224))
        {
          v14 = 0.0;
        }

        v39 = v8;
        v40 = *(a2 + 152);
        *(a2 + 80) = a3;
        *(a2 + 88) = a3;
        v41 = 0x7FFFFFFFFFFFFFFFLL;
        *(a2 + 96) = 0x7FFFFFFFFFFFFFFFLL;
        *(a2 + 104) = v9;
        *(a2 + 112) = v37;
        *(a2 + 120) = v39 / 255.0;
        if (v38)
        {
          v42 = v10;
        }

        else
        {
          v42 = v11;
        }

        *(a2 + 128) = v42;
        *(a2 + 136) = v23;
        *(a2 + 144) = v14;
        if ((v40 & 1) == 0)
        {
          *(a2 + 152) = 1;
        }

        v43 = *(a1 + 288);
        v44 = *(a1 + 304);
        v45 = *(v44 + 1912);
        v46 = *(v44 + 384);
        if (v46 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v47 = *(v44 + 368);
          if (v47 != 0x8000000000000000)
          {
            v48 = v47 == 0x7FFFFFFFFFFFFFFFLL || v46 == 0x8000000000000000;
            v49 = (v46 - v47) & ~((v46 - v47) >> 63);
            if (v48)
            {
              v49 = 0;
            }

            if (v49 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v50 = *(v44 + 376);
              if (v50 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v41 = v50 + v49;
                if (v50 == 0x8000000000000000)
                {
                  v41 = 0x8000000000000000;
                }
              }
            }
          }
        }

        v51 = *(v44 + 360);
        if (v45 == 3)
        {
          v52 = 2;
        }

        else
        {
          v52 = v45 != 0;
        }

        if (v41 > v51)
        {
          v52 = 4;
        }

        if ((*(*(a1 + 344) + 576) - 1) >= 2)
        {
          v53 = v52;
        }

        else
        {
          v53 = 3;
        }

        webrtc::ProbeController::SetEstimatedBitrate(v43, v11, v53, a3, &__p);
        std::vector<webrtc::ProbeClusterConfig>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::ProbeClusterConfig*>,std::__wrap_iter<webrtc::ProbeClusterConfig*>>(a2 + 56, *(a2 + 64), __p, v73, 0xCCCCCCCCCCCCCCCDLL * ((v73 - __p) >> 3));
        v54 = *(a1 + 848);
        v55 = *(a1 + 800);
        if (v54 <= v55)
        {
          v56 = *(a1 + 800);
        }

        else
        {
          v56 = *(a1 + 848);
        }

        v57 = llround(*(a1 + 840) * v56);
        if (*(a1 + 280) == 1 && *(a1 + 728) == 1)
        {
          v58 = *(a1 + 640);
          if ((v58 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL && v57 > v58)
          {
            v57 = v58 <= v54 ? *(a1 + 848) : *(a1 + 640);
            if (v57 <= v55)
            {
              v57 = *(a1 + 800);
            }
          }
        }

        v59 = (a1 + 856);
        if (*(a1 + 824) == 1 && *v59 < v55)
        {
          v59 = (a1 + 800);
        }

        v60 = *v59;
        if (*(a1 + 808) < *v59)
        {
          v60 = *(a1 + 808);
        }

        v61 = ((1000000 * v57 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
        v62 = ((1000000 * v60 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
        v63 = *(a2 + 48);
        *(a2 + 16) = a3;
        *(a2 + 24) = (v61 >> 21) + (v61 >> 63);
        *(a2 + 32) = 1000000;
        *(a2 + 40) = (v62 >> 21) + (v62 >> 63);
        if (v63)
        {
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
          {
            goto LABEL_115;
          }
        }

        else
        {
          *(a2 + 48) = 1;
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
          {
LABEL_115:
            v71 = __p;
            if (!__p)
            {
              return;
            }

            goto LABEL_116;
          }
        }

        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v64, v65, v66, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/goog_cc_network_control.cc");
        v71 = __p;
        if (!__p)
        {
          return;
        }

LABEL_116:
        v73 = v71;
        operator delete(v71);
        return;
      }
    }

    else
    {
      v35 = v34;
      if (*(v28 + 560) == 1)
      {
        goto LABEL_58;
      }
    }

    v37 = 3000000;
    goto LABEL_70;
  }
}

void webrtc::GoogCcNetworkController::OnProcessInterval(webrtc::GoogCcNetworkController *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v7 = a3 + 56;
  *(a3 + 152) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  if (*(this + 536) != 1)
  {
    goto LABEL_34;
  }

  v8 = *(this + 26);
  v46[0] = *(this + 25);
  v46[1] = v8;
  v46[2] = *(this + 27);
  v47 = *(this + 448);
  webrtc::GoogCcNetworkController::ResetConstraints(&v48, this, v46);
  v9 = *a2;
  v10 = *(this + 106);
  v11 = *(this + 100);
  v12 = *(this + 280);
  v13 = *(this + 105);
  v14 = v49;
  v15 = *(&v48 + 1);
  *(a3 + 56) = v48;
  *(a3 + 72) = v14;
  if (v10 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v10;
  }

  a4 = v13 * v16;
  v17 = llround(a4);
  if ((v12 & 1) != 0 && *(this + 728) == 1)
  {
    v18 = *(this + 80);
    if (v18 > v10)
    {
      v10 = *(this + 80);
    }

    if (v10 <= v11)
    {
      v10 = v11;
    }

    if (v17 <= v18)
    {
      v10 = v17;
    }

    if ((v18 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v10;
    }
  }

  v19 = this + 856;
  if (*(this + 206) == 1 && *v19 < v11)
  {
    v19 = this + 800;
  }

  v20 = *v19;
  if (*(this + 101) < *v19)
  {
    v20 = *(this + 101);
  }

  v21 = ((1000000 * v17 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
  v22 = ((1000000 * v20 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
  *(a3 + 16) = v9;
  *(a3 + 24) = (v21 >> 21) + (v21 >> 63);
  *(a3 + 32) = 1000000;
  *(a3 + 40) = (v22 >> 21) + (v22 >> 63);
  *(a3 + 48) = 1;
  if ((*(this + 536) & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (*(this + 465) != 1)
  {
    if (*(this + 467) != 1)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(*(this + 36) + 1) = *(this + 466);
    if ((*(this + 528) & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  *(*(this + 36) + 248) = *(this + 464);
  if (*(this + 467) == 1)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ((*(this + 528) & 1) == 0)
  {
LABEL_30:
    v23 = *(this + 45);
    if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v23 + 8))(v23);
    }

    *(this + 536) = 0;
    goto LABEL_34;
  }

LABEL_27:
  v45 = v15;
  webrtc::ProbeController::OnMaxTotalAllocatedBitrate(*(this + 36), *(this + 65), *a2, &v48);
  std::vector<webrtc::ProbeClusterConfig>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::ProbeClusterConfig*>,std::__wrap_iter<webrtc::ProbeClusterConfig*>>(v7, v45, v48, *(&v48 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v48 + 1) - v48) >> 3));
  if (v48)
  {
    *(&v48 + 1) = v48;
    operator delete(v48);
  }

  if (*(this + 536))
  {
    goto LABEL_30;
  }

LABEL_34:
  v24 = *(this + 37);
  if (v24 && *(a2 + 16) == 1)
  {
    *(v24 + 32) = *(a2 + 8);
  }

  v25.var0 = *a2;
  webrtc::SendSideBandwidthEstimation::UpdateEstimate(*(this + 38), v25, a4);
  v26 = *(this + 39);
  v27 = *(this + 36);
  if (*(v26 + 80))
  {
    v28 = 1000 * *(v26 + 72);
    if ((*(v27 + 224) & 1) == 0)
    {
      *(v27 + 224) = 1;
    }

    *(v27 + 216) = v28;
    v27 = *(this + 36);
  }

  else if (*(v27 + 224) == 1)
  {
    *(v27 + 224) = 0;
  }

  v29.var0 = *a2;
  webrtc::ProbeController::Process(v27, v29, &v48);
  std::vector<webrtc::ProbeClusterConfig>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::ProbeClusterConfig*>,std::__wrap_iter<webrtc::ProbeClusterConfig*>>(v7, *(a3 + 64), v48, *(&v48 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v48 + 1) - v48) >> 3));
  if (*(this + 196) == 1)
  {
    v30 = *(this + 99);
    if (v30)
    {
      v31 = *(this + 95);
      v32 = *(this + 98);
      v33 = (v31 + 8 * (v32 >> 9));
      v34 = *v33;
      v35 = &(*v33)[8 * (v32 & 0x1FF)];
      v36 = *(v31 + (((v32 + v30) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v32 + v30) & 0x1FF);
      if (v35 != v36)
      {
        v37 = v35 + 8;
        if (v35 + 8 - v34 != 4096)
        {
          goto LABEL_48;
        }

LABEL_47:
        v38 = v33[1];
        ++v33;
        v34 = v38;
        v37 = v38;
LABEL_48:
        while (v37 != v36)
        {
          if (*v37 < *v35)
          {
            v35 = v37;
          }

          v37 += 8;
          if (v37 - v34 == 4096)
          {
            goto LABEL_47;
          }
        }
      }

      v39 = ((1000 * *(this + 100) * (*v35 + *(this + 48)) + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
      v40 = (v39 >> 21) + (v39 >> 63);
      if (*(this + 880) == 1)
      {
        v41 = *(this + 109);
        v40 = (v41 + v40) / 2;
        if (v40 <= 3000)
        {
          v40 = 3000;
        }

        if (v41 == 0x8000000000000000)
        {
          v40 = 3000;
        }

        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x3FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        if (v40 <= 3000)
        {
          v40 = 3000;
        }

        *(this + 880) = 1;
      }

      *(this + 109) = v40;
    }
  }

  v42 = *(this + 37);
  if (!v42 || *(this + 880) != 1)
  {
    *a3 = *(this + 109);
    *(a3 + 8) = *(this + 880);
    webrtc::GoogCcNetworkController::MaybeTriggerOnNetworkChanged(this, a3, *a2);
    v44 = v48;
    if (!v48)
    {
      return;
    }

    goto LABEL_72;
  }

  v43 = *(this + 109);
  if ((*(v42 + 16) & 1) == 0)
  {
    *(v42 + 16) = 1;
  }

  *(v42 + 8) = v43;
  webrtc::GoogCcNetworkController::MaybeTriggerOnNetworkChanged(this, a3, *a2);
  v44 = v48;
  if (v48)
  {
LABEL_72:
    *(&v48 + 1) = v44;
    operator delete(v44);
  }
}

void webrtc::GoogCcNetworkController::OnRemoteBitrateReport(Timestamp a1@<0:X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 48) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/goog_cc_network_control.cc");
    }
  }

  else
  {
    v12 = *(a2 + 304);
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (a3)
    {
      v13 = a3;
    }

    v12[71].var0 = v13;
    webrtc::SendSideBandwidthEstimation::UpdateTargetBitrate(v12, v12[61].var0, a1);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 48) = 0;
  *(a4 + 152) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 56) = 0;
  *(a4 + 80) = 0;
}

uint64_t webrtc::GoogCcNetworkController::OnRoundTripTimeUpdate@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(result + 48) & 1) == 0 && (a2[2] & 1) == 0)
  {
    v3 = *(result + 344);
    v4 = a2[1];
    if (v3)
    {
      *(v3 + 408) = v4;
    }

    v5 = *(result + 304);
    v6 = *a2;
    if (v4 >= 1)
    {
      *(v5 + 560) = v4;
    }

    v7 = *(v5 + 592);
    if ((v7 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
    {
      v8 = v6 - v7;
      v9 = v6 == 0x8000000000000000 || v8 < 2000000;
      v10 = v9;
      if ((v6 == 0x7FFFFFFFFFFFFFFFLL || !v10) && !*(v5 + 620))
      {
        *(v5 + 620) = 2;
        result = atomic_load_explicit(&webrtc::SendSideBandwidthEstimation::UpdateRtt(webrtc::TimeDelta,webrtc::Timestamp)::atomic_histogram_pointer, memory_order_acquire);
        if (result || (v11 = a3, result = webrtc::metrics::HistogramFactoryGetCountsLinear(), a3 = v11, v12 = 0, atomic_compare_exchange_strong(&webrtc::SendSideBandwidthEstimation::UpdateRtt(webrtc::TimeDelta,webrtc::Timestamp)::atomic_histogram_pointer, &v12, result), result))
        {
          v13 = v4 / 0x3E8uLL;
          if (v4 % 0x3E8uLL > 0x1F3)
          {
            LODWORD(v13) = v13 + 1;
          }

          if (-v4 % 0x3E8uLL <= 0x1F4)
          {
            v14 = 0;
          }

          else
          {
            v14 = -1;
          }

          if (v4 < 0)
          {
            v15 = v14 - -v4 / 0x3E8uLL;
          }

          else
          {
            v15 = v13;
          }

          v16 = a3;
          result = webrtc::metrics::HistogramAdd(result, v15);
          a3 = v16;
        }
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 152) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  return result;
}

void webrtc::GoogCcNetworkController::OnSentPacket(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 312);
  v7 = a2[1];
  v8 = *a2;
  v9 = *a2 / 0x3E8uLL;
  if (*a2 % 0x3E8uLL > 0x1F3)
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
    v11 = v10 - -v8 / 0x3E8uLL;
  }

  else
  {
    v11 = v9;
  }

  webrtc::AlrDetector::OnBytesSent(v6, v7, v11);
  (*(**(a1 + 352) + 40))(*(a1 + 352), *(*(a1 + 312) + 80) & 1);
  if ((*(a1 + 584) & 1) == 0)
  {
    *(a1 + 584) = 1;
    v12 = *(a1 + 304);
    *(v12 + 368) = *a2;
    *(v12 + 376) = 0;
  }

  *(*(a1 + 304) + 384) = *a2;
  v13 = *(a1 + 296);
  if (v13)
  {
    *(v13 + 24) = a2[8];
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 48) = 0;
    *(a3 + 152) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0;
    *(a3 + 80) = 0;
    v14 = *a2;

    webrtc::GoogCcNetworkController::MaybeTriggerOnNetworkChanged(a1, a3, v14);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 48) = 0;
    *(a3 + 152) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0;
    *(a3 + 80) = 0;
  }
}

void webrtc::GoogCcNetworkController::OnReceivedPacket(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 152) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
}

void webrtc::GoogCcNetworkController::OnStreamsConfig(webrtc::GoogCcNetworkController *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 152) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  if (*(a2 + 9) == 1)
  {
    *(*(this + 36) + 248) = *(a2 + 8);
    if (*(a2 + 72) != 1)
    {
      goto LABEL_3;
    }
  }

  else if (*(a2 + 72) != 1)
  {
LABEL_3:
    if (*(a2 + 24) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  webrtc::ProbeController::OnMaxTotalAllocatedBitrate(*(this + 36), *(a2 + 64), *a2, &v27);
  v6 = v28;
  *(a3 + 56) = v27;
  *(a3 + 72) = v6;
  if (*(a2 + 24) != 1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(a2 + 16);
  if (v7 == *(this + 105))
  {
LABEL_10:
    v8 = 0;
    if (*(a2 + 40) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  *(this + 105) = v7;
  v8 = 1;
  if (*(a2 + 40) != 1)
  {
    goto LABEL_25;
  }

LABEL_11:
  v9 = *(a2 + 32);
  if (v9 != *(this + 106))
  {
    *(this + 106) = v9;
    if (*(this + 184) == 1)
    {
      webrtc::GoogCcNetworkController::ClampConstraints(this);
      v10 = *(this + 43);
      v11 = *(this + 69);
      *(v10 + 152) = v11;
      if (*(v10 + 168) > v11)
      {
        v11 = *(v10 + 168);
      }

      *(v10 + 168) = v11;
      v12 = *(this + 38);
      v13 = *(this + 70);
      if (*(this + 69) <= 5000)
      {
        v14 = 5000;
      }

      else
      {
        v14 = *(this + 69);
      }

      v15 = v13 - 1;
      if (v14 > v13)
      {
        v13 = v14;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v16 = 1000000000;
      }

      else
      {
        v16 = v13;
      }

      v12[63] = v14;
      v12[64] = v16;
      webrtc::LossBasedBweV2::SetMinMaxBitrate(v12[238], v14, v16);
    }

    v8 = 1;
  }

LABEL_25:
  if (*(a2 + 56) == 1 && (v17 = *(a2 + 48), v17 != *(this + 107)))
  {
    *(this + 107) = v17;
  }

  else if (!v8)
  {
    return;
  }

  v18 = *(this + 106);
  v19 = *(this + 100);
  if (v18 <= v19)
  {
    v20 = *(this + 100);
  }

  else
  {
    v20 = *(this + 106);
  }

  v21 = llround(*(this + 105) * v20);
  if (*(this + 280) == 1 && *(this + 728) == 1)
  {
    v22 = *(this + 80);
    if (v22 > v18)
    {
      v18 = *(this + 80);
    }

    if (v18 <= v19)
    {
      v18 = *(this + 100);
    }

    if (v21 <= v22)
    {
      v18 = v21;
    }

    if ((v22 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = v18;
    }
  }

  v23 = this + 856;
  if (*(this + 206) == 1 && *v23 < v19)
  {
    v23 = this + 800;
  }

  v24 = *v23;
  if (*(this + 101) < *v23)
  {
    v24 = *(this + 101);
  }

  v25 = ((1000000 * v21 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
  v26 = ((1000000 * v24 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
  *(a3 + 16) = *a2;
  *(a3 + 24) = (v25 >> 21) + (v25 >> 63);
  *(a3 + 32) = 1000000;
  *(a3 + 40) = (v26 >> 21) + (v26 >> 63);
  *(a3 + 48) = 1;
}

void webrtc::GoogCcNetworkController::ClampConstraints(webrtc::GoogCcNetworkController *this)
{
  v2 = *(this + 68);
  if (v2 <= 5000)
  {
    v2 = 5000;
  }

  *(this + 69) = v2;
  if (*(this + 184) == 1)
  {
    v3 = v2 < *(this + 106);
    v4 = 552;
    if (v3)
    {
      v4 = 848;
    }

    v2 = *(this + v4);
    *(this + 69) = v2;
    if (*(this + 70) >= v2)
    {
LABEL_5:
      if (*(this + 576) != 1)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if (*(this + 70) >= v2)
  {
    goto LABEL_5;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/goog_cc_network_control.cc");
  }

  v2 = *(this + 69);
  *(this + 70) = v2;
  if (*(this + 576) == 1)
  {
LABEL_13:
    if (*(this + 71) < v2)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/goog_cc_network_control.cc");
      }

      v19 = *(this + 69);
      if ((*(this + 576) & 1) == 0)
      {
        *(this + 576) = 1;
      }

      *(this + 71) = v19;
    }
  }
}

void webrtc::GoogCcNetworkController::OnTargetRateConstraints(webrtc::GoogCcNetworkController *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 152) = 0;
  *(a3 + 80) = 0;
  v6 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v6;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  webrtc::GoogCcNetworkController::ResetConstraints(&v9, this, v7);
  *(a3 + 56) = v9;
  *(a3 + 72) = v10;
  webrtc::GoogCcNetworkController::MaybeTriggerOnNetworkChanged(this, a3, *a2);
}

unint64_t webrtc::GoogCcNetworkController::OnTransportLossReport@<X0>(unint64_t result@<X0>, int64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if ((*(result + 48) & 1) == 0)
  {
    v5 = a2[3];
    v6 = v5 + a2[4];
    v7 = *(result + 304);
    v8 = *a2;
    *(v7 + 536) = *a2;
    if ((*(v7 + 592) - 0x7FFFFFFFFFFFFFFFLL) <= 1)
    {
      *(v7 + 592) = v8;
    }

    if (v6 >= 1)
    {
      v9 = v6 + *(v7 + 468);
      if (v9 < 20)
      {
        *(v7 + 468) = v9;
        *(v7 + 464) += v5;
        goto LABEL_11;
      }

      *(v7 + 528) = 0;
      v10 = (((v5 + *(v7 + 464)) & ~((v5 + *(v7 + 464)) >> 63)) << 8) / v9;
      if (v10 >= 255)
      {
        LOBYTE(v10) = -1;
      }

      *(v7 + 552) = v10;
      *(v7 + 464) = 0;
      *(v7 + 544) = v8;
      v11.var0 = v8;
      webrtc::SendSideBandwidthEstimation::UpdateEstimate(v7, v11, a4);
    }

    v12.var0 = v8;
    result = webrtc::SendSideBandwidthEstimation::UpdateUmaStatsPacketsLost(v7, v12, v5);
  }

LABEL_11:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 152) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  return result;
}

void webrtc::GoogCcNetworkController::OnTransportPacketsFeedback(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 + 3;
  v5 = *(a2 + 3);
  v6 = a2[4];
  v7 = a2[3];
  if (v7 == v6)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 48) = 0;
    *(a3 + 152) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0;
    *(a3 + 80) = 0;
    return;
  }

  v10 = *(a1 + 296);
  if (v10)
  {
    *(v10 + 24) = a2[1];
  }

  v181 = 0;
  v182 = 0;
  v183 = 0;
  do
  {
    if (*(v7 + 72) != 0x7FFFFFFFFFFFFFFFLL)
    {
      std::vector<webrtc::PacketResult>::push_back[abi:sn200100](&v181, v7);
    }

    v7 += 96;
  }

  while (v7 != v6);
  v11 = v181;
  if (v181 == v182)
  {
    v15 = 0;
    v13 = 0x8000000000000000;
    if (*(a1 + 48) != 1)
    {
      goto LABEL_174;
    }

    goto LABEL_89;
  }

  v12 = v182 - v181 - 96;
  if (v12 > 0x5F)
  {
    v16 = v12 / 0x60 + 1;
    v14 = &v181[96 * (v16 & 0x7FFFFFFFFFFFFFELL)];
    v17 = (v181 + 168);
    v18 = 0x8000000000000000;
    v19 = v16 & 0x7FFFFFFFFFFFFFELL;
    v20 = 0x8000000000000000;
    do
    {
      v21 = *(v17 - 12);
      v23 = *v17;
      v17 += 24;
      v22 = v23;
      if (v18 <= v21)
      {
        v18 = v21;
      }

      if (v20 <= v22)
      {
        v20 = v22;
      }

      v19 -= 2;
    }

    while (v19);
    if (v18 <= v20)
    {
      v13 = v20;
    }

    else
    {
      v13 = v18;
    }

    if (v16 == (v16 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v13 = 0x8000000000000000;
    v14 = v181;
  }

  do
  {
    if (v13 <= *(v14 + 9))
    {
      v13 = *(v14 + 9);
    }

    v14 += 96;
  }

  while (v14 != v182);
LABEL_27:
  v24 = *a2;
  v25 = 0x8000000000000000;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v24 - *v11;
    if (*v11 == 0x7FFFFFFFFFFFFFFFLL || v24 == 0x8000000000000000)
    {
      v27 = 0x8000000000000000;
    }

    if (*v11 == 0x8000000000000000 || v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v27;
    }

    v31 = *(v11 + 9);
    v32 = v13 - v31;
    if (v31 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x8000000000000000)
    {
      v32 = 0x8000000000000000;
    }

    if (v31 == 0x8000000000000000 || v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v32;
    }

    v36 = v30 - v35;
    if (v35 == 0x7FFFFFFFFFFFFFFFLL || v30 == 0x8000000000000000)
    {
      v36 = 0x8000000000000000;
    }

    if (v30 == 0x7FFFFFFFFFFFFFFFLL || v35 == 0x8000000000000000)
    {
      v39 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v36;
    }

    if (v25 <= v30)
    {
      v25 = v30;
    }

    if (v39 < v26)
    {
      v26 = v39;
    }

    v11 += 96;
  }

  while (v11 != v182);
  if ((v25 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
  {
    v40 = v25 / 0x3E8uLL;
    if (v25 % 0x3E8uLL > 0x1F3)
    {
      ++v40;
    }

    if (-v25 % 0x3E8uLL <= 0x1F4)
    {
      v41 = 0;
    }

    else
    {
      v41 = -1;
    }

    if (v25 < 0)
    {
      v42 = v41 - -v25 / 0x3E8uLL;
    }

    else
    {
      v42 = v40;
    }

    v43 = *(a1 + 768);
    v44 = *(a1 + 760);
    if (v43 == v44)
    {
      v45 = 0;
    }

    else
    {
      v45 = ((v43 - v44) << 6) - 1;
    }

    v46 = *(a1 + 792);
    if (v45 == v46 + *(a1 + 784))
    {
      std::deque<long long>::__add_back_capacity((a1 + 752));
      v46 = *(a1 + 792);
      v44 = *(a1 + 760);
      v43 = *(a1 + 768);
    }

    if (v43 != v44)
    {
      v47 = *(a1 + 784);
      v48 = *(v44 + (((v47 + v46) >> 6) & 0x3FFFFFFFFFFFFF8));
      if (v48)
      {
        *(v48 + 8 * ((v47 + v46) & 0x1FF)) = v42;
        *(a1 + 792) = v46 + 1;
        if ((v46 + 1) < 0x21)
        {
          goto LABEL_86;
        }

        if (*(v44 + ((v47 >> 6) & 0x3FFFFFFFFFFFFF8)))
        {
          *(a1 + 792) = v46;
          *(a1 + 784) = v47 + 1;
          if (v47 + 1 >= 0x400)
          {
            operator delete(*v44);
            *(a1 + 760) += 8;
            *(a1 + 784) -= 512;
          }

LABEL_86:
          v49 = *(a1 + 304);
          *(v49 + 368) = *a2;
          *(v49 + 376) = v26;
          v15 = 1;
          if (*(a1 + 48) != 1)
          {
            goto LABEL_174;
          }

          goto LABEL_89;
        }
      }
    }

    __break(1u);
    goto LABEL_295;
  }

  v15 = 0;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_174;
  }

LABEL_89:
  v50 = *(a1 + 792);
  if (!v50)
  {
    goto LABEL_99;
  }

  v51 = *(a1 + 760);
  if (*(a1 + 768) == v51)
  {
    v57 = 0;
    goto LABEL_97;
  }

  v52 = *(a1 + 784);
  v53 = (v51 + 8 * (v52 >> 9));
  v54 = *v53;
  v55 = &(*v53)[8 * (v52 & 0x1FF)];
  v56 = *(v51 + (((v52 + v50) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v52 + v50) & 0x1FF);
  if (v55 != v56)
  {
    v57 = 0;
    do
    {
      v59 = *v55;
      v55 += 8;
      v58 = v59;
      if (v55 - v54 == 4096)
      {
        v60 = v53[1];
        ++v53;
        v54 = v60;
        v55 = v60;
      }

      v57 += v58;
    }

    while (v55 != v56);
LABEL_97:
    v61 = *(a1 + 344);
    if (!v61)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v57 = 0;
  v61 = *(a1 + 344);
  if (v61)
  {
LABEL_98:
    *(v61 + 408) = 1000 * (v57 / v50);
  }

LABEL_99:
  v62 = v181;
  if (v181 != v182)
  {
    v63 = *a2;
    v64 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v66 = *(v62 + 9);
      v67 = v13 - v66;
      if (v66 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x8000000000000000)
      {
        v67 = 0x8000000000000000;
      }

      if (v66 == 0x8000000000000000 || v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v70 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v70 = v67;
      }

      if (v63 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v65 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v71 = *v62;
        v65 = 0x7FFFFFFFFFFFFFFFLL;
        if (*v62 != 0x8000000000000000)
        {
          v72 = v71 == 0x7FFFFFFFFFFFFFFFLL || v63 == 0x8000000000000000;
          v73 = v72 ? 0x8000000000000000 : v63 - v71;
          if (v73 != 0x7FFFFFFFFFFFFFFFLL && v70 != 0x8000000000000000)
          {
            v65 = v73 - v70;
            if (v70 == 0x7FFFFFFFFFFFFFFFLL || v73 == 0x8000000000000000)
            {
              v65 = 0x8000000000000000;
            }
          }
        }
      }

      if (v64 >= v65)
      {
        v64 = v65;
      }

      v62 += 96;
    }

    while (v62 != v182);
    if ((v64 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
    {
      v76 = *(a1 + 304);
      if (v64 >= 1)
      {
        *(v76 + 560) = v64;
      }

      v77 = *(v76 + 592);
      if ((v77 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
      {
        v78 = v63 - v77;
        v79 = v63 == 0x8000000000000000 || v78 < 2000000;
        v80 = v79;
        if ((v63 == 0x7FFFFFFFFFFFFFFFLL || !v80) && !*(v76 + 620))
        {
          *(v76 + 620) = 2;
          explicit = atomic_load_explicit(&webrtc::SendSideBandwidthEstimation::UpdateRtt(webrtc::TimeDelta,webrtc::Timestamp)::atomic_histogram_pointer, memory_order_acquire);
          if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v82 = 0, atomic_compare_exchange_strong(&webrtc::SendSideBandwidthEstimation::UpdateRtt(webrtc::TimeDelta,webrtc::Timestamp)::atomic_histogram_pointer, &v82, explicit), explicit))
          {
            v83 = v64 / 0x3E8uLL;
            if (v64 % 0x3E8uLL > 0x1F3)
            {
              LODWORD(v83) = v83 + 1;
            }

            if (-v64 % 0x3E8uLL <= 0x1F4)
            {
              v84 = 0;
            }

            else
            {
              v84 = -1;
            }

            if (v64 < 0)
            {
              v85 = v84 - -v64 / 0x3E8uLL;
            }

            else
            {
              LODWORD(v85) = v83;
            }

            webrtc::metrics::HistogramAdd(explicit, v85);
          }
        }
      }
    }
  }

  v86 = a2[3];
  v87 = a2[4];
  if (v87 != v86)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_295:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v88 = *a2;
  if (*a2 > *(a1 + 736))
  {
    if (v88 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v88 += 1000000;
    }

    *(a1 + 736) = v88;
    v89 = *(a1 + 304);
    v90 = *(a1 + 744);
    v91 = *(a1 + 748);
    v92 = *a2;
    *(v89 + 536) = *a2;
    if ((*(v89 + 592) - 0x7FFFFFFFFFFFFFFFLL) <= 1)
    {
      *(v89 + 592) = v92;
    }

    if (v91 >= 1)
    {
      v93 = *(v89 + 468) + v91;
      if (v93 < 20)
      {
        *(v89 + 468) = v93;
        *(v89 + 464) += v90;
LABEL_173:
        *(a1 + 744) = 0;
        goto LABEL_174;
      }

      *(v89 + 528) = 0;
      v94 = (((*(v89 + 464) + v90) & ~((*(v89 + 464) + v90) >> 63)) << 8) / v93;
      if (v94 >= 255)
      {
        LOBYTE(v94) = -1;
      }

      *(v89 + 552) = v94;
      *(v89 + 464) = 0;
      *(v89 + 544) = v92;
      v95.var0 = v92;
      webrtc::SendSideBandwidthEstimation::UpdateEstimate(v89, v95, *&v5);
    }

    v96.var0 = v92;
    webrtc::SendSideBandwidthEstimation::UpdateUmaStatsPacketsLost(v89, v96, v90);
    goto LABEL_173;
  }

LABEL_174:
  v168 = v15;
  v97 = *(a1 + 312);
  v98 = *(v97 + 80);
  v166 = *(v97 + 72);
  v167 = v4;
  LODWORD(v97) = *(a1 + 864);
  v99 = v97 | v98;
  if (v97 == 1 && (v98 & 1) == 0)
  {
    v100 = *a2;
    v101 = *a2 / 0x3E8uLL;
    if (*a2 % 0x3E8uLL > 0x1F3)
    {
      ++v101;
    }

    if (-v100 % 0x3E8uLL <= 0x1F4)
    {
      v102 = 0;
    }

    else
    {
      v102 = -1;
    }

    if (v100 < 0)
    {
      v103 = v102 - -v100 / 0x3E8uLL;
    }

    else
    {
      v103 = v101;
    }

    (*(**(a1 + 352) + 48))(*(a1 + 352));
    v99 = 0;
    v104 = *(a1 + 288);
    *(v104 + 232) = 1000 * v103;
    *(v104 + 240) = 1;
  }

  *(a1 + 864) = v98 & 1;
  v105 = *(a1 + 352);
  __p[0] = 0;
  __p[1] = 0;
  *&v173 = 0;
  v106 = a2[3];
  v107 = a2[4];
  if (v106 == v107)
  {
    v109 = 0;
    v108 = 0;
  }

  else
  {
    do
    {
      if (*(v106 + 72) != 0x7FFFFFFFFFFFFFFFLL)
      {
        std::vector<webrtc::PacketResult>::push_back[abi:sn200100](__p, v106);
      }

      v106 += 96;
    }

    while (v106 != v107);
    v108 = __p[0];
    v109 = __p[1];
  }

  v110 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 5));
  if (v109 == v108)
  {
    v111 = 0;
  }

  else
  {
    v111 = v110;
  }

  std::__introsort<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,false>(v108, v109, v169, v111, 1);
  (*(*v105 + 16))(v105, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v112 = (*(**(a1 + 352) + 24))(*(a1 + 352));
  v114 = v113;
  webrtc::SendSideBandwidthEstimation::SetAcknowledgedRate(*(a1 + 304), v112, v113, *a2);
  __p[0] = 0;
  __p[1] = 0;
  *&v173 = 0;
  v115 = a2[3];
  v116 = a2[4];
  if (v115 == v116)
  {
    v118 = 0;
    v117 = 0;
  }

  else
  {
    do
    {
      if (*(v115 + 72) != 0x7FFFFFFFFFFFFFFFLL)
      {
        std::vector<webrtc::PacketResult>::push_back[abi:sn200100](__p, v115);
      }

      v115 += 96;
    }

    while (v115 != v116);
    v117 = __p[0];
    v118 = __p[1];
  }

  v119 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v118 - v117) >> 5));
  if (v118 == v117)
  {
    v120 = 0;
  }

  else
  {
    v120 = v119;
  }

  std::__introsort<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,false>(v117, v118, v169, v120, 1);
  v121 = __p[0];
  v122 = __p[1];
  if (__p[0] == __p[1])
  {
    if (!__p[0])
    {
      goto LABEL_210;
    }

    goto LABEL_209;
  }

  do
  {
    if (*(v121 + 8) != -1)
    {
      webrtc::ProbeBitrateEstimator::HandleProbeAndEstimateBitrate(*(a1 + 320), v121);
    }

    v121 += 12;
  }

  while (v121 != v122);
  v121 = __p[0];
  if (__p[0])
  {
LABEL_209:
    __p[1] = v121;
    operator delete(v121);
  }

LABEL_210:
  v123 = *(a1 + 328);
  if (v123)
  {
    (*(*v123 + 8))(v123, a2);
    (***(a1 + 328))(__p);
    webrtc::GoogCcNetworkController::SetNetworkStateEstimate(a1, __p);
  }

  v124 = *(a1 + 320);
  v125 = *(v124 + 32);
  v126 = *(v124 + 40);
  if (*(v124 + 40))
  {
    *(v124 + 40) = 0;
    if ((*(a1 + 185) & 1) != 0 && *(a1 + 728) == 1 && v125 < *(*(a1 + 344) + 568) && v125 < *(a1 + 632))
    {
      v126 = 0;
    }
  }

  if (*(a1 + 186) == 1 && (v126 & 1) != 0 && (v114 & 1) != 0)
  {
    v127 = *(*(a1 + 344) + 568);
    v128 = llround(v112 * 0.85);
    if (v128 < v127)
    {
      v127 = v128;
    }

    if (v125 <= v127)
    {
      v125 = v127;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 152) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  v129 = *(a1 + 344);
  v130 = *(a1 + 688);
  v131 = *(a1 + 720);
  v179 = *(a1 + 704);
  v180 = v131;
  v132 = *(a1 + 640);
  v174 = *(a1 + 624);
  v175 = v132;
  v133 = *(a1 + 656);
  v177 = *(a1 + 672);
  v178 = v130;
  v176 = v133;
  v134 = *(a1 + 608);
  *__p = *(a1 + 592);
  v173 = v134;
  webrtc::DelayBasedBwe::IncomingPacketFeedbackVector(v129, a2, v112, v114, v125, v126, __p, v99 & 1, v169);
  v135 = v169[0];
  v136 = v171;
  if (v169[0])
  {
    v137 = v170;
    if (v169[1])
    {
      v138.var0 = *a2;
      webrtc::SendSideBandwidthEstimation::SetSendBitrate(*(a1 + 304), v170, v138);
    }

    v139 = *(a1 + 304);
    v140.var0 = *a2;
    if (*(v139 + 408) > v137)
    {
      v141 = v137;
      if (v137 == 0x8000000000000000)
      {
        v141 = -INFINITY;
      }

      if (v141 >= *(v139 + 392))
      {
        v141 = *(v139 + 392);
      }

      *(v139 + 392) = v141;
      *(v139 + 400) = v140;
    }

    *(v139 + 408) = v137;
    v142 = 0x7FFFFFFFFFFFFFFFLL;
    if (v137)
    {
      v142 = v137;
    }

    *(v139 + 576) = v142;
    webrtc::SendSideBandwidthEstimation::UpdateTargetBitrate(v139, *(v139 + 488), v140);
  }

  v143 = *(a1 + 304);
  if (*(v143 + 680) == 1 && (*(*(v143 + 1904) + 304) & 1) == 0)
  {
    webrtc::LossBasedBandwidthEstimation::UpdateLossStatistics(v143 + 680, v167, *a2);
  }

  v144 = *(v143 + 1904);
  if (*(v144 + 304) == 1)
  {
    v146 = a2[4] - a2[3];
    if (v146)
    {
      v147 = a2[3];
    }

    else
    {
      v147 = 0;
    }

    webrtc::LossBasedBweV2::UpdateBandwidthEstimate(v144, v147, 0xAAAAAAAAAAAAAAABLL * (v146 >> 5), *(v143 + 576), v99 & 1);
    v148.var0 = *a2;
    webrtc::SendSideBandwidthEstimation::UpdateEstimate(v143, v148, v149);
    if ((v135 & 1) == 0)
    {
LABEL_242:
      v145 = v168;
      if ((v136 & 1) == 0)
      {
        goto LABEL_262;
      }

      goto LABEL_254;
    }
  }

  else if ((v135 & 1) == 0)
  {
    goto LABEL_242;
  }

  webrtc::GoogCcNetworkController::MaybeTriggerOnNetworkChanged(a1, a3, *a2);
  v145 = v168;
  if ((v136 & 1) == 0)
  {
    goto LABEL_262;
  }

LABEL_254:
  v150 = *(a1 + 288);
  if (v98)
  {
    if ((*(v150 + 224) & 1) == 0)
    {
      *(v150 + 224) = 1;
    }

    *(v150 + 216) = 1000 * v166;
    v150 = *(a1 + 288);
  }

  else if (*(v150 + 224) == 1)
  {
    *(v150 + 224) = 0;
  }

  v151.var0 = *a2;
  webrtc::ProbeController::RequestProbe(v150, v151, __p);
  std::vector<webrtc::ProbeClusterConfig>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::ProbeClusterConfig*>,std::__wrap_iter<webrtc::ProbeClusterConfig*>>(a3 + 56, *(a3 + 64), __p[0], __p[1], 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 3));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_262:
  if ((v145 & *(a1 + 196)) == 1)
  {
    v152 = *(a1 + 760);
    v153 = *(a1 + 784);
    v154 = (v152 + 8 * (v153 >> 9));
    v155 = *v154;
    v156 = &(*v154)[8 * (v153 & 0x1FF)];
    v157 = *(v152 + (((*(a1 + 792) + v153) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 792) + v153) & 0x1FF);
    if (v156 != v157)
    {
      v158 = v156 + 8;
      if (v156 + 8 - v155 != 4096)
      {
        goto LABEL_266;
      }

LABEL_265:
      v159 = v154[1];
      ++v154;
      v155 = v159;
      v158 = v159;
LABEL_266:
      while (v158 != v157)
      {
        if (*v158 < *v156)
        {
          v156 = v158;
        }

        v158 += 8;
        if (v158 - v155 == 4096)
        {
          goto LABEL_265;
        }
      }
    }

    v160 = ((1000 * *(a1 + 800) * (*v156 + *(a1 + 192)) + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
    v161 = (v160 >> 21) + (v160 >> 63);
    if (*(a1 + 880) == 1)
    {
      v162 = *(a1 + 872);
      v161 = (v162 + v161) / 2;
      if (v161 <= 3000)
      {
        v161 = 3000;
      }

      if (v162 == 0x8000000000000000)
      {
        v161 = 3000;
      }

      if (v162 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v161 = 0x3FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      if (v161 <= 3000)
      {
        v161 = 3000;
      }

      *(a1 + 880) = 1;
    }

    *(a1 + 872) = v161;
  }

  v163 = *(a1 + 296);
  if (!v163 || *(a1 + 880) != 1)
  {
    *a3 = *(a1 + 872);
    *(a3 + 8) = *(a1 + 880);
    v165 = v181;
    if (!v181)
    {
      return;
    }

    goto LABEL_290;
  }

  v164 = *(a1 + 872);
  if ((*(v163 + 16) & 1) == 0)
  {
    *(v163 + 16) = 1;
  }

  *(v163 + 8) = v164;
  v165 = v181;
  if (v181)
  {
LABEL_290:
    v182 = v165;
    operator delete(v165);
  }
}

__n128 webrtc::GoogCcNetworkController::SetNetworkStateEstimate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 600);
  v3 = *(a1 + 728);
  *(a1 + 592) = *a2;
  v4 = *(a2 + 64);
  v6 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 640) = *(a2 + 48);
  *(a1 + 656) = v4;
  *(a1 + 608) = v6;
  *(a1 + 624) = v5;
  v8 = *(a2 + 96);
  result = *(a2 + 112);
  v9 = *(a2 + 80);
  *(a1 + 713) = *(a2 + 121);
  *(a1 + 688) = v8;
  *(a1 + 704) = result;
  *(a1 + 672) = v9;
  if (*(a1 + 728) == 1 && ((v3 & 1) == 0 || *(a1 + 600) != v2))
  {
    operator new();
  }

  return result;
}

void webrtc::GoogCcNetworkController::OnNetworkStateEstimate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 328))
  {
    v4 = *(a2 + 112);
    v8[6] = *(a2 + 96);
    v8[7] = v4;
    v9 = *(a2 + 128);
    v5 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v5;
    v6 = *(a2 + 80);
    v8[4] = *(a2 + 64);
    v8[5] = v6;
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    v10 = 1;
    webrtc::GoogCcNetworkController::SetNetworkStateEstimate(a1, v8);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 152) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
}

void std::vector<webrtc::ProbeClusterConfig>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::ProbeClusterConfig*>,std::__wrap_iter<webrtc::ProbeClusterConfig*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v5 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3)) < a5)
  {
    v10 = *a1;
    v11 = a5 - 0x3333333333333333 * ((v9 - *a1) >> 3);
    if (v11 <= 0x666666666666666)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x333333333333333)
      {
        v13 = 0x666666666666666;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 <= 0x666666666666666)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v33 = 8 * ((__dst - v10) >> 3);
      v34 = 40 * a5;
      v35 = v33 + 40 * a5;
      v36 = v33;
      while (v36)
      {
        v37 = *v5;
        v38 = *(v5 + 1);
        *(v36 + 32) = *(v5 + 4);
        *v36 = v37;
        *(v36 + 16) = v38;
        v36 += 40;
        v5 += 40;
        v34 -= 40;
        if (!v34)
        {
          v39 = *(a1 + 8) - __dst;
          memcpy((v33 + 40 * a5), __dst, v39);
          v40 = v35 + v39;
          *(a1 + 8) = __dst;
          v41 = *a1;
          v42 = &__dst[-*a1];
          v43 = v33 - v42;
          memcpy((v33 - v42), *a1, v42);
          *a1 = v43;
          *(a1 + 8) = v40;
          *(a1 + 16) = 0;
          if (v41)
          {

            operator delete(v41);
          }

          return;
        }
      }

      __break(1u);
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v14 = v9 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - __dst) >> 3)) >= a5)
  {
    v14 = 40 * a5;
    v28 = &__dst[40 * a5];
    v29 = v9 - 40 * a5;
    for (i = *(a1 + 8); v29 < v9; i += 40)
    {
      v31 = *v29;
      v32 = *(v29 + 16);
      *(i + 32) = *(v29 + 32);
      *i = v31;
      *(i + 16) = v32;
      v29 += 40;
    }

    *(a1 + 8) = i;
    if (v9 == v28)
    {
      goto LABEL_27;
    }

    v26 = v9 - v28;
    v27 = &__dst[40 * a5];
    goto LABEL_26;
  }

  v15 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v16 = a5;
    v17 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v17;
    a5 = v16;
  }

  v18 = (v9 + v15);
  *(a1 + 8) = v9 + v15;
  if (v14 >= 1)
  {
    v19 = &__dst[40 * a5];
    v20 = v9 + v15;
    if (&v18[-40 * a5] < v9)
    {
      v21 = &__dst[a4];
      v22 = &__dst[a4 + -40 * a5];
      do
      {
        v23 = v21 - v5;
        v24 = *(v22 - v5);
        v25 = *(v22 - v5 + 16);
        *(v23 + 32) = *(v22 - v5 + 32);
        *v23 = v24;
        *(v23 + 16) = v25;
        v22 += 40;
        v21 += 40;
      }

      while (v22 - v5 < v9);
      v20 = v21 - v5;
    }

    *(a1 + 8) = v20;
    if (v18 == v19)
    {
      goto LABEL_27;
    }

    v26 = v18 - v19;
    v27 = &__dst[40 * a5];
LABEL_26:
    memmove(v27, __dst, v26);
LABEL_27:

    memmove(__dst, v5, v14);
  }
}

void **std::deque<long long>::~deque[abi:sn200100](void **result)
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
    v6 = &v2[v5 >> 9];
    v7 = *v6;
    v8 = *v6 + 8 * (v5 & 0x1FF);
    while (v8 != *(v2 + (((result[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((result[5] + v5) & 0x1FF))
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v8 += 8;
      if (v8 - v7 == 4096)
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
    v11 = 256;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
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

void *std::deque<long long>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<long long *>::emplace_back<long long *&>(a1, &v11);
}

void *std::__split_buffer<long long *>::emplace_back<long long *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

LABEL_13:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<long long *>::emplace_front<long long *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void webrtc::H264BitstreamParser::~H264BitstreamParser(webrtc::H264BitstreamParser *this)
{
  *this = &unk_2882941B0;
}

{
  *this = &unk_2882941B0;
  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::H264BitstreamParser::ParseNonParameterSetNalu(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  if (*(a1 + 64) != 1 || *(a1 + 100) != 1)
  {
    return 1;
  }

  if (*(a1 + 108) == 1)
  {
    *(a1 + 108) = 0;
  }

  webrtc::H264::ParseRbsp(a3, &v91);
  v11 = v91;
  v12 = v92 - v91;
  if (v92 == v91)
  {
    result = 1;
    if (v91)
    {
      goto LABEL_185;
    }

    return result;
  }

  v88 = v91;
  if (((v12 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
LABEL_230:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v7, v8, v9, v10, v87);
    return webrtc::H264BitstreamParser::ParseSlice();
  }

  v90 = 0;
  if (8 * v12)
  {
    v88 = &v91[((v12 & 0x1FFFFFFF) - ((8 * v12 - 1) >> 3))];
    v89 = 8 * v12 - 8;
    if ((*(a1 + 100) & 1) == 0)
    {
      goto LABEL_229;
    }
  }

  else
  {
    v89 = -1;
    if ((*(a1 + 100) & 1) == 0)
    {
      goto LABEL_229;
    }
  }

  v14 = *a2;
  v16 = *(a1 + 72);
  v15 = *(a1 + 76);
  webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  if ((*(a1 + 64) & 1) == 0)
  {
    goto LABEL_229;
  }

  v18 = v89;
  if (*(a1 + 32) == 1)
  {
    if (v89 >= 2)
    {
      v88 += (((v89 + 7) >> 3) - ((v89 + 5) >> 3));
      v18 = v89 - 2;
    }

    else
    {
      v18 = -1;
    }
  }

  v19 = v14 & 0xF;
  v20 = *(a1 + 40);
  v90 = 0;
  if (v20 < 0 || (v21 = __OFSUB__(v18, v20), v22 = v18 - v20, (v22 < 0) ^ v21))
  {
    v29 = 0;
    v30 = -1;
    v89 = -1;
    if (*(a1 + 36))
    {
      if (v19 != 5)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v24 = v18 + 7;
  v23 = v18 < -7;
  v25 = v18 + 14;
  if (!v23)
  {
    v25 = v24;
  }

  v26 = v25 >> 3;
  v27 = v22 + 7;
  if (v22 < -7)
  {
    v27 = v22 + 14;
  }

  v28 = &v88[v26 - (v27 >> 3)];
  v88 = v28;
  v89 = v22;
  if (!*(a1 + 36))
  {
    if (v22 < 1)
    {
      v29 = 0;
      v30 = -1;
    }

    else
    {
      v89 = v22 - 1;
      if (((v22 - 1) & 7) != 0)
      {
        v31 = (*v28 >> ((v22 - 1) & 7)) & 1;
      }

      else
      {
        v88 = v28 + 1;
        v31 = *v28++ & 1;
      }

      if (!v31)
      {
        goto LABEL_27;
      }

      v90 = 0;
      if (v22 == 1)
      {
        v29 = 1;
        v30 = -1;
      }

      else
      {
        v30 = v22 - 2;
        v88 = &v28[((v22 + 6) >> 3) - ((v22 + 5) >> 3)];
        v29 = 1;
      }
    }

LABEL_41:
    v89 = v30;
    if (v19 != 5)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_27:
  v29 = 0;
  if (v19 != 5)
  {
    goto LABEL_43;
  }

LABEL_42:
  webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  if ((*(a1 + 64) & 1) == 0)
  {
    goto LABEL_229;
  }

LABEL_43:
  v32 = *(a1 + 48);
  if (v32)
  {
    if (v32 != 1)
    {
      goto LABEL_61;
    }

LABEL_57:
    if (*(a1 + 24))
    {
      goto LABEL_61;
    }

    webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
    if (*(a1 + 100))
    {
      if (!(v29 & 1 | ((*(a1 + 68) & 1) == 0)))
      {
        webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      }

      goto LABEL_61;
    }

LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  v33 = *(a1 + 44);
  v90 = 0;
  v34 = -1;
  if ((v33 & 0x80000000) == 0)
  {
    v21 = __OFSUB__(v89, v33);
    v35 = v89 - v33;
    if (v35 < 0 == v21)
    {
      v36 = v89 + 7;
      if (v89 < -7)
      {
        v36 = v89 + 14;
      }

      v37 = v36 >> 3;
      v38 = v35 + 7;
      if (v35 < -7)
      {
        v38 = v35 + 14;
      }

      v88 += v37 - (v38 >> 3);
      v34 = v35;
    }
  }

  v89 = v34;
  if ((*(a1 + 100) & 1) == 0)
  {
    goto LABEL_229;
  }

  if (!(v29 & 1 | ((*(a1 + 68) & 1) == 0)))
  {
    webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
    if ((*(a1 + 64) & 1) == 0)
    {
      goto LABEL_229;
    }
  }

  if (*(a1 + 48) == 1)
  {
    goto LABEL_57;
  }

LABEL_61:
  if ((*(a1 + 100) & 1) == 0)
  {
    goto LABEL_229;
  }

  v39 = ExponentialGolomb % 5;
  if (*(a1 + 84))
  {
    webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  }

  if (v39 == 1)
  {
    if (v89 < 1)
    {
      v90 = 0;
      goto LABEL_183;
    }

    v88 += (((v89 + 7) >> 3) - ((v89 + 6) >> 3));
    v90 = 0;
    v40 = v89 - 2;
    if (v89 - 1 < 1)
    {
      goto LABEL_183;
    }

    goto LABEL_73;
  }

  if (v39 <= 3 && v39 != 2)
  {
    v90 = 0;
    v40 = v89 - 1;
    if (v89 < 1)
    {
LABEL_183:
      result = 1;
      goto LABEL_184;
    }

LABEL_73:
    v89 = v40;
    v41 = v88;
    if ((v40 & 7) != 0)
    {
      if (((*v88 >> (v40 & 7)) & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      ++v88;
      if ((*v41 & 1) == 0)
      {
LABEL_82:
        v90 = 1;
        goto LABEL_83;
      }
    }

    v16 = webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
    result = 1;
    v90 = 1;
    v40 = v89;
    if (v89 < 0)
    {
      goto LABEL_184;
    }

    if (v16 > 0x1F)
    {
      goto LABEL_184;
    }

    if (v39 == 1)
    {
      v15 = webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      v40 = v89;
      result = 1;
      if (v89 < 0 || v15 >= 0x20)
      {
        goto LABEL_184;
      }
    }

    goto LABEL_82;
  }

  v40 = v89;
  result = 1;
  v90 = 1;
  if (v89 < 0)
  {
    goto LABEL_184;
  }

LABEL_83:
  if ((a4 & 0xFE) == 0x14)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/h264_bitstream_parser.cc");
    }

    result = 2;
    goto LABEL_184;
  }

  if (v39 == 2 || v39 == 4)
  {
LABEL_89:
    v90 = 1;
    goto LABEL_90;
  }

  v90 = 0;
  if (!v40)
  {
    if (v39 != 1)
    {
      goto LABEL_183;
    }

    goto LABEL_203;
  }

  v53 = v40 - 1;
  v89 = v53;
  v54 = v88;
  if ((v53 & 7) != 0)
  {
    LODWORD(v54) = *v88 >> (v53 & 7);
  }

  else
  {
    ++v88;
    LOBYTE(v54) = *v54;
  }

  if (v54)
  {
    do
    {
      v80 = webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      if (v80 < 2 || v80 == 2)
      {
        webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      }

      else if (v80 == 3)
      {
        v53 = v89;
        break;
      }

      v90 = 1;
      v53 = v89;
    }

    while ((v89 & 0x80000000) == 0);
  }

  if (v39 == 1)
  {
    v90 = 0;
    if (v53 > 0)
    {
      v89 = v53 - 1;
      v82 = v88;
      if ((v89 & 7) != 0)
      {
        LODWORD(v82) = *v88 >> (v89 & 7);
      }

      else
      {
        ++v88;
        LOBYTE(v82) = *v82;
      }

      if (v82)
      {
        while (1)
        {
          v85 = webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
          if (v85 < 2 || v85 == 2)
          {
            webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
          }

          else if (v85 == 3)
          {
            v53 = v89;
            goto LABEL_227;
          }

          result = 1;
          v90 = 1;
          if (v89 < 0)
          {
            goto LABEL_184;
          }
        }
      }

      goto LABEL_89;
    }

LABEL_203:
    v89 = -1;
    result = 1;
    goto LABEL_184;
  }

LABEL_227:
  result = 1;
  v90 = 1;
  if (v53 < 0)
  {
    goto LABEL_184;
  }

LABEL_90:
  if ((*(a1 + 100) & 1) == 0)
  {
    goto LABEL_229;
  }

  if ((*(a1 + 69) != 1 || v39 && v39 != 3) && (v39 != 1 || *(a1 + 80) != 1))
  {
    goto LABEL_156;
  }

  webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  if ((*(a1 + 64) & 1) == 0)
  {
    goto LABEL_229;
  }

  if (*(a1 + 32) || !*(a1 + 28))
  {
    v49 = 0;
    while (1)
    {
      v90 = 0;
      if (v89 <= 0)
      {
        v89 = -1;
      }

      else
      {
        --v89;
        v50 = v88;
        if ((v89 & 7) != 0)
        {
          if (((*v88 >> (v89 & 7)) & 1) == 0)
          {
            goto LABEL_100;
          }

LABEL_106:
          webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
          webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
          goto LABEL_100;
        }

        ++v88;
        if (*v50)
        {
          goto LABEL_106;
        }
      }

LABEL_100:
      if (++v49 > v16)
      {
        if (v39 != 1)
        {
          goto LABEL_156;
        }

        v51 = 0;
        while (1)
        {
          v90 = 0;
          if (v89 <= 0)
          {
            v89 = -1;
          }

          else
          {
            --v89;
            v52 = v88;
            if ((v89 & 7) != 0)
            {
              if (((*v88 >> (v89 & 7)) & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_118:
              webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
              webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
              goto LABEL_112;
            }

            ++v88;
            if (*v52)
            {
              goto LABEL_118;
            }
          }

LABEL_112:
          if (++v51 > v15)
          {
            goto LABEL_156;
          }
        }
      }
    }
  }

  webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  v55 = 0;
  do
  {
    v90 = 0;
    v56 = v89 - 1;
    if (v89 < 1)
    {
LABEL_124:
      v89 = -1;
      goto LABEL_125;
    }

    --v89;
    v57 = v88;
    if ((v56 & 7) != 0)
    {
      if (((*v88 >> (v56 & 7)) & 1) == 0)
      {
        goto LABEL_130;
      }

LABEL_129:
      webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      v56 = v89;
      goto LABEL_130;
    }

    ++v88;
    if (*v57)
    {
      goto LABEL_129;
    }

LABEL_130:
    v90 = 0;
    if (v56 <= 0)
    {
      goto LABEL_124;
    }

    v89 = v56 - 1;
    v58 = v88;
    if ((v89 & 7) != 0)
    {
      LODWORD(v58) = *v88 >> (v89 & 7);
    }

    else
    {
      ++v88;
      LOBYTE(v58) = *v58;
    }

    if (v58)
    {
      webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
    }

LABEL_125:
    ++v55;
  }

  while (v55 <= v16);
  if (v39 == 1)
  {
    v59 = 0;
    do
    {
      v90 = 0;
      v60 = v89 - 1;
      if (v89 < 1)
      {
        goto LABEL_142;
      }

      --v89;
      v61 = v88;
      if ((v60 & 7) != 0)
      {
        LODWORD(v61) = *v88 >> (v60 & 7);
      }

      else
      {
        ++v88;
        LOBYTE(v61) = *v61;
      }

      if (v61)
      {
        webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
        webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
        v60 = v89;
      }

      v90 = 0;
      if (v60 <= 0)
      {
LABEL_142:
        v89 = -1;
      }

      else
      {
        v89 = v60 - 1;
        v62 = v88;
        if ((v89 & 7) != 0)
        {
          LODWORD(v62) = *v88 >> (v89 & 7);
        }

        else
        {
          ++v88;
          LOBYTE(v62) = *v62;
        }

        if (v62)
        {
          webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
          webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
          webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
          webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
        }
      }

      ++v59;
    }

    while (v59 <= v15);
  }

LABEL_156:
  if ((v14 & 0x60) == 0)
  {
    goto LABEL_165;
  }

  v90 = 0;
  if (v19 == 5)
  {
    v63 = v89 - 2;
    if (v89 >= 2)
    {
      v88 += (((v89 + 7) >> 3) - ((v89 + 5) >> 3));
      goto LABEL_164;
    }

LABEL_163:
    v63 = -1;
LABEL_164:
    v89 = v63;
    goto LABEL_165;
  }

  v64 = v89 - 1;
  if (v89 < 1)
  {
    goto LABEL_163;
  }

  --v89;
  v65 = v88;
  v66 = v64 & 7;
  if (v66)
  {
    LODWORD(v65) = *v88 >> v66;
  }

  else
  {
    ++v88;
    LOBYTE(v65) = *v65;
  }

  if (v65)
  {
    while (2)
    {
      v83 = webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
      if (v83 <= 6)
      {
        if (((1 << v83) & 0x54) != 0)
        {
          goto LABEL_207;
        }

        if (((1 << v83) & 0xA) == 0)
        {
          if (!v83)
          {
            break;
          }

          goto LABEL_208;
        }

        v84 = v83;
        webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
        if ((v84 & 0xFFFFFFFE) == 2)
        {
LABEL_207:
          webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
        }
      }

LABEL_208:
      v90 = 1;
      if (v89 < 0)
      {
        break;
      }

      continue;
    }
  }

LABEL_165:
  if ((*(a1 + 100) & 1) == 0)
  {
    goto LABEL_229;
  }

  if (*(a1 + 70) == 1 && v39 != 2 && v39 != 4)
  {
    webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  }

  v69 = webrtc::BitstreamReader::ReadExponentialGolomb(&v88);
  if (v69)
  {
    v70 = (v69 + 1) >> 1;
  }

  else
  {
    v70 = -(v69 >> 1);
  }

  result = 1;
  v90 = 1;
  if ((v89 & 0x80000000) == 0)
  {
    if (v70 >= 0)
    {
      v71 = v70;
    }

    else
    {
      v71 = -v70;
    }

    if (v71 < 0x34)
    {
      result = 0;
      *(a1 + 104) = v70;
      *(a1 + 108) = 1;
    }

    else
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_183;
      }

      webrtc::webrtc_logging_impl::Log("\r\t", v72, v73, v74, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/h264_bitstream_parser.cc");
      result = 1;
    }
  }

LABEL_184:
  v11 = v91;
  if (v91)
  {
LABEL_185:
    v92 = v11;
    v79 = result;
    operator delete(v11);
    return v79;
  }

  return result;
}

void webrtc::H264BitstreamParser::ParseSlice(uint64_t a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  v3 = *a2 & 0x1F;
  if (v3 > 0xE)
  {
LABEL_13:

    webrtc::H264BitstreamParser::ParseNonParameterSetNalu(a1, a2, a3, v3);
    return;
  }

  if (((1 << v3) & 0x5240) != 0)
  {
    return;
  }

  if (v3 != 7)
  {
    if (v3 == 8)
    {
      webrtc::H264::ParseRbsp(a3 - 1, &v29);
      if (v30 == v29)
      {
        v9 = 0;
      }

      else
      {
        v9 = v29;
      }

      webrtc::PpsParser::ParseInternal(v9, v30 - v29, v5, v6, v7, v8, &v21);
      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      v10 = v22;
      *(a1 + 68) = v21;
      *(a1 + 84) = v10;
      *(a1 + 100) = v23;
      return;
    }

    goto LABEL_13;
  }

  webrtc::H264::ParseRbsp(a3 - 1, &v29);
  v16 = v29;
  v17 = v30 - v29;
  if (v30 == v29)
  {
    v16 = 0;
  }

  v26 = v16;
  if (((v17 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v20);
    webrtc::H264BitstreamParser::ParseBitstream();
  }

  else
  {
    v27 = 8 * v17;
    v28 = 1;
    webrtc::SpsParser::ParseSpsUpToVui(&v26, &v21);
    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (*(a1 + 64) == v25)
    {
      if (*(a1 + 64))
      {
        v18 = v22;
        *(a1 + 8) = v21;
        *(a1 + 24) = v18;
        *(a1 + 40) = v23;
        *(a1 + 56) = v24;
      }
    }

    else if (*(a1 + 64))
    {
      *(a1 + 64) = 0;
    }

    else
    {
      v19 = v22;
      *(a1 + 8) = v21;
      *(a1 + 24) = v19;
      *(a1 + 40) = v23;
      *(a1 + 56) = v24;
      *(a1 + 64) = 1;
    }
  }
}

void webrtc::H264BitstreamParser::ParseBitstream(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v17 = 0uLL;
  v18 = 0;
  v4 = a3 - 3;
  if (a3 < 4)
  {
    return;
  }

  v8 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v10 = *(v3 + 2 + v8);
        if (v10 <= 1)
        {
          break;
        }

LABEL_7:
        v8 += 3;
        if (v8 >= v4)
        {
          goto LABEL_20;
        }
      }

      if (v10 == 1)
      {
        break;
      }

      if (++v8 >= v4)
      {
        goto LABEL_20;
      }
    }

    if (*(v3 + 1 + v8) || *(v3 + v8))
    {
      goto LABEL_7;
    }

    *&v19 = v8;
    *(&v19 + 1) = v8 + 3;
    v20 = 0;
    if (v8)
    {
      v9 = v8;
      if (!*(v3 + v8 - 1))
      {
        *&v19 = v8 - 1;
        v9 = v8 - 1;
      }
    }

    else
    {
      v9 = 0;
    }

    if (*(&v17 + 1) != v17)
    {
      *(*(&v17 + 1) - 8) = v9 - *(*(&v17 + 1) - 16);
    }

    std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&v17, &v19);
    v8 += 3;
  }

  while (v8 < v4);
LABEL_20:
  v11 = *(&v17 + 1);
  v12 = v17;
  if (*(&v17 + 1) != v17)
  {
    *(*(&v17 + 1) - 8) = a3 - *(*(&v17 + 1) - 16);
    do
    {
      while (1)
      {
        v16 = v12[1];
        if (a3 > v16)
        {
          break;
        }

        webrtc::H264BitstreamParser::ParseSlice(a1, 0, 0);
        v12 += 3;
        if (v12 == v11)
        {
          goto LABEL_31;
        }
      }

      if (a3 - v16 >= v12[2])
      {
        v13 = v12[2];
      }

      else
      {
        v13 = a3 - v16;
      }

      v14 = (v16 + a2);
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      webrtc::H264BitstreamParser::ParseSlice(a1, v15, v13);
      v12 += 3;
    }

    while (v12 != v11);
LABEL_31:
    v12 = v17;
  }

  if (v12)
  {
    *(&v17 + 1) = v12;
    operator delete(v12);
  }
}

uint64_t webrtc::H264BitstreamParser::GetLastSliceQp(webrtc::H264BitstreamParser *this)
{
  if (*(this + 108) != 1 || *(this + 100) != 1)
  {
    return 0;
  }

  v1 = (*(this + 22) + *(this + 26) + 26);
  if (v1 >= 0x34)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h264/h264_bitstream_parser.cc");
    }

    return 0;
  }

  return v1 | 0x100000000;
}

uint64_t webrtc::H264::FindNaluIndices@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = a2 - 3;
  if (a2 >= 4)
  {
    v4 = 0;
    v5 = result + 2;
    v6 = result + 1;
    while (1)
    {
      v8 = *(v5 + v4);
      if (v8 <= 1)
      {
        if (v8 != 1)
        {
          v7 = 1;
          goto LABEL_5;
        }

        if (!*(v6 + v4) && !*(result + v4))
        {
          *&v15 = v4;
          *(&v15 + 1) = v4 + 3;
          v16 = 0;
          if (v4)
          {
            v9 = v4;
            if (!*(result + v4 - 1))
            {
              *&v15 = v4 - 1;
              v9 = v4 - 1;
            }
          }

          else
          {
            v9 = 0;
          }

          v10 = result;
          v11 = a2;
          v12 = a3[1];
          if (v12 != *a3)
          {
            *(v12 - 8) = v9 - *(v12 - 16);
          }

          v13 = a3;
          std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](a3, &v15);
          a3 = v13;
          v7 = 3;
          a2 = v11;
          result = v10;
          goto LABEL_5;
        }
      }

      v7 = 3;
LABEL_5:
      v4 += v7;
      if (v4 >= v3)
      {
        v14 = a3[1];
        if (v14 != *a3)
        {
          *(v14 - 8) = a2 - *(v14 - 16);
        }

        return result;
      }
    }
  }

  return result;
}

void *std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3) + 1;
    if (v5 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5)
    {
      if (v5 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v4;
  result[1] = v2 + 24;
  return result;
}

void webrtc::H264::ParseRbsp(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a2[2] = 0;
  *a2 = 0;
}

unsigned __int8 *webrtc::H264::WriteRbsp(unsigned __int8 *result, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v4 = result;
  if (a3[1] < (*a3 + a2))
  {
    operator new[]();
  }

  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    do
    {
      v7 = *v4;
      v8 = a3[1];
      if (v7 <= 3 && v5 >= 2)
      {
        if (v8 < v6 + 1)
        {
          operator new[]();
        }

        v5 = 0;
        *(a3[2] + v6) = 3;
        *a3 = v6 + 1;
        v8 = a3[1];
        ++v6;
      }

      if (v8 < v6 + 1)
      {
        operator new[]();
      }

      *(a3[2] + v6) = v7;
      *a3 = v6 + 1;
      if (v7)
      {
        v5 = 0;
      }

      else
      {
        ++v5;
      }

      ++v4;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t webrtc::ParseH264ProfileLevelId(webrtc *this, const char *a2)
{
  if (strlen(this) != 6)
  {
    return 0;
  }

  v3 = strtol(this, 0, 16);
  if (!v3)
  {
    return 0;
  }

  if (v3 <= 0x34u)
  {
    v4 = v3;
    if (((1 << v3) & 0x1C0701C0703400) != 0)
    {
      v4 = v3;
      v5 = BYTE1(v3);
      v6 = BYTE2(v3);
      if (BYTE2(v3) > 0x57u)
      {
LABEL_6:
        if (v6 == 88)
        {
          if ((v5 & 0xFFFFFFCF) == 0x80)
          {
            v7 = &unk_273B93F38;
            return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
          }

          if ((v5 & 0xFFFFFFCF) == 0xC0)
          {
            v7 = &unk_273B93F28;
            return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
          }
        }

        else if (v6 == 100)
        {
          if (!v5)
          {
            v7 = &unk_273B93F48;
            return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
          }

          if (v5 == 12)
          {
            v7 = &unk_273B93F50;
            return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
          }
        }

        else if (v6 == 244 && !v5)
        {
          v7 = &unk_273B93F58;
          return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
        }

        return 0;
      }
    }

    else
    {
      if (v3 != 11)
      {
        return 0;
      }

      if ((v3 & 0x1000) != 0)
      {
        v4 = 0;
      }

      v5 = BYTE1(v3);
      v6 = BYTE2(v3);
      if (BYTE2(v3) > 0x57u)
      {
        goto LABEL_6;
      }
    }

    if (v6 == 66)
    {
      if ((v5 & 0x4F) == 0)
      {
        v7 = &unk_273B93F30;
        return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
      }

      if ((v5 & 0x4F) == 0x40)
      {
        return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
      }
    }

    else if (v6 == 77)
    {
      if ((v5 & 0xFFFFFF8F) == 0x80)
      {
        v7 = &unk_273B93F20;
        return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
      }

      if ((v5 & 0xAF) == 0)
      {
        v7 = &unk_273B93F40;
        return v7[1] & 0xFFFFFF00 | (v4 << 32) | v7[1];
      }
    }

    return 0;
  }

  return 0;
}

unsigned int *webrtc::H264ProfileLevelIdToString@<X0>(unsigned int *this@<X0>, char *a2@<X8>)
{
  v4 = *this;
  v5 = this[1];
  if (v5)
  {
    if (v4 < 6)
    {
      snprintf(__str, 7uLL, "%s%02x", off_279E93EC0[v4], v5);
      v6 = strlen(__str);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_29;
      }

      v7 = v6;
      if (v6 > 0x16)
      {
        operator new();
      }

      a2[23] = v6;
      this = a2;
      if (a2 > __str || &a2[v7] <= __str)
      {
        if (v7)
        {
          this = memcpy(a2, __str, v7);
        }

        a2[v7] = 0;
        goto LABEL_27;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_13:
    *a2 = 0;
    a2[24] = 0;
    return this;
  }

  if (v4 == 2)
  {
    a2[23] = 6;
    if (a2 <= "4d100b" && a2 + 6 > "4d100b")
    {
      goto LABEL_28;
    }

    *(a2 + 2) = 25136;
    v9 = 25652;
LABEL_25:
    v8 = v9 | 0x30310000;
    goto LABEL_26;
  }

  if (v4 == 1)
  {
    a2[23] = 6;
    if (a2 <= "42100b" && a2 + 6 > "42100b")
    {
      goto LABEL_28;
    }

    *(a2 + 2) = 25136;
    v9 = 12852;
    goto LABEL_25;
  }

  if (v4)
  {
    goto LABEL_13;
  }

  a2[23] = 6;
  if (a2 <= "42f00b" && a2 + 6 > "42f00b")
  {
    goto LABEL_28;
  }

  *(a2 + 2) = 25136;
  v8 = 812003892;
LABEL_26:
  *a2 = v8;
  a2[6] = 0;
LABEL_27:
  a2[24] = 1;
  return this;
}

void webrtc::H264IsSameProfile(uint64_t a1, uint64_t a2)
{
  BYTE7(v12[2]) = 16;
  if (&v12[1] <= "profile-level-id" && &v12[2] > "profile-level-id")
  {
    goto LABEL_19;
  }

  strcpy(v12, "profile-level-idprofile-level-id");
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, &v12[1]);
  v6 = v4;
  if ((SBYTE7(v12[2]) & 0x80000000) == 0)
  {
    if ((a1 + 8) != v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    BYTE7(v12[2]) = 16;
    if (&v12[1] > "profile-level-id")
    {
      goto LABEL_12;
    }

LABEL_11:
    if (&v12[2] <= "profile-level-id")
    {
      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    return;
  }

  operator delete(*&v12[1]);
  if ((a1 + 8) == v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = (v6 + 7);
  if (*(v6 + 79) < 0)
  {
    v7 = *v7;
  }

  webrtc::ParseH264ProfileLevelId(v7, v5);
  BYTE7(v12[2]) = 16;
  if (&v12[1] <= "profile-level-id")
  {
    goto LABEL_11;
  }

LABEL_12:
  v12[1] = v12[0];
  LOBYTE(v12[2]) = 0;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &v12[1]);
  if (SBYTE7(v12[2]) < 0)
  {
    v11 = v8;
    operator delete(*&v12[1]);
    v8 = v11;
    if ((a2 + 8) == v11)
    {
      return;
    }
  }

  else if ((a2 + 8) == v8)
  {
    return;
  }

  v10 = (v8 + 7);
  if (*(v8 + 79) < 0)
  {
    v10 = *v10;
  }

  webrtc::ParseH264ProfileLevelId(v10, v9);
}

uint64_t webrtc::H264SpropParameterSets::DecodeSprop(char **a1, void ***a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = memchr(v6, 44, v5);
    if (v7)
    {
      v8 = v7 - v6;
    }

    else
    {
      v8 = -1;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = -1;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
LABEL_12:
      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sprop_parameter_sets.cc");
    }
  }

  if (!v8)
  {
    goto LABEL_30;
  }

  v16 = *(a2 + 23);
  if ((v16 & 0x8000000000000000) != 0)
  {
    v16 = a2[1];
    if (v8 < v16 - 1)
    {
      v17 = *a2;
      if (v16 >= v8)
      {
        v18 = v8;
      }

      else
      {
        v18 = a2[1];
      }

      if (v18 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_64:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      goto LABEL_28;
    }

LABEL_30:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sprop_parameter_sets.cc");
    }

    return 0;
  }

  if (v8 >= v16 - 1)
  {
    goto LABEL_30;
  }

  v17 = a2;
  if (v16 >= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = *(a2 + 23);
  }

  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_64;
  }

LABEL_28:
  if (v18 > 0x16)
  {
    operator new();
  }

  v69 = v18;
  v27 = (v68 + v18);
  if (v68 <= v17 && v27 > v17)
  {
    goto LABEL_111;
  }

  if (v16)
  {
    memmove(v68, v17, v18);
  }

  *v27 = 0;
  v29 = *(a2 + 23);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v29 = a2[1];
    if (v29 <= v8)
    {
      goto LABEL_112;
    }

    v30 = *a2;
    v31 = v8 + 1;
    v32 = v29 - v31;
    if (v29 - v31 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v30 = a2;
    if (v8 >= v29)
    {
      goto LABEL_112;
    }

    v31 = v8 + 1;
    v32 = v29 - v31;
    if (v29 - v31 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  v33 = (v30 + v31);
  if (v32 > 0x16)
  {
    operator new();
  }

  v67 = v32;
  v34 = (v66 + v32);
  if (v66 <= v33 && v34 > v33)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v29 != v31)
  {
    memmove(v66, v33, v32);
  }

  *v34 = 0;
  if ((v69 & 0x80u) == 0)
  {
    v35 = v68;
  }

  else
  {
    v35 = v68[0];
  }

  if ((v69 & 0x80u) == 0)
  {
    v36 = v69;
  }

  else
  {
    v36 = v68[1];
  }

  if ((v36 & 3) != 0)
  {
    goto LABEL_57;
  }

  if (v36)
  {
    v44 = v36 - 1;
    v45 = v35;
    do
    {
      v46 = *v45++;
      v47 = absl::ascii_internal::kPropertyBits[v46];
      if ((v47 & 8) != 0)
      {
        break;
      }
    }

    while (v44--);
    if ((v47 & 8) != 0)
    {
LABEL_57:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }
  }

  memset(&v72, 0, sizeof(v72));
  {
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    goto LABEL_57;
  }

  __p = v72;
  v71 = 1;
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
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

  std::vector<unsigned char>::__assign_with_size[abi:sn200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(a1, p_p, p_p + size, size);
  if ((v71 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v67 & 0x80u) == 0)
  {
    v55 = v66;
  }

  else
  {
    v55 = v66[0];
  }

  if ((v67 & 0x80u) == 0)
  {
    v56 = v67;
  }

  else
  {
    v56 = v66[1];
  }

  if ((v56 & 3) != 0)
  {
    goto LABEL_87;
  }

  if (v56)
  {
    v57 = v56 - 1;
    v58 = v55;
    do
    {
      v59 = *v58++;
      v60 = absl::ascii_internal::kPropertyBits[v59];
      if ((v60 & 8) != 0)
      {
        break;
      }
    }

    while (v57--);
    if ((v60 & 8) != 0)
    {
LABEL_87:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
LABEL_59:
        result = 0;
        if (v67 < 0)
        {
          goto LABEL_107;
        }

        goto LABEL_60;
      }

LABEL_58:
      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sprop_parameter_sets.cc");
      goto LABEL_59;
    }
  }

  memset(&v72, 0, sizeof(v72));
  {
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    goto LABEL_87;
  }

  __p = v72;
  v71 = 1;
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = __p.__r_.__value_.__l.__size_;
  }

  std::vector<unsigned char>::__assign_with_size[abi:sn200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(a1 + 3, v62, v62 + v63, v63);
  if ((v71 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = 1;
  if (v67 < 0)
  {
LABEL_107:
    v64 = result;
    operator delete(v66[0]);
    result = v64;
    if (v69 < 0)
    {
      goto LABEL_108;
    }

    return result;
  }

LABEL_60:
  if (v69 < 0)
  {
LABEL_108:
    v65 = result;
    operator delete(v68[0]);
    return v65;
  }

  return result;
}

char *std::vector<unsigned char>::__assign_with_size[abi:sn200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (v7 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_28;
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a4)
  {
    v22 = a3 - __src;
    if (a3 != __src)
    {
      v23 = result;
      memmove(result, __src, v22);
      result = v23;
    }

    a1[1] = &result[v22];
  }

  else
  {
    if (v10 != result)
    {
      result = memmove(result, __src, v10 - result);
      v10 = a1[1];
    }

    v12 = &__src[v11];
    v13 = v10;
    if (&__src[v11] != a3)
    {
      v14 = &__src[v11];
      v15 = &a3[~v12];
      if (v15 >= -v10)
      {
        v15 = -v10;
      }

      v16 = (v15 + 1);
      if (v15 + 1 < 0x21)
      {
        v13 = v10;
      }

      else
      {
        v13 = v10;
        if (v10 - v12 >= 0x20)
        {
          v17 = v16 & 0x1F;
          if ((v16 & 0x1F) == 0)
          {
            v17 = 32;
          }

          v18 = &v16[-v17];
          v14 = &v18[v12];
          v13 = &v18[v10];
          v19 = (v10 + 16);
          v20 = (v12 + 16);
          do
          {
            v21 = *v20;
            *(v19 - 1) = *(v20 - 1);
            *v19 = v21;
            v19 += 2;
            v20 += 2;
            v18 -= 32;
          }

          while (v18);
        }
      }

      v24 = v13;
      while (v24)
      {
        v25 = *v14++;
        *v24++ = v25;
        ++v13;
        if (v14 == a3)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_28:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_26:
    a1[1] = v13;
  }

  return result;
}

void webrtc::video_coding::H264SpsPpsTracker::CopyAndFixBitstream(uint64_t a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a9;
  if (*(a4 + 1936) != 3)
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    goto LABEL_102;
  }

  v11 = a3;
  v12 = a2;
  v13 = (a1 + 32);
  v14 = (a1 + 8);
  v16 = *(a4 + 304);
  v15 = *(a4 + 312);
  if (v16 != v15)
  {
    v68 = 0;
    v17 = (a1 + 32);
    v18 = (a1 + 8);
    do
    {
      v19 = *v16;
      switch(v19)
      {
        case 5:
          if (*(a4 + 165) == 1)
          {
            v28 = *(v16 + 2);
            if (v28 == -1)
            {
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log("\r\t", v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sps_pps_tracker.cc");
              }

              goto LABEL_92;
            }

            v29 = *v14;
            if (!*v14)
            {
              goto LABEL_88;
            }

            v18 = (a1 + 8);
            do
            {
              if (*(v29 + 8) >= v28)
              {
                v18 = v29;
              }

              v29 = v29[*(v29 + 8) < v28];
            }

            while (v29);
            if (v18 == v14 || v28 < *(v18 + 8))
            {
LABEL_88:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
LABEL_91:
                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sps_pps_tracker.cc");
              }

LABEL_92:
              *a9 = 2;
              *(a9 + 16) = 0;
              *(a9 + 24) = 0;
              *(a9 + 8) = 0;
              return;
            }

            v30 = *v13;
            if (!*v13)
            {
              goto LABEL_90;
            }

            v31 = *(v18 + 10);
            v17 = v13;
            do
            {
              if (*(v30 + 8) >= v31)
              {
                v17 = v30;
              }

              v30 = v30[*(v30 + 8) < v31];
            }

            while (v30);
            if (v17 == v13 || v31 < *(v17 + 8))
            {
LABEL_90:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
                goto LABEL_91;
              }

              goto LABEL_92;
            }

            *(a4 + 156) = *(v17 + 10);
            *(a4 + 158) = *(v17 + 11);
            if (v17[6])
            {
              v68 |= v18[6] != 0;
            }
          }

          break;
        case 8:
          v24 = *v14;
          if (!*v14)
          {
LABEL_22:
            operator new();
          }

          v25 = *(v16 + 2);
          while (1)
          {
            while (1)
            {
              v26 = v24;
              v27 = *(v24 + 8);
              if (v25 >= v27)
              {
                break;
              }

              v24 = *v26;
              if (!*v26)
              {
                goto LABEL_22;
              }
            }

            if (v27 >= v25)
            {
              break;
            }

            v24 = v26[1];
            if (!v24)
            {
              goto LABEL_22;
            }
          }

          *(v26 + 10) = *(v16 + 1);
          v13 = (a1 + 32);
          break;
        case 7:
          v20 = *v13;
          if (!*v13)
          {
LABEL_14:
            operator new();
          }

          v21 = *(v16 + 1);
          while (1)
          {
            while (1)
            {
              v22 = v20;
              v23 = *(v20 + 8);
              if (v21 >= v23)
              {
                break;
              }

              v20 = *v22;
              if (!*v22)
              {
                goto LABEL_14;
              }
            }

            if (v23 >= v21)
            {
              break;
            }

            v20 = v22[1];
            if (!v20)
            {
              goto LABEL_14;
            }
          }

          *(v22 + 10) = *(a4 + 156);
          *(v22 + 11) = *(a4 + 158);
          break;
      }

      v16 += 12;
    }

    while (v16 != v15);
    if ((v68 & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
LABEL_61:
      v13 = v17;
      v14 = v18;
      v12 = a2;
      v9 = a9;
      v11 = a3;
      if (*(a4 + 300) == 1)
      {
        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if (v17 != v13 && v18 != v14)
    {
      v33 = v17[6] + v18[6] + 8;
      v32 = 1;
      goto LABEL_61;
    }

LABEL_102:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sps_pps_tracker.cc", 107, "!append_sps_pps || (sps != sps_data_.end() && pps != pps_data_.end())", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v65);
    std::vector<webrtc::NaluInfo>::push_back[abi:sn200100](v63, v64);
    return;
  }

  v32 = 0;
  v33 = 0;
  if (*(a4 + 300) != 1)
  {
LABEL_62:
    if (*(a4 + 304) == *(a4 + 312))
    {
      v40 = v33;
    }

    else
    {
      v40 = v33 + 4;
    }

    v33 = v40 + v11;
    goto LABEL_66;
  }

LABEL_43:
  v34 = v11 - 1;
  if (v11 - 1 >= v11)
  {
    v34 = v11;
  }

  if (v11 >= 2)
  {
    v35 = v12 + 1;
  }

  else
  {
    v35 = 0;
  }

  if (v11 < 2 || !v34)
  {
LABEL_66:
    v71 = 0;
    v72 = 0uLL;
    webrtc::CopyOnWriteBuffer::EnsureCapacity(&v71, v33);
    if (v32)
    {
      webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v71, v13[8], v13[6]);
      webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v71, v14[8], v14[6]);
      LOBYTE(v69) = 7;
      HIDWORD(v69) = *(v13 + 8);
      v70 = -1;
      std::vector<webrtc::NaluInfo>::push_back[abi:sn200100]((a4 + 304), &v69);
      LOBYTE(v69) = 8;
      v41 = *(v14 + 8);
      HIDWORD(v69) = *(v13 + 8);
      v70 = v41;
      std::vector<webrtc::NaluInfo>::push_back[abi:sn200100]((a4 + 304), &v69);
    }

    if (*(a4 + 300) == 1)
    {
      if (v11 - 1 >= v11)
      {
        v42 = v11;
      }

      else
      {
        v42 = v11 - 1;
      }

      if (v11 >= 2)
      {
        v43 = v12 + 1;
      }

      else
      {
        v43 = 0;
      }

      if (v11 >= 2 && v42)
      {
        v44 = 0;
        while (1)
        {
          if (v42 - v44 < 2)
          {
            break;
          }

          if (!*&v43[v44])
          {
            break;
          }

          v45 = v44 + 2;
          v46 = __rev16(*&v43[v44]);
          if (v42 - v45 < v46)
          {
            break;
          }

          webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v71, &v43[v45], v46);
          v44 = v45 + v46;
          if (v42 == v44)
          {
            goto LABEL_86;
          }
        }

        *v9 = 1;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 8) = 0;
        v54 = v71;
        if (v71 && atomic_fetch_add((v71 + 24), 0xFFFFFFFF) == 1)
        {
          v55 = *(v54 + 16);
          *(v54 + 16) = 0;
          if (v55)
          {
            MEMORY[0x2743DA520](v55, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v54, 0x1010C40EE34DA14);
        }

        return;
      }
    }

    else
    {
      if (*(a4 + 304) != *(a4 + 312))
      {
      }

      webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v71, v12, v11);
    }

LABEL_86:
    *v9 = 0;
    *(v9 + 8) = v71;
    *(v9 + 16) = v72;
    return;
  }

  v36 = 0;
  while (v34 - v36 >= 2)
  {
    v37 = *&v35[v36];
    if (!*&v35[v36])
    {
      break;
    }

    v38 = v36 + 2;
    v39 = __rev16(v37);
    if (v34 - v38 < v39)
    {
      break;
    }

    v33 += 4 + v39;
    v36 = v38 + v39;
    if (v34 == v36)
    {
      goto LABEL_66;
    }
  }

  *v9 = 1;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 8) = 0;
}

void *std::vector<webrtc::NaluInfo>::push_back[abi:sn200100](void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 2) + 1;
    if (v5 > 0x1555555555555555)
    {
      goto LABEL_13;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 2);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v5)
    {
      if (v5 <= 0x1555555555555555)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v4;
  result[1] = v2 + 12;
  return result;
}

void webrtc::video_coding::H264SpsPpsTracker::InsertSpsPpsNalus(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1] - *a2;
  if (!v3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_42;
  }

  if ((**a2 & 0x1F) != 7)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

LABEL_49:
    webrtc::webrtc_logging_impl::Log("\r\t", v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sps_pps_tracker.cc");
    return;
  }

  if (a3[1] == *a3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

LABEL_42:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sps_pps_tracker.cc");
    return;
  }

  if ((**a3 & 0x1F) != 8)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_49;
  }

  v7 = v3 - 1;
  if (v3 - 1 >= v3)
  {
    v7 = a2[1] - *a2;
  }

  if (v3 <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  webrtc::H264::ParseRbsp(v8, &__p);
  v13 = __p;
  v14 = v63 - __p;
  if (v63 == __p)
  {
    v13 = 0;
  }

  v71 = v13;
  if (((v14 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
LABEL_69:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v9, v10, v11, v12, v61);
    webrtc::H265BitstreamParser::~H265BitstreamParser(v60);
    return;
  }

  LODWORD(v72) = 8 * v14;
  BYTE4(v72) = 1;
  webrtc::SpsParser::ParseSpsUpToVui(&v71, v67);
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  v15 = a3[1] - *a3;
  v16 = v15 - 1;
  if (v15 - 1 >= v15)
  {
    v16 = a3[1] - *a3;
  }

  if (v15 <= 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  webrtc::H264::ParseRbsp(v17, &v71);
  if (v72 == v71)
  {
    v22 = 0;
  }

  else
  {
    v22 = v71;
  }

  webrtc::PpsParser::ParseInternal(v22, v72 - v71, v18, v19, v20, v21, &__p);
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if ((v70 & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sps_pps_tracker.cc");
    }

    if (v66)
    {
      return;
    }

    goto LABEL_48;
  }

  if ((v66 & 1) == 0)
  {
LABEL_48:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_49;
  }

  v23 = a2;
  v24 = *a2;
  v25 = v23[1];
  if (v25 != v24 && v25 != v24)
  {
    operator new[]();
  }

  v26 = *(a1 + 32);
  if (!v26)
  {
LABEL_51:
    operator new();
  }

  v27 = a1;
  v28 = a3;
  while (1)
  {
    while (1)
    {
      v43 = v26;
      v44 = *(v26 + 32);
      if (v69 >= v44)
      {
        break;
      }

      v26 = *v43;
      if (!*v43)
      {
        goto LABEL_51;
      }
    }

    if (v44 >= v69)
    {
      break;
    }

    v26 = v43[1];
    if (!v26)
    {
      goto LABEL_51;
    }
  }

  v43[5] = v68;
  v43[6] = 0;
  v52 = v43[8];
  v43[7] = 0;
  v43[8] = 0;
  if (v52)
  {
    MEMORY[0x2743DA520](v52, 0x1000C8077774924);
    v28 = a3;
    v27 = a1;
  }

  if (v28[1] != *v28)
  {
    operator new[]();
  }

  v53 = *(v27 + 8);
  if (!v53)
  {
LABEL_62:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v54 = v53;
      v55 = *(v53 + 8);
      if (v64 >= v55)
      {
        break;
      }

      v53 = *v54;
      if (!*v54)
      {
        goto LABEL_62;
      }
    }

    if (v55 >= v64)
    {
      break;
    }

    v53 = v54[1];
    if (!v53)
    {
      goto LABEL_62;
    }
  }

  *(v54 + 10) = v65;
  v54[6] = 0;
  v54[7] = 0;
  v56 = v54[8];
  v54[8] = 0;
  if (v56)
  {
    MEMORY[0x2743DA520](v56, 0x1000C8077774924);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    if (v70)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v57, v58, v59, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h264_sps_pps_tracker.cc");
      return;
    }

    __break(1u);
    goto LABEL_69;
  }
}

void webrtc::H265BitstreamParser::~H265BitstreamParser(webrtc::H265BitstreamParser *this)
{
  *this = &unk_2882941E0;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 5);
    v5 = *(this + 4);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 56);
        if (v6)
        {
          *(v4 - 48) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 88);
        if (v7)
        {
          *(v4 - 80) = v7;
          operator delete(v7);
        }

        v4 -= 168;
      }

      while (v4 != v3);
      v5 = *(this + 4);
    }

    *(this + 5) = v3;
    operator delete(v5);
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

{
  webrtc::H265BitstreamParser::~H265BitstreamParser(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::H265BitstreamParser::GetSPS(webrtc::H265BitstreamParser *this, webrtc::H265BitstreamParser *a2, unsigned int a3)
{
  if (a2 == this)
  {
    this = a2;
    v8 = a2;
  }

  else
  {
    v3 = 0xCF3CF3CF3CF3CF3DLL * ((a2 - this) >> 3);
    do
    {
      v4 = v3 >> 1;
      v5 = (this + 168 * (v3 >> 1));
      v7 = *v5;
      v6 = (v5 + 42);
      v3 += ~(v3 >> 1);
      if (v7 < a3)
      {
        this = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
    v8 = this;
    if (this != a2)
    {
      v8 = (this + 168);
      if (*this > a3)
      {
        v8 = this;
      }
    }
  }

  if (this == v8)
  {
    v9 = a2;
  }

  else
  {
    v9 = this;
  }

  if (v9 != a2)
  {
    return v9 + 8;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
  }

  return 0;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
    return;
  }

  v6 = *(a1 + 16);
  v7 = v6 << 6;
  if (v6 << 6 < v4 || v3 > (v6 << 6) - v4)
  {
    __dst = 0;
    v25 = 0;
    v26 = 0;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v10 = v6 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&__dst, v11);
    v12 = a1;
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = v14 + v4;
    v25 = v14 + v4;
    v16 = __dst;
    if (v14 < 1)
    {
      LODWORD(v18) = 0;
      v17 = __dst;
    }

    else
    {
      v18 = v14 >> 6;
      if (v14 >= 0x40)
      {
        memmove(__dst, v13, 8 * v18);
        v12 = a1;
      }

      v17 = &v16[8 * v18];
      if ((v14 & 0x3F) != 0)
      {
        *v17 = *v17 & ~(0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F)) | *(v13 + v18) & (0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F));
        LODWORD(v18) = v14 & 0x3F;
      }

      else
      {
        LODWORD(v18) = 0;
      }

      v13 = *v12;
      v14 = *(v12 + 8);
      v16 = __dst;
      v15 = v25;
    }

    *v12 = v16;
    *(v12 + 8) = v15;
    __dst = v13;
    v25 = v14;
    v19 = *(v12 + 16);
    *(v12 + 16) = v26;
    v26 = v19;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v17 = (*a1 + 8 * (v3 >> 6));
    v18 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
  }

  if (v4)
  {
    if (a3)
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v20 = v4;
        }

        else
        {
          v20 = (64 - v18);
        }

        *v17 |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v20)) & (-1 << v18);
        v17 += 8;
        v4 -= v20;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        memset(v17, 255, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] | (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
LABEL_44:
        *&v17[8 * v21] = v22;
      }
    }

    else
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v23 = v4;
        }

        else
        {
          v23 = (64 - v18);
        }

        *v17 &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v23)) & (-1 << v18));
        v17 += 8;
        v4 -= v23;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        bzero(v17, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
        goto LABEL_44;
      }
    }
  }
}

void webrtc::H265BitstreamParser::ParseSlice(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v398 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_10;
  }

  v3 = *a2;
  v4 = (v3 >> 1) & 0x3F;
  if (v4 <= 0x31)
  {
    if (((1 << ((*a2 >> 1) & 0x3F)) & 0x3018800000000) != 0)
    {
      return;
    }

    if (v4 == 33)
    {
      if (a3 != 1)
      {
        v28 = a3 - 2;
        if (a3 - 2 >= a3)
        {
          v28 = a3;
        }

        if (a3 <= 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = v28;
        }

        webrtc::H264::ParseRbsp(v29, __p);
        if (*&__p[8] == *__p)
        {
          v34 = 0;
        }

        else
        {
          v34 = *__p;
        }

        webrtc::H265SpsParser::ParseSpsInternal(v34, *&__p[8] - *__p, v30, v31, v32, v33, __dst);
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if (LOBYTE(__dst[10]))
        {
          *&__p[32] = __dst[2];
          *&__p[48] = __dst[3];
          *&__p[64] = __dst[4];
          *&__p[16] = __dst[1];
          *__p = __dst[0];
          v35 = *(&__dst[4] + 1);
          *&__p[72] = *(&__dst[4] + 1);
          v383 = *&__dst[5];
          *&__p[80] = __dst[5];
          *(&__dst[4] + 1) = 0;
          __dst[5] = 0uLL;
          *&__p[104] = *(&__dst[6] + 8);
          *&__p[96] = *&__dst[6];
          *&__p[120] = *(&__dst[7] + 1);
          *(&__dst[6] + 1) = 0;
          __dst[7] = 0uLL;
          *&__p[144] = __dst[9];
          *&__p[128] = __dst[8];
          __p[160] = 1;
          v36 = a1;
          v39 = *(a1 + 32);
          v38 = *(v36 + 40);
          v37 = (v36 + 32);
          if (v38 == v39)
          {
            v39 = v38;
          }

          else
          {
            v40 = 0xCF3CF3CF3CF3CF3DLL * ((v38 - v39) >> 3);
            do
            {
              v41 = v40 >> 1;
              v42 = (v39 + 168 * (v40 >> 1));
              v44 = *v42;
              v43 = v42 + 42;
              v40 += ~(v40 >> 1);
              if (v44 < *&__p[140])
              {
                v39 = v43;
              }

              else
              {
                v40 = v41;
              }
            }

            while (v40);
          }

          if (v38 == v39 || *&__p[140] < *v39)
          {
            memset(__dst, 0, 160);
            v39 = std::vector<std::pair<unsigned int,webrtc::H265SpsParser::SpsState>>::emplace<unsigned int const&,webrtc::H265SpsParser::SpsState>(v37, v39, &__p[140], __dst);
            if (*(&__dst[6] + 1))
            {
              operator delete(*(&__dst[6] + 1));
            }

            if (*(&__dst[4] + 1))
            {
              operator delete(*(&__dst[4] + 1));
            }
          }

          *(v39 + 24) = *&__p[16];
          *(v39 + 40) = *&__p[32];
          *(v39 + 56) = *&__p[48];
          *(v39 + 72) = *&__p[64];
          *(v39 + 8) = *__p;
          std::vector<webrtc::H265SpsParser::ShortTermRefPicSet>::__assign_with_size[abi:sn200100]<webrtc::H265SpsParser::ShortTermRefPicSet*,webrtc::H265SpsParser::ShortTermRefPicSet*>((v39 + 80), v35, v383, 0x2F71AAFF02F71ABLL * ((v383 - v35) >> 2));
          *(v39 + 104) = *&__p[96];
          std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>((v39 + 112), *&__p[104], *&__p[112], (*&__p[112] - *&__p[104]) >> 2);
          *(v39 + 136) = *&__p[128];
          *(v39 + 152) = *&__p[144];
          if (__p[160])
          {
            if (*&__p[104])
            {
              operator delete(*&__p[104]);
            }

            if (*&__p[72])
            {
              operator delete(*&__p[72]);
            }
          }

          return;
        }
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return;
      }

LABEL_10:
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
      return;
    }

    if (v4 == 34)
    {
      __p[0] = 0;
      __p[36] = 0;
      if (a3 == 1)
      {
LABEL_7:
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          return;
        }

        goto LABEL_10;
      }

      if (a3 - 2 >= a3)
      {
        v54 = a3;
      }

      else
      {
        v54 = a3 - 2;
      }

      if (a3 <= 2)
      {
        v55 = 0;
      }

      else
      {
        v55 = v54;
      }

      webrtc::H264::ParseRbsp(v55, &v391);
      v56 = v391;
      v57 = v392 - v391;
      if (v392 == v391)
      {
        v56 = 0;
      }

      v387 = v56;
      if (((v57 >> 28) & 0x1FFFFFFFFLL) == 0)
      {
        LODWORD(v388) = 8 * v57;
        BYTE4(v388) = 1;
        ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v387);
        BYTE4(v388) = 1;
        if ((v388 & 0x80000000) != 0 || ExponentialGolomb >= 0x40)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v65, v66, v67, v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
          }

          if (v391)
          {
            v392 = v391;
            operator delete(v391);
          }

          return;
        }

        v59 = webrtc::BitstreamReader::ReadExponentialGolomb(&v387);
        BYTE4(v388) = 1;
        v60 = (v388 & 0x80000000) != 0 || v59 >= 0x10;
        v61 = !v60;
        if (v60)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v75, v76, v77, v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
          }
        }

        else
        {
          SPS = webrtc::H265BitstreamParser::GetSPS(*(a1 + 32), *(a1 + 40), v59);
          webrtc::H265PpsParser::ParsePps(v55, SPS, __dst);
          *__p = __dst[0];
          *&__p[16] = __dst[1];
          *&__p[29] = *(&__dst[1] + 13);
        }

        if (v391)
        {
          v392 = v391;
          operator delete(v391);
        }

        if (!v61)
        {
          return;
        }

        if (__p[36])
        {
          v82 = webrtc::flat_map<unsigned int,webrtc::H265PpsParser::PpsState,std::less<void>,std::vector<std::pair<unsigned int,webrtc::H265PpsParser::PpsState>>>::operator[]((a1 + 56), &__p[24]);
          *v82 = *__p;
          *(v82 + 16) = *&__p[16];
          *(v82 + 32) = *&__p[32];
          return;
        }

        goto LABEL_7;
      }

LABEL_668:
      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v46, v47, v48, v49, v376);
      webrtc::flat_map<unsigned int,webrtc::H265PpsParser::PpsState,std::less<void>,std::vector<std::pair<unsigned int,webrtc::H265PpsParser::PpsState>>>::operator[](v374, v375);
      return;
    }
  }

  if (v4 == 32)
  {
    if (a3 != 1)
    {
      v13 = a3 - 2;
      if (a3 - 2 >= a3)
      {
        v13 = a3;
      }

      if (a3 <= 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      webrtc::H264::ParseRbsp(v14, __p);
      if (*&__p[8] == *__p)
      {
        v19 = 0;
      }

      else
      {
        v19 = *__p;
      }

      webrtc::H265VpsParser::ParseInternal(v19, *&__p[8] - *__p, v15, v16, v17, v18, __dst);
      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      *&__p[29] = *(&__dst[1] + 13);
      *__p = __dst[0];
      *&__p[16] = __dst[1];
      if (BYTE4(__dst[2]))
      {
        v20 = *(a1 + 8);
        v21 = *(a1 + 16);
        if (v21 == v20)
        {
          v20 = *(a1 + 16);
        }

        else
        {
          v22 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3);
          do
          {
            v23 = v22 >> 1;
            v24 = (v20 + 40 * (v22 >> 1));
            v26 = *v24;
            v25 = v24 + 10;
            v22 += ~(v22 >> 1);
            if (v26 < *__p)
            {
              v20 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        if (v21 == v20 || *__p < *v20)
        {
          memset(__dst, 0, 36);
          v20 = std::vector<std::pair<unsigned int,webrtc::H265VpsParser::VpsState>>::emplace<unsigned int const&,webrtc::H265VpsParser::VpsState>((a1 + 8), v20, __p, __dst);
        }

        *(v20 + 4) = *__p;
        *(v20 + 20) = *&__p[16];
        *(v20 + 36) = *&__p[32];
        return;
      }
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_10;
  }

  if (*(a1 + 84) == 1)
  {
    *(a1 + 84) = 0;
  }

  if (*(a1 + 92) == 1)
  {
    *(a1 + 92) = 0;
  }

  webrtc::H264::ParseRbsp(a3, &v391);
  v50 = v391;
  v51 = v392 - v391;
  if ((v392 - v391) < 2)
  {
    v52 = 1;
    goto LABEL_190;
  }

  if (v392 == v391)
  {
    v63 = 0;
  }

  else
  {
    v63 = v391;
  }

  v390.i64[0] = v63;
  if (((v51 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    goto LABEL_668;
  }

  v64 = 8 * v51;
  if (v64 > 0xF)
  {
    v72 = &v63[(v64 >> 3) - ((v64 - 9) >> 3)];
    v390.i64[0] = v72;
    v390.i8[12] = 0;
    if (v64 != 16)
    {
      v390.i32[2] = v64 - 17;
      v74 = *v72 >= 0;
      if ((v3 & 0x70) != 0x20)
      {
        goto LABEL_105;
      }

      if (v64 >= 0x12)
      {
        v73 = v64 - 18;
        v390.i64[0] = &v72[((v64 - 10) >> 3) - ((v64 - 11) >> 3)];
      }

      else
      {
        v73 = -1;
      }

      goto LABEL_93;
    }
  }

  else
  {
    v390.i8[12] = 0;
  }

  v390.i32[2] = -1;
  if ((v3 & 0x70) != 0x20)
  {
    v74 = 1;
    goto LABEL_105;
  }

  v390.i8[12] = 0;
  v73 = -1;
  v74 = 1;
LABEL_93:
  v390.i32[2] = v73;
LABEL_105:
  v83 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
  v84 = v83;
  v390.i8[12] = 1;
  v85 = v390.i32[2];
  if (v390.i32[2] < 0 || v83 >= 0x40)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_188;
    }

LABEL_115:
    v100 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_116;
  }

  v87 = *(a1 + 56);
  v86 = *(a1 + 64);
  if (v86 == v87)
  {
    v87 = *(a1 + 64);
  }

  else
  {
    v88 = 0xCCCCCCCCCCCCCCCDLL * ((v86 - v87) >> 3);
    do
    {
      v89 = v88 >> 1;
      v90 = &v87[10 * (v88 >> 1)];
      v92 = *v90;
      v91 = v90 + 10;
      v88 += ~(v88 >> 1);
      if (v92 < v83)
      {
        v87 = v91;
      }

      else
      {
        v88 = v89;
      }
    }

    while (v88);
  }

  v101 = v87;
  if (v86 != v87)
  {
    v101 = v87 + 10;
    if (*v87 > v83)
    {
      v101 = v87;
    }
  }

  if (v87 == v101)
  {
    v102 = *(a1 + 64);
  }

  else
  {
    v102 = v87;
  }

  if (v86 == v102)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v111, v112, v113, v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
    }

    v52 = 1;
    v390.i8[12] = 1;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_189;
    }

LABEL_187:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v118, v119, v120, v121, v122, v123, v124, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
    goto LABEL_188;
  }

  v103 = v102[8];
  v105 = *(a1 + 32);
  v104 = *(a1 + 40);
  if (v104 == v105)
  {
    v105 = *(a1 + 40);
  }

  else
  {
    v106 = 0xCF3CF3CF3CF3CF3DLL * ((v104 - v105) >> 3);
    do
    {
      v107 = v106 >> 1;
      v108 = &v105[168 * (v106 >> 1)];
      v110 = *v108;
      v109 = v108 + 168;
      v106 += ~(v106 >> 1);
      if (v110 < v103)
      {
        v105 = v109;
      }

      else
      {
        v106 = v107;
      }
    }

    while (v106);
  }

  v125 = v105;
  if (v104 != v105)
  {
    v125 = v105 + 168;
    if (*v105 > v103)
    {
      v125 = v105;
    }
  }

  if (v105 == v125)
  {
    v126 = *(a1 + 40);
  }

  else
  {
    v126 = v105;
  }

  if (v104 == v126)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v128, v129, v130, v131, v132, v133, v134, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
    }

    v52 = 1;
    v390.i8[12] = 1;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_189;
    }

    goto LABEL_187;
  }

  if (!v74)
  {
    goto LABEL_199;
  }

  if (*(v102 + 4) == 1)
  {
    v390.i8[12] = 0;
    if (*(v390.i64 + 4) <= 0)
    {
      v135 = 0;
      v85 = -1;
      v390.i32[2] = -1;
    }

    else
    {
      v85 = v390.i32[2] - 1;
      v390.i32[2] = v85;
      v127 = v390.i64[0];
      if ((v85 & 7) != 0)
      {
        LODWORD(v127) = *v390.i64[0] >> (v85 & 7);
      }

      else
      {
        ++v390.i64[0];
        LOBYTE(v127) = *v127;
      }

      v135 = v127 & 1;
    }
  }

  else
  {
    v135 = 0;
  }

  v136 = -1 << (v126[60] + v126[64] + 3);
  v137 = *(v126 + 5);
  v138 = *(v126 + 6);
  v286 = (v137 & ~v136) == 0;
  v139 = v137 >> (v126[60] + v126[64] + 3);
  if (!v286)
  {
    ++v139;
  }

  v140 = v138 >> (v126[60] + v126[64] + 3);
  if ((v138 & ~v136) != 0)
  {
    ++v140;
  }

  v141 = v140 * v139;
  if (v141)
  {
    v142 = 32;
  }

  else
  {
    v142 = -1;
  }

  v390.i8[12] = 1;
  if (v85 < 0 || (v143 = v142 - __clz(v141 - 1), v143 == -1))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

  v390.i8[12] = 0;
  v60 = v85 >= v143;
  v144 = v85 - v143;
  if (v60)
  {
    v152 = (v85 + 7) >> 3;
    v153 = v144 + 7;
    if (v144 < -7)
    {
      v153 = v144 + 14;
    }

    v390.i64[0] += (v152 - (v153 >> 3));
    v85 = v144;
  }

  else
  {
    v85 = -1;
  }

  v390.i32[2] = v85;
  if (v135)
  {
    goto LABEL_620;
  }

LABEL_199:
  v154 = v102[2];
  if (v154)
  {
    v155 = v390.i64[0];
    do
    {
      while (v85 < 1)
      {
        v85 = -1;
        if (!--v154)
        {
          goto LABEL_204;
        }
      }

      v155 += (((v85 + 7) >> 3) - ((v85 + 6) >> 3));
      v390.i64[0] = v155;
      --v85;
      --v154;
    }

    while (v154);
LABEL_204:
    v390.i8[12] = 0;
    v390.i32[2] = v85;
  }

  v156 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
  v157 = v156;
  v390.i8[12] = 1;
  v158 = v390.i32[2];
  if (v390.i32[2] < 0 || v156 >= 3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_188;
    }

    goto LABEL_115;
  }

  if (*(v102 + 6) == 1)
  {
    v390.i8[12] = 0;
    if (v390.i32[2])
    {
      v158 = v390.i32[2] - 1;
      v390.i64[0] += (((v390.i32[2] + 7) >> 3) - ((v390.i32[2] + 6) >> 3));
    }

    else
    {
      v158 = -1;
    }

    v390.i32[2] = v158;
  }

  if (*(v126 + 4))
  {
    v390.i8[12] = 0;
    if (v158 >= 2)
    {
      v390.i64[0] += (((v158 + 7) >> 3) - ((v158 + 5) >> 3));
      v158 -= 2;
    }

    else
    {
      v158 = -1;
    }

    v390.i32[2] = v158;
  }

  v388 = 0;
  v387 = 0;
  v389 = 0;
  bzero(__dst, 0x40CuLL);
  if ((v4 - 21) > 0xFFFFFFFD)
  {
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    goto LABEL_228;
  }

  v159 = *(v126 + 7) + 4;
  if (v159 < 0 || (v160 = __OFSUB__(v158, v159), v161 = v158 - v159, (v161 < 0) ^ v160))
  {
    v390.i8[12] = 0;
LABEL_232:
    v390.i32[2] = -1;
LABEL_233:
    webrtc::H265SpsParser::ParseShortTermRefPicSet(*(v126 + 18), *(v126 + 18), v126 + 10, *&v126[4 * *(v126 + 2) + 32], &v390, __p);
    v390.i8[12] = 1;
    if (v390.i32[2] < 0 || (v397 & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v172, v173, v174, v175, v176, v177, v178, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
      }

      goto LABEL_337;
    }

    memcpy(__dst, __p, 0x40CuLL);
    v170 = 0;
    goto LABEL_253;
  }

  v162 = v161 + 7;
  if (v161 < -7)
  {
    v162 = v161 + 14;
  }

  v163 = (v390.i64[0] + (((v158 + 7) >> 3) - (v162 >> 3)));
  v390.i64[0] = v163;
  v390.i8[12] = 0;
  if (v161 <= 0)
  {
    goto LABEL_232;
  }

  v390.i32[2] = v161 - 1;
  v164 = (v161 - 1) & 7;
  if (v164)
  {
    v165 = *v163 >> v164;
  }

  else
  {
    v390.i64[0] = (v163 + 1);
    LOBYTE(v165) = *v163;
  }

  if ((v165 & 1) == 0)
  {
    goto LABEL_233;
  }

  v180 = *(v126 + 18);
  v170 = 1;
  if (v180 < 2)
  {
LABEL_253:
    v166 = 0;
    goto LABEL_254;
  }

  v181 = __clz(v180 - 1);
  if (1 << -v181 >= v180)
  {
    v182 = 32 - v181;
  }

  else
  {
    v182 = 33 - v181;
  }

  v183 = webrtc::BitstreamReader::ReadBits(&v390, v182);
  v166 = v183;
  v390.i8[12] = 1;
  if (v390.i32[2] < 0 || *(v126 + 18) - 1 < v183)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_335;
    }

    goto LABEL_337;
  }

LABEL_254:
  if (!*(v126 + 26))
  {
    v167 = 0;
    v168 = 0;
    goto LABEL_422;
  }

  if (*(v126 + 27))
  {
    v191 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
    v168 = v191;
    v390.i8[12] = 1;
    if (v390.i32[2] < 0 || v191 > *(v126 + 27))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_335;
      }

      goto LABEL_337;
    }
  }

  else
  {
    v168 = 0;
  }

  v192 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
  v390.i8[12] = 1;
  if (v390.i32[2] < 0 || v192 > 32 - v168)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_335;
    }

    goto LABEL_337;
  }

  v377 = v192;
  v378 = v166;
  v193 = v192 + v168;
  std::vector<BOOL>::resize(&v387, v193, 0);
  if (!v193)
  {
LABEL_421:
    v167 = v377;
    v166 = v378;
LABEL_422:
    if (*(v126 + 34))
    {
      v390.i8[12] = 0;
      if (*(v390.i64 + 4) <= 0)
      {
        v169 = 0;
        v390.i32[2] = -1;
      }

      else
      {
        --v390.i32[2];
        v284 = v390.i64[0];
        if ((v390.i8[8] & 7) != 0)
        {
          LODWORD(v284) = *v390.i64[0] >> (v390.i8[8] & 7);
        }

        else
        {
          ++v390.i64[0];
          LOBYTE(v284) = *v284;
        }

        v169 = v284 & 1;
      }
    }

    else
    {
      v169 = 0;
    }

LABEL_228:
    if (*(v126 + 17))
    {
      v390.i8[12] = 0;
      v171 = v390.i32[2] - 1;
      if (v390.i32[2] < 1)
      {
        v171 = -1;
      }

      else
      {
        v390.i64[0] += (((v390.i32[2] + 7) >> 3) - ((v390.i32[2] + 6) >> 3));
      }

      v390.i32[2] = v171;
      if (!*(v126 + 4))
      {
        if (*(v126 + 3))
        {
          v390.i8[12] = 0;
          v179 = v171 - 1;
          if (v171 < 1)
          {
            v179 = -1;
          }

          else
          {
            v390.i64[0] += (((v171 + 7) >> 3) - ((v171 + 6) >> 3));
          }

          v390.i32[2] = v179;
        }
      }
    }

    if (v157 > 1)
    {
LABEL_618:
      if (v387)
      {
        operator delete(v387);
      }

LABEL_620:
      v346 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
      if (v346)
      {
        v347 = (v346 + 1) >> 1;
      }

      else
      {
        v347 = -(v346 >> 1);
      }

      v390.i8[12] = 1;
      if (v347 >= 0)
      {
        v348 = v347;
      }

      else
      {
        v348 = -v347;
      }

      if (v390.i32[2] < 0 || v348 >= 0x34)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v350, v351, v352, v353, v354, v355, v356, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
        }

        goto LABEL_188;
      }

      v349 = v102[5] + v347 + 26;
      if (v349 >= -v102[9] && v349 < 52)
      {
        v52 = 0;
        *(a1 + 80) = v347;
        *(a1 + 84) = 1;
        *(a1 + 88) = v84;
        *(a1 + 92) = 1;
        goto LABEL_189;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_188;
      }

      v100 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
LABEL_116:
      webrtc::webrtc_logging_impl::Log(v100, v93, v94, v95, v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
      goto LABEL_188;
    }

    v390.i8[12] = 0;
    v384 = v168;
    if (*(v390.i64 + 4) <= 0)
    {
      v224 = -1;
      v390.i32[2] = -1;
      v226 = v102[3];
      v227 = v102[4];
    }

    else
    {
      v224 = v390.i32[2] - 1;
      v390.i32[2] = v224;
      v225 = v390.i64[0];
      if ((v224 & 7) != 0)
      {
        LODWORD(v225) = *v390.i64[0] >> (v224 & 7);
      }

      else
      {
        ++v390.i64[0];
        LOBYTE(v225) = *v225;
      }

      v227 = v102[4];
      if (v225)
      {
        v379 = v166;
        v228 = v170;
        v229 = v167;
        v226 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
        v390.i8[12] = 1;
        v224 = v390.i32[2];
        if (v390.i32[2] < 0 || v226 >= 0xF)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
            goto LABEL_336;
          }

          goto LABEL_337;
        }

        if (!v157)
        {
          v381 = v169;
          v230 = v226;
          v231 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
          v227 = v231;
          v390.i8[12] = 1;
          v224 = v390.i32[2];
          if (v390.i32[2] < 0 || v231 >= 0xF)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
            {
              v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
              goto LABEL_336;
            }

            goto LABEL_337;
          }

          v226 = v230;
          v169 = v381;
        }

        v167 = v229;
        v170 = v228;
        v166 = v379;
      }

      else
      {
        v226 = v102[3];
      }
    }

    if ((v170 & 1) == 0)
    {
      v166 = *(v126 + 18);
    }

    v232 = *(v126 + 10);
    v233 = 0x2F71AAFF02F71ABLL * ((*(v126 + 11) - v232) >> 2);
    v234 = (v232 + 1036 * v166);
    if (v233 <= v166)
    {
      v235 = __dst;
    }

    else
    {
      v235 = v234;
    }

    v390.i8[12] = 1;
    if (v224 < 0 || (v236 = *v235, v236 >= 0x41))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_335;
      }

      goto LABEL_337;
    }

    if (v233 <= v166)
    {
      v238 = __dst;
    }

    else
    {
      v238 = v234;
    }

    v239 = *(v238 + 1);
    if (v239 > 0x40)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_335;
      }

      goto LABEL_337;
    }

    v380 = v227;
    v382 = v226;
    if (!v236)
    {
      v243 = 0;
      goto LABEL_386;
    }

    v240 = __dst;
    if (v233 <= v166)
    {
      v241 = __dst;
    }

    else
    {
      v241 = v234;
    }

    if (v236 > 7)
    {
      v242 = v236 & 0x78;
      if (v233 > v166)
      {
        v240 = v234;
      }

      v244.i64[0] = 0x100000001;
      v244.i64[1] = 0x100000001;
      v245 = vbicq_s8(v244, vceqzq_s32(*(v241 + 264)));
      v246 = vbicq_s8(v244, vceqzq_s32(*(v240 + 280)));
      if (v242 != 8)
      {
        v247 = __dst;
        v248 = v233 <= v166 ? __dst : v234;
        v245 = vsubq_s32(v245, vtstq_s32(*(v248 + 296), *(v248 + 296)));
        v246 = vsubq_s32(v246, vtstq_s32(*(v248 + 312), *(v248 + 312)));
        if (v242 != 16)
        {
          if (v233 > v166)
          {
            v247 = v234;
          }

          v245 = vsubq_s32(v245, vtstq_s32(*(v247 + 328), *(v247 + 328)));
          v246 = vsubq_s32(v246, vtstq_s32(*(v247 + 344), *(v247 + 344)));
          if (v242 != 24)
          {
            v249 = __dst;
            v250 = v233 <= v166 ? __dst : v234;
            v245 = vsubq_s32(v245, vtstq_s32(*(v250 + 360), *(v250 + 360)));
            v246 = vsubq_s32(v246, vtstq_s32(*(v250 + 376), *(v250 + 376)));
            if (v242 != 32)
            {
              if (v233 > v166)
              {
                v249 = v234;
              }

              v245 = vsubq_s32(v245, vtstq_s32(*(v249 + 392), *(v249 + 392)));
              v246 = vsubq_s32(v246, vtstq_s32(*(v249 + 408), *(v249 + 408)));
              if (v242 != 40)
              {
                v251 = __dst;
                v252 = v233 <= v166 ? __dst : v234;
                v245 = vsubq_s32(v245, vtstq_s32(*(v252 + 424), *(v252 + 424)));
                v246 = vsubq_s32(v246, vtstq_s32(*(v252 + 440), *(v252 + 440)));
                if (v242 != 48)
                {
                  if (v233 > v166)
                  {
                    v251 = v234;
                  }

                  v245 = vsubq_s32(v245, vtstq_s32(*(v251 + 456), *(v251 + 456)));
                  v246 = vsubq_s32(v246, vtstq_s32(*(v251 + 472), *(v251 + 472)));
                  if (v242 != 56)
                  {
                    v253 = __dst;
                    if (v233 > v166)
                    {
                      v253 = v234;
                    }

                    v245 = vsubq_s32(v245, vtstq_s32(*(v253 + 488), *(v253 + 488)));
                    v246 = vsubq_s32(v246, vtstq_s32(*(v253 + 504), *(v253 + 504)));
                  }
                }
              }
            }
          }
        }
      }

      v243 = vaddvq_s32(vaddq_s32(v246, v245));
      if (v242 == v236)
      {
LABEL_386:
        if (!v239)
        {
          goto LABEL_398;
        }

        v257 = __dst;
        if (v233 > v166)
        {
          v257 = v234;
        }

        if (v239 > 7)
        {
          v258 = v239 & 0x78;
          v259 = 0uLL;
          v260 = v243;
          v261 = (v257 + 792);
          v262 = v258;
          do
          {
            v260 = vsubq_s32(v260, vtstq_s32(v261[-1], v261[-1]));
            v259 = vsubq_s32(v259, vtstq_s32(*v261, *v261));
            v261 += 2;
            v262 -= 8;
          }

          while (v262);
          v243 = vaddvq_s32(vaddq_s32(v259, v260));
          if (v258 == v239)
          {
            goto LABEL_398;
          }
        }

        else
        {
          v258 = 0;
        }

        v263 = v239 - v258;
        v264 = v257 + v258 + 194;
        do
        {
          if (*v264++)
          {
            ++v243;
          }

          --v263;
        }

        while (v263);
LABEL_398:
        v266 = v384 + v167;
        if (v384 + v167)
        {
          if (v388 <= (v266 - 1))
          {
LABEL_663:
            __break(1u);
LABEL_664:
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
            {
              v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
              goto LABEL_336;
            }

            goto LABEL_337;
          }

          if (v266 > 7)
          {
            v268 = 0;
            v269 = v243;
            v270 = xmmword_273B92120;
            v271 = vdupq_n_s64(4uLL);
            v272 = vdupq_n_s64(0x3FuLL);
            v273 = vdupq_n_s64(1uLL);
            v274 = xmmword_273B92130;
            v275 = vdupq_n_s64(8uLL);
            v267 = v266 & 0xFFFFFFF8;
            v276 = 0uLL;
            do
            {
              v277 = (v387 + 8 * (v268 >> 6));
              v278 = vld1q_dup_f64(v277);
              v269 = vsubq_s32(v269, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v278, vshlq_u64(v273, vandq_s8(v274, v272)))), vceqzq_s64(vandq_s8(v278, vshlq_u64(v273, vandq_s8(v270, v272)))))));
              v276 = vsubq_s32(v276, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v278, vshlq_u64(v273, vandq_s8(vaddq_s64(v274, v271), v272)))), vceqzq_s64(vandq_s8(v278, vshlq_u64(v273, vandq_s8(vaddq_s64(v270, v271), v272)))))));
              v268 += 8;
              v270 = vaddq_s64(v270, v275);
              v274 = vaddq_s64(v274, v275);
            }

            while (v267 != v268);
            v243 = vaddvq_s32(vaddq_s32(v276, v269));
            if (v267 == v266)
            {
              goto LABEL_406;
            }
          }

          else
          {
            v267 = 0;
          }

          do
          {
            v243 += (*(v387 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v267) & 1;
            ++v267;
          }

          while (v266 != v267);
        }

LABEL_406:
        v279 = *(v102 + 26) == 1 && v243 > 1;
        if (!v279)
        {
          if (!v157)
          {
            goto LABEL_411;
          }

LABEL_450:
          v285 = 0;
          goto LABEL_457;
        }

        v280 = __clz(v243 - 1);
        if (1 << -v280 >= v243)
        {
          v281 = 32 - v280;
        }

        else
        {
          v281 = 33 - v280;
        }

        v390.i8[12] = 0;
        if (v224)
        {
          v390.i32[2] = --v224;
          v282 = v390.i64[0];
          if ((v224 & 7) != 0)
          {
            v283 = (*v390.i64[0] >> (v224 & 7)) & 1;
          }

          else
          {
            ++v390.i64[0];
            v283 = *v282++ & 1;
          }

          if (v283)
          {
            v286 = v226 == 0;
          }

          else
          {
            v286 = 1;
          }

          if (!v286)
          {
            v287 = v226;
            do
            {
              while (1)
              {
                v292 = v224 - v281;
                if (v224 >= v281)
                {
                  break;
                }

                v224 = -1;
                if (!--v287)
                {
                  goto LABEL_448;
                }
              }

              v288 = v224 + 7;
              v279 = v224 < -7;
              v289 = v224 + 14;
              if (!v279)
              {
                v289 = v288;
              }

              v290 = v289 >> 3;
              v291 = v292 + 7;
              if (v292 < -7)
              {
                v291 = v292 + 14;
              }

              v282 += v290 - (v291 >> 3);
              v390.i64[0] = v282;
              v224 = v292;
              --v287;
            }

            while (v287);
LABEL_448:
            v390.i8[12] = 0;
            v390.i32[2] = v224;
          }

          if (v157)
          {
            goto LABEL_450;
          }

          v390.i8[12] = 0;
          if (v224 > 0)
          {
            v390.i32[2] = --v224;
            if ((v224 & 7) != 0)
            {
              v293 = (*v282 >> (v224 & 7)) & 1;
            }

            else
            {
              v390.i64[0] = (v282 + 1);
              v293 = *v282++ & 1;
            }

            if (v293 && v227)
            {
              v364 = v227;
              do
              {
                while (1)
                {
                  v369 = v224 - v281;
                  if (v224 >= v281)
                  {
                    break;
                  }

                  v224 = -1;
                  if (!--v364)
                  {
                    goto LABEL_648;
                  }
                }

                v365 = v224 + 7;
                v279 = v224 < -7;
                v366 = v224 + 14;
                if (!v279)
                {
                  v366 = v365;
                }

                v367 = v366 >> 3;
                v368 = v369 + 7;
                if (v369 < -7)
                {
                  v368 = v369 + 14;
                }

                v282 += v367 - (v368 >> 3);
                v390.i64[0] = v282;
                v224 = v369;
                --v364;
              }

              while (v364);
LABEL_648:
              v390.i8[12] = 0;
              v390.i32[2] = v224;
            }

LABEL_411:
            v390.i8[12] = 0;
            if (v224 >= 1)
            {
              v390.i64[0] += (((v224 + 7) >> 3) - ((v224 + 6) >> 3));
              --v224;
LABEL_456:
              v390.i32[2] = v224;
              v285 = 1;
LABEL_457:
              if ((*(v102 + 5) & 1) == 0)
              {
                goto LABEL_462;
              }

              v390.i8[12] = 0;
              if (v224 >= 1)
              {
                v390.i64[0] += (((v224 + 7) >> 3) - ((v224 + 6) >> 3));
                --v224;
LABEL_461:
                v390.i32[2] = v224;
LABEL_462:
                if ((v169 & 1) == 0)
                {
                  goto LABEL_470;
                }

                if (v285)
                {
                  v390.i8[12] = 0;
                  if (v224 <= 0)
                  {
                    LOBYTE(v322) = 0;
                    v390.i32[2] = -1;
                  }

                  else
                  {
                    v390.i32[2] = v224 - 1;
                    v294 = v390.i64[0];
                    if ((v390.i8[8] & 7) != 0)
                    {
                      LODWORD(v294) = *v390.i64[0] >> (v390.i8[8] & 7);
                    }

                    else
                    {
                      ++v390.i64[0];
                      LOBYTE(v294) = *v294;
                    }

                    v322 = v294 & 1;
                    if (v322)
                    {
                      v328 = v226 == 0;
                    }

                    else
                    {
                      v328 = 1;
                    }

                    if (!v328)
                    {
                      v330 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                      v285 = 1;
                      v390.i8[12] = 1;
                      if (v390.i32[2] < 0 || v330 > v382)
                      {
                        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                        {
                          goto LABEL_335;
                        }

                        goto LABEL_337;
                      }

                      goto LABEL_470;
                    }
                  }

                  v285 = 1;
                  if ((v322 & 1) == 0)
                  {
                    if (v380)
                    {
                      v329 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                      v390.i8[12] = 1;
                      if (v390.i32[2] < 0 || v329 > v380)
                      {
                        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                        {
                          goto LABEL_335;
                        }

                        goto LABEL_337;
                      }
                    }
                  }

LABEL_470:
                  if (*(v102 + 24) == 1 && v157 == 1 || (v285 & *(v102 + 25)) == 1)
                  {
                    v295 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                    v296 = v295;
                    v390.i8[12] = 1;
                    v297 = v390.i32[2];
                    if (v390.i32[2] < 0 || v295 >= 8)
                    {
                      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                      {
                        v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                        goto LABEL_336;
                      }

                      goto LABEL_337;
                    }

                    if (*(v126 + 4))
                    {
                      v385 = 1;
                    }

                    else
                    {
                      v385 = 1;
                      if (*(v126 + 3))
                      {
                        v320 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                        if (v320)
                        {
                          v321 = (v320 + 1) >> 1;
                        }

                        else
                        {
                          v321 = -(v320 >> 1);
                        }

                        v390.i8[12] = 1;
                        v297 = v390.i32[2];
                        if (v390.i32[2] < 0 || v321 + 7 >= 0xF)
                        {
                          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                          {
                            v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                            goto LABEL_336;
                          }

                          goto LABEL_337;
                        }

                        if (v321 + v296 >= 8)
                        {
                          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                          {
                            v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                            goto LABEL_336;
                          }

                          goto LABEL_337;
                        }

                        v385 = 0;
                      }
                    }

                    v298 = 0;
                    *&__p[7] = 0;
                    *__p = 0;
                    memset(v395, 0, 15);
                    v299 = v390.i64[0];
                    if (v382 + 1 > 1)
                    {
                      v300 = v382 + 1;
                    }

                    else
                    {
                      v300 = 1;
                    }

                    do
                    {
                      v390.i8[12] = 0;
                      if (v297 <= 0)
                      {
                        LOBYTE(v301) = 0;
                        v297 = -1;
                        v390.i32[2] = -1;
                      }

                      else
                      {
                        v390.i32[2] = --v297;
                        if ((v297 & 7) != 0)
                        {
                          v301 = (*v299 >> (v297 & 7)) & 1;
                        }

                        else
                        {
                          v390.i64[0] = (v299 + 1);
                          LOBYTE(v301) = *v299++ & 1;
                        }
                      }

                      __p[v298++] = v301;
                    }

                    while (v300 != v298);
                    if ((v385 & 1) == 0)
                    {
                      v317 = v382 + 1;
                      v318 = v395;
                      do
                      {
                        v390.i8[12] = 0;
                        if (v297 <= 0)
                        {
                          LOBYTE(v319) = 0;
                          v297 = -1;
                          v390.i32[2] = -1;
                        }

                        else
                        {
                          v390.i32[2] = --v297;
                          if ((v297 & 7) != 0)
                          {
                            v319 = (*v299 >> (v297 & 7)) & 1;
                          }

                          else
                          {
                            v390.i64[0] = (v299 + 1);
                            LOBYTE(v319) = *v299++ & 1;
                          }
                        }

                        *v318++ = v319;
                        --v317;
                      }

                      while (v317);
                    }

                    v302 = 0;
                    v303 = v382;
                    while (1)
                    {
                      v304 = v302;
                      if (__p[v302] == 1)
                      {
                        v305 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                        if (v305)
                        {
                          v306 = (v305 + 1) >> 1;
                        }

                        else
                        {
                          v306 = -(v305 >> 1);
                        }

                        v390.i8[12] = 1;
                        if (v390.i32[2] < 0 || v306 - 128 <= 0xFFFFFEFF)
                        {
                          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                          {
                            goto LABEL_337;
                          }

                          v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                          goto LABEL_336;
                        }

                        v307 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                        v308 = (v307 & 1) != 0 ? (v307 + 1) >> 1 : -(v307 >> 1);
                        v390.i8[12] = 1;
                        v297 = v390.i32[2];
                        v303 = v382;
                        if (v390.i32[2] < 0 || v308 - 128 <= 0xFFFFFEFF)
                        {
                          break;
                        }
                      }

                      if (v395[v304] == 1)
                      {
                        v309 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                        if (v309)
                        {
                          v310 = (v309 + 1) >> 1;
                        }

                        else
                        {
                          v310 = -(v309 >> 1);
                        }

                        v390.i8[12] = 1;
                        if (v390.i32[2] < 0 || v310 - 128 < 0xFFFFFF00)
                        {
                          goto LABEL_541;
                        }

                        v311 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                        if (v311)
                        {
                          v312 = (v311 + 1) >> 1;
                        }

                        else
                        {
                          v312 = -(v311 >> 1);
                        }

                        v390.i8[12] = 1;
                        if (v390.i32[2] < 0 || v312 - 512 <= 0xFFFFFBFF)
                        {
LABEL_523:
                          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                          {
                            goto LABEL_337;
                          }

                          v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                          goto LABEL_336;
                        }

                        v313 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                        v314 = (v313 & 1) != 0 ? (v313 + 1) >> 1 : -(v313 >> 1);
                        v390.i8[12] = 1;
                        if (v390.i32[2] < 0 || v314 - 128 < 0xFFFFFF00)
                        {
LABEL_541:
                          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                          {
                            goto LABEL_337;
                          }

                          v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                          goto LABEL_336;
                        }

                        v315 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                        if (v315)
                        {
                          v316 = (v315 + 1) >> 1;
                        }

                        else
                        {
                          v316 = -(v315 >> 1);
                        }

                        v390.i8[12] = 1;
                        v297 = v390.i32[2];
                        if (v390.i32[2] < 0)
                        {
                          goto LABEL_523;
                        }

                        v303 = v382;
                        if (v316 - 512 < 0xFFFFFC00)
                        {
                          goto LABEL_523;
                        }
                      }

                      v302 = v304 + 1;
                      if (v304 + 1 > v303)
                      {
                        if (!v285)
                        {
                          goto LABEL_616;
                        }

                        memset(v394, 0, 15);
                        memset(v393, 0, 15);
                        if (v380)
                        {
                          v323 = v380;
                          v324 = v394;
                          v325 = v390.i64[0];
                          do
                          {
                            v390.i8[12] = 0;
                            if (v297 <= 0)
                            {
                              LOBYTE(v326) = 0;
                              v297 = -1;
                              v390.i32[2] = -1;
                            }

                            else
                            {
                              v390.i32[2] = --v297;
                              if ((v297 & 7) != 0)
                              {
                                v326 = (*v325 >> (v297 & 7)) & 1;
                              }

                              else
                              {
                                v390.i64[0] = (v325 + 1);
                                LOBYTE(v326) = *v325++ & 1;
                              }
                            }

                            *v324++ = v326;
                            --v323;
                          }

                          while (v323);
                        }

                        if ((v385 & 1) == 0)
                        {
                          v370 = v390.i64[0];
                          if (v380 + 1 > 1)
                          {
                            v371 = v380 + 1;
                          }

                          else
                          {
                            v371 = 1;
                          }

                          v372 = v393;
                          do
                          {
                            v390.i8[12] = 0;
                            if (v297 <= 0)
                            {
                              LOBYTE(v373) = 0;
                              v297 = -1;
                              v390.i32[2] = -1;
                            }

                            else
                            {
                              v390.i32[2] = --v297;
                              if ((v297 & 7) != 0)
                              {
                                v373 = (*v370 >> (v297 & 7)) & 1;
                              }

                              else
                              {
                                v390.i64[0] = (v370 + 1);
                                LOBYTE(v373) = *v370++ & 1;
                              }
                            }

                            *v372++ = v373;
                            --v371;
                          }

                          while (v371);
                        }

                        v331 = 0;
                        while (1)
                        {
                          v332 = v331;
                          if (v394[v331] == 1)
                          {
                            v333 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                            if (v333)
                            {
                              v334 = (v333 + 1) >> 1;
                            }

                            else
                            {
                              v334 = -(v333 >> 1);
                            }

                            v390.i8[12] = 1;
                            if (v390.i32[2] < 0 || v334 - 128 <= 0xFFFFFEFF)
                            {
                              goto LABEL_664;
                            }

                            v335 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                            v336 = (v335 & 1) != 0 ? (v335 + 1) >> 1 : -(v335 >> 1);
                            v390.i8[12] = 1;
                            if (v390.i32[2] < 0 || v336 - 128 <= 0xFFFFFEFF)
                            {
                              break;
                            }
                          }

                          if (v393[v332] == 1)
                          {
                            v337 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                            if (v337)
                            {
                              v338 = (v337 + 1) >> 1;
                            }

                            else
                            {
                              v338 = -(v337 >> 1);
                            }

                            v390.i8[12] = 1;
                            if (v390.i32[2] < 0 || v338 - 128 < 0xFFFFFF00)
                            {
                              goto LABEL_661;
                            }

                            v339 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                            if (v339)
                            {
                              v340 = (v339 + 1) >> 1;
                            }

                            else
                            {
                              v340 = -(v339 >> 1);
                            }

                            v390.i8[12] = 1;
                            if (v390.i32[2] < 0 || v340 - 512 <= 0xFFFFFBFF)
                            {
LABEL_614:
                              if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                              {
                                goto LABEL_337;
                              }

                              v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                              goto LABEL_336;
                            }

                            v341 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                            v342 = (v341 & 1) != 0 ? (v341 + 1) >> 1 : -(v341 >> 1);
                            v390.i8[12] = 1;
                            if (v390.i32[2] < 0 || v342 - 128 < 0xFFFFFF00)
                            {
LABEL_661:
                              if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                              {
                                goto LABEL_337;
                              }

                              v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                              goto LABEL_336;
                            }

                            v343 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                            if (v343)
                            {
                              v344 = (v343 + 1) >> 1;
                            }

                            else
                            {
                              v344 = -(v343 >> 1);
                            }

                            v390.i8[12] = 1;
                            if (v390.i32[2] < 0 || v344 - 512 < 0xFFFFFC00)
                            {
                              goto LABEL_614;
                            }
                          }

                          v331 = v332 + 1;
                          if (v332 + 1 > v380)
                          {
                            goto LABEL_616;
                          }
                        }

                        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                        {
                          goto LABEL_337;
                        }

                        v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                        goto LABEL_336;
                      }
                    }

                    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
                    {
                      goto LABEL_337;
                    }

                    v237 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
                    goto LABEL_336;
                  }

LABEL_616:
                  v345 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                  v390.i8[12] = 1;
                  if (v390.i32[2] < 0 || v345 >= 5)
                  {
                    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                    {
                      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v357, v358, v359, v360, v361, v362, v363, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
                    }

                    goto LABEL_337;
                  }

                  goto LABEL_618;
                }

                if (!v380)
                {
LABEL_469:
                  v285 = 0;
                  goto LABEL_470;
                }

LABEL_468:
                webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
                goto LABEL_469;
              }

LABEL_460:
              v224 = -1;
              goto LABEL_461;
            }

LABEL_455:
            v224 = -1;
            goto LABEL_456;
          }
        }

        else
        {
          v390.i32[2] = -1;
          if (v157)
          {
            if ((*(v102 + 5) & 1) == 0)
            {
              if (v227)
              {
                v327 = v169;
              }

              else
              {
                v327 = 0;
              }

              if ((v327 & 1) == 0)
              {
                goto LABEL_469;
              }

              goto LABEL_468;
            }

            v285 = 0;
            goto LABEL_460;
          }
        }

        v390.i8[12] = 0;
        goto LABEL_455;
      }
    }

    else
    {
      v242 = 0;
      v243 = 0;
    }

    v254 = v236 - v242;
    v255 = v241 + v242 + 66;
    do
    {
      if (*v255++)
      {
        ++v243;
      }

      --v254;
    }

    while (v254);
    goto LABEL_386;
  }

  v194 = v193;
  v195 = 0;
  while (1)
  {
    if (v195 >= v168)
    {
      v198 = *(v126 + 7) + 4;
      if (v198 < 0 || (v160 = __OFSUB__(v390.i32[2], v198), v199 = v390.i32[2] - v198, (v199 < 0) ^ v160))
      {
        v390.i8[12] = 0;
      }

      else
      {
        v200 = v390.i32[2] + 14;
        if (v390.i32[2] >= -7)
        {
          v200 = v390.i32[2] + 7;
        }

        v201 = v200 >> 3;
        v202 = v199 + 7;
        if (v199 < -7)
        {
          v202 = v199 + 14;
        }

        v203 = (v390.i64[0] + v201 - (v202 >> 3));
        v390.i64[0] = v203;
        v390.i8[12] = 0;
        if (v199 > 0)
        {
          v390.i32[2] = v199 - 1;
          v204 = (v199 - 1) & 7;
          if (v204)
          {
            v205 = *v203 >> v204;
          }

          else
          {
            v390.i64[0] = (v203 + 1);
            LOBYTE(v205) = *v203;
          }

          v206 = v205 & 1;
          goto LABEL_293;
        }
      }

      v206 = 0;
      v390.i32[2] = -1;
LABEL_293:
      if (v388 <= v195)
      {
        goto LABEL_663;
      }

      v212 = v195 >> 6;
      v213 = 1 << v195;
      if (v206)
      {
        v214 = *(v387 + v212) | v213;
      }

      else
      {
        v214 = *(v387 + v212) & ~v213;
      }

      *(v387 + v212) = v214;
      goto LABEL_298;
    }

    v196 = *(v126 + 27);
    if (v196 >= 2)
    {
      break;
    }

    v197 = 0;
LABEL_285:
    v207 = *(v126 + 14);
    if (v197 >= ((*(v126 + 15) - v207) >> 2) || v388 <= v195)
    {
      goto LABEL_663;
    }

    v208 = *(v207 + 4 * v197);
    v209 = v195 >> 6;
    v210 = 1 << v195;
    if (v208)
    {
      v211 = *(v387 + v209) | v210;
    }

    else
    {
      v211 = *(v387 + v209) & ~v210;
    }

    *(v387 + v209) = v211;
LABEL_298:
    v390.i8[12] = 0;
    if (*(v390.i64 + 4) <= 0)
    {
      v390.i32[2] = -1;
    }

    else
    {
      --v390.i32[2];
      v215 = v390.i64[0];
      if ((v390.i8[8] & 7) != 0)
      {
        LODWORD(v215) = *v390.i64[0] >> (v390.i8[8] & 7);
      }

      else
      {
        ++v390.i64[0];
        LOBYTE(v215) = *v215;
      }

      if (v215)
      {
        v216 = webrtc::BitstreamReader::ReadExponentialGolomb(&v390);
        v390.i8[12] = 1;
        if (v390.i32[2] < 0 || (v216 & 0x80000000) != 0 || exp2((28 - *(v126 + 7))) < v216)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            exp2((28 - *(v126 + 7)));
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v217, v218, v219, v220, v221, v222, v223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
          }

          goto LABEL_337;
        }
      }
    }

    if (v194 == ++v195)
    {
      goto LABEL_421;
    }
  }

  v197 = webrtc::BitstreamReader::ReadBits(&v390, 32 - __clz(v196 - 1));
  v390.i8[12] = 1;
  if ((v390.i32[2] & 0x80000000) == 0 && *(v126 + 27) - 1 >= v197)
  {
    goto LABEL_285;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    goto LABEL_337;
  }

LABEL_335:
  v237 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
LABEL_336:
  webrtc::webrtc_logging_impl::Log(v237, v184, v185, v186, v187, v188, v189, v190, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
LABEL_337:
  if (v387)
  {
    operator delete(v387);
  }

LABEL_188:
  v52 = 1;
LABEL_189:
  v50 = v391;
LABEL_190:
  if (v50)
  {
    v392 = v50;
    operator delete(v50);
  }

  if (v52 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v145, v146, v147, v148, v149, v150, v151, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
  }
}

unint64_t webrtc::flat_map<unsigned int,webrtc::H265PpsParser::PpsState,std::less<void>,std::vector<std::pair<unsigned int,webrtc::H265PpsParser::PpsState>>>::operator[](char **a1, unsigned int *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  if (v3 == *a1)
  {
    v7 = a1[1];
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
    v7 = *a1;
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[40 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 40;
      v6 += ~(v6 >> 1);
      if (v11 < *a2)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
    if (v3 != v7)
    {
      v12 = v7;
      if (*a2 >= *v7)
      {
        return v12 + 4;
      }
    }
  }

  v13 = a1[2];
  if (v3 < v13)
  {
    if (v7 != v3)
    {
      v14 = *a2;
      v15 = a1[1];
      if (v3 >= 0x28)
      {
        v15 = v3 + 40;
        v16 = *(v3 - 40);
        v17 = *(v3 - 24);
        *(v3 + 32) = *(v3 - 8);
        *v3 = v16;
        *(v3 + 16) = v17;
      }

      a1[1] = v15;
      if (v3 != v7 + 40)
      {
        v18 = 0;
        do
        {
          v19 = &v18[v3];
          *(v19 - 10) = *&v18[v3 - 80];
          v20 = *&v18[v3 - 76];
          v21 = *&v18[v3 - 60];
          *(v19 - 1) = *&v18[v3 - 44];
          *(v19 - 20) = v21;
          *(v19 - 36) = v20;
          v18 -= 40;
        }

        while (&v7[-v3 + 40] != v18);
      }

      *v7 = v14;
      *(v7 + 4) = 0u;
      *(v7 + 20) = 0u;
      *(v7 + 9) = 0;
      v12 = v7;
      return v12 + 4;
    }

    if (v4)
    {
      *v3 = *a2;
      *(v3 + 4) = 0uLL;
      *(v3 + 20) = 0uLL;
      *(v3 + 36) = 0;
      a1[1] = (v3 + 40);
      v12 = v7;
      return v12 + 4;
    }

    goto LABEL_38;
  }

  v22 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3) + 1;
  if (v22 > 0x666666666666666)
  {
    goto LABEL_39;
  }

  v23 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v4) >> 3);
  if (2 * v23 > v22)
  {
    v22 = 2 * v23;
  }

  if (v23 >= 0x333333333333333)
  {
    v24 = 0x666666666666666;
  }

  else
  {
    v24 = v22;
  }

  if (v24)
  {
    if (v24 <= 0x666666666666666)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v12 = 8 * ((v7 - v4) >> 3);
  if (!(0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3)))
  {
    if (v7 - v4 < 1)
    {
      operator new();
    }

    v12 = 8 * ((v7 - v4) >> 3) - 40 * ((1 - 0x3333333333333333 * ((8 * ((v7 - v4) >> 3)) >> 3) + ((1 - 0x3333333333333333 * ((8 * ((v7 - v4) >> 3)) >> 3)) >> 63)) >> 1);
  }

  if (!v12)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v12 = *a2;
  *(v12 + 36) = 0;
  *(v12 + 20) = 0u;
  *(v12 + 4) = 0u;
  memcpy((v12 + 40), v7, a1[1] - v7);
  v25 = *a1;
  v26 = v12 + 40 + a1[1] - v7;
  a1[1] = v7;
  v27 = v7 - v25;
  v28 = (v12 - (v7 - v25));
  memcpy(v28, v25, v27);
  v29 = *a1;
  *a1 = v28;
  a1[1] = v26;
  a1[2] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  return v12 + 4;
}

uint64_t webrtc::H265BitstreamParser::IsFirstSliceSegmentInPic(uint64_t a1, uint64_t a2)
{
  webrtc::H264::ParseRbsp(a2, &v12);
  v6 = v13 - v12;
  if ((((v13 - v12) >> 28) & 0x1FFFFFFFFLL) == 0)
  {
    v7 = 8 * v6;
    if (8 * v6)
    {
      v8 = *v12 < 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      if (!v12)
      {
        return v9 | ((v7 != 0) << 8);
      }
    }

    v13 = v12;
    operator delete(v12);
    v9 = v8;
    return v9 | ((v7 != 0) << 8);
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v11);
  return webrtc::H265BitstreamParser::ParseBitstream();
}

void webrtc::H265BitstreamParser::ParseBitstream(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  webrtc::H264::FindNaluIndices(v6, a3, &v20);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v7 = v20;
  v8 = v21;
  if (v20 != v21)
  {
    do
    {
      v18 = *v7;
      v19 = v7[2];
      std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&v15, &v18);
      v7 += 3;
    }

    while (v7 != v8);
    v7 = v20;
  }

  if (v7)
  {
    v21 = v7;
    operator delete(v7);
  }

  v9 = v15;
  v10 = v16;
  if (v15 == v16)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_11;
  }

  do
  {
    while (1)
    {
      v14 = v9[1];
      if (a3 > v14)
      {
        break;
      }

      webrtc::H265BitstreamParser::ParseSlice(a1, 0, 0);
      v9 += 3;
      if (v9 == v10)
      {
        goto LABEL_22;
      }
    }

    if (a3 - v14 >= v9[2])
    {
      v11 = v9[2];
    }

    else
    {
      v11 = a3 - v14;
    }

    v12 = (v14 + a2);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    webrtc::H265BitstreamParser::ParseSlice(a1, v13, v11);
    v9 += 3;
  }

  while (v9 != v10);
LABEL_22:
  v9 = v15;
  if (v15)
  {
LABEL_11:
    v16 = v9;
    operator delete(v9);
  }
}

uint64_t webrtc::H265BitstreamParser::GetLastSliceQp(webrtc::H265BitstreamParser *this)
{
  if (*(this + 84) != 1 || *(this + 92) != 1)
  {
    return 0;
  }

  v1 = *(this + 22);
  v3 = *(this + 7);
  v2 = *(this + 8);
  if (v2 == v3)
  {
    v3 = *(this + 8);
    v9 = v3;
  }

  else
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3);
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[40 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 40;
      v4 += ~(v4 >> 1);
      if (v8 < v1)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
    v9 = v3;
    if (v2 != v3)
    {
      v9 = v3 + 40;
      if (*v3 > v1)
      {
        v9 = v3;
      }
    }
  }

  if (v3 == v9)
  {
    v3 = *(this + 8);
  }

  if (v2 == v3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
    }

    return 0;
  }

  v10 = (*(v3 + 5) + *(this + 20) + 26);
  if (v10 >= 0x34)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_bitstream_parser.cc");
    }

    return 0;
  }

  return v10 | 0x100000000;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

char *std::vector<webrtc::H265SpsParser::ShortTermRefPicSet>::__assign_with_size[abi:sn200100]<webrtc::H265SpsParser::ShortTermRefPicSet*,webrtc::H265SpsParser::ShortTermRefPicSet*>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (0x2F71AAFF02F71ABLL * ((v7 - result) >> 2) < a4)
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

    if (a4 <= 0x3F42395403F423)
    {
      v10 = 0x2F71AAFF02F71ABLL * (v7 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x1FA11CAA01FA11)
      {
        v12 = 0x3F42395403F423;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x3F42395403F423)
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (0x2F71AAFF02F71ABLL * ((v13 - result) >> 2) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

unint64_t std::vector<std::pair<unsigned int,webrtc::H265VpsParser::VpsState>>::emplace<unsigned int const&,webrtc::H265VpsParser::VpsState>(void *a1, char *a2, int *a3, __int128 *a4)
{
  v4 = a2;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (v6 < v8)
  {
    if (a2 != v6)
    {
      v9 = *a3;
      v31 = *a4;
      v32 = a4[1];
      v33 = *(a4 + 8);
      v10 = a1[1];
      if (v6 >= 0x28)
      {
        v10 = v6 + 40;
        v11 = *(v6 - 40);
        v12 = *(v6 - 24);
        *(v6 + 32) = *(v6 - 8);
        *v6 = v11;
        *(v6 + 16) = v12;
      }

      a1[1] = v10;
      if (v6 != a2 + 40)
      {
        v13 = 0;
        do
        {
          v14 = &v13[v6];
          *(v14 - 10) = *&v13[v6 - 80];
          v15 = *&v13[v6 - 76];
          v16 = *&v13[v6 - 60];
          *(v14 - 1) = *&v13[v6 - 44];
          *(v14 - 20) = v16;
          *(v14 - 36) = v15;
          v13 -= 40;
        }

        while (&a2[-v6 + 40] != v13);
      }

      *a2 = v9;
      *(a2 + 4) = v31;
      *(a2 + 20) = v32;
      *(a2 + 9) = v33;
      return v4;
    }

    if (v7)
    {
      *v6 = *a3;
      v20 = *a4;
      v21 = a4[1];
      *(v6 + 36) = *(a4 + 8);
      *(v6 + 20) = v21;
      *(v6 + 4) = v20;
      a1[1] = v6 + 40;
      return v4;
    }

    goto LABEL_29;
  }

  v17 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) + 1;
  if (v17 > 0x666666666666666)
  {
    goto LABEL_30;
  }

  v18 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x333333333333333)
  {
    v19 = 0x666666666666666;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    if (v19 <= 0x666666666666666)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v22 = 8 * ((a2 - v7) >> 3);
  if (!(0xCCCCCCCCCCCCCCCDLL * ((a2 - v7) >> 3)))
  {
    if (a2 - v7 < 1)
    {
      operator new();
    }

    v22 = 8 * ((a2 - v7) >> 3) - 40 * ((1 - 0x3333333333333333 * ((8 * ((a2 - v7) >> 3)) >> 3) + ((1 - 0x3333333333333333 * ((8 * ((a2 - v7) >> 3)) >> 3)) >> 63)) >> 1);
  }

  if (!v22)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v22 = *a3;
  v23 = *a4;
  v24 = a4[1];
  *(v22 + 36) = *(a4 + 8);
  *(v22 + 20) = v24;
  *(v22 + 4) = v23;
  memcpy((v22 + 40), a2, a1[1] - a2);
  v25 = *a1;
  v26 = v22 + 40 + a1[1] - v4;
  a1[1] = v4;
  v27 = v4 - v25;
  v28 = (v22 - (v4 - v25));
  memcpy(v28, v25, v27);
  v29 = *a1;
  *a1 = v28;
  a1[1] = v26;
  a1[2] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  return v22;
}

uint64_t std::vector<std::pair<unsigned int,webrtc::H265SpsParser::SpsState>>::emplace<unsigned int const&,webrtc::H265SpsParser::SpsState>(uint64_t *a1, char *a2, int *a3, __int128 *a4)
{
  v4 = a2;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (v6 < v8)
  {
    if (a2 != v6)
    {
      v9 = *a3;
      v82 = a4[1];
      v83 = a4[2];
      v84 = a4[3];
      v85 = *(a4 + 16);
      v81 = *a4;
      v76 = *(a4 + 72);
      *(a4 + 9) = 0;
      *(a4 + 10) = 0;
      v10 = *(a4 + 11);
      v11 = *(a4 + 12);
      *(a4 + 11) = 0;
      v12 = *(a4 + 104);
      v77 = *(a4 + 15);
      *(a4 + 13) = 0;
      *(a4 + 14) = 0;
      *(a4 + 15) = 0;
      v13 = a1[1];
      v14 = v13;
      v80 = a4[9];
      v78 = v12;
      v79 = a4[8];
      if (v13 >= 0xA8)
      {
        v14 = v13 + 168;
        *v13 = *(v13 - 168);
        *(v13 + 8) = *(v13 - 160);
        v15 = *(v13 - 144);
        v16 = *(v13 - 128);
        v17 = *(v13 - 112);
        *(v13 + 72) = *(v13 - 96);
        *(v13 + 56) = v17;
        *(v13 + 40) = v16;
        *(v13 + 24) = v15;
        *(v13 + 88) = 0;
        *(v13 + 96) = 0;
        *(v13 + 80) = 0;
        *(v13 + 80) = *(v13 - 88);
        *(v13 + 96) = *(v13 - 72);
        *(v13 - 80) = 0;
        *(v13 - 72) = 0;
        *(v13 - 88) = 0;
        v18 = *(v13 - 64);
        *(v13 + 120) = 0;
        *(v13 + 128) = 0;
        *(v13 + 104) = v18;
        *(v13 + 112) = 0;
        *(v13 + 112) = *(v13 - 56);
        *(v13 + 128) = *(v13 - 40);
        *(v13 - 56) = 0;
        *(v13 - 48) = 0;
        *(v13 - 40) = 0;
        v19 = *(v13 - 32);
        *(v13 + 152) = *(v13 - 16);
        *(v13 + 136) = v19;
      }

      a1[1] = v14;
      if (v13 != a2 + 168)
      {
        v20 = 0;
        v21 = &a2[-v13 + 168];
        do
        {
          v24 = v13 + v20;
          v26 = (v13 + v20 - 88);
          v25 = *v26;
          *(v26 - 20) = *(v13 + v20 - 336);
          *(v26 - 9) = *(v13 + v20 - 328);
          v27 = *(v13 + v20 - 312);
          v28 = *(v13 + v20 - 296);
          v29 = *(v13 + v20 - 280);
          *(v26 - 2) = *(v13 + v20 - 264);
          *(v26 - 3) = v29;
          *(v26 - 5) = v28;
          *(v26 - 7) = v27;
          if (v25)
          {
            *(v24 - 80) = v25;
            operator delete(v25);
            *v26 = 0;
            *(v13 + v20 - 80) = 0;
            *(v13 + v20 - 72) = 0;
          }

          v30 = (v24 - 256);
          *v26 = *(v24 - 256);
          v31 = *(v24 - 232);
          *(v24 - 72) = *(v24 - 240);
          *v30 = 0;
          v30[1] = 0;
          v30[2] = 0;
          v34 = *(v24 - 56);
          v33 = (v24 - 56);
          v32 = v34;
          *(v33 - 1) = v31;
          if (v34)
          {
            *(v13 + v20 - 48) = v32;
            operator delete(v32);
            *v33 = 0;
            v33[1] = 0;
            v33[2] = 0;
          }

          v22 = v13 + v20;
          *v33 = *(v13 + v20 - 224);
          *(v22 - 40) = *(v13 + v20 - 208);
          *(v22 - 224) = 0;
          *(v22 - 216) = 0;
          *(v22 - 208) = 0;
          v23 = *(v13 + v20 - 184);
          *(v22 - 32) = *(v13 + v20 - 200);
          *(v22 - 16) = v23;
          v20 -= 168;
        }

        while (v21 != v20);
      }

      *v4 = v9;
      *(v4 + 24) = v82;
      *(v4 + 40) = v83;
      *(v4 + 56) = v84;
      *(v4 + 18) = v85;
      *(v4 + 8) = v81;
      v38 = *(v4 + 10);
      if (v38)
      {
        *(v4 + 11) = v38;
        operator delete(v38);
      }

      *(v4 + 5) = v76;
      *(v4 + 12) = v10;
      *(v4 + 13) = v11;
      v39 = *(v4 + 14);
      if (v39)
      {
        *(v4 + 15) = v39;
        operator delete(v39);
      }

      *(v4 + 7) = v78;
      *(v4 + 16) = v77;
      *(v4 + 136) = v79;
      *(v4 + 152) = v80;
      return v4;
    }

    if (v7)
    {
      *v6 = *a3;
      *(v6 + 8) = *a4;
      v40 = a4[1];
      v41 = a4[2];
      v42 = a4[3];
      *(v6 + 72) = *(a4 + 16);
      *(v6 + 56) = v42;
      *(v6 + 40) = v41;
      *(v6 + 24) = v40;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 80) = *(a4 + 72);
      *(v6 + 96) = *(a4 + 11);
      *(a4 + 10) = 0;
      *(a4 + 11) = 0;
      *(a4 + 9) = 0;
      v43 = *(a4 + 12);
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 104) = v43;
      *(v6 + 112) = 0;
      *(v6 + 112) = *(a4 + 104);
      *(v6 + 128) = *(a4 + 15);
      *(a4 + 13) = 0;
      *(a4 + 14) = 0;
      *(a4 + 15) = 0;
      v44 = a4[8];
      *(v6 + 152) = a4[9];
      *(v6 + 136) = v44;
      a1[1] = v6 + 168;
      return v4;
    }

LABEL_59:
    __break(1u);
  }

  v35 = 0xCF3CF3CF3CF3CF3DLL * ((v6 - v7) >> 3) + 1;
  if (v35 > 0x186186186186186)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v36 = 0xCF3CF3CF3CF3CF3DLL * ((v8 - v7) >> 3);
  if (2 * v36 > v35)
  {
    v35 = 2 * v36;
  }

  if (v36 >= 0xC30C30C30C30C3)
  {
    v37 = 0x186186186186186;
  }

  else
  {
    v37 = v35;
  }

  if (v37)
  {
    if (v37 <= 0x186186186186186)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v45 = a2 - v7;
  v46 = 8 * ((a2 - v7) >> 3);
  if (!(0xCF3CF3CF3CF3CF3DLL * ((a2 - v7) >> 3)))
  {
    if (v45 < 1)
    {
      operator new();
    }

    v46 -= 168 * ((1 - 0x30C30C30C30C30C3 * (v45 >> 3)) >> 1);
  }

  if (!v46)
  {
    goto LABEL_59;
  }

  *v46 = *a3;
  *(v46 + 8) = *a4;
  v47 = a4[1];
  v48 = a4[2];
  v49 = a4[3];
  *(v46 + 72) = *(a4 + 16);
  *(v46 + 56) = v49;
  *(v46 + 40) = v48;
  *(v46 + 24) = v47;
  *(v46 + 88) = 0;
  *(v46 + 96) = 0;
  *(v46 + 80) = 0;
  *(v46 + 80) = *(a4 + 72);
  *(v46 + 96) = *(a4 + 11);
  *(a4 + 10) = 0;
  *(a4 + 11) = 0;
  *(a4 + 9) = 0;
  v50 = *(a4 + 12);
  *(v46 + 120) = 0;
  *(v46 + 128) = 0;
  *(v46 + 104) = v50;
  *(v46 + 112) = 0;
  *(v46 + 112) = *(a4 + 104);
  *(v46 + 128) = *(a4 + 15);
  *(a4 + 13) = 0;
  *(a4 + 14) = 0;
  *(a4 + 15) = 0;
  v51 = a4[8];
  *(v46 + 152) = a4[9];
  *(v46 + 136) = v51;
  v52 = a1[1];
  v53 = a2;
  if (v52 != a2)
  {
    v54 = a2;
    v55 = v46 + 168;
    do
    {
      *v55 = *v54;
      *(v55 + 8) = *(v54 + 8);
      v56 = *(v54 + 24);
      v57 = *(v54 + 40);
      v58 = *(v54 + 56);
      *(v55 + 72) = *(v54 + 18);
      *(v55 + 56) = v58;
      *(v55 + 40) = v57;
      *(v55 + 24) = v56;
      *(v55 + 88) = 0;
      *(v55 + 96) = 0;
      *(v55 + 80) = 0;
      *(v55 + 80) = *(v54 + 5);
      *(v55 + 96) = *(v54 + 12);
      *(v54 + 11) = 0;
      *(v54 + 12) = 0;
      *(v54 + 10) = 0;
      v59 = *(v54 + 13);
      *(v55 + 120) = 0;
      *(v55 + 128) = 0;
      *(v55 + 104) = v59;
      *(v55 + 112) = 0;
      *(v55 + 112) = *(v54 + 7);
      *(v55 + 128) = *(v54 + 16);
      *(v54 + 14) = 0;
      *(v54 + 15) = 0;
      *(v54 + 16) = 0;
      v60 = *(v54 + 136);
      *(v55 + 152) = *(v54 + 152);
      *(v55 + 136) = v60;
      v54 += 168;
      v55 += 168;
    }

    while (v54 != v52);
    v61 = a2;
    do
    {
      if (!v61)
      {
        goto LABEL_59;
      }

      v62 = *(v61 + 14);
      if (v62)
      {
        *(v61 + 15) = v62;
        operator delete(v62);
      }

      v63 = *(v61 + 10);
      if (v63)
      {
        *(v61 + 11) = v63;
        operator delete(v63);
      }

      v61 += 168;
    }

    while (v61 != v52);
    v53 = a1[1];
  }

  a1[1] = v4;
  v64 = *a1;
  v65 = v46 + *a1 - v4;
  if (*a1 != v4)
  {
    v66 = *a1;
    v67 = v46 + *a1 - v4;
    do
    {
      *v67 = *v66;
      *(v67 + 8) = *(v66 + 8);
      v68 = *(v66 + 24);
      v69 = *(v66 + 40);
      v70 = *(v66 + 56);
      *(v67 + 72) = *(v66 + 18);
      *(v67 + 56) = v70;
      *(v67 + 40) = v69;
      *(v67 + 24) = v68;
      *(v67 + 88) = 0;
      *(v67 + 96) = 0;
      *(v67 + 80) = 0;
      *(v67 + 80) = *(v66 + 5);
      *(v67 + 96) = *(v66 + 12);
      *(v66 + 11) = 0;
      *(v66 + 12) = 0;
      *(v66 + 10) = 0;
      v71 = *(v66 + 13);
      *(v67 + 120) = 0;
      *(v67 + 128) = 0;
      *(v67 + 104) = v71;
      *(v67 + 112) = 0;
      *(v67 + 112) = *(v66 + 7);
      *(v67 + 128) = *(v66 + 16);
      *(v66 + 14) = 0;
      *(v66 + 15) = 0;
      *(v66 + 16) = 0;
      v72 = *(v66 + 136);
      *(v67 + 152) = *(v66 + 152);
      *(v67 + 136) = v72;
      v66 += 168;
      v67 += 168;
    }

    while (v66 != v4);
    do
    {
      if (!v64)
      {
        goto LABEL_59;
      }

      v73 = *(v64 + 14);
      if (v73)
      {
        *(v64 + 15) = v73;
        operator delete(v73);
      }

      v74 = *(v64 + 10);
      if (v74)
      {
        *(v64 + 11) = v74;
        operator delete(v74);
      }

      v64 += 168;
    }

    while (v64 != v4);
    v64 = *a1;
  }

  *a1 = v65;
  a1[1] = v46 + 168 + v53 - v4;
  a1[2] = 0;
  if (v64)
  {
    operator delete(v64);
  }

  return v46;
}

void webrtc::H265PpsParser::ParsePps(uint64_t a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  webrtc::H264::ParseRbsp(a1, &__p);
  if (v11 == __p)
  {
    v9 = 0;
  }

  else
  {
    v9 = __p;
  }

  webrtc::H265PpsParser::ParseInternal(v9, v11 - __p, a2, v5, v6, v7, v8, a3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void webrtc::H265PpsParser::ParseInternal(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v114 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v110 = v9;
  if (((a2 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a4, a5, a6, a7, v101);
LABEL_112:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

LABEL_113:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v72, v73, v74, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_pps_parser.cc");
    goto LABEL_28;
  }

  v111 = 8 * a2;
  v112 = 1;
  if (!a3)
  {
    goto LABEL_28;
  }

  ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  v12 = ExponentialGolomb;
  v112 = 1;
  if (v111 < 0 || ExponentialGolomb >= 0x40)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v13 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  v14 = v13;
  v112 = 1;
  v15 = v111;
  if (v111 < 0 || v13 >= 0x10)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v112 = 0;
  if (!v111)
  {
    goto LABEL_24;
  }

  --v111;
  v16 = v110;
  if (((v15 - 1) & 7) != 0)
  {
    v17 = *v110 >> ((v15 - 1) & 7);
    v112 = 0;
    if (v15 == 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    ++v110;
    LOBYTE(v17) = *v16++;
    v112 = 0;
    if (v15 == 1)
    {
      goto LABEL_24;
    }
  }

  v111 = v15 - 2;
  v25 = (v15 - 2) & 7;
  if (!v25)
  {
    v30 = v16 + 1;
    v110 = v16 + 1;
    v31 = *v16;
    v112 = 0;
    v26 = v15 - 5;
    if (v15 >= 5)
    {
      v29 = 0;
      LOBYTE(v27) = v31 & 1;
      v111 = v15 - 5;
      v33 = 3;
      v16 = v30;
LABEL_31:
      v29 |= *v16 >> (8 - v33);
      goto LABEL_32;
    }

LABEL_24:
    v111 = -1;
    v112 = 1;
    goto LABEL_25;
  }

  v26 = v15 - 5;
  if (v15 < 5)
  {
    goto LABEL_24;
  }

  v27 = (*v16 >> v25) & 1;
  v111 = v15 - 5;
  v28 = *v16;
  if (v25 >= 4)
  {
    v29 = (v28 >> (v25 - 3)) & 7;
    goto LABEL_32;
  }

  v33 = 3 - v25;
  v29 = (v28 << (3 - v25)) & 7;
  v110 = ++v16;
  if (v25 != 3)
  {
    goto LABEL_31;
  }

LABEL_32:
  v112 = 1;
  if (v29 >= 3)
  {
LABEL_25:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_26:
      v32 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
LABEL_27:
      webrtc::webrtc_logging_impl::Log(v32, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_pps_parser.cc");
    }

LABEL_28:
    *a8 = 0;
    *(a8 + 36) = 0;
    return;
  }

  if (!v26)
  {
    v112 = 0;
    goto LABEL_38;
  }

  v34 = &v16[((v15 + 2) >> 3) - ((v15 + 1) >> 3)];
  v110 = v34;
  v112 = 0;
  if (v15 == 6)
  {
LABEL_38:
    v37 = 0;
    v111 = -1;
    goto LABEL_41;
  }

  v111 = v15 - 7;
  v35 = (v15 - 7) & 7;
  if (v35)
  {
    v36 = *v34 >> v35;
  }

  else
  {
    v110 = v34 + 1;
    LOBYTE(v36) = *v34;
  }

  v37 = v36 & 1;
LABEL_41:
  v38 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  v39 = v38;
  v112 = 1;
  if (v111 < 0 || v38 >= 0xF)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v40 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  v112 = 1;
  if (v111 < 0 || v40 >= 0xF)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v109 = v40;
  v41 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  if (v41)
  {
    v42 = (v41 + 1) >> 1;
  }

  else
  {
    v42 = -(v41 >> 1);
  }

  v43 = 6 * a3[39];
  v112 = 1;
  v44 = v111;
  if (v111 < 0 || v42 > 25 || v42 < -26 - v43)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v55, v56, v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_pps_parser.cc");
    }

    goto LABEL_28;
  }

  v108 = v43;
  v107 = v39;
  if (!v111 || (v45 = (v111 + 6) >> 3, v46 = &v110[((v111 + 7) >> 3) - v45], v110 = v46, v111 == 1))
  {
    v112 = 0;
LABEL_54:
    v111 = -1;
    goto LABEL_55;
  }

  v62 = &v46[v45 - ((v111 + 5) >> 3)];
  v110 = v62;
  v112 = 0;
  if (v111 == 2)
  {
    goto LABEL_54;
  }

  v111 -= 3;
  v63 = (v44 - 3) & 7;
  if (v63)
  {
    v64 = *v62 >> v63;
  }

  else
  {
    v110 = v62 + 1;
    LOBYTE(v64) = *v62;
  }

  if (v64)
  {
    v65 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
    v112 = 1;
    if (v111 < 0 || v65 > a3[14])
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_28;
      }

      v32 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
      goto LABEL_27;
    }
  }

LABEL_55:
  v47 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  if (v47)
  {
    v48 = (v47 + 1) >> 1;
  }

  else
  {
    v48 = -(v47 >> 1);
  }

  v112 = 1;
  if (v111 < 0 || v48 + 12 >= 0x19)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v32 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

  v49 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  if (v49)
  {
    v51 = (v49 + 1) >> 1;
  }

  else
  {
    v51 = -(v49 >> 1);
  }

  v112 = 1;
  v52 = v111;
  if (v111 < 0 || v51 + 12 >= 0x19)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v32 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

  if (!v111)
  {
    goto LABEL_28;
  }

  v53 = &v110[((v111 + 7) >> 3) - ((v111 + 6) >> 3)];
  v110 = v53;
  v112 = 0;
  if (v111 == 1)
  {
    goto LABEL_28;
  }

  v105 = v29;
  v106 = v42;
  v111 -= 2;
  if (((v52 - 2) & 7) != 0)
  {
    v54 = *v53 >> ((v52 - 2) & 7);
  }

  else
  {
    v110 = v53 + 1;
    LOBYTE(v54) = *v53++;
  }

  v112 = 0;
  if (v52 < 3)
  {
    goto LABEL_28;
  }

  v111 = v52 - 3;
  if (((v52 - 3) & 7) != 0)
  {
    v104 = *v53 >> ((v52 - 3) & 7);
  }

  else
  {
    v110 = v53 + 1;
    LOBYTE(v104) = *v53++;
  }

  if (v52 == 3)
  {
    goto LABEL_28;
  }

  v66 = &v53[((v52 + 4) >> 3) - ((v52 + 3) >> 3)];
  v110 = v66;
  v112 = 0;
  if (v52 == 4)
  {
    goto LABEL_28;
  }

  v111 = v52 - 5;
  if (((v52 - 5) & 7) != 0)
  {
    v67 = (*v66 >> ((v52 - 5) & 7)) & 1;
  }

  else
  {
    v110 = v66 + 1;
    v67 = *v66++ & 1;
  }

  v112 = 0;
  v68 = v52 - 6;
  if (v52 >= 6)
  {
    v110 = &v66[((v52 + 2) >> 3) - ((v52 + 1) >> 3)];
    v111 = v52 - 6;
    if (!v67)
    {
      goto LABEL_146;
    }
  }

  else
  {
    v111 = -1;
    if (!v67)
    {
      goto LABEL_28;
    }
  }

  v69 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  v70 = v69;
  v112 = 1;
  if (v111 < 0 || v69 > a3[37] - 1)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v32 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

  if (v69 >= 0x13)
  {
    goto LABEL_112;
  }

  v102 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  v112 = 1;
  if (v111 < 0 || (v71 = a3[38] - 1, v102 > v71))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v32 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

  if (!(v70 | v102))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    goto LABEL_113;
  }

  if (v102 >= 0x15)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    goto LABEL_113;
  }

  v112 = 0;
  if (v111)
  {
    v68 = v111 - 1;
    v111 = v68;
    v79 = v110;
    if ((v68 & 7) != 0)
    {
      LODWORD(v79) = *v110 >> (v68 & 7);
    }

    else
    {
      ++v110;
      LOBYTE(v79) = *v79;
    }

    if (v79)
    {
      goto LABEL_146;
    }
  }

  else
  {
    v68 = -1;
    v111 = -1;
  }

  *&v113[4 * v70 + 84] = a3[37] - 1;
  if (v70)
  {
    v80 = 0;
    while (1)
    {
      v81 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
      *&v113[v80 + 84] = v81;
      v112 = 1;
      v68 = v111;
      if (v111 < 0)
      {
        break;
      }

      if (v81 < 0)
      {
        break;
      }

      v82 = *&v113[4 * v70 + 84];
      if (v81 >= v82)
      {
        break;
      }

      *&v113[4 * v70 + 84] = v82 + ~v81;
      v80 += 4;
      if (4 * v70 == v80)
      {
        v71 = a3[38] - 1;
        goto LABEL_133;
      }
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v32 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

LABEL_133:
  *&v113[4 * v102] = v71;
  if (v102)
  {
    v83 = 0;
    v84 = v102;
    v103 = 4 * v102;
    while (1)
    {
      v85 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
      *&v113[v83] = v85;
      v112 = 1;
      v68 = v111;
      if (v111 < 0)
      {
        break;
      }

      if (v85 < 0)
      {
        break;
      }

      v86 = *&v113[4 * v84];
      if (v85 >= v86)
      {
        break;
      }

      *&v113[4 * v84] = v86 + ~v85;
      v83 += 4;
      if (v103 == v83)
      {
        goto LABEL_139;
      }
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v32 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

LABEL_139:
  if (v68 < 1)
  {
    v68 = -1;
  }

  else
  {
    v110 += (((v68 + 7) >> 3) - ((v68 + 6) >> 3));
    --v68;
  }

LABEL_146:
  if (v68 < 1)
  {
    goto LABEL_28;
  }

  v87 = &v110[((v68 + 7) >> 3) - ((v68 + 6) >> 3)];
  v110 = v87;
  v112 = 0;
  if (v68 == 1)
  {
    goto LABEL_28;
  }

  v88 = v68 - 2;
  v111 = v68 - 2;
  if (((v68 - 2) & 7) != 0)
  {
    v89 = (*v87 >> ((v68 - 2) & 7)) & 1;
  }

  else
  {
    v110 = v87 + 1;
    v89 = *v87++ & 1;
  }

  if (!v89)
  {
    goto LABEL_174;
  }

  if (v68 > 2)
  {
    v90 = &v87[((v68 + 5) >> 3) - ((v68 + 4) >> 3)];
    v110 = v90;
    v112 = 0;
    if (v68 != 3)
    {
      v88 = v68 - 4;
      v111 = v88;
      v95 = (v68 - 4) & 7;
      if ((v88 & 7) != 0)
      {
        v96 = *v90 >> v95;
      }

      else
      {
        v110 = v90 + 1;
        LOBYTE(v96) = *v90;
      }

      if (v96)
      {
        goto LABEL_174;
      }

      goto LABEL_156;
    }
  }

  else
  {
    v112 = 0;
  }

  v111 = -1;
LABEL_156:
  v91 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  if (v91)
  {
    v92 = (v91 + 1) >> 1;
  }

  else
  {
    v92 = -(v91 >> 1);
  }

  v112 = 1;
  if (v111 < 0 || v92 + 6 >= 0xD)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v32 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

  v93 = webrtc::BitstreamReader::ReadExponentialGolomb(&v110);
  if (v93)
  {
    v94 = (v93 + 1) >> 1;
  }

  else
  {
    v94 = -(v93 >> 1);
  }

  v112 = 1;
  v88 = v111;
  if (v111 < 0 || v94 + 6 >= 0xD)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v32 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

LABEL_174:
  v112 = 0;
  if (!v88)
  {
    goto LABEL_28;
  }

  v97 = v88 - 1;
  v111 = v97;
  v98 = v110;
  if ((v97 & 7) != 0)
  {
    LODWORD(v98) = *v110 >> (v97 & 7);
  }

  else
  {
    ++v110;
    LOBYTE(v98) = *v98;
  }

  if (v98)
  {
    if (!webrtc::H265SpsParser::ParseScalingListData(&v110, v50))
    {
      goto LABEL_28;
    }

    v97 = v111;
  }

  v112 = 0;
  if (v97 < 1)
  {
    goto LABEL_28;
  }

  v111 = v97 - 1;
  v99 = v110;
  if (((v97 - 1) & 7) != 0)
  {
    v100 = *v110 >> ((v97 - 1) & 7);
  }

  else
  {
    ++v110;
    LOBYTE(v100) = *v99;
  }

  *a8 = v17 & 1;
  *(a8 + 1) = v37;
  *(a8 + 2) = v27;
  *(a8 + 4) = v105;
  *(a8 + 8) = v107;
  *(a8 + 12) = v109;
  *(a8 + 16) = v106;
  *(a8 + 20) = v54 & 1;
  *(a8 + 21) = v104 & 1;
  *(a8 + 22) = v100 & 1;
  *(a8 + 24) = v12;
  *(a8 + 28) = v14;
  *(a8 + 32) = v108;
  *(a8 + 36) = 1;
}