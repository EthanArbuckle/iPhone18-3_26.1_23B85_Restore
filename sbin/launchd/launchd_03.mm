void sub_10002CF10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1016))
  {
    sub_1000441E0("multiple invocations of death handler for domain");
  }

  sub_10002C908(a1, 5, "shutting down", a4, a5, a6, a7, a8, v106);
  if (*(a1 + 112) == &unk_10007D720)
  {
    sub_100014840();
  }

  *(a1 + 272) = mach_absolute_time();
  *(a1 + 1016) |= 2u;
  sub_1000145F8(a1, 3);
  for (i = 0; i != 7; ++i)
  {
    while (1)
    {
      v15 = *(a1 + 648 + 8 * i);
      if (!v15)
      {
        break;
      }

      sub_10002C908(a1, 5, "removing unmanaged service: %s", v9, v10, v11, v12, v13, v15 - 112);
      sub_10003467C(a1, v15);
      if (*(v15 + 152))
      {
        sub_10002C908(a1, 3, "Unmanaged service with non-dynamic endpoints: %s", v17, v18, v19, v20, v21, v15 - 112);
        v22 = *(v15 + 152);
        if (v22)
        {
          do
          {
            v23 = *(v22 + 16);
            sub_10002C908(a1, 3, "Removing unexpected non-dynamic endpoint: %s", v17, v18, v19, v20, v21, v22 - 88);
            sub_10004D3E4(v22, v24, v25, v26, v27, v28, v29, v30);
            v22 = v23;
          }

          while (v23);
        }
      }

      if (*(v15 + 176))
      {
        sub_10002C908(a1, 3, "Unmanaged service with event endpoints: %s", v17, v18, v19, v20, v21, v15 - 112);
        v31 = *(v15 + 176);
        if (v31)
        {
          do
          {
            v32 = *(v31 + 16);
            sub_10002C908(a1, 3, "Removing unexpected event endpoint: %s", v17, v18, v19, v20, v21, v31 - 88);
            sub_10004D3E4(v31, v33, v34, v35, v36, v37, v38, v39);
            v31 = v32;
          }

          while (v32);
        }
      }

      v40 = *(v15 + 160);
      if (v40)
      {
        do
        {
          v41 = *(v40 + 16);
          sub_10002C908(a1, 5, "removing unmanaged endpoint: %s", v17, v18, v19, v20, v21, v40 - 88);
          sub_10004D3E4(v40, v42, v43, v44, v45, v46, v47, v48);
          v40 = v41;
        }

        while (v41);
      }

      v49 = *(v15 + 168);
      if (v49)
      {
        do
        {
          v50 = *(v49 + 16);
          sub_10002C908(a1, 5, "removing unmanaged pid-local endpoint: %s", v17, v18, v19, v20, v21, v49 - 88);
          sub_10004D3E4(v49, v51, v52, v53, v54, v55, v56, v57);
          v49 = v50;
        }

        while (v50);
      }

      if (*(v15 + 300) >= 3)
      {
        sub_1000441E0("extra activation on unmanaged service");
      }

      sub_100033864(a1, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  sub_1000145F8(a1, 4);
  v63 = *(a1 + 328);
  while (v63)
  {
    v64 = v63;
    v63 = *(v63 + 104);
    sub_10002C908(a1, 5, "removing semi-active service: %s", v58, v59, v60, v61, v62, v64 - 112);
    v65 = sub_10000B7FC();
    v71 = sub_10002DDAC(a1, v65, v64, v66, v67, v68, v69, v70);
    if (v71 && v71 != 36)
    {
      sub_1000441E0("failure to remove semi-active service");
    }
  }

  sub_1000145F8(a1, 5);
  for (j = 0; j != 13; ++j)
  {
    v78 = *(a1 + 544 + 8 * j);
    while (v78)
    {
      while (1)
      {
        v79 = v78;
        v78 = *(v78 + 88);
        sub_10002C908(a1, 5, "removing active service: %s", v72, v73, v74, v75, v76, v79 - 112);
        v80 = sub_10000B7FC();
        v86 = sub_10002DDAC(a1, v80, v79, v81, v82, v83, v84, v85);
        if (v86)
        {
          if (v86 != 36)
          {
            break;
          }
        }

        if (!v78)
        {
          goto LABEL_30;
        }
      }

      _os_assumes_log_ctx();
    }

LABEL_30:
    ;
  }

  sub_1000145F8(a1, 6);
  for (k = 0; k != 23; ++k)
  {
    v88 = *(a1 + 336 + 8 * k);
    while (v88)
    {
      v89 = v88;
      v88 = *(v88 + 120);
      if (!*(v89 + 300) && (*(v89 + 368) & 1) == 0)
      {
        v90 = sub_10000B7FC();
        if (sub_10002DDAC(a1, v90, v89, v91, v92, v93, v94, v95))
        {
          sub_1000441E0("failed to remove inactive service");
        }
      }
    }
  }

  os_map_str_clear();
  sub_1000145F8(a1, 7);
  for (m = 0; m != 31; ++m)
  {
    v97 = *(a1 + 704 + 8 * m);
    if (v97)
    {
      do
      {
        v98 = v97[4];
        if (v97[9])
        {
          sub_100033FA0(v97);
        }

        v97 = v98;
      }

      while (v98);
    }
  }

  sub_1000145F8(a1, 8);
  for (n = *(a1 + 320); n; n = *(n + 16))
  {
    sub_10002CDD4(n);
  }

  sub_1000145F8(a1, 9);
  *(a1 + 1016) |= 1u;
  if (*(a1 + 152))
  {
    sub_10001BB40(a1);
    dispatch_set_context(*(a1 + 152), *(a1 + 152));
    dispatch_source_cancel(*(a1 + 152));
    *(a1 + 152) = 0;
    *(a1 + 184) = 0;
  }

  if (*(a1 + 144))
  {
    if ((*(a1 + 1017) & 2) != 0)
    {
      sub_10002C908(a1, 5, "uncorking exec source for disposal", v100, v101, v102, v103, v104, v107);
      dispatch_activate(*(a1 + 144));
      *(a1 + 1016) &= ~0x200u;
    }

    sub_10001BB40(a1);
    dispatch_release(*(a1 + 144));
    *(a1 + 144) = 0;
  }

  sub_1000145F8(a1, 10);
  sub_10002CB4C(a1, 1);
  if (*(a1 + 112) == &unk_10007D720 && qword_10007E7C0)
  {
    dispatch_release(qword_10007E7C0);
  }

  v105 = *(a1 + 160);
  if (v105)
  {
    dispatch_source_cancel(v105);
    *(a1 + 160) = 0;
  }

  sub_1000145F8(a1, 11);

  sub_10002CCB4(a1);
}

void sub_10002D450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (sub_1000443C8(a1))
  {
    sub_10002D450(*(a1 + 232), a2);
  }

  v11 = *(a1 + 204);
  *(a1 + 204) = v11 + 1;
  sub_10002CC34(a1);
  if (!v11 && *(a1 + 112) != qword_10007D8B8)
  {

    sub_10002C908(a1, 5, "entering bootstrap mode", v12, v13, v14, v15, v16, a9);
  }
}

void sub_10002D4F0(uint64_t a1, uint64_t a2)
{
  if (sub_1000443C8(a1))
  {
    sub_10002D4F0(*(a1 + 232), a2);
  }

  v9 = *(a1 + 204);
  v10 = v9-- != 0;
  *(a1 + 204) = v9;
  if (v9 == 0 || !v10)
  {
    if (*(a1 + 112) != qword_10007D8B8)
    {
      sub_10002C908(a1, 5, "exiting bootstrap mode", v4, v5, v6, v7, v8, v19);
    }

    sub_10002CBB8(a1, 1);
    sub_10002D5B4(a1);
    if ((*(a1 + 1016) & 0x40) != 0)
    {
      sub_10002D638(a1, v11, v12, v13, v14, v15, v16, v17);
      *(a1 + 1016) &= ~0x40u;
      v18 = sub_10002D754(a1);
      sub_100040128(v18);
    }
  }

  sub_10002CCB4(a1);
}

void sub_10002D5B4(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 336;
  do
  {
    v3 = *(v2 + 8 * v1);
    if (v3)
    {
      do
      {
        v4 = *(v3 + 120);
        sub_10001B5B8(v3);
        if (*(v3 + 288))
        {
          sub_100033744(v3, v5, v6, v7, v8, v9, v10, v11);
        }

        sub_10001B690(v3);
        v3 = v4;
      }

      while (v4);
    }

    ++v1;
  }

  while (v1 != 23);
}

void sub_10002D638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 192);
  *(a1 + 192) = v8 - 1;
  if (!v8)
  {
    sub_1000441E0("underflow of on-demand count");
  }

  if (v8 <= 1)
  {
    if (*(a1 + 112) != &unk_10007D8B8)
    {
      sub_10002C908(a1, 5, "exiting ondemand mode", a4, a5, a6, a7, a8, v26);
    }

    for (i = 0; i != 23; ++i)
    {
      v11 = *(a1 + 336 + 8 * i);
      if (v11)
      {
        do
        {
          v12 = *(v11 + 120);
          if (*(v11 + 292))
          {
            sub_10001B5B8(v11);
            v19 = sub_1000234BC(v11, *(v11 + 292), v13, v14, v15, v16, v17, v18);
            if ((v19 & 0xFFFFFFFE) == 0x24)
            {
              v25 = 0;
            }

            else
            {
              v25 = v19;
            }

            if (v25)
            {
              if (v25 != 37)
              {
                sub_100020018(v11, 3, "pended nondemand spawn failed: %d", v20, v21, v22, v23, v24, v25);
              }
            }

            *(v11 + 292) = 0;
            sub_10001B690(v11);
          }

          v11 = v12;
        }

        while (v12);
      }
    }
  }
}

void *sub_10002D754(uint64_t a1)
{
  result = *(a1 + 984);
  if (!result)
  {
    if (*(a1 + 112) == &unk_10007D720)
    {
      result = sub_1000400BC(0);
    }

    else
    {
      v3 = a1;
      do
      {
        v4 = v3;
        v3 = *(v3 + 232);
      }

      while (v3);
      v5 = sub_10002D754(v4);
      result = sub_10001B5B8(v5);
    }

    *(a1 + 984) = result;
  }

  return result;
}

uint64_t sub_10002D7C4(uint64_t a1)
{
  if (*(a1 + 112) == &unk_10007D720)
  {
    byte_10007F058 = 0;
  }

  v2 = *(a1 + 168);
  if (v2)
  {
    sub_10001C4DC(v2);
    *(a1 + 168) = 0;
  }

  v3 = *(a1 + 120);
  sub_100010B3C();
  return *(a1 + 120);
}

void sub_10002D82C(void *a1, uint64_t a2, void *a3)
{
  if (a1[14] == &unk_10007D720 || sub_1000443C8(a1))
  {
    empty = sub_100033770();
  }

  else
  {
    if ((*(a1[14] + 128) & 2) == 0)
    {
      return;
    }

    empty = xpc_array_create_empty();
    sub_1000337C4(empty, qword_10007F0A0);
    if (sub_10004F238())
    {
      sub_1000337C4(empty, qword_10007F0B8);
    }
  }

  if (empty)
  {
    sub_100018E20(a1, 1, a3, empty, a2, 0x2000, v6, v7);

    xpc_release(empty);
  }
}

uint64_t sub_10002D910(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 248) != a1)
  {
    v13 = sub_100022158(a2, 1);
    v14 = sub_10002C974(a1, 1);
    sub_1000441E0("%s is being added to a mismatched domain %s", v13, v14);
  }

  v4 = &a1[2 * (sub_100016BD8((a2 + 1424)) % 0x17uLL) + 84];
  v5 = *v4;
  *(a2 + 120) = *v4;
  if (v5)
  {
    *(v5 + 128) = a2 + 120;
  }

  *v4 = a2;
  *(a2 + 128) = v4;
  ++a1[49];
  *(a2 + 248) = sub_10001B5B8(a1);
  if (!*(a2 + 296))
  {
    *(a2 + 368) |= 6u;
  }

  ++*(a2 + 300);
  sub_10001A45C();
  sub_10002CC34(a1);
  sub_100033864(a1, a2, v6, v7, v8, v9, v10, v11);
  result = sub_100022BA0(a2);
  if ((result & 1) == 0)
  {
    sub_10001FC1C(a2);

    return sub_1000232CC(a2);
  }

  return result;
}

void sub_10002DA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 248) != a1)
  {
    v37 = sub_100022158(a2, 1);
    v38 = sub_10002C974(a1, 1);
    sub_1000441E0("%s is being removed from a mismatched domain %s", v37, v38);
  }

  if (*(a1 + 112) != &unk_10007D8B8 || *(a2 + 300))
  {
    sub_10002C908(a1, 5, "removing service: %s", a4, a5, a6, a7, a8, a2 - 112);
  }

  *(a2 + 368) = *(a2 + 368) & 0xFFFFFFEE | 0x10;
  sub_100033CC0(a2, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(a2 + 152);
  if (v10)
  {
    do
    {
      v11 = *(v10 + 16);
      sub_100033D8C(a1, v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(a2 + 176);
  if (v12)
  {
    do
    {
      v13 = *(v12 + 16);
      sub_100033D8C(a1, v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = *(a2 + 184);
  if (v14)
  {
    do
    {
      v15 = *(v14 + 16);
      sub_100033D8C(a1, v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *(a2 + 192);
  if (v16)
  {
    v18 = v16[2];
    v19 = v16[3];
    v17 = v16 + 2;
    if (v18)
    {
      do
      {
        v20 = v18;
        v18[3] = v19;
        *v19 = v18;
        *v17 = -1;
        v17[1] = -1;
        sub_10001B690(v16);
        v17 = v20 + 2;
        v18 = v20[2];
        v19 = v20[3];
        v16 = v20;
      }

      while (v18);
    }

    else
    {
      v20 = *(a2 + 192);
    }

    *v19 = 0;
    *v17 = -1;
    v17[1] = -1;
    sub_10001B690(v20);
  }

  v21 = *(a2 + 200);
  if (v21)
  {
    do
    {
      v22 = *(v21 + 40);
      v23 = sub_10000B7FC();
      sub_10002DDAC(a1, v23, v21);
      v21 = v22;
    }

    while (v22);
  }

  if ((*(a2 + 368) & 0x600) == 0x200)
  {
    v24 = *(a2 + 40);
    *(a2 + 368) |= 0x400u;
    v25 = *(a2 + 48);
    if (v24)
    {
      *(v24 + 48) = v25;
    }

    else
    {
      v26 = *(a2 + 256);
      *(v26 + 240) = *(v26 + 224);
      *(v26 + 232) = *(v26 + 216);
      *(v26 + 224) = 5578;
      *(v26 + 208) = v25;
      *(v26 + 216) = "/Library/Caches/com.apple.xbs/Sources/libxpc_executables/launchd/domain.c";
    }

    *v25 = v24;
    *(a2 + 40) = -1;
    *(a2 + 48) = -1;
    *(a2 + 80) = *(a2 + 64);
    *(a2 + 72) = *(a2 + 56);
    *(a2 + 64) = 5578;
    *(a2 + 56) = "/Library/Caches/com.apple.xbs/Sources/libxpc_executables/launchd/domain.c";
  }

  if (sub_100022BA0(a2))
  {
    v27 = *(a2 + 256);
    --v27[66];
    *(a2 + 256) = 0;
    sub_10001B690(v27);
  }

  v28 = *(a1 + 96);
  if (v28)
  {
    do
    {
      v29 = *v28;
      if (v28[2] == a2)
      {
        v30 = v28[1];
        if (v29)
        {
          v29[1] = v30;
        }

        *v30 = v29;
        *v28 = -1;
        v28[1] = -1;
        j__free(v28);
      }

      v28 = v29;
    }

    while (v29);
  }

  sub_10001A464(a2);
  v31 = *(a2 + 120);
  v32 = *(a2 + 128);
  if (v31)
  {
    *(v31 + 128) = v32;
  }

  *v32 = v31;
  *(a2 + 120) = -1;
  *(a2 + 128) = -1;
  --*(a1 + 196);
  v33 = *(a2 + 312);
  if (v33)
  {
    v34 = sub_100012EE8(v33);
    os_release(v34);
    *(a2 + 312) = 0;
  }

  v35 = *(a2 + 320);
  if (v35)
  {
    v36 = sub_100012EE8(v35);
    os_release(v36);
    *(a2 + 320) = 0;
  }

  if (*(a1 + 72) == a2)
  {
    *(a1 + 72) = 0;
  }

  sub_1000047C0(a2);
  sub_10001B690(a2);
  sub_10002CCB4(a1);

  sub_10001B690(a1);
}

uint64_t sub_10002DDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 368);
  if ((v11 & 0x600) == 0x200)
  {
    v12 = *(a3 + 40);
    v13 = *(a3 + 48);
    if (v12)
    {
      if (v12 == -1 && (v13 + 1) == 0)
      {
        sub_1000441E0("multiple attempts to remove service instance");
      }

      *(v12 + 48) = v13;
      v13 = *(a3 + 48);
    }

    else
    {
      v15 = *(a3 + 256);
      *(v15 + 240) = *(v15 + 224);
      *(v15 + 232) = *(v15 + 216);
      *(v15 + 224) = 5824;
      *(v15 + 208) = v13;
      *(v15 + 216) = "/Library/Caches/com.apple.xbs/Sources/libxpc_executables/launchd/domain.c";
    }

    *v13 = v12;
    *(a3 + 40) = -1;
    *(a3 + 48) = -1;
    *(a3 + 80) = *(a3 + 64);
    *(a3 + 72) = *(a3 + 56);
    *(a3 + 64) = 5824;
    *(a3 + 56) = "/Library/Caches/com.apple.xbs/Sources/libxpc_executables/launchd/domain.c";
    v11 = *(a3 + 368) | 0x400;
  }

  *(a3 + 368) = v11 | 0x10;
  if (v11)
  {
    v16 = sub_1000235C4(a3, a2, a3, a4, a5, a6, a7, a8);
    if ((v16 - 36) < 2)
    {
      return 36;
    }

    if (v16 != 89)
    {
      sub_1000441E0("inconsistency between domain and service semi-active state during semi-active bootout");
    }

    return 0;
  }

  if (!*(a3 + 300))
  {
    if (sub_100023F20(a3))
    {
      sub_1000441E0("active service has zero active count");
    }

    sub_10002DA64(a1, a3, v31, v32, v33, v34, v35, v36);
    return 0;
  }

  if (*(a3 + 300) <= 0)
  {
    sub_100054404();
  }

  if (sub_100026DE0(a3) && sub_100014B00(0))
  {
    if (*(a3 + 300) <= 0)
    {
      sub_100054404();
    }

    sub_100033FF0(a1, a3);
    sub_100020C74(a3, v24, v25, v26, v27, v28, v29, v30);
    return 0;
  }

  result = sub_1000235C4(a3, a2, v18, v19, v20, v21, v22, v23);
  if (result > 36)
  {
    if (result == 37)
    {
      return 36;
    }

    if (result == 89)
    {
      sub_1000441E0("inconsistency between domain and service semi-active state during active bootout");
    }

    goto LABEL_30;
  }

  if (!result)
  {
    return 36;
  }

  if (result != 1)
  {
LABEL_30:
    _os_assumes_log_ctx();
    return 36;
  }

  return result;
}

uint64_t sub_10002DF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B7FC();

  return sub_10002DDAC(a1, v4, a2, v5, v6, v7, v8, v9);
}

char *sub_10002DFD8(uint64_t a1, uint64_t a2, unsigned __int8 *uu1, int a4, uint64_t *a5, _OWORD *a6, int *a7)
{
  if (*(a2 + 248) != a1)
  {
    sub_100054404();
  }

  if (a5)
  {
    v14 = *a5;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_100026D08(a2, uu1);
  if (v15)
  {
    v21 = v15;
    if (!xpc_binprefs_equal(*(v15 + 920), v14))
    {
      v27 = xpc_binprefs_copy_description(*(v21 + 115));
      v62 = xpc_binprefs_copy_description(v14);
      sub_100020018(v21, 4, "Mismatched binprefs: %s != %s", v28, v29, v30, v31, v32, v27);
      free(v27);
      free(v62);
    }

    if (((*(v21 + 92) >> 5) & 1) != a4)
    {
      sub_100020018(v21, 4, "One-shot property mismatch: requested=%d existing=%d", v22, v23, v24, v25, v26, a4);
    }
  }

  else
  {
    v33 = *(a2 + 264);
    if (qword_10007F0F0 <= v33)
    {
      v34 = **(*(a2 + 208) + 8);
      if (v34)
      {
        while (1)
        {
          if ((sub_100022BA0(v34) & 1) == 0)
          {
            sub_100054404();
          }

          if ((*(v34 + 368) & 0x10) == 0)
          {
            break;
          }

          v34 = **(*(v34 + 48) + 8);
          if (!v34)
          {
            LODWORD(v33) = *(a2 + 264);
            goto LABEL_16;
          }
        }

        v64 = *(a1 + 188);
        sub_10002C908(a1, 4, "Too many instances (%d >= %lu : %d), slaying '%s' to make room", v16, v17, v18, v19, v20, *(a2 + 264));
        v49 = sub_10000B7FC();
        v55 = sub_10002DDAC(a1, v49, v34, v50, v51, v52, v53, v54);
        if (v55 && v55 != 36)
        {
          sub_100054EC4(a1, v55, v56, v57, v58, v59, v60, v61);
        }
      }

      else
      {
LABEL_16:
        v63 = *(a1 + 188);
        sub_10002C908(a1, 4, "Too many instances (%d >= %lu : %d), but nothing to slay since all instances are already being removed.", v16, v17, v18, v19, v20, v33);
      }
    }

    sub_10002E384(a1, a2);
    v65[0] = sub_10002E45C;
    v65[1] = sub_10002E8A0;
    v65[2] = sub_10002E9E8;
    v65[3] = sub_10002EB84;
    v65[4] = sub_10002EBE8;
    v65[5] = sub_10002ECE8;
    v65[6] = a1;
    v21 = sub_1000038CC(a2, uu1, 0xFFFFFFFFLL, a5, a6, v65, 0, a7);
    if (v21)
    {
      for (i = *(a2 + 152); i; i = *(i + 16))
      {
        if ((*(i + 88) & 0x40) == 0)
        {
          sub_10004C858(i, sub_10002EDF0, v21, v21);
          v37 = v36;
          if (*(a1 + 976))
          {
            v38 = *(a1 + 976);
          }

          else
          {
            v38 = a1;
          }

          sub_10002F03C(v38, v21, v37, 64);
        }
      }

      sub_10002D910(a1, v21);
      v39 = (a2 + 200);
      v40 = *(a2 + 200);
      ++*(a2 + 264);
      *(v21 + 5) = v40;
      if (v40)
      {
        v41 = (v40 + 48);
      }

      else
      {
        v41 = (a2 + 208);
      }

      *v41 = v21 + 40;
      *v39 = v21;
      *(a2 + 240) = *(a2 + 224);
      *(a2 + 232) = *(a2 + 216);
      *(a2 + 224) = 6593;
      *(a2 + 216) = "/Library/Caches/com.apple.xbs/Sources/libxpc_executables/launchd/domain.c";
      *(v21 + 20) = *(v21 + 16);
      *(v21 + 9) = *(v21 + 7);
      *(v21 + 16) = 6593;
      *(v21 + 6) = v39;
      *(v21 + 7) = "/Library/Caches/com.apple.xbs/Sources/libxpc_executables/launchd/domain.c";
      *(v21 + 92) |= 0x200u;
      *(v21 + 32) = a2;
      sub_10001B5B8(a2);
      if (a4)
      {
        *(v21 + 92) |= 0x20u;
      }
    }

    else
    {
      v42 = *a7;
      xpc_strerror();
      sub_100020018(a2, 3, "Could not create copy of service: %d: %s", v43, v44, v45, v46, v47, v42);
    }
  }

  return v21;
}

uint64_t sub_10002E384(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) == &unk_10007D8B8)
  {
    v2 = sub_10000305C(a2);
    if (!v2)
    {
      return v2;
    }

    sub_100020018(a2, 5, "initialized endpoint after lookup", v6, v7, v8, v9, v10, v16);
    if (*(a2 + 300) >= 1)
    {
      sub_1000441E0("lazy initialization of endpoint on active service");
    }

    if (*(a2 + 368))
    {
      sub_1000441E0("lazy initialization of endpoint on semi-active service");
    }

    if (!sub_1000340D0(a1, v2))
    {
      sub_10004CEEC(v2);
      return v2;
    }

    sub_100020018(a2, 3, "Failed to initialize implicit endpoint", v11, v12, v13, v14, v15, v17);
    sub_100033D8C(a1, v2);
  }

  return 0;
}

void sub_10002E45C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 != 5)
      {

        sub_100033BA0(a1);
        return;
      }

      if (byte_10007F051 == 1)
      {
        v25 = *(a4 + 1016);
        if ((v25 & 2) == 0 && (v25 & 1) == 0 && !*(a1 + 296))
        {
          v26 = sub_100023F20(a1);
          if (!v26)
          {
            sub_100054404();
          }

          if (v26 == dword_10007E8F8)
          {
            v39 = sub_1000246E4(a1);
            v40 = sub_10004A4D0(v39);
            sub_1000470CC(0x10000, "Obliterator task exited: %s", v40);
            sub_1000470CC(0x10000, "The system may be in an inconsistent half-obliterated state.");
            sub_1000470CC(0x10000, "Rebooting now, so the finish-obliteration boot task can clean things up.");
            sub_100046594(1, 0);
          }
        }
      }

      v27 = *(a1 + 368);
      if ((v27 & 0x120) != 0)
      {
        *(a1 + 368) = v27 | 0x10;
      }

      sub_1000123F4(a1);
      for (i = *(a1 + 192); i; i = *(i + 16))
      {
        if (*(i + 212))
        {
          sub_10001E95C(i);
        }
      }

      if ((*(a1 + 369) & 0x10) != 0)
      {
        sub_10002D638(a4, v28, a3, a4, a5, a6, a7, a8);
        *(a1 + 368) &= ~0x1000u;
      }

      goto LABEL_49;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        return;
      }

LABEL_49:

      sub_100033864(a4, a1, a3, a4, a5, a6, a7, a8);
      return;
    }

    goto LABEL_60;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if ((*(a1 + 368) & 1) == 0)
      {
        sub_1000441E0("out-of-order spawn event received");
      }

      v30 = *(a1 + 104);
      v31 = *(a1 + 112);
      if (v30)
      {
        *(v30 + 112) = v31;
      }

      *v31 = v30;
      *(a1 + 104) = -1;
      *(a1 + 112) = -1;
      *(a1 + 368) &= ~1u;
      *(a1 + 292) = 0;
      if (!a3)
      {
LABEL_60:

        sub_10003467C(a4, a1);
        return;
      }

      sub_1000123F4(a1);
      if ((*(a1 + 368) & 0x10) != 0)
      {

        sub_10002DA64(a4, a1, v32, v33, v34, v35, v36, v37);
      }

      else
      {

        sub_100033BF0(a1);
      }
    }

    else if (a2 == 4)
    {
      *(a1 + 360) = a3;
      *(a1 + 364) = a3;
      if (!a3)
      {
        v10 = sub_100023F20(a1);
        v11 = sub_100032848(qword_10007D8B8, v10);
        if (v11)
        {
          v17 = v11;
          if ((*(v11 + 1017) & 2) != 0)
          {
            sub_10002C908(v11, 5, "uncorking exec source after service init", v12, v13, v14, v15, v16, v41);
            dispatch_activate(*(v17 + 144));
            *(v17 + 1016) &= ~0x200u;
          }
        }

        if (sub_100024768(a1))
        {
          if (csops())
          {
            if (*__error() == 3)
            {
              return;
            }

            v18 = __error();
            sub_1000470CC(65539, "csops returned %d", *v18);
          }

          v38 = sub_100024564(a1);
          sub_100044244("unexpected exec of non-platform binary: %s: %s [%d]", v38, (a1 + 1424), v10);
        }
      }
    }
  }

  else
  {
    if (*(a1 + 300))
    {
      sub_1000441E0("will-spawn received on active service");
    }

    if (*(a1 + 368))
    {
      sub_1000441E0("multiple will-spawn events received");
    }

    sub_10002E384(a4, a1);
    for (j = *(a1 + 152); j; j = *(j + 16))
    {
      sub_10004D28C(j);
    }

    for (k = *(a1 + 176); k; k = *(k + 16))
    {
      sub_10004D28C(k);
    }

    for (m = *(a1 + 184); m; m = *(m + 16))
    {
      sub_10004D28C(m);
    }

    for (n = *(a1 + 192); n; n = *(n + 16))
    {
      sub_10001E76C(n);
    }

    sub_100023E70(a1);
    *(a1 + 368) |= 1u;
    v23 = (*(a1 + 248) + 328);
    v24 = *v23;
    *(a1 + 104) = *v23;
    if (v24)
    {
      *(v24 + 112) = a1 + 104;
    }

    *v23 = a1;
    *(a1 + 112) = v23;
  }
}

uint64_t sub_10002E8A0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 1016);
  if (v9 & 2) != 0 || (v9)
  {
    sub_10002C908(a3, 5, "denying spawn, domain shutting down: %s", a4, a5, a6, a7, a8, a1 - 112);
    return 124;
  }

  v11 = *(a1 + 368);
  if ((v11 & 2) != 0)
  {
    sub_10002C908(a3, 5, "pending spawn, service not yet activated: %s", a4, a5, a6, a7, a8, a1 - 112);
    goto LABEL_8;
  }

  if (*(a1 + 300))
  {
    sub_10002C908(a3, 5, "pending spawn, service not yet quiesced: %s", a4, a5, a6, a7, a8, a1 - 112);
    goto LABEL_8;
  }

  if (*(a3 + 192))
  {
    v13 = 0;
    while (dword_10007D6F8[v13] != a2)
    {
      if (++v13 == 8)
      {
        if (*(a1 + 292) != a2)
        {
          *(a1 + 292) = a2;
          sub_10002C908(a3, 5, "pending spawn, domain in on-demand-only mode: %s", a4, a5, a6, a7, a8, a1 - 112);
        }

        return 36;
      }
    }
  }

  if ((v11 & 4) == 0)
  {
    sub_10002C908(a3, 5, "pending spawn, service not yet imported: %s", a4, a5, a6, a7, a8, a1 - 112);
LABEL_8:
    *(a1 + 288) = a2;
    return 36;
  }

  if ((v9 & 0x8000) != 0)
  {
    goto LABEL_8;
  }

  if (!*(a3 + 204))
  {
    return 0;
  }

  result = sub_100026DEC(a1);
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10002E9E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 1016);
  if (v10 & 2) != 0 || (v10)
  {
    sub_10002C908(a2, 5, "resetting service: %s", a4, a5, a6, a7, a8, a1 - 112);
    sub_100033FF0(a2, a1);
    return 0;
  }

  if (!a1[20])
  {
    if (a1[21])
    {
      sub_10002C908(a2, 4, "Service cannot reset: active PID-local endpoints", a4, a5, a6, a7, a8, v40);
      sub_10002C908(a2, 5, "cannot reset service active pid-local endpoints: %s", v17, v18, v19, v20, v21, a1 - 112);
      return 16;
    }

    v22 = a1[19];
    if (v22)
    {
      while ((*(v22 + 88) & 4) == 0)
      {
        v22 = *(v22 + 16);
        if (!v22)
        {
          goto LABEL_13;
        }
      }

      sub_10002C908(a2, 4, "Service cannot reset: active endpoints", a4, a5, a6, a7, a8, v40);
      sub_10002C908(a2, 5, "cannot reset service active endpoints: %s", v25, v26, v27, v28, v29, a1 - 112);
      return 16;
    }

LABEL_13:
    v23 = a1[22];
    if (v23)
    {
      while ((*(v23 + 88) & 4) == 0)
      {
        v23 = *(v23 + 16);
        if (!v23)
        {
          goto LABEL_16;
        }
      }

      sub_10002C908(a2, 4, "Service cannot reset: active event channels", a4, a5, a6, a7, a8, v40);
      sub_10002C908(a2, 5, "cannot reset service active event channels: %s", v30, v31, v32, v33, v34, a1 - 112);
      return 16;
    }

LABEL_16:
    v24 = a1[23];
    if (v24)
    {
      result = 0;
      while ((*(v24 + 88) & 4) == 0)
      {
        v24 = *(v24 + 16);
        if (!v24)
        {
          return result;
        }
      }

      sub_10002C908(a2, 4, "Service cannot reset: active instance endpoints", a4, a5, a6, a7, a8, v40);
      sub_10002C908(a2, 5, "cannot reset service: active instance endpoints: %s", v35, v36, v37, v38, v39, a1 - 112);
      return 16;
    }

    return 0;
  }

  sub_10002C908(a2, 4, "Service cannot reset: active unmanaged endpoints", a4, a5, a6, a7, a8, v40);
  sub_10002C908(a2, 5, "cannot reset service active unmanaged endpoints: %s", v11, v12, v13, v14, v15, a1 - 112);
  return 16;
}

char *sub_10002EB84(void *a1, const char *a2, void *a3, uint64_t a4, _BYTE *a5, size_t a6)
{
  v8 = sub_10004C3D8(a1, a2, a3, sub_10002EDF0, a5, a1);
  if (v8)
  {
    sub_10002F03C(a6, a1, v8, 0);
  }

  return v8;
}

char *sub_10002EBE8(uint64_t a1, const char *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  if (*(a5 + 104))
  {
    v10 = *(a5 + 56);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1000157D8();
  v12 = sub_10001CCC0(a1, a5, a2, v10, a3, v11, sub_1000347D0, a1, a4);
  if (sub_10001E954(v12))
  {
    sub_10001E954(v12);
    v13 = xpc_strerror();
    sub_100015968(a4, 4, "Ignored socket %s: %s", a2, v13);
    sub_10001B690(v12);
    return 0;
  }

  else
  {
    v16 = *(a1 + 192);
    v15 = (a1 + 192);
    v14 = v16;
    *(v12 + 2) = v16;
    if (v16)
    {
      *(v14 + 24) = v12 + 16;
    }

    *v15 = v12;
    *(v12 + 3) = v15;
  }

  return v12;
}

void sub_10002ECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 112) != qword_10007D8B8 && sub_10000305C(a1))
  {
    sub_100020018(a1, 5, "created the implicit endpoint upfront", a4, a5, a6, a7, a8, v25);
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    do
    {
      v11 = *(v10 + 16);
      v12 = *(v10 + 56);
      sub_10002D450(a2, 9, a3, a4, a5, a6, a7, a8, v25);
      ++*(v12 + 300);
      *(v12 + 368) |= 8u;
      sub_10001D438(v10, v13, v14, v15, v16, v17, v18, v19);
      v10 = v11;
    }

    while (v11);
  }

  v20 = *(a1 + 152);
  while (v20)
  {
    v21 = v20;
    v22 = v20 + 2;
    v20 = v20[2];
    if ((v22[9] & 0x40) == 0 && sub_1000340D0(a2, v21))
    {
      v23 = v21[2];
      v24 = v21[3];
      if (v23)
      {
        *(v23 + 24) = v24;
      }

      *v24 = v23;
      *v22 = -1;
      v22[1] = -1;
      sub_10001B690(v21);
    }
  }
}

void sub_10002EDF0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 248);
  if ((*(a1 + 88) & 8) != 0)
  {
    v11 = 8;
  }

  else
  {
    v11 = 1;
  }

  if (a2 == 1)
  {
    if ((*(a3 + 369) & 8) != 0)
    {
      sub_10002C908(v10, 7, "Deactivated abandoned endpoint: %s", a4, a5, a6, a7, a8, a1 - 88);
    }

    if (sub_10004CC84(a1))
    {
      *(a1 + 88) &= ~4u;
    }

    else
    {
      sub_100033D8C(v10, a1);
    }

    sub_100033864(v10, a3, v37, v38, v39, v40, v41, v42);
  }

  else
  {
    if (a2)
    {
      return;
    }

    v12 = sub_10004BFA4(a1, 4, a3, a4, a5, a6, a7, a8);
    if (byte_10007F051 == 1)
    {
      v19 = v12;
      request_seqnop = 0;
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      *trailer_infop = 0u;
      msg_sizep = 0;
      trailer_infopCnt = 52;
      msg_idp = 0;
      if (mach_port_peek(mach_task_self_, v12, 0x3000000u, &request_seqnop, &msg_sizep, &msg_idp, trailer_infop, &trailer_infopCnt))
      {
LABEL_13:
        v31 = sub_10000B7FC();
        if (sub_10002DDAC(v10, v31, a3, v32, v33, v34, v35, v36))
        {
          sub_1000441E0("failed to boot out inactive service during obliteration; endpoint event");
        }

        return;
      }

      while (1)
      {
        sub_10002C908(v10, 5, "peeking at message: seqno = %u, pid = %d", v20, v21, v22, v23, v24, request_seqnop);
        if (!DWORD2(v51) || DWORD2(v51) == dword_10007E8F8)
        {
          break;
        }

        ++request_seqnop;
        if (mach_port_peek(mach_task_self_, v19, 0x3000000u, &request_seqnop, &msg_sizep, &msg_idp, trailer_infop, &trailer_infopCnt))
        {
          goto LABEL_13;
        }
      }

      sub_10002C908(v10, 5, "port has message from obliterator or kernel", v25, v26, v27, v28, v29, v45);
    }

    v43 = sub_1000234BC(a3, v11, v13, v14, v15, v16, v17, v18);
    if ((v43 & 0xFFFFFFFE) == 0x24)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    if (v44)
    {
      if (v44 == 37)
      {
        sub_1000441E0("endpoint event received for running service");
      }

      _os_assumes_log_ctx();
    }
  }
}

size_t sub_10002F03C(size_t result, void *a2, uint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
    v9 = result;
    v10 = strlen((a3 + 168));
    v11 = v10 + 168;
    v12 = v10 >= 0xFFFFFFFFFFFFFF58;
    result = v10 + 169;
    v13 = ((v11 == -1) << 63) >> 63 != (v11 == -1);
    if (v12 || v13)
    {
      __break(1u);
    }

    else
    {
      v14 = sub_100014514(result, 0xBF8809A4uLL);
      strcpy(v14 + 168, (a3 + 168));
      *(v14 + 9) = a3;
      v17 = *(a3 + 64);
      v16 = (a3 + 64);
      v15 = v17;
      *(v14 + 6) = v17;
      if (v17)
      {
        *(v15 + 56) = v14 + 48;
      }

      *v16 = v14;
      *(v14 + 7) = v16;
      result = sub_100016BD8(v14 + 168);
      v18 = (v9 + 8 * (result % 0x1F) + 704);
      v19 = *v18;
      *(v14 + 4) = *v18;
      if (v19)
      {
        *(v19 + 5) = v14 + 32;
      }

      *v18 = v14;
      *(v14 + 5) = v18;
    }
  }

  else
  {
    v5 = (a3 + 16);
    if (*(a3 + 16) != -1 || *(a3 + 24) != -1)
    {
      sub_1000441E0("attempting to re-add an endpoint into service");
    }

    if ((a4 & 2) != 0)
    {
      v20 = a2[21];
      v6 = a2 + 21;
      v7 = v20;
    }

    else if ((a4 & 0x10) != 0)
    {
      v21 = a2[22];
      v6 = a2 + 22;
      v7 = v21;
    }

    else if ((a4 & 0x40) != 0)
    {
      v22 = a2[23];
      v6 = a2 + 23;
      v7 = v22;
    }

    else if (a4)
    {
      v23 = a2[20];
      v6 = a2 + 20;
      v7 = v23;
    }

    else
    {
      v8 = a2[19];
      v6 = a2 + 19;
      v7 = v8;
    }

    *v5 = v7;
    if (v7)
    {
      *(v7 + 24) = v5;
    }

    *v6 = a3;
    *(a3 + 24) = v6;
  }

  return result;
}

uint64_t sub_10002F1A4(uint64_t a1, FILE *a2)
{
  result = sub_10002F22C(a1, a2);
  for (i = 0; i != 23; ++i)
  {
    for (j = *(a1 + 336 + 8 * i); j; j = *(j + 120))
    {
      result = sub_100024860(j, a2, 0);
    }
  }

  for (k = *(a1 + 320); k; k = *(k + 16))
  {
    result = sub_10002F1A4(k, a2);
  }

  return result;
}

uint64_t sub_10002F22C(uint64_t a1, FILE *a2)
{
  v4 = sub_10002C974(a1, 1);
  sub_100049ECC(a2, 0, "%s = {", v5, v6, v7, v8, v9, v4);
  free(v4);
  sub_100049ECC(a2, 1, "type = %s", v10, v11, v12, v13, v14, *(*(a1 + 112) + 112));
  sub_100049ECC(a2, 1, "handle = %lu", v15, v16, v17, v18, v19, *(a1 + 120));
  sub_100049ECC(a2, 1, "active count = %d", v20, v21, v22, v23, v24, *(a1 + 188));
  if (*(a1 + 192))
  {
    sub_100049ECC(a2, 1, "on-demand count = %d", v25, v26, v27, v28, v29, *(a1 + 192));
  }

  if (*(a1 + 196))
  {
    sub_100049ECC(a2, 1, "service count = %u", v25, v26, v27, v28, v29, *(a1 + 196));
  }

  if (*(a1 + 200))
  {
    sub_100049ECC(a2, 1, "active service count = %u", v25, v26, v27, v28, v29, *(a1 + 200));
  }

  if (*(a1 + 112) == &unk_10007D720)
  {
    v30 = sub_10000184C();
    if (v30)
    {
      sub_100049ECC(a2, 1, "boot mode = %s", v31, v32, v33, v34, v35, v30);
    }

    sub_100049ECC(a2, 1, "maximum allowed shutdown time = %d s", v31, v32, v33, v34, v35, dword_10007DC44);
    sub_100049ECC(a2, 1, "service stats = {", v36, v37, v38, v39, v40);
    v362 = _NSConcreteStackBlock;
    v363 = 0x40000000;
    v364 = sub_100034BEC;
    v365 = &unk_1000792B0;
    v366 = a2;
    v367 = 0;
    sub_1000011C4();
    sub_100049ECC(a2, 1, "}", v41, v42, v43, v44, v45);
    sub_100012488(a2, 1);
  }

  if (*(a1 + 240))
  {
    sub_100049ECC(a2, 1, "originator = %s", v25, v26, v27, v28, v29, *(a1 + 240));
  }

  sub_100049ECC(a2, 1, "creator = %s[%d]", v25, v26, v27, v28, v29, *(a1 + 312), *(a1 + 300));
  sub_100049ECC(a2, 1, "creator euid = %d", v46, v47, v48, v49, v50, *(a1 + 284));
  if (*(a1 + 112) == qword_10007D8B8)
  {
    sub_100049ECC(a2, 1, "uniqueid = %llu", v51, v52, v53, v54, v55, *(a1 + 128));
  }

  if (*(a1 + 968))
  {
    sub_100049ECC(a2, 1, "session = %s", v51, v52, v53, v54, v55, *(a1 + 968));
  }

  v56 = *(a1 + 976);
  if (v56)
  {
    sub_100049ECC(a2, 1, "endpoint destination = %s", v51, v52, v53, v54, v55, v56 + 1024);
  }

  sub_100049ECC(a2, 1, "security context = {", v51, v52, v53, v54, v55);
  if (*(a1 + 104))
  {
    sub_100049ECC(a2, 2, "uid = %u", v57, v58, v59, v60, v61, *(a1 + 56));
  }

  else
  {
    sub_100049ECC(a2, 2, "uid unset", v57, v58, v59, v60, v61, v350);
  }

  v351 = *(a1 + 60);
  sub_100049ECC(a2, 2, "session uid = %d", v62, v63, v64, v65, v66);
  if (*(a1 + 64) != -1)
  {
    v351 = *(a1 + 64);
    sub_100049ECC(a2, 2, "persona id = %u", v67, v68, v69, v70, v71);
  }

  sub_100049ECC(a2, 1, "}", v67, v68, v69, v70, v71);
  sub_100049F4C(a2, v72, v73, v74, v75, v76, v77, v78, v351);
  v84 = *(a1 + 264);
  if (v84)
  {
    v85 = *(a1 + 264);
    sub_100049ECC(a2, 1, "bringup time = %llu ms", v79, v80, v81, v82, v83, v84 / 0xF4240);
  }

  if (*(a1 + 248))
  {
    sub_100049ECC(a2, 1, "xpc service paths = {", v79, v80, v81, v82, v83);
    *&v368 = 0;
    *(&v368 + 1) = a2;
    *&v369 = 2;
    v86 = *(a1 + 248);
    xpc_dictionary_apply_f();
    sub_100049ECC(a2, 1, "}", v87, v88, v89, v90, v91);
  }

  sub_100049ECC(a2, 1, "death port = 0x%x", v79, v80, v81, v82, v83, *(a1 + 184));
  if (*(a1 + 204))
  {
    LOWORD(v352) = *(a1 + 204);
    sub_100049ECC(a2, 1, "in-progress bootstraps = %hu", v94, v95, v96, v97, v98);
  }

  if (*(a1 + 208))
  {
    sub_100049ECC(a2, 1, "pending requests = {", v94, v95, v96, v97, v98);
    for (i = *(a1 + 208); i; i = *i)
    {
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      memset(v361, 0, sizeof(v361));
      v105 = i[3];
      xpc_dictionary_get_audit_token();
      v106 = sub_100045C2C(v361, &v368);
      v359 = *(i + 8);
      LOBYTE(v352) = v106;
      sub_100049ECC(a2, 2, "caller = %s.%d, event = %d", v107, v108, v109, v110, v111);
    }

    sub_100049ECC(a2, 1, "}", v99, v100, v101, v102, v103);
  }

  if (*(a1 + 320))
  {
    sub_100049ECC(a2, 1, "subdomains = {", v94, v95, v96, v97, v98);
    for (j = *(a1 + 320); j; j = *(j + 16))
    {
      if (*(j + 112) != qword_10007D8B8 || !*(j + 248))
      {
        v352 = sub_10002C974(j, 1);
        sub_100049ECC(a2, 2, "%s", v118, v119, v120, v121, v122);
        free(v352);
      }
    }

    sub_100049ECC(a2, 1, "}", v112, v113, v114, v115, v116);
  }

  if (*(a1 + 48))
  {
    sub_100049ECC(a2, 1, "pending attachments = {", v94, v95, v96, v97, v98);
    for (k = *(a1 + 48); k; k = *k)
    {
      sub_100049ECC(a2, 2, "%s", v123, v124, v125, v126, v127, k[2]);
    }

    sub_100049ECC(a2, 1, "}", v123, v124, v125, v126, v127);
  }

  if (*(a1 + 112) == &unk_10007D720)
  {
    sub_1000247AC(a2, 0, v93, v94, v95, v96, v97, v98);
  }

  if (*(a1 + 96))
  {
    sub_100049F4C(a2, v92, v93, v94, v95, v96, v97, v98, v352);
    sub_100049ECC(a2, 1, "environment = {", v129, v130, v131, v132, v133);
    for (m = *(a1 + 96); m; m = *m)
    {
      sub_10001B880(m, 2, a2);
    }

    sub_100049ECC(a2, 1, "}", v134, v135, v136, v137, v138);
  }

  sub_100049F4C(a2, v92, v93, v94, v95, v96, v97, v98, v352);
  sub_100049ECC(a2, 1, "services = {", v140, v141, v142, v143, v144);
  for (n = 0; n != 23; ++n)
  {
    for (ii = *(a1 + 336 + 8 * n); ii; ii = *(ii + 120))
    {
      sub_100026A78(ii, a2, 2, v145, v146, v147, v148, v149);
    }
  }

  sub_100049ECC(a2, 1, "}", v145, v146, v147, v148, v149);
  if (os_map_str_count())
  {
    sub_100049F4C(a2, v152, v153, v154, v155, v156, v157, v158, v353);
    sub_100049ECC(a2, 1, "service stubs = {", v159, v160, v161, v162, v163);
    os_map_str_foreach();
    sub_100049ECC(a2, 1, "}", v164, v165, v166, v167, v168);
  }

  sub_100049F4C(a2, v152, v153, v154, v155, v156, v157, v158, v353);
  sub_100049ECC(a2, 1, "unmanaged processes = {", v169, v170, v171, v172, v173);
  v179 = 0;
  v360 = a1;
  v180 = a1 + 648;
  do
  {
    for (jj = *(v180 + 8 * v179); jj; jj = *(jj + 88))
    {
      sub_100049ECC(a2, 2, "%s = {", v174, v175, v176, v177, v178, jj + 1424);
      v354 = *(jj + 300);
      sub_100049ECC(a2, 3, "active count = %d", v182, v183, v184, v185, v186);
      sub_100049ECC(a2, 3, "dynamic endpoints = {", v187, v188, v189, v190, v191);
      for (kk = *(jj + 160); kk; kk = *(kk + 16))
      {
        sub_10004CCB4(kk, a2, 4, v192, v193, v194, v195, v196);
      }

      sub_100049ECC(a2, 3, "}", v192, v193, v194, v195, v196);
      sub_100049ECC(a2, 3, "pid-local endpoints = {", v198, v199, v200, v201, v202);
      for (mm = *(jj + 168); mm; mm = *(mm + 16))
      {
        sub_10004CCB4(mm, a2, 4, v203, v204, v205, v206, v207);
      }

      sub_100049ECC(a2, 3, "}", v203, v204, v205, v206, v207);
      sub_100049ECC(a2, 2, "}", v209, v210, v211, v212, v213);
    }

    ++v179;
  }

  while (v179 != 7);
  sub_100049ECC(a2, 1, "}", v174, v175, v176, v177, v178);
  sub_100049F4C(a2, v214, v215, v216, v217, v218, v219, v220, v354);
  sub_100049ECC(a2, 1, "endpoints = {", v221, v222, v223, v224, v225);
  for (nn = 0; nn != 31; ++nn)
  {
    for (i1 = *(v360 + 704 + 8 * nn); i1; i1 = *(i1 + 32))
    {
      sub_100034CB0(a2, i1, v226, v227, v228, v229, v230, v231);
    }
  }

  sub_100049ECC(a2, 1, "}", v227, v228, v229, v230, v231);
  if (*(v360 + 976))
  {
    sub_100049F4C(a2, v234, v235, v236, v237, v238, v239, v240, v355);
    sub_100049ECC(a2, 1, "externally-hosted endpoints = {", v241, v242, v243, v244, v245);
    v252 = 0;
    v253 = *(v360 + 976) + 704;
    do
    {
      for (i2 = *(v253 + 8 * v252); i2; i2 = *(i2 + 32))
      {
        sub_100034CB0(a2, i2, v246, v247, v248, v249, v250, v251);
      }

      ++v252;
    }

    while (v252 != 31);
    sub_100049ECC(a2, 1, "}", v247, v248, v249, v250, v251);
  }

  sub_100049F4C(a2, v234, v235, v236, v237, v238, v239, v240, v355);
  sub_100049ECC(a2, 1, "task-special ports = {", v255, v256, v257, v258, v259);
  for (i3 = *(v360 + 88); i3; i3 = *i3)
  {
    v266 = "exception";
    if (*(i3 + 5) != 128)
    {
      v266 = mach_task_special_port_description();
    }

    v267 = *(i3 + 4);
    v268 = sub_100034F4C(v360, v267);
    if (v268)
    {
      v274 = (v268 + 1024);
    }

    else
    {
      v275 = sub_100032734(v360, v267, 0, v269, v270, v271, v272, v273);
      v274 = (v275 + 21);
      if (!v275)
      {
        v274 = "(unknown)";
      }
    }

    sub_100049ECC(a2, 3, "%#8x %-4u %12s  %s", v269, v270, v271, v272, v273, *(i3 + 4), *(i3 + 5), v266, v274);
  }

  sub_100049ECC(a2, 1, "}", v260, v261, v262, v263, v264);
  sub_100032A28(v360);
  if (os_map_str_count())
  {
    sub_100049ECC(a2, 1, "attractive services = {", v276, v277, v278, v279, v280);
    *&v368 = _NSConcreteStackBlock;
    *(&v368 + 1) = 0x40000000;
    *&v369 = sub_100034FBC;
    *(&v369 + 1) = &unk_1000792F0;
    v370 = a2;
    os_map_str_foreach();
    sub_100049ECC(a2, 1, "}", v281, v282, v283, v284, v285);
  }

  sub_100034D50(v360, a2, 1, v276, v277, v278, v279, v280);
  sub_100034E7C("resource", *(v360 + 1000), a2, v286, v287, v288, v289, v290, v356);
  sub_100034E7C("jetsam", *(v360 + 1008), a2, v291, v292, v293, v294, v295, v357);
  v296 = sub_10000FC98(0x80uLL);
  sub_10002B8DC(v296, "shutting down", *(v360 + 1016) & 1, v297, v298, v299, v300, v301);
  sub_10002B8DC(v296, "slain", (*(v360 + 1016) >> 1) & 1, v302, v303, v304, v305, v306);
  sub_10002B8DC(v296, "uncorked", (*(v360 + 1016) >> 2) & 1, v307, v308, v309, v310, v311);
  sub_10002B8DC(v296, "deactivated", (*(v360 + 1016) >> 4) & 1, v312, v313, v314, v315, v316);
  sub_10002B8DC(v296, "inactive", (*(v360 + 1016) >> 5) & 1, v317, v318, v319, v320, v321);
  sub_10002B8DC(v296, "in initial on-demand", (*(v360 + 1016) >> 6) & 1, v322, v323, v324, v325, v326);
  sub_10002B8DC(v296, "exec hack", (*(v360 + 1016) >> 7) & 1, v327, v328, v329, v330, v331);
  sub_100049F4C(a2, v332, v333, v334, v335, v336, v337, v338, v358);
  sub_100049ECC(a2, 1, "properties = %s", v339, v340, v341, v342, v343, *v296);
  sub_10000FD04(v296);
  return sub_100049ECC(a2, 0, "}", v344, v345, v346, v347, v348);
}

uint64_t sub_10002FE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED30(a2);
  v5 = sub_10000ED28(a2);
  v6 = sub_10000ECF8(a2);
  v43 = a1;
  v44 = 0;
  v37 = sub_10002E45C;
  v38 = sub_10002E8A0;
  v39 = sub_10002E9E8;
  v40 = sub_10002EB84;
  v41 = sub_10002EBE8;
  v42 = sub_10002ECE8;
  if (v6)
  {
    v7 = sub_100030274(v6, &v44);
    v45 = v7;
    v8 = v44;
    if (v7)
    {
      v33 = v7;
      v34 = xpc_strerror();
      v32 = v4;
      v9 = "Could not parse plist: path = %s, error = %d: %s";
LABEL_4:
      sub_100030304(a1, v8, 3, v9, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      goto LABEL_22;
    }
  }

  else
  {
    v8 = sub_10000ED18(a2);
    v44 = v8;
  }

  v10 = (*(a2 + 48) >> 13) & 1;
  if ((sub_1000303D4(v8, "Label") & 1) != 0 || sub_10000ED00(a2))
  {
    v11 = 128;
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 112) != qword_10007D8B8)
  {
    v10 |= 0x80uLL;
  }

  v12 = sub_100030410(a1, 3, v10, a2 + 16, v4, v5);
  if (!v12)
  {
    if (sub_1000169A8(v4, "/System/Library/LaunchDaemons/com.apple.jetsamproperties") || sub_1000169A8(v4, "/AppleInternal/Library/LaunchDaemons/com.apple.jetsamproperties"))
    {
      v45 = 0;
      goto LABEL_22;
    }

    v16 = (*(a2 + 48) >> 10) & 0x22;
    v17 = sub_10000ED0C(a2);
    v18 = 0x20000;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v16 | v11 | v18) & 0xFFFFFFFFFFFFFDFFLL | (((*(a2 + 48) >> 8) & 1) << 9);
    if (sub_1000169A8(v4, "/System/Library/LaunchAngels/") || sub_1000169A8(v4, "/AppleInternal/Library/LaunchAngels/") || (*(a2 + 50) & 4) != 0)
    {
      v19 |= 0x400uLL;
    }

    v20 = sub_1000443C8(a1);
    v21 = *(a1 + 112);
    if (v21 == &unk_10007D720 || v20)
    {
      v23 = v19 | 0x800;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23 | ((*(v21 + 128) & 2) << 11);
    v25 = sub_1000169A8(v4, "/Library/LaunchAgents/");
    v26 = v24 | 0x12000;
    if (!v25)
    {
      v26 = v24;
    }

    v27 = v26 | (*(a2 + 48) >> 3) & 0x10000;
    if (sub_1000169A8(v4, "/System/Library/DeveloperModeLaunchDaemons/"))
    {
      v28 = v27 | 0x4000;
    }

    else
    {
      v28 = v27;
    }

    v45 = 0;
    v29 = sub_10000312C(a1, v8, v4, a2 + 16, &v37, v28, &v45);
    if (v29)
    {
      sub_10002D910(a1, v29);
      goto LABEL_22;
    }

    if (v45 > 118)
    {
      if (v45 == 119 || v45 == 134)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v45 == 17)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v33 = sub_100045C2C(a2 + 16, &v46);
        v34 = *(a2 + 36);
        v32 = v4;
        v9 = "Caller tried to import service with same label as an existing service: path = %s, caller = %s[%d]";
        goto LABEL_4;
      }

      if (v45 == 37)
      {
        goto LABEL_22;
      }
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v30 = sub_100045C2C(a2 + 16, &v46);
    v31 = *(a2 + 36);
    if (v45 == 152)
    {
      xpc_strerror();
      sub_100030304(a1, v8, 5, "Did not import service from caller: path = %s, caller = %s[%d], error = %d: %s", v4);
      goto LABEL_22;
    }

    v35 = v45;
    v36 = xpc_strerror();
    v33 = v30;
    v34 = v31;
    v32 = v4;
    v9 = "Could not import service from caller: path = %s, caller = %s[%d], error = %d: %s";
    goto LABEL_4;
  }

  v13 = v12;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v14 = sub_100045C2C(a2 + 16, &v46);
  if (v13 == 122)
  {
    sub_100030304(a1, v8, 3, "Caller specified a plist with bad ownership/permissions: path = %s, caller = %s[%d]", v4, v14, *(a2 + 36));
  }

  else if (v13 == 1)
  {
    sub_1000304FC(a1, (a2 + 16), 1, "service bootstrap (%s, io flags=%#llx, eval flags=%#llx)", v4, *(a2 + 48), v10);
  }

  v45 = v13;
LABEL_22:
  if (v8)
  {
    xpc_release(v8);
  }

  return v45;
}

uint64_t sub_100030274(NSObject *a1, void *a2)
{
  v9 = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(a1, &buffer_ptr, &v9);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  v5 = xpc_create_from_plist();
  if (v5 && (v6 = v5, xpc_get_type(v5) == &_xpc_type_dictionary))
  {
    v7 = 0;
    *a2 = v6;
  }

  else
  {
    v7 = 109;
  }

  dispatch_release(v4);
  return v7;
}

void sub_100030304(uint64_t a1, xpc_object_t xdict, int a3, char *a4, ...)
{
  va_start(va, a4);
  if (xdict && (string = xpc_dictionary_get_string(xdict, "Label")) != 0)
  {
    v9 = string;
    v10 = sub_10002C974(a1, 1);
    v11 = sub_1000168E0("%s/%s", v10, v9);
    free(v10);
  }

  else
  {
    v11 = sub_10002C974(a1, 1);
  }

  sub_1000474DC(v11, a3, a4, va, v4);
  free(v11);
}

const char *sub_1000303D4(void *a1, const char *a2)
{
  result = xpc_dictionary_get_string(a1, a2);
  if (result)
  {

    return sub_1000169A8(result, "com.apple.");
  }

  return result;
}

uint64_t sub_100030410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1;
  do
  {
    v13 = v12;
    v12 = *(v12 + 232);
  }

  while (v12);
  if (a2 - 1) <= 1 && (*(v13 + 1016))
  {
    return 124;
  }

  if ((a2 - 3) > 1 || (v15 = *(a1 + 1016), result = 124, (v15 & 2) == 0) && (v15 & 1) == 0)
  {
    if ((a3 & 0x88) != 0 && !sub_100035050(a4))
    {
      return 154;
    }

    else
    {
      v16 = *(a1 + 120);
      v17 = *(*(a1 + 112) + 104);

      return v17(a1, a2, a3, v16, a4, a5, a6);
    }
  }

  return result;
}

void sub_1000304FC(uint64_t a1, unsigned int *a2, int a3, char *a4, ...)
{
  va_start(va, a4);
  if (a3 != 124)
  {
    if (a3 == 154)
    {
      v6 = 65539;
    }

    else
    {
      v6 = 3;
    }

    v19[0] = 0;
    va_copy(&v19[1], va);
    vasprintf(v19, a4, va);
    memset(v20, 0, sizeof(v20));
    v7 = sub_100045C2C(a2, v20);
    v8 = a2[5];
    xpc_strerror();
    v17 = a2[2];
    v18 = a2[6];
    v15 = a2[1];
    v16 = a2[4];
    v14 = a2[3];
    sub_10002C908(a1, v6, "Caller not allowed to perform action: %s.%d, action = %s, code = %d: %s, uid = %u, euid = %u, gid = %u, egid = %u, asid = %u", v9, v10, v11, v12, v13, v7);
    free(v19[0]);
  }
}

uint64_t sub_10003060C(_DWORD *a1, uint64_t a2, NSObject *a3)
{
  v6 = sub_10000ED30(a2);
  v7 = sub_10000ED28(a2);
  v8 = sub_10000ECF8(a2);
  object = 0;
  v9 = a1[254];
  v10 = 124;
  if (v9 & 2) != 0 || (v9)
  {
    return v10;
  }

  v11 = v8;
  v12 = sub_100030410(a1, 4, 128, a2 + 16, v6, v7);
  if (v12)
  {
    v10 = v12;
    sub_1000304FC(a1, (a2 + 16), v12, "service bootout (%s)", v6);
    return v10;
  }

  if (v11)
  {
    v13 = sub_100030274(v11, &object);
    if (v13)
    {
      v10 = v13;
      xpc_strerror();
      sub_10002C908(a1, 3, "Could not parse plist: path = %s, error = %d: %s:", v14, v15, v16, v17, v18, v6);
      v19 = object;
      goto LABEL_12;
    }

    v19 = object;
  }

  else
  {
    v19 = sub_10000ED18(a2);
  }

  if (xpc_get_type(v19) != &_xpc_type_dictionary || (string = xpc_dictionary_get_string(v19, "Label")) == 0)
  {
    v10 = 109;
    goto LABEL_12;
  }

  v22 = string;
  v23 = sub_100030830(a1, string);
  if (!v23)
  {
    v10 = 113;
    goto LABEL_12;
  }

  v24 = v23;
  v25 = sub_100021F44();
  if (v25)
  {
    v10 = v25;
    sub_1000304FC(a1, (a2 + 16), v25, "service bootout (%s)", v22);
    goto LABEL_12;
  }

  sub_100030A0C(v24, a2 + 16, "booting out service");
  v10 = sub_10002DDAC(a1, a2 + 16, v24, v26, v27, v28, v29, v30);
  if (v10 != 36)
  {
LABEL_25:
    if ((*(a2 + 49) & 8) != 0)
    {
      sub_100032AF8(a1, v22, a2 + 16, 1);
      sub_10004EB08();
    }

    goto LABEL_12;
  }

  if (!*(v24 + 280))
  {
    if (a3)
    {
      *(v24 + 280) = a3;
      dispatch_group_enter(a3);
    }

    goto LABEL_25;
  }

  v10 = 37;
LABEL_12:
  if (v19)
  {
    xpc_release(v19);
  }

  return v10;
}

char *sub_100030830(_DWORD *a1, char *a2)
{
  for (i = *&a1[2 * (sub_100016BD8(a2) % 0x17uLL) + 84]; i; i = *(i + 15))
  {
    if (!strcmp(i + 1424, a2))
    {
      break;
    }
  }

  v5 = os_map_str_delete();
  if (v5)
  {
    v6 = v5;
    v16[0] = sub_10002E45C;
    v16[1] = sub_10002E8A0;
    v16[2] = sub_10002E9E8;
    v16[3] = sub_10002EB84;
    v16[4] = sub_10002EBE8;
    v16[5] = sub_10002ECE8;
    v16[6] = a1;
    sub_10004A998(v5);
    sub_100015A08();
    sub_100015A14();
    v7 = j__xpc_bundle_create_with_string_cache();
    sub_10004A9A4(v6);
    xpc_bundle_populate();
    v15 = 0;
    i = sub_1000048A0(a1, v7, (v6 + 16), 0, 0, v16, *(v6 + 48), &v15);
    v8 = sub_10004A98C(v6);
    if (i)
    {
      sub_10002C908(a1, 5, "Service stub initialized for %s", v9, v10, v11, v12, v13, v8);
      sub_10002D910(a1, i);
    }

    else
    {
      sub_10002C908(a1, 5, "Service stub initialization failed for %s [%d]", v9, v10, v11, v12, v13, v8);
    }

    xpc_release(v7);
    sub_10001B690(v6);
  }

  return i;
}

void sub_100030A0C(uint64_t a1, uint64_t a2, char a3)
{
  bzero(v11, 0x400uLL);
  sub_1000350A8(*(a2 + 20), v11);
  sub_100020018(a1, 5, "%s: caller = %s, value = 0x%llx", v6, v7, v8, v9, v10, a3);
}

void sub_100030AB4(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  sub_100032AF8(a1, a2, a3, a4);

  sub_10004EB08();
}

uint64_t sub_100030ADC(size_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  sub_100030B1C(a1, a2, 0, a3, &v4);
  if ((v4 & 0xFFFFFFFD) == 0x79)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

char *sub_100030B1C(size_t a1, uint64_t a2, void *a3, void *a4, _DWORD *a5)
{
  v10 = sub_10000ED38(a2);
  v11 = sub_10000ED28(a2);
  property = xpc_bundle_get_property();
  info_dictionary = xpc_bundle_get_info_dictionary();
  v14 = *(a1 + 1016);
  if (v14 & 2) != 0 || (v14)
  {
    v18 = 0;
    v77 = 124;
  }

  else
  {
    v15 = info_dictionary;
    v73 = a3;
    v75 = a5;
    v16 = (*(a2 + 48) >> 13) & 1;
    v74 = a4;
    if ((sub_1000303D4(info_dictionary, "CFBundleIdentifier") & 1) != 0 || sub_10000ED00(a2))
    {
      v17 = 128;
    }

    else
    {
      v17 = 0;
    }

    if (*(a1 + 112) == qword_10007D8B8)
    {
      v19 = v16;
    }

    else
    {
      v19 = v16 | 0x80;
    }

    if ((*(a2 + 49) & 0x40) != 0 && sub_1000169EC(property, ".appex"))
    {
      v17 |= 0x40uLL;
    }

    v78 = 0;
    if (sub_1000351E8(a1, v10, &v78))
    {
      v20 = xpc_bundle_get_property();
      xpc_strerror();
      sub_10002C908(a1, 3, "Could not get domain target from bundle: path = %s, error = %d: %s", v21, v22, v23, v24, v25, v20);
LABEL_16:
      v18 = 0;
      v26 = 112;
LABEL_17:
      v77 = v26;
LABEL_34:
      a5 = v75;
      goto LABEL_35;
    }

    v27 = v78;
    v72 = a1;
    if (v78 != qword_10007D8B8)
    {
      v28 = (*(v78 + 88))(a2 + 16);
      v29 = sub_100032848(v27, v28);
      v72 = v29;
      if (*(v29 + 112) == &unk_10007D720)
      {
        if (*(v29 + 968))
        {
          v72 = sub_1000443F4();
          if (!v72)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v30 = sub_10000ED0C(a2);
    v31 = 0x20000;
    if (!v30)
    {
      v31 = 0;
    }

    v32 = v31 | v17;
    if ((v17 & 0x40) != 0)
    {
      v33 = v31 | v17;
      value = xpc_dictionary_get_value(v15, "XPCService");
      if (value)
      {
        v35 = value;
        if (xpc_get_type(value) == &_xpc_type_dictionary)
        {
          string = xpc_dictionary_get_string(v35, "_RoleAccount");
          if (string)
          {
            if (!strcmp(string, "mobile"))
            {
              v19 = v16 | 0x10;
            }
          }
        }
      }

      v32 = v33 & 0xFFFFFFFFFFFFFF7FLL;
    }

    v77 = sub_100030410(v72, 3, v19, a2 + 16, property, v11);
    if (v77)
    {
      if (*(a1 + 240))
      {
        v37 = *(a1 + 240);
      }

      v38 = *(*(v72 + 112) + 112);
      xpc_strerror();
      sub_10002C908(a1, 3, "Path not allowed in target domain: type = %s, path = %s error = %d: %s, origin = %s", v39, v40, v41, v42, v43, v38);
      goto LABEL_33;
    }

    v45 = *(a2 + 48);
    v76[0] = sub_10002E45C;
    v76[1] = sub_10002E8A0;
    v76[2] = sub_10002E9E8;
    v76[3] = sub_10002EB84;
    v76[4] = sub_10002EBE8;
    v76[5] = sub_10002ECE8;
    v76[6] = v72;
    v46 = xpc_dictionary_get_string(v15, "CFBundleIdentifier");
    if (!v46)
    {
      sub_10002C908(a1, 3, "Bundle Info.plist at %s does not have a CFBundleIdentifier", v47, v48, v49, v50, v51, property);
      v18 = 0;
      v26 = 107;
      goto LABEL_17;
    }

    v52 = v46;
    v53 = sub_100030830(v72, v46);
    if (v53)
    {
      v18 = v53;
      v54 = sub_10001FB7C(v53);
      if (strcmp(property, v54))
      {
        sub_10001FB7C(v18);
        sub_10002C908(a1, 4, "Attempt to re-bootstrap service from different path, will use existing: service = %s, existing = %s, conflicting = %s", v55, v56, v57, v58, v59, v52);
      }

      v60 = 121;
      v77 = 121;
      a5 = v75;
    }

    else
    {
      v64 = (2 * v45) & 0x200;
      v65 = v74;
      if (!v74 && (*(a2 + 48) & 0x4000) == 0 && *(a1 + 112) == qword_10007D8B8)
      {
        v66 = sub_10000ED38(a2);
        v78 = 0;
        if (!sub_1000351E8(a1, v66, &v78) && v78 == qword_10007D8B8 && (v67 = xpc_bundle_get_info_dictionary(), (v68 = xpc_dictionary_get_value(v67, "XPCService")) != 0) && (v69 = v68, xpc_get_type(v68) == &_xpc_type_dictionary) && !xpc_dictionary_get_value(v69, "_AdditionalSubServices"))
        {
          v70 = xpc_dictionary_get_value(v69, "_AdditionalServices");
          v65 = 0;
          if (!v70 && (byte_10007F0C6 & 1) == 0)
          {
            if (v72 != a1)
            {
              sub_100054404();
            }

            sub_10004A93C(v72, v10, a2 + 16, v64 | v32, &v77);
            if (v71)
            {
              sub_10004A98C(v71);
              os_map_str_insert();
              v18 = 0;
              v26 = 123;
              goto LABEL_17;
            }

LABEL_33:
            v18 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          v65 = 0;
        }
      }

      v18 = sub_1000048A0(v72, v10, (a2 + 16), v73, v65, v76, v64 | v32, &v77);
      if (!v18)
      {
        goto LABEL_34;
      }

      v60 = v77;
      a5 = v75;
      if (v72 == a1 && v77 != 121)
      {
        v63 = a1;
        goto LABEL_69;
      }
    }

    v61 = *(v18 + 19);
    if (v61)
    {
      do
      {
        if ((*(v61 + 88) & 0x40) == 0)
        {
          v62 = *(a1 + 976) ? *(a1 + 976) : a1;
          if (!sub_100033094(v62, (v61 + 168)))
          {
            sub_10002F03C(a1, v18, v61, 4);
          }
        }

        v61 = *(v61 + 16);
      }

      while (v61);
      v60 = v77;
    }

    if (!v60)
    {
      v63 = v72;
LABEL_69:
      sub_10002D910(v63, v18);
    }
  }

LABEL_35:
  *a5 = v77;
  return v18;
}

uint64_t sub_1000310B4(uint64_t a1, char *a2)
{
  if (*(a1 + 976))
  {
    a1 = *(a1 + 976);
  }

  return sub_100033094(a1, a2);
}

uint64_t sub_1000310C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004AB10();
  if (*(v3 + 5) || *(v3 + 3) || *(v3 + 7))
  {
    sub_10004749C(65539, "Dropping coalition notification from unknown source (%llu)", a2);
    return 5;
  }

  else
  {
    sub_10001F5CC(a2);
    sub_100014F78();
    return 0;
  }
}

BOOL sub_100031138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000BAFC(a2))
  {
    return 0;
  }

  if (*(a1 + 112) == &unk_10007D8B8)
  {
    v11 = *(a1 + 120);
    if (!(v11 >> 31))
    {
      v12 = *(a2 + 20);
      if ((v12 & 0x80000000) == 0 && v11 == v12)
      {
        return 0;
      }
    }
  }

  v6 = sub_100023EEC(a3);
  if (v6 == a2)
  {
    return 0;
  }

  if (v6 && (*a2 == *v6 ? (v7 = *(a2 + 8) == v6[1]) : (v7 = 0), v7 ? (v8 = *(a2 + 16) == v6[2]) : (v8 = 0), v8 ? (v9 = *(a2 + 24) == v6[3]) : (v9 = 0), v9))
  {
    return 0;
  }

  else
  {
    return !sub_10004202C(a3, a2);
  }
}

uint64_t sub_1000311F4(mach_port_context_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v6 = sub_100014A88(a2, a3, a4, a5);
  if (!v6)
  {
    if (*(a1 + 112) != &unk_10007D720)
    {
      sub_100054404();
    }

    v7 = *(a1 + 184);
    if (v7)
    {
      if (sub_10000B774(v7, 0, a1))
      {
        sub_100054420();
      }

      *(a1 + 184) = 0;
    }
  }

  return v6;
}

uint64_t sub_10003126C()
{
  qword_10007E7B0 = sub_10003136C(&unk_10007D720, 0, 0, 0, 0, 0, &qword_10007F150);
  *(qword_10007E7B0 + 1016) |= 0x2000u;
  byte_10007E7B8 = os_variant_is_darwinos();
  sub_10004AB38(3, sub_1000319C0);
  sub_10004AB38(5, sub_100031E24);
  sub_10004AB38(7, sub_100031FD8);
  sub_10004ACDC(sub_100050B44, 0x830uLL);
  sub_10004ACDC(sub_100051218, 0x2CuLL);
  v0 = mach_host_self();
  result = host_set_special_port(v0, 22, dword_10007F068);
  if (result)
  {
    return sub_100054F14();
  }

  return result;
}

void *sub_10003136C(uint64_t a1, uint64_t a2, const char *a3, const char *a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a1 == qword_10007D8B8 && a2 == 0)
  {
    sub_1000441E0("Can't create PID domain for PID 0");
  }

  v15 = strlen(*(a1 + 120));
  v16 = v15;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  *__str = 0u;
  v77 = 0u;
  *v74 = 0;
  v75[0] = 0;
  *(v75 + 5) = 0;
  if (a3)
  {
    snprintf(__str, 0x80uLL, ".%s", a3);
    v17 = v16 + strlen(a3) + 22;
LABEL_8:
    snprintf(v74, 0x15uLL, ".%lu", a2);
    goto LABEL_9;
  }

  v17 = v15 + 21;
  if (a1 != &unk_10007D720)
  {
    goto LABEL_8;
  }

LABEL_9:
  v18 = sub_10001BBEC(v17);
  v18[14] = a1;
  v18[15] = a2;
  v19 = v18 + 15;
  v18[29] = a6;
  snprintf(v18 + 1024, v17, "%s%s%s", *(a1 + 120), __str, v74);
  v20 = *(a7 + 16);
  *(v18 + 35) = *a7;
  *(v18 + 37) = v20;
  v21 = v18[14];
  if (v21[11] && sub_100032848(v21, *v19))
  {
    v57 = *(v18[14] + 112);
    sub_1000441E0("refusing to add a duplicate domain: type=%s handle=%lu", v57, v18[15]);
  }

  v22 = (v18[14] + 8 * (sub_100016BA4(v19, 8) % 0xBuLL));
  v23 = *v22;
  v18[4] = *v22;
  if (v23)
  {
    *(v23 + 40) = v18 + 4;
  }

  *v22 = v18;
  v18[5] = v22;
  os_map_str_init();
  if (a5)
  {
    *(v18 + 46) = a5;
  }

  v24 = sub_100022BD8(*(a7 + 20));
  if (v24)
  {
    v25 = *(v24 + 248);
  }

  else if (sub_10003E11C(a7) == -1 || (v26 = sub_10003E268(), v26 == -3) || (v25 = sub_100032848(qword_10007D7A8, v26)) == 0)
  {
    if ((v27 = sub_10004AB10(), v27 != a7) && (!v27 || (*v27 == *a7 ? (v28 = *(v27 + 1) == *(a7 + 8)) : (v28 = 0), v28 ? (v29 = *(v27 + 2) == *(a7 + 16)) : (v29 = 0), v29 ? (v30 = *(v27 + 3) == *(a7 + 24)) : (v30 = 0), !v30)) || (v25 = sub_10004AB1C()) == 0 || *(v25 + 112) != qword_10007D7A8)
    {
      v25 = sub_100032848(qword_10007D7A8, *(a7 + 4));
    }
  }

  if (v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = a6;
  }

  memset(v73, 0, sizeof(v73));
  v32 = sub_100045C2C(a7, v73);
  v18[39] = sub_1000166EC(v32);
  if (a4)
  {
    v18[121] = sub_1000166EC(a4);
    if (a1 == qword_10007D7A8)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (a1 == qword_10007D7A8)
    {
      v18[121] = sub_1000166EC("PostLogOutSync");
LABEL_49:
      v33 = a2;
LABEL_50:
      *(v18 + 14) = v33;
      *(v18 + 104) |= 1u;
      goto LABEL_51;
    }

    v18[121] = 0;
  }

  if (a1 == qword_10007D8B8)
  {
    v33 = *(a7 + 4);
    if (v33 || *(v31 + 112) != &unk_10007D720)
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  *(v18 + 15) = -101;
  v34 = v18[14];
  if (v34 != &unk_10007D720)
  {
    if (v34 == qword_10007D7A8)
    {
      v36 = v18 + 7;
    }

    else if (v34 == qword_10007D8B8)
    {
      v36 = (v31 + 60);
    }

    else
    {
      v35 = v18[29];
      if (!v35)
      {
        sub_100054404();
      }

      v36 = (v35 + 60);
    }

    *(v18 + 15) = *v36;
  }

  *(v18 + 16) = -1;
  sub_100032608(v18);
  sub_10002CC34(v18);
  if (sub_1000443C8(v18) || v18[14] == &unk_10007D720)
  {
    sub_100032438(v18, v37, v38, v39, v40, v41, v42, v43, v58);
    *(v18 + 254) |= 0x40u;
  }

  if (a1 == &unk_10007D720)
  {
    if (a6)
    {
      sub_100054404();
    }
  }

  else
  {
    if (a1 == qword_10007D8B8)
    {
      sub_100032438(v18, v37, v38, v39, v40, v41, v42, v43, v58);
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      *tn = 0u;
      v62 = 0u;
      v44 = sub_100045BEC(a2, tn);
      if (v44 != 3)
      {
        if (v44)
        {
          _os_assumes_log_ctx();
        }

        else
        {
          v18[16] = *(&v70 + 1);
        }
      }

      v60 = 0;
      memset(buffer, 0, sizeof(buffer));
      v45 = sub_100045D20(a2, buffer);
      if (v45 != 3)
      {
        if (v45)
        {
          _os_assumes_log_ctx();
        }

        else
        {
          *(v18 + 125) = buffer[0];
        }
      }
    }

    v46 = *(a6 + 320);
    v18[2] = v46;
    if (v46)
    {
      *(v46 + 24) = v18 + 2;
    }

    *(a6 + 320) = v18;
    v18[3] = a6 + 320;
    sub_10001B5B8(v18);
    sub_10002CC34(a6);
    sub_10001B690(v18);
  }

  tn[0] = -1;
  v47 = v18[14];
  if (v47 == &unk_10007D720)
  {
    v48 = sub_10000B654(0x33u, 6u, v18);
  }

  else
  {
    if (v47 != qword_10007D8B8)
    {
      goto LABEL_80;
    }

    v48 = *(v18 + 46);
    if (!v48)
    {
      task_name_for_pid(mach_task_self_, *v19, tn);
      v48 = tn[0];
    }
  }

  sub_10003DA88(v18, v48, v38, v39, v40, v41, v42, v43, v58);
  v47 = v18[14];
LABEL_80:
  if (v47 == &unk_10007D720)
  {
    sub_100034514(v18, 0, dword_10007F068, 4, v40, v41, v42, v43);
LABEL_87:
    v55 = xpc_retain(qword_10007F070);
    goto LABEL_88;
  }

  if (*(v47 + 128))
  {
    v49 = sub_1000175C8((v18 + 128), v18);
    v50 = v49;
    sub_10004AD90(v49, v18);
    sub_100034514(v18, 0, v50, 4, v51, v52, v53, v54);
    v55 = xpc_mach_send_create_with_disposition();
LABEL_88:
    v18[17] = v55;
    goto LABEL_89;
  }

  if (v47 == qword_10007D8B8)
  {
    if (!v31)
    {
      sub_1000441E0("user cannot create its own domain");
    }

    if (sub_100034514(v18, 0, *(*(v31 + 88) + 16), 4, v40, v41, v42, v43))
    {
      sub_100054F3C();
    }

    goto LABEL_87;
  }

LABEL_89:
  sub_10002C908(v18, 5, "created", v39, v40, v41, v42, v43, v58);
  return v18;
}

uint64_t sub_1000319C0(uint64_t a1, int a2, void *a3, xpc_object_t *a4)
{
  v11 = 0;
  v7 = sub_1000328DC(a3, a2 != 817, &v11);
  if (!v7)
  {
    return v11;
  }

  v8 = v7;
  v9 = sub_10004AB10();
  result = 45;
  switch(a2)
  {
    case 800:
      result = sub_1000353D4(v8, v9, a3, a4);
      break;
    case 801:
      result = sub_100035688(v8, v9, a3, a4);
      break;
    case 802:
      result = sub_100035A10(v8, v9, a3, a4);
      break;
    case 803:
      result = sub_100035C24(v8, v9, a3, a4);
      break;
    case 804:
      result = sub_100035CE0(v8, v9, a3, a4);
      break;
    case 805:
      result = sub_100035FF4(v8, v9, a3, a4);
      break;
    case 806:
      result = sub_10003631C(v8, a3, a4);
      break;
    case 807:
      result = sub_100036380(v8, a3, a4);
      break;
    case 808:
      result = sub_100036430(v8, v9, a3, a4);
      break;
    case 809:
      result = sub_1000365DC(v8, v9, a3, a4);
      break;
    case 811:
      result = sub_100036788(v8, v9, a3, a4);
      break;
    case 812:
      result = sub_100036960(v8, v9, a3, a4);
      break;
    case 813:
      result = sub_100036B84(v8, v9, a3, a4);
      break;
    case 814:
      result = sub_100036CB8(v8, v9, a3, a4);
      break;
    case 815:
      result = sub_10003700C(v8, v9, a3, a4);
      break;
    case 816:
      result = sub_100036E7C(v8, v9, a3, a4);
      break;
    case 817:
    case 818:
    case 823:
    case 824:
    case 827:
    case 836:
    case 845:
      return result;
    case 819:
      result = sub_100037200(v8, v9, a3, a4);
      break;
    case 820:
      result = sub_100037328(v8, v9, a3, a4);
      break;
    case 821:
      result = sub_100037424(v8, v9, a3, a4);
      break;
    case 822:
    case 826:
    case 849:
      result = 142;
      break;
    case 825:
      result = sub_100037890(v8, v9, a3, a4);
      break;
    case 828:
      result = sub_100037AD0(v8, v9, a3, a4);
      break;
    case 829:
      if (*(v8 + 112) == &unk_10007D720)
      {
        result = sub_10001F384(a3, a4);
      }

      else
      {
        result = 125;
      }

      break;
    case 830:
      result = sub_10001F4E4(a3, a4);
      break;
    case 831:
      result = sub_100037BB0(v8, v9, a3);
      break;
    case 832:
      result = sub_100037CF4(v8, v9, a3);
      break;
    case 833:
      result = sub_100037F64(v8, v9, a3, a4);
      break;
    case 834:
      result = sub_100038188(v8, v9, a3, a4);
      break;
    case 835:
      result = sub_10003829C(v8, v9, a3, a4);
      break;
    case 837:
      result = sub_10003848C(v8, v9, a3, a4);
      break;
    case 838:
      result = sub_100038588(v9, a3, a4);
      break;
    case 839:
      result = sub_100038880(v8, v9, a3, a4);
      break;
    case 840:
      result = sub_1000389FC(v8, v9, a3, a4);
      break;
    case 842:
      result = sub_10003866C(v8, v9, a3, a4);
      break;
    case 843:
      result = sub_100038774(v8, v9, a3);
      break;
    case 844:
      result = sub_100038AF0(v8, v9, a3, a4);
      break;
    case 846:
      result = sub_100038BA0(v8, v9, a3, a4);
      break;
    case 847:
      result = sub_100038C4C(v8, v9, a3);
      break;
    case 848:
      result = sub_100038D84(v8, v9, a3);
      break;
    default:
      result = 33;
      break;
  }

  return result;
}

uint64_t sub_100031E24(uint64_t a1, int a2, void *a3, void *a4)
{
  v15 = 0;
  v7 = sub_1000328DC(a3, 1, &v15);
  if (!v7)
  {
    return v15;
  }

  v8 = v7;
  v9 = *(v7 + 1016);
  v10 = 124;
  if ((v9 & 2) == 0 && (v9 & 1) == 0)
  {
    if (*(v7 + 112) != qword_10007D8B8)
    {
      if (*(v7 + 204))
      {
        if (*(v7 + 136))
        {
          right = xpc_mach_send_get_right();
        }

        else
        {
          right = 0;
        }

        sub_1000391EC(v8, right, a3, 1);
        return 0;
      }

      v10 = 126;
      v12 = sub_10004AB10();
      if (a2 <= 204)
      {
        if ((a2 - 200) < 3)
        {
          return v10;
        }

        if (a2 == 203)
        {
          return sub_10003BF68(v8, a3, a4);
        }

        if (a2 == 204)
        {
          return sub_10003BFEC(v8, v12, a3, a4);
        }

        return 33;
      }

      if (a2 <= 207)
      {
        if (a2 == 205)
        {
          return v10;
        }

        if (a2 == 206)
        {
          return sub_10003C0DC(v8, v12, a3, a4);
        }

        else
        {
          return sub_10003C1CC(v8, v12, a3, a4);
        }
      }

      if (a2 != 208)
      {
        if (a2 != 209)
        {
          if (a2 == 211)
          {
            return sub_10003C4C4(a3, a4);
          }

          return 33;
        }

        if (!xpc_dictionary_expects_reply())
        {
          return 22;
        }

        sub_10004AB28();
      }
    }

    return 45;
  }

  return v10;
}

uint64_t sub_100031FD8(uint64_t a1, int a2, void *a3, void *a4)
{
  v35 = 0;
  v7 = sub_1000328DC(a3, 1, &v35);
  if (!v7)
  {
    return v35;
  }

  v13 = v7;
  v14 = *(v7 + 1016);
  result = 124;
  if ((v14 & 2) == 0 && (v14 & 1) == 0)
  {
    v16 = *(v13 + 112);
    if (v16 != &unk_10007D720 && (*(v16 + 128) & 2) == 0)
    {
      sub_10002C908(v13, 3, "The launch_msg(3) API may only be used on the system or user domains.", v8, v9, v10, v11, v12, v34);
      return 125;
    }

    if (xpc_dictionary_get_BOOL(a3, "justdoit"))
    {
      *(v13 + 1016) |= 0x100u;
    }

    v17 = sub_10004AB10();
    v18 = v17;
    if (a2 == 101)
    {
      v36[0] = v13;
      v21 = sub_100039F7C(v36, *(v17 + 5), 0);
      if (!v21)
      {
        result = 113;
        goto LABEL_37;
      }

      v22 = v21;
      result = sub_100023F54(v21);
      if (result)
      {
        v23 = result;
        sub_10003D77C(v13, v22, v18, result, 0);
        reply = xpc_dictionary_create_reply(a3);
        xpc_dictionary_set_value(reply, "response", v23);
        v25 = v23;
LABEL_19:
        xpc_release(v25);
        result = 0;
        *a4 = reply;
      }
    }

    else
    {
      if (a2 != 100)
      {
        result = 33;
        goto LABEL_37;
      }

      v19 = xpc_dictionary_get_value(a3, "request");
      if (!v19)
      {
        goto LABEL_15;
      }

      v20 = v19;
      value = 0;
      if (xpc_get_type(v19) != &_xpc_type_string)
      {
        if (xpc_get_type(v20) == &_xpc_type_dictionary)
        {
          v36[0] = v13;
          v36[1] = v18;
          object = 0;
          xpc_dictionary_apply_f();
          v28 = *(v13 + 992);
          if (v28)
          {
            if (object)
            {
              xpc_release(object);
              v28 = *(v13 + 992);
            }

            *(v13 + 992) = 0;
            v29 = xpc_dictionary_create_reply(a3);
            xpc_dictionary_set_uint64(v29, "response", 0);
            if (*(v28 + 272))
            {
              sub_1000546C8();
            }

            *(v28 + 272) = v29;
          }

          else
          {
            v32 = xpc_dictionary_create_reply(a3);
            v33 = object;
            if (!object)
            {
              v33 = xpc_uint64_create(0);
              object = v33;
            }

            xpc_dictionary_set_value(v32, "response", v33);
            xpc_release(object);
            *a4 = v32;
          }

          result = 0;
          goto LABEL_37;
        }

LABEL_15:
        result = 22;
        goto LABEL_37;
      }

      string_ptr = xpc_string_get_string_ptr(v20);
      result = sub_10003C590(v13, v18, string_ptr, 0, &value);
      if (result == 36)
      {
        v30 = *(v13 + 992);
        if (v30)
        {
          *(v13 + 992) = 0;
          v31 = xpc_dictionary_create_reply(a3);
          xpc_dictionary_set_uint64(v31, "response", 0);
          result = *(v30 + 272);
          if (result)
          {
            sub_1000546C8();
          }

          *(v30 + 272) = v31;
        }

        else
        {
          result = 36;
        }

        goto LABEL_37;
      }

      if (!result)
      {
        reply = xpc_dictionary_create_reply(a3);
        v27 = value;
        xpc_dictionary_set_value(reply, "response", value);
        v25 = v27;
        goto LABEL_19;
      }
    }

LABEL_37:
    *(v13 + 1016) &= ~0x100u;
  }

  return result;
}

void sub_1000322E4(uint64_t a1)
{
  if (sub_10003DF3C())
  {
    if (sub_1000443C8(a1))
    {
      sub_10002C908(a1, 5, "going into initial on-demand mode for a multiuser device", v2, v3, v4, v5, v6, v17);
      sub_100032438(a1, v7, v8, v9, v10, v11, v12, v13, v18);
      v14 = sub_1000157D8();
      v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);
      v16 = dispatch_time(0, 45000000000);
      dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100032470;
      handler[3] = &unk_100079210;
      handler[4] = a1;
      handler[5] = v15;
      dispatch_source_set_event_handler(v15, handler);
      dispatch_source_set_mandatory_cancel_handler();
      dispatch_activate(v15);
      *(a1 + 160) = v15;
    }
  }
}

void sub_100032438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 192);
  *(a1 + 192) = v9 + 1;
  if (!v9 && *(a1 + 112) != qword_10007D8B8)
  {
    sub_10002C908(a1, 5, "entering ondemand mode", a4, a5, a6, a7, a8, a9);
  }
}

void sub_100032470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002C908(*(a1 + 32), 4, "timed out initial on-demand mode for a multiuser device", a4, a5, a6, a7, a8, v17);
  sub_10002D638(*(a1 + 32), v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a1 + 40);
  if (v16 != *(*(a1 + 32) + 160))
  {
    sub_100054404();
  }

  dispatch_source_cancel(v16);
  *(*(a1 + 32) + 160) = 0;
}

void sub_1000324D4()
{
  if (qword_10007F098)
  {
    v0 = qword_10007E7B0;
    *(qword_10007E7B0 + 1016) |= 4u;
    v0[119] = sub_10004EAB0();
    sub_100032608(v0);
    sub_100044600(v0);
    sub_1000322E4(v0);
    if (v0[121])
    {
      sub_100054404();
    }

    v0[121] = sub_1000166EC("System");
    if (sub_10004F238())
    {
      xpc_array_apply(qword_10007F0A8, &stru_1000794B0);
    }

    sub_10002D82C(v0, &qword_10007F150, 0);
    if (signal(15, 1) == -1)
    {
      sub_100054F58();
    }

    v1 = sub_1000157D8();
    qword_10007E7C0 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v1);
    dispatch_set_context(qword_10007E7C0, v0);
    dispatch_source_set_event_handler_f(qword_10007E7C0, sub_1000326DC);
    v2 = qword_10007E7C0;

    dispatch_activate(v2);
  }
}

uint64_t sub_100032608(uint64_t result)
{
  v1 = result;
  v2 = *(result + 112);
  if (v2 == &unk_10007D720)
  {
    if ((*(result + 1016) & 4) == 0)
    {
      return result;
    }

    result = sub_10003DF3C();
    if (!result)
    {
      return result;
    }

    v3 = v1[15];
    if (v3 == -101)
    {
      v3 = -1;
    }

    v6 = v3;
    v7 = 0xFFFFFFFFLL;
LABEL_15:
    result = sub_10003DFC4(&v6);
    v1[16] = result;
    v1[254] |= 0x800u;
    return result;
  }

  if (v2 == qword_10007D7A8)
  {
    result = sub_10003DF3C();
    if (!result)
    {
      return result;
    }

    v5 = v1[14];
    v4 = v1[15];
    if (v4 == -101)
    {
      v4 = -1;
    }

    v6 = v4;
    v7 = v5;
    goto LABEL_15;
  }

  if (v2 == qword_10007D8B8)
  {
    result = sub_10003DF3C();
    if (result)
    {
      result = sub_10003E11C((v1 + 70));
      v1[16] = result;
    }
  }

  return result;
}

void sub_1000326DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002C908(a1, 196611, "System shutdown initiated by kernel - launchd got a SIGTERM", a4, a5, a6, a7, a8, v16);

  sub_10002CF10(a1, v9, v10, v11, v12, v13, v14, v15);
}

void *sub_100032734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v12 = a1 + 704;
  while (1)
  {
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      break;
    }

LABEL_8:
    if (++v11 == 31)
    {
      if (a3)
      {
        v15 = 0;
        while (1)
        {
          v16 = *(a1 + 336 + 8 * v15);
          if (v16)
          {
            break;
          }

LABEL_19:
          if (++v15 == 23)
          {
            goto LABEL_20;
          }
        }

        while (1)
        {
          v13 = *(v16 + 184);
          if (v13)
          {
            break;
          }

LABEL_18:
          v16 = *(v16 + 120);
          if (!v16)
          {
            goto LABEL_19;
          }
        }

        while (1)
        {
          v17 = v13[9] ? v13[9] : v13;
          if (sub_10004BFA4(v17, 2, a3, a4, a5, a6, a7, a8) == a2)
          {
            break;
          }

          v13 = v13[2];
          if (!v13)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_20:
        v18 = *(a1 + 320);
        if (v18)
        {
          do
          {
            v13 = sub_100032734(v18, a2, a3);
            if (v13)
            {
              break;
            }

            v18 = *(v18 + 16);
          }

          while (v18);
        }

        else
        {
          return 0;
        }
      }

      return v13;
    }
  }

  while (1)
  {
    v14 = v13[9] ? v13[9] : v13;
    if (sub_10004BFA4(v14, 2, a3, a4, a5, a6, a7, a8) == a2)
    {
      return v13;
    }

    v13 = v13[4];
    if (!v13)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100032848(void *a1, uint64_t a2)
{
  v3 = a2;
  if (a1 == &unk_10007D720)
  {
    return qword_10007E7B0;
  }

  for (result = a1[sub_100016BA4(&v3, 8) % 0xBuLL]; result; result = *(result + 32))
  {
    if (*(result + 120) == v3)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1000328DC(void *a1, char a2, int *a3)
{
  memset(v11, 0, sizeof(v11));
  xpc_dictionary_get_audit_token();
  v13 = 0;
  v14 = 0;
  v6 = sub_10003B7C4(a1, &v14, &v13);
  v12 = v6;
  if (v6)
  {
    v7 = v6;
    result = 0;
LABEL_3:
    *a3 = v7;
    return result;
  }

  v9 = v13;
  v10 = v14;
  result = sub_10003B8DC(v14, v13, v11);
  if (!result)
  {
    if (a2)
    {
      result = sub_10003B96C(v10, v9, 0, 0, v11, &v12);
      v7 = v12;
    }

    else
    {
      sub_10004749C(3, "Could not find domain from request: type=%s handle=%lu", v10[14], v9);
      result = 0;
      v7 = 112;
    }

    goto LABEL_3;
  }

  return result;
}

BOOL sub_1000329B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 204);
  if (*(a1 + 204))
  {
    if (*(a1 + 136))
    {
      right = xpc_mach_send_get_right();
    }

    else
    {
      right = 0;
    }

    sub_1000391EC(a1, right, a2, 1);
  }

  return v2 == 0;
}

uint64_t sub_100032A28(uint64_t a1)
{
  result = *(a1 + 960);
  if (!result)
  {
    *(a1 + 960) = sub_100014514(0x18uLL, 0x80040D6874129uLL);
    os_map_str_init();
    return *(a1 + 960);
  }

  return result;
}

BOOL sub_100032A7C(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 112);
  if (__s1)
  {
    if (v4 == &unk_10007D720)
    {
      v5 = "System";
    }

    else
    {
      v5 = *(a1 + 968);
      if (!v5)
      {
        sub_1000441E0("non-system session had no name", v2, v3);
      }
    }

    return sub_100016A6C(__s1, v5);
  }

  else if (v4 == &unk_10007D720)
  {
    return *(a1 + 968) == 0;
  }

  else
  {

    return sub_1000443C8(a1);
  }
}

uint64_t sub_100032AF8(uint64_t a1, char *__s, uint64_t a3, int a4)
{
  if ((a4 - 1) >= 2)
  {
    sub_100054404();
  }

  if (!*(a1 + 952))
  {
    return 125;
  }

  if (strchr(__s, 60))
  {
    sub_10002C908(a1, 4, "refusing to persist enabled/disabled state for '%s' as it contains illegal XML character '<'", v8, v9, v10, v11, v12, __s);
    return 140;
  }

  else
  {
    v14 = sub_10000FC98(0x100uLL);
    sub_10000FD40(v14, "Setting service %s to %s", v15, v16, v17, v18, v19, v20, __s);
    if (a3)
    {
      bzero(v34, 0x400uLL);
      sub_1000350A8(*(a3 + 20), v34);
      sub_10000FD40(v14, " (initiated by %s)", v26, v27, v28, v29, v30, v31, v34);
    }

    sub_10002C908(a1, 5, "%s", v21, v22, v23, v24, v25, *v14);
    sub_10000FD04(v14);
    value = xpc_dictionary_get_value(*(a1 + 952), __s);
    if (!value || (v33 = value, xpc_get_type(value) != &_xpc_type_BOOL) || (a4 == 1) != xpc_BOOL_get_value(v33))
    {
      xpc_dictionary_set_BOOL(*(a1 + 952), __s, a4 == 1);
      xpc_dictionary_set_BOOL(*(a1 + 952), "_dirty", 1);
    }

    return 0;
  }
}

xpc_object_t sub_100032CB8(uint64_t a1, const char *a2)
{
  result = *(a1 + 952);
  if (result)
  {
    result = xpc_dictionary_get_value(result, a2);
    if (result)
    {
      v3 = result;
      if (xpc_get_type(result) != &_xpc_type_dictionary || (result = xpc_dictionary_get_value(v3, "Disabled"), (v3 = result) != 0))
      {
        if (xpc_get_type(v3) == &_xpc_type_BOOL)
        {
          return v3;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

__n128 sub_100032D30(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 280);
  v3 = *(a1 + 296);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100032D40(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 312))
  {
    if (sub_1000130D0(*(a2 + 312)))
    {
      _os_assumes_log_ctx();
    }

    v4 = *(a2 + 312);
    return sub_100010B1C(v4);
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (*(a1 + 112) != &unk_10007D8B8)
  {
    if (*(a2 + 304))
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      v6[0] = 0;
      v6[1] = a2 + 1424;
      *&v7 = sub_10002467C(a2);
      DWORD2(v7) = *(a2 + 912);
      v8 = *(a2 + 1008);
      v4 = sub_10001F7BC(*(a2 + 304), v6);
      goto LABEL_10;
    }

LABEL_6:
    v4 = sub_100032E30(a2, 0);
LABEL_10:
    *(a2 + 312) = v4;
    return sub_100010B1C(v4);
  }

  return *(a1 + 1000);
}

_BYTE *sub_100032E30(uint64_t a1, unsigned int a2)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4[0] = a2;
  v4[1] = a1 + 1424;
  *&v5 = sub_10002467C(a1);
  DWORD2(v5) = *(a1 + 912);
  v6 = *(a1 + 1008);
  LOBYTE(v7) = *(a1 + 1416) & 1;
  return sub_10001F754(v4);
}

uint64_t sub_100032EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022B5C(a2);
  if (v4)
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    v6 = string_ptr;
    v7 = sub_100030830(a1, string_ptr);
    if (v7)
    {
      v8 = *(v7 + 40);
      if (v8)
      {
        v9 = sub_100010B1C(v8);
        sub_100020018(a2, 5, "joining jetsam coalition of %s: %llu", v10, v11, v12, v13, v14, v6);
        return v9;
      }
    }

    xpc_strerror();
    sub_100020018(a2, 4, "could not get jetsam coalition ID for service: %s: %s: %d", v15, v16, v17, v18, v19, v6);
  }

  v20 = *(a2 + 320);
  if (v20)
  {
    if (sub_1000130D0(v20) != 1)
    {
      _os_assumes_log_ctx();
    }

    return sub_100010B1C(*(a2 + 320));
  }

  else if (*(a1 + 112) == qword_10007D8B8)
  {
    return *(a1 + 1008);
  }

  else
  {
    v22 = sub_100032E30(a2, 1u);
    *(a2 + 320) = v22;
    v9 = sub_100010B1C(v22);
    v23 = sub_1000245A0(a2);
    if (v23)
    {
      strlen(v23);
      coalition_info_set_name();
    }
  }

  return v9;
}

const char *sub_10003301C(uint64_t a1, char *a2)
{
  if (*(a1 + 112) != qword_10007D8B8)
  {
    return 0;
  }

  v3 = *(a1 + 232);
  if (*(v3 + 976))
  {
    v4 = *(v3 + 976);
  }

  else
  {
    v4 = *(a1 + 232);
  }

  result = sub_100033094(v4, a2);
  if (result)
  {
    v5 = sub_10004CC54(result);
    result = sub_100024648(v5);
    if (result)
    {
      if (!strcmp(result, "com.apple.keyboard-service"))
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100033094(uint64_t a1, char *a2)
{
  for (i = *(a1 + 8 * (sub_100016BD8(a2) % 0x1FuLL) + 704); i; i = *(i + 32))
  {
    if ((*(i + 88) & 0x40) == 0 && sub_100016A6C((i + 168), a2))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100033138(uint64_t a1, uint64_t a2, const char *a3)
{
  for (i = *(a2 + 176); i; i = *(i + 16))
  {
    if ((*(i + 88) & 0x40) == 0 && sub_100016A6C((i + 168), a3))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100033184(size_t a1, void *a2, const char *a3)
{
  v6 = sub_100033138(a1, a2, a3);
  if (!v6)
  {
    sub_10004C0FC(a2, a3, sub_10002EDF0, a2);
    v6 = v7;
    *(v7 + 88) |= 8u;
    sub_10002F03C(a1, a2, v7, 16);
  }

  return v6;
}

uint64_t sub_100033208(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v9 = *(a1 + 80) + a5;
  result = xpc_array_create(0, 0);
  if (v9 >> 62)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    result = sub_100014514(4 * v9, 0x6D387B45uLL);
    v12 = result;
    v13 = *(a1 + 88);
    if (v13)
    {
      v14 = 0;
      do
      {
        v15 = *(v13 + 4);
        result = xpc_array_set_mach_send();
        v16 = v14 + 1;
        *(v12 + 4 * v14) = *(v13 + 5);
        v13 = *v13;
        ++v14;
      }

      while (v13);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v11;
    *a3 = v12;
    *a4 = v16;
  }

  return result;
}

char *sub_1000332D8(_DWORD *a1, void *a2, char *a3, uint64_t a4, unint64_t a5, _DWORD *a6)
{
  v9 = 0;
  v8[0] = sub_10002E45C;
  v8[1] = sub_10002E8A0;
  v8[2] = sub_10002E9E8;
  v8[3] = sub_10002EB84;
  v8[4] = sub_10002EBE8;
  v8[5] = sub_10002ECE8;
  v8[6] = a1;
  result = sub_10000312C(a1, a2, a3, a4, v8, a5, &v9);
  if (v9)
  {
    if (result)
    {
      sub_100054404();
    }
  }

  else if (!result)
  {
    sub_100054404();
  }

  *a6 = v9;
  return result;
}

const char *sub_10003339C(uint64_t a1)
{
  v2 = *(a1 + 1016);
  if ((v2 & 2) == 0 && (v2 & 1) == 0)
  {
    return 0;
  }

  if (sub_100014B00(0))
  {
    return "system shutdown";
  }

  if (sub_100014B00(1))
  {
    return "userspace reboot";
  }

  v4 = *(a1 + 112);
  if (v4 == qword_10007D8B8)
  {
    return "teardown of process-scoped services after host exited";
  }

  if ((*(v4 + 128) & 2) != 0)
  {
    return "logout";
  }

  return 0;
}

_DWORD *sub_100033434(uint64_t a1)
{
  v2 = sub_100014514(0x30uLL, 0x10A004003EBAF2CuLL);
  v3 = *(a1 + 136);
  if (v3)
  {
    LODWORD(v3) = xpc_mach_send_get_right();
  }

  v2[4] = v3;
  return v2;
}

uint64_t sub_100033484(uint64_t a1, const void *a2)
{
  result = *(a1 + 64);
  if (result == -1)
  {
    if (!qword_10007F128)
    {
      return 0xFFFFFFFFLL;
    }

    if (sub_100049614(qword_10007F128, a2) == &_xpc_BOOL_true)
    {
      v4 = 4;
    }

    else
    {
      v4 = 6;
    }

    bzero(v21, 0x800uLL);
    v20 = 512;
    if (sub_10003E1D8(v4, v21, &v20))
    {
      xpc_strerror();
      sub_10002C908(a1, 3, "Unable to find persona with type %d: %d - %s", v10, v11, v12, v13, v14, v4);
      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 60) == -101)
    {
      v15 = -1;
    }

    else
    {
      v15 = *(a1 + 60);
    }

    if (!v20)
    {
LABEL_18:
      sub_10002C908(a1, 3, "No matching personas of type %d uid %d, found %zu", v5, v6, v7, v8, v9, v4);
      return 0xFFFFFFFFLL;
    }

    v16 = 0;
    while (1)
    {
      v17 = v21[v16];
      v18 = sub_10003E268();
      if (v18 != -3 && v18 == v15)
      {
        break;
      }

      if (++v16 >= v20)
      {
        goto LABEL_18;
      }
    }

    result = v21[v16];
    if (result == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_1000335D8(void *a1)
{
  v2 = a1[29];
  v3 = sub_10002C974(a1, 1);
  sub_10002C908(v2, 5, "removing child: %s", v4, v5, v6, v7, v8, v3);
  free(v3);
  v9 = a1[2];
  v10 = a1[3];
  if (v9)
  {
    *(v9 + 24) = v10;
  }

  *v10 = v9;
  a1[2] = -1;
  a1[3] = -1;
  if ((*(v2 + 1017) & 0x10) != 0)
  {
    sub_100044778(v2, a1);
  }

  sub_10001B690(a1);
  sub_10002CCB4(v2);

  sub_10001B690(a1);
}

uint64_t sub_1000336A8(uint64_t a1)
{
  if (sub_10000E554(a1, 3))
  {
    return 1;
  }

  return sub_10000E554(a1, 4);
}

void sub_1000336FC(uint64_t a1)
{
  sub_10004B52C(*(a1 + 16), *(a1 + 24));
  xpc_release(*(a1 + 24));

  free(a1);
}

uint64_t sub_100033744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 288);
  if (!v9)
  {
    sub_100054404();
  }

  *(a1 + 288) = 0;

  return sub_1000234BC(a1, v9, a3, a4, a5, a6, a7, a8);
}

xpc_object_t sub_100033770()
{
  empty = xpc_array_create_empty();
  sub_1000337C4(empty, qword_10007F098);
  if (sub_10004F238())
  {
    sub_1000337C4(empty, qword_10007F0B0);
  }

  return empty;
}

BOOL sub_1000337C4(_BOOL8 result, xpc_object_t xarray)
{
  if (xarray)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_100033840;
    applier[3] = &unk_100079250;
    applier[4] = result;
    return xpc_array_apply(xarray, applier);
  }

  return result;
}

void sub_100033864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 248) != a1)
  {
    sub_100054F8C(a2, a1);
  }

  v10 = *(a2 + 296);
  v11 = (*(a2 + 300))--;
  if ((v11 - 32769) <= 0xFFFEFFFF)
  {
    sub_100055028(v10, a2);
  }

  if (v11 <= 0)
  {
    sub_100054FEC(v10, a2);
  }

  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (v12 >= v11)
  {
    v13 = *(a2 + 368);
    if ((v13 & 2) != 0)
    {
      *(a2 + 368) = v13 & 0xFFFFFFFD;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(a2 + 328);
      sub_10002C908(a1, 5, "service inactive: %s%s", a4, a5, a6, a7, a8, a2 - 112);
      v14 = *(a2 + 88);
      v15 = *(a2 + 96);
      if (v14)
      {
        *(v14 + 96) = v15;
      }

      *v15 = v14;
      *(a2 + 88) = -1;
      *(a2 + 96) = -1;
      if (!*(a2 + 296))
      {
        --*(a1 + 200);
LABEL_16:
        v17 = sub_1000246E4(a2);
        v18 = sub_10004A904(v17);
        v26 = *(a2 + 368) & 0xFFFFDFFF;
        if (!v18)
        {
          v26 = *(a2 + 368);
        }

        v27 = *(a2 + 296);
        *(a2 + 360) = -1;
        v16 = v26 & 0xFFFFFF3F;
        *(a2 + 368) = v26 & 0xFFFFFF3F;
        *(a2 + 300) = 0;
        if (!(v27 | v26 & 0x2000))
        {
          sub_100023C34(a2, v19, v20, v21, v22, v23, v24, v25);
          v16 = *(a2 + 368);
        }

        goto LABEL_20;
      }
    }

    *(a2 + 360) = -1;
    v16 = *(a2 + 368) & 0xFFFFFF3F;
    *(a2 + 300) = 0;
LABEL_20:
    *(a2 + 368) = v16 & 0xFFFFDFFF;
    v28 = *(a2 + 272);
    if (v28)
    {
      *(a2 + 272) = 0;
      if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
      {
        _os_assumes_log_ctx();
      }

      xpc_release(v28);
    }

    v29 = *(a2 + 328);
    if (v29)
    {
      *(a2 + 328) = 0;
      dispatch_group_leave(v29);
      dispatch_release(v29);
    }

    v30 = *(a2 + 336);
    if (v30)
    {
      dispatch_group_leave(v30);
      *(a2 + 336) = 0;
    }

    *(a2 + 368) &= ~0x8000u;
    sub_100033BA0(a2);
    if (*(a2 + 296))
    {
      if (*(a2 + 160))
      {
        sub_1000441E0("unmanaged service deactivated with active dynamic endpoints");
      }

      if (*(a2 + 168))
      {
        sub_1000441E0("unmanaged service deactivated with active pid endpoints");
      }

      sub_10002C908(a1, 5, "removing inactive unmanaged service: %s", v32, v33, v34, v35, v36, a2 - 112);
      memset(a2, 204, 0x590uLL);
      free(a2);

      sub_10001B690(a1);
    }

    else if ((*(a1 + 1016) & 1) != 0 || (*(a2 + 368) & 0x10) != 0)
    {
      v44 = *(a2 + 280);
      if (v44)
      {
        dispatch_group_leave(v44);
        *(a2 + 280) = 0;
      }

      sub_10002DA64(a1, a2, v31, v32, v33, v34, v35, v36);
    }

    else
    {
      sub_100033BF0(a2);
      if (!*(a1 + 204) && *(a2 + 288))
      {

        sub_100033744(a2, v37, v38, v39, v40, v41, v42, v43);
      }
    }
  }
}

void sub_100033BA0(uint64_t a1)
{
  if (!*(a1 + 296) && (*(a1 + 369) & 0x40) != 0)
  {
    dispatch_group_leave(qword_10007E7C8);
    *(a1 + 368) &= ~0x4000u;
  }
}

void sub_100033BF0(void *a1)
{
  for (i = a1[19]; i; i = *(i + 16))
  {
    if ((*(i + 88) & 4) != 0)
    {
      sub_1000441E0("service deactivated with active endpoints");
    }

    sub_10004CEEC(i);
  }

  for (j = a1[22]; j; j = *(j + 16))
  {
    if ((*(j + 88) & 4) != 0)
    {
      sub_1000441E0("service deactivated with active event endpoints");
    }

    sub_10004CEEC(j);
  }

  for (k = a1[23]; k; k = *(k + 16))
  {
    if ((*(k + 88) & 4) != 0)
    {
      sub_1000441E0("service deactivated with active instance endpoints");
    }

    sub_10004CEEC(k);
  }

  for (m = a1[24]; m; m = *(m + 16))
  {
    sub_10001E570(m);
  }

  sub_100023D2C(a1);
}

void sub_100033CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 369) & 8) != 0)
  {
    v9 = *(a1 + 160);
    if (v9)
    {
      do
      {
        v10 = *(v9 + 16);
        sub_10004D3E4(v9, a2, a3, a4, a5, a6, a7, a8);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(a1 + 168);
    if (v11)
    {
      do
      {
        v12 = *(v11 + 16);
        sub_10004D3E4(v11, a2, a3, a4, a5, a6, a7, a8);
        v11 = v12;
      }

      while (v12);
    }
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    do
    {
      v14 = *(v13 + 16);
      sub_10004D3E4(v13, a2, a3, a4, a5, a6, a7, a8);
      v13 = v14;
    }

    while (v14);
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    do
    {
      v16 = *(v15 + 16);
      sub_10004D3E4(v15, a2, a3, a4, a5, a6, a7, a8);
      v15 = v16;
    }

    while (v16);
  }

  v17 = *(a1 + 184);
  if (v17)
  {
    do
    {
      v18 = *(v17 + 16);
      sub_10004D3E4(v17, a2, a3, a4, a5, a6, a7, a8);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 192);
  if (v19)
  {
    do
    {
      v20 = *(v19 + 16);
      sub_10001E9F4(v19);
      v19 = v20;
    }

    while (v20);
  }

  sub_100023EB4(a1);
}

void sub_100033D8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72))
  {

    sub_100033FA0(a2);
  }

  else
  {
    v4 = *(a2 + 64);
    if (v4)
    {
      do
      {
        v5 = v4[6];
        sub_100033FA0(v4);
        v4 = v5;
      }

      while (v5);
    }

    if ((*(a2 + 88) & 0x20) != 0)
    {
      v6 = *(a2 + 80);
      if (v6)
      {
        v7 = *(a1 + 976);
        if (!v7)
        {
          v7 = a1;
        }

        v8 = *(v7 + 976);
        if (v8)
        {
          v9 = v6 == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          v8 = v7;
        }

        v10 = (v8 + 88);
        do
        {
          v10 = *v10;
          if (!v10)
          {
            sub_1000441E0("domain has no corresponding special port entry");
          }
        }

        while (*(v10 + 5) != v6);
        --*(v7 + 80);
        v11 = *v10;
        v12 = v10[1];
        if (*v10)
        {
          v11[1] = v12;
        }

        *v12 = v11;
        *v10 = -1;
        v10[1] = -1;
        sub_10001BAA8(v10);
      }

      v13 = *(a2 + 84);
      if (v13)
      {
        if (v13 == 24)
        {
          v14 = mach_host_self();
          sub_100048C5C(v14, 0);
          v15 = &qword_10007E7D0;
        }

        else
        {
          v16 = v13;
          v17 = mach_host_self();
          if (host_set_special_port(v17, v16, 0))
          {
            _os_assumes_log();
          }

          v15 = (&unk_10007E7D8 + 8 * v16);
        }

        *v15 = 0;
      }

      if (sub_1000443C8(a1))
      {
        if (*(a1 + 168))
        {
          if (sub_10004EC0C((a2 + 168)))
          {
            v24 = *(a1 + 168);
            if (v24)
            {
              if (sub_10004D59C(a2, v24, v18, v19, v20, v21, v22, v23))
              {
                v25 = sub_10004CC54(a2);
                xpc_strerror();
                sub_100020018(v25, 4, "Failed to stash endpoint %s: %d - %s", v26, v27, v28, v29, v30, a2 - 88);
              }
            }
          }
        }
      }

      v31 = *(a2 + 32);
      v32 = *(a2 + 40);
      if (v31)
      {
        *(v31 + 40) = v32;
      }

      *v32 = v31;
      *(a2 + 32) = -1;
      *(a2 + 40) = -1;
    }

    v33 = *(a2 + 16);
    v34 = *(a2 + 24);
    if (v33)
    {
      *(v33 + 24) = v34;
    }

    *v34 = v33;
    *(a2 + 16) = -1;
    *(a2 + 24) = -1;

    sub_10001B690(a2);
  }
}

void sub_100033FA0(void *a1)
{
  if (!a1[9])
  {
    sub_1000441E0("alias-removal attempt of non-aliased endpoint", v1, v2);
  }

  v3 = a1[4];
  v4 = a1[5];
  if (v3)
  {
    *(v3 + 40) = v4;
  }

  *v4 = v3;
  v5 = a1[6];
  v6 = a1[7];
  if (v5)
  {
    *(v5 + 56) = v6;
  }

  *v6 = v5;

  free(a1);
}

void sub_100033FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100023F20(a2);
  if (sub_100046A70(v4) && sub_100014B00(1))
  {
    v12 = sub_10000FC64("kern.darkboot");
    sub_10002C908(a1, 5, "Queried sysctl kern.darkboot: %u", v13, v14, v15, v16, v17, v12);
    if (v12 == 1)
    {
      sub_10002C908(a1, 5, "Setting sysctl kern.darkboot to %u", v18, v19, v20, v21, v22, 2);
      sub_10000FC5C("kern.darkboot", 2);
    }

    sub_100014B20("Abandoning service: %s", (a2 + 1424));
  }

  *(a2 + 368) |= 0x800u;

  sub_100033CC0(a2, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000340D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004CC54(a2);
  if (*(a1 + 976))
  {
    v5 = *(a1 + 976);
  }

  else
  {
    v5 = a1;
  }

  v6 = sub_100033094(v5, (a2 + 168));
  if (v6)
  {
    if (*(v6 + 72))
    {
      v7 = *(v6 + 72);
    }

    else
    {
      v7 = v6;
    }

    v8 = sub_10004CC54(v7);
    if (sub_10004CC84(a2) && !sub_10004CC84(v7))
    {
      sub_100020018(v8, 4, "Unmanaged endpoint %s was canceled to transfer the ownership to: %s", v10, v11, v12, v13, v14, v7 - 88);
      sub_10004D3E4(v7, v21, v22, v23, v24, v25, v26, v27);
    }

    else
    {
      v15 = sub_10004BFA4(v7, 2, v9, v10, v11, v12, v13, v14);
      if (!sub_1000344C4(v15))
      {
        sub_100020018(v4, 4, "The endpoint %s defined in plist already exists and is owned by: %s", v16, v17, v18, v19, v20, a2 - 88);
        return 37;
      }

      *(v7 + 88) |= 0x40u;
    }
  }

  if ((sub_100002D28(v4, 3) & 1) == 0)
  {
    v28 = a1;
    do
    {
      if (*(v28 + 976))
      {
        v29 = *(v28 + 976);
      }

      else
      {
        v29 = v28;
      }

      v30 = sub_100033094(v29, (a2 + 168));
      v31 = sub_10003463C(v28);
      v28 = v31;
      if (v30)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31 == 0;
      }
    }

    while (!v32);
    if (v30)
    {
      v33 = sub_10004CC54(v30);
      if (sub_100002D28(v33, 3))
      {
        sub_100020018(v4, 4, "The endpoint %s would shadow a trusted one owned by %s, ignoring", v34, v35, v36, v37, v38, a2 - 88);
        return 37;
      }
    }
  }

  if (*(a1 + 976))
  {
    a1 = *(a1 + 976);
  }

  if ((*(a2 + 88) & 0x10) != 0)
  {
    if (sub_1000443C8(a1) || *(a1 + 112) == &unk_10007D720)
    {
      *(a2 + 84) = 24;
    }

    else
    {
      *(a2 + 80) = 128;
    }
  }

  v40 = sub_10004CC54(a2);
  if (sub_100002D28(v40, 2))
  {
    v46 = (a2 + 84);
    if (*(a2 + 84) && !sub_1000443C8(a1) && *(a1 + 112) != &unk_10007D720)
    {
      v47 = *v46;
LABEL_43:
      mach_host_special_port_description();
      sub_100020018(v40, 3, "Non-system service tried to claim host-special port: %d: %s", v48, v49, v50, v51, v52, v47);
      *v46 = 0;
    }
  }

  else
  {
    if (*(a2 + 80))
    {
      sub_100020018(v40, 3, "Non-system service tried to claim task-special port: %d", v41, v42, v43, v44, v45, *(a2 + 80));
      *(a2 + 80) = 0;
    }

    v46 = (a2 + 84);
    v47 = *(a2 + 84);
    if (v47)
    {
      goto LABEL_43;
    }
  }

  v53 = (a1 + 8 * (sub_100016BD8((a2 + 168)) % 0x1FuLL) + 704);
  v54 = *v53;
  *(a2 + 32) = *v53;
  if (v54)
  {
    *(v54 + 40) = a2 + 32;
  }

  *v53 = a2;
  *(a2 + 40) = v53;
  if (sub_1000443C8(a1))
  {
    v61 = *(a1 + 168);
    if (v61)
    {
      sub_10004D678(a2, v61);
    }
  }

  if (*(a2 + 80))
  {
    v62 = sub_10004BFA4(a2, 1, v55, v56, v57, v58, v59, v60);
    if (sub_100034514(a1, v4, v62, *(a2 + 80), v63, v64, v65, v66))
    {
      *(a2 + 80) = 0;
    }
  }

  v67 = *(a2 + 84);
  if (!v67)
  {
    goto LABEL_63;
  }

  v73 = sub_10004CC54(a2);
  if (v67 == 24)
  {
    if (!qword_10007E7D0)
    {
      qword_10007E7D0 = a2;
      v79 = mach_host_self();
      v86 = sub_10004BFA4(a2, 1, v80, v81, v82, v83, v84, v85);
      sub_100048C5C(v79, v86);
      goto LABEL_63;
    }

    sub_100020018(v73, 3, "Endpoint %s tried to steal host exception port from %s", v68, v69, v70, v71, v72, a2 - 88);
  }

  else
  {
    if (!qword_10007E7D8[v67])
    {
      v87 = mach_host_self();
      v94 = sub_10004BFA4(a2, 1, v88, v89, v90, v91, v92, v93);
      if (host_set_special_port(v87, v67, v94))
      {
        _os_assumes_log();
      }

      qword_10007E7D8[v67] = a2;
      goto LABEL_63;
    }

    mach_host_special_port_description();
    sub_100020018(v73, 3, "Endpoint %s tried to steal host %s port (%d) from %s", v74, v75, v76, v77, v78, a2 - 88);
  }

  *(a2 + 84) = 0;
LABEL_63:
  result = 0;
  *(a2 + 88) |= 0x20u;
  return result;
}

uint64_t sub_1000344C4(uint64_t name)
{
  ptype = 0;
  if (name)
  {
    if (mach_port_type(mach_task_self_, name, &ptype))
    {
      return 1;
    }

    else
    {
      return (BYTE2(ptype) >> 4) & 1;
    }
  }

  return name;
}

uint64_t sub_100034514(void *a1, const char *a2, mach_port_name_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if (a1[122])
  {
    v10 = a1[122];
  }

  else
  {
    v10 = a1;
  }

  v11 = v10[122];
  if (v11)
  {
    v12 = a4 == 4;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v11 = v10;
  }

  v13 = v11 + 11;
  while (1)
  {
    v13 = *v13;
    if (!v13)
    {
      break;
    }

    if (*(v13 + 5) == a4)
    {
      sub_100032734(v10, *(v13 + 4), 0, a4, a5, a6, a7, a8);
      if (a2)
      {
        LOBYTE(a2) = a2 - 112;
      }

      else
      {
        a2 = "(unknown)";
      }

      if (v8 != 128)
      {
        mach_task_special_port_description();
      }

      sub_10002C908(v10, 3, "service %s tried to claim task-%s port from endpoint %s", v14, v15, v16, v17, v18, a2);
      return 17;
    }
  }

  v19 = sub_10001BA40(a3, a4);
  v20 = v10[11];
  if (v20)
  {
    v21 = *v20;
    *v19 = *v20;
    if (v21)
    {
      *(v21 + 8) = v19;
    }
  }

  else
  {
    *v19 = 0;
    v20 = v10 + 11;
  }

  v22 = 0;
  *v20 = v19;
  v19[1] = v20;
  ++v10[10];
  return v22;
}

uint64_t sub_10003463C(uint64_t a1)
{
  if (!sub_100016A6C(*(a1 + 968), "PostLogOutSync"))
  {
    return *(a1 + 232);
  }

  result = sub_1000443F4();
  if (!result)
  {
    return *(a1 + 232);
  }

  return result;
}

unint64_t sub_10003467C(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 248) != result)
  {
    sub_100055064(a2, result);
  }

  v4 = (*(a2 + 300))++;
  if ((v4 - 0x7FFF) <= 0xFFFEFFFF)
  {
    sub_100055100(a2);
  }

  if (v4 < 0)
  {
    sub_1000550C4(a2);
  }

  if (!v4)
  {
    if (*(a2 + 296))
    {
      v9 = *(a2 + 296);
      result = sub_100016BA4(&v9, 4);
      v5 = (v3 + 8 * (result % 7) + 648);
      v6 = *v5;
      *(a2 + 88) = *v5;
      if (v6)
      {
        *(v6 + 96) = a2 + 88;
      }

      *v5 = a2;
      *(a2 + 96) = v5;
    }

    else
    {
      v9 = sub_100023F20(a2);
      result = sub_100016BA4(&v9, 4);
      v7 = (v3 + 8 * (result % 0xD) + 544);
      v8 = *v7;
      *(a2 + 88) = *v7;
      if (v8)
      {
        *(v8 + 96) = a2 + 88;
      }

      *v7 = a2;
      *(a2 + 96) = v7;
      ++*(v3 + 200);
    }
  }

  return result;
}

void sub_1000347D0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 248);
  v62 = 0;
  v7 = sub_1000246EC(a3, &v62);
  if (a2 == 2)
  {
    if (byte_10007F051 == 1)
    {
      v18 = sub_10000B7FC();
      if (sub_10002DDAC(v6, v18, a3, v19, v20, v21, v22, v23))
      {
        sub_1000441E0("failed to boot out inactive service during obliteration; socket event");
      }

      return;
    }

    if (!v7 || v62)
    {
      v24 = sub_1000234BC(a3, 2, v8, v9, v10, v11, v12, v13);
      if ((v24 & 0xFFFFFFFE) == 0x24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      if (v25)
      {
        if (v25 == 37)
        {
          sub_1000441E0("socket event received for running service");
        }

        _os_assumes_log_ctx();
      }

      return;
    }

    v65 = 0;
    v66 = 0;
    if ((*(a3 + 1416) & 2) != 0)
    {
      sub_100020018(a3, 3, "Could not accept inetd connection to retain-only service", v9, v10, v11, v12, v13, v61);
      v32 = 61;
LABEL_29:
      xpc_strerror();
      sub_100020018(a3, 3, "Could not accept new inetd connection: %d: %s", v33, v34, v35, v36, v37, v32);
      return;
    }

    v26 = sub_10001EA30(a1, &v66, &v65);
    v64 = v26;
    if (v26)
    {
      v32 = v26;
      if (v26 == 35)
      {
        sub_1000441E0("EWOULDBLOCK returned on socket that should not block");
      }

      goto LABEL_29;
    }

    if (!v65)
    {
      sub_100020018(a3, 3, "Got a socket event for an inetd service, but couldn't accept any sockets", v27, v28, v29, v30, v31, v61);
      if (!v65)
      {
LABEL_45:
        free(v66);
        return;
      }
    }

    v38 = 0;
    while (1)
    {
      __s[0] = sub_10002E45C;
      __s[1] = sub_10002E8A0;
      __s[2] = sub_10002E9E8;
      __s[3] = sub_10002EB84;
      __s[4] = sub_10002EBE8;
      __s[5] = sub_10002ECE8;
      __s[6] = v6;
      memset(out, 0, sizeof(out));
      uuid_generate(out);
      v39 = *(a3 + 268);
      if (v39 && *(a3 + 264) >= v39)
      {
        v55 = 67;
        v64 = 67;
      }

      else
      {
        v40 = sub_1000038CC(a3, out, *(v66 + v38), 0, 0, __s, 0, &v64);
        if (v40)
        {
          v41 = v40;
          *(v40 + 92) |= 0x100u;
          sub_10002D910(v6, v40);
          ++*(a3 + 264);
          *(v41 + 256) = a3;
          sub_10001B5B8(a3);
          v48 = sub_1000234BC(v41, 2, v42, v43, v44, v45, v46, v47);
          if ((v48 & 0xFFFFFFFE) == 0x24)
          {
            v49 = 0;
          }

          else
          {
            v49 = v48;
          }

          v64 = v49;
          if (v49)
          {
            xpc_strerror();
            sub_100020018(v41, 3, "Could not spawn dedicated inetd instance: %d: %s", v50, v51, v52, v53, v54, v49);
          }

          goto LABEL_44;
        }

        v55 = v64;
      }

      xpc_strerror();
      sub_100020018(a3, 3, "Could not create new instance of inetd service: %d: %s", v56, v57, v58, v59, v60, v55);
LABEL_44:
      sub_1000413F8(*(v66 + v38++));
      if (v38 >= v65)
      {
        goto LABEL_45;
      }
    }
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    __s[0] = 0;
    v14 = sub_10001E554(a1, __s);
    if (v14)
    {
      *out = 0;
      v15 = sub_10001B708(__s[0], v14, 0, out, 0);
      if (v15)
      {
        v16 = (v6 + 96);
        v17 = *(v6 + 96);
        *v15 = v17;
        if (v17)
        {
          *(v17 + 8) = v15;
        }

        *v16 = v15;
        *(v15 + 1) = v16;
        *(v15 + 2) = a3;
      }

      else
      {
        sub_100020018(a3, 3, "Service attempted to specify secure socket key with reserved name: %s", v9, v10, v11, v12, v13, __s[0]);
      }
    }

    *(a1 + 48) |= 1u;
  }

  sub_100033864(v6, a3, v8, v9, v10, v11, v12, v13);
  sub_10002D4F0(v6, 9);
}

uint64_t sub_100034BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100000E80(a3);
  return sub_100049ECC(v4, v5 + 2, "%s (%d records)", v7, v8, v9, v10, v11, a2, v6);
}

uint64_t sub_100034CB0(FILE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 72);
  }

  else
  {
    v10 = a2;
  }

  v11 = *(v10 + 88);
  if (v9)
  {
    v12 = 65;
  }

  else if (sub_10004CC84(a2))
  {
    v12 = 77;
  }

  else
  {
    v12 = 85;
  }

  v13 = sub_10004BFA4(v10, 2, a3, a4, a5, a6, a7, a8);
  v19 = 65;
  if ((v11 & 4) == 0)
  {
    v19 = 68;
  }

  return sub_100049ECC(a1, 2, "%#8x %4c%4c   %s", v14, v15, v16, v17, v18, v13, v12, v19, v10 + 168);
}

void *sub_100034D50(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  sub_100049F4C(a2, a2, a3, a4, a5, a6, a7, a8, v23);
  result = *(a1 + 952);
  if (result && (result = xpc_dictionary_get_count(result)) != 0)
  {
    sub_100049ECC(a2, 1, "disabled services = {", v11, v12, v13, v14, v15);
    v17 = xpc_copy(*(a1 + 952));
    xpc_dictionary_set_value(v17, "_dirty", 0);
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_100034FF8;
    applier[3] = &unk_100079310;
    applier[4] = a2;
    xpc_dictionary_apply(v17, applier);
    xpc_release(v17);
    return sub_100049ECC(a2, 1, "}", v18, v19, v20, v21, v22);
  }

  else if ((v8 & 1) == 0)
  {

    return sub_100049ECC(a2, 1, "disabled services = (no disabled services)", v11, v12, v13, v14, v15);
  }

  return result;
}

uint64_t sub_100034E7C(uint64_t result, uint64_t a2, FILE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!result)
  {
    sub_100054404();
  }

  if (a2)
  {
    v11 = result;
    v12 = sub_10001F900(a2);
    if (v12)
    {
      v18 = v12;
      sub_100049ECC(a3, 1, "%s coalition = {", v13, v14, v15, v16, v17, v11);
      sub_100012F9C(v18, a3, 2, v19, v20, v21, v22, v23);
      sub_100049ECC(a3, 1, "}", v24, v25, v26, v27, v28);

      return sub_100049F4C(a3, v29, v30, v31, v32, v33, v34, v35, a9);
    }

    else
    {
      return sub_100049ECC(a3, 1, "%s coalition ID = %llu", v13, v14, v15, v16, v17, v11, a2);
    }
  }

  return result;
}

uint64_t sub_100034F4C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 136);
  if (v4)
  {
    LODWORD(v4) = xpc_mach_send_get_right();
  }

  if (v4 != a2)
  {
    v5 = *(v3 + 320);
    if (v5)
    {
      while (1)
      {
        v6 = sub_100034F4C(v5, a2);
        if (v6)
        {
          break;
        }

        v5 = *(v5 + 16);
        if (!v5)
        {
          return 0;
        }
      }

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_100034FF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (a3 == &_xpc_BOOL_true)
  {
    v9 = "disabled";
  }

  else
  {
    v9 = "enabled";
  }

  sub_100049ECC(v8, 2, "%s => %s", a4, a5, a6, a7, a8, a2, v9);
  return 1;
}

uint64_t sub_100035050(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2 == getpid())
  {
    return 1;
  }

  return sub_1000469E0(a1, 0x4000000);
}

uint64_t sub_1000350A8(int a1, char *a2)
{
  v4 = 1024;
  v5 = a1;
  while (1)
  {
    memset(buffer, 0, sizeof(buffer));
    result = sub_100045BAC(v5, buffer);
    v7 = result;
    if (v5 == a1)
    {
      v8 = v4 - 1;
      if (v4 == 1)
      {
        goto LABEL_6;
      }

      result = snprintf(a2, v4, "%s[%d]");
    }

    else
    {
      v8 = v4 - 1;
      if (v4 == 1)
      {
LABEL_6:
        v9 = 0;
        if (result)
        {
          return result;
        }

        goto LABEL_12;
      }

      result = snprintf(a2, v4, "<-%s[%d]");
    }

    v9 = result;
    if (v4 <= result)
    {
      v9 = v8;
    }

    if (v7)
    {
      return result;
    }

LABEL_12:
    if (v5 != 1)
    {
      v5 = DWORD1(buffer[0]);
      if (DWORD1(buffer[0]) > 1)
      {
        a2 += v9;
        v4 -= v9;
        if (v4)
        {
          continue;
        }
      }
    }

    return result;
  }
}

uint64_t sub_1000351E8(uint64_t a1, uint64_t a2, void *a3)
{
  info_dictionary = xpc_bundle_get_info_dictionary();
  if (!info_dictionary)
  {
    return 22;
  }

  value = xpc_dictionary_get_value(info_dictionary, "XPCService");
  if (!value)
  {
    v13 = 0;
    *a3 = qword_10007D8B8;
    return v13;
  }

  v7 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    sub_10002C908(a1, 3, "Invalid XPCService dictionary.", v8, v9, v10, v11, v12, v23);
    return 22;
  }

  string = xpc_dictionary_get_string(v7, "ServiceType");
  if (!string)
  {
    v16 = qword_10007D8B8;
LABEL_14:
    v13 = 0;
    *a3 = v16;
    goto LABEL_15;
  }

  v15 = string;
  if (!strcmp(string, "System"))
  {
    v16 = &unk_10007D720;
    goto LABEL_14;
  }

  if (!strcmp(v15, "Application"))
  {
    v16 = qword_10007D8B8;
    goto LABEL_14;
  }

  v13 = 22;
LABEL_15:
  if (xpc_dictionary_get_BOOL(v7, "_MultipleInstances") && *a3 != qword_10007D8B8)
  {
    sub_10002C908(a1, 4, "MultipleInstance XPC services are not supported for any service type other than Application. Forcing service to PID domain.", v17, v18, v19, v20, v21, v23);
    *a3 = qword_10007D8B8;
  }

  return v13;
}

uint64_t sub_10003532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(qword_10007E7B0 + 1016))
  {
    return 124;
  }

  if ((a2 & 0x88) != 0 && !sub_100035050(a4))
  {
    return 154;
  }

  v9 = *(a1 + 104);

  return v9(0, 1, a2, a3, a4, 0, 0);
}

uint64_t sub_1000353D4(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  v5 = *(a1 + 1016);
  result = 124;
  if ((v5 & 2) == 0 && (v5 & 1) == 0)
  {
    value = xpc_dictionary_get_value(xdict, "paths");
    if (value)
    {
      v11 = value;
      if ((xpc_get_type(value) == &_xpc_type_dictionary || xpc_get_type(v11) == &_xpc_type_array) && xpc_dictionary_expects_reply())
      {
        if (xpc_dictionary_get_BOOL(xdict, "enable"))
        {
          v12 = 2048;
        }

        else
        {
          v12 = 0;
        }

        if (xpc_dictionary_get_BOOL(xdict, "force"))
        {
          v12 |= 0x8000uLL;
        }

        if (xpc_dictionary_get_BOOL(xdict, "legacy-load"))
        {
          v12 |= 0x100uLL;
        }

        if (xpc_dictionary_get_BOOL(xdict, "angel"))
        {
          v12 |= 0x40000uLL;
        }

        if (xpc_dictionary_get_BOOL(xdict, "managed-lwcr"))
        {
          v12 |= 0x80000uLL;
        }

        if (xpc_dictionary_get_BOOL(xdict, "by-cli"))
        {
          v12 |= 0x100000uLL;
        }

        v13 = xpc_dictionary_get_value(xdict, "lwcr");
        if (xpc_get_type(v11) == &_xpc_type_dictionary)
        {
          if (xpc_get_type(v11) != &_xpc_type_dictionary)
          {
            sub_1000441E0("Invalid type given for bootstrap path sanitization");
          }

          empty = xpc_dictionary_create_empty();
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 0x40000000;
          applier[2] = sub_100038F70;
          applier[3] = &unk_100079330;
          applier[4] = empty;
          xpc_dictionary_apply(v11, applier);
        }

        else
        {
          empty = xpc_retain(v11);
        }

        if (*(a1 + 112) == qword_10007D8B8)
        {
          v24 = sub_100038E84(a1, a2, v14, v15, v16, v17, v18, v19);
          if (v24)
          {
            if (v24 != 37)
            {
              v25 = v24;
              xpc_strerror();
              sub_10002C908(a1, 5, "failed to uncork PID domain on first bootstrap: %d - %s", v26, v27, v28, v29, v30, v25);
            }
          }
        }

        v22 = sub_10003DD68(xdict);
        sub_1000186B8(a1, 1, v22, empty, a2, v12, v13, v23);
        xpc_release(empty);
        xpc_release(v22);
        return 0;
      }

      else
      {
        return 22;
      }
    }

    else
    {
      reply = xpc_dictionary_create_reply(xdict);
      result = 0;
      *a4 = reply;
    }
  }

  return result;
}

uint64_t sub_100035688(void *a1, uint64_t a2, void *a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v8 = sub_100030410(a1, 4, 128, a2, 0, 0);
  if (v8)
  {
    v9 = v8;
LABEL_4:
    sub_1000304FC(a1, a2, v9, "bootout");
    return v9;
  }

  if (xpc_dictionary_get_value(a3, "paths"))
  {
    value = xpc_dictionary_get_value(a3, "paths");
    if (value)
    {
      v11 = value;
      if (xpc_get_type(value) == &_xpc_type_dictionary || xpc_get_type(v11) == &_xpc_type_array)
      {
        if (xpc_dictionary_get_BOOL(a3, "disable"))
        {
          v12 = 2048;
        }

        else
        {
          v12 = 0;
        }

        if (xpc_dictionary_get_BOOL(a3, "no-einprogress"))
        {
          v12 |= 0x20000uLL;
        }

        if (xpc_dictionary_get_BOOL(a3, "by-cli"))
        {
          v12 |= 0x100000uLL;
        }

        v13 = sub_10003DD68(a3);
        sub_1000186B8(a1, 2, v13, v11, a2, v12, 0, v14);
        xpc_release(v13);
        return 0;
      }
    }

    return 22;
  }

  if (!xpc_dictionary_get_string(a3, "name"))
  {
    v9 = sub_100030410(a1, 7, 128, a2, 0, 0);
    if (!v9)
    {
      sub_100038FEC(a1, a2, a3, a4);
      return v9;
    }

    goto LABEL_4;
  }

  v34 = a1;
  string = xpc_dictionary_get_string(a3, "name");
  if (!string)
  {
    return 22;
  }

  v16 = string;
  if (xpc_dictionary_get_BOOL(a3, "legacy-service-lookup"))
  {
    v17 = sub_1000390A8(&v34, v16);
  }

  else
  {
    v17 = sub_100030830(a1, v16);
  }

  v19 = v17;
  if (!v17)
  {
    return 3;
  }

  bzero(v35, 0x400uLL);
  sub_1000350A8(*(a2 + 20), v35);
  sub_100020018(v19, 65541, "bootout initiated by: %s", v20, v21, v22, v23, v24, v35);
  xpc_dictionary_get_BOOL(a3, "attempt-unload-protected");
  v9 = sub_100021F44();
  if (v9)
  {
    sub_1000304FC(v34, a2, v9, "bootout (%s)");
  }

  else
  {
    v9 = sub_10002DDAC(v34, a2, v19, v25, v26, v27, v28, v29);
    v30 = xpc_dictionary_get_BOOL(a3, "no-einprogress");
    v31 = xpc_dictionary_get_BOOL(a3, "wait");
    if (v9 && (v9 != 36 || !v30))
    {
      if (v9 == 36 && v31)
      {
        reply = xpc_dictionary_create_reply(a3);
        sub_100026D4C(v19);
        v33 = xpc_mach_send_create_with_disposition();
        xpc_dictionary_set_value(reply, "monitor", v33);
        xpc_release(v33);
        v9 = 0;
        *a4 = reply;
      }
    }

    else
    {
      v9 = 0;
      *a4 = xpc_dictionary_create_reply(a3);
    }
  }

  return v9;
}

uint64_t sub_100035A10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + 112) != qword_10007D8B8)
  {
    return 22;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v9 = *(a1 + 120);
  sub_100010B3C();
  v15 = *(a1 + 120);
  v16 = *(a2 + 28);
  if (v16 > *(a1 + 308) || *(a2 + 20) != *(a1 + 300))
  {
    v45 = *(a2 + 20);
    v46 = *(a1 + 300);
    v44 = *(a1 + 308);
    sub_10002C908(a1, 5, "exec count or caller mismatch: caller exec cnt = %u, creator exec cnt = %u, caller pid = %d, creator pid = %d", v10, v11, v12, v13, v14, v16);
    if (*(a1 + 216))
    {
      sub_10002C908(a1, 5, "rebirth already in progress", v17, v18, v19, v20, v21, v42);
      return 131;
    }

    else
    {
      sub_10002C908(a1, 5, "slaying domain for rebirth", v17, v18, v19, v20, v21, v42);
      *(a1 + 1016) |= 0x80u;
      *(a1 + 216) = xpc_retain(a3);
      sub_10002CDD4(a1, v22, v23, v24, v25, v26, v27, v28, v43);
      return 0;
    }
  }

  if ((*(a1 + 1016) & 8) != 0 || *(a1 + 248))
  {
    sub_10002C908(a1, 5, "domain already initialized", v10, v11, v12, v13, v14, v41);
    return 37;
  }

  value = xpc_dictionary_get_value(a3, "paths");
  if (!value || (v37 = value, xpc_get_type(value) != &_xpc_type_dictionary) || (v38 = xpc_dictionary_get_value(a3, "environment")) == 0 || xpc_get_type(v38) != &_xpc_type_dictionary)
  {
    sub_10002CDD4(a1, v30, v31, v32, v33, v34, v35, v36, v41);
    return 22;
  }

  string = xpc_dictionary_get_string(a3, "origin");
  if (string)
  {
    *(a1 + 240) = sub_1000166EC(string);
  }

  *(a1 + 248) = xpc_retain(v37);
  xpc_dictionary_apply_f();
  *(a1 + 1016) |= 8u;
  reply = xpc_dictionary_create_reply(a3);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_100035C24(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + 112) != qword_10007D8B8)
  {
    return 22;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v15 = sub_100038E84(a1, a2, v9, v10, v11, v12, v13, v14);
  reply = xpc_dictionary_create_reply(a3);
  result = 0;
  if (v15 && v15 != 37 && v15 != 124)
  {
    xpc_dictionary_set_int64(reply, "error", v15);
    result = v15;
  }

  *a4 = reply;
  return result;
}

uint64_t sub_100035CE0(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  sub_10004AB28();
  if (xpc_dictionary_get_uint64(a3, "type") != 7)
  {
    v8 = (*(*(a1 + 112) + 104))(a1, 6, 0, *(a1 + 120), a2, 0, 0);
    if (v8)
    {
      v9 = v8;
      sub_1000304FC(a1, a2, v8, "endpoint lookup");
      return v9;
    }
  }

  v10 = *(a1 + 1016);
  v9 = 124;
  if ((v10 & 2) == 0 && (v10 & 1) == 0)
  {
    if (*(a1 + 204))
    {
      if (*(a1 + 136))
      {
        right = xpc_mach_send_get_right();
      }

      else
      {
        right = 0;
      }

      v16 = a1;
      v17 = a3;
      v18 = 1;
LABEL_15:
      sub_1000391EC(v16, right, v17, v18);
      return 0;
    }

    string = xpc_dictionary_get_string(a3, "name");
    if (!string)
    {
      return 22;
    }

    v13 = string;
    uint64 = xpc_dictionary_get_uint64(a3, "flags");
    v15 = (uint64 & 0x10) != 0 ? xpc_dictionary_get_uint64(a3, "lookup-handle") : 0;
    uuid = xpc_dictionary_get_uuid(a3, "instance");
    v20 = uuid;
    if (((uint64 & 4) != 0 || (uint64 & 0x20) != 0) && !uuid)
    {
      return 22;
    }

    if ((uint64 & 0x400) != 0)
    {
      length[0] = 0;
      data = xpc_dictionary_get_data(a3, "cputypes", length);
      if (length[0] != 36)
      {
        return 22;
      }

      if (*(a1 + 112) != qword_10007D8B8)
      {
        return 22;
      }

      v22 = data;
      if (xpc_binprefs_count(data) >= 5)
      {
        return 22;
      }
    }

    else
    {
      v22 = 0;
    }

    if ((*(a1 + 1017) & 0x10) != 0 && (uint64 & 0x10) == 0 && *(a1 + 112) == &unk_10007D720 && sub_10004EC0C(v13))
    {
      v38 = 0u;
      v39 = 0u;
      *length = 0u;
      v37 = 0u;
      sub_100045C2C(a2, length);
      v34 = a2[5];
      sub_10002C908(a1, 5, "pending lookup during user switch: name = %s, requestor = %s[%d]", v29, v30, v31, v32, v33, v13);
      if (*(a1 + 136))
      {
        right = xpc_mach_send_get_right();
      }

      else
      {
        right = 0;
      }

      v16 = a1;
      v17 = a3;
      v18 = 2;
      goto LABEL_15;
    }

    v23 = sub_100039278(a1, v13, v15, uint64, v20, v22, a2);
    v35 = v22;
    v24 = v15;
    v26 = v25;
    v27 = sub_10003950C(a3, v23, v25);
    if (sub_1000395A0(v23, v26, v13, v24, uint64, v20, v35, a2))
    {
      sub_100039624(a1, v27, v13);
    }

    v9 = 0;
    *a4 = v27;
  }

  return v9;
}

uint64_t sub_100035FF4(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  v4 = *(a1 + 1016);
  v5 = 124;
  if (v4 & 2) != 0 || (v4)
  {
    return v5;
  }

  if (*(a1 + 204))
  {
    if (*(a1 + 136))
    {
      right = xpc_mach_send_get_right();
    }

    else
    {
      right = 0;
    }

    sub_1000391EC(a1, right, xdict, 1);
    return 0;
  }

  string = xpc_dictionary_get_string(xdict, "name");
  if (!string)
  {
    return 22;
  }

  v12 = string;
  uint64 = xpc_dictionary_get_uint64(xdict, "flags");
  v19 = uint64;
  if (*(a1 + 112) == qword_10007D8B8)
  {
    if (uint64)
    {
      sub_10002C908(a1, 4, "Ignoring lax activation attempt for unsupported domain: %s", v14, v15, v16, v17, v18, v12);
    }

    v19 &= ~1uLL;
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((uint64 & 0x20) == 0)
  {
LABEL_9:
    object = 0;
    LOBYTE(__src) = 0;
    v20 = sub_10003A148(a1, a2, v12, v19, 0, &object, &__src);
    if (!v20)
    {
      reply = xpc_dictionary_create_reply(xdict);
      xpc_mach_send_get_right();
      xpc_dictionary_set_mach_recv();
      if (__src == 1)
      {
        xpc_dictionary_set_BOOL(reply, "non-launching", 1);
      }

      xpc_release(object);
      goto LABEL_40;
    }

    return v20;
  }

  object = a1;
  v22 = sub_100039F7C(&object, *(a2 + 20), 1);
  if (v22)
  {
    v23 = v22;
    v24 = sub_100014514(0x200uLL, 0x17A85393uLL);
    v25 = v24;
    v26 = *(v23 + 192);
    if (!v26)
    {
      v5 = 3;
      goto LABEL_35;
    }

    v27 = 0;
    v5 = 3;
    v28 = v24;
    while (1)
    {
      if (!strcmp((v26 + 216), v12))
      {
        v43 = 0;
        __src = 0;
        v5 = sub_10001E820(v26, v23, a2, &__src, 0, &v43);
        if (v5)
        {
          xpc_strerror();
          sub_100020018(v23, 3, "Could not activate socket named %s: %d: %s", v35, v36, v37, v38, v39, v12);
          goto LABEL_34;
        }

        v27 += v43;
        if (v27 >= 0x80)
        {
          sub_100020018(v23, 4, "Too many sockets for name %s. Some will be skipped.", v29, v30, v31, v32, v33, v12);
          sub_10001E95C(v26);
          *(v26 + 212) &= ~1u;
LABEL_34:
          if (v5)
          {
LABEL_35:
            free(v25);
            return v5;
          }

          reply = xpc_dictionary_create_reply(xdict);
          v40 = xpc_array_create(0, 0);
          if (v27)
          {
            v41 = v25;
            do
            {
              v42 = *v41++;
              xpc_array_set_fd(v40, 0xFFFFFFFFFFFFFFFFLL, v42);
              --v27;
            }

            while (v27);
          }

          xpc_dictionary_set_value(reply, "port", v40);
          xpc_release(v40);
          free(v25);
LABEL_40:
          v5 = 0;
          *a4 = reply;
          return v5;
        }

        memcpy(v28, __src, 4 * v43);
        v5 = 0;
        v28 += 4 * v43;
      }

      v26 = *(v26 + 16);
      if (!v26)
      {
        goto LABEL_34;
      }
    }
  }

  return 113;
}

uint64_t sub_10003631C(uint64_t a1, xpc_object_t original, void *a3)
{
  v4 = *(a1 + 1016);
  result = 124;
  if ((v4 & 2) == 0 && (v4 & 1) == 0)
  {
    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      v15 = reply;
      sub_100032438(a1, v8, v9, v10, v11, v12, v13, v14, v16);
      result = 0;
      *a3 = v15;
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t sub_100036380(uint64_t a1, xpc_object_t original, void *a3)
{
  v4 = *(a1 + 1016);
  result = 124;
  if ((v4 & 2) == 0 && (v4 & 1) == 0)
  {
    if (*(a1 + 192))
    {
      reply = xpc_dictionary_create_reply(original);
      if (reply)
      {
        v8 = reply;
        if (!sub_10003DF3C())
        {
LABEL_8:
          sub_10002D638(a1, v9, v10, v11, v12, v13, v14, v15);
          result = 0;
          *a3 = v8;
          return result;
        }

        v16 = *(a1 + 160);
        if (v16)
        {
          dispatch_source_cancel(v16);
          *(a1 + 160) = 0;
          goto LABEL_8;
        }

        sub_10002C908(a1, 4, "Ignoring a request to unset ondemand", v11, v12, v13, v14, v15, v17);
        xpc_release(v8);
        return 37;
      }

      else
      {
        return 22;
      }
    }

    else
    {
      return 34;
    }
  }

  return result;
}

uint64_t sub_100036430(uint64_t a1, unsigned int *a2, xpc_object_t xdict, void *a4)
{
  value = xpc_dictionary_get_value(xdict, "names");
  if (!value)
  {
    return 22;
  }

  v9 = value;
  if (xpc_get_type(value) != &_xpc_type_array)
  {
    return 22;
  }

  v12 = sub_100030410(a1, 4, 128, a2, 0, 0);
  if (v12)
  {
    if ((v10 = v12, v12 != 1) || !sub_1000443C8(a1) && *(a1 + 112) != &unk_10007D720 || (sub_10003A71C(a2, v9) & 1) == 0)
    {
      sub_1000304FC(a1, a2, v10, "enable service");
      return v10;
    }
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (!reply)
  {
    return 22;
  }

  v14 = reply;
  if (xpc_array_get_count(v9))
  {
    v15 = 0;
    do
    {
      string = xpc_array_get_string(v9, v15);
      if (string)
      {
        v17 = string;
        if (sub_100032AF8(a1, string, a2, 2))
        {
          xpc_dictionary_set_int64(v14, v17, 0);
          xpc_strerror();
          sub_10002C908(a1, 4, "Failed to enable service %s, error=%d - %s", v18, v19, v20, v21, v22, v17);
        }
      }

      ++v15;
    }

    while (v15 < xpc_array_get_count(v9));
  }

  sub_10004EB08();
  v10 = 0;
  *a4 = v14;
  return v10;
}

uint64_t sub_1000365DC(uint64_t a1, unsigned int *a2, xpc_object_t xdict, void *a4)
{
  value = xpc_dictionary_get_value(xdict, "names");
  if (!value)
  {
    return 22;
  }

  v9 = value;
  if (xpc_get_type(value) != &_xpc_type_array)
  {
    return 22;
  }

  v12 = sub_100030410(a1, 4, 128, a2, 0, 0);
  if (v12)
  {
    if ((v10 = v12, v12 != 1) || !sub_1000443C8(a1) && *(a1 + 112) != &unk_10007D720 || (sub_10003A71C(a2, v9) & 1) == 0)
    {
      sub_1000304FC(a1, a2, v10, "disable service");
      return v10;
    }
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (!reply)
  {
    return 22;
  }

  v14 = reply;
  if (xpc_array_get_count(v9))
  {
    v15 = 0;
    do
    {
      string = xpc_array_get_string(v9, v15);
      if (string)
      {
        v17 = string;
        v18 = sub_100032AF8(a1, string, a2, 1);
        if (v18)
        {
          xpc_dictionary_set_int64(v14, v17, v18);
          xpc_strerror();
          sub_10002C908(a1, 4, "Failed to disable service %s, error=%d - %s", v19, v20, v21, v22, v23, v17);
        }
      }

      ++v15;
    }

    while (v15 < xpc_array_get_count(v9));
  }

  sub_10004EB08();
  v10 = 0;
  *a4 = v14;
  return v10;
}

uint64_t sub_100036788(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  if (!*(a1 + 952))
  {
    return 125;
  }

  v8 = (*(*(a1 + 112) + 104))(a1, 5, 0, *(a1 + 120), a2, 0, 0);
  if (v8)
  {
    v9 = v8;
    sub_1000304FC(a1, a2, v8, "query service enabled state");
  }

  else if (*(a1 + 204))
  {
    if (*(a1 + 136))
    {
      right = xpc_mach_send_get_right();
    }

    else
    {
      right = 0;
    }

    sub_1000391EC(a1, right, a3, 1);
    return 0;
  }

  else
  {
    string = xpc_dictionary_get_string(a3, "name");
    if (string && (v12 = string, value = xpc_dictionary_get_value(a3, "default-enabled"), (reply = xpc_dictionary_create_reply(a3)) != 0))
    {
      v15 = reply;
      if (sub_100030830(a1, v12))
      {
        v16 = 1;
      }

      else
      {
        v17 = sub_1000443F4();
        if (v17)
        {
          v16 = sub_100030830(v17, v12) != 0;
        }

        else
        {
          v16 = 0;
        }
      }

      xpc_dictionary_set_BOOL(v15, "loaded", v16);
      v18 = sub_100032CB8(a1, v12);
      if (v18 == &_xpc_BOOL_true)
      {
        v19 = 0;
      }

      else
      {
        v19 = 1;
        if (v18 != &_xpc_BOOL_false && value)
        {
          v19 = xpc_get_type(value) != &_xpc_type_BOOL || xpc_BOOL_get_value(value);
        }
      }

      xpc_dictionary_set_BOOL(v15, "enabled", v19);
      v9 = 0;
      *a4 = v15;
    }

    else
    {
      return 22;
    }
  }

  return v9;
}

uint64_t sub_100036960(uint64_t a1, uint64_t a2, xpc_object_t xdict, xpc_object_t *a4)
{
  v8 = *(a1 + 112);
  string = xpc_dictionary_get_string(xdict, "name");
  if (!string)
  {
    return 22;
  }

  v10 = string;
  v11 = sub_100030410(a1, 4, (v8 != qword_10007D8B8) << 7, a2, 0, 0);
  if (v11)
  {
    v12 = v11;
    sub_1000304FC(a1, a2, v11, "kill service (%s)", v10);
    return v12;
  }

  if (xpc_dictionary_get_int64(xdict, "signal") - 32 < 0xFFFFFFE1 || !xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v13 = sub_100030830(a1, v10);
  if (!v13)
  {
    v13 = sub_10003301C(a1, v10);
    if (!v13)
    {
      return 113;
    }
  }

  v14 = v13;
  bzero(v23, 0x400uLL);
  sub_1000350A8(*(a2 + 20), v23);
  sub_100020018(v14, 5, "%s: caller = %s, value = 0x%llx", v15, v16, v17, v18, v19, "signal service");
  v20 = sub_100023F20(v14);
  if (!v20)
  {
    return 3;
  }

  if ((*(v14 + 1413) & 0x20) != 0)
  {
    return 1;
  }

  memset(v23, 0, 32);
  v21 = sub_100046B54(v20, v23);
  if (v21)
  {
    return v21;
  }

  if (sub_100031138(a1, a2, v14) && !sub_10001A6A4(a2, v23))
  {
    return 1;
  }

  v12 = sub_100046AE0(a2, v23);
  if (!v12)
  {
    *a4 = xpc_dictionary_create_reply(xdict);
  }

  return v12;
}

uint64_t sub_100036B84(_DWORD *a1, unsigned int *a2, xpc_object_t xdict, xpc_object_t *a4)
{
  v21 = a1;
  string = xpc_dictionary_get_string(xdict, "name");
  if (!string)
  {
    return 22;
  }

  v9 = string;
  if ((sub_10000E554(a2, 14) & 1) == 0)
  {
    v11 = 144;
    sub_1000304FC(a1, a2, 144, "start service (%s)");
    return v11;
  }

  v10 = sub_100030410(a1, 4, 8, a2, 0, 0);
  if (v10)
  {
    v11 = v10;
    sub_1000304FC(a1, a2, v10, "start service (%s)");
    return v11;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v12 = sub_1000390A8(&v21, v9);
  if (!v12)
  {
    return 3;
  }

  v19 = sub_1000234BC(v12, 10, v13, v14, v15, v16, v17, v18);
  if ((v19 & 0xFFFFFFFE) == 0x24)
  {
    v11 = 0;
  }

  else
  {
    v11 = v19;
  }

  if (v11 == 37 || !v11)
  {
    v11 = 0;
    *a4 = xpc_dictionary_create_reply(xdict);
  }

  return v11;
}

uint64_t sub_100036CB8(_DWORD *a1, uint64_t a2, xpc_object_t xdict, xpc_object_t *a4)
{
  v26 = a1;
  string = xpc_dictionary_get_string(xdict, "name");
  if (!string)
  {
    return 22;
  }

  v9 = string;
  if ((sub_10000E554(a2, 14) & 1) == 0)
  {
    v11 = 144;
    sub_1000304FC(a1, a2, 144, "service stop (%s)");
    return v11;
  }

  v10 = sub_100030410(a1, 4, 8, a2, 0, 0);
  if (v10)
  {
    v11 = v10;
    sub_1000304FC(a1, a2, v10, "service stop (%s)");
    return v11;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v12 = sub_1000390A8(&v26, v9);
  if (!v12)
  {
    return 3;
  }

  v13 = v12;
  v11 = sub_100021F44();
  if (!v11)
  {
    bzero(v27, 0x400uLL);
    sub_1000350A8(*(a2 + 20), v27);
    sub_100020018(v13, 5, "%s: caller = %s, value = 0x%llx", v14, v15, v16, v17, v18, "legacy-stop service");
    v11 = sub_1000235C4(v13, a2, v19, v20, v21, v22, v23, v24);
  }

  if (!v11 || v11 == 89 || v11 == 37)
  {
    v11 = 0;
    *a4 = xpc_dictionary_create_reply(xdict);
  }

  return v11;
}

uint64_t sub_100036E7C(_DWORD *a1, unsigned int *a2, xpc_object_t xdict, xpc_object_t *a4)
{
  v29 = a1;
  string = xpc_dictionary_get_string(xdict, "name");
  if (!string)
  {
    return 22;
  }

  v9 = string;
  v10 = sub_100030410(a1, 4, 128, a2, 0, 0);
  if (v10)
  {
    v11 = v10;
    sub_1000304FC(a1, a2, v10, "service remove (%s)");
    return v11;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v12 = sub_1000390A8(&v29, v9);
  if (!v12)
  {
    return 3;
  }

  v13 = v12;
  v14 = sub_100021F44();
  if (v14)
  {
    v11 = v14;
    sub_1000304FC(v29, a2, v14, "service remove (%s)");
  }

  else
  {
    memset(v30, 0, sizeof(v30));
    v16 = sub_100045C2C(a2, v30);
    v28 = a2[5];
    sub_100020018(v13, 5, "caller removing service: caller = %s[%d]", v17, v18, v19, v20, v21, v16);
    v27 = sub_10002DDAC(v29, a2, v13, v22, v23, v24, v25, v26);
    if (v27 == 36 || (v11 = v27, !v27))
    {
      v11 = 0;
      *a4 = xpc_dictionary_create_reply(xdict);
    }
  }

  return v11;
}

uint64_t sub_10003700C(_DWORD *a1, unsigned int *a2, void *a3, void *a4)
{
  v8 = sub_100030410(a1, 5, 8, a2, 0, 0);
  if (v8)
  {
    v9 = v8;
    sub_1000304FC(a1, a2, v8, "service enumeration");
  }

  else if (xpc_dictionary_expects_reply())
  {
    string = xpc_dictionary_get_string(a3, "name");
    if (string)
    {
      v22 = a1;
      v11 = sub_1000390A8(&v22, string);
      if (!v11)
      {
        return 113;
      }

      v12 = v11;
      reply = xpc_dictionary_create_reply(a3);
      v14 = sub_100023F54(v12);
      sub_10003A840(v12, v14);
      xpc_dictionary_set_value(reply, "service", v14);
      xpc_release(v14);
    }

    else
    {
      reply = xpc_dictionary_create_reply(a3);
      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_value(reply, "services", v15);
      xpc_release(v15);
      for (i = 0; i != 23; ++i)
      {
        for (j = *&a1[2 * i + 84]; j; j = *(j + 120))
        {
          v18 = xpc_dictionary_create(0, 0, 0);
          v19 = sub_100023F20(j);
          xpc_dictionary_set_int64(v18, "pid", v19);
          v20 = sub_1000246E4(j);
          xpc_dictionary_set_int64(v18, "status", *(v20 + 28));
          xpc_dictionary_set_value(v15, (j + 1424), v18);
          xpc_release(v18);
        }
      }
    }

    v9 = 0;
    *a4 = reply;
  }

  else
  {
    return 22;
  }

  return v9;
}

uint64_t sub_100037200(uint64_t a1, unsigned int *a2, void *a3, xpc_object_t *a4)
{
  v8 = sub_100030410(a1, 4, 8, a2, 0, 0);
  if (v8)
  {
    v9 = v8;
    sub_1000304FC(a1, a2, v8, "set domain environment");
  }

  else if (xpc_dictionary_expects_reply() && (value = xpc_dictionary_get_value(a3, "envvars")) != 0 && (v11 = value, xpc_get_type(value) == &_xpc_type_dictionary))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_10003AA24;
    v13[3] = &unk_100079350;
    v13[4] = a1;
    v13[5] = a2;
    xpc_dictionary_apply(v11, v13);
    v9 = 0;
    *a4 = xpc_dictionary_create_reply(a3);
  }

  else
  {
    return 22;
  }

  return v9;
}

uint64_t sub_100037328(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  v8 = sub_100030410(a1, 5, 8, a2, 0, 0);
  if (v8)
  {
    v9 = v8;
    sub_1000304FC(a1, a2, v8, "get domain environment");
  }

  else if (xpc_dictionary_expects_reply() && (string = xpc_dictionary_get_string(a3, "envvar")) != 0)
  {
    v11 = string;
    v12 = (a1 + 96);
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (sub_10001B8F8(v12, v11))
      {
        v13 = sub_10001B958(v12);
        reply = xpc_dictionary_create_reply(a3);
        xpc_dictionary_set_string(reply, "value", v13);
        v9 = 0;
        *a4 = reply;
        return v9;
      }
    }

    return 3;
  }

  else
  {
    return 22;
  }

  return v9;
}

uint64_t sub_100037424(void **a1, uint64_t a2, xpc_object_t xdict, xpc_object_t *a4)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "flags");
  if (a1[14] != &unk_10007D720)
  {
    return 125;
  }

  v10 = uint64;
  if ((uint64 & 0x100000000000000) != 0)
  {
    v11 = xpc_dictionary_get_uint64(xdict, "userreboot_purpose");
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_100030410(a1, 4, 128, a2, 0, 0);
  if (v12 == 150)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    v9 = v12;
    if (v13 == 1)
    {
      if (sub_10000E554(a2, 20))
      {
        goto LABEL_12;
      }

      v9 = 1;
    }

    sub_1000304FC(a1, a2, v9, "reboot");
    return v9;
  }

LABEL_12:
  sub_100010B28();
  v9 = 22;
  if (xpc_dictionary_expects_reply() && (v10 & 2) == 0)
  {
    bzero(v61, 0x400uLL);
    sub_1000350A8(*(a2 + 20), v61);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = "System reboot";
      v23 = "system reboot";
      goto LABEL_23;
    }

    if ((v10 & 0x2000000000000000) == 0)
    {
      if (!(v10 >> 62))
      {
        if ((v10 & 0x40000000000000) != 0)
        {
          v54 = time(0);
          v55 = sub_1000168E0("initiated at %ld by %s", v54, v61);
          sub_100048E2C(v55);
          free(v55);
          v19 = 0;
          v20 = 0;
          v21 = 2;
          v22 = "Device recovery";
          v23 = "device-recovery";
        }

        else
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = "System shutdown";
          v23 = "system shutdown";
        }

        goto LABEL_23;
      }

      if (sub_10000E554(a2, 12))
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = "Obliteration";
        v23 = "obliteration";
        goto LABEL_23;
      }

      return 144;
    }

    if (!sub_10000E554(a2, 18))
    {
      return 144;
    }

    if (sub_1000018D8(7))
    {
      v46 = "cannot userspace reboot while in REM";
LABEL_35:
      sub_10002C908(a1, 65540, v46, v14, v15, v16, v17, v18, v57);
      return 45;
    }

    v20 = v11 == 5;
    if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      if ((byte_10007E7B8 & 1) == 0)
      {
        v46 = "attempted to enter REM in unsupported variant";
        goto LABEL_35;
      }

      v56 = &unk_10005CEA2;
      if (v11 == 5)
      {
        v56 = " (development)";
      }

      sub_10002C908(a1, 65541, "attempting to enter REM%s", v14, v15, v16, v17, v18, v56);
      v19 = 7;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    if ((v10 & 0x200000000000000) != 0)
    {
      goto LABEL_53;
    }

    v21 = 1;
    v22 = "Userspace reboot";
    v23 = "userspace reboot";
LABEL_23:
    if ((v10 & 0x200000000000000) != 0)
    {
      if ((v10 & 0x4000000000000000) == 0 || (byte_10007F051 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v60 = v21;
      sub_10002C908(a1, 196613, "%s initiated by: %s", v14, v15, v16, v17, v18, v22);
      sub_10002C908(a1, 5, "%s: flags = 0x%llx, caller = %s", v25, v26, v27, v28, v29, v23);
      if (byte_10007F0C5 == 1)
      {
        sub_10002C908(a1, 65540, "system is in sudden shutdown mode. All processes will be SIGKILLed immediately.", v30, v31, v32, v33, v34, v58);
        sub_10002C908(a1, 5, "system is in sudden shutdown mode. All processes will be SIGKILLed immediately.", v35, v36, v37, v38, v39, v59);
      }

      if ((v10 & 0x4000000000000000) == 0)
      {
        v40 = sub_100044900(a1, v19);
        if (v40)
        {
          v9 = v40;
          sub_10002C908(a1, 65539, "failed to persist services: %d", v41, v42, v43, v44, v45, v40);
          return v9;
        }

        sub_100048DA8(v19);
        sub_100048DC0(v20);
        v9 = sub_1000311F4(a1, v60, v11, 0, v10 & 0xFFFFFFFD);
        if (v9)
        {
          return v9;
        }

LABEL_53:
        v9 = 0;
        *a4 = xpc_dictionary_create_reply(xdict);
        return v9;
      }

      if ((byte_10007F051 & 1) == 0)
      {
        reply = xpc_dictionary_create_reply(xdict);
        dword_10007E8F8 = *(a2 + 20);
        sub_10003AC10(a1, reply, v48, v49, v50, v51, v52, v53);
        return 0;
      }
    }

    return 37;
  }

  return v9;
}

uint64_t sub_100037890(uint64_t a1, unsigned int *a2, xpc_object_t xdict, xpc_object_t *a4)
{
  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  if (a2 && (v9 = a2[5], v9 != getpid()))
  {
    if (!xpc_dictionary_expects_reply())
    {
      return 22;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  int64 = xpc_dictionary_get_int64(xdict, "which");
  if (!sub_100046468(int64))
  {
    return 22;
  }

  if (xpc_dictionary_get_BOOL(xdict, "print"))
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 0x40000000;
    v22[2] = sub_10003AF84;
    v22[3] = &unk_100079390;
    v23 = int64;
    return sub_100049C94(xdict, a4, v22);
  }

  v12 = sub_100030410(a1, 4, 8, a2, 0, 0);
  if (v12)
  {
    v4 = v12;
    sub_1000304FC(a1, a2, v12, "modify rlimits");
    return v4;
  }

  value = xpc_dictionary_get_value(xdict, "hardlimit");
  if (!value)
  {
    return 22;
  }

  v14 = value;
  if (xpc_get_type(value) != &_xpc_type_int64)
  {
    return 22;
  }

  v16 = xpc_dictionary_get_value(xdict, "softlimit");
  if (!v16)
  {
    return 22;
  }

  v17 = v16;
  if (xpc_get_type(v16) != &_xpc_type_int64)
  {
    return 22;
  }

  v18 = xpc_int64_get_value(v14);
  v19 = xpc_int64_get_value(v17);
  if (v19 < 0)
  {
    v20 = -1;
  }

  else
  {
    v20 = v19;
  }

  if (v18 < 0)
  {
    v18 = -1;
  }

  sub_100046230(int64, v20, v18, 0);
  if (v10)
  {
    empty = xpc_dictionary_create_empty();
    *a4 = empty;
    xpc_dictionary_set_int64(empty, "softlimit", v20);
    xpc_dictionary_set_int64(*a4, "hardlimit", v18);
    return 0;
  }

  else
  {
    v4 = 0;
    *a4 = xpc_dictionary_create_reply(xdict);
  }

  return v4;
}

uint64_t sub_100037AD0(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  v8 = sub_100030410(a1, 5, 128, a2, 0, 0);
  if (v8)
  {
    v9 = v8;
    sub_1000304FC(a1, a2, v8, "domain print");
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10003B11C;
    v11[3] = &unk_1000793B0;
    v11[4] = a3;
    v11[5] = a1;
    return sub_100049C94(a3, a4, v11);
  }

  return v9;
}

uint64_t sub_100037BB0(void **a1, unsigned int *a2, void *a3)
{
  if (sub_10000E554(a2, 2))
  {
    if (a1[14] == qword_10007D8B8)
    {
      if (xpc_dictionary_expects_reply() && (string = xpc_dictionary_get_string(a3, "path")) != 0)
      {
        v8 = string;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = sub_10003B420;
        v11[3] = &unk_1000793F0;
        v11[4] = a1;
        v11[5] = sub_1000166EC(string);
        v11[6] = xpc_dictionary_create_reply(a3);
        value = xpc_dictionary_get_value(a3, "overlay");
        sub_100018E2C(a1, v8, value, a2, v11);
        return 0;
      }

      else
      {
        return 22;
      }
    }

    else
    {
      return 125;
    }
  }

  else
  {
    v6 = 144;
    sub_1000304FC(a1, a2, 144, "pid-extend");
  }

  return v6;
}

uint64_t sub_100037CF4(void **a1, unsigned int *a2, void *a3)
{
  if (a1[14] != &unk_10007D720)
  {
    return 125;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if ((sub_10000E554(a2, 2) & 1) == 0)
  {
    v3 = 144;
    sub_1000304FC(a1, a2, 144, "extension removal");
    return v3;
  }

  string = xpc_dictionary_get_string(a3, "name");
  if (!string)
  {
    return 22;
  }

  v8 = string;
  memset(v31, 0, sizeof(v31));
  sub_100045C2C(a2, v31);
  sub_10002C908(a1, 5, "%s: caller = %s.%d, extension = %s", v9, v10, v11, v12, v13, "remove all extension instances");
  reply = xpc_dictionary_create_reply(a3);
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v16 = sub_10001B550(a1, 19, v15, reply);
  v17 = sub_1000157D8();
  dispatch_group_notify_f(v15, v17, v16, sub_10003B4D8);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  do
  {
    for (i = qword_10007D8B8[v23]; i; i = *(i + 32))
    {
      v27 = sub_100030830(i, v8);
      if (v27)
      {
        if (sub_10003B574(*(v27 + 31), v27, v15) != 36)
        {
          ++v25;
        }

        ++v24;
      }
    }

    ++v23;
  }

  while (v23 != 11);
  if (!v24)
  {
    v28 = sub_100030830(a1, v8);
    if (v28 || (v29 = sub_1000443F4()) != 0 && (v28 = sub_100030830(v29, v8)) != 0)
    {
      sub_10003B574(*(v28 + 31), v28, v15);
      LOBYTE(v24) = 1;
    }

    else
    {
      xpc_dictionary_set_int64(reply, "error", 3);
      LOBYTE(v24) = 0;
    }
  }

  sub_10002C908(a1, 5, "total of %lu extension (%s) instances were found to remove, of which %lu were removed instantly", v18, v19, v20, v21, v22, v24);
  dispatch_group_leave(v15);
  return 0;
}

uint64_t sub_100037F64(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  if (sub_10000E554(a2, 2))
  {
    value = xpc_dictionary_get_value(a3, "names");
    if (value && (v10 = value, xpc_get_type(value) == &_xpc_type_array) && (reply = xpc_dictionary_create_reply(a3)) != 0)
    {
      v13 = reply;
      v14 = xpc_array_create(0, 0);
      for (i = 0; i != 11; ++i)
      {
        for (j = qword_10007D8B8[i]; j; j = *(j + 32))
        {
          if (xpc_array_get_count(v10))
          {
            v17 = 0;
            do
            {
              string = xpc_array_get_string(v10, v17);
              if (string)
              {
                v19 = sub_100030830(j, string);
                if (v19)
                {
                  if (!*(v19 + 74))
                  {
                    if (sub_100023F20(v19))
                    {
                      v20 = memorystatus_control();
                      if (v20)
                      {
                        if (v20 != 24)
                        {
                          _os_assumes_log_ctx();
                        }
                      }
                    }
                  }
                }
              }

              ++v17;
            }

            while (v17 < xpc_array_get_count(v10));
          }
        }
      }

      xpc_dictionary_set_value(v13, "instances", v14);
      xpc_release(v14);
      v4 = 0;
      *a4 = v13;
    }

    else
    {
      return 22;
    }
  }

  else
  {
    v4 = 144;
    sub_1000304FC(a1, a2, 144, "copy busy extensions");
  }

  return v4;
}

uint64_t sub_100038188(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v9 = sub_100030410(a1, 5, 128, a2, 0, 0);
  if (v9)
  {
    v4 = v9;
    sub_1000304FC(a1, a2, v9, "dump state");
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10003B68C;
    v11[3] = &unk_100079410;
    v11[4] = a1;
    return sub_100049C94(a3, a4, v11);
  }

  return v4;
}

uint64_t sub_10003829C(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  uint64 = xpc_dictionary_get_uint64(a3, "uid");
  if (*(qword_10007E7B0 + 1016))
  {
    v4 = 124;
    sub_1000304FC(a1, a2, 124, "get user context");
  }

  else
  {
    v10 = uint64;
    v11 = uint64;
    v12 = off_10007D810(0, 1, 256, uint64, a2, 0, 0);
    if (v12)
    {
      v4 = v12;
      sub_1000304FC(a1, a2, v12, "get user context");
    }

    else
    {
      v14 = sub_100032848(qword_10007D7A8, v11);
      if (!v14)
      {
        v14 = sub_10003B694(v10, a2);
        if (!v14)
        {
          sub_1000543CC();
        }
      }

      v15 = v14;
      if (*(v14 + 204))
      {
        if (*(a1 + 136))
        {
          right = xpc_mach_send_get_right();
        }

        else
        {
          right = 0;
        }

        sub_1000391EC(v15, right, a3, 1);
        return 0;
      }

      else
      {
        reply = xpc_dictionary_create_reply(a3);
        v18 = *(v15 + 976);
        v19 = v15 + 88;
        do
        {
          v19 = *v19;
        }

        while (v19 && *(v19 + 20) != 4);
        if (!v18)
        {
          v18 = v15;
        }

        v20 = v18 + 88;
        while (1)
        {
          v20 = *v20;
          if (!v20)
          {
            break;
          }

          if (*(v20 + 20) == 128)
          {
            v21 = *(v19 + 16);
            xpc_dictionary_set_mach_send();
            v19 = v20;
            break;
          }
        }

        v22 = *(v19 + 16);
        xpc_dictionary_set_mach_send();
        v4 = 0;
        *a4 = reply;
      }
    }
  }

  return v4;
}

uint64_t sub_10003848C(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  v9 = sub_100030410(a1, 5, 128, a2, 0, 0);
  if (v9)
  {
    v4 = v9;
    sub_1000304FC(a1, a2, v9, "dump jetsam property category");
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10003B6F0;
    v11[3] = &unk_100079430;
    v11[4] = a1;
    return sub_100049C94(a3, a4, v11);
  }

  return v4;
}

uint64_t sub_100038588(uint64_t a1, void *a2, void *a3)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  uint64 = xpc_dictionary_get_uint64(a2, "uid");
  if (*(qword_10007E7B0 + 1016))
  {
    return 124;
  }

  v8 = uint64;
  v9 = uint64;
  result = off_10007D810(0, 1, 256, uint64, a1, 0, 0);
  if (!result)
  {
    if (sub_100032848(qword_10007D7A8, v9))
    {
      return 17;
    }

    else
    {
      sub_10003B694(v8, a1);
      reply = xpc_dictionary_create_reply(a2);
      result = 0;
      *a3 = reply;
    }
  }

  return result;
}

uint64_t sub_10003866C(uint64_t a1, uint64_t a2, void *a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  if (!sub_10000E554(a2, 18))
  {
    return 144;
  }

  memset(v16, 0, sizeof(v16));
  v10 = sub_100045C2C(a2, v16);
  sub_10002C908(a1, 196613, "Active user login, initiated by: %s[%d]", v11, v12, v13, v14, v15, v10);
  v8 = sub_100044678(a1);
  if (!v8)
  {
    *a4 = xpc_dictionary_create_reply(a3);
  }

  return v8;
}

uint64_t sub_100038774(uint64_t a1, uint64_t a2, void *a3)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  if (!sub_10000E554(a2, 18))
  {
    return 144;
  }

  memset(v15, 0, sizeof(v15));
  v8 = sub_100045C2C(a2, v15);
  sub_10002C908(a1, 196613, "Active user logout, initiated by: %s[%d]", v9, v10, v11, v12, v13, v8);
  reply = xpc_dictionary_create_reply(a3);
  v6 = sub_100044428(a1, reply);
  xpc_release(reply);
  return v6;
}

uint64_t sub_100038880(uint64_t a1, unsigned int *a2, void *a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  value = xpc_dictionary_get_value(a3, "properties");
  if (!value)
  {
    return 22;
  }

  v9 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    return 22;
  }

  v12 = xpc_dictionary_get_value(a3, "flags");
  if (!v12)
  {
    return 22;
  }

  v13 = v12;
  if (xpc_get_type(v12) != &_xpc_type_uint64)
  {
    return 22;
  }

  v14 = xpc_uint64_get_value(v13);
  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  v15 = v14;
  v27 = 0;
  v28 = 0;
  v10 = sub_10003B7C4(v9, &v28, &v27);
  v26 = v10;
  if (!v10)
  {
    v17 = v27;
    v16 = v28;
    v18 = sub_10003B8DC(v28, v27, a2);
    if (v18)
    {
      sub_10002C908(v18, 5, "Domain creation failed: it already exists", v19, v20, v21, v22, v23, v25);
      return 37;
    }

    else
    {
      sub_10003B96C(v16, v17, 0, v15, a2, &v26);
      v10 = v26;
      if (v26)
      {
        v24 = xpc_strerror();
        sub_10004749C(4, "Domain creation failed: %d %s", v10, v24);
      }

      else
      {
        *a4 = xpc_dictionary_create_reply(a3);
      }
    }
  }

  return v10;
}

uint64_t sub_1000389FC(uint64_t a1, unsigned int *a2, void *a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v8 = *(a1 + 1016);
  v9 = 124;
  if ((v8 & 2) != 0 || (v8 & 1) != 0 || (v9 = (*(*(a1 + 112) + 104))(a1, 4, 0, *(a1 + 120), a2, 0, 0), v9))
  {
    sub_1000304FC(a1, a2, v9, "unpend launches");
  }

  else if ((*(a1 + 1017) & 0x80) != 0)
  {
    sub_10002C908(a1, 5, "unpending launches", v10, v11, v12, v13, v14, v16);
    *(a1 + 1016) &= ~0x8000u;
    sub_10002D5B4(a1);
    v9 = 0;
    *a4 = xpc_dictionary_create_reply(a3);
  }

  else
  {
    return 37;
  }

  return v9;
}

uint64_t sub_100038AF0(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  string = xpc_dictionary_get_string(a3, "query");
  if (!string)
  {
    return 22;
  }

  v9 = string;
  empty = xpc_array_create_empty();
  sub_10003BBB4(a1, v9, empty, a2);
  reply = xpc_dictionary_create_reply(a3);
  xpc_dictionary_set_value(reply, "services", empty);
  xpc_release(empty);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_100038BA0(uint64_t a1, unsigned int *a2, void *a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (sub_10000E554(a2, 4))
  {
    string = xpc_dictionary_get_string(a3, "mount-point");
    v9 = sub_10000C894(string);
    if (!v9)
    {
      *a4 = xpc_dictionary_create_reply(a3);
    }
  }

  else
  {
    v9 = 144;
    sub_1000304FC(a1, a2, 144, "load-jetsam-properties");
  }

  return v9;
}

uint64_t sub_100038C4C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 33))
  {
    return 144;
  }

  if (*(a1 + 112) != &unk_10007D720)
  {
    return 125;
  }

  string = xpc_dictionary_get_string(a3, "cryptex");
  if (!string)
  {
    return 22;
  }

  v8 = string;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  reply = xpc_dictionary_create_reply(a3);
  v11 = sub_1000157D8();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10003BCE0;
  block[3] = &unk_100079450;
  block[4] = reply;
  block[5] = a1;
  block[6] = v9;
  dispatch_group_notify(v9, v11, block);
  sub_10003BD50(a1, v8, v9, a2);
  dispatch_group_leave(v9);
  return 0;
}

uint64_t sub_100038D84(uint64_t a1, uint64_t a2, void *a3)
{
  if (!sub_10000E554(a2, 41))
  {
    return 144;
  }

  int64 = xpc_dictionary_get_int64(a3, "pid");
  v7 = xpc_dictionary_get_int64(a3, "pid-version");
  bzero(v14, 0x400uLL);
  sub_1000350A8(*(a2 + 20), v14);
  sub_10002C908(a1, 5, "urgent log submission completion initiated by: %s (pid = %d, version = %d)", v8, v9, v10, v11, v12, v14);
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  sub_10000F58C(int64, v7);
  return 0;
}

uint64_t sub_100038E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1016);
  if ((v8 & 4) != 0)
  {
    return 37;
  }

  if (v8 & 2) != 0 || (v8)
  {
    sub_10002C908(a1, 5, "domain shutting down, not uncorking", a4, a5, a6, a7, a8, v15);
    return 124;
  }

  else if ((v8 & 8) != 0 && *(a1 + 248))
  {
    sub_10002C908(a1, 5, "uncorking domain", a4, a5, a6, a7, a8, v15);
    v11 = *(a1 + 120);
    sub_100010B3C();
    v12 = *(a1 + 120);
    sub_1000186B8(a1, 1, 0, *(a1 + 248), a2, 9216, 0, v13);
    xpc_release(*(a1 + 248));
    result = 0;
    *(a1 + 248) = 0;
    *(a1 + 1016) |= 4u;
  }

  else
  {
    sub_10002C908(a1, 5, "domain is not initialized, can't uncork", a4, a5, a6, a7, a8, v15);
    return 131;
  }

  return result;
}

uint64_t sub_100038F70(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_uint64)
  {
    value = xpc_uint64_get_value(object);
    xpc_dictionary_set_uint64(*(a1 + 32), a2, value & 0xFFFFFFFFFFFFDFFFLL);
  }

  else
  {
    xpc_dictionary_set_value(*(a1 + 32), a2, object);
  }

  return 1;
}

xpc_object_t sub_100038FEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  bzero(v22, 0x400uLL);
  sub_1000350A8(*(a2 + 20), v22);
  sub_10002C908(a1, 65541, "bootout initiated by: %s", v8, v9, v10, v11, v12, v22);
  sub_10002CDD4(a1, v13, v14, v15, v16, v17, v18, v19, v21);
  result = xpc_dictionary_create_reply(a3);
  *a4 = result;
  return result;
}

_DWORD *sub_1000390A8(_DWORD **a1, char *a2)
{
  result = sub_100030830(*a1, a2);
  if (!result)
  {
    if (*(*a1 + 14) == &unk_10007D720)
    {
      result = sub_1000443F4();
      if (result)
      {
        v5 = result;
        result = sub_100030830(result, a2);
        if (result)
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10003911C(char *a1, xpc_object_t object, uint64_t a3)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    v16 = 0;
    string_ptr = xpc_string_get_string_ptr(object);
    v7 = sub_10001B708(a1, string_ptr, 0, &v16, 0);
    if (v7)
    {
      v15 = *(a3 + 96);
      v14 = (a3 + 96);
      v13 = v15;
      *v7 = v15;
      if (v15)
      {
        *(v13 + 8) = v7;
      }

      *v14 = v7;
      *(v7 + 1) = v14;
    }

    else
    {
      sub_10002C908(a3, 3, "Service attempted to %s environment variable with reserved name: %s", v8, v9, v10, v11, v12, "set");
    }
  }
}

xpc_object_t sub_1000391EC(uint64_t a1, int a2, void *a3, int a4)
{
  v8 = sub_100014514(0x30uLL, 0x10A004003EBAF2CuLL);
  v8[4] = a2;
  result = xpc_retain(a3);
  *(v8 + 3) = result;
  v8[8] = a4;
  if (!a1)
  {
    sub_100054404();
  }

  v12 = *(a1 + 208);
  v11 = (a1 + 208);
  v10 = v12;
  *v8 = v12;
  if (v12)
  {
    *(v10 + 8) = v8;
  }

  *v11 = v8;
  *(v8 + 1) = v11;
  return result;
}

uint64_t sub_100039278(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, uint64_t a7)
{
  v12 = sub_100022BD8(*(a7 + 20));
  if (v12)
  {
    v13 = v12;
    if (sub_1000247A0(v12))
    {
      return 0;
    }

    if ((*(v13 + 369) & 0x80) != 0)
    {
      return 0;
    }
  }

  v15 = a1;
  if ((a4 & 8) != 0)
  {
    v15 = a1;
    if (sub_100016A6C(*(a1 + 968), "PostLogOutSync"))
    {
      v15 = sub_10003463C(a1);
    }
  }

  while (1)
  {
    if (sub_100016A6C(*(a1 + 968), "PostLogOutSync") && (*(v15 + 112) == &unk_10007D720 || sub_1000443C8(v15)) && !sub_10001A64C(a7, "mach-cross-domain-lookup", 1))
    {
      v14 = 0;
      v17 = 1;
      goto LABEL_31;
    }

    v14 = sub_10003986C(v15, a2, a3, a4, a5, a6, a7, 1);
    v17 = v16;
    if ((a4 & 0x10) != 0 || v16 != 3 || *(a1 + 112) == qword_10007D8B8)
    {
      break;
    }

    v15 = sub_10003463C(v15);
    if (!v15)
    {
      if (*(a1 + 112) != &unk_10007D720 || !sub_10004EC0C(a2) || ((v18 = sub_1000443F4()) == 0 ? (v14 = 0, v17 = 3) : (v14 = sub_10003986C(v18, a2, a3, a4, a5, a6, a7, 0), v17 = v19), v17))
      {
        v14 = 0;
        v17 = 3;
        goto LABEL_31;
      }

      memset(v30, 0, sizeof(v30));
      sub_100045C2C(a7, v30);
      v27 = *(a7 + 20);
      sub_10002C908(a1, 4, "rerouted lookup to a foreground user endpoint: name = %s, caller = %s[%d]", v20, v21, v22, v23, v24, a2);
      break;
    }
  }

  if (!v17)
  {
    if (v14)
    {
      v25 = *(v14 + 96);
      if (v25)
      {
        if ((*(v25 + 1416) & 2) != 0)
        {
          v17 = 3;
          v14 = 0;
        }
      }
    }
  }

LABEL_31:
  if (v17)
  {
    sub_1000396D8(a1, a2, a5, a3, a4, a7, v17);
  }

  return v14;
}

xpc_object_t sub_10003950C(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    reply = xpc_dictionary_create_reply(a1);
    xpc_dictionary_set_int64(reply, "error", a3);
  }

  else
  {
    reply = xpc_dictionary_create_reply(a1);
    v12 = sub_10004C9DC(a2, 1, v6, v7, v8, v9, v10, v11);
    xpc_dictionary_set_value(reply, "port", v12);
    if (*(a2 + 88) < 0)
    {
      xpc_dictionary_set_BOOL(reply, "non-launching", 1);
    }
  }

  return reply;
}

uint64_t sub_1000395A0(uint64_t a1, int a2, char *a3, uint64_t a4, unint64_t a5, unsigned __int8 *a6, unint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_1000443F4();
  if (result)
  {
    sub_10003986C(result, a3, a4, a5, a6, a7, a8, 0);
    return v15 == 0;
  }

  return result;
}

void sub_100039624(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  int64 = xpc_dictionary_get_int64(xdict, "error");
  v6 = "Unexpected error when looking up endpoint: %s";
  if (int64 == 3)
  {
    v6 = "System session daemon must not initiate XPC to the User session: endpoint = %s";
  }

  if (int64 == 159)
  {
    v7 = sub_1000168E0("Sandbox violation: endpoint = %s");
  }

  else
  {
    v7 = sub_1000168E0(v6, a3);
  }

  v8 = v7;
  xpc_strerror();
  sub_10002C908(a1, 3, "%s (%s)", v9, v10, v11, v12, v13, v8);

  free(v8);
}

void sub_1000396D8(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 != 145)
  {
    v13 = sub_10000FC98(0x100uLL);
    v20 = v13;
    v21 = "failed lookup";
    if (a7 == 159)
    {
      v21 = "denied lookup";
    }

    sub_10000FD40(v13, "%s: name = %s, ", v14, v15, v16, v17, v18, v19, v21);
    if (a4)
    {
      sub_10000FD40(v20, "handle = %llu, ", v22, v23, v24, v25, v26, v27, a4);
    }

    memset(out, 0, 37);
    if ((a5 & 0x24) != 0)
    {
      uuid_unparse(a3, out);
      sub_10000FD40(v20, "instance = %s, ", v28, v29, v30, v31, v32, v33, out);
    }

    else if (!a5)
    {
LABEL_10:
      memset(v46, 0, sizeof(v46));
      v34 = sub_100045C2C(a6, v46);
      xpc_strerror();
      sub_10000FD40(v20, "requestor = %s[%d], error = %d: %s", v35, v36, v37, v38, v39, v40, v34);
      sub_10002C908(a1, 4, "%s", v41, v42, v43, v44, v45, *v20);
      sub_10000FD04(v20);
      return;
    }

    sub_10000FD40(v20, "flags = 0x%llx, ", v22, v23, v24, v25, v26, v27, a5);
    goto LABEL_10;
  }
}

uint64_t sub_10003986C(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, uint64_t a7, int a8)
{
  v64 = a1;
  if (*(a1 + 976))
  {
    v14 = *(a1 + 976);
  }

  else
  {
    v14 = a1;
  }

  if ((a4 & 2) != 0)
  {
    if (a8 && !sub_10001A64C(a7, "mach-lookup", 2))
    {
      goto LABEL_49;
    }

    *&v66 = a1;
    v22 = sub_100039F7C(&v66, a3, 0);
    if (v22)
    {
      goto LABEL_14;
    }

    v29 = sub_100022BD8(a3);
    if (!v29)
    {
      goto LABEL_32;
    }

    v22 = v29;
    v30 = *(v29 + 248);
    if (*(v30 + 112) != qword_10007D8B8)
    {
      goto LABEL_14;
    }

    v31 = (v30 + 88);
    do
    {
      v31 = *v31;
    }

    while (v31 && *(v31 + 5) != 4);
    v65 = sub_100034F4C(qword_10007E7B0, *(v31 + 4));
    if (v65)
    {
      v22 = sub_100039F7C(&v65, a3, 1);
    }

    if (v22)
    {
LABEL_14:
      v23 = *(v22 + 168);
      if (v23)
      {
        while ((*(v23 + 88) & 0x40) != 0 || !sub_100016A6C((v23 + 168), a2))
        {
          v23 = *(v23 + 16);
          if (!v23)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_23;
      }

LABEL_18:
      sub_10002C908(a1, 5, "could not find endpoint in pid namespace: pid = %d, name = %s", v17, v18, v19, v20, v21, a3);
    }

    else
    {
LABEL_32:
      sub_10002C908(a1, 5, "could not find active service for lookup: pid = %d, name = %s", v17, v18, v19, v20, v21, a3);
    }

    goto LABEL_33;
  }

  if ((a4 & 0x10) != 0)
  {
    *&v66 = a1;
    v24 = sub_100039F7C(&v66, *(a7 + 20), 0);
    if (!v24)
    {
      v23 = 0;
      v28 = 113;
      goto LABEL_66;
    }

    v25 = sub_100026C6C(v24, a2);
    if (v25)
    {
      v26 = sub_10003FAEC(v25, a3);
      if (v26)
      {
        v27 = sub_1000130C0(v26);
        v23 = sub_100033138(v27, v27, a2);
        if (v23)
        {
LABEL_23:
          v28 = 0;
          goto LABEL_66;
        }

LABEL_34:
        v28 = 3;
        goto LABEL_66;
      }
    }

LABEL_33:
    v23 = 0;
    goto LABEL_34;
  }

  if ((a4 & 0x24) != 0)
  {
    if (*(v14 + 112) == qword_10007D8B8)
    {
      if (a8 && !sub_10001A64C(a7, "mach-lookup", 3))
      {
        goto LABEL_49;
      }
    }

    else if (a8 && !sub_10001A64C(a7, "mach-lookup", 1))
    {
LABEL_49:
      v23 = 0;
      v28 = 159;
      goto LABEL_66;
    }

    v23 = sub_100033094(v14, a2);
    v28 = v32;
    if (v32)
    {
      if (v32 != 3)
      {
        goto LABEL_66;
      }

      v33 = sub_100039E20(v14, a2);
      if (!v33)
      {
        goto LABEL_66;
      }

      v23 = v33;
    }

    if (*(v23 + 72))
    {
      sub_10002C908(v14, 3, "Cannot look up instances for shared endpoints.", v17, v18, v19, v20, v21, v63);
LABEL_65:
      v23 = 0;
      v28 = 137;
      goto LABEL_66;
    }

    v34 = sub_10004CC54(v23);
    v40 = v34;
    if ((*(v34 + 369) & 2) != 0)
    {
      sub_100020018(v34, 3, "Cannot look up instances for sub-instances.", v35, v36, v37, v38, v39, v63);
      goto LABEL_65;
    }

    v41 = sub_100026D08(v34, a5);
    if (!v41)
    {
      if (sub_100026CE4(v40, 1))
      {
        v23 = 0;
        v28 = 45;
        goto LABEL_66;
      }

      *&v67 = 0;
      v66 = a6;
      LODWORD(v65) = 0;
      v41 = sub_10002DFD8(*(v40 + 248), v40, a5, (a4 >> 5) & 1, &v66, a7, &v65);
      if (!v41)
      {
        v23 = 0;
        if (v65)
        {
          v28 = v65;
        }

        else
        {
          v28 = 137;
        }

        goto LABEL_66;
      }
    }

    v23 = *(v41 + 184);
    if (v23)
    {
      v28 = 3;
      while ((*(v23 + 88) & 0x40) != 0 || !sub_100016A6C((v23 + 168), a2))
      {
        v23 = *(v23 + 16);
        if (!v23)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if ((a4 & 0x100) == 0)
  {
    if (*(v14 + 112) == qword_10007D8B8)
    {
      if (a8 && !sub_10001A64C(a7, "mach-lookup", 3))
      {
        goto LABEL_88;
      }
    }

    else if (a8 && !sub_10001A64C(a7, "mach-lookup", 1))
    {
LABEL_88:
      v23 = 0;
      v28 = 159;
      goto LABEL_61;
    }
  }

  v23 = sub_100033094(v14, a2);
  v28 = v42;
LABEL_61:
  if (v28 == 3)
  {
    v43 = sub_100039E20(v14, a2);
    if (v43)
    {
      v44 = a4 & 0x100;
      goto LABEL_68;
    }
  }

LABEL_66:
  if (v28)
  {
    return v23;
  }

  v44 = a4 & 0x100;
  v43 = v23;
LABEL_68:
  if (*(v43 + 72))
  {
    v23 = *(v43 + 72);
  }

  else
  {
    v23 = v43;
  }

  if (v44)
  {
    v50 = sub_100022BD8(*(a7 + 20));
    if (!v50)
    {
      sub_10002C908(v64, 5, "Unable to find managed service for pid %d. Trying unmanaged services", v45, v46, v47, v48, v49, *(a7 + 20));
      v50 = sub_100039E84(&v64, *(a7 + 20));
    }

    v51 = sub_10004CC54(v23);
    if (!v50 || v50 != v51)
    {
      goto LABEL_79;
    }
  }

  if ((a4 & 8) == 0 || sub_1000443C8(v14) || *(v14 + 112) == &unk_10007D720)
  {
    if ((a4 & 0x200) != 0 || ((a4 >> 7) & 1) == *(v23 + 88) >> 7)
    {
      if (sub_10004C9DC(v23, 1, v16, v17, v18, v19, v20, v21))
      {
        if (!v23)
        {
          sub_1000543CC();
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      sub_100045C2C(a7, &v66);
      sub_10002C908(v14, 4, "failed lookup due to non-launching property mismatch: name = %s, requestor = %s.%d", v52, v53, v54, v55, v56, a2);
      sub_100045C2C(a7, &v66);
      sub_10002C908(v14, 5, "failed lookup due to non-launching property mismatch: name = %s, requestor = %s.%d", v57, v58, v59, v60, v61, a2);
      return 0;
    }
  }

  else
  {
LABEL_79:
    sub_1000396D8(v14, a2, a5, a3, a4, a7, 1);
    return 0;
  }

  return v23;
}

uint64_t sub_100039E20(uint64_t a1, char *a2)
{
  if (*(a1 + 112) != qword_10007D8B8)
  {
    return 0;
  }

  v4 = sub_100030830(a1, a2);
  if (!v4)
  {
    return 0;
  }

  return sub_10002E384(a1, v4);
}

uint64_t sub_100039E84(uint64_t *a1, int a2)
{
  v9 = a2;
  v3 = sub_100016BA4(&v9, 4);
  v4 = *a1;
  i = *(*a1 + 8 * (v3 % 0xD) + 544);
  if (i)
  {
    while (1)
    {
      v6 = sub_100023F20(i);
      v7 = v9;
      if (v6 == v9)
      {
        break;
      }

      i = *(i + 88);
      if (!i)
      {
        v4 = *a1;
        goto LABEL_6;
      }
    }
  }

  else
  {
    v7 = v9;
LABEL_6:
    v10 = v7;
    for (i = *(v4 + 8 * (sub_100016BA4(&v10, 4) % 7uLL) + 648); i; i = *(i + 88))
    {
      if (*(i + 296) == v10)
      {
        break;
      }
    }
  }

  return i;
}

size_t sub_100039F7C(uint64_t *a1, int a2, int a3)
{
  v6 = sub_100039E84(a1, a2);
  if (v6)
  {
    return v6;
  }

  if (sub_100022CA8(a2))
  {
    v6 = sub_100039E84(a1, a2);
    if (v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
  }

  if (!a3)
  {
    return v6;
  }

  v8 = *a1;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__str = 0u;
  v22 = 0u;
  memset(buffer, 0, sizeof(buffer));
  v9 = sub_100045BAC(a2, buffer);
  if (v9)
  {
    if (v9 == 3)
    {
      return 0;
    }

    snprintf(__str, 0x80uLL, "com.apple.xpc.launchd.unmanaged.confusing.%d.%d");
  }

  else
  {
    snprintf(__str, 0x80uLL, "com.apple.xpc.launchd.unmanaged.%s.%d");
  }

  v10 = strlen(__str);
  v11 = v10 + 1424;
  v12 = v10 >= 0xFFFFFFFFFFFFFA70;
  result = v10 + 1425;
  v13 = ((v11 == -1) << 63) >> 63 != (v11 == -1);
  if (!v12 && !v13)
  {
    v6 = sub_100014514(result, 0xDA76391FuLL);
    result = strlen(__str);
    if (((result == -1) << 63) >> 63 == (result == -1))
    {
      strlcpy((v6 + 1424), __str, result + 1);
      *(v6 + 248) = sub_10001B5B8(v8);
      *(v6 + 296) = a2;
      sub_10003467C(v8, v6);
      sub_100020018(v6, 5, "added unmanaged active", v14, v15, v16, v17, v18, v19);
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A148(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, xpc_object_t *a6, _BYTE *a7)
{
  v92 = a1;
  v14 = sub_100039F7C(&v92, *(a2 + 20), 1);
  if (v14)
  {
    v15 = v14;
    if (*(a1 + 976))
    {
      v16 = *(a1 + 976);
    }

    else
    {
      v16 = a1;
    }

    if ((a4 & 2) == 0)
    {
      if ((a4 & 0x10) != 0)
      {
        if (*(v14 + 296))
        {
          v25 = 45;
          goto LABEL_55;
        }

        v17 = sub_100033138(v14, v14, a3);
        if (!v17)
        {
          v17 = sub_100033184(v16, v15, a3);
        }

        v25 = sub_10004C1C0(v17, v38, v39, v40, v41, v42, v43, v44);
        if (v25)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if ((*(v14 + 369) & 2) == 0)
        {
          goto LABEL_39;
        }

        v17 = *(v14 + 184);
        if (!v17)
        {
          goto LABEL_39;
        }

        while ((*(v17 + 88) & 0x40) != 0 || !sub_100016A6C((v17 + 168), a3))
        {
          v17 = *(v17 + 16);
          if (!v17)
          {
            goto LABEL_39;
          }
        }

        if (sub_10004C1C0(v17, v18, v19, v20, v21, v22, v23, v24))
        {
LABEL_39:
          v58 = sub_100033094(v16, a3);
          if (!v65)
          {
            v66 = v58;
            v67 = sub_10004BFA4(v58, 2, v59, v60, v61, v62, v63, v64);
            if (!sub_1000344C4(v67))
            {
              if (*(v66 + 72))
              {
                sub_10002C908(v16, 3, "Service %s tried to register for aliased endpoint: %s", v68, v69, v70, v71, v72, v15 - 112);
              }

              else
              {
                if ((a4 & 0x200) == 0 && ((a4 >> 8) & 1) != *(v66 + 88) >> 7)
                {
                  v91 = v16;
                  sub_10002C908(v16, 3, "Preventing %s from registering for %s due to non-launching property mismatch", v68, v69, v70, v71, v72, v15 - 112);
                  goto LABEL_43;
                }

                if (sub_10004CC54(v66) == v15)
                {
                  if (a5)
                  {
                    sub_10002C908(v16, 3, "Service tried to register a port for an endpoint declared in its launchd.plist(5): service = %s, endpoint = %s", v75, v76, v77, v78, v79, v15 - 112);
                    v25 = 56;
                    goto LABEL_55;
                  }

                  v91 = v16;
                  v83 = sub_10004C1C0(v66, v73, v74, v75, v76, v77, v78, v79);
                  if (v83 != 3)
                  {
                    v25 = v83;
                    if (v83)
                    {
                      goto LABEL_55;
                    }

                    *(v15 + 368) |= 0x2000u;
                    *(v66 + 88) |= 4u;
                    if (a6)
                    {
                      v90 = sub_10004C9DC(v66, 4, v84, v85, v86, v87, v88, v89);
                      *a6 = xpc_retain(v90);
                    }

                    if (a7)
                    {
                      *a7 = *(v66 + 88) >> 7;
                    }

                    goto LABEL_36;
                  }

LABEL_43:
                  v25 = 1;
                  if (!sub_10001A64C(a2, "mach-register", 1))
                  {
LABEL_55:
                    sub_10003467C(a1, v15);
                    sub_10003A664(a1, a3, a4, a2);
                    goto LABEL_56;
                  }

                  if (*(v15 + 300) == 32766)
                  {
                    v25 = 12;
                    goto LABEL_55;
                  }

                  if (a5)
                  {
                    xpc_retain(a5);
                  }

                  else
                  {
                    sub_10000B654(0x12u, 2u, 0);
                    a5 = xpc_mach_send_create_with_disposition();
                  }

                  v82 = sub_10004C144(v15, a3, a5, sub_10002EDF0, v15);
                  if (a6)
                  {
                    *a6 = a5;
                  }

                  else
                  {
                    xpc_release(a5);
                  }

                  v82[88] |= 4u;
                  sub_10002F03C(v91, v15, v82, 1);
                  sub_1000340D0(v91, v82);
LABEL_36:
                  sub_10003467C(a1, v15);
                  sub_10003467C(a1, v15);
                  v25 = 0;
LABEL_56:
                  sub_100033864(a1, v15, v52, v53, v54, v55, v56, v57);
                  return v25;
                }

                sub_10002C908(v16, 3, "Service %s tried to register for endpoint %s already registered by owner: %s", v75, v76, v77, v78, v79, v15 - 112);
              }

LABEL_54:
              v25 = 1;
              goto LABEL_55;
            }

            *(v66 + 88) |= 0x40u;
          }

          v91 = v16;
          if (a4)
          {
            goto LABEL_43;
          }

          goto LABEL_54;
        }

        *(v15 + 368) |= 0x2000u;
      }

      *(v17 + 88) |= 4u;
      if (a6)
      {
        v81 = sub_10004C9DC(v17, 4, v45, v46, v47, v48, v49, v50);
        *a6 = xpc_retain(v81);
      }

      goto LABEL_36;
    }

    if (sub_10001A64C(a2, "mach-register", 2))
    {
      for (i = *(v15 + 168); i; i = *(i + 16))
      {
        if ((*(i + 88) & 0x40) == 0 && sub_100016A6C((i + 168), a3))
        {
          v37 = sub_10004BFA4(i, 2, v31, v32, v33, v34, v35, v36);
          if (!sub_1000344C4(v37))
          {
            v25 = 37;
            goto LABEL_55;
          }

          *(i + 88) |= 0x40u;
        }
      }

      if (a5)
      {
        xpc_retain(a5);
      }

      else
      {
        sub_10000B654(0x12u, 6u, 0);
        a5 = xpc_mach_send_create_with_disposition();
      }

      v51 = sub_10004C144(v15, a3, a5, sub_10002EDF0, v15);
      if (a6)
      {
        *a6 = a5;
      }

      else
      {
        xpc_release(a5);
      }

      v51[88] |= 5u;
      sub_10002F03C(v16, v15, v51, 2);
      goto LABEL_36;
    }

    v25 = 1;
    sub_1000304FC(a1, a2, 1, "pid-local registration");
    v26 = a1;
    v27 = a3;
    v28 = a4;
    v29 = a2;
  }

  else
  {
    v25 = 113;
    v26 = a1;
    v27 = a3;
    v28 = a4;
    v29 = a2;
  }

  sub_10003A664(v26, v27, v28, v29);
  return v25;
}

void sub_10003A664(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  memset(v11, 0, sizeof(v11));
  sub_100045C2C(a4, v11);
  xpc_strerror();
  sub_10002C908(a1, 4, "failed activation: name = %s, flags = 0x%llx, requestor = %s[%d], error = %d: %s", v6, v7, v8, v9, v10, a2);
}

uint64_t sub_10003A71C(uint64_t a1, void *a2)
{
  result = sub_100046A64(a1);
  if (result)
  {
    result = xpc_dictionary_get_array(result, "com.apple.private.xpc.launchd.enable-disable-system-services");
    if (result)
    {
      v4 = result;
      if (xpc_get_type(result) != &_xpc_type_array || xpc_get_type(a2) != &_xpc_type_array)
      {
        sub_100046CAC("Given object not of required type.");
      }

      count = xpc_array_get_count(v4);
      v6 = xpc_array_get_count(a2);
      if (count)
      {
        v7 = v6;
        if (v6)
        {
          v8 = 0;
LABEL_8:
          result = xpc_array_get_string(a2, v8);
          if (result)
          {
            v9 = result;
            v10 = 0;
            v11 = 1;
            while (1)
            {
              result = xpc_array_get_string(v4, v11 - 1);
              if (!result)
              {
                break;
              }

              v12 = strcmp(v9, result);
              v10 |= v12 == 0;
              if (v12)
              {
                if (v11++ < count)
                {
                  continue;
                }
              }

              if ((v10 & 1) == 0)
              {
                return 0;
              }

              ++v8;
              result = 1;
              if (v8 != v7)
              {
                goto LABEL_8;
              }

              return result;
            }
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10003A840(void *a1, void *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  for (i = a1[19]; i; i = *(i + 16))
  {
    if ((*(i + 88) & 0x40) == 0)
    {
      xpc_dictionary_set_mach_send();
    }
  }

  for (j = a1[20]; j; j = *(j + 16))
  {
    if ((*(j + 88) & 0x40) == 0)
    {
      xpc_dictionary_set_mach_send();
    }
  }

  if (xpc_dictionary_get_count(v4))
  {
    xpc_dictionary_set_value(a2, "MachServices", v4);
  }

  xpc_release(v4);
  v7 = xpc_dictionary_create(0, 0, 0);
  for (k = a1[21]; k; k = *(k + 16))
  {
    if ((*(k + 88) & 0x40) == 0)
    {
      xpc_dictionary_set_mach_send();
    }
  }

  if (xpc_dictionary_get_count(v7))
  {
    xpc_dictionary_set_value(a2, "PerJobMachServices", v7);
  }

  xpc_release(v7);
  v9 = xpc_dictionary_create(0, 0, 0);
  for (m = a1[24]; m; m = *(m + 16))
  {
    v13 = 0;
    v14 = 0;
    v11 = xpc_array_create(0, 0);
    sub_10001E940(m, &v14, &v13);
    if (v13)
    {
      for (n = 0; n < v13; ++n)
      {
        xpc_array_set_fd(v11, 0xFFFFFFFFFFFFFFFFLL, *(v14 + 4 * n));
      }
    }

    xpc_dictionary_set_value(v9, (m + 216), v11);
    xpc_release(v11);
  }

  if (xpc_dictionary_get_count(v9))
  {
    xpc_dictionary_set_value(a2, "Sockets", v9);
  }

  xpc_release(v9);
}

uint64_t sub_10003AA24(uint64_t a1, const char *a2, void *a3)
{
  if (!sub_10001B984(a2))
  {
    goto LABEL_7;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v6 + 1016);
  v9 = 124;
  if (v8 & 2) != 0 || (v8)
  {
    goto LABEL_6;
  }

  v10 = (*(*(v6 + 112) + 104))(v6, 4, 4, *(v6 + 120), v7, 0, 0);
  if (!v10)
  {
LABEL_7:
    type = xpc_get_type(a3);
    if (type == &_xpc_type_string)
    {
      v16 = *(a1 + 32);
      string_ptr = xpc_string_get_string_ptr(a3);
      v12 = v16;
      v13 = a2;
      v15 = 1;
    }

    else
    {
      if (type != &_xpc_type_null)
      {
        return 1;
      }

      v12 = *(a1 + 32);
      v13 = a2;
      string_ptr = 0;
      v15 = 0;
    }

    sub_10003AB10(v12, v13, string_ptr, v15);
    return 1;
  }

  v9 = v10;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
LABEL_6:
  sub_1000304FC(v6, v7, v9, "set dyld environment variable");
  return 1;
}

void sub_10003AB10(uint64_t a1, char *__s, const char *a3, uint64_t a4)
{
  v8 = (a1 + 96);
  v9 = (a1 + 96);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (sub_10001B8F8(v9, __s))
    {
      v10 = *v9;
      v11 = v9[1];
      if (*v9)
      {
        v10[1] = v11;
      }

      *v11 = v10;
      *v9 = -1;
      v9[1] = -1;
      j__free(v9);
      break;
    }
  }

  if (a3)
  {
    v19 = 0;
    v12 = sub_10001B708(__s, a3, a4, &v19, 0);
    if (v12)
    {
      v18 = *v8;
      *v12 = *v8;
      if (v18)
      {
        *(v18 + 1) = v12;
      }

      *v8 = v12;
      *(v12 + 1) = v8;
    }

    else
    {
      sub_10002C908(a1, 3, "Service tried to %s global environment variable with reserved name: %s", v13, v14, v15, v16, v17, "set");
    }
  }
}

void sub_10003AC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002C908(a1, 65540, "Wipe them out. All of them.", a4, a5, a6, a7, a8, v18[0]);
  sub_1000470CC(5, "starting obliteration");
  byte_10007F135 = 1;
  qword_10007E7C8 = dispatch_group_create();
  dispatch_group_enter(qword_10007E7C8);
  sub_10001B5B8(a1);
  v10 = qword_10007E7C8;
  v11 = sub_1000157D8();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_10003AD2C;
  v18[3] = &unk_100079370;
  v18[4] = a1;
  v18[5] = a2;
  dispatch_group_notify(v10, v11, v18);
  sub_10003ADC8(a1, qword_10007E7C8, v12, v13, v14, v15, v16, v17);
  byte_10007F0F9 = 1;
  byte_10007F051 = 1;
  dispatch_group_leave(qword_10007E7C8);
}

void sub_10003AD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 40);
  sub_10002C908(*(a1 + 32), 5, "obliteration complete, sending reply", a4, a5, a6, a7, a8, v11);
  if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
  {
    _os_assumes_log_ctx();
  }

  sub_10001B690(*(a1 + 32));
  v10 = *(a1 + 40);

  xpc_release(v10);
}

void sub_10003ADC8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 328);
  if (v10)
  {
    do
    {
      v11 = *(v10 + 104);
      sub_10002C908(a1, 5, "obliterating semi-active service: %s", a4, a5, a6, a7, a8, v10 - 112);
      v12 = sub_100023BF8(v10);
      if ((v12 - 36) >= 2)
      {
        if (v12 != 89)
        {
          sub_1000441E0("inconsistency between domain and service semi-active state during obliterate");
        }
      }

      else
      {
        dispatch_group_enter(a2);
        *(v10 + 368) |= 0x4000u;
      }

      v10 = v11;
    }

    while (v11);
  }

  for (i = 0; i != 13; ++i)
  {
    for (j = *(a1 + 544 + 8 * i); j; j = *(j + 88))
    {
      if (sub_100023F20(j) == dword_10007E8F8)
      {
        sub_10002C908(a1, 5, "skipping over obliterator: %s", v15, v16, v17, v18, v19, j - 112);
      }

      else
      {
        sub_10002C908(a1, 5, "obliterating active service: %s", v15, v16, v17, v18, v19, j - 112);
        v20 = sub_100023BF8(j);
        if (v20 > 0x25 || ((1 << v20) & 0x2000010001) == 0)
        {
          sub_1000441E0("failed to stop active service %s: %d", (j + 1424), v20);
        }

        dispatch_group_enter(a2);
        *(j + 368) |= 0x4000u;
      }
    }
  }

  sub_100032438(a1, a2, a3, a4, a5, a6, a7, a8, v22);
  for (k = *(a1 + 320); k; k = *(k + 16))
  {
    sub_10003ADC8(k, a2);
  }
}

uint64_t sub_10003AF84(uint64_t a1, FILE *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {

    return sub_10003AFE8(a2, v3);
  }

  else
  {
    for (i = 0; i != 9; ++i)
    {
      result = sub_10003AFE8(a2, i);
    }
  }

  return result;
}

uint64_t sub_10003AFE8(FILE *a1, int a2)
{
  v11 = -2;
  v12 = -2;
  sub_1000461D4(a2, &v11, &v12);
  result = sub_100046468(a2);
  if (result)
  {
    v10 = result;
    *__str = 0u;
    v16 = 0u;
    if (v12 == -1)
    {
      strcpy(__str, "unlimited");
    }

    else
    {
      snprintf(__str, 0x20uLL, "%lld", v12);
    }

    *v13 = 0u;
    v14 = 0u;
    if (v11 == -1)
    {
      strcpy(v13, "unlimited");
    }

    else
    {
      snprintf(v13, 0x20uLL, "%lld", v11);
    }

    return sub_100049ECC(a1, 1, "%-12s%-15s%-15s", v5, v6, v7, v8, v9, v10, v13, __str);
  }

  return result;
}

xpc_type_t sub_10003B11C(uint64_t a1, FILE *a2)
{
  v4 = xpc_dictionary_get_BOOL(*(a1 + 32), "version");
  v5 = xpc_dictionary_get_BOOL(*(a1 + 32), "variant");
  v6 = xpc_dictionary_get_BOOL(*(a1 + 32), "disabled");
  v7 = xpc_dictionary_get_BOOL(*(a1 + 32), "cache");
  if (v4)
  {
    v13 = off_10007DC88;
LABEL_5:
    v56 = *v13;
    v14 = "%s";
    return sub_100049ECC(a2, 0, v14, v8, v9, v10, v11, v12, v56);
  }

  if (v5)
  {
    v13 = off_10007DC90;
    goto LABEL_5;
  }

  if (v7)
  {
    if (sub_10001B020())
    {
      v21 = "system services must be in cache";
    }

    else
    {
      v21 = "disk will be searched for uncached services";
    }

    sub_100049ECC(a2, 0, v21, v16, v17, v18, v19, v20);
    if (qword_10007F038)
    {
      sub_100049E5C(a2, 0, "cached daemons = {", v22, v23, v24, v25, v26);
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 0x40000000;
      v57[2] = sub_10003B3A8;
      v57[3] = &unk_1000793D0;
      v57[4] = a2;
      sub_10004964C(qword_10007F038, v57);
      v27 = "}";
    }

    else
    {
      v27 = "(no daemon cache)";
    }

    sub_100049ECC(a2, 0, v27, v22, v23, v24, v25, v26);
    if (qword_10007F040)
    {
      sub_100049F4C(a2, v29, v30, v31, v32, v33, v34, v35, v56);
      sub_100049E5C(a2, 0, "framework cache = ", v36, v37, v38, v39, v40);
      sub_100017184(a2, 0, 1, qword_10007F040, v41, v42, v43, v44);
    }

    else
    {
      sub_100049ECC(a2, 0, "(no framework cache)", v31, v32, v33, v34, v35);
    }

    if (qword_10007F048)
    {
      sub_100049F4C(a2, v45, v46, v8, v9, v10, v11, v12, v56);
      sub_100049E5C(a2, 0, "bundle cache = ", v47, v48, v49, v50, v51);
      return sub_100017184(a2, 0, 1, qword_10007F048, v52, v53, v54, v55);
    }

    v14 = "(no bundle cache)";
    return sub_100049ECC(a2, 0, v14, v8, v9, v10, v11, v12, v56);
  }

  v28 = *(a1 + 40);
  if (v6)
  {

    return sub_100034D50(v28, a2, 0, v8, v9, v10, v11, v12);
  }

  else
  {

    return sub_10002F22C(v28, a2);
  }
}