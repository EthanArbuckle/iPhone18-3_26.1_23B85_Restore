uint64_t sub_B18(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    if (*(v1 + 52))
    {
      *(v1 + 52) = 0;
      return v2(*(v1 + 16), *(v1 + 24), *(v1 + 32));
    }
  }

  return result;
}

void sub_B40(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v117 = current_time;
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  if (a2 == 5)
  {
    LODWORD(v118[0]) = 0;
    v115 = 0;
    v116 = 0;
    v114 = 0;
    v30 = sub_280D8(a3, *(v7 + 2332), v8, &v116, &v115 + 1);
    v31 = HIDWORD(v115);
    if (v30)
    {
      v32 = HIDWORD(v115) == 0;
    }

    else
    {
      v32 = 1;
    }

    if (!v32 && v116 == 2)
    {
      if (dword_70140 && sub_A694(a1) && !*(v7 + 44) && sub_29624(a3 + 16, v118))
      {
        sub_29688(a1, 0, v118);
      }

      else if ((*(*a3 + 16) + 1) >= 2)
      {
        v34 = dword_70018;
        dhcp_get_lease_from_options(a3 + 16, &v116 + 1, &v115, &v114);
        v35 = sub_5883C(a3 + 16, off_70010, dword_70018);
        v36 = *(*a3 + 16);
        v37 = bswap32(v36);
        if (v36 == 65193)
        {
          v38 = 0;
        }

        else
        {
          v38 = 1000;
        }

        v39 = v37 >> 20 == 2753 || HIBYTE(v37) == 10;
        v40 = HIWORD(v37);
        if (v39 || v40 == 49320)
        {
          v38 = 100;
        }

        v42 = v38 + v35;
        if (!*(v7 + 1724) || v42 > *(v7 + 1728))
        {
          sub_2ADA0(a1);
          sub_58494(v7 + 208);
          memmove((v7 + 224), *a3, *(a3 + 8));
          v43 = *(a3 + 8);
          *(v7 + 1724) = v43;
          *(v7 + 1728) = v42;
          sub_585E0((v7 + 208), v7 + 224, v43, 0);
          *(v7 + 1732) = *(*a3 + 16);
          *(v7 + 1736) = v31;
          sub_28AEC(a1, "INIT", HIDWORD(v116), v115, v114, current_time);
          if (v42 == v34 + 1000 || sub_2990C(v8))
          {
LABEL_62:
            sub_1B0D8(a1, 0, 0);
            return;
          }

          if (!*(v7 + 44))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v44 = _os_log_pack_size();
              __chkstk_darwin(v44, v45, v46, v47, v48, v49, v50, v51);
              v52 = *__error();
              v53 = _os_log_pack_fill();
              v54 = nullsub_1(v8);
              v55 = current_time - *(v7 + 1752);
              *v53 = 136315394;
              *(v53 + 4) = v54;
              *(v53 + 12) = 2048;
              *(v53 + 14) = v55;
              __SC_log_send();
            }

            *(v7 + 44) = 1;
            timer_callout_set(*(v7 + 1760), sub_B40, a1, 2, 0, G_gather_secs);
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

      HIDWORD(v116) = 10974720;
      memset(v118, 0, sizeof(v118));
      v9 = *(v7 + 1744);
      sub_9D7C(a1, 3u);
      *v7 = 1;
      *(v7 + 200) = 0;
      sub_8CD0(a1);
      if (*(v7 + 1776) == 0.0)
      {
        *(v7 + 1776) = current_time;
      }

      v10 = *(v7 + 168);
      v11 = sub_A694(a1);
      if (v10)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10 != 0;
      }

      v14 = sub_A840(v8);
      v15 = sub_638C(v8);
      v16 = sub_AD1C(v8);
      v17 = sub_A848((v7 + 1784), 1, v14, v15, v16, *(v7 + 24), *(v7 + 32), v13, v118);
      *(v7 + 176) = v17;
      if (!v17)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_55;
        }

        v56 = _os_log_pack_size();
        __chkstk_darwin(v56, v57, v58, v59, v60, v61, v62, v63);
        v64 = *__error();
LABEL_53:
        v74 = _os_log_pack_fill();
        v75 = nullsub_1(v8);
        *v74 = 136315138;
        *(v74 + 4) = v75;
        goto LABEL_54;
      }

      if (sub_ADA4(v118, 51, 4, &v116 + 4))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v18 = _os_log_pack_size();
          __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
          v26 = *__error();
          v27 = _os_log_pack_fill();
          v28 = nullsub_1(v8);
          v29 = sub_588A8(v118);
          *v27 = 136315394;
          *(v27 + 4) = v28;
          *(v27 + 12) = 2080;
          *(v27 + 14) = v29;
LABEL_54:
          __SC_log_send();
        }

LABEL_55:
        sub_25B1C(a1, 5u);
        return;
      }

      sub_B1BC(a1, v118);
      if (sub_ADA4(v118, 255, 0, 0))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_55;
        }

        v65 = _os_log_pack_size();
        __chkstk_darwin(v65, v66, v67, v68, v69, v70, v71, v72);
        v73 = *__error();
        goto LABEL_53;
      }

      v76 = sub_B830(v118) + 240;
      if (v76 <= 0x12C)
      {
        v76 = 300;
      }

      *(v7 + 184) = v76;
      if (v9 != 6)
      {
        *(v7 + 1752) = current_time;
      }

      *(v7 + 2340) = G_initial_wait_secs;
      *(v7 + 1768) = 0;
      ++*(v7 + 2332);
      *(v7 + 1728) = 0;
      *(v7 + 44) = 0;
      *(v7 + 48) = 0;
      sub_B744(a1);
      bootp_client_enable_receive(*(v7 + 16), sub_B40, a1, 5);
      sub_BC60(a1, 1);
    }

    if (*(v7 + 44) == 1)
    {
      goto LABEL_62;
    }

    v77 = *(v7 + 1768);
    v78 = v77 + 1;
    *(v7 + 1768) = v77 + 1;
    if (v77 >= 1)
    {
      v79 = sub_169C(a1);
      if (!HIDWORD(v79) && v79)
      {
        sub_263C8(a1);
        return;
      }

      v78 = *(v7 + 1768);
    }

    if (v78 > dword_70034 && !sub_2440(a1))
    {
      sub_16C0(a1, 0, &v117);
    }

    v80 = sub_2440(a1);
    v81 = *(v7 + 1768);
    if (!v80)
    {
      if (v81 > dword_7002C && dword_70024 != 0)
      {
        sub_4A20(a1, 9);
        sub_4884(a1, 1);
        v81 = *(v7 + 1768);
      }

      if (v81 > dword_70030)
      {
        sub_5A04(a1);
        v81 = *(v7 + 1768);
      }
    }

    if (v81 <= G_max_retries + 1)
    {
      v83 = *(v7 + 176);
      *(v83 + 4) = bswap32(*(v7 + 2332));
      *(v83 + 8) = __rev16((v117 - *(v7 + 1752)));
      if ((bootp_client_transmit(*(v7 + 16), 0xFFFFFFFF, 0, word_70044, word_70020, v83, *(v7 + 184)) & 0x80000000) != 0)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v84 = _os_log_pack_size();
          __chkstk_darwin(v84, v85, v86, v87, v88, v89, v90, v91);
          v92 = *__error();
          v93 = _os_log_pack_fill();
          v94 = nullsub_1(v8);
          *v93 = 136315138;
          *(v93 + 4) = v94;
          __SC_log_send();
        }
      }

      v95 = *(v7 + 2340);
      v96 = sub_65CC(0, 999999);
      v97 = v96;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v98 = _os_log_pack_size();
        v112 = &v112;
        __chkstk_darwin(v98, v99, v100, v101, v102, v103, v104, v105);
        v113 = v96;
        v106 = *__error();
        v107 = _os_log_pack_fill();
        v108 = nullsub_1(v8);
        v109 = v117 - *(v7 + 1752);
        *v107 = 136315906;
        *(v107 + 4) = v108;
        *(v107 + 12) = 2048;
        *(v107 + 14) = v109;
        *(v107 + 22) = 2048;
        *(v107 + 24) = v95;
        *(v107 + 32) = 1024;
        *(v107 + 34) = v96;
        v97 = v113;
        __SC_log_send();
      }

      timer_set_relative(*(v7 + 1760), v95, v97, sub_B40, a1, 2, 0);
      v110 = 2 * *(v7 + 2340);
      if (v110 >= G_max_wait_secs)
      {
        v110 = G_max_wait_secs;
      }

      *(v7 + 2340) = v110;
    }

    else if (sub_2440(a1))
    {
      sub_28E1C(a1, 0, 0);
    }

    else
    {
      v111 = sub_1688(a1);
      if (dword_70024)
      {
        sub_4884(a1, 1);
      }

      sub_8CD0(a1);
      sub_102A4(a1, 9u);
      sub_BC60(a1, 0);
      timer_set_relative(*(v111 + 1760), 60, 0, sub_B40, a1, 0, 0);
    }
  }
}

void sub_16C0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1688(a1);
  v7 = sub_1690(a1);
  if (a2 == 6)
  {
    if (*(a3 + 8))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_12:
        if (!*(v6 + 48))
        {
          return;
        }

        sub_102A4(a1, 0xBu);
        v24 = a1;
        v25 = 1;
        goto LABEL_14;
      }

      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      v22 = nullsub_1(v7);
      v23 = sub_21F58(*(v6 + 8));
      *v21 = 136315394;
      *(v21 + 4) = v22;
      *(v21 + 12) = 2080;
      *(v21 + 14) = v23;
LABEL_11:
      __SC_log_send();
      goto LABEL_12;
    }

    if (!*(a3 + 12))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_12;
      }

      v64 = _os_log_pack_size();
      __chkstk_darwin(v64, v65, v66, v67, v68, v69, v70, v71);
      v72 = *__error();
      v73 = _os_log_pack_fill();
      v74 = nullsub_1(v7);
      *v73 = 136315138;
      *(v73 + 4) = v74;
      goto LABEL_11;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v26 = _os_log_pack_size();
      __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
      v34 = *__error();
      v35 = _os_log_pack_fill();
      v36 = nullsub_1(v7);
      v37 = *(a3 + 16);
      v38 = *(a3 + 17);
      v39 = *(a3 + 18);
      v40 = *(a3 + 19);
      v41 = *(a3 + 20);
      v42 = *(a3 + 21);
      v43 = *(a3 + 22);
      v44 = *(a3 + 23);
      *v35 = 136317186;
      *(v35 + 4) = v36;
      *(v35 + 12) = 1024;
      *(v35 + 14) = v37;
      *(v35 + 18) = 1024;
      *(v35 + 20) = v38;
      *(v35 + 24) = 1024;
      *(v35 + 26) = v39;
      *(v35 + 30) = 1024;
      *(v35 + 32) = v40;
      *(v35 + 36) = 1024;
      *(v35 + 38) = v41;
      *(v35 + 42) = 1024;
      *(v35 + 44) = v42;
      *(v35 + 48) = 1024;
      *(v35 + 50) = v43;
      *(v35 + 54) = 1024;
      *(v35 + 56) = v44;
      __SC_log_send();
    }

    v45 = sub_AD1C(v7);
    Lease = DHCPLeaseListFindLease(v6 + 136, *(a3 + 16), *(a3 + 20), (a3 + 24), v45);
    if (Lease == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v108 = _os_log_pack_size();
        __chkstk_darwin(v108, v109, v110, v111, v112, v113, v114, v115);
        v116 = *__error();
        v117 = _os_log_pack_fill();
        v118 = nullsub_1(v7);
        v119 = *(a3 + 16);
        v120 = *(a3 + 17);
        v121 = *(a3 + 18);
        v122 = *(a3 + 19);
        *v117 = 136316162;
        *(v117 + 4) = v118;
        *(v117 + 12) = 1024;
        *(v117 + 14) = v119;
        *(v117 + 18) = 1024;
        *(v117 + 20) = v120;
        *(v117 + 24) = 1024;
        *(v117 + 26) = v121;
        *(v117 + 30) = 1024;
        *(v117 + 32) = v122;
        __SC_log_send();
      }

      if (!*(v6 + 48))
      {
        return;
      }
    }

    else
    {
      v47 = sub_42C0(v6 + 136, Lease);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v48 = _os_log_pack_size();
        __chkstk_darwin(v48, v49, v50, v51, v52, v53, v54, v55);
        v56 = *__error();
        v57 = _os_log_pack_fill();
        v58 = nullsub_1(v7);
        v59 = *(v47 + 4);
        v60 = *(v47 + 5);
        v61 = *(v47 + 6);
        v62 = *(v47 + 7);
        *v57 = 136316162;
        *(v57 + 4) = v58;
        *(v57 + 12) = 1024;
        *(v57 + 14) = v59;
        *(v57 + 18) = 1024;
        *(v57 + 20) = v60;
        *(v57 + 24) = 1024;
        *(v57 + 26) = v61;
        *(v57 + 30) = 1024;
        *(v57 + 32) = v62;
        __SC_log_send();
      }

      v63 = *(v6 + 1744);
      if (v63 != 6)
      {
        if (v63 == 3 && *(v6 + 44) != 1)
        {
          sub_2865C(a1, v47, 0);
          sub_2C440(a1);
        }

        return;
      }

      if (*(v6 + 44) == 1)
      {
        LODWORD(v150[0]) = 0;
        v145 = *(v47 + 4);
        if (v145 != *(v6 + 1732) || !sub_274FC(v6 + 208, v145, v150) || LODWORD(v150[0]) != *(v47 + 20))
        {
          return;
        }

        goto LABEL_56;
      }

      if (sub_2865C(a1, v47, 0))
      {
        v150[0] = 0;
        v150[1] = 0;
        v146 = *(v6 + 2332) + 1;
        *(v6 + 2332) = v146;
        *(*(v6 + 176) + 4) = bswap32(v146);
        sub_58490(v150);
        sub_585E0(v150, v6 + 1784, 0x224u, 0);
        v147 = sub_58598(v150, 50, 4);
        if (v147)
        {
          *v147 = *(v47 + 4);
          *(v6 + 1768) = 0;
        }

        sub_58494(v150);
        goto LABEL_56;
      }

      if (!*(v6 + 48))
      {
LABEL_56:
        sub_2C440(a1);
        v148 = sub_58598(v6 + 208, 1, 4);
        if (v148)
        {
          v149 = *v148;
        }

        else
        {
          v149 = 0;
        }

        *(v6 + 36) = 0;
        *(v6 + 2336) = 0;
        sub_2BB1C(a1, *(v6 + 1732), v149, 0);
        sub_29BF4(a1);
        if (dword_70028)
        {
          sub_4884(a1, 0);
        }

        return;
      }
    }

    sub_102A4(a1, 0xBu);
    v24 = a1;
    v25 = 0;
LABEL_14:
    sub_2994C(v24, v25);
    return;
  }

  if (a2)
  {
    return;
  }

  v151 = 0;
  v150[0] = 0;
  if (!G_router_arp || sub_2464(a1))
  {
    return;
  }

  if (!sub_2480(v7))
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
LABEL_29:
    v75 = DHCPLeaseListCopyARPAddressInfo((v6 + 136), v9, v10, v11, 1, &v151);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v76 = __SC_log_enabled();
    if (v75)
    {
      if (v76)
      {
        v77 = _os_log_pack_size();
        __chkstk_darwin(v77, v78, v79, v80, v81, v82, v83, v84);
        v85 = *__error();
        v86 = _os_log_pack_fill();
        v87 = nullsub_1(v7);
        *v86 = 136315138;
        *(v86 + 4) = v87;
        __SC_log_send();
      }

      v88 = v151;
      if (v151 >= 1)
      {
        v89 = 0;
        do
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v90 = _os_log_pack_size();
            __chkstk_darwin(v90, v91, v92, v93, v94, v95, v96, v97);
            v98 = *__error();
            v99 = _os_log_pack_fill();
            v100 = &v75[6 * v89];
            v101 = *v100;
            v102 = v100[1];
            ++v89;
            v103 = v100[2];
            v104 = v100[3];
            v105 = v100[4];
            v106 = v100[5];
            v107 = v100[6];
            LODWORD(v100) = v100[7];
            *v99 = 67111168;
            *(v99 + 4) = v89;
            *(v99 + 8) = 1024;
            *(v99 + 10) = v101;
            *(v99 + 14) = 1024;
            *(v99 + 16) = v102;
            *(v99 + 20) = 1024;
            *(v99 + 22) = v103;
            *(v99 + 26) = 1024;
            *(v99 + 28) = v104;
            *(v99 + 32) = 1024;
            *(v99 + 34) = v105;
            *(v99 + 38) = 1024;
            *(v99 + 40) = v106;
            *(v99 + 44) = 1024;
            *(v99 + 46) = v107;
            *(v99 + 50) = 1024;
            *(v99 + 52) = v100;
            __SC_log_send();
          }

          else
          {
            ++v89;
          }

          v88 = v151;
        }

        while (v89 < v151);
      }

      sub_21D40(*(v6 + 8), sub_16C0, a1, 6, v75, v88);
      free(v75);
    }

    else if (v76)
    {
      v123 = _os_log_pack_size();
      __chkstk_darwin(v123, v124, v125, v126, v127, v128, v129, v130);
      v131 = *__error();
      v132 = _os_log_pack_fill();
      v133 = nullsub_1(v7);
      *v132 = 136315138;
      *(v132 + 4) = v133;
      __SC_log_send();
    }

    return;
  }

  v8 = sub_CBBC(a1);
  if (v8)
  {
    v9 = v8;
    v10 = sub_2C964(a1);
    *v150 = *a3 - G_router_arp_wifi_lease_start_threshold_secs;
    v11 = v150;
    goto LABEL_29;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v134 = _os_log_pack_size();
    __chkstk_darwin(v134, v135, v136, v137, v138, v139, v140, v141);
    v142 = *__error();
    v143 = _os_log_pack_fill();
    v144 = nullsub_1(v7);
    *v143 = 136315138;
    *(v143 + 4) = v144;
    __SC_log_send();
  }
}

void sub_21D4(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  sub_2424();
  if (v2 >= 1)
  {
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

LABEL_6:
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
    return;
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v12 = _os_log_pack_size();
    __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    v22 = sub_5A18(*(a1 + 32));
    *v21 = 67109120;
    v21[1] = v22;
    __SC_log_send();
  }

  sub_2BC0(a1);
}

uint64_t sub_2464(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*(a1 + 116) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

_DWORD *DHCPLeaseListCopyARPAddressInfo(uint64_t *a1, const void *a2, const void *a3, double *a4, int a5, _DWORD *a6)
{
  sub_297C(a1);
  v10 = sub_295C(a1);
  if (!v10)
  {
LABEL_30:
    v69 = 0;
    result = 0;
    goto LABEL_31;
  }

  v11 = v10;
  result = malloc_type_malloc(24 * v10, 0x1000040504FFAC1uLL);
  if (v11 < 1)
  {
    goto LABEL_29;
  }

  v71 = a6;
  v74 = 0;
  v13 = 0;
  v70 = result;
  v72 = result;
  do
  {
    v14 = sub_42C0(a1, v13);
    v15 = v14;
    if (!a2)
    {
      goto LABEL_9;
    }

    v16 = *(v14 + 48);
    if (!v16)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v49 = _os_log_pack_size();
        __chkstk_darwin(v49, v50, v51, v52, v53, v54, v55, v56);
        v57 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      goto LABEL_24;
    }

    if (CFEqual(v16, a2) || sub_57D34(a3, *(v15 + 56)))
    {
LABEL_9:
      if (!*(v15 + 20) || (v17 = *(v15 + 40), !*(v15 + 40)))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_24;
        }

        v35 = _os_log_pack_size();
        __chkstk_darwin(v35, v36, v37, v38, v39, v40, v41, v42);
        v43 = *__error();
        v44 = _os_log_pack_fill();
        v45 = *(v15 + 4);
        v46 = *(v15 + 5);
        v47 = *(v15 + 6);
        v48 = *(v15 + 7);
        *v44 = 67109888;
        *(v44 + 4) = v45;
        *(v44 + 8) = 1024;
        *(v44 + 10) = v46;
        *(v44 + 14) = 1024;
        *(v44 + 16) = v47;
        *(v44 + 20) = 1024;
        *(v44 + 22) = v48;
        goto LABEL_20;
      }

      if (*v15 != 1 || a5 != 0)
      {
        if (a4 && *(v15 + 8) < *a4)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_24;
          }

          v19 = _os_log_pack_size();
          __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
          v27 = *__error();
          v28 = _os_log_pack_fill();
          v29 = *(v15 + 4);
          v30 = *(v15 + 5);
          v31 = *(v15 + 6);
          v32 = *(v15 + 7);
          v33 = *(v15 + 8);
          v34 = *a4;
          *v28 = 67110400;
          *(v28 + 4) = v29;
          *(v28 + 8) = 1024;
          *(v28 + 10) = v30;
          *(v28 + 14) = 1024;
          *(v28 + 16) = v31;
          *(v28 + 20) = 1024;
          *(v28 + 22) = v32;
          *(v28 + 26) = 2048;
          *(v28 + 28) = v33;
          *(v28 + 36) = 2048;
          *(v28 + 38) = v34;
          goto LABEL_20;
        }

        *v72 = *(v15 + 4);
        v72[1] = *(v15 + 20);
        memmove(v72 + 2, (v15 + 24), v17);
        ++v74;
        v72 += 6;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v58 = _os_log_pack_size();
        __chkstk_darwin(v58, v59, v60, v61, v62, v63, v64, v65);
        v66 = *__error();
        v67 = _os_log_pack_fill();
        v68 = nullsub_1(*(v15 + 48));
        *v67 = 138412290;
        *(v67 + 4) = v68;
LABEL_20:
        __SC_log_send();
      }
    }

LABEL_24:
    ++v13;
  }

  while (v11 != v13);
  result = v70;
  a6 = v71;
  v69 = v74;
  if (!v74)
  {
LABEL_29:
    free(result);
    goto LABEL_30;
  }

LABEL_31:
  *a6 = v69;
  return result;
}

uint64_t sub_2960(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(result + 12);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_297C(uint64_t *a1)
{
  v2 = sub_295C(a1);
  if (v2)
  {
    v3 = v2;
    current_time = timer_get_current_time();
    if (v3 >= 1)
    {
      v5 = current_time;
      v6 = 0;
      do
      {
        v7 = sub_42C0(a1, v6);
        v8 = *(v7 + 16);
        if (v8 == -1 || (v9 = v7, v5 < *(v7 + 8) + v8))
        {
          ++v6;
        }

        else
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v10 = _os_log_pack_size();
            __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
            v18 = *__error();
            v19 = _os_log_pack_fill();
            v20 = v9[4];
            v21 = v9[5];
            v22 = v9[6];
            v23 = v9[7];
            v24 = v9[20];
            v25 = v9[21];
            v26 = v9[22];
            v27 = v9[23];
            *v19 = 67110912;
            *(v19 + 4) = v20;
            *(v19 + 8) = 1024;
            *(v19 + 10) = v21;
            *(v19 + 14) = 1024;
            *(v19 + 16) = v22;
            *(v19 + 20) = 1024;
            *(v19 + 22) = v23;
            *(v19 + 26) = 1024;
            *(v19 + 28) = v24;
            *(v19 + 32) = 1024;
            *(v19 + 34) = v25;
            *(v19 + 38) = 1024;
            *(v19 + 40) = v26;
            *(v19 + 44) = 1024;
            *(v19 + 46) = v27;
            __SC_log_send();
          }

          sub_13DB8(a1, v6);
          --v3;
        }
      }

      while (v6 < v3);
    }
  }
}

void sub_2B78(dispatch_object_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = v1[1];
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_release(v1[1]);
    }

    free(v1);
    *a1 = 0;
  }
}

void sub_2BC0(uint64_t a1)
{
  if (*(a1 + 57) == 1)
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
      *(v10 + 4) = "bootp_session_schedule_close";
      __SC_log_send();
    }
  }

  else
  {
    *(a1 + 57) = 1;
    v11 = (a1 + 32);

    sub_2B78(v11);
  }
}

uint64_t sub_2D2C(uint64_t a1, uint64_t a2)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "bootp_session_fd_complete";
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2;
    __SC_log_send();
  }

  *(a1 + 57) = 0;
  v14 = *(a1 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  v15 = __SC_log_enabled();
  if (v14 < 1)
  {
    if (v15)
    {
      v27 = _os_log_pack_size();
      __chkstk_darwin(v27, v28, v29, v30, v31, v32, v33, v34);
      v35 = *__error();
      v36 = _os_log_pack_fill();
      *v36 = 136315394;
      *(v36 + 4) = "bootp_session_fd_complete";
      *(v36 + 12) = 1024;
      *(v36 + 14) = a2;
      __SC_log_send();
    }

    result = close(a2);
    if ((result & 0x80000000) != 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v37 = _os_log_pack_size();
        __chkstk_darwin(v37, v38, v39, v40, v41, v42, v43, v44);
        v45 = *__error();
        v46 = _os_log_pack_fill();
        v47 = __error();
        v48 = strerror(*v47);
        *v46 = 136315650;
        *(v46 + 4) = "bootp_session_fd_complete";
        *(v46 + 12) = 1024;
        *(v46 + 14) = a2;
        *(v46 + 18) = 2080;
        *(v46 + 20) = v48;
        return __SC_log_send();
      }
    }
  }

  else
  {
    if (v15)
    {
      v16 = _os_log_pack_size();
      __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      *v25 = 136315394;
      *(v25 + 4) = "bootp_session_fd_complete";
      *(v25 + 12) = 1024;
      *(v25 + 14) = a2;
      __SC_log_send();
    }

    return sub_C788(a1, a2);
  }

  return result;
}

void sub_30B8(const __SCDynamicStore *a1, CFArrayRef theArray)
{
  v49 = 0;
  v50 = 0;
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_73;
  }

  v5 = Count;
  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 138412546;
      *(v15 + 4) = theArray;
      *(v15 + 12) = 1024;
      *(v15 + 14) = v5;
      __SC_log_send();
    }
  }

  if (v5 < 1)
  {
    v22 = 1;
    goto LABEL_32;
  }

  v40 = a1;
  NetworkGlobalEntity = 0;
  v47 = 0;
  v17 = 0;
  v45 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
    if (CFEqual(ValueAtIndex, qword_701D0) || CFEqual(ValueAtIndex, qword_701D8))
    {
      v18 = 1;
    }

    else if (CFStringHasPrefix(ValueAtIndex, kSCDynamicStoreDomainSetup))
    {
      if (!NetworkGlobalEntity)
      {
        NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
        v50 = NetworkGlobalEntity;
      }

      if (CFEqual(ValueAtIndex, NetworkGlobalEntity))
      {
        v19 = 1;
      }

      v47 = 1;
    }

    else if (CFStringHasSuffix(ValueAtIndex, kSCCompInterface))
    {
      v45 = 1;
    }

    else
    {
      Mutable = v49;
      if (!v49)
      {
        Mutable = CFArrayCreateMutable(0, v5, &kCFTypeArrayCallBacks);
        v49 = Mutable;
      }

      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v17;
  }

  while (v5 != v17);
  v22 = v19 == 0;
  if (v18)
  {
    a1 = v40;
    sub_347CC(v40);
  }

  else
  {
    a1 = v40;
  }

  if (v45 && sub_3509C())
  {
    sub_351D4();
  }

  else if (!v47)
  {
    goto LABEL_32;
  }

  v52 = 0;
  *&v51 = sub_3545C(a1, &v52);
  sub_35E48(v51, v52);
  sub_41E8(&v51);
  sub_41E8(&v52);
LABEL_32:
  v23 = v49;
  if (v49)
  {
    v24 = CFArrayGetCount(v49);
    if (v24 >= 1)
    {
      v25 = v24;
      v26 = 0;
      v27 = kSCEntNetRefreshConfiguration;
      v28 = kSCEntNetIPv6;
      v48 = kSCEntNetNAT64;
      v46 = kSCEntNetInterfaceActiveDuringSleepRequested;
      v44 = kSCEntNetIPv6RouterExpired;
      v43 = kSCEntNetIPv4ARPCollision;
      do
      {
        v29 = CFArrayGetValueAtIndex(v23, v26);
        if (CFStringHasSuffix(v29, kSCEntNetLink))
        {
          sub_36D8(a1, v29);
        }

        else if (CFStringHasSuffix(v29, kSCEntNetAirPort))
        {
          sub_348C4(v29);
        }

        else if (CFStringHasSuffix(v29, v27))
        {
          if (CFStringHasPrefix(v29, qword_701E8))
          {
            v30 = sub_40EC(v29, @"/", 3);
            v52 = v30;
            if (v30)
            {
              v51 = 0uLL;
              v31 = sub_13518(v30);
              if (v31)
              {
                v32 = v31;
                if ((*v31 & 0x10) == 0)
                {
                  v41 = v28;
                  LODWORD(v51) = 0;
                  *(&v51 + 4) = sub_2430(*(v31 + 8));
                  HIDWORD(v51) = v33;
                  if (sub_295C(v32 + 24) >= 1)
                  {
                    v34 = 0;
                    do
                    {
                      v35 = sub_42C0(v32 + 24, v34);
                      if (*(v35 + 25))
                      {
                        *(v35 + 116) &= ~4u;
                      }

                      sub_8DB0(v35, 8, &v51);
                      ++v34;
                    }

                    while (v34 < sub_295C(v32 + 24));
                  }

                  sub_8D44(v32 + 56, 8, &v51);
                  v28 = v41;
                }
              }

              sub_41E8(&v52);
            }
          }
        }

        else if (CFStringHasSuffix(v29, v28))
        {
          sub_13310(v29);
        }

        else if (CFStringHasSuffix(v29, v48))
        {
          sub_34B38(a1, v29);
        }

        else if (CFStringHasSuffix(v29, v46))
        {
          v42 = v28;
          if (CFStringHasPrefix(v29, qword_701E8))
          {
            v36 = sub_40EC(v29, @"/", 3);
            *&v51 = v36;
            if (v36)
            {
              v37 = sub_13518(v36);
              sub_41E8(&v51);
              if (v37)
              {
                v38 = SCDynamicStoreCopyValue(a1, v29);
                if (v38)
                {
                  CFRelease(v38);
                  v39 = 1;
                }

                else
                {
                  v39 = 0;
                }

                sub_376F4(v37, v39);
              }
            }
          }

          v28 = v42;
        }

        else if (CFStringHasSuffix(v29, v44))
        {
          sub_34DEC(v29);
        }

        else
        {
          v53.length = CFStringGetLength(v29);
          v53.location = 0;
          if (CFStringFindWithOptions(v29, v43, v53, 0, 0))
          {
            sub_34F88(a1, v29);
          }
        }

        ++v26;
      }

      while (v26 != v25);
    }
  }

  if (!v22)
  {
    byte_70190 = 1;
    dispatch_source_merge_data(qword_701C0, 1uLL);
    if (dword_700C0)
    {
      byte_701AC = 1;
      dispatch_source_merge_data(qword_701C0, 1uLL);
    }
  }

LABEL_73:
  sub_41E8(&v50);
  sub_41E8(&v49);
}

void sub_36D8(const __SCDynamicStore *a1, CFStringRef theString)
{
  if (CFStringHasPrefix(theString, qword_701E8))
  {
    v4 = sub_40EC(theString, @"/", 3);
    v126 = v4;
    if (v4)
    {
      v123[0] = 0;
      v123[1] = 0;
      sub_4160(v4, __s2, 17, 0);
      sub_41E8(&v126);
      v5 = sub_4220(__s2, 0);
      v6 = sub_42EC(a1, theString);
      v127 = v6;
      if (v6 && CFDictionaryContainsKey(v6, kSCPropNetLinkDetaching))
      {
        if (v5)
        {
          sub_2F45C(v5, 1);
          sub_2F4D0(v5, 1);
        }

        goto LABEL_69;
      }

      v7 = sub_4348(qword_70198, __s2);
      if (v7)
      {
        v8 = v7;
        v9 = sub_43CC(v7);
        v11 = v10;
        v124 = v9;
        v125 = v10;
        if (v9)
        {
          v12 = sub_12A50(v8);
          if (!v5)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v12 = 0;
          if (!v5)
          {
            goto LABEL_69;
          }
        }

        if ((*v5 & 0x10) == 0)
        {
          *(v5 + 176) = 0;
          sub_12D14(v5 + 24);
          sub_12D14(v5 + 56);
          if ((*v5 & 8) != 0)
          {
            sub_144D8(*(v5 + 8));
            sub_12D68();
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v13 = _os_log_pack_size();
              v122 = &v117;
              __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
              v21 = *__error();
              v22 = _os_log_pack_fill();
              v23 = nullsub_1(*(v5 + 8));
              *v22 = 136315138;
              *(v22 + 4) = v23;
              __SC_log_send();
            }
          }

          *v5 &= 0xFFE7FFF7;
          sub_12DE8(*(v5 + 8), v8);
          sub_2424();
          v24 = _SC_syslog_os_log_mapping();
          v25 = __SC_log_enabled();
          v26 = HIDWORD(v9);
          if (v9)
          {
            if (!v25)
            {
              goto LABEL_34;
            }

            v27 = _os_log_pack_size();
            v122 = &v117;
            __chkstk_darwin(v27, v28, v29, v30, v31, v32, v33, v34);
            v35 = *__error();
            v36 = _os_log_pack_fill();
            if (v26)
            {
              v37 = "ACTIVE";
            }

            else
            {
              v37 = "INACTIVE";
            }

            v38 = " [link address changed]";
            v121 = HIDWORD(v9);
            if (!v12)
            {
              v38 = "";
            }

            v118 = v38;
            v119 = v37;
            v39 = " [wake on same network]";
            if (!v11)
            {
              v39 = "";
            }

            v117 = v39;
            v40 = sub_12E14(v8);
            v120 = v24;
            v41 = v12;
            if (v40)
            {
              v42 = " [expensive]";
            }

            else
            {
              v42 = "";
            }

            v43 = sub_12E1C(v8);
            *(v36 + 4) = __s2;
            v44 = " [carplay]";
            *v36 = 136316418;
            *(v36 + 12) = 2080;
            if (!v43)
            {
              v44 = "";
            }

            v26 = v121;
            v45 = v118;
            *(v36 + 14) = v119;
            *(v36 + 22) = 2080;
            *(v36 + 24) = v45;
            *(v36 + 32) = 2080;
            *(v36 + 34) = v117;
            *(v36 + 42) = 2080;
            *(v36 + 44) = v42;
            v12 = v41;
            *(v36 + 52) = 2080;
            *(v36 + 54) = v44;
          }

          else
          {
            if (!v25)
            {
              goto LABEL_34;
            }

            v46 = _os_log_pack_size();
            v122 = &v117;
            __chkstk_darwin(v46, v47, v48, v49, v50, v51, v52, v53);
            v54 = *__error();
            v55 = _os_log_pack_fill();
            *v55 = 136315138;
            *(v55 + 4) = __s2;
          }

          __SC_log_send();
LABEL_34:
          if (v12 || dword_701B8 == *(v5 + 124))
          {
            goto LABEL_39;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v56 = _os_log_pack_size();
            v121 = v26;
            __chkstk_darwin(v56, v57, v58, v59, v60, v61, v62, v63);
            v64 = *__error();
            v65 = _os_log_pack_fill();
            *v65 = 136315138;
            *(v65 + 4) = __s2;
            __SC_log_send();
            v26 = v121;
          }

          sub_6D48(v5);
          if (!v11)
          {
LABEL_39:
            sub_7154(v5, v123, &v124);
            if (v9)
            {
              v66 = v26 == 0;
            }

            else
            {
              v66 = 0;
            }

            v67 = !v66;
            if (v66)
            {
              if (byte_701F0 == 1)
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v68 = _os_log_pack_size();
                  __chkstk_darwin(v68, v69, v70, v71, v72, v73, v74, v75);
                  v76 = *__error();
                  v77 = _os_log_pack_fill();
                  *v77 = 136315138;
                  *(v77 + 4) = __s2;
                  __SC_log_send();
                }

                timer_cancel(*(v5 + 112));
                *v5 |= 0x20u;
              }

              else
              {
                *v5 &= ~0x20u;
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v78 = _os_log_pack_size();
                  __chkstk_darwin(v78, v79, v80, v81, v82, v83, v84, v85);
                  v86 = *__error();
                  v87 = _os_log_pack_fill();
                  v88 = qword_700C8;
                  *v87 = 136315394;
                  *(v87 + 4) = __s2;
                  *(v87 + 12) = 2048;
                  *(v87 + 14) = v88;
                  __SC_log_send();
                }

                timer_callout_set(*(v5 + 112), sub_36A34, v5, 0, 0, *&qword_700C8);
              }
            }

            else
            {
              *v5 &= ~0x20u;
              timer_cancel(*(v5 + 112));
            }

            if (sub_12E28(*(v5 + 8)) == 57 || *(v5 + 160))
            {
              v89 = 0;
            }

            else
            {
              if (v12)
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v104 = _os_log_pack_size();
                  __chkstk_darwin(v104, v105, v106, v107, v108, v109, v110, v111);
                  v112 = *__error();
                  v113 = _os_log_pack_fill();
                  v114 = nullsub_1(v8);
                  *v113 = 136315138;
                  *(v113 + 4) = v114;
                  __SC_log_send();
                }

                v115 = nullsub_1(v8);
                sub_41660(v115);
              }

              if (sub_295C(v5 + 24))
              {
                v116 = nullsub_1(v8);
                v89 = sub_7A40(v116, v67) == 0;
              }

              else
              {
                v89 = 0;
              }

              if (sub_295C(v5 + 56) && sub_12E30(v5, v67))
              {
                v89 = 1;
              }
            }

            if (v89 | v12)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v90 = _os_log_pack_size();
                __chkstk_darwin(v90, v91, v92, v93, v94, v95, v96, v97);
                v98 = *__error();
                v99 = _os_log_pack_fill();
                v100 = nullsub_1(v8);
                v101 = "link address changed";
                if (v89)
                {
                  v101 = "interface reattached";
                }

                *v99 = 136315394;
                *(v99 + 4) = v100;
                *(v99 + 12) = 2080;
                *(v99 + 14) = v101;
                __SC_log_send();
              }

              sub_30C68(v5, 4, 0);
            }

            if (sub_295C(v5 + 24) >= 1)
            {
              v102 = 0;
              do
              {
                v103 = sub_42C0(v5 + 24, v102);
                if (*(v103 + 25))
                {
                  *(v103 + 116) &= ~4u;
                }

                sub_8DB0(v103, 3, v123);
                ++v102;
              }

              while (v102 < sub_295C(v5 + 24));
            }

            sub_8D44(v5 + 56, 3, v123);
          }
        }
      }

LABEL_69:
      sub_41E8(&v127);
    }
  }
}

CFTypeRef sub_40EC(CFStringRef theString, CFStringRef separatorString, CFIndex a3)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, separatorString);
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v5 = ArrayBySeparatingStrings;
  if (CFArrayGetCount(ArrayBySeparatingStrings) <= a3)
  {
    v7 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, a3);
    v7 = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  return v7;
}

uint64_t sub_4160(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
{
  usedBufLen = 0;
  v11.length = CFStringGetLength(a1);
  v11.location = 0;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, a4, a2, a3 - 1, &usedBufLen);
  v8 = usedBufLen;
  if (a2)
  {
    a2[usedBufLen] = 0;
  }

  return (v8 + 1);
}

void sub_41E8(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_4220(const char *a1, int *a2)
{
  if (sub_295C(&unk_70160) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_42C0(&unk_70160, v4);
    v6 = nullsub_1(*(v5 + 8));
    if (!strcmp(v6, a1))
    {
      break;
    }

    if (++v4 >= sub_295C(&unk_70160))
    {
      return 0;
    }
  }

  if (a2)
  {
    *a2 = v4;
  }

  return v5;
}

uint64_t sub_42C8(uint64_t a1, int a2)
{
  if (*a1 && *(a1 + 12) > a2)
  {
    return *(*a1 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

CFPropertyListRef sub_42EC(const __SCDynamicStore *a1, const __CFString *a2)
{
  v2 = SCDynamicStoreCopyValue(a1, a2);
  v5 = v2;
  if (v2)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v2) != TypeID)
    {
      sub_41E8(&v5);
      return v5;
    }
  }

  return v2;
}

uint64_t sub_4348(uint64_t *a1, char *__s2)
{
  v4 = -104;
  v5 = -1;
  while (1)
  {
    v6 = a1 ? *(a1 + 2) : 0;
    if (++v5 >= v6)
    {
      break;
    }

    v7 = v4 + 104;
    v8 = *a1;
    v9 = strcmp((*a1 + v4 + 104), __s2);
    v4 = v7;
    if (!v9)
    {
      return v8 + v7;
    }
  }

  return 0;
}

uint64_t sub_43CC(uint64_t a1)
{
  v2 = socket(2, 2, 0);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    memset(v21, 0, 44);
    if (sub_45E8(v2, a1, v21))
    {
      if (SLODWORD(v21[2]) < 1)
      {
        v5 = 0;
        v4 = 0;
        v6 = 0;
      }

      else
      {
        v4 = (BYTE8(v21[1]) & 2) << 31;
        if (BYTE8(v21[1]))
        {
          v5 = (DWORD2(v21[1]) >> 2) & 1;
        }

        else
        {
          v5 = 0;
        }

        if (BYTE8(v21[1]))
        {
          v6 = 1;
        }

        else
        {
          v4 = 0;
          v6 = 0;
        }
      }

      *(a1 + 80) = v6 | v4;
      *(a1 + 88) = v5;
    }

    else
    {
      sub_2424();
      *__error();
      _SC_syslog_os_log_mapping();
      *__error();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        v17 = __error();
        v18 = strerror(*v17);
        *v16 = 136315394;
        *(v16 + 4) = a1;
        *(v16 + 12) = 2080;
        *(v16 + 14) = v18;
        *__error();
        __SC_log_send();
      }
    }

    *(a1 + 20) = (sub_467C(v3, a1) >> 14) & 1;
    close(v3);
  }

  result = *(a1 + 80);
  v20 = *(a1 + 88);
  return result;
}

uint64_t sub_45E8(int a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 28) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02C6938uLL, a3) != -1)
  {
    return 1;
  }

  if (*__error() != 102)
  {
    return 0;
  }

  *(a3 + 24) = 3;
  result = 1;
  *(a3 + 32) = 1;
  return result;
}

uint64_t sub_467C(int a1, uint64_t a2)
{
  v17 = 0u;
  v18 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC020698EuLL, &v17) != -1)
  {
    return v18;
  }

  sub_2424();
  *__error();
  _SC_syslog_os_log_mapping();
  *__error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    v15 = __error();
    v16 = strerror(*v15);
    *v14 = 136315394;
    *(v14 + 4) = a2;
    *(v14 + 12) = 2080;
    *(v14 + 14) = v16;
    *__error();
    __SC_log_send();
  }

  return 0;
}

void sub_4834(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1)
  {
    *(a1 + 272) = 0;
    dispatch_source_cancel(v1);

    dispatch_release(v1);
  }
}

void sub_4884(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 88);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *(v4 + 48);
  if (!v6)
  {
    return;
  }

  v7 = sub_498C(v3, v6, 1);
  if (v7 && v7 == a1)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    LODWORD(v10[0]) = 261;
    DWORD2(v10[0]) = a2;
    sub_4A28(v4, v10, &v9);
  }

  else
  {
LABEL_5:
    byte_70190 = 1;
    v8 = qword_701C0;

    dispatch_source_merge_data(v8, 1uLL);
  }
}

CFTypeRef *sub_498C(uint64_t a1, const void *a2, int a3)
{
  if (a3)
  {
    v5 = 24;
  }

  else
  {
    v5 = 56;
  }

  if (sub_295C(a1 + v5) < 1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_42C0(a1 + v5, v6);
    if (CFEqual(a2, *v7))
    {
      break;
    }

    if (++v6 >= sub_295C(a1 + v5))
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_4A28(uint64_t a1, unsigned int *a2, int *a3)
{
  v23 = 0;
  if ((*(a2 + 1) & 2) != 0)
  {
    v6 = *(a1 + 16);
    if (sub_295C(v6 + 56) == 1)
    {
      if (a2[12] != (HIWORD(*v6) & 1) || (*(a2 + 13) == *(v6 + 128) ? (v7 = *(a2 + 15) == *(v6 + 136)) : (v7 = 0), !v7))
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
          v19 = nullsub_1(*(v6 + 8));
          *v18 = 136315138;
          *(v18 + 4) = v19;
          __SC_log_send();
          v20 = 1;
          result = 0;
        }

        else
        {
          v20 = 1;
        }

        goto LABEL_12;
      }
    }
  }

  *a3 = 0;
  v21 = sub_5324(*a2);
  if (v21)
  {
    v22 = a2 + 2;
    LODWORD(v23) = 0;
    result = v21(a1, 7, &v22);
    v20 = v23;
LABEL_12:
    *a3 = v20;
    return result;
  }

  return 7;
}

uint64_t linklocal_thread(uint64_t a1, int a2, _DWORD *a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  v9 = 0;
  if (a2 <= 3)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 != 3)
        {
          return v9;
        }

LABEL_15:
        if (v7)
        {
          if (a3[1] && !a3[2])
          {
            sub_D944(a1);
            v9 = 0;
            *(v8 + 8) = 0;
            return v9;
          }

          if (!*(sub_1688(a1) + 28))
          {
            goto LABEL_19;
          }

LABEL_35:
          sub_D154(a1, 0, 0);
          return 0;
        }

        return 6;
      }

LABEL_51:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v49 = _os_log_pack_size();
        __chkstk_darwin(v49, v50, v51, v52, v53, v54, v55, v56);
        v57 = *__error();
        v58 = _os_log_pack_fill();
        v59 = nullsub_1(v6);
        *v58 = 136315138;
        *(v58 + 4) = v59;
        __SC_log_send();
      }

      if (v8)
      {
        v60 = nullsub_1(v6);
        sub_D888(v60, 0);
        sub_FE80(a1);
        sub_102A4(a1, 0);
        if (*(v8 + 1))
        {
          timer_callout_free(v8 + 1);
        }

        if (*v8)
        {
          sub_15000(v8);
        }

        free(v8);
        sub_151FC(a1, 0);
      }

      else
      {
        sub_2424();
        v9 = 6;
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v61 = _os_log_pack_size();
          __chkstk_darwin(v61, v62, v63, v64, v65, v66, v67, v68);
          v69 = *__error();
          v70 = _os_log_pack_fill();
          v71 = nullsub_1(v6);
          *v70 = 136315138;
          *(v70 + 4) = v71;
          v9 = 6;
          __SC_log_send();
        }
      }

      return v9;
    }

    if ((sub_10EE8(v6) & 8) != 0)
    {
      return 4;
    }

    sub_2424();
    if (v8)
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = _os_log_pack_size();
        __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
        v20 = *__error();
        v21 = _os_log_pack_fill();
        v22 = nullsub_1(v6);
        *v21 = 136315138;
        *(v21 + 4) = v22;
        __SC_log_send();
        return 6;
      }

      return 6;
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = _os_log_pack_size();
      __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
      v32 = *__error();
      v33 = _os_log_pack_fill();
      v34 = nullsub_1(v6);
      *v33 = 136315138;
      *(v33 + 4) = v34;
      __SC_log_send();
    }

    v8 = malloc_type_malloc(0x28uLL, 0x1020040EF90260EuLL);
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
    sub_151FC(a1, v8);
    v35 = nullsub_1(v6);
    snprintf(__str, 0x20uLL, "linklocal-%s", v35);
    v36 = timer_callout_init(__str);
    *(v8 + 1) = v36;
    if (v36)
    {
      v37 = sub_216C0(v6);
      *v8 = v37;
      if (v37)
      {
        sub_21A10(v37, 1);
        *(v8 + 7) = 1;
        if (a3 && !*a3)
        {
          *(v8 + 7) = 0;
          goto LABEL_19;
        }

        goto LABEL_34;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_50;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_50:
        v9 = 5;
        goto LABEL_51;
      }
    }

    v38 = _os_log_pack_size();
    __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45);
    v46 = *__error();
    v47 = _os_log_pack_fill();
    v48 = nullsub_1(v6);
    *v47 = 136315138;
    *(v47 + 4) = v48;
    __SC_log_send();
    goto LABEL_50;
  }

  if (a2 > 8)
  {
    if (a2 != 9)
    {
      if (a2 != 11)
      {
        return v9;
      }

      goto LABEL_15;
    }

    if (v7)
    {
      if (!v7[7] || !v7[8] || *a3 != v7[5])
      {
        return 0;
      }

      v7[5] = 0;
      sub_FE80(a1);
      sub_102A4(a1, 8u);
      goto LABEL_35;
    }

    return 6;
  }

  if (a2 == 4)
  {
    sub_38A28(a1, 0xCu);
    return 0;
  }

  if (a2 == 7)
  {
    if (*a3)
    {
      v10 = **a3;
      v11 = v10 != 0;
      if (v7[7] == v11)
      {
        return 0;
      }

      v7[7] = v11;
      if (!v10)
      {
        sub_38A28(a1, 0);
LABEL_19:
        sub_384BC(a1, 0, 0);
        return 0;
      }
    }

    else
    {
      if (v7[7] == 1)
      {
        return 0;
      }

      v7[7] = 1;
    }

LABEL_34:
    *(v8 + 5) = S_find_linklocal_address(a1);
    goto LABEL_35;
  }

  return v9;
}

uint64_t (*sub_5324(int a1))(uint64_t a1, int a2, unsigned __int8 *a3)
{
  result = 0;
  if (a1 <= 512)
  {
    if (a1 > 259)
    {
      switch(a1)
      {
        case 260:
          return sub_245A4;
        case 261:
          return linklocal_thread;
        case 262:
          return failover_thread;
        default:
          return result;
      }
    }

    else if ((a1 - 258) >= 2)
    {
      if (a1 != 257)
      {
        return result;
      }

      return sub_3996C;
    }

    else
    {
      return sub_7DFC;
    }
  }

  if (a1 > 515)
  {
    switch(a1)
    {
      case 516:
        v4 = dword_700C4 == 0;
        v5 = sub_51BFC;
        break;
      case 517:
        v4 = dword_700C4 == 0;
        v5 = sub_511E4;
        break;
      case 518:
        return sub_48A9C;
      default:
        return result;
    }
  }

  else if ((a1 - 514) >= 2)
  {
    if (a1 != 513)
    {
      return result;
    }

    v4 = dword_700C4 == 0;
    v5 = sub_4632C;
  }

  else
  {
    v4 = dword_700C4 == 0;
    v5 = sub_F06C;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

_BYTE *sub_5474(_BYTE *result, _BYTE *a2)
{
  v2 = a2;
  v3 = result;
  if ((*result & 8) != 0)
  {
    if (a2)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (!a2)
    {
      result = sub_14F3C((result + 24));
      if (!result)
      {
        result = sub_14F3C((v3 + 56));
        if (!result)
        {
          return result;
        }
      }

      v2 = result;
    }

    v4 = sub_32B7C((v3 + 24));
    if (v4 || (v4 = sub_32B7C((v3 + 56))) != 0)
    {
      v5 = v4;
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
      v16 = sub_6160(*(v2 + 6));
      v17 = nullsub_1(*(v3 + 1));
      v18 = sub_6160(v5[6]);
      *v15 = 136315650;
      *(v15 + 4) = v16;
      *(v15 + 12) = 2080;
      *(v15 + 14) = v17;
      *(v15 + 22) = 2080;
      *(v15 + 24) = v18;
      return __SC_log_send();
    }

    sub_144D8(*(v3 + 1));
    result = sub_12D68();
    if (result)
    {
      *v3 |= 8u;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
LABEL_12:
        v19 = _os_log_pack_size();
        __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
        v27 = *__error();
        v28 = _os_log_pack_fill();
        v29 = sub_6160(*(v2 + 6));
        v30 = nullsub_1(*(v3 + 1));
        *v28 = 136315394;
        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        *(v28 + 14) = v30;
        return __SC_log_send();
      }
    }
  }

  return result;
}

ssize_t bootp_client_transmit(uint64_t *a1, unsigned int a2, int a3, unsigned int a4, unsigned __int16 a5, void *a6, uint64_t a7)
{
  v13 = sub_5984();
  if (a2 == 0xFFFFFFFFLL)
  {
    v14 = 0;
LABEL_9:
    LOBYTE(v17) = 1;
    sub_23644(a1, a2, 0, a6, a7, 1);
LABEL_10:
    v18 = *(v13 + 32);
    if (v18)
    {
      v19 = sub_5A18(v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = nullsub_1(*a1);
    v21 = sub_638C(*a1);
    v22 = sub_5A20(v19, v25, v20, v21, 0, a2, a3, a4, a5, a6, a7);
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*(a1 + 2))
  {
    v14 = 0;
  }

  else
  {
    sub_B984(a1);
    v14 = 1;
  }

  v15 = sub_144D8(*a1);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  v17 = sub_233F4(a1, v15);
  sub_23644(a1, a2, v16, a6, a7, v17);
  if (v17)
  {
    LOBYTE(v17) = 0;
    goto LABEL_10;
  }

  *__error() = 6;
  v22 = 0xFFFFFFFFLL;
  if (v14)
  {
LABEL_14:
    sub_A00C(a1);
  }

LABEL_15:
  if ((v17 & 1) == 0)
  {
    sub_233F4(a1, 0);
  }

  return v22;
}

uint64_t sub_5984()
{
  result = qword_70138;
  if (!qword_70138)
  {
    v1 = malloc_type_malloc(0x40uLL, 0x10A00402BC2289AuLL);
    qword_70138 = v1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    v1[3] = 0u;
    sub_592AC(v1, sub_233B4, 0);
    v2 = timer_callout_init("bootp_session");
    result = qword_70138;
    *(qword_70138 + 48) = v2;
  }

  return result;
}

_BYTE *sub_5A04(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 76) = 1;
  return sub_5474(v2, a1);
}

ssize_t sub_5A20(int a1, _WORD *a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, unsigned int a8, unsigned __int16 a9, void *a10, int a11)
{
  if ((byte_70300 & 1) == 0)
  {
    byte_70300 = 1;
    dword_70304 = arc4random();
  }

  if ((a4 == 24 || a4 == 1) && (a5 || a6 == -1))
  {
    v20 = sub_5E1C(a3);
    if (v20 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
      v52 = a3;
      if (a4 == 24)
      {
        *a2 = -1;
        a2[8] = 8;
        v22 = (a2 + 9);
        v23 = (a2 + 13);
        v24 = a2 + 23;
        v25 = 46;
      }

      else
      {
        v22 = (a2 + 7);
        v23 = (a2 + 11);
        v24 = a2 + 21;
        if (a6 == -1)
        {
          v35 = -1;
          a2[2] = -1;
        }

        else
        {
          v35 = *a5;
          a2[2] = *(a5 + 4);
        }

        *a2 = v35;
        a2[6] = 8;
        v25 = 42;
      }

      memmove(v24, a10, a11);
      *v23 = a7;
      *(v23 + 1) = a6;
      *(v23 + 4) = 4352;
      v36 = bswap32(a11 + 8) >> 16;
      *(v23 + 5) = v36;
      *(v22 + 10) = __rev16(a9);
      *(v22 + 11) = __rev16(a8);
      *(v22 + 6) = v36;
      *(v22 + 13) = sub_64A0(v23, a11 + 20);
      *v22 = 0;
      *(v22 + 1) = 0;
      *v22 = 69;
      *(v22 + 2) = 4607;
      *(v22 + 3) = a7;
      *(v22 + 4) = a6;
      *(v22 + 1) = bswap32(a11 + 28) >> 16;
      v37 = dword_70304++;
      *(v22 + 2) = bswap32(v37) >> 16;
      *(v22 + 5) = sub_64A0(v22, 20);
      v19 = sub_65A0(v21, a2, v25 + a11);
      if ((v19 & 0x80000000) != 0)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v38 = _os_log_pack_size();
          __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45);
          v46 = *__error();
          v47 = _os_log_pack_fill();
          v48 = __error();
          v49 = strerror(*v48);
          v50 = *__error();
          *v47 = 136315650;
          *(v47 + 4) = v52;
          *(v47 + 12) = 2080;
          *(v47 + 14) = v49;
          *(v47 + 22) = 1024;
          *(v47 + 24) = v50;
          __SC_log_send();
        }
      }

      sub_65BC(v21);
    }
  }

  else if (a1 < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v26 = _os_log_pack_size();
      __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
      v34 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    return 0;
  }

  else
  {
    *&v53.sa_data[6] = 0;
    *&v53.sa_len = 528;
    *v53.sa_data = __rev16(a8);
    *&v53.sa_data[2] = a6;
    if (sendto(a1, a10, a11, 0, &v53, 0x10u) >= a11)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v19;
}

uint64_t sub_5E1C(uint64_t a1)
{
  v2 = sub_6280();
  v3 = v2;
  if ((v2 & 0x80000000) != 0)
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
      v29 = *__error();
      *v26 = 136315394;
      *(v26 + 4) = v28;
      *(v26 + 12) = 1024;
      *(v26 + 14) = v29;
      __SC_log_send();
    }
  }

  else
  {
    if ((sub_63A8(v2) & 0x80000000) != 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v30 = _os_log_pack_size();
        __chkstk_darwin(v30, v31, v32, v33, v34, v35, v36, v37);
        v38 = *__error();
        v39 = _os_log_pack_fill();
        v40 = __error();
        v41 = strerror(*v40);
        v42 = *__error();
        *v39 = 136315394;
        *(v39 + 4) = v41;
        *(v39 + 12) = 1024;
        *(v39 + 14) = v42;
        __SC_log_send();
      }

      goto LABEL_11;
    }

    if ((sub_641C(v3) & 0x80000000) != 0)
    {
      if (*__error() != 6)
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
          v16 = *__error();
          *v13 = 136315650;
          *(v13 + 4) = a1;
          *(v13 + 12) = 2080;
          *(v13 + 14) = v15;
          *(v13 + 22) = 1024;
          *(v13 + 24) = v16;
          __SC_log_send();
        }
      }

LABEL_11:
      sub_65BC(v3);
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

const char *sub_6160(int a1)
{
  if (a1 <= 261)
  {
    v1 = "INFORM";
    v10 = "LINKLOCAL";
    if (a1 != 261)
    {
      v10 = 0;
    }

    if (a1 != 260)
    {
      v1 = v10;
    }

    v11 = "BOOTP";
    v12 = "DHCP";
    if (a1 != 259)
    {
      v12 = 0;
    }

    if (a1 != 258)
    {
      v11 = v12;
    }

    if (a1 <= 259)
    {
      v1 = v11;
    }

    v5 = "NONE";
    v13 = "NONE-V4";
    v14 = "MANUAL";
    if (a1 != 257)
    {
      v14 = 0;
    }

    if (a1 != 256)
    {
      v13 = v14;
    }

    if (a1)
    {
      v5 = v13;
    }

    v9 = a1 <= 257;
  }

  else
  {
    v1 = "LINKLOCAL-V6";
    v2 = "DHCPV6-PD";
    if (a1 != 518)
    {
      v2 = 0;
    }

    if (a1 != 517)
    {
      v1 = v2;
    }

    v3 = "RTADV";
    v4 = "6TO4";
    if (a1 != 516)
    {
      v4 = 0;
    }

    if (a1 != 515)
    {
      v3 = v4;
    }

    if (a1 <= 516)
    {
      v1 = v3;
    }

    v5 = "MANUAL-V6";
    v6 = "AUTOMATIC-V6";
    if (a1 != 514)
    {
      v6 = 0;
    }

    if (a1 != 513)
    {
      v5 = v6;
    }

    v7 = "FAILOVER";
    v8 = "NONE-V6";
    if (a1 != 512)
    {
      v8 = 0;
    }

    if (a1 != 262)
    {
      v7 = v8;
    }

    if (a1 <= 512)
    {
      v5 = v7;
    }

    v9 = a1 <= 514;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_6280()
{
  snprintf(__str, 0x100uLL, "/dev/bpf%d", 0);
  v0 = open(__str, 2, 0);
  if ((v0 & 0x80000000) != 0)
  {
    if (*__error() != 16)
    {
      return v0;
    }

    for (i = 1; ; ++i)
    {
      snprintf(__str, 0x100uLL, "/dev/bpf%d", i);
      v0 = open(__str, 2, 0);
      if ((v0 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 16)
      {
        return v0;
      }
    }
  }

  v3 = 900;
  ioctl(v0, 0x8004427BuLL, &v3);
  return v0;
}

uint64_t sub_638C(uint64_t a1)
{
  v1 = *(a1 + 75);
  if (v1 == 144)
  {
    v2 = 24;
  }

  else
  {
    v2 = -1;
  }

  if (v1 == 6)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_63A8(int a1)
{
  v3 = 6;
  v2[1] = &v3;
  v2[0] = 1;
  return ioctl(a1, 0x80104267uLL, v2);
}

uint64_t sub_641C(int a1)
{
  memset(v3, 0, sizeof(v3));
  __strlcpy_chk();
  return ioctl(a1, 0x8020426CuLL, v3);
}

uint64_t sub_64A0(_OWORD *a1, int a2)
{
  if (a2 < 32)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      a2 = v3 - 32;
      v4 = *a1;
      v5 = *(a1 + 1);
      a1 += 2;
      v2 += vaddvq_s32(vaddq_s32(vaddl_u16(*v4.i8, *v5.i8), vaddl_high_u16(v4, v5)));
      v6 = v3 > 0x3F;
      v3 -= 32;
    }

    while (v6);
  }

  if (a2 < 8)
  {
    v7 = a2;
    if (!a2)
    {
      return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
    }
  }

  else
  {
    do
    {
      v7 = a2 - 8;
      v8 = *a1;
      a1 = (a1 + 8);
      v2 += vaddvq_s32(vmovl_u16(v8));
      v6 = a2 > 0xF;
      a2 -= 8;
    }

    while (v6);
    if (!v7)
    {
      return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
    }
  }

  v2 = HIWORD(v2) + v2;
  if (HIWORD(v2))
  {
    v2 -= 0xFFFF;
  }

  v9 = v7 - 2;
  if (v7 < 2)
  {
    v11 = a1;
  }

  else
  {
    v10 = v9 & 0xFFFFFFFE;
    v11 = a1 + v10 + 2;
    for (i = v7; i > 1; i -= 2)
    {
      v13 = *a1;
      a1 = (a1 + 2);
      v2 += v13;
    }

    v9 = v7 - v10 - 4;
  }

  if (v9 == -1)
  {
    v2 += *v11;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

uint64_t sub_65BC(int a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  else
  {
    return close(a1);
  }
}

uint64_t sub_65CC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xFFFFFFFFLL / (a2 - a1 + 1);
  if (v3)
  {
    return arc4random() / v3 + a1;
  }

  return v2;
}

uint64_t timer_callout_set_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (result)
  {
    v11 = result;
    sub_687C(result);
    if (a2)
    {
      *(v11 + 8) = a2;
      *(v11 + 16) = a3;
      *(v11 + 24) = a4;
      *(v11 + 32) = a5;
      *(v11 + 48) = dword_70250;
      *(v11 + 52) = 1;
      v12 = *(v11 + 40);
      if (v12)
      {
        v13 = dispatch_time(0, (a6 * 1000000000.0));
        dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
        if (*(v11 + 56))
        {
          dispatch_resume(*(v11 + 40));
          *(v11 + 56) = 0;
        }
      }

      else
      {
        v14 = sub_CB80();
        v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);
        *(v11 + 40) = v15;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = sub_B18;
        handler[3] = &unk_690C0;
        handler[4] = v11;
        dispatch_source_set_event_handler(v15, handler);
        v16 = *(v11 + 40);
        v17 = dispatch_time(0, (a6 * 1000000000.0));
        dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_activate(*(v11 + 40));
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = *v11;
        *v19 = 136315394;
        *(v19 + 4) = v20;
        *(v19 + 12) = 2048;
        *(v19 + 14) = a6;
        __SC_log_send();
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_687C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = dword_70250;
  v2 = *(a1 + 40);
  if (v2 && !*(a1 + 56))
  {
    dispatch_suspend(v2);
    *(a1 + 56) = 1;
  }

  *(a1 + 52) = 0;
}

uint64_t timer_set_relative(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a3 / 1000000.0;
  if (a2 < 0)
  {
    v7 = 0.000001;
  }

  return timer_callout_set_0(a1, a4, a5, a6, a7, v7 + (a2 & ~(a2 >> 63)));
}

void sub_690C(int a1, int a2, int a3, intptr_t notificationID)
{
  HIDWORD(v6) = a3 + 536870320;
  LODWORD(v6) = a3 + 536870320;
  v5 = v6 >> 4;
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      return;
    }

    if (v5 == 3 && (byte_701F0 & 1) == 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v17 = _os_log_pack_size();
        __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
        v25 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      byte_701F0 = 1;
      v26 = sub_295C(qword_70160);
      if (v26 >= 1)
      {
        v27 = v26;
        for (i = 0; i != v27; ++i)
        {
          v29 = sub_42C0(qword_70160, i);
          sub_8D44(v29 + 24, 10, 0);
          sub_8D44(v29 + 56, 10, 0);
          sub_41E8((v29 + 144));
        }
      }
    }

    goto LABEL_19;
  }

  if (v5 != 4 && v5 != 11)
  {
    if (v5 == 13 && byte_701F0 == 1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      byte_701F0 = 0;
      qword_701F8 = timer_get_current_time();
      ++dword_701B8;
      sub_6BB8();
    }

LABEL_19:
    IOAllowPowerChange(dword_70200, notificationID);
  }
}

uint64_t sub_6BB8()
{
  result = sub_295C(qword_70160);
  if (result >= 1)
  {
    v1 = result;
    for (i = 0; i != v1; ++i)
    {
      v3 = sub_42C0(qword_70160, i);
      v4 = v3;
      if (*(v3 + 124) == dword_701B8)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v5 = _os_log_pack_size();
          __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          v15 = nullsub_1(*(v4 + 8));
          *v14 = 136315138;
          *(v14 + 4) = v15;
          result = __SC_log_send();
        }
      }

      else
      {
        result = sub_6D48(v3);
      }
    }
  }

  return result;
}

uint64_t sub_6D48(uint64_t a1)
{
  v2 = *(a1 + 8);
  v55[0] = 0;
  v55[1] = 0;
  v53 = sub_2430(v2);
  v54 = v3;
  if (v53)
  {
    v4 = HIDWORD(v53) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || v3 == 0)
  {
    v6 = *a1;
    if ((*a1 & 0x20) != 0)
    {
      *a1 = v6 & 0xFFFFFFDF;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        v17 = nullsub_1(v2);
        *v16 = 136315138;
        *(v16 + 4) = v17;
        __SC_log_send();
      }

      sub_36A38(a1);
    }

    *(a1 + 124) = dword_701B8;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      v28 = nullsub_1(v2);
      *v27 = 136315138;
      *(v27 + 4) = v28;
      __SC_log_send();
    }

    sub_7154(a1, v55, &v53);
    if (*(a1 + 160))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      v29 = _os_log_pack_size();
      __chkstk_darwin(v29, v30, v31, v32, v33, v34, v35, v36);
      v37 = *__error();
      goto LABEL_20;
    }

    if (sub_295C(a1 + 24) >= 1)
    {
      v50 = nullsub_1(v2);
      sub_7A40(v50, 1);
      sub_8D44(a1 + 24, 11, v55);
    }

    result = sub_295C(a1 + 56);
    if (result >= 1)
    {
      if ((v6 & 0x20) != 0 || (v51 = nullsub_1(v2), !sub_ECB0(v51)))
      {
        sub_12E30(a1, 1);
      }

      v52 = *(a1 + 144);
      if (v52)
      {
        CFRelease(v52);
      }

      *(a1 + 144) = sub_EE70(qword_70188, *(a1 + 16));
      return sub_8D44(a1 + 56, 11, v55);
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v39 = _os_log_pack_size();
      __chkstk_darwin(v39, v40, v41, v42, v43, v44, v45, v46);
      v47 = *__error();
LABEL_20:
      v48 = _os_log_pack_fill();
      v49 = nullsub_1(v2);
      *v48 = 136315138;
      *(v48 + 4) = v49;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_7154(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a1[1];
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *a3;
  *(a2 + 12) = *(a3 + 2);
  *(a2 + 4) = v7;
  if (sub_73DC(v6))
  {
    v8 = sub_73E8(a1[2]);
    v32 = v8;
    if (v8)
    {
      v9 = sub_395D4(a1[12], v8);
      if (v9 == 3)
      {
        if (!sub_13304(v6))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
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
        }

        *a2 = 2;
      }

      else if (v9 == 2)
      {
        *a2 = 1;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v10 = _os_log_pack_size();
          __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
          v18 = *__error();
          v19 = _os_log_pack_fill();
          v20 = nullsub_1(v6);
          *v19 = 136315138;
          *(v19 + 4) = v20;
          __SC_log_send();
        }
      }
    }

    else if (!*a3 || *(a3 + 1))
    {
      goto LABEL_15;
    }

    sub_33018(a1, v8);
LABEL_15:
    sub_41E8(&v32);
  }
}

uint64_t sub_73E8(uint64_t a1)
{
  v2 = sub_7708(a1);
  v3 = v2;
  if (v2)
  {
    v4 = sub_39534(v2);
    v5 = sub_3952C(v3);
    v6 = sub_395C4(v3);
    v7 = sub_395CC(v3);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v8 = __SC_log_enabled();
    if (v6)
    {
      if (v8)
      {
        v9 = _os_log_pack_size();
        v44 = &v44;
        __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
        v17 = *__error();
        v18 = _os_log_pack_fill();
        v19 = sub_395BC(v3);
        v20 = sub_38B24(v19);
        *v18 = 138413570;
        *(v18 + 4) = a1;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v5;
        *(v18 + 22) = 2112;
        *(v18 + 24) = v4;
        *(v18 + 32) = 2112;
        *(v18 + 34) = v6;
        *(v18 + 42) = 2080;
        *(v18 + 44) = v20;
        *(v18 + 52) = 1024;
        *(v18 + 54) = v7;
LABEL_9:
        __SC_log_send();
      }
    }

    else if (v8)
    {
      v31 = _os_log_pack_size();
      __chkstk_darwin(v31, v32, v33, v34, v35, v36, v37, v38);
      v39 = *__error();
      v40 = _os_log_pack_fill();
      v41 = sub_395BC(v3);
      v42 = sub_38B24(v41);
      *v40 = 138413314;
      *(v40 + 4) = a1;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v5;
      *(v40 + 22) = 2112;
      *(v40 + 24) = v4;
      *(v40 + 32) = 2080;
      *(v40 + 34) = v42;
      *(v40 + 42) = 1024;
      *(v40 + 44) = v7;
      goto LABEL_9;
    }
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
      *v30 = 138412290;
      *(v30 + 4) = a1;
      goto LABEL_9;
    }
  }

  return v3;
}

uint64_t sub_7708(uint64_t a1)
{
  if (!sub_38CCC(a1))
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (Apple80211Get() || Apple80211Get())
  {
    Instance = 0;
  }

  else
  {
    pthread_once(&stru_700D8, sub_397E0);
    Instance = _CFRuntimeCreateInstance();
    *(Instance + 16) = sub_57CB4(Mutable);
    *(Instance + 36) = 0;
    *(Instance + 40) = 0;
    *(Instance + 32) = sub_38ED8();
    *(Instance + 24) = sub_39094();
    *(Instance + 56) = sub_391E8();
    *(Instance + 60) = sub_393FC();
  }

  CFRelease(Mutable);
  Apple80211Close();
  return Instance;
}

uint64_t sub_7838()
{
  if (dword_700F0 < 0)
  {
    v1 = socket(2, 2, 0);
    dword_700F0 = v1;
    sub_2424();
    if (v1 < 0)
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v5 = *__error();
        v6 = _os_log_pack_fill();
        v7 = __error();
        v8 = strerror(*v7);
        *v6 = 136315138;
        *(v6 + 4) = v8;
        __SC_log_send();
      }
    }

    else
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v2 = *__error();
        v3 = _os_log_pack_fill();
        v4 = dword_700F0;
        *v3 = 67109120;
        v3[1] = v4;
        __SC_log_send();
      }

      if (off_70260)
      {
        off_70260();
      }
    }
  }

  return dword_700F0;
}

uint64_t sub_7A40(uint64_t a1, int a2)
{
  v4 = sub_7838();
  v5 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  memset(v18, 0, sizeof(v18));
  __strlcpy_chk();
  v6 = ioctl(v5, 0xC0206950uLL, v18);
  sub_7BE0(v6, a1, "SIOCPROTOATTACH");
  if (!v6)
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
      *(v16 + 4) = a1;
      __SC_log_send();
    }

    if (a2)
    {
      sub_409F0(v5, a1, 1, 0);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_7BE0(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v8 = *__error();
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v9 = *__error();
    v10 = _os_log_pack_fill();
    v11 = __error();
    v12 = strerror(*v11);
    *v10 = 136315650;
    *(v10 + 4) = a2;
    *(v10 + 12) = 2080;
    *(v10 + 14) = a3;
    *(v10 + 22) = 2080;
    *(v10 + 24) = v12;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v6 = *__error();
    v7 = _os_log_pack_fill();
    *v7 = 136315394;
    *(v7 + 4) = a2;
    *(v7 + 12) = 2080;
    *(v7 + 14) = a3;
  }

  return __SC_log_send();
}

uint64_t sub_7DFC(_DWORD *a1, int a2, unsigned int *a3)
{
  v6 = sub_1688(a1);
  v7 = sub_1690(a1);
  v8 = 0;
  v9 = v7;
  switch(a2)
  {
    case 0:
      if ((sub_10EE8(v7) & 8) != 0)
      {
        return 4;
      }

      if (v6)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return 6;
        }

        goto LABEL_51;
      }

      v6 = malloc_type_malloc(0x930uLL, 0x10E0040563940C1uLL);
      bzero(v6, 0x930uLL);
      *(v6 + 168) = sub_638C(v9) == 24;
      sub_58490((v6 + 208));
      sub_151FC(a1, v6);
      sub_254C0(v6);
      sub_2ADA0(a1);
      *(v6 + 1744) = 0;
      v77 = nullsub_1(v9);
      snprintf(__str, 0x20uLL, "dhcp-%s", v77);
      v78 = timer_callout_init(__str);
      *(v6 + 1760) = v78;
      if (!v78)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      sub_B744(a1);
      v79 = bootp_client_init(v9);
      *(v6 + 16) = v79;
      if (!v79)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      v80 = sub_216C0(v9);
      *(v6 + 8) = v80;
      if (!v80)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (!a3)
      {
        goto LABEL_91;
      }

      v81 = *a3;
      if (v81 < 1)
      {
        goto LABEL_91;
      }

      *(v6 + 32) = v81;
      v82 = malloc_type_malloc(v81, 0x429DF903uLL);
      *(v6 + 24) = v82;
      if (v82)
      {
        memmove(v82, *(a3 + 1), *(v6 + 32));
LABEL_91:
        sub_25504(a1);
        return 0;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
LABEL_102:
        v84 = _os_log_pack_size();
        __chkstk_darwin(v84, v85, v86, v87, v88, v89, v90, v91);
        v92 = *__error();
        v93 = _os_log_pack_fill();
        v94 = nullsub_1(v9);
        *v93 = 136315138;
        *(v93 + 4) = v94;
        __SC_log_send();
      }

LABEL_103:
      v8 = 5;
LABEL_104:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v95 = _os_log_pack_size();
        __chkstk_darwin(v95, v96, v97, v98, v99, v100, v101, v102);
        v103 = *__error();
        v104 = _os_log_pack_fill();
        v105 = nullsub_1(v9);
        *v104 = 136315138;
        *(v104 + 4) = v105;
        __SC_log_send();
      }

      if (!v6)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v109 = _os_log_pack_size();
          __chkstk_darwin(v109, v110, v111, v112, v113, v114, v115, v116);
          v117 = *__error();
          goto LABEL_124;
        }

        return 6;
      }

      if (a2 == 1)
      {
        sub_2568C(a1);
      }

      sub_25B1C(a1, 0xCu);
      if (*(v6 + 1760))
      {
        timer_callout_free((v6 + 1760));
      }

      if (*(v6 + 16))
      {
        bootp_client_free((v6 + 16));
      }

      if (*(v6 + 8))
      {
        sub_15000((v6 + 8));
      }

      v106 = *(v6 + 24);
      if (v106)
      {
        free(v106);
        *(v6 + 24) = 0;
      }

      DHCPLeaseListFree((v6 + 136));
      sub_58494(v6 + 208);
      v107 = *(v6 + 120);
      if (v107)
      {
        CFRelease(v107);
      }

      *(v6 + 120) = 0;
      v108 = *(v6 + 128);
      if (v108)
      {
        CFRelease(v108);
      }

      free(v6);
      sub_151FC(a1, 0);
      return v8;
    case 1:
      goto LABEL_104;
    case 3:
    case 8:
      if (!v6)
      {
        return 6;
      }

      if (*a3 == 1)
      {
        sub_FE80(a1);
        sub_102A4(a1, 0x13u);
        sub_4884(a1, 0);
      }

      v10 = (a3 + 1);
      v11 = a1;
      v12 = a2;
      goto LABEL_6;
    case 4:
      sub_263C8(a1);
      return 0;
    case 7:
      if (!v6)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
LABEL_51:
          v60 = _os_log_pack_size();
          __chkstk_darwin(v60, v61, v62, v63, v64, v65, v66, v67);
          v68 = *__error();
LABEL_124:
          v118 = _os_log_pack_fill();
          v119 = nullsub_1(v9);
          *v118 = 136315138;
          *(v118 + 4) = v119;
          __SC_log_send();
          return 6;
        }

        return 6;
      }

      v39 = *a3;
      a3[2] = 0;
      if (v39 && (v40 = *v39, v40 >= 1))
      {
        v41 = *(v6 + 24);
        if (v41 && *(v6 + 32) == v40 && !bcmp(v41, v39[1], v40))
        {
          return 0;
        }
      }

      else if (!*(v6 + 24))
      {
        return 0;
      }

      v8 = 0;
      a3[2] = 1;
      return v8;
    case 9:
      if (!v6)
      {
        return 6;
      }

      if (!*(v6 + 40))
      {
        v42 = sub_1CE28(a1);
        if (v42 == *(v6 + 1732) && *a3 == v42 && !sub_2B250(a1, a3))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v43 = _os_log_pack_size();
            __chkstk_darwin(v43, v44, v45, v46, v47, v48, v49, v50);
            v51 = *__error();
            v52 = _os_log_pack_fill();
            v53 = nullsub_1(v9);
            v54 = *(a3 + 1);
            sub_25C24(v52, v53, *(v6 + 1732), *(v6 + 1733), *(v6 + 1734), *(v6 + 1735), *v54, v54[1], v54[2], v54[3], v54[4], v54[5], *(v6 + 1736), *(v6 + 1737), *(v6 + 1738), *(v6 + 1739));
            __SC_log_send();
          }

          sub_25CBC(a1, 0);
          sub_102A4(a1, 8u);
          sub_25E14(a1);
        }
      }

      return 0;
    case 10:
    case 12:
      if (!v6)
      {
        return 6;
      }

      if (*(v6 + 56))
      {
        sub_26440(a1, (v6 + 224), *(v6 + 1724), 1);
      }

      return 0;
    case 11:
      if (sub_8CC0(a1))
      {
        return 0;
      }

      if (a3[1] && !a3[2] || sub_2480(v9) && *a3 == 1 || !sub_2480(v9) && !a3[3])
      {
        sub_FE80(a1);
        sub_102A4(a1, 0x13u);
        v11 = a1;
        v12 = 11;
        v10 = (a3 + 1);
LABEL_6:
        sub_123A0(v11, v12, v10);
      }

      else
      {
        current_time = timer_get_current_time();
        if (sub_8F14(a1, current_time))
        {
          v70 = *(v6 + 1744);
          if (v70 <= 8 && ((1 << v70) & 0x1A0) != 0 && sub_2AED8(a1) && !*(v6 + 200))
          {
            if (*a3 == 2 && (*__str = 0, v123 = 0, v124 = 0, sub_2AA6C(a1, __str)))
            {
LABEL_30:
              sub_26598(a1, 0, __str);
            }

            else if (*(v6 + 72) != -1)
            {
              v120 = *(v6 + 192);
              if (current_time >= v120 || (v121 = v120 - current_time, LODWORD(v71) = dword_7007C, v121 < v71))
              {
                sub_26A78(a1, 0, 0);
              }

              else
              {
                v30 = v121;
                v28 = *(v6 + 1760);
                v29 = sub_26A78;
                v31 = 0;
                v32 = a1;
                v33 = 0;
LABEL_19:
                timer_set_relative(v28, v30, v31, v29, v32, v33, 0);
              }
            }
          }

          else
          {
            *__str = *(v6 + 1732);
            sub_8F90(a1, 0, __str);
          }
        }

        else
        {
          sub_B40(a1, 0, 0);
        }
      }

      return 0;
    case 13:
      if (!sub_1CE28(a1))
      {
        return 0;
      }

      v34 = *(v6 + 1724);
      if (!v34)
      {
        return 0;
      }

      v8 = 0;
      *a3 = v6 + 224;
      a3[2] = v34;
      *(a3 + 2) = v6 + 208;
      *(a3 + 3) = *(v6 + 80);
      *(a3 + 4) = *(v6 + 64);
      return v8;
    case 16:
      *__str = 0;
      v123 = 0;
      v124 = 0;
      v35 = *(v6 + 1744);
      v36 = v35 > 8;
      v37 = (1 << v35) & 0x1A0;
      v38 = v36 || v37 == 0;
      if (!v38 && sub_2AED8(a1) && sub_2AA6C(a1, __str))
      {
        goto LABEL_30;
      }

      return 0;
    case 17:
      sub_15B34(a1, a3);
      return 0;
    case 20:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
        v21 = *__error();
        v22 = _os_log_pack_fill();
        v23 = nullsub_1(v9);
        v24 = nullsub_1(a3);
        *v22 = 136315394;
        *(v22 + 4) = v23;
        *(v22 + 12) = 2112;
        *(v22 + 14) = v24;
        __SC_log_send();
      }

      DHCPLeaseListRemoveLeaseForWiFi((v6 + 136), a3, 0);
      v25 = *(v6 + 120);
      if (!v25 || !CFEqual(v25, a3))
      {
        return 0;
      }

      sub_2568C(a1);
      sub_FE80(a1);
      sub_102A4(a1, 0xBu);
      sub_58494(v6 + 208);
      v26 = *(v6 + 120);
      if (v26)
      {
        CFRelease(v26);
      }

      *(v6 + 120) = 0;
      v27 = *(v6 + 128);
      if (v27)
      {
        CFRelease(v27);
      }

      *(v6 + 128) = 0;
      sub_BC60(a1, 0);
      v28 = *(v6 + 1760);
      v29 = sub_272FC;
      v30 = 0;
      v31 = 500000;
      v32 = a1;
      v33 = 20;
      goto LABEL_19;
    case 22:
      v55 = sub_1688(a1);
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v57 = Mutable;
      v58 = *(v55 + 1744);
      if (v58 > 8)
      {
        v59 = "<undefined>";
      }

      else
      {
        v59 = off_68DA8[v58];
      }

      sub_578FC(Mutable, @"State", v59);
      if (sub_1CE28(a1) && *(v55 + 56))
      {
        v72 = sub_2833C(v55 + 208);
        if (v72)
        {
          v73 = v72;
          CFDictionarySetValue(v57, @"Packet", v72);
          CFRelease(v73);
        }

        sub_1DB1C(v57, @"LeaseStartTime", *(v55 + 80));
        if (*(v55 + 72) == -1)
        {
          CFDictionarySetValue(v57, @"LeaseIsInfinite", kCFBooleanTrue);
        }

        else
        {
          sub_1DB1C(v57, @"LeaseExpirationTime", *(v55 + 64));
        }
      }

      else
      {
        v74 = *(v55 + 1744);
        if (v74 <= 6 && ((1 << v74) & 0x58) != 0 && *(v55 + 1776) != 0.0)
        {
          v75 = timer_get_current_time();
          v76 = *(v55 + 1776);
          if (v75 > v76)
          {
            sub_1DF6C(v57, @"ElapsedTime", (v75 - v76));
          }
        }
      }

      CFDictionarySetValue(a3, @"DHCP", v57);
      CFRelease(v57);
      return 0;
    default:
      return v8;
  }
}

void sub_8CD0(uint64_t a1)
{
  v1 = sub_1688(a1);
  if (v1)
  {
    v2 = v1;
    timer_cancel(*(v1 + 1760));
    bootp_client_disable_receive(*(v2 + 16));
    v3 = *(v2 + 8);

    sub_A314(v3);
  }
}

uint64_t sub_8D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_295C(a1);
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_42C0(a1, v7);
      sub_8DB0(v8, a2, a3);
      ++v7;
      result = sub_295C(a1);
    }

    while (v7 < result);
  }

  return result;
}

uint64_t sub_8DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = sub_5324(v6);
  if (v7)
  {
    v7(a1, a2, a3);
    return 0;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 67109376;
      *(v18 + 4) = a2;
      *(v18 + 8) = 1024;
      *(v18 + 10) = v6;
      __SC_log_send();
    }

    return 6;
  }
}

uint64_t sub_8F14(uint64_t a1, double a2)
{
  v4 = sub_1688(a1);
  result = *(v4 + 56);
  if (result && *(v4 + 72) != -1 && *(v4 + 64) <= a2)
  {
    sub_254C0(v4);
    sub_2ADA0(a1);
    sub_FE80(a1);
    sub_102A4(a1, 0x14u);
    return *(v4 + 56);
  }

  return result;
}

void sub_8F90(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v144 = current_time;
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  v143 = 0;
  if (sub_8CC0(a1))
  {
    sub_2AEA4(&v143, 0);
  }

  if (a2 == 5)
  {
    LODWORD(v145[0]) = 0;
    *v146 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    if (!sub_280D8(a3, *(v7 + 2332), v8, &v142, &v141 + 1))
    {
      return;
    }

    v30 = sub_8CC0(a1);
    v31 = v142;
    if (!v30 && v142 == 6)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v32 = _os_log_pack_size();
        __chkstk_darwin(v32, v33, v34, v35, v36, v37, v38, v39);
        v40 = *__error();
        v41 = _os_log_pack_fill();
        v42 = nullsub_1(v8);
        *v41 = 136315138;
        *(v41 + 4) = v42;
        __SC_log_send();
      }

      if (!sub_216B0(*(v7 + 8)))
      {
        sub_102A4(a1, 0xBu);
        sub_2994C(a1, 1);
        return;
      }

      *(v7 + 48) = 1;
      v31 = v142;
    }

    v43 = HIDWORD(v141);
    if (HIDWORD(v141) && v31 == 5)
    {
      if (dword_70140 && sub_A694(a1) && !*(v7 + 44) && sub_29624(a3 + 16, v145))
      {
        sub_29688(a1, 0, v145);
        return;
      }

      if (*(*a3 + 16) == *(v7 + 1732))
      {
        dhcp_get_lease_from_options(a3 + 16, v146, &v141, &v140);
        v44 = sub_5883C(a3 + 16, off_70010, dword_70018);
        v45 = v44;
        if (!*(v7 + 1724) || v44 > *(v7 + 1728))
        {
          sub_2ADA0(a1);
          sub_58494(v7 + 208);
          memmove((v7 + 224), *a3, *(a3 + 8));
          v46 = *(a3 + 8);
          *(v7 + 1724) = v46;
          *(v7 + 1728) = v45;
          sub_585E0((v7 + 208), v7 + 224, v46, 0);
          *(v7 + 1732) = *(*a3 + 16);
          *(v7 + 1736) = v43;
          sub_28AEC(a1, "INIT-REBOOT", *v146, v141, v140, current_time);
          if (sub_2990C(v8) || v45 == dword_70018 && sub_2440(a1))
          {
LABEL_59:
            sub_28E1C(a1, 0, 0);
            return;
          }

          if (!*(v7 + 44))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v47 = _os_log_pack_size();
              __chkstk_darwin(v47, v48, v49, v50, v51, v52, v53, v54);
              v55 = *__error();
              v56 = _os_log_pack_fill();
              v57 = nullsub_1(v8);
              v58 = *(v7 + 1732);
              v59 = *(v7 + 1733);
              v60 = *(v7 + 1734);
              v61 = *(v7 + 1735);
              v62 = current_time - *(v7 + 1752);
              *v56 = 136316418;
              *(v56 + 4) = v57;
              *(v56 + 12) = 1024;
              *(v56 + 14) = v58;
              *(v56 + 18) = 1024;
              *(v56 + 20) = v59;
              *(v56 + 24) = 1024;
              *(v56 + 26) = v60;
              *(v56 + 30) = 1024;
              *(v56 + 32) = v61;
              *(v56 + 36) = 2048;
              *(v56 + 38) = v62;
              __SC_log_send();
            }

            *(v7 + 44) = 1;
            timer_callout_set(*(v7 + 1760), sub_8F90, a1, 2, 0, G_gather_secs);
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

      v142 = 10974720;
      memset(v145, 0, 304);
      v9 = &v143;
      if (!v143)
      {
        v9 = a3;
      }

      HIDWORD(v141) = *v9;
      sub_9D7C(a1, 6u);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = nullsub_1(v8);
        v21 = inet_ntop(2, &v141 + 4, v146, 0x10u);
        *v19 = 136315394;
        *(v19 + 4) = v20;
        *(v19 + 12) = 2080;
        *(v19 + 14) = v21;
        __SC_log_send();
      }

      *(v7 + 200) = 0;
      *v7 = 1;
      *(v7 + 1752) = current_time;
      if (*(v7 + 1776) == 0.0)
      {
        *(v7 + 1776) = current_time;
      }

      *(v7 + 1768) = 0;
      *(v7 + 2340) = G_initial_wait_secs;
      sub_8CD0(a1);
      v22 = *(v7 + 168);
      v23 = sub_A694(a1);
      if (v22)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      if (v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = v22 != 0;
      }

      v26 = sub_A840(v8);
      v27 = sub_638C(v8);
      v28 = sub_AD1C(v8);
      v29 = sub_A848((v7 + 1784), 3, v26, v27, v28, *(v7 + 24), *(v7 + 32), v25, v145);
      *(v7 + 176) = v29;
      if (!v29)
      {
        goto LABEL_48;
      }

      if (sub_ADA4(v145, 50, 4, &v141 + 4))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_46;
        }

        goto LABEL_48;
      }

      if (sub_ADA4(v145, 51, 4, &v142))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
LABEL_46:
          v63 = _os_log_pack_size();
          __chkstk_darwin(v63, v64, v65, v66, v67, v68, v69, v70);
          v71 = *__error();
          v72 = _os_log_pack_fill();
          v73 = nullsub_1(v8);
          v74 = sub_588A8(v145);
          *v72 = 136315394;
          *(v72 + 4) = v73;
          *(v72 + 12) = 2080;
          *(v72 + 14) = v74;
LABEL_47:
          __SC_log_send();
        }

LABEL_48:
        sub_25B1C(a1, 5u);
        return;
      }

      sub_B1BC(a1, v145);
      if (sub_ADA4(v145, 255, 0, 0))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_48;
        }

        v75 = _os_log_pack_size();
        __chkstk_darwin(v75, v76, v77, v78, v79, v80, v81, v82);
        v83 = *__error();
        v84 = _os_log_pack_fill();
        v85 = nullsub_1(v8);
        *v84 = 136315138;
        *(v84 + 4) = v85;
        goto LABEL_47;
      }

      v86 = sub_B830(v145) + 240;
      if (v86 <= 0x12C)
      {
        v86 = 300;
      }

      *(v7 + 184) = v86;
      *(v7 + 44) = 0;
      *(v7 + 48) = 0;
      ++*(v7 + 2332);
      *(v7 + 1732) = HIDWORD(v141);
      *(v7 + 1728) = 0;
      sub_B744(a1);
      bootp_client_enable_receive(*(v7 + 16), sub_8F90, a1, 5);
      sub_BC60(a1, 1);
    }

    if (*(v7 + 44) == 1)
    {
      goto LABEL_59;
    }

    v87 = *(v7 + 1768);
    *(v7 + 1768) = v87 + 1;
    if (v87 < 1 || (v88 = sub_169C(a1), HIDWORD(v88)) || !v88)
    {
      sub_16C0(a1, 0, &v144);
      v89 = sub_2440(a1);
      v90 = *(v7 + 1768);
      if (!v89 && v90 > dword_7002C && dword_70024)
      {
        sub_4A20(a1, 9);
        sub_4884(a1, 1);
        v90 = *(v7 + 1768);
      }

      if (v90 <= dword_70038 + 1)
      {
        v106 = *(v7 + 176);
        *(v106 + 4) = bswap32(*(v7 + 2332));
        *(v106 + 8) = __rev16((v144 - *(v7 + 1752)));
        if ((bootp_client_transmit(*(v7 + 16), 0xFFFFFFFF, v143, word_70044, word_70020, v106, *(v7 + 184)) & 0x80000000) != 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v107 = _os_log_pack_size();
            __chkstk_darwin(v107, v108, v109, v110, v111, v112, v113, v114);
            v115 = *__error();
            v116 = _os_log_pack_fill();
            v117 = nullsub_1(v8);
            *v116 = 136315138;
            *(v116 + 4) = v117;
            __SC_log_send();
          }
        }

        v118 = *(v7 + 2340);
        v119 = sub_65CC(0, 999999);
        v120 = v119;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v121 = _os_log_pack_size();
          v139 = v119;
          v138 = &v138;
          __chkstk_darwin(v121, v122, v123, v124, v125, v126, v127, v128);
          v129 = *__error();
          v130 = _os_log_pack_fill();
          v131 = nullsub_1(v8);
          v132 = *(v7 + 1732);
          v133 = *(v7 + 1733);
          v134 = *(v7 + 1734);
          v135 = *(v7 + 1735);
          v136 = v144 - *(v7 + 1752);
          *v130 = 136316930;
          *(v130 + 4) = v131;
          *(v130 + 12) = 1024;
          *(v130 + 14) = v132;
          *(v130 + 18) = 1024;
          *(v130 + 20) = v133;
          *(v130 + 24) = 1024;
          *(v130 + 26) = v134;
          *(v130 + 30) = 1024;
          *(v130 + 32) = v135;
          *(v130 + 36) = 2048;
          *(v130 + 38) = v136;
          *(v130 + 46) = 2048;
          *(v130 + 48) = v118;
          *(v130 + 56) = 1024;
          *(v130 + 58) = v119;
          v120 = v139;
          __SC_log_send();
        }

        timer_set_relative(*(v7 + 1760), v118, v120, sub_8F90, a1, 2, 0);
        v137 = 2 * *(v7 + 2340);
        if (v137 >= G_max_wait_secs)
        {
          v137 = G_max_wait_secs;
        }

        *(v7 + 2340) = v137;
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v91 = _os_log_pack_size();
          __chkstk_darwin(v91, v92, v93, v94, v95, v96, v97, v98);
          v99 = *__error();
          v100 = _os_log_pack_fill();
          v101 = nullsub_1(v8);
          v102 = *(v7 + 1732);
          v103 = *(v7 + 1733);
          v104 = *(v7 + 1734);
          v105 = *(v7 + 1735);
          *v100 = 136316162;
          *(v100 + 4) = v101;
          *(v100 + 12) = 1024;
          *(v100 + 14) = v102;
          *(v100 + 18) = 1024;
          *(v100 + 20) = v103;
          *(v100 + 24) = 1024;
          *(v100 + 26) = v104;
          *(v100 + 30) = 1024;
          *(v100 + 32) = v105;
          __SC_log_send();
        }

        sub_FE80(a1);
        sub_1008C(a1, 0xAu, 0);
        --*(v7 + 1768);
        sub_B40(a1, 0, 0);
      }
    }

    else
    {
      sub_263C8(a1);
    }
  }
}

uint64_t sub_9D7C(uint64_t a1, unsigned int a2)
{
  v4 = sub_1690(a1);
  *(sub_1688(a1) + 1744) = a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = nullsub_1(v4);
    if (a2 > 8)
    {
      v17 = "<undefined>";
    }

    else
    {
      v17 = off_68DA8[a2];
    }

    *v15 = 136315394;
    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    *(v15 + 14) = v17;
    return __SC_log_send();
  }

  return result;
}

void timer_cancel(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 52))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v2 = *__error();
        v3 = _os_log_pack_fill();
        v4 = *a1;
        *v3 = 136315138;
        *(v3 + 4) = v4;
        __SC_log_send();
      }
    }

    sub_687C(a1);
  }
}

uint64_t sub_A00C(void *a1)
{
  result = sub_5984();
  if (*(a1 + 2))
  {
    v3 = result;
    v4 = *(result + 40);
    if (v4 <= 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v26 = _os_log_pack_size();
        __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
        v34 = *__error();
        v35 = _os_log_pack_fill();
        v36 = nullsub_1(*a1);
        v37 = *(v3 + 40);
        *v35 = 136315394;
        *(v35 + 4) = v36;
        *(v35 + 12) = 1024;
        *(v35 + 14) = v37;
        return __SC_log_send();
      }
    }

    else
    {
      *(result + 40) = v4 - 1;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v5 = _os_log_pack_size();
        __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
        v13 = *__error();
        v14 = _os_log_pack_fill();
        v15 = nullsub_1(*a1);
        v16 = *(v3 + 40);
        *v14 = 136315394;
        *(v14 + 4) = v15;
        *(v14 + 12) = 1024;
        *(v14 + 14) = v16;
        result = __SC_log_send();
      }

      *(a1 + 2) = 0;
      if (!*(v3 + 40))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v17 = _os_log_pack_size();
          __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
          v25 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }

        return timer_set_relative(*(v3 + 48), 1, 0, sub_21D4, v3, 0, 0);
      }
    }
  }

  return result;
}

uint64_t bootp_client_disable_receive(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return sub_A00C(a1);
}

void sub_A314(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 4) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  sub_A374(a1);
  timer_cancel(*(a1 + 64));
  v2 = *(a1 + 256);
  if (v2)
  {
    free(v2);
    *(a1 + 256) = 0;
  }

  sub_4834(a1);
}

void sub_A374(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 16);
    if (v3 <= 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v13 = *__error();
        v14 = _os_log_pack_fill();
        v15 = nullsub_1(*v2);
        v16 = *(v2 + 16);
        *v14 = 136315394;
        *(v14 + 4) = v15;
        *(v14 + 12) = 1024;
        *(v14 + 14) = v16;
        __SC_log_send();
      }
    }

    else
    {
      *(v2 + 16) = v3 - 1;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v4 = *__error();
        v5 = _os_log_pack_fill();
        v6 = nullsub_1(*v2);
        v7 = *(v2 + 16);
        *v5 = 136315394;
        *(v5 + 4) = v6;
        *(v5 + 12) = 1024;
        *(v5 + 14) = v7;
        __SC_log_send();
      }

      *(a1 + 8) = 0;
      if (!*(v2 + 16))
      {
        if (v2[7])
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            _os_log_pack_size();
            __chkstk_darwin();
            v8 = *__error();
            v9 = _os_log_pack_fill();
            v10 = nullsub_1(*v2);
            v11 = sub_5A18(v2[7]);
            *v9 = 136315394;
            *(v9 + 4) = v10;
            *(v9 + 12) = 1024;
            *(v9 + 14) = v11;
            __SC_log_send();
          }

          sub_2B78(v2 + 7);
        }

        v12 = v2[5];
        if (v12)
        {
          free(v12);
          v2[5] = 0;
        }
      }
    }
  }
}

uint64_t sub_A694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (sub_295C(v1 + 56) < 1)
  {
    v5 = 0;
    v4 = 1;
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(sub_42C0(v1 + 56, v2) + 24) & 0xFFFFFFFE;
      v4 = v3 != 514;
      if (v3 == 514)
      {
        break;
      }

      if (++v2 >= sub_295C(v1 + 56))
      {
        v5 = 0;
        goto LABEL_8;
      }
    }

    v5 = 1;
  }

LABEL_8:
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = nullsub_1(*(v1 + 8));
    v17 = "";
    if (v4)
    {
      v17 = "not ";
    }

    *v15 = 136315394;
    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    *(v15 + 14) = v17;
    __SC_log_send();
  }

  return v5;
}

char *sub_A848(char *a1, int a2, const void *a3, int a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int a8, uint64_t *a9)
{
  v14 = a1;
  if (a6)
  {
    v15 = a7 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = a5;
  }

  else
  {
    v17 = a7;
  }

  if (v15)
  {
    v18 = a3;
  }

  else
  {
    v18 = a6;
  }

  bzero(a1, 0x224uLL);
  v14[1] = a4;
  *v14 = 1;
  if (a4 == 24)
  {
    v14[2] = 0;
    if (v18 == a3)
    {
      v16 = 27;
    }
  }

  else
  {
    v14[2] = a5;
    memmove(v14 + 28, a3, a5);
  }

  if (a8 & 1 | G_must_broadcast)
  {
    *(v14 + 5) = 128;
  }

  *(v14 + 59) = 1666417251;
  sub_AD24(a9, v14 + 240, 308);
  if (sub_AF64(a9, a2))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
      v27 = *__error();
      v28 = _os_log_pack_fill();
      v29 = sub_588A8(a9);
      *v28 = 136315650;
      *(v28 + 4) = "make_dhcp_request";
      *(v28 + 12) = 1024;
      *(v28 + 14) = a2;
      *(v28 + 18) = 2080;
      *(v28 + 20) = v29;
      __SC_log_send();
    }

    return 0;
  }

  if (a2 != 4 && a2 != 7)
  {
    __src = -9211;
    if (!sub_AF94(a9, (a8 >> 1) & 1))
    {
      return 0;
    }

    if (sub_ADA4(a9, 57, 2, &__src))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
LABEL_32:
        v33 = _os_log_pack_size();
        __chkstk_darwin(v33, v34, v35, v36, v37, v38, v39, v40);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        v43 = sub_588A8(a9);
        *v42 = 136315394;
        *(v42 + 4) = "make_dhcp_request";
        *(v42 + 12) = 2080;
        *(v42 + 14) = v43;
LABEL_35:
        __SC_log_send();
      }

      return 0;
    }
  }

  v30 = malloc_type_malloc((v17 + 1), 0x7B89C52FuLL);
  if (!v30)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v44 = _os_log_pack_size();
      __chkstk_darwin(v44, v45, v46, v47, v48, v49, v50, v51);
      v52 = *__error();
      v53 = _os_log_pack_fill();
      v54 = __error();
      v55 = strerror(*v54);
      v56 = *__error();
      *v53 = 136315650;
      *(v53 + 4) = "make_dhcp_request";
      *(v53 + 12) = 2080;
      *(v53 + 14) = v55;
      *(v53 + 22) = 1024;
      *(v53 + 24) = v56;
      goto LABEL_35;
    }

    return 0;
  }

  v31 = v30;
  *v30 = v16;
  memmove(v30 + 1, v18, v17);
  v32 = sub_ADA4(a9, 61, v17 + 1, v31);
  free(v31);
  if (v32)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_32;
    }

    return 0;
  }

  return v14;
}

double sub_AD24(uint64_t a1, void *a2, int a3)
{
  bzero(a2, a3);
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 287454020;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 296) = 1;
  return result;
}

uint64_t sub_ADA4(uint64_t a1, int a2, int a3, void *__src)
{
  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  if (a3 >= 256)
  {
    snprintf(v5, 0x100uLL, "tag %d option %d > %d", __src);
    return 1;
  }

  if (*a1 != 287454020 || *(a1 + 24))
  {
    __strlcpy_chk();
    return 1;
  }

  v7 = *(a1 + 20);
  if (a2)
  {
    if (a2 == 255)
    {
      if (v7 >= *(a1 + 16))
      {
        v12 = (*(a1 + 296) + v7);
        snprintf(v5, 0x100uLL, "can't add end tag %d > %d", __src);
        return 1;
      }

      *(*(a1 + 8) + v7) = -1;
      ++*(a1 + 20);
      *(a1 + 24) = 1;
      goto LABEL_22;
    }

    v9 = a3 + 2;
    if (a3 + 2 + v7 + *(a1 + 296) > *(a1 + 16))
    {
      v13 = (v9 + v7 + *(a1 + 296));
      snprintf(v5, 0x100uLL, "can't add tag %d (%d > %d)", __src);
      return 2;
    }

    *(*(a1 + 8) + v7) = a2;
    *(*(a1 + 8) + *(a1 + 20) + 1) = a3;
    if (a3)
    {
      memmove((*(a1 + 8) + *(a1 + 20) + 2), __src, a3);
    }

    v10 = *(a1 + 28);
    v11 = *(a1 + 20);
    *(a1 + 28) = v11;
    *(a1 + 32) = v10;
    v8 = v9 + v11;
  }

  else
  {
    if (*(a1 + 296) + v7 >= *(a1 + 16))
    {
      snprintf(v5, 0x100uLL, "can't add pad tag %d > %d", __src);
      return 2;
    }

    *(*(a1 + 8) + v7) = 0;
    v8 = *(a1 + 20) + 1;
  }

  *(a1 + 20) = v8;
LABEL_22:
  result = 0;
  ++*(a1 + 36);
  return result;
}

uint64_t sub_AF94(uint64_t *a1, int a2)
{
  v3 = dword_70018;
  if (a2)
  {
    v4 = 0;
    v5 = off_70010;
  }

  else
  {
    v5 = off_70010;
    if (dword_70018 < 1)
    {
LABEL_7:
      v4 = 0;
    }

    else
    {
      v6 = 0;
      while (off_70010[v6] != 108)
      {
        if (dword_70018 == ++v6)
        {
          goto LABEL_7;
        }
      }

      v7 = malloc_type_malloc(dword_70018, 0x100004077774924uLL);
      v8 = dword_70018;
      if (dword_70018 < 1)
      {
        goto LABEL_22;
      }

      v5 = v7;
      v9 = 0;
      v3 = 0;
      v10 = off_70010;
      v11 = dword_70018;
      do
      {
        v12 = v10[v9];
        if (v12 != 108)
        {
          v7[v3] = v12;
          v8 = v11;
          ++v3;
        }

        ++v9;
      }

      while (v9 < v8);
      v4 = v7;
      if (v3 < 1)
      {
LABEL_22:
        sub_5BF18();
      }
    }
  }

  if (!sub_ADA4(a1, 55, v3, v5))
  {
    v24 = 1;
    if (!v4)
    {
      return v24;
    }

    goto LABEL_18;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v13 = _os_log_pack_size();
    __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    v23 = sub_588A8(a1);
    *v22 = 136315394;
    *(v22 + 4) = "add_parameter_request_list";
    *(v22 + 12) = 2080;
    *(v22 + 14) = v23;
    __SC_log_send();
  }

  v24 = 0;
  if (v4)
  {
LABEL_18:
    free(v4);
  }

  return v24;
}

uint64_t sub_B1BC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1690(a1);
  v73 = 0;
  if (!sub_B6A8(a1, &v73))
  {
    v5 = sub_12A44();
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!v5)
    {
      if (!result)
      {
        return result;
      }

      v39 = _os_log_pack_size();
      __chkstk_darwin(v39, v40, v41, v42, v43, v44, v45, v46);
      v47 = *__error();
      v48 = _os_log_pack_fill();
      v49 = nullsub_1(v4);
      *v48 = 136315138;
      *(v48 + 4) = v49;
      return __SC_log_send();
    }

    if (result)
    {
      v17 = _os_log_pack_size();
      __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
      v25 = *__error();
      v26 = _os_log_pack_fill();
      v27 = nullsub_1(v4);
      *v26 = 136315394;
      *(v26 + 4) = v27;
      *(v26 + 12) = 2080;
      *(v26 + 14) = v5;
      __SC_log_send();
    }

LABEL_27:
    v61 = strlen(v5);
    result = sub_ADA4(a2, 12, v61, v5);
    if (result)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v62 = _os_log_pack_size();
        __chkstk_darwin(v62, v63, v64, v65, v66, v67, v68, v69);
        v70 = *__error();
        v71 = _os_log_pack_fill();
        v72 = sub_588A8(a2);
        *v71 = 136315138;
        *(v71 + 4) = v72;
        return __SC_log_send();
      }
    }

    return result;
  }

  if (!v73)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v28 = _os_log_pack_size();
    __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
    v36 = *__error();
    v37 = _os_log_pack_fill();
    v38 = nullsub_1(v4);
    *v37 = 136315138;
    *(v37 + 4) = v38;
    return __SC_log_send();
  }

  v5 = qword_70148;
  if (!qword_70148)
  {
    v6 = MGCopyAnswer();
    if (v6)
    {
      v7 = v6;
      v8 = sub_57C28(v6, 0x8000100u);
      qword_70148 = v8;
      if (v8)
      {
        v9 = v8;
        v10 = strlen(v8);
        if (v10)
        {
          v11 = v10;
          for (i = 0; v11 != i; ++i)
          {
            v13 = *(v9 + i);
            if (v13 < 0)
            {
              v15 = __maskrune(v13, 0x100uLL);
              v14 = qword_70148;
              if (!v15)
              {
LABEL_21:
                *(v9 + i) = 0;
                break;
              }
            }

            else
            {
              v14 = v9;
              if ((_DefaultRuneLocale.__runetype[v13] & 0x100) == 0)
              {
                goto LABEL_21;
              }
            }

            v9 = v14;
          }
        }
      }

      CFRelease(v7);
    }

    v5 = qword_70148;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v50 = _os_log_pack_size();
    __chkstk_darwin(v50, v51, v52, v53, v54, v55, v56, v57);
    v58 = *__error();
    v59 = _os_log_pack_fill();
    v60 = nullsub_1(v4);
    *v59 = 136315394;
    *(v59 + 4) = v60;
    *(v59 + 12) = 2080;
    *(v59 + 14) = v5;
    result = __SC_log_send();
  }

  if (v5)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_B6A8(uint64_t a1, _DWORD *a2)
{
  v4 = *(*(a1 + 16) + 8);
  v5 = sub_2480(v4);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(a1 + 16);
  v7 = *(v6 + 96);
  if (!v7 || ((v8 = sub_395BC(*(v6 + 96))) != 0 ? (v9 = v8 == 0xFFFF) : (v9 = 1), v9))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v5 = sub_597BC(v4);
  if (!v5)
  {
LABEL_14:
    v10 = 0;
    if (!a2)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v5 = WiFiInfoAllowSharingDeviceType(v7);
LABEL_9:
  v10 = 1;
  if (a2)
  {
LABEL_10:
    *a2 = v5;
  }

  return v10;
}

uint64_t sub_B744(uint64_t a1)
{
  v1 = nullsub_1(*(*(a1 + 16) + 8));

  return sub_B778(v1, 1);
}

uint64_t sub_B778(uint64_t a1, int a2)
{
  result = sub_7838();
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v7[0] = 0u;
    v7[1] = a2;
    __strlcpy_chk();
    v6 = ioctl(v5, 0xC0206926uLL, v7);
    return sub_7BE0(v6, a1, "SIOCAUTOADDR");
  }

  return result;
}

uint64_t sub_B830(uint64_t result)
{
  if (result)
  {
    if (*result == 287454020)
    {
      return *(result + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t bootp_client_enable_receive(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  result = sub_B984(a1);
  if (!result)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = nullsub_1(*a1);
      *v15 = 136315138;
      *(v15 + 4) = v16;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_B984(void *a1)
{
  v2 = sub_5984();
  if (*(a1 + 2))
  {
    return 1;
  }

  v4 = v2;
  timer_cancel(*(v2 + 48));
  ++*(v4 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    v15 = nullsub_1(*a1);
    v16 = *(v4 + 40);
    *v14 = 136315394;
    *(v14 + 4) = v15;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v16;
    __SC_log_send();
  }

  result = 1;
  *(a1 + 2) = 1;
  if (*(v4 + 40) <= 1)
  {
    if (*(v4 + 32))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v17 = _os_log_pack_size();
        __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
        v25 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
        return 1;
      }

      return 1;
    }

    if (sub_BDDC(v4))
    {
      return 1;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v26 = _os_log_pack_size();
      __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
      v34 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    sub_A00C(a1);
    return 0;
  }

  return result;
}

void sub_BC60(uint64_t a1, int a2)
{
  if (*(a1 + 72) != a2)
  {
    *(a1 + 72) = a2;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = sub_6160(*(a1 + 24));
      v15 = nullsub_1(*(*(a1 + 16) + 8));
      v16 = "busy";
      *v13 = 136315650;
      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      if (!a2)
      {
        v16 = "not busy";
      }

      *(v13 + 14) = v15;
      *(v13 + 22) = 2080;
      *(v13 + 24) = v16;
      __SC_log_send();
    }

    sub_CBD0(*(a1 + 16));
  }
}

uint64_t sub_BDDC(uint64_t a1)
{
  if (*(a1 + 57) == 1)
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
      *(v10 + 4) = "bootp_session_open_socket";
      __SC_log_send();
      return 1;
    }

    return 1;
  }

  v13 = sub_C098(*(a1 + 44));
  sub_2424();
  if ((v13 & 0x80000000) == 0)
  {
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 67109120;
      v23[1] = v13;
      __SC_log_send();
    }

    sub_C788(a1, v13);
    return 1;
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v24 = _os_log_pack_size();
    __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
    v32 = *__error();
    v33 = _os_log_pack_fill();
    v34 = __error();
    v35 = strerror(*v34);
    *v33 = 136315138;
    *(v33 + 4) = v35;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_C098(unsigned int a1)
{
  v77 = 0;
  v2 = socket(2, 2, 0);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    *&v78.sa_len = 512;
    *&v78.sa_data[6] = 0;
    *v78.sa_data = __rev16(a1);
    if (bind(v2, &v78, 0x10u))
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
        *v13 = 67109378;
        *(v13 + 4) = a1;
        *(v13 + 8) = 2080;
        *(v13 + 10) = v15;
LABEL_25:
        __SC_log_send();
      }

LABEL_26:
      close(v3);
      return 0xFFFFFFFFLL;
    }

    v77 = 1;
    if (setsockopt(v3, 0xFFFF, 32, &v77, 4u) < 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_26;
      }
    }

    else if (ioctl(v3, 0x8004667EuLL, &v77) < 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((setsockopt(v3, 0, 20, &v77, 4u) & 0x80000000) == 0)
      {
        if (setsockopt(v3, 0xFFFF, 4356, &v77, 4u) < 0)
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

        v77 = 900;
        if (setsockopt(v3, 0xFFFF, 4230, &v77, 4u) < 0)
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
          }
        }

        v77 = 0;
        if (setsockopt(v3, 0xFFFF, 4352, &v77, 4u) < 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
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
        }

        return v3;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_26;
      }
    }

    v64 = _os_log_pack_size();
    __chkstk_darwin(v64, v65, v66, v67, v68, v69, v70, v71);
    v72 = *__error();
    v73 = _os_log_pack_fill();
    v74 = __error();
    v75 = strerror(*v74);
    *v73 = 136315138;
    *(v73 + 4) = v75;
    goto LABEL_25;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (!__SC_log_enabled())
  {
    return 0xFFFFFFFFLL;
  }

  v16 = _os_log_pack_size();
  __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = *__error();
  v25 = _os_log_pack_fill();
  v26 = __error();
  v27 = strerror(*v26);
  *v25 = 136315138;
  *(v25 + 4) = v27;
  __SC_log_send();
  return 0xFFFFFFFFLL;
}

char *sub_C788(uint64_t a1, int a2)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "bootp_session_enable_receive";
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2;
    __SC_log_send();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_30A8;
  v15[3] = &unk_68D60;
  v15[4] = a1;
  v16 = a2;
  result = sub_C92C(a2, sub_23BB8, a1, 0, v15);
  *(a1 + 32) = result;
  return result;
}

char *sub_C92C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      __chkstk_darwin();
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = __error();
      v16 = strerror(*v15);
      v17 = *__error();
      *v14 = 136315650;
      *(v14 + 4) = "FDCalloutCreate";
      *(v14 + 12) = 2080;
      *(v14 + 14) = v16;
      *(v14 + 22) = 1024;
      *(v14 + 24) = v17;
      __SC_log_send();
    }

    return 0;
  }

  else
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10A0040DF4813A1uLL);
    *(v10 + 4) = 0;
    *(v10 + 3) = 0;
    *v10 = a1;
    *(v10 + 2) = a2;
    *(v10 + 3) = a3;
    *(v10 + 4) = a4;
    v11 = sub_CB80();
    v12 = dispatch_source_create(&_dispatch_source_type_read, a1, 0, v11);
    *(v10 + 1) = v12;
    dispatch_source_set_cancel_handler(v12, a5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_18150;
    handler[3] = &unk_68DF0;
    handler[4] = v10;
    dispatch_source_set_event_handler(*(v10 + 1), handler);
    dispatch_activate(*(v10 + 1));
  }

  return v10;
}

dispatch_queue_t sub_CB80()
{
  result = qword_70230;
  if (!qword_70230)
  {
    result = dispatch_queue_create("IPConfigurationAgentQueue", 0);
    qword_70230 = result;
  }

  return result;
}

uint64_t sub_CBBC(uint64_t a1)
{
  result = *(*(a1 + 16) + 96);
  if (result)
  {
    return sub_3952C(result);
  }

  return result;
}

void sub_CBD0(uint64_t a1)
{
  if (sub_CE6C(a1 + 24))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_CE6C(a1 + 56) != 0;
  }

  v3 = (*a1 >> 1) & 1;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    v14 = nullsub_1(*(a1 + 8));
    v15 = "busy";
    *v13 = 136315906;
    *(v13 + 4) = "IFStateProcessBusy";
    if (v3)
    {
      v16 = "busy";
    }

    else
    {
      v16 = "not busy";
    }

    *(v13 + 14) = v14;
    *(v13 + 12) = 2080;
    *(v13 + 22) = 2080;
    if (!v2)
    {
      v15 = "not busy";
    }

    *(v13 + 24) = v16;
    *(v13 + 32) = 2080;
    *(v13 + 34) = v15;
    __SC_log_send();
  }

  if (v2 != v3)
  {
    *a1 = *a1 & 0xFFFFFFFD | (2 * (v2 & 1));
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v17 = _os_log_pack_size();
      __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
      v25 = *__error();
      v26 = _os_log_pack_fill();
      v27 = nullsub_1(*(a1 + 8));
      v28 = "busy";
      if (!v2)
      {
        v28 = "not busy";
      }

      *v26 = 136315394;
      *(v26 + 4) = v27;
      *(v26 + 12) = 2080;
      *(v26 + 14) = v28;
      __SC_log_send();
    }

    sub_CED0(a1, @"IPConfigurationBusy", (*a1 >> 1) & 1);
  }
}

uint64_t sub_CE6C(uint64_t a1)
{
  if ((sub_295C)() < 1)
  {
    return 0;
  }

  v2 = 0;
  while (!*(sub_42C0(a1, v2) + 72))
  {
    if (++v2 >= sub_295C(a1))
    {
      return 0;
    }
  }

  return 1;
}

void sub_CED0(uint64_t a1, const __CFString *a2, int a3)
{
  if (a3)
  {
    v5 = CFDictionaryCreate(0, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  sub_CF60(qword_70188, *(a1 + 16), a2, v5);
  sub_41E8(&v6);
  dispatch_source_merge_data(qword_701C0, 1uLL);
}

void sub_CF60(const __SCDynamicStore *a1, CFStringRef ifname, CFStringRef entity, const void *a4)
{
  if (!qword_70280)
  {
    qword_70280 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (!qword_70288)
  {
    qword_70288 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    xmmword_70290 = 0uLL;
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, entity);
  sub_D03C(a1, NetworkInterfaceEntity, a4);

  CFRelease(NetworkInterfaceEntity);
}

void sub_D03C(const __SCDynamicStore *a1, const __CFString *value, const void *a3)
{
  v6 = xmmword_70290;
  if (a3)
  {
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_70288, v6, value);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(qword_70288, FirstIndexOfValue);
      --*(&xmmword_70290 + 1);
LABEL_4:
      CFDictionarySetValue(qword_70280, value, a3);
      return;
    }

    v9 = sub_42EC(a1, value);
    v11 = v9;
    if (!v9)
    {
      goto LABEL_4;
    }

    v10 = CFEqual(a3, v9);
    sub_41E8(&v11);
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (!CFArrayContainsValue(qword_70288, v6, value))
    {
      CFArrayAppendValue(qword_70288, value);
      ++*(&xmmword_70290 + 1);
    }

    v8 = qword_70280;

    CFDictionaryRemoveValue(v8, value);
  }
}

void sub_D154(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  if (a2 != 6)
  {
    if (a2 != 2)
    {
      if (!a2)
      {
        *(v7 + 32) = 0;
        v9 = nullsub_1(v6);
        sub_D888(v9, 0);
        sub_D944(a1);
        *(v8 + 16) = 1;
        v10 = *(v8 + 20);
        if (!v10)
        {
          v10 = bswap32(sub_65CC(0, 65024) - 1442971392);
        }

        *(v8 + 24) = v10;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v11 = _os_log_pack_size();
          __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
          v19 = *__error();
          v20 = _os_log_pack_fill();
          v21 = nullsub_1(v6);
          v22 = *(v8 + 24);
          v23 = *(v8 + 25);
          v24 = *(v8 + 26);
          v25 = *(v8 + 27);
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

        sub_D99C(*v8, sub_D154, a1, 6, 0, *(v8 + 24));
      }

      return;
    }

    goto LABEL_21;
  }

  if (*(a3 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v26 = _os_log_pack_size();
    __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
    v34 = *__error();
    v35 = _os_log_pack_fill();
    v36 = nullsub_1(v6);
    v37 = sub_21F58(*v8);
    *v35 = 136315394;
    *(v35 + 4) = v36;
    *(v35 + 12) = 2080;
    *(v35 + 14) = v37;
LABEL_23:
    __SC_log_send();
    return;
  }

  if (*(a3 + 12))
  {
    goto LABEL_13;
  }

  if (sub_2ADD8(a1, *(v7 + 24)))
  {
    if (!*(a3 + 12))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_16;
      }

      v66 = _os_log_pack_size();
      __chkstk_darwin(v66, v67, v68, v69, v70, v71, v72, v73);
      v74 = *__error();
      v75 = _os_log_pack_fill();
      v76 = nullsub_1(v6);
      v77 = *(v8 + 24);
      v78 = *(v8 + 25);
      v79 = *(v8 + 26);
      v80 = *(v8 + 27);
      *v75 = 136316162;
      *(v75 + 4) = v76;
      *(v75 + 12) = 1024;
      *(v75 + 14) = v77;
      *(v75 + 18) = 1024;
      *(v75 + 20) = v78;
      *(v75 + 24) = 1024;
      *(v75 + 26) = v79;
      *(v75 + 30) = 1024;
      *(v75 + 32) = v80;
      goto LABEL_15;
    }

LABEL_13:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_16:
      if (*(v8 + 20) == *(v8 + 24))
      {
        *(v8 + 20) = 0;
        sub_FE80(a1);
        sub_102A4(a1, 8u);
      }

      v49 = *(v8 + 16);
      if (v49 >= 10)
      {
        timer_set_relative(*(v8 + 8), 30, 0, sub_D154, a1, 2, 0);
        return;
      }

      *(v8 + 16) = v49 + 1;
LABEL_21:
      v50 = bswap32(sub_65CC(0, 65024) - 1442971392);
      *(v8 + 24) = v50;
      sub_D99C(*v8, sub_D154, a1, 6, 0, v50);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }

      v51 = _os_log_pack_size();
      __chkstk_darwin(v51, v52, v53, v54, v55, v56, v57, v58);
      v59 = *__error();
      v60 = _os_log_pack_fill();
      v61 = nullsub_1(v6);
      v62 = *(v8 + 24);
      v63 = *(v8 + 25);
      v64 = *(v8 + 26);
      v65 = *(v8 + 27);
      *v60 = 136316162;
      *(v60 + 4) = v61;
      *(v60 + 12) = 1024;
      *(v60 + 14) = v62;
      *(v60 + 18) = 1024;
      *(v60 + 20) = v63;
      *(v60 + 24) = 1024;
      *(v60 + 26) = v64;
      *(v60 + 30) = 1024;
      *(v60 + 32) = v65;
      goto LABEL_23;
    }

    v38 = _os_log_pack_size();
    __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45);
    v46 = *__error();
    v47 = _os_log_pack_fill();
    v48 = nullsub_1(v6);
    sub_38AB4(v47, v48, *(v8 + 24), *(v8 + 25), *(v8 + 26), *(v8 + 27), *(a3 + 24), *(a3 + 25), *(a3 + 26), *(a3 + 27), *(a3 + 28), *(a3 + 29));
LABEL_15:
    __SC_log_send();
    goto LABEL_16;
  }

  if (sub_169C(a1) == 1)
  {

    sub_38A28(a1, 0xCu);
  }

  else
  {
    sub_2BB1C(a1, *(v8 + 24), 0xFFFFuLL, 0);
    sub_2BB04(a1, *(v8 + 24));
    v81 = nullsub_1(v6);
    sub_D888(v81, 1);
    sub_D944(a1);
    *(v8 + 20) = *(v8 + 24);
    sub_102AC(a1, 0);
    *(v8 + 32) = 1;
  }
}

uint64_t sub_D888(uint64_t a1, int a2)
{
  result = sub_7838();
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v7 = 0u;
    v8 = 0u;
    LODWORD(v8) = a2 != 0;
    __strlcpy_chk();
    v6 = ioctl(v5, 0xC0206928uLL, &v7);
    return sub_7BE0(v6, a1, "SIOCARPIPLL");
  }

  return result;
}

void sub_D944(uint64_t a1)
{
  v1 = sub_1688(a1);
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + 8);
    if (v3)
    {
      timer_cancel(v3);
    }

    v4 = *v2;
    if (*v2)
    {

      sub_A314(v4);
    }
  }
}

void sub_D99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v12 = *(a1 + 16);
  sub_A314(a1);
  sub_E374(v12);
  *(a1 + 48) = a5;
  *(a1 + 52) = a6;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 96) = 0;
  *(a1 + 56) = 0;
  *(a1 + 240) = 0;
  if (sub_DA70(a1))
  {
    *a1 = 0x400000001;

    sub_E5E0(a1);
  }

  else
  {
    *(a1 + 4) = 3;

    sub_21AF4(a1);
  }
}

uint64_t sub_DA70(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  v3 = *(a1 + 16);
  v113 = 0;
  ++*(v3 + 16);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    v14 = nullsub_1(*v3);
    v15 = *(v3 + 16);
    *v13 = 136315394;
    *(v13 + 4) = v14;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v15;
    __SC_log_send();
  }

  result = 1;
  *(a1 + 8) = 1;
  if (*(v3 + 16) > 1)
  {
    return result;
  }

  v16 = sub_6280();
  if (v16 < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v21 = _os_log_pack_size();
      __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      v31 = nullsub_1(*v3);
      v32 = __error();
      v33 = strerror(*v32);
      v34 = *__error();
      *v30 = 136315650;
      *(v30 + 4) = v31;
      *(v30 + 12) = 2080;
      *(v30 + 14) = v33;
      *(v30 + 22) = 1024;
      *(v30 + 24) = v34;
      __SC_log_send();
    }

    v35 = nullsub_1(*v3);
    v36 = __error();
    v37 = strerror(*v36);
    v38 = __error();
    snprintf((a1 + 96), 0x80uLL, "arp_client_open_fd: bpf_new(%s) failed, %s (%d)", v35, v37, *v38);
    goto LABEL_32;
  }

  v17 = v16;
  v113 = 1;
  if (ioctl(v16, 0x8004667EuLL, &v113) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v39 = _os_log_pack_size();
      __chkstk_darwin(v39, v40, v41, v42, v43, v44, v45, v46);
      v47 = *__error();
      v48 = _os_log_pack_fill();
      v49 = __error();
      v50 = strerror(*v49);
      *v48 = 136315138;
      *(v48 + 4) = v50;
      __SC_log_send();
    }

    goto LABEL_31;
  }

  nullsub_1(*v3);
  if ((sub_641C(v17) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v51 = _os_log_pack_size();
      __chkstk_darwin(v51, v52, v53, v54, v55, v56, v57, v58);
      v59 = *__error();
      v60 = _os_log_pack_fill();
      v61 = nullsub_1(*v3);
      v62 = __error();
      v63 = strerror(*v62);
      v64 = *__error();
      *v60 = 136315650;
      *(v60 + 4) = v61;
      *(v60 + 12) = 2080;
      *(v60 + 14) = v63;
      *(v60 + 22) = 1024;
      *(v60 + 24) = v64;
      __SC_log_send();
    }

    nullsub_1(*v3);
    v65 = __error();
    strerror(*v65);
    v66 = *__error();
    snprintf((a1 + 96), 0x80uLL, "arp_client_open_fd: bpf_setif (%s) failed: %s (%d)");
    goto LABEL_31;
  }

  sub_E4C0(v17, 1);
  sub_E4F4(v17, 1);
  if (sub_E4B8(*v3) == 144)
  {
    v18 = v17;
    v19 = 16;
    v20 = 50;
  }

  else
  {
    v18 = v17;
    v19 = 12;
    v20 = 42;
  }

  if ((sub_E528(v18, v19, 2054, v20) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v79 = _os_log_pack_size();
      __chkstk_darwin(v79, v80, v81, v82, v83, v84, v85, v86);
      v87 = *__error();
      v88 = _os_log_pack_fill();
      v89 = nullsub_1(*v3);
      v90 = __error();
      v91 = strerror(*v90);
      v92 = *__error();
      *v88 = 136315650;
      *(v88 + 4) = v89;
      *(v88 + 12) = 2080;
      *(v88 + 14) = v91;
      *(v88 + 22) = 1024;
      *(v88 + 24) = v92;
      __SC_log_send();
    }

    nullsub_1(*v3);
    v93 = __error();
    strerror(*v93);
    v94 = *__error();
    snprintf((a1 + 96), 0x80uLL, "arp_client_open_fd: bpf_arp_filter(%s) failed: %s (%d)");
    goto LABEL_31;
  }

  if ((sub_E5B4(v17, (v3 + 6)) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v95 = _os_log_pack_size();
      __chkstk_darwin(v95, v96, v97, v98, v99, v100, v101, v102);
      v103 = *__error();
      v104 = _os_log_pack_fill();
      v105 = nullsub_1(*v3);
      v106 = __error();
      v107 = strerror(*v106);
      v108 = *__error();
      *v104 = 136315650;
      *(v104 + 4) = v105;
      *(v104 + 12) = 2080;
      *(v104 + 14) = v107;
      *(v104 + 22) = 1024;
      *(v104 + 24) = v108;
      __SC_log_send();
    }

    nullsub_1(*v3);
    v109 = __error();
    strerror(*v109);
    v110 = *__error();
    snprintf((a1 + 96), 0x80uLL, "arp_client_open_fd: bpf_get_blen(%s) failed, %s (%d)");
    goto LABEL_31;
  }

  v3[5] = malloc_type_malloc(*(v3 + 12), 0x37453D8AuLL);
  v111[0] = _NSConcreteStackBlock;
  v111[1] = 0x40000000;
  v111[2] = sub_18034;
  v111[3] = &unk_68CC0;
  v112 = v17;
  v67 = sub_C92C(v17, sub_2269C, v3, 0, v111);
  v3[7] = v67;
  if (!v67)
  {
LABEL_31:
    close(v17);
LABEL_32:
    sub_A374(a1);
    return 0;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (!__SC_log_enabled())
  {
    return 1;
  }

  v68 = _os_log_pack_size();
  __chkstk_darwin(v68, v69, v70, v71, v72, v73, v74, v75);
  v76 = *__error();
  v77 = _os_log_pack_fill();
  v78 = nullsub_1(*v3);
  *v77 = 136315394;
  *(v77 + 4) = v78;
  *(v77 + 12) = 1024;
  *(v77 + 14) = v17;
  __SC_log_send();
  return 1;
}

uint64_t sub_E374(uint64_t *a1)
{
  result = sub_E4B8(*a1);
  if (result == 144)
  {
    v3 = nullsub_1(*a1);
    result = sub_225D8(v3, (a1 + 9));
    if (!result)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v4 = _os_log_pack_size();
        __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
        v12 = *__error();
        v13 = _os_log_pack_fill();
        v14 = nullsub_1(*a1);
        *v13 = 136315138;
        *(v13 + 4) = v14;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_E528(int a1, int a2, int a3, int a4)
{
  v6[0] = 40;
  v6[1] = a2;
  v6[2] = 16777237;
  v6[3] = a3;
  v6[4] = 6;
  v6[5] = a4;
  v7 = 6;
  v5[1] = v6;
  v5[0] = 4;
  return ioctl(a1, 0x80104267uLL, v5);
}

void sub_E5E0(uint64_t a1)
{
  v2 = *(a1 + 236);
  v3 = *(a1 + 56);
  v4 = v2 + *(a1 + 232) - v3;
  if (v4 <= 0)
  {
    v17 = 1;
  }

  else
  {
    v5 = *(a1 + 16);
    *(a1 + 56) = v3 + 1;
    if (*(a1 + 240))
    {
      goto LABEL_3;
    }

    if (sub_E940(a1, v4 <= v2, 0))
    {
      if (!*(a1 + 240))
      {
        v18 = *(a1 + 236);
        sub_2424();
        _SC_syslog_os_log_mapping();
        v19 = __SC_log_enabled();
        if (v4 <= v18)
        {
          if (!v19)
          {
            goto LABEL_6;
          }

          v33 = _os_log_pack_size();
          __chkstk_darwin(v33, v34, v35, v36, v37, v38, v39, v40);
          v41 = *__error();
          v42 = _os_log_pack_fill();
          v43 = nullsub_1(*v5);
          v44 = *(a1 + 236);
          *v42 = 136315650;
          *(v42 + 4) = v43;
          *(v42 + 12) = 1024;
          *(v42 + 14) = v44 - v4 + 1;
          *(v42 + 18) = 1024;
          *(v42 + 20) = v44;
        }

        else
        {
          if (!v19)
          {
            goto LABEL_6;
          }

          v20 = _os_log_pack_size();
          __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
          v28 = *__error();
          v29 = _os_log_pack_fill();
          v30 = nullsub_1(*v5);
          v31 = *(a1 + 56);
          v32 = *(a1 + 232);
          *v29 = 136315650;
          *(v29 + 4) = v30;
          *(v29 + 12) = 1024;
          *(v29 + 14) = v31;
          *(v29 + 18) = 1024;
          *(v29 + 20) = v32;
        }

        goto LABEL_5;
      }

LABEL_3:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_6:
        timer_callout_set(*(a1 + 64), sub_E5E0, a1, 0, 0, *(a1 + 224));
        *(a1 + 240) = 0;
        return;
      }

      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = nullsub_1(*v5);
      *v15 = 136315138;
      *(v15 + 4) = v16;
LABEL_5:
      __SC_log_send();
      goto LABEL_6;
    }

    v17 = 3;
  }

  *(a1 + 4) = v17;

  sub_21AF4(a1);
}

uint64_t sub_E940(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  memset(v40, 0, sizeof(v40));
  v7 = sub_638C(*v6);
  if (v7 == 24)
  {
    LOWORD(v40[1]) = 1544;
    v11 = *sub_A840(*v6);
    v12 = (a3 + 8);
    if (!a3)
    {
      v12 = &dword_5D018;
    }

    *&v40[0] = *v12;
    *(&v40[0] + 1) = v11;
    *(&v40[1] + 2) = 0x100041000081800;
    *(&v40[1] + 10) = *(v6 + 9);
    if (a3)
    {
      *(&v40[2] + 10) = *a3;
    }

    else
    {
      if (a2 != 1 || *(a1 + 48))
      {
        *(&v40[2] + 10) = *(a1 + 48);
        v18 = *(a1 + 52);
      }

      else
      {
        v18 = *(a1 + 52);
        *(&v40[2] + 10) = v18;
      }

      *(&v40[2] + 14) = v18;
    }

    v19 = 50;
  }

  else
  {
    if (v7 != 1)
    {
      v13 = nullsub_1(*v6);
      snprintf((a1 + 96), 0x80uLL, "arp_client_transmit(%s): interface hardware type not yet known", v13);
      return 0;
    }

    WORD6(v40[0]) = 1544;
    v8 = sub_A840(*v6);
    v9 = *(v8 + 4);
    *(v40 + 6) = *v8;
    WORD5(v40[0]) = v9;
    if (a3)
    {
      LODWORD(v40[0]) = *(a3 + 8);
      v10 = *(a3 + 12);
    }

    else
    {
      LODWORD(v40[0]) = -1;
      v10 = -1;
    }

    WORD2(v40[0]) = v10;
    *(v40 + 14) = 0x100040600080100;
    v14 = sub_A840(*v6);
    v15 = *(v14 + 4);
    *(&v40[1] + 6) = *v14;
    WORD5(v40[1]) = v15;
    if (a3)
    {
      v16 = *(a3 + 4);
      HIDWORD(v40[1]) = *a3;
      *(&v40[2] + 6) = v16;
    }

    else
    {
      if (a2 != 1 || *(a1 + 48))
      {
        HIDWORD(v40[1]) = *(a1 + 48);
        v17 = *(a1 + 52);
      }

      else
      {
        v17 = *(a1 + 52);
        HIDWORD(v40[1]) = v17;
      }

      *(&v40[2] + 6) = v17;
    }

    v19 = 42;
  }

  v20 = sub_5A18(v6[7]);
  if ((sub_65A0(v20, v40, v19) & 0x80000000) == 0)
  {
    return 1;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v22 = _os_log_pack_size();
    __chkstk_darwin(v22, v23, v24, v25, v26, v27, v28, v29, *&v40[0], *(&v40[0] + 1), *&v40[1], *(&v40[1] + 1), *&v40[2], *(&v40[2] + 1), *&v40[3], *(&v40[3] + 1));
    v30 = *__error();
    v31 = _os_log_pack_fill();
    v32 = nullsub_1(*v6);
    v33 = __error();
    v34 = strerror(*v33);
    v35 = *__error();
    *v31 = 136315650;
    *(v31 + 4) = v32;
    *(v31 + 12) = 2080;
    *(v31 + 14) = v34;
    *(v31 + 22) = 1024;
    *(v31 + 24) = v35;
    __SC_log_send();
  }

  v36 = nullsub_1(*v6);
  v37 = __error();
  v38 = strerror(*v37);
  v39 = __error();
  snprintf((a1 + 96), 0x80uLL, "arp_client_transmit(%s) failed, %s (%d)", v36, v38, *v39);
  return 0;
}

uint64_t sub_ECB0(uint64_t a1)
{
  v10 = 0;
  v2 = sub_7838();
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2;
  if (sub_ED9C(v2, a1, 0, &v10) || !v10)
  {
    return 0;
  }

  v6 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  if (sub_ED9C(v3, a1, v6, &v10))
  {
    v7 = 0;
  }

  else
  {
    v7 = v10;
  }

  if (v6 && !v7)
  {
    free(v6);
    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (v7)
  {
    v8 = v6;
    while (1)
    {
      v9 = *v8++;
      if (v9 == 30)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
  }

  else
  {
LABEL_17:
    v4 = 0;
  }

  free(v6);
  return v4;
}

uint64_t sub_ED9C(int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0u;
  v11 = 0u;
  __strlcpy_chk();
  if (a3)
  {
    LODWORD(v11) = *a4;
    *(&v11 + 1) = a3;
  }

  v8 = ioctl(a1, 0xC02069C4uLL, &v10);
  sub_7BE0(v8, a2, "SIOCGIFPROTOLIST");
  if (!v8)
  {
    *a4 = v11;
  }

  return v8;
}

CFMutableArrayRef sub_EE70(const __SCDynamicStore *a1, CFStringRef ifname)
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, @"BonjourSleepProxyAddress");
  v5 = SCDynamicStoreCopyValue(a1, NetworkInterfaceEntity);
  v22 = v5;
  CFRelease(NetworkInterfaceEntity);
  TypeID = CFDictionaryGetTypeID();
  if (!v5 || CFGetTypeID(v5) != TypeID)
  {
    sub_41E8(&v22);
    v5 = v22;
    if (!v22)
    {
      return 0;
    }
  }

  Value = CFDictionaryGetValue(v5, @"RegisteredAddresses");
  v8 = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == v8)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 138412546;
      *(v18 + 4) = ifname;
      *(v18 + 12) = 2112;
      *(v18 + 14) = Value;
      __SC_log_send();
    }

    Count = CFArrayGetCount(Value);
    MutableCopy = CFArrayCreateMutableCopy(0, Count, Value);
  }

  else
  {
    MutableCopy = 0;
  }

  CFRelease(v5);
  return MutableCopy;
}

uint64_t sub_F06C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  if (a2 && !v7)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_4:
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = nullsub_1(v6);
      *v18 = 136315138;
      *(v18 + 4) = v19;
      __SC_log_send();
      return 6;
    }

    return 6;
  }

  v20 = 0;
  switch(a2)
  {
    case 0:
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
          goto LABEL_4;
        }

        return 6;
      }

      v55 = malloc_type_malloc(0xA8uLL, 0x10700401DDFF929uLL);
      if (!v55)
      {
        sub_2424();
        v20 = 5;
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v70 = _os_log_pack_size();
          __chkstk_darwin(v70, v71, v72, v73, v74, v75, v76, v77);
          v78 = *__error();
          v79 = _os_log_pack_fill();
          v80 = nullsub_1(v6);
          *v79 = 136315138;
          *(v79 + 4) = v80;
          __SC_log_send();
        }

        return v20;
      }

      v8 = v55;
      v55[20] = 0;
      *(v55 + 8) = 0u;
      *(v55 + 9) = 0u;
      *(v55 + 6) = 0u;
      *(v55 + 7) = 0u;
      *(v55 + 4) = 0u;
      *(v55 + 5) = 0u;
      *(v55 + 2) = 0u;
      *(v55 + 3) = 0u;
      *v55 = 0u;
      *(v55 + 1) = 0u;
      sub_151FC(a1, v55);
      v56 = nullsub_1(v6);
      snprintf(__str, 0x20uLL, "rtadv-%s", v56);
      v57 = timer_callout_init(__str);
      v8[1] = v57;
      if (!v57)
      {
        sub_2424();
        v20 = 5;
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_78;
        }

LABEL_77:
        v81 = _os_log_pack_size();
        __chkstk_darwin(v81, v82, v83, v84, v85, v86, v87, v88);
        v89 = *__error();
        v90 = _os_log_pack_fill();
        v91 = nullsub_1(v6);
        *v90 = 136315138;
        *(v90 + 4) = v91;
        __SC_log_send();
        v20 = 5;
        goto LABEL_78;
      }

      v58 = sub_54514(v6);
      *v8 = v58;
      if (!v58)
      {
        sub_2424();
        v20 = 5;
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      if (G_dhcpv6_enabled)
      {
        if (sub_2C358(a1))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v59 = _os_log_pack_size();
            __chkstk_darwin(v59, v60, v61, v62, v63, v64, v65, v66);
            v67 = *__error();
            v68 = _os_log_pack_fill();
            v69 = nullsub_1(v6);
            *v68 = 136315138;
            *(v68 + 4) = v69;
            __SC_log_send();
          }
        }

        else
        {
          v105 = sub_47014(a1);
          v8[3] = v105;
          sub_47EF8(v105, sub_43994, a1);
        }
      }

      sub_1C3B4(a1, 0);
      sub_439B8(a1);
      return 0;
    case 1:
LABEL_78:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v92 = _os_log_pack_size();
        __chkstk_darwin(v92, v93, v94, v95, v96, v97, v98, v99);
        v100 = *__error();
        v101 = _os_log_pack_fill();
        v102 = nullsub_1(v6);
        *v101 = 136315138;
        *(v101 + 4) = v102;
        __SC_log_send();
      }

      if (!sub_2AED8(a1))
      {
        sub_1E064(a1, 0);
      }

      sub_43A14(a1, 0x12u);
      sub_547AC(v8);
      sub_47D30(v8 + 3);
      if (v8[1])
      {
        timer_callout_free(v8 + 1);
      }

      v103 = nullsub_1(v6);
      sub_4226C(v103);
      v104 = nullsub_1(v6);
      sub_42418(v104);
      sub_151FC(a1, 0);
      free(v8);
      return v20;
    case 3:
    case 8:
    case 11:
      if (*(a3 + 4) && !*(a3 + 8))
      {
        *(v7 + 36) = 0;
        goto LABEL_46;
      }

      if (*a3 == 1)
      {
        *(v7 + 68) = 0;
        v21 = sub_1690(a1);
        v22 = sub_1688(a1);
        v23 = nullsub_1(v21);
        sub_4226C(v23);
        v24 = nullsub_1(v21);
        sub_42418(v24);
        v25 = nullsub_1(v21);
        sub_4195C(v25);
        v26 = *(v22 + 24);
        if (v26)
        {
          sub_47878(v26);
          sub_477C4(*(v22 + 24));
        }

        sub_43A14(a1, 0x13u);
        v27 = 1;
      }

      else
      {
        v27 = 1;
        if (a2 == 8)
        {
          goto LABEL_19;
        }

        if (a2 == 11)
        {
          v27 = sub_FB38(a1);
        }

        if (*(v8 + 9) == 1 && !v8[2])
        {
          v27 = 0;
        }
      }

      if (a2 != 8)
      {
        goto LABEL_21;
      }

LABEL_19:
      if (sub_12E28(v6) == 255)
      {
        *(v8 + 16) = 1;
      }

LABEL_21:
      if (v27)
      {
        sub_43ACC(a1);
      }

LABEL_46:
      v37 = v8[3];
      if (v37)
      {
        v38 = a2;
LABEL_48:
        DHCPv6ClientHandleEvent(v37, v38, a3);
      }

      return 0;
    case 4:
      sub_43B14(a1);
      v33 = v8[3];
      if (v33)
      {
        sub_47878(v33);
      }

      return 0;
    case 14:
      v34 = *(v7 + 24);
      if (v34)
      {
        sub_1BE98(v34, a3);
      }

      v35 = v8[2];
      if (!v35)
      {
        return 0;
      }

      v20 = 0;
      *(a3 + 40) = v35;
      return v20;
    case 15:
      v36 = *(v7 + 24);
      if (v36)
      {
        DHCPv6ClientHandleEvent(v36, 15, a3);
      }

      sub_16DC4(a1, a3);
      return 0;
    case 16:
      v37 = *(v7 + 24);
      if (!v37)
      {
        return 0;
      }

      v38 = 16;
      goto LABEL_48;
    case 18:
      sub_43B84(a1, a3);
      return 0;
    case 19:
      if (!sub_1C0C4(a1) || a3 && *a3)
      {
        goto LABEL_30;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v43 = _os_log_pack_size();
        __chkstk_darwin(v43, v44, v45, v46, v47, v48, v49, v50);
        v51 = *__error();
        v52 = _os_log_pack_fill();
        v53 = nullsub_1(v6);
        *v52 = 136315138;
        *(v52 + 4) = v53;
        __SC_log_send();
      }

      sub_1E064(a1, 0);
      return 0;
    case 21:
LABEL_30:
      sub_166A8(a1);
      return 0;
    case 22:
      v28 = sub_1688(a1);
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v30 = Mutable;
      v31 = *(v28 + 32);
      if (v31 > 3)
      {
        v32 = "<unknown>";
      }

      else
      {
        v32 = off_690E0[v31];
      }

      sub_578FC(Mutable, @"State", v32);
      v39 = *(v28 + 16);
      if (v39)
      {
        v40 = sub_1A97C(v39);
        if (v40)
        {
          v41 = v40;
          CFDictionarySetValue(v30, @"RouterAdvertisement", v40);
          CFRelease(v41);
        }
      }

      if (sub_1C0C4(a1))
      {
        CFDictionarySetValue(v30, @"CLAT46Enabled", kCFBooleanTrue);
      }

      if (sub_2BA48(a1))
      {
        CFDictionarySetValue(v30, @"CLAT46Active", kCFBooleanTrue);
      }

      CFDictionarySetValue(a3, @"RTADV", v30);
      CFRelease(v30);
      v42 = *(v28 + 24);
      if (v42)
      {
        sub_46D78(v42, a3);
      }

      return 0;
    default:
      return v20;
  }
}

uint64_t sub_FB38(uint64_t a1)
{
  v34 = 0;
  v2 = sub_1690(a1);
  v3 = sub_1688(a1);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = v3;
  current_time = timer_get_current_time();
  v6 = sub_1BBEC(*(v4 + 16), &v34 + 1, &v34, current_time);
  if (HIBYTE(v34) != 1)
  {
    return 0;
  }

  v7 = v6;
  result = sub_1BF4C(v4 + 104);
  if (!result)
  {
    return result;
  }

  if (v34 != 1)
  {
    v20 = sub_1EFD8(v4 + 104);
    if (v20 != 0.0)
    {
      v21 = v20;
      if (v20 < v7)
      {
        sub_1E738(a1);
        v7 = v21;
      }
    }

    if (v7 != 0.0)
    {
      v22 = CFDateCreate(0, v7);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v23 = _os_log_pack_size();
        __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30);
        v31 = *__error();
        v32 = _os_log_pack_fill();
        v33 = nullsub_1(v2);
        *v32 = 136315650;
        *(v32 + 4) = "rtadv_handle_wake";
        *(v32 + 12) = 2080;
        *(v32 + 14) = v33;
        *(v32 + 22) = 2112;
        *(v32 + 24) = v22;
        __SC_log_send();
      }

      CFRelease(v22);
      timer_callout_set_absolute(*(v4 + 8), sub_1A164, a1, 2, 0, v7);
    }

    return 0;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    v19 = nullsub_1(v2);
    *v18 = 136315138;
    *(v18 + 4) = v19;
    __SC_log_send();
  }

  timer_cancel(*(v4 + 8));
  return 1;
}

void DHCPv6ClientHandleEvent(uint64_t a1, int a2, uint64_t *a3)
{
  if (*(a1 + 116) == 2)
  {
    if (a2 <= 10)
    {
      if (a2 == 3 || a2 == 8)
      {
        sub_4871C(a1, a3);
      }
    }

    else
    {
      switch(a2)
      {
        case 11:
          sub_48320(a1, a3);
          break;
        case 16:
          sub_4891C(a1);
          break;
        case 15:
          sub_4813C(a1, a3);
          break;
      }
    }
  }
}

void sub_FE80(uint64_t a1)
{
  v1 = (a1 + 100);
  v2 = *(a1 + 100);
  if (v2)
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 8);
    v6 = *(a1 + 112);
    *v1 = 0;
    v1[1] = 0;
    v7 = v2 & 0xFF000000 | (BYTE2(v2) << 16) | (BYTE1(v2) << 8) | v2;
    if (!sub_1404C(v4, v7))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v25 = BYTE2(v2);
        v26 = HIBYTE(v2);
        v8 = v2;
        v9 = BYTE1(v2);
        v10 = _os_log_pack_size();
        v24[1] = v24;
        __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = sub_6160(*(a1 + 24));
        v21 = nullsub_1(v5);
        *v19 = 136316418;
        *(v19 + 4) = v20;
        *(v19 + 12) = 2080;
        *(v19 + 14) = v21;
        *(v19 + 22) = 1024;
        *(v19 + 24) = v8;
        *(v19 + 28) = 1024;
        *(v19 + 30) = v9;
        *(v19 + 34) = 1024;
        *(v19 + 36) = v25;
        *(v19 + 40) = 1024;
        *(v19 + 42) = v26;
        __SC_log_send();
      }

      v22 = nullsub_1(v5);
      sub_140BC(v22, v7);
    }

    v23 = sub_144D8(v5);
    sub_143CC(v23, v7, v6);
  }

  byte_70190 = 1;
  dispatch_source_merge_data(qword_701C0, 1uLL);
}

uint64_t sub_1008C(uint64_t a1, unsigned int a2, int a3)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    *(a1 + 132) = 0;
    goto LABEL_3;
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = sub_498C(*(a1 + 16), v22, 1);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    v6 = sub_498C(*(a1 + 16), v24, 1);
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = 0;
    if (!v23)
    {
LABEL_22:
      if (v6 && !*(v6 + 25))
      {
        v7 = *(v6 + 7);
        goto LABEL_4;
      }

LABEL_3:
      v6 = a1;
      v7 = 0;
LABEL_4:
      sub_14C4C(v6, v7);
      goto LABEL_5;
    }
  }

  if (!*(v23 + 25))
  {
    goto LABEL_22;
  }

  sub_102AC(v23, 0);
LABEL_5:
  *(a1 + 40) = 1;
  *(a1 + 28) = a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    v19 = sub_6160(*(a1 + 24));
    v20 = nullsub_1(*(*(a1 + 16) + 8));
    if (a2 <= 0x15)
    {
      v21 = off_68E70[a2];
    }

    else
    {
      v21 = "<unknown>";
    }

    *v18 = 136315650;
    *(v18 + 4) = v19;
    *(v18 + 12) = 2080;
    *(v18 + 14) = v20;
    *(v18 + 22) = 2080;
    *(v18 + 24) = v21;
    result = __SC_log_send();
  }

  if (a3 == 1)
  {
    return sub_12244();
  }

  return result;
}

void sub_102AC(uint64_t a1, uint64_t a2)
{
  v105 = 0;
  v104 = 0;
  v103 = 0;
  memset(v112, 0, sizeof(v112));
  v101 = 0;
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v99 = 0;
  if (!*a1)
  {
    return;
  }

  v102 = 0;
  memset(v111, 0, sizeof(v111));
  v6 = &off_70000;
  if (!*(a1 + 40))
  {
    *(a1 + 40) = 1;
    *(a1 + 28) = 0;
    if (!qword_70188)
    {
      return;
    }

LABEL_8:
    byte_701B0 = 1;
    *v2 |= 0x40u;
    dispatch_source_merge_data(qword_701C0, 1uLL);
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v7 = *(a1 + 28);
  *(a1 + 40) = 1;
  *(a1 + 28) = 0;
  if (!qword_70188)
  {
    return;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  if (a2)
  {
LABEL_6:
    v8 = *(a2 + 16);
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  v10 = (a1 + 48);
  v9 = *(a1 + 48);
  if (v9)
  {
    v11 = sub_498C(v2, v9, 1);
    if (!v11 || *(v11 + 25))
    {
      return;
    }

    if (*(a1 + 24) == 261)
    {
      v12 = (a1 + 48);
      if ((*(v2 + 2) & 0x40) != 0)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v13 = _os_log_pack_size();
          __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
          v21 = *__error();
          v22 = _os_log_pack_fill();
          v23 = nullsub_1(v3);
          *v22 = 136315138;
          *(v22 + 4) = v23;
          __SC_log_send();
        }

        return;
      }
    }

    else
    {
      v12 = (a1 + 48);
    }
  }

  else
  {
    v11 = 0;
    v12 = a1;
  }

  v98 = v11;
  v24 = *v12;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v100 = Mutable;
  sub_10DF0(Mutable, kSCPropNetIPv4Addresses, *(a1 + 100));
  sub_10DF0(Mutable, kSCPropNetIPv4SubnetMasks, *(a1 + 104));
  CFDictionarySetValue(Mutable, kSCPropInterfaceName, *(v2 + 16));
  if ((*v2 & 0x10) != 0 && !*v10)
  {
    valuePtr = 1;
    v26 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, kSCPropNetOverridePrimary, v26);
    CFRelease(v26);
  }

  if (!v8)
  {
    if (*(a1 + 25) & 1) != 0 && (*(a1 + 116))
    {
      v31 = *(a1 + 120);
      if ((v31 - 1) <= 0xFFFFFFFD)
      {
        sub_57874(Mutable, kSCPropNetIPv4Router, v31);
      }
    }

    v32 = 0;
    goto LABEL_48;
  }

  valuePtr = 0;
  if (*(a1 + 24) == 258 || sub_1CE40(12))
  {
    v27 = sub_1CEA4(v8, 12, &valuePtr, 0);
    if (v27)
    {
      if (valuePtr >= 1)
      {
        v28 = CFStringCreateWithBytes(0, v27, valuePtr, 0x8000100u, 0);
        if (v28)
        {
          v29 = v28;
          CFDictionarySetValue(Mutable, @"Hostname", v28);
          CFRelease(v29);
        }
      }
    }
  }

  if (sub_1CE40(3))
  {
    v30 = sub_58598(v8, 3, 4);
  }

  else
  {
    v30 = 0;
  }

  if (!sub_1CE40(121))
  {
    v32 = 0;
    goto LABEL_42;
  }

  v33 = sub_27498(v8, &v99);
  v32 = v33;
  if (v30 || !v33)
  {
LABEL_42:
    if (v30)
    {
      goto LABEL_43;
    }

    goto LABEL_48;
  }

  v34 = sub_59274(v33, v99);
  if (v34)
  {
    v30 = (v34 + 2);
LABEL_43:
    v96 = v24;
    v97 = (a1 + 48);
    v35 = *v30;
    v36 = v30[1];
    v37 = v30[2];
    v38 = v30[3];
    v39 = (v37 << 16) | (v36 << 8) | (v38 << 24) | v35;
    if ((v39 + 1) > 1)
    {
      sub_57874(Mutable, kSCPropNetIPv4Router, v39);
    }

    else
    {
      v94 = v36;
      v95 = v37;
      v93 = sub_2424();
      v92 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v40 = _os_log_pack_size();
        v91[1] = v91;
        __chkstk_darwin(v40, v41, v42, v43, v44, v45, v46, v47);
        v48 = *__error();
        v49 = _os_log_pack_fill();
        v50 = nullsub_1(v3);
        *v49 = 136316162;
        *(v49 + 4) = v50;
        *(v49 + 12) = 1024;
        *(v49 + 14) = v35;
        *(v49 + 18) = 1024;
        *(v49 + 20) = v94;
        *(v49 + 24) = 1024;
        *(v49 + 26) = v95;
        *(v49 + 30) = 1024;
        *(v49 + 32) = v38;
        v6 = &off_70000;
        __SC_log_send();
      }
    }

    v10 = v97;
    v24 = v96;
  }

LABEL_48:
  if ((sub_10EE8(v3) & 0x18) == 0)
  {
    v97 = v10;
    if ((*(a1 + 25) & 1) != 0 && (~*(a1 + 116) & 7) == 0)
    {
      sub_2AEF8(a1, Mutable, 1);
    }

    v51 = v99;
    v52 = *(a1 + 100);
    v109 = 0xFFFF;
    valuePtr = v52;
    v108 = 65193;
    v53 = CFArrayCreateMutable(0, v99 + 2, &kCFTypeArrayCallBacks);
    v54 = sub_10EF0(&valuePtr, &G_ip_broadcast, 0);
    CFArrayAppendValue(v53, v54);
    CFRelease(v54);
    if (valuePtr != -343)
    {
      v55 = sub_10EF0(&v108, &v109, 0);
      CFArrayAppendValue(v53, v55);
      CFRelease(v55);
    }

    v56 = Mutable;
    if (v32)
    {
      v56 = Mutable;
      if (v51 >= 1)
      {
        v96 = v24;
        v57 = v32 + 2;
        do
        {
          v58 = *(v57 - 1);
          if (*v57)
          {
            v59 = v57;
          }

          else
          {
            v59 = 0;
          }

          v60 = v58 - 33;
          v61 = -1 << -v58;
          if (v60 < 0xFFFFFFE0)
          {
            v61 = 0;
          }

          v106 = bswap32(v61);
          v107 = v106 & *(v57 - 2);
          v62 = sub_10EF0(&v107, &v106, v59);
          CFArrayAppendValue(v53, v62);
          CFRelease(v62);
          v57 += 3;
          --v51;
        }

        while (v51);
        v56 = v100;
        v24 = v96;
      }
    }

    CFDictionarySetValue(Mutable, kSCPropNetIPv4AdditionalRoutes, v53);
    CFRelease(v53);
    CFDictionarySetValue(v56, kSCPropConfirmedInterfaceName, *(v2 + 16));
    Mutable = v56;
    v10 = v97;
    v6 = &off_70000;
  }

  if (v32)
  {
    free(v32);
    Mutable = v100;
  }

  v101 = 0;
  sub_11084(v112, v111, kSCEntNetIPv4, Mutable, &v101);
  if (v98)
  {
    v63 = v98;
  }

  else
  {
    v63 = a1;
  }

  v104 = sub_111C0(v63, a2, &v103);
  sub_11084(v112, v111, kSCEntNetDNS, v104, &v101);
  sub_11084(v112, v111, kSCEntNetCaptivePortal, v103, &v101);
  if (a2 && *(a2 + 8))
  {
    v105 = sub_43608(*(a1 + 24), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  }

  sub_11084(v112, v111, kSCEntNetDHCP, v105, &v101);
  if (*(a1 + 24) != 261)
  {
    sub_11084(v112, v111, kCFNull, 0, &v101);
  }

  v64 = v101;
  sub_11F3C(v6[49], v24, v112, v111, v101, *(a1 + 36));
  dispatch_source_merge_data(qword_701C0, 1uLL);
  v65 = sub_12160(v112, v111, v64);
  v102 = v65;
  sub_41E8(&v100);
  sub_41E8(&v104);
  sub_41E8(&v103);
  sub_41E8(&v105);
  sub_12244();
  v66 = *(a1 + 16);
  byte_701B4 = 1;
  *(v66 + 152) = 1;
  dispatch_source_merge_data(qword_701C0, 1uLL);
  if (dword_700C0)
  {
    byte_701AC = 1;
    dispatch_source_merge_data(qword_701C0, 1uLL);
  }

  *(a1 + 76) = 0;
  if (sub_12330(a1))
  {
    if ((*v2 & 8) != 0)
    {
      sub_144D8(*(v2 + 8));
      sub_12D68();
      *v2 &= ~8u;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v67 = _os_log_pack_size();
        __chkstk_darwin(v67, v68, v69, v70, v71, v72, v73, v74);
        v75 = *__error();
        v76 = _os_log_pack_fill();
        v77 = sub_6160(*(a1 + 24));
        v78 = nullsub_1(*(v2 + 8));
        *v76 = 136315394;
        *(v76 + 4) = v77;
        *(v76 + 12) = 2080;
        *(v76 + 14) = v78;
        __SC_log_send();
      }
    }
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v79 = _os_log_pack_size();
    __chkstk_darwin(v79, v80, v81, v82, v83, v84, v85, v86);
    v87 = *__error();
    v88 = _os_log_pack_fill();
    v89 = sub_6160(*(a1 + 24));
    v90 = nullsub_1(*(v2 + 8));
    *v88 = 136315650;
    *(v88 + 4) = v89;
    *(v88 + 12) = 2080;
    *(v88 + 14) = v90;
    *(v88 + 22) = 2112;
    *(v88 + 24) = v65;
    __SC_log_send();
  }

  sub_41E8(&v102);
  if (!*v10)
  {
    sub_2B060(a1);
  }
}

void sub_10DF0(__CFDictionary *a1, const void *a2, int a3)
{
  v5 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3));
  sub_10E78(a1, a2, v5);

  CFRelease(v5);
}

void sub_10E78(__CFDictionary *a1, const void *a2, void *a3)
{
  values = a3;
  v5 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

CFDictionaryRef sub_10EF0(int *a1, int *a2, int *a3)
{
  memset(keys, 0, sizeof(keys));
  memset(values, 0, sizeof(values));
  if (a1)
  {
    keys[0] = kSCPropNetIPv4RouteDestinationAddress;
    values[0] = sub_1103C(*a1);
    v5 = 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a2)
  {
LABEL_3:
    keys[v5] = kSCPropNetIPv4RouteSubnetMask;
    values[v5++] = sub_1103C(*a2);
  }

LABEL_4:
  if (a3)
  {
    keys[v5] = kSCPropNetIPv4RouteGatewayAddress;
    values[v5++] = sub_1103C(*a3);
  }

  else if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = values;
  v8 = CFDictionaryCreate(0, keys, values, v6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  do
  {
    v9 = *v7++;
    CFRelease(v9);
    --v6;
  }

  while (v6);
  return v8;
}

uint64_t sub_11084(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  if (*a5 < 8)
  {
    *(result + 8 * v5) = a3;
    *(a2 + 8 * v5) = a4;
    *a5 = v5 + 1;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 67109376;
      *(v15 + 4) = v5;
      *(v15 + 8) = 1024;
      *(v15 + 10) = 8;
      return __SC_log_send();
    }
  }

  return result;
}

__CFDictionary *sub_111C0(uint64_t a1, __CFString *a2, CFDictionaryRef *a3)
{
  v5 = *(*(a1 + 16) + 8);
  v6 = sub_498C(*(a1 + 16), *a1, 0);
  memset(v10, 0, sizeof(v10));
  if (v6 && *(v6 + 10) && !*(v6 + 7))
  {
    sub_8DB0(v6, 14, v10);
  }

  v7 = nullsub_1(v5);
  v8 = sub_1126C(v7, a2, v10);
  *a3 = sub_11B44(a2, v10);
  return v8;
}

__CFDictionary *sub_1126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v5 = sub_116D0(a1, a2);
  v30 = v5;
  value = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  theArray = 0;
  v32 = 0;
  if (!a3 || !sub_11668(23))
  {
    goto LABEL_20;
  }

  v6 = *(a3 + 16);
  if (v6)
  {
    v38 = 0;
    v7 = sub_1D258(v6, 23, &v38, 0);
    Mutable = 0;
    if (v7)
    {
      v9 = v7;
      v10 = 0;
      v11 = 0;
      if (v38 >= 0x10)
      {
        v12 = v38 >> 4;
        Mutable = CFArrayCreateMutable(0, v38 >> 4, &kCFTypeArrayCallBacks);
        sub_1D304(Mutable, v9, v12);
        v10 = 0;
        if (sub_11668(24))
        {
          v37 = 0;
          v13 = sub_1D258(v6, 24, &v37, 0);
          if (v13)
          {
            v10 = sub_59078(v13, v37);
          }

          else
          {
            v10 = 0;
          }
        }

        if (sub_11668(144))
        {
          v11 = sub_1D394(v6);
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v35 = Mutable;
    v36 = v10;
    theArray = v11;
  }

  else
  {
    v10 = 0;
    Mutable = 0;
  }

  v14 = *(a3 + 40);
  if (v14)
  {
    v15 = sub_1894C(v14, a1, &v33, &value);
    v32 = v15;
  }

  else
  {
    v15 = 0;
  }

  if (!(Mutable | v15))
  {
LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v16 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = &v35;
  if (Mutable)
  {
    if (v15)
    {
      sub_1D650(Mutable, v15);
      v19 = &v35;
      v10 = v36;
    }
  }

  else
  {
    v19 = &v32;
  }

  CFDictionarySetValue(v16, kSCPropNetDNSServerAddresses, *v19);
  v20 = v33;
  if (!v10)
  {
    if (!v33)
    {
      goto LABEL_41;
    }

    v22 = kSCPropNetDNSSearchDomains;
    v23 = v16;
LABEL_40:
    CFDictionarySetValue(v23, v22, v20);
    goto LABEL_41;
  }

  if (!v33)
  {
    v22 = kSCPropNetDNSSearchDomains;
    v23 = v16;
    v20 = v10;
    goto LABEL_40;
  }

  MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
  sub_1D650(MutableCopy, v33);
  CFDictionarySetValue(v16, kSCPropNetDNSSearchDomains, MutableCopy);
  CFRelease(MutableCopy);
LABEL_41:
  v24 = theArray;
  v25 = value;
  if (!theArray || !value)
  {
    if (theArray)
    {
      v27 = kSCPropNetDNSEncryptedServers;
      v28 = v16;
    }

    else
    {
      if (!value)
      {
        goto LABEL_49;
      }

      v27 = kSCPropNetDNSEncryptedServers;
      v28 = v16;
      v24 = value;
    }

    CFDictionarySetValue(v28, v27, v24);
    goto LABEL_49;
  }

  v26 = CFArrayCreateMutableCopy(0, 0, theArray);
  sub_579F0(v26, v25, sub_5A694);
  v39.length = CFArrayGetCount(v26);
  v39.location = 0;
  CFArraySortValues(v26, v39, sub_5A518, 0);
  CFDictionarySetValue(v16, kSCPropNetDNSEncryptedServers, v26);
  CFRelease(v26);
LABEL_49:
  sub_41E8(&v36);
  sub_41E8(&v35);
  sub_41E8(&theArray);
  sub_41E8(&v33);
  sub_41E8(&v32);
  sub_41E8(&value);
  v5 = v30;
LABEL_21:
  v29 = v16;
  if (!(v5 | v16))
  {
    return 0;
  }

  if (v5 && v16)
  {
    v17 = CFDictionaryCreateMutableCopy(0, 0, v5);
    sub_1D6EC(v17, v5, v16, kSCPropNetDNSServerAddresses);
    sub_1D6EC(v17, v5, v16, kSCPropNetDNSSearchDomains);
    sub_1D6EC(v17, v5, v16, kSCPropNetDNSEncryptedServers);
    sub_41E8(&v30);
    sub_41E8(&v29);
  }

  else if (v5)
  {
    return v5;
  }

  else
  {
    return v16;
  }

  return v17;
}

uint64_t sub_11668(int a1)
{
  if (a1 - 1) < 0x1A && ((0x30FFDFFu >> (a1 - 1)))
  {
    return 1;
  }

  if (dword_70100 < 1)
  {
    return 0;
  }

  v2 = off_700F8;
  v3 = dword_70100 - 1;
  do
  {
    v4 = *v2++;
    v1 = v4 == a1;
  }

  while (v4 != a1 && v3-- != 0);
  return v1;
}

__CFDictionary *sub_116D0(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v40 = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  if (sub_1CE40(6))
  {
    v4 = sub_1CEA4(v2, 6, &v40, 0);
  }

  else
  {
    v4 = 0;
  }

  if (sub_1CE40(15))
  {
    v6 = sub_1CEA4(v2, 15, &v40 + 1, 0);
  }

  else
  {
    v6 = 0;
  }

  if (sub_1CE40(119))
  {
    v7 = sub_1CF54(v2, 119, &v39 + 1);
  }

  else
  {
    v7 = 0;
  }

  if (sub_1CE40(162))
  {
    v9 = sub_1CF54(v2, 162, &v39);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1D054(a1, v4, v40, v8);
  if (!v10)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
      v27 = *__error();
      v28 = _os_log_pack_fill();
      *v28 = 136315138;
      *(v28 + 4) = "DNSEntityCreateWithDHCPInfo";
      __SC_log_send();
    }

    Mutable = 0;
    goto LABEL_59;
  }

  v11 = v10;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, kSCPropNetDNSServerAddresses, v11);
  CFRelease(v11);
  if (!v6)
  {
    goto LABEL_53;
  }

  v12 = HIDWORD(v40);
  if (SHIDWORD(v40) < 1)
  {
    v41 = 0;
    goto LABEL_52;
  }

  v13 = 0;
  v14 = 0;
  v15 = v6;
  do
  {
    v16 = *v6;
    if (*v6)
    {
      if ((v16 & 0x80) != 0)
      {
        if (!__maskrune(*v6, 0x4000uLL))
        {
LABEL_31:
          if (!v13)
          {
            v13 = v6;
          }

          goto LABEL_33;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v16] & 0x4000) == 0)
      {
        goto LABEL_31;
      }
    }

    if (v13)
    {
      if (v7 || !v16)
      {
        v41 = v14;
        goto LABEL_41;
      }

      v17 = CFStringCreateWithBytes(0, v13, v15 - v13, 0x8000100u, 0);
      if (!v17)
      {
        v41 = v14;
        goto LABEL_52;
      }

      v18 = v17;
      if (!v14)
      {
        v14 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      }

      CFArrayAppendValue(v14, v18);
      CFRelease(v18);
      v13 = 0;
    }

LABEL_33:
    ++v6;
    ++v15;
    --v12;
  }

  while (v12);
  v41 = v14;
  if (!v13)
  {
    goto LABEL_47;
  }

LABEL_41:
  v29 = CFStringCreateWithBytes(0, v13, v6 - v13, 0x8000100u, 0);
  if (!v29)
  {
    goto LABEL_52;
  }

  v30 = v29;
  if (v14)
  {
    CFArrayAppendValue(v14, v29);
  }

  else
  {
    CFDictionarySetValue(Mutable, kSCPropNetDNSDomainName, v29);
  }

  CFRelease(v30);
LABEL_47:
  if (v14)
  {
    if (CFArrayGetCount(v14) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
      v32 = Mutable;
      v33 = kSCPropNetDNSDomainName;
    }

    else
    {
      v33 = kSCPropNetDNSSearchDomains;
      v32 = Mutable;
      ValueAtIndex = v14;
    }

    CFDictionarySetValue(v32, v33, ValueAtIndex);
  }

LABEL_52:
  sub_41E8(&v41);
LABEL_53:
  if (v7)
  {
    v34 = sub_59078(v7, HIDWORD(v39));
    if (v34)
    {
      v35 = v34;
      CFDictionarySetValue(Mutable, kSCPropNetDNSSearchDomains, v34);
      CFRelease(v35);
    }
  }

  if (v9)
  {
    v36 = sub_5A958(v9, v39);
    if (v36)
    {
      v37 = v36;
      CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServers, v36);
      CFRelease(v37);
    }
  }

LABEL_59:
  if (v7)
  {
    free(v7);
  }

  if (v9)
  {
    free(v9);
  }

  return Mutable;
}

CFDictionaryRef sub_11B44(__CFString *a1, uint64_t a2)
{
  v3 = a1;
  LODWORD(keys) = 0;
  if (a1)
  {
    if (sub_1CE40(114) && (data = v3->data) != 0)
    {
      v5 = sub_1CEA4(data, 114, &keys, 0);
      v3 = sub_1D860(v5, keys);
    }

    else
    {
      v3 = 0;
    }
  }

  v21 = v3;
  v6 = sub_11D48(a2);
  v7 = v6;
  v20 = v6;
  if (v3)
  {
    if (v6)
    {
      if (CFStringCompare(v3, v6, 1uLL))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v8 = _os_log_pack_size();
          __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
          v16 = *__error();
          v17 = _os_log_pack_fill();
          *v17 = 138412546;
          *(v17 + 4) = v3;
          *(v17 + 12) = 2112;
          *(v17 + 14) = v7;
          __SC_log_send();
        }
      }
    }

    values = v3;
    keys = kSCPropNetCaptivePortalURL;
  }

  else
  {
    if (!v6)
    {
      v18 = 0;
      goto LABEL_15;
    }

    values = v6;
    keys = kSCPropNetCaptivePortalURL;
  }

  v18 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_15:
  sub_41E8(&v21);
  sub_41E8(&v20);
  return v18;
}

CFStringRef sub_11D48(uint64_t a1)
{
  if (!a1 || !sub_11668(103))
  {
    return 0;
  }

  v20 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_1D258(v2, 103, &v20, 0);
    v4 = sub_1D860(v3, v20);
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = sub_1D89C(v5);
      v7 = v6;
      v21 = v6;
      if (v4)
      {
        if (v6)
        {
          if (CFStringCompare(v4, v6, 1uLL))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v8 = _os_log_pack_size();
              __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
              v16 = *__error();
              v17 = _os_log_pack_fill();
              *v17 = 138412546;
              *(v17 + 4) = v4;
              *(v17 + 12) = 2112;
              *(v17 + 14) = v7;
              __SC_log_send();
            }
          }

          sub_41E8(&v21);
        }
      }

      else
      {
        return v6;
      }
    }

    return v4;
  }

  v18 = *(a1 + 40);
  if (!v18)
  {
    return 0;
  }

  return sub_1D89C(v18);
}

void sub_11F3C(const __SCDynamicStore *a1, CFStringRef serviceID, const void **a3, const __CFDictionary **a4, int a5, int a6)
{
  if (a5)
  {
    LODWORD(v7) = a5;
    if (!qword_70280)
    {
      qword_70280 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    if (!qword_70288)
    {
      qword_70288 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      xmmword_70290 = 0uLL;
    }

    if (a6)
    {
      Mutable = 0;
      if (v7 >= 1)
      {
        v7 = v7;
        do
        {
          v13 = *a4;
          if (*a4)
          {
            v14 = *a3;
            if (!Mutable)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            }

            if (v14 == kCFNull)
            {
              CFDictionaryApplyFunction(v13, sub_43980, Mutable);
            }

            else
            {
              CFDictionarySetValue(Mutable, v14, v13);
            }
          }

          ++a4;
          ++a3;
          --v7;
        }

        while (v7);
      }

      v15 = CFStringCreateWithFormat(0, 0, @"Plugin:IPConfigurationService:%@", serviceID);
      sub_D03C(a1, v15, Mutable);
      CFRelease(v15);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }

    else if (v7 >= 1)
    {
      v16 = v7;
      do
      {
        v18 = *a3++;
        v17 = v18;
        if (v18 == kCFNull)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17;
        }

        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, v19);
        v21 = *a4++;
        sub_D03C(a1, NetworkServiceEntity, v21);
        CFRelease(NetworkServiceEntity);
        --v16;
      }

      while (v16);
    }
  }
}

__CFString *sub_12160(CFNullRef *a1, void *a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (a3 >= 1)
  {
    v7 = 0;
    do
    {
      if (*a2)
      {
        v8 = *a1;
        if (*a1 == kCFNull)
        {
          v8 = @"RankLast";
        }

        v9 = v7 + 1;
        if (v7)
        {
          v10 = ", ";
        }

        else
        {
          v10 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"%s%@", v10, v8);
        v7 = v9;
      }

      ++a2;
      ++a1;
      --a3;
    }

    while (a3);
  }

  return Mutable;
}

uint64_t sub_12244()
{
  if (sub_295C(&unk_70160) < 1)
  {
LABEL_10:
    v4 = qword_70188;

    return SCDynamicStoreSetValue(v4, @"Plugin:IPConfiguration", @"Plugin:IPConfiguration");
  }

  else
  {
    v0 = 0;
    while (1)
    {
      v1 = sub_42C0(&unk_70160, v0);
      result = sub_295C(v1 + 24);
      if (!result && (*v1 & 1) == 0)
      {
        break;
      }

      if (sub_295C(v1 + 24) >= 1)
      {
        v3 = 0;
        do
        {
          result = sub_42C0((v1 + 24), v3);
          if (!*(result + 40))
          {
            return result;
          }
        }

        while (++v3 < sub_295C(v1 + 24));
      }

      if (++v0 >= sub_295C(&unk_70160))
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_12330(_DWORD *a1)
{
  v1 = a1[6];
  if ((v1 - 257) < 4)
  {
    return a1[29] & 1;
  }

  if ((v1 - 514) < 2)
  {
    return a1[33];
  }

  if (v1 != 513)
  {
    return 0;
  }

  if (a1[27] || a1[28] || a1[29])
  {
    return 1;
  }

  return a1[30] != 0;
}

void sub_123A0(_DWORD *a1, int a2, int *a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  v9 = sub_2480(v8);
  v10 = *a3;
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  else if (!v10)
  {
    goto LABEL_6;
  }

  if (!a3[1])
  {
LABEL_22:
    *(v7 + 1768) = 0;
    *(v7 + 1744) = 0;

    sub_8CD0(a1);
    return;
  }

LABEL_6:
  *(v7 + 36) = 0;
  *(v7 + 2336) = 0;
  if (*(v7 + 56) && *(v7 + 120))
  {
    v11 = sub_2C964(a1);
    v12 = sub_CBBC(a1);
    if (v12)
    {
      v13 = v12;
      if (sub_57D34(*(v7 + 120), v12) || sub_57D34(*(v7 + 128), v11))
      {
        if (*(v7 + 112))
        {
          v14 = sub_A840(v8);
          v16 = *(v7 + 104) != *v14 || *(v7 + 108) != *(v14 + 4);
          sub_2424();
          _SC_syslog_os_log_mapping();
          v17 = __SC_log_enabled();
          if (v16)
          {
            if (v17)
            {
              v18 = _os_log_pack_size();
              __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
              v26 = *__error();
              v27 = _os_log_pack_fill();
              v28 = nullsub_1(v8);
              v29 = nullsub_1(v13);
              *v27 = 136315394;
              *(v27 + 4) = v28;
              *(v27 + 12) = 2112;
              *(v27 + 14) = v29;
              __SC_log_send();
            }

            sub_254C0(v7);
            sub_2ADA0(a1);
            sub_FE80(a1);
            *(v7 + 1768) = 0;
          }

          else if (v17)
          {
            v41 = _os_log_pack_size();
            __chkstk_darwin(v41, v42, v43, v44, v45, v46, v47, v48);
            v49 = *__error();
            v50 = _os_log_pack_fill();
            v51 = nullsub_1(v8);
            v52 = nullsub_1(v13);
            *v50 = 136315394;
            *(v50 + 4) = v51;
            *(v50 + 12) = 2112;
            *(v50 + 14) = v52;
            __SC_log_send();
          }

          *(v7 + 112) = 0;
        }
      }

      else
      {
        v53 = sub_2424();
        v54 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v55 = _os_log_pack_size();
          v86 = v84;
          __chkstk_darwin(v55, v56, v57, v58, v59, v60, v61, v62);
          v63 = *__error();
          v64 = _os_log_pack_fill();
          v65 = nullsub_1(v8);
          v85 = v53;
          v66 = v65;
          v67 = nullsub_1(v13);
          v84[3] = v54;
          v68 = v67;
          v69 = nullsub_1(*(v7 + 120));
          *v64 = 136315650;
          *(v64 + 4) = v66;
          *(v64 + 12) = 2112;
          *(v64 + 14) = v68;
          *(v64 + 22) = 2112;
          *(v64 + 24) = v69;
          __SC_log_send();
        }

        LeaseForWiFi = DHCPLeaseListFindLeaseForWiFi(v7 + 136, v13, v11);
        if (LeaseForWiFi == -1)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v72 = _os_log_pack_size();
            __chkstk_darwin(v72, v73, v74, v75, v76, v77, v78, v79);
            v80 = *__error();
            v81 = _os_log_pack_fill();
            v82 = nullsub_1(v8);
            v83 = nullsub_1(v13);
            *v81 = 136315394;
            *(v81 + 4) = v82;
            *(v81 + 12) = 2112;
            *(v81 + 14) = v83;
            __SC_log_send();
          }

          sub_254C0(v7);
          sub_2ADA0(a1);
          sub_FE80(a1);
        }

        else
        {
          v71 = sub_42C0(v7 + 136, LeaseForWiFi);
          sub_2865C(a1, v71, 0);
        }

        *(v7 + 1768) = 0;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v30 = _os_log_pack_size();
        __chkstk_darwin(v30, v31, v32, v33, v34, v35, v36, v37);
        v38 = *__error();
        v39 = _os_log_pack_fill();
        v40 = nullsub_1(v8);
        *v39 = 136315394;
        *(v39 + 4) = v40;
        *(v39 + 12) = 2080;
        *(v39 + 14) = "dhcp_check_link_with_status";
        __SC_log_send();
      }
    }
  }

  if (sub_8F14(a1, current_time))
  {
    if (a2 == 8 || *(v7 + 1744) != 6 || *(v7 + 1768) != 1)
    {
      v87 = *(v7 + 1732);
      sub_8F90(a1, 0, &v87);
    }
  }

  else if (a2 == 8 || *(v7 + 1744) != 3 || *(v7 + 1768) != 1)
  {
    sub_B40(a1, 0, 0);
  }
}

uint64_t sub_12A50(uint64_t a1)
{
  v26 = 0;
  *v27 = xmmword_5D240;
  v2 = *(a1 + 72);
  v28 = 3;
  v29 = v2;
  if ((sysctl(v27, 6u, 0, &v26, 0, 0) & 0x80000000) == 0)
  {
    v3 = malloc_type_malloc(v26, 0xA1C71B75uLL);
    if (sysctl(v27, 6u, v3, &v26, 0, 0) < 0)
    {
      v21 = __stderrp;
      v22 = __error();
      v23 = strerror(*v22);
      fprintf(v21, "sysctl() failed: %s", v23);
    }

    else if (v26 >= 0x84)
    {
      if (v3[3] != 14)
      {
        goto LABEL_18;
      }

      v4 = v3[117];
      v5 = v3[118];
      v6 = v3[116];
      if (v5 >= 0x11)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v7 = _os_log_pack_size();
          __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
          v15 = *__error();
          v16 = _os_log_pack_fill();
          *v16 = 136315906;
          *(v16 + 4) = a1;
          *(v16 + 12) = 1024;
          *(v16 + 14) = v6;
          *(v16 + 18) = 1024;
          *(v16 + 20) = v5;
          *(v16 + 24) = 2048;
          v5 = 16;
          *(v16 + 26) = 16;
          __SC_log_send();
        }

        else
        {
          v5 = 16;
        }
      }

      v24 = &v3[v4];
      if (*(a1 + 75) != v6 || v5 != *(a1 + 74) || v5 && bcmp(v24 + 120, (a1 + 56), v5))
      {
        *(a1 + 74) = v5;
        memmove((a1 + 56), v24 + 120, v5);
        *(a1 + 75) = v3[116];
        v20 = 1;
      }

      else
      {
LABEL_18:
        v20 = 0;
      }

LABEL_19:
      free(v3);
      return v20;
    }

    v20 = 0;
    if (!v3)
    {
      return v20;
    }

    goto LABEL_19;
  }

  v17 = __stderrp;
  v18 = __error();
  v19 = strerror(*v18);
  fprintf(v17, "sysctl() size failed: %s", v19);
  return 0;
}

uint64_t sub_12D14(uint64_t a1)
{
  result = sub_295C(a1);
  if (result >= 1)
  {
    v3 = 0;
    do
    {
      *(sub_42C0(a1, v3++) + 76) = 0;
      result = sub_295C(a1);
    }

    while (v3 < result);
  }

  return result;
}

uint64_t sub_12D68()
{
  if (qword_70120 != -1)
  {
    sub_5BF04();
  }

  result = qword_70128;
  if (qword_70128)
  {
    result = symptom_new();
    if (result)
    {
      symptom_set_qualifier();
      return symptom_send() == 0;
    }
  }

  return result;
}

__n128 sub_12DE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 20) = *(a2 + 20);
  v2 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v2;
  result = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = result;
  return result;
}

BOOL sub_12E30(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v5 = sub_12E28(v4);
  v6 = v5;
  v7 = 0;
  v8 = 0;
  if (v5 != 24 && v5 != 57)
  {
    if (sub_13304(v4))
    {
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v7 = (a1 + 128);
      if (*(a1 + 128) != 254 || (*(a1 + 129) & 0xC0) != 0x80)
      {
        v7 = 0;
      }

      v8 = (*(a1 + 2) & 1) == 0;
    }
  }

  v9 = nullsub_1(v4);
  v10 = sub_13158(v9, a2);
  if (v6 != 24 && v6 != 57)
  {
    v11 = sub_2430(v4);
    if (HIDWORD(v11) || !v11)
    {
      v12 = ((*a1 >> 17) & 1) == 0;
      v13 = ((*a1 >> 18) & 1) == 0;
      v14 = nullsub_1(v4);
      sub_411D4(v14, v7, v12, v8, v13, *(a1 + 176));
    }
  }

  return v10 == 0;
}