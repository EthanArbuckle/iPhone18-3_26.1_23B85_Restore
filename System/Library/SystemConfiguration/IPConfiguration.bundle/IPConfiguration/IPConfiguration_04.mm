void sub_4A548(void *a1)
{
  sub_4EF58(a1[16]);
  timer_cancel(a1[18]);
  sub_47814(a1);
  sub_47900(a1, "Inactive");
  v2 = a1[4];
  if (v2)
  {

    dispatch_source_merge_data(v2, 1uLL);
  }
}

uint64_t sub_4A5B8(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + 156);
  *(a1 + 156) = v4 + 1;
  if (v4)
  {
    v6 = *(a1 + 168);
    result = arc4random();
    v8 = v6 * (result / 4294967300.0 * 0.2 + -0.1) + v6 * 2.0;
    if (a3 != 0.0 && v8 > a3)
    {
      result = arc4random();
      v8 = a3 + (result / 4294967300.0 * 0.2 + -0.1) * a3;
    }
  }

  else
  {
    result = arc4random();
    v8 = a2 + (result / 4294967300.0 * 0.2 + -0.1) * a2;
  }

  *(a1 + 168) = v8;
  return result;
}

uint64_t sub_4A698(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = 0;
  result = sub_4ABF8(a1, 0xBu, v20, v19);
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 128);
    v5 = sub_5B9A8(v19);
    result = sub_4F270(v4, v3, (v5 + 4));
    if (result > 0x32 || ((1 << result) & 0x4000000000041) == 0)
    {
      v7 = result;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        v18 = strerror(v7);
        *v17 = 136315394;
        *(v17 + 4) = a1;
        *(v17 + 12) = 2080;
        *(v17 + 14) = v18;
        return __SC_log_send();
      }
    }
  }

  return result;
}

unsigned __int16 *sub_4A838(uint64_t a1, uint64_t a2)
{
  LODWORD(v8) = 0;
  v3 = sub_4B744(a1);
  result = sub_1D258(a2, 1, &v8, 0);
  if (result)
  {
    v5 = result;
    Length = CFDataGetLength(v3);
    if (Length == v8)
    {
      BytePtr = CFDataGetBytePtr(v3);
      return (bcmp(v5, BytePtr, v8) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4A8C4(uint64_t a1, uint64_t a2)
{
  current_time = timer_get_current_time();
  sub_47814(a1);
  v5 = sub_CBBC(*(a1 + 136));
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  memset(v35, 0, 256);
  v34 = 0;
  sub_41E8((a1 + 232));
  *(a1 + 232) = v6;
  v7 = *(a2 + 8);
  *(a1 + 184) = v7;
  v8 = malloc_type_malloc(v7, 0xE403647FuLL);
  *(a1 + 176) = v8;
  memmove(v8, *a2, *(a1 + 184));
  v9 = sub_5BC3C(*(a1 + 176), *(a1 + 184), v35);
  *(a1 + 192) = v9;
  result = sub_1D258(v9, 2, &v34, 0);
  *(a1 + 272) = result;
  v11 = *(a1 + 116);
  if (v11 == 2)
  {
    v12 = 1;
  }

  else
  {
    if (v11 != 3)
    {
LABEL_35:
      *(a1 + 264) = v11;
      return result;
    }

    v12 = 0;
  }

  result = sub_4B7AC(a1, **(a1 + 176), v12, *(a1 + 192), (a1 + 288), 0);
  *(a1 + 280) = result;
  if (result)
  {
    v13 = *(a1 + 288);
    v14 = *(result + 4);
    if (v12)
    {
      v15 = bswap32(v13[5]);
      v13 += 4;
    }

    else
    {
      v15 = bswap32(v13[1]);
    }

    v30 = *v13;
    v31 = bswap32(v30);
    if (v30)
    {
      v32 = v31;
    }

    else
    {
      v32 = v15;
    }

    if (v14.i32[0] && v14.i32[1])
    {
      if (v14.i32[0] == -1 || v14.i32[1] == -1)
      {
        *(a1 + 200) = current_time;
        v33 = 0;
        v15 = -1;
        goto LABEL_33;
      }

      v33 = vrev32_s8(v14);
    }

    else if (v32 == -1)
    {
      v33 = 0;
    }

    else
    {
      v33 = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(xmmword_5D190, v32)));
    }

    *(a1 + 200) = current_time;
    if (v15 != -1)
    {
LABEL_34:
      *(a1 + 208) = v33;
      *(a1 + 216) = v15;
      *(a1 + 220) = v32;
      v11 = *(a1 + 116);
      goto LABEL_35;
    }

    v33 = 0;
LABEL_33:
    v32 = -1;
    goto LABEL_34;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v16 = _os_log_pack_size();
    __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    if (v12)
    {
      v26 = 3;
    }

    else
    {
      v26 = 25;
    }

    if (v12)
    {
      v27 = 5;
    }

    else
    {
      v27 = 26;
    }

    v28 = sub_5B7F0(v26);
    v29 = sub_5B7F0(v27);
    *v25 = 136315906;
    *(v25 + 4) = a1;
    *(v25 + 12) = 2080;
    *(v25 + 14) = "DHCPv6ClientSavePacket";
    *(v25 + 22) = 2080;
    *(v25 + 24) = v28;
    *(v25 + 32) = 2080;
    *(v25 + 34) = v29;
    return __SC_log_send();
  }

  return result;
}

_BYTE *sub_4ABF8(uint64_t a1, unsigned int a2, _BYTE *a3, uint64_t a4)
{
  v5 = a3;
  DHCPv6PacketSetMessageType(a3, a2);
  DHCPv6PacketSetTransactionID(v5, *(a1 + 152));
  sub_5B99C(a4, (v5 + 4), 1496);
  if (!sub_4AE68(a1, a4))
  {
    return 0;
  }

  v14 = *(a1 + 116);
  if (v14 == 2)
  {
    v15 = 0;
    if (a2 > 6 || ((1 << a2) & 0x6A) == 0)
    {
LABEL_8:
      if (a2 > 0xB || ((1 << a2) & 0x86A) == 0 || sub_4B490(a4, v15, v8, v9, v10, v11, v12, v13))
      {
        goto LABEL_11;
      }

      return 0;
    }

    v15 = sub_4AFF4(a1, a4);
    v14 = *(a1 + 116);
  }

  else
  {
    v15 = 0;
  }

  if (v14 != 3)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (*(a1 + 156) == 1)
  {
    LOWORD(v16) = 0;
  }

  else
  {
    v17 = ((timer_get_current_time() - *(a1 + 160)) * 100.0);
    if (HIWORD(v17))
    {
      LOWORD(v16) = -1;
    }

    else
    {
      v16 = bswap32(v17) >> 16;
    }
  }

  memset(v30, 0, 256);
  v29 = v16;
  if (!sub_5B9B0(a4, 8u, 2uLL, &v29, v30))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      *v27 = 136315138;
      *(v27 + 4) = v30;
      __SC_log_send();
    }

    return 0;
  }

  return v5;
}

const __CFData *sub_4AE68(uint64_t a1, uint64_t a2)
{
  v3 = sub_4B744(a1);
  v4 = v3;
  if (v3)
  {
    memset(v18, 0, sizeof(v18));
    Length = CFDataGetLength(v3);
    BytePtr = CFDataGetBytePtr(v4);
    v4 = (&dword_0 + 1);
    if (!sub_5B9B0(a2, 1u, Length, BytePtr, v18))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        *v16 = 136315138;
        *(v16 + 4) = v18;
        __SC_log_send();
      }

      return 0;
    }
  }

  return v4;
}

BOOL sub_4AFF4(uint64_t a1, uint64_t a2)
{
  memset(v59, 0, sizeof(v59));
  v4 = sub_1EF20(*(a1 + 128));
  v58 = 0;
  if (!sub_B6A8(*(a1 + 136), &v58))
  {
    v18 = sub_2A35C();
    if (!v18)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return 0;
      }

      goto LABEL_3;
    }

    v19 = v18;
    v20 = sub_58EC8(v18);
    if (!v20)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v36 = _os_log_pack_size();
        __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
        v44 = *__error();
        v45 = _os_log_pack_fill();
        v46 = nullsub_1(v4);
        *v45 = 136315394;
        *(v45 + 4) = v46;
        *(v45 + 12) = 2080;
        *(v45 + 14) = v19;
        __SC_log_send();
      }

      return 0;
    }

    v21 = v20;
    Length = CFDataGetLength(v20);
    v23 = malloc_type_malloc(Length + 1, 0x1000040BDFB0063uLL);
    *v23 = 1;
    v60.location = 0;
    v60.length = Length;
    CFDataGetBytes(v21, v60, v23 + 1);
    v16 = sub_5B9B0(a2, 0x27u, (Length + 1), v23, v59);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v24 = __SC_log_enabled();
    if (v16)
    {
      if (v24)
      {
        v25 = _os_log_pack_size();
        v57 = &v57;
        __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        v35 = nullsub_1(v4);
        *v34 = 136315394;
        *(v34 + 4) = v35;
        *(v34 + 12) = 2080;
        *(v34 + 14) = v19;
LABEL_17:
        __SC_log_send();
      }
    }

    else if (v24)
    {
      v47 = _os_log_pack_size();
      __chkstk_darwin(v47, v48, v49, v50, v51, v52, v53, v54);
      v55 = *__error();
      v56 = _os_log_pack_fill();
      *v56 = 136315138;
      *(v56 + 4) = v59;
      goto LABEL_17;
    }

    CFRelease(v21);
    free(v23);
    return v16;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
LABEL_3:
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    v15 = nullsub_1(v4);
    *v14 = 136315138;
    *(v14 + 4) = v15;
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_4B490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v42, 0, sizeof(v42));
  if (a2)
  {
    if (sub_5BA74(a1, off_700F8, dword_70100, v42, a5, a6, a7, a8))
    {
      return 1;
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
        v29 = *__error();
        v30 = _os_log_pack_fill();
        *v30 = 136315138;
        *(v30 + 4) = v42;
        __SC_log_send();
      }

      return 0;
    }
  }

  else
  {
    v9 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
    v16 = v42 - ((v15 + 15) & 0x3FFFFFFF0);
    if (v14 < 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = off_700F8;
      do
      {
        v20 = *v18++;
        v19 = v20;
        if (v20 != 39)
        {
          *&v16[2 * v17] = v19;
          v17 = (v17 + 1);
        }

        --v14;
      }

      while (v14);
    }

    v8 = sub_5BA74(v9, v16, v17, v42, v10, v11, v12, v13);
    if (!v8)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v31 = _os_log_pack_size();
        __chkstk_darwin(v31, v32, v33, v34, v35, v36, v37, v38);
        v39 = *__error();
        v40 = _os_log_pack_fill();
        *v40 = 136315138;
        *(v40 + 4) = v42;
        __SC_log_send();
      }
    }
  }

  return v8;
}

uint64_t sub_4B744(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    result = *(a1 + 248);
    if (!result)
    {
      v3 = sub_1EF20(*(a1 + 128));
      result = sub_5424C(v3);
      *(a1 + 248) = result;
    }
  }

  else
  {
    result = qword_702A8;
    if (!qword_702A8)
    {
      result = sub_53878(G_dhcp_duid_type);
      qword_702A8 = result;
    }
  }

  return result;
}

unsigned __int16 *sub_4B7AC(uint64_t a1, unsigned int a2, int a3, uint64_t a4, unsigned __int16 **a5, unsigned __int16 *a6)
{
  v7 = a5;
  memset(v108, 0, sizeof(v108));
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v104 = 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 25;
  }

  *a5 = 0;
  v12 = sub_1D258(a4, v11, &v106, 0);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v14 = v106;
  if (v106 < 13)
  {
    goto LABEL_9;
  }

  v15 = *(v12 + 1);
  if (v15)
  {
    v16 = *(v12 + 2);
    if (v16)
    {
      if (bswap32(v15) > bswap32(v16))
      {
        goto LABEL_9;
      }
    }
  }

  LODWORD(v106) = v106 - 12;
  v20 = sub_5BB1C(v12 + 6, v14 - 12, v108);
  v104 = v20;
  if (v20)
  {
    v21 = v20;
    if (sub_5BD4C(v20, &v105, &v107, &v106 + 1))
    {
      v95 = v11;
      v99 = a2;
      v101 = a1;
      v96 = a6;
      v97 = v7;
      if (v105)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v22 = _os_log_pack_size();
          __chkstk_darwin(v22, v23, v24, v25, v26, v27, v28, v29);
          v30 = *__error();
          v31 = _os_log_pack_fill();
          v32 = sub_5B7F0(v95);
          v33 = sub_5BD28(v105);
          v34 = HIDWORD(v106);
          v35 = v107;
          *v31 = 136316162;
          *(v31 + 4) = v101;
          *(v31 + 12) = 2080;
          *(v31 + 14) = v32;
          *(v31 + 22) = 2080;
          *(v31 + 24) = v33;
          *(v31 + 32) = 1040;
          *(v31 + 34) = v34;
          *(v31 + 38) = 2080;
          *(v31 + 40) = v35;
          __SC_log_send();
        }
      }

      if (a3)
      {
        v36 = 5;
      }

      else
      {
        v36 = 26;
      }

      v103 = 0;
      v37 = sub_1D258(v21, v36, &v106, &v103);
      if (v37)
      {
        if (a3)
        {
          v39 = 24;
        }

        else
        {
          v39 = 25;
        }

        v100 = v39;
        *&v38 = 136315650;
        v98 = v38;
        while (v106 >= v100)
        {
          if (a3)
          {
            v40 = bswap32(*(v37 + 5));
            v41 = (v37 + 8);
          }

          else
          {
            v40 = bswap32(*(v37 + 1));
            v41 = v37;
          }

          v42 = *v41;
          if (v40)
          {
            v43 = v42 == 0;
          }

          else
          {
            v43 = 1;
          }

          if (!v43)
          {
            v81 = bswap32(v42);
            if (v81 <= v40)
            {
              *v97 = v37;
            }

            else
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v82 = _os_log_pack_size();
                v102 = v94;
                __chkstk_darwin(v82, v83, v84, v85, v86, v87, v88, v89);
                v90 = *__error();
                v91 = _os_log_pack_fill();
                v92 = DHCPv6MessageTypeName(v99);
                v93 = sub_5B7F0(v36);
                *v91 = 136316162;
                *(v91 + 4) = v101;
                *(v91 + 12) = 2080;
                *(v91 + 14) = v92;
                *(v91 + 22) = 2080;
                *(v91 + 24) = v93;
                *(v91 + 32) = 1024;
                *(v91 + 34) = v81;
                *(v91 + 38) = 1024;
                *(v91 + 40) = v40;
                __SC_log_send();
              }
            }

            goto LABEL_45;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v44 = _os_log_pack_size();
            v102 = v94;
            __chkstk_darwin(v44, v45, v46, v47, v48, v49, v50, v51);
            v52 = *__error();
            v53 = _os_log_pack_fill();
            v54 = DHCPv6MessageTypeName(v99);
            v55 = sub_5B7F0(v36);
            *v53 = v98;
            *(v53 + 4) = v101;
            *(v53 + 12) = 2080;
            *(v53 + 14) = v54;
            *(v53 + 22) = 2080;
            *(v53 + 24) = v55;
            __SC_log_send();
          }

          ++v103;
          v37 = sub_1D258(v21, v36, &v106, &v103);
          if (!v37)
          {
            break;
          }
        }
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v56 = _os_log_pack_size();
        __chkstk_darwin(v56, v57, v58, v59, v60, v61, v62, v63);
        v64 = *__error();
        v65 = _os_log_pack_fill();
        v66 = DHCPv6MessageTypeName(v99);
        v67 = sub_5B7F0(v95);
        v68 = sub_5B7F0(v36);
        *v65 = 136315906;
        *(v65 + 4) = v101;
        *(v65 + 12) = 2080;
        *(v65 + 14) = v66;
        *(v65 + 22) = 2080;
        *(v65 + 24) = v67;
        *(v65 + 32) = 2080;
        *(v65 + 34) = v68;
        __SC_log_send();
      }

LABEL_45:
      v17 = 0;
      a6 = v96;
      v7 = v97;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v101 = a1;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_9:
      v17 = 1;
      goto LABEL_10;
    }

    v69 = _os_log_pack_size();
    v102 = v94;
    __chkstk_darwin(v69, v70, v71, v72, v73, v74, v75, v76);
    v77 = *__error();
    v78 = _os_log_pack_fill();
    v79 = sub_5B7F0(v11);
    v80 = DHCPv6MessageTypeName(a2);
    *v78 = 136315650;
    *(v78 + 4) = v101;
    *(v78 + 12) = 2080;
    *(v78 + 14) = v79;
    *(v78 + 22) = 2080;
    *(v78 + 24) = v80;
    __SC_log_send();
    v17 = 1;
  }

LABEL_10:
  v18 = *v7;
  if (a6)
  {
    *a6 = v105;
  }

  if ((v17 & 1) == 0)
  {
    sub_5BC54(&v104);
  }

  if (v18)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_4BECC(uint64_t a1)
{
  current_time = timer_get_current_time();
  sub_47BE4(a1, 3u);
  *(a1 + 224) = 1;
  sub_4EF58(*(a1 + 128));
  timer_cancel(*(a1 + 144));
  v4 = *(a1 + 216);
  v3 = *(a1 + 220);
  if (v4 == -1)
  {
    v6 = 0;
    v7 = -1;
LABEL_11:
    if (*(a1 + 116) == 2)
    {
      sub_4CAD8(a1, v7, v3);
    }

    else
    {
      sub_4D014(a1, v7, v3);
    }

    if (v7 != -1)
    {
      v8 = *(a1 + 208);
      v9 = v8 >= v6;
      v10 = v8 - v6;
      v11 = v10;
      if (v10 == 0 || !v9)
      {
        v11 = 10.0;
      }

      *(a1 + 256) = current_time + v11;
      v12 = *(a1 + 144);

      timer_callout_set(v12, sub_4D20C, a1, 0, 0, v11);
    }

    return;
  }

  v5 = *(a1 + 200);
  if (current_time >= v5)
  {
    v6 = (current_time - v5);
    v7 = v4 - v6;
    if (v4 > v6)
    {
      if (v3 >= v6)
      {
        v3 -= v6;
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_11;
    }
  }

  sub_4C82C(a1);
}

uint64_t sub_4C014(uint64_t a1)
{
  memset(v77, 0, sizeof(v77));
  v76[0] = 0;
  v76[1] = 0;
  v2 = *(a1 + 116);
  if ((v2 & 0xFFFFFFFE) != 2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = *(a1 + 116);
    if (v16 > 3)
    {
      v17 = "<unknown>";
    }

    else
    {
      v17 = off_691A0[v16];
    }

    *v15 = 136315650;
    *(v15 + 4) = a1;
    *(v15 + 12) = 2080;
    *(v15 + 14) = "DHCPv6ClientSendPacket";
    *(v15 + 22) = 2080;
    goto LABEL_17;
  }

  if (*(a1 + 264) != v2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

LABEL_21:
    v18 = _os_log_pack_size();
    __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    *v27 = 136315394;
    *(v27 + 4) = a1;
    *(v27 + 12) = 2080;
    *(v27 + 14) = "DHCPv6ClientSendPacket";
    return __SC_log_send();
  }

  if (!*(a1 + 272))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (!*(a1 + 280))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  v3 = *(a1 + 120);
  if (v3 > 5)
  {
    switch(v3)
    {
      case 6:
        if (v2 == 3)
        {
          v4 = 6;
        }

        else
        {
          v4 = 4;
        }

        break;
      case 7:
        v4 = 8;
        break;
      case 9:
        v4 = 9;
        break;
      default:
        goto LABEL_32;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = 3;
        break;
      case 4:
        v4 = 5;
        break;
      case 5:
        v4 = 6;
        break;
      default:
LABEL_32:
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v28 = _os_log_pack_size();
          __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
          v36 = *__error();
          v37 = _os_log_pack_fill();
          v38 = *(a1 + 120);
          if (v38 > 0xB)
          {
            v39 = "<unknown>";
          }

          else
          {
            v39 = off_69140[v38];
          }

          *v37 = 136315394;
          *(v37 + 4) = a1;
          *(v37 + 12) = 2080;
          *(v37 + 14) = v39;
          return __SC_log_send();
        }

        return result;
    }
  }

  result = sub_4ABF8(a1, v4, v78, v76);
  if (!result)
  {
    return result;
  }

  v40 = result;
  if ((v4 | 2) == 6 || sub_5B9B0(v76, 2u, bswap32(*(*(a1 + 272) - 2)) >> 16, *(a1 + 272), v77))
  {
    if (*(a1 + 116) == 2)
    {
      if (!sub_4D708(a1, 0, v76, v77))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          return result;
        }

        goto LABEL_53;
      }
    }

    else if (!sub_4D7C0(a1, 0, v76, v77))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

LABEL_53:
      v66 = _os_log_pack_size();
      __chkstk_darwin(v66, v67, v68, v69, v70, v71, v72, v73);
      v74 = *__error();
      v75 = _os_log_pack_fill();
      *v75 = 136315138;
      *(v75 + 4) = v77;
      return __SC_log_send();
    }

    v41 = *(a1 + 128);
    v42 = sub_5B9A8(v76);
    result = sub_4F270(v41, v40, (v42 + 4));
    v43 = result;
    if (result > 0x32 || ((1 << result) & 0x4000000000041) == 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v44 = _os_log_pack_size();
        __chkstk_darwin(v44, v45, v46, v47, v48, v49, v50, v51);
        v52 = *__error();
        v53 = _os_log_pack_fill();
        v54 = strerror(v43);
        *v53 = 136315394;
        *(v53 + 4) = a1;
        *(v53 + 12) = 2080;
        *(v53 + 14) = v54;
        return __SC_log_send();
      }
    }

    return result;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v55 = _os_log_pack_size();
    __chkstk_darwin(v55, v56, v57, v58, v59, v60, v61, v62);
    v63 = *__error();
    v15 = _os_log_pack_fill();
    v64 = *(a1 + 120);
    if (v64 > 0xB)
    {
      v65 = "<unknown>";
    }

    else
    {
      v65 = off_69140[v64];
    }

    *v15 = 136315650;
    *(v15 + 4) = a1;
    *(v15 + 12) = 2080;
    *(v15 + 14) = v65;
    *(v15 + 22) = 2080;
    v17 = v77;
LABEL_17:
    *(v15 + 24) = v17;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_4C82C(void *a1)
{
  sub_47BE4(a1, 8u);
  sub_4EF58(a1[16]);
  timer_cancel(a1[18]);
  sub_47900(a1, "Unbound");
  sub_47814(a1);
  v2 = a1[4];
  if (v2)
  {
    dispatch_source_merge_data(v2, 1uLL);
  }

  return sub_49EEC(a1, 0, 0);
}

uint64_t sub_4C8A8(uint64_t a1, unsigned int a2, int a3, int8x8_t **a4, __n128 a5)
{
  v7 = *a4;
  if (a3)
  {
    a5.n128_u64[0] = vrev32_s8(v7[2]);
    v29 = a5;
    __str[0] = 0;
    v8 = 5;
  }

  else
  {
    v9 = v7[1].u8[0];
    a5.n128_u64[0] = vrev32_s8(*v7);
    v29 = a5;
    snprintf(__str, 8uLL, "/%d", v9);
    v8 = 26;
    v7 = (v7 + 9);
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v11 = _os_log_pack_size();
    v28[1] = v28;
    __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    v21 = *(a1 + 120);
    if (v21 > 0xB)
    {
      v22 = "<unknown>";
    }

    else
    {
      v22 = off_69140[v21];
    }

    v23 = DHCPv6MessageTypeName(a2);
    v24 = *(a1 + 156);
    v25 = sub_5B7F0(v8);
    v26 = inet_ntop(30, v7, v31, 0x2Eu);
    *v20 = 136317186;
    *(v20 + 4) = a1;
    *(v20 + 12) = 2080;
    *(v20 + 14) = v22;
    *(v20 + 22) = 2080;
    *(v20 + 24) = v23;
    *(v20 + 32) = 1024;
    *(v20 + 34) = v24;
    *(v20 + 38) = 2080;
    *(v20 + 40) = v25;
    *(v20 + 48) = 2080;
    *(v20 + 50) = v26;
    *(v20 + 58) = 2080;
    *(v20 + 60) = __str;
    *(v20 + 68) = 1024;
    v27 = v29.n128_u32[1];
    *(v20 + 70) = v29.n128_u32[0];
    *(v20 + 74) = 1024;
    *(v20 + 76) = v27;
    return __SC_log_send();
  }

  return result;
}

void sub_4CAD8(uint64_t a1, int a2, int a3)
{
  v6 = sub_1EF20(*(a1 + 128));
  v8 = (a1 + 56);
  v7 = *(a1 + 56);
  v74 = **(a1 + 288);
  if ((v7 || *(a1 + 60) || *(a1 + 64) || *(a1 + 68)) && (v8->i64[0] != v74.i64[0] || *(a1 + 64) != v74.i64[1]))
  {
    inet_ntop(30, (a1 + 56), v76, 0x2Eu);
    v10 = nullsub_1(v6);
    v11 = sub_41CE4(v10, (a1 + 56));
    sub_2424();
    _SC_syslog_os_log_mapping();
    v12 = __SC_log_enabled();
    if (v11 < 0)
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      v24 = _os_log_pack_size();
      v72 = a3;
      v73 = &v70;
      __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
      v32 = *__error();
      v33 = _os_log_pack_fill();
      v71 = nullsub_1(v6);
      v34 = __error();
      v35 = strerror(*v34);
      v36 = *__error();
      *v33 = 136316162;
      *(v33 + 4) = "DHCPv6ClientBoundAddress";
      *(v33 + 12) = 2080;
      *(v33 + 14) = v71;
      *(v33 + 22) = 2080;
      *(v33 + 24) = v76;
      *(v33 + 32) = 2080;
      *(v33 + 34) = v35;
      *(v33 + 42) = 1024;
      *(v33 + 44) = v36;
      a3 = v72;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = _os_log_pack_size();
      v73 = &v70;
      __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = nullsub_1(v6);
      *v22 = 136315650;
      *(v22 + 4) = "DHCPv6ClientBoundAddress";
      *(v22 + 12) = 2080;
      *(v22 + 14) = v23;
      *(v22 + 22) = 2080;
      *(v22 + 24) = v76;
    }

    __SC_log_send();
  }

LABEL_15:
  v37 = sub_144D8(v6);
  v38 = sub_41E5C(&v74, v37);
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = 128;
  }

  inet_ntop(30, &v74, v76, 0x2Eu);
  v40 = nullsub_1(v6);
  v41 = sub_420DC(v40, &v74, 0, v39, 256, a2, a3);
  sub_2424();
  _SC_syslog_os_log_mapping();
  v42 = __SC_log_enabled();
  if (v41 < 0)
  {
    if (!v42)
    {
      goto LABEL_24;
    }

    v53 = _os_log_pack_size();
    v73 = &v70;
    __chkstk_darwin(v53, v54, v55, v56, v57, v58, v59, v60);
    v61 = *__error();
    v62 = _os_log_pack_fill();
    v63 = nullsub_1(v6);
    v64 = __error();
    v65 = strerror(*v64);
    v66 = *__error();
    *v62 = 136316162;
    *(v62 + 4) = "DHCPv6ClientBoundAddress";
    *(v62 + 12) = 2080;
    *(v62 + 14) = v63;
    *(v62 + 22) = 2080;
    *(v62 + 24) = v76;
    *(v62 + 32) = 2080;
    *(v62 + 34) = v65;
    *(v62 + 42) = 1024;
    *(v62 + 44) = v66;
  }

  else
  {
    if (!v42)
    {
      goto LABEL_24;
    }

    v43 = _os_log_pack_size();
    v73 = &v70;
    __chkstk_darwin(v43, v44, v45, v46, v47, v48, v49, v50);
    v51 = *__error();
    v52 = _os_log_pack_fill();
    *v52 = 136316162;
    *(v52 + 4) = a1;
    *(v52 + 12) = 2080;
    *(v52 + 14) = v76;
    *(v52 + 22) = 1024;
    *(v52 + 24) = v39;
    *(v52 + 28) = 1024;
    *(v52 + 30) = a2;
    *(v52 + 34) = 1024;
    *(v52 + 36) = a3;
  }

  __SC_log_send();
LABEL_24:
  v67 = *(a1 + 32);
  if (v67)
  {
    dispatch_source_merge_data(v67, 1uLL);
  }

  *v8 = v74;
  *(a1 + 72) = v39;
  memset(v75, 0, 184);
  v68 = sub_1EF20(*(a1 + 128));
  v69 = sub_144D8(v68);
  sub_16718(v75, v69);
  sub_4813C(a1, v75);
  sub_17B18(v75);
}

void sub_4D014(uint64_t a1, int a2, int a3)
{
  v6 = (a1 + 76);
  v7 = *(a1 + 288);
  v8 = *(v7 + 8);
  if (*(a1 + 76) || *(a1 + 80) || *(a1 + 84) || *(a1 + 88))
  {
    if (*(a1 + 76) == *(v7 + 9))
    {
      v9 = "Maintained";
    }

    else
    {
      v9 = "Changed";
    }
  }

  else
  {
    v9 = "New";
  }

  *v6 = *(v7 + 9);
  *(a1 + 92) = v8;
  inet_ntop(30, v6, v22, 0x2Eu);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    v20 = *(a1 + 92);
    *v19 = 136316418;
    *(v19 + 4) = a1;
    *(v19 + 12) = 2080;
    *(v19 + 14) = v9;
    *(v19 + 22) = 2080;
    *(v19 + 24) = v22;
    *(v19 + 32) = 1024;
    *(v19 + 34) = v20;
    *(v19 + 38) = 1024;
    *(v19 + 40) = a2;
    *(v19 + 44) = 1024;
    *(v19 + 46) = a3;
    __SC_log_send();
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    dispatch_source_merge_data(v21, 1uLL);
  }
}

void sub_4D20C(uint64_t a1, int a2, unsigned __int8 **a3)
{
  current_time = timer_get_current_time();
  if (a2 == 5)
  {
    v48 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    if (**a3 == 7)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v12 = sub_1D258(a3[2], 2, &v45, 0);
        if (v12)
        {
          if (sub_5B3BC(v12, v45) && sub_5BD4C(a3[2], &v47, &v46, &v45 + 1))
          {
            if (v47)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v13 = _os_log_pack_size();
                __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
                v21 = *__error();
                v22 = _os_log_pack_fill();
                v23 = DHCPv6MessageTypeName(**a3);
                v24 = sub_5BD28(v47);
                v25 = HIDWORD(v45);
                v26 = v46;
                *v22 = 136316162;
                *(v22 + 4) = a1;
                *(v22 + 12) = 2080;
                *(v22 + 14) = v23;
                *(v22 + 22) = 2080;
                *(v22 + 24) = v24;
                *(v22 + 32) = 1040;
                *(v22 + 34) = v25;
                *(v22 + 38) = 2080;
                *(v22 + 40) = v26;
                __SC_log_send();
              }
            }

            else
            {
              v43 = *(a1 + 116);
              if (sub_4B7AC(a1, **a3, v43 == 2, a3[2], &v48, 0))
              {
                sub_4C8A8(a1, **a3, v43 == 2, &v48, v44);
                sub_4A8C4(a1, a3);
                sub_4BECC(a1);
                return;
              }
            }

            sub_4C82C(a1);
          }
        }
      }
    }
  }

  else
  {
    v7 = current_time;
    if (a2 != 2)
    {
      if (a2)
      {
        return;
      }

      sub_47BE4(a1, 4u);
      sub_4EF58(*(a1 + 128));
      timer_cancel(*(a1 + 144));
      *(a1 + 156) = 0;
      *(a1 + 160) = v7;
      v8 = arc4random();
      *(a1 + 152) = v8 & 0xFFFFFF;
      sub_4EB8C(*(a1 + 128), v8 & 0xFFFFFF, sub_4D20C, a1, 5);
    }

    if (sub_4951C(a1, v7))
    {
      v9 = (a1 + 212);
      v10 = (v7 - *(a1 + 200));
      if (*(a1 + 212) <= v10)
      {
        if (*(a1 + 120) != 5)
        {
          v27 = arc4random();
          *(a1 + 152) = v27 & 0xFFFFFF;
          sub_4EB8C(*(a1 + 128), v27 & 0xFFFFFF, sub_4D20C, a1, 5);
          *(a1 + 160) = v7;
          sub_47BE4(a1, 5u);
          *(a1 + 156) = 0;
        }

        sub_4A5B8(a1, 10.0, 600.0);
        v9 = (a1 + 216);
      }

      else
      {
        sub_4A5B8(a1, 10.0, 600.0);
      }

      v28 = *v9 - v10;
      if (v11 <= v28)
      {
        v29 = v11;
      }

      else
      {
        v29 = v28;
      }

      *(a1 + 256) = v7 + v29;
      timer_callout_set(*(a1 + 144), sub_4D20C, a1, 2, 0, v29);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v30 = _os_log_pack_size();
        __chkstk_darwin(v30, v31, v32, v33, v34, v35, v36, v37);
        v38 = *__error();
        v39 = _os_log_pack_fill();
        v40 = *(a1 + 120);
        if (v40 > 0xB)
        {
          v41 = "<unknown>";
        }

        else
        {
          v41 = off_69140[v40];
        }

        v42 = *(a1 + 156);
        *v39 = 136315906;
        *(v39 + 4) = a1;
        *(v39 + 12) = 2080;
        *(v39 + 14) = v41;
        *(v39 + 22) = 1024;
        *(v39 + 24) = v42;
        *(v39 + 28) = 2048;
        *(v39 + 30) = v29;
        __SC_log_send();
      }

      sub_4C014(a1);
    }

    else
    {

      sub_4C82C(a1);
    }
  }
}

BOOL sub_4D708(uint64_t a1, char a2, uint64_t a3, char *a4)
{
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = bswap32(sub_4D8A8(a1));
  if (a2)
  {
    v8 = 12;
  }

  else
  {
    v10[3] = 402654464;
    v11 = **(a1 + 288);
    v12 = 0;
    v8 = 40;
  }

  return sub_5B9B0(a3, 3u, v8, v10, a4);
}

BOOL sub_4D7C0(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v15 = 0;
  __src = bswap32(sub_4D8A8(a1));
  if (a2)
  {
    v8 = (a1 + 112);
    if (!*(a1 + 112))
    {
      v12 = 12;
      return sub_5B9B0(a3, 0x19u, v12, &__src, a4);
    }

    v16 = 419437056;
    v9 = (a1 + 96);
  }

  else
  {
    v16 = 419437056;
    v10 = *(a1 + 288);
    v9 = (v10 + 9);
    v8 = (v10 + 8);
  }

  v11 = *v8;
  v19 = *v9;
  v18 = v11;
  v17 = 0;
  v12 = 41;
  return sub_5B9B0(a3, 0x19u, v12, &__src, a4);
}

CFIndex sub_4D8A8(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return 0;
  }

  v3 = sub_1EF20(*(a1 + 128));
  v4 = nullsub_1(v3);

  return sub_542B0(v4);
}

void sub_4D8E8(uint64_t a1, int a2, unsigned __int8 **a3)
{
  if (a2 == 5)
  {
    v50 = 0;
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v46 = 0;
    if (**a3 == 7)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v18 = sub_1D258(a3[2], 2, &v48, 0);
        if (v18)
        {
          if (sub_5B3BC(v18, v48) && sub_5BD4C(a3[2], &v49, &v47, &v46))
          {
            if (v49)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v19 = _os_log_pack_size();
                __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
                v27 = *__error();
                v28 = _os_log_pack_fill();
                v29 = DHCPv6MessageTypeName(**a3);
                v30 = sub_5BD28(v49);
                v31 = v46;
                v32 = v47;
                *v28 = 136316162;
                *(v28 + 4) = a1;
                *(v28 + 12) = 2080;
                *(v28 + 14) = v29;
                *(v28 + 22) = 2080;
                *(v28 + 24) = v30;
                *(v28 + 32) = 1040;
                *(v28 + 34) = v31;
                *(v28 + 38) = 2080;
                *(v28 + 40) = v32;
                __SC_log_send();
              }
            }

            if ((v49 & 0xFFFB) != 2)
            {
              v33 = *(a1 + 116);
              v34 = sub_4B7AC(a1, **a3, v33 == 2, a3[2], &v50, &v49);
              if (v49 == 4)
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v36 = _os_log_pack_size();
                  __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
                  v44 = *__error();
                  v45 = _os_log_pack_fill();
                  *v45 = 136315138;
                  *(v45 + 4) = a1;
                  __SC_log_send();
                }

                sub_47900(a1, "Request");
                sub_49EEC(a1, 0, 0);
              }

              else if (v34)
              {
                sub_4C8A8(a1, **a3, v33 == 2, &v50, v35);
                sub_4A8C4(a1, a3);
                sub_4BECC(a1);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2)
      {
        return;
      }

      sub_47BE4(a1, 2u);
      *(a1 + 156) = 0;
      *(a1 + 152) = arc4random() & 0xFFFFFF;
      *(a1 + 160) = timer_get_current_time();
      sub_4EB8C(*(a1 + 128), *(a1 + 152), sub_4D8E8, a1, 5);
    }

    if (*(a1 + 156) < 10)
    {
      v4 = *(a1 + 144);
      sub_4A5B8(a1, 1.0, 30.0);
      timer_callout_set(v4, sub_4D8E8, a1, 2, 0, v5);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
        v14 = *__error();
        v15 = _os_log_pack_fill();
        v16 = *(a1 + 156);
        *v15 = 136315394;
        *(v15 + 4) = a1;
        *(v15 + 12) = 1024;
        *(v15 + 14) = v16;
        __SC_log_send();
      }

      sub_4C014(a1);
    }

    else
    {

      sub_49EEC(a1, 0, 0);
    }
  }
}

uint64_t sub_4DDC8(uint64_t a1)
{
  memset(v31, 0, sizeof(v31));
  v30[0] = 0;
  v30[1] = 0;
  result = sub_4ABF8(a1, 1u, v32, v30);
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 116);
    if (v4 == 3)
    {
      if (!sub_4D7C0(a1, 1, v30, v31))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          return result;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v4 != 2)
      {
        return result;
      }

      v5 = sub_4D8A8(a1);
      v34 = 0;
      __src = bswap32(v5);
      if (!sub_5B9B0(v30, 3u, 0xCuLL, &__src, v31))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          return result;
        }

LABEL_13:
        v20 = _os_log_pack_size();
        __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
        v28 = *__error();
        v29 = _os_log_pack_fill();
        *v29 = 136315138;
        *(v29 + 4) = v31;
        return __SC_log_send();
      }
    }

    v6 = *(a1 + 128);
    v7 = sub_5B9A8(v30);
    result = sub_4F270(v6, v3, (v7 + 4));
    v8 = result;
    if (result > 0x32 || ((1 << result) & 0x4000000000041) == 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v9 = _os_log_pack_size();
        __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
        v17 = *__error();
        v18 = _os_log_pack_fill();
        v19 = strerror(v8);
        *v18 = 136315394;
        *(v18 + 4) = a1;
        *(v18 + 12) = 2080;
        *(v18 + 14) = v19;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_4E10C(uint64_t a1)
{
  v3 = 0;
  v1 = sub_1D258(a1, 7, &v3, 0);
  result = 0;
  if (v1)
  {
    if (v3 >= 1)
    {
      return *v1;
    }
  }

  return result;
}

uint64_t sub_4E158(uint64_t a1)
{
  sub_47BE4(a1, 7u);
  sub_47900(a1, "Release");
  sub_4EF58(*(a1 + 128));
  timer_cancel(*(a1 + 144));
  *(a1 + 156) = 0;
  *(a1 + 152) = arc4random() & 0xFFFFFF;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = a1;
    __SC_log_send();
  }

  return sub_4C014(a1);
}

uint64_t sub_4E2A8(uint64_t result, int a2, unsigned __int8 **a3)
{
  v3 = result;
  if (a2 == 5)
  {
    v32 = 0;
    if (**a3 == 7)
    {
      result = sub_4A838(result, a3[2]);
      if (result)
      {
        result = sub_1D258(a3[2], 2, &v32, 0);
        if (result)
        {
          result = sub_5B3BC(result, v32);
          if (result)
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v20 = _os_log_pack_size();
              __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
              v28 = *__error();
              v29 = _os_log_pack_fill();
              v30 = DHCPv6MessageTypeName(**a3);
              v31 = *(v3 + 156);
              *v29 = 136315650;
              *(v29 + 4) = v3;
              *(v29 + 12) = 2080;
              *(v29 + 14) = v30;
              *(v29 + 22) = 1024;
              *(v29 + 24) = v31;
              __SC_log_send();
            }

            return sub_49EEC(v3, 0, 0);
          }
        }
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2)
      {
        return result;
      }

      sub_47BE4(result, 9u);
      sub_47900(v3, "Decline");
      sub_4EF58(*(v3 + 128));
      timer_cancel(*(v3 + 144));
      sub_41E8((v3 + 232));
      *(v3 + 232) = 0;
      *(v3 + 216) = 0u;
      *(v3 + 200) = 0u;
      v4 = *(v3 + 32);
      if (v4)
      {
        dispatch_source_merge_data(v4, 1uLL);
      }

      *(v3 + 156) = 0;
      v5 = arc4random();
      *(v3 + 152) = v5 & 0xFFFFFF;
      sub_4EB8C(*(v3 + 128), v5 & 0xFFFFFF, sub_4E2A8, v3, 5);
    }

    if (*(v3 + 156) < 5)
    {
      v6 = *(v3 + 144);
      sub_4A5B8(v3, 1.0, 0.0);
      timer_callout_set(v6, sub_4E2A8, v3, 2, 0, v7);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        v18 = *(v3 + 156);
        *v17 = 136315394;
        *(v17 + 4) = v3;
        *(v17 + 12) = 1024;
        *(v17 + 14) = v18;
        __SC_log_send();
      }

      return sub_4C014(v3);
    }

    else
    {

      return sub_49EEC(v3, 0, 0);
    }
  }

  return result;
}

void sub_4E63C(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_46D78(a1, Mutable);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 136315650;
    *(v12 + 4) = a1;
    *(v12 + 12) = 2080;
    *(v12 + 14) = "dhcpv6_pd_notify";
    *(v12 + 22) = 2112;
    *(v12 + 24) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
  memset(v15, 0, sizeof(v15));
  v13 = sub_1BE98(a1, v15);
  v14 = *(a1 + 136);
  if (v13)
  {
    sub_1C4B0(v14, 0, 0, 0, 0, v15, 0);
  }

  else if (sub_2AED8(v14))
  {
    sub_102A4(*(a1 + 136), 0xCu);
  }
}

void *sub_4E814(uint64_t a1)
{
  v2 = qword_702B8;
  if (!qword_702B8)
  {
    v3 = malloc_type_malloc(0x40uLL, 0x10A004042BA1A1AuLL);
    if (!v3)
    {
      qword_702B8 = 0;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
        v14 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      return 0;
    }

    v2 = v3;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    sub_592AC(v3, sub_4EB4C, 0);
    *(v2 + 48) = timer_callout_init("DHCPv6Socket");
    qword_702B8 = v2;
  }

  v4 = malloc_type_malloc(0x28uLL, 0x10A0040C62F783CuLL);
  v5 = v4;
  if (v4)
  {
    v4[4] = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    if (sub_59348(v2, v4))
    {
      *v5 = a1;
      return v5;
    }

    free(v5);
    return 0;
  }

  return v5;
}

void sub_4E9D8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = sub_15194(qword_702B8, v1);
    if (v3 == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
        v12 = *__error();
        v13 = _os_log_pack_fill();
        v14 = nullsub_1(*v1);
        *v13 = 136315138;
        *(v13 + 4) = v14;
        __SC_log_send();
      }
    }

    else
    {
      sub_15190(qword_702B8, v3, 0);
    }

    v1[2] = 0;
    v1[3] = 0;
    v1[4] = 0;
    sub_4EF64(v1);
    free(v1);
    *a1 = 0;
  }
}

void sub_4EB4C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_4EF64(a1);

  free(a1);
}

uint64_t sub_4EB8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 12) = a2;
  result = sub_4ECF0(a1);
  if (result)
  {
    v7 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = nullsub_1(*a1);
      v19 = strerror(v7);
      *v17 = 136315650;
      *(v17 + 4) = "DHCPv6SocketEnableReceive";
      *(v17 + 12) = 2080;
      *(v17 + 14) = v18;
      *(v17 + 22) = 2080;
      *(v17 + 24) = v19;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_4ECF0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  timer_cancel(*(qword_702B8 + 48));
  ++*(qword_702B8 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = nullsub_1(*a1);
    v13 = *(qword_702B8 + 40);
    *v11 = 136315650;
    *(v11 + 4) = "DHCPv6SocketOpenSocket";
    *(v11 + 12) = 2080;
    *(v11 + 14) = v12;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v13;
    __SC_log_send();
  }

  *(a1 + 8) = 1;
  if (*(qword_702B8 + 40) > 1)
  {
    return 0;
  }

  if (*(qword_702B8 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 136315138;
      *(v23 + 4) = "DHCPv6SocketOpenSocket";
      __SC_log_send();
    }

    return 0;
  }

  v24 = sub_4F818();
  if (v24)
  {
    sub_4EF64(a1);
  }

  return v24;
}

uint64_t sub_4EF58(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return sub_4EF64(result);
}

uint64_t sub_4EF64(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    v2 = *(qword_702B8 + 40);
    if (v2 <= 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v24 = _os_log_pack_size();
        __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
        v32 = *__error();
        v33 = _os_log_pack_fill();
        v34 = nullsub_1(*v1);
        v35 = *(qword_702B8 + 40);
        *v33 = 136315394;
        *(v33 + 4) = v34;
        *(v33 + 12) = 1024;
        *(v33 + 14) = v35;
        return __SC_log_send();
      }
    }

    else
    {
      *(qword_702B8 + 40) = v2 - 1;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v3 = _os_log_pack_size();
        __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
        v11 = *__error();
        v12 = _os_log_pack_fill();
        v13 = nullsub_1(*v1);
        v14 = *(qword_702B8 + 40);
        *v12 = 136315394;
        *(v12 + 4) = v13;
        *(v12 + 12) = 1024;
        *(v12 + 14) = v14;
        result = __SC_log_send();
      }

      *(v1 + 8) = 0;
      if (!*(qword_702B8 + 40))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v15 = _os_log_pack_size();
          __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
          v23 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }

        return timer_set_relative(*(qword_702B8 + 48), 1, 0, sub_50F90, 0, 0, 0);
      }
    }
  }

  return result;
}

uint64_t sub_4F270(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  memset(v72, 0, sizeof(v72));
  v6 = &off_70000;
  if (*(qword_702B8 + 32) || *(qword_702B8 + 56) != 1)
  {
    v18 = *(a1 + 8);
    if (v18 || (v34 = sub_4ECF0(a1), !v34))
    {
      if (byte_702B0 == 1)
      {
        Mutable = CFStringCreateMutable(0, 0);
        DHCPv6PacketPrintToString(Mutable, a2, a3);
        v20 = sub_5BC3C(a2, a3, v72);
        *v71 = v20;
        if (v20)
        {
          sub_5BCA4(Mutable, v20);
          sub_5BC54(v71);
        }

        else
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v45 = _os_log_pack_size();
            v70 = &v69;
            __chkstk_darwin(v45, v46, v47, v48, v49, v50, v51, v52);
            v53 = *__error();
            v6 = &off_70000;
            v54 = _os_log_pack_fill();
            *v54 = 136315138;
            *(v54 + 4) = v72;
            __SC_log_send();
          }
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v55 = _os_log_pack_size();
          v70 = &v69;
          __chkstk_darwin(v55, v56, v57, v58, v59, v60, v61, v62);
          v63 = *__error();
          v64 = _os_log_pack_fill();
          v65 = nullsub_1(*a1);
          *v64 = 136315394;
          *(v64 + 4) = v65;
          *(v64 + 12) = 2112;
          *(v64 + 14) = Mutable;
          v6 = &off_70000;
          __SC_log_send();
        }

        CFRelease(Mutable);
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v21 = _os_log_pack_size();
          v70 = &v69;
          __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
          v29 = *__error();
          v30 = _os_log_pack_fill();
          v31 = nullsub_1(*a1);
          v32 = DHCPv6MessageTypeName(*a2);
          v33 = *a2;
          *v30 = 136315906;
          *(v30 + 4) = v31;
          *(v30 + 12) = 2080;
          *(v30 + 14) = v32;
          *(v30 + 22) = 1024;
          *(v30 + 24) = v33;
          *(v30 + 28) = 1024;
          *(v30 + 30) = a3;
          v6 = &off_70000;
          __SC_log_send();
        }
      }

      v66 = sub_5A18(*(v6[87] + 4));
      v67 = sub_144D8(*a1);
      *v71 = xmmword_5D1B8;
      *&v71[12] = *(&xmmword_5D1B8 + 12);
      *&v71[2] = bswap32(word_70106) >> 16;
      v17 = sub_5A000(v66, v67, v71, a2, a3, -1);
      if ((v18 & 1) == 0)
      {
        sub_4EF64(a1);
      }
    }

    else
    {
      v17 = v34;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v35 = _os_log_pack_size();
        __chkstk_darwin(v35, v36, v37, v38, v39, v40, v41, v42);
        v43 = *__error();
        v44 = _os_log_pack_fill();
        *v44 = 136315138;
        *(v44 + 4) = "DHCPv6SocketTransmit";
        __SC_log_send();
      }
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 136315138;
      *(v16 + 4) = "DHCPv6SocketTransmit";
      __SC_log_send();
    }

    return 0;
  }

  return v17;
}

uint64_t sub_4F818()
{
  if (*(qword_702B8 + 56) == 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      __chkstk_darwin(v0, v1, v2, v3, v4, v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      *v9 = 136315138;
      *(v9 + 4) = "DHCPv6SocketOpenSocketFD";
      __SC_log_send();
    }

    return 0;
  }

  v10 = sub_4FB00(word_70104);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v10;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "DHCPv6SocketOpenSocketFD";
      *(v21 + 12) = 1024;
      *(v21 + 14) = v11;
      __SC_log_send();
    }

    sub_501A4(v11);
    return 0;
  }

  v22 = *__error();
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v24 = _os_log_pack_size();
    __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
    v32 = *__error();
    v33 = _os_log_pack_fill();
    v34 = strerror(v22);
    *v33 = 136315394;
    *(v33 + 4) = "DHCPv6SocketOpenSocketFD";
    *(v33 + 12) = 2080;
    *(v33 + 14) = v34;
    __SC_log_send();
  }

  return v22;
}

uint64_t sub_4FB00(unsigned int a1)
{
  v83 = 1;
  v2 = socket(30, 2, 0);
  v3 = v2;
  if ((v2 & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return v3;
    }

    v16 = _os_log_pack_size();
    __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
    v24 = *__error();
LABEL_9:
    v25 = _os_log_pack_fill();
    v26 = __error();
    v27 = strerror(*v26);
    *v25 = 136315138;
    *(v25 + 4) = v27;
    __SC_log_send();
    return v3;
  }

  *&v84.sa_len = 7680;
  *&v84.sa_data[6] = 0;
  v86 = 0;
  v85 = 0;
  *v84.sa_data = __rev16(a1);
  if (bind(v2, &v84, 0x1Cu))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_6:
      close(v3);
      return 0xFFFFFFFFLL;
    }

    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
LABEL_5:
    v13 = _os_log_pack_fill();
    v14 = __error();
    v15 = strerror(*v14);
    *v13 = 136315138;
    *(v13 + 4) = v15;
    __SC_log_send();
    goto LABEL_6;
  }

  if (ioctl(v3, 0x8004667EuLL, &v83) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (setsockopt(v3, 41, 61, &v83, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_6;
    }

LABEL_26:
    v74 = _os_log_pack_size();
    __chkstk_darwin(v74, v75, v76, v77, v78, v79, v80, v81);
    v82 = *__error();
    goto LABEL_5;
  }

  if (setsockopt(v3, 0xFFFF, 4356, &v83, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v29 = _os_log_pack_size();
      __chkstk_darwin(v29, v30, v31, v32, v33, v34, v35, v36);
      v37 = *__error();
      v38 = _os_log_pack_fill();
      v39 = __error();
      v40 = strerror(*v39);
      *v38 = 136315138;
      *(v38 + 4) = v40;
      __SC_log_send();
    }
  }

  v83 = 900;
  if (setsockopt(v3, 0xFFFF, 4230, &v83, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v41 = _os_log_pack_size();
      __chkstk_darwin(v41, v42, v43, v44, v45, v46, v47, v48);
      v49 = *__error();
      v50 = _os_log_pack_fill();
      v51 = __error();
      v52 = strerror(*v51);
      *v50 = 136315138;
      *(v50 + 4) = v52;
      __SC_log_send();
    }
  }

  v83 = 0;
  if (setsockopt(v3, 0xFFFF, 4352, &v83, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v53 = _os_log_pack_size();
      __chkstk_darwin(v53, v54, v55, v56, v57, v58, v59, v60);
      v61 = *__error();
      v62 = _os_log_pack_fill();
      v63 = __error();
      v64 = strerror(*v63);
      *v62 = 136315138;
      *(v62 + 4) = v64;
      __SC_log_send();
    }
  }

  v83 = 0;
  if (setsockopt(v3, 41, 11, &v83, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v65 = _os_log_pack_size();
      __chkstk_darwin(v65, v66, v67, v68, v69, v70, v71, v72);
      v73 = *__error();
      goto LABEL_9;
    }
  }

  return v3;
}

char *sub_501A4(int a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315394;
    *(v11 + 4) = "DHCPv6SocketEnableReceiveCallBack";
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1;
    __SC_log_send();
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_50340;
  v13[3] = &unk_691E0;
  v14 = a1;
  result = sub_C92C(a1, sub_505E4, 0, 0, v13);
  *(qword_702B8 + 32) = result;
  return result;
}

uint64_t sub_50348(uint64_t a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315394;
    *(v11 + 4) = "DHCPv6SocketFDComplete";
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1;
    __SC_log_send();
  }

  v12 = qword_702B8;
  *(qword_702B8 + 56) = 0;
  v13 = *(v12 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  v14 = __SC_log_enabled();
  if (v13 < 1)
  {
    if (v14)
    {
      v26 = _os_log_pack_size();
      __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
      v34 = *__error();
      v35 = _os_log_pack_fill();
      *v35 = 136315394;
      *(v35 + 4) = "DHCPv6SocketFDComplete";
      *(v35 + 12) = 1024;
      *(v35 + 14) = a1;
      __SC_log_send();
    }

    return close(a1);
  }

  else
  {
    if (v14)
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
      v23 = *__error();
      v24 = _os_log_pack_fill();
      *v24 = 136315394;
      *(v24 + 4) = "DHCPv6SocketFDComplete";
      *(v24 + 12) = 1024;
      *(v24 + 14) = a1;
      __SC_log_send();
    }

    return sub_501A4(a1);
  }
}

void sub_505E4()
{
  v39 = 0;
  v40[0] = 0;
  v41 = 0;
  v40[1] = 0;
  *&v38.msg_namelen = 28;
  v42[0] = v43;
  v42[1] = 1500;
  v38.msg_name = &v39;
  v38.msg_iov = v42;
  *&v38.msg_iovlen = 1;
  v38.msg_control = &v44;
  *&v38.msg_controllen = 32;
  v0 = sub_5A18(*(qword_702B8 + 32));
  v1 = recvmsg(v0, &v38, 0);
  if (v1 < 0)
  {
    v16 = *__error();
    if (v16 != 35)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v17 = _os_log_pack_size();
        __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
        v25 = *__error();
        v26 = _os_log_pack_fill();
        v27 = __error();
        v28 = strerror(*v27);
        *v26 = 136315394;
        *(v26 + 4) = v28;
        *(v26 + 12) = 1024;
        *(v26 + 14) = v16;
        __SC_log_send();
      }

      if (v16 == 57)
      {
        sub_509A8();
      }
    }
  }

  else
  {
    v2 = v1;
    if (v1)
    {
      if (v38.msg_controllen < 0xC)
      {
        goto LABEL_21;
      }

      msg_control = v38.msg_control;
      if (!v38.msg_control)
      {
        goto LABEL_21;
      }

      v4 = 0;
      do
      {
        if (msg_control[1] == 41)
        {
          if (msg_control[2] == 46)
          {
            if (*msg_control >= 0x20)
            {
              v4 = msg_control + 3;
            }
          }

          else
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v5 = _os_log_pack_size();
              __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
              v13 = *__error();
              v14 = _os_log_pack_fill();
              v15 = msg_control[2];
              *v14 = 67109120;
              v14[1] = v15;
              __SC_log_send();
            }
          }
        }

        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
      }

      while ((msg_control + 3) <= v38.msg_control + v38.msg_controllen);
      if (v4)
      {
        sub_50B1C(v4[4], v40, v43, v2);
      }

      else
      {
LABEL_21:
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v29 = _os_log_pack_size();
          __chkstk_darwin(v29, v30, v31, v32, v33, v34, v35, v36);
          v37 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }
      }
    }
  }
}

void sub_509A8()
{
  v0 = qword_702B8;
  if (*(qword_702B8 + 56) == 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3, v4, v5, v6, v7, v8);
      v9 = *__error();
      v10 = _os_log_pack_fill();
      *v10 = 136315138;
      *(v10 + 4) = "DHCPv6SocketScheduleClose";
      __SC_log_send();
    }
  }

  else
  {
    *(qword_702B8 + 56) = 1;

    sub_2B78((v0 + 32));
  }
}

void sub_50B1C(int a1, const void *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 >= 4)
  {
    memset(v60, 0, sizeof(v60));
    v57[0] = a3;
    v57[1] = a4;
    v58 = sub_5BC3C(a3, a4, v60);
    if (v58)
    {
      if (sub_295C(qword_702B8) >= 1)
      {
        v8 = 0;
        while (1)
        {
          v9 = sub_42C0(qword_702B8, v8);
          if (sub_144D8(*v9) == a1)
          {
            v10 = *(v9 + 3);
            if (v10 == DHCPv6PacketGetTransactionID(a3))
            {
              break;
            }
          }

          if (++v8 >= sub_295C(qword_702B8))
          {
            goto LABEL_21;
          }
        }

        if (byte_702B0 == 1)
        {
          Mutable = CFStringCreateMutable(0, 0);
          DHCPv6PacketPrintToString(Mutable, a3, a4);
          sub_5BCA4(Mutable, v58);
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v22 = _os_log_pack_size();
            v56 = &v52;
            __chkstk_darwin(v22, v23, v24, v25, v26, v27, v28, v29);
            v30 = *__error();
            v31 = _os_log_pack_fill();
            v32 = nullsub_1(*v9);
            v33 = inet_ntop(30, a2, v59, 0x2Eu);
            *v31 = 136315650;
            *(v31 + 4) = v32;
            *(v31 + 12) = 2080;
            *(v31 + 14) = v33;
            *(v31 + 22) = 2112;
            *(v31 + 24) = Mutable;
            __SC_log_send();
          }

          CFRelease(Mutable);
        }

        else
        {
          v34 = sub_2424();
          v35 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v36 = _os_log_pack_size();
            v56 = &v52;
            __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
            v44 = *__error();
            v45 = _os_log_pack_fill();
            v53 = nullsub_1(*v9);
            v46 = DHCPv6MessageTypeName(*a3);
            v55 = v34;
            v47 = v46;
            v54 = v35;
            v48 = *a3;
            TransactionID = DHCPv6PacketGetTransactionID(a3);
            v50 = inet_ntop(30, a2, v59, 0x2Eu);
            *v45 = 136316418;
            *(v45 + 4) = v53;
            *(v45 + 12) = 2080;
            *(v45 + 14) = v47;
            *(v45 + 22) = 1024;
            *(v45 + 24) = v48;
            *(v45 + 28) = 1024;
            *(v45 + 30) = a4;
            *(v45 + 34) = 1024;
            *(v45 + 36) = TransactionID;
            *(v45 + 40) = 2080;
            *(v45 + 42) = v50;
            __SC_log_send();
          }
        }

        v51 = v9[2];
        if (v51)
        {
          v51(v9[3], v9[4], v57);
        }
      }

LABEL_21:
      sub_5BC54(&v58);
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
        v19 = *__error();
        v20 = _os_log_pack_fill();
        *v20 = 136315138;
        *(v20 + 4) = v60;
        __SC_log_send();
      }
    }
  }
}

void sub_50F90()
{
  if (!*(qword_702B8 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    goto LABEL_6;
  }

  v0 = *(qword_702B8 + 40);
  sub_2424();
  if (v0 >= 1)
  {
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

LABEL_6:
    v1 = _os_log_pack_size();
    __chkstk_darwin(v1, v2, v3, v4, v5, v6, v7, v8);
    v9 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
    return;
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    v20 = sub_5A18(*(qword_702B8 + 32));
    *v19 = 67109120;
    v19[1] = v20;
    __SC_log_send();
  }

  sub_509A8();
}

uint64_t sub_511E4(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  if (a2 == 15)
  {
    sub_51480(a1, a3);
  }

  else
  {
    v7 = v6;
    if (a2 == 1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
        v29 = *__error();
        v30 = _os_log_pack_fill();
        v31 = sub_2AEC8(a1);
        v32 = nullsub_1(v7);
        *v30 = 136315394;
        *(v30 + 4) = v31;
        *(v30 + 12) = 2080;
        *(v30 + 14) = v32;
        __SC_log_send();
      }
    }

    else if (!a2)
    {
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        v18 = sub_2AEC8(a1);
        v19 = nullsub_1(v7);
        *v17 = 136315394;
        *(v17 + 4) = v18;
        *(v17 + 12) = 2080;
        *(v17 + 14) = v19;
        __SC_log_send();
      }

      v20 = sub_144D8(v7);
      sub_16718(v34, v20);
      sub_51480(a1, v34);
      sub_17B18(v34);
    }
  }

  return 0;
}

void sub_51480(uint64_t a1, uint64_t a2)
{
  v3 = sub_17B0C(a2);
  if (v3 && (*(v3 + 20) & 6) == 0)
  {

    sub_1C4B0(a1, v3, 1, 0, 0, 0, 0);
  }

  else
  {

    sub_102A4(a1, 0x12u);
  }
}

uint64_t sub_51508(int a1)
{
  v65 = 1;
  v2 = socket(30, 3, 58);
  if ((v2 & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v40 = _os_log_pack_size();
      __chkstk_darwin(v40, v41, v42, v43, v44, v45, v46, v47);
      v48 = *__error();
      v49 = _os_log_pack_fill();
      v50 = __error();
      v51 = strerror(*v50);
      *v49 = 136315138;
      *(v49 + 4) = v51;
      __SC_log_send();
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if (ioctl(v2, 0x8004667EuLL, &v65) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (setsockopt(v3, 0xFFFF, 4356, &v65, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = __error();
      v15 = strerror(*v14);
      *v13 = 136315138;
      *(v13 + 4) = v15;
      __SC_log_send();
    }
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (setsockopt(v3, 41, 61, &v65, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (setsockopt(v3, 41, 37, &v65, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_22:
      v52 = _os_log_pack_size();
      __chkstk_darwin(v52, v53, v54, v55, v56, v57, v58, v59);
      v60 = *__error();
      v61 = _os_log_pack_fill();
      v62 = __error();
      v63 = strerror(*v62);
      *v61 = 136315138;
      *(v61 + 4) = v63;
      __SC_log_send();
    }

LABEL_23:
    close(v3);
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  v65 = 900;
  if (setsockopt(v3, 0xFFFF, 4230, &v65, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v16 = _os_log_pack_size();
      __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      v26 = __error();
      v27 = strerror(*v26);
      *v25 = 136315138;
      *(v25 + 4) = v27;
      __SC_log_send();
    }
  }

  v65 = 0;
  if (setsockopt(v3, 0xFFFF, 4352, &v65, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v28 = _os_log_pack_size();
      __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      v38 = __error();
      v39 = strerror(*v38);
      *v37 = 136315138;
      *(v37 + 4) = v39;
      __SC_log_send();
    }
  }

  return v3;
}

uint64_t sub_51B0C(int a1, int a2, uint64_t a3, int a4, __int128 *a5)
{
  v10 = 0x2000000088;
  v11 = *a5;
  if (a3)
  {
    if (((a4 + 2) & 7) != 0)
    {
      v7 = a4 - ((a4 + 2) & 7) + 10;
    }

    else
    {
      v7 = a4 + 2;
    }

    v12 = 2;
    v13 = v7 / 8;
    __memmove_chk();
    v8 = v7 + 24;
  }

  else
  {
    v8 = 24;
  }

  return sub_5A000(a1, a2, &unk_5D1D4, &v10, v8, 255);
}

uint64_t sub_51BFC(void *a1, int a2, uint64_t *a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  if (a2 == 7)
  {
    v34 = *a3;
    v35 = a1;
LABEL_17:
    sub_52498(v35, v34);
    return 0;
  }

  v8 = v7;
  if (a2 == 1)
  {
    v61 = 0uLL;
    sub_2424();
    _SC_syslog_os_log_mapping();
    v20 = __SC_log_enabled();
    if (!v8)
    {
      if (v20)
      {
        v38 = _os_log_pack_size();
        __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45);
        v46 = *__error();
        v47 = _os_log_pack_fill();
        v48 = nullsub_1(v6);
        *v47 = 136315138;
        *(v47 + 4) = v48;
        goto LABEL_23;
      }

      return 6;
    }

    if (v20)
    {
      v21 = _os_log_pack_size();
      __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      v31 = nullsub_1(v6);
      *v30 = 136315138;
      *(v30 + 4) = v31;
      __SC_log_send();
    }

    sub_52A38(a1, 0);
    v32 = *v8;
    if (*v8)
    {
      *(&v61 + 4) = 0x1000000;
      HIDWORD(v61) = 0x1000000;
      LOWORD(v61) = 544;
      *(&v61 + 2) = v32;
      sub_2C7AC(a1, &v61, 16);
    }

    v33 = *(v8 + 48);
    if (v33)
    {
      SCDynamicStoreSetDispatchQueue(v33, 0);
    }

    sub_41E8((v8 + 48));
    sub_41E8((v8 + 40));
    sub_151FC(a1, 0);
    free(v8);
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  if ((sub_10EE8(v6) & 8) != 0)
  {
    return 4;
  }

  if (v8)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = nullsub_1(v6);
      *v18 = 136315138;
      *(v18 + 4) = v19;
LABEL_23:
      __SC_log_send();
      return 6;
    }

    return 6;
  }

  v49 = malloc_type_malloc(0x38uLL, 0x10700401F685EB6uLL);
  if (v49)
  {
    v49[6] = 0;
    *(v49 + 1) = 0u;
    *(v49 + 2) = 0u;
    *v49 = 0u;
    sub_151FC(a1, v49);
    sub_52070(a1);
    sub_52298(a1);
    v35 = a1;
    v34 = a3;
    goto LABEL_17;
  }

  sub_2424();
  v36 = 5;
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v50 = _os_log_pack_size();
    __chkstk_darwin(v50, v51, v52, v53, v54, v55, v56, v57);
    v58 = *__error();
    v59 = _os_log_pack_fill();
    v60 = nullsub_1(v6);
    *v59 = 136315138;
    *(v59 + 4) = v60;
    v36 = 5;
    __SC_log_send();
  }

  return v36;
}

void sub_52070(uint64_t a1)
{
  v1 = sub_1690(a1);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v2 = sub_144D8(v1);
  sub_16718(v19, v2);
  if (DWORD2(v19[0]))
  {
    if (SDWORD2(v19[0]) >= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v5 = _os_log_pack_size();
          __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          v15 = nullsub_1(v1);
          v16 = inet_ntop(30, (*&v19[0] + v3), v21, 0x2Eu);
          v17 = *(*&v19[0] + v3 + 16);
          *v14 = 136315650;
          *(v14 + 4) = v15;
          *(v14 + 12) = 2080;
          *(v14 + 14) = v16;
          *(v14 + 22) = 1024;
          *(v14 + 24) = v17;
          __SC_log_send();
        }

        v18 = nullsub_1(v1);
        sub_41CE4(v18, (*&v19[0] + v3));
        ++v4;
        v3 += 32;
      }

      while (v4 < SDWORD2(v19[0]));
    }

    sub_17B18(v19);
  }
}

void sub_52298(void *a1)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  v2 = sub_1688(a1);
  context.info = a1;
  *(v2 + 48) = SCDynamicStoreCreate(0, @"IPConfiguration:STF", sub_52DC4, &context);
  values = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
  v3 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  SCDynamicStoreSetNotificationKeys(*(v2 + 48), v3, 0);
  CFRelease(v3);
  v4 = *(v2 + 48);
  v5 = sub_CB80();
  if (!SCDynamicStoreSetDispatchQueue(v4, v5))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136315138;
      *(v15 + 4) = "stf_configure_address";
      __SC_log_send();
    }
  }

  v18 = sub_52E48(*(v2 + 48), values);
  sub_52F14(a1, v18, values);
  CFRelease(values);
  sub_41E8(&v18);
}

void sub_52498(void *a1, uint64_t a2)
{
  v4 = sub_1688(a1);
  v5 = sub_1690(a1);
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = *a2;
  if (*a2 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 8);
        *&v80[4] = 0;
        *&v80[12] = 0;
        *v80 = 544;
        *&v80[2] = v7;
        sub_52A38(a1, 0);
        v9 = *(v4 + 4);
        v8 = v4 + 4;
        if (*v80 != v9 || *(v8 + 8) != 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v11 = _os_log_pack_size();
            __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
            v19 = *__error();
            v20 = _os_log_pack_fill();
            v21 = nullsub_1(v5);
            v22 = *(a2 + 8);
            v23 = *(a2 + 9);
            v24 = *(a2 + 10);
            v25 = *(a2 + 11);
            *v20 = 136316162;
            *(v20 + 4) = v21;
            *(v20 + 12) = 1024;
            *(v20 + 14) = v22;
            *(v20 + 18) = 1024;
            *(v20 + 20) = v23;
            *(v20 + 24) = 1024;
            *(v20 + 26) = v24;
            *(v20 + 30) = 1024;
            *(v20 + 32) = v25;
            __SC_log_send();
          }

          v26 = *v80;
LABEL_16:
          *v8 = v26;
          sub_53448(a1);
          return;
        }

        return;
      }

LABEL_25:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v52 = _os_log_pack_size();
        __chkstk_darwin(v52, v53, v54, v55, v56, v57, v58, v59);
        v60 = *__error();
        v61 = _os_log_pack_fill();
        v62 = nullsub_1(v5);
        *v61 = 136315394;
        *(v61 + 4) = v62;
        *(v61 + 12) = 1024;
        *(v61 + 14) = v6;
        __SC_log_send();
      }

      return;
    }

LABEL_12:
    sub_52A38(a1, 0);
    v27 = *(v4 + 4);
    v8 = v4 + 4;
    if (!(v27 ^ 0x16358C00220 | *(v8 + 8)))
    {
      return;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v28 = _os_log_pack_size();
      __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      v38 = nullsub_1(v5);
      *v37 = 136315138;
      *(v37 + 4) = v38;
      __SC_log_send();
    }

    v26 = xmmword_5D1F8;
    goto LABEL_16;
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v39 = *(v4 + 24);
      if (!v39 || strcmp(v39, *(a2 + 8)))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v40 = _os_log_pack_size();
          __chkstk_darwin(v40, v41, v42, v43, v44, v45, v46, v47);
          v48 = *__error();
          v49 = _os_log_pack_fill();
          v50 = nullsub_1(v5);
          v51 = *(a2 + 8);
          *v49 = 136315394;
          *(v49 + 4) = v50;
          *(v49 + 12) = 2080;
          *(v49 + 14) = v51;
          __SC_log_send();
        }

        sub_52A38(a1, *(a2 + 8));
      }

      return;
    }

    goto LABEL_25;
  }

  sub_52A38(a1, 0);
  v63 = *(a2 + 8);
  v64 = *(a2 + 16);
  v65 = (a2 + 8);
  v66 = *(v4 + 4);
  v8 = v4 + 4;
  if (v63 != v66 || v64 != *(v8 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v68 = _os_log_pack_size();
      __chkstk_darwin(v68, v69, v70, v71, v72, v73, v74, v75);
      v76 = *__error();
      v77 = _os_log_pack_fill();
      v78 = nullsub_1(v5);
      v79 = inet_ntop(30, v65, v80, 0x2Eu);
      *v77 = 136315394;
      *(v77 + 4) = v78;
      *(v77 + 12) = 2080;
      *(v77 + 14) = v79;
      __SC_log_send();
    }

    v26 = *v65;
    goto LABEL_16;
  }
}

void sub_52A38(void *a1, const char *a2)
{
  memset(&context, 0, sizeof(context));
  v4 = sub_1690(a1);
  v5 = sub_1688(a1);
  v6 = *(v5 + 24);
  if (v6)
  {
    free(v6);
    *(v5 + 24) = 0;
  }

  v8 = (v5 + 32);
  v7 = *(v5 + 32);
  if (v7)
  {
    SCNetworkReachabilitySetDispatchQueue(v7, 0);
    sub_41E8((v5 + 32));
  }

  if (a2)
  {
    v9 = SCNetworkReachabilityCreateWithName(0, a2);
    *v8 = v9;
    if (v9)
    {
      context.info = a1;
      if (!SCNetworkReachabilitySetCallback(v9, sub_53538, &context))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v10 = _os_log_pack_size();
          __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
          v18 = *__error();
          v19 = _os_log_pack_fill();
          v20 = nullsub_1(v4);
          v21 = SCError();
          v22 = SCErrorString(v21);
          *v19 = 136315394;
          *(v19 + 4) = v20;
          *(v19 + 12) = 2080;
          *(v19 + 14) = v22;
          __SC_log_send();
        }

        sub_41E8((v5 + 32));
      }

      v23 = *v8;
      v24 = sub_CB80();
      SCNetworkReachabilitySetDispatchQueue(v23, v24);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v25 = _os_log_pack_size();
        __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        v35 = nullsub_1(v4);
        *v34 = 136315394;
        *(v34 + 4) = v35;
        *(v34 + 12) = 2080;
        *(v34 + 14) = a2;
        __SC_log_send();
      }

      *(v5 + 24) = strdup(a2);
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v36 = _os_log_pack_size();
        __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
        v44 = *__error();
        v45 = _os_log_pack_fill();
        v46 = nullsub_1(v4);
        v47 = SCError();
        v48 = SCErrorString(v47);
        *v45 = 136315394;
        *(v45 + 4) = v46;
        *(v45 + 12) = 2080;
        *(v45 + 14) = v48;
        __SC_log_send();
      }
    }
  }
}

void sub_52DC4(const __SCDynamicStore *a1, CFArrayRef theArray, uint64_t a3)
{
  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v7 = sub_52E48(a1, ValueAtIndex);
      sub_52F14(a3, v7, ValueAtIndex);
      sub_41E8(&v7);
    }
  }
}

CFDictionaryRef sub_52E48(const __SCDynamicStore *a1, void *a2)
{
  values = a2;
  v3 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  cf = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
  v4 = CFArrayCreate(0, &cf, 1, &kCFTypeArrayCallBacks);
  CFRelease(cf);
  v5 = SCDynamicStoreCopyMultiple(a1, v3, v4);
  CFRelease(v3);
  CFRelease(v4);
  return v5;
}

void sub_52F14(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  v50 = 0;
  v6 = sub_1688(a1);
  if (!a2 || (Value = CFDictionaryGetValue(a2, a3), TypeID = CFDictionaryGetTypeID(), !Value) || CFGetTypeID(Value) != TypeID)
  {
    CFStringGetTypeID();
    goto LABEL_24;
  }

  v9 = CFDictionaryGetValue(Value, kSCDynamicStorePropNetPrimaryService);
  v10 = CFStringGetTypeID();
  if (!v9 || CFGetTypeID(v9) != v10)
  {
    goto LABEL_24;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, v9, kSCEntNetIPv4);
  v12 = CFDictionaryGetValue(a2, NetworkServiceEntity);
  v13 = CFDictionaryGetTypeID();
  if (!v12 || CFGetTypeID(v12) != v13)
  {
    CFRelease(NetworkServiceEntity);
    goto LABEL_24;
  }

  CFRelease(NetworkServiceEntity);
  v14 = CFDictionaryGetValue(v12, @"NetworkSignature");
  v15 = CFStringGetTypeID();
  if (v14 && CFGetTypeID(v14) != v15)
  {
    v14 = 0;
  }

  v16 = CFDictionaryGetValue(v12, kSCPropNetIPv4Addresses);
  v17 = CFArrayGetTypeID();
  if (!v16)
  {
    goto LABEL_25;
  }

  if (CFGetTypeID(v16) != v17 || CFArrayGetCount(v16) < 1)
  {
LABEL_24:
    v16 = 0;
LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
  LODWORD(v49) = 0;
  v19 = 0;
  v16 = 0;
  if (sub_575A4(ValueAtIndex, &v49))
  {
    if (v49)
    {
      if (v49 != 65193)
      {
        v19 = 0;
        v16 = 0;
        v20 = bswap32(v49);
        if (HIWORD(v20) != 49320 && (v20 & 0xFF000000) != 0xA000000 && (v20 & 0xFFF00000) != 0xAC100000)
        {
          if (v14)
          {
            v16 = CFRetain(v14);
            v50 = v16;
          }

          else
          {
            v16 = 0;
          }

          v19 = v49;
        }
      }
    }
  }

LABEL_26:
  v21 = v19 & 0xFF000000 | (BYTE2(v19) << 16) | (BYTE1(v19) << 8) | v19;
  if (v21)
  {
    if (v21 == *v6)
    {
      goto LABEL_41;
    }

    v49 = 0uLL;
    v22 = sub_1690(a1);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v48 = v16;
      v23 = _os_log_pack_size();
      __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      v33 = nullsub_1(v22);
      *v32 = 136316162;
      *(v32 + 4) = v33;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v19;
      *(v32 + 18) = 1024;
      *(v32 + 20) = BYTE1(v19);
      *(v32 + 24) = 1024;
      *(v32 + 26) = BYTE2(v19);
      *(v32 + 30) = 1024;
      *(v32 + 32) = HIBYTE(v19);
LABEL_32:
      __SC_log_send();
      v16 = v48;
    }
  }

  else
  {
    v49 = 0uLL;
    v34 = sub_1690(a1);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v48 = v16;
      v35 = _os_log_pack_size();
      __chkstk_darwin(v35, v36, v37, v38, v39, v40, v41, v42);
      v43 = *__error();
      v44 = _os_log_pack_fill();
      v45 = nullsub_1(v34);
      *v44 = 136315138;
      *(v44 + 4) = v45;
      goto LABEL_32;
    }
  }

  v46 = *v6;
  if (*v6)
  {
    *(&v49 + 4) = 0x1000000;
    HIDWORD(v49) = 0x1000000;
    LOWORD(v49) = 544;
    *(&v49 + 2) = v46;
    sub_2C7AC(a1, &v49, 16);
  }

  sub_41E8((v6 + 40));
  *v6 = v19;
  if (v21)
  {
    *(&v49 + 4) = 0x1000000;
    HIDWORD(v49) = 0x1000000;
    LOWORD(v49) = 544;
    *(&v49 + 2) = v19 & 0xFF000000 | (BYTE2(v19) << 16) | (BYTE1(v19) << 8) | v19;
    sub_2C4B8(a1, &v49, 16, 0, -1, -1);
    v47 = CFStringGetTypeID();
    if (v16 && CFGetTypeID(v16) == v47)
    {
      *(v6 + 40) = CFRetain(v50);
    }

    sub_53448(a1);
  }

  else
  {
    sub_102A4(a1, 0x12u);
  }

LABEL_41:
  sub_41E8(&v50);
}

void sub_53448(uint64_t a1)
{
  v12 = 0;
  v7 = 0;
  v2 = sub_1688(a1);
  v3 = v2;
  v4 = (v2 + 4);
  if (*(v2 + 4) || *(v2 + 8) || *(v2 + 12) || *(v2 + 16))
  {
    v5 = *v2;
    if (*v2)
    {
      if (*(v2 + 40))
      {
        v6 = CFStringCreateWithFormat(0, 0, @"IPv6.6to4=(%@)", *(v2 + 40), v7);
        v7 = v6;
        v5 = *v3;
      }

      else
      {
        v6 = 0;
      }

      *&v9[2] = 0x1000000;
      v10 = 0x1000000;
      v8 = 544;
      *v9 = v5;
      v11 = 16;
      sub_1C4B0(a1, &v8, 1, v4, 1, 0, v6);
      sub_41E8(&v7);
    }
  }
}

void sub_53538(uint64_t a1, char a2, uint64_t a3)
{
  v50 = 0;
  v5 = sub_1688(a3);
  v6 = sub_1690(a3);
  if ((a2 & 6) == 2)
  {
    v7 = *(v5 + 32);
    v8 = SCNetworkReachabilityCopyResolvedAddress();
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          if (BytePtr[1] == 2)
          {
            v15 = BytePtr;
            if (*(BytePtr + 1))
            {
              break;
            }
          }

          if (v11 == ++v12)
          {
            goto LABEL_18;
          }
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v28 = _os_log_pack_size();
          v48[1] = v48;
          __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
          v36 = *__error();
          v37 = _os_log_pack_fill();
          v38 = nullsub_1(v6);
          v39 = *(v5 + 24);
          v40 = v15[4];
          v41 = v15[5];
          v42 = v15[6];
          v43 = v15[7];
          *v37 = 136316418;
          *(v37 + 4) = v38;
          *(v37 + 12) = 2080;
          *(v37 + 14) = v39;
          *(v37 + 22) = 1024;
          *(v37 + 24) = v40;
          *(v37 + 28) = 1024;
          *(v37 + 30) = v41;
          *(v37 + 34) = 1024;
          *(v37 + 36) = v42;
          *(v37 + 40) = 1024;
          *(v37 + 42) = v43;
          __SC_log_send();
        }

        SCNetworkReachabilitySetDispatchQueue(*(v5 + 32), 0);
        sub_41E8((v5 + 32));
        v44 = *(v15 + 1);
        *(&v49 + 4) = 0;
        HIDWORD(v49) = 0;
        LOWORD(v49) = 544;
        v46 = *(v5 + 4);
        v45 = v5 + 4;
        *(&v49 + 2) = v44;
        if (v46 != v49 || *(v45 + 8) != *(&v49 + 1))
        {
          *v45 = v49;
          sub_53448(a3);
        }
      }

LABEL_18:
      CFRelease(v9);
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v16 = _os_log_pack_size();
      __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      v26 = nullsub_1(v6);
      v27 = *(v5 + 24);
      *v25 = 136315394;
      *(v25 + 4) = v26;
      *(v25 + 12) = 2080;
      *(v25 + 14) = v27;
      __SC_log_send();
    }
  }
}

uint64_t sub_53878(unsigned int a1)
{
  if (!qword_702C0 && !sub_539F8(a1))
  {
    if (a1 == 4)
    {
      memset(v16, 0, sizeof(v16));
      v15.tv_sec = 0;
      v15.tv_nsec = 0;
      v2 = gethostuuid(v16, &v15);
      v3 = 0;
      if (!v2)
      {
        v3 = sub_5B560(v16);
      }
    }

    else
    {
      v3 = sub_53D00(a1);
    }

    qword_702C0 = v3;
    if (v3)
    {
      sub_53F14(v3);
      sub_54074();
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
        v12 = *__error();
        v13 = _os_log_pack_fill();
        *v13 = 136315138;
        *(v13 + 4) = "DHCPDUIDEstablishAndGet";
        __SC_log_send();
      }
    }
  }

  return qword_702C0;
}

BOOL sub_539F8(unsigned int a1)
{
  v2 = sub_572B8("/var/db/dhcpclient/DUID_IA.plist");
  v31 = v2;
  TypeID = CFDictionaryGetTypeID();
  if (v2 && CFGetTypeID(v2) == TypeID)
  {
    Value = CFDictionaryGetValue(v2, @"HostUUID");
    v5 = CFDataGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v5 && CFDataGetLength(Value) == 16)
      {
        v6 = sub_431F4();
        if (v6)
        {
          if (!CFEqual(Value, v6))
          {
            syslog(5, "DHCPDUID: ignoring DUID - host UUID doesn't match", v31);
            goto LABEL_23;
          }
        }
      }
    }

    v7 = CFDictionaryGetValue(v2, @"DUID");
    v8 = CFDataGetTypeID();
    if (v7)
    {
      if (CFGetTypeID(v7) == v8)
      {
        v9 = sub_54358(v7);
        if (v9 == a1)
        {
          v10 = CFDictionaryGetValue(v2, @"IAIDList");
          v11 = CFArrayGetTypeID();
          if (!v10 || CFGetTypeID(v10) != v11)
          {
LABEL_21:
            qword_702C0 = CFRetain(v7);
            goto LABEL_23;
          }

          Count = CFArrayGetCount(v10);
          if (Count >= 1)
          {
            v13 = Count;
            v14 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
              v16 = CFStringGetTypeID();
              if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v16)
              {
                goto LABEL_21;
              }
            }

            while (v13 != ++v14);
          }

          qword_702C0 = CFRetain(v7);
          qword_702C8 = CFArrayCreateMutableCopy(0, 0, v10);
        }

        else
        {
          v17 = v9;
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v18 = _os_log_pack_size();
            __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
            v26 = *__error();
            v27 = _os_log_pack_fill();
            v28 = sub_5B0C8(v17);
            v29 = sub_5B0C8(a1);
            *v27 = 136315906;
            *(v27 + 4) = v28;
            *(v27 + 12) = 1024;
            *(v27 + 14) = v17;
            *(v27 + 18) = 2080;
            *(v27 + 20) = v29;
            *(v27 + 28) = 1024;
            *(v27 + 30) = a1;
            __SC_log_send();
          }
        }
      }
    }
  }

LABEL_23:
  sub_41E8(&v31);
  return qword_702C0 != 0;
}

__CFData *sub_53D00(int a1)
{
  result = get_interface_list();
  if (result)
  {
    v3 = sub_59518(result);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v4 = __SC_log_enabled();
    if (v3)
    {
      if (v4)
      {
        v5 = _os_log_pack_size();
        __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
        v13 = *__error();
        v14 = _os_log_pack_fill();
        v15 = nullsub_1(v3);
        *v14 = 136315138;
        *(v14 + 4) = v15;
        __SC_log_send();
      }

      if (a1 == 3)
      {
        return sub_54250(v3);
      }

      else
      {
        v26 = sub_A840(v3);
        v27 = sub_AD1C(v3);
        v28 = sub_638C(v3);
        return sub_5B48C(v26, v27, v28);
      }
    }

    else
    {
      if (v4)
      {
        v16 = _os_log_pack_size();
        __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
        v24 = *__error();
        v25 = _os_log_pack_fill();
        *v25 = 136315138;
        *(v25 + 4) = "make_DUID_data";
        __SC_log_send();
      }

      return 0;
    }
  }

  return result;
}

void sub_53F14(const __CFData *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  sub_5B0EC(Mutable, BytePtr, Length);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "Established";
    *(v14 + 12) = 2112;
    *(v14 + 14) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
}

void sub_54074()
{
  if (qword_702C0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"DUID", qword_702C0);
    if (qword_702C8)
    {
      CFDictionarySetValue(Mutable, @"IAIDList", qword_702C8);
    }

    v1 = sub_431F4();
    if (v1)
    {
      CFDictionarySetValue(Mutable, @"HostUUID", v1);
    }

    if ((sub_573B8(Mutable, "/var/db/dhcpclient/DUID_IA.plist", 420) & 0x80000000) != 0 && *__error() != 2)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
        v10 = *__error();
        v11 = _os_log_pack_fill();
        v12 = __error();
        v13 = strerror(*v12);
        *v11 = 136315394;
        *(v11 + 4) = "/var/db/dhcpclient/DUID_IA.plist";
        *(v11 + 12) = 2080;
        *(v11 + 14) = v13;
        __SC_log_send();
      }
    }

    CFRelease(Mutable);
  }
}

__CFData *sub_54250(uint64_t a1)
{
  v2 = sub_A840(a1);
  v3 = sub_AD1C(a1);
  v4 = sub_638C(a1);

  return sub_5B404(v2, v3, v4);
}

CFIndex sub_542B0(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (!qword_702C8)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    Count = 0;
    qword_702C8 = Mutable;
LABEL_6:
    CFArrayAppendValue(Mutable, v1);
    sub_54074();
    goto LABEL_7;
  }

  Count = CFArrayGetCount(qword_702C8);
  v6.location = 0;
  v6.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_702C8, v6, v1);
  if (FirstIndexOfValue == -1)
  {
    Mutable = qword_702C8;
    goto LABEL_6;
  }

  Count = FirstIndexOfValue;
LABEL_7:
  CFRelease(v1);
  return Count;
}

uint64_t sub_54358(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (sub_5B3BC(BytePtr, Length))
  {
    return bswap32(*BytePtr) >> 16;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t *sub_54514(uint64_t a1)
{
  v2 = qword_702D0;
  if (!qword_702D0)
  {
    v3 = malloc_type_malloc(0x38uLL, 0x10A004062DB933CuLL);
    if (!v3)
    {
      qword_702D0 = 0;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
        v26 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      return 0;
    }

    v2 = v3;
    v3[6] = 0;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *v3 = 0u;
    sub_592AC(v3, sub_54924, 0);
    *(v2 + 48) = timer_callout_init("RTADVSocket");
    qword_702D0 = v2;
  }

  v4 = sub_144D8(a1);
  if (sub_18E80(v4))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = nullsub_1(a1);
      *v14 = 136315138;
      *(v14 + 4) = v15;
      __SC_log_send();
    }

    return 0;
  }

  v16 = malloc_type_malloc(0x38uLL, 0x10A0040537E56A6uLL);
  v17 = v16;
  if (v16)
  {
    v16[6] = 0;
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    *v16 = 0u;
    if (!sub_59348(v2, v16))
    {
      free(v17);
      return 0;
    }

    *v17 = a1;
  }

  return v17;
}

void sub_547AC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = sub_15194(qword_702D0, v1);
    if (v3 == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
        v12 = *__error();
        v13 = _os_log_pack_fill();
        v14 = nullsub_1(*v1);
        *v13 = 136315138;
        *(v13 + 4) = v14;
        __SC_log_send();
      }
    }

    else
    {
      sub_15190(qword_702D0, v3, 0);
    }

    v1[4] = 0;
    v1[5] = 0;
    v1[6] = 0;
    v1[1] = 0;
    v1[2] = 0;
    sub_54D30(v1);
    free(v1);
    *a1 = 0;
  }
}

void sub_54924(void *a1)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_54D30(a1);

  free(a1);
}

uint64_t sub_54968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = a4;
  result = sub_54AB8(a1);
  if (result)
  {
    v6 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      v17 = nullsub_1(*a1);
      v18 = strerror(v6);
      *v16 = 136315394;
      *(v16 + 4) = v17;
      *(v16 + 12) = 2080;
      *(v16 + 14) = v18;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_54AB8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  timer_cancel(*(qword_702D0 + 48));
  ++*(qword_702D0 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = nullsub_1(*a1);
    v13 = *(qword_702D0 + 40);
    *v11 = 136315650;
    *(v11 + 4) = "RTADVSocketOpenSocket";
    *(v11 + 12) = 2080;
    *(v11 + 14) = v12;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v13;
    __SC_log_send();
  }

  *(a1 + 24) = 1;
  if (*(qword_702D0 + 40) > 1)
  {
    return 0;
  }

  if (*(qword_702D0 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 136315138;
      *(v23 + 4) = "RTADVSocketOpenSocket";
      __SC_log_send();
    }

    return 0;
  }

  v24 = sub_55290();
  if (v24)
  {
    sub_54D30(a1);
  }

  return v24;
}

uint64_t sub_54D20(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return sub_54D30(result);
}

uint64_t sub_54D30(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    v2 = *(qword_702D0 + 40);
    if (v2 <= 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v24 = _os_log_pack_size();
        __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
        v32 = *__error();
        v33 = _os_log_pack_fill();
        v34 = nullsub_1(*v1);
        v35 = *(qword_702D0 + 40);
        *v33 = 136315394;
        *(v33 + 4) = v34;
        *(v33 + 12) = 1024;
        *(v33 + 14) = v35;
        return __SC_log_send();
      }
    }

    else
    {
      *(qword_702D0 + 40) = v2 - 1;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v3 = _os_log_pack_size();
        __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
        v11 = *__error();
        v12 = _os_log_pack_fill();
        v13 = nullsub_1(*v1);
        v14 = *(qword_702D0 + 40);
        *v12 = 136315394;
        *(v12 + 4) = v13;
        *(v12 + 12) = 1024;
        *(v12 + 14) = v14;
        result = __SC_log_send();
      }

      *(v1 + 24) = 0;
      if (!*(qword_702D0 + 40))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v15 = _os_log_pack_size();
          __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
          v23 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }

        return timer_set_relative(*(qword_702D0 + 48), 1, 0, sub_559A4, 0, 0, 0);
      }
    }
  }

  return result;
}

uint64_t sub_55040(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *a1;
  if ((v5 & 1) == 0)
  {
    v7 = sub_54AB8(a1);
    if (v7)
    {
      v8 = v7;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v9 = _os_log_pack_size();
        __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
        v17 = *__error();
        v18 = _os_log_pack_fill();
        v19 = strerror(v8);
        *v18 = 136315138;
        *(v18 + 4) = v19;
        __SC_log_send();
      }

      return v8;
    }

    v6 = *a1;
  }

  v27 = 133;
  if (a2 && sub_E4B8(v6) == 6)
  {
    v20 = (sub_AD1C(v6) + 2) & 7;
    v21 = sub_AD1C(v6);
    if (v20)
    {
      v22 = v21 - ((sub_AD1C(v6) + 2) & 7) + 10;
    }

    else
    {
      v22 = v21 + 2;
    }

    v28 = 1;
    v29 = v22 / 8;
    sub_A840(v6);
    sub_AD1C(v6);
    __memmove_chk();
    v23 = v22 + 8;
  }

  else
  {
    v23 = 8;
  }

  v24 = sub_5A18(*(qword_702D0 + 32));
  v25 = sub_144D8(v4);
  v8 = sub_5A000(v24, v25, &unk_5D218, &v27, v23, 255);
  if ((v5 & 1) == 0)
  {
    sub_54D30(a1);
  }

  return v8;
}

uint64_t sub_55290()
{
  v0 = sub_554A4();
  if (v0 < 0)
  {
    v12 = *__error();
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = strerror(v12);
      *v22 = 136315394;
      *(v22 + 4) = "RTADVSocketOpenSocketFD";
      *(v22 + 12) = 2080;
      *(v22 + 14) = v23;
      __SC_log_send();
    }
  }

  else
  {
    v1 = v0;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      *v11 = 136315394;
      *(v11 + 4) = "RTADVSocketOpenSocketFD";
      *(v11 + 12) = 1024;
      *(v11 + 14) = v1;
      __SC_log_send();
    }

    sub_556D4(v1);
    return 0;
  }

  return v12;
}

uint64_t sub_554A4()
{
  v0 = sub_51508(1);
  if ((v0 & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 0xFFFFFFFFLL;
    }

    v14 = _os_log_pack_size();
    __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
    v22 = *__error();
    v23 = _os_log_pack_fill();
    v24 = __error();
    v25 = strerror(*v24);
    *v23 = 136315138;
    *(v23 + 4) = v25;
    __SC_log_send();
    return 0xFFFFFFFFLL;
  }

  else
  {
    v1 = v0;
    v27 = 0u;
    v28 = 0u;
    LODWORD(v28) = 64;
    if (setsockopt(v0, 58, 18, &v27, 0x20u) == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
        v10 = *__error();
        v11 = _os_log_pack_fill();
        v12 = __error();
        v13 = strerror(*v12);
        *v11 = 136315138;
        *(v11 + 4) = v13;
        __SC_log_send();
      }

      close(v1);
      return 0xFFFFFFFFLL;
    }
  }

  return v1;
}

char *sub_556D4(int a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315394;
    *(v11 + 4) = "RTADVSocketEnableReceiveCallBack";
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1;
    __SC_log_send();
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_55870;
  v13[3] = &unk_69200;
  v14 = a1;
  result = sub_C92C(a1, sub_18168, 0, 0, v13);
  *(qword_702D0 + 32) = result;
  return result;
}

uint64_t sub_55878(int a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315394;
    *(v11 + 4) = "RTADVSocketFDComplete";
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1;
    __SC_log_send();
  }

  return close(a1);
}

void sub_559A4()
{
  if (!*(qword_702D0 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    goto LABEL_6;
  }

  v0 = *(qword_702D0 + 40);
  sub_2424();
  if (v0 >= 1)
  {
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

LABEL_6:
    v1 = _os_log_pack_size();
    __chkstk_darwin(v1, v2, v3, v4, v5, v6, v7, v8);
    v9 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
    return;
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    v20 = sub_5A18(*(qword_702D0 + 32));
    *v19 = 67109120;
    v19[1] = v20;
    __SC_log_send();
  }

  sub_2B78((qword_702D0 + 32));
}

void sub_55C00(uint64_t a1, char a2)
{
  v3 = *(a1 + 26);
  v4 = a2 ^ 1 | v3;
  if (v4)
  {
    sub_41E8(a1);
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  sub_41E8((a1 + 8));
  sub_41E8((a1 + 32));
  sub_41E8((a1 + 40));
  sub_41E8((a1 + 48));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if ((v4 & 1) == 0)
  {
    *a1 = v5;
    *(a1 + 26) = v3;
  }
}

void sub_55C8C(const void **a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  sub_41E8(a1);
  *a1 = cf;
}

void sub_55CC8(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  sub_41E8((a1 + 8));
  *(a1 + 8) = cf;
}

void sub_55D1C(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  sub_41E8((a1 + 32));
  *(a1 + 32) = cf;
}

CFDateRef sub_55D58(uint64_t a1)
{
  sub_41E8((a1 + 40));
  Current = CFAbsoluteTimeGetCurrent();
  result = CFDateCreate(0, Current);
  *(a1 + 40) = result;
  return result;
}

void sub_55D90(const void **a1)
{
  v45 = 0;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "PvDInfoContextCalculateEffectiveExpiration";
    __SC_log_send();
  }

  v12 = a1[4];
  if (v12)
  {
    Value = CFDictionaryGetValue(a1[4], @"expires");
    atp = 0.0;
    v14 = CFLocaleCreate(0, @"en_US_POSIX");
    v48 = v14;
    if (v14 && (v15 = CFDateFormatterCreate(0, v14, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle)) != 0)
    {
      v16 = v15;
      CFDateFormatterSetFormat(v15, @"yyyy-MM-dd'T'HH:mm:ss'Z'");
      sub_41E8(&v48);
      v47 = v16;
      if (CFDateFormatterGetAbsoluteTimeFromString(v16, Value, 0, &atp))
      {
        v17 = (CFAbsoluteTimeGetCurrent() + atp) * 0.5;
        v18 = atp - v17;
        if (atp - v17 > 4294967300.0)
        {
          v18 = 4294967300.0;
        }

        v19 = v17 + arc4random_uniform(v18);
        v20 = CFDateCreate(0, v19);
        if (v20)
        {
          v21 = v20;
          StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v16, v19);
          v45 = StringWithAbsoluteTime;
          sub_41E8(&v47);
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v23 = _os_log_pack_size();
            __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30);
            v31 = *__error();
            v32 = _os_log_pack_fill();
            v33 = *a1;
            *v32 = 136315650;
            *(v32 + 4) = "PvDInfoContextCalculateEffectiveExpiration";
            *(v32 + 12) = 2112;
            *(v32 + 14) = v33;
            *(v32 + 22) = 2112;
            *(v32 + 24) = StringWithAbsoluteTime;
            __SC_log_send();
          }

          sub_41E8(a1 + 6);
          a1[6] = v21;
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_41E8(&v48);
      v47 = 0;
    }

    sub_41E8(&v47);
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v34 = _os_log_pack_size();
    __chkstk_darwin(v34, v35, v36, v37, v38, v39, v40, v41);
    v42 = *__error();
    v43 = _os_log_pack_fill();
    v44 = *a1;
    *v43 = 136315650;
    *(v43 + 4) = "PvDInfoContextCalculateEffectiveExpiration";
    *(v43 + 12) = 2112;
    *(v43 + 14) = v44;
    *(v43 + 22) = 2112;
    *(v43 + 24) = v12;
    __SC_log_send();
  }

  sub_41E8(a1 + 6);
LABEL_18:
  sub_41E8(&v45);
}

uint64_t sub_56170(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 20023) >= 0xFFFFFFE9)
  {
    return *(&_ipconfig_subsystem + 5 * (v1 - 20000) + 5);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_561AC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_3C4B0(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_56228(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 52)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_3C4DC(result[3], (result + 8), result[12], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_562E0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_3C478(result[3], (result + 8), (a2 + 36), (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

uint64_t sub_56368(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3C51C(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_56454(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = sub_3C69C(v5, (result + 52), v6, v3, (a2 + 36), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56544(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 56);
  v5 = *(result + 72);
  result = sub_3C874(*(result + 12), *(result + 32), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56600(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = sub_3C884(v5, (result + 52), v6, v3, (a2 + 36), (a2 + 164), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 168;
  }

  return result;
}

uint64_t sub_566F4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 76)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 72)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_3CC78(*(result + 12), result + 52, *(result + 68), *(result + 28), v3, (a2 + 36), (a2 + 164));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 168;
  }

  return result;
}

uint64_t sub_567B4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = sub_3CDA8(v5, result + 52, v6, v3, (a2 + 36), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_568A4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = _ipconfig_set_service(v5, (result + 52), v6, v3, (a2 + 36), (a2 + 164), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 168;
  }

  return result;
}

uint64_t sub_56998(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3C5DC(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_56A84(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 176)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 176) || *(result + 180) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 212);
  v6[0] = *(result + 196);
  v6[1] = v5;
  result = sub_3CBF8(v4, result + 32, result + 48, (a2 + 36), v6);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56B44(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 176)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 176) || *(result + 180) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 212);
  v6[0] = *(result + 196);
  v6[1] = v5;
  result = sub_3CED8(v4, result + 32, result + 48, (a2 + 36), v6);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56C04(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = sub_3CF84(v5, result + 52, v6, v3, (a2 + 36), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56CF4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3D0CC(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_56DE0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3D18C(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_56ECC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_3D358(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_56F78(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_3D4AC(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_57024(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_3D4E0(*(result + 12), (result + 32), (a2 + 36), (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

_DWORD *sub_570AC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 176)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_3CF48(result[3], (result + 8), (result + 12), (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_57134(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3D518(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_57220(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 20023) >= 0xFFFFFFE9 && (v5 = *(&_ipconfig_subsystem + 5 * (v4 - 20000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

CFPropertyListRef sub_572B8(const char *a1)
{
  memset(&v11, 0, sizeof(v11));
  if (stat(a1, &v11) < 0)
  {
    return 0;
  }

  st_size = v11.st_size;
  if (!v11.st_size)
  {
    return 0;
  }

  v3 = malloc_type_malloc(v11.st_size, 0xE6DA7C8BuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = open(a1, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    read(v5, v4, st_size);
    close(v6);
  }

  v7 = CFDataCreateWithBytesNoCopy(0, v4, st_size, kCFAllocatorNull);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  free(v4);
  return v9;
}

uint64_t sub_573B8(CFPropertyListRef propertyList, const std::__fs::filesystem::path *a2, uint64_t a3)
{
  if (!propertyList)
  {
    return 0;
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 0;
  }

  v6 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  __nbyte = CFDataGetLength(v6);
  snprintf(__str, 0x400uLL, "%s-", a2);
  v8 = 5;
  while (1)
  {
    if (unlink(__str))
    {
      v9 = __stderrp;
      v10 = __error();
      v11 = strerror(*v10);
      fprintf(v9, "unlink(%s) failed, %s\n", __str, v11);
    }

    v12 = open(__str, 1793, a3);
    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() == 62)
    {
      fprintf(__stderrp, "open(%s) failed with ELOOP\n", __str);
      if (--v8)
      {
        continue;
      }
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v15 = v12;
  if (!__nbyte)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v16 = __nbyte;
  while (1)
  {
    v17 = write(v15, BytePtr, v16);
    if (v17 == -1)
    {
      break;
    }

LABEL_16:
    BytePtr += v17;
    v16 -= v17;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  if (*__error() == 4)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v18 = -1;
LABEL_20:
  if (v18 == __nbyte)
  {
LABEL_21:
    rename(__str, a2, v13);
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  close(v15);
LABEL_24:
  CFRelease(v6);
  return v14;
}

uint64_t sub_575A4(const __CFString *a1, in_addr *a2)
{
  a2->s_addr = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_aton(buffer, a2) == 1;
  }

  return result;
}

uint64_t sub_57658(const __CFString *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_pton(30, buffer, a2) == 1;
  }

  return result;
}

uint64_t sub_57710(const __CFString *a1, _DWORD *a2)
{
  sub_4160(a1, __str, 64, 0);
  v3 = strtoul(__str, 0, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  if (*__error() == 34)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t sub_577B0(const __CFString *a1, _DWORD *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    CFBooleanGetTypeID();
    CFNumberGetTypeID();
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return (sub_57710(a1, a2) & 1) != 0;
  }

  v6 = CFBooleanGetTypeID();
  if (CFGetTypeID(a1) != v6)
  {
    v7 = CFNumberGetTypeID();
    if (CFGetTypeID(a1) == v7)
    {
      result = CFNumberGetValue(a1, kCFNumberSInt32Type, a2);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 0;
  }

  *a2 = CFBooleanGetValue(a1);
  return 1;
}

void sub_57874(__CFDictionary *a1, const void *a2, int a3)
{
  v5 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3));
  CFDictionarySetValue(a1, a2, v5);

  CFRelease(v5);
}

void sub_578FC(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFDictionarySetValue(a1, a2, v5);

  CFRelease(v5);
}

void sub_57964(const __CFArray *a1, const void *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_5:

    CFArrayAppendValue(a1, a2);
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (CFEqual(ValueAtIndex, a2))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_579F0(const __CFArray *a1, const __CFArray *a2, uint64_t (*a3)(const void *, const void *, void))
{
  Count = CFArrayGetCount(a1);
  v7 = CFArrayGetCount(a2);
  v8.length = v7;
  if (Count)
  {
    if (v7)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (CFArrayGetCount(a2) >= 1)
      {
        v10 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
          if (CFArrayGetCount(a1) < 1)
          {
LABEL_9:
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          else
          {
            v12 = 0;
            while (1)
            {
              v13 = CFArrayGetValueAtIndex(a1, v12);
              if (!a3(v13, ValueAtIndex, 0))
              {
                break;
              }

              if (++v12 >= CFArrayGetCount(a1))
              {
                goto LABEL_9;
              }
            }
          }

          ++v10;
        }

        while (v10 < CFArrayGetCount(a2));
      }

      v14 = CFArrayGetCount(Mutable);
      if (v14)
      {
        v16.length = v14;
        v16.location = 0;
        CFArrayAppendArray(a1, Mutable, v16);
      }

      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }

  else
  {
    v8.location = 0;

    CFArrayAppendArray(a1, a2, v8);
  }
}

UInt8 *sub_57B70(const __CFString *a1, CFRange a2, CFStringEncoding a3)
{
  length = a2.length;
  location = a2.location;
  maxBufLen = 0;
  CFStringGetBytes(a1, a2, a3, 0, 0, 0, 0, &maxBufLen);
  if (!maxBufLen)
  {
    return 0;
  }

  v7 = malloc_type_malloc(maxBufLen + 1, 0x6F79A892uLL);
  v10.location = location;
  v10.length = length;
  CFStringGetBytes(a1, v10, a3, 0, 0, v7, maxBufLen, &maxBufLen);
  v7[maxBufLen] = 0;
  return v7;
}

UInt8 *sub_57C28(const __CFString *a1, CFStringEncoding a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return sub_57B70(a1, v4, a2);
}

CFStringRef sub_57C70(const __CFAllocator *a1)
{
  v2 = CFUUIDCreate(a1);
  v3 = CFUUIDCreateString(a1, v2);
  CFRelease(v2);
  return v3;
}

CFStringRef sub_57CB4(CFDataRef theData)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    result = CFStringCreateWithBytes(0, BytePtr, Length, dword_5D234[v2], 0);
    if (result)
    {
      break;
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  return result;
}

uint64_t sub_57D34(const void *a1, const void *a2)
{
  if (a1 && a2)
  {
    return CFEqual(a1, a2);
  }

  else
  {
    return 0;
  }
}

const __CFData *sub_57D48(CFPropertyListRef propertyList, _DWORD *a2)
{
  address = 0;
  *a2 = 0;
  result = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (result)
  {
    v4 = result;
    Length = CFDataGetLength(result);
    if (!vm_allocate(mach_task_self_, &address, Length, 1))
    {
      v6 = address;
      BytePtr = CFDataGetBytePtr(v4);
      memmove(v6, BytePtr, Length);
      *a2 = Length;
    }

    CFRelease(v4);
    return address;
  }

  return result;
}

const __CFData *sub_57E00(UInt8 *bytes, int a2)
{
  result = CFDataCreateWithBytesNoCopy(0, bytes, a2, kCFAllocatorNull);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateWithData(0, result, 0, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

CFMutableStringRef sub_57E6C(const __CFString *a1, unsigned int a2)
{
  MutableCopy = a1;
  Length = CFStringGetLength(a1);
  if (Length <= a2)
  {
    CFRetain(MutableCopy);
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy);
    v5 = 0;
    while (1)
    {
      v9.length = Length;
      v9.location = 0;
      CFStringFindAndReplace(MutableCopy, off_695D8[v5], off_695D8[v5 + 1], v9, 1uLL);
      v6 = CFStringGetLength(MutableCopy);
      Length = v6;
      if (v6 <= a2)
      {
        break;
      }

      v5 += 2;
      if (v5 == 10)
      {
        v8.location = a2 >> 1;
        v8.length = v6 - a2;
        CFStringDelete(MutableCopy, v8);
        return MutableCopy;
      }
    }

    if (!v6 && MutableCopy)
    {
      CFRelease(MutableCopy);
      return 0;
    }
  }

  return MutableCopy;
}

void sub_57F48(CFMutableStringRef theString, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 > 8)
  {
    if (a2 <= 12)
    {
      if (a2 == 9)
      {
        CFStringAppendFormat(theString, 0, @"%.*s", a4, a3);
      }

      else if (a2 == 10)
      {
        CFStringAppendFormat(theString, 0, @"%d.%d.%d.%d", *a3, a3[1], a3[2], a3[3]);
      }

      return;
    }

    switch(a2)
    {
      case 13:
        v30 = 0;
        v8 = sub_58F38(a3, a4, &v30);
        CFStringAppendFormat(theString, 0, @"{");
        if (v8)
        {
          if (v30 >= 1)
          {
            for (i = 0; i < v30; CFStringAppendFormat(theString, 0, @"%s%s", v24, *&v8[8 * i++]))
            {
              if (i)
              {
                v24 = ", ";
              }

              else
              {
                v24 = "";
              }
            }
          }

          goto LABEL_48;
        }

        break;
      case 14:
        v12 = sub_5A958(a3, a4);
        if (v12)
        {
          v13 = v12;
          Count = CFArrayGetCount(v12);
          if (Count)
          {
            v15 = Count;
            CFStringAppend(theString, @"{\n");
            if (v15 >= 1)
            {
              for (j = 0; j != v15; ++j)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, j);
                Value = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerName");
                v19 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerPriority");
                v20 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerAddresses");
                v21 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerParameters");
                CFStringAppendFormat(theString, 0, @"{ %@ (%@)\n%@\n'%@'\n}", Value, v19, v20, v21);
              }
            }

            CFStringAppend(theString, @"\n}");
          }

          CFRelease(v13);
        }

        return;
      case 15:
        v29 = 0;
        v8 = sub_591C0(a3, a4, &v29);
        CFStringAppendFormat(theString, 0, @"{");
        if (v8)
        {
          if (v29 >= 1)
          {
            v9 = 0;
            v10 = v8;
            do
            {
              if (v9)
              {
                v11 = "; ";
              }

              else
              {
                v11 = "";
              }

              CFStringAppendFormat(theString, 0, @"%s%d.%d.%d.%d/%d, %d.%d.%d.%d", v11, *v10, v10[1], v10[2], v10[3], *(v10 + 1), v10[8], v10[9], v10[10], v10[11]);
              ++v9;
              v10 += 12;
            }

            while (v9 < v29);
          }

LABEL_48:
          free(v8);
        }

        break;
      default:
        return;
    }

    CFStringAppendFormat(theString, 0, @"}", v25, v26, v27, v28);
    return;
  }

  if (a2 > 3)
  {
    if ((a2 - 5) < 2)
    {
      v7 = bswap32(*a3);
      goto LABEL_26;
    }

    if (a2 == 4)
    {
      v7 = bswap32(*a3) >> 16;
      goto LABEL_26;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        CFStringAppendFormat(theString, 0, @"\n");

        sub_59ABC(theString, a3, v4);
        break;
      case 2:
        if (*a3)
        {
          v22 = "TRUE";
        }

        else
        {
          v22 = "FALSE";
        }

        CFStringAppendFormat(theString, 0, @"%s", v22);
        break;
      case 3:
        v7 = *a3;
LABEL_26:
        CFStringAppendFormat(theString, 0, @"0x%x", v7);
        break;
    }
  }
}

void sub_58354(CFMutableStringRef theString, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a3;
  if (a2 <= 0xF && (v6 = *(&unk_69628 + 6 * a2 + 1)) != 0)
  {
    if (v6 <= 0xF)
    {
      v7 = *(&unk_69628 + 6 * v6);
      v8 = a4 / v7;
      CFStringAppendFormat(theString, 0, @"{");
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (i)
          {
            CFStringAppendFormat(theString, 0, @", ");
          }

          sub_57F48(theString, v6, v4, v7);
          v4 += v7;
        }
      }

      CFStringAppendFormat(theString, 0, @"}");
    }
  }

  else
  {

    sub_57F48(theString, a2, a3, a4);
  }
}

uint64_t sub_58498(void *a1, unsigned __int8 *a2, int a3, char *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  sub_157D0(a1);
  if (a3 < 1)
  {
    v8 = 0;
    if ((a3 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v8 = *a2;
    if (*a2)
    {
      break;
    }

    ++a2;
    --a3;
LABEL_9:
    if (a3 <= 0)
    {
      goto LABEL_14;
    }
  }

  if (v8 != 255)
  {
    if (a3 < 2)
    {
      goto LABEL_16;
    }

    v9 = a2[1];
    sub_157D8(a1, a2);
    a3 -= v9 + 2;
    a2 += v9 + 2;
    goto LABEL_9;
  }

  sub_157D8(a1, a2);
  --a3;
LABEL_14:
  if ((a3 & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_16:
  if (a4)
  {
    snprintf(a4, 0x100uLL, "parse failed near tag %d", v8);
  }

  sub_1595C(a1);
  return 0;
}

unsigned __int8 *sub_58598(uint64_t a1, int a2, int a3)
{
  v6 = 0;
  result = sub_1CEA4(a1, a2, &v6, 0);
  if (v6 < a3 || result == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_585E0(char **a1, uint64_t a2, unsigned int a3, char *a4)
{
  sub_157D0(a1);
  if (a4)
  {
    *a4 = 0;
    if (a3 <= 0xEF)
    {
      snprintf(a4, 0x100uLL, "packet is too short: %d < %d", a3, 240);
      return 0;
    }

    if (*(a2 + 236) != 1666417251)
    {
      result = 0;
      strcpy(a4, "missing magic number");
      return result;
    }
  }

  else if (a3 < 0xF0 || *(a2 + 236) != 1666417251)
  {
    return 0;
  }

  result = sub_58498(a1, (a2 + 240), a3 - 240, a4);
  if (result)
  {
    v12 = 0;
    v9 = sub_1CEA4(a1, 52, &v12, 0);
    if (v9 && v12 == 1)
    {
      v10 = v9;
      v11[0] = 0;
      v11[1] = 0;
      sub_157D0(v11);
      if ((*v10 | 2) == 3 && sub_58498(v11, (a2 + 108), 128, 0))
      {
        sub_59A00(a1, v11);
        sub_1595C(v11);
      }

      if ((*v10 & 0xFE) == 2)
      {
        if (sub_58498(v11, (a2 + 44), 64, 0))
        {
          sub_59A00(a1, v11);
          sub_1595C(v11);
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_58774(__CFString *a1, uint64_t a2)
{
  v4 = sub_2960(a2);
  CFStringAppendFormat(a1, 0, @"Options count is %d\n", v4);
  result = sub_2960(a2);
  if (result >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_42C8(a2, v6);
      if (!sub_1EFF4(a1, v7))
      {
        CFStringAppendFormat(a1, 0, @"undefined tag %d len %d\n", *v7, v7[1]);
      }

      ++v6;
      result = sub_2960(a2);
    }

    while (v6 < result);
  }

  return result;
}

uint64_t sub_5883C(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = a3;
  do
  {
    v7 = *a2++;
    if (sub_1CEA4(a1, v7, 0, 0))
    {
      v5 = (v5 + 1);
    }

    else
    {
      v5 = v5;
    }

    --v6;
  }

  while (v6);
  return v5;
}

const char *sub_588A8(uint64_t *a1)
{
  result = "<bad parameter>";
  if (a1)
  {
    v4 = *a1;
    v3 = a1 + 5;
    if (v4 == 287454020)
    {
      return v3;
    }
  }

  return result;
}

void sub_588D0(CFMutableStringRef theString, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 > 0xEB)
  {
    v7[0] = 0;
    v7[1] = 0;
    sub_58490(v7);
    sub_585E0(v7, a2, v3, 0);
    sub_58968(theString, a2, v6, v7);
    sub_58494(v7);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"Packet is too short %d < %d\n", a3, 236);
  }
}

void sub_58968(__CFString *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  CFStringAppendFormat(a1, 0, @"op = ");
  v7 = *a2;
  if (v7 == 2)
  {
    CFStringAppendFormat(a1, 0, @"BOOTREPLY\n");
  }

  else if (v7 == 1)
  {
    CFStringAppendFormat(a1, 0, @"BOOTREQUEST\n");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"OP(%d)\n", *a2);
  }

  CFStringAppendFormat(a1, 0, @"htype = %d\n", a2[1]);
  CFStringAppendFormat(a1, 0, @"flags = 0x%x\n", bswap32(*(a2 + 5)) >> 16);
  v8 = a2[2];
  if (v8 >= 0x11)
  {
    v10 = 16;
    CFStringAppendFormat(a1, 0, @"hlen = %d (invalid > %lu)\n", a2[2], 16);
    v9 = "[truncated] ";
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"hlen = %d\n", a2[2]);
    v9 = "";
    v10 = v8;
  }

  CFStringAppendFormat(a1, 0, @"hops = %d\n", a2[3]);
  CFStringAppendFormat(a1, 0, @"xid = 0x%lx\n", bswap32(*(a2 + 1)));
  CFStringAppendFormat(a1, 0, @"secs = %hu\n", bswap32(*(a2 + 4)) >> 16);
  v11 = inet_ntop(2, a2 + 12, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"ciaddr = %s\n", v11);
  v12 = inet_ntop(2, a2 + 16, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"yiaddr = %s\n", v12);
  v13 = inet_ntop(2, a2 + 20, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"siaddr = %s\n", v13);
  v14 = inet_ntop(2, a2 + 24, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"giaddr = %s\n", v14);
  CFStringAppendFormat(a1, 0, @"chaddr = %s", v9);
  if (v10)
  {
    for (i = 0; i != v10; CFStringAppendFormat(a1, 0, @"%0x", a2[i++ + 28]))
    {
      if (i)
      {
        CFStringAppendFormat(a1, 0, @":");
      }
    }
  }

  CFStringAppendFormat(a1, 0, @"\n");
  CFStringAppendFormat(a1, 0, @"sname = %.*s\n", 64, a2 + 44);
  CFStringAppendFormat(a1, 0, @"file = %.*s\n", 128, a2 + 108);
  if (a4)
  {
    if (sub_295C(a4) >= 1)
    {
      CFStringAppendFormat(a1, 0, @"options:\n");
      sub_58774(a1, a4);
    }
  }
}

BOOL sub_58CD0(uint64_t a1, int a2, int a3, void *a4, unsigned int a5)
{
  if (a3 == 24)
  {
    v6 = 0;
  }

  else
  {
    v6 = a5;
  }

  return *a1 == 2 && bswap32(*(a1 + 4)) == a2 && *(a1 + 1) == a3 && v6 == *(a1 + 2) && (!v6 || !bcmp((a1 + 28), a4, v6));
}

uint64_t sub_58D48(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2960(a1 + 48);
  if (v4 < 1)
  {
LABEL_8:
    *a2 = 0;
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_42C8(a1 + 48, v6);
      if (*v7 == 3)
      {
        if (*(v7 + 1) < 4u)
        {
          goto LABEL_8;
        }

        v8 = *(v7 + 4);
        if (v8)
        {
          if (*(v7 + 8))
          {
            break;
          }
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    *a2 = bswap32(v8);
    return bswap32(*(v7 + 8));
  }
}

CFDictionaryRef sub_58DE8(uint64_t a1)
{
  *keys = *off_6A7F0;
  v9 = @"ReceiveDate";
  v2 = CFDataCreate(0, (a1 + 72), *(a1 + 64));
  v3 = CFDateCreate(0, *(a1 + 40));
  v4 = *(a1 + 32);
  values[0] = v2;
  values[1] = v4;
  values[2] = v3;
  v5 = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(v2);
  CFRelease(v3);
  return v5;
}

const UInt8 *sub_58EC8(uint64_t a1)
{
  *&length[1] = a1;
  length[0] = 0;
  result = sub_1F104(&length[1], 1, 0, length, 0, 3);
  if (result)
  {
    v2 = result;
    v3 = CFDataCreate(0, result, length[0]);
    free(v2);
    return v3;
  }

  return result;
}

char *sub_58F38(uint64_t a1, unsigned int a2, int *a3)
{
  __src[0] = 0;
  memset(v11, 0, sizeof(v11));
  __src[1] = v11;
  __n = 0x8000000000;
  v4 = sub_1AB58(a1, a2, v11, 0);
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_malloc(__n + 8 * v4, 0x10040436913F5uLL);
    v7 = &v6[8 * v5];
    memcpy(v7, __src[1], __n);
    if (v5 >= 1)
    {
      v8 = 0;
      do
      {
        *&v6[v8] = v7;
        v7 += strlen(v7) + 1;
        v8 += 8;
      }

      while (8 * v5 != v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  if ((__src[0] & 1) == 0 && __src[1] && __src[1] != v11)
  {
    free(__src[1]);
  }

  return v6;
}

__CFArray *sub_59078(uint64_t a1, unsigned int a2)
{
  cStr[0] = 0;
  memset(v9, 0, sizeof(v9));
  cStr[1] = v9;
  v11 = 0x8000000000;
  v2 = sub_1AB58(a1, a2, v9, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Mutable = CFArrayCreateMutable(0, v2, &kCFTypeArrayCallBacks);
  if (v3 >= 1)
  {
    v5 = cStr[1];
    do
    {
      v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }

      v5 += strlen(v5) + 1;
      --v3;
    }

    while (v3);
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if ((cStr[0] & 1) == 0 && cStr[1] && cStr[1] != v9)
  {
    free(cStr[1]);
  }

  return Mutable;
}

_DWORD *sub_591C0(unsigned __int8 *a1, int a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  if (a1 && a2)
  {
    v8 = sub_1F864(a1, a2, 0, 0);
    v5 = v8;
    if (!v8)
    {
LABEL_6:
      v4 = 0;
      goto LABEL_7;
    }

    v4 = malloc_type_malloc(12 * v8, 0x10000403E1C8BA9uLL);
    if (sub_1F864(a1, a2, v4, v5) != v5)
    {
      free(v4);
      v5 = 0;
      goto LABEL_6;
    }
  }

LABEL_7:
  *a3 = v5;
  return v4;
}

_DWORD *sub_59274(_DWORD *a1, int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    while (*a1)
    {
      a1 += 3;
      if (!--a2)
      {
        return 0;
      }
    }

    return a1;
  }

  return v2;
}

void *sub_592AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_157D0(a1);
  a1[2] = a2;
  a1[3] = a3;
  return result;
}

void DHCPLeaseListFree_0(uint64_t *a1)
{
  v1 = a1;
  v3 = 0;
  while (sub_13E08(a1, 0, &v3))
  {
    if (v3)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v2();
      }
    }

    a1 = v1;
  }

  sub_1595C(v1);
}

uint64_t sub_5934C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  sub_157D0(a1);
  if (sub_2960(a2) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_42C8(a2, v4);
      v6 = v5;
      if (v5)
      {
        v7 = *(a1 + 24);
        if (v7)
        {
          v6 = v7(v5);
        }
      }

      sub_157D8(a1, v6);
      ++v4;
    }

    while (v4 < sub_2960(a2));
  }

  return 1;
}

__n128 sub_593E0(__n128 *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (v2)
  {
    result = *a1;
    *v2 = *a1;
  }

  return result;
}

uint64_t sub_59428(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_59434(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = 0;
  if ((a2 & 0x80000000) == 0 && v2 > a2)
  {
    return *a1 + 104 * a2;
  }

  return v3;
}

uint64_t sub_59468(uint64_t a1, int a2)
{
  v4 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *(a1 + 8); ; i = 0)
  {
    if (v4 >= i)
    {
      return 0;
    }

    v6 = *a1 + 104 * v4;
    if (sub_295C(v6 + 24) >= 1)
    {
      break;
    }

LABEL_9:
    ++v4;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v7 = 0;
  while (*sub_42C0(v6 + 24, v7) != a2)
  {
    if (++v7 >= sub_295C(v6 + 24))
    {
      goto LABEL_9;
    }
  }

  return v6;
}

uint64_t sub_59518(uint64_t a1)
{
  result = sub_4348(a1, "en0");
  if (!result)
  {
    if (a1 && (v3 = *(a1 + 8), v3 >= 1))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *(a1 + 8);
      do
      {
        if (v4 >= v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = *a1 + 104 * v4;
        }

        v9 = *(v8 + 18);
        if (v9 == 6 || v9 == 144)
        {
          if (v5)
          {
            if (strcmp(v8, v5) < 0)
            {
              v5 = v8;
            }
          }

          else
          {
            v5 = v8;
          }
        }

        else if (!v6)
        {
          if (*(v8 + 74))
          {
            v6 = v8;
          }

          else
          {
            v6 = 0;
          }
        }

        ++v4;
      }

      while (v4 != v3);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    if (v6)
    {
      v10 = v5 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void **sub_59608(uint64_t *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v3 = v2;
  if (v2 && !sub_1FB8C(v2, a1))
  {
    free(v3);
    return 0;
  }

  return v3;
}

void sub_59668(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(v2 + 8) >= 1)
      {
        v3 = 0;
        v4 = 24;
        do
        {
          DHCPLeaseListFree_0((*v2 + v4));
          ++v3;
          v4 += 104;
        }

        while (v3 < *(v2 + 8));
      }

      if (*v2)
      {
        free(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

void sub_596FC(uint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      DHCPLeaseListFree_0(v2 + 3);
      free(v2);
      *a1 = 0;
    }
  }
}

_OWORD *sub_59740(__int128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x1080040821398E0uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    v5 = a1[2];
    v2[1] = a1[1];
    v2[2] = v5;
    *v2 = v4;
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    *(v2 + 12) = *(a1 + 12);
    v2[4] = v7;
    v2[5] = v8;
    v2[3] = v6;
    sub_5934C(v2 + 24, a1 + 24);
  }

  return v3;
}

uint64_t sub_597BC(unsigned __int8 *a1)
{
  if (a1[75] == 6 && a1[74] == 6)
  {
    return (a1[56] >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

const char *sub_597F4(uint64_t a1)
{
  if ((*(a1 + 19) & 2) != 0)
  {
    return "AWDL";
  }

  if (*(a1 + 19))
  {
    return "WiFi";
  }

  v1 = *(a1 + 18);
  v2 = "Bridge";
  v3 = "Cellular";
  if (v1 != 255)
  {
    v3 = 0;
  }

  if (v1 != 209)
  {
    v2 = v3;
  }

  v4 = "Link Aggregate";
  v5 = "Firewire";
  if (v1 != 144)
  {
    v5 = 0;
  }

  if (v1 != 136)
  {
    v4 = v5;
  }

  if (*(a1 + 18) <= 0xD0u)
  {
    v2 = v4;
  }

  v6 = "Ethernet";
  v7 = "6to4";
  v8 = "VLAN";
  if (v1 != 135)
  {
    v8 = 0;
  }

  if (v1 != 57)
  {
    v7 = v8;
  }

  if (v1 != 6)
  {
    v6 = v7;
  }

  if (*(a1 + 18) <= 0x87u)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

CFMutableDictionaryRef sub_598A0(char *path)
{
  properties = 0;
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, path);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (IORegistryEntryCreateCFProperties(v1, &properties, kCFAllocatorDefault, 0))
  {
    properties = 0;
  }

  IOObjectRelease(v2);
  return properties;
}

CFMutableDictionaryRef sub_59918(char *bsdName, int a2)
{
  properties = 0;
  v3 = IOBSDNameMatching(kIOMainPortDefault, 0, bsdName);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  if (!MatchingService)
  {
    return 0;
  }

  v5 = MatchingService;
  if (a2)
  {
    parent = 0;
    ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
    if (!ParentEntry)
    {
      ParentEntry = IORegistryEntryCreateCFProperties(parent, &properties, kCFAllocatorDefault, 0);
      IOObjectRelease(parent);
    }
  }

  else
  {
    ParentEntry = IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0);
  }

  if (ParentEntry)
  {
    properties = 0;
  }

  IOObjectRelease(v5);
  return properties;
}

char *sub_59A00(char **a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return (&dword_0 + 1);
  }

  v5 = *(a1 + 3) + v2;
  if (v5 <= *(a1 + 2))
  {
    result = *a1;
    if (!*a1)
    {
      return result;
    }

    goto LABEL_7;
  }

  *(a1 + 2) = v5;
  v6 = *a1;
  if (*a1)
  {
    result = malloc_type_realloc(v6, 8 * v5, 0x80040B8603338uLL);
  }

  else
  {
    result = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  }

  *a1 = result;
  if (result)
  {
LABEL_7:
    memmove(&result[8 * *(a1 + 3)], *a2, 8 * *(a2 + 12));
    *(a1 + 3) += *(a2 + 12);
    return (&dword_0 + 1);
  }

  return result;
}

void sub_59ABC(CFMutableStringRef theString, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (!v6)
      {
        CFStringAppendFormat(theString, 0, @"%04x ", v5);
      }

      v8 = *(a2 + v5);
      if (v8 < 0)
      {
        v9 = __maskrune(*(a2 + v5), 0x40000uLL);
      }

      else
      {
        v9 = _DefaultRuneLocale.__runetype[v8] & 0x40000;
      }

      v10 = *(a2 + v5);
      if (v9)
      {
        v11 = v8;
      }

      else
      {
        v11 = 46;
      }

      v16[v6] = v11;
      CFStringAppendFormat(theString, 0, @" %02x", v10);
      if (v6 == 7)
      {
        CFStringAppendFormat(theString, 0, @" ");
        v6 = 8;
      }

      else if (v6 == 15)
      {
        v17 = 0;
        CFStringAppendFormat(theString, 0, @"  %s\n", v16);
        v6 = 0;
      }

      else
      {
        ++v6;
      }

      ++v5;
    }

    while (a3 != v5);
    if (v6)
    {
      if (v6 >= 8)
      {
        v12 = "";
      }

      else
      {
        v12 = " ";
      }

      if (v6 <= 15)
      {
        v13 = &v16[v6];
        v14 = v6 + 1;
        do
        {
          CFStringAppendFormat(theString, 0, @"   ");
          *v13++ = 32;
        }

        while (v14++ != 16);
      }

      v17 = 0;
      CFStringAppendFormat(theString, 0, @"  %s%s\n", v12, v16);
    }
  }
}

void sub_59CB0(CFMutableStringRef theString, uint64_t a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = 0;
    v10 = a3;
    do
    {
      if (v9)
      {
        if (a4 != 32 || (v9 & 7) != 0)
        {
          *v11 = a4;
        }

        else
        {
          strcpy(v11, "  ");
        }
      }

      else
      {
        v11[0] = 0;
      }

      CFStringAppendFormat(theString, 0, @"%s%02x", v11, *(a2 + v9++));
    }

    while (v10 != v9);
  }
}

uint64_t sub_59D78(const char *a1, mode_t a2)
{
  result = mkdir(a1, a2);
  if (result)
  {
    if (*__error() == 17)
    {
      return 0;
    }

    if (*__error() == 2)
    {
      v7[0] = 0;
      if (a1)
      {
        v5 = a1;
        while (*v5 == 47)
        {
          v6 = strchr(v5 + 1, 47);
          v5 = v6;
          if (!v6)
          {
            v5 = &a1[strlen(a1)];
          }

          __strncpy_chk();
          v7[v5 - a1] = 0;
          if (mkdir(v7, a2) && *__error() != 17)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0;
          if (!v6 || !v5)
          {
            return result;
          }
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

char *sub_59EA8(char *__str, int a2, unsigned __int8 *a3, int a4)
{
  v5 = __str;
  if (a4 == 6)
  {
    v18 = a3[4];
    v20 = a3[5];
    v15 = a3[2];
    v16 = a3[3];
    v14 = a3[1];
    return snprintf(__str, a2, "%02x:%02x:%02x:%02x:%02x:%02x", *a3);
  }

  else if (a4 == 8)
  {
    v6 = a3[2];
    v7 = a3[3];
    v21 = a3[6];
    v22 = a3[7];
    v17 = a3[4];
    v19 = a3[5];
    return snprintf(__str, a2, "%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x", *a3, a3[1]);
  }

  else if (a4 >= 1)
  {
    v8 = 0;
    v9 = a4;
    do
    {
      v10 = a2;
      if (v8)
      {
        v11 = ":%02x";
      }

      else
      {
        v11 = "%02x";
      }

      if (v8)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      if (v8)
      {
        v13 = -3;
      }

      else
      {
        v13 = -2;
      }

      __str = snprintf(v5, a2, v11, a3[v8]);
      v5 += v12;
      a2 = v10 + v13;
      ++v8;
    }

    while (v9 != v8);
  }

  return __str;
}

uint64_t sub_5A000(int a1, int a2, void *a3, uint64_t a4, int a5, int a6)
{
  v6 = a5;
  v11[0] = a4;
  v11[1] = a5;
  v10.msg_name = a3;
  *(&v10.msg_namelen + 1) = 0;
  v10.msg_namelen = 28;
  v10.msg_iov = v11;
  *(&v10.msg_iovlen + 1) = 0;
  v10.msg_iovlen = 1;
  v10.msg_control = &v12;
  if (a6 >= 0)
  {
    v7 = 48;
  }

  else
  {
    v7 = 32;
  }

  v10.msg_controllen = v7;
  v10.msg_flags = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 46;
  v12 = 0x2900000020;
  v16 = 0;
  LODWORD(v15) = a2;
  if ((a6 & 0x80000000) == 0)
  {
    *(&v15 + 4) = 0x2900000010;
    HIDWORD(v15) = 47;
    v16 = a6;
  }

  v8 = sendmsg(a1, &v10, 0);
  result = 0;
  if (v8 != v6)
  {
    return *__error();
  }

  return result;
}

void sub_5A0F4()
{
  if (qword_702E8)
  {
    SCPreferencesSynchronize(qword_702E8);
    v0 = vars8;
  }

  v1 = qword_702F0;
  if (qword_702F0)
  {

    SCPreferencesSynchronize(v1);
  }
}

const __SCPreferences *sub_5A138(NSObject *a1, uint64_t (*a2)(void))
{
  result = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"com.apple.IPConfiguration.control.plist");
  qword_702E8 = result;
  if (a1)
  {
    if (a2)
    {
      off_702F8 = a2;
      SCPreferencesSetCallback(result, sub_20640, 0);
      SCPreferencesSetDispatchQueue(qword_702E8, a1);
      _scprefs_observer_watch();
      return qword_702E8;
    }
  }

  return result;
}

const void *sub_5A1D8(const void *cf2)
{
  if (cf2)
  {
    v1 = cf2;
    v2 = &off_6A890;
    v3 = 3;
    while (!CFEqual(*v2, v1))
    {
      v2 += 2;
      if (!--v3)
      {
        return 0;
      }
    }

    return *(v2 - 2);
  }

  return cf2;
}

__CFString *sub_5A23C(int a1)
{
  v1 = &off_6A890;
  v2 = 3;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t sub_5A270(uint64_t a1)
{
  v2 = sub_2065C(@"Verbose");
  if (!v2)
  {
    return a1;
  }

  return CFBooleanGetValue(v2);
}

const void *sub_5A2C0()
{
  v0 = qword_702F0;
  if (!qword_702F0)
  {
    v0 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"/Library/Managed Preferences/mobile/com.apple.IPConfiguration.control.plist");
    qword_702F0 = v0;
  }

  Value = SCPreferencesGetValue(v0, @"AWDReportInterfaceTypes");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v3 = qword_702E8;
    if (!qword_702E8)
    {
      v3 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"com.apple.IPConfiguration.control.plist");
      qword_702E8 = v3;
    }

    Value = SCPreferencesGetValue(v3, @"AWDReportInterfaceTypes");
    v4 = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) != v4)
    {
      Value = 0;
    }
  }

  return sub_5A1D8(Value);
}

uint64_t sub_5A390(uint64_t a1)
{
  v2 = sub_2065C(@"CellularCLAT46AutoEnable");
  if (!v2)
  {
    return a1;
  }

  return CFBooleanGetValue(v2);
}

uint64_t sub_5A3E0(uint64_t a1)
{
  v2 = sub_2065C(@"IPv6LinkLocalModifierExpires");
  if (!v2)
  {
    return a1;
  }

  return CFBooleanGetValue(v2);
}

uint64_t sub_5A430()
{
  valuePtr = 0;
  v0 = qword_702F0;
  if (!qword_702F0)
  {
    v0 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"/Library/Managed Preferences/mobile/com.apple.IPConfiguration.control.plist");
    qword_702F0 = v0;
  }

  Value = SCPreferencesGetValue(v0, @"DHCPDUIDType");
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    goto LABEL_9;
  }

  v3 = qword_702E8;
  if (!qword_702E8)
  {
    v3 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"com.apple.IPConfiguration.control.plist");
    qword_702E8 = v3;
  }

  Value = SCPreferencesGetValue(v3, @"DHCPDUIDType");
  v4 = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == v4)
  {
LABEL_9:
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

CFComparisonResult sub_5A518(const void *a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 1;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 1;
  }

  v5 = kSCPropNetDNSEncryptedServerServicePriority;
  Value = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServicePriority);
  v7 = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    return 1;
  }

  v8 = CFDictionaryGetTypeID();
  if (!a2)
  {
    return -1;
  }

  if (CFGetTypeID(a2) != v8)
  {
    return -1;
  }

  v9 = CFDictionaryGetValue(a2, v5);
  v10 = CFNumberGetTypeID();
  if (!v9 || CFGetTypeID(v9) != v10)
  {
    return -1;
  }

  return CFNumberCompare(Value, v9, 0);
}

void sub_5A618(const __CFArray *a1, const void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(Mutable, a2);
  sub_579F0(a1, Mutable, sub_5A694);

  CFRelease(Mutable);
}

uint64_t sub_5A694(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v35 = 0;
  Count = CFDictionaryGetCount(a1);
  if (Count != CFDictionaryGetCount(a2))
  {
    goto LABEL_13;
  }

  v5 = CFDictionaryGetCount(a1);
  v6 = kSCPropNetDNSEncryptedServerAuthenticationDomainName;
  v7 = v5 == 1 && CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerAuthenticationDomainName) && CFDictionaryGetValue(a2, v6) != 0;
  Value = CFDictionaryGetValue(a1, v6);
  v9 = CFDictionaryGetValue(a2, v6);
  v10 = CFStringCompare(Value, v9, 0);
  v11 = v10;
  if (v7 || v10)
  {
    goto LABEL_14;
  }

  v12 = kSCPropNetDNSEncryptedServerServicePriority;
  v13 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServicePriority);
  v14 = CFDictionaryGetValue(a2, v12);
  if (!v13 || v14 == 0)
  {
    goto LABEL_13;
  }

  v17 = CFNumberCompare(v13, v14, 0);
  v11 = v17;
  if (v17)
  {
    goto LABEL_14;
  }

  v18 = kSCPropNetDNSEncryptedServerAddresses;
  v19 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerAddresses);
  v20 = CFDictionaryGetValue(a2, v18);
  v11 = -1;
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  v22 = CFArrayGetCount(v19);
  if (v22 != CFArrayGetCount(v21))
  {
LABEL_13:
    v11 = -1;
    goto LABEL_14;
  }

  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  v35 = Mutable;
  if (CFArrayGetCount(v19) >= 1)
  {
    v24 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, v24);
      CFSetAddValue(Mutable, ValueAtIndex);
      ++v24;
    }

    while (v24 < CFArrayGetCount(v19));
  }

  if (CFArrayGetCount(v21) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = CFArrayGetValueAtIndex(v21, v26);
      if (!CFSetContainsValue(Mutable, v27))
      {
        goto LABEL_13;
      }
    }

    while (++v26 < CFArrayGetCount(v21));
  }

  v28 = kSCPropNetDNSEncryptedServerServiceParameters;
  v29 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServiceParameters);
  v30 = CFDictionaryGetValue(a2, v28);
  if (!(v29 | v30))
  {
    v11 = 0;
    goto LABEL_14;
  }

  v31 = v30;
  if (v29)
  {
    v32 = v30 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    goto LABEL_13;
  }

  Length = CFDataGetLength(v29);
  if (Length != CFDataGetLength(v31))
  {
    goto LABEL_13;
  }

  v36.length = CFDataGetLength(v29);
  v36.location = 0;
  v34 = CFDataFind(v29, v31, v36, 0).length;
  if (v34 == CFDataGetLength(v29))
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

LABEL_14:
  sub_41E8(&v35);
  return v11;
}

CFMutableArrayRef sub_5A958(uint64_t a1, int a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v49 = Mutable;
  if (a2 >= 1)
  {
    v5 = 0;
    v41 = a1 + 6;
    v43 = Mutable;
    v42 = a2;
    v48 = a1;
    while (1)
    {
      v50 = 0;
      v6 = a2 - v5;
      if (a2 <= v5 || v6 < 9)
      {
        break;
      }

      v7 = (v48 + v5);
      v8 = bswap32(*v7) >> 16;
      v9 = v8 - 3;
      if (v8 < 3 || v6 < v8 + 2)
      {
        break;
      }

      v11 = *(v7 + 4);
      if (!*(v7 + 4))
      {
        break;
      }

      v12 = v9 - v11;
      if (v9 < v11)
      {
        break;
      }

      v13 = v7[1];
      v14 = v7 + 5;
      v15 = sub_1AA80(v7 + 5, *(v7 + 4), 0);
      v50 = v15;
      if (!v15 || v12 < 1)
      {
        break;
      }

      v17 = &v14[v11 + 1];
      v16 = v14[v11];
      if (v12 <= v16 || (v16 & 3) != 0)
      {
        break;
      }

      v45 = v12 - 1;
      v47 = v15;
      v19 = malloc_type_malloc(v16, 0x100004052888210uLL);
      v20 = v19;
      if (!v16)
      {
        goto LABEL_39;
      }

      v21 = 0;
      v22 = 0;
      v23 = v5;
      v44 = bswap32(v13) >> 16;
      v24 = v16 >> 2;
      if (v16 >> 2 <= 1)
      {
        LODWORD(v24) = 1;
      }

      v25 = 4 * v24;
      v26 = v8 - v11 - 4;
      do
      {
        v27 = *(v17 + v21);
        v28 = bswap32(v27);
        v29 = v28 + 1 < 2 || v28 == 2130706433;
        v30 = v28 >> 28;
        if (!v29 && v30 != 14)
        {
          v19[v22++] = v27;
        }

        v21 += 4;
        v26 -= 4;
      }

      while (v25 != v21);
      if (!v22)
      {
LABEL_39:
        free(v19);
        break;
      }

      v32 = (v17 + v21);
      v33 = v45 - v21;
      v34 = (v45 - v21);
      if (v45 == v21)
      {
        v36 = 0;
      }

      else
      {
        v35 = (v45 - v21);
        v46 = v23;
        v36 = malloc_type_malloc(v35, 0x100004077774924uLL);
        memcpy(v36, v32, v34);
        LODWORD(v32) = v41 + v46 + v11 + v26 + v21;
      }

      v37 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
      *v37 = 0u;
      v37[1] = 0u;
      v37[2] = 0u;
      *(v37 + 2) = v44;
      *(v37 + 1) = v47;
      *(v37 + 2) = v20;
      *(v37 + 6) = v22;
      *(v37 + 4) = v36;
      *(v37 + 20) = v33;
      v38 = sub_20744(v37, 0);
      sub_20928(v37);
      v39 = v43;
      a2 = v42;
      if (!v38)
      {
        goto LABEL_41;
      }

      v5 = v32 - v48;
      sub_5A618(v43, v38);
      CFRelease(v38);
      if (v32 - v48 >= v42)
      {
        v51.length = CFArrayGetCount(v43);
        v51.location = 0;
        CFArraySortValues(v43, v51, sub_5A518, 0);
        return v39;
      }
    }

    sub_41E8(&v50);
  }

LABEL_41:
  sub_41E8(&v49);
  return v49;
}

__CFDictionary *sub_5AC3C(unsigned __int16 *a1, int a2)
{
  v31 = 0;
  v32 = 0;
  if (a2 < 23)
  {
    goto LABEL_13;
  }

  v2 = bswap32(a1[1]) >> 16;
  v3 = a2 - 4;
  if ((v2 - 256) < 0xFF01u || v3 < v2)
  {
    goto LABEL_13;
  }

  v5 = *a1;
  v6 = a1 + 2;
  v32 = sub_1AA80((a1 + 2), v2, 0);
  if (!v32)
  {
    goto LABEL_13;
  }

  v7 = v3 - v2 - 2;
  if ((v3 - v2) < 2)
  {
    goto LABEL_13;
  }

  v8 = (v6 + v2);
  v11 = *v8;
  v9 = (v8 + 1);
  v10 = v11;
  v12 = v11 >> 8;
  if (v7 < v12 || (v12 & 0xF) != 0)
  {
LABEL_13:
    sub_41E8(&v32);
LABEL_14:
    sub_41E8(&v31);
    return v31;
  }

  v15 = malloc_type_malloc(v12, 0x1000040451B5BE8uLL);
  v16 = v15;
  if (v10 < 0x100)
  {
    goto LABEL_32;
  }

  v17 = 0;
  v18 = bswap32(v5) >> 16;
  v19 = v12 >> 4;
  if ((v12 >> 4) <= 1)
  {
    LODWORD(v19) = 1;
  }

  do
  {
    v20 = *v9++;
    v21 = v20;
    v22 = ~v20;
    v23 = v20 | DWORD1(v20) | DWORD2(v20);
    v24 = HIDWORD(v20);
    v25 = (v23 | HIDWORD(v20)) == 0;
    if (v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24 == 0x1000000;
    }

    v27 = v26;
    if (v22 && !v25 && (v27 & 1) == 0)
    {
      *(v15 + v17++) = v21;
    }

    LOWORD(v7) = v7 - 16;
    LODWORD(v19) = v19 - 1;
  }

  while (v19);
  if (!v17)
  {
LABEL_32:
    sub_41E8(&v32);
    if (v16)
    {
      free(v16);
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v28 = malloc_type_malloc(v7, 0x100004077774924uLL);
    memcpy(v28, v9, v7);
  }

  else
  {
    v28 = 0;
  }

  v29 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
  *(v29 + 6) = 0u;
  *(v29 + 22) = 0u;
  v29[2] = 0u;
  *v29 = 1;
  *(v29 + 2) = v18;
  *(v29 + 1) = v32;
  *(v29 + 2) = v16;
  *(v29 + 6) = v17;
  *(v29 + 4) = v28;
  *(v29 + 20) = v7;
  v30 = sub_20744(v29, 1);
  sub_20928(v29);
  return v30;
}

__CFDictionary *sub_5AE5C(unsigned __int16 *a1, int a2)
{
  v29 = 0;
  v30 = 0;
  if (a2 < 29)
  {
    goto LABEL_13;
  }

  v4 = bswap32(a1[3]) >> 16;
  v5 = a2 - 8;
  v6 = (v4 - 256) >= 0xFF01u && v5 >= v4;
  if (!v6 || (v7 = *a1, (v30 = sub_1AA80((a1 + 4), v4, 0)) == 0) || (v8 = v5 - v4 - 2, (v5 - v4) < 2) || ((v9 = *(a1 + v4 + 8), v10 = v9 >> 8, v8 >= (v9 >> 8)) ? (v11 = ((v9 >> 8) & 0xF) == 0) : (v11 = 0), !v11))
  {
LABEL_13:
    sub_41E8(&v30);
LABEL_14:
    sub_41E8(&v29);
    return v29;
  }

  v13 = malloc_type_malloc(v9 >> 8, 0x1000040451B5BE8uLL);
  v14 = v13;
  if (v9 < 0x100)
  {
    goto LABEL_17;
  }

  v15 = 0;
  v16 = 0;
  v17 = bswap32(v7) >> 16;
  v18 = v10 >> 4;
  if (v10 >> 4 <= 1)
  {
    LODWORD(v18) = 1;
  }

  v19 = 16 * v18;
  v20 = a1 + v4;
  do
  {
    if (__PAIR64__(HIDWORD(*&v20[v15 + 10]), *&v20[v15 + 10]))
    {
      v21 = 0;
    }

    else
    {
      v21 = HIDWORD(*&v20[v15 + 10]) == 0x1000000;
    }

    v22 = v21;
    if (v20[v15 + 10] != -1 && __PAIR64__(HIDWORD(*&v20[v15 + 10]), *&v20[v15 + 10]) && (v22 & 1) == 0)
    {
      *(v13 + v16++) = *&v20[v15 + 10];
    }

    v15 += 16;
  }

  while (v19 != v15);
  if (!v16 || (v8 - v15) < 2 || (v23 = *(a1 + v4 + v15 + 10), a2 - v4 - v15 - 12 < bswap32(v23) >> 16))
  {
LABEL_17:
    sub_41E8(&v30);
    if (v14)
    {
      free(v14);
    }

    goto LABEL_14;
  }

  v24 = __rev16(v23);
  if (*(a1 + v4 + v15 + 10))
  {
    v25 = a1 + v4 + v15;
    v26 = malloc_type_malloc(v24, 0x100004077774924uLL);
    memcpy(v26, v25 + 12, v24);
  }

  else
  {
    v26 = 0;
  }

  v27 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
  *(v27 + 6) = 0u;
  *(v27 + 22) = 0u;
  v27[2] = 0u;
  *v27 = 2;
  *(v27 + 2) = v17;
  *(v27 + 1) = v30;
  *(v27 + 2) = v14;
  *(v27 + 6) = v16;
  *(v27 + 4) = v26;
  *(v27 + 20) = v24;
  v28 = sub_20744(v27, 2);
  sub_20928(v27);
  return v28;
}

const char *sub_5B0C8(unsigned int a1)
{
  if (a1 > 4)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_6A8F8)[a1];
  }
}

void sub_5B0EC(CFMutableStringRef theString, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 < 2)
  {
    v6 = 2;
LABEL_3:
    CFStringAppendFormat(theString, 0, @"DUID too short (%d < %d), Data = { ", a3, v6);
    sub_1A9BC(theString, a2, v3, 32);

    CFStringAppendCString(theString, " }", 0x600u);
    return;
  }

  v7 = bswap32(*a2) >> 16;
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        if (a3 >= 0x12)
        {
          memset(out, 0, 37);
          uuid_unparse(a2 + 2, out);
          CFStringAppendFormat(theString, 0, @"DUID UUID %s", out);
          return;
        }

        v6 = 18;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v8 = a3 - 4;
    if (a3 < 4)
    {
      v6 = 4;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID LL HW %d Addr ", bswap32(a2[1]) >> 16);
    v10 = (a2 + 2);
LABEL_24:
    v9 = theString;
    v11 = v8;
    v12 = 58;
    goto LABEL_25;
  }

  if (v7 == 1)
  {
    v8 = a3 - 8;
    if (a3 < 8)
    {
      v6 = 8;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID LLT HW %d Time %u Addr ", bswap32(a2[1]) >> 16, bswap32(*(a2 + 1)));
    v10 = (a2 + 4);
    goto LABEL_24;
  }

  if (v7 == 2)
  {
    v8 = a3 - 6;
    if (a3 < 6)
    {
      v6 = 6;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID EN Num %d Id ", __rev16(a2[2]));
    v10 = (a2 + 3);
    goto LABEL_24;
  }

LABEL_15:
  CFStringAppendFormat(theString, 0, @"DUID (unrecognized type=%d): ", v7);
  v9 = theString;
  v10 = a2;
  v11 = v3;
  v12 = 32;
LABEL_25:

  sub_1A9BC(v9, v10, v11, v12);
}

BOOL sub_5B3BC(unsigned __int16 *a1, int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v2 = (bswap32(*a1) >> 16) - 1;
  return v2 <= 3u && dword_5D280[v2] <= a2;
}

__CFData *sub_5B404(const void *a1, int a2, unsigned int a3)
{
  v5 = a2;
  v6 = a2 + 4;
  Mutable = CFDataCreateMutable(0, v6);
  CFDataSetLength(Mutable, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 768;
  *(MutableBytePtr + 1) = bswap32(a3) >> 16;
  memcpy(MutableBytePtr + 4, a1, v5);
  return Mutable;
}

__CFData *sub_5B48C(const void *a1, int a2, unsigned int a3)
{
  v5 = a2;
  v6 = a2 + 8;
  Mutable = CFDataCreateMutable(0, v6);
  CFDataSetLength(Mutable, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 256;
  *(MutableBytePtr + 1) = bswap32(a3) >> 16;
  memcpy(MutableBytePtr + 8, a1, v5);
  memset(&v11, 0, sizeof(v11));
  v11.tm_year = 100;
  v11.tm_mday = 1;
  v9 = timegm(&v11);
  *(MutableBytePtr + 1) = bswap32(time(0) - v9);
  return Mutable;
}

__CFData *sub_5B560(const unsigned __int8 *a1)
{
  Mutable = CFDataCreateMutable(0, 18);
  CFDataSetLength(Mutable, 18);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 1024;
  uuid_copy(MutableBytePtr + 2, a1);
  return Mutable;
}

const char *DHCPv6MessageTypeName(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "<unknown";
  }

  else
  {
    return (&off_6A920)[a1];
  }
}

_BYTE *DHCPv6PacketSetTransactionID(_BYTE *result, unsigned int a2)
{
  v2 = bswap32(a2);
  result[1] = BYTE1(v2);
  result[2] = BYTE2(v2);
  result[3] = HIBYTE(v2);
  return result;
}

void DHCPv6PacketPrintToString(CFMutableStringRef theString, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 > 3)
  {
    v6 = *a2;
    v7 = DHCPv6MessageTypeName(*a2);
    CFStringAppendFormat(theString, 0, @"DHCPv6 %s (%d) Transaction ID 0x%06x Length %d\n", v7, v6, bswap32((a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24)), a3);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"Packet too short %d < %d\n", a3, 4);
  }
}

void DHCPv6PacketFPrint(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  DHCPv6PacketPrintToString(Mutable, a2, a3);
  SCPrint();

  CFRelease(Mutable);
}

uint64_t sub_5B744(int a1)
{
  result = 1;
  switch(a1)
  {
    case 1:
    case 2:
      result = 2;
      break;
    case 3:
      result = 7;
      break;
    case 4:
    case 7:
    case 9:
    case 10:
    case 11:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 40:
      return result;
    case 5:
      result = 8;
      break;
    case 6:
    case 8:
      result = 3;
      break;
    case 12:
    case 22:
    case 23:
      result = 5;
      break;
    case 13:
      result = 9;
      break;
    case 14:
      result = 0;
      break;
    case 21:
    case 24:
      result = 6;
      break;
    case 25:
      result = 11;
      break;
    case 26:
      result = 12;
      break;
    case 39:
      result = 14;
      break;
    case 41:
    case 42:
      goto LABEL_7;
    default:
      if (a1 == 103)
      {
LABEL_7:
        result = 10;
      }

      else if (a1 == 144)
      {
        result = 13;
      }

      else
      {
        result = 1;
      }

      break;
  }

  return result;
}

const char *sub_5B7F0(int a1)
{
  v1 = a1 - 1;
  result = "CLIENTID";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "SERVERID";
      break;
    case 2:
      result = "IA_NA";
      break;
    case 3:
      result = "IA_TA";
      break;
    case 4:
      result = "IAADDR";
      break;
    case 5:
      result = "ORO";
      break;
    case 6:
      result = "PREFERENCE";
      break;
    case 7:
      result = "ELAPSED_TIME";
      break;
    case 8:
      result = "RELAY_MSG";
      break;
    case 9:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
      goto LABEL_6;
    case 10:
      result = "AUTH";
      break;
    case 11:
      result = "UNICAST";
      break;
    case 12:
      result = "STATUS_CODE";
      break;
    case 13:
      result = "RAPID_COMMIT";
      break;
    case 14:
      result = "USER_CLASS";
      break;
    case 15:
      result = "VENDOR_CLASS";
      break;
    case 16:
      result = "VENDOR_OPTS";
      break;
    case 17:
      result = "INTERFACE_ID";
      break;
    case 18:
      result = "RECONF_MSG";
      break;
    case 19:
      result = "RECONF_ACCEPT";
      break;
    case 20:
      result = "SIP_SERVER_D";
      break;
    case 21:
      result = "SIP_SERVER_A";
      break;
    case 22:
      result = "DNS_SERVERS";
      break;
    case 23:
      result = "DOMAIN_LIST";
      break;
    case 24:
      result = "IA_PD";
      break;
    case 25:
      result = "IAPREFIX";
      break;
    case 38:
      result = "CLIENT_FQDN";
      break;
    case 40:
      result = "POSIX_TIMEZONE";
      break;
    case 41:
      result = "TZDB_TIMEZONE";
      break;
    default:
      if ("CLIENTID" == 103)
      {
        result = "CAPTIVE_PORTAL_URL";
      }

      else if ("CLIENTID" == 144)
      {
        result = "DNS_ENCRYPTED_SERVERS";
      }

      else
      {
LABEL_6:
        result = "<unknown>";
      }

      break;
  }

  return result;
}

uint64_t sub_5B99C(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = 0;
  return result;
}

BOOL sub_5B9B0(uint64_t a1, unsigned int a2, size_t __len, void *__src, char *a5)
{
  v6 = *(a1 + 8) - *(a1 + 12);
  v7 = __len + 4;
  *a5 = 0;
  if (v6 < __len + 4)
  {
    v11 = sub_5B7F0(a2);
    snprintf(a5, 0x100uLL, "No room for option %s (%d), %d < %d", v11, a2, v6, v7);
  }

  else
  {
    v9 = (*a1 + *(a1 + 12));
    *v9 = __rev16(a2);
    v9[1] = __rev16(__len);
    if (__len)
    {
      memmove(v9 + 2, __src, __len);
    }

    *(a1 + 12) += v7;
  }

  return v6 >= v7;
}

BOOL sub_5BA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a4, a6, a7, a8);
  v13 = &v18 - v12;
  if (v10 >= 1)
  {
    v14 = v10;
    v15 = v13;
    do
    {
      v16 = *v9++;
      *v15++ = bswap32(v16) >> 16;
      --v14;
    }

    while (v14);
  }

  return sub_5B9B0(v8, 6u, 2 * (v10 & 0x7FFFu), v13, v11);
}

_OWORD *sub_5BB1C(unsigned __int16 *a1, unsigned int a2, char *a3)
{
  v10 = 0uLL;
  sub_157D0(&v10);
  if (a2 >= 4)
  {
    v7 = a1;
    while (1)
    {
      v8 = (bswap32(v7[1]) >> 16) + 4;
      v6 = a2 - v8;
      if (a2 < v8)
      {
        break;
      }

      sub_157D8(&v10, v7);
      v7 = (v7 + v8);
      a2 -= v8;
      if (v6 < 4)
      {
        goto LABEL_6;
      }
    }

    if (a3)
    {
      sub_5B7F0(bswap32(*v7) >> 16);
      snprintf(a3, 0x100uLL, "truncated option %s (%d) at offset %d, left %d < need %d");
    }
  }

  else
  {
    v6 = a2;
LABEL_6:
    if (!v6)
    {
      result = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
      *result = v10;
      return result;
    }

    if (a3)
    {
      snprintf(a3, 0x100uLL, "truncated buffer at offset %d\n");
    }
  }

  sub_1595C(&v10);
  return 0;
}

_OWORD *sub_5BC3C(uint64_t a1, int a2, char *a3)
{
  v3 = __OFSUB__(a2, 4);
  v4 = a2 - 4;
  if (v4 < 0 != v3)
  {
    return 0;
  }

  else
  {
    return sub_5BB1C((a1 + 4), v4, a3);
  }
}

void sub_5BC54(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    sub_1595C(v1);

    free(v1);
  }
}

void DHCPv6OptionListFPrint(uint64_t a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  sub_20AD8(Mutable, a2, 0);
  SCPrint();

  CFRelease(Mutable);
}

const char *sub_5BD28(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_6A990)[a1];
  }
}

uint64_t sub_5BD4C(uint64_t a1, _WORD *a2, unsigned __int16 **a3, int *a4)
{
  v24 = 0;
  v7 = sub_1D258(a1, 13, &v24, 0);
  if (!v7)
  {
    v9 = 0;
    LOWORD(v11) = 0;
    goto LABEL_5;
  }

  v8 = v24;
  v9 = v24 - 2;
  if (v24 >= 2)
  {
    v10 = *v7++;
    v11 = bswap32(v10) >> 16;
LABEL_5:
    v12 = 1;
    goto LABEL_9;
  }

  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v13 = _os_log_pack_size();
    __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 67109376;
    *(v22 + 4) = v8;
    *(v22 + 8) = 1024;
    *(v22 + 10) = 2;
    __SC_log_send();
    LOWORD(v11) = 1;
    v12 = 0;
    v9 = 0;
    v7 = 0;
  }

  else
  {
    v12 = 0;
    v9 = 0;
    v7 = 0;
    LOWORD(v11) = 1;
  }

LABEL_9:
  *a2 = v11;
  if (a4)
  {
    *a4 = v9;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return v12;
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  v6 = _CFDataFind(theData, dataToFind, searchRange, compareOptions);
  length = v6.length;
  location = v6.location;
  result.length = length;
  result.location = location;
  return result;
}