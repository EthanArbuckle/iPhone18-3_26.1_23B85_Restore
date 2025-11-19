_BYTE *sub_10001F754(uint64_t a1)
{
  v2 = sub_10000E74C(a1);
  v3 = sub_100012E18(v2, *(a1 + 8), *(a1 + 16), *a1, sub_10000E84C);
  v4 = sub_10001F33C();
  v5 = sub_100010B1C(v3);
  sub_10001C5A0(v4, v5, v3);
  return v3;
}

uint64_t sub_10001F7BC(const void *a1, _DWORD *a2)
{
  if (*a2)
  {
    sub_100054404();
  }

  if (!a1)
  {
    sub_100054404();
  }

  v4 = qword_10007E038;
  if (!qword_10007E038)
  {
    v4 = sub_100049AE8(32, sub_10001F8A4);
    qword_10007E038 = v4;
  }

  v5 = sub_100049A74(v4, a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_100010B1C(v5);
    sub_10004749C(5, "Coalition Cache Hit: %s [%llu]", a1, v7);

    return sub_100012EB4(v6);
  }

  else
  {
    v9 = sub_10001F754(a2);
    v10 = qword_10007E038;
    v11 = sub_100012EB4(v9);
    sub_10004988C(v10, a1, v11);
    return v9;
  }
}

uint64_t sub_10001F8A4(const char *a1, uint64_t a2)
{
  v4 = sub_100010B1C(a2);
  sub_10004749C(5, "Coalition Cache Evicted: %s [%llu]", a1, v4);

  return sub_100012EE8(a2);
}

rb_tree_t **sub_10001F900(uint64_t a1)
{
  v2 = sub_10001F33C();

  return sub_10001C668(v2, a1);
}

void *sub_10001F964(void *a1)
{
  result = sub_1000130D8(a1, 2);
  if (byte_10007E030 == 1)
  {
    v3 = qword_10007E048;
    if (!qword_10007E048)
    {
      v3 = sub_100010918();
      qword_10007E048 = v3;
    }

    return sub_1000109BC(v3, a1);
  }

  return result;
}

void sub_10001F9E4(uint64_t a1)
{
  os_map_str_delete();
  free(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_10001B690(v2);
  }
}

char *sub_10001FA4C(uint64_t a1, const char *a2, const char *a3)
{
  v4 = sub_10001C0C8(a3);
  *(v4 + 2) = sub_1000166EC(a2);
  return v4;
}

void *sub_10001FA88(uint64_t a1, char *a2, const char *a3, void *a4)
{
  v7 = os_map_str_find();
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  if (!sub_100016A6C(a2, *(v7 + 16)))
  {
    sub_10004749C(65539, "CACHE INVARIANT VIOLATED: %s | %s != %s", a3, a2, v8[2]);
LABEL_6:
    v9 = sub_10001C0C8(a3);
    v9[2] = sub_1000166EC(a2);
    v9[3] = sub_10001B5B8(a4);
    os_map_str_insert();
    return v9;
  }

  v9 = sub_10001B5B8(v8);
  if (!v9)
  {
    goto LABEL_6;
  }

  return v9;
}

uint64_t sub_10001FBAC(uint64_t result, int a2)
{
  if (*result)
  {
    v2 = *(result + 72);
    v3 = *(result + 76);
    *(result + 4 * ((v3 + v2) & 0xF) + 8) = a2 - *result;
    if (v3 > 0xF)
    {
      *(result + 72) = (v2 + 1) & 0xF;
    }

    else
    {
      *(result + 76) = v3 + 1;
    }
  }

  *result = 0;
  return result;
}

uint64_t sub_10001FC1C(uint64_t a1)
{
  result = sub_10001FCC0(a1);
  if (result)
  {
    v3 = *(a1 + 576);
    result = os_map_str_find();
    if (!result)
    {
      v4 = *(a1 + 576);
      v5 = *(a1 + 1056);
      v6 = sub_100014514(0x58uLL, 0x108004088972BE8uLL);
      v6[1] = 1;
      *v6 = v5;
      sub_1000166EC(v4);

      return os_map_str_insert();
    }
  }

  return result;
}

uint64_t sub_10001FCC0(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (!v2 || sub_100032A18(v2) != &unk_10007D8B8 || (*(a1 + 1414) & 0x20) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 248) + 232);

  return sub_100032A28(v4);
}

uint64_t sub_10001FD2C(uint64_t a1)
{
  v2 = sub_100026FE0(a1);
  v3 = (a1 + 1056);
  if (v2)
  {
    v3 = v2;
  }

  return *v3;
}

uint64_t sub_10001FD60(uint64_t a1, uint64_t a2)
{
  if ((byte_10007F0F9 & 1) != 0 || (*(a1 + 1410) & 0x80) != 0)
  {
    return 0;
  }

  if (*(a2 + 32) == sub_10004A738(a1 + 1224))
  {
    return 6;
  }

  return 0;
}

uint64_t sub_10001FDBC(uint64_t a1, uint64_t a2)
{
  if (byte_10007F0F9)
  {
    return 0;
  }

  if ((*(a1 + 1410) & 0x80) != 0)
  {
    return 0;
  }

  if (sub_10004A884(a1 + 1224))
  {
    v5 = 1;
  }

  else if (sub_10004A5D0(a1 + 1224))
  {
    v5 = sub_10004A5FC((a1 + 1224)) == 0;
  }

  else if (*(a1 + 1040))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if (*(a2 + 32) == (v5 & 1))
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001FE68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    v4 = 0;
    do
    {
      v4 |= sub_10003FB1C(v3);
      v3 = *(v3 + 16);
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if (*(a2 + 32) == (v4 & 1))
  {
    return 14;
  }

  else
  {
    return 0;
  }
}

void sub_10001FECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 512);
  if (v6)
  {
    do
    {
      v7 = *v6;
      if (a2 == 9 || *(v6 + 8) == a2)
      {
        v6[5] = sub_10001B5B8(a1);
        v8 = sub_1000157D8();
        dispatch_async_f(v8, v6, sub_100027028);
        v9 = *v6;
        v10 = v6[1];
        if (*v6)
        {
          v9[1] = v10;
        }

        *v10 = v9;
        *v6 = -1;
        v6[1] = -1;
      }

      v6 = v7;
    }

    while (v7);
  }

  sub_10001B5B8(a1);
  if ((a2 - 1) > 8)
  {
    v16 = "WILL_SPAWN";
  }

  else
  {
    v16 = off_100079070[(a2 - 1)];
  }

  sub_100020018(a1, 5, "internal event: %s, code = %ld", v11, v12, v13, v14, v15, v16);
  sub_100043090(a1, a2, a3);
  (*(a1 + 520))(a1, a2, a3, *(a1 + 568));

  sub_10001B690(a1);
}

void sub_100020018(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = sub_100022158(a1, 2);
  sub_1000474DC(v12, a2, a3, &a9, v9);
  free(v12);
}

uint64_t sub_100020084(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = (*(a1 + 528))(a1, a2, *(a1 + 568));
  if (result == 124)
  {
    return 0;
  }

  if (!result)
  {
    if ((*(a1 + 1416) & 2) != 0)
    {
      v23 = "cannot spawn: service is configured as retain only";
    }

    else
    {
      if ((*(a1 + 1410) & 4) == 0)
      {
        v10 = *(a1 + 248);
        if (sub_100032A18(v10) == qword_10007D8B8)
        {
          v25 = qword_10007E210;
          if (qword_10007E210)
          {
            do
            {
              v26 = *v25;
              v27 = *(a1 + 256);
              v28 = *(v25 + 16);
              if (v27)
              {
                if (sub_100016A6C(v28, (v27 + 1424)))
                {
                  goto LABEL_31;
                }
              }

              else if (sub_100016A6C(v28, (a1 + 1424)))
              {
LABEL_31:
                sub_100020018(a1, 5, "matched global attach request before spawn", v11, v12, v13, v14, v15, v67);
                v33 = sub_100032A20(v10);
                xpc_dictionary_set_uint64(*(v25 + 24), "handle", v33);
                if ((*(a1 + 1413) & 4) != 0)
                {
                  xpc_dictionary_set_uuid(*(v25 + 24), "_instance", (a1 + 408));
                }

                sub_10004B2C8(dword_10007F068, *(v25 + 24));
                xpc_release(*(v25 + 24));
                v34 = *v25;
                v35 = *(v25 + 8);
                if (*v25)
                {
                  *(v34 + 8) = v35;
                }

                *v35 = v34;
                free(v25);
                *(a1 + 832) = v2;
                *(a1 + 1346) |= 8u;
                v36 = sub_100026CB4(v2);
                sub_100020018(a1, 5, "service spawn reason '%s' pended until controller attaches", v37, v38, v39, v40, v41, v36);
                sub_100027154(a1, 1);
                v67 = sub_100026CB4(v2);
                v24 = "pended spawn reason '%s': redriving controller attach request";
LABEL_36:
                sub_100020018(a1, 5, v24, v11, v12, v13, v14, v15, v67);
                return 36;
              }

              v25 = v26;
            }

            while (v26);
          }
        }

        v16 = *(a1 + 1144);
        if (v16 && v16 != v2)
        {
          v17 = sub_100026CB4(v2);
          sub_100020018(a1, 5, "ignoring spawn reason '%s' due to filter", v18, v19, v20, v21, v22, v17);
          return 102;
        }

        if (*(a1 + 840))
        {
          v24 = "cannot spawn: service is throttled";
          goto LABEL_36;
        }

        v29 = sub_100026FE0(a1);
        v30 = a1 + 1056;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = a1 + 1056;
        }

        if ((*(v31 + 1) & 1) != 0 || (v2 & 0xFFFFFFF7) == 3 || (*(a1 + 1408) & 0x4000) != 0)
        {
          goto LABEL_27;
        }

        v42 = sub_100026FE0(a1);
        v43 = sub_100026FE0(a1);
        if (v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = a1 + 1056;
        }

        if (v42)
        {
          if (v44 == v30)
          {
            v45 = (a1 + 1224);
          }

          else
          {
            v45 = (v44 + 32);
          }

          if (!*v45)
          {
            goto LABEL_66;
          }

          v46 = sub_100026FE0(a1);
          if (v46)
          {
            v47 = v46;
          }

          else
          {
            v47 = a1 + 1056;
          }

          if (v47 == v30)
          {
            v48 = (a1 + 1224);
          }

          else
          {
            v48 = (v47 + 32);
          }

          if (*v48 != 3)
          {
            if (!*v48)
            {
              sub_100020674(a1);
              goto LABEL_66;
            }

            v51 = 0;
LABEL_63:
            v57 = sub_100020674(a1);
            v58 = v57 - v51;
            if (v57 > v51)
            {
              sub_100020018(a1, 5, "Service only ran for %llu seconds. Pushing respawn out by %llu seconds.", v52, v53, v54, v55, v56, v51);
              if (v57 > *(a1 + 852))
              {
                sub_100020018(a1, 4, "Exponential throttling is in effect for %llu seconds.", v59, v60, v61, v62, v63, v58);
              }

LABEL_67:
              v64 = sub_10000F72C(a1);
              if (v64 <= v58)
              {
                v65 = v58;
              }

              else
              {
                v65 = v64;
              }

              if (v65)
              {
                v66 = v64 > v58;
                *(a1 + 824) = clock_gettime_nsec_np(_CLOCK_MONOTONIC) + 1000000000 * v58;
                sub_100027E70(a1, v65, v2, v66);
                return 36;
              }

LABEL_27:
              v32 = *(a1 + 424);
              if (v32 >= 2)
              {
                if (v32 != 2)
                {
                  v49 = sub_1000271DC(a1);
                  sub_1000441E0("Spawning a service in state %s", v49);
                }

                return 36;
              }

              sub_100027154(a1, 1);
              sub_10002729C(a1, v2);

              return sub_100027470(a1);
            }

LABEL_66:
            v58 = 0;
            goto LABEL_67;
          }

          v50 = sub_10004A640(v48);
        }

        else
        {
          v50 = *(v44 + 8);
        }

        v51 = sub_10000B4A8(v50) / 0x3B9ACA00uLL;
        goto LABEL_63;
      }

      v23 = "cannot spawn: service is in penalty box";
    }

    sub_100020018(a1, 5, v23, v5, v6, v7, v8, v9, v67);
    return 139;
  }

  return result;
}

void sub_100020488(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 840));
  *(a1 + 840) = 0;
  v8 = *(a1 + 856);
  if (v8)
  {
    sub_1000014C0(v8);
    *(a1 + 856) = 0;
  }

  sub_10002813C(a1, 0, v2, v3, v4, v5, v6, v7);
  v9 = sub_100026FE0(a1);
  v10 = a1 + 1056;
  if (v9)
  {
    v10 = v9;
  }

  *(v10 + 1) = 1;
  v11 = *(a1 + 832);
  *(a1 + 832) = 0;
  *(a1 + 824) = 0;
  v12 = sub_100020084(a1, v11);
  sub_100020018(a1, 5, "deferred event: domain spawn response: %d", v13, v14, v15, v16, v17, v12);
  if (v12 && v12 != 36)
  {
    if (v12 == 139)
    {
      sub_1000441E0("deferral event on service in penalty box");
    }

    xpc_strerror();
    sub_100020018(a1, 3, "Deferred spawn of service failed: %d: %s", v18, v19, v20, v21, v22, v12);
  }
}

uint64_t sub_100020564(uint64_t a1)
{
  result = *(a1 + 700);
  if (!result)
  {
    v3 = *(a1 + 256);
    if (v3)
    {
      return *(v3 + 700);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t sub_10002058C(uint64_t a1)
{
  sub_1000205EC(a1);
  v2 = sub_100026FE0(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1 + 1056;
  }

  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_100026FE0(a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1 + 1056;
  }

  return xpc_array_get_count(*(v5 + 16));
}

uint64_t sub_1000205EC(uint64_t a1)
{
  result = sub_100026FE0(a1);
  if (result)
  {
    v3 = result;
  }

  else
  {
    v3 = a1 + 1056;
  }

  if (*(v3 + 16))
  {
    v4 = sub_100026FE0(a1);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = a1 + 1056;
    }

    v6 = *(v5 + 16);
    v7 = sub_100027094(v6, qword_10007DC48);
    xpc_release(v6);
    result = sub_100026FE0(a1);
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = a1 + 1056;
    }

    *(v8 + 16) = v7;
  }

  return result;
}

uint64_t sub_100020674(uint64_t a1)
{
  sub_1000205EC(a1);
  if ((*(a1 + 1414) & 0x10) == 0)
  {
    return *(a1 + 852);
  }

  v2 = sub_100026FE0(a1);
  v3 = a1 + 1056;
  if (v2)
  {
    v3 = v2;
  }

  if (!*(v3 + 16))
  {
    return *(a1 + 852);
  }

  v4 = *(a1 + 1044);
  v5 = sub_10002058C(a1);
  v6 = v5 - v4;
  if (v5 <= v4)
  {
    return *(a1 + 852);
  }

  if (v6 > 0xB)
  {
    return 1200;
  }

  v8 = *(a1 + 852);
  if (!v8)
  {
    sub_100054404();
  }

  v9 = v8 << v6;
  if (v9 >= 0x4B0)
  {
    return 1200;
  }

  else
  {
    return v9;
  }
}

void sub_100020704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a2 + 180) = 0;
  *(a2 + 184) = 0;
  if (*(a1 + 1046) || (*(a1 + 1415) & 8) != 0)
  {
    v11 = *(a1 + 1408);
    if ((byte_10007F0E6 & 1) != 0 || (v11 & 0x20000000000) != 0)
    {
      if ((v11 & 0x800000000000000) != 0)
      {
        if (sub_1000207E8(a1) >= 2)
        {
          v13 = sub_10002086C(*(a1 + 1048));
          sub_100020018(a1, 4, "Enabling panic-on-crash due to consecutive crashes", v14, v15, v16, v17, v18, v19);
          *(a2 + 184) = v13;
          *(a2 + 180) = 1;
        }
      }

      else
      {
        *(a2 + 180) = *(a1 + 1046);
        v12 = *(a1 + 1048);
        if (v12)
        {
          *(a2 + 184) = sub_10002086C(v12);
        }
      }
    }

    else
    {

      sub_100020018(a1, 4, "Disallowing panic-on-crash behavior for non-system service", a4, a5, a6, a7, a8, a9);
    }
  }
}

size_t sub_1000207E8(uint64_t a1)
{
  v2 = sub_100026FE0(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1 + 1056;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = sub_100027094(*(v3 + 24), *(a1 + 1048));
  xpc_release(v4);
  *(v3 + 24) = v5;

  return xpc_array_get_count(v5);
}

uint64_t sub_10002086C(unint64_t a1)
{
  v2 = mach_continuous_time();
  sub_10000B548(a1);
  if (__CFADD__(v2, v3))
  {
    sub_1000441E0("Overflow calculating deadline: %lld + %lld", v2, v3);
  }

  return v2 + v3;
}

uint64_t sub_1000208C0(uint64_t a1)
{
  if ((*(a1 + 1416) & 2) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 1408);
  if ((v2 & 0x220000) == 0 && ((v2 & 0x400000) == 0 || *(a1 + 1040)))
  {
    if ((v2 & 4) != 0)
    {
      if (*(a1 + 1040))
      {
        v3 = 5;
      }

      else
      {
        v3 = 4;
      }

      goto LABEL_4;
    }

    if ((v2 & 0x10) != 0 && !*(a1 + 1040))
    {
      if ((~v2 & 0x80000001000) != 0)
      {
        v3 = 4;
      }

      else
      {
        v3 = 9;
      }

      goto LABEL_4;
    }

    v10 = sub_100026FE0(a1);
    v11 = a1 + 1056;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = a1 + 1056;
    }

    if (v12 == v11)
    {
      v13 = a1 + 1224;
    }

    else
    {
      v13 = v12 + 32;
    }

    if ((*(v13 + 48) & 2) != 0)
    {
      v14 = sub_100026FE0(a1);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = a1 + 1056;
      }

      if (v15 == v11)
      {
        v16 = a1 + 1224;
      }

      else
      {
        v16 = v15 + 32;
      }

      v17 = sub_10004A884(v16);
      v18 = sub_100026FE0(a1);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = a1 + 1056;
      }

      if (v17)
      {
        *(v19 + 1) = 1;
        goto LABEL_40;
      }

      if (v19 == v11)
      {
        v23 = a1 + 1224;
      }

      else
      {
        v23 = v19 + 32;
      }

      v24 = sub_10004A84C(v23);
      v25 = sub_100026FE0(a1);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = a1 + 1056;
      }

      if (v26 == v11)
      {
        v27 = a1 + 1224;
      }

      else
      {
        v27 = v26 + 32;
      }

      if (v24)
      {
        if (!sub_10004A85C(v27))
        {
          if (*(a1 + 936) >= 31)
          {
            v28 = sub_100026FE0(a1);
            if (v28)
            {
              v29 = v28;
            }

            else
            {
              v29 = a1 + 1056;
            }

            *(v29 + 1) = 1;
          }

          if ((*(a1 + 1412) & 8) == 0)
          {
            goto LABEL_88;
          }
        }
      }

      else if (sub_10004A738(v27))
      {
        v30 = sub_100026FE0(a1);
        v31 = v30 ? v30 : a1 + 1056;
        v32 = v31 == v11 ? a1 + 1224 : v31 + 32;
        if (*(v32 + 48))
        {
          v33 = sub_100026FE0(a1);
          if (v33)
          {
            v39 = v33;
          }

          else
          {
            v39 = a1 + 1056;
          }

          if (*(v39 + 4) <= 2u)
          {
            v40 = sub_100026FE0(a1);
            if (v40)
            {
              v41 = v40;
            }

            else
            {
              v41 = a1 + 1056;
            }

            *(v41 + 1) = 1;
LABEL_88:
            v3 = 3;
            goto LABEL_4;
          }

          sub_100020018(a1, 5, "service exceeded successive crash limit. launch will be throttled", v34, v35, v36, v37, v38, v42);
        }
      }
    }

LABEL_40:
    v20 = *(a1 + 136);
    if (v20)
    {
      while ((sub_10004007C(v20) & 1) == 0)
      {
        v20 = *(v20 + 16);
        if (!v20)
        {
          goto LABEL_43;
        }
      }

      v3 = 8;
    }

    else
    {
LABEL_43:
      v21 = a1 + 672;
      do
      {
        v21 = *v21;
        if (!v21)
        {
LABEL_11:
          v3 = 0;
          goto LABEL_12;
        }

        v22 = (*(v21 + 16))(a1, v21);
      }

      while (!v22);
      v3 = v22;
    }

    goto LABEL_4;
  }

  v3 = 7;
LABEL_4:
  if (byte_10007F051)
  {
    v4 = &dword_10007D718;
    v5 = 2;
    goto LABEL_9;
  }

  if (byte_10007F0F9 == 1)
  {
    v4 = &dword_10007D6F8;
    v5 = 8;
LABEL_9:
    while (1)
    {
      v6 = *v4++;
      if (v6 == v3)
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if ((*(a1 + 1412) & 8) != 0)
  {
    v7 = sub_100026FE0(a1);
    v8 = a1 + 1056;
    if (v7)
    {
      v8 = v7;
    }

    *(v8 + 1) = 1;
  }

  return v3;
}

uint64_t sub_100020B7C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a2)
  {
    sub_100020018(a1, 4, "Overriding specified stdin path for inetd-compatible service.", a4, a5, a6, a7, a8, v19);
  }

  v12 = dup(v8);
  if (v12 != -1)
  {
    v13 = v12;
    if (a3)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = dup(v8);
      if (v14 == -1)
      {
        v15 = *__error();
        v17 = v13;
        goto LABEL_15;
      }
    }

    if (a4)
    {
      v16 = -1;
LABEL_11:
      v15 = 0;
      a1[172] = v13;
      a1[173] = v14;
      a1[174] = v16;
      return v15;
    }

    v16 = dup(v8);
    if (v16 != -1)
    {
      goto LABEL_11;
    }

    v15 = *__error();
    sub_1000413F8(v13);
    if (v14 == -1)
    {
      return v15;
    }

    v17 = v14;
LABEL_15:
    sub_1000413F8(v17);
    return v15;
  }

  return *__error();
}

uint64_t sub_100020C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (*(a1 + 1168))
  {
    sub_100020018(a1, 5, "Abandoning PID %d and its process group", a4, a5, a6, a7, a8, *(a1 + 1168));
    sub_10001B5B8(v8);
    *(v8 + 1216) |= 0x20u;
    sub_100020D0C(v8, 1);
    v9 = *(v8 + 1408);
    sub_10001B690(v8);
    if ((v9 & 0x20000000) != 0)
    {
      return 0;
    }
  }

  return v8;
}

void sub_100020D0C(uint64_t a1, char a2)
{
  v4 = *(a1 + 1168);
  v174 = 0uLL;
  *&v175 = 0;
  v5 = sub_100046BD4();
  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = *(a1 + 1168);
    xpc_strerror();
    sub_100020018(a1, 4, "failed to query memory status priority for PID %d: %s (%d)", v8, v9, v10, v11, v12, v7);
  }

  if ((a2 & 1) == 0 && (*(a1 + 1408) & 0x10000) == 0)
  {
    v13 = killpg(*(a1 + 1168), 15);
    if (v13)
    {
      v14 = v13;
      if (*__error() != 3)
      {
        v15 = __error();
        if (v14 == -1 && *v15 != 1)
        {
          sub_100054DE8();
        }
      }
    }
  }

  if ((*(a1 + 1216) & 0x20) != 0)
  {
    sub_10004A648(a1 + 1224);
    LODWORD(v19) = 0;
    LODWORD(v18) = 0;
    v17 = 0;
  }

  else
  {
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v174 = 0u;
    v16 = (a1 + 1224);
    v17 = sub_100049F58(a1 + 1224, *(a1 + 1168), &v174);
    v18 = *(&v191 + 1) >> 10;
    v19 = v189 >> 10;
    if ((sub_100028820(a1) & 1) == 0)
    {
      v25 = sub_100026FE0(a1);
      v26 = v25 ? v25 : a1 + 1056;
      if (v26 != a1 + 1056 && (v26 + 32) != v16 && *(a1 + 1256) > *(v26 + 64))
      {
        v27 = *v16;
        v28 = *(a1 + 1240);
        v29 = *(a1 + 1256);
        *(v26 + 80) = *(a1 + 1272);
        *(v26 + 48) = v28;
        *(v26 + 64) = v29;
        *(v26 + 32) = v27;
      }
    }
  }

  v30 = *(a1 + 1224);
  if (v30 == 2)
  {
    sub_100020018(a1, 3, "wait4() failed", v20, v21, v22, v23, v24, v164);
  }

  else if (!v30)
  {
    sub_100054404();
  }

  if ((*(a1 + 1216) & 2) == 0)
  {
    if (*(a1 + 1224) == 1)
    {
      v31 = "abandoned xpcproxy before exec";
      v32 = a1;
      v33 = 4;
    }

    else
    {
      if (sub_10004A5D0(a1 + 1224))
      {
        v34 = sub_10004A5FC((a1 + 1224));
        v35 = v34;
        if (v34 != 78)
        {
          if ((v34 - 64) <= 0xE)
          {
            v36 = off_100078DB8[v34 - 64];
          }

          sub_100020018(a1, 4, "xpcproxy could not exec: %d: %s", v20, v21, v22, v23, v24, v34);
        }

        v164 = v35;
        v31 = "xpcproxy exited due to exit(%d)";
      }

      else
      {
        v164 = v17;
        v31 = "xpcproxy exited due to %s";
      }

      v32 = a1;
      v33 = 5;
    }

    sub_100020018(v32, v33, v31, v20, v21, v22, v23, v24, v164);
  }

  if (sub_10004A664(a1 + 1224))
  {
    sub_100020018(a1, 4, "removing service since it exited with consistent failure - %s", v37, v38, v39, v40, v41, v17);
  }

  v42 = *(a1 + 1168);
  sub_100010B3C();
  v43 = sub_10000FC98(0x80uLL);
  if (sub_10004A5D0(a1 + 1224))
  {
    v165 = sub_10004A5FC((a1 + 1224));
    sub_10000FD40(v43, "exited due to exit(%d)", v44, v45, v46, v47, v48, v49, v165);
  }

  else if (sub_10004A6A4((a1 + 1224)))
  {
    sub_10000FD40(v43, "exited due to %s", v50, v51, v52, v53, v54, v55, v17);
  }

  else
  {
    v56 = *(a1 + 1228);
    if (v56)
    {
      v169 = *(a1 + 1232);
      sub_10000FD40(v43, "exited with exit reason (namespace: %d code: 0x%llx) - %s", v50, v51, v52, v53, v54, v55, v56);
    }
  }

  v57 = sub_10003339C(*(a1 + 248));
  if (v57)
  {
    sub_10000FD40(v43, " during %s", v58, v59, v60, v61, v62, v63, v57);
  }

  v64 = sub_10004A634(a1 + 1224);
  sub_10000FD40(v43, ", ran for %qums", v65, v66, v67, v68, v69, v70, v64 / 0xF4240);
  sub_100020018(a1, 5, "%s", v71, v72, v73, v74, v75, *v43);
  sub_10000FD04(v43);
  if (*(a1 + 1272) & 2) != 0 && (*(a1 + 1272))
  {
    sub_100020018(a1, 5, "process exited in a dirty state", v76, v77, v78, v79, v80, v166);
  }

  free(v17);
  if (*(a1 + 864))
  {
    sub_10001BB40(a1);
    dispatch_source_cancel(*(a1 + 864));
    dispatch_release(*(a1 + 864));
    *(a1 + 864) = 0;
  }

  if (*(a1 + 872))
  {
    sub_10001BB40(a1);
    dispatch_source_cancel(*(a1 + 872));
    dispatch_release(*(a1 + 872));
    *(a1 + 872) = 0;
  }

  if ((*(a1 + 1412) & 8) != 0)
  {
    if (sub_10004A84C(a1 + 1224))
    {
      sub_100023C34(a1, v81, v87, v82, v83, v84, v85, v86);
    }

    v88 = *(a1 + 136);
    if (v88)
    {
      do
      {
        v89 = v88[2];
        sub_100040094(v88);
        sub_10001B690(v88);
        v88 = v89;
      }

      while (v89);
    }
  }

  if ((*(a1 + 1216) & 2) == 0)
  {
    if (byte_10007F0FA == 1)
    {
      nullsub_23("xpcproxy exited before exec", v81);
    }

    if (*(a1 + 1204))
    {
      v90 = 89;
    }

    else if (sub_10004A8AC(a1 + 1224))
    {
      v90 = 80;
    }

    else if (sub_10004A8F4(a1 + 1224))
    {
      v90 = 162;
    }

    else if (sub_10004A8D0(a1 + 1224))
    {
      v90 = 163;
    }

    else
    {
      v90 = 153;
    }

    sub_1000288C4(a1, v90, 0, v82, v83, v84, v85, v86, v166);
  }

  if (sub_10004A738(a1 + 1224))
  {
    if ((*(a1 + 1415) & 0x10) != 0)
    {
      sub_10002868C(a1);
      if (sub_1000207E8(a1) == *(a1 + 1044))
      {
        v91 = sub_1000245A0(a1);
        v92 = sub_1000168E0("critical process crashes: %s", v91);
        if (sub_100048DD8())
        {
          sub_10004749C(65538, "rebooting due to %s", v92);
          sub_100048E2C(v92);
          v98 = sub_10003283C();
          v99 = sub_1000311F4(v98, 2, 0, 0, 0);
          if (v99)
          {
            sub_10004749C(65538, "perform reboot failed: %d", v99);
          }
        }

        else
        {
          sub_100020018(a1, 5, "Feature disabled, device would have rebooted due to %s", v93, v94, v95, v96, v97, v92);
        }

        free(v92);
      }
    }
  }

  if (sub_10004A7E8(a1 + 1224))
  {
    *(a1 + 1416) |= 4u;
  }

  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  sub_10000F1B0(a1);
  if ((*(a1 + 1410) & 0x10) != 0)
  {
    sub_100020018(a1, 5, "service only configured to run once, removing", v100, v101, v102, v103, v104, v166);
    *(a1 + 368) |= 0x10u;
  }

  else
  {
    sub_10004A664(a1 + 1224);
  }

  if (sub_10004A738(a1 + 1224))
  {
    v105 = sub_100026FE0(a1);
    if (v105)
    {
      v106 = v105;
    }

    else
    {
      v106 = a1 + 1056;
    }

    ++*(v106 + 4);
    v107 = sub_100026FE0(a1);
    if (v107)
    {
      v108 = v107;
    }

    else
    {
      v108 = a1 + 1056;
    }

    v109 = *(v108 + 4);
    v110 = sub_100026FE0(a1);
    if (v110)
    {
      v116 = v110;
    }

    else
    {
      v116 = a1 + 1056;
    }

    if (v116 == a1 + 1056)
    {
      v117 = a1 + 1224;
    }

    else
    {
      v117 = v116 + 32;
    }

    *(v117 + 48);
    sub_100020018(a1, 5, "service has crashed %u times in a row (last was%s dirty)", v111, v112, v113, v114, v115, v109);
    if (!sub_10004A840(a1 + 1224))
    {
      goto LABEL_118;
    }

    sub_100020018(a1, 5, "service has crashed into the shared cache area", v118, v119, v120, v121, v122, v167);
    v123 = sub_100026FE0(a1);
    v129 = *(a1 + 256);
    if (v123)
    {
      if (!v129)
      {
LABEL_113:
        v137 = sub_100026FE0(a1);
        if ((*(a1 + 1414) & 0x40) == 0)
        {
          if (v137)
          {
            v138 = v137;
          }

          else
          {
            v138 = (a1 + 1056);
          }

          *v138 = 1;
        }

        goto LABEL_118;
      }
    }

    else
    {
      if (!v129)
      {
        goto LABEL_113;
      }

      v123 = (v129 + 1056);
    }

    if ((*(v129 + 1414) & 0x40) == 0)
    {
      *v123 = 1;
      sub_100020018(a1, 5, "recorded reslide request for this instance in the original service", v124, v125, v126, v127, v128, v168);
    }

    goto LABEL_113;
  }

  if (sub_100028820(a1))
  {
    sub_100020018(a1, 5, "skipping successive crash reset", v130, v131, v132, v133, v134, v166);
  }

  else
  {
    v135 = sub_100026FE0(a1);
    v136 = a1 + 1056;
    if (v135)
    {
      v136 = v135;
    }

    *(v136 + 4) = 0;
  }

LABEL_118:
  for (i = 688; i != 700; i += 4)
  {
    v140 = *(a1 + i);
    if (v140 != -1)
    {
      sub_1000413F8(v140);
      *(a1 + i) = -1;
    }
  }

  sub_100027154(a1, 8);
  if (*(a1 + 424) != 8)
  {
    sub_100054404();
  }

  if (sub_10004A84C(a1 + 1224) && !sub_10004A85C(a1 + 1224))
  {
    if (!*(a1 + 992))
    {
      *(a1 + 992) = sub_10001FB94();
    }

    v141 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    sub_10001FBF4(*(a1 + 992), v141 / 0xF4240);
  }

  if (*(a1 + 424) != 8)
  {
    sub_100054404();
  }

  v142 = *(a1 + 1168);
  if (*(a1 + 256))
  {
    v143 = *(a1 + 256);
  }

  else
  {
    v143 = a1;
  }

  v144 = *(a1 + 992);
  v172 = v19;
  v173 = v18;
  v170 = *(a1 + 1204);
  v171 = v6;
  if (v144 && (v145 = sub_10001FBFC(v144)) != 0)
  {
    v146 = sub_10001FC04(*(a1 + 992), v145 - 1);
  }

  else
  {
    v146 = -1;
  }

  v147 = (v143 + 1424);
  if (sub_10004A5D0(a1 + 1224))
  {
    v148 = 0;
    v149 = sub_10004A5FC((a1 + 1224));
  }

  else
  {
    v148 = *(a1 + 1228);
    v149 = *(a1 + 1232);
  }

  v150 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v151 = sub_100000FE0(v142);
  v152 = *(a1 + 1180);
  if (!v151)
  {
    sub_10004749C(4, "No spawn timestamp found; service=%s, pid=%d", v147, v142);
  }

  *&v174 = _NSConcreteStackBlock;
  *(&v174 + 1) = 0x40000000;
  *&v175 = sub_1000289E0;
  *(&v175 + 1) = &unk_100078E30;
  *(&v178 + 1) = __PAIR64__(v146, v142);
  *&v176 = v147;
  *(&v176 + 1) = v151;
  *&v177 = v150 / 0xF4240;
  *(&v177 + 1) = v148;
  *&v178 = v149;
  *&v179 = __PAIR64__(v173, v172);
  WORD2(v180) = v171;
  DWORD2(v179) = v170 >> 8;
  HIDWORD(v179) = -1;
  LODWORD(v180) = v152;
  sub_1000011C4();
  sub_10001B5B8(a1);
  sub_10001FECC(a1, 5, 0);
  free(*(a1 + 1152));
  *(a1 + 1152) = 0;
  sub_100027154(a1, 0);
  *(a1 + 1168) = 0;
  *(a1 + 1180) = 16;
  v153 = *(a1 + 1184);
  if (v153)
  {
    dispatch_source_cancel(v153);
    dispatch_release(*(a1 + 1184));
    *(a1 + 1184) = 0;
  }

  if (*(a1 + 1192))
  {
    sub_10001BB40(a1);
    dispatch_source_cancel(*(a1 + 1192));
    dispatch_release(*(a1 + 1192));
    *(a1 + 1192) = 0;
  }

  v154 = *(a1 + 24);
  *(a1 + 1212) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1216) &= 0xF200u;
  v155 = *(a1 + 32);
  if (v154)
  {
    *(v154 + 32) = v155;
  }

  *v155 = v154;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  if ((*(a1 + 368) & 0x10) == 0 && (*(a1 + 1410) & 4) == 0)
  {
    v156 = sub_1000208C0(a1);
    if (v156)
    {
      v157 = sub_100020084(a1, v156);
      if (v157)
      {
        v158 = v157;
        if (v157 != 36 && v157 != 124)
        {
          xpc_strerror();
          sub_100020018(a1, 4, "Failed to respawn: %d: %s", v159, v160, v161, v162, v163, v158);
        }
      }
    }
  }

  if ((*(a1 + 368) & 0x10) == 0 && (*(a1 + 1410) & 4) != 0)
  {
    sub_100027154(a1, 1);
  }

  sub_100028868(a1, -1);
  sub_10001B690(a1);
}

void sub_100021808(uint64_t *a1)
{
  v1 = *a1;
  data = dispatch_source_get_data(*(*a1 + 1184));
  v3 = data;
  if ((data & 0x40000000) == 0)
  {
    if ((data & 0x20000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_100021880(v1);
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  ++*(v1 + 1200);
  if ((data & 0x20000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((data & 0x80000000) == 0)
  {
    return;
  }

LABEL_7:

  sub_100020D0C(v1, 0);
}

uint64_t sub_100021880(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  memset(buffer, 0, sizeof(buffer));
  result = sub_100028338(*(a1 + 1168), buffer);
  if (result)
  {
    result = _os_assumes_log_ctx();
    if ((*(a1 + 1216) & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_5:
    if (*(a1 + 424) > 4u)
    {
      return result;
    }

    sub_100027154(a1, 4);
    *(a1 + 1216) |= 2u;
    if ((*(a1 + 1412) & 8) == 0)
    {
      goto LABEL_16;
    }

    if (byte_10007F180 == 1)
    {
      v9 = *(a1 + 884);
      if (v9)
      {
        v10 = dispatch_time(0, 1000000000 * v9);
LABEL_15:
        v11 = sub_1000157D8();
        *(a1 + 872) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
        sub_10001BB18(a1);
        dispatch_set_context(*(a1 + 872), a1);
        dispatch_source_set_timer(*(a1 + 872), v10, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_source_set_event_handler_f(*(a1 + 872), sub_100028A38);
        dispatch_activate(*(a1 + 872));
LABEL_16:
        sub_10001FECC(a1, 4, 0);
        sub_100028378(a1);
        v12 = sub_1000245A0(a1);
        v13 = sub_100026CB4(*(a1 + 1180));
        v14 = sub_1000168E0("%s", v13);
        v21 = *(a1 + 1168);
        sub_100020018(a1, 5, "Successfully spawned %s[%d] because %s", v15, v16, v17, v18, v19, v12);
        free(v14);
        goto LABEL_17;
      }

      sub_100020018(a1, 4, "Skipping extension launch watchdog", v4, v5, v6, v7, v8, v20);
    }

    v10 = -1;
    goto LABEL_15;
  }

  *(a1 + 1160) = *(&v24 + 1);
  *(a1 + 1172) = DWORD2(v25);
  v3 = *(a1 + 1216);
  if ((v3 & 0x800) == 0)
  {
    v3 = v3 & 0xFFFFF3FF | HIWORD(LODWORD(buffer[0])) & 0x400 | 0x800;
    *(a1 + 1216) = v3;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_5;
  }

  free(*(a1 + 1152));
  *(a1 + 1152) = sub_1000166EC(v23);
LABEL_17:
  ++*(a1 + 1202);
  return sub_100028868(a1, *(a1 + 1168));
}

uint64_t sub_100021AF4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  memset(uu, 0, sizeof(uu));
  v16 = dyld_image_header_containing_address();
  v17 = v16;
  if (!v16)
  {
    uuid_clear(uu);
    if (!a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000441E0("Cannot setup an event for proxyless spawns!");
  }

  _dyld_get_image_uuid();
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19[0] = 0;
  v19[1] = &a9;
  vasprintf(v19, a6, &a9);
  sub_100021C08(*(a1 + 1256), v9 - v17, a4, uu, a2, a3, v19[0]);
  free(v19[0]);
  return a2;
}

void sub_100021C08(uint64_t a1, int a2, int a3, unsigned __int8 *uu, uint64_t a5, int a6, char a7)
{
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (a5 <= 85)
  {
    if (a5 > 79)
    {
      if (a5 == 80)
      {
        v17 = "FairPlay decryption failed on binary.";
      }

      else
      {
        if (a5 != 85)
        {
          goto LABEL_46;
        }

        v17 = "Program specified by service is malformed.";
      }
    }

    else
    {
      if (a5 != 8)
      {
        if (a5 == 32)
        {
          v16 = *(a1 + 700);
          if ((v16 || (v28 = *(a1 + 256)) != 0 && (v16 = *(v28 + 700)) != 0) && v16 != -1)
          {
            v17 = "Service could not notify controller.";
LABEL_44:
            v29 = a1;
            v30 = 4;
            goto LABEL_45;
          }
        }

        goto LABEL_46;
      }

      v17 = "Program specified by service is not a Mach-O executable file.";
    }

LABEL_42:
    v29 = a1;
    v30 = 3;
LABEL_45:
    sub_100020018(v29, v30, v17, v11, v12, v13, v14, v15, v42);
    goto LABEL_46;
  }

  if ((a5 - 114) < 2)
  {
    v18 = *(*(a1 + 248) + 56);
    xpc_strerror();
    if (v18)
    {
      v43 = *(*(a1 + 248) + 56);
      LOBYTE(v42) = a6;
      v17 = "Could not find uid associated with service: %d: %s %u";
    }

    else
    {
      v27 = *(a1 + 800);
      v44 = *(a1 + 808);
      LOBYTE(v42) = a6;
      v17 = "Could not find user/group associated with service: %d: %s %s/%s";
    }

    goto LABEL_44;
  }

  if (a5 == 86)
  {
    v19 = *(a1 + 920);
    if (v19)
    {
      memset(v45, 0, sizeof(v45));
      if (xpc_binprefs_count(v19))
      {
        v20 = 0;
        v21 = v45;
        v22 = 128;
        do
        {
          v23 = xpc_binprefs_cpu_type(v19, v20);
          if (v22 < 2)
          {
            v26 = 0;
          }

          else
          {
            v24 = "(invalid)";
            if ((v23 & 0xFEFFFFFF) - 1 <= 0x11)
            {
              v25 = &off_100078E50[v23 & 0xFEFFFFFF];
              if ((v23 & 0x1000000) == 0)
              {
                v25 = &off_100078EE8[v23];
              }

              v24 = *v25;
            }

            v26 = snprintf(v21, v22, "%u:%s ", v23, v24);
            if (v22 <= v26)
            {
              v26 = v22 - 1;
            }
          }

          v21 += v26;
          v22 -= v26;
          ++v20;
        }

        while (v20 < xpc_binprefs_count(v19));
      }

      v42 = v45;
      v17 = "Program specified by service does not contain one of the requested architectures: %s";
    }

    else
    {
      v17 = "Program specified by service does not contain any valid architectures for this system.";
    }

    goto LABEL_42;
  }

  if (a5 == 111)
  {
    if (a6 >= 1)
    {
      if (a6 == 75)
      {
        v17 = "LaunchServices returned a bundle URL that does not match with the LoginItem's known association.";
      }

      else
      {
        xpc_strerror();
        sub_10001FB70(a1);
        LOBYTE(v42) = a6;
        v17 = "Could not find and/or execute program specified by service: %d: %s: %s";
      }

      goto LABEL_44;
    }

    if (a6 < 0)
    {
      LOBYTE(v42) = a6;
      sub_10001FB70(a1);
      v17 = "Could not resolve CFBundleIdentifier specified by service: %d: %s";
      goto LABEL_44;
    }
  }

LABEL_46:
  xpc_strerror();
  sub_100020018(a1, 3, "Service could not initialize: %s, error 0x%llx - %s", v31, v32, v33, v34, v35, a7);
  v36 = sub_1000106C0();
  sub_100020018(a1, 3, "initialization failure: %s: %s + %llu [%llu][%s]: 0x%llx", v37, v38, v39, v40, v41, v36);
}

uint64_t sub_100021F4C(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return 22;
  }

  if (*(a1 + 616))
  {
    return 37;
  }

  v5 = sub_100010D84(1, 0, object);
  v6 = sub_100010E34(v5);
  if (!v6)
  {
    return 22;
  }

  v7 = v6;
  length = xpc_data_get_length(v6);
  v9 = sub_100014514(length, 0x66270B2DuLL);
  if (xpc_data_get_bytes(v7, v9, 0, length) != length)
  {
    _os_assumes_log_ctx();
  }

  *(a1 + 616) = v9;
  *(a1 + 624) = length;
  *(a1 + 592) += length;
  xpc_release(v5);
  xpc_release(v7);
  return 0;
}

void *sub_100022084(void *result, xpc_object_t object)
{
  if (object)
  {
    v3 = result;
    result = xpc_get_type(object);
    if (result == &_xpc_type_data)
    {
      v4 = v3[75];
      if (v4)
      {
        free(v4);
        v3[74] -= *(v3 + 152);
      }

      length = xpc_data_get_length(object);
      v6 = sub_100014514(length, 0x178D890EuLL);
      result = xpc_data_get_bytes(object, v6, 0, length);
      if (result != length)
      {
        result = _os_assumes_log_ctx();
      }

      v3[75] = v6;
      *(v3 + 152) = length;
      v3[74] += length;
    }
  }

  return result;
}

char *sub_100022158(uint64_t a1, int a2)
{
  if ((a2 - 1) >= 2)
  {
    sub_100054404();
  }

  v10 = sub_10000FC98(0x40uLL);
  v11 = *(a1 + 248);
  if (v11)
  {
    v12 = sub_10002C974(v11, 1);
    sub_10000FD40(v10, "%s/", v13, v14, v15, v16, v17, v18, v12);
    free(v12);
  }

  sub_10000FD40(v10, "%s", v4, v5, v6, v7, v8, v9, a1 - 112);
  if (a2 == 2)
  {
    v25 = *(a1 + 296);
    if (v25 > 0 || (v25 = *(a1 + 1168), v25 >= 1))
    {
      sub_10000FD40(v10, " [%d]", v19, v20, v21, v22, v23, v24, v25);
    }
  }

  v26 = sub_10000FCFC(v10);
  sub_10000FD04(v10);
  return v26;
}

_DWORD *sub_10002223C()
{
  sub_10004AB38(2, sub_10002228C);

  return sub_10004AB38(6, sub_1000225C8);
}

uint64_t sub_10002228C(uint64_t a1, int a2, void *a3, xpc_object_t *a4)
{
  v18 = -1;
  v7 = sub_100028B5C(a3, &v18);
  if (v18 == 36)
  {
    sub_10004B494(a3, "domain deferral", v8, v9, v10, v11, v12, v13, v17);
    return 0;
  }

  v14 = v7;
  if (v7)
  {
    if (*(v7 + 424) == 2)
    {
      sub_100020018(v7, 5, "Deferring IPC (%d) while service is spawning", v9, v10, v11, v12, v13, a2);
      sub_100028DB8(v14, a3, 1);
      return 0;
    }

    v16 = sub_10004AB10();
    result = 45;
    switch(a2)
    {
      case 700:
        result = sub_100028E20(v14, v16, a3, a4);
        break;
      case 701:
        result = sub_1000290D4(v14, v16, a3, a4);
        break;
      case 702:
        result = sub_1000292A8(v14, v16, a3, a4);
        break;
      case 703:
        result = sub_1000294B4(v14, v16, a3, a4);
        break;
      case 704:
        return sub_100029704(v14, v16, a3, a4);
      case 705:
        result = sub_100029C90(v14, v16, a3, a4);
        break;
      case 706:
        result = sub_100029F84(v14, v16);
        break;
      case 707:
        result = sub_100029FF4(v14, v16, a3, a4);
        break;
      case 708:
        result = sub_10002A0CC(v14, v16, a3, a4);
        break;
      case 710:
        result = sub_10002A1A8(v14, v16, a3, a4);
        break;
      case 711:
        result = sub_10002A280(v14, v16, a3, a4);
        break;
      case 712:
        result = sub_10002A37C(v14, v16, a3, a4);
        break;
      case 713:
        result = sub_10002A440(v14, v16, a3, a4);
        break;
      case 715:
        result = sub_10002A66C(v14, v16, a3, a4);
        break;
      case 716:
        result = sub_10002A85C(v14, v16, a3, a4);
        break;
      case 717:
      case 724:
        return result;
      case 718:
        result = sub_10002A938(v14, v16, a3, a4);
        break;
      case 719:
        result = sub_10002A51C(v14, v16, a3, a4);
        break;
      case 720:
        result = sub_10002AA10(v14, a3, a4);
        break;
      case 721:
        result = sub_10002AA84(v14, v16, a3, a4);
        break;
      case 722:
        result = sub_10002AB70(v14, v16, a3, a4);
        break;
      case 723:
        result = sub_10002AC84(v14, v16, a3, a4);
        break;
      case 725:
        result = sub_10002AD38(v14, v16, a3, a4);
        break;
      default:
        result = 33;
        break;
    }
  }

  else
  {
    sub_10004B494(a3, "no service, code = %d", v8, v9, v10, v11, v12, v13, v18);
    result = v18;
    if (a2 == 704 && (v18 & 0xFFFFFFFE) == 0x70)
    {
      v16 = sub_10004AB10();
      return sub_100029704(v14, v16, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1000225C8(uint64_t a1, int a2, void *a3, void *a4)
{
  dword_10007E348 = *(sub_10004AB10() + 5);
  qword_10007E318 = sub_10003283C();
  v25 = -1;
  v7 = sub_100028B5C(a3, &v25);
  v8 = v25;
  if (v25 == 36)
  {
    return 0;
  }

  v9 = v7;
  if (a2 == 301 && v25 == 135)
  {
    v9 = &unk_10007E220;
  }

  else
  {
    if (!v7)
    {
      return v8;
    }

    v8 = 45;
    if ((a2 - 302) < 8 || a2 == 300)
    {
      return v8;
    }

    if (a2 != 301)
    {
      return 33;
    }
  }

  v10 = v9[31];
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v8 = 45;
  v11 = 0;
  switch(xpc_dictionary_get_uint64(a3, "outgsk"))
  {
    case 0uLL:
      goto LABEL_55;
    case 1uLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v14 = *(v9 + 306);
      if (v14 == 2)
      {
        v12 = 11;
      }

      else if (v14)
      {
        v12 = *(v9 + 313);
      }

      else
      {
LABEL_31:
        v12 = 0;
      }

      goto LABEL_53;
    case 3uLL:
      v12 = getuid();
      goto LABEL_53;
    case 4uLL:
      v12 = getpid();
      goto LABEL_53;
    case 6uLL:
      if (sub_100032A18(v10) == &unk_10007D720 || sub_1000443C8(v10))
      {
        v13 = xpc_string_create("System");
        goto LABEL_54;
      }

      v8 = 125;
      goto LABEL_44;
    case 7uLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = (v9[176] >> 2) & 1;
      goto LABEL_53;
    case 8uLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = *(v9 + 224);
      goto LABEL_53;
    case 9uLL:
      goto LABEL_31;
    case 0xAuLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = *(v9 + 212);
      goto LABEL_53;
    case 0xBuLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v11 = xpc_dictionary_create(0, 0, 0);
      for (i = v9[128]; i; i = *i)
      {
        v16 = strrchr(i + 32, 61);
        *v16 = 0;
        xpc_dictionary_set_string(v11, i + 32, v16 + 1);
        *v16 = 61;
      }

      goto LABEL_55;
    case 0xCuLL:
    case 0x18uLL:
    case 0x1AuLL:
      v8 = 126;
      goto LABEL_44;
    case 0xDuLL:
      v12 = 32;
      goto LABEL_53;
    case 0xEuLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      if ((*(v9 + 1412) & 2) == 0)
      {
        v8 = 3;
        goto LABEL_44;
      }

      v12 = *(v9 + 408);
      goto LABEL_53;
    case 0xFuLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = (v9[176] >> 16) & 1;
      goto LABEL_53;
    case 0x10uLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = (v9[176] >> 8) & 1;
      goto LABEL_53;
    case 0x12uLL:
      if (!*(v9 + 74))
      {
        v12 = (v9[176] >> 11) & 1;
LABEL_53:
        v13 = xpc_int64_create(v12);
LABEL_54:
        v11 = v13;
LABEL_55:
        uint64 = xpc_dictionary_get_uint64(a3, "ingsk");
        if (!uint64)
        {
          goto LABEL_94;
        }

        if (*(v9 + 74))
        {
          v8 = 135;
          goto LABEL_58;
        }

        v18 = uint64;
        value = xpc_dictionary_get_value(a3, "in");
        if (!value)
        {
          goto LABEL_94;
        }

        v20 = value;
        v8 = 45;
        if (v18 <= 14)
        {
          if (v18 > 9)
          {
            if (v18 == 10)
            {
              if (xpc_get_type(value) != &_xpc_type_int64)
              {
                goto LABEL_88;
              }

              *(v9 + 212) = xpc_int64_get_value(v20);
            }

            else if (v18 != 13)
            {
              if (v18 != 14)
              {
                goto LABEL_58;
              }

              if (xpc_get_type(value) != &_xpc_type_int64)
              {
                goto LABEL_88;
              }

              v9[176] |= 0x200000000uLL;
              *(v9 + 408) = xpc_int64_get_value(v20);
            }
          }

          else if (v18 != 2)
          {
            if (v18 != 7)
            {
              if (v18 != 8)
              {
                goto LABEL_58;
              }

              if (xpc_get_type(value) == &_xpc_type_int64)
              {
                if (*(v9 + 292))
                {
                  if (v9[111])
                  {
                    sub_100054404();
                  }

                  *(v9 + 224) = xpc_int64_get_value(v20);
                }

                goto LABEL_94;
              }

              goto LABEL_88;
            }

            if (xpc_get_type(value) != &_xpc_type_int64)
            {
LABEL_88:
              v8 = 22;
              goto LABEL_58;
            }

            v21 = v9[176] & 0xFFFFFFFFFFFFFFFBLL | (4 * (xpc_int64_get_value(v20) != 0));
            goto LABEL_93;
          }

LABEL_94:
          reply = xpc_dictionary_create_reply(a3);
          v23 = reply;
          if (v11)
          {
            xpc_dictionary_set_value(reply, "out", v11);
            xpc_release(v11);
          }

          v8 = 0;
          *a4 = v23;
          return v8;
        }

        if (v18 > 17)
        {
          if (v18 != 18 && v18 != 22 && v18 != 23)
          {
LABEL_58:
            if (v11)
            {
              xpc_release(v11);
            }

            return v8;
          }
        }

        else
        {
          if (v18 == 15)
          {
            if (xpc_get_type(value) == &_xpc_type_int64)
            {
              goto LABEL_88;
            }

            v21 = v9[176] & 0xFFFFFFFFFFFEFFFFLL | ((xpc_int64_get_value(v20) != 0) << 16);
LABEL_93:
            v9[176] = v21;
            goto LABEL_94;
          }

          if (v18 == 16)
          {
            if (xpc_get_type(value) == &_xpc_type_int64 && xpc_int64_get_value(v20))
            {
              v9[176] |= 0x100uLL;
            }

            goto LABEL_94;
          }
        }

        v8 = 126;
        goto LABEL_58;
      }

LABEL_43:
      v8 = 135;
LABEL_44:
      if (xpc_dictionary_get_uint64(a3, "ingsk"))
      {
        if (*(v9 + 74))
        {
          return 135;
        }

        else
        {
          return v8;
        }
      }

      return v8;
    default:
      goto LABEL_44;
  }
}

uint64_t sub_100022B5C(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  v2 = *(a1 + 344);
  if (v2)
  {
    return *(v2 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022BA0(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return (*(a1 + 1413) >> 2) & 1;
}

uint64_t sub_100022BD8(int a1)
{
  result = sub_100022C2C(a1);
  if (!result)
  {
    result = sub_100022CA8(a1);
    if (result)
    {

      return sub_100022C2C(a1);
    }
  }

  return result;
}

uint64_t sub_100022C2C(int a1)
{
  v2 = a1;
  for (result = qword_10007E068[sub_100016BA4(&v2, 4) % 0x35uLL]; result; result = *(result + 24))
  {
    if (*(result + 1168) == v2)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_100022CA8(int a1)
{
  sub_100015820();
  if (!a1)
  {
    return 0;
  }

  __dmb(9u);
  v7 = qword_10007E218;
  if (!qword_10007E218)
  {
    return 0;
  }

  while (*(v7 + 1176) != a1)
  {
    v7 = *(v7 + 24);
    if (!v7)
    {
      return 0;
    }
  }

  if (*(v7 + 424) != 2)
  {
    sub_100054404();
  }

  sub_100020018(v7, 5, "speculatively converting service to spawned, pid=%d", v2, v3, v4, v5, v6, a1);

  return sub_100022D58(v7, a1, 0, 1, v9, v10, v11, v12);
}

uint64_t sub_100022D58(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v11 = a1;
  if ((*(a1 + 1216) & 0x80) != 0)
  {
    v12 = "xpcproxy";
  }

  else
  {
    v12 = "service";
  }

  if (*(a1 + 424) != 2)
  {
    sub_100020018(a1, 5, "spawn completed after a speculative conversion", a4, a5, a6, a7, a8, v100);
    if (a3)
    {
      sub_1000441E0("speculatively converted service to spawned, but spawn failed with error %d", a3);
    }

    if (*(v11 + 1176) != a2)
    {
      sub_100054404();
    }

    v24 = *(v11 + 1168);
    if (v24 && v24 != a2)
    {
      sub_1000441E0("speculatively converted service to spawned with PID %d, but the PID is %d", *(v11 + 1168), a2);
    }

    if (v8)
    {
      sub_100054404();
    }

    sub_10001FECC(v11, 8, 0);
    return v11;
  }

  v13 = *(a1 + 1180);
  sub_100015808();
  v19 = *(v11 + 24);
  v20 = *(v11 + 32);
  v21 = (v11 + 24);
  if (v19)
  {
    *(v19 + 32) = v20;
  }

  *v20 = v19;
  *v21 = -1;
  *(v11 + 32) = -1;
  if (a3)
  {
    if ((*(v11 + 1216) & 0x80) != 0)
    {
      v22 = off_10007DC28[0];
      v23 = "trampoline";
    }

    else
    {
      v22 = sub_10001FB70(v11);
      v23 = "service";
    }

    v50 = *(v11 + 1180);
    if (a3 <= 0xD && ((1 << a3) & 0x2104) != 0)
    {
      v51 = *(v11 + 1408);
      if ((v51 & 0x4000000000000) == 0)
      {
        *(v11 + 1408) = v51 | 0x4000000000000;
        strerror(a3);
        sub_100020018(v11, 5, "Remove ability to use bypass the proxy: spawn failed: %d: %s", v52, v53, v54, v55, v56, a3);
      }
    }

    strerror(a3);
    sub_100020018(v11, 5, "%s spawn failed: %d: %s", v57, v58, v59, v60, v61, v23);
    sub_10001B5B8(v11);
    sub_10001FECC(v11, 1, a3);
    strerror(a3);
    sub_100020018(v11, 3, "Could not spawn process %s: %d: %s", v62, v63, v64, v65, v66, v22);
    if ((*(v11 + 1411) & 0x20) == 0)
    {
      sub_10001B690(v11);
      sub_100027154(v11, 0);
      if ((*(v11 + 1216) & 0x80) != 0)
      {
        if ((*(v11 + 368) & 0x10) != 0)
        {
          sub_100054404();
        }

        v77 = sub_100020674(v11);
        sub_100027E70(v11, v77, v50, 0);
      }

      sub_1000288C4(v11, a3, 0, v72, v73, v74, v75, v76, v102);
      goto LABEL_51;
    }

    sub_100020018(v11, 3, "Removed service on spawn failure", v67, v68, v69, v70, v71, v102);
    sub_100027154(v11, 0);
    sub_10001B690(v11);
    return 0;
  }

  *(v11 + 1168) = a2;
  sub_100020018(v11, 5, "%s spawned with pid %d", v14, v15, v16, v17, v18, v12);
  v25 = *(v11 + 1168);
  sub_100010B3C();
  v26 = *(v11 + 1168);
  j__kdebug_trace();
  v27 = &qword_10007E068[sub_100016BA4((v11 + 1168), 4) % 0x35uLL];
  v28 = *v27;
  *(v11 + 24) = *v27;
  if (v28)
  {
    *(v28 + 32) = v21;
  }

  *v27 = v11;
  *(v11 + 32) = v27;
  v29 = *(v11 + 1168);
  v30 = sub_1000157D8();
  v31 = dispatch_source_create(&_dispatch_source_type_proc, v29, 0xE0000000uLL, v30);
  *(v11 + 1184) = v31;
  v32 = sub_10001B550(v11, 26, v31, 0);
  dispatch_set_context(*(v11 + 1184), v32);
  dispatch_source_set_event_handler_f(*(v11 + 1184), sub_100021808);
  dispatch_source_set_registration_handler_f(*(v11 + 1184), sub_10002B15C);
  v33 = *(v11 + 1184);
  dispatch_source_set_mandatory_cancel_handler_f();
  dispatch_activate(*(v11 + 1184));
  if ((*(v11 + 1409) & 0x80) != 0)
  {
    v39 = *(v11 + 192);
    if (!v39)
    {
      v78 = "inetd-compatible service with no sockets.";
LABEL_42:
      sub_100020018(v11, 3, v78, v34, v35, v36, v37, v38, v101);
      goto LABEL_43;
    }

    v104 = 0;
    v105 = 0;
    v103 = 0;
    v40 = sub_10001E820(v39, v11, 0, &v105, &v104, &v103);
    if (v40)
    {
      v44 = v40;
      xpc_strerror();
      sub_100020018(v11, 3, "Could not activate inetd socket: %d: %s", v45, v46, v47, v48, v49, v44);
      goto LABEL_43;
    }

    v79 = v105;
    v80 = *v105;
    v81 = v103;
    if (v103)
    {
      v82 = v104;
      while (1)
      {
        v83 = *v82++;
        if (v83 == 1)
        {
          break;
        }

        ++v79;
        if (!--v81)
        {
          goto LABEL_40;
        }
      }

      v80 = *v79;
    }

LABEL_40:
    v84 = sub_100020B7C(v11, *(v11 + 448), *(v11 + 456), *(v11 + 464), v80, v41, v42, v43);
    if (v84)
    {
      v101 = v84;
      strerror(v84);
      v78 = "Could not setup inetd descriptors: %d: %s";
      goto LABEL_42;
    }
  }

LABEL_43:
  sub_10001FECC(v11, 1, 0);
  if (*(v11 + 424) != 2)
  {
    sub_100054404();
  }

  sub_100027154(v11, 3);
  if (*(v11 + 424) != 3)
  {
    sub_100054404();
  }

  v85 = *(v11 + 1168);
  v86 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  sub_100000ECC(v85, v86 / 0xF4240);
  if ((*(v11 + 1216) & 0x80) == 0)
  {
    sub_100021880(v11);
  }

  if (v8)
  {
    sub_10001FECC(v11, 7, 0);
  }

  if ((*(v11 + 1216) & 0x100) != 0)
  {
    sub_100020018(v11, 5, "redriving pending stop", v87, v88, v89, v90, v91, v101);
    v92 = sub_10000B7FC();
    sub_1000235C4(v11, v92, v93, v94, v95, v96, v97, v98);
LABEL_51:
    *(v11 + 1216) &= ~0x100u;
  }

  return v11;
}

uint64_t sub_1000232CC(uint64_t result)
{
  v1 = result;
  if (*(result + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(result + 296), (result + 1424));
  }

  if (!*(result + 1168) && (*(result + 368) & 0x10) == 0)
  {
    result = sub_1000208C0(result);
    if (result)
    {

      return sub_100020084(v1, result);
    }
  }

  return result;
}

uint64_t sub_100023354(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 424) == 1)
  {
    sub_1000233C0(a1);
  }

  v4 = sub_100026FE0(a1);
  v11 = a1 + 1056;
  if (v4)
  {
    v11 = v4;
  }

  *(v11 + 1) = 1;

  return sub_1000234BC(a1, a2, v5, v6, v7, v8, v9, v10);
}

void sub_1000233C0(uint64_t a1)
{
  if (*(a1 + 424) != 1)
  {
    sub_100054404();
  }

  sub_100027154(a1, 0);
  v7 = *(a1 + 1408);
  if ((v7 & 0x40000) != 0)
  {
    v17 = *(a1 + 136);
    if (v17)
    {
      do
      {
        v18 = v17[2];
        if (sub_100040088(v17))
        {
          sub_100040094(v17);
          sub_10001B690(v17);
        }

        v17 = v18;
      }

      while (v18);
      v7 = *(a1 + 1408);
    }

    *(a1 + 1408) = v7 & 0xFFFFFFFFFFFBFFFFLL;
    v16 = "canceling penalty-box spawn";
  }

  else
  {
    v8 = *(a1 + 840);
    if (!v8)
    {
      goto LABEL_14;
    }

    dispatch_source_cancel(v8);
    *(a1 + 840) = 0;
    *(a1 + 832) = 0;
    v15 = *(a1 + 856);
    if (v15)
    {
      sub_1000014C0(v15);
      *(a1 + 856) = 0;
    }

    sub_10002813C(a1, 0, v9, v10, v11, v12, v13, v14);
    v16 = "canceling throttled spawn";
  }

  sub_100020018(a1, 5, v16, v2, v3, v4, v5, v6, v19);
LABEL_14:

  sub_10001FECC(a1, 1, 89);
}

uint64_t sub_1000234BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  if (a2 == 11)
  {
    v10 = *(a1 + 1408);
    if ((v10 & 0x40000) == 0)
    {
      sub_1000441E0("retry launch on service that was not deferred");
    }

    *(a1 + 1408) = v10 & 0xFFFFFFFFFFFBFFFFLL;
    sub_100020018(a1, 5, "retry launch", a4, a5, a6, a7, a8, v12);
  }

  else if (*(a1 + 424) - 1 <= 1)
  {
    sub_100020018(a1, 5, "launch already in progress", a4, a5, a6, a7, a8, v12);
    return 36;
  }

  if ((*(a1 + 1410) & 4) != 0)
  {
    sub_100020018(a1, 5, "attempt to launch while in penalty box", a4, a5, a6, a7, a8, v12);
    return 139;
  }

  else if (*(a1 + 1168))
  {
    return 37;
  }

  else
  {

    return sub_100020084(a1, a2);
  }
}

uint64_t sub_1000235C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  if ((*(a1 + 368) & 0x10) != 0)
  {
    v10 = *(a1 + 144);
    if (v10)
    {
      do
      {
        v11 = v10[2];
        sub_10003FB28(v10);
        sub_10001B690(v10);
        v10 = v11;
      }

      while (v11);
    }
  }

  v12 = *(a1 + 424);
  if (v12 == 1)
  {
    sub_1000233C0(a1);
    return 89;
  }

  if (!*(a1 + 1168))
  {
    if (v12 == 2)
    {
      sub_100020018(a1, 5, "service spawning, defer stopping", a4, a5, a6, a7, a8, v34);
      if (*(a1 + 1168))
      {
        sub_100054404();
      }

      v26 = *(a1 + 1216);
      *(a1 + 1216) = v26 | 0x100;
      if ((v26 & 0x100) != 0)
      {
        return 37;
      }

      else
      {
        return 36;
      }
    }

    else
    {
      sub_100020018(a1, 5, "service not running, not stopping", a4, a5, a6, a7, a8, v34);
      return 37;
    }
  }

  if (v12 == 7)
  {
    v15 = (*(a1 + 536))(a1, *(a1 + 568));
    v13 = v15;
    if (v15)
    {
      sub_100020018(a1, 5, "cannot abandon languishing service: %d", v16, v17, v18, v19, v20, v15);
      xpc_strerror();
      sub_100020018(a1, 4, "Cannot abandon languishing service: %d: %s", v21, v22, v23, v24, v25, v13);
    }

    else
    {
      sub_100020018(a1, 5, "abandoning languishing service", v16, v17, v18, v19, v20, v34);
      sub_100020C74(a1, v27, v28, v29, v30, v31, v32, v33);
    }

    return v13;
  }

  return sub_10002377C(a1, 0, a2, a4, a5, a6, a7, a8);
}

uint64_t sub_10002377C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 424) - 3 >= 2)
  {
    sub_100020018(a1, 5, "service already stopped", a4, a5, a6, a7, a8, v68);
    return 37;
  }

  memset(v70, 0, sizeof(v70));
  if (!*(a1 + 1168))
  {
    sub_100054404();
  }

  if ((sub_10000BAFC(a3) & 1) == 0)
  {
    v11 = sub_100046B54(*(a1 + 1168), v70);
    if (v11)
    {
      v12 = *(a1 + 1168);
      mach_error_string(v11);
      sub_100020018(a1, 5, "could not get audit token for service (PID %d): %d: %s", v13, v14, v15, v16, v17, v12);
      v18 = dword_10007DC3C;
      v19 = 3;
      goto LABEL_21;
    }
  }

  if (sub_100031138(*(a1 + 248), a3, a1) && !sub_10001A6A4(a3, v70))
  {
    sub_100020018(a1, 5, "caller (PID %d) is not allowed to signal target process: %s", v21, v22, v23, v24, v25, *(a3 + 20));
    return 1;
  }

  if (*(a1 + 1216) & 2) == 0 || (byte_10007F0C5)
  {
    v69 = 0;
    v26 = sub_10002B26C(a1, a3, v70, &v69);
    if (v26 && v26 != 3)
    {
      _os_assumes_log();
    }

    if ((*(a1 + 1216) & 2) != 0)
    {
      if ((byte_10007F0C5 & 1) == 0)
      {
        sub_100054E1C();
      }

      v27 = "sudden shutdown";
    }

    else
    {
      v27 = "aborting trampoline";
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v60 = *(a1 + 1168);
    v19 = sub_1000468E8();
    *(a1 + 1204) = 9;
  }

  else
  {
    if (a2 == 1)
    {
      v27 = "force-kill";
LABEL_18:
      v28 = 9;
      v29 = a1;
      v30 = a3;
      v31 = 9;
LABEL_19:
      v19 = sub_10002B1A4(v29, v30, v70, v31, v27);
      *(a1 + 1204) = v28;
      goto LABEL_20;
    }

    if ((*(a1 + 1413) & 0x40) != 0)
    {
      if (a2)
      {
        sub_100054404();
      }

      v27 = "requested SIGTERM";
      v28 = 15;
      v29 = a1;
      v30 = a3;
      v31 = 15;
      goto LABEL_19;
    }

    if (a2)
    {
      sub_100054404();
    }

    v69 = 0;
    v19 = sub_10002B26C(a1, a3, v70, &v69);
    *(a1 + 1204) = v69;
    if (!v19)
    {
      v61 = *(a1 + 1168);
      sub_100010B4C();
      v62 = strsignal(*(a1 + 1204));
      sub_100020018(a1, 5, "signaled service: %s", v63, v64, v65, v66, v67, v62);
    }
  }

LABEL_20:
  v18 = 0;
  if (!v19)
  {
    LOBYTE(v42) = *(a1 + 1204);
    goto LABEL_25;
  }

LABEL_21:
  strerror(v19);
  sub_100020018(a1, 5, "could not terminate service: %d: %s", v32, v33, v34, v35, v36, v19);
  strerror(v19);
  sub_100020018(a1, 3, "could not terminate service: %d: %s", v37, v38, v39, v40, v41, v19);
  if (!v18)
  {
    v18 = !sub_100046A70(*(a1 + 1168));
  }

  v42 = *(a1 + 1204) & 0xFFFFFF00 | 9;
  *(a1 + 1204) = v42;
LABEL_25:
  if (v42 == 15)
  {
    sub_100027154(a1, 5);
    v43 = sub_10002B4D4;
    if (!v18)
    {
      v18 = *(a1 + 848);
      v43 = sub_10002B4D4;
    }
  }

  else
  {
    if (v42 != 9)
    {
      v45 = strsignal(v42);
      sub_100020018(a1, 4, "Service was sent unexpected signal: %s", v46, v47, v48, v49, v50, v45);
      v44 = sub_10002B2F0;
      v18 = 1;
      goto LABEL_34;
    }

    sub_100027154(a1, 6);
    if (!v18)
    {
      v18 = dword_10007DC3C;
    }

    v43 = sub_10002B2F0;
  }

  v44 = v43;
LABEL_34:
  if (a2 == 2)
  {
    v51 = 10;
  }

  else
  {
    v51 = v18;
  }

  strsignal(*(a1 + 1204));
  sub_100020018(a1, 5, "scheduling cleanup in %llu sec after sending %s", v52, v53, v54, v55, v56, v51);
  if (*(a1 + 1192))
  {
    sub_1000441E0("tried to overwrite service timeout_source");
  }

  v57 = sub_1000157D8();
  *(a1 + 1192) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v57);
  sub_10001BB18(a1);
  dispatch_set_context(*(a1 + 1192), a1);
  dispatch_source_set_event_handler_f(*(a1 + 1192), v44);
  v58 = *(a1 + 1192);
  v59 = dispatch_time(0, 1000000000 * v51);
  dispatch_source_set_timer(v58, v59, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_activate(*(a1 + 1192));
  return 0;
}

uint64_t sub_100023BF8(uint64_t a1)
{
  v2 = sub_10000B7FC();

  return sub_1000235C4(a1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_100023C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 296);
  if (v9)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v9, (a1 + 1424));
  }

  if ((*(a1 + 1412) & 0x20) != 0)
  {

    sub_100023C7C(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_100023C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = *(a1 + 152); i; i = *(i + 16))
  {
    if ((*(i + 88) & 0x40) == 0)
    {
      sub_100020018(a1, 5, "draining messages from %s", a4, a5, a6, a7, a8, i - 88);
      sub_10004D4A8(i, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  for (j = *(a1 + 184); j; j = *(j + 16))
  {
    if ((*(j + 88) & 0x40) == 0)
    {
      sub_100020018(a1, 5, "draining messages from %s", a4, a5, a6, a7, a8, j - 88);
      sub_10004D4A8(j, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

void sub_100023D2C(uint64_t a1)
{
  if (*(a1 + 896))
  {
    if (*(a1 + 888))
    {
      sub_100054404();
    }

    v2 = sub_1000157D8();
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v2);
    *(a1 + 888) = v3;
    dispatch_set_context(v3, a1);
    v4 = *(a1 + 888);
    v5 = dispatch_time(0, 1000000000 * *(a1 + 896));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(*(a1 + 888), sub_100023DF0);
    v6 = *(a1 + 888);

    dispatch_activate(v6);
  }
}

void sub_100023DF0(uint64_t a1)
{
  v2 = sub_100020084(a1, 12);
  sub_100020018(a1, 5, "interval event: domain response: %d", v3, v4, v5, v6, v7, v2);
  if (v2 && v2 != 36 && v2 != 124)
  {
    xpc_strerror();
    sub_100020018(a1, 3, "Interval spawn of service failed: %d: %s", v8, v9, v10, v11, v12, v2);
  }
}

void sub_100023E70(uint64_t a1)
{
  if (*(a1 + 896))
  {
    v2 = *(a1 + 888);
    if (!v2)
    {
      sub_100054404();
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 888));
    *(a1 + 888) = 0;
  }
}

void sub_100023EB4(uint64_t a1)
{
  v2 = *(a1 + 888);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 888));
    *(a1 + 888) = 0;
  }
}

uint64_t sub_100023EEC(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return a1 + 376;
}

uint64_t sub_100023F20(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return *(a1 + 1168);
}

xpc_object_t sub_100023F54(uint64_t a1)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "Label", (a1 + 1424));
  xpc_dictionary_set_BOOL(v2, "OnDemand", (*(a1 + 1408) & 4) == 0);
  v3 = sub_100032A18(*(a1 + 248));
  if (v3 == &unk_10007D720)
  {
    v4 = "System";
  }

  else if (v3 == qword_10007D7A8)
  {
    v4 = "Background";
  }

  else
  {
    if (v3 != &unk_10007D830)
    {
      goto LABEL_9;
    }

    v4 = "Aqua";
  }

  xpc_dictionary_set_string(v2, "LimitLoadToSessionType", v4);
LABEL_9:
  if (sub_10004A8AC(a1 + 1224))
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (sub_10004A680((a1 + 1224)))
  {
    v5 = *(a1 + 1252);
  }

  else
  {
    v5 = 0;
  }

  xpc_dictionary_set_int64(v2, "LastExitStatus", v5);
  v6 = *(a1 + 1168);
  if (v6)
  {
    xpc_dictionary_set_int64(v2, "PID", v6);
  }

  v7 = *(a1 + 448);
  if (v7)
  {
    xpc_dictionary_set_string(v2, "StandardInPath", v7);
  }

  v8 = *(a1 + 456);
  if (v8)
  {
    xpc_dictionary_set_string(v2, "StandardOutPath", v8);
  }

  v9 = *(a1 + 464);
  if (v9)
  {
    xpc_dictionary_set_string(v2, "StandardErrorPath", v9);
  }

  v10 = *(a1 + 1408);
  if ((v10 & 0x100) != 0)
  {
    xpc_dictionary_set_BOOL(v2, "EnableTransactions", 1);
    v10 = *(a1 + 1408);
  }

  if ((v10 & 0x4000) != 0)
  {
    xpc_dictionary_set_BOOL(v2, "inetdCompatibility", 1);
    xpc_dictionary_set_BOOL(v2, "Wait", (*(a1 + 1408) & 0x8000) != 0);
  }

  v11 = *(a1 + 640);
  if (v11)
  {
    xpc_dictionary_set_value(v2, "_AdditionalProperties", v11);
  }

  v12 = sub_10001FB70(a1);
  xpc_dictionary_set_string(v2, "Program", v12);
  if (*(a1 + 428))
  {
    v13 = xpc_array_create(0, 0);
    if (*(a1 + 428))
    {
      v14 = 0;
      do
      {
        xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, *(*(a1 + 432) + 8 * v14++));
      }

      while (v14 < *(a1 + 428));
    }

    xpc_dictionary_set_value(v2, "ProgramArguments", v13);
    xpc_release(v13);
  }

  return v2;
}

xpc_object_t sub_1000241D0(uint64_t a1, char a2)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "extension", (*(a1 + 1408) & 0x800000000) != 0);
  xpc_dictionary_set_BOOL(v4, launch_extension_property_xpc_bundle, (*(a1 + 1408) & 2) != 0);
  v5 = *(a1 + 576);
  if (v5)
  {
    xpc_dictionary_set_string(v4, "bundle-id", v5);
  }

  xpc_dictionary_set_int64(v4, launch_extension_property_pid, *(a1 + 1168));
  if (*sub_10001FB7C(a1) == 47)
  {
    v6 = sub_10001FB7C(a1);
    xpc_dictionary_set_string(v4, "path", v6);
  }

  v7 = *(a1 + 248);
  if (sub_100032A18(v7) == qword_10007D8B8)
  {
    v8 = sub_100032A20(v7);
    v9 = sub_100022BD8(v8);
    if (v9)
    {
      v10 = *(v9 + 576);
      if (v10)
      {
        xpc_dictionary_set_string(v4, launch_extension_property_host_bundle_id, v10);
      }
    }

    xpc_dictionary_set_int64(v4, launch_extension_property_host_pid, v8);
    if ((a2 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 344);
  if (v11)
  {
    v12 = *(v11 + 56);
    goto LABEL_16;
  }

LABEL_15:
  v12 = 0;
LABEL_16:
  v13 = xpc_array_create(0, 0);
  for (i = *(a1 + 152); i; i = *(i + 16))
  {
    if ((*(i + 88) & 0x40) == 0)
    {
      v15 = sub_100016AEC(v12, (i + 168));
      v16 = sub_10004C8C4(i, v15);
      xpc_array_append_value(v13, v16);
      xpc_release(v16);
    }
  }

  for (j = *(a1 + 176); j; j = *(j + 16))
  {
    if ((*(j + 88) & 0x40) == 0)
    {
      v18 = sub_10004C8C4(j, 0);
      xpc_array_append_value(v13, v18);
      xpc_release(v18);
    }
  }

  for (k = *(a1 + 184); k; k = *(k + 16))
  {
    if ((*(k + 88) & 0x40) == 0)
    {
      v20 = sub_100016AEC(v12, (k + 168));
      v21 = sub_10004C8C4(k, v20);
      xpc_array_append_value(v13, v21);
      xpc_release(v21);
    }
  }

  if (xpc_array_get_count(v13))
  {
    xpc_dictionary_set_value(v4, launch_perfcheck_property_endpoints, v13);
  }

  xpc_release(v13);
  v22 = *(a1 + 256);
  if (!v22)
  {
    v22 = a1;
  }

  xpc_dictionary_set_string(v4, "label", (v22 + 1424));
  if ((*(a1 + 1413) & 4) != 0)
  {
    xpc_dictionary_set_uuid(v4, "instance", (a1 + 408));
  }

  xpc_dictionary_set_int64(v4, "jp-priority", *(a1 + 936));
  xpc_dictionary_set_value(v4, "additional-properties", *(a1 + 640));
  v23 = sub_10001FB70(a1);
  xpc_dictionary_set_string(v4, "program", v23);
  xpc_dictionary_set_uint64(v4, "process-type", *(a1 + 912));
  xpc_dictionary_set_BOOL(v4, "keep-alive", (*(a1 + 1408) & 0xCLL) != 0);
  xpc_dictionary_set_BOOL(v4, "run-at-load", (*(a1 + 1408) & 0x10) != 0);
  xpc_dictionary_set_BOOL(v4, "enable-transactions", *(a1 + 1408) & 0x100);
  xpc_dictionary_set_uint64(v4, "service-type", *(a1 + 356));
  xpc_dictionary_set_value(v4, "persist-to-boot-mode", *(a1 + 648));
  return v4;
}

uint64_t sub_100024564(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v2, (a1 + 1424));
  }

  return sub_10001FB70(a1);
}

char *sub_1000245A0(uint64_t a1)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  result = *(a1 + 1152);
  if (!result || *(a1 + 1202) <= 1u)
  {
    v3 = sub_10001FB70(a1);
    v4 = *(a1 + 1408);
    v5 = strrchr(v3, 47);
    v6 = v5;
    if ((v4 & 2) != 0)
    {
      if (v5)
      {
        v7 = strrchr(v5, 46);
        if (v7)
        {
          v3 = v7;
        }

        else
        {
          v3 = v6;
        }
      }
    }

    else if (v5)
    {
      v3 = v5;
    }

    return v3 + 1;
  }

  return result;
}

uint64_t sub_100024648(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return *(a1 + 584);
}

uint64_t sub_10002467C(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return *(a1 + 576);
}

uint64_t sub_1000246B0(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return a1 + 408;
}

uint64_t sub_1000246EC(uint64_t a1, BOOL *a2)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v2, (a1 + 1424));
  }

  *a2 = (*(a1 + 1408) & 0x8000) != 0;
  return (*(a1 + 1409) >> 6) & 1;
}

uint64_t sub_100024730(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return (*(a1 + 1216) >> 1) & 1;
}

uint64_t sub_100024768(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return (*(a1 + 1413) >> 1) & 1;
}

FILE *sub_1000247AC(FILE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10007E210)
  {
    v9 = result;
    sub_100049ECC(result, a2 + 1, "pending global attachments = {", a4, a5, a6, a7, a8);
    v15 = qword_10007E210;
    if (qword_10007E210)
    {
      do
      {
        sub_100049ECC(v9, a2 + 2, "%s", v10, v11, v12, v13, v14, v15[2]);
        v15 = *v15;
      }

      while (v15);
    }

    return sub_100049ECC(v9, a2 + 1, "}", v10, v11, v12, v13, v14);
  }

  return result;
}

uint64_t sub_100024860(uint64_t a1, FILE *a2, uint64_t a3)
{
  v4 = *(a1 + 296);
  if (v4)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v4, (a1 + 1424));
  }

  return sub_10002489C(a1, a2, a3);
}

uint64_t sub_10002489C(uint64_t a1, FILE *a2, uint64_t a3)
{
  v6 = sub_100022158(a1, 1);
  sub_100049ECC(a2, a3, "%s = {", v7, v8, v9, v10, v11, v6);
  free(v6);
  v17 = *(a1 + 256);
  if (v17)
  {
    sub_100049ECC(a2, a3 + 1, "original = %s", v12, v13, v14, v15, v16, v17 + 1424);
  }

  sub_100049ECC(a2, a3 + 1, "active count = %d", v12, v13, v14, v15, v16, *(a1 + 300));
  if (*(a1 + 264))
  {
    sub_100049ECC(a2, a3 + 1, "copy count = %d", v18, v19, v20, v21, v22, *(a1 + 264));
  }

  if (sub_10001FB7C(a1))
  {
    v28 = sub_10001FB7C(a1);
    sub_100049ECC(a2, a3 + 1, "path = %s", v29, v30, v31, v32, v33, v28);
  }

  if (*(a1 + 356) - 1 > 6)
  {
    v34 = "Unknown";
  }

  else
  {
    v34 = off_1000790B8[(*(a1 + 356) - 1)];
  }

  sub_100049ECC(a2, a3 + 1, "type = %s", v23, v24, v25, v26, v27, v34);
  v40 = *(a1 + 344);
  if (v40)
  {
    v41 = *(v40 + 48);
    if (v41)
    {
      type = xpc_get_type(v41);
      if (type == &_xpc_type_array)
      {
        sub_100049ECC(a2, a3 + 1, "managed_by = {", v35, v36, v37, v38, v39);
        v48 = *(*(a1 + 344) + 48);
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 0x40000000;
        applier[2] = sub_10002B6B4;
        applier[3] = &unk_100078FA0;
        applier[4] = a2;
        applier[5] = a3;
        xpc_array_apply(v48, applier);
        sub_100049ECC(a2, a3 + 1, "}", v49, v50, v51, v52, v53, v910);
      }

      else if (type == &_xpc_type_string)
      {
        string_ptr = xpc_string_get_string_ptr(*(*(a1 + 344) + 48));
        sub_100049ECC(a2, a3 + 1, "managed_by = %s", v43, v44, v45, v46, v47, string_ptr);
      }
    }

    v54 = *(a1 + 344);
    if (v54 && *(v54 + 56))
    {
      sub_100049ECC(a2, a3 + 1, "managedby_services = {", v35, v36, v37, v38, v39);
      v55 = *(*(a1 + 344) + 56);
      v937[0] = _NSConcreteStackBlock;
      v937[1] = 0x40000000;
      v937[2] = sub_10002B700;
      v937[3] = &unk_100078FC0;
      v937[4] = a2;
      v937[5] = a3;
      xpc_array_apply(v55, v937);
      sub_100049ECC(a2, a3 + 1, "}", v56, v57, v58, v59, v60);
    }
  }

  v61 = *(a1 + 296);
  if (v61)
  {
LABEL_379:
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v61, (a1 + 1424));
  }

  v62 = *(a1 + 344);
  if (v62)
  {
    v63 = *(v62 + 64);
    if (v63)
    {
      v64 = xpc_string_get_string_ptr(v63);
      sub_100049ECC(a2, a3 + 1, "service jetsam coalition to join = %s", v65, v66, v67, v68, v69, v64);
    }
  }

  LOBYTE(v912) = sub_1000271DC(a1);
  sub_100049ECC(a2, a3 + 1, "state = %s", v70, v71, v72, v73, v74);
  if (*(a1 + 576))
  {
    v912 = *(a1 + 576);
    sub_100049ECC(a2, a3 + 1, "bundle id = %s", v77, v78, v79, v80, v81);
  }

  if ((*(a1 + 1412) & 8) != 0)
  {
    v912 = *(a1 + 584);
    sub_100049ECC(a2, a3 + 1, "extension point = %s", v77, v78, v79, v80, v81);
  }

  v82 = *(a1 + 704);
  if (v82)
  {
    *object_addr = 0u;
    v936 = 0u;
    DWORD1(v936) = v82;
    v941 = 0u;
    v942 = 0u;
    *object_type = 0u;
    v940 = 0u;
    LOBYTE(v912) = sub_100045C2C(object_addr, object_type);
    v929 = *(a1 + 704);
    sub_100049ECC(a2, a3 + 1, "controller = %s.%d", v83, v84, v85, v86, v87);
  }

  sub_100049F4C(a2, v75, v76, v77, v78, v79, v80, v81, v912);
  LOBYTE(v913) = sub_10001FB70(a1);
  sub_100049ECC(a2, a3 + 1, "program = %s", v88, v89, v90, v91, v92);
  if (*(a1 + 1280))
  {
    v913 = *(a1 + 1280);
    sub_100049ECC(a2, a3 + 2, "+ %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 428) || *(a1 + 1288))
  {
    sub_100049ECC(a2, a3 + 1, "arguments = {", v93, v94, v95, v96, v97);
    if (*(a1 + 428))
    {
      v103 = 0;
      do
      {
        sub_100049ECC(a2, a3 + 2, "%s", v98, v99, v100, v101, v102, *(*(a1 + 432) + 8 * v103++));
      }

      while (v103 < *(a1 + 428));
    }

    sub_100049ECC(a2, a3 + 1, "}", v98, v99, v100, v101, v102);
    if (*(a1 + 1288))
    {
      sub_100049F4C(a2, v104, v105, v106, v107, v108, v109, v110, v913);
      sub_100049ECC(a2, a3 + 1, "controller-supplied arguments = {", v111, v112, v113, v114, v115);
      if (xpc_array_get_count(*(a1 + 1288)))
      {
        v121 = 0;
        do
        {
          string = xpc_array_get_string(*(a1 + 1288), v121);
          if (string)
          {
            LOBYTE(v913) = string;
            sub_100049ECC(a2, a3 + 2, "%s", v123, v124, v125, v126, v127);
          }

          ++v121;
        }

        while (v121 < xpc_array_get_count(*(a1 + 1288)));
      }

      sub_100049ECC(a2, a3 + 1, "}", v116, v117, v118, v119, v120);
    }

    sub_100049F4C(a2, v104, v105, v106, v107, v108, v109, v110, v913);
  }

  v128 = *(a1 + 440);
  if (!v128)
  {
    if (!*(a1 + 1296))
    {
      goto LABEL_50;
    }

    v128 = "(unspecified)";
  }

  sub_100049ECC(a2, a3 + 1, "working directory = %s", v93, v94, v95, v96, v97, v128);
  if (*(a1 + 1296))
  {
    v914 = *(a1 + 1296);
    sub_100049ECC(a2, a3 + 2, "+ %s", v131, v132, v133, v134, v135);
  }

  sub_100049F4C(a2, v129, v130, v131, v132, v133, v134, v135, v914);
LABEL_50:
  if (*(a1 + 448))
  {
    v913 = *(a1 + 448);
    sub_100049ECC(a2, a3 + 1, "stdin path = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 456))
  {
    v913 = *(a1 + 456);
    sub_100049ECC(a2, a3 + 1, "stdout path = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 464))
  {
    v913 = *(a1 + 464);
    sub_100049ECC(a2, a3 + 1, "stderr path = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 472))
  {
    v913 = *(a1 + 472);
    sub_100049ECC(a2, a3 + 1, "container id = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 480))
  {
    v913 = *(a1 + 480);
    sub_100049ECC(a2, a3 + 1, "sandbox profile = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 488))
  {
    v913 = *(a1 + 488);
    sub_100049ECC(a2, a3 + 1, "subsystem root = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 1304))
  {
    sub_100049ECC(a2, a3 + 1, "controller-supplied environment = {", v93, v94, v95, v96, v97);
    *object_type = a2;
    *&object_type[2] = 0;
    *&v940 = a3 + 2;
    v136 = *(a1 + 1304);
    xpc_dictionary_apply_f();
    sub_100049ECC(a2, a3 + 1, "}", v137, v138, v139, v140, v141);
    sub_100049F4C(a2, v142, v143, v144, v145, v146, v147, v148, v913);
  }

  if (qword_10007F188)
  {
    sub_100049ECC(a2, a3 + 1, "global environment = {", v93, v94, v95, v96, v97);
    v154 = qword_10007F188;
    if (qword_10007F188)
    {
      do
      {
        sub_10001B880(v154, a3 + 2, a2);
        v154 = *v154;
      }

      while (v154);
    }

    sub_100049ECC(a2, a3 + 1, "}", v149, v150, v151, v152, v153);
    sub_100049F4C(a2, v155, v156, v157, v158, v159, v160, v161, v913);
  }

  if (*(*(a1 + 248) + 96))
  {
    sub_100049ECC(a2, a3 + 1, "inherited environment = {", v93, v94, v95, v96, v97);
    for (i = *(*(a1 + 248) + 96); i; i = *i)
    {
      sub_10001B880(i, a3 + 2, a2);
    }

    sub_100049ECC(a2, a3 + 1, "}", v162, v163, v164, v165, v166);
    sub_100049F4C(a2, v168, v169, v170, v171, v172, v173, v174, v913);
  }

  if (qword_10007F190)
  {
    sub_100049ECC(a2, a3 + 1, "default environment = {", v93, v94, v95, v96, v97);
    v180 = qword_10007F190;
    if (qword_10007F190)
    {
      do
      {
        sub_10001B880(v180, a3 + 2, a2);
        v180 = *v180;
      }

      while (v180);
    }

    sub_100049ECC(a2, a3 + 1, "}", v175, v176, v177, v178, v179);
    sub_100049F4C(a2, v181, v182, v183, v184, v185, v186, v187, v913);
  }

  if (*(a1 + 1032))
  {
    sub_100049ECC(a2, a3 + 1, "environment = {", v93, v94, v95, v96, v97);
    for (j = *(a1 + 1024); j; j = *j)
    {
      sub_10001B880(j, a3 + 2, a2);
    }

    sub_100049ECC(a2, a3 + 1, "}", v188, v189, v190, v191, v192);
    sub_100049F4C(a2, v194, v195, v196, v197, v198, v199, v200, v913);
  }

  v201 = sub_10002C974(*(a1 + 248), 2);
  sub_100049ECC(a2, a3 + 1, "domain = %s", v202, v203, v204, v205, v206, v201);
  free(v201);
  if (*(a1 + 800))
  {
    v915 = *(a1 + 800);
    sub_100049ECC(a2, a3 + 1, "username = %s", v207, v208, v209, v210, v211);
    v214 = *(a1 + 808);
    if (!v214)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v214 = *(a1 + 808);
    if (!v214)
    {
      goto LABEL_86;
    }
  }

  sub_100049ECC(a2, a3 + 1, "group = %s", v207, v208, v209, v210, v211, v214);
LABEL_85:
  sub_100049F4C(a2, v212, v213, v207, v208, v209, v210, v211, v915);
LABEL_86:
  if ((*(a1 + 1412) & 2) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "umask = %o", v207, v208, v209, v210, v211, *(a1 + 816));
  }

  v215 = sub_100020674(a1);
  sub_100049ECC(a2, a3 + 1, "minimum runtime = %u", v216, v217, v218, v219, v220, v215);
  if ((*(a1 + 1414) & 0x10) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "base minimum runtime = %u", v221, v222, v223, v224, v225, *(a1 + 852));
  }

  sub_100049ECC(a2, a3 + 1, "exit timeout = %u", v221, v222, v223, v224, v225, *(a1 + 848));
  if ((*(a1 + 1412) & 8) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "voluntary exit timeout = %u", v226, v227, v228, v229, v230, *(a1 + 880));
    if (byte_10007F180 == 1)
    {
      sub_100049ECC(a2, a3 + 1, "launch watchdog timeout = %u", v231, v232, v233, v234, v235, *(a1 + 884));
    }

    else
    {
      sub_100049ECC(a2, a3 + 1, "launch watchdog timeout = (globally disabled)", v231, v232, v233, v234, v235, v916);
    }
  }

  if (*(a1 + 904))
  {
    sub_100049ECC(a2, a3 + 1, "exception handler endpoint = %s", v226, v227, v228, v229, v230, *(a1 + 904));
  }

  sub_100049ECC(a2, a3 + 1, "runs = %u", v226, v227, v228, v229, v230, *(a1 + 1040));
  v236 = sub_100026FE0(a1);
  if (v236)
  {
    v242 = v236;
  }

  else
  {
    v242 = a1 + 1056;
  }

  v243 = *(v242 + 4);
  if (v243)
  {
    v917 = v243;
    sub_100049ECC(a2, a3 + 1, "successive crashes = %u", v237, v238, v239, v240, v241);
  }

  if (*(a1 + 1168))
  {
    sub_100049ECC(a2, a3 + 1, "pid = %d", v237, v238, v239, v240, v241, *(a1 + 1168));
    v244 = sub_100026CB4(*(a1 + 1180));
    sub_100049ECC(a2, a3 + 1, "immediate reason = %s", v245, v246, v247, v248, v249, v244);
    sub_100049ECC(a2, a3 + 1, "forks = %hu", v250, v251, v252, v253, v254, *(a1 + 1200));
    sub_100049ECC(a2, a3 + 1, "execs = %hu", v255, v256, v257, v258, v259, *(a1 + 1202));
    if (*(a1 + 1216))
    {
      v265 = "1";
    }

    else
    {
      v265 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "initialized = %s", v260, v261, v262, v263, v264, v265);
    if ((*(a1 + 1216) & 2) != 0)
    {
      v271 = "1";
    }

    else
    {
      v271 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "trampolined = %s", v266, v267, v268, v269, v270, v271);
    if ((*(a1 + 1216) & 4) != 0)
    {
      v277 = "1";
    }

    else
    {
      v277 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "started suspended = %s", v272, v273, v274, v275, v276, v277);
    if ((*(a1 + 1216) & 8) != 0)
    {
      v283 = "1";
    }

    else
    {
      v283 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "proxy started suspended = %s", v278, v279, v280, v281, v282, v283);
    if ((*(a1 + 1216) & 0x80) != 0)
    {
      v289 = "1";
    }

    else
    {
      v289 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "uses proxy = %s", v284, v285, v286, v287, v288, v289);
    if ((*(a1 + 1412) & 8) != 0)
    {
      if ((*(a1 + 1216) & 0x40) != 0)
      {
        v295 = "1";
      }

      else
      {
        v295 = "0";
      }

      sub_100049ECC(a2, a3 + 1, "extension alive = %s", v290, v291, v292, v293, v294, v295);
    }

    if (*(a1 + 1212) >= 1)
    {
      sub_100049ECC(a2, a3 + 1, "trial factors memory limit = %d MB", v290, v291, v292, v293, v294, *(a1 + 1212));
    }

    if ((*(a1 + 1216) & 0x400) != 0)
    {
      v296 = "1";
    }

    else
    {
      v296 = "0";
    }

    if ((*(a1 + 1216) & 0x800) != 0)
    {
      v297 = "1";
    }

    else
    {
      v297 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "checked allocations = %s (queried = %s)", v290, v291, v292, v293, v294, v296, v297);
    v303 = *(a1 + 1208);
    if (v303 > 7)
    {
      v304 = "unknown";
    }

    else
    {
      v304 = off_1000790F0[v303];
    }

    sub_100049ECC(a2, a3 + 1, "checked allocations reason = %s", v298, v299, v300, v301, v302, v304);
    v917 = *(a1 + 1210);
    sub_100049ECC(a2, a3 + 1, "checked allocations flags = 0x%x", v305, v306, v307, v308, v309);
  }

  v310 = *(a1 + 288);
  if (v310)
  {
    v917 = sub_100026CB4(v310);
    sub_100049ECC(a2, a3 + 1, "pended spawn = %s", v311, v312, v313, v314, v315);
  }

  v316 = *(a1 + 292);
  if (v316)
  {
    v917 = sub_100026CB4(v316);
    sub_100049ECC(a2, a3 + 1, "pended nondemand spawn = %s", v317, v318, v319, v320, v321);
  }

  v322 = *(a1 + 1144);
  if (v322)
  {
    v917 = sub_100026CB4(v322);
    sub_100049ECC(a2, a3 + 1, "spawn reason filter = %s", v323, v324, v325, v326, v327);
  }

  v328 = *(a1 + 1224);
  switch(v328)
  {
    case 2:
      v329 = "last exit code = (failed reap)";
      goto LABEL_148;
    case 1:
      v329 = "last exit code = (abandoned)";
      goto LABEL_148;
    case 0:
      v329 = "last exit code = (never exited)";
LABEL_148:
      sub_100049ECC(a2, a3 + 1, v329, v237, v238, v239, v240, v241, v917, v929);
      goto LABEL_149;
  }

  if (sub_10004A6A4((a1 + 1224)))
  {
    v330 = sub_10004A6EC((a1 + 1224));
    v917 = strsignal(v330);
    v329 = "last terminating signal = %s";
    goto LABEL_148;
  }

  if (sub_10004A5D0(a1 + 1224))
  {
    v481 = sub_10004A5FC((a1 + 1224));
    if ((v481 - 64) > 0xE)
    {
      sub_100049ECC(a2, a3 + 1, "last exit code = %d", v482, v483, v484, v485, v486, v481, v929);
    }

    else
    {
      sub_100049ECC(a2, a3 + 1, "last exit code = %d: %s", v482, v483, v484, v485, v486, v481, off_100078DB8[(v481 - 64)]);
    }
  }

  else
  {
    if (sub_10004A904(a1 + 1224))
    {
      v329 = "last exit code = (extension watchdogged)";
      goto LABEL_148;
    }

    v903 = sub_10004A4D0(a1 + 1224);
    v909 = "(unknown)";
    if (v903)
    {
      v909 = v903;
    }

    sub_100049ECC(a2, a3 + 1, "last exit reason = %s", v904, v905, v906, v907, v908, v909, v929);
  }

LABEL_149:
  if (sub_10004A84C(a1 + 1224))
  {
    v338 = sub_10004A4D0(a1 + 1224);
    v344 = "(unknown)";
    if (v338)
    {
      v344 = v338;
    }

    sub_100049ECC(a2, a3 + 1, "last jetsam exit details = %s", v339, v340, v341, v342, v343, v344);
  }

  if (*(a1 + 672))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "semaphores = {", v345, v346, v347, v348, v349);
    for (k = *(a1 + 672); k; k = *k)
    {
      v953 = 0u;
      v954 = 0u;
      v951 = 0u;
      v952 = 0u;
      v949 = 0u;
      v950 = 0u;
      v947 = 0u;
      v948 = 0u;
      v945 = 0u;
      v946 = 0u;
      v943 = 0u;
      v944 = 0u;
      v941 = 0u;
      v942 = 0u;
      *object_type = 0u;
      v940 = 0u;
      sub_100049ECC(a2, a3 + 2, "%s%s => %u", v350, v351, v352, v353, v354, k[3], object_type, *(k + 32));
    }

    sub_100049ECC(a2, a3 + 1, "}", v350, v351, v352, v353, v354);
  }

  if (*(a1 + 136))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "event triggers = {", v356, v357, v358, v359, v360);
    for (m = *(a1 + 136); m; m = *(m + 16))
    {
      sub_10003FD70(m, a2, a3 + 2, v361, v362, v363, v364, v365);
    }

    sub_100049ECC(a2, a3 + 1, "}", v361, v362, v363, v364, v365);
  }

  if (*(a1 + 152))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "endpoints = {", v367, v368, v369, v370, v371);
    for (n = *(a1 + 152); n; n = *(n + 16))
    {
      if ((*(n + 88) & 0x40) == 0)
      {
        sub_10004CCB4(n, a2, a3 + 2, v372, v373, v374, v375, v376);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v372, v373, v374, v375, v376);
  }

  if (*(a1 + 160))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "dynamic endpoints = {", v378, v379, v380, v381, v382);
    for (ii = *(a1 + 160); ii; ii = *(ii + 16))
    {
      if ((*(ii + 88) & 0x40) == 0)
      {
        sub_10004CCB4(ii, a2, a3 + 2, v383, v384, v385, v386, v387);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v383, v384, v385, v386, v387);
  }

  if (*(a1 + 168))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "pid-local endpoints = {", v389, v390, v391, v392, v393);
    for (jj = *(a1 + 168); jj; jj = *(jj + 16))
    {
      if ((*(jj + 88) & 0x40) == 0)
      {
        sub_10004CCB4(jj, a2, a3 + 2, v394, v395, v396, v397, v398);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v394, v395, v396, v397, v398);
  }

  if (*(a1 + 184))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "instance-specific endpoints = {", v400, v401, v402, v403, v404);
    for (kk = *(a1 + 184); kk; kk = *(kk + 16))
    {
      if ((*(kk + 88) & 0x40) == 0)
      {
        sub_10004CCB4(kk, a2, a3 + 2, v405, v406, v407, v408, v409);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v405, v406, v407, v408, v409);
  }

  if (*(a1 + 176))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "event channels = {", v411, v412, v413, v414, v415);
    for (mm = *(a1 + 176); mm; mm = *(mm + 16))
    {
      if ((*(mm + 88) & 0x40) == 0)
      {
        sub_10004CCB4(mm, a2, a3 + 2, v416, v417, v418, v419, v420);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v416, v417, v418, v419, v420);
  }

  if (*(a1 + 192))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "sockets = {", v422, v423, v424, v425, v426);
    for (nn = *(a1 + 192); nn; nn = *(nn + 16))
    {
      sub_10001EBE8(nn, a2, a3 + 2, v427, v428, v429, v430, v431);
    }

    sub_100049ECC(a2, a3 + 1, "}", v427, v428, v429, v430, v431);
  }

  if (*(a1 + 200))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "instances = {", v433, v434, v435, v436, v437);
    for (i1 = *(a1 + 200); i1; i1 = *(i1 + 40))
    {
      sub_100049ECC(a2, a3 + 2, "%s,", v438, v439, v440, v441, v442, i1 + 1424);
    }

    sub_100049ECC(a2, a3 + 1, "}", v438, v439, v440, v441, v442);
  }

  if (*(a1 + 648))
  {
    sub_100049F4C(a2, v331, v332, v333, v334, v335, v336, v337, v918);
    sub_100049ECC(a2, a3 + 1, "persist to boot modes = {", v444, v445, v446, v447, v448);
    v449 = *(a1 + 648);
    v934[0] = _NSConcreteStackBlock;
    v934[1] = 0x40000000;
    v934[2] = sub_10002B7C0;
    v934[3] = &unk_100078FE0;
    v934[4] = a2;
    v934[5] = a3;
    xpc_array_apply(v449, v934);
    sub_100049ECC(a2, a3 + 1, "}", v450, v451, v452, v453, v454);
  }

  if ((*(a1 + 1416) & 2) != 0)
  {
    v455 = "1";
  }

  else
  {
    v455 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "retain only = %s", v333, v334, v335, v336, v337, v455);
  sub_100049F4C(a2, v456, v457, v458, v459, v460, v461, v462, v919);
  v468 = *(a1 + 1372);
  if (v468 + 1 >= 2)
  {
    object_type[0] = 0;
    object_addr[0] = 0;
    if (mach_port_kernel_object(mach_task_self_, v468, object_type, object_addr))
    {
      sub_100049ECC(a2, a3 + 1, "dext checkin port = %#x [unable to get port information]", v469, v470, v471, v472, v473, *(a1 + 1372), v930, v933);
    }

    else
    {
      sub_100049ECC(a2, a3 + 1, "dext checkin port = %#x [type %u, object %#x]", v469, v470, v471, v472, v473, *(a1 + 1372), object_type[0], object_addr[0]);
    }

    sub_100049F4C(a2, v474, v475, v476, v477, v478, v479, v480, v921);
  }

  if (*(a1 + 304))
  {
    v920 = *(a1 + 304);
    sub_100049ECC(a2, a3 + 1, "persistent resource coalition = %s", v463, v464, v465, v466, v467);
  }

  sub_10002B834("resource", *(a1 + 312), a2, a3 + 1, v464, v465, v466, v467, v920);
  sub_10002B834("jetsam", *(a1 + 320), a2, a3 + 1, v487, v488, v489, v490, v922);
  v496 = *(a1 + 912);
  if (v496 >= 0x100)
  {
    v497 = v496 >> 8;
    if (v496 > 0x6FF)
    {
      v498 = &unk_10005CEA2;
    }

    else
    {
      v498 = qword_100079000[v497];
    }

    sub_100049ECC(a2, a3 + 1, "spawn type = %s (%lu)", v491, v492, v493, v494, v495, v498, v497);
  }

  v499 = *(a1 + 916);
  if (v499)
  {
    if (v499 > 6)
    {
      v500 = &unk_10005CEA2;
    }

    else
    {
      v500 = qword_100079038[v499];
    }

    sub_100049ECC(a2, a3 + 1, "spawn role = %s (%lu)", v491, v492, v493, v494, v495, v500, v499);
  }

  if (*(a1 + 920) || *(a1 + 1312))
  {
    sub_100049ECC(a2, a3 + 1, "binary order preference = {", v491, v492, v493, v494, v495);
    v506 = *(a1 + 920);
    if (v506 && xpc_binprefs_count(*(a1 + 920)))
    {
      v507 = 0;
      do
      {
        v508 = xpc_binprefs_cpu_type(v506, v507);
        v514 = "(invalid)";
        if ((v508 & 0xFEFFFFFF) - 1 <= 0x11)
        {
          v515 = &off_100078E50[v508 & 0xFEFFFFFF];
          if ((v508 & 0x1000000) == 0)
          {
            v515 = &off_100078EE8[v508];
          }

          v514 = *v515;
        }

        sub_100049ECC(a2, a3 + 2, "%s", v509, v510, v511, v512, v513, v514);
        ++v507;
      }

      while (v507 < xpc_binprefs_count(v506));
    }

    v516 = *(a1 + 1312);
    if (v516 && xpc_binprefs_count(*(a1 + 1312)))
    {
      v517 = 0;
      do
      {
        v518 = xpc_binprefs_cpu_type(v516, v517);
        v524 = "(invalid)";
        if ((v518 & 0xFEFFFFFF) - 1 <= 0x11)
        {
          v525 = &off_100078E50[v518 & 0xFEFFFFFF];
          if ((v518 & 0x1000000) == 0)
          {
            v525 = &off_100078EE8[v518];
          }

          v524 = *v525;
        }

        sub_100049ECC(a2, a3 + 2, "+ %s", v519, v520, v521, v522, v523, v524);
        ++v517;
      }

      while (v517 < xpc_binprefs_count(v516));
    }

    sub_100049ECC(a2, a3 + 1, "}", v501, v502, v503, v504, v505);
    sub_100049F4C(a2, v526, v527, v528, v529, v530, v531, v532, v923);
  }

  sub_100049ECC(a2, a3 + 1, "jetsam priority = %d", v491, v492, v493, v494, v495, *(a1 + 936));
  if ((*(a1 + 1336) & 0x80000000) == 0)
  {
    sub_100049ECC(a2, a3 + 1, "+ %d", v533, v534, v535, v536, v537, *(a1 + 1336));
  }

  v538 = *(a1 + 940);
  if (v538 >= 1)
  {
    if ((*(a1 + 932) & 4) != 0)
    {
      v539 = "hard";
    }

    else
    {
      v539 = "soft";
    }

    v924 = v539;
    v930 = *(a1 + 940);
LABEL_250:
    v540 = "jetsam memory limit (active, %s) = %d MB";
    goto LABEL_253;
  }

  if (!v538)
  {
    if ((*(a1 + 932) & 4) != 0)
    {
      v901 = "hard";
    }

    else
    {
      v901 = "soft";
    }

    v924 = v901;
    v930 = 0xFFFFFFFFLL;
    goto LABEL_250;
  }

  v540 = "jetsam memory limit (active) = (unlimited)";
LABEL_253:
  sub_100049ECC(a2, a3 + 1, v540, v533, v534, v535, v536, v537, v924, v930);
  v546 = *(a1 + 1340);
  if (v546 >= 1)
  {
    v925 = *(a1 + 1340);
    v547 = "+ %d MB";
LABEL_255:
    sub_100049ECC(a2, a3 + 1, v547, v541, v542, v543, v544, v545, v925);
    goto LABEL_257;
  }

  if (v546 < 0)
  {
    v547 = "+ (unlimited)";
    goto LABEL_255;
  }

LABEL_257:
  v548 = *(a1 + 944);
  if (v548 >= 1)
  {
    if ((*(a1 + 932) & 8) != 0)
    {
      v549 = "hard";
    }

    else
    {
      v549 = "soft";
    }

    v925 = v549;
    v931 = *(a1 + 944);
LABEL_262:
    v550 = "jetsam memory limit (inactive, %s) = %d MB";
    goto LABEL_265;
  }

  if (!v548)
  {
    if ((*(a1 + 932) & 8) != 0)
    {
      v902 = "hard";
    }

    else
    {
      v902 = "soft";
    }

    v925 = v902;
    v931 = 0xFFFFFFFFLL;
    goto LABEL_262;
  }

  v550 = "jetsam memory limit (inactive) = (unlimited)";
LABEL_265:
  sub_100049ECC(a2, a3 + 1, v550, v541, v542, v543, v544, v545, v925, v931);
  v556 = *(a1 + 1340);
  if (v556 >= 1)
  {
    v926 = *(a1 + 1340);
    v557 = "+ %d MB";
LABEL_267:
    sub_100049ECC(a2, a3 + 1, v557, v551, v552, v553, v554, v555, v926);
    goto LABEL_269;
  }

  if (v556 < 0)
  {
    v557 = "+ (unlimited)";
    goto LABEL_267;
  }

LABEL_269:
  v927 = sub_100026994(a1);
  sub_100049ECC(a2, a3 + 1, "jetsamproperties category = %s", v558, v559, v560, v561, v562);
  if ((*(a1 + 1413) & 8) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "submitted job. ignore execute allowed", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 948))
  {
    v927 = *(a1 + 948);
    sub_100049ECC(a2, a3 + 1, "jetsam thread limit = %d", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 952))
  {
    v927 = *(a1 + 952);
    sub_100049ECC(a2, a3 + 1, "jetsam address limit = %llu", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 960))
  {
    v927 = *(a1 + 960);
    sub_100049ECC(a2, a3 + 1, "jetsam soft port limit = %u", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 964))
  {
    v927 = *(a1 + 964);
    sub_100049ECC(a2, a3 + 1, "jetsam hard port limit = %u", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 968))
  {
    v927 = *(a1 + 968);
    sub_100049ECC(a2, a3 + 1, "jetsam soft file descriptor limit = %u", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 972))
  {
    v927 = *(a1 + 972);
    sub_100049ECC(a2, a3 + 1, "jetsam hard file descriptor limit = %u", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 976))
  {
    v927 = *(a1 + 976);
    sub_100049ECC(a2, a3 + 1, "jetsam soft kqworkloop limit = %u", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 980))
  {
    v927 = *(a1 + 980);
    sub_100049ECC(a2, a3 + 1, "jetsam hard kqworkloop limit = %u", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 984))
  {
    v927 = *(a1 + 984);
    sub_100049ECC(a2, a3 + 1, "jetsam wired memory limit = %u", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 988))
  {
    v927 = *(a1 + 988);
    sub_100049ECC(a2, a3 + 1, "jetsam conclave memory limit = %u", v563, v564, v565, v566, v567);
  }

  if (*(a1 + 1034) || *(a1 + 1036))
  {
    v927 = *(a1 + 1034);
    v932 = *(a1 + 1036);
    v568 = "cpumon = %d%% over %u seconds";
  }

  else
  {
    v568 = "cpumon = default";
  }

  sub_100049ECC(a2, a3 + 1, v568, v563, v564, v565, v566, v567, v927, v932);
  if (*(a1 + 680))
  {
    sub_100049ECC(a2, a3 + 1, "resource limits = {", v569, v570, v571, v572, v573);
    for (i2 = *(a1 + 680); i2; i2 = *i2)
    {
      if (*(i2 + 35) == 1)
      {
        v941 = 0u;
        v942 = 0u;
        *object_type = 0u;
        v940 = 0u;
        if (i2[2] == 0x7FFFFFFFFFFFFFFFLL)
        {
          strcpy(object_type, "(infinity)");
        }

        else
        {
          snprintf(object_type, 0x40uLL, "%llu", i2[2]);
        }

        LOBYTE(v928) = sub_100046468(*(i2 + 16));
        sub_100049ECC(a2, a3 + 2, "%s (soft) => %s", v580, v581, v582, v583, v584);
      }

      if (*(i2 + 34) == 1)
      {
        v941 = 0u;
        v942 = 0u;
        *object_type = 0u;
        v940 = 0u;
        if (i2[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          strcpy(object_type, "(infinity)");
        }

        else
        {
          snprintf(object_type, 0x40uLL, "%llu", i2[3]);
        }

        LOBYTE(v928) = sub_100046468(*(i2 + 16));
        sub_100049ECC(a2, a3 + 2, "%s (hard) => %s", v585, v586, v587, v588, v589);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v574, v575, v576, v577, v578);
    sub_100049F4C(a2, v590, v591, v592, v593, v594, v595, v596, v928);
  }

  if (*(a1 + 896))
  {
    LODWORD(v928) = *(a1 + 896);
    sub_100049ECC(a2, a3 + 1, "run interval = %u seconds", v569, v570, v571, v572, v573);
  }

  if ((*(a1 + 1414) & 0x10) != 0)
  {
    LOWORD(v928) = *(a1 + 1044);
    sub_100049ECC(a2, a3 + 1, "exponential throttling grace limit = %u", v569, v570, v571, v572, v573);
  }

  v597 = sub_100043510(a1);
  if (v597)
  {
    LOBYTE(v928) = v597;
    sub_100049ECC(a2, a3 + 1, "job state = %s", v598, v599, v600, v601, v602);
  }

  v603 = *(a1 + 1408);
  if ((v603 & 0x800000000000) != 0)
  {
    LODWORD(v928) = *(a1 + 1360);
    sub_100049ECC(a2, a3 + 1, "persona set at = %u", v598, v599, v600, v601, v602);
    v603 = *(a1 + 1408);
  }

  if ((v603 & 0x4000000000000) == 0)
  {
    if (*(a1 + 720) != -101)
    {
      LODWORD(v928) = *(a1 + 720);
      sub_100049ECC(a2, a3 + 1, "resolved uid = %d", v598, v599, v600, v601, v602);
    }

    if (*(a1 + 724) != -101)
    {
      LODWORD(v928) = *(a1 + 724);
      sub_100049ECC(a2, a3 + 1, "resolved gid = %d", v598, v599, v600, v601, v602);
      if (*(a1 + 792))
      {
        sub_100049ECC(a2, a3 + 1, "resolved groups = {", v598, v599, v600, v601, v602);
        if (*(a1 + 792) >= 1)
        {
          v609 = 0;
          do
          {
            sub_100049ECC(a2, a3 + 2, "%d", v604, v605, v606, v607, v608, *(a1 + 728 + 4 * v609++));
          }

          while (v609 < *(a1 + 792));
        }

        sub_100049ECC(a2, a3 + 1, "}", v604, v605, v606, v607, v608);
      }
    }
  }

  if (*(a1 + 1046))
  {
    LOBYTE(v928) = *(a1 + 1046);
    sub_100049ECC(a2, a3 + 1, "crash behavior = %x", v598, v599, v600, v601, v602);
  }

  v610 = *(a1 + 1408);
  if ((v610 & 0x800000000000000) != 0)
  {
    v611 = sub_100026FE0(a1);
    if (v611)
    {
      v617 = v611;
    }

    else
    {
      v617 = a1 + 1056;
    }

    count = *(v617 + 24);
    if (count)
    {
      count = xpc_array_get_count(count);
    }

    sub_100049ECC(a2, a3 + 1, "panic on consecutive crashes (%zd)", v612, v613, v614, v615, v616, count);
    v610 = *(a1 + 1408);
  }

  if ((v610 & 0x1000000000000000) != 0)
  {
    v619 = sub_100026FE0(a1);
    if (v619)
    {
      v625 = v619;
    }

    else
    {
      v625 = a1 + 1056;
    }

    v626 = *(v625 + 24);
    if (v626)
    {
      v626 = xpc_array_get_count(v626);
    }

    sub_100049ECC(a2, a3 + 1, "device recovery on crashes (%zd)", v620, v621, v622, v623, v624, v626);
  }

  v627 = *(a1 + 1376);
  if (*(a1 + 1376))
  {
    if (v627 == 1)
    {
      v628 = "1";
    }

    else
    {
      v628 = "0";
    }

    if (v627 == 2)
    {
      v629 = "managed";
    }

    else
    {
      v629 = v628;
    }

    sub_100049ECC(a2, a3 + 1, "multiple instances = %s", v598, v599, v600, v601, v602, v629);
  }

  if (*(a1 + 1384))
  {
    v928 = *(a1 + 1384);
    sub_100049ECC(a2, a3 + 1, "cryptex = %s", v598, v599, v600, v601, v602);
  }

  if (*(a1 + 1392))
  {
    v928 = *(a1 + 1392);
    sub_100049ECC(a2, a3 + 1, "conclave = %s", v598, v599, v600, v601, v602);
  }

  v61 = *(a1 + 296);
  if (v61)
  {
    goto LABEL_379;
  }

  if ((*(a1 + 1413) & 4) == 0)
  {
    sub_10000ED50(a1, a2, a3 + 1);
  }

  v630 = sub_10000FC98(0x80uLL);
  sub_10002B8DC(v630, "partial import", *(a1 + 1408) & 1, v631, v632, v633, v634, v635);
  sub_10002B8DC(v630, "xpc bundle", (*(a1 + 1408) >> 1) & 1, v636, v637, v638, v639, v640);
  sub_10002B8DC(v630, "keepalive", (*(a1 + 1408) >> 2) & 1, v641, v642, v643, v644, v645);
  sub_10002B8DC(v630, "runatload", (*(a1 + 1408) >> 4) & 1, v646, v647, v648, v649, v650);
  sub_10002B8DC(v630, "low priority i/o", (*(a1 + 1408) >> 5) & 1, v651, v652, v653, v654, v655);
  sub_10002B8DC(v630, "low priority background i/o", (*(a1 + 1408) >> 6) & 1, v656, v657, v658, v659, v660);
  sub_10002B8DC(v630, "dataless file mode", *(a1 + 1364) != 0, v661, v662, v663, v664, v665);
  sub_10002B8DC(v630, "exception handler", (*(a1 + 1408) >> 7) & 1, v666, v667, v668, v669, v670);
  sub_10002B8DC(v630, "supports transactions", (*(a1 + 1408) >> 8) & 1, v671, v672, v673, v674, v675);
  sub_10002B8DC(v630, "supports pressured exit", (*(a1 + 1408) >> 9) & 1, v676, v677, v678, v679, v680);
  sub_10002B8DC(v630, "supports idle hysteresis", HIWORD(*(a1 + 1408)) & 1, v681, v682, v683, v684, v685);
  sub_10002B8DC(v630, "enter kdp before kill", (*(a1 + 1408) >> 10) & 1, v686, v687, v688, v689, v690);
  sub_10002B8DC(v630, "wait for debugger", (*(a1 + 1408) >> 11) & 1, v691, v692, v693, v694, v695);
  sub_10002B8DC(v630, "app", (*(a1 + 1408) >> 12) & 1, v696, v697, v698, v699, v700);
  sub_10002B8DC(v630, "system app", (*(a1 + 1408) >> 13) & 1, v701, v702, v703, v704, v705);
  sub_10002B8DC(v630, "inetd-compatible", (*(a1 + 1408) >> 14) & 1, v706, v707, v708, v709, v710);
  sub_10002B8DC(v630, "inetd listener", (*(a1 + 1408) >> 15) & 1, v711, v712, v713, v714, v715);
  sub_10002B8DC(v630, "abandon process group", (*(a1 + 1408) >> 16) & 1, v716, v717, v718, v719, v720);
  sub_10002B8DC(v630, "event monitor", (*(a1 + 1408) >> 17) & 1, v721, v722, v723, v724, v725);
  sub_10002B8DC(v630, "penalty box", (*(a1 + 1408) >> 18) & 1, v726, v727, v728, v729, v730);
  sub_10002B8DC(v630, "role account", (*(a1 + 1408) >> 19) & 1, v731, v732, v733, v734, v735);
  sub_10002B8DC(v630, "launch only once", (*(a1 + 1408) >> 20) & 1, v736, v737, v738, v739, v740);
  sub_10002B8DC(v630, "system support", (*(a1 + 1408) >> 21) & 1, v741, v742, v743, v744, v745);
  sub_10002B8DC(v630, "initial system support", (*(a1 + 1408) >> 22) & 1, v746, v747, v748, v749, v750);
  sub_10002B8DC(v630, "inferred program", (*(a1 + 1408) >> 24) & 1, v751, v752, v753, v754, v755);
  sub_10002B8DC(v630, "ios home screen app", (*(a1 + 1408) >> 30) & 1, v756, v757, v758, v759, v760);
  sub_10002B8DC(v630, "abandon coalition", *(a1 + 1408) >> 31, v761, v762, v763, v764, v765);
  sub_10002B8DC(v630, "disable pointer auth", HIBYTE(*(a1 + 1408)) & 1, v766, v767, v768, v769, v770);
  sub_10002B8DC(v630, "high bits aslr", (*(a1 + 1408) >> 34) & 1, v771, v772, v773, v774, v775);
  v776 = sub_100026FE0(a1);
  if (v776)
  {
    v782 = v776;
  }

  else
  {
    v782 = (a1 + 1056);
  }

  sub_10002B8DC(v630, "reslide shared cache", *v782, v777, v778, v779, v780, v781);
  sub_10002B8DC(v630, "disable resliding", (*(a1 + 1408) >> 54) & 1, v783, v784, v785, v786, v787);
  sub_10002B8DC(v630, "extension", (*(a1 + 1408) >> 35) & 1, v788, v789, v790, v791, v792);
  sub_10002B8DC(v630, "nano allocator", (*(a1 + 1408) >> 25) & 1, v793, v794, v795, v796, v797);
  sub_10002B8DC(v630, "enable checked allocations", (*(a1 + 1408) >> 26) & 1, v798, v799, v800, v801, v802);
  sub_10002B8DC(v630, "no initgroups", HIDWORD(*(a1 + 1408)) & 1, v803, v804, v805, v806, v807);
  sub_10002B8DC(v630, "needs implicit endpoint", (*(a1 + 1408) >> 39) & 1, v808, v809, v810, v811, v812);
  sub_10002B8DC(v630, "platform binary", (*(a1 + 1408) >> 41) & 1, v813, v814, v815, v816, v817);
  sub_10002B8DC(v630, "is copy", (*(a1 + 1408) >> 42) & 1, v818, v819, v820, v821, v822);
  sub_10002B8DC(v630, "disallow all lookups", (*(a1 + 1408) >> 44) & 1, v823, v824, v825, v826, v827);
  sub_10002B8DC(v630, "always sigterm on shutdown", (*(a1 + 1408) >> 46) & 1, v828, v829, v830, v831, v832);
  sub_10002B8DC(v630, "one-shot", (*(a1 + 368) >> 5) & 1, v833, v834, v835, v836, v837);
  sub_10002B8DC(v630, "use maximum address space limit (for sanitizers)", (*(a1 + 1408) >> 49) & 1, v838, v839, v840, v841, v842);
  sub_10002B8DC(v630, "null bootstrap port", (*(a1 + 1408) >> 51) & 1, v843, v844, v845, v846, v847);
  sub_10002B8DC(v630, "exponential throttling", (*(a1 + 1408) >> 52) & 1, v848, v849, v850, v851, v852);
  sub_10002B8DC(v630, "abandon during shutdown", (*(a1 + 1408) >> 57) & 1, v853, v854, v855, v856, v857);
  sub_10002B8DC(v630, "needs proxy", (*(a1 + 1408) >> 50) & 1, v858, v859, v860, v861, v862);
  sub_10002B8DC(v630, "has spawn constraint", *(a1 + 624) != 0, v863, v864, v865, v866, v867);
  sub_10002B8DC(v630, "tle system", *(a1 + 1000) == 1, v868, v869, v870, v871, v872);
  sub_10002B8DC(v630, "has provenance", *(a1 + 608) != 0, v873, v874, v875, v876, v877);
  if ((*(a1 + 932) & 0x10) != 0)
  {
    sub_10002B8DC(v630, "no EXC_RESOURCE during audio", 1, v878, v879, v880, v881, v882);
  }

  sub_10002B8DC(v630, "checked allocations crashed", (*(a1 + 1416) >> 2) & 1, v878, v879, v880, v881, v882);
  sub_100049F4C(a2, v883, v884, v885, v886, v887, v888, v889, v928);
  sub_100049ECC(a2, a3 + 1, "properties = %s", v890, v891, v892, v893, v894, *v630);
  sub_10000FD04(v630);
  return sub_100049ECC(a2, a3, "}", v895, v896, v897, v898, v899);
}

const char *sub_100026994(uint64_t a1)
{
  v1 = *(a1 + 1408);
  if ((v1 & 0x800000000) != 0)
  {
    return "extension";
  }

  if ((v1 & 2) != 0)
  {
    if (sub_10002CA94(*(a1 + 248)))
    {
      return "system xpcservice";
    }

    else
    {
      return "xpcservice";
    }
  }

  else if ((v1 & 0x2000) != 0)
  {
    return "system app";
  }

  else if ((v1 & 0x1000) != 0)
  {
    return "app";
  }

  else if (*(a1 + 912) == 1792)
  {
    return "DriverKit";
  }

  else
  {
    return "daemon";
  }
}

uint64_t sub_100026A24(uint64_t a1, FILE *a2, uint64_t a3)
{
  v5 = a1 + 1424;
  v6 = sub_100026994(a1);
  return sub_100049ECC(a2, a3 + 1, "%s : %s", v7, v8, v9, v10, v11, v5, v6);
}

uint64_t sub_100026A78(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  *__str = 0;
  v19 = 0;
  v20 = 0;
  if (*(a1 + 1168))
  {
    snprintf(__str, 0x18uLL, "%d", *(a1 + 1168));
  }

  else
  {
    strcpy(__str, "0");
  }

  *v15 = 0;
  v16 = 0;
  v17 = 0;
  v11 = *(a1 + 1224);
  if (v11 == 2)
  {
    v15[4] = 0;
    v13 = 695363112;
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v15[4] = 0;
    v13 = 694313256;
    goto LABEL_12;
  }

  if (v11)
  {
    if (sub_10004A5D0(a1 + 1224))
    {
      sub_10004A5FC((a1 + 1224));
      snprintf(v15, 0x18uLL, "%d");
      return sub_100049ECC(a2, a3, "%8s %6s \t%s", a4, a5, a6, a7, a8, __str, v15, a1 + 1424);
    }

    if (sub_10004A6A4((a1 + 1224)))
    {
      sub_10004A6EC((a1 + 1224));
      snprintf(v15, 0x18uLL, "-%d");
      return sub_100049ECC(a2, a3, "%8s %6s \t%s", a4, a5, a6, a7, a8, __str, v15, a1 + 1424);
    }

    if (sub_10004A84C(a1 + 1224))
    {
      v15[4] = 0;
      if (sub_10004A884(a1 + 1224))
      {
        v13 = 694513704;
      }

      else
      {
        v13 = 695495208;
      }
    }

    else if (sub_10004A8F4(a1 + 1224))
    {
      v15[4] = 0;
      v13 = 695427880;
    }

    else
    {
      if (!sub_10004A8AC(a1 + 1224))
      {
        v12 = 63;
        goto LABEL_9;
      }

      v15[4] = 0;
      v13 = 695232040;
    }

LABEL_12:
    *v15 = v13;
    return sub_100049ECC(a2, a3, "%8s %6s \t%s", a4, a5, a6, a7, a8, __str, v15, a1 + 1424);
  }

  v12 = 45;
LABEL_9:
  *v15 = v12;
  return sub_100049ECC(a2, a3, "%8s %6s \t%s", a4, a5, a6, a7, a8, __str, v15, a1 + 1424);
}

uint64_t sub_100026C6C(uint64_t a1, const char *a2)
{
  for (i = *(a1 + 144); i; i = *(i + 16))
  {
    v4 = sub_10003FB10(i);
    if (!strcmp(v4, a2))
    {
      break;
    }
  }

  return i;
}

char *sub_100026CB4(unsigned int a1)
{
  if (a1 >= 0x11)
  {
    sub_100054404();
  }

  return off_100078CB0[a1];
}

BOOL sub_100026CE4(uint64_t a1, int a2)
{
  v2 = *(a1 + 1144);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_100026D08(uint64_t a1, unsigned __int8 *uu1)
{
  for (i = *(a1 + 200); i; i = *(i + 40))
  {
    if (!uuid_compare(uu1, (i + 408)))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100026D4C(mach_port_context_t a1)
{
  if ((*(a1 + 1411) & 0x20) != 0)
  {
    sub_100054404();
  }

  result = *(a1 + 1368);
  if (!result)
  {
    result = sub_10000B654(1u, 0, a1);
    *(a1 + 1368) = result;
  }

  return result;
}

uint64_t sub_100026D94(mach_port_context_t guard)
{
  if ((*(guard + 1411) & 0x20) == 0)
  {
    sub_100054404();
  }

  result = *(guard + 1368);
  if (result)
  {
    result = sub_10000B774(result, 0, guard);
    if (result)
    {
      sub_100054420();
    }

    *(guard + 1368) = 0;
  }

  return result;
}

uint64_t sub_100026DEC(uint64_t a1)
{
  if (byte_10007DC7C == 1)
  {
    return sub_100026E28(a1) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026E28(uint64_t a1)
{
  if ((*(a1 + 1414) & 4) != 0)
  {
    return 1;
  }

  if (sub_10003DF3C())
  {
    sub_100054404();
  }

  v7 = *(a1 + 700);
  if ((v7 || (v9 = *(a1 + 256)) != 0 && (v7 = *(v9 + 700)) != 0) && v7 != -1)
  {
    v8 = "it has a control port set";
LABEL_11:
    sub_100020018(a1, 5, "service will use proxy because %s", v2, v3, v4, v5, v6, v8);
    return 1;
  }

  if ((*(a1 + 1346) & 0xA) != 0 || *(a1 + 1280))
  {
    v8 = "it is being debugged";
    goto LABEL_11;
  }

  if (*(a1 + 1296))
  {
    v8 = "its working directory has been overridden";
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_100026EE8(uint64_t a1)
{
  if ((*(a1 + 1413) & 0x80) != 0)
  {
    return *(a1 + 1360);
  }

  else
  {
    return sub_100033484(*(a1 + 248), (a1 + 1424));
  }
}

uint64_t sub_100026F28(uint64_t a1)
{
  result = *(a1 + 1400);
  if (!result)
  {
    *(a1 + 1400) = sub_100014514(0x18uLL, 0x80040D6874129uLL);
    os_map_64_init();
    return *(a1 + 1400);
  }

  return result;
}

uint64_t sub_100026F7C(uint64_t a1)
{
  sub_100026F28(a1);
  v1 = os_map_64_delete();
  free(v1);

  return os_map_64_insert();
}

uint64_t sub_100026FE0(uint64_t a1)
{
  result = sub_10001FCC0(a1);
  if (result)
  {
    v3 = *(a1 + 576);

    return os_map_str_find();
  }

  return result;
}

void sub_100027028(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 24);
  sub_10004B52C(*(a1 + 16), v3);
  xpc_release(v3);
  sub_10001B690(v2);

  free(a1);
}

xpc_object_t sub_100027094(void *a1, __uint64_t a2)
{
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v5 = 0;
  if (xpc_array_get_count(a1))
  {
    v6 = 0;
    do
    {
      uint64 = xpc_array_get_uint64(a1, v6);
      if (v4 < uint64)
      {
        _os_assumes_log();
      }

      else if (v4 - uint64 < a2)
      {
        if (!v5)
        {
          v5 = xpc_array_create(0, 0);
        }

        xpc_array_set_uint64(v5, 0xFFFFFFFFFFFFFFFFLL, uint64);
      }

      ++v6;
    }

    while (v6 < xpc_array_get_count(a1));
  }

  return v5;
}

void sub_100027154(uint64_t a1, int a2)
{
  v2 = *(a1 + 424);
  if (v2 != a2)
  {
    if (v2 == 2 && a2 != 0 && a2 != 3)
    {
      sub_100054E38();
    }

    *(a1 + 424) = a2;
    if (a2 == 1)
    {
      sub_10001FECC(a1, 0, 0);
    }

    v6 = sub_1000271DC(a1);
    sub_100020018(a1, 5, "service state: %s", v7, v8, v9, v10, v11, v6);
  }
}

const char *sub_1000271DC(uint64_t a1)
{
  v1 = *(a1 + 424);
  v2 = "not running";
  if (v1 > 4)
  {
    v5 = "languishing";
    v6 = "exited";
    if (v1 != 8)
    {
      v6 = "not running";
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    if (v1 == 6)
    {
      v2 = "SIGKILLed";
    }

    if (v1 == 5)
    {
      v2 = "SIGTERMed";
    }

    if (*(a1 + 424) <= 6u)
    {
      return v2;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (*(a1 + 424) <= 2u)
    {
      v3 = "spawn scheduled";
      if (v1 == 2)
      {
        v2 = "spawning";
      }

      v4 = v1 == 1;
      goto LABEL_22;
    }

    if (v1 == 3)
    {
      v2 = "xpcproxy";
      v3 = "spawned";
      v4 = (*(a1 + 1216) & 0x80) == 0;
LABEL_22:
      if (v4)
      {
        return v3;
      }

      else
      {
        return v2;
      }
    }

    if (v1 == 4)
    {
      return "running";
    }

    else
    {
      return "not running";
    }
  }
}

void sub_10002729C(uint64_t a1, int a2)
{
  if (*(a1 + 424) != 1)
  {
    sub_100054404();
  }

  sub_100027154(a1, 2);
  if (*(a1 + 424) != 2)
  {
    sub_100054404();
  }

  if (*(a1 + 992))
  {
    v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    sub_10001FBAC(*(a1 + 992), v4 / 0xF4240);
  }

  v5 = sub_100026FE0(a1);
  v6 = a1 + 1056;
  if (v5)
  {
    v6 = v5;
  }

  *(v6 + 1) = 0;
  *(a1 + 1408) &= ~0x800000uLL;
  *(a1 + 1180) = a2;
  *(a1 + 1216) = *(a1 + 1216) & 0xFFF7 | (4 * *(a1 + 1346)) & 8;
  if (sub_100026E28(a1))
  {
    v7 = 128;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 1216) = *(a1 + 1216) & 0xFD7F | v7;
  v12 = 0;
  LOWORD(v8) = word_10007F132;
  if (word_10007F132)
  {
    LOBYTE(v9) = 7;
    goto LABEL_23;
  }

  if ((~*(a1 + 1346) & 0x24) == 0)
  {
    LOBYTE(v9) = 1;
LABEL_14:
    LOWORD(v8) = 1;
    goto LABEL_23;
  }

  if (!*(a1 + 1040) || (v9 = *(a1 + 1208), v9 == 1))
  {
    v10 = *(a1 + 1408);
    if ((v10 & 0x8000000) == 0 || (LOBYTE(v9) = 2, v12 = 2, (v10 & 0x4000000) == 0))
    {
      v11 = *(a1 + 248);
      if (v11 && *(v11 + 112) == &unk_10007D8B8)
      {
        if (*(a1 + 356) == 5)
        {
          v8 = sub_100022BD8(*(v11 + 120));
          if (v8)
          {
            LOWORD(v8) = sub_100028224(v8, &v12);
            LOBYTE(v9) = v12;
          }

          else
          {
            LOBYTE(v9) = 4;
          }
        }

        else
        {
          LOWORD(v8) = 0;
          LOBYTE(v9) = 6;
        }
      }

      else
      {
        LOWORD(v8) = 0;
        LOBYTE(v9) = 3;
      }

      goto LABEL_23;
    }

    goto LABEL_14;
  }

  LOWORD(v8) = *(a1 + 1210);
LABEL_23:
  *(a1 + 1208) = v9;
  *(a1 + 1210) = v8;

  sub_10001224C(a1);
}

uint64_t sub_100027470(uint64_t a1)
{
  bzero(&v88, 0x728uLL);
  sub_100013350(&v88, 0);
  v91 = a1;
  v8 = *(a1 + 152);
  if (v8)
  {
    v9 = 0;
    do
    {
      if ((*(v8 + 88) & 0x40) == 0)
      {
        *(&v93[2] + v9++) = sub_10004BFA4(v8, 1, v2, v3, v4, v5, v6, v7);
        if (v9 == 128)
        {
          sub_100020018(a1, 4, "Skipping remaining service endpoints for importance boosting.", v3, v4, v5, v6, v7, v84);
          goto LABEL_20;
        }
      }

      v8 = *(v8 + 16);
    }

    while (v8);
    if (v9 <= 0x7F)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v9 = 0;
LABEL_9:
  v10 = *(a1 + 176);
  if (v10)
  {
    while (1)
    {
      if ((*(v10 + 88) & 0x40) == 0)
      {
        *(&v93[2] + v9++) = sub_10004BFA4(v10, 1, v2, v3, v4, v5, v6, v7);
        if (v9 == 128)
        {
          break;
        }
      }

      v10 = *(v10 + 16);
      if (!v10)
      {
        if (v9 > 0x7F)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

LABEL_20:
    sub_100020018(a1, 4, "Skipping remaining event endpoints for importance boosting.", v3, v4, v5, v6, v7, v84);
    goto LABEL_21;
  }

LABEL_14:
  v11 = *(a1 + 184);
  if (!v11)
  {
    goto LABEL_22;
  }

  while (1)
  {
    if ((*(v11 + 88) & 0x40) == 0)
    {
      *(&v93[2] + v9++) = sub_10004BFA4(v11, 1, v2, v3, v4, v5, v6, v7);
      if (v9 == 128)
      {
        break;
      }
    }

    v11 = *(v11 + 16);
    if (!v11)
    {
      goto LABEL_22;
    }
  }

LABEL_21:
  sub_100020018(a1, 4, "Skipping remaining instance endpoints for importance boosting.", v3, v4, v5, v6, v7, v84);
LABEL_22:
  v93[66] = v9;
  v12 = *(a1 + 904);
  if (v12)
  {
    v13 = sub_1000310B4(*(a1 + 248), v12);
    if (v13)
    {
      v94 = sub_10004BFA4(v13, 1, v14, v15, v16, v17, v18, v19);
      if (sub_10000B744(v94))
      {
        sub_100054420();
      }
    }

    else
    {
      sub_100020018(a1, 3, "Could not find exception endpoint for service: %s", v15, v16, v17, v18, v19, *(a1 + 904));
    }
  }

  v20 = v94;
  if ((*(a1 + 1216) & 8) != 0)
  {
    v21 = 16524;
  }

  else
  {
    v21 = 16396;
  }

  if (posix_spawnattr_setflags(&v88, v21))
  {
    _os_assumes_log_ctx();
  }

  v103[0] = 0;
  if (posix_spawnattr_setsigmask(&v88, v103))
  {
    _os_assumes_log_ctx();
  }

  v100[0] = -1;
  if (posix_spawnattr_setsigdefault(&v88, v100))
  {
    _os_assumes_log_ctx();
  }

  *(a1 + 912);
  if (posix_spawnattr_setprocesstype_np())
  {
    _os_assumes_log_ctx();
  }

  if (*(a1 + 916) && posix_spawnattr_set_darwin_role_np())
  {
    sub_100054420();
  }

  if (*(a1 + 1392) && posix_spawnattr_set_conclave_id_np())
  {
    sub_100054420();
  }

  if (posix_spawnattr_set_importancewatch_port_np())
  {
    _os_assumes_log_ctx();
  }

  if (posix_spawnattr_setjetsam_ext())
  {
    _os_assumes_log_ctx();
  }

  v22 = *(a1 + 992);
  if (v22)
  {
    v23 = sub_10001FBFC(v22);
    if (v23)
    {
      v24 = 0;
      v97 = 0u;
      v98 = 0u;
      v25 = v23;
      *__str = 0u;
      v96 = 0u;
      do
      {
        __str[v24] = sub_10001FC04(*(a1 + 992), v24);
        ++v24;
      }

      while (v25 != v24);
      if (posix_spawnattr_set_jetsam_ttr_np())
      {
        _os_assumes_log_ctx();
      }
    }
  }

  *__str = sub_100032D40(*(a1 + 248), a1, *(a1 + 1408) >> 31);
  *&__str[2] = v26;
  sub_10000E8A4(a1, &v88, 0, __str);
  v27 = *(a1 + 1408);
  *__str = sub_100032EA0(*(a1 + 248), a1);
  *&__str[2] = v28;
  sub_10000E8A4(a1, &v88, 1, __str);
  if ((*(a1 + 1413) & 0x80) != 0)
  {
    v29 = *(a1 + 1360);
  }

  else
  {
    v29 = sub_100033484(*(a1 + 248), (a1 + 1424));
  }

  if (v29 != -1)
  {
    if (posix_spawnattr_set_persona_np())
    {
      _os_assumes_log_ctx();
    }

    if (posix_spawnattr_set_persona_uid_np())
    {
      _os_assumes_log_ctx();
    }

    if (posix_spawnattr_set_persona_gid_np())
    {
      _os_assumes_log_ctx();
    }
  }

  if (v20 - 1 <= 0xFFFFFFFD && sub_10000B900(&v88, v20))
  {
    sub_100054420();
  }

  ++*(a1 + 1040);
  sub_10001A45C();
  v30 = mach_absolute_time();
  v31 = sub_100026FE0(a1);
  v32 = a1 + 1056;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = a1 + 1056;
  }

  *(v33 + 8) = v30;
  v34 = sub_100026FE0(a1);
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = a1 + 1056;
  }

  if (v35 == v32)
  {
    v36 = a1 + 1224;
  }

  else
  {
    v36 = v35 + 32;
  }

  if (sub_10004A738(v36))
  {
    v37 = sub_100026FE0(a1);
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = a1 + 1056;
    }

    if (v38 == v32)
    {
      v39 = a1 + 1224;
    }

    else
    {
      v39 = v38 + 32;
    }

    if (!sub_10004A84C(v39) && (*(a1 + 1414) & 0x10) != 0)
    {
      v40 = sub_100026FE0(a1);
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = a1 + 1056;
      }

      sub_1000286E0((v41 + 16));
    }

    v42 = sub_100026FE0(a1);
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = a1 + 1056;
    }

    if (v43 == v32)
    {
      v44 = a1 + 1224;
    }

    else
    {
      v44 = v43 + 32;
    }

    if (!sub_10004A84C(v44) || ((v45 = sub_100026FE0(a1)) != 0 ? (v46 = v45) : (v46 = a1 + 1056), v46 != v32 ? (v47 = v46 + 32) : (v47 = a1 + 1224), sub_10004A85C(v47)))
    {
      if ((*(a1 + 1415) & 0x10) == 0)
      {
        sub_10002868C(a1);
      }
    }
  }

  else if ((*(a1 + 1415) & 0x10) == 0)
  {
    v48 = sub_100026FE0(a1);
    if ((*(a1 + 1415) & 0x18) != 0)
    {
      v54 = v48 ? v48 : a1 + 1056;
      if (*(v54 + 24))
      {
        sub_100020018(a1, 5, "Reseting consecutive crash history", v49, v50, v51, v52, v53, v84);
        xpc_release(*(v54 + 24));
        *(v54 + 24) = 0;
      }
    }
  }

  v55 = sub_100026CB4(*(a1 + 1180));
  sub_100020018(a1, 5, "launching: %s", v56, v57, v58, v59, v60, v55);
  sub_100015808();
  v61 = qword_10007E218;
  *(a1 + 24) = qword_10007E218;
  if (v61)
  {
    *(v61 + 32) = a1 + 24;
  }

  qword_10007E218 = a1;
  *(a1 + 32) = &qword_10007E218;
  if ((*(a1 + 1216) & 0x80) == 0)
  {
    v93[1] = sub_100001BE8(a1, v92, v93) - 244;
    v92[1] = *(a1 + 1328);
    *(a1 + 1328) = 0;
    v89[140] = *(a1 + 720);
    v90 = *(a1 + 792);
    __memcpy_chk();
    for (i = 0; i != 3; ++i)
    {
      v63 = *(a1 + 4 * i + 688);
      if (v63 != -1)
      {
        if (i == v63)
        {
          if (posix_spawn_file_actions_addinherit_np(v89, v63))
          {
            sub_100054420();
          }
        }

        else if (posix_spawn_file_actions_adddup2(v89, v63, i))
        {
          sub_100054420();
        }
      }
    }

    *(a1 + 1216) = *(a1 + 1216) & 0xFFFB | (4 * (*(v93[0] + 108) & 1));
    sub_100028378(a1);
    *(a1 + 1216) |= 1u;
    *(a1 + 1176) = 0;
    v64 = sub_1000166A0(&v88, 0x728uLL);
    v65 = sub_1000432D0(a1);
    v66 = sub_100015814();
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 0x40000000;
    v86[2] = sub_10002843C;
    v86[3] = &unk_100078D78;
    v86[4] = v64;
    v67 = sub_10003DE30(v65, v66, v86);
    v73 = 0;
    if (v65 && (v67 & 1) == 0)
    {
      sub_100020018(a1, 5, "couldn't handoff a spawn, asynced away", v68, v69, v70, v71, v72, v85);
      return 0;
    }

    return v73;
  }

  v87 = 0;
  v74 = off_10007DC28[0];
  *v103 = "xpcproxy";
  v104 = a1 + 1424;
  v105 = 0;
  v106 = 0;
  *v100 = 0;
  v101 = 0;
  v102 = 0;
  if (sub_100032A18(*(a1 + 248)) == qword_10007D8B8)
  {
    v75 = sub_100032A20(*(a1 + 248));
    snprintf(v100, 0x18uLL, "%lu", v75);
    v105 = v100;
  }

  if (posix_spawn_file_actions_addopen(v89, 0, "/dev/console", 0, 0) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(v89, 1, "/dev/console", 1, 0) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(v89, 2, "/dev/console", 2, 0) == -1)
  {
    sub_10005453C();
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  *__str = 0u;
  v96 = 0u;
  sub_10004EABC((*(a1 + 1408) >> 25) & 0x400, __str);
  v76 = *(a1 + 700);
  if (!v76)
  {
    v77 = *(a1 + 256);
    if (!v77)
    {
      goto LABEL_133;
    }

    v76 = *(v77 + 700);
  }

  if (v76 - 1 < 0xFFFFFFFE)
  {
    v99 = __PAIR64__(v76, dword_10007F068);
    if (posix_spawnattr_set_registered_ports_np())
    {
      sub_100054420();
    }

    goto LABEL_134;
  }

LABEL_133:
  v99 = 0;
LABEL_134:
  if (posix_spawnattr_set_launch_type_np() == -1)
  {
    sub_10005453C();
  }

  v73 = posix_spawnp(&v87, v74, v89, &v88, v103, qword_10007F090);
  if (!v73 && v87 <= 0)
  {
    sub_100020018(a1, 3, "posix_spawnp() returned 0 but pid=%d", v78, v79, v80, v81, v82, v87);
    v73 = 153;
  }

  sub_100028740(&v88, v73);
  sub_100022D58(a1, v87, v73, 0);
  return v73;
}

void sub_100027E70(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1000157D8();
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
  v10 = dispatch_time(0, 1000000000 * a2);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  sub_10001B5B8(a1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000280E4;
  handler[3] = &unk_100078D38;
  handler[4] = a1;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_source_set_mandatory_cancel_handler();
  dispatch_activate(v9);
  *(a1 + 840) = v9;
  *(a1 + 832) = a3;
  *(a1 + 1204) = *(a1 + 1204) | (a2 << 8);
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  v11 = a1;
  if ((*(a1 + 1413) & 4) != 0)
  {
    v11 = *(a1 + 256);
  }

  if (sub_1000169A8((v11 + 1424), "com.apple."))
  {
    v12 = v11 - 102;
  }

  else
  {
    v12 = v11 - 112;
  }

  v13 = sub_10000FC98(0x40uLL);
  sub_10000FD40(v13, "%s throttled", v14, v15, v16, v17, v18, v19, v12);
  v20 = sub_10004A4D0(a1 + 1224);
  if (v20)
  {
    sub_10000FD40(v13, " after %s", v21, v22, v23, v24, v25, v26, v20);
  }

  v27 = sub_10000FCFC(v13);
  sub_10000FD04(v13);
  v28 = sub_100001278(1, v27);
  if (!v29)
  {
    *(a1 + 856) = v28;
  }

  free(v27);
  sub_10002813C(a1, 1, v30, v31, v32, v33, v34, v35);
  if (a4 == 1)
  {
    sub_10000F0A4(a1);
  }

  sub_100027154(a1, 1);
  sub_100020018(a1, 5, "service spawn deferred by %llu seconds due to %s", v36, v37, v38, v39, v40, a2);
}

void sub_1000280EC(uint64_t a1)
{
  sub_10000EF88(*(a1 + 32));
  sub_10001B690(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void sub_10002813C(void *a1, integer_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[176] >= 0 == a2)
  {
    for (i = a1[19]; i; i = *(i + 16))
    {
      sub_10004D1D0(i, a2, a3, a4, a5, a6, a7, a8);
    }

    for (j = a1[22]; j; j = *(j + 16))
    {
      sub_10004D1D0(j, a2, a3, a4, a5, a6, a7, a8);
    }

    for (k = a1[23]; k; k = *(k + 16))
    {
      sub_10004D1D0(k, a2, a3, a4, a5, a6, a7, a8);
    }

    v14 = 0x8000000000000000;
    if (!a2)
    {
      v14 = 0;
    }

    a1[176] = v14 & 0x8000000000000000 | a1[176] & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = "unmarked";
    if (a2)
    {
      v10 = "marked";
    }

    sub_100020018(a1, 7, "Service already %s as throttled", a4, a5, a6, a7, a8, v10);
  }
}

uint64_t sub_100028224(uint64_t a1, _BYTE *a2)
{
  if ((*(a1 + 1216) & 0x800) != 0)
  {
    *a2 = 5;
    v11 = *(a1 + 1216);
  }

  else
  {
    memset(buffer, 0, sizeof(buffer));
    v4 = *(a1 + 1168);
    if (sub_100028338(v4, buffer))
    {
      xpc_strerror();
      sub_100020018(a1, 4, "procinfo failed for PID %d: %s: %d", v5, v6, v7, v8, v9, v4);
      result = 0;
      *a2 = 4;
      return result;
    }

    *a2 = 5;
    v11 = *(a1 + 1216);
    if ((v11 & 0x800) == 0)
    {
      v11 = v11 & 0xFFFFF3FF | HIWORD(LODWORD(buffer[0])) & 0x400 | 0x800;
      *(a1 + 1216) = v11;
    }
  }

  return (v11 >> 10) & 1;
}

uint64_t sub_100028338(int a1, void *buffer)
{
  if (j__proc_pidinfo(a1, 18, 1uLL, buffer, 192) == 192)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

double sub_100028378(uint64_t a1)
{
  free(*(a1 + 1280));
  *(a1 + 1280) = 0;
  v2 = *(a1 + 1288);
  if (v2)
  {
    xpc_release(v2);
    *(a1 + 1288) = 0;
  }

  free(*(a1 + 1296));
  *(a1 + 1296) = 0;
  v3 = *(a1 + 1304);
  if (v3)
  {
    xpc_release(v3);
    *(a1 + 1304) = 0;
  }

  free(*(a1 + 1312));
  *(a1 + 1312) = 0;
  v4 = *(a1 + 1328);
  if (v4)
  {
    xpc_release(v4);
    *(a1 + 1328) = 0;
  }

  v5 = *(a1 + 1320);
  if (v5)
  {
    if (sub_10000B760(v5))
    {
      _os_assumes_log_ctx();
    }

    *(a1 + 1320) = 0;
  }

  *(a1 + 1344) = 0;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 1336) = 0xFFFFFFFFLL;
  *(a1 + 1346) &= 0xC8u;
  return result;
}

void sub_10002843C()
{
  v0 = *(__chkstk_darwin() + 32);
  v1 = sub_100015814();
  dispatch_assert_queue_V2(v1);
  *(v0 + 1208) = _xpc_spawnattr_unpack_string(*(v0 + 1280), *(v0 + 1288), *(*(v0 + 1280) + 4));
  if (*(v0 + 1128) == -101)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 1128);
  }

  bzero(block, 0x1090uLL);
  v3 = sub_10001C118(v2, block);
  if (v3)
  {
    LODWORD(v8) = v3;
    sub_100021AF4(v0, v3, 0, 3204, 0, "launch_kern_credentials_resolve_by_uid(%d) failed", v6, v7, v2);
  }

  else
  {
    LODWORD(v8) = sub_100013494(v0, *(v0 + 1280), *(v0 + 1288), block, v4, v5, v6, v7);
    if (!v8)
    {
      v13 = sub_100013FE4(v0, *(v0 + 1280), *(v0 + 1288), *(v0 + 1264), v9, v10, v11, v12);
      if (v13 || (v17 = *(v0 + 1272)) != 0 && (v13 = sub_10001418C(v0, v17)) != 0 || (v13 = sub_1000142E0(v0, *(v0 + 1280), *(v0 + 1288), 0, 0)) != 0)
      {
        LODWORD(v8) = v13;
      }

      else
      {
        if (((*(v0 + 1256) + 1176) & 3) != 0)
        {
          sub_100054404();
        }

        v18 = &_posix_spawnp;
        if ((*(*(v0 + 1280) + 240) & 0x1000) == 0)
        {
          v18 = &_posix_spawn;
        }

        v19 = *(v0 + 1208);
        v20 = *(v0 + 1216);
        v21 = *(v0 + 1232);
        v8 = (v18)();
        if (v8)
        {
          sub_100021AF4(v0, v8, 0, 3241, 0, "posix_spawn(%s) failed", v22, v23, *(v0 + 1208));
        }
      }
    }
  }

  v14 = *(v0 + 1256);
  v15 = *(v14 + 1176);
  sub_100028740(v0, v8);
  free(v0);
  v16 = sub_1000157D8();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10002880C;
  block[3] = &unk_100078D98;
  block[4] = v14;
  v25 = v15;
  v26 = v8;
  dispatch_async(v16, block);
}

void sub_10002868C(uint64_t a1)
{
  if ((*(a1 + 1415) & 0x18) != 0)
  {
    v3 = sub_100026FE0(a1);
    v4 = a1 + 1056;
    if (v3)
    {
      v4 = v3;
    }

    sub_1000286E0((v4 + 24));
  }
}

void sub_1000286E0(xpc_object_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    v1 = xpc_array_create(0, 0);
    *a1 = v1;
  }

  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);

  xpc_array_set_uint64(v1, 0xFFFFFFFFFFFFFFFFLL, v3);
}

void sub_100028740(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1808))
  {
    v3 = 0;
    do
    {
      if (sub_10000B790(*(a1 + 1296 + 4 * v3)))
      {
        v4 = *(a1 + 1256);
        _os_assumes_log_ctx();
      }

      ++v3;
    }

    while (v3 < *(a1 + 1808));
  }

  v5 = *(a1 + 1816);
  if (v5 + 1 >= 2 && sub_10000B760(v5))
  {
    sub_100054420();
  }

  free(*(a1 + 1280));
  v6 = *(a1 + 1264);
  if (v6)
  {
    xpc_release(v6);
  }

  v7 = *(a1 + 1272);
  if (v7)
  {
    xpc_release(v7);
  }

  sub_1000133A8(a1);
}

uint64_t sub_100028820(uint64_t a1)
{
  result = sub_100026FE0(a1);
  if (result)
  {
    v3 = *(a1 + 248);

    return sub_10002CF00(v3);
  }

  return result;
}

uint64_t sub_100028868(uint64_t a1, int a2)
{
  v4 = *(a1 + 312);
  if (v4)
  {
    sub_100013100(v4, a2);
  }

  result = *(a1 + 320);
  if (result)
  {

    return sub_100013100(result, a2);
  }

  return result;
}

double sub_1000288C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(a1 + 1216) & 0x200) != 0)
  {

    sub_100020018(a1, 5, "already handled failed init, ignoring", a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v10 = a3;
    v11 = a2;
    *(a1 + 1216) |= 0x200u;
    if ((*(a1 + 1412) & 0x20) != 0)
    {
      sub_100023C7C(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    if (v11 != 111 || v10 == 75)
    {
      if (!v11)
      {
        sub_100054404();
      }
    }

    else
    {
      v12 = *(a1 + 1408);
      if ((v12 & 0x80000000000) == 0)
      {
        if (*(a1 + 296))
        {
          sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
        }

        if ((v12 & 0x20000000000) != 0)
        {
          sub_10001FB70(a1);
          sub_100020018(a1, 65539, "Missing executable detected. Job: '%s' Executable: '%s'", v13, v14, v15, v16, v17, a1 - 112);
        }
      }
    }

    sub_10001FECC(a1, 4, v11);

    return sub_100028378(a1);
  }

  return result;
}

void sub_100028A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((sub_100046C18(*(a1 + 1168)) & 1) != 0 || (*(a1 + 1216) & 0xC) != 0)
  {

    sub_100020018(a1, 5, "service is being debugged, not timing out launch", v10, v11, v12, v13, v14, a9);
  }

  else
  {
    if (*(a1 + 872))
    {
      sub_10001BB40(a1);
      dispatch_source_cancel(*(a1 + 872));
      dispatch_release(*(a1 + 872));
      *(a1 + 872) = 0;
    }

    sub_100020018(a1, 4, "Extension is hanging on launch. Killing.", v10, v11, v12, v13, v14, v33);
    sub_100020018(a1, 5, "killing extension hanging on launch", v15, v16, v17, v18, v19, v34);
    v20 = sub_10000B7FC();
    v26 = sub_10002377C(a1, 2, v20, v21, v22, v23, v24, v25);
    v27 = v26;
    if (v26 > 0x25 || ((1 << v26) & 0x2000000009) == 0)
    {
      strerror(v26);
      sub_100020018(a1, 4, "Failed to kill hanging extension: %d: %s", v28, v29, v30, v31, v32, v27);
    }
  }
}

uint64_t sub_100028B5C(void *a1, int *a2)
{
  if (xpc_dictionary_get_BOOL(a1, "self"))
  {
    xpc_dictionary_get_audit_token();
    v4 = sub_100022BD8(0);
    if (v4)
    {
      v5 = v4;
      if (sub_1000329B4(*(v4 + 248), a1))
      {
        return v5;
      }

      v6 = 36;
    }

    else
    {
      v6 = 135;
    }

    v5 = 0;
LABEL_10:
    *a2 = v6;
    return v5;
  }

  value = xpc_dictionary_get_value(a1, "service-port");
  if (!value)
  {
    goto LABEL_13;
  }

  if (xpc_get_type(value) != &_xpc_type_mach_send)
  {
LABEL_7:
    v5 = 0;
    v6 = 22;
    goto LABEL_10;
  }

  right = xpc_mach_send_get_right();
  if ((right + 1) < 2)
  {
LABEL_13:
    int64 = xpc_dictionary_get_int64(a1, "pid");
    if (int64)
    {
      v5 = sub_100022BD8(int64);
      if (v5)
      {
        return v5;
      }

      goto LABEL_15;
    }

    v17 = sub_1000328DC(a1, 1, a2);
    if (!v17)
    {
      return 0;
    }

    v18 = v17;
    if (sub_1000329B4(v17, a1))
    {
      string = xpc_dictionary_get_string(a1, "name");
      if (!string)
      {
        goto LABEL_7;
      }

      v20 = string;
      v21 = sub_100030830(v18, string);
      if (v21)
      {
        goto LABEL_21;
      }

      v21 = sub_10003301C(v18, v20);
      if (v21)
      {
        goto LABEL_21;
      }

      if (!xpc_dictionary_get_BOOL(a1, "unidomain") || sub_100032A18(v18) != &unk_10007D720 || (v25 = sub_1000443F4()) == 0)
      {
LABEL_35:
        v5 = 0;
LABEL_15:
        v6 = 113;
        goto LABEL_10;
      }

      v26 = v25;
      if (sub_1000329B4(v25, a1))
      {
        v21 = sub_100030830(v26, v20);
        if (v21)
        {
LABEL_21:
          v5 = v21;
          uuid = xpc_dictionary_get_uuid(a1, "_instance");
          if (!uuid)
          {
            return v5;
          }

          v5 = *(v5 + 200);
          if (v5)
          {
            v23 = uuid;
            while (uuid_compare(v23, (v5 + 408)))
            {
              v5 = *(v5 + 40);
              if (!v5)
              {
                goto LABEL_35;
              }
            }

            return v5;
          }

          goto LABEL_35;
        }

        goto LABEL_35;
      }
    }

    v5 = 0;
    v6 = 36;
    goto LABEL_10;
  }

  v24 = sub_100032720(right, 0, v10, v11, v12, v13, v14, v15);
  if (!v24)
  {
    v5 = 0;
    v6 = 135;
    goto LABEL_10;
  }

  return sub_10004CC7C(v24);
}

xpc_object_t sub_100028DB8(uint64_t a1, void *a2, int a3)
{
  v6 = sub_100033434(*(a1 + 248));
  result = xpc_retain(a2);
  *(v6 + 3) = result;
  v6[8] = a3;
  v8 = (a1 + 512);
  v9 = *(a1 + 512);
  *v6 = v9;
  if (v9)
  {
    *(v9 + 8) = v6;
  }

  *v8 = v6;
  *(v6 + 1) = v8;
  return result;
}

uint64_t sub_100028E20(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  value = 0;
  v8 = *(a1 + 1168);
  sub_100010B3C();
  v14 = *(a1 + 1168);
  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  v15 = *(a1 + 700);
  if (!v15)
  {
    v16 = *(a1 + 256);
    if (!v16)
    {
      v17 = 1;
      goto LABEL_10;
    }

    v15 = *(v16 + 700);
  }

  v17 = v15 == 0;
  if ((v15 - 1) <= 0xFFFFFFFD && (*(a1 + 1346) & 4) == 0)
  {
    sub_100020018(a1, 5, "blocking xpcproxy until controller configures the service", v9, v10, v11, v12, v13, buffer);
    v18 = a1;
    v19 = a3;
    v20 = 3;
LABEL_13:
    sub_100028DB8(v18, v19, v20);
    return 0;
  }

LABEL_10:
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v22 = *(a1 + 1216);
  if ((v22 & 0x10) == 0)
  {
    v18 = a1;
    v19 = a3;
    v20 = 2;
    goto LABEL_13;
  }

  if (v22)
  {
    return 37;
  }

  reply = xpc_dictionary_create_reply(a3);
  buffer = 0;
  v24 = sub_100001BE8(a1, &value, &buffer);
  v25 = buffer;
  *(a1 + 1216) = *(a1 + 1216) & 0xFFFB | (4 * (*(buffer + 108) & 1));
  v26 = dispatch_data_create(v25, v24, 0, _dispatch_data_destructor_free);
  v27 = xpc_data_create_with_dispatch_data(v26);
  dispatch_release(v26);
  xpc_dictionary_set_value(reply, "blob", v27);
  xpc_release(v27);
  xpc_dictionary_set_value(reply, "ports", value);
  xpc_release(value);
  if (!v17)
  {
    xpc_dictionary_set_mach_send();
  }

  v28 = xpc_array_create(0, 0);
  for (i = 0; i != 3; ++i)
  {
    v30 = *(a1 + 4 * i + 688);
    if (v30 != -1)
    {
      xpc_array_set_fd(v28, 0xFFFFFFFFFFFFFFFFLL, v30);
      xpc_array_set_int64(v28, 0xFFFFFFFFFFFFFFFFLL, i);
    }
  }

  v31 = *(a1 + 1328);
  if (v31 && xpc_array_get_count(v31))
  {
    v32 = 0;
    do
    {
      v33 = xpc_array_get_value(*(a1 + 1328), v32);
      xpc_array_append_value(v28, v33);
      ++v32;
    }

    while (v32 < xpc_array_get_count(*(a1 + 1328)));
  }

  xpc_dictionary_set_value(reply, "fds", v28);
  xpc_release(v28);
  v34 = *(a1 + 1168);
  sub_100010B3C();
  v35 = *(a1 + 1168);
  sub_100028378(a1);
  result = 0;
  *(a1 + 1216) |= 1u;
  *a4 = reply;
  return result;
}

uint64_t sub_1000290D4(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  v33 = v4;
  if ((*(a1 + 1216) & 2) != 0)
  {
    return 131;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "pc");
  if (!uint64)
  {
    v32 = "Failure info has no PC.";
LABEL_17:
    sub_100020018(a1, 3, v32, v9, v10, v11, v12, v13, v4);
    return 22;
  }

  v14 = uint64;
  v15 = xpc_dictionary_get_uint64(xdict, "line");
  if (!v15)
  {
    v32 = "Failure info has no line number.";
    goto LABEL_17;
  }

  v16 = v15;
  uuid = xpc_dictionary_get_uuid(xdict, "uuid");
  if (!uuid)
  {
    v32 = "Failure info has no image UUID.";
    goto LABEL_17;
  }

  v18 = uuid;
  v19 = xpc_dictionary_get_BOOL(xdict, "setup-event");
  string = xpc_dictionary_get_string(xdict, "string");
  int64 = xpc_dictionary_get_int64(xdict, "code");
  if (!int64)
  {
    return 22;
  }

  v22 = int64;
  v24 = xpc_dictionary_get_int64(xdict, "subcode");
  if (byte_10007F0FA == 1)
  {
    nullsub_23("xpcproxy failed", v23);
  }

  sub_100021C08(a1, v14, v16, v18, v22, v24, string);
  if (v19)
  {
    sub_100020018(a1, 5, "Service setup event to handle failure and will not launch until it fires.", v25, v26, v27, v28, v29, v33);
    *(a1 + 1408) |= 0x40000uLL;
  }

  sub_1000288C4(a1, v22, v24, v25, v26, v27, v28, v29, v33);
  reply = xpc_dictionary_create_reply(xdict);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_1000292A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if ((sub_10000E554(a2, 13) & 1) == 0)
  {
    memset(v36, 0, sizeof(v36));
    v24 = sub_100045C78(*(a2 + 20), v36);
    sub_100020018(a1, 4, "denied kick request from %s - missing entitlement %s", v25, v26, v27, v28, v29, v24);
    return 144;
  }

  v8 = xpc_dictionary_get_BOOL(a3, "unthrottle");
  if (v8)
  {
    v9 = sub_100026FE0(a1);
    v10 = a1 + 1056;
    if (v9)
    {
      v10 = v9;
    }

    *(v10 + 1) = 1;
  }

  v11 = xpc_dictionary_get_BOOL(a3, "suspended");
  v12 = xpc_dictionary_get_BOOL(a3, "kill");
  v19 = *(a1 + 1168);
  if (v12)
  {
    if (v19)
    {
      result = sub_1000235C4(a1, a2, v13, v14, v15, v16, v17, v18);
      if (result)
      {
        return result;
      }

      xpc_dictionary_set_BOOL(a3, "kill", 0);
      v21 = a1;
      v22 = a3;
      v23 = 5;
      goto LABEL_25;
    }
  }

  else if (v19)
  {
    v30 = a3;
LABEL_22:
    result = xpc_dictionary_create_reply(v30);
    if (!result)
    {
      return result;
    }

    v33 = result;
    v34 = *(a1 + 1168);
    v35 = "pid";
    goto LABEL_28;
  }

  if (v11)
  {
    *(a1 + 1346) |= 1u;
  }

  if (v8)
  {
    v31 = sub_100023354(a1, 9);
  }

  else
  {
    v31 = sub_1000234BC(a1, 9, v13, v14, v15, v16, v17, v18);
  }

  v32 = v31;
  if (v31 == 36)
  {
    v21 = a1;
    v22 = a3;
    v23 = 1;
LABEL_25:
    sub_100028DB8(v21, v22, v23);
    return 0;
  }

  v30 = a3;
  if (!v32)
  {
    goto LABEL_22;
  }

  result = xpc_dictionary_create_reply(a3);
  if (!result)
  {
    return result;
  }

  v33 = result;
  v34 = v32;
  v35 = "error";
LABEL_28:
  xpc_dictionary_set_int64(v33, v35, v34);
  result = 0;
  *a4 = v33;
  return result;
}

uint64_t sub_1000294B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if ((sub_10000E554(a2, 13) & 1) == 0)
  {
    memset(v41, 0, sizeof(v41));
    v28 = sub_100045C78(*(a2 + 20), v41);
    sub_100020018(a1, 4, "denied attach request from %s - missing entitlement %s", v29, v30, v31, v32, v33, v28);
    return 144;
  }

  v8 = xpc_dictionary_get_BOOL(a3, "kill");
  v9 = xpc_dictionary_get_BOOL(a3, "run");
  v10 = xpc_dictionary_get_BOOL(a3, "proxy");
  v11 = xpc_dictionary_get_BOOL(a3, "pended");
  v18 = *(a1 + 1346);
  v19 = v18 | 1;
  v20 = v18 & 0xFC | 2;
  if (!v11 && v10)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  *(a1 + 1346) = v21;
  v22 = *(a1 + 1168);
  if (!v11 && (v8 || v10))
  {
    if (v22)
    {
      v23 = sub_1000235C4(a1, a2, v12, v13, v14, v15, v16, v17);
      if (v23 != 37)
      {
        v24 = v23;
        if (v23)
        {
          sub_100028378(a1);
          return v24;
        }
      }

      xpc_dictionary_set_BOOL(a3, "pended", 1);
      v25 = a1;
      v26 = a3;
      v27 = 5;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (!v22)
  {
LABEL_17:
    if (!v9 || (v36 = sub_100020084(a1, 9), v36 == 36))
    {
      xpc_dictionary_set_BOOL(a3, "pended", 1);
      v25 = a1;
      v26 = a3;
      v27 = 1;
LABEL_24:
      sub_100028DB8(v25, v26, v27);
      return 0;
    }

    v37 = v36;
    if (v36)
    {
      reply = xpc_dictionary_create_reply(a3);
      if (reply)
      {
        v39 = reply;
        xpc_dictionary_set_int64(reply, "error", v37);
        *a4 = v39;
      }

      sub_100028378(a1);
      return 0;
    }
  }

  v34 = xpc_dictionary_create_reply(a3);
  if (!v34)
  {
    return 0;
  }

  v35 = v34;
  xpc_dictionary_set_int64(v34, "pid", *(a1 + 1168));
  v24 = 0;
  *a4 = v35;
  return v24;
}

uint64_t sub_100029704(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  value[0] = -1;
  string = xpc_dictionary_get_string(xdict, "name");
  if (!string)
  {
    sub_10004749C(3, "no name, failing");
    v18 = 22;
LABEL_17:
    value[0] = v18;
    v20 = sub_10000BC10(xdict, "service-ctl-reply-port");
    goto LABEL_18;
  }

  v9 = string;
  if ((sub_10000E554(a2, 13) & 1) == 0)
  {
    v84 = 0u;
    v85 = 0u;
    *&value[1] = 0u;
    v83 = 0u;
    v19 = sub_100045C2C(a2, &value[1]);
    sub_10004749C(3, "Non-entitled process tried to control service %s: %s.%d", v9, v19, *(a2 + 20));
    v18 = 144;
    goto LABEL_17;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "type");
  v11 = xpc_dictionary_get_uint64(xdict, "handle");
  if (uint64 == 5 && !v11)
  {
    sub_10004749C(5, "will attach to %s next time it is spawned", v9);
    v12 = &qword_10007E210;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (!strcmp(v12[2], v9))
      {
        sub_10004749C(5, "canceling old global attach request to %s", v9);
        sub_10002ADF8(v12);
        v13 = *v12;
        v14 = v12[1];
        if (*v12)
        {
          *(v13 + 1) = v14;
        }

        *v14 = v13;
        *v12 = -1;
        v12[1] = -1;
        xpc_release(v12[3]);
        free(v12);
        break;
      }
    }

    v15 = sub_100014514(0x20uLL, 0xF004009F7A1C4uLL);
    v16 = v15;
    v17 = qword_10007E210;
    *v15 = qword_10007E210;
    if (v17)
    {
      *(v17 + 8) = v15;
    }

    qword_10007E210 = v15;
    v15[1] = &qword_10007E210;
LABEL_14:
    v16[2] = v9;
    v18 = 0;
    v16[3] = xpc_retain(xdict);
    return v18;
  }

  if (a1)
  {
    v20 = sub_10000BC10(xdict, "service-ctl-reply-port");
    if ((v20 - 1) >= 0xFFFFFFFE)
    {
      sub_10004749C(3, "no reply expected, failing");
      v18 = 22;
    }

    else
    {
      if (*(a1 + 700))
      {
        v84 = 0u;
        v85 = 0u;
        *&value[1] = 0u;
        v83 = 0u;
        v78[1] = 0;
        v79 = 0;
        v78[0] = 0;
        HIDWORD(v79) = *(a1 + 704);
        v80 = 0;
        v81 = *(a1 + 708);
        v24 = sub_100045C2C(v78, &value[1]);
        sub_100045C2C(a2, &value[1]);
        v77 = *(a2 + 20);
        sub_100020018(a1, 4, "Replacing controller %s[%d] with %s[%d]", v25, v26, v27, v28, v29, v24);
        sub_10002AE70(a1);
      }

      mach_send = _xpc_dictionary_extract_mach_send();
      if (mach_send - 1 < 0xFFFFFFFE)
      {
        v36 = mach_send;
        reply_from_port = xpc_pipe_create_reply_from_port();
        if (!reply_from_port)
        {
          sub_100054404();
        }

        v38 = reply_from_port;
        *(a1 + 704) = *(a2 + 20);
        *(a1 + 708) = *(a2 + 28);
        *(a1 + 700) = v36;
        v39 = sub_1000157D8();
        v40 = dispatch_source_create(&_dispatch_source_type_mach_send, v36, 1uLL, v39);
        *(a1 + 712) = v40;
        dispatch_set_context(v40, a1);
        dispatch_source_set_event_handler_f(*(a1 + 712), sub_10002AEC0);
        v41 = *(a1 + 712);
        dispatch_source_set_mandatory_cancel_handler_f();
        dispatch_activate(*(a1 + 712));
        v47 = *(a1 + 1168);
        if (v47)
        {
          xpc_dictionary_set_int64(v38, "pid", v47);
          xpc_dictionary_set_BOOL(v38, "configurable", 0);
        }

        v18 = 0;
        *a4 = v38;
        value[0] = 0;
        goto LABEL_45;
      }

      sub_100020018(a1, 4, "Got dead control port", v31, v32, v33, v34, v35, v76);
      v18 = 57;
    }

    value[0] = v18;
LABEL_45:
    if ((*(a1 + 1346) & 8) != 0)
    {
      sub_100020018(a1, 5, "controller attached, spawning", v42, v43, v44, v45, v46, v76);
      v66 = *(a1 + 832);
      *(a1 + 832) = 0;
      v67 = sub_100020084(a1, v66);
      if (v67)
      {
        v68 = v67;
        if (v67 != 36)
        {
          if (v67 == 139)
          {
            sub_1000441E0("deferral event on service waiting for controller");
          }

          xpc_strerror();
          sub_100020018(a1, 3, "service spawn failed after attach: %d: %s", v69, v70, v71, v72, v73, v68);
        }
      }

      *(a1 + 1346) &= ~8u;
    }

    goto LABEL_18;
  }

  v48 = sub_1000328DC(xdict, 1, value);
  if (v48)
  {
    v54 = v48;
    sub_10002C908(v48, 5, "will attach to %s next time it's created", v49, v50, v51, v52, v53, v9);
    v55 = (v54 + 48);
    v56 = (v54 + 48);
    while (1)
    {
      v56 = *v56;
      if (!v56)
      {
        break;
      }

      if (!strcmp(v56[2], v9))
      {
        sub_10002C908(v54, 5, "canceling old domain attach request to %s", v57, v58, v59, v60, v61, v9);
        sub_10002ADF8(v56);
        v62 = *v56;
        v63 = v56[1];
        if (*v56)
        {
          *(v62 + 1) = v63;
        }

        *v63 = v62;
        *v56 = -1;
        v56[1] = -1;
        xpc_release(v56[3]);
        free(v56);
        break;
      }
    }

    v64 = sub_100014514(0x20uLL, 0xF004009F7A1C4uLL);
    v16 = v64;
    v65 = *v55;
    *v64 = *v55;
    if (v65)
    {
      *(v65 + 8) = v64;
    }

    *v55 = v64;
    v64[1] = v55;
    goto LABEL_14;
  }

  v74 = value[0];
  v75 = xpc_strerror();
  sub_10004749C(3, "couldn't find domain to attach to %s, error %d - %s", v9, v74, v75);
  v20 = sub_10000BC10(xdict, "service-ctl-reply-port");
  v18 = value[0];
LABEL_18:
  if (v18 && (v20 - 1) <= 0xFFFFFFFD)
  {
    v21 = xpc_pipe_create_reply_from_port();
    if (!v21)
    {
      sub_100054404();
    }

    v22 = v21;
    xpc_dictionary_set_int64(v21, "error", value[0]);
    *a4 = v22;
    return value[0];
  }

  return v18;
}

uint64_t sub_100029C90(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v8 = *(a1 + 704);
  v9 = a1;
  if (!v8)
  {
    v9 = *(a1 + 256);
    if (!v9)
    {
      v9 = a1;
    }

    v8 = *(v9 + 704);
    if (!v8)
    {
      return 142;
    }
  }

  if (v8 != *(a2 + 20) || *(v9 + 708) != *(a2 + 28))
  {
    return 142;
  }

  if ((*(a1 + 1346) & 4) != 0)
  {
    return 37;
  }

  string = xpc_dictionary_get_string(a3, "program");
  if (string)
  {
    *(a1 + 1280) = sub_1000166EC(string);
  }

  value = xpc_dictionary_get_value(a3, "argv");
  if (value)
  {
    v12 = value;
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      *(a1 + 1288) = xpc_retain(v12);
    }
  }

  v13 = xpc_dictionary_get_string(a3, "cwd");
  if (v13)
  {
    *(a1 + 1296) = sub_1000166EC(v13);
  }

  v14 = xpc_dictionary_get_value(a3, "environment");
  if (v14)
  {
    v15 = v14;
    if (xpc_get_type(v14) == &_xpc_type_dictionary)
    {
      *(a1 + 1304) = xpc_retain(v15);
    }
  }

  uint64 = xpc_dictionary_get_uint64(a3, "binpref");
  v17 = xpc_dictionary_get_uint64(a3, "archpref");
  if (uint64)
  {
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = -1;
    }

    xpc_binprefs_alloc();
    *(a1 + 1312) = v19;
    xpc_binprefs_add(v19, uint64, v18);
  }

  v20 = xpc_dictionary_get_value(a3, "fds");
  if (v20)
  {
    v21 = v20;
    if (xpc_get_type(v20) == &_xpc_type_array)
    {
      *(a1 + 1328) = xpc_retain(v21);
    }
  }

  mach_send = _xpc_dictionary_extract_mach_send();
  if (!mach_send)
  {
    goto LABEL_30;
  }

  if ((*(a1 + 1372) + 1) >= 2)
  {
    if (sub_10000B760(mach_send))
    {
      sub_100054420();
    }

    sub_100020018(a1, 3, "Cannot set configure key endpoint on service: service has dext checkin port %#x", v30, v31, v32, v33, v34, *(a1 + 1372));
    return 22;
  }

  *(a1 + 1320) = mach_send;
LABEL_30:
  int64 = xpc_dictionary_get_int64(a3, "jetsam-flags");
  if (int64)
  {
    *(a1 + 1344) = int64;
  }

  v24 = xpc_dictionary_get_int64(a3, "jetsam-priority");
  if (v24 >= 1)
  {
    *(a1 + 1336) = v24;
  }

  v25 = xpc_dictionary_get_int64(a3, "jetsam-memlimit");
  if (v25)
  {
    *(a1 + 1340) = v25;
  }

  if (xpc_dictionary_get_BOOL(a3, "nano-allocator"))
  {
    *(a1 + 1346) |= 0x10u;
  }

  v26 = xpc_dictionary_get_BOOL(a3, "checked-allocations");
  v27 = *(a1 + 1346);
  if (v26)
  {
    v27 |= 0x20u;
    *(a1 + 1346) = v27;
  }

  if ((v27 & 1) == 0)
  {
    v27 = *(a1 + 1346) & 0xFE | xpc_dictionary_get_BOOL(a3, "suspended");
  }

  *(a1 + 1346) = v27 | 4;
  sub_10001FECC(a1, 3, 0);
  reply = xpc_dictionary_create_reply(a3);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_100029F84(uint64_t a1, uint64_t a2)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v4 = *(a1 + 704);
  if (!v4 || v4 != *(a2 + 20) || *(a1 + 708) != *(a2 + 28))
  {
    return 1;
  }

  sub_10002AE70(a1);
  return 0;
}

uint64_t sub_100029FF4(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  v8 = sub_1000332CC(*(a1 + 248), 5, 0, a2);
  if (v8)
  {
    v9 = v8;
    sub_10002AF10(a1, a2, v8);
  }

  else
  {
    reply = xpc_dictionary_create_reply(a3);
    if (reply)
    {
      v11 = reply;
      v12 = sub_100026CB4(*(a1 + 1180));
      v13 = sub_1000168E0("%s", v12);
      xpc_dictionary_set_string(v11, "reason", v13);
      free(v13);
      v9 = 0;
      *a4 = v11;
    }

    else
    {
      return 22;
    }
  }

  return v9;
}

uint64_t sub_10002A0CC(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  v8 = sub_1000332CC(*(a1 + 248), 5, 0, a2);
  if (v8)
  {
    v9 = v8;
    sub_10002AF10(a1, a2, v8);
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10002B044;
    v11[3] = &unk_100078F80;
    v11[4] = a1;
    return sub_100049C94(a3, a4, v11);
  }

  return v9;
}

uint64_t sub_10002A1A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 248);
  if (sub_100032A18(v8) != qword_10007D8B8)
  {
    return 125;
  }

  if (sub_100032A20(v8) != *(a2 + 20))
  {
    return 1;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  value = xpc_dictionary_get_value(a3, "bootstrap");
  v11 = *(a1 + 632);
  if (v11)
  {
    xpc_release(v11);
    *(a1 + 632) = 0;
  }

  if (value)
  {
    *(a1 + 632) = xpc_retain(value);
  }

  reply = xpc_dictionary_create_reply(a3);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002A280(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 248);
  if (sub_100032A18(v8) != qword_10007D8B8)
  {
    return 125;
  }

  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v10 = *(a1 + 256);
  if (!v10)
  {
    v10 = a1;
  }

  v11 = *(v10 + 632);
  reply = xpc_dictionary_create_reply(a3);
  v13 = reply;
  if (v11)
  {
    xpc_dictionary_set_value(reply, "bootstrap", v11);
  }

  memset(v14, 0, sizeof(v14));
  sub_100032D30(v8, v14);
  xpc_dictionary_set_data(v13, "creator", v14, 0x20uLL);
  result = 0;
  *a4 = v13;
  return result;
}

uint64_t sub_10002A37C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (*(a1 + 296))
  {
    return 113;
  }

  v9 = *(a1 + 344);
  v11 = v9 && (v10 = *(v9 + 48)) != 0 && *(v9 + 56) && sub_100041CA0(a2, v10);
  reply = xpc_dictionary_create_reply(a3);
  v13 = sub_1000241D0(a1, v11);
  xpc_dictionary_set_value(reply, "attrs", v13);
  xpc_release(v13);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002A440(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 3))
  {
    return 144;
  }

  if (!*(a1 + 1168))
  {
    return 3;
  }

  v8 = xpc_dictionary_get_BOOL(a3, "deferred");
  if ((*(a1 + 1216) & 2) != 0)
  {
    reply = xpc_dictionary_create_reply(a3);
    xpc_dictionary_set_int64(reply, "pid", *(a1 + 1168));
    result = 0;
    *a4 = reply;
  }

  else
  {
    if (v8)
    {
      return 3;
    }

    xpc_dictionary_set_BOOL(a3, "deferred", 1);
    sub_100028DB8(a1, a3, 4);
    return 0;
  }

  return result;
}

uint64_t sub_10002A51C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 3))
  {
    return 144;
  }

  if (*(a1 + 1040) && *(a1 + 1224))
  {
    if (sub_10004A5D0(a1 + 1224))
    {
      v8 = 1;
    }

    else if (sub_10004A680((a1 + 1224)))
    {
      if (*(a1 + 1228))
      {
        v8 = 128;
      }

      else
      {
        v8 = 64;
      }
    }

    else
    {
      v8 = 64;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 1228);
  v11 = *(a1 + 1232);
  reply = xpc_dictionary_create_reply(a3);
  v13 = reply;
  if (*(a1 + 1040) && *(a1 + 364) == 80)
  {
    xpc_dictionary_set_uint64(reply, "termination-state", 0x80uLL);
    v10 = 9;
    v11 = 10;
LABEL_14:
    xpc_dictionary_set_uint64(v13, "os-namespace", v10);
    xpc_dictionary_set_uint64(v13, "os-code", v11);
    goto LABEL_15;
  }

  xpc_dictionary_set_uint64(reply, "termination-state", v8);
  if (v8 == 128)
  {
    goto LABEL_14;
  }

LABEL_15:
  result = 0;
  *a4 = v13;
  return result;
}

uint64_t sub_10002A66C(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  v8 = xpc_dictionary_get_BOOL(xdict, "yesno");
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  v14 = *(a1 + 864);
  if (v8)
  {
    if (v14)
    {
      sub_100020018(a1, 5, "extension already attempting clean exit", v9, v10, v11, v12, v13, v20);
      return 36;
    }

    if (*(a1 + 424) > 4u)
    {
      goto LABEL_12;
    }

    sub_100020018(a1, 5, "extension attempting to exit cleanly", v9, v10, v11, v12, v13, v20);
    v16 = sub_1000157D8();
    *(a1 + 864) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);
    sub_10001BB18(a1);
    dispatch_set_context(*(a1 + 864), a1);
    v17 = *(a1 + 864);
    v18 = dispatch_time(0, 1000000000 * *(a1 + 880));
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(*(a1 + 864), sub_10002B050);
    dispatch_activate(*(a1 + 864));
  }

  else
  {
    if (!v14)
    {
      sub_100020018(a1, 5, "extension already interrupted clean exit attempt", v9, v10, v11, v12, v13, v20);
      return 37;
    }

    if (*(a1 + 424) >= 5u)
    {
LABEL_12:
      sub_100020018(a1, 5, "extension is being stopped", v9, v10, v11, v12, v13, v20);
      return 124;
    }

    sub_100020018(a1, 5, "extension canceled clean exit attempt", v9, v10, v11, v12, v13, v20);
    sub_10001BB40(a1);
    dispatch_source_cancel(*(a1 + 864));
    dispatch_release(*(a1 + 864));
    *(a1 + 864) = 0;
  }

  reply = xpc_dictionary_create_reply(xdict);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002A85C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if ((*(a1 + 1412) & 8) == 0)
  {
    return 137;
  }

  if (*(a2 + 20) != *(a1 + 1168))
  {
    return 1;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!*(a1 + 872))
  {
    return 37;
  }

  sub_100020018(a1, 5, "extension checked in as alive", v9, v10, v11, v12, v13, v4);
  sub_10001BB40(a1);
  dispatch_source_cancel(*(a1 + 872));
  dispatch_release(*(a1 + 872));
  *(a1 + 872) = 0;
  *(a1 + 1216) |= 0x40u;
  reply = xpc_dictionary_create_reply(a3);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002A938(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v7 = sub_10001FB88(a1);
  v8 = *(a1 + 256);
  if (v8)
  {
    v7 = sub_10001FB88(v8);
  }

  if (!v7)
  {
    return 113;
  }

  reply = xpc_dictionary_create_reply(a3);
  v10 = sub_100049864(v7);
  xpc_dictionary_set_value(reply, "xpcservice-dict", v10);
  xpc_release(v10);
  xpc_dictionary_set_string(reply, "identifier", *(a1 + 576));
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002AA10(uint64_t a1, void *a2, void *a3)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  reply = xpc_dictionary_create_reply(a2);
  v7 = reply;
  if ((*(a1 + 1413) & 4) != 0)
  {
    xpc_dictionary_set_uuid(reply, "instance", (a1 + 408));
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_10002AA84(uint64_t a1, _OWORD *a2, void *a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  uuid = xpc_dictionary_get_uuid(a3, "instance");
  if (!uuid)
  {
    return 22;
  }

  v9 = uuid;
  if (!sub_10000E554(a2, 30))
  {
    return 144;
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    while (uuid_compare(v9, (v10 + 408)))
    {
      v10 = *(v10 + 40);
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    return 37;
  }

  else
  {
LABEL_7:
    v13 = 0;
    sub_10002DFD8(*(a1 + 248), a1, v9, 0, 0, a2, &v13);
    v11 = v13;
    if (!v13)
    {
      *a4 = xpc_dictionary_create_reply(a3);
    }
  }

  return v11;
}

uint64_t sub_10002AB70(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  uuid = xpc_dictionary_get_uuid(a3, "instance");
  if (!uuid)
  {
    return 22;
  }

  v9 = uuid;
  if (!sub_10000E554(a2, 30))
  {
    return 144;
  }

  v10 = *(a1 + 200);
  if (!v10)
  {
    return 113;
  }

  while (uuid_compare(v9, (v10 + 408)))
  {
    v10 = *(v10 + 40);
    if (!v10)
    {
      return 113;
    }
  }

  result = sub_10002DF94(*(v10 + 248), v10);
  if (!result)
  {
    reply = xpc_dictionary_create_reply(a3);
    goto LABEL_15;
  }

  if (result == 36)
  {
    reply = xpc_dictionary_create_reply(a3);
    sub_100026D4C(v10);
    v13 = xpc_mach_send_create_with_disposition();
    xpc_dictionary_set_value(reply, "monitor", v13);
    xpc_release(v13);
LABEL_15:
    result = 0;
    *a4 = reply;
  }

  return result;
}

uint64_t sub_10002AC84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 30))
  {
    return 144;
  }

  empty = xpc_array_create_empty();
  for (i = *(a1 + 200); i; i = *(i + 40))
  {
    xpc_array_set_uuid(empty, 0xFFFFFFFFFFFFFFFFLL, (i + 408));
  }

  reply = xpc_dictionary_create_reply(a3);
  xpc_dictionary_set_value(reply, "uuids", empty);
  xpc_release(empty);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002AD38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 39))
  {
    return 144;
  }

  reply = xpc_dictionary_create_reply(a3);
  v9 = sub_100022158(a1, 1);
  if (v9)
  {
    v10 = v9;
    xpc_dictionary_set_string(reply, "service-name", v9);
    free(v10);
  }

  else
  {
    xpc_dictionary_set_string(reply, "service-name", "Unknown service");
  }

  result = 0;
  *a4 = reply;
  return result;
}

void sub_10002ADF8(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 24));
  if (reply)
  {
    v2 = reply;
    xpc_dictionary_set_int64(reply, "error", 89);
    if ((xpc_pipe_routine_reply() & 0xFFFFFFDF) != 0)
    {
      _os_assumes_log();
    }

    xpc_release(v2);
  }
}

void sub_10002AE70(uint64_t a1)
{
  *(a1 + 704) = 0;
  *(a1 + 700) = 0;
  if ((*(a1 + 1346) & 4) != 0)
  {
    sub_100028378(a1);
  }

  sub_100002B90(a1);
}

void sub_10002AEC4(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  if (sub_10000B760(handle))
  {
    _os_assumes_log();
  }

  dispatch_release(a1);
}

void sub_10002AF10(uint64_t a1, unsigned int *a2, int a3)
{
  if (a3 != 124)
  {
    if (a3 == 154)
    {
      v5 = 65539;
    }

    else
    {
      v5 = 3;
    }

    memset(v29, 0, sizeof(v29));
    v6 = sub_100045C2C(a2, v29);
    v7 = a2[5];
    xpc_strerror();
    v25 = a2[2];
    v27 = a2[6];
    v21 = a2[1];
    v23 = a2[4];
    v19 = a2[3];
    sub_100020018(a1, v5, "Caller not allowed to perform action: %s.%d, action = %s, code = %d: %s, uid = %u, euid = %u, gid = %u, egid = %u, asid = %u", v8, v9, v10, v11, v12, v6);
    v13 = a2[5];
    xpc_strerror();
    v26 = a2[2];
    v28 = a2[6];
    v22 = a2[1];
    v24 = a2[4];
    v20 = a2[3];
    sub_100020018(a1, 5, "violation: %s.%d, action = %s, code = %d: %s, uid = %u, euid = %u, gid = %u, egid = %u, asid = %u", v14, v15, v16, v17, v18, v6);
  }
}

void sub_10002B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_10001BB40(a1);
  dispatch_source_cancel(*(a1 + 864));
  dispatch_release(*(a1 + 864));
  *(a1 + 864) = 0;
  if (sub_100046C18(*(a1 + 1168)))
  {

    sub_100020018(a1, 5, "extension is being debugged; not timing out exit", v10, v11, v12, v13, v14, a9);
  }

  else
  {
    sub_100020018(a1, 4, "Extension remained dirty for too long after trying to exit. Killing.", v10, v11, v12, v13, v14, v33);
    sub_100020018(a1, 5, "extension timed out trying to exit; killing", v15, v16, v17, v18, v19, v34);
    v20 = sub_10000B7FC();
    v26 = sub_10002377C(a1, 1, v20, v21, v22, v23, v24, v25);
    v27 = v26;
    if (v26 > 0x25 || ((1 << v26) & 0x2000000009) == 0)
    {
      strerror(v26);
      sub_100020018(a1, 4, "Failed to kill extension. It may linger forever: %d: %s", v28, v29, v30, v31, v32, v27);
    }
  }
}

void sub_10002B15C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v3 + 1216);
  if ((v4 & 0x10) != 0)
  {
    sub_1000441E0("proc source registration handler invoked twice", v1, v2);
  }

  *(v3 + 1216) = v4 | 0x10;

  sub_10001FECC(v3, 2, 0);
}

uint64_t sub_10002B1A4(uint64_t a1, __int128 *a2, __int128 *a3, int a4, char a5)
{
  if (sub_10000BAFC(a2))
  {
    v10 = sub_100046ABC(*(a1 + 1168), a4);
  }

  else
  {
    v10 = sub_100046AE0(a2, a3);
  }

  v11 = v10;
  if (v10)
  {
    sub_100054E5C(v10, a1, a5);
  }

  else
  {
    v12 = *(a1 + 1168);
    sub_100010B4C();
    strsignal(a4);
    sub_100020018(a1, 5, "signaled service for %s: %s", v13, v14, v15, v16, v17, a5);
  }

  return v11;
}

uint64_t sub_10002B26C(uint64_t a1, __int128 *a2, __int128 *a3, int *a4)
{
  if (sub_10000BAFC(a2))
  {
    v8 = *(a1 + 1168);

    return j__proc_terminate(v8, a4);
  }

  else
  {

    return sub_1000469A8(a2, a3);
  }
}

void sub_10002B2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100020018(a1, 5, "exceeded sigkill timeout: %u", a4, a5, a6, a7, a8, dword_10007DC3C);
  sub_100020018(a1, 4, "Service did not exit %u seconds after SIGKILL.", v9, v10, v11, v12, v13, dword_10007DC3C);
  memset(buffer, 0, sizeof(buffer));
  if (sub_100045BAC(*(a1 + 1168), buffer))
  {
    _os_assumes_log();
  }

  else if (HIDWORD(buffer[0]) == 5)
  {
    sub_100020018(a1, 5, "service is already a zombie", v14, v15, v16, v17, v18, v51);
    sub_100020D0C(a1, 0);
    return;
  }

  sub_100020018(a1, 5, "service is still not a zombie, abandoning", v14, v15, v16, v17, v18, v51);
  v19 = (*(a1 + 536))(a1, *(a1 + 568));
  if (v19)
  {
    v25 = v19;
    xpc_strerror();
    sub_100020018(a1, 5, "cannot safely abandon: %d: %s", v26, v27, v28, v29, v30, v25);
    sub_100020018(a1, 4, "Cannot safely abandon service instance. Leaving it to languish. This may lead to deadlocks.", v31, v32, v33, v34, v35, v53);
    sub_100027154(a1, 7);
    sub_10001FECC(a1, 6, 0);
  }

  else
  {
    sub_100020018(a1, 5, "abandoning", v20, v21, v22, v23, v24, v52);
    sub_100020018(a1, 4, "Abandoning service instance. This may lead to deadlocks.", v36, v37, v38, v39, v40, v54);
    v41 = *(a1 + 1168);
    global_queue = dispatch_get_global_queue(0, 0);
    v43 = dispatch_source_create(&_dispatch_source_type_proc, v41, 0x80000000uLL, global_queue);
    dispatch_set_context(v43, v43);
    dispatch_source_set_event_handler_f(v43, sub_10002B640);
    dispatch_activate(v43);
    sub_100020C74(a1, v44, v45, v46, v47, v48, v49, v50);
  }
}

void sub_10002B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 248);
  memset(v22, 0, sizeof(v22));
  if (byte_10007F0C4 != 1 || *(a1 + 1046) || sub_100032A18(v9) == &unk_10007D8B8 && (v13 = sub_10003283C(), (sub_10002CF00(v13) & 1) == 0))
  {
    sub_100020018(a1, 4, "Service did not exit %u seconds after SIGTERM. Sending SIGKILL.", a4, a5, a6, a7, a8, *(a1 + 848));
    v10 = sub_10000B7FC();
    sub_10002B1A4(a1, v10, v22, 9, "SIGTERM timeout");
  }

  else
  {
    sub_100020018(a1, 4, "Service did not exit %u seconds after SIGTERM. Terminating with a crash report.", a4, a5, a6, a7, a8, *(a1 + 848));
    v14 = *(a1 + 1168);
    v15 = sub_1000468E8();
    if (v15)
    {
      v16 = v15;
      strerror(v15);
      sub_100020018(a1, 5, "could not terminate service after SIGTERM timeout: %d: %s", v17, v18, v19, v20, v21, v16);
    }
  }

  *(a1 + 1204) = 9;
  sub_100027154(a1, 6);
  v11 = *(a1 + 1192);
  v12 = dispatch_time(0, 1000000000 * dword_10007DC3C);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(a1 + 1192), sub_10002B2F0);
}

void sub_10002B640(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  v6 = 0;
  if (waitpid(handle, &v6, 0) == -1)
  {
    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    sub_10004749C(3, "Could not reap abandoned service instance: %d: %s", v3, v5);
  }

  dispatch_release(a1);
}

uint64_t sub_10002B6B4(uint64_t a1, int a2, xpc_object_t xstring)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  string_ptr = xpc_string_get_string_ptr(xstring);
  sub_100049ECC(v3, v4 + 2, "%s", v6, v7, v8, v9, v10, string_ptr);
  return 1;
}

uint64_t sub_10002B700(uint64_t a1, int a2, xpc_object_t xstring)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  string_ptr = xpc_string_get_string_ptr(xstring);
  sub_100049ECC(v3, v4 + 2, "%s", v6, v7, v8, v9, v10, string_ptr);
  return 1;
}

xpc_type_t sub_10002B74C(uint64_t a1, xpc_object_t object, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 16);
  result = xpc_get_type(object);
  if (result == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(object);
    return sub_100049ECC(v5, v6, "%s => %s", v9, v10, v11, v12, v13, a1, string_ptr);
  }

  return result;
}

uint64_t sub_10002B7C0(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    string_ptr = xpc_string_get_string_ptr(object);
    sub_100049ECC(v6, v5 + 2, "%s", v8, v9, v10, v11, v12, string_ptr);
  }

  return 1;
}

uint64_t sub_10002B834(uint64_t result, uint64_t a2, FILE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!result)
  {
    sub_100054404();
  }

  if (a2)
  {
    sub_100049ECC(a3, a4, "%s coalition = {", a4, a5, a6, a7, a8, result);
    sub_100012F9C(a2, a3, a4 + 1, v12, v13, v14, v15, v16);
    sub_100049ECC(a3, a4, "}", v17, v18, v19, v20, v21);

    return sub_100049F4C(a3, v22, v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

void sub_10002B8DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    if (*(a1 + 16))
    {
      sub_10000FD40(a1, " | ", a3, a4, a5, a6, a7, a8, v10);
    }

    sub_10000FD40(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  }
}

void *sub_10002B950(char *__s1)
{
  v2 = &off_100079138;
  v3 = 8;
  while (strcmp(__s1, *(v2 - 1)))
  {
    v2 += 2;
    if (!--v3)
    {
      sub_1000441E0("Unable to find boot task block for: %s", __s1);
    }
  }

  v4 = *v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10002BE68;
  aBlock[3] = &unk_1000791B0;
  aBlock[4] = v4;
  return _Block_copy(aBlock);
}

void sub_10002BA0C()
{
  if (sub_100001878())
  {

    sub_10004749C(65541, "Boot mode forced.");
  }

  else
  {
    v0 = getenv("XPC_USERSPACE_REBOOT_TO_BOOT_MODE");
    if (v0)
    {
      v1 = v0;
      if (sub_100001750(v0) != 7)
      {
        sub_1000441E0("userspace reboot into boot mode not allowed: %s", v1);
      }

      sub_10004749C(65541, "Setting boot mode to %s", v1);
      sub_1000017CC(7);
      if (setenv("XPC_IN_REM", "1", 1) == -1)
      {
        sub_10005453C();
      }

      v2 = unsetenv("XPC_USERSPACE_REBOOT_TO_BOOT_MODE");
      if (v2 < 0)
      {
        sub_10004749C(65540, "failed to unset env: XPC_USERSPACE_REBOOT_TO_BOOT_MODE: %d", v2);
      }
    }
  }
}

void sub_10002BB0C()
{
  if (sub_1000018D8(7))
  {
    v0 = getenv("XPC_IN_REM_DEVELOPMENT");
    if (sub_100016A6C(v0, "1"))
    {

      sub_10004749C(65541, "Not calling into AMFI to enable REM.");
    }

    else
    {
      sub_10004749C(65541, "Calling into AMFI to enable REM.");

      j__amfi_restricted_execution_mode_enable();
    }
  }
}

void sub_10002BB9C()
{
  sub_10000184C();
  os_variant_init_4launchd();
  _os_trace_update_with_datavolume_4launchd();

  sub_10004E754();
}

void sub_10002BBCC()
{
  v0 = mkpath_np("/private/var/mobile/tmp", 0x1FFu);
  if (v0)
  {
    if (v0 == 17)
    {
      sub_100047654("fixup-mobile-tmp", 196613, "%s already exists, skipping", v1, v2, v3, v4, v5, "/private/var/mobile/tmp");
      goto LABEL_16;
    }

    strerror(v0);
    v36 = "could not set create %s: %s";
LABEL_15:
    sub_100047654("fixup-mobile-tmp", 196611, v36, v31, v32, v33, v34, v35, "/private/var/mobile/tmp");
    goto LABEL_16;
  }

  if (chmod("/private/var/mobile/tmp", 0x3FFu) < 0)
  {
    v11 = __error();
    strerror(*v11);
    sub_100047654("fixup-mobile-tmp", 196611, "could not chmod 1777 on %s: %s", v12, v13, v14, v15, v16, "/private/var/mobile/tmp");
  }

  if (chown("/private/var/mobile/tmp", 0x1F5u, 0x1F5u) < 0)
  {
    v17 = __error();
    strerror(*v17);
    sub_100047654("fixup-mobile-tmp", 196611, "could not chown mobile/mobile %s: %s", v18, v19, v20, v21, v22, "/private/var/mobile/tmp");
  }

  v23 = open_dprotected_np("/private/var/mobile/tmp", 0, 0, 1);
  if (v23 == -1)
  {
    __error();
    v37 = __error();
    strerror(*v37);
    v36 = "could not open %s: %s";
    goto LABEL_15;
  }

  v24 = v23;
  v38 = 4;
  if (fcntl(v23, 64))
  {
    __error();
    v25 = __error();
    strerror(*v25);
    sub_100047654("fixup-mobile-tmp", 196611, "could not set protection class on %s: %s", v26, v27, v28, v29, v30, "/private/var/mobile/tmp");
  }

  if ((v24 & 0x80000000) == 0)
  {
    close(v24);
  }

LABEL_16:
  sub_100047654("fixup-mobile-tmp", 196613, "Finished boot task", v6, v7, v8, v9, v10, v38);
  byte_10007F050 = 1;
}

uint64_t sub_10002BD98()
{
  v0 = sub_100044024("/");
  v2 = v0;
  if ((v0 & 1) != 0 || (result = sub_100043F4C("/private/preboot"), v2 = result, result))
  {
    sub_10004749C(65541, "Found roots installed cookie");
    result = sysctlbyname("kern.roots_installed", 0, 0, &v2, 8uLL);
    if (result)
    {
      sub_100054420();
    }
  }

  return result;
}

void sub_10002BE1C()
{
  v0 = exclaves_boot();
  if (v0)
  {
    if (v0 != 46)
    {
      sub_10004749C(65541, "exclaves_boot failed: %d", v0);
    }
  }
}

uint64_t sub_10002BE7C(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  v9 = 1;
  if (a2 <= 4)
  {
    if (a2 == 2)
    {
      return *(a5 + 4) != 0;
    }

    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v9;
      }

      goto LABEL_9;
    }

    if ((sub_1000336A8(a5) & 1) == 0)
    {
      if ((a3 & 8) != 0 && !sub_10001A604(a5))
      {
        return v9;
      }

      if (!a6 || (sub_100017D88(a6) & 1) == 0)
      {
        if (*(a5 + 4))
        {
          return v9;
        }

        v13 = *(a5 + 20);
        if (v13 == getpid())
        {
          if (!a6)
          {
            return 0;
          }
        }

        else
        {
          v14 = sub_10001A604(a5);
          v9 = !v14;
          if (!a6 || !v14)
          {
            return v9;
          }
        }

        v15 = *(a7 + 16) || (*(a7 + 4) & 0x12) != 0;
        if ((a3 & 0x10) == 0 && v15)
        {
          return 122;
        }

        else
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (a2 == 5)
  {
    if ((sub_1000336A8(a5) & 1) == 0)
    {
      if ((a3 & 8) == 0 || sub_10001A604(a5))
      {
        return !sub_10001A604(a5);
      }

      return v9;
    }

    return 0;
  }

  if (a2 == 6)
  {
    return 0;
  }

  if (a2 != 7)
  {
    return v9;
  }

LABEL_9:
  if (sub_1000336A8(a5))
  {
    return 0;
  }

  if ((a3 & 8) == 0 || sub_10001A604(a5))
  {
    if ((a3 & 4) != 0)
    {
      return 125;
    }

    return *(a5 + 4) != 0;
  }

  return v9;
}

void sub_10002C044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002C908(a1, 5, "cleaning up", a4, a5, a6, a7, a8, v12);
  v9 = a1[4];
  v10 = a1[5];
  if (v9)
  {
    *(v9 + 40) = v10;
  }

  *v10 = v9;
  a1[4] = -1;
  a1[5] = -1;
  sub_10001B5B8(a1);
  v11 = sub_1000157D8();

  dispatch_async_f(v11, a1, sub_1000335D8);
}

uint64_t sub_10002C0CC(uint64_t a1, int a2, __int16 a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (!a1 || !(v13 = sub_1000443C8(a1)))
  {
    v16 = 1;
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        if ((a3 & 0x100) != 0)
        {
          if (sub_10000E554(a5, 16))
          {
            return 0;
          }

          else
          {
            return 144;
          }
        }

        return v16;
      }

      if (a2 == 2)
      {
        return 45;
      }

      if (a2 != 3 || (a3 & 8) != 0 && !sub_10001A604(a5))
      {
        return v16;
      }

      if ((a3 & 1) != 0 && a6 && !*(a7 + 16) && (*(a7 + 4) & 0x12) == 0)
      {
        return 0;
      }

      if (*(a5 + 12) != a4)
      {
        return *(a5 + 4) != 0;
      }

      if (a6)
      {
        v17 = *(a7 + 16);
        if (!v17 && (*(a7 + 4) & 0x12) == 0)
        {
          return 0;
        }

        if (v17 != a4 || (*(a7 + 4) & 2) != 0)
        {
          return 122;
        }
      }

      return !sub_10001A604(a5);
    }

    if (a2 > 5)
    {
      if (a2 == 6)
      {
        if (*(a5 + 12) == a4)
        {
          return 0;
        }

        else
        {
          return 144;
        }
      }

      if (a2 != 7)
      {
        return v16;
      }
    }

    else if (a2 != 4)
    {
      if ((a3 & 8) != 0 && !sub_10001A604(a5))
      {
        return v16;
      }

      goto LABEL_31;
    }

    if ((a3 & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    if (sub_10001A604(a5))
    {
LABEL_32:
      if (*(a5 + 12) == a4)
      {
        return 0;
      }

      return *(a5 + 4) != 0;
    }

    return v16;
  }

  return sub_10002BE7C(v13, a2, a3, v14, a5, a6, a7);
}

void sub_10002C304(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002C908(a1, 5, "cleaning up", a4, a5, a6, a7, a8, v14);
  if (a1[27])
  {
    v9 = sub_100014514(0x30uLL, 0x10A004003EBAF2CuLL);
    v9[4] = dword_10007F068;
    *(v9 + 3) = a1[27];
    a1[27] = 0;
    v10 = sub_1000157D8();
    dispatch_async_f(v10, v9, sub_1000336FC);
  }

  v11 = a1[4];
  v12 = a1[5];
  if (v11)
  {
    *(v11 + 40) = v12;
  }

  *v12 = v11;
  a1[4] = -1;
  a1[5] = -1;
  sub_10001B5B8(a1);
  v13 = sub_1000157D8();

  dispatch_async_f(v13, a1, sub_1000335D8);
}

uint64_t sub_10002C3E8(uint64_t a1, int a2, char a3, unint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      if (!(a4 >> 31))
      {
        v19 = *(a5 + 20);
        if ((v19 & 0x80000000) == 0 && v19 == a4)
        {
          return 0;
        }
      }

      if (sub_10000E554(a5, 13))
      {
        return 0;
      }

      v20 = a5;
      v21 = 2;
      return sub_10000E554(v20, v21) ^ 1;
    }

    if (a2 == 2)
    {
      return 125;
    }

    if (a2 != 3)
    {
      return 1;
    }

    if (!a1)
    {
      return 131;
    }

    if (a6)
    {
      v12 = *(a1 + 120);
      if (v12 >> 31 || (v13 = *(a5 + 20), (v13 & 0x80000000) != 0) || v12 != v13)
      {
        if (sub_10000E554(a5, 2))
        {
          return 0;
        }

        else
        {
          return 144;
        }
      }

      if ((a3 & 1) != 0 || sub_100017D88(a6) && !*(a7 + 16) && (*(a7 + 4) & 0x12) == 0)
      {
        return 0;
      }

      v15 = *(a1 + 240);
      if (v15)
      {
        if (sub_1000169A8(a6, v15))
        {
          v16 = strlen(*(a1 + 240));
          v17 = &a6[v16];
          if (a6[v16 - 1] == 47 || strlen(a6) == v16 || *v17 == 47)
          {
            return 0;
          }
        }
      }

      if ((sub_10000E554(a5, 0) & 1) != 0 || sub_10000E554(a5, 1))
      {
        return 0;
      }
    }

    return 147;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      if (!(a4 >> 31) && (v9 = *(a5 + 20), (v9 & 0x80000000) == 0) && v9 == a4 || (v10 = *(a5 + 4)) == 0 || a1 && v10 == *(a1 + 56))
      {
        if (sub_10001A604(a5))
        {
          return 0;
        }
      }

      return 1;
    }

    if (!(a4 >> 31))
    {
      v22 = *(a5 + 20);
      if ((v22 & 0x80000000) == 0 && v22 == a4)
      {
        return 0;
      }
    }

    v20 = a5;
    v21 = 0;
    return sub_10000E554(v20, v21) ^ 1;
  }

  if (a2 != 6)
  {
    return 1;
  }

  v23 = *(a5 + 20);
  return (a4 & 0xFFFFFFFF80000000) != 0 || v23 != a4 || v23 < 0;
}

void sub_10002C61C(uint64_t a1)
{
  if ((*(a1 + 1017) & 0x20) != 0)
  {
    sub_1000441E0("system domain deallocated");
  }

  for (i = 336; i != 520; i += 8)
  {
    if (*(a1 + i))
    {
      sub_1000441E0("domain deallocated with services");
    }
  }

  if (os_map_str_count())
  {
    sub_1000441E0("domain deallocated with service stubs");
  }

  os_map_str_destroy();
  if (*(a1 + 960))
  {
    os_map_str_clear();
    v3 = *(a1 + 960);
    os_map_str_destroy();
    free(*(a1 + 960));
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    --*(a1 + 80);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (*v4)
    {
      do
      {
        v7 = v6;
        *(v6 + 1) = v5;
        *v5 = v6;
        *v4 = -1;
        *(v4 + 1) = -1;
        sub_10001BAA8(v4);
        --*(a1 + 80);
        v6 = *v7;
        v5 = *(v7 + 1);
        v4 = v7;
      }

      while (*v7);
    }

    else
    {
      v7 = v4;
    }

    *v5 = 0;
    *v7 = -1;
    *(v7 + 1) = -1;
    sub_10001BAA8(v7);
  }

  if (*(a1 + 32) != -1 || *(a1 + 40) != -1)
  {
    sub_1000441E0("domain disposal while still in the domains list");
  }

  if (*(a1 + 16) != -1 || *(a1 + 24) != -1)
  {
    sub_1000441E0("domain disposal while still in the children list");
  }

  if (*(a1 + 208))
  {
    _os_assumes_log_ctx();
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *v8;
    v10 = v8[1];
    if (*v8)
    {
      do
      {
        v11 = v9;
        v9[1] = v10;
        *v10 = v9;
        *v8 = -1;
        v8[1] = -1;
        j__free(v8);
        v9 = *v11;
        v10 = v11[1];
        v8 = v11;
      }

      while (*v11);
    }

    else
    {
      v11 = *(a1 + 96);
    }

    *v10 = 0;
    *v11 = -1;
    v11[1] = -1;
    j__free(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    do
    {
      v13 = *v12;
      if ((*(a1 + 1016) & 0x80) != 0)
      {
        sub_10004B2C8(dword_10007F068, v12[3]);
      }

      xpc_release(v12[3]);
      v14 = *v12;
      v15 = v12[1];
      if (*v12)
      {
        v14[1] = v15;
      }

      *v15 = v14;
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  free(*(a1 + 312));
  free(*(a1 + 968));
  v16 = *(a1 + 248);
  if (v16)
  {
    xpc_release(v16);
  }

  v17 = *(a1 + 240);
  if (v17)
  {
    free(v17);
  }

  v18 = *(a1 + 984);
  if (v18)
  {
    sub_10001B690(v18);
  }

  v19 = *(a1 + 168);
  if (v19)
  {
    sub_10001C4DC(v19);
    *(a1 + 168) = 0;
  }

  v20 = *(a1 + 136);

  xpc_release(v20);
}

BOOL sub_10002C89C(id a1, const char *a2, void *a3)
{
  free(a2);
  free(a3);
  return 1;
}

void sub_10002C908(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = sub_10002C974(a1, 2);
  sub_1000474DC(v12, a2, a3, &a9, v9);
  free(v12);
}

char *sub_10002C974(uint64_t a1, int a2)
{
  if ((a2 - 1) >= 2)
  {
    sub_100054404();
  }

  v4 = sub_10000FC98(0x80uLL);
  v11 = v4;
  v12 = *(a1 + 112);
  if (v12 == &unk_10007D720)
  {
    v19 = "system";
  }

  else
  {
    if (v12 != &unk_10007D830)
    {
      v24 = *(a1 + 120);
      sub_10000FD40(v4, "%s/%lu", v5, v6, v7, v8, v9, v10, *(v12 + 112));
      goto LABEL_8;
    }

    v23 = *(a1 + 56);
    v19 = "gui/%u";
  }

  sub_10000FD40(v4, v19, v5, v6, v7, v8, v9, v10, v23);
LABEL_8:
  if (a2 == 2)
  {
    v20 = *(a1 + 112);
    if (v20 == &unk_10007D8B8)
    {
      sub_10000FD40(v11, " [%s]", v13, v14, v15, v16, v17, v18, *(a1 + 312));
    }

    else if (v20 == &unk_10007D830)
    {
      sub_10000FD40(v11, " [%lu]", v13, v14, v15, v16, v17, v18, *(a1 + 120));
    }
  }

  v21 = sub_10000FCFC(v11);
  sub_10000FD04(v11);
  return v21;
}

uint64_t sub_10002CAD8(uint64_t a1, _DWORD *a2)
{
  v2 = 6;
  for (i = &off_10007DA58; *i != a1; i += 2)
  {
    if (!--v2)
    {
      *a2 = 112;
      return 0xFFFFFFFFLL;
    }
  }

  *a2 = 0;
  return *(i - 2);
}

uint64_t sub_10002CB18(int a1)
{
  v1 = &off_10007DA58;
  v2 = 6;
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

void sub_10002CB4C(uint64_t a1, int a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 8) == a2)
      {
        sub_10004B52C(*(v2 + 4), v2[3]);
        v5 = *v2;
        v6 = v2[1];
        if (*v2)
        {
          v5[1] = v6;
        }

        *v6 = v5;
        *v2 = -1;
        v2[1] = -1;
      }

      v2 = v4;
    }

    while (v4);
  }
}

void sub_10002CBB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 8) == a2)
      {
        v5 = sub_1000157D8();
        dispatch_async_f(v5, v2, sub_1000336FC);
        v6 = *v2;
        v7 = v2[1];
        if (*v2)
        {
          v6[1] = v7;
        }

        *v7 = v6;
        *v2 = -1;
        v2[1] = -1;
      }

      v2 = v4;
    }

    while (v4);
  }
}

void *sub_10002CC34(uint64_t a1)
{
  v1 = *(a1 + 188);
  *(a1 + 188) = v1 + 1;
  if (v1 < 0)
  {
    sub_1000441E0("underflow of active count during activate");
  }

  if (v1)
  {

    return sub_10001BB18(a1);
  }

  else
  {
    if ((*(a1 + 1016) & 0x10) != 0)
    {
      sub_1000441E0("activation of deactivated domain");
    }

    return sub_10001B5B8(a1);
  }
}

void sub_10002CCB4(uint64_t a1)
{
  v1 = *(a1 + 188);
  *(a1 + 188) = v1 - 1;
  if (v1 <= 0)
  {
    sub_1000441E0("underflow of active count during deactivate");
  }

  if (v1 == 1)
  {
    v3 = *(a1 + 1016);
    if ((v3 & 1) == 0)
    {
      sub_1000441E0("inactive domain is not shutting down");
    }

    if ((v3 & 0x10) != 0)
    {
      sub_1000441E0("domain already deactivated");
    }

    for (i = 336; i != 520; i += 8)
    {
      if (*(a1 + i))
      {
        sub_1000441E0("domain cleaning up with services still in list");
      }
    }

    if ((v3 & 0x800) != 0)
    {
      v5 = *(a1 + 64);
      sub_10003E0F4();
      v3 = *(a1 + 1016);
    }

    *(a1 + 1016) = v3 | 0x10;
    v6 = *(a1 + 112);
    if (*(v6 + 128))
    {
      v7 = *(a1 + 136);
      if (v7)
      {
        LODWORD(v7) = xpc_mach_send_get_right();
      }

      sub_10004AE6C(v7);
      v6 = *(a1 + 112);
    }

    (*(v6 + 96))(a1);

    sub_10001B690(a1);
  }

  else
  {

    sub_10001BB40(a1);
  }
}

void sub_10002CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_10002C908(a1, 5, "slaying domain", a4, a5, a6, a7, a8, v17);
  v15 = *(a1 + 1016);
  if (v15 & 2) != 0 || (v15)
  {

    sub_10002C908(a1, 5, "already shutting down or slain", v10, v11, v12, v13, v14, a9);
  }

  else
  {
    if (*(a1 + 152))
    {
      sub_10001BB40(a1);
      dispatch_set_context(*(a1 + 152), *(a1 + 152));
      dispatch_source_cancel(*(a1 + 152));
      *(a1 + 152) = 0;
      *(a1 + 184) = 0;
      v15 = *(a1 + 1016);
    }

    if (*(a1 + 144))
    {
      if ((v15 & 0x200) != 0)
      {
        sub_10002C908(a1, 5, "uncorking exec source for disposal", v10, v11, v12, v13, v14, v18);
        dispatch_activate(*(a1 + 144));
        *(a1 + 1016) &= ~0x200u;
      }

      sub_10001BB40(a1);
      dispatch_release(*(a1 + 144));
      *(a1 + 144) = 0;
      v15 = *(a1 + 1016);
    }

    *(a1 + 1016) = v15 | 2;
    v16 = sub_1000157D8();

    dispatch_async_f(v16, a1, sub_10002CF10);
  }
}