uint64_t sub_35E48(const __CFArray *a1, const __CFArray *a2)
{
  result = sub_59428(qword_70198);
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      v6 = sub_59434(qword_70198, v5);
      sub_35FB0(v6, a1, 1);
      sub_35FB0(v6, a2, 0);
      ++v5;
      result = sub_59428(qword_70198);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t sub_35ED4(const void *a1, const void *a2, const __CFArray *a3)
{
  v5 = sub_35F2C(a3, a1);
  v6 = sub_35F2C(a3, a2);
  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

CFIndex sub_35F2C(const __CFArray *a1, const void *a2)
{
  v2 = 1000000;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        if (CFEqual(ValueAtIndex, a2))
        {
          break;
        }

        if (v6 == ++v7)
        {
          return v2;
        }
      }

      return v7;
    }
  }

  return v2;
}

void sub_35FB0(__int128 *a1, const __CFArray *a2, uint64_t a3)
{
  v36 = 0;
  v37 = 0;
  BOOLean = 0;
  v6 = nullsub_1(a1);
  LODWORD(a2) = sub_36258(&v36, a3, a2, v6);
  v7 = nullsub_1(a1);
  if (a2)
  {
    v8 = sub_4220(v7, 0);
    if (v8)
    {
      v9 = v8;
      v10 = HIDWORD(v37) ? 24 : 56;
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v40 = Mutable;
      if (Mutable)
      {
        v12 = Mutable;
        if (sub_295C(v9 + v10) >= 1)
        {
          v13 = 0;
          do
          {
            v14 = sub_42C0(v9 + v10, v13);
            if (!*(v14 + 32) && !*(v14 + 48))
            {
              v15 = *v14;
              if (v37 < 1)
              {
LABEL_15:
                CFArrayAppendValue(v12, v15);
              }

              else
              {
                v16 = 0;
                v17 = v36;
                while (!CFEqual(v15, *v17))
                {
                  ++v16;
                  v17 += 10;
                  if (v16 >= v37)
                  {
                    goto LABEL_15;
                  }
                }
              }
            }

            ++v13;
          }

          while (v13 < sub_295C(v9 + v10));
        }

        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v19 = Count;
          for (i = 0; i != v19; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
            sub_13CE0(v9, ValueAtIndex, SHIDWORD(v37));
          }
        }

        sub_41E8(&v40);
      }
    }

    v22 = sub_2F404(a1);
    if (v22)
    {
      v23 = v22;
      sub_367B4(v22, BOOLean);
      if (v37 >= 1)
      {
        v24 = 0;
        v25 = (v36 + 8);
        while (1)
        {
          v26 = HIDWORD(v37);
          v27 = *(v25 - 1);
          v28 = sub_498C(v23, v27, SHIDWORD(v37));
          v40 = v28;
          if (!v28)
          {
            break;
          }

          v29 = v28;
          v39 = 0;
          v30 = *(v28 + 6);
          if (v30 != *v25)
          {
            goto LABEL_28;
          }

          v31 = sub_4A28(v28, v25, &v39);
          if (v31 | v39)
          {
            v30 = *(v29 + 6);
LABEL_28:
            v32 = *v29;
            v33 = (v30 >> 8) & 1;
            v34 = v23;
LABEL_31:
            sub_13CE0(v34, v32, v33);
            goto LABEL_32;
          }

LABEL_33:
          ++v24;
          v25 += 20;
          if (v24 >= v37)
          {
            goto LABEL_34;
          }
        }

        v34 = sub_337FC(v27, &v40, v26);
        if (v34)
        {
          v32 = *v40;
          v33 = (*(v40 + 6) >> 8) & 1;
          goto LABEL_31;
        }

LABEL_32:
        sub_2F544(v23, v27, v25, 0, 0, 0);
        goto LABEL_33;
      }
    }

LABEL_34:
    sub_36970(&v36);
  }

  else
  {
    v35 = sub_4220(v7, 0);
    if (v35)
    {
      if (a3)
      {
        sub_2F45C(v35, 0);
      }

      else
      {
        sub_2F4D0(v35, 0);
      }
    }
  }
}

uint64_t sub_36258(uint64_t a1, uint64_t a2, const __CFArray *a3, char *cStr)
{
  v6 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 12) = a2;
  v8 = CFStringCreateWithCString(0, cStr, 0x600u);
  v70 = v8;
  if (a3 && (v9 = v8, Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks), (*&v72 = Mutable) != 0))
  {
    v11 = Mutable;
    v69 = cStr;
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        Value = CFDictionaryGetValue(ValueAtIndex, kSCPropNetInterfaceDeviceName);
        if (CFEqual(Value, v9))
        {
          CFArrayAppendValue(v11, ValueAtIndex);
        }
      }
    }

    if (!CFArrayGetCount(v11))
    {
      sub_41E8(&v72);
      v11 = v72;
    }

    v71 = v11;
    v17 = v69;
    if (v11)
    {
      v18 = CFArrayGetCount(v11);
      v19 = malloc_type_malloc(80 * v18, 0x1072040FC29A73AuLL);
      *a1 = v19;
      if (v19)
      {
        *(a1 + 8) = 0;
        if (v18 >= 1)
        {
          v21 = 0;
          *&v20 = 136315650;
          v67 = v20;
          do
          {
            v76 = 0;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v22 = CFArrayGetValueAtIndex(v11, v21);
            v23 = v22;
            if (v6)
            {
              if (sub_2CDA4(v22, &v72))
              {
                goto LABEL_71;
              }
            }

            else if (sub_2D518(v22, &v72))
            {
              goto LABEL_71;
            }

            if (v72 > 512)
            {
              if ((v72 - 516) < 3)
              {
                goto LABEL_43;
              }

              if ((v72 - 514) >= 2)
              {
                if (v72 == 513)
                {
                  v40 = *(a1 + 8);
                  if (v40 >= 1)
                  {
                    v41 = (*a1 + 16);
                    while (*(v41 - 2) != 513 || *(&v72 + 1) != *v41 || v73 != v41[1])
                    {
                      v41 += 10;
                      if (!--v40)
                      {
                        goto LABEL_57;
                      }
                    }

                    goto LABEL_61;
                  }
                }
              }

              else
              {
                v31 = *(a1 + 8);
                if (v31 >= 1)
                {
                  v32 = (*a1 + 8);
                  do
                  {
                    v33 = *v32;
                    v32 += 20;
                    if ((v33 & 0xFFFFFFFE) == 0x202)
                    {
                      goto LABEL_61;
                    }
                  }

                  while (--v31);
                }
              }
            }

            else if ((v72 - 257) <= 5)
            {
              v24 = 1 << (v72 - 1);
              if ((v24 & 0x29) != 0)
              {
                v25 = *(a1 + 8);
                if (v25 >= 1)
                {
                  v26 = (*a1 + 16);
                  while (1)
                  {
                    v27 = *(v26 - 2) - 257;
                    v28 = v27 > 5;
                    v29 = (1 << v27) & 0x29;
                    v30 = v28 || v29 == 0;
                    if (!v30 && DWORD2(v72) == *v26)
                    {
                      break;
                    }

                    v26 += 20;
                    if (!--v25)
                    {
                      goto LABEL_57;
                    }
                  }

LABEL_61:
                  v44 = "duplicate configured service";
LABEL_62:
                  sub_2424();
                  _SC_syslog_os_log_mapping();
                  if (__SC_log_enabled())
                  {
                    v51 = _os_log_pack_size();
                    v52 = v6;
                    v53 = v18;
                    v68 = &v67;
                    __chkstk_darwin(v51, v54, v55, v56, v57, v58, v59, v60);
                    v61 = *__error();
                    v62 = _os_log_pack_fill();
                    v63 = sub_6160(v72);
                    *v62 = v67;
                    *(v62 + 4) = v69;
                    *(v62 + 12) = 2080;
                    *(v62 + 14) = v63;
                    *(v62 + 22) = 2080;
                    *(v62 + 24) = v44;
                    v18 = v53;
                    v6 = v52;
                    __SC_log_send();
                  }

                  if (v72 == 516)
                  {
                    v64 = DWORD2(v72) == 3;
                  }

                  else
                  {
                    v64 = v72 == 259;
                  }

                  v17 = v69;
                  if (v64 && v73)
                  {
                    free(v73);
                  }

                  goto LABEL_71;
                }

                goto LABEL_57;
              }

              if ((v24 & 6) != 0)
              {
                v34 = *(a1 + 8);
                if (v34 >= 1)
                {
                  v35 = (*a1 + 8);
                  while (1)
                  {
                    v36 = *v35;
                    v35 += 20;
                    if ((v36 & 0xFFFFFFFE) == 0x102)
                    {
                      goto LABEL_61;
                    }

                    if (!--v34)
                    {
                      goto LABEL_57;
                    }
                  }
                }

                goto LABEL_57;
              }

LABEL_43:
              v37 = *(a1 + 8);
              if (v37 >= 1)
              {
                v38 = (*a1 + 8);
                do
                {
                  v39 = *v38;
                  v38 += 20;
                  if (v72 == v39)
                  {
                    goto LABEL_61;
                  }
                }

                while (--v37);
              }
            }

LABEL_57:
            if (sub_4348(qword_70198, v17))
            {
              v43 = sub_4220(v17, 0);
              if (v43)
              {
                v44 = "configured service conflicts with dynamic service";
                if (sub_30608(v43, &v72, 1))
                {
                  goto LABEL_62;
                }
              }
            }

            *(a1 + 16) = CFDictionaryGetValue(v23, @"_DisableUntilNeeded");
            v45 = CFDictionaryGetValue(v23, @"ServiceID");
            v46 = CFRetain(v45);
            v47 = *a1 + 80 * *(a1 + 8);
            *v47 = v46;
            v48 = v73;
            v49 = v74;
            v50 = v75;
            *(v47 + 72) = v76;
            *(v47 + 56) = v50;
            *(v47 + 40) = v49;
            *(v47 + 24) = v48;
            *(v47 + 8) = v72;
            ++*(a1 + 8);
LABEL_71:
            ++v21;
          }

          while (v21 != v18);
        }
      }
    }
  }

  else
  {
    v71 = 0;
  }

  if (*(a1 + 8))
  {
    v65 = 1;
  }

  else
  {
    sub_36970(a1);
    v65 = 0;
  }

  sub_41E8(&v70);
  sub_41E8(&v71);
  return v65;
}

void sub_367B4(uint64_t a1, CFBooleanRef BOOLean)
{
  if (!dword_700C0)
  {
    return;
  }

  if (*(a1 + 164))
  {
    v3 = *(a1 + 168);
    if (BOOLean)
    {
LABEL_4:
      *(a1 + 164) = 1;
      Value = CFBooleanGetValue(BOOLean);
      *(a1 + 168) = Value;
      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
    if (BOOLean)
    {
      goto LABEL_4;
    }
  }

  Value = 0;
  *(a1 + 164) = 0;
LABEL_7:
  if (Value != v3)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = nullsub_1(*(a1 + 8));
      v16 = "";
      if (!Value)
      {
        v16 = "not ";
      }

      *v14 = 136315394;
      *(v14 + 4) = v15;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v16;
      __SC_log_send();
    }

    if (dword_700C0)
    {
      byte_701AC = 1;
      dispatch_source_merge_data(qword_701C0, 1uLL);
    }
  }
}

void sub_36970(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return;
  }

  if (*(a1 + 8) < 1)
  {
    goto LABEL_13;
  }

  v3 = 0;
  v4 = v1 + 3;
  do
  {
    v5 = v4 - 3;
    sub_41E8(v4 - 3);
    v6 = *(v4 - 4);
    if (v6 == 516)
    {
      if (*(v4 - 2) == 3)
      {
        v7 = *v4;
        v8 = v4;
        if (*v4)
        {
          goto LABEL_10;
        }
      }
    }

    else if (v6 == 259)
    {
      v7 = *v4;
      if (*v4)
      {
        v8 = v1 + 3;
LABEL_10:
        free(v7);
        *v8 = 0;
      }
    }

    ++v3;
    v4 += 10;
    v1 = v5 + 10;
  }

  while (v3 < *(a1 + 8));
  v1 = *a1;
LABEL_13:
  free(v1);
  *a1 = 0;
}

uint64_t sub_36A38(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    v13 = nullsub_1(v2);
    *v12 = 136315138;
    *(v12 + 4) = v13;
    __SC_log_send();
  }

  sub_8D44(a1 + 24, 4, 0);
  sub_8D44(a1 + 56, 4, 0);
  if (sub_295C(a1 + 56))
  {
    v14 = nullsub_1(*(a1 + 8));
    sub_41660(v14);
  }

  result = sub_73DC(v2);
  if (result)
  {
    v16 = *(a1 + 104);
    v17 = WiFiAcknowledgeConnectionID(*(a1 + 16));
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (v17)
    {
      if (!result)
      {
        return result;
      }
    }

    else if (!result)
    {
      return result;
    }

    v18 = _os_log_pack_size();
    __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    v28 = nullsub_1(v2);
    v29 = *(a1 + 104);
    *v27 = 136315394;
    *(v27 + 4) = v28;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v29;
    return __SC_log_send();
  }

  return result;
}

_BYTE *sub_36CD8(uint64_t a1, uint64_t a2)
{
  result = sub_295C(a1 + 56);
  if (result)
  {
    result = sub_17B0C(a2);
    if (result)
    {
      if ((result[20] & 4) != 0)
      {
        inet_ntop(30, result, v44, 0x2Eu);
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v5 = _os_log_pack_size();
          __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          v15 = nullsub_1(*(a1 + 8));
          *v14 = 136315394;
          *(v14 + 4) = v15;
          *(v14 + 12) = 2080;
          *(v14 + 14) = v44;
          result = __SC_log_send();
        }

        if ((*(a1 + 2) & 1) == 0)
        {
          v16 = *(a1 + 176);
          if (v16 == 3)
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            result = __SC_log_enabled();
            if (result)
            {
              v17 = _os_log_pack_size();
              __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
              v25 = *__error();
              v26 = _os_log_pack_fill();
              v27 = nullsub_1(*(a1 + 8));
              *v26 = 136315394;
              *(v26 + 4) = v27;
              *(v26 + 12) = 1024;
              *(v26 + 14) = 3;
              return __SC_log_send();
            }
          }

          else
          {
            *(a1 + 176) = v16 + 1;
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v28 = _os_log_pack_size();
              __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
              v36 = *__error();
              v37 = _os_log_pack_fill();
              v38 = nullsub_1(*(a1 + 8));
              v39 = *(a1 + 176);
              *v37 = 136315394;
              *(v37 + 4) = v38;
              *(v37 + 12) = 1024;
              *(v37 + 14) = v39;
              __SC_log_send();
            }

            v40 = nullsub_1(*(a1 + 8));
            sub_41660(v40);
            v41 = sub_2430(*(a1 + 8));
            if (HIDWORD(v41))
            {
              v42 = 1;
            }

            else
            {
              v42 = v41 == 0;
            }

            v43 = v42;
            return sub_12E30(a1, v43);
          }
        }
      }
    }
  }

  return result;
}

void sub_37020(uint64_t a1, uint64_t *a2)
{
  v94 = a2;
  v95 = a1;
  v2 = (a1 + 144);
  if (!*(a1 + 144))
  {
    return;
  }

  current_time = timer_get_current_time();
  if (current_time - *&qword_701F8 > 60.0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = *(v95 + 16);
      v15 = qword_701F8;
      *v13 = 138413058;
      *(v13 + 4) = v14;
      *(v13 + 12) = 2048;
      *(v13 + 14) = current_time;
      *(v13 + 22) = 2048;
      *(v13 + 24) = v15;
      *(v13 + 32) = 1024;
      *(v13 + 34) = 60;
      __SC_log_send();
    }

    sub_41E8(v2);
    return;
  }

  v92 = *(v95 + 8);
  Count = CFArrayGetCount(*(v95 + 144));
  if (Count < 1)
  {
    LODWORD(v21) = -1;
    goto LABEL_27;
  }

  v18 = Count;
  v19 = 0;
  v20 = 0;
  v21 = 0xFFFFFFFFLL;
  *&v17 = 138412546;
  v91 = v17;
  *&v17 = 136315394;
  v89 = v17;
  v93 = v2;
  while (1)
  {
    v96 = 0uLL;
    ValueAtIndex = CFArrayGetValueAtIndex(*v2, v19);
    if (sub_57658(ValueAtIndex, &v96))
    {
      break;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v42 = _os_log_pack_size();
      __chkstk_darwin(v42, v43, v44, v45, v46, v47, v48, v49);
      v50 = *__error();
      v51 = _os_log_pack_fill();
      v52 = *(v95 + 16);
      *v51 = v91;
      *(v51 + 4) = v52;
      *(v51 + 12) = 2112;
      *(v51 + 14) = ValueAtIndex;
      __SC_log_send();
LABEL_17:
      v2 = v93;
    }

LABEL_18:
    CFArrayRemoveValueAtIndex(*v2, v19);
    --v18;
LABEL_19:
    v19 = v20;
    if (v18 <= v20)
    {
      goto LABEL_27;
    }
  }

  if (!sub_42B1C(v94, &v96))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v53 = _os_log_pack_size();
      __chkstk_darwin(v53, v54, v55, v56, v57, v58, v59, v60);
      v61 = *__error();
      v62 = _os_log_pack_fill();
      v63 = *(v95 + 16);
      *v62 = v91;
      *(v62 + 4) = v63;
      *(v62 + 12) = 2112;
      *(v62 + 14) = ValueAtIndex;
      __SC_log_send();
      v2 = v93;
    }

    ++v20;
    goto LABEL_19;
  }

  if ((v21 & 0x80000000) == 0 || (v21 = sub_51508(0), (v21 & 0x80000000) == 0))
  {
    v23 = v92;
    v24 = sub_144D8(v92);
    v25 = sub_A840(v23);
    v26 = sub_AD1C(v23);
    v27 = sub_51B0C(v21, v24, v25, v26, &v96);
    if (v27)
    {
      v28 = v27;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v29 = _os_log_pack_size();
        v90 = &v89;
        __chkstk_darwin(v29, v30, v31, v32, v33, v34, v35, v36);
        v37 = *__error();
        v38 = _os_log_pack_fill();
        v39 = v21;
        v40 = nullsub_1(v92);
        v41 = strerror(v28);
        *v38 = v89;
        *(v38 + 4) = v40;
        v21 = v39;
        v2 = v93;
        *(v38 + 12) = 2080;
        *(v38 + 14) = v41;
        __SC_log_send();
      }

      goto LABEL_18;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v64 = _os_log_pack_size();
      v65 = v21;
      __chkstk_darwin(v64, v66, v67, v68, v69, v70, v71, v72);
      v73 = *__error();
      v74 = _os_log_pack_fill();
      v75 = nullsub_1(v92);
      v76 = inet_ntop(30, &v96, v97, 0x2Eu);
      *v74 = v89;
      *(v74 + 4) = v75;
      *(v74 + 12) = 2080;
      *(v74 + 14) = v76;
      v21 = v65;
      __SC_log_send();
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v77 = _os_log_pack_size();
    __chkstk_darwin(v77, v78, v79, v80, v81, v82, v83, v84);
    v85 = *__error();
    v86 = _os_log_pack_fill();
    v87 = __error();
    v88 = strerror(*v87);
    *v86 = 136315138;
    *(v86 + 4) = v88;
    __SC_log_send();
  }

LABEL_27:
  if (!CFArrayGetCount(*v2))
  {
    sub_41E8(v2);
  }

  if ((v21 & 0x80000000) == 0)
  {
    close(v21);
  }
}

void sub_376F4(uint64_t a1, int a2)
{
  if (*(a1 + 156) != a2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = nullsub_1(*(a1 + 8));
      v15 = "";
      if (!a2)
      {
        v15 = "not ";
      }

      *v13 = 136315394;
      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v15;
      __SC_log_send();
    }

    byte_701B4 = 1;
    *(a1 + 152) = 1;
    *(a1 + 156) = a2;
    dispatch_source_merge_data(qword_701C0, 1uLL);
  }
}

uint64_t sub_3786C(const __SCDynamicStore *a1, CFStringRef ifname, const void *a3, int a4, in_addr *a5, CFTypeRef *a6)
{
  a5->s_addr = 0;
  *a6 = 0;
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, @"BonjourSleepProxyAddress");
  values[0] = NetworkInterfaceEntity;
  v13 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, @"BonjourSleepProxyOPTRecord");
  values[1] = v13;
  v14 = CFArrayCreate(0, values, 2, &kCFTypeArrayCallBacks);
  v15 = SCDynamicStoreCopyMultiple(a1, v14, 0);
  v41 = v15;
  CFRelease(v14);
  if (v15)
  {
    v39 = a3;
    Value = CFDictionaryGetValue(v15, NetworkInterfaceEntity);
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }

    v18 = CFDictionaryGetValue(v15, v13);
    v19 = CFDictionaryGetTypeID();
    if (v18 && CFGetTypeID(v18) != v19)
    {
      v18 = 0;
    }

    if (Value)
    {
      v20 = CFDictionaryGetValue(Value, kSCPropMACAddress);
      v21 = CFStringGetTypeID();
      if (v20)
      {
        if (CFGetTypeID(v20) == v21)
        {
          v40 = 0;
          v22 = sub_437B0(v20, &v40);
          if (v22)
          {
            v23 = v22;
            if (v40 == a4 && !bcmp(v22, v39, a4))
            {
              free(v23);
              if (v18)
              {
                v26 = CFDictionaryGetValue(Value, @"IPAddress");
                if (sub_575A4(v26, a5))
                {
                  v27 = CFDictionaryGetValue(v18, @"OwnerOPTRecord");
                  v28 = CFDataGetTypeID();
                  if (v27)
                  {
                    if (CFGetTypeID(v27) == v28)
                    {
                      *a6 = CFRetain(v27);
                    }
                  }
                }
              }

              else
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v29 = _os_log_pack_size();
                  __chkstk_darwin(v29, v30, v31, v32, v33, v34, v35, v36);
                  v37 = *__error();
                  v38 = _os_log_pack_fill();
                  *v38 = 138412290;
                  *(v38 + 4) = ifname;
                  __SC_log_send();
                  v24 = 1;
                  goto LABEL_16;
                }
              }

              v24 = 1;
              goto LABEL_16;
            }

            free(v23);
          }
        }
      }
    }
  }

  v24 = 0;
LABEL_16:
  sub_41E8(&v41);
  CFRelease(NetworkInterfaceEntity);
  CFRelease(v13);
  return v24;
}

uint64_t sub_37BA0()
{
  v27 = 255;
  if ((sub_40E30("lo0", 16777343, &v27, 0) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      __chkstk_darwin(v0, v1, v2, v3, v4, v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      v10 = __error();
      v11 = strerror(*v10);
      v12 = *__error();
      *v9 = 136315394;
      *(v9 + 4) = v11;
      *(v9 + 12) = 1024;
      *(v9 + 14) = v12;
      __SC_log_send();
    }
  }

  result = sub_43260(16777343, 127, v27, "lo0");
  if (!result)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      v24 = __error();
      v25 = strerror(*v24);
      v26 = *__error();
      *v23 = 136315394;
      *(v23 + 4) = v25;
      *(v23 + 12) = 1024;
      *(v23 + 14) = v26;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_37DF0(const __SCDynamicStore *a1)
{
  v20 = 0;
  v2 = sub_3545C(a1, &v20);
  v21 = v2;
  v3 = v20;
  if (!(v2 | v20))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

LABEL_14:
    SCDynamicStoreSetValue(a1, @"Plugin:IPConfiguration", @"Plugin:IPConfiguration");
    goto LABEL_15;
  }

  v13 = v2;
  if (sub_59428(qword_70198) < 1)
  {
    goto LABEL_14;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = sub_59434(qword_70198, v15);
    v17 = nullsub_1(v16);
    v18 = CFStringCreateWithCString(0, v17, 0x8000100u);
    if (v18)
    {
      v19 = v18;
      if (sub_37FEC(v13, v18) || sub_37FEC(v3, v19))
      {
        sub_2F404(v16);
        ++v14;
      }

      CFRelease(v19);
    }

    ++v15;
  }

  while (v15 < sub_59428(qword_70198));
  if (!v14)
  {
    goto LABEL_14;
  }

  sub_35E48(v13, v3);
LABEL_15:
  sub_41E8(&v21);
  sub_41E8(&v20);
}

const __CFDictionary *sub_37FEC(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    Value = CFDictionaryGetValue(ValueAtIndex, kSCPropNetInterfaceDeviceName);
    if (CFEqual(Value, a2))
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

_DWORD *sub_38080()
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v1 = sub_295C(qword_70160);
  if (v1 >= 1)
  {
    v2 = v1;
    for (i = 0; i != v2; ++i)
    {
      v4 = sub_42C0(qword_70160, i);
      v5 = sub_2E8B4(v4);
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(Mutable, *(v4 + 16), v5);
        CFRelease(v6);
      }
    }
  }

  if (CFDictionaryGetCount(Mutable))
  {
    Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRelease(Mutable);
    Length = CFDataGetLength(Data);
    v9 = Length + 200;
    if ((Length + 200) <= 0x8000)
    {
      v21 = Length;
      v20 = malloc_type_calloc(1uLL, v9, 0xCA524F90uLL);
      *v20 = 1;
      v20[1] = v21;
      __strlcpy_chk();
      BytePtr = CFDataGetBytePtr(Data);
      memcpy(v20 + 50, BytePtr, v21);
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
        *v19 = 136315650;
        *(v19 + 4) = "IPConfigurationCopyOSStateData";
        *(v19 + 12) = 2048;
        *(v19 + 14) = v9;
        *(v19 + 22) = 1024;
        *(v19 + 24) = 0x8000;
        __SC_log_send();
      }

      v20 = 0;
    }

    CFRelease(Data);
  }

  else
  {
    CFRelease(Mutable);
    return 0;
  }

  return v20;
}

uint64_t S_find_linklocal_address(uint64_t a1)
{
  result = sub_2BB10(a1);
  if (!result)
  {
    v3 = sub_1690(a1);
    v4 = sub_596EC(v3);
    if (v4 < 1)
    {
      v8 = &G_ip_zeroes;
    }

    else
    {
      v5 = v4;
      v6 = 0;
      while (1)
      {
        v7 = sub_596F4(v3, v6);
        if (*v7 == -343)
        {
          break;
        }

        if (v5 == ++v6)
        {
          v8 = &G_ip_zeroes;
          return *v8;
        }
      }

      v8 = v7;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v9 = _os_log_pack_size();
        __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
        v17 = *__error();
        v18 = _os_log_pack_fill();
        v19 = nullsub_1(v3);
        v20 = *v8;
        v21 = v8[1];
        v22 = v8[2];
        v23 = v8[3];
        *v18 = 136316162;
        *(v18 + 4) = v19;
        *(v18 + 12) = 1024;
        *(v18 + 14) = v20;
        *(v18 + 18) = 1024;
        *(v18 + 20) = v21;
        *(v18 + 24) = 1024;
        *(v18 + 26) = v22;
        *(v18 + 30) = 1024;
        *(v18 + 32) = v23;
        __SC_log_send();
      }
    }

    return *v8;
  }

  return result;
}

void sub_384BC(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  if (a2 == 6)
  {
    if (*(a3 + 8))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = nullsub_1(v6);
        v21 = sub_21F58(*v7);
        *v19 = 136315394;
        *(v19 + 4) = v20;
        *(v19 + 12) = 2080;
        *(v19 + 14) = v21;
        __SC_log_send();
      }
    }

    else
    {
      sub_2BAE8();
      if (*(a3 + 12))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v36 = _os_log_pack_size();
          __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
          v44 = *__error();
          v45 = _os_log_pack_fill();
          v46 = nullsub_1(v6);
          v47 = *(a3 + 24);
          v48 = *(a3 + 25);
          v49 = *(a3 + 26);
          v50 = *(a3 + 27);
          v51 = *(a3 + 28);
          v52 = *(a3 + 29);
          *v45 = 136316674;
          *(v45 + 4) = v46;
          *(v45 + 12) = 1024;
          *(v45 + 14) = v47;
          *(v45 + 18) = 1024;
          *(v45 + 20) = v48;
          *(v45 + 24) = 1024;
          *(v45 + 26) = v49;
          *(v45 + 30) = 1024;
          *(v45 + 32) = v50;
          *(v45 + 36) = 1024;
          *(v45 + 38) = v51;
          *(v45 + 42) = 1024;
          *(v45 + 44) = v52;
          __SC_log_send();
        }

        sub_102A4(a1, 8u);
      }

      else
      {
        if (sub_169C(a1) != 1)
        {
          v9 = nullsub_1(v6);
LABEL_4:
          sub_D888(v9, 1);

          sub_102A4(a1, 0);
          return;
        }

        sub_38A28(a1, 0xCu);
      }
    }
  }

  else
  {
    if (a2)
    {
      return;
    }

    v8 = sub_2480(v6);
    v9 = nullsub_1(v6);
    if (v8)
    {
      goto LABEL_4;
    }

    sub_D888(v9, 0);
    sub_D944(a1);
    v22 = sub_2BAB0(a1);
    if (v22 && (v23 = sub_1CE28(v22)) != 0)
    {
      v24 = v23;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v25 = _os_log_pack_size();
        __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        v35 = nullsub_1(v6);
        *v34 = 136316162;
        *(v34 + 4) = v35;
        *(v34 + 12) = 1024;
        *(v34 + 14) = v24;
        *(v34 + 18) = 1024;
        *(v34 + 20) = BYTE1(v24);
        *(v34 + 24) = 1024;
        *(v34 + 26) = BYTE2(v24);
        *(v34 + 30) = 1024;
        *(v34 + 32) = HIBYTE(v24);
        __SC_log_send();
      }

      sub_D99C(*v7, sub_384BC, a1, 6, v24, -343);
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v53 = _os_log_pack_size();
        __chkstk_darwin(v53, v54, v55, v56, v57, v58, v59, v60);
        v61 = *__error();
        v62 = _os_log_pack_fill();
        v63 = nullsub_1(v6);
        *v62 = 136315138;
        *(v62 + 4) = v63;
        __SC_log_send();
      }
    }
  }
}

uint64_t sub_38A28(uint64_t a1, unsigned int a2)
{
  v4 = sub_1688(a1);
  *(v4 + 32) = 0;
  sub_D944(a1);
  v5 = sub_1690(a1);
  v6 = nullsub_1(v5);
  sub_D888(v6, 0);
  sub_FE80(a1);
  if (a2 != 12)
  {
    *(v4 + 20) = 0;
  }

  return sub_102A4(a1, a2);
}

double sub_38AB4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12)
{
  *&result = 136317698;
  *a1 = 136317698;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 1024;
  *(a1 + 32) = a6;
  *(a1 + 36) = 1024;
  *(a1 + 38) = a7;
  *(a1 + 42) = 1024;
  *(a1 + 44) = a8;
  *(a1 + 48) = 1024;
  *(a1 + 50) = a9;
  *(a1 + 54) = 1024;
  *(a1 + 56) = a10;
  *(a1 + 60) = 1024;
  *(a1 + 62) = a11;
  *(a1 + 66) = 1024;
  *(a1 + 68) = a12;
  return result;
}

const char *sub_38B24(int a1)
{
  if (a1 > 255)
  {
    if (a1 <= 4095)
    {
      if (a1 > 1023)
      {
        if (a1 == 1024)
        {
          return "SHA256_PSK";
        }

        if (a1 == 2048)
        {
          return "SHA256_8021X";
        }
      }

      else
      {
        if (a1 == 256)
        {
          return "WPS";
        }

        if (a1 == 512)
        {
          return "WAPI";
        }
      }
    }

    else if (a1 < 0x4000)
    {
      if (a1 == 4096)
      {
        return "WPA3_SAE";
      }

      if (a1 == 0x2000)
      {
        return "FT_SAE";
      }
    }

    else
    {
      switch(a1)
      {
        case 0x4000:
          return "SHA384_8021X";
        case 0x8000:
          return "SHA384_FT_8021X";
        case 0xFFFF:
          return "UNKNOWN";
      }
    }
  }

  else if (a1 <= 7)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return "WPA_PSK";
      }

      if (a1 == 4)
      {
        return "WPA2";
      }
    }

    else
    {
      if (!a1)
      {
        return "NONE";
      }

      if (a1 == 1)
      {
        return "WPA";
      }
    }
  }

  else if (a1 <= 31)
  {
    if (a1 == 8)
    {
      return "WPA2_PSK";
    }

    if (a1 == 16)
    {
      return "FT_PSK";
    }
  }

  else
  {
    switch(a1)
    {
      case 32:
        return "LEAP";
      case 64:
        return "8021X";
      case 128:
        return "FT_8021X";
    }
  }

  return "UNRECOGNIZED";
}

uint64_t sub_38CCC(uint64_t a1)
{
  v2 = Apple80211Open();
  if (v2)
  {
    v3 = v2;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 67109120;
      v13[1] = v3;
      __SC_log_send();
    }
  }

  else
  {
    v14 = Apple80211BindToInterface();
    if (v14)
    {
      v15 = v14;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v16 = _os_log_pack_size();
        __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
        v24 = *__error();
        v25 = _os_log_pack_fill();
        *v25 = 138412546;
        *(v25 + 4) = a1;
        *(v25 + 12) = 1024;
        *(v25 + 14) = v15;
        __SC_log_send();
      }

      Apple80211Close();
    }
  }

  return 0;
}

uint64_t sub_38ED8()
{
  valuePtr = 0;
  v13 = 0;
  v0 = Apple80211CopyValue();
  if (v0)
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
      *v11 = 67109120;
      v11[1] = v1;
      __SC_log_send();
    }
  }

  sub_41E8(&v13);
  return 0xFFFFLL;
}

CFMutableStringRef sub_39094()
{
  Mutable = CFStringCreateMutable(0, 0);
  v14 = Mutable;
  v1 = Apple80211Get();
  if (v1)
  {
    v2 = v1;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 67109120;
      v12[1] = v2;
      __SC_log_send();
    }

    sub_41E8(&v14);
    return v14;
  }

  return Mutable;
}

uint64_t sub_391E8()
{
  v0 = Apple80211Get();
  if (v0)
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
      *v11 = 67109120;
      v11[1] = v1;
      __SC_log_send();
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      *v21 = 136315138;
      *(v21 + 4) = "false";
      __SC_log_send();
    }
  }

  return 0;
}

uint64_t sub_393FC()
{
  v0 = Apple80211Get();
  if (v0)
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
      *v11 = 67109120;
      v11[1] = v1;
      __SC_log_send();
    }
  }

  return 0;
}

CFStringRef sub_39534(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    sub_59EA8(cStr, 18, (a1 + 36), 6);
    result = CFStringCreateWithCString(0, cStr, 0x8000100u);
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_395D4(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 2 * (a1 != a2);
  }

  if (!CFEqual(*(a1 + 16), *(a2 + 16)) && !sub_57D34(*(a1 + 24), *(a2 + 24)))
  {
    return 2;
  }

  if (*(a1 + 36) ^ *(a2 + 36) | *(a1 + 40) ^ *(a2 + 40))
  {
    return 3;
  }

  return 1;
}

BOOL WiFiAcknowledgeConnectionID(uint64_t a1)
{
  if (!sub_38CCC(a1))
  {
    return 0;
  }

  v2 = Apple80211Set();
  v3 = v2 == 0;
  if (v2)
  {
    v4 = v2;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 138412546;
      *(v14 + 4) = a1;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v4;
      __SC_log_send();
    }
  }

  Apple80211Close();
  return v3;
}

uint64_t sub_397E0()
{
  result = _CFRuntimeRegisterClass();
  qword_70220 = result;
  return result;
}

void sub_39808(const void **a1)
{
  sub_41E8(a1 + 2);
  sub_41E8(a1 + 3);

  sub_41E8(a1 + 6);
}

__CFString *sub_3984C(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 32);
  v5 = *(a1 + 60);
  v6 = *(a1 + 16);
  v7 = sub_39534(a1);
  v8 = sub_38B24(v4);
  CFStringAppendFormat(Mutable, 0, @"<WiFiInfo %p [%p]> { SSID %@ BSSID %@ Security %s", a1, v2, v6, v7, v8);
  if (*(a1 + 24))
  {
    CFStringAppendFormat(Mutable, 0, @" NetworkID %@", *(a1 + 24));
  }

  if (*(a1 + 56))
  {
    v9 = "1";
  }

  else
  {
    v9 = "0";
  }

  CFStringAppendFormat(Mutable, 0, @" AllowSharingDeviceType=%s", v9);
  CFStringAppendFormat(Mutable, 0, @" ConnectionID=%u", v5);
  CFStringAppend(Mutable, @" }");
  return Mutable;
}

uint64_t sub_3996C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  v9 = 0;
  if (a2 <= 6)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return v9;
        }

        goto LABEL_5;
      }

      if (v7)
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

        return 6;
      }

      v8 = malloc_type_malloc(0x20uLL, 0x10200401C4E69EBuLL);
      sub_151FC(a1, v8);
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 20) = *(a3 + 4);
      sub_2C394(a1, *a3);
      sub_2C3BC(a1, *(a3 + 1));
      sub_2C3E4(a1, *(a3 + 3));
      v53 = *(a3 + 2);
      if (v53)
      {
        sub_2ADB0(a1, v53);
        sub_2ADC0(a1);
      }

      if ((sub_10EE8(v6) & 0x18) != 0)
      {
        v54 = sub_2C3A4(a1);
        v55 = sub_2C3CC(a1);
        v56 = sub_2C3F4(a1);
        v37 = v54;
        v38 = v55;
        v39 = v56;
        goto LABEL_55;
      }

      v68 = nullsub_1(v6);
      snprintf(__str, 0x20uLL, "manual-%s", v68);
      v69 = timer_callout_init(__str);
      *(v8 + 8) = v69;
      if (!v69)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v94 = _os_log_pack_size();
          __chkstk_darwin(v94, v95, v96, v97, v98, v99, v100, v101);
          v102 = *__error();
          v103 = _os_log_pack_fill();
          v104 = nullsub_1(v6);
          *v103 = 136315138;
          *(v103 + 4) = v104;
          __SC_log_send();
        }

        v9 = 5;
LABEL_5:
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

        if (v8)
        {
          sub_FE80(a1);
          if (*v8)
          {
            sub_15000(v8);
          }

          if (*(v8 + 8))
          {
            timer_callout_free((v8 + 8));
          }

          free(v8);
          sub_151FC(a1, 0);
        }

        return v9;
      }

      v70 = sub_216C0(v6);
      *v8 = v70;
      if (!v70)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v71 = _os_log_pack_size();
          __chkstk_darwin(v71, v72, v73, v74, v75, v76, v77, v78);
          v79 = *__error();
          v80 = _os_log_pack_fill();
          v81 = nullsub_1(v6);
          *v80 = 136315138;
          *(v80 + 4) = v81;
          __SC_log_send();
        }
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v82 = _os_log_pack_size();
        __chkstk_darwin(v82, v83, v84, v85, v86, v87, v88, v89);
        v90 = *__error();
        v91 = _os_log_pack_fill();
        v92 = nullsub_1(v6);
        *v91 = 136315138;
        *(v91 + 4) = v92;
        __SC_log_send();
      }

LABEL_65:
      sub_3A2E8(a1, 0, 0);
      return 0;
    }

    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v9;
      }

      if (!*(v7 + 20))
      {
        sub_3A884(a1);
      }

      return 0;
    }

    goto LABEL_22;
  }

  if (a2 > 8)
  {
    if (a2 == 9)
    {
      if (v7)
      {
        v40 = *a3;
        if (v40 == sub_2C3A4(a1) && !sub_2B250(a1, a3))
        {
          v41 = *(a3 + 1);
          snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x", *a3, a3[1], a3[2], a3[3], *v41, v41[1], v41[2], v41[3], v41[4], v41[5]);
          if (!*(v8 + 24))
          {
            *(v8 + 24) = 1;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v42 = _os_log_pack_size();
            __chkstk_darwin(v42, v43, v44, v45, v46, v47, v48, v49);
            v50 = *__error();
            v51 = _os_log_pack_fill();
            v52 = nullsub_1(v6);
            *v51 = 136315394;
            *(v51 + 4) = v52;
            *(v51 + 12) = 2080;
            *(v51 + 14) = __str;
            __SC_log_send();
          }

          sub_FE80(a1);
          sub_102A4(a1, 8u);
          if (dword_70048 >= 1)
          {
            timer_set_relative(*(v8 + 8), dword_70048, 0, sub_3A2E8, a1, 0, 0);
          }
        }

        return 0;
      }

      return 6;
    }

    if (a2 != 11)
    {
      return v9;
    }

LABEL_22:
    if (v7)
    {
      if (!*(v7 + 20))
      {
        *(v7 + 24) = 0;
        if (*(a3 + 1) && !*(a3 + 2))
        {
          sub_3A828(a1);
          return 0;
        }

        if (a2 == 11 && sub_2AED8(a1))
        {
          return 0;
        }

        goto LABEL_65;
      }

      return 0;
    }

    return 6;
  }

  if (a2 != 7)
  {
    goto LABEL_22;
  }

  if (v7)
  {
    v32 = *a3;
    *(a3 + 2) = 0;
    v33 = *v32;
    if (v33 != sub_2C3A4(a1) || sub_2A684(a1) && (v34 = v32[2], v34 != sub_2A6A0(a1)) || v32[4] != *(v8 + 20))
    {
      v9 = 0;
      *(a3 + 2) = 1;
      return v9;
    }

    v35 = v32[1];
    if (v35 != sub_2C3CC(a1) || (v36 = v32[3], v36 != sub_2C3F4(a1)))
    {
      sub_2C3BC(a1, v32[1]);
      sub_2C3E4(a1, v32[3]);
      v37 = *v32;
      v38 = v32[1];
      v39 = v32[3];
LABEL_55:
      sub_2BB1C(a1, v37, v38, v39);
      sub_102AC(a1, 0);
      return 0;
    }

    return 0;
  }

  sub_2424();
  v9 = 6;
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v57 = _os_log_pack_size();
    __chkstk_darwin(v57, v58, v59, v60, v61, v62, v63, v64);
    v65 = *__error();
    v66 = _os_log_pack_fill();
    v67 = nullsub_1(v6);
    *v66 = 136315138;
    *(v66 + 4) = v67;
    v9 = 6;
    __SC_log_send();
  }

  return v9;
}

void sub_3A2E8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  if (a2 != 6)
  {
    if (a2)
    {
      return;
    }

    if (*v7)
    {
      sub_3A828(a1);
      v9 = *v8;
      v10 = sub_2C3A4(a1);

      sub_D99C(v9, sub_3A2E8, a1, 6, 0, v10);
      return;
    }

    v23 = sub_169C(a1);
    if (*(v8 + 5) || v23 != 1)
    {
      v24 = sub_2C3A4(a1);
      v25 = sub_2C3CC(a1);
      v26 = sub_2C3F4(a1);
      sub_2BB1C(a1, v24, v25, v26);
LABEL_15:

      sub_102AC(a1, 0);
      return;
    }

LABEL_27:

    sub_3A884(a1);
    return;
  }

  if (*(a3 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = nullsub_1(v6);
      v22 = sub_21F58(*v8);
      *v20 = 136315394;
      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      *(v20 + 14) = v22;
      __SC_log_send();
    }

    timer_callout_set(v8[1], sub_3A2E8, a1, 0, 0, 8.0);
  }

  else
  {
    if (!*(a3 + 12))
    {
      v39 = sub_169C(a1);
      if (*(v8 + 5) || v39 != 1)
      {
        v40 = sub_2C3A4(a1);
        v41 = sub_2C3CC(a1);
        v42 = sub_2C3F4(a1);
        sub_2BB1C(a1, v40, v41, v42);
        if (sub_2A684(a1))
        {
          v43 = sub_2C3A4(a1);
          if (v43 != sub_2A6A0(a1))
          {
            v44 = *v8;
            v45 = sub_2C3A4(a1);
            if (sub_2A3A8(a1, v44, sub_3A8C8, v45))
            {
              *(v8 + 4) = 0;
              return;
            }
          }
        }

        goto LABEL_15;
      }

      goto LABEL_27;
    }

    v27 = sub_2C3A4(a1);
    snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x", v27, BYTE1(v27), BYTE2(v27), HIBYTE(v27), *(a3 + 24), *(a3 + 25), *(a3 + 26), *(a3 + 27), *(a3 + 28), *(a3 + 29));
    if (!*(v8 + 6))
    {
      *(v8 + 6) = 1;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v28 = _os_log_pack_size();
      __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      v38 = nullsub_1(v6);
      *v37 = 136315394;
      *(v37 + 4) = v38;
      *(v37 + 12) = 2080;
      *(v37 + 14) = __str;
      __SC_log_send();
    }

    sub_FE80(a1);
    sub_102A4(a1, 8u);
    if (dword_70048 >= 1)
    {
      timer_set_relative(v8[1], dword_70048, 0, sub_3A2E8, a1, 0, 0);
    }
  }
}

void sub_3A828(uint64_t a1)
{
  v2 = sub_1688(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 8);
    if (v4)
    {
      timer_cancel(v4);
    }

    v5 = *v3;

    sub_2A368(a1, v5);
  }
}

uint64_t sub_3A884(uint64_t a1)
{
  sub_3A828(a1);
  sub_FE80(a1);

  return sub_102A4(a1, 0xCu);
}

void sub_3A8C8(uint64_t a1, int a2)
{
  v4 = sub_1690(a1);
  v5 = sub_1688(a1);
  v6 = v5;
  if (!a2)
  {
    *(v5 + 16) = 0;
LABEL_10:

    sub_102AC(a1, 0);
    return;
  }

  if (a2 != 99)
  {
    if (a2 != 1)
    {
      return;
    }

    timer_set_relative(*(v5 + 8), 60, 0, sub_3AAC0, a1, 0, 0);
    if (*(v6 + 16))
    {
      return;
    }

    *(v6 + 16) = 1;
    goto LABEL_10;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    v17 = nullsub_1(v4);
    v18 = sub_21F58(*v6);
    *v16 = 136315394;
    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    *(v16 + 14) = v18;
    __SC_log_send();
  }
}

uint64_t sub_3AAC0(uint64_t a1)
{
  v2 = *sub_1688(a1);
  v3 = sub_2C3A4(a1);

  return sub_2A3A8(a1, v2, sub_3A8C8, v3);
}

void sub_3AB24(char *cStr, uint64_t a2, int a3)
{
  v23 = 0;
  if (qword_70238)
  {
    v3 = qword_70240 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }

  else
  {
    v15 = CFStringCreateWithCString(0, cStr, 0x600u);
    v16 = sub_3B944(v15, qword_70238, &v23, &v23 + 1);
    v17 = HIBYTE(v23);
    if (a3)
    {
      v18 = v23;
    }

    else
    {
      v18 = 0;
    }

    if (a3)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_3B944(v15, qword_70240, &v23, &v23 + 1);
    if (HIBYTE(v23) == 1)
    {
      if (v19)
      {
        v21 = v18;
      }

      else
      {
        v21 = v23;
      }

      if (!v19)
      {
        v19 = v20;
      }

      CFRelease(v15);
      v24.length = CFDataGetLength(v19);
      v24.location = 0;
      CFDataGetBytes(v19, v24, a2);
      *(a2 + 16) = v21;
      *(a2 + 17) = 0;
      *(a2 + 24) = 0;
LABEL_24:
      v22 = sub_431F4();
      sub_3BA0C(v22, qword_70248, qword_70238, qword_70240);
      return;
    }

    if (!v19)
    {
      v18 = v23;
      v19 = v20;
    }

    CFRelease(v15);
    v25.length = CFDataGetLength(v19);
    v25.location = 0;
    CFDataGetBytes(v19, v25, a2);
    *(a2 + 16) = v18;
    *(a2 + 17) = 0;
    *(a2 + 24) = 0;
    if (v17)
    {
      goto LABEL_24;
    }
  }
}

void sub_3AD6C(int a1)
{
  if (!dword_70314 && sub_3AED4())
  {
    v2 = sub_431F4();
    if (v2)
    {

      sub_3B040(v2, a1);
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v3 = _os_log_pack_size();
        __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
        v11 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }
  }
}

uint64_t sub_3AED4()
{
  v14 = 0;
  v13 = 4;
  if (!sysctlbyname("net.inet6.send.opmode", &v14, &v13, 0, 0))
  {
    return v14 != 0;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v1 = _os_log_pack_size();
    __chkstk_darwin(v1, v2, v3, v4, v5, v6, v7, v8);
    v9 = *__error();
    v10 = _os_log_pack_fill();
    v11 = __error();
    v12 = strerror(*v11);
    *v10 = 136315394;
    *(v10 + 4) = "net.inet6.send.opmode";
    *(v10 + 12) = 2080;
    *(v10 + 14) = v12;
    __SC_log_send();
    return 0;
  }

  return result;
}

void sub_3B040(void *a1, int a2)
{
  v108 = 0;
  v106 = 0;
  v4 = "/var/db/dhcpclient/CGA.plist";
  v5 = sub_572B8("/var/db/dhcpclient/CGA.plist");
  v107 = v5;
  TypeID = CFDictionaryGetTypeID();
  if (!v5)
  {
    goto LABEL_34;
  }

  if (CFGetTypeID(v5) != TypeID)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_34;
    }

    v49 = _os_log_pack_size();
    __chkstk_darwin(v49, v50, v51, v52, v53, v54, v55, v56);
    v57 = *__error();
    v58 = _os_log_pack_fill();
    v59 = 136315138;
LABEL_32:
    *v58 = v59;
    *(v58 + 4) = v4;
LABEL_33:
    __SC_log_send();
    goto LABEL_34;
  }

  v4 = @"HostUUID";
  Value = CFDictionaryGetValue(v5, @"HostUUID");
  v8 = CFDataGetTypeID();
  if (!Value || CFGetTypeID(Value) != v8 || !CFEqual(Value, a1))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_34;
    }

    v60 = _os_log_pack_size();
    __chkstk_darwin(v60, v61, v62, v63, v64, v65, v66, v67);
    v68 = *__error();
    v58 = _os_log_pack_fill();
    v59 = 138412290;
    goto LABEL_32;
  }

  v9 = @"GlobalModifier";
  v10 = CFDictionaryGetValue(v5, @"GlobalModifier");
  if (!v10 || (v11 = v10, (v12 = sub_3BC2C(v10, &v106)) == 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

  v13 = v12;
  v9 = "/var/db/dhcpclient/CGAKeys.plist";
  v14 = sub_572B8("/var/db/dhcpclient/CGAKeys.plist");
  v108 = v14;
  v15 = CFDictionaryGetTypeID();
  if (v14)
  {
    if (CFGetTypeID(v14) != v15)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_34;
      }

      v88 = _os_log_pack_size();
      __chkstk_darwin(v88, v89, v90, v91, v92, v93, v94, v95);
      v96 = *__error();
      v86 = _os_log_pack_fill();
      v87 = 136315138;
      goto LABEL_48;
    }

    v9 = @"PrivateKey";
    v16 = CFDictionaryGetValue(v14, @"PrivateKey");
    v17 = CFDataGetTypeID();
    if (!v16 || CFGetTypeID(v16) != v17)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }

    v9 = @"PublicKey";
    v18 = CFDictionaryGetValue(v14, @"PublicKey");
    v19 = CFDataGetTypeID();
    if (v18 && CFGetTypeID(v18) == v19)
    {
      if (sub_3BE30(v16, v18, v13, v106, v20, v21, v22, v23))
      {
        v24 = CFDictionaryGetValue(v5, @"LinkLocalModifiers");
        if (v24)
        {
          v25 = CFDictionaryGetTypeID();
          if (CFGetTypeID(v24) != v25)
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v26 = _os_log_pack_size();
              __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
              v34 = *__error();
              v35 = _os_log_pack_fill();
              *v35 = 138412290;
              *(v35 + 4) = @"LinkLocalModifiers";
              __SC_log_send();
            }

            v24 = 0;
          }
        }

        v36 = CFDictionaryGetValue(v5, @"InterfaceModifiers");
        if (v36)
        {
          v37 = CFDictionaryGetTypeID();
          if (CFGetTypeID(v36) != v37)
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v38 = _os_log_pack_size();
              __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45);
              v46 = *__error();
              v47 = _os_log_pack_fill();
              *v47 = 138412290;
              *(v47 + 4) = @"InterfaceModifiers";
              __SC_log_send();
            }

            v36 = 0;
          }
        }

        qword_70248 = CFRetain(v11);
        if (v24)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v24);
          qword_70238 = MutableCopy;
          if (a2)
          {
            sub_3C044(MutableCopy);
          }

          goto LABEL_41;
        }

LABEL_40:
        qword_70238 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_41:
        if (v36)
        {
          Mutable = CFDictionaryCreateMutableCopy(0, 0, v36);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        qword_70240 = Mutable;
        goto LABEL_45;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v97 = _os_log_pack_size();
        __chkstk_darwin(v97, v98, v99, v100, v101, v102, v103, v104);
        v105 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      goto LABEL_45;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_47:
      v77 = _os_log_pack_size();
      __chkstk_darwin(v77, v78, v79, v80, v81, v82, v83, v84);
      v85 = *__error();
      v86 = _os_log_pack_fill();
      v87 = 138412290;
LABEL_48:
      *v86 = v87;
      *(v86 + 4) = v9;
      goto LABEL_33;
    }
  }

LABEL_34:
  v69 = sub_3BD04(4uLL);
  v109 = v69;
  v70 = sub_3BD04(0x8CuLL);
  v110 = v70;
  v71 = sub_3BD04(0x10uLL);
  v111 = v71;
  v112 = sub_3BD50(v71, 0);
  if (!sub_3BA0C(a1, v112, 0, 0) || !sub_3C2B0(v69, v70) || !sub_3BE30(v69, v70, v71, 0, v72, v73, v74, v75))
  {
    sub_41E8(&v112);
  }

  sub_41E8(&v110);
  sub_41E8(&v109);
  sub_41E8(&v111);
  if (v112)
  {
    v36 = 0;
    qword_70248 = v112;
    goto LABEL_40;
  }

LABEL_45:
  sub_41E8(&v108);
  sub_41E8(&v107);
}

void *sub_3B944(void *key, CFDictionaryRef theDict, char *a3, _BYTE *a4)
{
  *a4 = 0;
  Value = CFDictionaryGetValue(theDict, key);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (v10 = sub_3BC2C(Value, a3)) == 0)
  {
    *a3 = 0;
    v10 = sub_3BD04(0x10uLL);
    v11 = sub_3BD50(v10, *a3);
    CFRelease(v10);
    CFDictionarySetValue(theDict, key, v11);
    CFRelease(v11);
    *a4 = 1;
  }

  return v10;
}

BOOL sub_3BA0C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *keys = *off_69070;
  v26 = unk_69080;
  values[0] = a1;
  values[1] = a2;
  v23 = 0;
  v24 = 0;
  if (!a3)
  {
    v5 = &v26;
    v4 = &v23;
    v6 = 2;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = &v24;
  v5 = (&v26 + 8);
  *&v26 = @"LinkLocalModifiers";
  v23 = a3;
  v6 = 3;
  if (a4)
  {
LABEL_3:
    *v5 = @"InterfaceModifiers";
    *v4 = a4;
    ++v6;
  }

LABEL_4:
  v7 = CFDictionaryCreate(0, keys, values, v6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = sub_573B8(v7, "/var/db/dhcpclient/CGA.plist", 420);
  if (v8 < 0)
  {
    sub_2424();
    *__error();
    _SC_syslog_os_log_mapping();
    *__error();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = __error();
      v20 = strerror(*v19);
      *v18 = 136315394;
      *(v18 + 4) = "/var/db/dhcpclient/CGA.plist";
      *(v18 + 12) = 2080;
      *(v18 + 14) = v20;
      *__error();
      __SC_log_send();
    }
  }

  CFRelease(v7);
  return v8 >= 0;
}

const void *sub_3BC2C(const void *a1, _BYTE *a2)
{
  *a2 = 0;
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Modifier");
  v6 = CFDataGetTypeID();
  if (!Value)
  {
    return Value;
  }

  if (CFGetTypeID(Value) != v6 || CFDataGetLength(Value) != 16)
  {
    return 0;
  }

  v7 = CFDictionaryGetValue(a1, @"SecurityLevel");
  v8 = CFNumberGetTypeID();
  if (v7 && CFGetTypeID(v7) == v8)
  {
    CFNumberGetValue(v7, kCFNumberSInt8Type, a2);
  }

  return Value;
}

__CFData *sub_3BD04(size_t capacity)
{
  Mutable = CFDataCreateMutable(0, capacity);
  CFDataSetLength(Mutable, capacity);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  arc4random_buf(MutableBytePtr, capacity);
  return Mutable;
}

CFDictionaryRef sub_3BD50(void *a1, char a2)
{
  valuePtr = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v4 = CFDateCreate(0, Current);
  v5 = CFNumberCreate(0, kCFNumberSInt8Type, &valuePtr);
  *keys = *off_69058;
  v11 = @"CreationDate";
  values[0] = a1;
  values[1] = v5;
  values[2] = v4;
  v6 = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(v4);
  CFRelease(v5);
  return v6;
}

BOOL sub_3BE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v8;
  v35.length = CFDataGetLength(v11);
  v35.location = 0;
  CFDataGetBytes(v12, v35, v32);
  v32[16] = v10;
  memset(&v32[17], 0, 15);
  Length = CFDataGetLength(v15);
  v33 = Length;
  v36.length = Length;
  v36.location = 0;
  CFDataGetBytes(v15, v36, v34);
  v17 = &v34[Length];
  LOWORD(v12) = CFDataGetLength(v14);
  *v17 = v12;
  v17 += 2;
  v37.length = v12;
  v37.location = 0;
  CFDataGetBytes(v14, v37, v17);
  v18 = sysctlbyname("net.inet6.send.cga_parameters", 0, 0, v32, &v17[v12] - v32);
  if (v18)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
      v27 = *__error();
      v28 = _os_log_pack_fill();
      v29 = __error();
      v30 = strerror(*v29);
      *v28 = 136315394;
      *(v28 + 4) = "net.inet6.send.cga_parameters";
      *(v28 + 12) = 2080;
      *(v28 + 14) = v30;
      __SC_log_send();
    }
  }

  return v18 == 0;
}

void sub_3C044(const __CFDictionary *a1)
{
  Count = CFDictionaryGetCount(a1);
  if (Count >= 1)
  {
    v10 = Count;
    v40 = &v40;
    v11 = 8 * Count;
    __chkstk_darwin(Count, v3, v4, v5, v6, v7, v8, v9);
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = (&v40 - v12);
    if (v11 >= 0x200)
    {
      v14 = 512;
    }

    else
    {
      v14 = v11;
    }

    bzero(&v40 - v12, v14);
    __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
    v23 = (&v40 - v12);
    bzero(&v40 - v12, v14);
    Current = CFAbsoluteTimeGetCurrent();
    v41 = CFDateCreate(0, Current);
    CFDictionaryGetKeysAndValues(a1, (&v40 - v12), (&v40 - v12));
    *&v25 = 138412290;
    v42 = v25;
    do
    {
      v26 = *v23;
      v43 = 0;
      if (!sub_3BC2C(v26, &v43) || (Value = CFDictionaryGetValue(v26, @"CreationDate"), TypeID = CFDateGetTypeID(), !Value) || CFGetTypeID(Value) != TypeID || CFDateGetTimeIntervalSinceDate(v41, Value) >= 86400.0)
      {
        v29 = *v13;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v30 = _os_log_pack_size();
          __chkstk_darwin(v30, v31, v32, v33, v34, v35, v36, v37);
          v38 = *__error();
          v39 = _os_log_pack_fill();
          *v39 = v42;
          *(v39 + 4) = v29;
          __SC_log_send();
        }

        CFDictionaryRemoveValue(a1, v29);
      }

      ++v13;
      ++v23;
      --v10;
    }

    while (v10);
    CFRelease(v41);
  }
}

BOOL sub_3C2B0(void *a1, void *a2)
{
  *keys = *off_69090;
  values[0] = a1;
  values[1] = a2;
  v2 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = sub_573B8(v2, "/var/db/dhcpclient/CGAKeys.plist", 384);
  if (v3 < 0)
  {
    sub_2424();
    *__error();
    _SC_syslog_os_log_mapping();
    *__error();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = __error();
      v15 = strerror(*v14);
      *v13 = 136315394;
      *(v13 + 4) = "/var/db/dhcpclient/CGAKeys.plist";
      *(v13 + 12) = 2080;
      *(v13 + 14) = v15;
      *__error();
      __SC_log_send();
    }
  }

  CFRelease(v2);
  return v3 >= 0;
}

uint64_t sub_3C478(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  *(a2 + 15) = 0;
  *a4 = sub_2E2C4(a2, a3);
  return 0;
}

uint64_t sub_3C4DC(uint64_t a1, uint64_t a2, int a3, vm_address_t *a4, _DWORD *a5, _DWORD *a6)
{
  *(a2 + 15) = 0;
  *a6 = sub_2E350(a2, a3, a4, a5);
  return 0;
}

uint64_t sub_3C51C(uint64_t a1, uint64_t a2, vm_address_t *a3, _DWORD *a4, int *a5, _OWORD *a6)
{
  v10 = a6[1];
  v14[0] = *a6;
  v14[1] = v10;
  v11 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v11;
  dword_700E8 = -1;
  dword_700EC = -1;
  audit_token_to_au32(&atoken, 0, &dword_700E8, 0, 0, 0, &dword_700EC, 0, 0);
  if (sub_3D9D4(v14, @"com.apple.IPConfiguration.get-information"))
  {
    *(a2 + 15) = 0;
    v12 = sub_2E4E0(a2, a3, a4);
  }

  else
  {
    v12 = 1;
  }

  *a5 = v12;
  return 0;
}

uint64_t sub_3C5DC(uint64_t a1, uint64_t a2, vm_address_t *a3, _DWORD *a4, int *a5, _OWORD *a6)
{
  v10 = a6[1];
  v14[0] = *a6;
  v14[1] = v10;
  v11 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v11;
  dword_700E8 = -1;
  dword_700EC = -1;
  audit_token_to_au32(&atoken, 0, &dword_700E8, 0, 0, 0, &dword_700EC, 0, 0);
  if (sub_3D9D4(v14, @"com.apple.IPConfiguration.get-information"))
  {
    *(a2 + 15) = 0;
    v12 = sub_2E64C(a2, a3, a4);
  }

  else
  {
    v12 = 1;
  }

  *a5 = v12;
  return 0;
}

uint64_t sub_3C69C(uint64_t a1, char *a2, UInt8 *a3, unsigned int a4, int *a5, _OWORD *a6)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  *v15 = 0u;
  v10 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v10;
  dword_700E8 = -1;
  dword_700EC = -1;
  audit_token_to_au32(&atoken, 0, &dword_700E8, 0, 0, 0, &dword_700EC, 0, 0);
  if (dword_700E8)
  {
    v11 = 1;
    goto LABEL_4;
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  *v15 = 0u;
  v11 = sub_3C80C(a3, a4, &v14);
  if (!v11)
  {
    a2[15] = 0;
    v11 = sub_2F230(a2, &v14);
    if (v14 == 516)
    {
      if (DWORD2(v14) != 3)
      {
        goto LABEL_4;
      }
    }

    else if (v14 != 259)
    {
      goto LABEL_4;
    }

    if (v15[0])
    {
      free(v15[0]);
      v15[0] = 0;
    }
  }

LABEL_4:
  if (a3)
  {
    vm_deallocate(mach_task_self_, a3, a4);
  }

  *a5 = v11;
  return 0;
}

CFIndex sub_3C80C(UInt8 *a1, int a2, in_addr *a3)
{
  if (a1)
  {
    v4 = sub_57E00(a1, a2);
    v5 = sub_2CB40(v4, a3);
    if (v4)
    {
      CFRelease(v4);
    }

    return v5;
  }

  else
  {

    return sub_2CB40(0, a3);
  }
}

uint64_t sub_3C884(uint64_t a1, char *a2, UInt8 *a3, unsigned int a4, _OWORD *a5, int *a6, _OWORD *a7)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  *v18 = 0u;
  v12 = a7[1];
  v16[0] = *a7;
  v16[1] = v12;
  if (!sub_3CA0C(v16))
  {
    v14 = 1;
    goto LABEL_9;
  }

  if (a3)
  {
    v13 = sub_57E00(a3, a4);
  }

  else
  {
    v13 = 0;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  *v18 = 0u;
  v14 = sub_2CB40(v13, &v17);
  if (!v14)
  {
    a5[6] = 0u;
    a5[7] = 0u;
    a5[4] = 0u;
    a5[5] = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
    a2[15] = 0;
    v14 = sub_2FB8C(a2, &v17, a5, v13, dword_700EC);
    if (v17 == 516)
    {
      if (DWORD2(v17) != 3)
      {
        goto LABEL_7;
      }
    }

    else if (v17 != 259)
    {
      goto LABEL_7;
    }

    if (v18[0])
    {
      free(v18[0]);
      v18[0] = 0;
    }
  }

LABEL_7:
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_9:
  if (a3)
  {
    vm_deallocate(mach_task_self_, a3, a4);
  }

  *a6 = v14;
  return 0;
}

BOOL sub_3CA0C(_OWORD *a1)
{
  v2 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v2;
  dword_700E8 = -1;
  dword_700EC = -1;
  audit_token_to_au32(&atoken, 0, &dword_700E8, 0, 0, 0, &dword_700EC, 0, 0);
  if (!dword_700E8)
  {
    return 1;
  }

  v3 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v3;
  return sub_3D9D4(&atoken, @"com.apple.IPConfigurationService") != 0;
}

uint64_t _ipconfig_set_service(uint64_t a1, char *a2, UInt8 *a3, unsigned int a4, _OWORD *a5, int *a6, _OWORD *a7)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  *v17 = 0u;
  v12 = a7[1];
  v15[0] = *a7;
  v15[1] = v12;
  if (!sub_3CA0C(v15))
  {
    v13 = 1;
    goto LABEL_7;
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  *v17 = 0u;
  v13 = sub_3C80C(a3, a4, &v16);
  if (v13)
  {
    goto LABEL_7;
  }

  a5[6] = 0u;
  a5[7] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  *a5 = 0u;
  a5[1] = 0u;
  a2[15] = 0;
  v13 = sub_30378(a2, &v16, a5);
  if (v16 == 516)
  {
    if (DWORD2(v16) != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v16 != 259)
  {
    goto LABEL_7;
  }

  if (v17[0])
  {
    free(v17[0]);
    v17[0] = 0;
  }

LABEL_7:
  if (a3)
  {
    vm_deallocate(mach_task_self_, a3, a4);
  }

  *a6 = v13;
  return 0;
}

uint64_t sub_3CBF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, _OWORD *a5)
{
  v8 = a5[1];
  v11[0] = *a5;
  v11[1] = v8;
  if (sub_3CA0C(v11))
  {
    if (*a2)
    {
      *(a2 + 15) = 0;
    }

    else
    {
      a2 = 0;
    }

    *(a3 + 127) = 0;
    v9 = sub_3038C(a2, a3);
  }

  else
  {
    v9 = 1;
  }

  *a4 = v9;
  return 0;
}

uint64_t sub_3CC78(uint64_t a1, uint64_t a2, int a3, UInt8 *a4, unsigned int a5, _OWORD *a6, _DWORD *a7)
{
  a6[6] = 0u;
  a6[7] = 0u;
  a6[4] = 0u;
  a6[5] = 0u;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  v15 = 0u;
  *v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v13 = sub_3C80C(a4, a5, &v15);
  if (!v13)
  {
    *(a2 + 15) = 0;
    v13 = sub_30460(a2, a3, &v15, a6);
    if (v15 == 516)
    {
      if (DWORD2(v15) != 3)
      {
        goto LABEL_2;
      }
    }

    else if (v15 != 259)
    {
      goto LABEL_2;
    }

    if (v16[0])
    {
      free(v16[0]);
      v16[0] = 0;
    }
  }

LABEL_2:
  if (a4)
  {
    vm_deallocate(mach_task_self_, a4, a5);
  }

  *a7 = v13;
  return 0;
}

uint64_t sub_3CDA8(uint64_t a1, uint64_t a2, UInt8 *a3, unsigned int a4, int *a5, _OWORD *a6)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  *v15 = 0u;
  v10 = a6[1];
  v13[0] = *a6;
  v13[1] = v10;
  if (!sub_3CA0C(v13))
  {
    v11 = 1;
    goto LABEL_7;
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  *v15 = 0u;
  v11 = sub_3C80C(a3, a4, &v14);
  if (v11)
  {
    goto LABEL_7;
  }

  *(a2 + 15) = 0;
  v11 = sub_30750(a2, &v14);
  if (v14 == 516)
  {
    if (DWORD2(v14) != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v14 != 259)
  {
    goto LABEL_7;
  }

  if (v15[0])
  {
    free(v15[0]);
    v15[0] = 0;
  }

LABEL_7:
  if (a3)
  {
    vm_deallocate(mach_task_self_, a3, a4);
  }

  *a5 = v11;
  return 0;
}

uint64_t sub_3CED8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, _OWORD *a5)
{
  v8 = a5[1];
  v11[0] = *a5;
  v11[1] = v8;
  if (sub_3CA0C(v11))
  {
    *(a3 + 127) = 0;
    *(a2 + 15) = 0;
    v9 = sub_30948(a2, a3);
  }

  else
  {
    v9 = 1;
  }

  *a4 = v9;
  return 0;
}

uint64_t sub_3CF48(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *(a2 + 15) = 0;
  *(a3 + 127) = 0;
  *a4 = sub_30B78(a2, a3);
  return 0;
}

uint64_t sub_3CF84(uint64_t a1, uint64_t a2, UInt8 *a3, unsigned int a4, int *a5, _OWORD *a6)
{
  v10 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v10;
  dword_700E8 = -1;
  dword_700EC = -1;
  v18 = 0;
  audit_token_to_au32(&atoken, 0, &dword_700E8, 0, 0, 0, &dword_700EC, 0, 0);
  if (dword_700E8)
  {
    v11 = 1;
    if (a3)
    {
LABEL_3:
      vm_deallocate(mach_task_self_, a3, a4);
    }
  }

  else
  {
    if (a3 && (v13 = sub_57E00(a3, a4), v18 = v13, TypeID = CFDictionaryGetTypeID(), v13) && CFGetTypeID(v13) == TypeID && (Value = CFDictionaryGetValue(v13, @"SSID"), v16 = CFStringGetTypeID(), Value))
    {
      if (CFGetTypeID(Value) == v16)
      {
        v17 = Value;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    *(a2 + 15) = 0;
    v11 = sub_30BE8(a2, v17);
    sub_41E8(&v18);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  *a5 = v11;
  return 0;
}

uint64_t sub_3D0CC(uint64_t a1, uint64_t a2, const __CFData **a3, _DWORD *a4, int *a5, _OWORD *a6)
{
  v10 = a6[1];
  v14[0] = *a6;
  v14[1] = v10;
  v11 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v11;
  dword_700E8 = -1;
  dword_700EC = -1;
  audit_token_to_au32(&atoken, 0, &dword_700E8, 0, 0, 0, &dword_700EC, 0, 0);
  if (sub_3D9D4(v14, @"com.apple.IPConfiguration.get-information"))
  {
    *(a2 + 15) = 0;
    v12 = sub_2E748(a2, a3, a4);
  }

  else
  {
    v12 = 1;
  }

  *a5 = v12;
  return 0;
}

uint64_t sub_3D18C(uint64_t a1, uint64_t a2, const __CFData **a3, _DWORD *a4, int *a5, _OWORD *a6)
{
  *a3 = 0;
  *a4 = 0;
  v10 = a6[1];
  v25[0] = *a6;
  v25[1] = v10;
  v11 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v11;
  dword_700E8 = -1;
  dword_700EC = -1;
  audit_token_to_au32(&atoken, 0, &dword_700E8, 0, 0, 0, &dword_700EC, 0, v24);
  if (sub_3D9D4(v25, @"com.apple.IPConfiguration.get-information"))
  {
    *atoken.val = 0;
    *(a2 + 15) = 0;
    v12 = sub_2E868(a2, &atoken);
    if (*atoken.val)
    {
      v13 = sub_57D48(*atoken.val, a4);
      *a3 = v13;
      if (!v13)
      {
        sub_2424();
        v12 = 5;
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v14 = _os_log_pack_size();
          __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
          v22 = *__error();
          *_os_log_pack_fill() = 0;
          v12 = 5;
          __SC_log_send();
        }
      }

      sub_41E8(&atoken);
    }
  }

  else
  {
    v12 = 1;
  }

  *a5 = v12;
  return 0;
}

uint64_t sub_3D358(uint64_t a1, const __CFData **a2, _DWORD *a3, int *a4)
{
  v19 = 0;
  *a2 = 0;
  *a3 = 0;
  v7 = sub_2EFB4(&v19);
  if (v19)
  {
    v8 = sub_57D48(v19, a3);
    *a2 = v8;
    if (!v8)
    {
      sub_2424();
      v7 = 5;
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v9 = _os_log_pack_size();
        __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
        v17 = *__error();
        *_os_log_pack_fill() = 0;
        v7 = 5;
        __SC_log_send();
      }
    }
  }

  sub_41E8(&v19);
  *a4 = v7;
  return 0;
}

uint64_t sub_3D4E0(uint64_t a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  a2[15] = 0;
  *a4 = sub_2F0F0(a2, a3);
  return 0;
}

uint64_t sub_3D518(uint64_t a1, uint64_t a2, const __CFData **a3, _DWORD *a4, int *a5, _OWORD *a6)
{
  *a3 = 0;
  *a4 = 0;
  v10 = a6[1];
  v25[0] = *a6;
  v25[1] = v10;
  v11 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v11;
  dword_700E8 = -1;
  dword_700EC = -1;
  audit_token_to_au32(&atoken, 0, &dword_700E8, 0, 0, 0, &dword_700EC, 0, v24);
  if (sub_3D9D4(v25, @"com.apple.IPConfiguration.get-information"))
  {
    *atoken.val = 0;
    *(a2 + 15) = 0;
    v12 = sub_2F15C(a2, &atoken);
    if (*atoken.val)
    {
      v13 = sub_57D48(*atoken.val, a4);
      *a3 = v13;
      if (!v13)
      {
        sub_2424();
        v12 = 5;
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v14 = _os_log_pack_size();
          __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
          v22 = *__error();
          *_os_log_pack_fill() = 0;
          v12 = 5;
          __SC_log_send();
        }
      }

      sub_41E8(&atoken);
    }
  }

  else
  {
    v12 = 1;
  }

  *a5 = v12;
  return 0;
}

void sub_3D6E4()
{
  sp = 0;
  v0 = bootstrap_check_in(bootstrap_port, "com.apple.network.IPConfiguration", &sp);
  if (v0)
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
      v12 = mach_error_string(v1);
      *v11 = 136315138;
      *(v11 + 4) = v12;
      __SC_log_send();
    }
  }

  else
  {
    v13 = sp;
    v14 = sub_CB80();
    v15 = dispatch_source_create(&_dispatch_source_type_mach_recv, v13, 0, v14);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_3D8A4;
    handler[3] = &unk_690A0;
    handler[4] = v15;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_activate(v15);
  }
}

uint64_t sub_3D8A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = dispatch_mig_server();
  if (result)
  {
    v3 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      _os_log_pack_size();
      v4 = *__error();
      v5 = _os_log_pack_fill();
      *v5 = 136315394;
      *(v5 + 4) = "server_init_block_invoke";
      *(v5 + 12) = 1024;
      *(v5 + 14) = v3;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_3D9D4(_OWORD *a1, const __CFString *a2)
{
  v3 = a1[1];
  *v11.val = *a1;
  *&v11.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &v11);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SecTaskCopyValueForEntitlement(v4, a2, 0);
  if (v6)
  {
    v7 = v6;
    TypeID = CFBooleanGetTypeID();
    if (CFGetTypeID(v7) == TypeID)
    {
      Value = CFBooleanGetValue(v7);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v7);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v5);
  return Value;
}

_OWORD *timer_callout_init(const char *a1)
{
  v2 = malloc_type_malloc(0x40uLL, 0x10B00406D5306C6uLL);
  v3 = v2;
  if (v2)
  {
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    *v2 = strdup(a1);
    sub_3DAF0();
    *(v3 + 12) = dword_70250;
  }

  return v3;
}

void sub_3DAF0()
{
  if ((byte_70254 & 1) == 0)
  {
    v0 = notify_register_check("com.apple.system.clock_set", &dword_70258);
    if (v0)
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
        *(v11 + 4) = "com.apple.system.clock_set";
        *(v11 + 12) = 1024;
        *(v11 + 14) = v1;
        __SC_log_send();
      }
    }

    else
    {
      byte_70254 = 1;

      sub_3DCC0();
    }
  }
}

void sub_3DCC0()
{
  check = 0;
  if (byte_70254 == 1)
  {
    v0 = notify_check(dword_70258, &check);
    if (v0)
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
        *v11 = 67109120;
        v11[1] = v1;
        __SC_log_send();
      }
    }

    else if (check)
    {
      ++dword_70250;
    }
  }
}

uint64_t failover_thread(uint64_t a1, int a2, unsigned __int8 *a3)
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

        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
        sub_2424();
        v9 = 6;
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_41;
        }

        return v9;
      }

      if ((sub_10EE8(v6) & 8) != 0)
      {
        return 3;
      }

      v8 = malloc_type_malloc(0x20uLL, 0x102004070E7FC99uLL);
      sub_151FC(a1, v8);
      *v8 = 0u;
      *(v8 + 1) = 0u;
      sub_2C394(a1, *a3);
      sub_2C3BC(a1, *(a3 + 1));
      v27 = timer_callout_init("failover");
      *(v8 + 1) = v27;
      if (v27)
      {
        v28 = sub_216C0(v6);
        *v8 = v28;
        if (v28)
        {
          v8[4] = *(a3 + 5);
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v29 = _os_log_pack_size();
            __chkstk_darwin(v29, v30, v31, v32, v33, v34, v35, v36);
            v37 = *__error();
            v38 = _os_log_pack_fill();
            v39 = nullsub_1(v6);
            *v38 = 136315138;
            *(v38 + 4) = v39;
            __SC_log_send();
          }

          goto LABEL_31;
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v62 = _os_log_pack_size();
          __chkstk_darwin(v62, v63, v64, v65, v66, v67, v68, v69);
          v70 = *__error();
          v71 = _os_log_pack_fill();
          v72 = nullsub_1(v6);
          *v71 = 136315138;
          *(v71 + 4) = v72;
          __SC_log_send();
        }

        v9 = 0;
      }

      else
      {
        sub_2424();
        v9 = 5;
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v51 = _os_log_pack_size();
          __chkstk_darwin(v51, v52, v53, v54, v55, v56, v57, v58);
          v59 = *__error();
          v60 = _os_log_pack_fill();
          v61 = nullsub_1(v6);
          *v60 = 136315138;
          *(v60 + 4) = v61;
          v9 = 5;
          __SC_log_send();
        }
      }
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v73 = _os_log_pack_size();
      __chkstk_darwin(v73, v74, v75, v76, v77, v78, v79, v80);
      v81 = *__error();
      v82 = _os_log_pack_fill();
      v83 = nullsub_1(v6);
      *v82 = 136315138;
      *(v82 + 4) = v83;
      __SC_log_send();
    }

    if (v8)
    {
      sub_FE80(a1);
      if (*v8)
      {
        sub_15000(v8);
      }

      if (*(v8 + 1))
      {
        timer_callout_free(v8 + 1);
      }

      free(v8);
      sub_151FC(a1, 0);
    }

    return v9;
  }

  if (a2 > 8)
  {
    if (a2 == 9)
    {
      if (v7)
      {
        v14 = *a3;
        if (v14 != sub_2C3A4(a1))
        {
          return 0;
        }

        v15 = *(a3 + 1);
        snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x", *a3, a3[1], a3[2], a3[3], *v15, v15[1], v15[2], v15[3], v15[4], v15[5]);
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v16 = _os_log_pack_size();
          __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
          v24 = *__error();
          v25 = _os_log_pack_fill();
          v26 = nullsub_1(v6);
          *v25 = 136315394;
          *(v25 + 4) = v26;
          *(v25 + 12) = 2080;
          *(v25 + 14) = __str;
          __SC_log_send();
        }

        sub_FE80(a1);
        sub_102A4(a1, 8u);
        goto LABEL_31;
      }

      return 6;
    }

    if (a2 != 11)
    {
      return v9;
    }

LABEL_18:
    if (v7)
    {
      if (*(a3 + 1) && !*(a3 + 2))
      {
        *(v7 + 20) = 0;
        sub_D944(a1);
        return 0;
      }

LABEL_31:
      sub_3E648(a1, 0, 0);
      return 0;
    }

    return 6;
  }

  if (a2 == 4)
  {
    sub_3EC78(a1);
    return 0;
  }

  if (a2 == 7)
  {
    if (v7)
    {
      v10 = *a3;
      *(a3 + 2) = 0;
      v11 = *v10;
      if (v11 != sub_2C3A4(a1) || (v12 = v10[1], v12 != sub_2C3CC(a1)))
      {
        v9 = 0;
        *(a3 + 2) = 1;
        return v9;
      }

      v8[4] = v10[5];
      if (sub_2C370(a1) && *(v8 + 20) == 1)
      {
        v13 = v8[4];
        if (v13)
        {
          timer_set_relative(*(v8 + 1), v13, 0, sub_3EB3C, a1, 0, 0);
        }

        else
        {
          timer_cancel(*(v8 + 1));
        }

        return 0;
      }

      goto LABEL_31;
    }

    sub_2424();
    v9 = 6;
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return v9;
    }

LABEL_41:
    v40 = _os_log_pack_size();
    __chkstk_darwin(v40, v41, v42, v43, v44, v45, v46, v47);
    v48 = *__error();
    v49 = _os_log_pack_fill();
    v50 = nullsub_1(v6);
    *v49 = 136315138;
    *(v49 + 4) = v50;
    v9 = 6;
    __SC_log_send();
  }

  return v9;
}

void sub_3E648(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  if (a2 == 6)
  {
    if (*(a3 + 8))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v19 = _os_log_pack_size();
        __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
        v27 = *__error();
        v28 = _os_log_pack_fill();
        v29 = nullsub_1(v6);
        v30 = sub_21F58(*v8);
        *v28 = 136315394;
        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        *(v28 + 14) = v30;
        __SC_log_send();
      }
    }

    else if (*(a3 + 12))
    {
      v31 = sub_2C3A4(a1);
      snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x", v31, BYTE1(v31), BYTE2(v31), HIBYTE(v31), *(a3 + 24), *(a3 + 25), *(a3 + 26), *(a3 + 27), *(a3 + 28), *(a3 + 29));
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v32 = _os_log_pack_size();
        __chkstk_darwin(v32, v33, v34, v35, v36, v37, v38, v39);
        v40 = *__error();
        v41 = _os_log_pack_fill();
        v42 = nullsub_1(v6);
        *v41 = 136315394;
        *(v41 + 4) = v42;
        *(v41 + 12) = 2080;
        *(v41 + 14) = __str;
        __SC_log_send();
      }

      sub_FE80(a1);
      sub_102A4(a1, 8u);
      timer_set_relative(*(v8 + 8), 10, 0, sub_3E648, a1, 0, 0);
    }

    else
    {
      if (sub_169C(a1) != 1)
      {
        v43 = sub_2C3A4(a1);
        v44 = sub_2C3CC(a1);
        sub_2BB1C(a1, v43, v44, 0);
        sub_102AC(a1, 0);
        *(v8 + 20) = 1;
        v13 = *(v8 + 16);
        if (!v13)
        {
          return;
        }

        v11 = *(v8 + 8);
        v12 = 0;
        v14 = sub_3EB3C;
        v15 = a1;
        v16 = 0;
        goto LABEL_5;
      }

      sub_3EC78(a1);
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

      *(v7 + 20) = 0;
      sub_D944(a1);
      v9 = sub_65CC(0, 4);
      v10 = sub_65CC(0, 999999);
      v11 = *(v8 + 8);
      v12 = v10;
      v13 = v9;
      v14 = sub_3E648;
      v15 = a1;
      v16 = 2;
LABEL_5:

      timer_set_relative(v11, v13, v12, v14, v15, v16, 0);
      return;
    }

    v17 = *v7;
    v18 = sub_2C3A4(a1);

    sub_D99C(v17, sub_3E648, a1, 6, 0, v18);
  }
}

uint64_t sub_3EB3C(uint64_t a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = sub_1690(a1);
    v13 = nullsub_1(v12);
    *v11 = 136315138;
    *(v11 + 4) = v13;
    __SC_log_send();
  }

  sub_D944(a1);
  sub_FE80(a1);
  return sub_102A4(a1, 0x10u);
}

uint64_t sub_3EC78(uint64_t a1)
{
  sub_D944(a1);
  sub_FE80(a1);

  return sub_102A4(a1, 0xCu);
}

void sub_3ECE4(const void **a1)
{
  sub_41E8(a1 + 6);
  sub_41E8(a1 + 7);

  free(a1);
}

void DHCPLeaseListRead(uint64_t *a1, const char *a2, int a3, int a4, const void *a5, int a6)
{
  sub_592AC(a1, sub_3ECE4, 0);
  snprintf(__str, 0x400uLL, "/var/db/dhcpclient/leases/%s.plist", a2);
  v12 = sub_572B8(__str);
  v38 = v12;
  TypeID = CFDictionaryGetTypeID();
  if (v12)
  {
    if (CFGetTypeID(v12) == TypeID)
    {
      Value = CFDictionaryGetValue(v12, @"ClientIdentifier");
      if (a6)
      {
        v15 = Value;
        v16 = CFDataGetTypeID();
        if (v15)
        {
          if (CFGetTypeID(v15) == v16 && CFDataGetLength(v15) == a6 + 1)
          {
            v41 = 0;
            v40[0] = 0;
            v40[1] = 0;
            v39 = 0;
            BytePtr = CFDataGetBytePtr(v15);
            if (*BytePtr == a4)
            {
              v18 = BytePtr;
              v19 = bcmp(BytePtr + 1, a5, a6);
              if (!v19 || a4 == 1 && a6 == 6 && (v18[1] & 2) != 0 && a3)
              {
                v20 = CFDictionaryGetValue(v12, @"LeaseStartDate");
                v21 = CFDateGetTypeID();
                if (v20)
                {
                  if (CFGetTypeID(v20) == v21)
                  {
                    v22 = CFDictionaryGetValue(v12, @"PacketData");
                    v23 = CFDataGetTypeID();
                    if (v22)
                    {
                      if (CFGetTypeID(v22) == v23)
                      {
                        if (a3)
                        {
                          v24 = CFDictionaryGetValue(v12, @"SSID");
                          v25 = CFStringGetTypeID();
                          if (!v24)
                          {
                            goto LABEL_43;
                          }

                          if (CFGetTypeID(v24) != v25)
                          {
                            goto LABEL_43;
                          }

                          v26 = CFDictionaryGetValue(v12, @"NetworkID");
                          if (v26)
                          {
                            v27 = CFStringGetTypeID();
                            if (CFGetTypeID(v26) != v27)
                            {
                              goto LABEL_43;
                            }
                          }
                        }

                        else
                        {
                          v26 = 0;
                          v24 = 0;
                        }

                        Length = CFDataGetLength(v22);
                        if (Length >= 0xEC)
                        {
                          v29 = Length;
                          cf = v26;
                          v30 = malloc_type_malloc(Length + 68, 0x106004067791B1EuLL);
                          *v30 = 0u;
                          *(v30 + 1) = 0u;
                          *(v30 + 2) = 0u;
                          *(v30 + 3) = 0u;
                          *(v30 + 16) = 0;
                          v43.location = 0;
                          v43.length = v29;
                          CFDataGetBytes(v22, v43, v30 + 68);
                          *(v30 + 16) = v29;
                          *(v30 + 1) = CFDateGetAbsoluteTime(v20);
                          sub_585E0(v40, v30 + 68, v29, 0);
                          dhcp_get_lease_from_options(v40, &v41, &v39 + 1, &v39);
                          *(v30 + 4) = v41;
                          v31 = *(v30 + 21);
                          *(v30 + 1) = v31;
                          if (sub_274FC(v40, v31, v30 + 5))
                          {
                            v32 = CFDictionaryGetValue(v12, @"RouterHardwareAddress");
                            v33 = CFDataGetTypeID();
                            if (v32)
                            {
                              if (CFGetTypeID(v32) == v33)
                              {
                                v34 = CFDataGetLength(v32);
                                if (v34 >= 1)
                                {
                                  if (v34 >= 0x10)
                                  {
                                    v35.length = 16;
                                  }

                                  else
                                  {
                                    v35.length = v34;
                                  }

                                  *(v30 + 40) = v35.length;
                                  v35.location = 0;
                                  CFDataGetBytes(v32, v35, v30 + 24);
                                }
                              }
                            }
                          }

                          sub_58494(v40);
                          if (v24)
                          {
                            CFRetain(v24);
                            *(v30 + 6) = v24;
                          }

                          if (cf)
                          {
                            CFRetain(cf);
                            *(v30 + 7) = cf;
                          }

                          if (v19)
                          {
                            v44.location = 1;
                            v44.length = 6;
                            CFDataGetBytes(v15, v44, v30 + 41);
                            *(v30 + 47) = 1;
                          }

                          *v30 = 1;
                          sub_59348(a1, v30);
                          if (G_IPConfiguration_verbose)
                          {
                            sub_3F134(a1);
                          }

                          v36 = *(v30 + 1);
                          sub_297C(a1);
                          if (!sub_295C(a1))
                          {
                            remove_unused_ip(a2, v36);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_43:
  sub_41E8(&v38);
}

void sub_3F134(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = sub_295C(a1);
  if (v3 >= 1)
  {
    LODWORD(v4) = 0;
    do
    {
      v5 = sub_42C0(a1, v4);
      v4 = (v4 + 1);
      CFStringAppendFormat(Mutable, 0, @"\n%d. ", v4);
      CFStringAppendFormat(Mutable, 0, @"IP %d.%d.%d.%d Start %d Length", *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7), *(v5 + 8));
      if (*(v5 + 16) == -1)
      {
        CFStringAppendFormat(Mutable, 0, @" infinite");
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @" %d", *(v5 + 16));
      }

      if (*(v5 + 20))
      {
        CFStringAppendFormat(Mutable, 0, @" Router IP %d.%d.%d.%d", *(v5 + 20), BYTE1(*(v5 + 20)), BYTE2(*(v5 + 20)), HIBYTE(*(v5 + 20)));
        if (*(v5 + 40))
        {
          sub_59EA8(__str, 48, (v5 + 24), *(v5 + 40));
          CFStringAppendFormat(Mutable, 0, @" MAC %s", __str);
        }
      }

      v6 = *(v5 + 48);
      if (v6)
      {
        v7 = nullsub_1(v6);
        CFStringAppendFormat(Mutable, 0, @" SSID '%@'", v7);
        v8 = *(v5 + 56);
        if (v8)
        {
          v9 = nullsub_1(v8);
          CFStringAppendFormat(Mutable, 0, @" NetworkID '%@'", v9);
        }
      }
    }

    while (v3 != v4);
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 67109378;
    *(v19 + 4) = v3;
    *(v19 + 8) = 2112;
    *(v19 + 10) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
}

void DHCPLeaseListWrite(uint64_t *a1, const char *a2, char a3, const UInt8 *a4, int a5)
{
  snprintf(v34, 0x400uLL, "/var/db/dhcpclient/leases/%s.plist", a2);
  sub_297C(a1);
  v9 = sub_295C(a1);
  if (v9)
  {
    v10 = sub_42C0(a1, v9 - 1);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    LOBYTE(v33) = a3;
    v12 = CFDataCreateMutable(0, a5 + 1);
    CFDataAppendBytes(v12, &v33, 1);
    CFDataAppendBytes(v12, a4, a5);
    CFDictionarySetValue(Mutable, @"ClientIdentifier", v12);
    CFRelease(v12);
    v13 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *(v10 + 4), *(v10 + 5), *(v10 + 6), *(v10 + 7), v33);
    CFDictionarySetValue(Mutable, @"IPAddress", v13);
    CFRelease(v13);
    v14 = CFDateCreate(0, *(v10 + 8));
    CFDictionarySetValue(Mutable, @"LeaseStartDate", v14);
    CFRelease(v14);
    v15 = CFNumberCreate(0, kCFNumberSInt32Type, (v10 + 16));
    CFDictionarySetValue(Mutable, @"LeaseLength", v15);
    CFRelease(v15);
    v16 = *(v10 + 48);
    if (v16)
    {
      CFDictionarySetValue(Mutable, @"SSID", v16);
      v17 = *(v10 + 56);
      if (v17)
      {
        CFDictionarySetValue(Mutable, @"NetworkID", v17);
      }
    }

    v18 = CFDataCreateWithBytesNoCopy(0, (v10 + 68), *(v10 + 64), kCFAllocatorNull);
    CFDictionarySetValue(Mutable, @"PacketData", v18);
    CFRelease(v18);
    if (*(v10 + 20))
    {
      v19 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *(v10 + 20), BYTE1(*(v10 + 20)), BYTE2(*(v10 + 20)), HIBYTE(*(v10 + 20)));
      CFDictionarySetValue(Mutable, @"RouterIPAddress", v19);
      CFRelease(v19);
      if (*(v10 + 40))
      {
        v20 = CFDataCreateWithBytesNoCopy(0, (v10 + 24), *(v10 + 40), kCFAllocatorNull);
        CFDictionarySetValue(Mutable, @"RouterHardwareAddress", v20);
        CFRelease(v20);
      }
    }

    v33 = Mutable;
    if ((sub_573B8(Mutable, v34, 420) & 0x80000000) != 0 && *__error() != 2)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
        v29 = *__error();
        v30 = _os_log_pack_fill();
        v31 = __error();
        v32 = strerror(*v31);
        *v30 = 136315394;
        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        *(v30 + 14) = v32;
        __SC_log_send();
      }
    }

    sub_41E8(&v33);
  }

  else
  {
    unlink(v34);
  }
}

uint64_t DHCPLeaseListFindLease(uint64_t a1, unsigned int a2, int a3, const void *a4, unsigned int a5)
{
  v10 = bswap32(a2);
  v11 = HIBYTE(v10) == 10 || v10 >> 20 == 2753;
  v12 = HIWORD(v10);
  v14 = !v11 && v12 != 49320;
  v15 = sub_295C(a1);
  if (v15 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v15;
  v17 = 0;
  if (a4)
  {
    v18 = a5 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  while (1)
  {
    v20 = sub_42C0(a1, v17);
    if (*(v20 + 4) == a2 && ((v14 & 1) != 0 || *(v20 + 20) == a3 && (!a3 || *(v20 + 40) == a5 && ((v19 & 1) != 0 || !bcmp((v20 + 24), a4, a5)))))
    {
      break;
    }

    v17 = (v17 + 1);
    if (v16 == v17)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v17;
}

uint64_t DHCPLeaseListFindLeaseForWiFi(uint64_t a1, const void *a2, const void *a3)
{
  v6 = sub_295C(a1);
  if (v6 >= 1)
  {
    LODWORD(v7) = v6;
    for (i = v6 + 1; i > 1; --i)
    {
      v7 = (v7 - 1);
      v9 = sub_42C0(a1, i - 2);
      v10 = *(v9 + 48);
      if (v10)
      {
        if (CFEqual(v10, a2))
        {
          return i - 2;
        }

        if (sub_57D34(a3, *(v9 + 56)))
        {
          return v7;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t DHCPLeaseListRemoveLeaseForWiFi(uint64_t *a1, const void *a2, const void *a3)
{
  result = DHCPLeaseListFindLeaseForWiFi(a1, a2, a3);
  if (result != -1)
  {
    v6 = result;
    do
    {
      v7 = sub_42C0(a1, v6);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        v18 = nullsub_1(a2);
        v19 = v7[4];
        v20 = v7[5];
        v21 = v7[6];
        v22 = v7[7];
        v23 = v7[20];
        v24 = v7[21];
        v25 = v7[22];
        v26 = v7[23];
        *v17 = 138414338;
        *(v17 + 4) = v18;
        *(v17 + 12) = 1024;
        *(v17 + 14) = v19;
        *(v17 + 18) = 1024;
        *(v17 + 20) = v20;
        *(v17 + 24) = 1024;
        *(v17 + 26) = v21;
        *(v17 + 30) = 1024;
        *(v17 + 32) = v22;
        *(v17 + 36) = 1024;
        *(v17 + 38) = v23;
        *(v17 + 42) = 1024;
        *(v17 + 44) = v24;
        *(v17 + 48) = 1024;
        *(v17 + 50) = v25;
        *(v17 + 54) = 1024;
        *(v17 + 56) = v26;
        __SC_log_send();
      }

      sub_13DB8(a1, v6);
      result = DHCPLeaseListFindLeaseForWiFi(a1, a2, a3);
      v6 = result;
    }

    while (result != -1);
  }

  return result;
}

void DHCPLeaseListUpdateLease(uint64_t *a1, unsigned int a2, int a3, const void *a4, unsigned int a5, int a6, const void *a7, int a8, double a9, const void *a10, const void *a11)
{
  v18 = bswap32(a2);
  v19 = HIBYTE(v18) == 10 || v18 >> 20 == 2753;
  v20 = HIWORD(v18);
  v22 = v19 || v20 == 49320;
  v23 = malloc_type_malloc(a8 + 68, 0x106004067791B1EuLL);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  *(v23 + 16) = 0;
  *(v23 + 1) = a2;
  *(v23 + 1) = a9;
  *(v23 + 4) = a6;
  *(v23 + 5) = a3;
  memmove(v23 + 68, a7, a8);
  *(v23 + 16) = a8;
  if (a4 && a5)
  {
    if (a5 >= 0x10)
    {
      v24 = 16;
    }

    else
    {
      v24 = a5;
    }

    *(v23 + 40) = v24;
    memmove(v23 + 24, a4, v24);
  }

  if (a10)
  {
    CFRetain(a10);
    *(v23 + 6) = a10;
    if (a11)
    {
      CFRetain(a11);
      *(v23 + 7) = a11;
    }
  }

  v25 = sub_295C(a1);
  if (v25 >= 1)
  {
    v26 = v25;
    for (i = 0; i < v26; ++i)
    {
      v28 = sub_42C0(a1, i);
      if (sub_3FE44(v28, v23, v22))
      {
        sub_13DB8(a1, i--);
        --v26;
      }
    }
  }

  sub_59348(a1, v23);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v29 = _os_log_pack_size();
    __chkstk_darwin(v29, v30, v31, v32, v33, v34, v35, v36);
    v37 = *__error();
    v38 = _os_log_pack_fill();
    v39 = *(v23 + 4);
    v40 = *(v23 + 5);
    v41 = *(v23 + 6);
    v42 = *(v23 + 7);
    *v38 = 67109888;
    *(v38 + 4) = v39;
    *(v38 + 8) = 1024;
    *(v38 + 10) = v40;
    *(v38 + 14) = 1024;
    *(v38 + 16) = v41;
    *(v38 + 20) = 1024;
    *(v38 + 22) = v42;
    __SC_log_send();
  }

  if (G_IPConfiguration_verbose)
  {
    sub_3F134(a1);
  }
}

uint64_t sub_3FE44(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 20) || (v5 = *(a1 + 40), !*(a1 + 40)))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 1;
    }

LABEL_23:
    v26 = _os_log_pack_size();
    __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
    v34 = *__error();
    v35 = _os_log_pack_fill();
    v36 = *(a1 + 4);
    v37 = *(a1 + 5);
    v38 = *(a1 + 6);
    v39 = *(a1 + 7);
    *v35 = 67109888;
    *(v35 + 4) = v36;
    *(v35 + 8) = 1024;
    *(v35 + 10) = v37;
    *(v35 + 14) = 1024;
    *(v35 + 16) = v38;
    *(v35 + 20) = 1024;
    *(v35 + 22) = v39;
LABEL_24:
    __SC_log_send();
    return 1;
  }

  if (*(a1 + 1) == 1)
  {
    *(a1 + 1) = 0;
    v7 = bswap32(*(a1 + 4));
    v8 = HIBYTE(v7) == 10 || v7 >> 20 == 2753;
    v9 = HIWORD(v7);
    v11 = v8 || v9 == 49320;
    if (v11 == a3 && (!*(a2 + 40) || !bcmp((a1 + 24), (a2 + 24), v5)))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return 1;
      }

      goto LABEL_23;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      v22 = *(a1 + 4);
      v23 = *(a1 + 5);
      v24 = *(a1 + 6);
      v25 = *(a1 + 7);
      *v21 = 67109888;
      *(v21 + 4) = v22;
      *(v21 + 8) = 1024;
      *(v21 + 10) = v23;
      *(v21 + 14) = 1024;
      *(v21 + 16) = v24;
      *(v21 + 20) = 1024;
      *(v21 + 22) = v25;
      __SC_log_send();
    }
  }

  if (!a3 && *(a2 + 4) == *(a1 + 4))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_23;
    }

    return 1;
  }

  v41 = *(a2 + 20);
  if (v41 && *(a2 + 40) && v41 == *(a1 + 20) && !bcmp((a2 + 24), (a1 + 24), *(a2 + 40)))
  {
    v42 = *(a2 + 4);
    v43 = *(a1 + 4);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v44 = __SC_log_enabled();
    if (v42 != v43)
    {
      if (!v44)
      {
        return 1;
      }

      v45 = _os_log_pack_size();
      __chkstk_darwin(v45, v46, v47, v48, v49, v50, v51, v52);
      v53 = *__error();
      v54 = _os_log_pack_fill();
      sub_40500(v54, *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
      goto LABEL_24;
    }

    if (!v44)
    {
      return 1;
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t DHCPLeaseListRemoveLease(uint64_t *a1, unsigned int a2, int a3, const void *a4, unsigned int a5)
{
  result = DHCPLeaseListFindLease(a1, a2, a3, a4, a5);
  if (result != -1)
  {
    v7 = result;
    v8 = sub_42C0(a1, result);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = v8[4];
      v20 = v8[5];
      v21 = v8[6];
      v22 = v8[7];
      *v18 = 67109888;
      *(v18 + 4) = v19;
      *(v18 + 8) = 1024;
      *(v18 + 10) = v20;
      *(v18 + 14) = 1024;
      *(v18 + 16) = v21;
      *(v18 + 20) = 1024;
      *(v18 + 22) = v22;
      __SC_log_send();
    }

    return sub_13DB8(a1, v7);
  }

  return result;
}

double sub_40500(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  *&result = 67110912;
  *a1 = 67110912;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  *(a1 + 14) = 1024;
  *(a1 + 16) = a4;
  *(a1 + 20) = 1024;
  *(a1 + 22) = a5;
  *(a1 + 26) = 1024;
  *(a1 + 28) = a6;
  *(a1 + 32) = 1024;
  *(a1 + 34) = a7;
  *(a1 + 38) = 1024;
  *(a1 + 40) = a8;
  *(a1 + 44) = 1024;
  *(a1 + 46) = a9;
  return result;
}

uint64_t sub_40560(uint64_t a1, void *a2)
{
  *a2 = 0;
  result = sub_7838();
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v8 = 0u;
    v9 = 0u;
    __strlcpy_chk();
    v6 = ioctl(v5, 0xC020698EuLL, &v8);
    result = sub_7BE0(v6, a1, "SIOCGIFEFLAGS");
    v7 = v9;
    if (v6)
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  return result;
}

uint64_t sub_40628(uint64_t a1, int a2)
{
  result = sub_7838();
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v7 = 0u;
    v8 = 0u;
    LODWORD(v8) = a2;
    __strlcpy_chk();
    v6 = ioctl(v5, 0x80206934uLL, &v7);
    return sub_7BE0(v6, a1, "SIOCSIFMTU");
  }

  return result;
}

BOOL sub_406DC(uint64_t a1, int a2)
{
  v4 = sub_7838();
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  v8 = 0u;
  v9 = 0u;
  LODWORD(v9) = a2;
  __strlcpy_chk();
  v6 = ioctl(v5, 0x802069E4uLL, &v8);
  sub_7BE0(v6, a1, "SIOCSIFL4S");
  return v6 == 0;
}

BOOL sub_407A4(uint64_t a1, _DWORD *a2)
{
  v4 = sub_7838();
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v6 = ioctl(v5, 0xC02069E4uLL, &v8);
  sub_7BE0(v6, a1, "SIOCGIFL4S");
  if (!v6)
  {
    *a2 = v9;
  }

  return v6 == 0;
}

uint64_t sub_40874(uint64_t a1, int a2)
{
  v4 = sub_7838();
  if ((v4 & 0x80000000) == 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = "UP";
      *(v14 + 4) = "interface_up_down";
      *v14 = 136315650;
      if (!a2)
      {
        v15 = "DOWN";
      }

      *(v14 + 12) = 2080;
      *(v14 + 14) = a1;
      *(v14 + 22) = 2080;
      *(v14 + 24) = v15;
      __SC_log_send();
    }

    return sub_409F0(v4, a1, a2 != 0, a2 == 0);
  }

  return v4;
}

uint64_t sub_409F0(int a1, uint64_t a2, int a3, int a4)
{
  v23 = 0u;
  v24 = 0u;
  __strlcpy_chk();
  v8 = ioctl(a1, 0xC0206911uLL, &v23);
  sub_7BE0(v8, a2, "SIOCGIFFLAGS");
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v24;
    v10 = (v24 | a3) & (a4 ^ 0xFFFF);
    LOWORD(v24) = (v24 | a3) & ~a4;
    if (v9 == v10)
    {
      return 0;
    }

    else
    {
      __strlcpy_chk();
      v8 = ioctl(a1, 0x80206910uLL, &v23);
      sub_7BE0(v8, a2, "SIOCSIFFLAGS");
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        v22[1] = v22;
        __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
        v19 = *__error();
        v20 = _os_log_pack_fill();
        *v20 = 136316162;
        *(v20 + 4) = a2;
        *(v20 + 12) = 1024;
        *(v20 + 14) = a3;
        *(v20 + 18) = 1024;
        *(v20 + 20) = a4;
        *(v20 + 24) = 1024;
        *(v20 + 26) = v9;
        *(v20 + 30) = 1024;
        *(v20 + 32) = v10;
        __SC_log_send();
      }
    }
  }

  return v8;
}

uint64_t sub_40C00(uint64_t a1, int a2)
{
  v4 = sub_7838();
  if ((v4 & 0x80000000) == 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = "set";
      *(v14 + 4) = "interface_set_noarp";
      *v14 = 136315650;
      if (!a2)
      {
        v15 = "clear";
      }

      *(v14 + 12) = 2080;
      *(v14 + 14) = a1;
      *(v14 + 22) = 2080;
      *(v14 + 24) = v15;
      __SC_log_send();
    }

    return sub_409F0(v4, a1, (a2 != 0) << 7, (a2 == 0) << 7);
  }

  return v4;
}

uint64_t sub_40D84(uint64_t a1)
{
  result = sub_7838();
  if ((result & 0x80000000) == 0)
  {
    v3 = result;
    memset(v5, 0, sizeof(v5));
    __strlcpy_chk();
    v4 = ioctl(v3, 0xC0206951uLL, v5);
    return sub_7BE0(v4, a1, "SIOCPROTODETACH");
  }

  return result;
}

uint64_t sub_40E30(uint64_t a1, int a2, int *a3, int *a4)
{
  v8 = sub_7838();
  if ((v8 & 0x80000000) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    LOWORD(v13) = 528;
    DWORD1(v13) = a2;
    if (a3)
    {
      v9 = *a3;
      LOWORD(v15) = 528;
      DWORD1(v15) = v9;
    }

    if (a4)
    {
      v10 = *a4;
      LOWORD(v14) = 528;
      DWORD1(v14) = v10;
    }

    __strlcpy_chk();
    v8 = ioctl(v8, 0x8040691AuLL, &v12);
    sub_7BE0(v8, a1, "SIOCAIFADDR");
  }

  return v8;
}

uint64_t sub_40F2C(uint64_t a1)
{
  v2 = sub_12F50();
  if (v2 < 0)
  {
    return *__error();
  }

  v3 = v2;
  memset(v14, 0, sizeof(v14));
  __strlcpy_chk();
  v4 = ioctl(v3, 0xC120696FuLL, v14);
  sub_7BE0(v4, a1, "SIOCPROTODETACH_IN6");
  if (v4 < 0)
  {
    v5 = *__error();
    if (v5 != 6)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v6 = *__error();
        v7 = _os_log_pack_fill();
        v8 = __error();
        v9 = strerror(*v8);
        v10 = *__error();
        *v7 = 136315650;
        *(v7 + 4) = a1;
        *(v7 + 12) = 2080;
        *(v7 + 14) = v9;
        *(v7 + 22) = 1024;
        *(v7 + 24) = v10;
        __SC_log_send();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    _os_log_pack_size();
    __chkstk_darwin();
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = a1;
    __SC_log_send();
  }

  return v5;
}

uint64_t sub_411D4(char *a1, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v12 = sub_12F50();
  if ((v12 & 0x80000000) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    strncpy(__dst, a1, 0x10uLL);
    v13 = ioctl(v12, 0xC030694CuLL, __dst);
    sub_7BE0(v13, a1, "SIOCGIFINFO_IN6");
    if ((v13 & 0x80000000) == 0)
    {
      if (a4)
      {
        v14 = 136;
      }

      else
      {
        v14 = 8;
      }

      if (!a3)
      {
        ++v14;
      }

      if (!a5)
      {
        v14 |= 0x200u;
      }

      v15 = (a3 != 0) | ((a4 == 0) << 7);
      if (a5)
      {
        v15 |= 0x200u;
      }

      v16 = (DWORD1(v34) | v15) & ~v14;
      if (v16 != DWORD1(v34))
      {
        DWORD1(v34) = v16;
        v17 = ioctl(v12, 0xC0486957uLL, __dst);
        sub_7BE0(v17, a1, "SIOCGIFINFO_FLAGS");
      }
    }

    if ((sub_41450(v12, a1, a2, a4, a6) & 0x80000000) != 0)
    {
      v12 = *__error();
      if (*__error() != 6)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v18 = _os_log_pack_size();
          __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
          v26 = *__error();
          v27 = _os_log_pack_fill();
          v28 = __error();
          v29 = strerror(*v28);
          v30 = *__error();
          *v27 = 136315650;
          *(v27 + 4) = a1;
          *(v27 + 12) = 2080;
          *(v27 + 14) = v29;
          *(v27 + 22) = 1024;
          *(v27 + 24) = v30;
          __SC_log_send();
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_41450(int a1, char *a2, _OWORD *a3, int a4, int a5)
{
  if (!a3 && a4 && sub_3AD58())
  {
    v23 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    __strlcpy_chk();
    sub_3AB1C(a2, &v21[1] + 4);
    *(&v22 + 1) = -1;
    LOBYTE(v23) = a5;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 136315394;
      *(v18 + 4) = a2;
      *(v18 + 12) = 1024;
      *(v18 + 14) = a5;
      __SC_log_send();
    }

    v19 = ioctl(a1, 0x805869A0uLL, v21);
    sub_7BE0(v19, a2, "SIOCLL_CGASTART");
    return v19;
  }

  else
  {

    return sub_42D60(a1, a2, a3);
  }
}

uint64_t sub_41660(uint64_t a1)
{
  v2 = sub_12F50();
  if ((v2 & 0x80000000) == 0)
  {
    memset(v4, 0, sizeof(v4));
    __strlcpy_chk();
    v2 = ioctl(v2, 0xC1206983uLL, v4);
    sub_7BE0(v2, a1, "SIOCLL_STOP");
  }

  return v2;
}

uint64_t sub_41734(char *a1, int a2)
{
  v4 = sub_12F50();
  if ((v4 & 0x80000000) == 0)
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    if (!sub_3AD58())
    {
      goto LABEL_5;
    }

    *&v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    __strlcpy_chk();
    sub_3AD50(a1, &v18 + 4);
    *(&v21 + 1) = -1;
    v5 = ioctl(v4, 0xC05869BCuLL, &v17);
    sub_7BE0(v5, a1, "SIOCSIFCGAPREP_IN6");
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    else
    {
LABEL_5:
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      __strlcpy_chk();
      v4 = ioctl(v4, 0xC1206984uLL, &v17);
      sub_7BE0(v4, a1, "SIOCAUTOCONF_START");
      if (!v4)
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
          *(v15 + 4) = a1;
          __SC_log_send();
        }

        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_4195C(uint64_t a1)
{
  v2 = sub_12F50();
  if ((v2 & 0x80000000) == 0)
  {
    memset(v6, 0, sizeof(v6));
    __strlcpy_chk();
    v2 = ioctl(v2, 0xC1206985uLL, v6);
    sub_7BE0(v2, a1, "SIOCAUTOCONF_STOP");
    if (!v2)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v3 = *__error();
        v4 = _os_log_pack_fill();
        *v4 = 136315138;
        *(v4 + 4) = a1;
        __SC_log_send();
      }

      return 0;
    }
  }

  return v2;
}

BOOL sub_41AFC(uint64_t a1)
{
  v2 = sub_12F50();
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  __strlcpy_chk();
  v4 = ioctl(v3, 0xC06069C1uLL, v7);
  sub_7BE0(v4, a1, "SIOCGIFNAT64PREFIX");
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v8 == 0;
  }

  return !v5;
}

BOOL sub_41BCC(const char *a1, __int128 *a2, unsigned __int8 *a3, int a4)
{
  v8 = sub_12F50();
  if (v8 < 0)
  {
    return 0;
  }

  v9 = v8;
  memset(v17, 0, sizeof(v17));
  strncpy(__dst, a1, 0x10uLL);
  if (a4 >= 1)
  {
    v10 = v17;
    if (a4 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = a4;
    }

    do
    {
      v12 = *a2++;
      v13 = v12;
      LODWORD(v12) = *a3++;
      *v10 = v13;
      *(v10 + 4) = v12 >> 3;
      v10 = (v10 + 20);
      --v11;
    }

    while (v11);
  }

  v14 = ioctl(v9, 0xC06069C2uLL, __dst);
  sub_7BE0(v14, a1, "SIOCSIFNAT64PREFIX");
  return v14 == 0;
}

uint64_t sub_41CE4(uint64_t a1, _OWORD *a2)
{
  v4 = sub_12F50();
  if ((v4 & 0x80000000) == 0)
  {
    memset(v6, 0, sizeof(v6));
    if (a2)
    {
      LOWORD(v6[1]) = 7708;
      *(&v6[1] + 8) = *a2;
    }

    __strlcpy_chk();
    v4 = ioctl(v4, 0x81206919uLL, v6);
    sub_7BE0(v4, a1, "SIOCDIFADDR_IN6");
  }

  return v4;
}

int8x16_t sub_41DD0(int8x16_t *a1, int a2)
{
  v4 = 0;
  v7 = 0uLL;
  if (a2 >= 8)
  {
    v4 = a2 >> 3;
    memset(&v7, 255, v4);
  }

  if (a2 <= 0)
  {
    v5 = -(-a2 & 7);
  }

  else
  {
    v5 = a2 & 7;
  }

  if (v5)
  {
    v7.i8[v4] = 0xFF00u >> v5;
  }

  result = vandq_s8(*a1, v7);
  *a1 = result;
  return result;
}

uint64_t sub_41E5C(int8x16_t *a1, int a2)
{
  v13 = 0;
  v4 = sub_41F38(&v13);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (v13 < 1)
  {
LABEL_11:
    v10 = 0;
  }

  else
  {
    v6 = v4 + v13;
    v7 = v4;
    while (1)
    {
      v8 = *(v7 + 33);
      if (!a2 || *(v7 + 32) == a2)
      {
        v12 = *a1;
        sub_41DD0(&v12, *(v7 + 29));
        if (v12.i64[0] == v7[1] && v12.i64[1] == v7[2])
        {
          break;
        }
      }

      v7 = (v7 + 28 * v8 + 72);
      if (v7 >= v6)
      {
        goto LABEL_11;
      }
    }

    v10 = *(v7 + 29);
  }

  free(v5);
  return v10;
}

void *sub_41F38(size_t *a1)
{
  v4 = 0;
  *v5 = xmmword_5D130;
  *a1 = 0;
  if (sysctl(v5, 4u, 0, &v4, 0, 0) < 0)
  {
    return 0;
  }

  v4 += 1024;
  v2 = malloc_type_malloc(v4, 0x38A7C271uLL);
  if (sysctl(v5, 4u, v2, &v4, 0, 0) < 0)
  {
    free(v2);
    return 0;
  }

  *a1 = v4;
  return v2;
}

uint64_t sub_4201C(int a1, _DWORD *a2)
{
  v11 = 0;
  v4 = sub_41F38(&v11);
  if (v4)
  {
    if (v11 >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = v4;
      while (1)
      {
        v8 = *(v7 + 33);
        if (a1)
        {
          if (*(v7 + 32) != a1 || v8 == 0)
          {
            goto LABEL_10;
          }
        }

        else if (!*(v7 + 33))
        {
          goto LABEL_10;
        }

        v5 = (v5 + v8);
        ++v6;
LABEL_10:
        v7 += 28 * *(v7 + 33) + 72;
        if (v7 >= &v4[v11])
        {
          goto LABEL_16;
        }
      }
    }

    v6 = 0;
    v5 = 0;
LABEL_16:
    free(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v6;
  return v5;
}

uint64_t sub_420DC(const char *a1, _OWORD *a2, _OWORD *a3, int a4, int a5, int a6, int a7)
{
  v14 = sub_12F50();
  if ((v14 & 0x80000000) == 0)
  {
    v22 = 0;
    v21 = 0u;
    v20 = 0u;
    memset(&__dst[16], 0, 64);
    strncpy(__dst, a1, 0x10uLL);
    v23 = a6;
    v24 = a7;
    DWORD1(v21) = a5;
    if (a2)
    {
      *&__dst[16] = 7708;
      *&__dst[24] = *a2;
    }

    if (a3)
    {
      *&__dst[44] = 7708;
      *&__dst[52] = *a3;
    }

    if (a4)
    {
      v15 = 0;
      __b = 0uLL;
      if (a4 >= 8)
      {
        v15 = a4 >> 3;
        memset(&__b, 255, v15);
      }

      if (a4 <= 0)
      {
        v16 = -(-a4 & 7);
      }

      else
      {
        v16 = a4 & 7;
      }

      if (v16)
      {
        __dst[v15 - 16] = 0xFF00u >> v16;
      }

      *&__dst[72] = 7708;
      v20 = __b;
    }

    __strlcpy_chk();
    v14 = ioctl(v14, 0x8080691AuLL, __dst);
    sub_7BE0(v14, a1, "SIOCAIFADDR_IN6");
  }

  return v14;
}

uint64_t sub_4226C(uint64_t a1)
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
    *(v11 + 4) = "inet6_flush_prefixes";
    *(v11 + 12) = 2080;
    *(v11 + 14) = a1;
    __SC_log_send();
  }

  v12 = sub_12F50();
  if ((v12 & 0x80000000) == 0)
  {
    memset(v14, 0, 288);
    __strlcpy_chk();
    v12 = ioctl(v12, 0xC120694FuLL, v14);
    sub_7BE0(v12, a1, "SIOCSPFXFLUSH_IN6");
  }

  return v12;
}

uint64_t sub_42418(uint64_t a1)
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
    *(v11 + 4) = "inet6_flush_routes";
    *(v11 + 12) = 2080;
    *(v11 + 14) = a1;
    __SC_log_send();
  }

  v12 = sub_12F50();
  if ((v12 & 0x80000000) == 0)
  {
    memset(v14, 0, 288);
    __strlcpy_chk();
    v12 = ioctl(v12, 0xC1206950uLL, v14);
    sub_7BE0(v12, a1, "SIOCSRTRFLUSH_IN6");
  }

  return v12;
}

uint64_t sub_425C4(uint64_t a1, uint64_t a2)
{
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = sub_12F50();
  if ((v4 & 0x80000000) == 0)
  {
    __strlcpy_chk();
    v4 = ioctl(v4, 0xC1206953uLL, &v12);
    sub_7BE0(v4, a1, "SIOCGIFSTAT_IN6");
  }

  v5 = v24;
  *(a2 + 160) = v23;
  *(a2 + 176) = v5;
  *(a2 + 192) = v25;
  v6 = v20;
  *(a2 + 96) = v19;
  *(a2 + 112) = v6;
  v7 = v22;
  *(a2 + 128) = v21;
  *(a2 + 144) = v7;
  v8 = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v8;
  v9 = v18;
  *(a2 + 64) = v17;
  *(a2 + 80) = v9;
  v10 = v14;
  *a2 = v13;
  *(a2 + 16) = v10;
  return v4;
}

uint64_t sub_426E4(uint64_t a1, int a2)
{
  v4 = sub_12F50();
  if ((v4 & 0x80000000) == 0)
  {
    memset(v8, 0, sizeof(v8));
    __strlcpy_chk();
    if (a2)
    {
      v5 = ioctl(v4, 0xC12069BDuLL, v8);
      v4 = v5;
      v6 = "SIOCCLAT46_START";
    }

    else
    {
      v5 = ioctl(v4, 0xC12069BEuLL, v8);
      v4 = v5;
      v6 = "SIOCCLAT46_STOP";
    }

    sub_7BE0(v5, a1, v6);
  }

  return v4;
}

uint64_t sub_42834(int a1, uint64_t a2)
{
  v17 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = sub_16BFC(a1, &v17);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (v17 >= 1)
  {
    v5 = &v3[v17];
    v6 = 0uLL;
    v7 = v3;
    do
    {
      v16 = 0;
      v14[2] = v6;
      v15 = v6;
      v14[0] = v6;
      v14[1] = v6;
      if (*(v7 + 2) == 5 && *(v7 + 3) == 12)
      {
        LODWORD(v14[0]) = *(v7 + 1);
        v8 = sub_16D38(v7 + 20, v7 + *v7, v14);
        if (v8)
        {
          v10 = v8;
          v11 = __stderrp;
          v12 = strerror(v8);
          fprintf(v11, "couldn't extract rt_addrinfo %s (%d)\n", v12, v10);
          break;
        }

        if (v15 && *v15 >= 0x1Cu)
        {
          v6 = 0uLL;
          if (*(v15 + 8) == 254 && (*(v15 + 9) & 0xC0) == 0x80)
          {
            *a2 = *(v15 + 8);
            *(a2 + 2) = 0;
            v9 = 1;
            goto LABEL_18;
          }
        }

        else
        {
          v6 = 0uLL;
        }
      }

      v7 = (v7 + *v7);
    }

    while (v7 < v5);
  }

  v9 = 0;
LABEL_18:
  free(v4);
  return v9;
}

__CFString *sub_42980(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"{");
  if (*(a1 + 8) >= 1)
  {
    v3 = 0;
    v4 = *a1;
    do
    {
      sub_42AC8(v4[6], __str);
      sub_42AC8(v4[7], v9);
      if (v3)
      {
        v5 = "";
      }

      else
      {
        v5 = "\n";
      }

      v6 = inet_ntop(30, v4, v10, 0x2Eu);
      CFStringAppendFormat(Mutable, 0, @"%s%s/%d flags 0x%04x vltime=%s pltime=%s\n", v5, v6, v4[4], v4[5], __str, v9);
      ++v3;
      v4 += 8;
    }

    while (v3 < *(a1 + 8));
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t sub_42AC8(uint64_t result, char *__str)
{
  if (result != -1)
  {
    return snprintf(__str, 0x20uLL, "%u", result);
  }

  strcpy(__str, "infinity");
  return result;
}

BOOL sub_42B1C(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *a1; *i != *a2 || *(i + 8) != a2[1]; i += 32)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return (*(i + 20) & 0x206) == 0;
}

uint64_t sub_42B68(int a1)
{
  if (a1)
  {
    v1 = sub_42FD0("net.route.verbose", 2, &dword_70268);
    v2 = dword_70268 != 2 && v1;
    byte_7026C = v2;
    result = sub_42FD0("net.inet6.icmp6.nd6_debug", 2, &dword_70270);
    if (dword_70270 == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = result;
    }

    byte_70274 = v4;
  }

  else
  {
    sub_42C38("net.route.verbose", dword_70268, byte_7026C);
    v5 = dword_70270;
    v6 = byte_70274;

    return sub_42C38("net.inet6.icmp6.nd6_debug", v5, v6);
  }

  return result;
}

uint64_t sub_42C38(const char *a1, int a2, int a3)
{
  if (a3)
  {
    v15 = 0;
    return sub_42FD0(a1, a2, &v15);
  }

  else
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
      *v14 = 136315138;
      *(v14 + 4) = a1;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_42D60(int a1, uint64_t a2, _OWORD *a3)
{
  memset(v28, 0, sizeof(v28));
  if (a3)
  {
    LOWORD(v28[1]) = 7708;
    *(&v28[1] + 8) = *a3;
    inet_ntop(30, a3, v27, 0x2Eu);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 136315394;
      *(v14 + 4) = a2;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v27;
      __SC_log_send();
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
      v23 = *__error();
      v24 = _os_log_pack_fill();
      *v24 = 136315138;
      *(v24 + 4) = a2;
      __SC_log_send();
    }
  }

  __strlcpy_chk();
  v25 = ioctl(a1, 0xC0806982uLL, v28);
  sub_7BE0(v25, a2, "SIOCLL_START");
  return v25;
}

BOOL sub_42FD0(const char *a1, int a2, int *a3)
{
  v35 = a2;
  v34 = 4;
  v5 = sysctlbyname(a1, a3, &v34, &v35, 4uLL);
  sub_2424();
  _SC_syslog_os_log_mapping();
  v6 = __SC_log_enabled();
  if (v5)
  {
    if (v6)
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      v17 = v35;
      v18 = __error();
      v19 = strerror(*v18);
      v20 = *__error();
      *v16 = 136315906;
      *(v16 + 4) = a1;
      *(v16 + 12) = 1024;
      *(v16 + 14) = v17;
      *(v16 + 18) = 2080;
      *(v16 + 20) = v19;
      *(v16 + 28) = 1024;
      *(v16 + 30) = v20;
LABEL_6:
      __SC_log_send();
    }
  }

  else if (v6)
  {
    v21 = _os_log_pack_size();
    __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
    v29 = *__error();
    v30 = _os_log_pack_fill();
    v31 = *a3;
    v32 = v35;
    *v30 = 136315650;
    *(v30 + 4) = a1;
    *(v30 + 12) = 1024;
    *(v30 + 14) = v31;
    *(v30 + 18) = 1024;
    *(v30 + 20) = v32;
    goto LABEL_6;
  }

  return v5 == 0;
}

uint64_t sub_431F4()
{
  v2.tv_sec = 0;
  v2.tv_nsec = 0;
  result = qword_70278;
  if (!qword_70278)
  {
    qword_70278 = CFDataCreateMutable(0, 16);
    CFDataSetLength(qword_70278, 16);
    MutableBytePtr = CFDataGetMutableBytePtr(qword_70278);
    if (gethostuuid(MutableBytePtr, &v2))
    {
      sub_41E8(&qword_70278);
    }

    return qword_70278;
  }

  return result;
}

uint64_t sub_43270(int a1, int a2, int a3, const char *a4)
{
  v8 = arp_open_routing_socket();
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    __buf = 17104896;
    __buf_8 = 0x700000901;
    DWORD1(v39) = arp_get_next_seq();
    WORD6(v43) = 528;
    LODWORD(v44) = a2;
    WORD6(v44) = 528;
    LODWORD(v45) = a1;
    WORD6(v45) = 528;
    LODWORD(v46) = a3;
    if (a4)
    {
      HIDWORD(__buf_8) = 55;
      WORD6(v46) = 4628;
      BYTE1(v47) = strlen(a4);
      __memmove_chk();
      LOWORD(v48) = 528;
      DWORD1(v48) = a1;
      v10 = 176;
    }

    else
    {
      v10 = 140;
    }

    LOWORD(__buf) = v10;
    if ((write(v9, &__buf, v10) & 0x8000000000000000) == 0)
    {
      v23 = 1;
LABEL_17:
      close(v9);
      return v23;
    }

    v24 = *__error();
    if (v24 == 17 || v24 == 3)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
LABEL_15:
        v25 = _os_log_pack_size();
        __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        v35 = strerror(v24);
        *v34 = 136315138;
        *(v34 + 4) = v35;
        __SC_log_send();
      }
    }

    v23 = 0;
    goto LABEL_17;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v11 = _os_log_pack_size();
    __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    v21 = __error();
    v22 = strerror(*v21);
    *v20 = 136315138;
    *(v20 + 4) = v22;
    __SC_log_send();
  }

  return 0;
}

CFMutableDictionaryRef sub_43608(int a1, uint64_t a2, CFAbsoluteTime a3, CFAbsoluteTime a4)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = Mutable;
  v9 = sub_295C(a2);
  if (v9 >= 1)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      memset(length, 0, sizeof(length));
      v12 = sub_42C0(a2, i);
      v13 = *v12;
      if (a1 == 258 && v13 == 12 || sub_1CE40(*v12))
      {
        *&length[1] = CFStringCreateWithFormat(0, 0, @"Option_%d", v13);
        if (!CFDictionaryGetValue(Mutable, *&length[1]))
        {
          v14 = sub_1CF54(a2, v13, length);
          if (v14)
          {
            v15 = v14;
            v16 = CFDataCreate(0, v14, length[0]);
            CFDictionarySetValue(Mutable, *&length[1], v16);
            CFRelease(v16);
            free(v15);
          }
        }

        sub_41E8(&length[1]);
      }
    }
  }

  if (a1 == 259)
  {
    sub_1DB1C(Mutable, @"LeaseStartTime", a3);
    if (a4 != 0.0)
    {
      sub_1DB1C(Mutable, @"LeaseExpirationTime", a4);
    }
  }

  if (!CFDictionaryGetCount(Mutable))
  {
    sub_41E8(&v19);
    return v19;
  }

  return Mutable;
}

_BYTE *sub_437B0(CFStringRef theString, int *a2)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @":");
  theArray = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings && (Count = CFArrayGetCount(ArrayBySeparatingStrings), (v5 = Count) != 0))
  {
    v6 = malloc_type_malloc(Count, 0x100004077774924uLL);
    if (v5 >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        sub_4160(ValueAtIndex, __str, 4, 0);
        v6[v7++] = strtoul(__str, 0, 16);
      }

      while ((v5 & 0x7FFFFFFF) != v7);
    }

    sub_41E8(&theArray);
    *a2 = v5;
  }

  else
  {
    sub_41E8(&theArray);
    return 0;
  }

  return v6;
}

const void *sub_43898(CFStringRef theString, in_addr *a2, void *a3, int *a4)
{
  a2->s_addr = 0;
  *a3 = 0;
  *a4 = 0;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  v13 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings && (v8 = ArrayBySeparatingStrings, CFArrayGetCount(ArrayBySeparatingStrings) >= 7) && (ValueAtIndex = CFArrayGetValueAtIndex(v8, 3), v10 = CFArrayGetValueAtIndex(v8, 5), v11 = CFArrayGetValueAtIndex(v8, 6), sub_575A4(v10, a2), a2->s_addr))
  {
    *a3 = sub_437B0(v11, a4);
    CFRetain(ValueAtIndex);
  }

  else
  {
    ValueAtIndex = 0;
  }

  sub_41E8(&v13);
  return ValueAtIndex;
}

void sub_43994(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    sub_5A04(a2);
  }

  else if (a3 == 1)
  {
    sub_166A8(a2);
  }
}

uint64_t sub_439B8(uint64_t a1)
{
  v2 = *(sub_1688(a1) + 8);

  return timer_set_relative(v2, 0, 0, sub_43CE8, a1, 0, 0);
}

void sub_43A14(uint64_t a1, unsigned int a2)
{
  v4 = sub_1688(a1);
  sub_43E1C(a1, 0);
  *(v4 + 36) = 0;
  sub_41E8((v4 + 16));
  sub_43F88(v4);
  sub_43FD8(a1);
  v5 = sub_1690(a1);
  v6 = nullsub_1(v5);
  sub_4195C(v6);
  sub_1C3B4(a1, 0);
  sub_44028(a1, 0);
  sub_102A4(a1, a2);
  sub_2C1A0(a1, 0);
  *(v4 + 80) = 0;

  sub_BC60(a1, 0);
}

void sub_43ACC(uint64_t a1)
{
  *(sub_1688(a1) + 36) = 0;
  sub_166A8(a1);

  sub_BC60(a1, 1);
}

void sub_43B14(uint64_t a1)
{
  v2 = sub_1690(a1);
  sub_43E1C(a1, 0);
  v3 = sub_1688(a1);
  v4 = nullsub_1(v2);
  sub_4226C(v4);
  v5 = nullsub_1(v2);
  sub_42418(v5);
  sub_43A14(a1, 0xCu);
  *(v3 + 68) = 0;
}

void sub_43B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1690(a1);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    v15 = nullsub_1(v4);
    *v14 = 136315138;
    *(v14 + 4) = v15;
    __SC_log_send();
  }

  sub_1E064(a1, 0);
  if (*(a2 + 4))
  {
    sub_44814(a1, 0, 0);
  }

  else
  {
    sub_44DE4(a1, 0);
  }
}

void sub_43CE8(uint64_t a1)
{
  v2 = sub_1690(a1);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    v13 = nullsub_1(v2);
    *v12 = 136315138;
    *(v12 + 4) = v13;
    __SC_log_send();
  }

  sub_43ACC(a1);
}

uint64_t sub_43E1C(uint64_t a1, unsigned int a2)
{
  v4 = sub_1690(a1);
  v5 = sub_1688(a1);
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    v17 = nullsub_1(v4);
    if (a2 > 3)
    {
      v18 = "<unknown>";
    }

    else
    {
      v18 = off_690E0[a2];
    }

    *v16 = 136315394;
    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    *(v16 + 14) = v18;
    result = __SC_log_send();
  }

  *(v5 + 32) = a2;
  return result;
}

void sub_43F88(uint64_t a1)
{
  v2 = (a1 + 96);
  if (*(a1 + 96))
  {
    PvDInfoRequestCancel();
    sub_41E8(v2);
  }

  sub_55C00(a1 + 104, 0);
}

uint64_t sub_43FD8(uint64_t a1)
{
  v1 = sub_1688(a1);
  timer_cancel(v1[1]);
  result = *v1;
  if (*v1)
  {

    return sub_54D20(result);
  }

  return result;
}

uint64_t sub_44028(uint64_t a1, int a2)
{
  v46 = 0;
  v4 = sub_1690(a1);
  v5 = sub_1688(a1);
  v6 = nullsub_1(v4);
  sub_40C00(v6, 0);
  v8 = *(v5 + 160);
  if (*(v5 + 160))
  {
    v9 = nullsub_1(v4);
    sub_44360(v9, v8);
    *(v5 + 160) = 0;
    v10 = bswap32(v8 | 0xC0000000);
    v11 = nullsub_1(v4);
    if (sub_14308(v11, v10))
    {
      v12 = *__error();
      v13 = sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v14 = _os_log_pack_size();
        v45 = v43;
        __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
        v44 = HIBYTE(v10);
        v22 = *__error();
        v23 = _os_log_pack_fill();
        v24 = nullsub_1(v4);
        v43[1] = v13;
        v25 = a2;
        v26 = v24;
        v27 = strerror(v12);
        *v23 = 136316674;
        *(v23 + 4) = v26;
        a2 = v25;
        *(v23 + 12) = 1024;
        *(v23 + 14) = 192;
        *(v23 + 18) = 1024;
        *(v23 + 20) = 0;
        *(v23 + 24) = 1024;
        *(v23 + 26) = 0;
        *(v23 + 30) = 1024;
        *(v23 + 32) = v44;
        *(v23 + 36) = 2080;
        *(v23 + 38) = v27;
        *(v23 + 46) = 1024;
        *(v23 + 48) = v12;
LABEL_7:
        __SC_log_send();
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v28 = _os_log_pack_size();
        v45 = v43;
        __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
        v36 = *__error();
        v37 = _os_log_pack_fill();
        v38 = nullsub_1(v4);
        *v37 = 136316162;
        *(v37 + 4) = v38;
        *(v37 + 12) = 1024;
        *(v37 + 14) = 192;
        *(v37 + 18) = 1024;
        *(v37 + 20) = 0;
        *(v37 + 24) = 1024;
        *(v37 + 26) = 0;
        *(v37 + 30) = 1024;
        *(v37 + 32) = HIBYTE(v10);
        goto LABEL_7;
      }
    }

    v39 = sub_144D8(v4);
    sub_143CC(v39, 0, v10);
  }

  if (a2)
  {
    sub_4464C(v4, v8, v7);
  }

  v40 = nullsub_1(v4);
  sub_40560(v40, &v46);
  if ((v46 & 0x1000) != 0)
  {
    v41 = nullsub_1(v4);
    sub_4282C(v41);
  }

  return sub_2AED0(a1);
}

uint64_t sub_44360(uint64_t a1, int a2)
{
  if ((a2 - 6) <= 0xFBu)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

LABEL_9:
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = a1;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a2;
    return __SC_log_send();
  }

  v5 = (a2 - 2);
  v6 = word_702A0[v5];
  if (!word_702A0[v5])
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  word_702A0[v5] = v6 - 1;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (v6 == 1)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (result)
  {
    v17 = _os_log_pack_size();
    __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
    v25 = *__error();
    v26 = _os_log_pack_fill();
    v27 = word_702A0[v5];
    *v26 = 136315650;
    *(v26 + 4) = a1;
    *(v26 + 12) = 1024;
    *(v26 + 14) = a2;
    *(v26 + 18) = 1024;
    *(v26 + 20) = v27;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_4464C(uint64_t result, int a2, __n128 a3)
{
  v3 = result;
  v22 = 0;
  v4 = a2 - 2;
  v5 = -1073741822;
  v6 = 4;
  a3.n128_u64[0] = 136316162;
  v21 = a3;
  do
  {
    if (v4)
    {
      v7 = bswap32(v5);
      v8 = nullsub_1(v3);
      result = sub_14308(v8, v7);
      if (!result)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          v23 = &v21;
          __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
          v17 = *__error();
          v18 = _os_log_pack_fill();
          v19 = nullsub_1(v3);
          *v18 = v21.n128_u32[0];
          *(v18 + 4) = v19;
          *(v18 + 12) = 1024;
          *(v18 + 14) = 192;
          *(v18 + 18) = 1024;
          *(v18 + 20) = 0;
          *(v18 + 24) = 1024;
          *(v18 + 26) = 0;
          *(v18 + 30) = 1024;
          *(v18 + 32) = HIBYTE(v7);
          __SC_log_send();
        }

        v20 = sub_144D8(v3);
        result = sub_143CC(v20, v22, v7);
      }
    }

    --v4;
    ++v5;
    --v6;
  }

  while (v6);
  return result;
}

void sub_44814(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  if (a2 == 5)
  {
    if (sub_1A82C(a3))
    {

      sub_1A164(a1, 0, a3);
    }
  }

  else
  {
    v8 = v7;
    if (a2 != 2)
    {
      if (a2)
      {
        return;
      }

      sub_43E1C(a1, 1u);
      sub_2C344(a1);
      sub_BC60(a1, 1);
      *(v8 + 40) = timer_get_current_time();
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 80) = 0;
      sub_2B8C0(a1);
      sub_44028(a1, 1);
      sub_2C1A0(a1, 0);
      sub_43FD8(a1);
      sub_54968(*v8, sub_44814, a1, 5);
      v9 = nullsub_1(v6);
      v10 = sub_2C980(a1);
      if (sub_41734(v9, v10))
      {

        sub_43A14(a1, 6u);
        return;
      }

      *(v8 + 36) = 0;
      sub_41E8((v8 + 16));
      *(v8 + 72) = 0;
    }

    v11 = *(v8 + 36);
    *(v8 + 36) = v11 + 1;
    if (v11 < 1)
    {
      goto LABEL_26;
    }

    if (sub_169C(a1) == 1)
    {

      sub_43B14(a1);
      return;
    }

    if (sub_1DFD0(a1))
    {
      sub_2424();
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
      }

      sub_BC60(a1, 0);
    }

    v23 = *(v8 + 36);
    if (v23 < 4)
    {
LABEL_26:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v27 = _os_log_pack_size();
        __chkstk_darwin(v27, v28, v29, v30, v31, v32, v33, v34);
        v35 = *__error();
        v36 = _os_log_pack_fill();
        v37 = nullsub_1(v6);
        v38 = *(v8 + 36);
        *v36 = 136315650;
        *(v36 + 4) = v37;
        *(v36 + 12) = 1024;
        *(v36 + 14) = v38;
        *(v36 + 18) = 1024;
        *(v36 + 20) = 3;
        __SC_log_send();
      }

      v39 = sub_55040(*v8, *(v8 + 60) != 0);
      if (v39 > 0x32 || ((1 << v39) & 0x6000000000041) == 0)
      {
        v41 = v39;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v42 = _os_log_pack_size();
          __chkstk_darwin(v42, v43, v44, v45, v46, v47, v48, v49);
          v50 = *__error();
          v51 = _os_log_pack_fill();
          v52 = nullsub_1(v6);
          v53 = strerror(v41);
          *v51 = 136315394;
          *(v51 + 4) = v52;
          *(v51 + 12) = 2080;
          *(v51 + 14) = v53;
          __SC_log_send();
        }
      }

      if (sub_12E28(v6) == 255)
      {
        v26 = 0;
      }

      else
      {
        v26 = sub_65CC(0, 999999);
      }

      v24 = *(v8 + 8);
      v25 = 4;
      goto LABEL_36;
    }

    if (v23 == 5)
    {
      sub_5A04(a1);
      sub_BC60(a1, 0);
      return;
    }

    if (v23 == 4)
    {
      v24 = *(v8 + 8);
      v25 = 20;
      v26 = 0;
LABEL_36:
      timer_set_relative(v24, v25, v26, sub_44814, a1, 2, 0);
    }
  }
}

void sub_44DE4(uint64_t a1, int a2)
{
  v4 = sub_1690(a1);
  v5 = sub_1688(a1);
  v6 = v5;
  if (a2 == 2)
  {
    ++*(v5 + 68);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = nullsub_1(v4);
      v20 = *(v6 + 68);
      *v18 = 136315394;
      *(v18 + 4) = v19;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v20;
      __SC_log_send();
    }

    sub_44814(a1, 0, 0);
  }

  else if (!a2)
  {
    sub_43E1C(a1, 3u);
    v7 = sub_65CC(0, 999999);
    v8 = *(v6 + 8);

    timer_set_relative(v8, 1, v7, sub_44DE4, a1, 2, 0);
  }
}

uint64_t sub_44FE4(uint64_t a1)
{
  v2 = sub_1690(a1);
  v3 = sub_1688(a1);
  if (sub_2BA48(a1))
  {
    return 1;
  }

  v5 = nullsub_1(v2);
  sub_40C00(v5, 1);
  v6 = nullsub_1(v2);
  v7 = sub_4615C(v6);
  v67 = bswap32(v7 | 0xC0000000);
  v8 = nullsub_1(v2);
  v9 = sub_40E30(v8, v67, &G_ip_broadcast, &v67);
  if (v9)
  {
    v10 = v9;
    v11 = sub_2424();
    v12 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      v65 = &v63;
      __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = nullsub_1(v2);
      v24 = v67;
      v25 = BYTE1(v67);
      v64 = v12;
      v26 = v7;
      v27 = BYTE2(v67);
      v63 = v11;
      v28 = HIBYTE(v67);
      v29 = strerror(v10);
      *v22 = 136316674;
      *(v22 + 4) = v23;
      *(v22 + 12) = 1024;
      *(v22 + 14) = v24;
      *(v22 + 18) = 1024;
      *(v22 + 20) = v25;
      *(v22 + 24) = 1024;
      *(v22 + 26) = v27;
      v7 = v26;
      *(v22 + 30) = 1024;
      *(v22 + 32) = v28;
      *(v22 + 36) = 2080;
      *(v22 + 38) = v29;
      *(v22 + 46) = 1024;
      *(v22 + 48) = v10;
      __SC_log_send();
    }

    if (!v7)
    {
      return 0;
    }

    goto LABEL_7;
  }

  v66 = 0;
  v31 = nullsub_1(v2);
  sub_40560(v31, &v66);
  if ((v66 & 0x1000) == 0)
  {
    v32 = nullsub_1(v2);
    if (sub_426DC(v32))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v33 = _os_log_pack_size();
        __chkstk_darwin(v33, v34, v35, v36, v37, v38, v39, v40);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        v43 = nullsub_1(v2);
        *v42 = 136315138;
        *(v42 + 4) = v43;
        __SC_log_send();
      }

      v44 = nullsub_1(v2);
      sub_14308(v44, v67);
      sub_2AED0(a1);
      v45 = sub_144D8(v2);
      sub_143CC(v45, 0, v67);
      if (!v7)
      {
        return 0;
      }

LABEL_7:
      v30 = nullsub_1(v2);
      sub_44360(v30, v7);
      return 0;
    }
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v46 = _os_log_pack_size();
    __chkstk_darwin(v46, v47, v48, v49, v50, v51, v52, v53);
    v54 = *__error();
    v55 = _os_log_pack_fill();
    v56 = nullsub_1(v2);
    v57 = v67;
    v58 = BYTE1(v67);
    v59 = BYTE2(v67);
    v60 = HIBYTE(v67);
    *v55 = 136316162;
    *(v55 + 4) = v56;
    *(v55 + 12) = 1024;
    *(v55 + 14) = v57;
    *(v55 + 18) = 1024;
    *(v55 + 20) = v58;
    *(v55 + 24) = 1024;
    *(v55 + 26) = v59;
    *(v55 + 30) = 1024;
    *(v55 + 32) = v60;
    __SC_log_send();
  }

  v4 = 1;
  sub_2C1A0(a1, 1);
  v61 = sub_144D8(v2);
  sub_143CC(v61, 0, v67);
  *(v3 + 160) = v7;
  return v4;
}

__CFDictionary *sub_45450(const void *a1, int a2)
{
  v3 = bswap32(a2 | 0xC0000000);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_10DF0(Mutable, kSCPropNetIPv4Addresses, v3);
  sub_57874(Mutable, kSCPropNetIPv4Router, 16777408);
  CFDictionarySetValue(Mutable, kSCPropInterfaceName, a1);
  CFDictionarySetValue(Mutable, kSCPropNetIPv4CLAT46, kCFBooleanTrue);
  v7 = v3;
  v5 = sub_10EF0(&v7, &G_ip_broadcast, 0);
  sub_10E78(Mutable, kSCPropNetIPv4AdditionalRoutes, v5);
  CFRelease(v5);
  return Mutable;
}

uint64_t sub_45550(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_1690(a1);
  if (a3 >= 1)
  {
    v7 = result;
    v8 = &dword_0;
    *&v6 = 136315906;
    v43 = v6;
    *&v6 = 136315650;
    v44 = v6;
    do
    {
      v9 = nullsub_1(v7);
      v10 = sub_420DC(v9, a2, 0, *(a2 + 16), *(a2 + 20) | 0x800u, *(a2 + 24), *(a2 + 28));
      sub_2424();
      if (v10 < 0)
      {
        v24 = _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v25 = _os_log_pack_size();
          v46 = &v43;
          __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32);
          v33 = *__error();
          v34 = _os_log_pack_fill();
          v35 = nullsub_1(v7);
          v45 = v24;
          v36 = v35;
          v37 = inet_ntop(30, a2, v47, 0x2Eu);
          v38 = v8;
          v39 = v7;
          v40 = *(a2 + 16);
          v41 = __error();
          v42 = strerror(*v41);
          *v34 = v43;
          *(v34 + 4) = v36;
          *(v34 + 12) = 2080;
          *(v34 + 14) = v37;
          *(v34 + 22) = 1024;
          *(v34 + 24) = v40;
          v7 = v39;
          v8 = v38;
          *(v34 + 28) = 2080;
          *(v34 + 30) = v42;
          goto LABEL_8;
        }
      }

      else
      {
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v11 = _os_log_pack_size();
          __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
          v19 = *__error();
          v20 = _os_log_pack_fill();
          v21 = nullsub_1(v7);
          v22 = inet_ntop(30, a2, v47, 0x2Eu);
          v23 = *(a2 + 16);
          *v20 = v44;
          *(v20 + 4) = v21;
          *(v20 + 12) = 2080;
          *(v20 + 14) = v22;
          *(v20 + 22) = 1024;
          *(v20 + 24) = v23;
LABEL_8:
          result = __SC_log_send();
        }
      }

      a2 += 32;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t sub_4581C(unsigned int a1)
{
  if (a1 < 0x10)
  {
    if (a1 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = a1;
    }

    v12 = arc4random_uniform(1 << (v11 + 10));
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 136315394;
      *(v22 + 4) = "_calculate_randomized_backoff";
      *(v22 + 12) = 1024;
      *(v22 + 14) = v12;
      __SC_log_send();
    }

    if (v12 != -1)
    {
      return v12;
    }
  }

  else
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
      *(v10 + 4) = "_calculate_randomized_backoff";
      __SC_log_send();
    }
  }

  return -1;
}

void sub_45A30(uint64_t a1, const void *a2, __int16 a3)
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
    *(v15 + 4) = "_new_pvd_info_request";
    __SC_log_send();
  }

  v16 = sub_1688(a1);
  v17 = *(v16 + 16);
  sub_43F88(v16);
  sub_55C8C((v16 + 104), a2);
  sub_55D0C(v16 + 104, a3);
  v18 = sub_1BA78(v17, 0);
  v44 = v18;
  if (!v18)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v19 = v18;
  sub_55CC8(v16 + 104, v18);
  v20 = sub_1690(a1);
  v21 = nullsub_1(v20);
  sub_55D04(v16 + 104, v21);
  v22 = PvDInfoRequestCreate();
  *(v16 + 96) = v22;
  if (!v22)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_11:
      v34 = _os_log_pack_size();
      __chkstk_darwin(v34, v35, v36, v37, v38, v39, v40, v41);
      v42 = *__error();
      v43 = _os_log_pack_fill();
      *v43 = 136315138;
      *(v43 + 4) = "_new_pvd_info_request";
      __SC_log_send();
    }

LABEL_12:
    sub_55C00(v16 + 104, 0);
    goto LABEL_13;
  }

  sub_CB80();
  PvDInfoRequestSetCompletionHandler();
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v23 = _os_log_pack_size();
    __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30);
    v31 = *__error();
    v32 = _os_log_pack_fill();
    *v32 = 136315906;
    *(v32 + 4) = "_new_pvd_info_request";
    *(v32 + 12) = 2080;
    *(v32 + 14) = v21;
    *(v32 + 22) = 2112;
    *(v32 + 24) = a2;
    *(v32 + 32) = 2112;
    *(v32 + 34) = v19;
    __SC_log_send();
  }

  v33 = *(v16 + 96);
  PvDInfoRequestResume();
LABEL_13:
  sub_41E8(&v44);
}

void sub_45E80(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "rtadv_pvd_additional_info_request_callback";
    __SC_log_send();
  }

  if (a2 && a1)
  {
    v14 = sub_1688(a1);
    CompletionStatus = PvDInfoRequestGetCompletionStatus();
    if (CompletionStatus)
    {
      if (CompletionStatus == 2)
      {
        v25 = PvDInfoRequestCopyAdditionalInformation();
        sub_55D1C(v14 + 104, v25);
        sub_55D14(v14 + 104, 1);
        sub_55D58(v14 + 104);
        sub_55D90((v14 + 104));
      }

      else
      {
        sub_55D14(v14 + 104, 0);
        sub_55C00(v14 + 104, 1);
        sub_55D58(v14 + 104);
      }
    }

    else
    {
      sub_55C00(v14 + 104, 0);
    }

    sub_166A8(a1);
    sub_41E8((v14 + 96));
    sub_41E8(&v25);
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    __SC_log_enabled();
    v16 = _os_log_pack_size();
    __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
    v24 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
    __break(1u);
  }
}

uint64_t sub_4615C(uint64_t a1)
{
  v2 = 0;
  while (word_702A0[v2])
  {
    if (++v2 == 4)
    {
      LOBYTE(v2) = 0;
      break;
    }
  }

  v3 = v2 + 2;
  v4 = v2;
  v5 = word_702A0[v2];
  sub_2424();
  _SC_syslog_os_log_mapping();
  v6 = __SC_log_enabled();
  if (v5)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else if (v6)
  {
LABEL_9:
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = a1;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v3;
    __SC_log_send();
  }

  ++word_702A0[v4];
  return v3;
}

uint64_t sub_4632C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  if (a2 <= 6)
  {
    if (a2 <= 2)
    {
      v7 = v6;
      if (a2)
      {
        if (a2 == 1)
        {
          v37 = 0uLL;
          v36 = 0;
          sub_2C49C(a1, &v37, &v36);
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

          sub_2C7AC(a1, &v37, v36);
        }
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v20 = _os_log_pack_size();
          __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
          v28 = *__error();
          v29 = _os_log_pack_fill();
          v30 = sub_2AEC8(a1);
          v31 = nullsub_1(v7);
          *v29 = 136315394;
          *(v29 + 4) = v30;
          *(v29 + 12) = 2080;
          *(v29 + 14) = v31;
          __SC_log_send();
        }

        sub_2C47C(a1, a3, *(a3 + 16), (a3 + 20));
        sub_46724(a1);
        v38 = 0;
        memset(&v37, 0, 176);
        v32 = sub_1690(a1);
        v33 = sub_144D8(v32);
        sub_16718(&v37, v33);
        sub_46818(a1, &v37);
        sub_17B18(&v37);
      }

      return 0;
    }

    if (a2 != 3)
    {
      if (a2 == 4)
      {
        sub_467C0(a1);
      }

      return 0;
    }

    goto LABEL_18;
  }

  if (a2 > 10)
  {
    if (a2 == 11)
    {
LABEL_18:
      if (*(a3 + 4) == 1 && *(a3 + 8) == 1 && (a2 != 11 || !sub_2AED8(a1)))
      {
        sub_46724(a1);
      }

      return 0;
    }

    if (a2 == 15)
    {
      sub_46818(a1, a3);
    }
  }

  else
  {
    if (a2 != 7)
    {
      if (a2 != 8)
      {
        return 0;
      }

      goto LABEL_18;
    }

    v37 = 0uLL;
    v36 = 0;
    sub_2C49C(a1, &v37, &v36);
    v34 = **a3 == v37.n128_u64[0] && *(*a3 + 8) == v37.n128_u64[1];
    if (!v34 || *(*a3 + 16) != v36)
    {
      *(a3 + 8) = 1;
    }
  }

  return 0;
}

void sub_46724(uint64_t a1)
{
  v2 = sub_1690(a1);
  if (sub_12E28(v2) == 24)
  {
    sub_46A10(a1);

    sub_46A98(a1);
  }

  else if (sub_169C(a1) == 1)
  {

    sub_467C0(a1);
  }

  else
  {

    sub_46A10(a1);
  }
}

uint64_t sub_467C0(uint64_t a1)
{
  v4 = 0uLL;
  v3 = 0;
  sub_2C49C(a1, &v4, &v3);
  sub_2C7AC(a1, &v4, v3);
  return sub_102A4(a1, 0xCu);
}

void sub_46818(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1690(a1);
  if (a2)
  {
    if (*(a2 + 2))
    {
      v5 = v4;
      v24 = 0uLL;
      v23 = 0;
      sub_2C49C(a1, &v24, &v23);
      v6 = *(a2 + 2);
      if (v6 >= 1)
      {
        for (i = *a2; ; i += 32)
        {
          v8 = *(i + 20);
          if ((v8 & 0x40) == 0 && *i == v24.n128_u64[0] && *(i + 8) == v24.n128_u64[1])
          {
            break;
          }

          if (!--v6)
          {
            return;
          }
        }

        if ((v8 & 4) != 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v10 = _os_log_pack_size();
            __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
            v18 = *__error();
            v19 = _os_log_pack_fill();
            v20 = sub_2AEC8(a1);
            v21 = nullsub_1(v5);
            v22 = inet_ntop(30, &v24, v25, 0x2Eu);
            *v19 = 136315650;
            *(v19 + 4) = v20;
            *(v19 + 12) = 2080;
            *(v19 + 14) = v21;
            *(v19 + 22) = 2080;
            *(v19 + 24) = v22;
            __SC_log_send();
          }

          sub_2C7AC(a1, &v24, v23);
          sub_102A4(a1, 8u);
        }

        else if ((v8 & 2) == 0)
        {
          sub_46A98(a1);
        }
      }
    }
  }
}

uint64_t sub_46A10(uint64_t a1)
{
  v6 = 0uLL;
  v2 = sub_1690(a1);
  v5 = 0;
  sub_2C49C(a1, &v6, &v5);
  if (sub_12E28(v2) == 255 && sub_2BAD4(a1))
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  return sub_2C4B8(a1, &v6, v5, v3, -1, -1);
}

void sub_46A98(uint64_t a1)
{
  v2 = 0u;
  v3 = 0u;
  sub_2C49C(a1, &v2, &v3);
  sub_1C4B0(a1, &v2, 1, 0, 0, 0, 0);
}

__int16 *sub_46AF8(__int16 *result, int a2)
{
  v2 = result != 0;
  v3 = a2 != 0;
  v4 = !v2 || !v3;
  if (v2 && v3)
  {
    v5 = result;
  }

  else
  {
    v5 = &word_5D1A0;
  }

  if (v4)
  {
    v6 = 5;
  }

  else
  {
    v6 = a2;
  }

  off_700F8 = v5;
  dword_70100 = v6;
  return result;
}

BOOL sub_46B34(uint64_t a1, char a2)
{
  result = sub_46B6C(a1, "DHCPv6ClientSetUsePrivateAddress");
  if (result)
  {
    *(a1 + 240) = a2;
  }

  return result;
}

BOOL sub_46B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1EF20(*(a1 + 128));
  v5 = *(a1 + 116);
  if (v5)
  {
    v6 = v4;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      v17 = nullsub_1(v6);
      v18 = *(a1 + 116);
      if (v18 > 3)
      {
        v19 = "<unknown>";
      }

      else
      {
        v19 = off_691A0[v18];
      }

      *v16 = 136315650;
      *(v16 + 4) = a2;
      *(v16 + 12) = 2080;
      *(v16 + 14) = v17;
      *(v16 + 22) = 2080;
      *(v16 + 24) = v19;
      __SC_log_send();
    }
  }

  return v5 == 0;
}

uint64_t sub_46CF0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  result = *(a1 + 192);
  if (result)
  {
    v7 = 0;
    if (sub_1D258(result, 24, &v7 + 1, 0))
    {
      v5 = SHIDWORD(v7) < 1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      *a2 = 1;
    }

    return sub_1D258(*(a1 + 192), 23, &v7, 0) && v7 > 0xF;
  }

  return result;
}

void sub_46D78(uint64_t a1, __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  v6 = *(a1 + 120);
  if (v6 > 0xB)
  {
    v7 = "<unknown>";
  }

  else
  {
    v7 = off_69140[v6];
  }

  sub_578FC(Mutable, @"State", v7);
  v8 = *(a1 + 116);
  if (v8 > 3)
  {
    v9 = "<unknown>";
  }

  else
  {
    v9 = off_691A0[v8];
  }

  sub_578FC(v5, @"Mode", v9);
  v10 = *(a1 + 264);
  if (v10 == *(a1 + 116) && *(a1 + 224) == 1 && *(a1 + 184))
  {
    if (v10 == 3)
    {
      if (*(a1 + 76) || *(a1 + 80) || *(a1 + 84) || *(a1 + 88))
      {
        sub_1CCE0(v5, @"DelegatedPrefix", (a1 + 76));
        sub_1DF6C(v5, @"DelegatedPrefixLength", *(a1 + 92));
      }
    }

    else if (v10 == 2 && (*(a1 + 56) || *(a1 + 60) || *(a1 + 64) || *(a1 + 68)))
    {
      sub_1CCE0(v5, @"StatefulAddress", (a1 + 56));
    }

    sub_1DB1C(v5, @"LeaseStartTime", *(a1 + 200));
    v14 = *(a1 + 216);
    if (v14 == -1)
    {
      CFDictionarySetValue(v5, @"LeaseIsInfinite", kCFBooleanTrue);
    }

    else
    {
      sub_1DB1C(v5, @"LeaseExpirationTime", *(a1 + 200) + v14);
    }
  }

  else
  {
    v11 = *(a1 + 120);
    if (v11 <= 0xA && ((1 << v11) & 0x446) != 0)
    {
      current_time = timer_get_current_time();
      v13 = *(a1 + 160);
      if (current_time > v13)
      {
        sub_1DF6C(v5, @"ElapsedTime", (current_time - v13));
      }
    }
  }

  if (*(a1 + 264) == *(a1 + 116) && *(a1 + 176) && *(a1 + 192))
  {
    v15 = CFStringCreateMutable(0, 0);
    DHCPv6PacketPrintToString(v15, *(a1 + 176), *(a1 + 184));
    sub_5BCA4(v15, *(a1 + 192));
    CFDictionarySetValue(v5, @"Packet", v15);
    CFRelease(v15);
  }

  CFDictionarySetValue(a2, @"DHCPv6", v5);

  CFRelease(v5);
}

_OWORD *sub_47014(uint64_t a1)
{
  v2 = sub_1690(a1);
  v3 = malloc_type_malloc(0x128uLL, 0x10F20403AA70159uLL);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 36) = 0;
  *(v3 + 17) = a1;
  *(v3 + 16) = sub_4E814(v2);
  v4 = nullsub_1(v2);
  snprintf(__str, 0x20uLL, "DHCPv6-%s", v4);
  *(v3 + 18) = timer_callout_init(__str);
  sub_47108(v3);
  return v3;
}

uint64_t sub_47108(uint64_t a1)
{
  v2 = sub_1690(*(a1 + 136));
  v3 = *(a1 + 116);
  if (v3)
  {
    if (v3 <= 3)
    {
      v4 = off_691C0[v3];
    }

    nullsub_1(v2);
    return snprintf(a1, 0x20uLL, "DHCPv6-%s %s");
  }

  else
  {
    nullsub_1(v2);
    return snprintf(a1, 0x20uLL, "DHCPv6 %s");
  }
}

void sub_47190(uint64_t a1)
{
  v2 = sub_1EF20(*(a1 + 128));
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    v13 = nullsub_1(v2);
    v14 = *(a1 + 116);
    if (v14 > 3)
    {
      v15 = "<unknown>";
    }

    else
    {
      v15 = off_691A0[v14];
    }

    v16 = "permanent";
    v17 = *(a1 + 240);
    *(v12 + 4) = "DHCPv6ClientStart";
    *v12 = 136315906;
    *(v12 + 12) = 2080;
    if (v17)
    {
      v16 = "private";
    }

    *(v12 + 14) = v13;
    *(v12 + 22) = 2080;
    *(v12 + 24) = v15;
    *(v12 + 32) = 2080;
    *(v12 + 34) = v16;
    __SC_log_send();
  }

  sub_4732C(a1);
}

void sub_4732C(uint64_t a1)
{
  v2 = sub_1EF20(*(a1 + 128));
  v3 = *(a1 + 116);
  if ((v3 - 2) >= 2)
  {
    if (v3 == 1)
    {

      sub_490F0(a1, 0, 0);
    }

    else
    {
      v35 = v2;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v36 = _os_log_pack_size();
        __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
        v44 = *__error();
        v45 = _os_log_pack_fill();
        v46 = nullsub_1(v35);
        *v45 = 136315394;
        *(v45 + 4) = "DHCPv6ClientStartInternal";
        *(v45 + 12) = 2080;
        *(v45 + 14) = v46;
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
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 136315394;
      *(v13 + 4) = a1;
      *(v13 + 12) = 2080;
      *(v13 + 14) = "DHCPv6ClientStartInternal";
      __SC_log_send();
    }

    current_time = timer_get_current_time();
    if (*(a1 + 264) == *(a1 + 116) && sub_4951C(a1, current_time) && sub_49724(a1))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v15 = _os_log_pack_size();
        __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
        v23 = *__error();
        v24 = _os_log_pack_fill();
        *v24 = 136315394;
        *(v24 + 4) = a1;
        *(v24 + 12) = 2080;
        *(v24 + 14) = "DHCPv6ClientStartInternal";
        __SC_log_send();
      }

      sub_498A8(a1, 0, 0);
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v25 = _os_log_pack_size();
        __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        *v34 = 136315394;
        *(v34 + 4) = a1;
        *(v34 + 12) = 2080;
        *(v34 + 14) = "DHCPv6ClientStartInternal";
        __SC_log_send();
      }

      sub_49EEC(a1, 0, 0);
    }
  }
}

uint64_t sub_47760(uint64_t result, int a2)
{
  if (*(result + 116) != a2)
  {
    v3 = result;
    result = sub_46B6C(result, "DHCPv6ClientSetMode");
    if (result)
    {
      *(v3 + 116) = a2;

      return sub_47108(v3);
    }
  }

  return result;
}

void sub_477C4(uint64_t a1)
{
  if (sub_46B6C(a1, "DHCPv6ClientDiscardInformation"))
  {

    sub_47814(a1);
  }
}

void sub_47814(uint64_t a1)
{
  sub_41E8((a1 + 232));
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v2 = *(a1 + 176);
  if (v2)
  {
    free(v2);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  sub_5BC54((a1 + 192));
  *(a1 + 264) = 0;
  *(a1 + 184) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
}

void sub_47878(uint64_t a1)
{
  sub_47900(a1, "Stop");
  sub_4EF58(*(a1 + 128));
  timer_cancel(*(a1 + 144));
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 92) = 0;
  sub_47BE4(a1, 0);
  *(a1 + 116) = 0;
  sub_41E8((a1 + 248));
  v2 = *(a1 + 32);
  if (v2)
  {

    dispatch_source_merge_data(v2, 1uLL);
  }
}

uint64_t sub_47900(uint64_t a1, uint64_t a2)
{
  result = sub_1EF20(*(a1 + 128));
  v5 = result;
  if (*(a1 + 56) || *(a1 + 60) || *(a1 + 64) || *(a1 + 68))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = inet_ntop(30, (a1 + 56), v33, 0x2Eu);
      *v15 = 136315650;
      *(v15 + 4) = a1;
      *(v15 + 12) = 2080;
      *(v15 + 14) = a2;
      *(v15 + 22) = 2080;
      *(v15 + 24) = v16;
      __SC_log_send();
    }

    v17 = nullsub_1(v5);
    result = sub_41CE4(v17, (a1 + 56));
    if ((result & 0x80000000) != 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v18 = _os_log_pack_size();
        __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
        v26 = *__error();
        v27 = _os_log_pack_fill();
        v28 = nullsub_1(v5);
        v29 = inet_ntop(30, (a1 + 56), v33, 0x2Eu);
        v30 = __error();
        v31 = strerror(*v30);
        v32 = *__error();
        *v27 = 136315906;
        *(v27 + 4) = v28;
        *(v27 + 12) = 2080;
        *(v27 + 14) = v29;
        *(v27 + 22) = 2080;
        *(v27 + 24) = v31;
        *(v27 + 32) = 1024;
        *(v27 + 34) = v32;
        result = __SC_log_send();
      }
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  return result;
}

void sub_47BA8(uint64_t a1)
{
  sub_4EF58(*(a1 + 128));
  v2 = *(a1 + 144);

  timer_cancel(v2);
}

uint64_t sub_47BE4(uint64_t a1, unsigned int a2)
{
  *(a1 + 120) = a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    if (a2 > 0xB)
    {
      v15 = "<unknown>";
    }

    else
    {
      v15 = off_69140[a2];
    }

    *v14 = 136315394;
    *(v14 + 4) = a1;
    *(v14 + 12) = 2080;
    *(v14 + 14) = v15;
    return __SC_log_send();
  }

  return result;
}

void sub_47D30(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 136315394;
      *(v12 + 4) = v1;
      *(v12 + 12) = 2080;
      *(v12 + 14) = "DHCPv6ClientRelease";
      __SC_log_send();
    }

    *a1 = 0;
    if ((*(v1 + 116) & 0xFFFFFFFE) == 2)
    {
      v13 = sub_1EF20(*(v1 + 128));
      v14 = sub_2430(v13);
      if (HIDWORD(v14) || v14 == 0)
      {
        current_time = timer_get_current_time();
        if (sub_4951C(v1, current_time))
        {
          sub_4E158(v1);
        }
      }
    }

    if (*(v1 + 144))
    {
      timer_callout_free((v1 + 144));
    }

    sub_4E9D8((v1 + 128));
    sub_47814(v1);
    sub_47EF8(v1, 0, 0);
    sub_5BC54((v1 + 192));
    sub_41E8((v1 + 248));
    free(v1);
  }
}

void sub_47EF8(void *a1, uint64_t a2, uint64_t a3)
{
  a1[5] = a2;
  a1[6] = a3;
  v4 = a1[4];
  if (a2)
  {
    if (!v4)
    {
      v5 = sub_CB80();
      v6 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v5);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_47FE4;
      handler[3] = &unk_69120;
      handler[4] = a1;
      dispatch_source_set_event_handler(v6, handler);
      dispatch_activate(v6);
      a1[4] = v6;
    }
  }

  else if (v4)
  {
    a1[4] = 0;
    dispatch_source_cancel(v4);

    dispatch_release(v4);
  }
}

uint64_t sub_47FEC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 48);

    return v1(a1, v2, 1);
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      *_os_log_pack_fill() = 0;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_4813C(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *(a2 + 2);
    if (v2)
    {
      if (*(a1 + 120) == 3 && v2 >= 1)
      {
        for (i = *a2; *(a1 + 56) != *i || *(a1 + 64) != *(i + 8); i += 32)
        {
          if (!--v2)
          {
            return;
          }
        }

        v6 = *(i + 20);
        if ((v6 & 4) != 0)
        {

          sub_4E2A8(a1, 0, 0);
        }

        else if ((v6 & 2) != 0)
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
        }

        else
        {
          v7 = *(a1 + 32);
          if (v7)
          {

            dispatch_source_merge_data(v7, 1uLL);
          }
        }
      }
    }
  }
}

void sub_48320(uint64_t a1, _DWORD *a2)
{
  v4 = sub_1EF20(*(a1 + 128));
  v5 = v4;
  if (a2[1] && !a2[2])
  {

    sub_47900(a1, "Wake");
  }

  else if (sub_2480(v4) && *a2 == 1 || !sub_2480(v5) && !a2[3])
  {
    sub_47900(a1, "Wake");
    if (*(a1 + 120) != 1)
    {

      sub_49EEC(a1, 0, 0);
    }
  }

  else
  {
    current_time = timer_get_current_time();
    v7 = sub_4951C(a1, current_time);
    v8 = *(a1 + 120);
    if (v7)
    {
      if ((v8 - 3) > 2 || *a2 == 2)
      {

        sub_498A8(a1, 0, 0);
      }

      else if (*(a1 + 216) != -1)
      {
        v9 = *(a1 + 256);
        v10 = dword_7007C;
        sub_2424();
        _SC_syslog_os_log_mapping();
        v11 = __SC_log_enabled();
        if (current_time >= v9 || (v12 = v9 - current_time, v12 < v10))
        {
          if (v11)
          {
            v23 = _os_log_pack_size();
            __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30);
            v31 = *__error();
            v32 = _os_log_pack_fill();
            *v32 = 136315138;
            *(v32 + 4) = a1;
            __SC_log_send();
          }

          sub_4D20C(a1, 0, 0);
        }

        else
        {
          if (v11)
          {
            v13 = _os_log_pack_size();
            __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
            v21 = *__error();
            v22 = _os_log_pack_fill();
            *v22 = 136315394;
            *(v22 + 4) = a1;
            *(v22 + 12) = 2048;
            *(v22 + 14) = v12;
            __SC_log_send();
          }

          timer_callout_set(*(a1 + 144), sub_4D20C, a1, 0, 0, v12);
        }
      }
    }

    else if (v8 != 1)
    {

      sub_4C82C(a1);
    }
  }
}

void sub_4871C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) && !*(a2 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 136315394;
      *(v22 + 4) = a1;
      *(v22 + 12) = 2080;
      *(v22 + 14) = "DHCPv6ClientHandleLinkStatusRenew";
      __SC_log_send();
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 136315394;
      *(v12 + 4) = a1;
      *(v12 + 12) = 2080;
      *(v12 + 14) = "DHCPv6ClientHandleLinkStatusRenew";
      __SC_log_send();
    }

    sub_4732C(a1);
  }
}

void sub_4891C(uint64_t a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = *(a1 + 120);
    if (v12 > 0xB)
    {
      v13 = "<unknown>";
    }

    else
    {
      v13 = off_69140[v12];
    }

    *v11 = 136315650;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2080;
    *(v11 + 14) = "DHCPv6ClientHandleRoam";
    *(v11 + 22) = 2080;
    *(v11 + 24) = v13;
    __SC_log_send();
  }

  current_time = timer_get_current_time();
  if (sub_4951C(a1, current_time))
  {
    if ((*(a1 + 120) - 3) <= 2)
    {
      sub_498A8(a1, 0, 0);
    }
  }
}

uint64_t sub_48A9C(uint64_t a1, int a2, __CFDictionary *a3)
{
  v6 = sub_1688(a1);
  v55 = v6;
  v7 = sub_1690(a1);
  result = 0;
  if (a2 <= 7)
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          sub_47878(v6);
        }

        else
        {
          if (a2 != 7)
          {
            return result;
          }

          v9 = *a3;
          *(a3 + 2) = 0;
          if (v9)
          {
            if (*(v6 + 112) != *(v9 + 16) || ((v11 = *v9, v10 = v9[1], v11 == *(v6 + 96)) ? (v12 = v10 == *(v6 + 104)) : (v12 = 0), !v12))
            {
              result = 0;
              *(a3 + 2) = 1;
              return result;
            }
          }
        }

        return 0;
      }

      goto LABEL_27;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
        v21 = *__error();
        v22 = _os_log_pack_fill();
        v23 = nullsub_1(v7);
        *v22 = 136315138;
        *(v22 + 4) = v23;
        __SC_log_send();
      }

      if (v6)
      {
        sub_47D30(&v55);
        sub_151FC(a1, 0);
        return 0;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v44 = _os_log_pack_size();
        __chkstk_darwin(v44, v45, v46, v47, v48, v49, v50, v51);
        v52 = *__error();
        v53 = _os_log_pack_fill();
        v54 = nullsub_1(v7);
        *v53 = 136315138;
        *(v53 + 4) = v54;
        goto LABEL_38;
      }
    }

    else
    {
      if (!v6)
      {
        sub_48F48(a1, a3);
        return 0;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v34 = _os_log_pack_size();
        __chkstk_darwin(v34, v35, v36, v37, v38, v39, v40, v41);
        v42 = *__error();
        v43 = _os_log_pack_fill();
        *v43 = 136315138;
        *(v43 + 4) = v6;
LABEL_38:
        __SC_log_send();
        return 6;
      }
    }

    return 6;
  }

  if (a2 > 13)
  {
    switch(a2)
    {
      case 14:
        sub_1BE98(v6, a3);
        break;
      case 16:
        sub_4891C(v6);
        break;
      case 22:
        sub_46D78(v6, a3);
        break;
      default:
        return result;
    }

    return 0;
  }

  if (a2 == 8)
  {
LABEL_27:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = _os_log_pack_size();
      __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
      v32 = *__error();
      v33 = _os_log_pack_fill();
      *v33 = 136315394;
      *(v33 + 4) = v6;
      *(v33 + 12) = 2080;
      *(v33 + 14) = "dhcpv6_pd_thread";
      __SC_log_send();
    }

    sub_47760(v6, 3);
    sub_4871C(v6, a3);
    return 0;
  }

  if (a2 != 11)
  {
    return result;
  }

  sub_48320(v6, a3);
  return 0;
}

void sub_48F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1690(a1);
  v5 = sub_47014(a1);
  sub_151FC(a1, v5);
  sub_47760(v5, 3);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = v5;
    __SC_log_send();
  }

  if (a2 && *(a2 + 16) && *(v5 + 29) == 3)
  {
    *(v5 + 112) = *(a2 + 16);
    v5[6] = *a2;
  }

  sub_47EF8(v5, sub_4E63C, 0);
  v16 = sub_2430(v4);
  if (HIDWORD(v16) || !v16)
  {
    sub_47190(v5);
  }
}

void sub_490F0(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v6 = sub_1EF20(*(a1 + 128));
  if (a2 == 5)
  {
    v40 = 0;
    if (**a3 == 7)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v11 = sub_1D258(a3[2], 2, &v40, 0);
        if (v11)
        {
          if (sub_5B3BC(v11, v40))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v12 = _os_log_pack_size();
              __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
              v20 = *__error();
              v21 = _os_log_pack_fill();
              v22 = DHCPv6MessageTypeName(**a3);
              v23 = *(a1 + 156);
              *v21 = 136315650;
              *(v21 + 4) = a1;
              *(v21 + 12) = 2080;
              *(v21 + 14) = v22;
              *(v21 + 22) = 1024;
              *(v21 + 24) = v23;
              __SC_log_send();
            }

            sub_4A8C4(a1, a3);
            v24 = *(a1 + 32);
            if (v24)
            {
              dispatch_source_merge_data(v24, 1uLL);
            }

            sub_47BE4(a1, 0xBu);
            sub_47BA8(a1);
          }
        }
      }
    }
  }

  else
  {
    v7 = v6;
    if (a2 == 2)
    {
      goto LABEL_32;
    }

    if (a2)
    {
      return;
    }

    sub_47BE4(a1, 0xAu);
    sub_47814(a1);
    *(a1 + 156) = 0;
    v8 = arc4random();
    *(a1 + 152) = v8 & 0xFFFFFF;
    sub_4EB8C(*(a1 + 128), v8 & 0xFFFFFF, sub_490F0, a1, 5);
    if (sub_12E28(v7) == 255)
    {
LABEL_32:
      if (*(a1 + 156))
      {
        v9 = sub_2430(v7);
        if (HIDWORD(v9))
        {
          v10 = 1;
        }

        else
        {
          v10 = v9 == 0;
        }

        if (!v10)
        {

          sub_4A548(a1);
          return;
        }
      }

      else
      {
        *(a1 + 160) = timer_get_current_time();
      }

      v25 = *(a1 + 144);
      sub_4A5B8(a1, 1.0, 3600.0);
      timer_callout_set(v25, sub_490F0, a1, 2, 0, v26);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v27 = _os_log_pack_size();
        __chkstk_darwin(v27, v28, v29, v30, v31, v32, v33, v34);
        v35 = *__error();
        v36 = _os_log_pack_fill();
        v37 = *(a1 + 156);
        *v36 = 136315394;
        *(v36 + 4) = a1;
        *(v36 + 12) = 1024;
        *(v36 + 14) = v37;
        __SC_log_send();
      }

      sub_4A698(a1);
    }

    else
    {
      v38 = *(a1 + 144);
      v39 = arc4random() / 4294967300.0;

      timer_callout_set(v38, sub_490F0, a1, 2, 0, v39);
    }
  }
}

uint64_t sub_4951C(uint64_t a1, double a2)
{
  if (*(a1 + 224) == 1)
  {
    v3 = *(a1 + 216);
    if (v3 != -1)
    {
      v4 = *(a1 + 200);
      if (v4 <= a2)
      {
        if (a2 - v4 >= v3)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v15 = _os_log_pack_size();
            __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
            v23 = *__error();
            v24 = _os_log_pack_fill();
            *v24 = 136315138;
            *(v24 + 4) = a1;
            __SC_log_send();
          }

          sub_47814(a1);
        }
      }

      else
      {
        sub_47814(a1);
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v5 = _os_log_pack_size();
          __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          *v14 = 136315138;
          *(v14 + 4) = a1;
          __SC_log_send();
        }
      }
    }
  }

  return *(a1 + 224);
}

uint64_t sub_49724(uint64_t a1)
{
  v2 = sub_1690(*(a1 + 136));
  if (!sub_2480(v2))
  {
    return 1;
  }

  v3 = sub_CBBC(*(a1 + 136));
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 232);
    if (v5)
    {
      if (CFEqual(v3, v5))
      {
        return 1;
      }
    }
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    v17 = nullsub_1(v4);
    v18 = nullsub_1(*(a1 + 232));
    *v16 = 136315650;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v17;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v18;
    __SC_log_send();
    return 0;
  }

  return result;
}

void sub_498A8(uint64_t a1, int a2, unsigned __int8 **a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1EF20(*(a1 + 128));
  if (a2 == 5)
  {
    v61 = 0;
    v60 = 0;
    v59 = 0;
    v58 = 0;
    if (**a3 == 7)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v15 = sub_1D258(a3[2], 2, &v60, 0);
        if (v15)
        {
          if (sub_5B3BC(v15, v60) && sub_5BD4C(a3[2], &v61, &v59, &v58))
          {
            v16 = v61;
            sub_2424();
            if (v16)
            {
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v17 = _os_log_pack_size();
                __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
                v25 = *__error();
                v26 = _os_log_pack_fill();
                v27 = DHCPv6MessageTypeName(**a3);
                v28 = sub_5BD28(v61);
                v29 = v58;
                v30 = v59;
                *v26 = 136316162;
                *(v26 + 4) = a1;
                *(v26 + 12) = 2080;
                *(v26 + 14) = v27;
                *(v26 + 22) = 2080;
                *(v26 + 24) = v28;
                *(v26 + 32) = 1040;
                *(v26 + 34) = v29;
                *(v26 + 38) = 2080;
                *(v26 + 40) = v30;
                __SC_log_send();
              }

              sub_4C82C(a1);
            }

            else
            {
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v44 = _os_log_pack_size();
                __chkstk_darwin(v44, v45, v46, v47, v48, v49, v50, v51);
                v52 = *__error();
                v53 = _os_log_pack_fill();
                v54 = DHCPv6MessageTypeName(**a3);
                v55 = *(a1 + 156);
                *v53 = 136315650;
                *(v53 + 4) = a1;
                *(v53 + 12) = 2080;
                *(v53 + 14) = v54;
                *(v53 + 22) = 1024;
                *(v53 + 24) = v55;
                __SC_log_send();
              }

              if (*(a1 + 116) == 3)
              {
                v57 = 0;
                if (sub_4B7AC(a1, **a3, 0, a3[2], &v57, 0))
                {
                  sub_4C8A8(a1, **a3, 0, &v57, v56);
                  sub_4A8C4(a1, a3);
                }
              }

              sub_4BECC(a1);
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
      if (!a2)
      {
        sub_47BE4(a1, 6u);
        sub_4EF58(*(a1 + 128));
        timer_cancel(*(a1 + 144));
        *(a1 + 156) = 0;
        v8 = arc4random();
        *(a1 + 152) = v8 & 0xFFFFFF;
        sub_4EB8C(*(a1 + 128), v8 & 0xFFFFFF, sub_498A8, a1, 5);
        v9 = *(a1 + 144);
        v10 = arc4random() / 4294967300.0;

        timer_callout_set(v9, sub_498A8, a1, 2, 0, v10);
      }

      return;
    }

    if (*(a1 + 156))
    {
      v11 = sub_2430(v7);
      if (HIDWORD(v11))
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (!v12)
      {

        sub_4A548(a1);
        return;
      }

      v13 = *(a1 + 160);
      if (current_time <= v13 || current_time - v13 >= 10.0)
      {
        if (sub_4951C(a1, current_time))
        {

          sub_4BECC(a1);
        }

        else
        {

          sub_49EEC(a1, 0, 0);
        }

        return;
      }
    }

    else
    {
      *(a1 + 160) = current_time;
    }

    v31 = *(a1 + 144);
    sub_4A5B8(a1, 1.0, 4.0);
    timer_callout_set(v31, sub_498A8, a1, 2, 0, v32);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v33 = _os_log_pack_size();
      __chkstk_darwin(v33, v34, v35, v36, v37, v38, v39, v40);
      v41 = *__error();
      v42 = _os_log_pack_fill();
      v43 = *(a1 + 156);
      *v42 = 136315394;
      *(v42 + 4) = a1;
      *(v42 + 12) = 1024;
      *(v42 + 14) = v43;
      __SC_log_send();
    }

    sub_4C014(a1);
  }
}

void sub_49EEC(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v6 = sub_1EF20(*(a1 + 128));
  if (a2 == 5)
  {
    v60 = 0;
    v59 = 0;
    v57 = 0;
    v58 = 0;
    if (**a3 == 2)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v12 = sub_1D258(a3[2], 2, &v57, 0);
        if (v12)
        {
          v13 = v12;
          if (sub_5B3BC(v12, v57))
          {
            if (sub_5BD4C(a3[2], &v59, &v58, &v57 + 1))
            {
              if (v59)
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v14 = _os_log_pack_size();
                  __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21);
                  v22 = *__error();
                  v23 = _os_log_pack_fill();
                  v24 = DHCPv6MessageTypeName(**a3);
                  v25 = sub_5BD28(v59);
                  v26 = HIDWORD(v57);
                  v27 = v58;
                  *v23 = 136316162;
                  *(v23 + 4) = a1;
                  *(v23 + 12) = 2080;
                  *(v23 + 14) = v24;
                  *(v23 + 22) = 2080;
                  *(v23 + 24) = v25;
                  *(v23 + 32) = 1040;
                  *(v23 + 34) = v26;
                  *(v23 + 38) = 2080;
                  *(v23 + 40) = v27;
                  __SC_log_send();
                }
              }

              if ((v59 & 0xFFFB) != 2)
              {
                v28 = *(a1 + 116);
                if (v28 == 2)
                {
                  v29 = 1;
                }

                else
                {
                  if (v28 != 3)
                  {
                    return;
                  }

                  v29 = 0;
                }

                if (sub_4B7AC(a1, **a3, v29, a3[2], &v60, 0))
                {
                  sub_4C8A8(a1, **a3, v29, &v60, v43);
                  v44 = sub_4E10C(a3[2]);
                  v45 = *(a1 + 192);
                  if (!v45 || sub_4E10C(v45) < v44)
                  {
                    Mutable = CFStringCreateMutable(0, 0);
                    sub_5B0EC(Mutable, v13, bswap32(*(v13 - 1)) >> 16);
                    sub_2424();
                    _SC_syslog_os_log_mapping();
                    if (__SC_log_enabled())
                    {
                      v47 = _os_log_pack_size();
                      __chkstk_darwin(v47, v48, v49, v50, v51, v52, v53, v54);
                      v55 = *__error();
                      v56 = _os_log_pack_fill();
                      *v56 = 136315394;
                      *(v56 + 4) = a1;
                      *(v56 + 12) = 2112;
                      *(v56 + 14) = Mutable;
                      __SC_log_send();
                    }

                    CFRelease(Mutable);
                    sub_4A8C4(a1, a3);
                    if (*(a1 + 156) > 1 || v44 == 255)
                    {
                      sub_4D8E8(a1, 0, 0);
                    }
                  }
                }
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
      if (!a2)
      {
        sub_47BE4(a1, 1u);
        *(a1 + 156) = 0;
        sub_47814(a1);
        v7 = arc4random();
        *(a1 + 152) = v7 & 0xFFFFFF;
        sub_4EB8C(*(a1 + 128), v7 & 0xFFFFFF, sub_49EEC, a1, 5);
        v8 = *(a1 + 144);
        v9 = arc4random() / 4294967300.0;

        timer_callout_set(v8, sub_49EEC, a1, 2, 0, v9);
      }

      return;
    }

    if (*(a1 + 156))
    {
      v10 = sub_2430(v6);
      if (HIDWORD(v10))
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (!v11)
      {

        sub_4A548(a1);
        return;
      }
    }

    else
    {
      *(a1 + 160) = timer_get_current_time();
    }

    if (*(a1 + 184))
    {

      sub_4D8E8(a1, 0, 0);
    }

    else
    {
      v30 = *(a1 + 144);
      sub_4A5B8(a1, 1.0, 3600.0);
      timer_callout_set(v30, sub_49EEC, a1, 2, 0, v31);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v32 = _os_log_pack_size();
        __chkstk_darwin(v32, v33, v34, v35, v36, v37, v38, v39);
        v40 = *__error();
        v41 = _os_log_pack_fill();
        v42 = *(a1 + 156);
        *v41 = 136315394;
        *(v41 + 4) = a1;
        *(v41 + 12) = 1024;
        *(v41 + 14) = v42;
        __SC_log_send();
      }

      sub_4DDC8(a1);
      if (*(a1 + 116) == 2 && *(a1 + 156) >= 6)
      {
        (*(a1 + 40))(a1, *(a1 + 48), 2);
      }
    }
  }
}