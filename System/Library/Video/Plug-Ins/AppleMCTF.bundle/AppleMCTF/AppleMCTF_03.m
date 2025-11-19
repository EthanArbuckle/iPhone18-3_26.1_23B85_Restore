void sub_3E520(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  pthread_cond_init((a1 + 64), 0);
  pthread_cond_init((a1 + 112), 0);
  *(a1 + 192) = vdupq_n_s64(0x80uLL);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  operator new[]();
}

uint64_t sub_3E590(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 216);
  if (v2 >= 1 && v2 > *(a1 + 208))
  {
    *(a1 + 216) = v2 - 1;
  }

  pthread_mutex_unlock(a1);
  return 0;
}

uint64_t sub_3E5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(a1);
  v6 = a3 / 1000000;
  v7 = a3 % 1000000;
  while (1)
  {
    v8 = *(a1 + 208);
    if (*(a1 + 216) > v8)
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v9 = 1000 * (v7 + *(a1 + 184));
    *(a1 + 160) = *(a1 + 176) + v6;
    *(a1 + 168) = v9;
    if (pthread_cond_timedwait((a1 + 64), a1, (a1 + 160)) == 60)
    {
      v10 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  v11 = *(a1 + 224) + 40 * (v8 % *(a1 + 192));
  v12 = *v11;
  v13 = *(v11 + 16);
  *(a2 + 32) = *(v11 + 32);
  *a2 = v12;
  *(a2 + 16) = v13;
  v14 = *(a1 + 200);
  v15 = *(a1 + 208) + 1;
  *(a1 + 208) = v15;
  v16 = *(a1 + 216);
  v17 = __OFSUB__(v16, v15);
  v18 = v16 - v15;
  if ((v18 < 0) ^ v17 | (v18 == 0))
  {
    v18 = 0;
  }

  if (v18 < v14)
  {
    pthread_cond_signal((a1 + 112));
  }

  v10 = 0;
LABEL_11:
  pthread_mutex_unlock(a1);
  return v10;
}

uint64_t sub_3E6EC(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock(a1);
  if (*(a1 + 192) >= a2)
  {
    v13 = 0;
    *(a1 + 200) = a2;
  }

  else
  {
    if (sub_56A8C(0x2Au, 4))
    {
      v4 = sub_56AD0(0x2Au);
      v5 = sub_66A18();
      v6 = sub_56B04(4);
      v8 = *(a1 + 208);
      v7 = *(a1 + 216);
      v9 = v7 <= v8;
      v10 = v7 - v8;
      if (v9)
      {
        v10 = 0;
      }

      if (v4)
      {
        printf("%lld %d AVE %s: configure connection size fail %lld %lld %d %lld\n", v5, 42, v6, *(a1 + 192), *(a1 + 200), a2, v10);
        v5 = sub_66A18();
        sub_56B04(4);
        v11 = *(a1 + 192);
        v12 = *(a1 + 200);
        *(a1 + 216);
        *(a1 + 208);
      }

      syslog(3, "%lld %d AVE %s: configure connection size fail %lld %lld %d %lld", v5);
    }

    v13 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock(a1);
  return v13;
}

uint64_t sub_3E80C(uint64_t a1, uint64_t *a2, int a3)
{
  v50 = -1;
  if (sub_56A8C(0x28u, 7))
  {
    v6 = sub_56AD0(0x28u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.\n", v7, 40, v8);
      v9 = sub_66A18();
      v43 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v9, 40, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v7, 40, v8);
    }
  }

  if (a1)
  {
    v49 = *a2;
    if (sub_3EF90(a1, &v49) == -1004)
    {
      v10 = 4294966292;
    }

    else
    {
      *v47 = 0;
      sub_6C1C4(*(a1 + 24), 72736, v47);
      sub_6D25C(*(a1 + 24), *v47, &v50);
      v15 = *v47;
      if (!*v47)
      {
        if (sub_56A8C(3u, 4))
        {
          v20 = sub_56AD0(3u);
          v21 = sub_66A18();
          v22 = sub_56B04(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
            v23 = sub_66A18();
            v45 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v23, 3, v45, "AVE_USL_Drv_Stop", 1103, "Frame");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
          }
        }

        v10 = 4294966293;
        goto LABEL_32;
      }

      bzero((*v47 + 8), 0x11C18uLL);
      v16 = v50;
      *v15 = v50;
      *(v15 + 4) = 6;
      *(v15 + 40) = *(a1 + 44);
      *(v15 + 33048) = *a2;
      *(v15 + 16) = *(a1 + 106088) != 0;
      *(v15 + 20) = *(a1 + 106096);
      memset(v47, 0, sizeof(v47));
      *v47 = v16;
      if (sub_3B258(*(a1 + 106080), v47))
      {
        if (sub_56A8C(3u, 4))
        {
          v17 = sub_56AD0(3u);
          v18 = sub_66A18();
          v19 = sub_56B04(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v18, 3, v19, "AVE_USL_Drv_Stop", 1123, "res == 0");
            sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }
      }

      else
      {
        *&v47[24] = 0u;
        *&v47[8] = 0u;
        memset(v46, 0, sizeof(v46));
        *v47 = *a1;
        v48 = v50;
        *&v47[24] = 118000000;
        *&v47[32] = sub_66A18();
        v24 = sub_6F2F8(*(a1 + 24), v47, v46);
        if (v24)
        {
          v10 = v24;
          v25 = *(a1 + 106080);
          pthread_mutex_lock(v25);
          v26 = *(v25 + 216);
          if (v26 >= 1 && v26 > *(v25 + 208))
          {
            *(v25 + 216) = v26 - 1;
          }

          pthread_mutex_unlock(v25);
          if (sub_56A8C(0x28u, 4))
          {
            v27 = sub_56AD0(0x28u);
            v28 = sub_66A18();
            v29 = sub_56B04(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v28, 40, v29, "AVE_USL_Drv_Stop", 1140, "ret == 0", v10);
              v28 = sub_66A18();
              sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v28);
          }

          goto LABEL_32;
        }

        memset(v47, 0, sizeof(v47));
        v36 = sub_3E5D4(*(a1 + 106072), v47, 120000000);
        if (*v47 == v50)
        {
          if (!v36)
          {
            v10 = 0;
            goto LABEL_32;
          }

          if (sub_56A8C(3u, 4))
          {
            v37 = sub_56AD0(3u);
            v38 = sub_66A18();
            v39 = sub_56B04(4);
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v38, 3, v39, "AVE_USL_Drv_Stop", 1152, "res == 0");
              sub_66A18();
              sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
          }
        }

        else if (sub_56A8C(3u, 4))
        {
          v40 = sub_56AD0(3u);
          v41 = sub_66A18();
          v42 = sub_56B04(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v41, 3, v42, "AVE_USL_Drv_Stop", 1151, "status.counter == counter");
            sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
        }
      }

      v10 = 4294966296;
    }

LABEL_32:
    if (a3)
    {
      sub_3C3B8(a1);
    }

    *(a1 + 40) = 0;
    goto LABEL_35;
  }

  if (sub_56A8C(3u, 4))
  {
    v11 = sub_56AD0(3u);
    v12 = sub_66A18();
    v13 = sub_56B04(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.\n", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
      v14 = sub_66A18();
      v44 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v14, 3, v44, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }
  }

  v10 = 4294966295;
LABEL_35:
  if (sub_56A8C(0x28u, 7))
  {
    v30 = sub_56AD0(0x28u);
    v31 = sub_66A18();
    v32 = sub_56B04(7);
    if (v30)
    {
      if (a1)
      {
        v33 = *(a1 + 44);
      }

      else
      {
        v33 = 0;
      }

      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d\n", v31, 40, v32, v33, v10);
      v31 = sub_66A18();
      v32 = sub_56B04(7);
      if (!a1)
      {
        goto LABEL_43;
      }
    }

    else if (!a1)
    {
LABEL_43:
      v34 = 0;
      goto LABEL_44;
    }

    v34 = *(a1 + 44);
LABEL_44:
    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d", v31, 40, v32, v34, v10);
  }

  return v10;
}

uint64_t sub_3EF90(uint64_t a1, void *a2)
{
  v55 = -1;
  if (sub_56A8C(0x28u, 7))
  {
    v4 = sub_56AD0(0x28u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.\n", v5, 40, v6);
      v7 = sub_66A18();
      v48 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v7, 40, v48);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v5, 40, v6);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) != 1)
    {
      v17 = 4294966292;
      goto LABEL_32;
    }

    *v53 = 0;
    sub_6C1C4(*(a1 + 24), 72736, v53);
    sub_6D25C(*(a1 + 24), *v53, &v55);
    v8 = *v53;
    if (*v53)
    {
      bzero((*v53 + 8), 0x11C18uLL);
      v9 = v55;
      *v8 = v55;
      *(v8 + 4) = 8;
      *(v8 + 40) = *(a1 + 44);
      *(v8 + 33048) = *a2;
      *(v8 + 16) = *(a1 + 106088) != 0;
      *(v8 + 20) = *(a1 + 106096);
      memset(v53, 0, sizeof(v53));
      *v53 = v9;
      if (sub_3B258(*(a1 + 106080), v53))
      {
        if (sub_56A8C(3u, 4))
        {
          v10 = sub_56AD0(3u);
          v11 = sub_66A18();
          v12 = sub_56B04(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v11, 3, v12, "AVE_USL_Drv_Complete", 1215, "res == 0");
            sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }

LABEL_29:
        v17 = 4294966296;
        goto LABEL_32;
      }

      *&v53[24] = 0u;
      *&v53[8] = 0u;
      v51 = 0u;
      v52 = 0u;
      *v53 = *a1;
      v54 = v55;
      *&v53[24] = 118000000;
      *&v53[32] = sub_66A18();
      v22 = sub_6FBE0(*(a1 + 24), v53, &v51);
      if (!v22)
      {
        v33 = *(a1 + 106072);
        pthread_mutex_lock(v33);
        do
        {
          v35 = *(v33 + 208);
          v34 = *(v33 + 216);
          if (v34 > v35)
          {
            v38 = *(v33 + 200);
            v37 = *(*(v33 + 224) + 40 * (v35 % *(v33 + 192)));
            v39 = v35 + 1;
            *(v33 + 208) = v39;
            v40 = v34 <= v39;
            v41 = v34 - v39;
            if (v40)
            {
              v41 = 0;
            }

            if (v41 < v38)
            {
              pthread_cond_signal((v33 + 112));
            }

            pthread_mutex_unlock(v33);
            if (v37 == v55)
            {
              v17 = 0;
              goto LABEL_32;
            }

            goto LABEL_50;
          }

          gettimeofday((v33 + 176), 0);
          v36 = 1000 * *(v33 + 184);
          *(v33 + 160) = *(v33 + 176) + 120;
          *(v33 + 168) = v36;
        }

        while (pthread_cond_timedwait((v33 + 64), v33, (v33 + 160)) != 60);
        pthread_mutex_unlock(v33);
        if (v55)
        {
          v37 = 0;
LABEL_50:
          if (sub_56A8C(3u, 4))
          {
            v42 = sub_56AD0(3u);
            v43 = sub_66A18();
            v44 = sub_56B04(4);
            if (v42)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).\n", v43, 3, v44, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v37, v55);
              v43 = sub_66A18();
              v44 = sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).", v43, 3, v44, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v37, v55, v51, v52);
          }

          goto LABEL_29;
        }

        if (sub_56A8C(3u, 4))
        {
          v45 = sub_56AD0(3u);
          v46 = sub_66A18();
          v47 = sub_56B04(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v46, 3, v47, "AVE_USL_Drv_Complete", 1244, "res == 0");
            sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }

        goto LABEL_29;
      }

      v17 = v22;
      v23 = *(a1 + 106080);
      pthread_mutex_lock(v23);
      v24 = *(v23 + 216);
      if (v24 >= 1 && v24 > *(v23 + 208))
      {
        *(v23 + 216) = v24 - 1;
      }

      pthread_mutex_unlock(v23);
      if (sub_56A8C(0x28u, 4))
      {
        v25 = sub_56AD0(0x28u);
        v26 = sub_66A18();
        v27 = sub_56B04(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %d\n", v26, 40, v27, "AVE_USL_Drv_Complete", 1232, "ret == 0", v17);
          v26 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %d", v26);
      }
    }

    else
    {
      if (sub_56A8C(3u, 4))
      {
        v18 = sub_56AD0(3u);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
          v21 = sub_66A18();
          v50 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v50, "AVE_USL_Drv_Complete", 1195, "Frame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
        }
      }

      v17 = 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(3u, 4))
    {
      v13 = sub_56AD0(3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
        v16 = sub_66A18();
        v49 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v16, 3, v49, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }
    }

    v17 = 4294966295;
  }

LABEL_32:
  if (sub_56A8C(0x28u, 7))
  {
    v28 = sub_56AD0(0x28u);
    v29 = sub_66A18();
    v30 = sub_56B04(7);
    v31 = *(a1 + 44);
    if (v28)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d\n", v29, 40, v30, *(a1 + 44), v17);
      v29 = sub_66A18();
      v30 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d", v29, 40, v30, *(a1 + 44), v17);
  }

  return v17;
}

uint64_t sub_3F77C(void *a1, uint64_t a2)
{
  v147[0] = -1;
  pixelBufferOut = 0;
  if (sub_56A8C(0x28u, 7))
  {
    v4 = sub_56AD0(0x28u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame\n", v5, 40, v6);
      v7 = sub_66A18();
      v129 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v7, 40, v129);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v5, 40, v6);
    }
  }

  if (!a1)
  {
    if (sub_56A8C(3u, 4))
    {
      v14 = sub_56AD0(3u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.\n", v15, 3, v16, "AVE_USL_Drv_Process", 1268, "pDriverInstance");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.");
    }

    goto LABEL_58;
  }

  if (!a2)
  {
    if (sub_56A8C(3u, 4))
    {
      v17 = sub_56AD0(3u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.\n", v18, 3, v19, "AVE_USL_Drv_Process", 1269, "pSettings");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.");
    }

    goto LABEL_58;
  }

  if ((a1[5] & 1) == 0)
  {
    if (sub_56A8C(3u, 4))
    {
      v20 = sub_56AD0(3u);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.\n", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
        v23 = sub_66A18();
        v131 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v23, 3, v131, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }
    }

    v27 = 4294966285;
    goto LABEL_59;
  }

  if (!*(a2 + 8))
  {
    if (sub_56A8C(3u, 4))
    {
      v24 = sub_56AD0(3u);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL\n", v25, 3, v26, "AVE_USL_Drv_Process", 1271, "pSettings->CVImageBuffer");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL");
    }

    goto LABEL_58;
  }

  v8 = *(a1 + 2);
  if (v8 != 5 && v8 != 3)
  {
    goto LABEL_36;
  }

  if (!*(a2 + 24))
  {
    if (sub_56A8C(3u, 4))
    {
      v28 = sub_56AD0(3u);
      v29 = sub_66A18();
      v30 = sub_56B04(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL\n", v29, 3, v30, "AVE_USL_Drv_Process", 1276, "pSettings->CVImageBufferOutput");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL");
    }

LABEL_58:
    v27 = 4294966295;
    goto LABEL_59;
  }

  if (sub_56A8C(0x28u, 7))
  {
    v9 = sub_56AD0(0x28u);
    v10 = sub_66A18();
    v11 = sub_56B04(7);
    v12 = *(a2 + 24);
    if (v9)
    {
      printf("%lld %d AVE %s: pSettings->CVImageBufferOutput = %p\n", v10, 40, v11, v12);
      v13 = sub_66A18();
      v130 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v13, 40, v130, *(a2 + 24));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v10, 40, v11, v12);
    }
  }

LABEL_36:
  *v144 = 0;
  sub_6C1C4(a1[3], 72736, v144);
  sub_6D25C(a1[3], *v144, v147);
  v31 = *v144;
  if (*v144)
  {
    v32 = a1 + 13260;
    bzero((*v144 + 8), 0x11C18uLL);
    *v31 = v147[0];
    *(v31 + 4) = 7;
    *(v31 + 40) = *(a1 + 11);
    *(v31 + 44) = *(a2 + 188);
    *(v31 + 16) = a1[13261] != 0;
    *(v31 + 20) = *(a1 + 26524);
    *(v31 + 2552) = *a2;
    *(v31 + 2600) = *(a2 + 56);
    IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8));
    *(v31 + 2508) = IOSurfaceGetID(IOSurface);
    v34 = CVPixelBufferGetIOSurface(*(a2 + 16));
    *(v31 + 2512) = IOSurfaceGetID(v34);
    v35 = *(*(a2 + 144) + 19000);
    if (v35)
    {
      v36 = CVPixelBufferGetIOSurface(v35);
      *(v31 + 2516) = IOSurfaceGetID(v36);
    }

    v37 = *(a1 + 2);
    if (v37 > 3)
    {
      if (v37 == 4)
      {
        *(v31 + 2552) = *a2;
        *(v31 + 2560) = *(a2 + 8);
        if (sub_56A8C(0x28u, 7))
        {
          v48 = sub_56AD0(0x28u);
          v49 = sub_66A18();
          v50 = sub_56B04(7);
          if (v48)
          {
            printf("%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d\n", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
            v49 = sub_66A18();
            v50 = sub_56B04(7);
          }

          syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
        }

        v56 = *(a2 + 32);
        *(v31 + 2576) = v56;
        if (v56)
        {
          v57 = CVPixelBufferGetIOSurface(v56);
          *(v31 + 2536) = IOSurfaceGetID(v57);
          if (sub_56A8C(0x28u, 7))
          {
            v58 = sub_56AD0(0x28u);
            v59 = sub_66A18();
            v60 = sub_56B04(7);
            if (v58)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d\n", v59, 40, v60, "AVE_USL_Drv_Process", *(v31 + 2536));
              v59 = sub_66A18();
              v60 = sub_56B04(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d", v59, 40, v60, "AVE_USL_Drv_Process", *(v31 + 2536));
          }
        }

        v61 = 0;
        v62 = v31 + 2528;
        v63 = 1;
        do
        {
          v64 = v63;
          v65 = *(a2 + 40 + 8 * v61);
          *(v31 + 2584 + 8 * v61) = v65;
          if (v65)
          {
            v66 = CVPixelBufferGetIOSurface(v65);
            *(v62 + 4 * v61) = IOSurfaceGetID(v66);
            if (sub_56A8C(0x28u, 7))
            {
              v67 = sub_56AD0(0x28u);
              v68 = sub_66A18();
              v69 = sub_56B04(7);
              v70 = *(v62 + 4 * v61);
              if (v67)
              {
                printf("%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d\n", v68, 40, v69, "AVE_USL_Drv_Process", v61, v70);
                v71 = sub_66A18();
                v72 = sub_56B04(7);
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v71, 40, v72, "AVE_USL_Drv_Process", v61, *(v62 + 4 * v61));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v68, 40, v69, "AVE_USL_Drv_Process", v61, v70);
              }
            }
          }

          v63 = 0;
          v61 = 1;
        }

        while ((v64 & 1) != 0);
        v73 = *(a2 + 24);
        v32 = a1 + 13260;
        *(v31 + 2568) = v73;
        if (v73)
        {
          v74 = CVPixelBufferGetIOSurface(v73);
          *(v31 + 2540) = IOSurfaceGetID(v74);
          if (sub_56A8C(0x28u, 7))
          {
            v75 = sub_56AD0(0x28u);
            v76 = sub_66A18();
            v77 = sub_56B04(7);
            if (v75)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d\n", v76, 40, v77, "AVE_USL_Drv_Process", *(v31 + 2540));
              v76 = sub_66A18();
              v77 = sub_56B04(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d", v76, 40, v77, "AVE_USL_Drv_Process", *(v31 + 2540));
          }
        }
      }

      else if (v37 == 5)
      {
        *(v31 + 2552) = *a2;
        v46 = *(a2 + 24);
        *(v31 + 2568) = v46;
        v47 = CVPixelBufferGetIOSurface(v46);
        *(v31 + 2544) = IOSurfaceGetID(v47);
      }
    }

    else if (v37 == 2)
    {
      *(v31 + 2552) = *a2;
    }

    else if (v37 == 3)
    {
      *(v31 + 2560) = *(a2 + 8);
      v38 = *(a2 + 24);
      *(v31 + 2568) = v38;
      *(v31 + 2584) = *(a2 + 40);
      v39 = CVPixelBufferGetIOSurface(v38);
      *(v31 + 2520) = IOSurfaceGetID(v39);
      v40 = *(a2 + 40);
      if (v40)
      {
        v41 = CVPixelBufferGetIOSurface(v40);
        *(v31 + 2524) = IOSurfaceGetID(v41);
      }
    }

    v78 = *(a2 + 72);
    *(v31 + 4576) = *(a2 + 88);
    *(v31 + 4560) = v78;
    v79 = *(a2 + 112);
    *(v31 + 4584) = *(a2 + 96);
    *(v31 + 4600) = v79;
    *(v31 + 4608) = *(a2 + 120);
    *(v31 + 33048) = *(a2 + 160);
    v80 = *(a2 + 136);
    v81 = *(v80 + 16);
    *(v31 + 4632) = *v80;
    *(v31 + 4648) = v81;
    v82 = *(v80 + 32);
    v83 = *(v80 + 48);
    v84 = *(v80 + 64);
    *(v31 + 4712) = *(v80 + 80);
    *(v31 + 4680) = v83;
    *(v31 + 4696) = v84;
    *(v31 + 4664) = v82;
    memcpy((v31 + 4720), *(a2 + 144), 0x4A40uLL);
    memcpy((v31 + 23728), *(a2 + 152), 0x1738uLL);
    if (*(a1 + 13256) == 1)
    {
      v86 = *(a2 + 64);
      if (v86)
      {
        if (*(a1 + 3351))
        {
          if (!v32[4])
          {
            if (sub_56A8C(0x28u, 4))
            {
              v111 = sub_56AD0(0x28u);
              v112 = sub_66A18();
              v113 = sub_56B04(4);
              if (v111)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v112, 40, v113, "AVE_USL_Drv_Process", 1413, "pDriverInstance->pcVCP != __null", a1);
                v112 = sub_66A18();
                sub_56B04(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v112);
            }

            v27 = 4294966281;
            goto LABEL_142;
          }

          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          if (!Mutable)
          {
            if (sub_56A8C(0x28u, 4))
            {
              v117 = sub_56AD0(0x28u);
              v118 = sub_66A18();
              v119 = sub_56B04(4);
              if (v117)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray\n", v118, 40, v119, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
                v120 = sub_66A18();
                v135 = sub_56B04(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v120, 40, v135, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v118, 40, v119, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }
            }

            v27 = 4294966293;
            goto LABEL_142;
          }

          v88 = Mutable;
          sub_62C14((v31 + 4788), *(v31 + 4776), Mutable);
          sub_4BA5C(v32[4], *(a2 + 64), v88);
          CFRelease(v88);
          v86 = *(a2 + 64);
        }

        sub_4981C(v86, (v31 + 3184));
      }
    }

    sub_3B784(a1, v85, v31, (a1 + 6));
    v89 = v32[6];
    if (v89)
    {
      v90 = CVPixelBufferPoolCreatePixelBuffer(0, v89, &pixelBufferOut);
      if (v90)
      {
        v27 = v90;
        if (!sub_56A8C(0x28u, 4))
        {
          goto LABEL_142;
        }

        v91 = sub_56AD0(0x28u);
        v92 = sub_66A18();
        v93 = sub_56B04(4);
        v94 = v32[6];
        if (v91)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d\n", v92, 40, v93, "AVE_USL_Drv_Process", 1440, "ret == 0", v32[6], v27);
          v92 = sub_66A18();
          v93 = sub_56B04(4);
        }

        v139 = v32[6];
        v141 = v27;
        v137 = 1440;
        v133 = v93;
        v95 = "%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d";
        goto LABEL_112;
      }

      v97 = CVPixelBufferGetIOSurface(pixelBufferOut);
      if (!v97)
      {
        if (sub_56A8C(0x28u, 4))
        {
          v108 = sub_56AD0(0x28u);
          v109 = sub_66A18();
          v110 = sub_56B04(4);
          if (v108)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d\n", v109, 40, v110, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
            v109 = sub_66A18();
            v110 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d", v109, 40, v110, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
        }

        goto LABEL_141;
      }

      ID = IOSurfaceGetID(v97);
    }

    else
    {
      ID = 0;
    }

    v98 = sub_45724(a1 + 12, *a1, (a1 + 16), a1 + 17, ID);
    if (v98)
    {
      v27 = v98;
      if (!sub_56A8C(0x28u, 4))
      {
        goto LABEL_142;
      }

      v99 = sub_56AD0(0x28u);
      v100 = sub_66A18();
      v101 = sub_56B04(4);
      v102 = *a1;
      if (v99)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v100, 40, v101, "AVE_USL_Drv_Process", 1454, "ret == 0", *a1, *(v31 + 40));
        v100 = sub_66A18();
        v101 = sub_56B04(4);
      }

      v140 = *a1;
      v142 = *(v31 + 40);
      v138 = 1454;
      v134 = v101;
      v103 = "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d";
LABEL_129:
      syslog(3, v103, v100, 40, v134, "AVE_USL_Drv_Process", v138, "ret == 0", v140, v142);
      goto LABEL_142;
    }

    *(v31 + 2608) = pixelBufferOut;
    v104 = sub_40C94(a1, v31);
    if (v104)
    {
      v27 = v104;
      if (!sub_56A8C(0x28u, 4))
      {
        goto LABEL_142;
      }

      v105 = sub_56AD0(0x28u);
      v100 = sub_66A18();
      v106 = sub_56B04(4);
      v107 = *a1;
      if (v105)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d\n", v100, 40, v106, "AVE_USL_Drv_Process", 1462, "ret == 0", *a1, *(v31 + 40));
        v100 = sub_66A18();
        v106 = sub_56B04(4);
      }

      v140 = *a1;
      v142 = *(v31 + 40);
      v138 = 1462;
      v134 = v106;
      v103 = "%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d";
      goto LABEL_129;
    }

    sub_40ED4(a1, v31);
    sub_4561C(a1 + 17, (v31 + 2500));
    memset(v144, 0, sizeof(v144));
    *v144 = v147[0];
    *&v144[8] = *(v31 + 4560);
    *&v144[24] = *(v31 + 4576);
    if (sub_3B258(*v32, v144))
    {
      if (sub_56A8C(3u, 4))
      {
        v114 = sub_56AD0(3u);
        v115 = sub_66A18();
        v116 = sub_56B04(4);
        if (v114)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v115, 3, v116, "AVE_USL_Drv_Process", 1482, "res == 0");
          sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

LABEL_141:
      v27 = 4294966296;
      goto LABEL_142;
    }

    *&v144[24] = 0u;
    *&v144[8] = 0u;
    memset(v143, 0, sizeof(v143));
    *v144 = *a1;
    v145 = v147[0];
    *&v144[16] = *(v31 + 40);
    *&v144[24] = 58000000;
    *&v144[32] = sub_66A18();
    *(v31 + 33072) = sub_66A18();
    v121 = sub_6F76C(a1[3], v144, v143);
    if (v121)
    {
      v27 = v121;
      sub_3E590(*v32);
      if (sub_56A8C(0x28u, 4))
      {
        v122 = sub_56AD0(0x28u);
        v92 = sub_66A18();
        v123 = sub_56B04(4);
        if (v122)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v92, 40, v123, "AVE_USL_Drv_Process", 1503, "ret == 0", v27);
          v92 = sub_66A18();
          v139 = v27;
          v137 = 1503;
          v133 = sub_56B04(4);
        }

        else
        {
          v139 = v27;
          v137 = 1503;
          v133 = v123;
        }

        v95 = "%lld %d AVE %s: %s:%d %s | fail to process %d";
LABEL_112:
        syslog(3, v95, v92, 40, v133, "AVE_USL_Drv_Process", v137, "ret == 0", v139, v141);
      }

LABEL_142:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      goto LABEL_59;
    }

    pixelBufferOut = 0;
    v124 = *(a1 + 11) + 1;
    *(a1 + 11) = v124;
    if (v124 != *(a1 + 2999) || *(a1 + 3048) == 2 || (*(a1 + 138) & 0x3C0) != 0)
    {
      v27 = 0;
    }

    else if ((*(a1 + 2) - 2) >= 4)
    {
      *v144 = sub_66A18();
      v27 = sub_3EF90(a1, v144);
      if (v27 && sub_56A8C(3u, 4))
      {
        v125 = sub_56AD0(3u);
        v126 = sub_66A18();
        v127 = sub_56B04(4);
        if (v125)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.\n", v126, 3, v127, "AVE_USL_Drv_Process", 1535, "ret == 0");
          v128 = sub_66A18();
          v136 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v128, 3, v136, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v126, 3, v127, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (sub_56A8C(3u, 4))
    {
      v42 = sub_56AD0(3u);
      v43 = sub_66A18();
      v44 = sub_56B04(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.\n", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
        v45 = sub_66A18();
        v132 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v45, 3, v132, "AVE_USL_Drv_Process", 1293, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
      }
    }

    v27 = 4294966293;
  }

LABEL_59:
  sub_45AE0((a1 + 17));
  if (sub_56A8C(0x28u, 7))
  {
    v51 = sub_56AD0(0x28u);
    v52 = sub_66A18();
    v53 = sub_56B04(7);
    v54 = (*(a1 + 11) - 1);
    if (v51)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d\n", v52, 40, v53, *(a1 + 11) - 1, v27);
      v52 = sub_66A18();
      v53 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d", v52, 40, v53, *(a1 + 11) - 1, v27);
  }

  return v27;
}

uint64_t sub_40C94(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 136);
  if (result)
  {
    if (!*(a2 + 4744))
    {
      return 0;
    }

    v5 = *(a1 + 12212);
    if (v5 == 2)
    {
      v6 = sub_65128(result, 0);
      v13 = *(a1 + 2880);
      v14 = *(a1 + 2884);
      v15 = (v13 + 31) & 0xFFFFFFE0;
      v16 = (v14 + 31) >> 5;
      v17 = (v13 + 63) & 0xFFFFFFC0;
      v18 = ((v14 + 63) >> 5) & 0x7FFFFFE;
      if (*(a1 + 20) < 30)
      {
        v19 = v16;
      }

      else
      {
        v15 = v17;
        v19 = v18;
      }

      v11 = *(a2 + 4744);
      v12 = v15 * v19;
LABEL_12:
      if (*(a2 + 4752) < v12)
      {
        if (sub_56A8C(0x28u, 5))
        {
          v20 = sub_56AD0(0x28u);
          v21 = sub_66A18();
          v22 = sub_56B04(5);
          v23 = *(a2 + 4752);
          if (v20)
          {
            printf("%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data\n", v21, 40, v22, *(a2 + 4752), v12);
            v21 = sub_66A18();
            v22 = sub_56B04(5);
          }

          syslog(3, "%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data", v21, 40, v22, *(a2 + 4752), v12);
        }

        v12 = *(a2 + 4752);
      }

      memcpy(v6, v11, v12);
      return 0;
    }

    if (v5 == 1)
    {
      v6 = sub_65128(result, 0);
      v7 = *(a1 + 2880);
      v8 = (v7 + 15) >> 4;
      v9 = (*(a1 + 2884) + 15) & 0xFFFFFFF0;
      v10 = ((v7 + 63) >> 4) & 0xFFFFFFC;
      if (*(a1 + 20) <= 29)
      {
        v10 = v8;
      }

      v11 = *(a2 + 4744);
      v12 = v9 * v10;
      goto LABEL_12;
    }

    if (sub_56A8C(0x28u, 4))
    {
      v24 = sub_56AD0(0x28u);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      v27 = *(a1 + 12212);
      if (v24)
      {
        printf("%lld %d AVE %s: wrong encode type %d\n", v25, 40, v26, v27);
        v28 = sub_66A18();
        v29 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: wrong encode type %d", v28, 40, v29, *(a1 + 12212));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: wrong encode type %d", v25, 40, v26, v27);
      }
    }

    return 4294966295;
  }

  return result;
}

void sub_40ED4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 102400;
  if (!*(a1 + 106096))
  {
    return;
  }

  *(a2 + 24) = 2;
  v5 = *(a1 + 108);
  v6 = sub_65128(*(a1 + 144), 0);
  v7 = v6;
  v8 = *(a2 + 23712);
  if (v8)
  {
    *(a2 + 16) = 1;
LABEL_6:

    memcpy(v6, v8, v5);
    return;
  }

  v9 = (a2 + 23446);
  sub_28CF8(*(v2 + 3664), (a2 + 23446));
  if (*(a1 + 44))
  {
    *(a2 + 4724) = 0;
    memcpy(v7, (a2 + 23446), 0x108uLL);
    v6 = (v7 + 264);
    v8 = (a2 + 6132);
    goto LABEL_6;
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v10 = sub_56AD0(0xD8u);
    v11 = sub_66A18();
    v12 = sub_56B04(6);
    if (v10)
    {
      printf("%lld %d AVE %s: ------ Sequence RC Info ------\n", v11, 216, v12);
      v13 = sub_66A18();
      v81 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", v13, 216, v81);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", v11, 216, v12);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v14 = sub_56AD0(0xD8u);
    v15 = sub_66A18();
    v16 = sub_56B04(6);
    v17 = *v9;
    if (v14)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v15, 216, v16, v17);
      v18 = sub_66A18();
      v82 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v18, 216, v82, *v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v15, 216, v16, v17);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v19 = sub_56AD0(0xD8u);
    v20 = sub_66A18();
    v21 = sub_56B04(6);
    v22 = *(a2 + 23450);
    if (v19)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v20, 216, v21, v22);
      v23 = sub_66A18();
      v83 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v23, 216, v83, *(a2 + 23450));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v20, 216, v21, v22);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v24 = sub_56AD0(0xD8u);
    v25 = sub_66A18();
    v26 = sub_56B04(6);
    v27 = *(a2 + 23454);
    if (v24)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v25, 216, v26, v27);
      v28 = sub_66A18();
      v84 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v28, 216, v84, *(a2 + 23454));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v25, 216, v26, v27);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v29 = sub_56AD0(0xD8u);
    v30 = sub_66A18();
    v31 = sub_56B04(6);
    v32 = *(a2 + 23474);
    if (v29)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v30, 216, v31, v32);
      v33 = sub_66A18();
      v85 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v33, 216, v85, *(a2 + 23474));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v30, 216, v31, v32);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v34 = sub_56AD0(0xD8u);
    v35 = sub_66A18();
    v36 = sub_56B04(6);
    v37 = *(a2 + 23478);
    if (v34)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v35, 216, v36, v37);
      v38 = sub_66A18();
      v86 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v38, 216, v86, *(a2 + 23478));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v35, 216, v36, v37);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v39 = sub_56AD0(0xD8u);
    v40 = sub_66A18();
    v41 = sub_56B04(6);
    v42 = *(a2 + 23486);
    if (v39)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v40, 216, v41, v42);
      v43 = sub_66A18();
      v87 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v43, 216, v87, *(a2 + 23486));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v40, 216, v41, v42);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v44 = sub_56AD0(0xD8u);
    v45 = sub_66A18();
    v46 = sub_56B04(6);
    v47 = *(a2 + 23490);
    if (v44)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v45, 216, v46, v47);
      v48 = sub_66A18();
      v88 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v48, 216, v88, *(a2 + 23490));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v45, 216, v46, v47);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v49 = sub_56AD0(0xD8u);
    v50 = sub_66A18();
    v51 = sub_56B04(6);
    v52 = *(a2 + 23498);
    if (v49)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v50, 216, v51, v52);
      v53 = sub_66A18();
      v89 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v53, 216, v89, *(a2 + 23498));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v50, 216, v51, v52);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v54 = sub_56AD0(0xD8u);
    v55 = sub_66A18();
    v56 = sub_56B04(6);
    v57 = *(a2 + 23502);
    if (v54)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v55, 216, v56, v57);
      v58 = sub_66A18();
      v90 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v58, 216, v90, *(a2 + 23502));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v55, 216, v56, v57);
    }
  }

  if (sub_56A8C(0xD8u, 6))
  {
    v59 = sub_56AD0(0xD8u);
    v60 = sub_66A18();
    v61 = sub_56B04(6);
    v62 = *(a2 + 23510);
    if (v59)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v60, 216, v61, v62);
      v63 = sub_66A18();
      v91 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v63, 216, v91, *(a2 + 23510));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v60, 216, v61, v62);
    }
  }

  sub_28CF8(*(v2 + 3664), (a2 + 23446));
  memcpy(v7, (a2 + 23446), 0x108uLL);
  memcpy(v7 + 264, (a2 + 6132), v5);
  for (i = 0; i != 11; ++i)
  {
    if (sub_56A8C(0xD8u, 6))
    {
      v65 = (v7 + 1492);
      v66 = sub_56AD0(0xD8u);
      v67 = sub_66A18();
      v68 = sub_56B04(6);
      v69 = *(v7 + 371);
      v70 = *(v7 + 1492);
      v71 = *(v7 + 1508);
      v72 = *(v7 + 1516);
      v73 = *(v7 + 1524);
      v74 = *(v7 + 1532);
      v75 = *(v7 + 1540);
      v76 = *(v7 + 387);
      v77 = *(v7 + 388);
      if (v66)
      {
        printf("%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f\n", v67, 216, v68, i, v69, v70, v71, v72, v73, v74, v75, *(v7 + 387), v77);
        v78 = sub_66A18();
        v79 = sub_56B04(6);
        v80 = *v65;
        syslog(3, "%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f", v78, 216, v79, i, *(v7 + 371), *v65, *(v7 + 1508), *(v7 + 1516), *(v7 + 1524), *(v7 + 1532), *(v7 + 1540), *(v7 + 387), *(v7 + 388));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f", v67, 216, v68, i, v69, v70, v71, v72, v73, v74, v75, *(v7 + 387), v77);
      }
    }

    v7 = (v7 + 1574);
  }
}

uint64_t sub_41708(uint64_t a1)
{
  pthread_mutex_lock(a1);
  if (*(a1 + 216) > *(a1 + 208) && sub_56A8C(0x2Au, 5))
  {
    if (sub_56AD0(0x2Au))
    {
      v2 = sub_66A18();
      v3 = sub_56B04(5);
      v5 = *(a1 + 208);
      v4 = *(a1 + 216);
      v6 = v4 <= v5;
      v7 = v4 - v5;
      if (v6)
      {
        v7 = 0;
      }

      printf("%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left\n", v2, 42, v3, a1, v7);
      v8 = sub_66A18();
      v9 = sub_56B04(5);
    }

    else
    {
      v8 = sub_66A18();
      v9 = sub_56B04(5);
    }

    v11 = *(a1 + 208);
    v10 = *(a1 + 216);
    v6 = v10 <= v11;
    v12 = v10 - v11;
    if (v6)
    {
      v12 = 0;
    }

    syslog(3, "%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left", v8, 42, v9, a1, v12);
  }

  if (*(a1 + 224))
  {
    operator delete[]();
  }

  pthread_cond_destroy((a1 + 112));
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_unlock(a1);
  pthread_mutex_destroy(a1);
  return a1;
}

char **sub_4182C(int a1)
{
  if (a1 >= 41)
  {
    return 0;
  }

  else
  {
    return &(&off_C06B8)[2 * a1];
  }
}

uint64_t sub_41844(const void **a1, unsigned int *a2)
{
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *__filename = 0u;
  v35 = 0u;
  memset(v33, 0, 30);
  *a1 = 0;
  if (sub_56A8C(0x10u, 6))
  {
    v9 = sub_56AD0(0x10u);
    v10 = sub_66A18();
    v11 = sub_56B04(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v10, 16, v11, "AVE_MCTF_Dump_CreateOutputFile", a2);
      v12 = sub_66A18();
      v31 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v12, 16, v31, "AVE_MCTF_Dump_CreateOutputFile", a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v10, 16, v11, "AVE_MCTF_Dump_CreateOutputFile", a2);
    }
  }

  if (!a2 || *a1)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v17 = sub_56AD0(0x10u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v18, 16, v19, "AVE_MCTF_Dump_CreateOutputFile", 31, "*pOutFile == __null && pDim != __null", *a1, a2, 0);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        v20 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v18, 16, v19);
    }

    v24 = 4294966295;
  }

  else
  {
    v30 = a2[1];
    sub_63330(v33, 30, "-%dx%d-", v4, v5, v6, v7, v8, *a2);
    sub_66794(0, v33, "-output.yuv", __filename, 128);
    v13 = fopen(__filename, "wb");
    *a1 = v13;
    if (v13)
    {
      if (sub_56A8C(0x10u, 7))
      {
        v14 = sub_56AD0(0x10u);
        v15 = sub_66A18();
        v16 = sub_56B04(7);
        if (v14)
        {
          printf("%lld %d AVE %s: opened file %s to write output stream\n", v15, 16, v16, __filename);
          sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: opened file %s to write output stream");
      }
    }

    else if (sub_56A8C(0x10u, 4))
    {
      v21 = sub_56AD0(0x10u);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: could not open file %s\n", v22, 16, v23, __filename);
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: could not open file %s");
    }

    v24 = 0;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v25 = sub_56AD0(0x10u);
    v26 = sub_66A18();
    v27 = sub_56B04(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v26, 16, v27, "AVE_MCTF_Dump_CreateOutputFile", a2, v24);
      v28 = sub_66A18();
      v32 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v28, 16, v32, "AVE_MCTF_Dump_CreateOutputFile", a2, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 16, v27, "AVE_MCTF_Dump_CreateOutputFile", a2, v24);
    }
  }

  return v24;
}

uint64_t sub_41C70(FILE *a1)
{
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_MCTF_Dump_CloseOutputFile", a1);
      v5 = sub_66A18();
      v18 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v18, "AVE_MCTF_Dump_CloseOutputFile", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_MCTF_Dump_CloseOutputFile", a1);
    }
  }

  if (a1)
  {
    if (fclose(a1))
    {
      if (sub_56A8C(0x10u, 4))
      {
        v6 = sub_56AD0(0x10u);
        v7 = sub_66A18();
        v8 = sub_56B04(4);
        if (v6)
        {
          printf("%lld %d AVE %s: %s:%d %s | close file failed %p %d\n", v7, 16, v8, "AVE_MCTF_Dump_CloseOutputFile", 79, "res == 0", a1, 0);
          v7 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | close file failed %p %d", v7, 16);
      }

      v12 = 4294966296;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v9 = sub_56AD0(0x10u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v10, 16, v11, "AVE_MCTF_Dump_CloseOutputFile", 72, "pOutFile != __null", 0, 0);
        v10 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v10, 16);
    }

    v12 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v13 = sub_56AD0(0x10u);
    v14 = sub_66A18();
    v15 = sub_56B04(6);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v14, 16, v15, "AVE_MCTF_Dump_CloseOutputFile", a1, v12);
      v16 = sub_66A18();
      v19 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v16, 16, v19, "AVE_MCTF_Dump_CloseOutputFile", a1, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v14, 16, v15, "AVE_MCTF_Dump_CloseOutputFile", a1, v12);
    }
  }

  return v12;
}

uint64_t sub_41FA4(FILE *a1, __CVBuffer *a2)
{
  if (sub_56A8C(0x10u, 6))
  {
    v4 = sub_56AD0(0x10u);
    v5 = sub_66A18();
    v6 = sub_56B04(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 16, v6, "AVE_MCTF_Dump_WriteFrame", a1, a2);
      v7 = sub_66A18();
      v17 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 16, v17, "AVE_MCTF_Dump_WriteFrame", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 16, v6, "AVE_MCTF_Dump_WriteFrame", a1, a2);
    }
  }

  v8 = sub_52DBC(a2, 0, a1);
  if (v8)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v9 = sub_56AD0(0x10u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE_ImgBuf_Dump failed %p %p %d\n", v10, 16, v11, "AVE_MCTF_Dump_WriteFrame", 108, "ret == 0", a1, a2, v8);
        v12 = sub_66A18();
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_ImgBuf_Dump failed %p %p %d", v12, 16, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_ImgBuf_Dump failed %p %p %d", v10, 16, v11);
      }
    }

    v8 = 4294966296;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v13 = sub_56AD0(0x10u);
    v14 = sub_66A18();
    v15 = sub_56B04(6);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v14, 16, v15, "AVE_MCTF_Dump_WriteFrame", a1, a2, v8);
      v14 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v14);
  }

  return v8;
}

pthread_mutex_t *sub_42228()
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    *&v0->__opaque[24] = 0u;
    *&v0->__opaque[40] = 0u;
    *&v0->__sig = 0u;
    *&v0->__opaque[8] = 0u;
    if (pthread_mutex_init(v0, 0))
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_42290(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_destroy(a1))
  {
    v2 = 4294966296;
  }

  else
  {
    v2 = 0;
  }

  free(a1);
  return v2;
}

uint64_t sub_422D8(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_lock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t sub_4230C(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_unlock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t sub_42340(int a1)
{
  if ((a1 - 1) < 9)
  {
    return *(&unk_C0948 + 6 * (a1 - 1) + 1);
  }

  result = sub_56A8C(0xD0u, 4);
  if (result)
  {
    v3 = sub_56AD0(0xD0u);
    v4 = sub_66A18();
    v5 = sub_56B04(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 208, v5, "AVC_FindProfileIdc", 65, "(AVC_Profile_Invalid < eProfile) && (eProfile < AVC_Profile_Max)", a1);
      v4 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

uint64_t sub_42468(int a1)
{
  if ((a1 - 1) < 0x14)
  {
    return dword_B1D70[9 * (a1 - 1) + 1];
  }

  result = sub_56A8C(0xD1u, 4);
  if (result)
  {
    v2 = sub_56AD0(0xD1u);
    v3 = sub_66A18();
    v4 = sub_56B04(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v3, 209, v4, "AVC_FindLevelIdc", 295, "(AVC_Level_Invalid < eLevel) && (eLevel < AVC_Level_Max)", 0);
      v3 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v3);
    return 0;
  }

  return result;
}

uint64_t sub_4258C(uint64_t a1)
{
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  sub_1C05C(a1 + 32);
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_425C4(_DWORD *a1)
{
  if (sub_56A8C(0x38u, 6))
  {
    v2 = sub_56AD0(0x38u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", v3, 56, v4, "AVE_BlkPool", "Destroy", a1);
      v5 = sub_66A18();
      v19 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 56, v19, "AVE_BlkPool", "Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v3, 56, v4, "AVE_BlkPool", "Destroy", a1);
    }
  }

  do
  {
    v6 = sub_1C1FC(a1 + 4);
    if (!v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = v6;
    sub_1C294(a1 + 4);
    v8 = sub_1C71C(v7);
  }

  while (!v8);
  v9 = v8;
  if (sub_56A8C(0x38u, 5))
  {
    v10 = sub_56AD0(0x38u);
    v11 = sub_66A18();
    v12 = sub_56B04(5);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v11, 56, v12, "AVE_BlkPool", "Destroy", 285, a1, v7, v9);
      v13 = sub_66A18();
      v20 = sub_56B04(5);
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v13, 56, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v11, 56, v12);
    }
  }

LABEL_12:
  v14 = *(a1 + 3);
  if (v14)
  {
    v9 = sub_42290(v14) + v9;
    *(a1 + 3) = 0;
  }

  *a1 = 0;
  a1[16] = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  if (sub_56A8C(0x38u, 6))
  {
    v15 = sub_56AD0(0x38u);
    v16 = sub_66A18();
    v17 = sub_56B04(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v16, 56, v17, "AVE_BlkPool", "Destroy", a1, v9);
      v16 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v16);
  }

  return v9;
}

uint64_t sub_428D0(int *a1, int a2, const void *a3, int a4, int a5, int a6, unsigned int a7)
{
  v44[0] = 0;
  if (sub_56A8C(0x38u, 6))
  {
    v12 = sub_56AD0(0x38u);
    v13 = sub_66A18();
    v14 = sub_56B04(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d\n", v13, 56, v14, "AVE_BlkPool", "CreateWithMem", a1, a2, a3, a4, a5, a6, a7);
      v15 = sub_66A18();
      v38 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", v15, 56, v38, "AVE_BlkPool");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", v13, 56, v14, "AVE_BlkPool");
    }
  }

  if (a4 < 1 || a5 < 1 || a6 < 1 || a7 > 0x40 || a7 && ((a7 + 127) & a7) != 0)
  {
    if (sub_56A8C(0x38u, 4))
    {
      v16 = sub_56AD0(0x38u);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d\n", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146, "msize > 0 && num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", a1, a2, a3, a4, a5, a6, a7);
        v19 = sub_66A18();
        v39 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v19, 56, v39, "AVE_BlkPool", "CreateWithMem", 146);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146);
      }
    }

    v21 = 4294966295;
    goto LABEL_18;
  }

  if ((a2 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v20 = sub_42228();
  if (v20)
  {
LABEL_24:
    v21 = sub_1C5D8(a3, a4, a5, a6, a7, v44);
    if (v21)
    {
      if (sub_56A8C(0x38u, 4))
      {
        v29 = a6;
        v30 = sub_56AD0(0x38u);
        v31 = sub_66A18();
        v32 = sub_56B04(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p\n", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0", a1, a2, a3, a4, a5, v29, a7, v44);
          v41 = sub_66A18();
          v33 = sub_56B04(4);
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v41, 56, v33, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }

        else
        {
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }
      }

      if (v20)
      {
        sub_42290(v20);
      }
    }

    else
    {
      *a1 = a2;
      a1[1] = a5;
      a1[2] = a6;
      a1[3] = a7;
      a1[4] = 0;
      *(a1 + 3) = v20;
      sub_1C238((a1 + 8), v44[0]);
    }

    goto LABEL_18;
  }

  if (sub_56A8C(0x38u, 4))
  {
    v34 = sub_56AD0(0x38u);
    v35 = sub_66A18();
    v36 = sub_56B04(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d\n", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153, "pMutex != __null", a1, a2, a3, a4, a5, a6, a7);
      v37 = sub_66A18();
      v40 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v37, 56, v40, "AVE_BlkPool", "CreateWithMem", 153);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153);
    }
  }

  v21 = 4294966293;
LABEL_18:
  if (sub_56A8C(0x38u, 6))
  {
    v22 = a6;
    v23 = sub_56AD0(0x38u);
    v24 = sub_66A18();
    v25 = sub_56B04(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d\n", v24, 56, v25, "AVE_BlkPool", "CreateWithMem", a1, a2, a3, a4, a5, v22, a7, v21);
      v26 = sub_66A18();
      v27 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v26, 56, v27, "AVE_BlkPool", "CreateWithMem");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v24, 56, v25, "AVE_BlkPool", "CreateWithMem");
    }
  }

  return v21;
}

uint64_t sub_430A8(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  for (i = sub_1C304(a1 + 32); ; i = sub_1C14C(v5))
  {
    v5 = i;
    if (i == sub_1C320(a1 + 32))
    {
      return 4294966289;
    }

    if (sub_1C910(v5))
    {
      break;
    }
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_4311C(uint64_t a1, void *a2, _DWORD *a3)
{
  v21 = 0;
  if (a2)
  {
    *a2 = 0;
    if (*a1)
    {
      sub_422D8(*(a1 + 24));
    }

    v6 = sub_430A8(a1, &v21);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 64) >= *(a1 + 16))
      {
        goto LABEL_17;
      }

      v8 = sub_1C450(*(a1 + 4), *(a1 + 8), *(a1 + 12), &v21);
      if (v8)
      {
        v7 = v8;
        if (sub_56A8C(0x38u, 6))
        {
          v9 = sub_56AD0(0x38u);
          v10 = sub_66A18();
          v11 = sub_56B04(6);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d\n", v10, 56, v11, "AVE_BlkPool", "Alloc", 377, a1, *(a1 + 4), *(a1 + 8), *(a1 + 12), &v21, v7);
            v10 = sub_66A18();
            v11 = sub_56B04(6);
            v12 = *(a1 + 4);
            v19 = *(a1 + 8);
            v20 = *(a1 + 12);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d", v10, 56, v11, "AVE_BlkPool", "Alloc");
        }

        goto LABEL_17;
      }

      sub_1C238(a1 + 32, v21);
      ++*(a1 + 64);
    }

    v7 = sub_1C7C0(v21, a2, a3);
LABEL_17:
    if (*a1)
    {
      sub_4230C(*(a1 + 24));
    }

    return v7;
  }

  if (sub_56A8C(0x38u, 4))
  {
    v13 = sub_56AD0(0x38u);
    v14 = sub_66A18();
    v15 = sub_56B04(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p\n", v14, 56, v15, "AVE_BlkPool", "Alloc", 353, "pAddr != __null", a1, a3);
      v16 = sub_66A18();
      v18 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v16, 56, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v14, 56, v15);
    }
  }

  return 4294966295;
}

uint64_t sub_433E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  for (i = sub_1C304(a1 + 32); ; i = sub_1C14C(v7))
  {
    v7 = i;
    if (i == sub_1C320(a1 + 32))
    {
      return 4294966295;
    }

    if (sub_1C790(v7, a2))
    {
      break;
    }
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_43464(uint64_t a1, uint64_t *a2)
{
  v32 = 0;
  if (*a1)
  {
    sub_422D8(*(a1 + 24));
  }

  v4 = sub_433E8(a1, a2, &v32);
  if (v4)
  {
    v5 = v4;
    if (!sub_56A8C(0x38u, 4))
    {
      goto LABEL_20;
    }

    v6 = sub_56AD0(0x38u);
    v7 = sub_66A18();
    v8 = sub_56B04(4);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d\n", v7, 56, v8, "AVE_BlkPool", "Free", 447, "ret == 0", a1, a2, &v32, v5);
      v9 = sub_66A18();
      v23 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d", v9, 56, v23, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v31 = v5;
    v29 = a2;
    v30 = &v32;
    v28 = a1;
    v27 = 447;
    v25 = v8;
    v15 = "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d";
LABEL_19:
    syslog(3, v15, v7, 56, v25, "AVE_BlkPool", "Free", v27, "ret == 0", v28, v29, v30, v31);
    goto LABEL_20;
  }

  v10 = v32;
  v11 = sub_1C870(v32, a2);
  if (v11)
  {
    v5 = v11;
    if (!sub_56A8C(0x38u, 4))
    {
      goto LABEL_20;
    }

    v12 = sub_56AD0(0x38u);
    v7 = sub_66A18();
    v13 = sub_56B04(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d\n", v7, 56, v13, "AVE_BlkPool", "Free", 451, "ret == 0", a1, &v32, a2, v5);
      v14 = sub_66A18();
      v24 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d", v14, 56, v24, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v30 = a2;
    v31 = v5;
    v28 = a1;
    v29 = &v32;
    v27 = 451;
    v25 = v13;
    v15 = "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d";
    goto LABEL_19;
  }

  v16 = sub_1C338(a1 + 32);
  if (*(a1 + 64))
  {
    v17 = v16;
    while (v17 != sub_1C354(a1 + 32))
    {
      v10 = v17;
      v17 = sub_1C130(v17);
      if (sub_1C8FC(v10))
      {
        v32 = v10;
        sub_1C168(v10);
        v5 = sub_1C71C(v10);
        if (v5 && sub_56A8C(0x38u, 5))
        {
          v19 = sub_56AD0(0x38u);
          v20 = sub_66A18();
          v21 = sub_56B04(5);
          if (v19)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v20, 56, v21, "AVE_BlkPool", "Free", 468, a1, v10, v5);
            v22 = sub_66A18();
            v26 = sub_56B04(5);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v22, 56, v26);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v20, 56, v21);
          }
        }

        --*(a1 + 64);
        goto LABEL_20;
      }

      if (!*(a1 + 64))
      {
        break;
      }
    }
  }

  v5 = 0;
  v32 = v10;
LABEL_20:
  if (*a1)
  {
    sub_4230C(*(a1 + 24));
  }

  return v5;
}

uint64_t sub_43854(uint64_t a1, int a2, void *a3)
{
  if (*a1)
  {
    sub_422D8(*(a1 + 24));
  }

  if (*(a1 + 64))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = sub_1C1C0((a1 + 32));
    v6 = sub_1C93C(v7, a2, a3);
  }

  if (*a1)
  {
    sub_4230C(*(a1 + 24));
  }

  return v6;
}

uint64_t sub_438D0(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*a1)
  {
    sub_422D8(*(a1 + 24));
  }

  if (*(a1 + 64))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = sub_1C1C0((a1 + 32));
    v6 = sub_1C978(v7, a2, a3);
  }

  if (*a1)
  {
    sub_4230C(*(a1 + 24));
  }

  return v6;
}

uint64_t sub_4394C(uint64_t a1, int a2)
{
  if (a1 && a2)
  {
    v4 = *(a1 + 1392);
    v5 = *(a1 + 1396);
    v6 = sub_5D820(a2);
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 3);
      v9 = asc_8F175[v8];
      v10 = byte_B2040[v8];
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v12 = Mutable;
        v13 = ((v4 >> v9) + (0x20u >> v9) - 1) & -(0x20u >> v9);
        if (sub_56A8C(0x10u, 7))
        {
          v14 = sub_56AD0(0x10u);
          v49 = sub_66A18();
          v15 = sub_56B04(7);
          if (v14)
          {
            printf("%lld %d AVE %s: %s pAttrDict :%p sourceFormat: 0x%x\n", v49, 16, v15, "AVE_Session_MCTF_BuildDestPixelBufAttributes", v12, a2);
            v49 = sub_66A18();
            v15 = sub_56B04(7);
          }

          syslog(3, "%lld %d AVE %s: %s pAttrDict :%p sourceFormat: 0x%x", v49, 16, v15, "AVE_Session_MCTF_BuildDestPixelBufAttributes", v12, a2);
          v13 = ((v4 >> v9) + (0x20u >> v9) - 1) & -(0x20u >> v9);
        }

        v26 = v13 << v9;
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        v27 = *(v7 + 3);
        if (((v4 >> asc_8F175[v27]) & 0xF) == 0 && v26 > v4)
        {
          sub_4671C(kCVPixelBufferExtendedPixelsRightKey, v26 - v4, v12);
          v27 = *(v7 + 3);
        }

        v28 = (((v5 >> v10) + (0x20u >> v10) - 1) & -(0x20u >> v10)) << v10;
        if (((v5 >> byte_B2040[v27]) & 0xF) == 0 && v28 > v5)
        {
          sub_4671C(kCVPixelBufferExtendedPixelsBottomKey, v28 - v5, v12);
        }

        v29 = CFDictionaryCreate(kCFAllocatorDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v29)
        {
          v30 = v29;
          CFDictionarySetValue(v12, kCVPixelBufferIOSurfacePropertiesKey, v29);
          v31 = *(a1 + 56);
          if (v31)
          {
            CFRelease(v31);
          }

          *(a1 + 56) = v12;
          *(a1 + 56) = CFRetain(v12);
          if (sub_56A8C(0x10u, 7))
          {
            v32 = sub_56AD0(0x10u);
            v33 = sub_66A18();
            v34 = sub_56B04(7);
            if (v32)
            {
              printf("%lld %d AVE %s: %s pOutPxlBufAttr %p soruce %dx%d needed %dx%d\n", v33, 16, v34, "AVE_Session_MCTF_BuildDestPixelBufAttributes", *(a1 + 56), v4, v5, v26, v28);
              v33 = sub_66A18();
              sub_56B04(7);
              v48 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: %s pOutPxlBufAttr %p soruce %dx%d needed %dx%d", v33, 16);
          }

          v39 = *(a1 + 8);
          v40 = *(a1 + 56);
          v41 = VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes();
          if (v41)
          {
            v42 = v41;
            if (sub_56A8C(0x10u, 4))
            {
              v43 = sub_56AD0(0x10u);
              v44 = sub_66A18();
              v45 = sub_56B04(4);
              if (v43)
              {
                printf("%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes failed %p %d %d\n", v44, 16, v45, "AVE_Session_MCTF_BuildDestPixelBufAttributes", 125, "err == noErr", a1, a2, v42);
                v46 = sub_66A18();
                sub_56B04(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes failed %p %d %d", v46, 16);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes failed %p %d %d", v44, 16);
              }
            }

            v22 = 4294966296;
          }

          else
          {
            v22 = 0;
          }

          CFRelease(v12);
          CFRelease(v30);
          return v22;
        }

        if (sub_56A8C(0x10u, 4))
        {
          v35 = sub_56AD0(0x10u);
          v36 = sub_66A18();
          v37 = sub_56B04(4);
          if (v35)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %d %d\n", v36, 16, v37, "AVE_Session_MCTF_BuildDestPixelBufAttributes", 106, "pEmptyDict!= __null", a1, a2, 0);
            v38 = sub_66A18();
            sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %d %d", v38, 16);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %d %d", v36, 16);
          }
        }

        CFRelease(v12);
      }

      else if (sub_56A8C(0x10u, 4))
      {
        v23 = sub_56AD0(0x10u);
        v24 = sub_66A18();
        v25 = sub_56B04(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %d %d\n", v24, 16, v25, "AVE_Session_MCTF_BuildDestPixelBufAttributes", 81, "pAttrDict != __null", a1, a2, 0);
          v24 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %d %d", v24, 16);
      }

      return 4294966293;
    }

    if (sub_56A8C(0x10u, 4))
    {
      v19 = sub_56AD0(0x10u);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p 0x%x\n", v20, 16, v21, "AVE_Session_MCTF_BuildDestPixelBufAttributes", 63, "pPixelFmt != __null", a1, a2);
        v20 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p 0x%x", v20, 16);
    }

    return 4294966296;
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v16 = sub_56AD0(0x10u);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v17, 16, v18, "AVE_Session_MCTF_BuildDestPixelBufAttributes", 54, "pMCTF != __null && sourceFormat != 0", a1, a2);
        v17 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x", v17, 16);
    }

    return 4294966295;
  }
}

uint64_t sub_44184(uint64_t a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v14 = (a1 + 87136);
  memset(v53, 0, sizeof(v53));
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  DWORD1(v49) = PixelFormatType;
  v16 = v14[4];
  if (v16 <= 0)
  {
    v16 = *(a1 + 1392);
  }

  v46[0] = v16;
  v17 = v14[5];
  if (v17 <= 0)
  {
    v17 = *(a1 + 1396);
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 10724);
  v20 = *(a1 + 32);
  v46[1] = v17;
  v46[2] = v20;
  v21 = *(a1 + 668);
  v46[3] = v18;
  v46[4] = v21;
  v46[5] = v19;
  if (*v14 && *(a1 + 11924) != PixelFormatType)
  {
    v22 = *(a1 + 24);
    kdebug_trace();
    v23 = sub_235F0(v46, a2, (a1 + 87168), *(a1 + 11924));
    v24 = *(a1 + 24);
    v25 = *v14;
    v26 = *(a1 + 11924);
    kdebug_trace();
    if (v23)
    {
      if (sub_56A8C(3u, 4))
      {
        v27 = sub_56AD0(3u);
        v28 = sub_66A18();
        v29 = sub_56B04(4);
        v30 = *(a1 + 11924);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v28, 3, v29, "AVE_Session_MCTF_VerifyImageBuffer", 185, "err == noErr", *a2, DWORD1(v49), *(a1 + 11924), v23);
          v28 = sub_66A18();
          v29 = sub_56B04(4);
          v31 = *a2;
        }

        v43 = *(a1 + 11924);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v28, 3, v29);
      }

      return v23;
    }

    *a4 = 1;
  }

  v23 = sub_228D4(v46, a2, (a1 + 87160));
  if (!v23)
  {
    *a3 = v53[6];
    v33 = HIDWORD(v52);
    v34 = HIDWORD(v50);
    *a5 = DWORD2(v52);
    *a6 = v33;
    *(a1 + 10156) = (v34 & 0xFFFFFFFE) == 2;
    if (v34 == 3)
    {
      *(a1 + 10481) = BYTE4(v51);
    }

    if (a7)
    {
      v35 = DWORD2(v49);
      *(a1 + 10720) = DWORD1(v49);
      v36 = v50;
      *(a1 + 24640) = v50;
      *(a1 + 10140) = v36;
      *(a1 + 10144) = v35;
      *(a1 + 10123) = v34 != 1;
      *(a1 + 10733) = 1;
    }

    if (*v14)
    {
      if (*(a1 + 11924) == DWORD1(v49))
      {
        return 0;
      }

      else
      {
        if (sub_56A8C(0x10u, 4))
        {
          v37 = sub_56AD0(0x10u);
          v38 = sub_66A18();
          v39 = sub_56B04(4);
          v40 = *(a1 + 11924);
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v38, 16, v39, "AVE_Session_MCTF_VerifyImageBuffer", 226, "false", *(a1 + 24), *v14, *(a1 + 11924), DWORD1(v49));
            v38 = sub_66A18();
            v39 = sub_56B04(4);
            v41 = *(a1 + 24);
            v44 = *(a1 + 11924);
            v42 = *v14;
          }

          else
          {
            v45 = *(a1 + 11924);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v38, 16, v39);
        }

        return 4294954394;
      }
    }

    else
    {
      v23 = 0;
      *(a1 + 11924) = DWORD1(v49);
    }
  }

  return v23;
}

uint64_t sub_4458C(uint64_t a1)
{
  if (sub_56A8C(0x10u, 7))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_SetEncoderDefault", a1);
      v5 = sub_66A18();
      v15 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v15, "AVE_SetEncoderDefault", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_SetEncoderDefault", a1);
    }
  }

  if (a1)
  {
    v6 = 0;
    *(a1 + 10508) = 1;
    *(a1 + 10716) = 1;
    *(a1 + 10157) = 1;
    *(a1 + 10483) = 3;
    *(a1 + 10204) = 1;
    *(a1 + 668) = 960;
    *(a1 + 10124) = 257;
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v7 = sub_56AD0(0x10u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v8, 16, v9, "AVE_SetEncoderDefault", 242, "pMCTF != __null", 0);
        v8 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v8);
    }

    v6 = 4294966295;
  }

  if (sub_56A8C(0x10u, 7))
  {
    v10 = sub_56AD0(0x10u);
    v11 = sub_66A18();
    v12 = sub_56B04(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 16, v12, "AVE_SetEncoderDefault", a1, v6);
      v13 = sub_66A18();
      v16 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 16, v16, "AVE_SetEncoderDefault", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 16, v12, "AVE_SetEncoderDefault", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_44808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (sub_56A8C(3u, 4))
    {
      v7 = sub_56AD0(3u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerFrameData pMCTF = NULL.\n", v8, 3, v9, "AVE_GetPerFrameData", 263, "pMCTF != __null");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerFrameData pMCTF = NULL.");
    }

    return 4294954384;
  }

  if (!a4)
  {
    if (sub_56A8C(3u, 4))
    {
      v10 = sub_56AD0(3u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerFrameData PerFrameData = NULL.\n", v11, 3, v12, "AVE_GetPerFrameData", 264, "PerFrameData != __null");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerFrameData PerFrameData = NULL.");
    }

    return 4294954384;
  }

  *(a4 + 1362) = *(a1 + 10156);
  *a3 |= 4uLL;
  *(a4 + 1400) = 0x3FF0000000000000;
  v4 = *(a1 + 87152);
  if (v4 <= 0)
  {
    v4 = *(a1 + 1392);
  }

  *(a4 + 560) = v4;
  v5 = *(a1 + 87156);
  if (v5 <= 0)
  {
    v5 = *(a1 + 1396);
  }

  result = 0;
  *(a4 + 564) = v5;
  *(a3 + 968) = 1;
  return result;
}

uint64_t sub_44A14(int a1, uint64_t a2, unsigned __int8 a3, unsigned int a4)
{
  if (((a1 == 1) & a3) != 0)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_44A28(int a1, int a2, int a3, int a4)
{
  if (a2 == 2)
  {
    v6 = ((a3 + 31) & 0xFFFFFFE0) * ((a4 + 31) >> 5);
    if (a1 >= 30)
    {
      v6 = (((a4 + 63) >> 5) & 0x3FFFFFE) * ((a3 + 63) & 0xFFFFFFC0);
    }
  }

  else if (a2 == 1)
  {
    v4 = (a3 + 15) & 0xFFFFFFF0;
    if (a1 < 30)
    {
      v5 = (a4 + 15) >> 4;
    }

    else
    {
      v4 = (v4 + 63) & 0x3FFFFFC0;
      v5 = ((a4 + 63) >> 4) & 0xFFFFFFFC;
    }

    v6 = v4 * v5;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 4095) & 0xFFFFF000;
}

uint64_t sub_44ACC(int a1, int a2)
{
  if (a1)
  {
    v2 = 17314;
  }

  else
  {
    v2 = 1574;
  }

  if (a2)
  {
    return v2 + 264;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_44AEC(uint64_t a1, const void *a2, int a3, uint64_t a4, void *a5)
{
  if (a3 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (sub_56A8C(0x4Cu, 4))
  {
    v10 = sub_56AD0(0x4Cu);
    v11 = sub_66A18();
    v12 = sub_56B04(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", v11, 76, v12, "AVE_CreateUSurface", 64, "SID != 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v15 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 64);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v11, 76, v12, "AVE_CreateUSurface", 64);
    }
  }

  return 4294966295;
}

uint64_t sub_44EC4(uint64_t a1, const void *a2, int a3, uint64_t a4, void *a5)
{
  if (a3 >= 1 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (sub_56A8C(0x4Cu, 4))
  {
    v10 = sub_56AD0(0x4Cu);
    v11 = sub_66A18();
    v12 = sub_56B04(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", v11, 76, v12, "AVE_CreateUSurface", 122, "size > 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v15 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 122);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v11, 76, v12, "AVE_CreateUSurface", 122);
    }
  }

  return 4294966295;
}

uint64_t sub_452AC(const char *a1)
{
  if (a1)
  {
    sub_6488C(a1);
    nullsub_2(a1);
    operator delete();
  }

  if (sub_56A8C(0x4Cu, 4))
  {
    v2 = sub_56AD0(0x4Cu);
    v3 = sub_66A18();
    v4 = sub_56B04(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v3, 76, v4, "AVE_DestroyUSurface", 174, "pSurface != __null", 0);
      v3 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v3);
  }

  return 4294966295;
}

uint64_t sub_453DC(const void *a1, uint64_t a2, const void *a3)
{
  if (a1 && a3)
  {
    return 0;
  }

  if (sub_56A8C(0x4Cu, 4))
  {
    v7 = sub_56AD0(0x4Cu);
    v8 = sub_66A18();
    v9 = sub_56B04(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", v8, 76, v9, "AVE_CreateInUSurfaces", 219, "pSInfoSet != __null && pSet != __null", a1, a2, a3);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v10, 76, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v8, 76, v9);
    }
  }

  sub_45510(a3);
  return 4294966295;
}

uint64_t sub_45510(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if (sub_56A8C(0x4Cu, 4))
  {
    v2 = sub_56AD0(0x4Cu);
    v3 = sub_66A18();
    v4 = sub_56B04(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v3, 76, v4, "AVE_DestroyInUSurfaces", 245, "pSet != __null", 0);
      v3 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v3);
  }

  return 4294966295;
}

uint64_t sub_4561C(uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    *a2 = sub_65118(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a2[1] = sub_65118(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    a2[2] = sub_65118(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    a2[3] = sub_65118(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a2[4] = sub_65118(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    a2[5] = sub_65118(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    a2[6] = sub_65118(v10);
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = a1[v11 + 7];
    if (v14)
    {
      a2[v11 + 7] = sub_65118(v14);
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  v15 = a1[9];
  if (v15)
  {
    a2[9] = sub_65118(v15);
  }

  v16 = a1[10];
  if (v16)
  {
    a2[10] = sub_65118(v16);
  }

  v17 = a1[11];
  if (v17)
  {
    a2[11] = sub_65118(v17);
  }

  return 0;
}

uint64_t sub_45724(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  memset(v38, 0, sizeof(v38));
  if (!a1 || !a4)
  {
    if (sub_56A8C(0x4Cu, 4))
    {
      v22 = sub_56AD0(0x4Cu);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", v23, 76, v24, "AVE_CreateDataUSurfaces", 352, "pSInfoSet != __null && pSet != __null", a1, a2, a4);
        v25 = sub_66A18();
        v37 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v25, 76, v37);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v23, 76, v24);
      }
    }

    v26 = 4294966295;
    goto LABEL_24;
  }

  v9 = sub_4182C(4);
  v11 = a1[14];
  v10 = a1[15];
  v12 = v9[1];
  sub_63330(v38, 64, "%s-%lld", v13, v14, v15, v16, v17, *v9);
  if (v11 >= 1)
  {
    v19 = (a4 + 1);
    v18 = a4[1];
    if (v18)
    {
      v20 = sub_652CC(v18);
      v21 = *v19;
      if (v20 >= v10)
      {
        if (v21)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_452AC(v21);
        *v19 = 0;
      }
    }

    v27 = sub_44EC4(a2, v38, v10, v12, a4 + 1);
    if (v27)
    {
      v26 = v27;
      if (!sub_56A8C(0x4Cu, 4))
      {
LABEL_24:
        sub_45AE0(a4);
        return v26;
      }

      v28 = sub_56AD0(0x4Cu);
      v29 = sub_66A18();
      v30 = sub_56B04(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v29, 76, v30, "AVE_CreateDataUSurfaces", 372, "ret == 0", v38, v26);
        v31 = sub_66A18();
        sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v31, 76);
        goto LABEL_24;
      }

LABEL_23:
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v29, 76);
      goto LABEL_24;
    }
  }

LABEL_17:
  if (a5)
  {
    v32 = sub_4182C(5);
    v26 = sub_44AEC(a2, v38, a5, v32[1], a4);
    if (v26)
    {
      if (!sub_56A8C(0x4Cu, 4))
      {
        goto LABEL_24;
      }

      v33 = sub_56AD0(0x4Cu);
      v29 = sub_66A18();
      v34 = sub_56B04(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v29, 76, v34, "AVE_CreateDataUSurfaces", 386, "ret == 0", v38, v26);
        v35 = sub_66A18();
        sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v35, 76);
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v26 = 0;
    *a4 = 0;
  }

  return v26;
}

uint64_t sub_45AE0(uint64_t a1)
{
  if (a1)
  {
    result = *a1;
    if (result)
    {
      result = sub_452AC(result);
      *a1 = 0;
    }

    if (*(a1 + 8))
    {
      result = sub_452AC(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    if (*(a1 + 16))
    {
      result = sub_452AC(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    if (*(a1 + 24))
    {
      result = sub_452AC(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    if (*(a1 + 32))
    {
      result = sub_452AC(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    if (*(a1 + 40))
    {
      result = sub_452AC(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    if (*(a1 + 48))
    {
      result = sub_452AC(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    v3 = 0;
    v4 = a1 + 56;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(v4 + 8 * v3))
      {
        result = sub_452AC(*(v4 + 8 * v3));
        *(v4 + 8 * v3) = 0;
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    if (*(a1 + 72))
    {
      result = sub_452AC(*(a1 + 72));
      *(a1 + 72) = 0;
    }

    if (*(a1 + 80))
    {
      result = sub_452AC(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    if (*(a1 + 88))
    {
      result = sub_452AC(*(a1 + 88));
      *(a1 + 88) = 0;
    }
  }

  else
  {
    if (sub_56A8C(0x4Cu, 4))
    {
      v7 = sub_56AD0(0x4Cu);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 76, v9, "AVE_DestroyDataUSurfaces", 414, "pSet != __null", 0);
        v8 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_45CDC(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_56A8C(0x14u, 4))
      {
        v10 = sub_56AD0(0x14u);
        v11 = sub_66A18();
        v12 = sub_56B04(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", v11, 20, v12, "AVE_CFArray_AddSInt32", 83, "pNum != __null", valuePtr, a2);
          v11 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v7 = sub_56AD0(0x14u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt32", 79, "pArray != __null", a1, 0);
        v8 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_45F00(uint64_t a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_56A8C(0x14u, 4))
      {
        v10 = sub_56AD0(0x14u);
        v11 = sub_66A18();
        v12 = sub_56B04(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p\n", v11, 20, v12, "AVE_CFArray_AddSInt64", 110, "pNum != __null", valuePtr, a2);
          v11 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v7 = sub_56AD0(0x14u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p\n", v8, 20, v9, "AVE_CFArray_AddSInt64", 106, "pArray != __null", a1, 0);
        v8 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_46124(__CFArray *a1, double a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_56A8C(0x14u, 4))
      {
        v10 = sub_56AD0(0x14u);
        v11 = sub_66A18();
        v12 = sub_56B04(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", v11, 20, v12, "AVE_CFArray_AddDouble", 165, "pNum != __null", valuePtr, a1);
          v11 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", v11);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v7 = sub_56AD0(0x14u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddDouble", 161, "pArray != __null", a2, 0);
        v8 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t sub_46368(void *key, int a2, CFMutableDictionaryRef theDict)
{
  if (key && theDict)
  {
    v6 = &kCFBooleanTrue;
    if (!a2)
    {
      v6 = &kCFBooleanFalse;
    }

    CFDictionaryAddValue(theDict, key, *v6);
    return 0;
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v8 = sub_56AD0(0x14u);
      v9 = sub_66A18();
      v10 = sub_56B04(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v9, 20, v10, "AVE_CFDict_AddBool", 378, "pKey != __null && pDict != __null", key, a2, theDict);
        v11 = sub_66A18();
        v12 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v11, 20, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v9, 20, v10);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_464BC(const void *a1, __CFDictionary *a2, double a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a2, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_56A8C(0x14u, 4))
      {
        v12 = sub_56AD0(0x14u);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p\n", v13, 20, v14, "AVE_CFDict_AddDouble", 493, "pNum != __null", a1, valuePtr, a2);
          v13 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p", v13, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v9 = sub_56AD0(0x14u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p\n", v10, 20, v11, "AVE_CFDict_AddDouble", 489, "pKey != __null && pDict != __null", a1, a3, a2);
        v10 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p", v10, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_4671C(const void *a1, int a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_56A8C(0x14u, 4))
      {
        v13 = sub_56AD0(0x14u);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p\n", v14, 20, v15, "AVE_CFDict_AddSInt32", 584, "pNum != __null", a1, valuePtr, a3);
          v16 = sub_66A18();
          v18 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", v14, 20, v15);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v9 = sub_56AD0(0x14u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFDict_AddSInt32", 580, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = sub_66A18();
        v17 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_4695C(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_56A8C(0x14u, 4))
      {
        v13 = sub_56AD0(0x14u);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p\n", v14, 20, v15, "AVE_CFDict_AddSInt64", 614, "pNum != __null", a1, valuePtr, a3);
          v16 = sub_66A18();
          v18 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", v14, 20, v15);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v9 = sub_56AD0(0x14u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p\n", v10, 20, v11, "AVE_CFDict_AddSInt64", 610, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = sub_66A18();
        v17 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_46B9C(CFDictionaryRef theDict, void *key, BOOL *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        v8 = CFBooleanGetValue(Value);
        result = 0;
        *a3 = v8 != 0;
        return result;
      }
    }

    if (!sub_56A8C(0x14u, 4))
    {
      return 4294966296;
    }

    v14 = sub_56AD0(0x14u);
    v15 = sub_66A18();
    v16 = sub_56B04(4);
    if (v14)
    {
      if (Value)
      {
        v17 = CFGetTypeID(Value);
      }

      else
      {
        v17 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld\n", v15, 20, v16, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v17);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (!Value)
      {
        v18 = -1;
        goto LABEL_25;
      }
    }

    else if (!Value)
    {
      v18 = -1;
      goto LABEL_25;
    }

    v18 = CFGetTypeID(Value);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld", v15, 20, v16, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v18);
    return 4294966296;
  }

  if (sub_56A8C(0x14u, 4))
  {
    v10 = sub_56AD0(0x14u);
    v11 = sub_66A18();
    v12 = sub_56B04(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFDict_GetBool", 640, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v13 = sub_66A18();
      v19 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
    }
  }

  return 4294966295;
}

uint64_t sub_46E4C(CFDictionaryRef theDict, void *key, void *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberDoubleType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_56A8C(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_56AD0(0x14u);
    v14 = sub_66A18();
    v15 = sub_56B04(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_56A8C(0x14u, 4))
  {
    v9 = sub_56AD0(0x14u);
    v10 = sub_66A18();
    v11 = sub_56B04(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetDouble", 788, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_66A18();
      v18 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_470FC(CFDictionaryRef theDict, void *key, _DWORD *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_56A8C(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_56AD0(0x14u);
    v14 = sub_66A18();
    v15 = sub_56B04(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_56A8C(0x14u, 4))
  {
    v9 = sub_56AD0(0x14u);
    v10 = sub_66A18();
    v11 = sub_56B04(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt32", 901, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_66A18();
      v18 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_473AC(CFDictionaryRef theDict, void *key, void *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_56A8C(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_56AD0(0x14u);
    v14 = sub_66A18();
    v15 = sub_56B04(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_56A8C(0x14u, 4))
  {
    v9 = sub_56AD0(0x14u);
    v10 = sub_66A18();
    v11 = sub_56B04(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt64", 939, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_66A18();
      v18 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

const char *sub_4765C(const __CFString *a1, char *a2, int a3)
{
  if (a1)
  {
    result = CFStringGetCStringPtr(a1, 0);
    if (a3 >= 1 && a2 && !result)
    {
      CFStringGetCString(a1, a2, a3, 0);
      return a2;
    }
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v7 = sub_56AD0(0x14u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v8, 20, v9, "AVE_CFStr_GetStr", 975, "pStr != __null", 0, a2, a3);
        v10 = sub_66A18();
        v11 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 20, v11);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v8, 20, v9);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_477B0(CFStringRef applicationID, CFStringRef key, char *a3, int a4)
{
  if (applicationID && key && a3 && a4 > 0)
  {
    v8 = CFPreferencesCopyAppValue(key, applicationID);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        v11 = sub_4765C(v9, a3, a4);
        if (v11 != a3)
        {
          sub_63330(a3, a4, "%s", v12, v13, v14, v15, v16, v11);
        }

        v17 = 0;
      }

      else
      {
        v17 = 4294966296;
      }

      CFRelease(v9);
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v18 = sub_56AD0(0x14u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", v19, 20, v20, "AVE_CFPref_GetStr", 1006, "pAppID != __null && pKey != __null && pVal != __null && num > 0", applicationID, key, a3, a4);
        v21 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v21, 20, v23, "AVE_CFPref_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v19, 20, v20, "AVE_CFPref_GetStr");
      }
    }

    return 4294966295;
  }

  return v17;
}

uint64_t sub_47970(CFStringRef applicationID, CFStringRef key, BOOL *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        v9 = CFEqual(v7, kCFBooleanTrue) != 0;
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 != CFStringGetTypeID())
        {
          goto LABEL_19;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"true", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"yes", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"1", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        if (CFStringCompare(v7, @"false", 1uLL) && CFStringCompare(v7, @"no", 1uLL) && CFStringCompare(v7, @"0", 1uLL))
        {
LABEL_19:
          v10 = 4294966296;
          goto LABEL_20;
        }

        v9 = 0;
      }

LABEL_7:
      v10 = 0;
      *a3 = v9;
LABEL_20:
      CFRelease(v7);
      return v10;
    }

    return 4294966288;
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v11 = sub_56AD0(0x14u);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v12, 20, v13, "AVE_CFPref_GetBool", 1047, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v14 = sub_66A18();
        v17 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v13);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_47BC4(CFStringRef applicationID, CFStringRef key, _DWORD *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          v19 = 0;
          valuePtr = 0;
          v15 = sub_4765C(v7, &valuePtr, 12);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v10 = sub_56AD0(0x14u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetUInt32", 1151, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_66A18();
        v17 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_47DD0(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v19 = 0;
          v15 = sub_4765C(v7, valuePtr, 20);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v10 = sub_56AD0(0x14u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetUInt64", 1202, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_66A18();
        v17 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_47FDC(CFStringRef applicationID, CFStringRef key, _DWORD *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, valuePtr))
        {
          v9 = 0;
          *a3 = *valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          memset(valuePtr, 0, 13);
          v15 = sub_4765C(v7, valuePtr, 13);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v10 = sub_56AD0(0x14u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetInt32", 1252, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_66A18();
        v17 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_481E8(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr = 0;
          v19[0] = 0;
          *(v19 + 5) = 0;
          v15 = sub_4765C(v7, &valuePtr, 21);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v10 = sub_56AD0(0x14u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetInt64", 1303, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_66A18();
        v17 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_483F4(CFStringRef applicationID, CFStringRef key, double *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        v19 = 0;
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberDoubleType, valuePtr))
        {
          v9 = *valuePtr;
LABEL_19:
          v14 = 0;
          *a3 = v9;
LABEL_21:
          CFRelease(v7);
          return v14;
        }

        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &v19))
        {
          v9 = v19;
          goto LABEL_19;
        }
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v21 = 0;
          v16 = sub_4765C(v7, valuePtr, 20);
          if (v16)
          {
            v9 = strtod(v16, 0);
            goto LABEL_19;
          }
        }
      }

      v14 = 4294966296;
      goto LABEL_21;
    }

    return 4294966288;
  }

  else
  {
    if (sub_56A8C(0x14u, 4))
    {
      v10 = sub_56AD0(0x14u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetDouble", 1353, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_66A18();
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_48614(_DWORD *a1, int a2, uint64_t a3, _DWORD *a4)
{
  LODWORD(v4) = *a1;
  if (*a1 >= *a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = v4;
  }

  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1 + 2;
    v7 = a1 + 2;
    do
    {
      v8 = *v7;
      v7 += 2;
      if ((a2 & ~v8) == 0)
      {
        *(a3 + 4 * v5++) = *(v6 - 1);
      }

      v6 = v7;
      --v4;
    }

    while (v4);
  }

  *a4 = v5;
  return 0;
}

uint64_t sub_48670(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v9 = sub_202D8(a1, a2, a3);
  if (!v9)
  {
    return 4294966294;
  }

  v10 = *v9;
  if (v10 < 1)
  {
    v14 = 4294966294;
  }

  else
  {
    v11 = v9 + 3;
    v12 = 1;
    v13 = 1;
    do
    {
      if (*(v11 - 1) <= a4 && *v11 <= a5)
      {
        break;
      }

      v13 = v12 < v10;
      v11 += 3;
      ++v12;
    }

    while (v12 - v10 != 1);
    v14 = v13 ? 0 : 4294966294;
  }

  v15 = v9[13];
  if (v15 < 1)
  {
    return 4294966294;
  }

  for (i = v9 + 16; ; i += 3)
  {
    if (*(i - 1) >= a4 && *i >= a5)
    {
      v17 = *(i - 2);
      if (v17 == a6 || v17 < 0)
      {
        break;
      }
    }

    if (!--v15)
    {
      return 4294966294;
    }
  }

  return v14;
}

int *sub_48758(int a1, int a2, int a3)
{
  result = sub_202D8(a1, a2, a3);
  if (result)
  {
    v4 = *result;
    result += 2;
    if (v4 < 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_48780(int a1, int a2, int a3, signed int *a4, signed int *a5)
{
  v10 = sub_202D8(a1, a2, a3);
  if (!v10)
  {
    if (sub_56A8C(3u, 4))
    {
      v15 = sub_56AD0(3u);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d\n", v16, 3, v17, "AVE_Enc_AlignDimension", 408, "pRes != __null", a1, a2, a3);
        v16 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d", v16, 3);
    }

    return 4294966296;
  }

  v11 = *v10;
  if (*v10 <= 0)
  {
    if (sub_56A8C(3u, 4))
    {
      v18 = sub_56AD0(3u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d\n", v19, 3, v20, "AVE_Enc_AlignDimension", 413, "num >= 1", a1, a2, a3, v11);
        v21 = sub_66A18();
        sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v21, 3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v19, 3);
      }
    }

    return 4294966296;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (a3 != 2 && a3 != 1)
  {
    return 4294966296;
  }

  result = 0;
  if (((*a4 + 15) & 0xFFFFFFF0) > v13)
  {
    v13 = (*a4 + 15) & 0xFFFFFFF0;
  }

  *a4 = v13;
  if (((*a5 + 15) & 0xFFFFFFF0) > v12)
  {
    v12 = (*a5 + 15) & 0xFFFFFFF0;
  }

  *a5 = v12;
  return result;
}

uint64_t sub_489E0(CFDictionaryRef theDict, uint64_t a2)
{
  v14 = 0;
  if (theDict && a2)
  {
    v4 = sub_46B9C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Acknowledged, a2);
    v5 = sub_46B9C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Reserved, (a2 + 1)) + v4;
    v6 = sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceIndex, &v14);
    *(a2 + 2) = v14;
    v7 = v5 + v6 + sub_46B9C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceAnchor, (a2 + 3));
    return v7 + sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_RefFrameNum, (a2 + 4));
  }

  else
  {
    if (sub_56A8C(0xE2u, 4))
    {
      v9 = sub_56AD0(0xE2u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 226, v11, "AVE_DRC_RetrieveMetaData", 25, "pDict != __null && pMetaData != __null", theDict, a2, 0);
        v12 = sub_66A18();
        v13 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 226, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_48BA0(unsigned __int8 *a1, CFMutableDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    v4 = sub_46368(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Acknowledged, *a1, theDict);
    v5 = sub_46368(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Reserved, a1[1], theDict) + v4;
    v6 = sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceIndex, a1[2], theDict);
    v7 = v5 + v6 + sub_46368(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceAnchor, a1[3], theDict);
    return v7 + sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_RefFrameNum, *(a1 + 1), theDict);
  }

  else
  {
    if (sub_56A8C(0xE2u, 4))
    {
      v9 = sub_56AD0(0xE2u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 226, v11, "AVE_DRC_MakeMetaData", 60, "pMetaData != __null && pDict != __null", a1, theDict, 0);
        v12 = sub_66A18();
        v13 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 226, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_48D54(CFDictionaryRef theDict, _DWORD *a2)
{
  v33 = 0;
  if (theDict && a2)
  {
    sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_ReferenceType, &v33);
    *a2 = v33;
    sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumber, &v33);
    a2[1] = v33;
    sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumberFromIDR, &v33);
    a2[2] = v33;
    sub_473AC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PresentationTimestamp, a2 + 2);
    sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PTSTimescale, &v33);
    a2[6] = v33;
    Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_OriginalBuffer);
    if (Value)
    {
      v5 = Value;
      v6 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width;
      sub_470FC(Value, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width, &v33);
      a2[12] = v33;
      v7 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height;
      sub_470FC(v5, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height, &v33);
      a2[14] = v33;
      v8 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID;
      sub_470FC(v5, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID, &v33);
      a2[16] = v33;
      v9 = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_RVRABuffer);
      if (v9)
      {
        v10 = v9;
        sub_470FC(v9, v6, &v33);
        a2[13] = v33;
        sub_470FC(v10, v7, &v33);
        a2[15] = v33;
        sub_470FC(v10, v8, &v33);
        a2[17] = v33;
        v11 = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData);
        v12 = sub_489E0(v11, (a2 + 18));
        if (v12 && sub_56A8C(0xE2u, 4))
        {
          v13 = sub_56AD0(0xE2u);
          v14 = sub_66A18();
          v15 = sub_56B04(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d\n", v14, 226, v15, "AVE_DPB_RetrieveSnapshotEntry", 150, "ret == 0", theDict, a2, v12);
            v16 = sub_66A18();
            v29 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v16, 226, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v14, 226, v15);
          }
        }

        return v12;
      }

      if (sub_56A8C(0xE2u, 4))
      {
        v24 = sub_56AD0(0xE2u);
        v25 = sub_66A18();
        v26 = sub_56B04(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d\n", v25, 226, v26, "AVE_DPB_RetrieveSnapshotEntry", 131, "pTmpDict != __null", theDict, a2, 0);
          v27 = sub_66A18();
          v32 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v27, 226, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v25, 226, v26);
        }
      }
    }

    else if (sub_56A8C(0xE2u, 4))
    {
      v21 = sub_56AD0(0xE2u);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshotEntry", 113, "pTmpDict != __null", theDict, a2, 0);
        v22 = sub_66A18();
        v31 = sub_56B04(4);
      }

      else
      {
        v31 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d", v22, 226, v31);
    }

    return 4294966288;
  }

  if (sub_56A8C(0xE2u, 4))
  {
    v17 = sub_56AD0(0xE2u);
    v18 = sub_66A18();
    v19 = sub_56B04(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v18, 226, v19, "AVE_DPB_RetrieveSnapshotEntry", 92, "pDict != __null && pEntry != __null", theDict, a2, 0);
      v20 = sub_66A18();
      v30 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v20, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v18, 226, v19);
    }
  }

  return 4294966295;
}

uint64_t sub_4929C(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_ReferenceType, *a1, a2);
    sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumber, *(a1 + 4), a2);
    sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumberFromIDR, *(a1 + 8), a2);
    sub_4695C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PresentationTimestamp, *(a1 + 16), a2);
    sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PTSTimescale, *(a1 + 24), a2);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width;
      sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width, *(a1 + 48), Mutable);
      v7 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height;
      sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height, *(a1 + 56), v5);
      v8 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID;
      sub_4671C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID, *(a1 + 64), v5);
      CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_OriginalBuffer, v5);
      CFRelease(v5);
      v9 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v9)
      {
        v10 = v9;
        sub_4671C(v6, *(a1 + 52), v9);
        sub_4671C(v7, *(a1 + 60), v10);
        sub_4671C(v8, *(a1 + 68), v10);
        CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_RVRABuffer, v10);
        CFRelease(v10);
        v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v11)
        {
          v12 = v11;
          v13 = sub_48BA0((a1 + 72), v11);
          if (v13)
          {
            if (sub_56A8C(0xE2u, 4))
            {
              v14 = sub_56AD0(0xE2u);
              v15 = sub_66A18();
              v16 = sub_56B04(4);
              if (v14)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d\n", v15, 226, v16, "AVE_DPB_MakeSnapshotEntry", 227, "ret == 0", a1, a2, v13);
                v17 = sub_66A18();
                v29 = sub_56B04(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v17, 226, v29);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v15, 226, v16);
              }
            }
          }

          else
          {
            CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData, v12);
          }

          CFRelease(v12);
          return v13;
        }

        if (sub_56A8C(0xE2u, 4))
        {
          v26 = sub_56AD0(0xE2u);
          v23 = sub_66A18();
          v24 = sub_56B04(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 223, "pTmpDict != __null", a1, a2, 0);
            goto LABEL_24;
          }

LABEL_30:
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v23, 226, v24);
        }

        return 4294966293;
      }

      if (!sub_56A8C(0xE2u, 4))
      {
        return 4294966293;
      }

      v25 = sub_56AD0(0xE2u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (!v25)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 206, "pTmpDict != __null", a1, a2, 0);
    }

    else
    {
      if (!sub_56A8C(0xE2u, 4))
      {
        return 4294966293;
      }

      v22 = sub_56AD0(0xE2u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (!v22)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 189, "pTmpDict != __null", a1, a2, 0);
    }

LABEL_24:
    v27 = sub_66A18();
    v31 = sub_56B04(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v27, 226, v31);
    return 4294966293;
  }

  if (sub_56A8C(0xE2u, 4))
  {
    v18 = sub_56AD0(0xE2u);
    v19 = sub_66A18();
    v20 = sub_56B04(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v19, 226, v20, "AVE_DPB_MakeSnapshotEntry", 170, "pEntry != __null && pDict != __null", a1, a2, 0);
      v21 = sub_66A18();
      v30 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v21, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v19, 226, v20);
    }
  }

  return 4294966295;
}

uint64_t sub_4981C(CFDictionaryRef theDict, _DWORD *a2)
{
  v37 = 0;
  if (!theDict || !a2)
  {
    if (sub_56A8C(0xE2u, 4))
    {
      v14 = sub_56AD0(0xE2u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v15, 226, v16, "AVE_DPB_RetrieveSnapshot", 261, "pDict != __null && pSnapshot != __null", theDict, a2, 0);
        v17 = sub_66A18();
        v34 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v17, 226, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v15, 226, v16);
      }
    }

    return 4294966295;
  }

  sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_FrameNumberFromIDR, &v37);
  a2[340] = v37;
  sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_LongTermFrameNumberFromIDR, &v37);
  a2[341] = v37;
  sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_HowManyShortTermFromIDR, &v37);
  a2[342] = v37;
  sub_470FC(theDict, kVTEncodeFrameOptionKey_DPB_NumberOfReferenceFrames, &v37);
  v4 = v37;
  a2[343] = v37;
  if (v4 >= 17)
  {
    if (sub_56A8C(0xE2u, 4))
    {
      v18 = sub_56AD0(0xE2u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      v21 = a2[343];
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d\n", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", a2[343], 16);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", a2[343], 16);
    }

    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames);
  if (!Value)
  {
    if (sub_56A8C(0xE2u, 4))
    {
      v22 = sub_56AD0(0xE2u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d\n", v23, 226, v24, "AVE_DPB_RetrieveSnapshot", 278, "pTmpArray != __null", theDict, a2, 0);
        v25 = sub_66A18();
        v35 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v25, 226, v35);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v23, 226, v24);
      }
    }

    return 4294966288;
  }

  v6 = Value;
  Count = CFArrayGetCount(Value);
  v8 = Count;
  if (Count > 17)
  {
    if (sub_56A8C(0xE2u, 4))
    {
      v26 = sub_56AD0(0xE2u);
      v27 = sub_66A18();
      v28 = sub_56B04(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d\n", v27, 226, v28, "AVE_DPB_RetrieveSnapshot", 284, "num <= (((16) > (16) ? (16) : (16)) + 1)", v8, 17);
        v27 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d", v27);
    }

    return 4294966296;
  }

  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  for (i = a2; ; i += 20)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    v13 = sub_48D54(ValueAtIndex, i);
    if (v13)
    {
      break;
    }

    if (v10 == ++v9)
    {
      return v13;
    }
  }

  if (sub_56A8C(0xE2u, 4))
  {
    v29 = sub_56AD0(0xE2u);
    v30 = sub_66A18();
    v31 = sub_56B04(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d\n", v30, 226, v31, "AVE_DPB_RetrieveSnapshot", 293, "ret == 0", theDict, a2, ValueAtIndex, v9, v13);
      v32 = sub_66A18();
      v36 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v32, 226, v36, "AVE_DPB_RetrieveSnapshot");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v30, 226, v31, "AVE_DPB_RetrieveSnapshot");
    }
  }

  return v13;
}

uint64_t sub_49DC0(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    sub_4671C(kVTEncodeFrameOptionKey_DPB_FrameNumberFromIDR, a1[340], a2);
    sub_4671C(kVTEncodeFrameOptionKey_DPB_LongTermFrameNumberFromIDR, a1[341], a2);
    sub_4671C(kVTEncodeFrameOptionKey_DPB_HowManyShortTermFromIDR, a1[342], a2);
    sub_4671C(kVTEncodeFrameOptionKey_DPB_NumberOfReferenceFrames, a1[343], a2);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      if (a1[343] < 0)
      {
        v10 = 0;
LABEL_19:
        CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames, v5);
        CFRelease(v5);
        return v10;
      }

      v6 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = a1;
        while (1)
        {
          v10 = sub_4929C(v9, v7);
          CFArrayAppendValue(v5, v7);
          CFRelease(v7);
          if (v8 >= a1[343])
          {
            goto LABEL_19;
          }

          ++v8;
          v7 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v9 += 20;
          if (!v7)
          {
            goto LABEL_21;
          }
        }
      }

      LODWORD(v8) = 0;
      LODWORD(v10) = 0;
      v9 = a1;
LABEL_21:
      if (sub_56A8C(0xE2u, 4))
      {
        v19 = sub_56AD0(0xE2u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d\n", v20, 226, v21, "AVE_DPB_MakeSnapshot", 339, "pTmpDict != __null", a1, a2, v9, v8, v10);
          v22 = sub_66A18();
          v26 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v22, 226, v26, "AVE_DPB_MakeSnapshot");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v20, 226, v21, "AVE_DPB_MakeSnapshot");
        }
      }

      CFRelease(v5);
    }

    else if (sub_56A8C(0xE2u, 4))
    {
      v15 = sub_56AD0(0xE2u);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d\n", v16, 226, v17, "AVE_DPB_MakeSnapshot", 329, "pTmpArray != __null", a1, a2, 0);
        v18 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v18, 226, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v16, 226, v17);
      }
    }

    return 4294966293;
  }

  if (sub_56A8C(0xE2u, 4))
  {
    v11 = sub_56AD0(0xE2u);
    v12 = sub_66A18();
    v13 = sub_56B04(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v12, 226, v13, "AVE_DPB_MakeSnapshot", 316, "pDict != __null && pSnapshot != __null", a2, a1, 0);
      v14 = sub_66A18();
      v24 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v14, 226, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
    }
  }

  return 4294966295;
}

uint64_t sub_4A200(const char *a1, const char *a2, char *a3, int a4)
{
  if (!a2 || !a3 || a4 <= 0)
  {
    if (sub_56A8C(0x2Cu, 4))
    {
      v20 = sub_56AD0(0x2Cu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", v21, 44, v22, "AVE_DW_GetStr", 63, "pKey != __null && pVal != __null && num > 0", a1, a2, a3, a4);
        v23 = sub_66A18();
        v31 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v23, 44, v31, "AVE_DW_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v21, 44, v22, "AVE_DW_GetStr");
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "com.apple.coremedia";
  }

  v9 = CFStringCreateWithCString(0, v8, 0);
  v10 = CFStringCreateWithCString(0, a2, 0);
  v11 = v10;
  if (!v9 || !v10)
  {
    v18 = 4294966293;
    if (!v9)
    {
      if (!v10)
      {
        return v18;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v12 = sub_477B0(v9, v10, a3, a4);
  if (v12)
  {
    v18 = v12;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *cStr = 0u;
    v36 = 0u;
    sub_63330(cStr, 128, "AVEVideoEncoder%s", v13, v14, v15, v16, v17, a2 + 3);
    CFRelease(v11);
    v11 = CFStringCreateWithCString(0, cStr, 0);
    if (!v11)
    {
      goto LABEL_31;
    }

    v19 = sub_477B0(v9, v11, a3, a4);
    if (v19)
    {
      v18 = v19;
      goto LABEL_31;
    }

    if (sub_56A8C(0x2Cu, 6))
    {
      v27 = sub_56AD0(0x2Cu);
      v28 = sub_66A18();
      v29 = sub_56B04(6);
      if (v27)
      {
        printf("%lld %d AVE %s: defaults write %s = %s\n", v28, 44, v29, cStr, a3);
        v28 = sub_66A18();
        v34 = a3;
        v33 = sub_56B04(6);
      }

      else
      {
        v34 = a3;
        v33 = v29;
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v28, 44, v33, cStr, v34);
    }
  }

  else if (sub_56A8C(0x2Cu, 6))
  {
    v18 = sub_56AD0(0x2Cu);
    v24 = sub_66A18();
    v25 = sub_56B04(6);
    if (!v18)
    {
      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v24, 44, v25, a2, a3);
      goto LABEL_31;
    }

    printf("%lld %d AVE %s: defaults write %s = %s\n", v24, 44, v25, a2, a3);
    v26 = sub_66A18();
    v32 = sub_56B04(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %s", v26, 44, v32, a2, a3);
  }

  v18 = 0;
LABEL_31:
  CFRelease(v9);
  if (v11)
  {
LABEL_32:
    CFRelease(v11);
  }

  return v18;
}

uint64_t sub_4A584(const char *a1, const char *a2, unsigned __int8 *a3)
{
  if (!a2 || !a3)
  {
    if (sub_56A8C(0x2Cu, 4))
    {
      v18 = sub_56AD0(0x2Cu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetBool", 134, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_66A18();
        v30 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_47970(v7, v8, a3);
  if (!v10)
  {
    if (sub_56A8C(0x2Cu, 6))
    {
      v22 = sub_56AD0(0x2Cu);
      v23 = sub_66A18();
      v24 = sub_56B04(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v23, 44, v24, a2, *a3);
        v23 = sub_66A18();
        v24 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_63330(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_47970(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_56A8C(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_56AD0(0x2Cu);
  v25 = sub_66A18();
  v26 = sub_56B04(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v25, 44, v26, cStr, *a3);
    v27 = sub_66A18();
    v28 = sub_56B04(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_4A8FC(const char *a1, const char *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    if (sub_56A8C(0x2Cu, 4))
    {
      v18 = sub_56AD0(0x2Cu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetUInt32", 276, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_66A18();
        v30 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_47BC4(v7, v8, a3);
  if (!v10)
  {
    if (sub_56A8C(0x2Cu, 6))
    {
      v22 = sub_56AD0(0x2Cu);
      v23 = sub_66A18();
      v24 = sub_56B04(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v23, 44, v24, a2, *a3);
        v23 = sub_66A18();
        v24 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_63330(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_47BC4(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_56A8C(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_56AD0(0x2Cu);
  v25 = sub_66A18();
  v26 = sub_56B04(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v25, 44, v26, cStr, *a3);
    v27 = sub_66A18();
    v28 = sub_56B04(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_4AC74(const char *a1, const char *a2, uintmax_t *a3)
{
  if (!a2 || !a3)
  {
    if (sub_56A8C(0x2Cu, 4))
    {
      v18 = sub_56AD0(0x2Cu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetUInt64", 348, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_66A18();
        v30 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_47DD0(v7, v8, a3);
  if (!v10)
  {
    if (sub_56A8C(0x2Cu, 6))
    {
      v22 = sub_56AD0(0x2Cu);
      v23 = sub_66A18();
      v24 = sub_56B04(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v23, 44, v24, a2, *a3);
        v23 = sub_66A18();
        v24 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_63330(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_47DD0(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_56A8C(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_56AD0(0x2Cu);
  v25 = sub_66A18();
  v26 = sub_56B04(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v25, 44, v26, cStr, *a3);
    v27 = sub_66A18();
    v28 = sub_56B04(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_4AFEC(const char *a1, const char *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    if (sub_56A8C(0x2Cu, 4))
    {
      v18 = sub_56AD0(0x2Cu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetInt32", 419, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_66A18();
        v30 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_47FDC(v7, v8, a3);
  if (!v10)
  {
    if (sub_56A8C(0x2Cu, 6))
    {
      v22 = sub_56AD0(0x2Cu);
      v23 = sub_66A18();
      v24 = sub_56B04(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v23, 44, v24, a2, *a3);
        v23 = sub_66A18();
        v24 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_63330(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_47FDC(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_56A8C(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_56AD0(0x2Cu);
  v25 = sub_66A18();
  v26 = sub_56B04(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v25, 44, v26, cStr, *a3);
    v27 = sub_66A18();
    v28 = sub_56B04(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_4B364(const char *a1, const char *a2, uintmax_t *a3)
{
  if (!a2 || !a3)
  {
    if (sub_56A8C(0x2Cu, 4))
    {
      v18 = sub_56AD0(0x2Cu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetInt64", 491, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_66A18();
        v30 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_481E8(v7, v8, a3);
  if (!v10)
  {
    if (sub_56A8C(0x2Cu, 6))
    {
      v22 = sub_56AD0(0x2Cu);
      v23 = sub_66A18();
      v24 = sub_56B04(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %lld\n", v23, 44, v24, a2, *a3);
        v23 = sub_66A18();
        v24 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *cStr = 0u;
  v32 = 0u;
  sub_63330(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_481E8(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_56A8C(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_56AD0(0x2Cu);
  v25 = sub_66A18();
  v26 = sub_56B04(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %lld\n", v25, 44, v26, cStr, *a3);
    v27 = sub_66A18();
    v28 = sub_56B04(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_4B6DC(const char *a1, const char *a2, double *a3)
{
  if (!a2 || !a3)
  {
    if (sub_56A8C(0x2Cu, 4))
    {
      v18 = sub_56AD0(0x2Cu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v19, 44, v20, "AVE_DW_GetDouble", 562, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = sub_66A18();
        v32 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v19, 44, v20);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v16;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_483F4(v7, v8, a3);
  if (!v10)
  {
    if (sub_56A8C(0x2Cu, 6))
    {
      v22 = sub_56AD0(0x2Cu);
      v23 = sub_66A18();
      v24 = sub_56B04(6);
      v25 = *a3;
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %lf\n", v23, 44, v24, a2, *a3);
        v23 = sub_66A18();
        v24 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = v10;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *cStr = 0u;
  v34 = 0u;
  sub_63330(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = sub_483F4(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!sub_56A8C(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = sub_56AD0(0x2Cu);
  v26 = sub_66A18();
  v27 = sub_56B04(6);
  v28 = *a3;
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %lf\n", v26, 44, v27, cStr, *a3);
    v29 = sub_66A18();
    v30 = sub_56B04(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v29, 44, v30, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v26, 44, v27, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v16;
}

uint64_t sub_4BA5C(void *a1, const void *a2, const void *a3)
{
  if (sub_56A8C(0x13u, 8))
  {
    v6 = sub_56AD0(0x13u);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", v7, 19, v8, "AVE_VCP", "ScaleRefFrames", a1, *a1, a2, a3);
      v7 = sub_66A18();
      v8 = sub_56B04(8);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v7, 19, v8);
  }

  v10 = *a1;
  kdebug_trace();
  v11 = a1[6];
  if (v11 && (v12 = a1[4]) != 0)
  {
    v13 = v11(v12, a2, a3);
    if (sub_56A8C(0x13u, 8))
    {
      v14 = sub_56AD0(0x13u);
      v15 = sub_66A18();
      v16 = sub_56B04(8);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d\n", v15, 19, v16, "AVE_VCP", "ScaleRefFrames", 243, a1, *a1, a1[4], a2, a3, v13);
        v15 = sub_66A18();
        v16 = sub_56B04(8);
        v17 = *a1;
        v30 = a1[4];
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d", v15, 19, v16, "AVE_VCP", "ScaleRefFrames", 243);
    }

    if (v13)
    {
      if (sub_56A8C(0x13u, 5))
      {
        v18 = sub_56AD0(0x13u);
        v19 = sub_66A18();
        v20 = sub_56B04(5);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d\n", v19, 19, v20, "AVE_VCP", "ScaleRefFrames", 249, a1, *a1, a1[4], a2, a3, v13);
          v21 = sub_66A18();
          v22 = sub_56B04(5);
          v31 = a1[4];
          v29 = *a1;
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v21, 19, v22, "AVE_VCP", "ScaleRefFrames", 249);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v19, 19, v20, "AVE_VCP", "ScaleRefFrames", 249);
        }
      }

      v13 = 4294966296;
    }
  }

  else
  {
    v13 = 4294966294;
  }

  v23 = *a1;
  kdebug_trace();
  if (sub_56A8C(0x13u, 8))
  {
    v24 = sub_56AD0(0x13u);
    v25 = sub_66A18();
    v26 = sub_56B04(8);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v25, 19, v26, "AVE_VCP", "ScaleRefFrames", a1, *a1, a2, a3, v13);
      v25 = sub_66A18();
      v26 = sub_56B04(8);
      v27 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v25, 19, v26, "AVE_VCP");
  }

  return v13;
}

uint64_t sub_4BEBC(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (sub_56A8C(0x13u, 8))
  {
    v8 = sub_56AD0(0x13u);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d\n", v9, 19, v10, "AVE_VCP", "ChromaFilter", a1, *a1, a2, a3, a4);
      v9 = sub_66A18();
      v10 = sub_56B04(8);
      v11 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d", v9, 19, v10, "AVE_VCP");
  }

  v12 = *a1;
  kdebug_trace();
  v13 = a1[7];
  if (v13 && (v14 = a1[4]) != 0)
  {
    v15 = v13(v14, a2, a3, a4);
    if (sub_56A8C(0x13u, 8))
    {
      v16 = sub_56AD0(0x13u);
      v17 = sub_66A18();
      v18 = sub_56B04(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d\n", v17, 19, v18, "AVE_VCP", "ChromaFilter", 287, a1, *a1, a1[4], a2, a3, a4, v15);
        v17 = sub_66A18();
        v18 = sub_56B04(8);
        v32 = *a1;
        v34 = a1[4];
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d", v17, 19, v18, "AVE_VCP", "ChromaFilter", 287);
    }

    if (v15)
    {
      if (sub_56A8C(0x13u, 5))
      {
        v19 = sub_56AD0(0x13u);
        v20 = sub_66A18();
        v21 = sub_56B04(5);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d\n", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293, a1, *a1, a1[4], a2, a3, a4, v15);
          v22 = sub_66A18();
          v23 = sub_56B04(5);
          v33 = *a1;
          v35 = a1[4];
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v22, 19, v23, "AVE_VCP", "ChromaFilter", 293);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293);
        }
      }

      v15 = 4294966296;
    }
  }

  else
  {
    v15 = 4294966294;
  }

  v24 = *a1;
  kdebug_trace();
  if (sub_56A8C(0x13u, 8))
  {
    v25 = sub_56AD0(0x13u);
    v26 = sub_66A18();
    v27 = sub_56B04(8);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d\n", v26, 19, v27, "AVE_VCP", "ChromaFilter", a1, *a1, a2, a3, a4);
      v28 = sub_66A18();
      v29 = sub_56B04(8);
      v30 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v28, 19, v29, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v26, 19, v27, "AVE_VCP");
    }
  }

  return v15;
}

uint64_t sub_4C35C(void *a1, const void *a2, uint64_t a3, void *a4)
{
  if (sub_56A8C(0x13u, 8))
  {
    v8 = sub_56AD0(0x13u);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p\n", v9, 19, v10, "AVE_VCP", "CalcChecksum", a1, *a1, a2, a3, a4);
      v9 = sub_66A18();
      v10 = sub_56B04(8);
      v11 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p", v9, 19, v10, "AVE_VCP");
  }

  v12 = *a1;
  kdebug_trace();
  if (a1[8] && a1[4])
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v14 = Mutable;
      v15 = (a1[8])(a1[4], a2, a3, 1, Mutable);
      if (sub_56A8C(0x13u, 8))
      {
        v16 = sub_56AD0(0x13u);
        v17 = sub_66A18();
        v18 = sub_56B04(8);
        if (v16)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d\n", v17, 19, v18, "AVE_VCP", "CalcChecksum", 338, a1, *a1, a1[4], a2, a3, v14, v15);
          v17 = sub_66A18();
          v18 = sub_56B04(8);
          v33 = *a1;
          v35 = a1[4];
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d", v17, 19, v18, "AVE_VCP", "CalcChecksum", 338, a1);
      }

      if (v15)
      {
        if (sub_56A8C(0x13u, 5))
        {
          v22 = sub_56AD0(0x13u);
          v23 = sub_66A18();
          v24 = sub_56B04(5);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d\n", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, a1, *a1, a1[4], a2, a3, v14, v15);
            v25 = sub_66A18();
            v26 = sub_56B04(5);
            v34 = *a1;
            v36 = a1[4];
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v25, 19, v26, "AVE_VCP", "CalcChecksum", 345, a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, a1);
          }
        }

        v15 = 4294966296;
      }

      else
      {
        CFDictionaryApplyFunction(v14, sub_4C92C, a4);
      }

      CFRelease(v14);
    }

    else
    {
      if (sub_56A8C(0x13u, 4))
      {
        v19 = sub_56AD0(0x13u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v20, 19, v21, "AVE_VCP", "CalcChecksum", 334, "pDict != __null");
          v20 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v20);
      }

      v15 = 4294966293;
    }
  }

  else
  {
    v15 = 4294966294;
  }

  v27 = *a1;
  kdebug_trace();
  if (sub_56A8C(0x13u, 8))
  {
    v28 = sub_56AD0(0x13u);
    v29 = sub_66A18();
    v30 = sub_56B04(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d\n", v29, 19, v30, "AVE_VCP", "CalcChecksum", a1, *a1, a2, a3, a4, v15);
      v29 = sub_66A18();
      v30 = sub_56B04(8);
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d", v29, 19, v30, "AVE_VCP", "CalcChecksum");
  }

  return v15;
}

char *sub_4C940(int a1)
{
  result = sub_202BC(a1);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t sub_4C96C(_DWORD *a1)
{
  v7 = 0;
  v6 = 0;
  if (!sub_4A584(0, "AVE_EnableLossless", &v7))
  {
    v2 = 10;
    if (v7)
    {
      v2 = 8;
    }

    *&a1[v2] |= 0x200uLL;
  }

  if (!sub_4AFEC(0, "AVE_FrameQP", &v6))
  {
    v3 = v6;
    a1[201] = v6;
    a1[202] = v3;
    a1[203] = v3;
  }

  if (!sub_4AFEC(0, "AVE_MaximizePowerEfficiency", &v6))
  {
    if (v6)
    {
      a1[16] |= 2u;
    }

    else
    {
      a1[17] |= 2u;
    }
  }

  if (!sub_4AFEC(0, "AVE_UseCAVLCBits", &v6))
  {
    if (v6)
    {
      a1[16] |= 0x100u;
    }

    else
    {
      a1[17] |= 0x100u;
    }
  }

  if (!sub_4AFEC(0, "AVE_EnableMCTF", &v6))
  {
    v4 = 8;
    if (!v6)
    {
      v4 = 10;
    }

    *&a1[v4] |= 0x20uLL;
  }

  if (!sub_4AFEC(0, "AVE_Bframes", &v6))
  {
    a1[221] = v6;
  }

  if (!sub_4AFEC(0, "AVE_BaseFrameRate", &v6))
  {
    *a1 = v6;
  }

  if (!sub_4AFEC(0, "AVE_InitialQPI", &v6))
  {
    a1[201] = v6;
  }

  if (!sub_4AFEC(0, "AVE_InitialQPP", &v6))
  {
    a1[202] = v6;
  }

  if (!sub_4AFEC(0, "AVE_InitialQPB", &v6))
  {
    a1[203] = v6;
  }

  if (!sub_4AFEC(0, "AVE_SoftMinQP", &v6))
  {
    a1[196] = v6;
  }

  if (!sub_4AFEC(0, "AVE_SoftMaxQP", &v6))
  {
    a1[197] = v6;
  }

  if (!sub_4AFEC(0, "AVE_HardMinQP", &v6))
  {
    a1[240] = v6;
  }

  result = sub_4AFEC(0, "AVE_HardMaxQP", &v6);
  if (!result)
  {
    a1[241] = v6;
  }

  return result;
}

uint64_t sub_4CBCC(void *a1)
{
  v3 = 0;
  if (!sub_4AC74(0, "AVE_CfgOn", &v3))
  {
    a1[2] = v3;
  }

  if (!sub_4AC74(0, "AVE_CfgOff", &v3))
  {
    a1[3] = v3;
  }

  if (!sub_4AC74(0, "AVE_SwFeatureOn", &v3))
  {
    a1[4] = v3;
  }

  if (!sub_4AC74(0, "AVE_SwFeatureOff", &v3))
  {
    a1[5] = v3;
  }

  if (!sub_4AC74(0, "AVE_HwFeatureOn", &v3))
  {
    a1[6] = v3;
  }

  result = sub_4AC74(0, "AVE_HwFeatureOff", &v3);
  if (!result)
  {
    a1[7] = v3;
  }

  return result;
}

uint64_t sub_4CCB8(int *a1)
{
  v9 = 0;
  if (!sub_4AFEC(0, "AVE_DPM_Mode", &v9))
  {
    *a1 = v9 | 0x100;
  }

  if (!sub_4AFEC(0, "AVE_DPM_PL_IOPMin", &v9))
  {
    v2 = v9;
    if (v9 <= 1)
    {
      v2 = 1;
    }

    if (v2 >= 4)
    {
      v2 = 4;
    }

    a1[1] |= 1u;
    a1[2] = v2;
  }

  if (!sub_4AFEC(0, "AVE_DPM_PL_IOPMax", &v9))
  {
    v3 = v9;
    if (v9 <= 1)
    {
      v3 = 1;
    }

    if (v3 >= 4)
    {
      v3 = 4;
    }

    a1[3] = v3;
    a1[1] |= 0x10000u;
  }

  if (!sub_4AFEC(0, "AVE_DPM_PL_DCSMin", &v9))
  {
    v4 = v9;
    if (v9 <= 1)
    {
      v4 = 1;
    }

    if (v4 >= 4)
    {
      v4 = 4;
    }

    a1[4] = v4;
    a1[1] |= 2u;
  }

  if (!sub_4AFEC(0, "AVE_DPM_PL_DCSMax", &v9))
  {
    v5 = v9;
    if (v9 <= 1)
    {
      v5 = 1;
    }

    if (v5 >= 4)
    {
      v5 = 4;
    }

    a1[5] = v5;
    a1[1] |= 0x20000u;
  }

  if (!sub_4AFEC(0, "AVE_DPM_PL_FABMin", &v9))
  {
    v6 = v9;
    if (v9 <= 1)
    {
      v6 = 1;
    }

    if (v6 >= 4)
    {
      v6 = 4;
    }

    a1[6] = v6;
    a1[1] |= 4u;
  }

  result = sub_4AFEC(0, "AVE_DPM_PL_FABMax", &v9);
  if (!result)
  {
    v8 = v9;
    if (v9 <= 1)
    {
      v8 = 1;
    }

    if (v8 >= 4)
    {
      v8 = 4;
    }

    a1[7] = v8;
    a1[1] |= 0x40000u;
  }

  return result;
}

uint64_t sub_4CE84(int *a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  v4 = 0;
  if (!sub_4AFEC(0, "AVE_DLB_AllocMode", &v4))
  {
    a1[1] = v4;
  }

  if (!sub_4AFEC(0, "AVE_DLB_Type", &v4))
  {
    a1[2] = v4;
    *a1 = 1;
  }

  if (!sub_4AFEC(0, "AVE_DLB_SVESchedMode", &v4))
  {
    a1[3] = v4;
    *a1 = 1;
  }

  if (!sub_4AFEC(0, "AVE_DLB_SVENum", &v4))
  {
    a1[4] = v4;
    *a1 = 1;
  }

  if (!sub_4A200(0, "AVE_DLB_SVEMap", v5, 128))
  {
    sub_66D98(v5, a1);
  }

  v2 = sub_4A200(0, "AVE_DLB_Cfg", v5, 128);
  if (!v2)
  {
    sub_66D98(v5, a1);
  }

  return v2;
}

uint64_t sub_4CFE0(_DWORD *a1)
{
  v3 = 0;
  if (!sub_4A8FC(0, "AVE_PerfFeatureOn", &v3 + 1))
  {
    a1[16] = HIDWORD(v3);
  }

  if (!sub_4A8FC(0, "AVE_PerfFeatureOff", &v3 + 1))
  {
    a1[17] = HIDWORD(v3);
  }

  if (!sub_4AFEC(0, "AVE_InputQueueMaxCount", &v3))
  {
    a1[18] = v3;
  }

  if (!sub_4AFEC(0, "AVE_MaxFrameRate", &v3))
  {
    a1[19] = v3;
  }

  if (!sub_4AFEC(0, "AVE_Realtime", &v3))
  {
    a1[20] = v3;
  }

  sub_4CCB8(a1 + 21);
  return sub_4CE84(a1 + 29);
}

uint64_t sub_4D0BC(uint64_t a1)
{
  v4 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__src = 0u;
  v6 = 0u;
  if (!sub_4A8FC(0, "AVE_DumpFeature", &v4))
  {
    *(a1 + 412) = v4;
  }

  if (!sub_4A8FC(0, "AVE_DumpMode", &v4))
  {
    *(a1 + 416) = v4;
  }

  v2 = sub_4A200(0, "AVE_OutputPath", __src, 128);
  if (!v2)
  {
    strncpy((a1 + 420), __src, 0x7FuLL);
  }

  return v2;
}

uint64_t sub_4D19C(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__src = 0u;
  v7 = 0u;
  if (!sub_4AC74(0, "AVE_Verbose", &v5))
  {
    *(a1 + 8) = v5;
    *a1 |= 0x100u;
  }

  if (!sub_4AC74(0, "AVE_KernelVerbose", &v5))
  {
    *(a1 + 16) = v5;
    *a1 |= 0x200u;
  }

  if (!sub_4AC74(0, "AVE_FirmwareVerbose", &v5))
  {
    *(a1 + 24) = v5;
    *a1 |= 0x300u;
  }

  if (!sub_4AC74(0, "AVE_AlgVerbose", &v5))
  {
    *(a1 + 32) = v5;
    *a1 |= 0x400u;
  }

  if (!sub_4AFEC(0, "AVE_LogConsole", &v4))
  {
    *(a1 + 40) = v4;
  }

  v2 = sub_4A200(0, "AVE_LogPath", __src, 128);
  if (!v2)
  {
    strncpy((a1 + 44), __src, 0x7FuLL);
  }

  return v2;
}

uint64_t sub_4D310(uint64_t a1)
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (!sub_4AC74(0, "AVE_RCFeatureOn", &v4))
  {
    *(a1 + 768) = v4;
  }

  if (!sub_4AC74(0, "AVE_RCFeatureOff", &v4))
  {
    *(a1 + 776) = v4;
  }

  if (!sub_4AFEC(0, "AVE_RCMinQP", &v6))
  {
    *(a1 + 784) = v6;
  }

  if (!sub_4AFEC(0, "AVE_RCMaxQP", &v6))
  {
    *(a1 + 788) = v6;
  }

  if (!sub_4AFEC(0, "AVE_LookAheadFrameCount", &v6))
  {
    *(a1 + 792) = v6;
  }

  if (!sub_4AFEC(0, "AVE_RCMode", &v6))
  {
    *(a1 + 796) = v6;
  }

  if (!sub_4AFEC(0, "AVE_Bitrate", &v6))
  {
    *(a1 + 800) = v6;
  }

  if (!sub_4AFEC(0, "AVE_QPI", &v6))
  {
    *(a1 + 804) = v6;
  }

  if (!sub_4AFEC(0, "AVE_QPP", &v6))
  {
    *(a1 + 808) = v6;
  }

  if (!sub_4AFEC(0, "AVE_QPB", &v6))
  {
    *(a1 + 812) = v6;
  }

  if (!sub_4B6DC(0, "AVE_CRFScale", &v3))
  {
    *(a1 + 816) = v3;
  }

  if (!sub_4AFEC(0, "AVE_VBVMaxBitRate", &v6))
  {
    *(a1 + 824) = v6;
  }

  if (!sub_4B6DC(0, "AVE_VBVBufferSize", &v3))
  {
    *(a1 + 832) = v3;
  }

  if (!sub_4B6DC(0, "AVE_VBVInitialDelay", &v3))
  {
    *(a1 + 840) = v3;
  }

  if (!sub_4AFEC(0, "AVE_Parallel_Limit", &v6))
  {
    *(a1 + 848) = v6;
  }

  if (!sub_4B364(0, "AVE_Parallel_MinFrameCnt", &v5))
  {
    *(a1 + 856) = v5;
  }

  result = sub_4B364(0, "AVE_Parallel_MinDuration", &v5);
  if (!result)
  {
    *(a1 + 864) = v5;
  }

  return result;
}

uint64_t sub_4D564(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  if (!sub_4A8FC(0, "AVE_GOPFeatureOn", &v4 + 1))
  {
    *(a1 + 872) = HIDWORD(v4);
  }

  if (!sub_4A8FC(0, "AVE_GOPFeatureOff", &v4 + 1))
  {
    *(a1 + 876) = HIDWORD(v4);
  }

  if (!sub_4AFEC(0, "AVE_NumOfPFrame", &v4))
  {
    *(a1 + 880) = v4;
  }

  if (!sub_4AFEC(0, "AVE_NumOfBFrame", &v4))
  {
    *(a1 + 884) = v4;
  }

  if (!sub_4AFEC(0, "AVE_NumOfGOPLayer", &v4))
  {
    *(a1 + 888) = v4;
  }

  if (!sub_4AFEC(0, "AVE_MaxKeyFrameInterval", &v4))
  {
    *(a1 + 896) = v4;
  }

  if (!sub_4AFEC(0, "AVE_StrictKeyFrameInterval", &v4))
  {
    *(a1 + 900) = v4;
  }

  if (!sub_4B6DC(0, "AVE_MaxKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 904) = v3;
  }

  if (!sub_4B6DC(0, "AVE_StrictKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 912) = v3;
  }

  result = sub_4AFEC(0, "AVE_NumOfTemporalLayer", &v4);
  if (!result)
  {
    *(a1 + 892) = v4;
  }

  return result;
}

uint64_t sub_4D6D0(_DWORD *a1)
{
  v3 = 0;
  if (!sub_4A8FC(0, "AVE_RefFeatureOn", &v3 + 1))
  {
    a1[230] = HIDWORD(v3);
  }

  if (!sub_4A8FC(0, "AVE_RefFeatureOff", &v3 + 1))
  {
    a1[231] = HIDWORD(v3);
  }

  if (!sub_4AFEC(0, "AVE_RefNumOfPFrame", &v3))
  {
    a1[232] = v3;
  }

  if (!sub_4AFEC(0, "AVE_RefNumOfBFrame", &v3))
  {
    a1[233] = v3;
  }

  if (!sub_4AFEC(0, "AVE_RefGapOfPFrame", &v3))
  {
    a1[234] = v3;
  }

  if (!sub_4AFEC(0, "AVE_RefGapOfBFrameL0", &v3))
  {
    a1[235] = v3;
  }

  result = sub_4AFEC(0, "AVE_RefGapOfBFrameL1", &v3);
  if (!result)
  {
    a1[236] = v3;
  }

  return result;
}

uint64_t sub_4D7DC(_DWORD *a1)
{
  v3 = 0;
  if (!sub_4A8FC(0, "AVE_QPModFeatureOn", &v3 + 1))
  {
    a1[237] = HIDWORD(v3);
  }

  if (!sub_4A8FC(0, "AVE_QPModFeatureOff", &v3 + 1))
  {
    a1[238] = HIDWORD(v3);
  }

  if (!sub_4AFEC(0, "AVE_QPModLevel", &v3))
  {
    a1[239] = v3;
  }

  if (!sub_4AFEC(0, "AVE_BlkMinQP", &v3))
  {
    a1[240] = v3;
  }

  result = sub_4AFEC(0, "AVE_BlkMaxQP", &v3);
  if (!result)
  {
    a1[241] = v3;
  }

  return result;
}

uint64_t sub_4D8A8(uint64_t a1)
{
  v3 = 0;
  if (!sub_4A8FC(0, "AVE_LambdaModFeatureOn", &v3))
  {
    *(a1 + 968) = v3;
  }

  result = sub_4A8FC(0, "AVE_LambdaModFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 972) = v3;
  }

  return result;
}

uint64_t sub_4D914(uint64_t a1)
{
  v3 = 0;
  if (!sub_4A8FC(0, "AVE_ModeDecFeatureOn", &v3))
  {
    *(a1 + 976) = v3;
  }

  result = sub_4A8FC(0, "AVE_ModeDecFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 980) = v3;
  }

  return result;
}

uint64_t sub_4D980(uint64_t a1)
{
  v4 = 0;
  v3 = 0;
  if (!sub_4AC74(0, "AVE_AlgFeatureOn", &v3))
  {
    *(a1 + 728) = v3;
  }

  if (!sub_4AC74(0, "AVE_AlgFeatureOff", &v3))
  {
    *(a1 + 736) = v3;
  }

  if (!sub_4AFEC(0, "AVE_Profile", &v4))
  {
    *(a1 + 744) = v4;
  }

  if (!sub_4AFEC(0, "AVE_Level", &v4))
  {
    *(a1 + 748) = v4;
  }

  if (!sub_4AFEC(0, "AVE_Tier", &v4))
  {
    *(a1 + 752) = v4;
  }

  if (!sub_4AFEC(0, "AVE_ScalingMatrix", &v4))
  {
    *(a1 + 756) = v4;
  }

  if (!sub_4AFEC(0, "AVE_FrameRate", &v4))
  {
    *(a1 + 760) = v4;
  }

  sub_4D310(a1);
  sub_4D564(a1);
  sub_4D6D0(a1);
  sub_4D7DC(a1);
  sub_4D8A8(a1);
  sub_4D914(a1);
  if (!sub_4AC74(0, "AVE_SEIFeatureOn", &v3))
  {
    *(a1 + 984) = v3;
  }

  if (!sub_4AC74(0, "AVE_SEIFeatureOff", &v3))
  {
    *(a1 + 992) = v3;
  }

  if (!sub_4AC74(0, "AVE_VUIFeatureOn", &v3))
  {
    *(a1 + 1000) = v3;
  }

  result = sub_4AC74(0, "AVE_VUIFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 1008) = v3;
  }

  return result;
}

uint64_t sub_4DB40(_DWORD *a1)
{
  v3 = 0;
  if (!sub_4AFEC(0, "AVE_SliceNum", &v3))
  {
    a1[254] = v3;
  }

  if (!sub_4AFEC(0, "AVE_SearchRangeMode", &v3))
  {
    a1[255] = v3;
  }

  if (!sub_4AFEC(0, "AVE_ThroughputMode", &v3))
  {
    a1[256] = v3;
  }

  if (!sub_4AFEC(0, "AVE_MergeCandidateNum", &v3))
  {
    a1[257] = v3;
  }

  if (!sub_4AFEC(0, "AVE_DeblockMode", &v3))
  {
    a1[258] = v3;
  }

  if (!sub_4AFEC(0, "AVE_SAOMode", &v3))
  {
    a1[259] = v3;
  }

  result = sub_4AFEC(0, "AVE_EdgeReplication", &v3);
  if (!result)
  {
    a1[260] = v3;
  }

  return result;
}

uint64_t sub_4DC4C(uint64_t a1)
{
  v4 = 0;
  v3 = 0.0;
  memset(v5, 0, sizeof(v5));
  if (!sub_4AFEC(0, "AVE_MCTFStrengthLevel", &v4))
  {
    *(a1 + 1044) = v4;
  }

  if (!sub_4AFEC(0, "AVE_MCTFStrengthDelta", &v4))
  {
    *(a1 + 1048) = v4;
  }

  if (!sub_4AFEC(0, "AVE_MCTFTogglePeriod", &v4))
  {
    *(a1 + 1052) = v4;
  }

  if (!sub_4B6DC(0, "AVE_MCTFISPGainThreshold", &v3))
  {
    *(a1 + 1056) = v3;
  }

  if (!sub_4B6DC(0, "AVE_MCTFISPGain1RefThreshold", &v3))
  {
    *(a1 + 1072) = v3;
  }

  if (!sub_4B6DC(0, "AVE_MCTFISPGain2RefThreshold", &v3))
  {
    *(a1 + 1064) = v3;
  }

  if (!sub_4AFEC(0, "AVE_MCTFOnToOffPerfThreshold", &v4))
  {
    *(a1 + 1080) = v4;
  }

  if (!sub_4AFEC(0, "AVE_MCTFOffToOnPerfThreshold", &v4))
  {
    *(a1 + 1084) = v4;
  }

  if (!sub_4AFEC(0, "AVE_MCTFMaxNextRefNum", &v4))
  {
    *(a1 + 1088) = v4;
  }

  if (!sub_4AFEC(0, "AVE_MCTFRampUpFrameNum", &v4))
  {
    *(a1 + 1092) = v4;
  }

  result = sub_4A200(0, "AVE_MCTF_SMap", v5, 512);
  if (!result)
  {
    return sub_28334(v5, (a1 + 1096));
  }

  return result;
}

uint64_t sub_4DE54(uint64_t a1)
{
  v4 = 0;
  if (!sub_4AFEC(0, "AVE_DWMode", &v4))
  {
    *(a1 + 4) = v4;
  }

  if (!sub_4AFEC(0, "AVE_DefaultCfg", &v4))
  {
    *(a1 + 8) = v4;
  }

  sub_4CBCC(a1);
  sub_4CFE0(a1);
  sub_4D0BC(a1);
  sub_4D19C(a1 + 552);
  sub_4D980(a1);
  sub_4DB40(a1);
  sub_4DC4C(a1);
  if (!sub_4AFEC(0, "AVE_Usage", &v4))
  {
    *(a1 + 1580) = v4;
  }

  if (!sub_4AFEC(0, "AVE_PropertyMode", &v4))
  {
    *(a1 + 1584) = v4;
  }

  if (!sub_4AFEC(0, "AVE_TotalFrameCount", &v4))
  {
    *(a1 + 1588) = v4;
  }

  if (!sub_4AFEC(0, "AVE_CmdTimeOutMode", &v4))
  {
    *(a1 + 1592) = v4;
  }

  if (!sub_4AFEC(0, "AVE_SchedPolicy", &v4))
  {
    *(a1 + 1596) = v4;
  }

  if (!sub_4AFEC(0, "AVE_OutputBufNum", &v4))
  {
    *(a1 + 1600) = v4;
  }

  if (!sub_4AFEC(0, "AVE_OutputBufSize", &v4))
  {
    *(a1 + 1604) = v4;
  }

  if (!sub_4AFEC(0, "AVE_SNR", &v4))
  {
    *(a1 + 1608) = v4;
  }

  v2 = sub_4AFEC(0, "AVE_TimeStats_MaxCnt", &v4);
  if (!v2)
  {
    *(a1 + 1612) = v4;
  }

  sub_4C96C(a1);
  return v2;
}

uint64_t sub_4E028()
{
  if (sub_56A8C(0x2Cu, 7))
  {
    v0 = sub_56AD0(0x2Cu);
    v1 = sub_66A18();
    v2 = sub_56B04(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", v1, 44, v2, "AVE_DW_Init");
      v3 = sub_66A18();
      v10 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Init");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", v1, 44, v2, "AVE_DW_Init");
    }
  }

  sub_66ADC(dword_C41A8);
  v4 = sub_4DE54(dword_C41A8);
  if (sub_56A8C(0x2Cu, 7))
  {
    v5 = sub_56AD0(0x2Cu);
    v6 = sub_66A18();
    v7 = sub_56B04(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Init", v4);
      v8 = sub_66A18();
      v11 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Init", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Init", v4);
    }
  }

  return v4;
}

uint64_t sub_4E1A8()
{
  if (sub_56A8C(0x2Cu, 7))
  {
    v0 = sub_56AD0(0x2Cu);
    v1 = sub_66A18();
    v2 = sub_56B04(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", v1, 44, v2, "AVE_DW_Uninit");
      v3 = sub_66A18();
      v10 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Uninit");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", v1, 44, v2, "AVE_DW_Uninit");
    }
  }

  v4 = sub_66BFC();
  if (sub_56A8C(0x2Cu, 7))
  {
    v5 = sub_56AD0(0x2Cu);
    v6 = sub_66A18();
    v7 = sub_56B04(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Uninit", v4);
      v8 = sub_66A18();
      v11 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Uninit", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Uninit", v4);
    }
  }

  return v4;
}

uint64_t sub_4E31C(__CVBuffer *a1, int *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int *a8, int a9)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  v16 = sub_4C940(a3);
  v17 = v16;
  v52 = v16;
  if (a4 == 2 && v16 < 12 || !a8[1] && !a8[3])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_67;
  }

  if (a9 != -1)
  {
    v18 = a9 + 3;
    goto LABEL_19;
  }

  if (!a5)
  {
    v18 = 2;
    goto LABEL_19;
  }

  v18 = 1;
  if (a6 != 2 || a7)
  {
LABEL_19:
    CVPixelBufferGetExtendedPixels(a1, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
    v28 = a2[6];
    if (v28)
    {
      v20 = 0;
      v29 = 1;
      if (v28 != 1 || !extraRowsOnBottom)
      {
LABEL_26:
        if (v17 < 12)
        {
          if (v17 < 4)
          {
            v21 = 0;
          }

          else
          {
            if (a8[1] == 8u >> (a2[4] >> 1))
            {
              v39 = 3328;
            }

            else
            {
              v39 = 0;
            }

            if (a8[3] == 8u >> (a2[5] >> 1))
            {
              v21 = v39 | 0x50000;
            }

            else
            {
              v21 = v39;
            }
          }
        }

        else
        {
          v32 = a8[1];
          v33 = a2[4] >> 1;
          if (v32 > (0xEu >> v33) || v32 < (2u >> v33))
          {
            v35 = 0;
          }

          else
          {
            v35 = 3328;
          }

          v36 = a8[3];
          v37 = a2[5] >> 1;
          if (v36 > (0xEu >> v37) || v36 < (2u >> v37))
          {
            v21 = v35;
          }

          else
          {
            v21 = v35 | 0x50000;
          }
        }

        v40 = 0;
        if (v18 <= 4)
        {
          if ((v18 - 1) >= 2)
          {
            if (v18)
            {
              if (v18 == 4)
              {
                v40 = v21 & 0xFF00;
              }

              goto LABEL_66;
            }

            if ((v21 & 0x70000) == 0)
            {
              if (v29)
              {
                v41 = 0;
              }

              else
              {
                v41 = v20;
              }

              v40 = v21 & 0xFF00 | v41;
              goto LABEL_66;
            }
          }

          goto LABEL_58;
        }

        switch(v18)
        {
          case 5:
            v40 = v21 & 0x70000;
            break;
          case 6:
            v40 = v20 | 2;
            if (v29)
            {
              v40 = 0;
            }

            break;
          case 7:
LABEL_58:
            v40 = v21 & 0x7FF00;
            break;
        }

LABEL_66:
        v19 = v40 | ((v40 & 0x10100) != 0);
        goto LABEL_67;
      }
    }

    else if (!extraRowsOnBottom)
    {
      v20 = 0;
      v29 = 1;
      goto LABEL_26;
    }

    v30 = a8[3];
    v31 = v30 != 0;
    v29 = v30 == 0;
    v20 = v31 << 16;
    goto LABEL_26;
  }

  v22 = a4;
  v23 = a6;
  v24 = a5;
  v25 = CVBufferCopyAttachment(a1, kCVPixelBufferExtendedPixelsFilledKey, 0);
  if (!v25)
  {
LABEL_17:
    v18 = 0;
    a5 = v24;
    a6 = v23;
    a4 = v22;
    a7 = 0;
    goto LABEL_19;
  }

  v26 = v25;
  if (CFEqual(v25, kCFBooleanTrue))
  {
    v27 = v17 < 7;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    CFRelease(v26);
    goto LABEL_17;
  }

  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 16;
  a5 = v24;
  a6 = v23;
  a4 = v22;
  a7 = 0;
LABEL_67:
  if (sub_56A8C(0x11u, 7))
  {
    v51 = a4;
    v42 = a5;
    v43 = sub_56AD0(0x11u);
    v50 = sub_66A18();
    v44 = sub_56B04(7);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n\n", v50, 17, v44, "AVE_EdgeReplication_DetermineMode", 240, v52, v51, v42, a6, a7, a9, *a8, a8[1], a8[2], a8[3], LODWORD(extraColumnsOnRight[0]), extraRowsOnBottom, v18, v20, v21, v19);
      v50 = sub_66A18();
      v44 = sub_56B04(7);
      v48 = a8[2];
      v49 = a8[3];
      v46 = *a8;
      v47 = a8[1];
    }

    syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", v50, 17, v44, "AVE_EdgeReplication_DetermineMode", 240, v52, v51, v42);
  }

  return v19;
}

uint64_t sub_4E7B0(__CVBuffer *a1, unsigned int a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v5 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  CVPixelBufferGetHeightOfPlane(a1, a2);
  CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966296;
}

uint64_t sub_4E848(__CVBuffer *a1, unsigned int a2, int a3, uint64_t a4)
{
  v17 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, 0, 0, &extraRowsOnTop, &v17);
  if (a2)
  {
    if (*(a4 + 12))
    {
      v11 = *(a4 + 20) >> 1;
      v17 >>= v11;
      extraRowsOnTop >>= v11;
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = &BaseAddressOfPlane[(extraRowsOnTop + HeightOfPlane - 1) * BytesPerRowOfPlane];
  v13 = &v12[BytesPerRowOfPlane];
  if (a3)
  {
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        memcpy(v13, v12, BytesPerRowOfPlane);
        v13 += BytesPerRowOfPlane;
        v12 -= BytesPerRowOfPlane;
      }
    }
  }

  else if (v17)
  {
    for (j = 0; j < v17; ++j)
    {
      memcpy(v13, v12, BytesPerRowOfPlane);
      v13 += BytesPerRowOfPlane;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t sub_4E9B8(__CVBuffer *a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  if ((a2 & 0x50000) == 0x10000 && *(a3 + 8) >= 1)
  {
    v6 = 0;
    v7 = HIWORD(a2);
    do
    {
      sub_4E848(a1, v6++, v7 & 8, a3);
    }

    while (v6 < *(a3 + 8));
  }

  if ((v4 & 0x500) == 0x100 && *(a3 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      sub_4E7B0(a1, v8++);
    }

    while (v8 < *(a3 + 8));
  }

  return 0;
}

uint64_t sub_4EB10(_DWORD *a1, int a2, int a3, uint64_t a4, char a5, int a6, int a7, uint64_t a8)
{
  v8 = a2;
  LODWORD(v10) = 2 * a2 / 3;
  v11 = 2 * a2 % 3;
  if ((a5 & 1) == 0)
  {
    if (a3 < 1)
    {
      return 0;
    }

    v27 = 0;
    v28 = a7 * a3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v29 = a6;
    v30 = a1;
    v31 = a3;
    while (1)
    {
      v32 = a8 + v27 * a7;
      if (v8 < 2)
      {
        v42 = 0;
        v35 = 0;
        v34 = 0;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        LODWORD(v35) = 0;
        do
        {
          v36 = v30[v33];
          v37 = v36 & 0x3FF;
          if (v33)
          {
            v41 = v34 + v28;
            *(v32 + 2 * v41) = v37;
            v39 = 2;
            v40 = 1;
            v38 = v35;
          }

          else
          {
            *(v32 + 2 * v35) = v37;
            v38 = v34 + v28;
            v39 = 1;
            v40 = 2;
            v41 = v35;
          }

          *(v32 + 2 * v38) = (v36 >> 10) & 0x3FF;
          *(v32 + 2 + 2 * v41) = (v36 >> 20) & 0x3FF;
          v35 = (v35 + v40);
          v34 += v39;
          ++v33;
        }

        while (v10 != v33);
        v42 = v10;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      v43 = *(&a1[v42] + v27 * v29);
      v44 = v43 & 0x3FF;
      if (v42)
      {
        *(v32 + 2 * (v34 + v28)) = v44;
        if (v11 == 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *(v32 + 2 * v35) = v44;
        if (v11 == 2)
        {
          v35 = v34 + v28;
LABEL_35:
          *(v32 + 2 * v35) = (v43 >> 10) & 0x3FF;
        }
      }

LABEL_36:
      ++v27;
      v30 = (v30 + v29);
      if (v27 == v31)
      {
        return 0;
      }
    }
  }

  if (a3 >= 1)
  {
    v12 = 0;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    v47 = 2 * (2 * a2 % 3 - 1);
    v14 = a6;
    v15 = a7;
    v16 = (a8 + 4);
    v17 = a1;
    v18 = a3;
    do
    {
      if (v8 < 2)
      {
        v23 = 0;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = v13;
        v20 = v17;
        v21 = v16;
        do
        {
          v22 = *v20++;
          *(v21 - 2) = v22 & 0x3FF;
          *(v21 - 1) = (v22 >> 10) & 0x3FF;
          *v21 = (v22 >> 20) & 0x3FF;
          v21 += 3;
          --v19;
        }

        while (v19);
        v23 = v13;
        if (v11)
        {
LABEL_13:
          v24 = *(&a1[v23] + v12 * v14);
          __src[0] = v24 & 0x3FF;
          __src[1] = (v24 >> 10) & 0x3FF;
          __src[2] = (v24 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            v25 = a8;
            v26 = v15;
            memcpy((a8 + 6 * v23 + v12 * a7), __src, v47 + 2);
            v15 = v26;
            a8 = v25;
            v8 = a2;
          }
        }
      }

      ++v12;
      v16 = (v16 + v15);
      v17 = (v17 + v14);
    }

    while (v12 != v18);
  }

  return 0;
}

uint64_t sub_4EDAC(unsigned int *a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = (a2 / 3);
    v11 = a2 % 3;
    v23 = 2 * (a2 % 3 - 1);
    v12 = a5;
    v13 = a3;
    v14 = (a7 + 4);
    v15 = a1;
    do
    {
      if (a2 < 3)
      {
        v20 = 0;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v10;
        v17 = v15;
        v18 = v14;
        do
        {
          v19 = *v17++;
          *(v18 - 2) = v19 & 0x3FF;
          *(v18 - 1) = (v19 >> 10) & 0x3FF;
          *v18 = (v19 >> 20) & 0x3FF;
          v18 += 3;
          --v16;
        }

        while (v16);
        v20 = v10;
        if (v11)
        {
LABEL_9:
          v21 = *(&a1[v20] + v9 * v12);
          __src[0] = v21 & 0x3FF;
          __src[1] = (v21 >> 10) & 0x3FF;
          __src[2] = (v21 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            memcpy((a7 + 6 * v20 + v9 * a6), __src, v23 + 2);
          }
        }
      }

      ++v9;
      v14 = (v14 + a6);
      v15 = (v15 + v12);
    }

    while (v9 != v13);
  }

  return 0;
}

uint64_t sub_4EF00(unsigned int *a1, int a2, int a3, uint64_t a4, int a5, char a6, int a7, int a8, uint64_t a9)
{
  if (a5)
  {
    sub_4EB10(a1, a2, a3, a4, a6, a7, a8, a9);
  }

  else
  {
    sub_4EDAC(a1, a2, a3, a4, a7, a8, a9);
  }

  return 0;
}

_BYTE *sub_4EF48(_BYTE *result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2)
  {
    if (a3)
    {
      v10 = a4;
      v11 = result;
      v12 = *a3;
      LODWORD(v12) = sub_63330((a2 + v12), a4 - v12, "%lld,", a4, a5, a6, a7, a8, result[8] - *result) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v13, v14, v15, v16, v17, v11[520] - v11[16]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v18, v19, v20, v21, v22, v11[24] - v11[16]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v23, v24, v25, v26, v27, v11[40] - v11[24]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v28, v29, v30, v31, v32, v11[240] - v11[32]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v33, v34, v35, v36, v37, v11[464] - v11[248]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v38, v39, v40, v41, v42, v11[208] - v11[192]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v43, v44, v45, v46, v47, v11[408] - v11[200]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v48, v49, v50, v51, v52, v11[496] - v11[416]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v53, v54, v55, v56, v57, v11[232] - v11[216]) + v12;
      LODWORD(v12) = sub_63330((a2 + v12), v10 - v12, "%lld,", v58, v59, v60, v61, v62, v11[432] - v11[224]) + v12;
      result = sub_63330((a2 + v12), v10 - v12, "%lld,", v63, v64, v65, v66, v67, v11[512] - v11[440]);
      *a3 = result + v12;
    }
  }

  return result;
}

uint64_t sub_4F154(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2 && a3)
  {
    v10 = a4;
    v11 = result;
    v12 = 0;
    v13 = *a3;
    do
    {
      result = sub_63330((a2 + v13), v10 - v13, "%lld,", a4, a5, a6, a7, a8, *(v11 + v12));
      v13 = *a3 + result;
      *a3 = v13;
      v12 += 8;
    }

    while (v12 != 544);
  }

  return result;
}

uint64_t sub_4F1E8(const void *a1, const void *a2, const void *a3, int a4, int a5)
{
  if (sub_56A8C(0x3Au, 7))
  {
    v7 = sub_56AD0(0x3Au);
    v8 = sub_66A18();
    v9 = sub_56B04(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d\n", v8, 58, v9, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5);
      v8 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d", v8, 58);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v14 = 4294966288;
  }

  else
  {
    if (sub_56A8C(0x3Au, 4))
    {
      v10 = sub_56AD0(0x3Au);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d\n", v11, 58, v12, "AVE_FwStats_PrintAll", 181, "(psFwStats != __null) && (pEUMap != __null)", a1, a2, a3, a4, a5);
        v13 = sub_66A18();
        v20 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v13, 58, v20, "AVE_FwStats_PrintAll");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v11, 58, v12, "AVE_FwStats_PrintAll");
      }
    }

    v14 = 4294966295;
  }

  if (sub_56A8C(0x3Au, 7))
  {
    v15 = sub_56AD0(0x3Au);
    v16 = sub_66A18();
    v17 = sub_56B04(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d\n", v16, 58, v17, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5, v14);
      v18 = sub_66A18();
      v21 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v18, 58, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v16, 58, v17);
    }
  }

  return v14;
}

uint64_t sub_4FAFC(const void *a1, FILE *a2, int a3)
{
  if (sub_56A8C(0x3Au, 7))
  {
    v6 = sub_56AD0(0x3Au);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d\n", v7, 58, v8, "AVE_MCTFStats_PrintAll", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d", v7);
  }

  if (a1)
  {
    if (a2)
    {
      if (!a3)
      {
        fwrite("Frame#, FrameDiff, Fn_SetLrmeDiff, HW_LrmeDiff, Fn_SetLrrcDiff, HW_LrrcDiff, Fn_SetPipeDiff, HW_PipeDiff, Fn_PipeDoneDiff, FrameQIn, Fn_SetLrmeStart, HW_LrmeStart, Fn_SetLRMEDone, Fn_SetLrrcStart, HW_LrrcStart, Fn_SetLRRCDone, Fn_SetPipeStart, HW_PipeStart, Fn_SetPipeDone, HW_LrmeDone, HW_LrrcDone, HW_PipeDone, Fn_PipeDoneStart, Fn_PipeDoneEnd, LrmeStatsDone, LrrcStatsDone, PipeStatsDone, FrameOut\n", 0x191uLL, 1uLL, a2);
      }

      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (sub_56A8C(0x3Au, 4))
    {
      v9 = sub_56AD0(0x3Au);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 58, v11, "AVE_MCTFStats_PrintAll", 367, "pMctfStats != __null", 0, a2, a3);
        v12 = sub_66A18();
        v19 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 58, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 58, v11);
      }
    }

    v13 = 4294966295;
  }

  if (sub_56A8C(0x3Au, 7))
  {
    v14 = sub_56AD0(0x3Au);
    v15 = sub_66A18();
    v16 = sub_56B04(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d\n", v15, 58, v16, "AVE_MCTFStats_PrintAll", a1, a2, a3, v13);
      v17 = sub_66A18();
      sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v15);
    }
  }

  return v13;
}

uint64_t sub_5007C(int a1, int a2, int a3, int a4, uint64_t a5, _DWORD *a6)
{
  result = 4294966295;
  if (!a5 || !a6)
  {
LABEL_5:
    if (!a6)
    {
      return result;
    }

    goto LABEL_6;
  }

  v11 = sub_20380(a1, a2, a4);
  if (v11)
  {
    result = sub_48614(v11, a3, a5, a6);
    goto LABEL_5;
  }

  result = 4294966288;
  if (!a6)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *a6 = 0;
  }

  return result;
}

uint64_t sub_500F4(int a1, int a2, int a3, int a4, int a5)
{
  v10 = sub_5D850();
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  if (!v11)
  {
    return 4294966293;
  }

  v12 = v11;
  v18 = v10;
  v13 = sub_5007C(a1, a2, a3, a4, v11, &v18);
  if (!v13)
  {
    v14 = v18;
    if (v18 < 1)
    {
LABEL_7:
      v13 = 4294966295;
    }

    else
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15++;
        if (v16 == a5)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_7;
        }
      }

      v13 = 0;
    }
  }

  free(v12);
  return v13;
}

uint64_t sub_501D8(int *a1, int a2, int a3)
{
  if (a2 < 1)
  {
    return 4294966295;
  }

  v3 = a2;
  while (1)
  {
    v4 = *a1++;
    if (v4 == a3)
    {
      break;
    }

    if (!--v3)
    {
      return 4294966295;
    }
  }

  return 0;
}

uint64_t sub_5051C(int a1, int *a2, __CFDictionary *a3)
{
  v5 = sub_5D820(a1);
  if (!v5)
  {
    return 4294966296;
  }

  if ((*(v5 + 6) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v7 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = v8;
  if (Mutable)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0)
  {
    v17 = kIOSurfacePlaneHTPCPredictionSelector;
    sub_4671C(kIOSurfacePlaneHTPCPredictionSelector, 1, v7);
    sub_4671C(v17, 1, v9);
    if (*a2 >= 1)
    {
      sub_4671C(kIOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray, *a2, v7);
    }

    v18 = a2[2];
    if (v18 >= 1)
    {
      sub_4671C(kIOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray, v18, v7);
    }

    v19 = a2[4];
    if (v19 >= 1)
    {
      sub_4671C(kIOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray, v19, v9);
    }

    v20 = a2[6];
    if (v20 >= 1)
    {
      sub_4671C(kIOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray, v20, v9);
    }

    CFArrayAppendValue(Mutable, v7);
    CFArrayAppendValue(Mutable, v9);
    CFDictionarySetValue(a3, kCVPixelFormatPlanes, Mutable);
    CFRelease(v7);
    CFRelease(v9);
    CFRelease(Mutable);
    return 0;
  }

  if (sub_56A8C(0x3Fu, 4))
  {
    v12 = sub_56AD0(0x3Fu);
    v13 = sub_66A18();
    v14 = sub_56B04(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p\n", v13, 63, v14, "AVE_PixelBuf_AppendAttr_IOSurface", 211, "pArray != __null && pDict0 != __null && pDict1 != __null", Mutable, v7, v9);
      v15 = sub_66A18();
      v21 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v15, 63, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v13, 63, v14);
    }
  }

  return 4294966293;
}

uint64_t sub_507A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  sub_4C940(a1);
  if (CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks))
  {
    if (CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks))
    {
      sub_50208();
    }

    if (sub_56A8C(0x3Fu, 4))
    {
      v17 = sub_56AD0(0x3Fu);
      v14 = sub_66A18();
      v18 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d\n", v14, 63, v18, "AVE_PixelBuf_CreateAttrDict", 435, "pTempArray != __null", a1, a2, a3, a4, a9, 0);
        v19 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d", v19, 63, v23);
        return 4294966293;
      }

      v31 = a9;
      v29 = a3;
      v30 = a4;
      v27 = a1;
      v28 = a2;
      v25 = 435;
      v26 = "pTempArray != __null";
      v24 = v18;
      v20 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d";
LABEL_12:
      syslog(3, v20, v14, 63, v24, "AVE_PixelBuf_CreateAttrDict", v25, v26, v27, v28, v29, v30, v31, 0);
    }
  }

  else if (sub_56A8C(0x3Fu, 4))
  {
    v13 = sub_56AD0(0x3Fu);
    v14 = sub_66A18();
    v15 = sub_56B04(4);
    if (!v13)
    {
      v31 = a9;
      v29 = a3;
      v30 = a4;
      v27 = a1;
      v28 = a2;
      v25 = 429;
      v26 = "pDict != __null";
      v24 = v15;
      v20 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d\n", v14, 63, v15, "AVE_PixelBuf_CreateAttrDict", 429, "pDict != __null", a1, a2, a3, a4, a9, 0);
    v16 = sub_66A18();
    v22 = sub_56B04(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d", v16, 63, v22);
  }

  return 4294966293;
}

uint64_t sub_51164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, CVPixelBufferPoolRef *poolOut)
{
  pixelBufferAttributes = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = a8;
  v33 = a7;
  sub_48780(a1, a2, a4, &v33, &v32);
  v18 = sub_507A8(a1, a2, a3, a4, a5, a6, v33, v32, a9);
  if (v18)
  {
    v19 = v18;
    if (sub_56A8C(0x3Fu, 4))
    {
      v20 = sub_56AD0(0x3Fu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d\n", v21, 63, v22, "AVE_PixelBuf_CreatePool", 557, "ret == 0", a1, a2, a3, a4, a7, a8, a9, v19);
        v23 = sub_66A18();
        v30 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v23, 63, v30, "AVE_PixelBuf_CreatePool");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v21, 63, v22, "AVE_PixelBuf_CreatePool");
      }
    }
  }

  else
  {
    v24 = pixelBufferAttributes;
    v19 = CVPixelBufferPoolCreate(0, 0, pixelBufferAttributes, poolOut);
    if (!v19)
    {
      goto LABEL_15;
    }

    if (!sub_56A8C(0x3Fu, 4))
    {
      v19 = 4294966296;
      goto LABEL_15;
    }

    v25 = sub_56AD0(0x3Fu);
    v26 = sub_66A18();
    v27 = sub_56B04(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d\n", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562, "res == kCVReturnSuccess", a1, a2, a3, a4, a7, a8, a9, v19, 0);
      v28 = sub_66A18();
      v31 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v28, 63, v31, "AVE_PixelBuf_CreatePool", 562);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562);
    }

    v19 = 4294966296;
  }

  v24 = pixelBufferAttributes;
LABEL_15:
  if (v24)
  {
    CFRelease(v24);
  }

  return v19;
}

uint64_t sub_514A8(uint64_t a1, CVPixelBufferPoolRef *a2, CVPixelBufferPoolRef *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = sub_4671C(kCVPixelBufferPoolMinimumBufferCountKey, a2, Mutable);
    if (v8)
    {
      v9 = v8;
      if (sub_56A8C(0x3Fu, 4))
      {
        v10 = sub_56AD0(0x3Fu);
        v11 = sub_66A18();
        v12 = sub_56B04(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d\n", v11, 63, v12, "AVE_PixelBuf_CreateSurfacePool", 603, "ret == 0", a2, a1, a2, a3, v9);
          v13 = sub_66A18();
          v76 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v13, 63, v76, "AVE_PixelBuf_CreateSurfacePool");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v11, 63, v12, "AVE_PixelBuf_CreateSurfacePool");
        }
      }

LABEL_39:
      v48 = v7;
LABEL_56:
      CFRelease(v48);
      return v9;
    }

    v18 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v18)
    {
      if (sub_56A8C(0x3Fu, 4))
      {
        v28 = sub_56AD0(0x3Fu);
        v29 = sub_66A18();
        v30 = sub_56B04(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v29, 63, v30, "AVE_PixelBuf_CreateSurfacePool", 610, "pDictBufAttr != __null", a1, a2, a3, 0);
          v31 = sub_66A18();
          v78 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v31, 63, v78);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v29, 63, v30);
        }
      }

      v9 = 4294966293;
      goto LABEL_39;
    }

    v19 = v18;
    v20 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v20)
    {
      v21 = v20;
      v22 = sub_4671C(kIOSurfaceAllocSize, a1, v20);
      if (v22)
      {
        v9 = v22;
        if (sub_56A8C(0x3Fu, 4))
        {
          v23 = sub_56AD0(0x3Fu);
          v24 = sub_66A18();
          v25 = sub_56B04(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d\n", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool", 620, "ret == 0", a1, a1, a2, a3, v9);
            v26 = sub_66A18();
            v27 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v26, 63, v27, "AVE_PixelBuf_CreateSurfacePool");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool");
          }
        }

        CFRelease(v21);
        goto LABEL_55;
      }

      CFDictionaryAddValue(v19, kCVPixelBufferIOSurfacePropertiesKey, v21);
      CFRelease(v21);
      v38 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        do
        {
          v41 = sub_45CDC(dword_B579C[v40], v39);
          if (v41)
          {
            v42 = 1;
          }

          else
          {
            v42 = v40 == 5;
          }

          ++v40;
        }

        while (!v42);
        v43 = v41;
        if (v41)
        {
          if (sub_56A8C(0x3Fu, 4))
          {
            v44 = sub_56AD0(0x3Fu);
            v45 = sub_66A18();
            v46 = sub_56B04(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d\n", v45, 63, v46, "AVE_PixelBuf_CreateSurfacePool", 632, "ret == 0", a1, a2, a3, v43);
              v47 = sub_66A18();
              v80 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v47, 63, v80);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v45, 63, v46);
            }
          }

          CFRelease(v39);
          goto LABEL_54;
        }

        CFDictionaryAddValue(v19, kCVPixelBufferCacheModeKey, v39);
        CFRelease(v39);
        v53 = sub_46368(kCVPixelBufferIOSurfaceWiringAssertionKey, kCFBooleanTrue != 0, v19);
        if (v53)
        {
          v54 = v53;
          if (!sub_56A8C(0x3Fu, 4))
          {
            goto LABEL_54;
          }

          v55 = sub_56AD0(0x3Fu);
          v56 = sub_66A18();
          v57 = sub_56B04(4);
          if (!v55)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool");
            goto LABEL_54;
          }

          v58 = a1;
          printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d\n", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool", 642, "ret == 0", 1, a1, a2, a3, v54);
          v36 = sub_66A18();
          v103 = a3;
          v106 = v54;
          v95 = v58;
          v99 = a2;
          v91 = 1;
          v85 = 642;
          v89 = "ret == 0";
          v79 = sub_56B04(4);
          v37 = "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d";
          goto LABEL_25;
        }

        v60 = sub_4671C(kCVPixelBufferWidthKey, 2, v19);
        v9 = sub_4671C(kCVPixelBufferHeightKey, 2, v19) + v60;
        if (v9)
        {
          if (!sub_56A8C(0x3Fu, 4))
          {
            goto LABEL_55;
          }

          v61 = sub_56AD0(0x3Fu);
          v62 = sub_66A18();
          v63 = sub_56B04(4);
          if (v61)
          {
            v64 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d\n", v62, 63, v63, "AVE_PixelBuf_CreateSurfacePool", 649, "ret == 0", 2, 2, a1, a2, a3, v9);
            v65 = sub_66A18();
            v107 = a3;
            v109 = v9;
            v101 = v64;
            v104 = a2;
            v93 = 2;
            v97 = 2;
            v87 = 649;
            v82 = sub_56B04(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
LABEL_68:
            syslog(3, v66, v65, 63, v82, "AVE_PixelBuf_CreateSurfacePool", v87, "ret == 0", v93, v97, v101, v104, v107, v109);
            goto LABEL_55;
          }

          v108 = a3;
          v109 = v9;
          v102 = a1;
          v105 = a2;
          v94 = 2;
          v98 = 2;
          v88 = 649;
          v83 = v63;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
        }

        else
        {
          v67 = sub_4671C(kCVPixelBufferPixelFormatTypeKey, 875704422, v19);
          if (!v67)
          {
            v9 = CVPixelBufferPoolCreate(0, v7, v19, a3);
            if (v9)
            {
              if (sub_56A8C(0x3Fu, 4))
              {
                v72 = sub_56AD0(0x3Fu);
                v73 = sub_66A18();
                v74 = sub_56B04(4);
                if (v72)
                {
                  printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d\n", v73, 63, v74, "AVE_PixelBuf_CreateSurfacePool", 658, "ret == kCVReturnSuccess", a1, a2, a3, v9);
                  v75 = sub_66A18();
                  v84 = sub_56B04(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v75, 63, v84);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v73, 63, v74);
                }
              }

              v9 = 4294966296;
            }

            goto LABEL_55;
          }

          v9 = v67;
          if (!sub_56A8C(0x3Fu, 4))
          {
LABEL_55:
            CFRelease(v7);
            v48 = v19;
            goto LABEL_56;
          }

          v68 = sub_56AD0(0x3Fu);
          v62 = sub_66A18();
          v69 = sub_56B04(4);
          if (v68)
          {
            v70 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d\n", v62, 63, v69, "AVE_PixelBuf_CreateSurfacePool", 653, "ret == 0", 875704422, a1, a2, a3, v9);
            v65 = sub_66A18();
            v104 = a3;
            v107 = v9;
            v97 = v70;
            v101 = a2;
            v93 = 875704422;
            v87 = 653;
            v82 = sub_56B04(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
            goto LABEL_68;
          }

          v105 = a3;
          v108 = v9;
          v98 = a1;
          v102 = a2;
          v94 = 875704422;
          v88 = 653;
          v83 = v69;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
        }

        syslog(3, v71, v62, 63, v83, "AVE_PixelBuf_CreateSurfacePool", v88, "ret == 0", v94, v98, v102, v105, v108, v109);
        goto LABEL_55;
      }

      if (!sub_56A8C(0x3Fu, 4))
      {
        goto LABEL_54;
      }

      v50 = sub_56AD0(0x3Fu);
      v33 = sub_66A18();
      v51 = sub_56B04(4);
      if (v50)
      {
        v52 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d\n", v33, 63, v51, "AVE_PixelBuf_CreateSurfacePool", 629, "pTempArray != __null", a1, a2, a3, 0);
        v36 = sub_66A18();
        v99 = a3;
        v103 = 0;
        v91 = v52;
        v95 = a2;
        v85 = 629;
        v89 = "pTempArray != __null";
        v79 = sub_56B04(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
        goto LABEL_25;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 629;
      v90 = "pTempArray != __null";
      v81 = v51;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
    }

    else
    {
      if (!sub_56A8C(0x3Fu, 4))
      {
LABEL_54:
        v9 = 4294966293;
        goto LABEL_55;
      }

      v32 = sub_56AD0(0x3Fu);
      v33 = sub_66A18();
      v34 = sub_56B04(4);
      if (v32)
      {
        v35 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v33, 63, v34, "AVE_PixelBuf_CreateSurfacePool", 615, "pTempDict != __null", a1, a2, a3, 0);
        v36 = sub_66A18();
        v99 = a3;
        v103 = 0;
        v91 = v35;
        v95 = a2;
        v85 = 615;
        v89 = "pTempDict != __null";
        v79 = sub_56B04(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
LABEL_25:
        syslog(3, v37, v36, 63, v79, "AVE_PixelBuf_CreateSurfacePool", v85, v89, v91, v95, v99, v103, v106);
        goto LABEL_54;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 615;
      v90 = "pTempDict != __null";
      v81 = v34;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
    }

    syslog(3, v49, v33, 63, v81, "AVE_PixelBuf_CreateSurfacePool", v86, v90, v92, v96, v100, 0);
    goto LABEL_54;
  }

  if (sub_56A8C(0x3Fu, 4))
  {
    v14 = sub_56AD0(0x3Fu);
    v15 = sub_66A18();
    v16 = sub_56B04(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v15, 63, v16, "AVE_PixelBuf_CreateSurfacePool", 598, "pDictPoolAttr != __null", a1, a2, a3, 0);
      v17 = sub_66A18();
      v77 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v17, 63, v77);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v15, 63, v16);
    }
  }

  return 4294966293;
}

uint64_t sub_521E0(__CVBuffer *a1, __CVBuffer *a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  if (PlaneCount >= 1)
  {
    v5 = 0;
    v6 = PlaneCount & 0x7FFFFFFF;
    do
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v5);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v5);
      v9 = CVPixelBufferGetBaseAddressOfPlane(a2, v5);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v5);
      v11 = CVPixelBufferGetBytesPerRowOfPlane(a2, v5);
      if (HeightOfPlane >= 1)
      {
        if (BytesPerRowOfPlane >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = BytesPerRowOfPlane;
        }

        v13 = v12;
        v14 = v11;
        do
        {
          memcpy(v9, BaseAddressOfPlane, v13);
          BaseAddressOfPlane += BytesPerRowOfPlane;
          v9 += v14;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return 0;
}

uint64_t sub_52304(__CVBuffer *a1, _DWORD *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v24 = a2[1];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v7 = extraColumnsOnRight;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v9 = extraRowsOnBottom + HeightOfPlane;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v11 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v21 = WidthOfPlane;
    v12 = v7;
    v13 = (extraColumnsOnRight >> (a2[4] >> 1)) + v11;
    v14 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v15 = (extraRowsOnBottom >> (a2[5] >> 1)) + v14;
    LODWORD(v17) = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v16 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
    v22 = 2 * v13;
    v7 = v12;
    WidthOfPlane = v21;
    v17 = v17;
  }

  else
  {
    v22 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
  }

  if (v9 >= 1)
  {
    v18 = (v7 + WidthOfPlane) << (v24 == 10);
    do
    {
      fwrite(BaseAddressOfPlane, 1uLL, v18, a3);
      BaseAddressOfPlane += BytesPerRowOfPlane;
      --v9;
    }

    while (v9);
  }

  if (a2[3])
  {
    v19 = v15 < 1;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    do
    {
      fwrite(v16, 1uLL, v22 << (v24 == 10), a3);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t sub_52500(__CVBuffer *a1, _DWORD *a2, const void *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v6 = a2[1];
  v8 = v6 + 7;
  v7 = v6 < -7;
  v9 = v6 + 14;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = v9 >> 3;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v12 = extraColumnsOnRight + WidthOfPlane;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v14 = extraRowsOnBottom + HeightOfPlane;
  CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v15 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v16 = (extraColumnsOnRight >> (a2[4] >> 1)) + v15;
    v17 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v18 = (extraRowsOnBottom >> (a2[5] >> 1)) + v17;
    CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  if (v12 * v10 * v14 + 2 * v10 * v16 * v18)
  {
    operator new[]();
  }

  if (sub_56A8C(0x3Fu, 4))
  {
    v19 = sub_56AD0(0x3Fu);
    v20 = sub_66A18();
    v21 = sub_56B04(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p\n", v20, 63, v21, "AVE_PixelBuf_DumpPacked", 862, "frameSize != 0", a1, a2, a3);
      v22 = sub_66A18();
      v24 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v22, 63, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v20, 63, v21);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966295;
}