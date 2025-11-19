uint64_t sub_10000CE54(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  result = sub_100001850(a1, a2, a3, a4);
  if (result)
  {

    return sub_100039350(a1, a2, a3, a4);
  }

  return result;
}

void sub_10000CEC0(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, char a10)
{
  if (a3)
  {
    v13 = a5;
    v14 = a4;
    if (!sub_100027D7C(a3, 7, a4, a5, a6, a7, 0x10u, a8, 0x18u))
    {
      v17 = *(a8 + 8);
      if (v17)
      {
        if (v14)
        {
          if (v14 == 1 && v13 == 10 && !sub_10001F974(a2, v17, a9 / *(*(a1 + 8) + 36)))
          {
            sub_10001F568(a2, *(a8 + 8), (*a8 & 0xFFFFFFFFFFFFFFuLL) / *(*(a1 + 8) + 36), *a7 & 0xFFFFFFFFFFFFFFFLL, a10);
          }
        }

        else
        {
          sub_1000071C4(a7, a8);
          if (!v18)
          {
            sub_10001F974(a2, *(a8 + 8), (*a8 & 0xFFFFFFFFFFFFFFuLL) / *(*(a1 + 8) + 36));
          }
        }
      }
    }
  }

  else
  {

    sub_10002797C(a1, a2, 0, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_10000CFF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (HIBYTE(a2))
  {
    sub_10004565C("file extent length %llu does not fit inside %u bits, refusing to repair\n", a2, a3, a4, a5, a6, a7, a8, a2);
    v8 = 92;
    sub_100049C40(0x37E, 92);
  }

  else
  {
    v8 = 0;
    *a1 = a2 | (*(a1 + 7) << 56);
  }

  return v8;
}

uint64_t sub_10000D060(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (result)
    {
      v7 = (result + 48 + 48 * v3);
      v8 = *v7;
      v9 = v7[3];
      if (v8 > v9)
      {
        v4 = v8 + v4 - v9;
      }
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  byte_100080C78 = 0;
  qword_100080C88 = v4;
  if (*(qword_10009BA60 + 54))
  {
    v10 = sub_10000D2AC;
  }

  else
  {
    v10 = nullsub_1;
  }

  if (*(qword_10009BA60 + 54))
  {
    v11 = j__FSKitCheckUpdate;
  }

  else
  {
    v11 = sub_10000D340;
  }

  v12 = nullsub_2;
  if (*(qword_10009BA60 + 54))
  {
    v12 = j__FSKitCheckDone;
  }

  qword_100080CA8 = v10;
  off_100080C98 = v11;
  off_100080CA0 = v12;
  if (a2)
  {
    return v10(a2, a3);
  }

  return result;
}

uint64_t sub_10000D154(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = *(result + 88);
  }

  else
  {
    v2 = 0;
  }

  byte_100080C78 = 1;
  qword_100080C88 = v2;
  if (*(qword_10009BA60 + 54))
  {
    v3 = sub_10000D2AC;
  }

  else
  {
    v3 = nullsub_1;
  }

  if (*(qword_10009BA60 + 54))
  {
    v4 = j__FSKitCheckUpdate;
  }

  else
  {
    v4 = sub_10000D340;
  }

  v5 = nullsub_2;
  if (*(qword_10009BA60 + 54))
  {
    v5 = j__FSKitCheckDone;
  }

  qword_100080CA8 = v3;
  off_100080C98 = v4;
  off_100080CA0 = v5;
  if (a2)
  {
    return v3(a2, 1);
  }

  return result;
}

uint64_t sub_10000D218(uint64_t result, int a2)
{
  if (byte_100080C78 != 1 || a2 != 0)
  {
    v3 = qword_100080C80 + result;
    qword_100080C80 += result;
    if (qword_100080C88)
    {
      v4 = 100 * v3 / qword_100080C88;
      if (dword_100080C90 < v4 && v4 <= 100)
      {
        result = off_100080C98(v4);
        dword_100080C90 = v4;
      }
    }
  }

  return result;
}

uint64_t sub_10000D2AC(uint64_t *a1, uint64_t a2)
{
  v4 = *(qword_10009BA60 + 24);
  v5 = sub_10002DDB4(*qword_10009BA60);
  if (v4 == -1)
  {

    return _FSKitCheckContainerStart(v5, a1, a2);
  }

  else
  {
    v6 = *a1;

    return _FSKitCheckStart(v5, v6);
  }
}

uint64_t sub_10000D37C(uint64_t a1, char *a2, char *a3, int64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v7 = 22;
  if (a2)
  {
    if (a3)
    {
      v9 = a4;
      if ((a4 & 0x8000000000000000) == 0)
      {
        if (a4)
        {
          v12 = a5;
          if (!a5)
          {
            panic("Can't read/write encrypted data to/from block 0!");
          }

          if (a1)
          {
            v15 = *(a1 + 72);
            if (v15)
            {
              v41[1] = v41;
              v16 = *(v15 + 6);
              __chkstk_darwin(a1);
              v42 = (v41 - v18);
              if (v19 >= 8)
              {
                memset(v42, 170, v17);
              }

              __rqtp = xmmword_100076D40;
              pthread_mutex_lock(&stru_100080CB0);
              v20 = dword_10007C044;
              if (!dword_10007C044)
              {
                v41[0] = v12;
                v21 = 200;
                v22 = 200;
                while (1)
                {
                  pthread_mutex_unlock(&stru_100080CB0);
                  nanosleep(&__rqtp, 0);
                  if (!--v21)
                  {
                    if (__rqtp.tv_nsec < 3126)
                    {
                      return 60;
                    }

                    __rqtp.tv_nsec *= 4;
                    v22 >>= 2;
                    v21 = v22;
                  }

                  pthread_mutex_lock(&stru_100080CB0);
                  v20 = dword_10007C044;
                  if (dword_10007C044)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = v21 == 0;
                  }

                  if (v23)
                  {
                    v12 = v41[0];
                    break;
                  }
                }
              }

              dword_10007C044 = v20 - 1;
              pthread_mutex_unlock(&stru_100080CB0);
              if (a2 == a3)
              {
                v24 = sub_10002B43C(0x200uLL, 0x6FED1243uLL);
                if (!v24)
                {
                  v7 = 12;
LABEL_57:
                  sub_10002B400(v24, 512);
LABEL_58:
                  pthread_mutex_lock(&stru_100080CB0);
                  ++dword_10007C044;
                  pthread_mutex_unlock(&stru_100080CB0);
                  return v7;
                }
              }

              else
              {
                v24 = 0;
              }

              v43 = 0;
              v25 = *(a1 + 72);
              v26 = CCCryptorCreateWithMode(a7 ^ 1, 8u, 0, 0, 0, (v25 + 16), *(v25 + 6) >> 1, (v25 + 16 + (*(v25 + 6) >> 1)), *(v25 + 6) >> 1, 0, 0, &v43);
              if (v26)
              {
                sub_10002B374("%s:%d: CCCryptorCreateWithMode failed (E%d)\n", "userfs_data_cryptor", 153, v26);
                v7 = 13;
              }

              else
              {
                v27 = *(a1 + 72);
                bzero(v42, *(v27 + 6));
                if (v9 >= 512)
                {
                  v29 = 0;
                  v30 = *(v27 + 8);
                  v41[0] = v12;
                  if (v30)
                  {
                    v31 = v30 * a6;
                  }

                  else
                  {
                    v31 = v12;
                  }

                  v32 = a3;
                  v33 = a2;
                  while (1)
                  {
                    *v42 = v31 >> 9;
                    v34 = v33;
                    if (a2 == a3)
                    {
                      memcpy(v24, v33, 0x200uLL);
                      v34 = v24;
                    }

                    v35 = a7 ? CCCryptorEncryptDataBlock() : CCCryptorDecryptDataBlock();
                    if (v35)
                    {
                      break;
                    }

                    v31 += 512;
                    v36 = v9 - 512;
                    v33 += 512;
                    v32 += 512;
                    v29 -= 512;
                    v24 = v34;
                    v37 = v9 <= 1023;
                    v9 -= 512;
                    if (v37)
                    {
                      v28 = -v29;
                      v24 = v34;
                      v9 = v36;
                      v12 = v41[0];
                      goto LABEL_45;
                    }
                  }

                  v39 = "Decryption";
                  if (a7)
                  {
                    v39 = "Encryption";
                  }

                  sub_10002B374("%s:%d: %s failed (E%d)\n", "userfs_data_cryptor", 179, v39, v35);
                  v7 = 5;
                }

                else
                {
                  v28 = 0;
LABEL_45:
                  if (v9)
                  {
                    v38 = "decrypt";
                    if (a7)
                    {
                      v38 = "encrypt";
                    }

                    sub_10002B324("%s:%d: Zero'ing excess data to %s: paddr %lld, completed %lld, remaining %zu\n", "userfs_data_cryptor", 189, v38, v12, v28, v9);
                    bzero(&a3[v28], v9);
                  }

                  v7 = 0;
                  v34 = v24;
                }

                CCCryptorRelease(v43);
                v24 = v34;
              }

              if (a2 != a3)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }
          }

          return 13;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v7;
}

uint64_t sub_10000D7DC()
{
  v0 = qword_100080CF0;
  if (!qword_100080CF0)
  {
    v1 = sub_10004FD4C(&qword_100080CF0);
    if (v1 || (v0 = qword_100080CF0) == 0)
    {
      sub_10002B374("%s:%d: lib_get_file_vault_services failed (E%d)\n", "AKS_FV_service", 213, v1);
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10000D854(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a2 + 72);
  if (!a2)
  {
    v10 = a1 + 4;
  }

  v11 = *v10;
  v12 = (a2 + 104);
  v13 = (a2 + 112);
  if (!a2)
  {
    v13 = (a1 + 15);
    v12 = (a1 + 14);
  }

  v14 = *v12;
  v15 = *v13;
  v16 = *(v11 + 8);
  v17 = *(v11 + 32);
  if (v17 >= 0x40)
  {
    v32 = *(v11 + 32);
    sub_100045744("omap (oid 0x%llx): invalid om_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(v11 + 8));
    sub_100049C40(0x16C, -3);
    v17 = *(v11 + 32);
  }

  if ((v17 & 1) != 0 && *(v11 + 36))
  {
    v33 = *(v11 + 36);
    sub_10004565C("omap (oid 0x%llx): invalid om_snap_count (%u), given om_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v18 = 92;
    v19 = 365;
LABEL_20:
    sub_100049C40(v19, 92);
    return v18;
  }

  if (*(v11 + 40) >> 30 == 3 || *(v11 + 40) != 2)
  {
    v34 = *(v11 + 40);
    sub_10004565C("omap (oid 0x%llx): invalid om_tree_type (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v18 = 92;
    v19 = 366;
    goto LABEL_20;
  }

  if (*(v11 + 44) >> 30 == 3 || *(v11 + 44) != 2)
  {
    v35 = *(v11 + 44);
    sub_10004565C("omap (oid 0x%llx): invalid om_snapshot_tree_type (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v18 = 92;
    v19 = 367;
    goto LABEL_20;
  }

  v44 = 0xAAAAAAAAAAAAAAAALL;
  v23 = sub_10002CF5C(a1, a2, &v44);
  if (v23)
  {
    return v23;
  }

  v23 = sub_10003570C(v44, 0, sub_10000DADC, 0, 0, 1);
  if (v23)
  {
    return v23;
  }

  if (*(v11 + 32))
  {
    if (*(v11 + 56))
    {
      v36 = *(v11 + 56);
      v40 = *(v11 + 32);
      sub_10004565C("omap (oid 0x%llx): invalid om_snapshot_tree_oid (0x%llx), given om_flags (0x%x)\n", v24, v25, v26, v27, v28, v29, v30, v16);
      v18 = 92;
      v19 = 368;
      goto LABEL_20;
    }

    if (*(v11 + 64))
    {
      v37 = *(v11 + 64);
      v41 = *(v11 + 32);
      sub_10004565C("omap (oid 0x%llx): invalid om_most_recent_snap (0x%llx), given om_flags (0x%x)\n", v24, v25, v26, v27, v28, v29, v30, v16);
      v18 = 92;
      v19 = 369;
      goto LABEL_20;
    }

    if (*(v11 + 72))
    {
      v38 = *(v11 + 72);
      v42 = *(v11 + 32);
      sub_10004565C("omap (oid 0x%llx): invalid om_pending_revert_min (0x%llx), given om_flags (0x%x)\n", v24, v25, v26, v27, v28, v29, v30, v16);
      v18 = 92;
      v19 = 370;
      goto LABEL_20;
    }

    if (*(v11 + 80))
    {
      v39 = *(v11 + 80);
      v43 = *(v11 + 32);
      sub_10004565C("omap (oid 0x%llx): invalid om_pending_revert_max (0x%llx), given om_flags (0x%x)\n", v24, v25, v26, v27, v28, v29, v30, v16);
      v18 = 92;
      v19 = 371;
      goto LABEL_20;
    }
  }

  if (a2)
  {
    v31 = *(*(a2 + 40) + 8);
  }

  else
  {
    v31 = 0;
  }

  sub_1000422DC(a1, v14, v15 / *(a1[1] + 36), v31, 0x40000000, v16, 0, 11, &_mh_execute_header, &_mh_execute_header >> 32);
  return 0;
}

uint64_t sub_10000DADC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = a3;
  v9 = *(a1 + 8);
  if (*(a3 + 8) > *(v9 + 16))
  {
    v46 = *(a3 + 8);
    sub_10004565C("omap entry (oid 0x%llx): invalid ok_xid (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    v10 = 92;
    v11 = 359;
LABEL_18:
    sub_100049C40(v11, 92);
    return v10;
  }

  if (!a5)
  {
    return 0;
  }

  v16 = *(v9 + 36);
  v17 = *a5;
  if (*a5 >= 0x800)
  {
    v47 = *a5;
    sub_100045744("omap entry (oid 0x%llx): invalid ov_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    sub_100049C40(0x168, -3);
    v17 = *a5;
  }

  v18 = v17 >> 5;
  if (v18 >= 2)
  {
    sub_10004565C("omap entry (oid 0x%llx): invalid crypto key index (%u) given ov_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *v8);
    v10 = 92;
    v11 = 1151;
    goto LABEL_18;
  }

  if (v18 != 1 || a2 && *(*(a2 + 40) + 1096))
  {
LABEL_13:
    if (((v17 >> 8) & 7) >= 2)
    {
      sub_10004565C("omap entry (oid 0x%llx): invalid tweak type (%u) given ov_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *v8);
      v10 = 92;
      v11 = 1231;
      goto LABEL_18;
    }

    v25 = a5[1];
    if (!v25 || (a3 = v25 / v16, v25 % v16))
    {
      v48 = a5[1];
      sub_10004565C("omap entry (oid 0x%llx): invalid ov_size (%u)\n", a2, a3, a4, a5, a6, a7, a8, *v8);
      v10 = 92;
      v11 = 361;
      goto LABEL_18;
    }

    if ((v17 & 1) == 0)
    {
      v26 = *(a5 + 1);
      v27 = *(*(a1 + 8) + 40);
      if (v27 - a3 < v26 || v27 <= a3 || v26 < 1 || v27 <= v26)
      {
        v49 = *(a5 + 1);
        sub_10004565C("omap entry (oid 0x%llx): invalid ov_paddr (%llu)\n", v26, a3, a4, a5, a6, a7, a8, *v8);
        v10 = 92;
        v11 = 362;
        goto LABEL_18;
      }

      if ((v17 & 0xE0) == 0x20)
      {
        v31 = 36;
      }

      else
      {
        v31 = 14;
      }

      if (a2)
      {
        v32 = *(*(a2 + 40) + 8);
      }

      else
      {
        v32 = 0;
      }

      v33 = a2 == 0;
      v34 = a2 != 0;
      if (v33)
      {
        v35 = 13;
      }

      else
      {
        v35 = 3;
      }

      if (v33)
      {
        v31 = 0;
      }

      sub_1000422DC(a1, v26, a3, v32, 0, *v8, v8[1], v35, v31, 1u);
      v36 = sub_10001DC68(v34, *v8, 0);
      if (v36)
      {
        v44 = v36;
        sub_100045744("object (oid 0x%llx): Unable to mark omap entry for omap space verification \n", v37, v38, v39, v40, v41, v42, v43, *v8);
        sub_100049C40(0x3D0, v44);
      }
    }

    return 0;
  }

  sub_10004565C("omap entry (oid 0x%llx): invalid crypto key index (%u) on %s\n", a2, a3, a4, a5, a6, a7, a8, *v8);
  v10 = 92;
  sub_100049C40(0x4B0, 92);
  if (sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) crypto key index? ", v19, v20, v21, v22, v23, v24, *v8))
  {
    *a5 &= 0xFFFFFF1F;
    *a8 = 1;
    v17 = *a5;
    goto LABEL_13;
  }

  return v10;
}

uint64_t sub_10000DDA4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v13 = a2[9];
  v14 = a2[13];
  v15 = a2[14];
  v16 = a2[15];
  v41 = 0;
  if (!*(v13 + 56))
  {
    v19 = 0;
    goto LABEL_5;
  }

  v40[0] = 0xAAAAAAAAAAAAAAAALL;
  v17 = sub_10002D04C(a1, a2, v40);
  if (v17)
  {
    return v17;
  }

  if (*(qword_10009BA60 + 46))
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_10000DFC0;
  }

  v18 = sub_10003570C(v40[0], 0, v29, a3, &v41, 1);
  if (!v18)
  {
    v19 = v41;
    if (HIDWORD(v41))
    {
      sub_10004565C("om: invalid om_snap_count (overflow)\n", a2, a3, a4, a5, a6, a7, a8, v39);
      v18 = 92;
      v30 = 375;
LABEL_28:
      v37 = 92;
      goto LABEL_29;
    }

LABEL_5:
    v20 = *(v13 + 36);
    v21 = v19;
    if (v19 != v20)
    {
      sub_10004565C("om: om_snap_count (%u) is not equal to the number of snapshots found (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *(v13 + 36));
      if (!sub_10004758C(qword_10009BA58, "Fix om_snap_count (oid 0x%llx)? ", v22, v23, v24, v25, v26, v27, *(v13 + 8)))
      {
        v18 = 92;
        v30 = 376;
        goto LABEL_28;
      }

      v21 = v41;
      *(v13 + 36) = v41;
    }

    if (v21)
    {
      v28 = *(a3 + 64);
    }

    else
    {
      v28 = 0;
    }

    if ((*(qword_10009BA60 + 46) & 1) != 0 || *(v13 + 64) == v28)
    {
      if (v19 == v20)
      {
        return 0;
      }
    }

    else
    {
      sub_10004565C("om: om_most_recent_snap (%llu) is not equal to the largest snapshot xid (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *(v13 + 64));
      if (!sub_10004758C(qword_10009BA58, "Fix om_most_recent_snap (oid 0x%llx)? ", v31, v32, v33, v34, v35, v36, *(v13 + 8)))
      {
        v18 = 92;
        v30 = 671;
        goto LABEL_28;
      }

      *(v13 + 64) = v28;
    }

    v40[0] = v14;
    v40[1] = v15;
    v40[2] = v16;
    v18 = sub_100026A10(a1, a2, v13, v40, a9, a10);
    if (!v18)
    {
      sub_100049BF0();
      return v18;
    }

    v30 = 377;
    v37 = v18;
LABEL_29:
    sub_100049C40(v30, v37);
  }

  return v18;
}

uint64_t sub_10000DFC0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a2 + 40);
  v14 = *(v13 + 1000);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v161[2] = v15;
  v161[3] = v15;
  v161[0] = v15;
  v161[1] = v15;
  v159 = 3808;
  v160 = 832;
  v16 = *a5;
  v17 = *a3;
  *(a7 + 64) = *a3;
  *(a2 + 56) = v17;
  if (v16)
  {
    sub_100047FFC(qword_10009BA58, 215, a3, a4, a5, a6, a7, a8, v147);
  }

  else if ((v16 & 2) == 0)
  {
    v18 = v16;
    if (*a3 > *(a1[1] + 16))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_10001DC28(1);
  v19 = *a3;
  if (*a3 > *(a1[1] + 16))
  {
    if (v16)
    {
LABEL_10:
      sub_10004565C("omap snapshot: invalid key (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, v19);
      v22 = 92;
      sub_100049C40(0x174, 92);
LABEL_50:
      v70 = 0;
LABEL_51:
      v81 = *(a2 + 14) & (v16 | v70);
      goto LABEL_52;
    }

    v13 = *(a2 + 40);
LABEL_9:
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v176 + 15) = v20;
    v176[0] = v20;
    v175 = v20;
    v174 = v20;
    v173 = v20;
    v172 = v20;
    v171 = v20;
    v170 = v20;
    v169 = v20;
    v168 = v20;
    v167 = v20;
    v166 = v20;
    *&v165[49] = v20;
    *&v165[33] = v20;
    *&v165[17] = v20;
    *&v165[1] = v20;
    v21 = *(a7 + 32) + 1;
    *(a7 + 32) = v21;
    v165[0] = 0;
    v149 = *(v13 + 216);
    sub_100047FFC(qword_10009BA58, 214, a3, a4, a5, a6, a7, a8, v21);
    v19 = *a3;
    goto LABEL_10;
  }

  v18 = *a5;
LABEL_12:
  if (v18 >= 4)
  {
    sub_100045744("omap snapshot: invalid oms_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, v18);
    sub_100049C40(0x175, -3);
  }

  if (*(a5 + 4))
  {
    sub_100045744("omap snapshot: invalid oms_pad (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a5 + 4));
    sub_100049C40(0x176, -10);
  }

  if (*(a5 + 8))
  {
    sub_100045744("omap snapshot: oms_oid should be unused but has value (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, *(a5 + 8));
    sub_100049C40(0x312, -2);
  }

  if (v16)
  {
    v22 = 0;
    goto LABEL_50;
  }

  v23 = *(a2 + 40);
  if (v14 && ((*(v23 + 264) & 1) != 0 && !*(v23 + 976) || *(a2 + 24)))
  {
    v24 = *a3;
    v164 = 0;
    memset(v165, 170, 24);
    v25 = sub_100025548(a1, a2, 0, v14, v24, 0, 29, 0, &v164, v165, 0);
    if (v25)
    {
      v22 = v25;
      if (v25 != 2)
      {
LABEL_34:
        if (v164)
        {
          free(v164);
        }

        if (v22)
        {
          goto LABEL_50;
        }

        v23 = *(a2 + 40);
        goto LABEL_38;
      }

      sub_100045614("snap_meta_ext: object (oid 0x%llx): no record for snapshot (xid 0x%llx)\n", v26, v27, v28, v29, v30, v31, v32, v14);
    }

    else
    {
      v33 = v164;
      v34 = *(v164 + 8);
      if (v34 < 2)
      {
        if (v34)
        {
          if (*(v164 + 5) == v24 || (sub_100045744("snap_meta_ext: (0x%llx:0x%llx): invalid xid (0x%llx)\n", v26, v27, v28, v29, v30, v31, v32, v14), sub_100049C40(0x35F, 92), !sub_10004758C(qword_10009BA58, "Fix sme_snap_xid (xid 0x%llx)? ", v35, v36, v37, v38, v39, v40, *(v33 + 5))))
          {
            v22 = 0;
          }

          else
          {
            *(v33 + 5) = v24;
            v22 = 1;
          }

          if (*(v33 + 9))
          {
            sub_100045744("snap_meta_ext: (0x%llx:0x%llx): unknown flags (%u)\n", v26, v27, v28, v29, v30, v31, v32, v14);
            sub_100049C40(0x360, -3);
          }

          if (uuid_is_null(v33 + 48))
          {
            sub_100045744("snap_meta_ext: (0x%llx:0x%llx): sme_uuid is NULL\n", v123, v124, v125, v126, v127, v128, v129, v14);
            sub_100049C40(0x361, 92);
          }

          if (v22)
          {
            v162 = *v165;
            v163 = *&v165[16];
            v22 = sub_100026A10(a1, a2, v164, &v162, *v165, v130);
            if (v22)
            {
              sub_100049C40(0x362, v22);
            }

            else
            {
              sub_100049BF0();
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        sub_100045744("snap_meta_ext: (0x%llx:0x%llx): unknown version (%u)\n", v26, v27, v28, v29, v30, v31, v32, v14);
        sub_100049C40(0x35E, -6);
      }
    }

    v22 = 0;
    goto LABEL_34;
  }

LABEL_38:
  v41 = sub_100039748(v161, a1, a2, *(v23 + 124) & 0xC0000000, *(v23 + 124), 16, 0, *(a1[1] + 36), 0, 0, 0, *(v23 + 152), sub_10003F384);
  v42 = malloc_type_calloc(1uLL, 0x340uLL, 0xAF9E5F5EuLL);
  v43 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x3A80B5D4uLL);
  v50 = v43;
  if (v41 || !v42 || !v43)
  {
    *&v71 = 0xAAAAAAAAAAAAAAAALL;
    *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v176 + 15) = v71;
    v176[0] = v71;
    v175 = v71;
    v174 = v71;
    v173 = v71;
    v172 = v71;
    v171 = v71;
    v170 = v71;
    v169 = v71;
    v168 = v71;
    v167 = v71;
    v166 = v71;
    *&v165[49] = v71;
    *&v165[33] = v71;
    *&v165[17] = v71;
    *&v165[1] = v71;
    v72 = *(a7 + 32) + 1;
    *(a7 + 32) = v72;
    v165[0] = 0;
    v151 = *(*(a2 + 40) + 216);
    sub_100047FFC(qword_10009BA58, 214, v44, v45, v46, v47, v48, v49, v72);
    if (v41)
    {
      v22 = v41;
    }

    else
    {
      v22 = 12;
    }

    v73 = strerror(v22);
    sub_10004565C("unable to init snap_meta tree for extentref_tree_oid lookup: %s\n", v74, v75, v76, v77, v78, v79, v80, v73);
    sub_100049C40(0x2B0, v22);
    if (v50)
    {
      free(v50);
    }

    if (v42)
    {
      free(v42);
    }

    goto LABEL_50;
  }

  *v42 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v51 = sub_1000397B8(v161, 0, 0, v42, &v160, 0x340u, v43, &v159);
  v58 = *a3;
  if (v51)
  {
    v22 = v51;
    *&v59 = 0xAAAAAAAAAAAAAAAALL;
    *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v176 + 15) = v59;
    v176[0] = v59;
    v175 = v59;
    v174 = v59;
    v173 = v59;
    v172 = v59;
    v171 = v59;
    v170 = v59;
    v169 = v59;
    v168 = v59;
    v167 = v59;
    v166 = v59;
    *&v165[49] = v59;
    *&v165[33] = v59;
    *&v165[17] = v59;
    *&v165[1] = v59;
    v60 = *(a7 + 32) + 1;
    *(a7 + 32) = v60;
    v165[0] = 0;
    v150 = *(*(a2 + 40) + 216);
    sub_100047FFC(qword_10009BA58, 214, v52, v53, v54, v55, v56, v57, v60);
    v61 = *a3;
    strerror(v22);
    sub_10004565C("Could not lookup cached extent_ref_tree information at snap xid (0x%llx): %s\n", v62, v63, v64, v65, v66, v67, v68, v61);
    sub_100049C40(0x2B7, 92);
    v69 = 0;
    v70 = 0;
    goto LABEL_104;
  }

  v157 = v42;
  *&v83 = 0xAAAAAAAAAAAAAAAALL;
  *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v176 + 15) = v83;
  v176[0] = v83;
  v175 = v83;
  v174 = v83;
  v173 = v83;
  v172 = v83;
  v171 = v83;
  v170 = v83;
  v169 = v83;
  v168 = v83;
  v167 = v83;
  v166 = v83;
  *&v165[49] = v83;
  *&v165[33] = v83;
  *&v165[17] = v83;
  *&v165[1] = v83;
  ++*(a7 + 32);
  v165[0] = 0;
  __strlcpy_chk();
  v152 = *(*(a2 + 40) + 216);
  sub_100047FFC(qword_10009BA58, 214, v84, v85, v86, v87, v88, v89, *(a7 + 32));
  v156 = *(v50 + 10);
  v91 = *v50;
  v90 = v50[1];
  v158 = v50;
  v70 = *v50 == 0;
  v92 = (a2 + 48);
  v93 = sub_100025548(a1, 0, 0x40000000, v90, 0, 0, 13, 0, (a2 + 48), 0, 0);
  if (v93)
  {
    v22 = v93;
    v69 = 0;
LABEL_57:
    v42 = v157;
    v50 = v158;
    goto LABEL_104;
  }

  v155 = v91;
  v100 = *v92;
  v101 = *v92;
  v102 = (a2 + 48);
  if (!*v92)
  {
    v101 = *(a2 + 40);
  }

  v42 = v157;
  v50 = v158;
  if ((*(v101 + 56) & 0x20) != 0)
  {
    v131 = *a3;
    if (*(v100 + 1024))
    {
      v132 = sub_10004BD04(a1, a2, v131);
      v102 = (a2 + 48);
      v50 = v158;
      if (!v132)
      {
        goto LABEL_61;
      }

      v22 = v132;
    }

    else
    {
      sub_10004565C("Snapshot (0x%llx): apfs_integrity_meta_oid is invalid\n", v94, v131, v95, v96, v97, v98, v99, *a3);
      v22 = 92;
      sub_100049C40(0x387, 92);
    }

    v69 = 0;
    goto LABEL_104;
  }

LABEL_61:
  v153 = v102;
  v154 = sub_100004AE0(v50 + 50, *(v50 + 24));
  if (v155 && !v154)
  {
    if (*(a2 + 9))
    {
      goto LABEL_67;
    }

    v103 = *v153;
    if (!*v153)
    {
      v103 = *(a2 + 40);
    }

    if ((*(v103 + 56) & 0x20) != 0)
    {
LABEL_67:
      sub_10001F400(a2);
    }
  }

  v104 = *(a2 + 48);
  if (*(a2 + 9) == 1)
  {
    *&v105 = 0xAAAAAAAAAAAAAAAALL;
    *(&v105 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v165[32] = v105;
    *&v165[48] = v105;
    *v165 = v105;
    *&v165[16] = v105;
    sub_10000EAF8(v165, a1, a2, *(*(a2 + 40) + 116), 14, *(v104 + 136));
    sub_10001476C(v165, *a3, v106, v107, v108, v109, v110, v111, v148);
    sub_100005298(a1, a2, *a3);
    v112 = sub_1000059E8(a1, a2, *a3);
    if (v112 || (v112 = sub_100038C78(a1, a2, *a3, a7), v112) || (v112 = sub_10003570C(v165, *a3, sub_10000F144, a7, 0, 0), v112) || *(*(a2 + 40) + 1096) && ((v112 = sub_100014830(a1, a2, 0, v113, v114, v115, v116, v117), v112) || (sub_10000EAF8(v165, a1, a2, *(*(a2 + 40) + 1104), 36, *(*(a2 + 48) + 1096)), v112 = sub_10003570C(v165, *a3, sub_10000F144, a7, 0, 0), v112)) || (v112 = sub_10002E53C(a1, a2), v112))
    {
LABEL_102:
      v22 = v112;
      goto LABEL_103;
    }

    v122 = sub_100014884(a1, a2, *a3, 0, v118, v119, v120, v121);
    if (v122 || (v122 = sub_10000583C(a1, a2, *a3), v122))
    {
      v22 = v122;
      v69 = v154;
      goto LABEL_57;
    }

    v104 = *v153;
    v42 = v157;
    v50 = v158;
  }

  v133 = v104;
  v134 = v156;
  if (!v104)
  {
    v133 = *(a2 + 40);
  }

  if ((*(v133 + 56) & 0x20) != 0)
  {
    *&v135 = 0xAAAAAAAAAAAAAAAALL;
    *(&v135 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v165[32] = v135;
    *&v165[48] = v135;
    *v165 = v135;
    *&v165[16] = v135;
    sub_10000EB8C(v165, a1, a2, *(*(a2 + 40) + 1040), *(v104 + 1032));
    v112 = sub_10003570C(v165, 0, sub_100014238, a7, 0, 1);
    v134 = v156;
    if (v112)
    {
      goto LABEL_102;
    }
  }

  if (!v155)
  {
    goto LABEL_101;
  }

  *&v136 = 0xAAAAAAAAAAAAAAAALL;
  *(&v136 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v165[32] = v136;
  *&v165[48] = v136;
  *v165 = v136;
  *&v165[16] = v136;
  sub_10000EBE4(v165, a1, a2, v134, v155);
  v137 = sub_10003570C(v165, 0, sub_10000F144, a7, 0, 1);
  if (!v137)
  {
LABEL_101:
    v112 = sub_10002045C(a2, *a3);
    if (!v112)
    {
      v138 = *(a2 + 40);
      if ((*(v138 + 56) & 0x40) != 0)
      {
        *&v139 = 0xAAAAAAAAAAAAAAAALL;
        *(&v139 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v165[32] = v139;
        *&v165[48] = v139;
        *v165 = v139;
        *&v165[16] = v139;
        sub_10000EC38(v165, a1, a2, *(v138 + 1044), *(*(a2 + 48) + 1048));
        v140 = sub_10003570C(v165, 0, sub_100034204, a7, 0, 1);
        v146 = sub_1000340B4(a1, a2, 0, v141, v142, v143, v144, v145);
        if (v140)
        {
          v22 = v140;
        }

        else
        {
          v22 = v146;
        }
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v22 = v137;
  v70 = 0;
LABEL_103:
  v69 = v154;
LABEL_104:
  free(v50);
  free(v42);
  if (!v69)
  {
    goto LABEL_51;
  }

  v81 = 1;
LABEL_52:
  sub_10002CAEC(a2, v81 & 1);
  if (v22 == 92)
  {
    sub_10001DC28(1);
    sub_1000147E8(a2);
    sub_1000053DC();
    v22 = 0;
    *(a2 + 11) = 1;
    *(a2 + 13) = 1;
  }

  return v22;
}

uint64_t sub_10000EAF8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v6 = *(a3 + 48);
  v7 = v6;
  if (!v6)
  {
    v7 = *(a3 + 40);
  }

  if ((*(v7 + 56) & 0x20) != 0)
  {
    v8 = *(a3 + 16);
  }

  else
  {
    v8 = 0;
  }

  if (!v6)
  {
    v6 = *(a3 + 40);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a3 + 20);
  }

  else
  {
    v9 = 0;
  }

  return sub_100039748(a1, a2, a3, a4 & 0xC0000000, a4, a5, v8, *(*(a2 + 8) + 36), 0, 0, v9, a6, sub_10003F384);
}

uint64_t sub_10000EC94()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return sub_10000ECCC(&v1.tv_sec);
}

uint64_t sub_10000ECCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 / 1000000000;
  v4 = v2 % 1000000000;
  if (*a1 < 0 && v2 >= 1)
  {
    v5 = v3 + 1;
    v4 -= 1000000000;
  }

  else
  {
    v6 = v2 >= 0;
    if (v2 < 0)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = v2 / 1000000000;
    }

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1000000000;
    }

    if (v1 >= 1)
    {
      v4 = v7;
    }

    else
    {
      v5 = v3;
    }
  }

  v8 = v1 + v5;
  if (__OFADD__(v1, v5) || (v9 = 1000000000 * v8, (v8 * 1000000000) >> 64 != (1000000000 * v8) >> 63) || (result = v4 + v9, __OFADD__(v4, v9)))
  {
    if (v1 > 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return result;
}

uint64_t sub_10000EDD8(uint64_t a1, uint64_t *a2, int a3, unint64_t *a4, int a5, int a6, _DWORD *a7)
{
  *a7 = 0;
  if ((a3 - 267) <= 0xFFFFFEFE)
  {
    if (a6)
    {
      v9 = sub_10003EDFC(*a2 >> 60);
      v87 = *a2 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid key length (%u)\n", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = 330;
LABEL_37:
      v61 = 92;
      sub_100049C40(v17, 92);
      return v61;
    }

    return 92;
  }

  v18 = *a2;
  if ((~*a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    if (a6)
    {
      v62 = sub_10003EDFC(v18 >> 60);
      v92 = *a2 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v63, v64, v65, v66, v67, v68, v69, v62);
      v17 = 331;
      goto LABEL_37;
    }

    return 92;
  }

  v23 = *(a2 + 4);
  if (v23 + 10 != a3 && a6 != 0)
  {
    v25 = sub_10003EDFC(v18 >> 60);
    v95 = *(a2 + 4);
    v88 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid name_len (%u), given key length (%u)\n", v26, v27, v28, v29, v30, v31, v32, v25);
    sub_100049C40(0x14D, -9);
    *a7 |= 2u;
    v23 = *(a2 + 4);
  }

  if ((v23 - 257) <= 0xFF00u && a6 != 0)
  {
    v34 = sub_10003EDFC(*a2 >> 60);
    v89 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v96 = *(a2 + 4);
    sub_100045744("%s (id %llu): invalid name_len (%u)\n", v35, v36, v37, v38, v39, v40, v41, v34);
    *a7 |= 2u;
    sub_100049C40(0x14C, -9);
    v23 = *(a2 + 4);
  }

  if (*(a2 + v23 + 9))
  {
    v42 = a6 == 0;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = sub_10003EDFC(*a2 >> 60);
    v99 = *(a2 + 4);
    v90 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v44, v45, v46, v47, v48, v49, v50, v43);
    *a7 |= 1u;
    sub_100049C40(0x14E, -9);
    v23 = *(a2 + 4);
  }

  if (sub_10000F0D0(a2 + 10, v23) && a6)
  {
    v51 = sub_10003EDFC(*a2 >> 60);
    v97 = *(a2 + 4);
    v91 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v52, v53, v54, v55, v56, v57, v58, v51);
    *a7 |= 1u;
    sub_100049C40(0x14F, -9);
  }

  if (a5 != 8)
  {
    if (a6)
    {
      v70 = sub_10003EDFC(*a2 >> 60);
      v93 = *a2 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid value length (%u)\n", v71, v72, v73, v74, v75, v76, v77, v70);
      v17 = 336;
      goto LABEL_37;
    }

    return 92;
  }

  v59 = *a4;
  if (!*a4)
  {
    if (!a6)
    {
      return 92;
    }

LABEL_36:
    v78 = sub_10003EDFC(*a2 >> 60);
    v94 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v98 = *a4;
    sub_10004565C("%s (id %llu): invalid snap_xid (%llu)\n", v79, v80, v81, v82, v83, v84, v85, v78);
    v17 = 337;
    goto LABEL_37;
  }

  v60 = *(*(a1 + 40) + 16);
  if (v59 <= v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = 92;
  }

  if (v59 > v60 && (a6 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v61;
}

uint64_t sub_10000F0D0(UInt8 *bytes, CFIndex numBytes)
{
  v2 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, numBytes, 0x8000100u, 0, kCFAllocatorNull);
  if (v2)
  {
    CFRelease(v2);
    return 0;
  }

  else
  {
    v3 = 92;
    sub_100049C40(0xB7, 92);
  }

  return v3;
}

uint64_t sub_10000F320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 != 8)
  {
    v23 = sub_10003EDFC(v13 >> 60);
    v141 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v24, v25, v26, v27, v28, v29, v30, v23);
    v22 = 313;
    goto LABEL_6;
  }

  if ((v13 & 0xFFFFFFFFFFFFFFFLL) == 0 || (v13 & 0xFFFFFFFFFFFFFFFLL) > *(*(a2 + 40) + 16))
  {
    v14 = sub_10003EDFC(v13 >> 60);
    v140 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 314;
    goto LABEL_6;
  }

  if ((a6 - 307) <= 0xFFFFFEFE)
  {
    v36 = sub_10003EDFC(v13 >> 60);
    v142 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v37, v38, v39, v40, v41, v42, v43, v36);
    v22 = 315;
    goto LABEL_6;
  }

  if (!*(a5 + 8))
  {
    v53 = sub_10003EDFC(v13 >> 60);
    v144 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v154 = *(a5 + 8);
    sub_10004565C("%s (id %llu): invalid sblock_oid (%llu)\n", v54, v55, v56, v57, v58, v59, v60, v53);
    v22 = 317;
    goto LABEL_6;
  }

  v44 = *(a5 + 32);
  if (v44 <= 1)
  {
    v45 = sub_10003EDFC(v13 >> 60);
    v143 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v153 = *(a5 + 32);
    sub_10004565C("%s (id %llu): invalid inum (%llu)\n", v46, v47, v48, v49, v50, v51, v52, v45);
    v22 = 320;
    goto LABEL_6;
  }

  if (v44 <= 0xF && (v44 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v64 = sub_10003EDFC(v13 >> 60);
    v145 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v155 = *(a5 + 32);
    sub_100045744("%s (id %llu): invalid inum (%llu)\n", v65, v66, v67, v68, v69, v70, v71, v64);
    sub_100049C40(0x141, -2);
    v44 = *(a5 + 32);
  }

  if (*(a7 + 40) < v44 + 1)
  {
    *(a7 + 40) = v44 + 1;
  }

  if (!*(a5 + 40))
  {
    v88 = sub_10003EDFC(*a3 >> 60);
    v147 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v157 = *(a5 + 40);
    sub_10004565C("%s (id %llu): invalid extentref_tree_type (0x%x)\n", v89, v90, v91, v92, v93, v94, v95, v88);
    v22 = 322;
    goto LABEL_6;
  }

  if (*(a5 + 44) >= 4u)
  {
    v72 = sub_10003EDFC(*a3 >> 60);
    v156 = *(a5 + 44);
    v146 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v73, v74, v75, v76, v77, v78, v79, v72);
    sub_100049C40(0x143, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v80, v81, v82, v83, v84, v85, *(a5 + 44) & 0xFC))
      {
        *(a5 + 44) &= 3u;
        *a8 = 1;
      }
    }
  }

  v86 = *(a5 + 48);
  if (v86 + 50 == a6)
  {
    v87 = 0;
  }

  else
  {
    v96 = sub_10003EDFC(*a3 >> 60);
    v158 = *(a5 + 48);
    v148 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid name_len (%u), given value length (%u)\n", v97, v98, v99, v100, v101, v102, v103, v96);
    sub_100049C40(0x145, 92);
    v86 = *(a5 + 48);
    v87 = 2 * (v86 + 50 > a6);
  }

  if ((v86 - 257) <= 0xFF00u)
  {
    v104 = sub_10003EDFC(*a3 >> 60);
    v149 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v159 = *(a5 + 48);
    sub_10004565C("%s (id %llu): invalid name_len (%u)\n", v105, v106, v107, v108, v109, v110, v111, v104);
    sub_100049C40(0x144, 92);
    v86 = *(a5 + 48);
    v87 = 2;
  }

  if (*(a5 + 50 + v86 - 1))
  {
    v112 = sub_10003EDFC(*a3 >> 60);
    v162 = *(a5 + 48);
    v150 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v113, v114, v115, v116, v117, v118, v119, v112);
    v87 |= 1u;
    sub_100049C40(0x146, -9);
    v86 = *(a5 + 48);
  }

  if (sub_10000F0D0((a5 + 50), v86))
  {
    v120 = sub_10003EDFC(*a3 >> 60);
    v160 = *(a5 + 48);
    v151 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v121, v122, v123, v124, v125, v126, v127, v120);
    LOBYTE(v87) = v87 | 1;
    sub_100049C40(0x147, -9);
  }

  else if (!v87)
  {
LABEL_41:
    v31 = sub_10002BC8C(a3, a5);
    if (v31)
    {
      goto LABEL_7;
    }

    ++*(a7 + 32);
    v128 = *(a5 + 8);
    v129 = *(*(a1 + 8) + 40);
    v130 = *a3;
    if (v129 - 1 >= v128 && v129 >= 2 && v128 >= 1 && v129 > v128)
    {
      sub_1000422DC(a1, v128, 1, 0, 0x40000000, v128, v130 & 0xFFFFFFFFFFFFFFFLL, 13, &_mh_execute_header, &_mh_execute_header >> 32);
      return 0;
    }

    v131 = sub_10003EDFC(v130 >> 60);
    v152 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v161 = *(a5 + 8);
    sub_10004565C("%s (id %llu): invalid sblock_oid (%llu)\n", v132, v133, v134, v135, v136, v137, v138, v131);
    v22 = 1244;
LABEL_6:
    v31 = 92;
    sub_100049C40(v22, 92);
LABEL_7:
    sub_100045938(a2, a3, a4, a5, a6, v32, v33, v34, v139);
    return v31;
  }

  if (a6 == 50)
  {
    v31 = 92;
  }

  else
  {
    v31 = sub_10002B61C(a1, a2, a3, a5, a6, v87, a8);
  }

  if ((v87 & 2) == 0 || !v31)
  {
    goto LABEL_41;
  }

  return v31;
}

uint64_t sub_10000F85C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  if (a4 != 8)
  {
    v31 = sub_10003EDFC(v12 >> 60);
    v105 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v32, v33, v34, v35, v36, v37, v38, v31);
    sub_100045938(a2, a3, a4, a5, a6, v39, v40, v41, v102);
    v42 = 92;
    v43 = 205;
LABEL_16:
    v55 = 92;
    goto LABEL_17;
  }

  if (a6 != 20)
  {
    v44 = sub_10003EDFC(v12 >> 60);
    v106 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v45, v46, v47, v48, v49, v50, v51, v44);
    sub_100045938(a2, a3, 8, a5, a6, v52, v53, v54, v103);
    v42 = 92;
    v43 = 206;
    goto LABEL_16;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFLL;
  v15 = *a5;
  v16 = *a5 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *(*(a1 + 8) + 40);
  if (v17 > v16 && v14 != 0 && v17 > v14 && v17 - v16 >= v14)
  {
    v29 = 0;
  }

  else
  {
    v21 = sub_10003EDFC(v12 >> 60);
    v104 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): Bad phys_block_num + len (%llu) for physical extent record\n", v22, v23, v24, v25, v26, v27, v28, v21);
    sub_100049C40(0x467, 92);
    v29 = 1;
  }

  v57 = v15 >> 60;
  if (!v16)
  {
    v58 = sub_10003EDFC(*a3 >> 60);
    v107 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): length is 0\n", v59, v60, v61, v62, v63, v64, v65, v58);
    sub_100049C40(0xCF, 92);
    v29 = 1;
  }

  if (v57 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v66 = sub_10003EDFC(*a3 >> 60);
    v108 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): unknown kind (%u)\n", v67, v68, v69, v70, v71, v72, v73, v66);
    sub_100049C40(0x33A, 92);
    v29 = v29 | 2;
  }

  v74 = *(a5 + 1);
  if (!v74)
  {
    v85 = sub_10003EDFC(*a3 >> 60);
    v110 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): owning_obj_id is 0\n", v86, v87, v88, v89, v90, v91, v92, v85);
    sub_100049C40(0xD0, 92);
    v29 = v29 | 4;
LABEL_34:
    sub_100045938(a2, a3, 8, a5, 20, a6, a7, a8, v101);
    goto LABEL_35;
  }

  if (v57 == 2 && v74 != -1)
  {
    v75 = sub_10003EDFC(*a3 >> 60);
    v109 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v112 = *(a5 + 1);
    sub_10004565C("%s (id %llu): invalid owning_obj_id (%llu) for update extent\n", v76, v77, v78, v79, v80, v81, v82, v75);
    v83 = 1230;
    v84 = 92;
LABEL_32:
    sub_100049C40(v83, v84);
    goto LABEL_33;
  }

  if (v57 == 1 && v74 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v93 = sub_10003EDFC(*a3 >> 60);
    *(a5 + 1);
    v111 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): owning_obj_id is '%s'\n", v94, v95, v96, v97, v98, v99, v100, v93);
    v83 = 988;
    v84 = -2;
    goto LABEL_32;
  }

LABEL_33:
  if (v29)
  {
    goto LABEL_34;
  }

LABEL_35:
  v42 = sub_10001FCF8(a1, a2, a3, a5, v29, a6, a7, a8);
  if (!v42)
  {
    return v42;
  }

  v43 = 827;
  v55 = v42;
LABEL_17:
  sub_100049C40(v43, v55);
  return v42;
}

uint64_t sub_10000FB74(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 != 8)
  {
    v25 = sub_10003EDFC(v13 >> 60);
    v358 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v23 = 92;
    v24 = 218;
    goto LABEL_5;
  }

  v14 = (v13 & 0xFFFFFFFFFFFFFFFLL);
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v15 = sub_10003EDFC(v13 >> 60);
    v357 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v16, v17, v18, v19, v20, v21, v22, v15);
    v23 = 92;
    v24 = 219;
LABEL_5:
    v33 = 92;
LABEL_6:
    sub_100049C40(v24, v33);
LABEL_7:
    sub_100045938(a2, a3, a4, a5, a6, v34, v35, v36, v354);
    return v23;
  }

  v39 = a7;
  v41 = (v14 - 4);
  if (v14 <= 0xF && (v14 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v43 = sub_10003EDFC(v13 >> 60);
    v359 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v44, v45, v46, v47, v48, v49, v50, v43);
    sub_100049C40(0xDC, -2);
  }

  if (v39[5] <= v14)
  {
    v39[5] = v14 + 1;
  }

  if (a6 <= 0x5B)
  {
    v51 = sub_10003EDFC(*a3 >> 60);
    v360 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v52, v53, v54, v55, v56, v57, v58, v51);
    v23 = 92;
    v24 = 221;
    goto LABEL_5;
  }

  v59 = *(a5 + 80) >> 12;
  if (v59 <= 0xE)
  {
    v60 = 1 << v59;
    if ((v60 & 0x1556) != 0)
    {
      goto LABEL_20;
    }

    if ((v60 & 0x4001) != 0)
    {
      v95 = sub_10003EDFC(*a3 >> 60);
      v365 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v395 = *(a5 + 80) & 0xF000;
      sub_10004565C("%s (id %llu): invalid type (0%o)\n", v96, v97, v98, v99, v100, v101, v102, v95);
      v23 = 92;
      v24 = 222;
      goto LABEL_5;
    }
  }

  v151 = sub_10003EDFC(*a3 >> 60);
  v371 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v401 = *(a5 + 80) & 0xF000;
  sub_100045744("%s (id %llu): invalid type (0%o)\n", v152, v153, v154, v155, v156, v157, v158, v151);
  sub_100049C40(0xDF, -5);
LABEL_20:
  if (!*a5)
  {
    v87 = sub_10003EDFC(*a3 >> 60);
    v364 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v394 = *a5;
    sub_10004565C("%s (id %llu): invalid parent_id (%llu)\n", v88, v89, v90, v91, v92, v93, v94, v87);
    v23 = 92;
    v24 = 224;
    goto LABEL_5;
  }

  if ((*a5 - 16) >= 0xFFFFFFFFFFFFFFF4)
  {
    v61 = sub_10003EDFC(*a3 >> 60);
    v361 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v391 = *a5;
    sub_100045744("%s (id %llu): invalid parent_id (%llu)\n", v62, v63, v64, v65, v66, v67, v68, v61);
    sub_100049C40(0xE1, -2);
  }

  if (v41 <= 0xFFFFFFFFFFFFFFFDLL && *a5 == 1)
  {
    v69 = sub_10003EDFC(*a3 >> 60);
    v362 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v392 = *a5;
    sub_10004565C("%s (id %llu): invalid parent_id (%llu) for regular directory\n", v70, v71, v72, v73, v74, v75, v76, v69);
    sub_100049C40(0xE2, 92);
    v434 = 0xAAAAAAAAAAAAAAAALL;
    v433 = -21846;
    v77 = sub_100040474((a5 + 92), a6 - 92, 4, &v434, &v433, 0, 0);
    if ((*(a5 + 80) & 0xF000) == 0x4000 && !v77 && !strncmp(v434, ".DocumentRevisions-V100", v433) && sub_10004758C(qword_10009BA58, "Fix inode_val: parent_id (%llu)? ", a3, a4, a5, a6, a7, a8, *a5))
    {
      *a5 = 2;
      *a8 = 1;
    }

    else
    {
      *(a2 + 13) = 1;
    }
  }

  v78 = *a5;
  if (v14 == 2)
  {
    if (v78 != 1)
    {
      v159 = sub_10003EDFC(*a3 >> 60);
      v372 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v402 = *a5;
      sub_10004565C("%s (id %llu): invalid parent_id (%llu) for root directory\n", v160, v161, v162, v163, v164, v165, v166, v159);
      v23 = 92;
      v24 = 227;
      goto LABEL_5;
    }

LABEL_37:
    v103 = 2;
    goto LABEL_39;
  }

  if (v14 == 3)
  {
    if (v78 != 1)
    {
      v79 = sub_10003EDFC(*a3 >> 60);
      v363 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v393 = *a5;
      sub_10004565C("%s (id %llu): invalid parent_id (%llu) for private directory\n", v80, v81, v82, v83, v84, v85, v86, v79);
      v23 = 92;
      v24 = 228;
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  v103 = v78 + 1;
LABEL_39:
  if (v39[5] < v103)
  {
    v39[5] = v103;
  }

  v104 = *(a5 + 8);
  if (!v104)
  {
    LOBYTE(v434) = 0;
    v113 = sub_10003FD88(a1, a2, v39[8], *a3 & 0xFFFFFFFFFFFFFFFLL, &v434);
    if (v113)
    {
      v23 = v113;
      v24 = 1263;
      v33 = v23;
      goto LABEL_6;
    }

    if ((v434 & 1) == 0)
    {
      v192 = sub_10003EDFC(*a3 >> 60);
      v375 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v405 = *(a5 + 8);
      sub_10004565C("%s (id %llu): invalid private_id (%llu)\n", v193, v194, v195, v196, v197, v198, v199, v192);
      v23 = 92;
      v24 = 229;
      goto LABEL_5;
    }

    v104 = *(a5 + 8);
    v41 = (v14 - 4);
  }

  if (v104 == 1)
  {
    v105 = sub_10003EDFC(*a3 >> 60);
    v366 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v396 = *(a5 + 8);
    sub_10004565C("%s (id %llu): invalid private_id (%llu)\n", v106, v107, v108, v109, v110, v111, v112, v105);
    v23 = 92;
    v24 = 1264;
    goto LABEL_5;
  }

  if (v104 <= 0xF && (v104 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v114 = sub_10003EDFC(*a3 >> 60);
    v367 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v397 = *(a5 + 8);
    sub_100045744("%s (id %llu): invalid private_id (%llu)\n", v115, v116, v117, v118, v119, v120, v121, v114);
    sub_100049C40(0xE6, -2);
    v104 = *(a5 + 8);
  }

  v122 = v104 + 1;
  if (v39[5] < v122)
  {
    v39[5] = v122;
  }

  v428 = v41;
  if ((*(a5 + 80) & 0xF000) != 0x4000)
  {
    if ((*(a5 + 56) & 0x80000000) != 0)
    {
      v200 = sub_10003EDFC(*a3 >> 60);
      v376 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v406 = *(a5 + 56);
      sub_10004565C("%s (id %llu): invalid nlink (%d)\n", v201, v202, v203, v204, v205, v206, v207, v200);
      v23 = 92;
      v24 = 236;
      goto LABEL_5;
    }

LABEL_67:
    v167 = *(a5 + 48);
    if (v167 >> 31)
    {
      v168 = sub_10003EDFC(*a3 >> 60);
      v403 = *(a5 + 48);
      v373 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): unknown internal_flags (0x%llx / known flags are: 0x%llx)\n", v169, v170, v171, v172, v173, v174, v175, v168);
      sub_100049C40(0xED, -3);
      v167 = *(a5 + 48);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        v176 = sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", a3, a4, a5, a6, a7, a8, 0);
        v167 = *(a5 + 48);
        if (v176)
        {
          v167 = *(a5 + 48) & 0x7FFFFFFFLL;
          *(a5 + 48) = v167;
          *a8 = 1;
        }
      }
    }

    if ((v167 & 0x800000) != 0)
    {
      if ((*(*(a2 + 40) + 56) & 0x40) != 0)
      {
        v177 = v167 & 8;
        if ((v167 & 8) != 0 && (*(a5 + 80) & 0xF000) == 0x8000)
        {
          sub_100034004(v14, a2, a3, a4, a5, a6, a7, a8);
          v167 = *(a5 + 48);
          goto LABEL_88;
        }
      }

      else
      {
        v177 = v167 & 8;
      }

      v178 = sub_10003EDFC(*a3 >> 60);
      if (v177)
      {
        v404 = *(a5 + 48);
        v421 = *(a5 + 80) & 0xF000;
        v374 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): invalid internal_flags (0x%llx), given type (0%o)\n", v179, v180, v181, v182, v183, v184, v185, v178);
      }

      else
      {
        v377 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v407 = *(a5 + 48);
        sub_10004565C("%s (id %llu): invalid internal_flags (0x%llx), inconsistent protection class\n", v179, v180, v181, v182, v183, v184, v185, v178);
      }

      if (!sub_10004758C(qword_10009BA58, "Fix inode_val: internal_flags (0x%llx)? ", v186, v187, v188, v189, v190, v191, *(a5 + 48)))
      {
        v23 = 92;
        v24 = 972;
        goto LABEL_5;
      }

      v167 = *(a5 + 48) & 0xFFFFFFFFFF7FFFFFLL;
      *(a5 + 48) = v167;
      *a8 = 1;
    }

LABEL_88:
    if ((*(a5 + 80) & 0xF000) != 0x4000 && (v167 & 4) != 0)
    {
      v208 = sub_10003EDFC(*a3 >> 60);
      v408 = *(a5 + 48);
      v422 = *(a5 + 80) & 0xF000;
      v378 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid internal_flags (0x%llx), given type (0%o)\n", v209, v210, v211, v212, v213, v214, v215, v208);
      if (!sub_10004758C(qword_10009BA58, "Fix inode_val: internal_flags (0x%llx)? ", v216, v217, v218, v219, v220, v221, *(a5 + 48)))
      {
        v23 = 92;
        v24 = 238;
        goto LABEL_5;
      }

      v167 = *(a5 + 48) & 0xFFFFFFFFFFFFFFFBLL;
      *(a5 + 48) = v167;
      *a8 = 1;
    }

    if ((v167 & 0x800000) != 0 && (*(*(a2 + 40) + 264) & 0x109) != 0x100)
    {
      v222 = sub_10003EDFC(*a3 >> 60);
      v409 = *(a5 + 48);
      v423 = *(*(a2 + 40) + 264);
      v379 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): invalid internal_flags (0x%llx) given apfs_fs_flags (0x%llx) PFK bit\n", v223, v224, v225, v226, v227, v228, v229, v222);
      sub_100049C40(0x5E5, -3);
      v236 = sub_10004758C(qword_10009BA58, "Fix inode_val: internal_flags (0x%llx)? ", v230, v231, v232, v233, v234, v235, *(a5 + 48));
      v167 = *(a5 + 48);
      if (v236)
      {
        v167 &= ~0x800000uLL;
        *(a5 + 48) = v167;
        *a8 = 1;
      }
    }

    if ((v167 & 0x70000000) != 0 && (*(*(a2 + 40) + 48) & 8) == 0)
    {
      v237 = sub_10003EDFC(*a3 >> 60);
      v410 = *(a5 + 48);
      v424 = *(*(a2 + 40) + 48);
      v380 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): invalid internal_flags (0x%llx) given volume readonly compatible features (0x%llx)\n", v238, v239, v240, v241, v242, v243, v244, v237);
      sub_100049C40(0x5E6, -3);
      v251 = sub_10004758C(qword_10009BA58, "Fix inode_val: internal_flags (0x%llx)? ", v245, v246, v247, v248, v249, v250, *(a5 + 48));
      v167 = *(a5 + 48);
      if (v251)
      {
        v167 &= 0xFFFFFFFF8FFFFFFFLL;
        *(a5 + 48) = v167;
        *a8 = 1;
      }
    }

    if ((v167 & 6) == 4)
    {
      v252 = sub_10003EDFC(*a3 >> 60);
      v381 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v411 = *(a5 + 48);
      sub_100045744("%s (id %llu): invalid internal_flags (0x%llx), (dir-stats origin but not dir-stats maintained)\n", v253, v254, v255, v256, v257, v258, v259, v252);
      sub_100049C40(0x532, -3);
      v167 = *(a5 + 48);
    }

    if ((v167 & 0x20000002) == 0x20000000)
    {
      v260 = sub_10003EDFC(*a3 >> 60);
      v382 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v412 = *(a5 + 48);
      sub_100045744("%s (id %llu): invalid internal_flags (0x%llx), (dir-stats SAF but not dir-stats maintained)\n", v261, v262, v263, v264, v265, v266, v267, v260);
      sub_100049C40(0x533, -3);
    }

    if (*(a5 + 60) >= 8u)
    {
      v268 = sub_10003EDFC(*a3 >> 60);
      v383 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v413 = *(a5 + 60);
      sub_10004565C("%s (id %llu): invalid default_protection_class (%u)\n", v269, v270, v271, v272, v273, v274, v275, v268);
      v23 = 92;
      v24 = 239;
      goto LABEL_5;
    }

    if ((*(a5 + 70) & 0xBF60) != 0)
    {
      v276 = sub_10003EDFC(*a3 >> 60);
      v384 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v414 = *(a5 + 68);
      sub_100045744("%s (id %llu): invalid bsd_flags (0x%x)\n", v277, v278, v279, v280, v281, v282, v283, v276);
      sub_100049C40(0xF0, -3);
    }

    if (*(a5 + 82))
    {
      v284 = sub_10003EDFC(*a3 >> 60);
      v385 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v415 = *(a5 + 82);
      sub_100045744("%s (id %llu): invalid pad1 (0x%hx)\n", v285, v286, v287, v288, v289, v290, v291, v284);
      sub_100049C40(0xF1, -10);
    }

    if ((*(*(a2 + 40) + 57) & 2) != 0 && (*(a5 + 80) & 0xB000 | 0x4000) == 0x6000 && !*(a5 + 84))
    {
      v292 = sub_10003EDFC(*a3 >> 60);
      v386 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v416 = *(a5 + 80);
      sub_100045744("%s (id %llu): zero rdev on char/block device (mode %u)\n", v293, v294, v295, v296, v297, v298, v299, v292);
      sub_100049C40(0x4C0, 92);
    }

    if (*(a5 + 84) && (*(a5 + 50) & 4) == 0)
    {
      if ((*(*(a2 + 40) + 57) & 2) != 0)
      {
        v314 = *(a5 + 80) & 0xF000;
        if (v314 != 0x2000 && v314 != 0x4000 && v314 != 24576)
        {
          v315 = sub_10003EDFC(*a3 >> 60);
          v426 = *(a5 + 48);
          v427 = *(a5 + 80);
          v388 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v418 = *(a5 + 84);
          sub_100045744("%s (id %llu): uncompressed_size/rdev/dir_nlink union field is set (%llu) but inode flags and mode do not indicate it should (flags: 0x%llx, mode %u)\n", v316, v317, v318, v319, v320, v321, v322, v315);
          sub_100049C40(0x4AC, 92);
          if (sub_10004758C(qword_10009BA58, "Clear uncompressed size/rdev/dir_nlink? ", v323, v324, v325, v326, v327, v328, v356))
          {
            *(a5 + 84) = 0;
            *a8 = 1;
          }
        }

        if (*(a5 + 88))
        {
          v329 = sub_10003EDFC(*a3 >> 60);
          v389 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v419 = *(a5 + 88);
          sub_100045744("%s (id %llu): invalid pad2 (0x%x)\n", v330, v331, v332, v333, v334, v335, v336, v329);
          sub_100049C40(0x4C1, -10);
        }
      }

      else
      {
        v300 = sub_10003EDFC(*a3 >> 60);
        v417 = *(a5 + 84);
        v425 = *(a5 + 48);
        v387 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): uncompressed size is set (%llu) but has-uncompressed-size flag is not set (flags: 0x%llx)\n", v301, v302, v303, v304, v305, v306, v307, v300);
        sub_100049C40(0xF2, 92);
        if (sub_10004758C(qword_10009BA58, "Clear uncompressed size? ", v308, v309, v310, v311, v312, v313, v355))
        {
          *(a5 + 84) = 0;
          *a8 = 1;
        }
      }
    }

    v430 = 0u;
    v431 = 0u;
    v429 = 0u;
    v432 = a5;
    v337 = sub_1000149BC(a1, a2, a3, (a5 + 92), (a6 - 92), sub_100014BE8, v39, a8, &v429);
    if (v337 || (v337 = sub_100015CC4(a1, a2, v39, &v429, a3, a8), v337))
    {
      v23 = v337;
      v338 = sub_10003EDFC(*a3 >> 60);
      v390 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid xfields\n", v339, v340, v341, v342, v343, v344, v345, v338);
      goto LABEL_7;
    }

    if (v39[8])
    {
      v346 = 0;
    }

    else
    {
      v346 = (a2 + 768);
    }

    v347 = sub_1000278CC(a1, a2, v346, v14, a5, *(&v429 + 1), v431, *(&v431 + 1));
    if (v347 || (*(a5 + 48) & 0x10) != 0 && (*(a5 + 80) & 0xF000) == 0x8000 && (v430 >= *(&v430 + 1) ? (v350 = v430 - *(&v430 + 1)) : (v350 = 0), !BYTE5(v429) ? (v351 = 0) : (v351 = v431), !BYTE2(v429) ? (v352 = 0) : (v352 = *(&v429 + 1)), v347 = sub_10000164C(v14, a5, a6, v350, v351, v352), v347) || *(&v431 + 1) && (v347 = sub_10003843C(v14, a5, a6, v348, v349, v34, v35, v36), v347))
    {
      v23 = v347;
      goto LABEL_7;
    }

    if ((*(a5 + 48) & 1) == 0)
    {
      v353 = *(a5 + 80) & 0xF000;
      if (v353 == 40960)
      {
        v39 += 2;
      }

      else if (v353 != 0x8000)
      {
        if (v353 == 0x4000)
        {
          if (v428 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_159;
          }

          ++v39;
        }

        else
        {
          v39 += 3;
        }
      }

      ++*v39;
    }

LABEL_159:
    if ((*(*(a2 + 40) + 57) & 2) == 0 || (*(a5 + 50) & 8) == 0)
    {
      return 0;
    }

    v23 = sub_100022D78(a2, v14);
    if (!v23)
    {
      return v23;
    }

    goto LABEL_7;
  }

  v123 = v39[8];
  if (v123)
  {
    v124 = 0;
  }

  else
  {
    v124 = (a2 + 768);
  }

  v23 = sub_10002C1F0(a1, a2, v123, v14, v124, a6, a7, a8);
  if (!v23)
  {
    v125 = *(a5 + 56);
    if (v125 < 0)
    {
      v126 = sub_10003EDFC(*a3 >> 60);
      v368 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v398 = *(a5 + 56);
      sub_100045744("%s (id %llu): invalid nchildren (%d)\n", v127, v128, v129, v130, v131, v132, v133, v126);
      sub_100049C40(0x4BE, -8);
      v125 = *(a5 + 56);
    }

    sub_10002C3BC(v14, v125);
    if ((*(*(a2 + 40) + 57) & 2) != 0)
    {
      v134 = *(a5 + 84);
      if (v134 < 0)
      {
        v135 = sub_10003EDFC(*a3 >> 60);
        v369 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v399 = *(a5 + 84);
        sub_100045744("%s (id %llu): invalid dir_nlink (%d)\n", v136, v137, v138, v139, v140, v141, v142, v135);
        sub_100049C40(0x4BF, -8);
        v134 = *(a5 + 84);
      }

      if (*(a5 + 56) < v134)
      {
        v143 = sub_10003EDFC(*a3 >> 60);
        v400 = *(a5 + 84);
        v420 = *(a5 + 56);
        v370 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): directory nlink value %d is greater than nchildren (%d)\n", v144, v145, v146, v147, v148, v149, v150, v143);
        sub_100049C40(0x483, -8);
        v134 = *(a5 + 84);
      }

      sub_10002C3CC(v14, v134);
    }

    goto LABEL_67;
  }

  return v23;
}

uint64_t sub_100010A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v13 = *a3;
  v242 = -86;
  if ((a4 - 777) <= 0xFFFFFD00)
  {
    v14 = sub_10003EDFC(v13 >> 60);
    v204 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 92;
    v23 = 257;
LABEL_20:
    v70 = 92;
LABEL_21:
    sub_100049C40(v23, v70);
LABEL_22:
    sub_100045938(a2, a3, a4, a5, a6, v71, v72, v73, v203);
    return v22;
  }

  v24 = v13 & 0xFFFFFFFFFFFFFFFLL;
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v25 = sub_10003EDFC(v13 >> 60);
    v205 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v22 = 92;
    v23 = 258;
    goto LABEL_20;
  }

  if (v24 <= 0xF && (v24 > 7 || ((1 << v13) & 0x8C) == 0))
  {
    v37 = sub_10003EDFC(v13 >> 60);
    v206 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v38, v39, v40, v41, v42, v43, v44, v37);
    sub_100049C40(0x103, -2);
  }

  if (a7[5] <= v24)
  {
    a7[5] = v24 + 1;
  }

  v45 = *(a3 + 8);
  if ((v45 - 767) <= 0xFD02u)
  {
    v46 = sub_10003EDFC(*a3 >> 60);
    v207 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v223 = *(a3 + 8);
    sub_10004565C("%s (id %llu): invalid name_len (%u)\n", v47, v48, v49, v50, v51, v52, v53, v46);
    v22 = 92;
    v23 = 260;
    goto LABEL_20;
  }

  if (a4 != (v45 + 10))
  {
    v62 = sub_10003EDFC(*a3 >> 60);
    v231 = *(a3 + 8);
    v209 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u), given name_len (%u)\n", v63, v64, v65, v66, v67, v68, v69, v62);
    v22 = 92;
    v23 = 261;
    goto LABEL_20;
  }

  if (*(a3 + 10 + (v45 - 1)))
  {
    v54 = sub_10003EDFC(*a3 >> 60);
    v235 = *(a3 + 8);
    v208 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v55, v56, v57, v58, v59, v60, v61, v54);
    v22 = 92;
    v23 = 262;
    goto LABEL_20;
  }

  if (sub_10000F0D0((a3 + 10), v45))
  {
    v77 = sub_10003EDFC(*a3 >> 60);
    v224 = *(a3 + 8);
    v210 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v78, v79, v80, v81, v82, v83, v84, v77);
    sub_100049C40(0x107, -9);
  }

  if (a6 <= 3)
  {
    v85 = sub_10003EDFC(*a3 >> 60);
    v211 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v86, v87, v88, v89, v90, v91, v92, v85);
    v22 = 92;
    v23 = 264;
    goto LABEL_20;
  }

  __s1 = (a3 + 10);
  v93 = *a5;
  if ((v93 & 0xFFE8) != 0)
  {
    v94 = sub_10003EDFC(*a3 >> 60);
    v225 = *a5;
    v212 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v95, v96, v97, v98, v99, v100, v101, v94);
    sub_100049C40(0x109, -3);
    v93 = *a5;
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v106 = sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v102, v103, v104, v105, v75, v76, v93 & 0xE8);
      v93 = *a5;
      if (v106)
      {
        v93 &= 0x17u;
        *a5 = v93;
        *a8 = 1;
      }
    }
  }

  if ((~v93 & 3) == 0)
  {
    v107 = sub_10003EDFC(*a3 >> 60);
    v213 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v226 = *a5;
    sub_10004565C("%s (id %llu): invalid flags (0x%x)\n", v108, v109, v110, v111, v112, v113, v114, v107);
    v22 = 92;
    v23 = 266;
    goto LABEL_20;
  }

  if ((v93 & 4) != 0)
  {
    v237 = *(a3 + 8);
    if (strncmp(__s1, "com.apple.fs.symlink", v237))
    {
      if (strncmp(__s1, "com.apple.fs.altlink", v237) && strncmp(__s1, "com.apple.fs.firmlink", v237) && strncmp(__s1, "com.apple.fs.cow-exempt-file-count", v237) && strncmp(__s1, "com.apple.fs.graft-vol-uuid", v237) && strncmp(__s1, "com.apple.fs.graft-jobj-id-base", v237) && strncmp(__s1, "com.apple.fs.graft-jobj-id-len", v237) && strncmp(__s1, "com.apple.system.fs.speculative_telemetry", v237))
      {
        v115 = sub_10003EDFC(*a3 >> 60);
        v236 = *(a3 + 8);
        v227 = *a5;
        v214 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): invalid flags (0x%x), given name (<%.*s> ; name_len %d)\n", v116, v117, v118, v119, v120, v121, v122, v115);
        sub_100049C40(0x10B, -3);
        LOWORD(v93) = *a5;
      }
    }
  }

  if ((v93 & 1) != 0 && a5[1] != 48)
  {
    v134 = sub_10003EDFC(*a3 >> 60);
    v229 = a5[1];
    v233 = *a5;
    v216 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid xdata_len (%u), given flags (0x%x)\n", v135, v136, v137, v138, v139, v140, v141, v134);
    v22 = 92;
    v23 = 268;
    goto LABEL_20;
  }

  v123 = a5[1];
  if ((v93 & 2) != 0 && v123 >= 0xEDD)
  {
    v124 = sub_10003EDFC(*a3 >> 60);
    v228 = a5[1];
    v232 = *a5;
    v215 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid xdata_len (%u), given flags (0x%x)\n", v125, v126, v127, v128, v129, v130, v131, v124);
    v22 = 92;
    v23 = 269;
    goto LABEL_20;
  }

  if (v123 + 4 != a6)
  {
    v142 = sub_10003EDFC(*a3 >> 60);
    v234 = a5[1];
    v217 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid length (%u), given xdata_len (%u)\n", v143, v144, v145, v146, v147, v148, v149, v142);
    v22 = 92;
    v23 = 270;
    goto LABEL_20;
  }

  if (a7[8])
  {
    v132 = 0;
  }

  else
  {
    v132 = (a2 + 768);
  }

  sub_100026C9C(a1, v132, a8, a3, a5, &v242, v75, v76);
  if (v133)
  {
    v22 = v133;
    v23 = 973;
LABEL_55:
    v70 = v22;
    goto LABEL_21;
  }

  v150 = *(a3 + 8);
  v151 = strncmp(__s1, "com.apple.ResourceFork", v150);
  v152 = *a5;
  if (!v151)
  {
    if ((v152 & 1) == 0)
    {
      v164 = sub_10003EDFC(*a3 >> 60);
      v219 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): com.apple.ResourceFork is expected to be stream based\n", v165, v166, v167, v168, v169, v170, v171, v164);
      v22 = 92;
      v23 = 1453;
      goto LABEL_20;
    }

LABEL_70:
    v172 = *(a5 + 10);
    __src = *(a5 + 2);
    v240 = v172;
    v241 = *(a5 + 18);
    if (__src <= 1)
    {
      v173 = sub_10003EDFC(*a3 >> 60);
      v220 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid xattr_obj_id (%llu)\n", v174, v175, v176, v177, v178, v179, v180, v173);
      v22 = 92;
      v23 = 271;
      goto LABEL_20;
    }

    if (__src <= 0xF && (__src - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v181 = sub_10003EDFC(*a3 >> 60);
      v221 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): invalid xattr_obj_id (%llu)\n", v182, v183, v184, v185, v186, v187, v188, v181);
      sub_100049C40(0x110, -2);
    }

    if (a7[5] < (__src + 1))
    {
      a7[5] = __src + 1;
    }

    v189 = sub_1000162BC(a1, a2, a3, 0, &__src + 1, a7, a8);
    if (!v189)
    {
      v200 = *(a2 + 48);
      v201 = v200;
      if (!v200)
      {
        v201 = *(a2 + 40);
      }

      if ((*(v201 + 56) & 0x20) != 0)
      {
        v202 = __src;
        a7[9] = v24;
        a7[10] = v202;
      }

      if ((v242 & 1) == 0)
      {
        v189 = sub_10000B5B8(v24, __src, v240, 0, 0, 0, v190, v191);
        if (v189)
        {
          goto LABEL_78;
        }

        v200 = *(a2 + 48);
      }

      if (!v200)
      {
        v200 = *(a2 + 40);
      }

      if ((*(v200 + 56) & 0x20) != 0 || (v242 & 1) != 0 || (sub_100007070(v24, &__src + 8), !v189))
      {
        if (*a8)
        {
          memcpy(a5 + 2, &__src, a5[1]);
        }

        return 0;
      }
    }

LABEL_78:
    v22 = v189;
    v192 = sub_10003EDFC(*a3 >> 60);
    v222 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid dstream\n", v193, v194, v195, v196, v197, v198, v199, v192);
    goto LABEL_22;
  }

  if (v152)
  {
    goto LABEL_70;
  }

  v153 = *(a2 + 48);
  if (!v153)
  {
    v153 = *(a2 + 40);
  }

  if ((*(v153 + 56) & 0x20) == 0)
  {
    return 0;
  }

  v154 = v150;
  v22 = 0;
  if (a6 == 20 && v24 == a7[9])
  {
    if (!strncmp(__s1, "com.apple.decmpfs", v154))
    {
      v155 = *(*(a1 + 8) + 36);
      v22 = sub_10000B984(a7[10], (*(a5 + 6) + v155 - 1) / v155 * v155);
      if (!v22)
      {
        return v22;
      }

      v156 = sub_10003EDFC(*a3 >> 60);
      v218 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v230 = a7[10];
      sub_10004565C("%s (id %llu): failed to update dstream (%llu)\n", v157, v158, v159, v160, v161, v162, v163, v156);
      v23 = 953;
      goto LABEL_55;
    }

    return 0;
  }

  return v22;
}

uint64_t sub_1000112C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a3;
  if (a4 != 16)
  {
    v23 = sub_10003EDFC(v12 >> 60);
    v126 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v24, v25, v26, v27, v28, v29, v30, v23);
    v22 = 293;
    goto LABEL_5;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = sub_10003EDFC(v12 >> 60);
    v125 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 294;
LABEL_5:
    v31 = 92;
    sub_100049C40(v22, 92);
    sub_100045938(a2, a3, a4, a5, a6, v32, v33, v34, v124);
    return v31;
  }

  if (v13 <= 0xF && v13 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v38 = sub_10003EDFC(v12 >> 60);
    v127 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v39, v40, v41, v42, v43, v44, v45, v38);
    sub_100049C40(0x127, -2);
  }

  v46 = *(a7 + 40);
  if (v46 <= v13)
  {
    v46 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v47 = a3[1];
  if (v47 <= 1)
  {
    v48 = sub_10003EDFC(*a3 >> 60);
    v128 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v137 = a3[1];
    sub_10004565C("%s (id %llu): invalid sibling_id (%llu)\n", v49, v50, v51, v52, v53, v54, v55, v48);
    v22 = 296;
    goto LABEL_5;
  }

  if (v47 <= 0xF && (v47 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v56 = sub_10003EDFC(*a3 >> 60);
    v129 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v138 = a3[1];
    sub_100045744("%s (id %llu): invalid sibling_id (%llu)\n", v57, v58, v59, v60, v61, v62, v63, v56);
    sub_100049C40(0x129, -2);
    v47 = a3[1];
    v46 = *(a7 + 40);
  }

  v64 = v47 + 1;
  if (v46 < v64)
  {
    *(a7 + 40) = v64;
    v46 = v64;
  }

  if ((a6 - 777) <= 0xFFFFFD00)
  {
    v65 = sub_10003EDFC(*a3 >> 60);
    v130 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v66, v67, v68, v69, v70, v71, v72, v65);
    v22 = 298;
    goto LABEL_5;
  }

  v73 = *a5;
  if (*a5 <= 1)
  {
    v74 = sub_10003EDFC(*a3 >> 60);
    v131 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v139 = *a5;
    sub_10004565C("%s (id %llu): invalid parent_id (%llu)\n", v75, v76, v77, v78, v79, v80, v81, v74);
    v22 = 299;
    goto LABEL_5;
  }

  if (v73 <= 0xF && (v73 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v82 = sub_10003EDFC(*a3 >> 60);
    v132 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v140 = *a5;
    sub_100045744("%s (id %llu): invalid parent_id (%llu)\n", v83, v84, v85, v86, v87, v88, v89, v82);
    sub_100049C40(0x12C, -2);
    v73 = *a5;
    v46 = *(a7 + 40);
  }

  v90 = v73 + 1;
  if (v46 < v90)
  {
    *(a7 + 40) = v90;
  }

  v91 = *(a5 + 4);
  if ((v91 - 767) <= 0xFD02u)
  {
    v92 = sub_10003EDFC(*a3 >> 60);
    v133 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v93, v94, v95, v96, v97, v98, v99, v92);
    v22 = 301;
    goto LABEL_5;
  }

  if (a6 != (v91 + 10))
  {
    v108 = sub_10003EDFC(*a3 >> 60);
    v142 = *(a5 + 4);
    v135 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u), given name_len (%u)\n", v109, v110, v111, v112, v113, v114, v115, v108);
    v22 = 302;
    goto LABEL_5;
  }

  if (*(a5 + (v91 - 1) + 10))
  {
    v100 = sub_10003EDFC(*a3 >> 60);
    v143 = *(a5 + 4);
    v134 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v101, v102, v103, v104, v105, v106, v107, v100);
    v22 = 303;
    goto LABEL_5;
  }

  if (sub_10000F0D0(a5 + 10, v91))
  {
    v116 = sub_10003EDFC(*a3 >> 60);
    v141 = *(a5 + 4);
    v136 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v117, v118, v119, v120, v121, v122, v123, v116);
    sub_100049C40(0x130, -9);
  }

  return 0;
}

void sub_100011694(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  if (a4 != 8)
  {
    v24 = sub_10003EDFC(v12 >> 60);
    v59 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v25, v26, v27, v28, v29, v30, v31, v24);
    sub_100045938(a2, a3, a4, a5, a6, v32, v33, v34, v56);
    v22 = 210;
    goto LABEL_5;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = sub_10003EDFC(v12 >> 60);
    v58 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 625;
LABEL_5:
    sub_100049C40(v22, 92);
    return;
  }

  if (v13 <= 0xF && (v13 > 7 || ((1 << v12) & 0x8C) == 0))
  {
    v37 = sub_10003EDFC(v12 >> 60);
    v60 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v38, v39, v40, v41, v42, v43, v44, v37);
    sub_100049C40(0x272, -2);
  }

  if (*(a7 + 40) <= v13)
  {
    *(a7 + 40) = v13 + 1;
  }

  if (a6 != 4)
  {
    v45 = sub_10003EDFC(*a3 >> 60);
    v61 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v46, v47, v48, v49, v50, v51, v52, v45);
    sub_100045938(a2, a3, 8, a5, a6, v53, v54, v55, v57);
    v22 = 211;
    goto LABEL_5;
  }

  sub_10000BA58(a3, a5, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100011850(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 48);
  if (!v15)
  {
    v15 = *(a2 + 40);
  }

  v16 = *a3;
  if ((*(v15 + 56) & 0x20) != 0)
  {
    v27 = sub_10003EDFC(v16 >> 60);
    v150 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): present on sealed volume\n", v28, v29, v30, v31, v32, v33, v34, v27);
    v26 = 922;
  }

  else if (a4 == 8)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFFLL;
    if ((v16 & 0xFFFFFFFFFFFFFFFLL) > 1)
    {
      if (v17 <= 0xF && v17 - 6 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        v49 = sub_10003EDFC(v16 >> 60);
        v152 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v50, v51, v52, v53, v54, v55, v56, v49);
        sub_100049C40(0xF6, -2);
      }

      if (*(a7 + 40) <= v17)
      {
        *(a7 + 40) = v17 + 1;
      }

      if (a6 > 0x17)
      {
        if (*(a5 + 6) == 1)
        {
          v65 = 336;
        }

        else
        {
          v65 = 256;
        }

        if (*(a5 + 6) == 1)
        {
          v66 = 168;
        }

        else
        {
          v66 = 128;
        }

        if (*(a5 + 4) != 6)
        {
          v65 = v66;
        }

        if (v65 + 24 < a6)
        {
          v67 = sub_10003EDFC(*a3 >> 60);
          v154 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          sub_100045744("%s (id %llu): invalid value length (%u)\n", v68, v69, v70, v71, v72, v73, v74, v67);
        }

        if (*(a7 + 64))
        {
          v75 = 0;
        }

        else
        {
          v75 = (a2 + 768);
        }

        sub_100006E48(a2, a3, a5, v75, a5, a6, a7, a8);
        v43 = v76;
        if (v76 || v17 == 4)
        {
          if (!v76)
          {
            return v43;
          }

          goto LABEL_10;
        }

        if ((*(*(a2 + 40) + 264) & 0x109) == 0x100)
        {
          v77 = 6;
        }

        else
        {
          v77 = 5;
        }

        if (v77 != *(a5 + 4) && (*(a5 + 4) || sub_100046E74(a1)))
        {
          v78 = sub_10003EDFC(*a3 >> 60);
          v155 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v163 = *(a5 + 4);
          sub_100045744("%s (id %llu): invalid state.major_version (%u)\n", v79, v80, v81, v82, v83, v84, v85, v78);
          sub_100049C40(0xF9, -6);
        }

        if (*(a5 + 6) >= 2u)
        {
          v86 = sub_10003EDFC(*a3 >> 60);
          v156 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v164 = *(a5 + 6);
          sub_100045744("%s (id %llu): invalid state.minor_version (%u)\n", v87, v88, v89, v90, v91, v92, v93, v86);
          sub_100049C40(0xFA, -6);
        }

        if (*(a5 + 8))
        {
          v94 = sub_10003EDFC(*a3 >> 60);
          v157 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v165 = *(a5 + 8);
          sub_100045744("%s (id %llu): invalid state.cpflags (%u)\n", v95, v96, v97, v98, v99, v100, v101, v94);
          sub_100049C40(0xFB, -3);
        }

        if ((*(a5 + 12) & 0x18) != 0)
        {
          v102 = sub_10003EDFC(*a3 >> 60);
          v158 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v166 = *(a5 + 12);
          sub_100045744("%s (id %llu): invalid state.persistent_class (%u)\n", v103, v104, v105, v106, v107, v108, v109, v102);
          sub_100049C40(0xFC, -6);
        }

        if (!*(a5 + 16) && *(a5 + 4) != 6 && sub_100046E74(a1))
        {
          v110 = sub_10003EDFC(*a3 >> 60);
          v159 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v167 = *(a5 + 16);
          sub_100045744("%s (id %llu): invalid state.key_os_version (%u)\n", v111, v112, v113, v114, v115, v116, v117, v110);
          sub_100049C40(0xFD, -6);
        }

        if (*(a5 + 20) >= 2u)
        {
          v118 = sub_10003EDFC(*a3 >> 60);
          v160 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v168 = *(a5 + 20);
          sub_100045744("%s (id %llu): invalid state.key_revision (%u)\n", v119, v120, v121, v122, v123, v124, v125, v118);
          sub_100049C40(0xFE, -6);
        }

        LODWORD(v126) = *(a5 + 22);
        v127 = *(a5 + 4);
        v128 = (v126 >> 8) + v126;
        if (*(a5 + 6) == 1)
        {
          v129 = 336;
        }

        else
        {
          v129 = 256;
        }

        if (*(a5 + 6) == 1)
        {
          v130 = 168;
        }

        else
        {
          v130 = 128;
        }

        if (v127 == 6)
        {
          v131 = (v126 >> 8) + v126;
        }

        else
        {
          v131 = *(a5 + 22);
        }

        if (v127 != 6)
        {
          v129 = v130;
        }

        if (v131 > v129)
        {
          v132 = sub_10003EDFC(*a3 >> 60);
          v161 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v169 = *(a5 + 22);
          sub_100045744("%s (id %llu): invalid state.key_len (%u)\n", v133, v134, v135, v136, v137, v138, v139, v132);
          sub_100049C40(0xFF, -11);
          LODWORD(v126) = *(a5 + 22);
          v127 = *(a5 + 4);
          v128 = (v126 >> 8) + v126;
        }

        if (v127 == 6)
        {
          v126 = v128;
        }

        else
        {
          v126 = v126;
        }

        if (v126 + 24 == a6)
        {
          return 0;
        }

        v140 = sub_10003EDFC(*a3 >> 60);
        v170 = *(a5 + 22);
        v162 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): invalid length (%u), given state.key_len (%u)\n", v141, v142, v143, v144, v145, v146, v147, v140);
        v26 = 256;
      }

      else
      {
        v57 = sub_10003EDFC(*a3 >> 60);
        v153 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): invalid value length (%u)\n", v58, v59, v60, v61, v62, v63, v64, v57);
        v26 = 247;
      }
    }

    else
    {
      v18 = sub_10003EDFC(v16 >> 60);
      v149 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v19, v20, v21, v22, v23, v24, v25, v18);
      v26 = 245;
    }
  }

  else
  {
    v35 = sub_10003EDFC(v16 >> 60);
    v151 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v36, v37, v38, v39, v40, v41, v42, v35);
    v26 = 244;
  }

  v43 = 92;
  sub_100049C40(v26, 92);
LABEL_10:
  sub_100045938(a2, a3, a4, a5, a6, v44, v45, v46, v148);
  return v43;
}

uint64_t sub_100011D50(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v15 = a2[6];
  if (!v15)
  {
    v15 = a2[5];
  }

  if ((*(v15 + 56) & 0x20) != 0)
  {
    v24 = sub_10003EDFC(*a3 >> 60);
    v52 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): file extent record present on sealed volume\n", v25, v26, v27, v28, v29, v30, v31, v24);
    v32 = 921;
LABEL_12:
    v23 = 92;
    sub_100049C40(v32, 92);
    goto LABEL_13;
  }

  if (a4 != 16)
  {
    v33 = sub_10003EDFC(*a3 >> 60);
    v53 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v34, v35, v36, v37, v38, v39, v40, v33);
    v32 = 212;
    goto LABEL_12;
  }

  if (a6 != 24)
  {
    v41 = sub_10003EDFC(*a3 >> 60);
    v54 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v42, v43, v44, v45, v46, v47, v48, v41);
    v32 = 213;
    goto LABEL_12;
  }

  v16 = sub_100016AEC(a1, a2, a3, a5, a7, a8);
  if (v16 || (sub_10000BB38(a3, a5, v17, v18, v19, v20, v21, v22), v16))
  {
    v23 = v16;
  }

  else
  {
    sub_100017118(a2, a3, a5, a7, a8);
    v23 = v50;
    if (!v50)
    {
      return v23;
    }
  }

LABEL_13:
  sub_100045938(a2, a3, a4, a5, a6, v20, v21, v22, v51);
  return v23;
}

uint64_t sub_100011ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = a5;
  v13 = *(*(a2 + 40) + 56);
  if ((v13 & 9) != 0)
  {
    v14 = 12;
  }

  else
  {
    v14 = 10;
  }

  v15 = *a3;
  v16 = a4;
  if (v14 > a4 || v14 + 766 < a4)
  {
    v18 = sub_10003EDFC(v15 >> 60);
    v195 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v19, v20, v21, v22, v23, v24, v25, v18);
    v26 = 92;
    v27 = 275;
LABEL_9:
    sub_100049C40(v27, 92);
LABEL_27:
    sub_100045938(a2, a3, a4, v9, a6, v28, v29, v30, v194);
    return v26;
  }

  v31 = a1;
  v32 = v15 & 0xFFFFFFFFFFFFFFFLL;
  if ((v13 & 9) == 0)
  {
    v33 = (a3 + 10);
    v35 = *(a3 + 8);
    v36 = -1;
    if (v32)
    {
      goto LABEL_12;
    }

LABEL_20:
    v46 = sub_10003EDFC(v15 >> 60);
    v197 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v47, v48, v49, v50, v51, v52, v53, v46);
    v26 = 92;
    v45 = 276;
    goto LABEL_25;
  }

  v33 = (a3 + 12);
  v34 = *(a3 + 8);
  v35 = v34 & 0x3FF;
  v36 = v34 >> 10;
  if (!v32)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v32 <= 0xF && (v32 > 7 || ((1 << v15) & 0x8E) == 0))
  {
    v219 = v33;
    v221 = a8;
    v225 = a7;
    v227 = v35;
    v71 = sub_10003EDFC(v15 >> 60);
    v200 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v72, v73, v74, v75, v76, v77, v78, v71);
    sub_100049C40(0x115, -2);
    v33 = v219;
    a8 = v221;
    a7 = v225;
    v35 = v227;
    v31 = a1;
  }

  if (*(a7 + 40) <= v32)
  {
    *(a7 + 40) = v32 + 1;
  }

  if ((v35 - 767) <= 0xFD02u)
  {
    v37 = sub_10003EDFC(*a3 >> 60);
    v196 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid name_len (%u)\n", v38, v39, v40, v41, v42, v43, v44, v37);
    v26 = 92;
    v45 = 278;
LABEL_25:
    sub_100049C40(v45, 92);
LABEL_26:
    v9 = a5;
    goto LABEL_27;
  }

  if (v14 + v35 != v16)
  {
    v62 = sub_10003EDFC(*a3 >> 60);
    v199 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u), given name_len (%u)\n", v63, v64, v65, v66, v67, v68, v69, v62);
    v26 = 92;
    v45 = 279;
    goto LABEL_25;
  }

  if (v33[(v35 - 1)])
  {
    v54 = sub_10003EDFC(*a3 >> 60);
    v198 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v55, v56, v57, v58, v59, v60, v61, v54);
    v26 = 92;
    v45 = 280;
    goto LABEL_25;
  }

  v220 = (v35 - 1);
  v222 = a8;
  v224 = v31;
  v226 = a7;
  v79 = v33;
  v80 = v35;
  if (sub_10000F0D0(v33, v35))
  {
    v81 = sub_10003EDFC(*a3 >> 60);
    v201 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid name (%.*s)\n", v82, v83, v84, v85, v86, v87, v88, v81);
    sub_100049C40(0x119, -9);
  }

  v228 = v80;
  if ((v13 & 9) != 0)
  {
    v230 = -1;
    if (!sub_100002E7C(v79, v220, (v13 >> 3) & 1, sub_100017544, &v230))
    {
      v89 = v230 & 0x3FFFFF;
      if ((v230 & 0x3FFFFF) != v36)
      {
        v90 = sub_10003EDFC(*a3 >> 60);
        v202 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): invalid hash (0x%x, expected 0x%x) of name (%.*s)\n", v91, v92, v93, v94, v95, v96, v97, v90);
        sub_100049C40(0x11A, 92);
        v102 = sub_10002C590(a3, a4, v89, (a2 + 768), v98, v99, v100, v101);
        if (v102)
        {
          v26 = v102;
          goto LABEL_26;
        }
      }
    }
  }

  if (a6 <= 0x11)
  {
    v103 = sub_10003EDFC(*a3 >> 60);
    v203 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v104, v105, v106, v107, v108, v109, v110, v103);
    v26 = 92;
    v45 = 283;
    goto LABEL_25;
  }

  v9 = a5;
  v111 = *a5;
  if (*a5 <= 1uLL)
  {
    v112 = sub_10003EDFC(*a3 >> 60);
    v212 = *a5;
    v204 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid file_id (%llu) (%s)\n", v113, v114, v115, v116, v117, v118, v119, v112);
    v26 = 92;
    v27 = 284;
    goto LABEL_9;
  }

  if (v111 <= 0xF && (v111 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v120 = sub_10003EDFC(*a3 >> 60);
    v213 = *a5;
    v205 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid file_id (%llu) (%s)\n", v121, v122, v123, v124, v125, v126, v127, v120);
    sub_100049C40(0x11D, -2);
    v111 = *a5;
  }

  v128 = v80;
  if (*(v226 + 40) < v111 + 1)
  {
    *(v226 + 40) = v111 + 1;
    v111 = *a5;
  }

  if (v111 == 2)
  {
    if (v80 == 5 && v32 == 1 && !(*v79 ^ 0x746F6F72 | *(v79 + 4)))
    {
      goto LABEL_57;
    }

    v129 = sub_10003EDFC(*a3 >> 60);
    v206 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v214 = *a5;
    sub_100045744("%s (id %llu): file_id (%llu) and name (%.*s) mismatch for root directory\n", v130, v131, v132, v133, v134, v135, v136, v129);
    sub_100049C40(0x11E, -9);
    v128 = v80;
    v111 = *a5;
  }

  if (v111 == 3)
  {
    if (v128 == 12 && v32 == 1 && !(*v79 ^ 0x2D65746176697270 | *(v79 + 8) ^ 0x726964))
    {
      goto LABEL_57;
    }

    v137 = sub_10003EDFC(*a3 >> 60);
    v207 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v215 = *a5;
    sub_100045744("%s (id %llu): file_id (%llu) and name (%.*s) mismatch for private directory\n", v138, v139, v140, v141, v142, v143, v144, v137);
    sub_100049C40(0x11F, -9);
  }

  if (v32 == 7)
  {
    goto LABEL_63;
  }

LABEL_57:
  v145 = *(a5 + 16);
  if (v145 >= 0x10)
  {
    v146 = sub_10003EDFC(*a3 >> 60);
    v216 = *(a5 + 16);
    v208 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): unknown flags (0x%hx / known flags are: 0x%hx)\n", v147, v148, v149, v150, v151, v152, v153, v146);
    sub_100049C40(0x121, -3);
    LOWORD(v145) = *(a5 + 16);
    if (*(*(v224 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v160 = sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v154, v155, v156, v157, v158, v159, v145 & 0xF0);
      LOWORD(v145) = *(a5 + 16);
      if (v160)
      {
        LOWORD(v145) = *(a5 + 16) & 0xF;
        *(a5 + 16) = v145;
        *v222 = 1;
      }
    }
  }

  v161 = v145 & 0xF;
  if (v161 <= 0xE)
  {
    v162 = 1 << v161;
    if ((v162 & 0x1556) != 0)
    {
      goto LABEL_63;
    }

    if ((v162 & 0x4001) != 0)
    {
      v176 = sub_10003EDFC(*a3 >> 60);
      v210 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v217 = *(a5 + 16) & 0xF;
      sub_10004565C("%s (id %llu): invalid type (%u)\n", v177, v178, v179, v180, v181, v182, v183, v176);
      v26 = 92;
      v27 = 290;
      goto LABEL_9;
    }
  }

  v184 = sub_10003EDFC(*a3 >> 60);
  v211 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v218 = *(a5 + 16) & 0xF;
  sub_100045744("%s (id %llu): invalid type (%u)\n", v185, v186, v187, v188, v189, v190, v191, v184);
  sub_100049C40(0x123, -5);
LABEL_63:
  v163 = v224;
  v164 = v226;
  v165 = sub_1000149BC(v224, a2, a3, (a5 + 18), (a6 - 18), sub_100017584, v226, v222, 0);
  if (v165)
  {
    v26 = v165;
    v166 = sub_10003EDFC(*a3 >> 60);
    v209 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid xfields\n", v167, v168, v169, v170, v171, v172, v173, v166);
    goto LABEL_27;
  }

  if (v32 == 3)
  {
    if (v228 < 0xE || (v163 = v224, v164 = v226, strncmp("tmp-ino-clone-", v79, 0xEuLL)))
    {
      v174 = *(a5 + 16) & 0xF;
      if (v174 == 10)
      {
        v175 = v164 + 2;
        goto LABEL_78;
      }

      v175 = v164;
      if (v174 == 8)
      {
LABEL_78:
        --*v175;
        goto LABEL_79;
      }

      if (v174 != 4)
      {
        v175 = v164 + 3;
        goto LABEL_78;
      }

      if ((*a5 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        v175 = v164 + 1;
        goto LABEL_78;
      }
    }
  }

LABEL_79:
  v192 = v164[8];
  if (v192)
  {
    v193 = 0;
  }

  else
  {
    v193 = (a2 + 768);
  }

  return sub_10002C3DC(v163, a2, v192, a3, a4, a5, a6, v193);
}

uint64_t sub_1000126E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + 48);
  if (!v13)
  {
    v13 = *(a2 + 40);
  }

  v14 = *a3;
  if ((*(v13 + 57) & 2) != 0)
  {
    v25 = sub_10003EDFC(v14 >> 60);
    v93 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key on expanded-records volume\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v24 = 1399;
  }

  else if (a4 == 8)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
    if ((v14 & 0xFFFFFFFFFFFFFFFLL) > 1)
    {
      if (v15 <= 0xF && v15 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v47 = sub_10003EDFC(v14 >> 60);
        v95 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v48, v49, v50, v51, v52, v53, v54, v47);
        sub_100049C40(0x133, -2);
      }

      v55 = *(a7 + 40);
      if (v55 <= v15)
      {
        v55 = v15 + 1;
        *(a7 + 40) = v15 + 1;
      }

      if (a6 == 32)
      {
        v56 = a5[2];
        if (v56 == 1)
        {
          v57 = sub_10003EDFC(*a3 >> 60);
          v96 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v100 = a5[2];
          sub_10004565C("%s (id %llu): invalid chained_key (%llu)\n", v58, v59, v60, v61, v62, v63, v64, v57);
          v24 = 310;
        }

        else
        {
          if (v56 <= 0xF && v56 > 3)
          {
            v73 = sub_10003EDFC(*a3 >> 60);
            v98 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v101 = a5[2];
            sub_100045744("%s (id %llu): invalid chained_key (%llu)\n", v74, v75, v76, v77, v78, v79, v80, v73);
            sub_100049C40(0x137, -2);
            v56 = a5[2];
            v55 = *(a7 + 40);
          }

          v81 = v56 + 1;
          if (v55 < v81)
          {
            *(a7 + 40) = v81;
          }

          if (a5[3])
          {
            sub_1000183E8(v15, a5);
            v41 = v82;
            if (!v82)
            {
              return v41;
            }

            goto LABEL_10;
          }

          v83 = sub_10003EDFC(*a3 >> 60);
          v99 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v102 = a5[3];
          sub_10004565C("%s (id %llu): invalid gen_count (%llu)\n", v84, v85, v86, v87, v88, v89, v90, v83);
          v24 = 312;
        }
      }

      else
      {
        v65 = sub_10003EDFC(*a3 >> 60);
        v97 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): invalid value length (%u)\n", v66, v67, v68, v69, v70, v71, v72, v65);
        v24 = 308;
      }
    }

    else
    {
      v16 = sub_10003EDFC(v14 >> 60);
      v92 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v17, v18, v19, v20, v21, v22, v23, v16);
      v24 = 306;
    }
  }

  else
  {
    v33 = sub_10003EDFC(v14 >> 60);
    v94 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v34, v35, v36, v37, v38, v39, v40, v33);
    v24 = 305;
  }

  v41 = 92;
  sub_100049C40(v24, 92);
LABEL_10:
  sub_100045938(a2, a3, a4, a5, a6, v42, v43, v44, v91);
  return v41;
}

uint64_t sub_10001298C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  v18 = 0;
  v11 = sub_10000EDD8(a2, a3, a4, a5, a6, 1, &v18);
  if (v11)
  {
    v15 = v11;
LABEL_4:
    sub_100045938(a2, a3, a4, a5, a6, v12, v13, v14, v17);
    return v15;
  }

  v15 = sub_10002BE0C(a3, a5);
  if (v15)
  {
    goto LABEL_4;
  }

  return v15;
}

uint64_t sub_100012A34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a3;
  if (a4 != 8)
  {
    v23 = sub_10003EDFC(v12 >> 60);
    v75 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v24, v25, v26, v27, v28, v29, v30, v23);
    v22 = 530;
    goto LABEL_7;
  }

  if (a6 != 8)
  {
    v31 = sub_10003EDFC(v12 >> 60);
    v76 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v32, v33, v34, v35, v36, v37, v38, v31);
    v22 = 531;
    goto LABEL_7;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = sub_10003EDFC(v12 >> 60);
    v74 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = 532;
LABEL_7:
    v39 = 92;
    sub_100049C40(v22, 92);
    sub_100045938(a2, a3, a4, a5, a6, v40, v41, v42, v73);
    return v39;
  }

  if (v13 <= 0xF && v13 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v46 = sub_10003EDFC(v12 >> 60);
    v77 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v47, v48, v49, v50, v51, v52, v53, v46);
    sub_100049C40(0x215, -2);
  }

  v54 = *(a7 + 40);
  if (v54 <= v13)
  {
    v54 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v55 = *a5;
  if (*a5 <= 1uLL)
  {
    v56 = sub_10003EDFC(*a3 >> 60);
    v78 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v80 = *a5;
    sub_10004565C("%s (id %llu): invalid file_id (%llu)\n", v57, v58, v59, v60, v61, v62, v63, v56);
    v22 = 534;
    goto LABEL_7;
  }

  if (v55 <= 0xF)
  {
    v64 = sub_10003EDFC(*a3 >> 60);
    v79 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v81 = *a5;
    sub_100045744("%s (id %llu): invalid file_id (%llu)\n", v65, v66, v67, v68, v69, v70, v71, v64);
    sub_100049C40(0x217, -2);
    v55 = *a5;
    v54 = *(a7 + 40);
  }

  v72 = v55 + 1;
  v39 = 0;
  if (v54 < v72)
  {
    *(a7 + 40) = v72;
  }

  return v39;
}

uint64_t sub_100012C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 == 16)
  {
    v16 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v17 = *(a3 + 8);
    v18 = HIBYTE(v17);
    if (HIBYTE(v17) != 2)
    {
      if (v18 != 1)
      {
        v19 = v13 >> 60;
        if (v18)
        {
          v58 = sub_10003EDFC(v19);
          v200 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v216 = *(a3 + 15);
          sub_100045744("%s (id %llu): Unknown type (0x%x)\n", v59, v60, v61, v62, v63, v64, v65, v58);
          sub_100049C40(0x3AF, -5);
          return 0;
        }

        v20 = sub_10003EDFC(v19);
        v196 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v215 = *(a3 + 15);
        sub_10004565C("%s (id %llu): Invalid type (0x%x)\n", v21, v22, v23, v24, v25, v26, v27, v20);
        v28 = 942;
        goto LABEL_7;
      }

      if (a6 <= 2)
      {
        v42 = sub_10003EDFC(v13 >> 60);
        v198 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): invalid value length (%u)\n", v43, v44, v45, v46, v47, v48, v49, v42);
        v28 = 938;
        goto LABEL_7;
      }

      if (v16 <= 1)
      {
        v66 = sub_10003EDFC(v13 >> 60);
        v201 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v67, v68, v69, v70, v71, v72, v73, v66);
        v28 = 939;
        goto LABEL_7;
      }

      v84 = *(*(a1 + 8) + 36);
      if (v16 <= 0xF && v16 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v85 = sub_10003EDFC(v13 >> 60);
        v203 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v86, v87, v88, v89, v90, v91, v92, v85);
        sub_100049C40(0x3AC, -2);
      }

      if (*(a7 + 40) <= v16)
      {
        *(a7 + 40) = v16 + 1;
      }

      if ((*(a3 + 8) & 0xFFFFFFFFFFFFFFuLL) % v84)
      {
        v93 = sub_10003EDFC(*a3 >> 60);
        v217 = *(a3 + 8) & 0xFFFFFFFFFFFFFFLL;
        v204 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): Logical address %llu not a multiple of the block size (%u)\n", v94, v95, v96, v97, v98, v99, v100, v93);
        v28 = 941;
        goto LABEL_7;
      }

      v167 = sub_10001775C(a1, a2, a3, a5);
      goto LABEL_54;
    }

    if (a6 <= 0x19)
    {
      v50 = sub_10003EDFC(v13 >> 60);
      v199 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid value length (%u)\n", v51, v52, v53, v54, v55, v56, v57, v50);
      v28 = 1319;
      goto LABEL_7;
    }

    v75 = v17 & 0x1FFFFFFFFFFFFFLL;
    if ((*(*(a2 + 40) + 48) & 8) == 0)
    {
      v76 = sub_10003EDFC(v13 >> 60);
      v202 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): found attribution tag on a volume that doesn't support them\n", v77, v78, v79, v80, v81, v82, v83, v76);
      sub_100049C40(0x528, -5);
    }

    if (v16 == 9)
    {
      if (*(a7 + 40) > 9uLL)
      {
        v224 = 0;
        if (v75)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v224 = 0;
      *(a7 + 40) = 10;
      if (!v75)
      {
LABEL_31:
        v109 = sub_10003EDFC(*a3 >> 60);
        v206 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): invalid hash (0)\n", v110, v111, v112, v113, v114, v115, v116, v109);
        sub_100049C40(0x52A, -7);
      }
    }

    else
    {
      v101 = sub_10003EDFC(*a3 >> 60);
      v205 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v102, v103, v104, v105, v106, v107, v108, v101);
      sub_100049C40(0x529, 92);
      v224 = v16;
      if (!v75)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    v117 = *(*(a1 + 8) + 36);
    if (*(a5 + 8) % v117)
    {
      v118 = sub_10003EDFC(*a3 >> 60);
      v218 = *(a5 + 8);
      v207 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): invalid physical size (%llu) for hash (%llu)\n", v119, v120, v121, v122, v123, v124, v125, v118);
      sub_100049C40(0x52B, -11);
      v117 = *(*(a1 + 8) + 36);
    }

    v126 = *(a5 + 16);
    if (v126 % v117)
    {
      v127 = sub_10003EDFC(*a3 >> 60);
      v219 = *(a5 + 16);
      v208 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): invalid full clone size (%llu) for hash (%llu)\n", v128, v129, v130, v131, v132, v133, v134, v127);
      sub_100049C40(0x53C, -11);
      v126 = *(a5 + 16);
    }

    if (*(a5 + 8) < v126)
    {
      v135 = sub_10003EDFC(*a3 >> 60);
      v222 = *(a5 + 16);
      v209 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v220 = *(a5 + 8);
      sub_100045744("%s (id %llu): physical size (%llu) is less than full clone size (%llu) for hash (%llu)\n", v136, v137, v138, v139, v140, v141, v142, v135);
      sub_100049C40(0x53D, -11);
    }

    if (*(a5 + 24) >= 2u)
    {
      v143 = sub_10003EDFC(*a3 >> 60);
      v221 = *(a5 + 24);
      v210 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v144, v145, v146, v147, v148, v149, v150, v143);
      sub_100049C40(0x52C, -3);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v151, v152, v153, v154, v155, v156, *(a5 + 24) & 0xFE))
        {
          *(a5 + 24) &= 1u;
          *a8 = 1;
        }
      }
    }

    memset(v225, 0, sizeof(v225));
    v157 = sub_1000149BC(a1, a2, a3, (a5 + 26), (a6 - 26), sub_100017928, a7, a8, v225);
    if (v157)
    {
      v37 = v157;
      v194 = sub_10003EDFC(*a3 >> 60);
      v211 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid xfields\n", v158, v159, v160, v161, v162, v163, v164, v194);
      goto LABEL_55;
    }

    if (v225[0])
    {
      v165 = strlen(v225 + 1);
      v166 = sub_10004F548(v225 + 1, v165);
      if (v166 == v75)
      {
        v75 = 0;
      }

      else
      {
        v223 = sub_10003EDFC(*a3 >> 60);
        strlen(v225 + 1);
        v213 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): signing id hash (%llu) for signing id (%s) with length (%zu) does not match attribution tag hash (%llu)\n", v177, v178, v179, v180, v181, v182, v183, v223);
        sub_100049C40(0x52E, 92);
      }

      if (*(a7 + 64))
      {
        v184 = 0;
      }

      else
      {
        v184 = (a2 + 768);
      }

      sub_10000604C(v184, v166, *a5, *(a5 + 8), *(a5 + 16), *(a5 + 24), v224, v75);
      v37 = v185;
      if (v185)
      {
        v195 = sub_10003EDFC(*a3 >> 60);
        v214 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): failed to register file info (hash %llu): %d\n", v186, v187, v188, v189, v190, v191, v192, v195);
      }

LABEL_55:
      if (!v37)
      {
        return v37;
      }

      goto LABEL_8;
    }

    v168 = sub_10003EDFC(*a3 >> 60);
    v212 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): signing id does not exist\n", v169, v170, v171, v172, v173, v174, v175, v168);
    sub_100049C40(0x52D, 92);
    if (*(a7 + 64))
    {
      v176 = 0;
    }

    else
    {
      v176 = (a2 + 768);
    }

    v167 = sub_100005FB4(v176, v16, v75, 1);
LABEL_54:
    v37 = v167;
    goto LABEL_55;
  }

  v29 = sub_10003EDFC(v13 >> 60);
  v197 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  sub_10004565C("%s (id %llu): invalid key length (%u)\n", v30, v31, v32, v33, v34, v35, v36, v29);
  v28 = 937;
LABEL_7:
  v37 = 92;
  sub_100049C40(v28, 92);
LABEL_8:
  sub_100045938(a2, a3, a4, a5, a6, v38, v39, v40, v193);
  return v37;
}

uint64_t sub_10001333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  if (a4 != 28)
  {
    v28 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v29, v30, v31, v32, v33, v34, v35, v28);
    v26 = 92;
    v27 = 1168;
    goto LABEL_7;
  }

  if (a6 <= 0x17)
  {
    v18 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v19, v20, v21, v22, v23, v24, v25, v18);
    v26 = 92;
    v27 = 1169;
LABEL_7:
    sub_100049C40(v27, 92);
    goto LABEL_8;
  }

  if (v16 <= 1)
  {
    v40 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v41, v42, v43, v44, v45, v46, v47, v40);
    v26 = 92;
    v27 = 1170;
    goto LABEL_7;
  }

  if (v16 <= 0xF && (v16 > 7 || ((1 << *a3) & 0x8C) == 0))
  {
    v49 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v50, v51, v52, v53, v54, v55, v56, v49);
    sub_100049C40(0x493, -2);
  }

  if (*(a7 + 40) <= v16)
  {
    *(a7 + 40) = v16 + 1;
  }

  if (!*(a3 + 12))
  {
    v57 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid atime (0)\n", v58, v59, v60, v61, v62, v63, v64, v57);
    sub_100049C40(0x58E, -2);
  }

  v65 = *(a3 + 20);
  if (v65 <= 1)
  {
    v66 = sub_10003EDFC(v17);
    v128 = *(a3 + 20);
    sub_10004565C("%s (id %llu): invalid file_id (%llu)\n", v67, v68, v69, v70, v71, v72, v73, v66);
    v26 = 92;
    v27 = 1172;
    goto LABEL_7;
  }

  if (v65 <= 0xF && (v65 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v74 = sub_10003EDFC(v17);
    v129 = *(a3 + 20);
    sub_100045744("%s (id %llu): invalid file_id (%llu)\n", v75, v76, v77, v78, v79, v80, v81, v74);
    sub_100049C40(0x495, -2);
    v65 = *(a3 + 20);
  }

  v82 = *(a7 + 40);
  v83 = v65 + 1;
  if (v82 < v83)
  {
    *(a7 + 40) = v83;
    v82 = v83;
  }

  v84 = *(a5 + 8);
  if (v84 <= 1)
  {
    v85 = sub_10003EDFC(v17);
    v130 = *(a5 + 8);
    sub_10004565C("%s (id %llu): invalid dstream_id (%llu)\n", v86, v87, v88, v89, v90, v91, v92, v85);
    v26 = 92;
    v27 = 1175;
    goto LABEL_7;
  }

  if (v84 <= 0xF && (v84 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v93 = sub_10003EDFC(v17);
    v131 = *(a5 + 8);
    sub_100045744("%s (id %llu): invalid dstream_id (%llu)\n", v94, v95, v96, v97, v98, v99, v100, v93);
    sub_100049C40(0x498, -2);
    v84 = *(a5 + 8);
    v82 = *(a7 + 40);
  }

  v101 = v84 + 1;
  if (v82 < v101)
  {
    *(a7 + 40) = v101;
  }

  if ((*(a5 + 18) & 0xFF43) != 0)
  {
    v102 = sub_10003EDFC(v17);
    v132 = *(a5 + 16);
    sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v103, v104, v105, v106, v107, v108, v109, v102);
    sub_100049C40(0x499, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v116 = *(a5 + 16);
      if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v110, v111, v112, v113, v114, v115, 0))
      {
        *(a5 + 16) &= 0xBCFFFFu;
        *a8 = 1;
      }
    }
  }

  v117 = sub_1000149BC(a1, a2, a3, (a5 + 24), (a6 - 24), sub_100017A74, a7, a8, 0);
  if (v117)
  {
    v26 = v117;
    v118 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid xfields\n", v119, v120, v121, v122, v123, v124, v125, v118);
  }

  else
  {
    v126 = sub_100022B7C(*(a3 + 20));
    if (v126)
    {
      v26 = v126;
    }

    else
    {
      v26 = sub_10003884C(*(a5 + 8), *(a3 + 20), *(a5 + 16));
      if (!v26)
      {
        return v26;
      }
    }
  }

LABEL_8:
  sub_100045938(a2, a3, a4, a5, a6, v36, v37, v38, v127);
  return v26;
}

uint64_t sub_10001373C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v15 = *a3 >> 60;
  if (v15 == 14)
  {
    LODWORD(v15) = *(a3 + 8);
  }

  if (a4 != 20)
  {
    v25 = sub_10003EDFC(v15);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v24 = 1178;
    goto LABEL_9;
  }

  if (a6 != 8)
  {
    v33 = sub_10003EDFC(v15);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v34, v35, v36, v37, v38, v39, v40, v33);
    v24 = 1179;
    goto LABEL_9;
  }

  if (v14 <= 1)
  {
    v16 = sub_10003EDFC(v15);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v17, v18, v19, v20, v21, v22, v23, v16);
    v24 = 1180;
LABEL_9:
    v41 = 92;
    sub_100049C40(v24, 92);
    goto LABEL_10;
  }

  if (v14 <= 0xF && (v14 > 7 || ((1 << *a3) & 0x8C) == 0))
  {
    v47 = sub_10003EDFC(v15);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v48, v49, v50, v51, v52, v53, v54, v47);
    sub_100049C40(0x49D, -2);
  }

  v55 = *(a7 + 40);
  if (v55 <= v14)
  {
    v55 = v14 + 1;
    *(a7 + 40) = v14 + 1;
  }

  v56 = *(a3 + 12);
  if (v56 <= 1)
  {
    v57 = sub_10003EDFC(v15);
    v94 = *(a3 + 12);
    sub_10004565C("%s (id %llu): invalid file_id (%llu)\n", v58, v59, v60, v61, v62, v63, v64, v57);
    v24 = 1182;
    goto LABEL_9;
  }

  if (v56 <= 0xF && (v56 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v65 = sub_10003EDFC(v15);
    v95 = *(a3 + 12);
    sub_100045744("%s (id %llu): invalid file_id (%llu)\n", v66, v67, v68, v69, v70, v71, v72, v65);
    sub_100049C40(0x49F, -2);
    v56 = *(a3 + 12);
    v55 = *(a7 + 40);
  }

  v73 = v56 + 1;
  if (v55 < v73)
  {
    *(a7 + 40) = v73;
    v55 = v73;
  }

  v74 = *a5;
  if (*a5 <= 1)
  {
    v75 = sub_10003EDFC(v15);
    v96 = *a5;
    sub_10004565C("%s (id %llu): invalid dstream_id (%llu)\n", v76, v77, v78, v79, v80, v81, v82, v75);
    v24 = 1184;
    goto LABEL_9;
  }

  if (v74 <= 0xF && (v74 > 7 || ((1 << v74) & 0x8C) == 0))
  {
    v83 = sub_10003EDFC(v15);
    v97 = *a5;
    sub_100045744("%s (id %llu): invalid dstream_id (%llu)\n", v84, v85, v86, v87, v88, v89, v90, v83);
    sub_100049C40(0x4A1, -2);
    v74 = *a5;
    v55 = *(a7 + 40);
  }

  v91 = v74 + 1;
  if (v55 < v91)
  {
    *(a7 + 40) = v91;
  }

  v92 = sub_10000BD20(a3, a5, a3, a4, a5, a6, a7, a8);
  if (v92)
  {
    v41 = v92;
  }

  else
  {
    v41 = sub_100022D74(*(a3 + 12));
    if (!v41)
    {
      return v41;
    }
  }

LABEL_10:
  sub_100045938(a2, a3, a4, a5, a6, v42, v43, v44, v93);
  return v41;
}

uint64_t sub_100013A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  if (a4 != 12)
  {
    v28 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid key length (%u)\n", v29, v30, v31, v32, v33, v34, v35, v28);
    v26 = 92;
    v27 = 1186;
    goto LABEL_7;
  }

  if (a6 <= 0x33)
  {
    v18 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid value length (%u)\n", v19, v20, v21, v22, v23, v24, v25, v18);
    v26 = 92;
    v27 = 1187;
LABEL_7:
    sub_100049C40(v27, 92);
LABEL_8:
    sub_100045938(a2, a3, a4, a5, a6, v36, v37, v38, v134);
    return v26;
  }

  if (v16 <= 1)
  {
    v40 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v41, v42, v43, v44, v45, v46, v47, v40);
    v26 = 92;
    v27 = 1188;
    goto LABEL_7;
  }

  if (v16 <= 0xF && v16 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v49 = sub_10003EDFC(v17);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v50, v51, v52, v53, v54, v55, v56, v49);
    sub_100049C40(0x4A5, -2);
  }

  v57 = *(a7 + 40);
  if (v57 <= v16)
  {
    v57 = v16 + 1;
    *(a7 + 40) = v16 + 1;
  }

  v58 = *(a5 + 32);
  if (v58 == 1)
  {
    v59 = sub_10003EDFC(v17);
    v135 = *(a5 + 32);
    sub_10004565C("%s (id %llu): invalid chained_key (%llu)\n", v60, v61, v62, v63, v64, v65, v66, v59);
    v26 = 92;
    v27 = 1192;
    goto LABEL_7;
  }

  if (v58 <= 0xF && v58 > 3)
  {
    v67 = sub_10003EDFC(v17);
    v136 = *(a5 + 32);
    sub_100045744("%s (id %llu): invalid chained_key (%llu)\n", v68, v69, v70, v71, v72, v73, v74, v67);
    sub_100049C40(0x4A9, -2);
    v58 = *(a5 + 32);
    v57 = *(a7 + 40);
  }

  v75 = v58 + 1;
  if (v57 < v75)
  {
    *(a7 + 40) = v75;
  }

  if (!*(a5 + 40))
  {
    v76 = sub_10003EDFC(v17);
    v137 = *(a5 + 40);
    sub_100045744("%s (id %llu): invalid gen_count (%llu)\n", v77, v78, v79, v80, v81, v82, v83, v76);
    sub_100049C40(0x4AA, -8);
  }

  v84 = *(a5 + 48);
  if (v84 >= 0x1000)
  {
    v85 = sub_10003EDFC(v17);
    v138 = *(a5 + 48);
    sub_100045744("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v86, v87, v88, v89, v90, v91, v92, v85);
    sub_100049C40(0x4AB, -3);
    v84 = *(a5 + 48);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v99 = sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v93, v94, v95, v96, v97, v98, 0);
      v84 = *(a5 + 48);
      if (v99)
      {
        *(a5 + 48) &= 0xFFFu;
        *a8 = 1;
        v84 = *(a5 + 48);
      }
    }
  }

  if ((v84 & 0x200) != 0)
  {
    v100 = sub_10003EDFC(v17);
    v139 = *(a5 + 32);
    sub_10004565C("%s (id %llu): found dir-stats object (chained-key %llu) that is unexpectedly being moved\n", v101, v102, v103, v104, v105, v106, v107, v100);
    sub_100049C40(0x5A8, 92);
    v84 = *(a5 + 48);
  }

  if ((v84 & 2) != 0 && (*(*(a2 + 40) + 48) & 8) == 0)
  {
    v108 = sub_10003EDFC(v17);
    v140 = *(a5 + 48);
    sub_100045744("%s (id %llu): invalid dir-stats flags (0x%x) on volume without attribution tags\n", v109, v110, v111, v112, v113, v114, v115, v108);
    sub_100049C40(0x5E7, -3);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v116 = sub_1000149BC(a1, a2, a3, (a5 + 52), (a6 - 52), sub_100017BA8, a7, a8, &v142);
  if (v116)
  {
    v26 = v116;
    v117 = sub_10003EDFC(v17);
    sub_10004565C("%s (id %llu): invalid xfields\n", v118, v119, v120, v121, v122, v123, v124, v117);
    goto LABEL_8;
  }

  if ((~*(a5 + 48) & 0x801) == 0 && v144 == 1 && *(&v144 + 1) > *(a5 + 16))
  {
    v125 = sub_10003EDFC(v17);
    v141 = *(a5 + 16);
    sub_100045744("%s (id %llu): purgeable resource fork size (%llu) is larger than resource fork size (%llu)\n", v126, v127, v128, v129, v130, v131, v132, v125);
    sub_100049C40(0x5B4, -3);
  }

  sub_100018574(v16, a5, a6, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, *(&v144 + 1), v145, *(&v145 + 1));
  v26 = v133;
  if (v133)
  {
    goto LABEL_8;
  }

  return v26;
}

uint64_t sub_100013E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  v18 = *(a2 + 40);
  if ((*(v18 + 48) & 4) == 0)
  {
    sub_100045744("found clone mapping in an unsupported volume format\n", a2, a3, a4, a5, a6, a7, a8, v83);
    sub_100049C40(0x5F0, -2);
    v18 = *(a2 + 40);
  }

  if ((*(v18 + 1108) & 1) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFFFFLL;
    if (a4 != 28)
    {
      v38 = sub_10003EDFC(v17);
      sub_10004565C("%s (id %llu): invalid key length (%u)\n", v39, v40, v41, v42, v43, v44, v45, v38);
      v28 = 92;
      v29 = 1299;
      goto LABEL_12;
    }

    if (a6 <= 7)
    {
      v20 = sub_10003EDFC(v17);
      sub_10004565C("%s (id %llu): invalid value length (%u)\n", v21, v22, v23, v24, v25, v26, v27, v20);
      v28 = 92;
      v29 = 1300;
LABEL_12:
      sub_100049C40(v29, 92);
LABEL_13:
      sub_100045938(a2, a3, a4, a5, a6, v46, v47, v48, v84);
      return v28;
    }

    if (v19 != 9)
    {
      v52 = sub_10003EDFC(v17);
      sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v53, v54, v55, v56, v57, v58, v59, v52);
      v28 = 92;
      v29 = 1301;
      goto LABEL_12;
    }

    v50 = *(a7 + 40);
    if (v50 <= 9)
    {
      v50 = 10;
      *(a7 + 40) = 10;
    }

    v51 = *(a3 + 12);
    if (v51 > 0xF)
    {
      v60 = v51 + 1;
      if (v50 < v60)
      {
        *(a7 + 40) = v60;
      }
    }

    else
    {
      v85 = *(a3 + 20);
      sub_100045744("clone mapping (private_id %llu, file_id %llu): invalid private_id\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 12));
      sub_100049C40(0x516, -2);
    }

    v61 = *(a3 + 20);
    if (v61 > 0xF)
    {
      v62 = v61 + 1;
      if (*(a7 + 40) < v62)
      {
        *(a7 + 40) = v62;
      }
    }

    else
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): invalid file_id\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 12));
      sub_100049C40(0x517, -2);
    }

    v63 = *a5;
    v64 = *a5 & 0xFFFFFFFFFFFFFFLL;
    v65 = *(a1 + 8);
    v66 = *(v65 + 36);
    if (v64 % v66 || v64 / v66 > *(v65 + 40))
    {
      v86 = *(a3 + 20);
      sub_100045744("clone mapping (private_id %llu, file_id %llu): invalid physical_size (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 12));
      sub_100049C40(0x518, 92);
    }

    if (v63 >> 57)
    {
      v87 = *(a3 + 20);
      sub_100045744("clone mapping (private_id %llu, file_id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 12));
      sub_100049C40(0x554, -3);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v67, v68, v69, v70, v71, v72, HIBYTE(v63) & 0xFE))
        {
          *a5 = v63 & 0x1FFFFFFFFFFFFFFLL;
          *a8 = 1;
        }
      }
    }

    v89 = 0;
    v90 = 0;
    v73 = sub_1000149BC(a1, a2, a3, a5 + 4, (a6 - 8), sub_100017DFC, a7, a8, &v89);
    if (v73)
    {
      v28 = v73;
      v88 = *(a3 + 20);
      sub_10004565C("clone mapping (private_id %llu, file_id %llu): invalid xfields\n", v74, v75, v76, v77, v78, v79, v80, *(a3 + 12));
      goto LABEL_13;
    }

    if (!v90 || (v81 = sub_100006328(v90, v64), !v81))
    {
      if (v89)
      {
        v81 = sub_100018970(v89, v64);
        if (v81)
        {
          goto LABEL_42;
        }

        v82 = v89;
      }

      else
      {
        v82 = 0;
      }

      v28 = sub_1000012BC(*(a3 + 12), *(a3 + 20), a5, v90, v82);
      if (!v28)
      {
        return v28;
      }

      goto LABEL_13;
    }

LABEL_42:
    v28 = v81;
    goto LABEL_13;
  }

  sub_10004565C("found clone mapping in a volume with initialized clonegroup tree\n", a2, a3, a4, a5, a6, a7, a8, v83);
  v30 = sub_100049C40(0x612, 92);
  if (*(a7 + 64))
  {
    sub_10002797C(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    sub_100027D7C((a2 + 768), 7, 0, 0, 0, a3, 0x1Cu, 0, 0);
  }

  return 0;
}

uint64_t sub_100014238(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v12 = a2[6];
  if (!v12)
  {
    v12 = a2[5];
  }

  if ((*(v12 + 56) & 0x20) != 0)
  {
    if (!(*a3 >> 60))
    {
      v30 = sub_100016AEC(a1, a2, a3, a5, a7, a8);
      if (!v30)
      {
        return v30;
      }

      goto LABEL_8;
    }

    v22 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): ID larger than MAX_JOBJ_ID (%llu)\n", v23, v24, v25, v26, v27, v28, v29, v22);
    v21 = 920;
  }

  else
  {
    v13 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): fext tree record present on non-sealed volume\n", v14, v15, v16, v17, v18, v19, v20, v13);
    v21 = 919;
  }

  v30 = 92;
  sub_100049C40(v21, 92);
LABEL_8:
  sub_1000458CC(a2, a3, a5, v31, v32, v33, v34, v35);
  return v30;
}

uint64_t sub_10001431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  if (a4 <= 8)
  {
    sub_10004565C("clone group tree: invalid key length (%u)\n", a2, a3, a4, a5, a6, a7, a8, a4);
    v8 = 92;
    v9 = 1531;
LABEL_3:
    v10 = 92;
LABEL_4:
    sub_100049C40(v9, v10);
    return v8;
  }

  v13 = a6;
  v15 = *(a3 + 8);
  if (v15 == 2)
  {
    if (a4 != 17)
    {
      sub_10004565C("clone group tree: invalid cookie key length (%u)\n", a2, a3, a4, a5, a6, a7, a8, a4);
      v8 = 92;
      v9 = 1559;
      goto LABEL_3;
    }

    if (a6 != 1)
    {
      sub_10004565C("clone group tree (id %llu): invalid cookie val length (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 9));
      v8 = 92;
      v9 = 1560;
      goto LABEL_3;
    }

    v17 = *(a3 + 9);
    if (*a3 != 1 || v17 <= 0x3FF)
    {
      sub_10004565C("clone group tree: cookie group_id (%llu) or cookie_group_id (%llu) is invalid\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      v8 = 92;
      v9 = 1561;
      goto LABEL_3;
    }

    v18 = v17 + 1;
    if (*(a7 + 56) < v18)
    {
      v8 = 0;
      *(a7 + 56) = v18;
      return v8;
    }

    return 0;
  }

  if (v15 != 1)
  {
    sub_100045744("clone group tree: unknown type (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 8));
    return 0;
  }

  v16 = *a3;
  if (*a3 <= 0x3FFuLL)
  {
    sub_10004565C("clone group tree: mapping group_id (%llu) is invalid\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    v8 = 92;
    v9 = 1532;
    goto LABEL_3;
  }

  if (*(a7 + 56) < (v16 + 1))
  {
    *(a7 + 56) = v16 + 1;
  }

  if (a4 != 25)
  {
    sub_10004565C("clone group tree (id %llu): invalid key length (%u)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v8 = 92;
    v9 = 1524;
    goto LABEL_3;
  }

  v23 = *(a3 + 9);
  if (v23 <= 0xF)
  {
    v56 = *(a3 + 9);
    v59 = *(a3 + 17);
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): private_id is invalid\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v8 = 92;
    v9 = 1525;
    goto LABEL_3;
  }

  v24 = *(a7 + 40);
  if (v24 < v23 + 1)
  {
    *(a7 + 40) = v23 + 1;
    v24 = v23 + 1;
  }

  v25 = *(a3 + 17);
  if (v25 <= 0xF)
  {
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): inum is invalid\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v8 = 92;
    v9 = 1526;
    goto LABEL_3;
  }

  if (v24 < v25 + 1)
  {
    *(a7 + 40) = v25 + 1;
  }

  if (a6 <= 0xB)
  {
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): invalid value length (%u)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v8 = 92;
    v9 = 1527;
    goto LABEL_3;
  }

  v26 = *(a1 + 8);
  v27 = *(v26 + 36);
  if (*a5 % v27 || *a5 / v27 > *(v26 + 40))
  {
    sub_100045744("clonegroup (group id %llu, private_id %llu, file id %llu): invalid physical_size (%llu)\n", a2, a3, a4, a5, a6, a7, a8, v16);
    sub_100049C40(0x5F8, -11);
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if (*(a5 + 8) >= 0x20u)
  {
    v62 = *(a5 + 8);
    v57 = *(a3 + 9);
    v60 = *(a3 + 17);
    sub_100045744("clonegroup (group id %llu, private_id %llu, file id %llu): unknown flags (0x%x / known flags are: 0x%x)", a2, a3, a4, a5, a6, a7, a8, *a3);
    sub_100049C40(0x5F9, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v29, v30, v31, v32, v33, v34, *(a5 + 8) & 0xE0))
      {
        *(a5 + 8) &= 0x1Fu;
        *a8 = 1;
      }
    }
  }

  v35 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
  v64 = 0;
  v65 = v35;
  v66 = 20;
  v63 = 0;
  v36 = sub_1000149BC(a1, a2, &v65, (a5 + 12), (v13 - 12), sub_100018048, a7, a8, &v63);
  if (v36)
  {
    v8 = v36;
    v58 = *(a3 + 9);
    v61 = *(a3 + 17);
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): invalid xfields\n", v37, v38, v39, v40, v41, v42, v43, *a3);
    return v8;
  }

  if ((*(a5 + 8) & 0x10) != 0)
  {
    if (v64)
    {
      v55 = sub_100006328(v64, *a5);
      if (v55)
      {
        return v55;
      }
    }

    if (v63)
    {
      v55 = sub_100018970(v63, *a5);
      if (v55)
      {
        return v55;
      }
    }
  }

  v44 = sub_100038958(a3, v63, v64, *(a5 + 8), v28);
  v8 = v44;
  if (v44)
  {
    v45 = *a3;
    v46 = *(a3 + 9);
    v47 = *(a3 + 17);
    strerror(v44);
    sub_10004565C("clonegroup (group id %llu, private_id %llu, file id %llu): can't register for cross checks: %d (%s)\n", v48, v49, v50, v51, v52, v53, v54, v45);
    v9 = 1530;
    v10 = v8;
    goto LABEL_4;
  }

  return v8;
}

char *sub_10001476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a2)
  {
    sub_100008AD4(a1);
  }

  sub_10000B374(a2);
  sub_100006D30(a2);
  sub_10002794C(a2);
  sub_100018290(a2);
  sub_100005EA4();
  result = sub_100000B78();
  if (a1)
  {
    v19 = *(a1 + 8);

    return sub_1000229E8(v19, v12, v13, v14, v15, v16, v17, v18, a9);
  }

  return result;
}

uint64_t sub_1000147E8(uint64_t a1)
{
  sub_10000B450();
  sub_100006E0C();
  sub_10002C5D4();
  sub_10001835C();
  sub_100005F78();
  sub_100000C60();
  sub_100022B40();
  sub_100038400();
  result = sub_10001F4EC();
  *(a1 + 10) = 0;
  return result;
}

uint64_t sub_100014830(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_10000B48C(0xFFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
  LODWORD(result) = sub_100027244(a1, a2, a3, v12, v13, v14, v15, v16);
  if (result)
  {
    return result;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_100014884(uint64_t *a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1000091D0(a1, a2, a4);
  }

  v13 = sub_10000BEE4(a1, a2, a4, a4, a5, a6, a7, a8);
  if (v13)
  {
    v12 = v13;
  }

  v14 = sub_100007270(a1, a2, a4);
  if (v14)
  {
    v12 = v14;
  }

  v20 = sub_100027244(a1, a2, a4, v15, v16, v17, v18, v19);
  if (v20)
  {
    v25 = v20;
  }

  else
  {
    v25 = v12;
  }

  v26 = sub_10002C578(a1, a2, a3, a4, v21, v22, v23, v24);
  if (!(sub_100000C9C(a1, a2, a4) | v26))
  {
    v26 = v25;
  }

  v27 = sub_100018AF0(a1, a2, a4);
  if (v27)
  {
    v26 = v27;
  }

  v28 = sub_100006454(a1, a2, a3);
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v26;
  }

  v30 = sub_100022F40(a1, a2, a4);
  if (v30)
  {
    v29 = v30;
  }

  LODWORD(result) = sub_100038E98(a1, a2, a4);
  if (result)
  {
    return result;
  }

  else
  {
    return v29;
  }
}

uint64_t sub_1000149BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unsigned __int16 *, unint64_t, uint64_t, uint64_t, _DWORD *, uint64_t), uint64_t a7, _DWORD *a8, uint64_t a9)
{
  if (a5 >= 4)
  {
    v11 = *a4;
    if (a4[1] + 4 * v11 + 4 <= a5)
    {
      if (!*a4)
      {
        v20 = 0;
LABEL_15:
        if (v20 < a4[1])
        {
          sub_100045744("xf: xf_used_data (%u) is larger than expected (%u)\n", a2, a3, a4, a5, a6, a7, a8, a4[1]);
          sub_100049C40(0x44C, -11);
          if (sub_10004758C(qword_10009BA58, "Fix xf_used_data? ", v25, v26, v27, v28, v29, v30, v42))
          {
            v9 = 0;
            a4[1] = v20;
            *a8 = 1;
            return v9;
          }
        }

        return 0;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      v45 = &a4[2 * v11 + 2];
      v21 = a4 + 3;
      do
      {
        if ((a4[1] - v19) < *v21)
        {
          v31 = *a3 >> 60;
          if (v31 == 14)
          {
            LODWORD(v31) = *(a3 + 8);
          }

          v32 = sub_10003EDFC(v31);
          v33 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v34 = *a4;
          sub_10003EE2C(a3, *(v21 - 2));
          v43 = *v21;
          v44 = a4[1];
          sub_10004565C("%s (id %llu): xf %u/%u: %s: extended field at offset %u+%u extends beyond xf_used_data (%u)\n", v35, v36, v37, v38, v39, v40, v41, v32);
          v9 = 92;
          v12 = 899;
          goto LABEL_5;
        }

        v22 = a6(a1, a2, a3, a4, v18, v45 + v19, a7, a8, a9);
        if (v22)
        {
          return v22;
        }

        v23 = *v21;
        v21 += 2;
        v24 = (v23 + 7) & 0x1FFF8;
        v20 += v24;
        ++v18;
        v19 += v24;
      }

      while (v18 < *a4);
      if (v20 < 0x10000)
      {
        goto LABEL_15;
      }

      sub_10004565C("xf: xf total size (%u) is larger than UINT16_MAX\n", a2, a3, a4, a5, a6, a7, a8, v20);
      v9 = 92;
      v12 = 1099;
    }

    else
    {
      sub_10004565C("xf: xf_num_exts (%u) extended fields do not fit in the given xf_used_data (%u)\n", a2, a3, a4, a5, a6, a7, a8, *a4);
      v9 = 92;
      v12 = 191;
    }

LABEL_5:
    sub_100049C40(v12, 92);
    return v9;
  }

  return 0;
}

uint64_t sub_100014BE8(uint64_t *a1, int8x16_t *a2, uint64_t a3, unsigned __int16 *a4, int a5, UInt8 *bytes, uint64_t a7, _DWORD *a8, uint64_t a9)
{
  v15 = &a4[2 * a5];
  v16 = *(a9 + 48);
  v19 = *(v15 + 4);
  v18 = (v15 + 2);
  v17 = v19;
  v20 = *(v18 + 1);
  if (v19 <= 0x15 && ((0x251uLL >> v17) & 1) == 0 && word_100076D50[v17] != v20)
  {
    v55 = *a3 >> 60;
    if (v55 == 14)
    {
      LODWORD(v55) = *(a3 + 8);
    }

    v56 = sub_10003EDFC(v55);
    v57 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v58 = *a4;
    sub_10003EE2C(a3, *v18);
    v433 = *(v18 + 1);
    sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, expected %u\n", v59, v60, v61, v62, v63, v64, v65, v56);
    v21 = 92;
    v53 = 983;
LABEL_20:
    v54 = 92;
    goto LABEL_21;
  }

  v21 = 0;
  switch(v17)
  {
    case 1:
    case 2:
    case 6:
    case 7:
    case 9:
      v22 = a2;
      v23 = a7;
      v24 = *a3 >> 60;
      if (v24 == 14)
      {
        LODWORD(v24) = *(a3 + 8);
      }

      v25 = sub_10003EDFC(v24);
      v26 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v415 = *a4;
      sub_10003EE2C(a3, *v18);
      sub_100045744("%s (id %llu): xf %u/%u: %s: extended field type is no longer used\n", v27, v28, v29, v30, v31, v32, v33, v25);
      v34 = 987;
      goto LABEL_6;
    case 3:
      *uu = *bytes;
      v447 = *uu;
      v450 = a7;
      v446 = a2;
      if (*uu <= 2u)
      {
        v196 = *a3 >> 60;
        if (v196 == 14)
        {
          LODWORD(v196) = *(a3 + 8);
        }

        v197 = sub_10003EDFC(v196);
        v441 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v443 = v197;
        v198 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: invalid doc_id (%u), less than MIN_DOC_ID (%u)\n", v199, v200, v201, v202, v203, v204, v205, v443);
        sub_100049C40(0xC2, -2);
        a7 = v450;
        a2 = v446;
      }

      v206 = *(v16 + 68);
      if ((v206 & 0x40) != 0)
      {
        goto LABEL_88;
      }

      v444 = v206 | 0x40;
      v207 = *a3 >> 60;
      if (v207 == 14)
      {
        LODWORD(v207) = *(a3 + 8);
      }

      v208 = sub_10003EDFC(v207);
      v440 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v442 = v208;
      v209 = *a4;
      sub_10003EE2C(a3, *v18);
      v437 = *(v16 + 68);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: doc_id exists (%u), despite bsd_flags (0x%x)\n", v210, v211, v212, v213, v214, v215, v216, v442);
      v21 = 92;
      sub_100049C40(0x44D, 92);
      if (sub_10004758C(qword_10009BA58, "Set bsd_flags to 0x%x? ", v217, v218, v219, v220, v221, v222, v444))
      {
        a2 = v446;
        *(v16 + 68) = v444;
        *a8 = 1;
        a7 = v450;
LABEL_88:
        if (*(a7 + 48) < (v447 + 1))
        {
          *(a7 + 48) = v447 + 1;
        }

        v223 = sub_100005408(a1, a2, *a3 & 0xFFFFFFFFFFFFFFFLL, uu, a7, a8);
        if (v223)
        {
          v21 = v223;
          v224 = *a3 >> 60;
          if (v224 == 14)
          {
            LODWORD(v224) = *(a3 + 8);
          }

          v225 = sub_10003EDFC(v224);
          v226 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v422 = *a4;
          sub_10003EE2C(a3, *v18);
          sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid doc_id index\n", v227, v228, v229, v230, v231, v232, v233, v225);
        }

        else
        {
          if (*a8)
          {
            *bytes = *uu;
          }

          v21 = 0;
          *a9 = 1;
        }
      }

      return v21;
    case 4:
      if (bytes[v20 - 1])
      {
        v90 = *a3 >> 60;
        if (v90 == 14)
        {
          LODWORD(v90) = *(a3 + 8);
        }

        v91 = sub_10003EDFC(v90);
        v92 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v93 = *a4;
        sub_10003EE2C(a3, *v18);
        v439 = *(v18 + 1);
        sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid name (%.*s), given name_len (%u)\n", v94, v95, v96, v97, v98, v99, v100, v91);
        v21 = 92;
        v53 = 196;
        goto LABEL_20;
      }

      if (!sub_10000F0D0(bytes, v20))
      {
        return 0;
      }

      v304 = *a3 >> 60;
      if (v304 == 14)
      {
        LODWORD(v304) = *(a3 + 8);
      }

      v305 = sub_10003EDFC(v304);
      v306 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v307 = *a4;
      sub_10003EE2C(a3, *v18);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid name (%s)\n", v308, v309, v310, v311, v312, v313, v314, v305);
      v78 = 197;
      v79 = -9;
      goto LABEL_60;
    case 5:
    case 12:
    case 15:
    case 16:
    case 18:
      return v21;
    case 8:
      v101 = *(bytes + 1);
      *uu = *bytes;
      v452 = v101;
      v453 = *(bytes + 4);
      if ((*(v16 + 80) & 0xF000) == 0x8000)
      {
        v448 = a7;
        v445 = a2;
        v102 = sub_1000162BC(a1, a2, a3, v16, uu, a7, a8);
        if (v102)
        {
          v21 = v102;
          v105 = *a3 >> 60;
          if (v105 == 14)
          {
            LODWORD(v105) = *(a3 + 8);
          }

          v106 = sub_10003EDFC(v105);
          v107 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v417 = *a4;
          sub_10003EE2C(a3, *v18);
          sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid dstream\n", v108, v109, v110, v111, v112, v113, v114, v106);
          return v21;
        }

        v350 = *(v16 + 8);
        v351 = *&uu[8];
        if (v350)
        {
          v352 = *&uu[8];
          v353 = sub_10000B5B8(*a3 & 0xFFFFFFFFFFFFFFFLL, v350, *&uu[8], 1, (*(v16 + 48) >> 7) & 1, (*(v16 + 48) >> 22) & 1, v103, v104);
          v351 = v352;
          if (v353)
          {
            v21 = v353;
            v354 = *a3 >> 60;
            if (v354 == 14)
            {
              LODWORD(v354) = *(a3 + 8);
            }

            v355 = sub_10003EDFC(v354);
            v356 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v357 = *a4;
            sub_10003EE2C(a3, *v18);
            sub_10004565C("%s (id %llu): xf %u/%u: %s: failed to register dstream: %d\n", v358, v359, v360, v361, v362, v363, v364, v355);
            return v21;
          }
        }

        *(a9 + 16) = v351;
        v385 = v445[6];
        if (!v385)
        {
          v385 = v445[5];
        }

        if ((*(v385 + 56) & 0x20) == 0)
        {
          sub_100007070(*a3 & 0xFFFFFFFFFFFFFFFLL, uu);
          if (v386)
          {
            v21 = v386;
            v391 = *a3 >> 60;
            if (v391 == 14)
            {
              LODWORD(v391) = *(a3 + 8);
            }

            v392 = sub_10003EDFC(v391);
            v393 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v394 = *a4;
            sub_10003EE2C(a3, *v18);
            sub_10004565C("%s (id %llu): xf %u/%u: %s: failed to register dstream for crypto state tracking: %d\n", v395, v396, v397, v398, v399, v400, v401, v392);
            return v21;
          }

          v413 = *(v16 + 8);
          if (v413 < (*a3 & 0xFFFFFFFFFFFFFFFuLL) && (*(v16 + 50) & 0x40) != 0 && *(v448 + 64))
          {
            sub_1000169D0(a1, v445, v413, v448, v387, v388, v389, v390);
          }
        }

        if (*a8)
        {
          v414 = v452;
          *bytes = *uu;
          *(bytes + 1) = v414;
          *(bytes + 4) = v453;
        }

LABEL_174:
        v21 = 0;
        *(a9 + 3) = 1;
        return v21;
      }

      v254 = a2;
      v255 = a7;
      v256 = *a3 >> 60;
      if (v256 == 14)
      {
        LODWORD(v256) = *(a3 + 8);
      }

      v257 = sub_10003EDFC(v256);
      v258 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v425 = *a4;
      sub_10003EE2C(a3, *v18);
      sub_100045744("%s (id %llu): xf %u/%u: %s: found unexpected dstream associated with non-regular file\n", v259, v260, v261, v262, v263, v264, v265, v257);
      if (*(v255 + 64))
      {
        v272 = 0;
      }

      else
      {
        v272 = v254 + 48;
      }

      v273 = sub_10000B8E0(v272, *a3, v266, v267, v268, v269, v270, v271);
      if (!v273)
      {
        goto LABEL_174;
      }

      v21 = v273;
      v274 = *a3 >> 60;
      if (v274 == 14)
      {
        LODWORD(v274) = *(a3 + 8);
      }

      v275 = sub_10003EDFC(v274);
      v276 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v426 = *a4;
      sub_10003EE2C(a3, *v18);
      sub_100045744("%s (id %llu): xf %u/%u: %s: unable to remove dstream of non-regular inode\n", v277, v278, v279, v280, v281, v282, v283, v275);
      return v21;
    case 10:
      v160 = *bytes;
      if (*bytes <= 0xFuLL && (*bytes - 4) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v449 = a7;
        v162 = *a3 >> 60;
        if (v162 == 14)
        {
          LODWORD(v162) = *(a3 + 8);
        }

        v163 = sub_10003EDFC(v162);
        v164 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v165 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v166, v167, v168, v169, v170, v171, v172, v163);
        sub_100049C40(0xC7, -2);
        a7 = v449;
      }

      v173 = *(v16 + 48);
      if ((v173 & 4) != 0 && (v174 = a7, sub_100018834(v160, *a3 & 0xFFFFFFFFFFFFFFFLL, v173), a7 = v174, v175))
      {
        v21 = v175;
        v176 = *a3 >> 60;
        if (v176 == 14)
        {
          LODWORD(v176) = *(a3 + 8);
        }

        v177 = sub_10003EDFC(v176);
        v178 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v420 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_10004565C("%s (id %llu): xf %u/%u: %s: failed to register dir-stats (%llu) origin: %d\n", v179, v180, v181, v182, v183, v184, v185, v177);
      }

      else
      {
        if (*(a7 + 40) < (v160 + 1))
        {
          *(a7 + 40) = v160 + 1;
        }

        v21 = 0;
        *(a9 + 2) = 1;
        *(a9 + 8) = v160;
      }

      return v21;
    case 11:
      *uu = *bytes;
      if (!uuid_is_null(uu))
      {
        return 0;
      }

      v80 = *a3 >> 60;
      if (v80 == 14)
      {
        LODWORD(v80) = *(a3 + 8);
      }

      v81 = sub_10003EDFC(v80);
      v82 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v416 = *a4;
      sub_10003EE2C(a3, *v18);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: uuid is NULL\n", v83, v84, v85, v86, v87, v88, v89, v81);
      v21 = 92;
      v53 = 200;
      goto LABEL_20;
    case 13:
      if ((*(v16 + 49) & 2) == 0)
      {
        v115 = *a3 >> 60;
        if (v115 == 14)
        {
          LODWORD(v115) = *(a3 + 8);
        }

        v116 = sub_10003EDFC(v115);
        v117 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v418 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: sparse_bytes set even though inode is not sparse\n", v118, v119, v120, v121, v122, v123, v124, v116);
        sub_100049C40(0xC9, -5);
      }

      v21 = 0;
      *(a9 + 24) = *bytes;
      *(a9 + 4) = 1;
      return v21;
    case 14:
      *(a9 + 1) = 1;
      if ((*(a2[2].i64[1] + 57) & 2) != 0)
      {
        v22 = a2;
        v23 = a7;
        v244 = *a3 >> 60;
        if (v244 == 14)
        {
          LODWORD(v244) = *(a3 + 8);
        }

        v245 = sub_10003EDFC(v244);
        v246 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v424 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found rdev x-field but volume has rdev in core-inode\n", v247, v248, v249, v250, v251, v252, v253, v245);
        v34 = 1156;
        goto LABEL_6;
      }

      if ((*(v16 + 80) & 0xB000 | 0x4000) != 0x6000)
      {
        v22 = a2;
        v23 = a7;
        v365 = *a3 >> 60;
        if (v365 == 14)
        {
          LODWORD(v365) = *(a3 + 8);
        }

        v366 = sub_10003EDFC(v365);
        v367 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v431 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found rdev x-field even though inode is not a char/block device\n", v368, v369, v370, v371, v372, v373, v374, v366);
        v34 = 1157;
        goto LABEL_6;
      }

      if (!*bytes)
      {
        v67 = *a3 >> 60;
        if (v67 == 14)
        {
          LODWORD(v67) = *(a3 + 8);
        }

        v68 = sub_10003EDFC(v67);
        v69 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v70 = *a4;
        sub_10003EE2C(a3, *v18);
        v434 = *(v16 + 80);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found zero rdev on char/block device (mode %u)\n", v71, v72, v73, v74, v75, v76, v77, v68);
        v78 = 1212;
        v79 = 92;
LABEL_60:
        sub_100049C40(v78, v79);
      }

      return 0;
    case 17:
      v125 = a2[2].i64[1];
      if ((*(v125 + 57) & 2) != 0)
      {
        v22 = a2;
        v23 = a7;
        v284 = *a3 >> 60;
        if (v284 == 14)
        {
          LODWORD(v284) = *(a3 + 8);
        }

        v285 = sub_10003EDFC(v284);
        v286 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v427 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found nlink x-field but volume has dir-nlink in core-inode\n", v287, v288, v289, v290, v291, v292, v293, v285);
        v34 = 1154;
      }

      else
      {
        if ((*(v125 + 48) & 2) == 0)
        {
          v22 = a2;
          v23 = a7;
          v126 = *a3 >> 60;
          if (v126 == 14)
          {
            LODWORD(v126) = *(a3 + 8);
          }

          v127 = sub_10003EDFC(v126);
          v128 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v419 = *a4;
          sub_10003EE2C(a3, *v18);
          sub_100045744("%s (id %llu): xf %u/%u: %s: found nlink field but volume doesn't support it\n", v129, v130, v131, v132, v133, v134, v135, v127);
          v34 = 984;
          goto LABEL_6;
        }

        if ((*(v16 + 80) & 0xF000) == 0x4000)
        {
          v326 = *bytes;
          if (*bytes <= *(v16 + 56))
          {
            if (!(v326 >> 31))
            {
LABEL_166:
              sub_10002C3CC(*a3 & 0xFFFFFFFFFFFFFFFLL, v326);
              return 0;
            }

            v402 = *a3 >> 60;
            if (v402 == 14)
            {
              LODWORD(v402) = *(a3 + 8);
            }

            v403 = sub_10003EDFC(v402);
            v404 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v405 = *a4;
            sub_10003EE2C(a3, *v18);
            sub_100045744("%s (id %llu): xf %u/%u: %s: directory nlink value is invalid (%llu)\n", v406, v407, v408, v409, v410, v411, v412, v403);
            LODWORD(v326) = 0;
            v338 = 1211;
          }

          else
          {
            v327 = *a3 >> 60;
            if (v327 == 14)
            {
              LODWORD(v327) = *(a3 + 8);
            }

            v328 = sub_10003EDFC(v327);
            v329 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v330 = *a4;
            sub_10003EE2C(a3, *v18);
            v438 = *(v16 + 56);
            sub_100045744("%s (id %llu): xf %u/%u: %s: directory nlink value %lld is greater than nchildren (%d)\n", v331, v332, v333, v334, v335, v336, v337, v328);
            v338 = 986;
          }

          sub_100049C40(v338, -8);
          goto LABEL_166;
        }

        v22 = a2;
        v23 = a7;
        v375 = *a3 >> 60;
        if (v375 == 14)
        {
          LODWORD(v375) = *(a3 + 8);
        }

        v376 = sub_10003EDFC(v375);
        v377 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v432 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found nlink field even though inode is not a directory\n", v378, v379, v380, v381, v382, v383, v384, v376);
        v34 = 985;
      }

LABEL_6:
      v35 = -5;
LABEL_7:
      sub_100049C40(v34, v35);
LABEL_8:
      if (*(v23 + 64))
      {
        v41 = 0;
      }

      else
      {
        v41 = v22 + 48;
      }

      v21 = sub_100026C40(v41, *a3, *v18, v36, v37, v38, v39, v40);
      if (v21)
      {
        v42 = *a3 >> 60;
        if (v42 == 14)
        {
          LODWORD(v42) = *(a3 + 8);
        }

        v43 = sub_10003EDFC(v42);
        v44 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v45 = *a4;
        sub_10003EE2C(a3, *v18);
        strerror(v21);
        sub_10004565C("%s (id %llu): xf %u/%u: %s: unable to add repair for unexpected xfield: %s\n", v46, v47, v48, v49, v50, v51, v52, v43);
        v53 = 1213;
        v54 = v21;
LABEL_21:
        sub_100049C40(v53, v54);
      }

      return v21;
    case 19:
      if ((*(v16 + 51) & 0x20) != 0)
      {
        v22 = a2;
        v23 = a7;
        v294 = *a3 >> 60;
        if (v294 == 14)
        {
          LODWORD(v294) = *(a3 + 8);
        }

        v295 = sub_10003EDFC(v294);
        v296 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v428 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found attribution tag on an inode with unsupported flags\n", v297, v298, v299, v300, v301, v302, v303, v295);
        v34 = 1336;
        goto LABEL_6;
      }

      if ((*(a2[2].i64[1] + 48) & 8) == 0)
      {
        v22 = a2;
        v23 = a7;
        v186 = *a3 >> 60;
        if (v186 == 14)
        {
          LODWORD(v186) = *(a3 + 8);
        }

        v187 = sub_10003EDFC(v186);
        v188 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v421 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found attribution tag on a volume that doesn't support them\n", v189, v190, v191, v192, v193, v194, v195, v187);
        v34 = 1315;
        goto LABEL_6;
      }

      v339 = *bytes;
      *(a9 + 32) = *bytes;
      if (!v339)
      {
        v340 = *a3 >> 60;
        if (v340 == 14)
        {
          LODWORD(v340) = *(a3 + 8);
        }

        v341 = sub_10003EDFC(v340);
        v342 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v430 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: invalid hash: (0)\n", v343, v344, v345, v346, v347, v348, v349, v341);
        sub_100049C40(0x524, -7);
      }

      v21 = 0;
      *(a9 + 5) = 1;
      return v21;
    case 20:
      if ((~*(v16 + 48) & 0x20000004) == 0)
      {
        return 0;
      }

      v22 = a2;
      v23 = a7;
      v234 = *a3 >> 60;
      if (v234 == 14)
      {
        LODWORD(v234) = *(a3 + 8);
      }

      v235 = sub_10003EDFC(v234);
      v236 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v423 = *a4;
      sub_10003EE2C(a3, *v18);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: inode is expected to be an SAF dir-stats origin\n", v237, v238, v239, v240, v241, v242, v243, v235);
      v34 = 1470;
      v35 = 92;
      goto LABEL_7;
    case 21:
      *(a9 + 40) = *bytes;
      if (*(a2[2].i64[1] + 1112))
      {
        v136 = *(a9 + 40);
        if (v136 > 0x3FF)
        {
          v325 = v136 + 1;
          if (*(a7 + 56) >= v325)
          {
            return 0;
          }

          v21 = 0;
          *(a7 + 56) = v325;
          return v21;
        }

        v22 = a2;
        v23 = a7;
        v137 = *a3 >> 60;
        if (v137 == 14)
        {
          LODWORD(v137) = *(a3 + 8);
        }

        v138 = sub_10003EDFC(v137);
        v139 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v140 = *a4;
        sub_10003EE2C(a3, *v18);
        v435 = *(a9 + 40);
        sub_100045744("%s (id %llu): xf %u/%u: %s: invalid clonegroup_id (%llu), less than CLONEGROUP_ID_MIN (%u)\n", v141, v142, v143, v144, v145, v146, v147, v138);
        v148 = 1519;
      }

      else
      {
        v22 = a2;
        v23 = a7;
        v315 = *a3 >> 60;
        if (v315 == 14)
        {
          LODWORD(v315) = *(a3 + 8);
        }

        v316 = sub_10003EDFC(v315);
        v317 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v429 = *a4;
        sub_10003EE2C(a3, *v18);
        sub_100045744("%s (id %llu): xf %u/%u: %s: found in an unsupported volume\n", v318, v319, v320, v321, v322, v323, v324, v316);
        v148 = 1518;
      }

      sub_100049C40(v148, -2);
      *(a9 + 40) = 0;
      goto LABEL_8;
    default:
      v149 = *a3 >> 60;
      if (v149 == 14)
      {
        LODWORD(v149) = *(a3 + 8);
      }

      v150 = sub_10003EDFC(v149);
      v151 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v152 = *a4;
      sub_10003EE2C(a3, *v18);
      v436 = *v18;
      sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v153, v154, v155, v156, v157, v158, v159, v150);
      v78 = 202;
      v79 = -5;
      goto LABEL_60;
  }
}

uint64_t sub_100015CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v12 = *(a4 + 48);
  v172 = 0;
  v13 = *(v12 + 48);
  if ((v13 & 6) != 0 && (*(a4 + 2) & 1) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFF9;
    v15 = sub_10003EDFC(*a5 >> 60);
    v153 = *a5 & 0xFFFFFFFFFFFFFFFLL;
    v163 = *(v12 + 48);
    sub_100045744("%s (id %llu): dir-stats key xf does not exist, despite internal_flags (0x%llx)\n", v16, v17, v18, v19, v20, v21, v22, v15);
    sub_100049C40(0x4CD, -3);
    if (sub_10004758C(qword_10009BA58, "Set internal_flags to 0x%llx? ", v23, v24, v25, v26, v27, v28, v14))
    {
      *(v12 + 48) = v14;
      *a6 = 1;
    }
  }

  if (*(a4 + 4) == 1 && (*(a4 + 3) & 1) == 0)
  {
    v29 = sub_10003EDFC(*a5 >> 60);
    v154 = *a5 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): dstream xf does not exist, despite existence of sparse bytes xf\n", v30, v31, v32, v33, v34, v35, v36, v29);
    sub_100049C40(0x4EA, -5);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  if (*(a4 + 2) != 1)
  {
    v60 = a6;
    v42 = (a4 + 24);
    v41 = *(a4 + 24);
    v45 = (a4 + 16);
    v44 = *(a4 + 16);
    if (v41 > v44 && v44 != 0)
    {
      v37 = a3;
      v38 = a1;
      v39 = a2;
      v171 = v60;
      v43 = 0;
      goto LABEL_26;
    }

    v62 = v60;
    goto LABEL_33;
  }

  v37 = a3;
  v38 = a1;
  v39 = a2;
  v171 = a6;
  v40 = *(v12 + 48);
  v42 = (a4 + 24);
  v41 = *(a4 + 24);
  v43 = (v40 & 6) == 2;
  v45 = (a4 + 16);
  v44 = *(a4 + 16);
  if (v41 > v44 && v44 != 0)
  {
LABEL_26:
    v63 = sub_10003FD88(v38, v39, *(v37 + 64), *a5 & 0xFFFFFFFFFFFFFFFLL, &v172);
    if (v63)
    {
      v51 = v63;
      v64 = 1333;
      v65 = v51;
LABEL_43:
      sub_100049C40(v64, v65);
      return v51;
    }

    if ((v172 & 1) == 0)
    {
      v77 = sub_10003EDFC(*a5 >> 60);
      v165 = *v42;
      v170 = *v45;
      v157 = *a5 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): number of sparse bytes (%llu) is larger than alloced_size (%llu)\n", v78, v79, v80, v81, v82, v83, v84, v77);
      v51 = 92;
      v64 = 1259;
      v65 = 92;
      goto LABEL_43;
    }

    if (v43 || (*(v12 + 51) & 0x10) != 0)
    {
      v85 = sub_10003EDFC(*a5 >> 60);
      v158 = *a5 & 0xFFFFFFFFFFFFFFFLL;
      sub_100045744("%s (id %llu): sparse bytes mismatch for a file in the purgatory\n", v86, v87, v88, v89, v90, v91, v92, v85);
      sub_100049C40(0x5FF, -11);
      v93 = *(v12 + 48) & 0xFFFFFFFFEFFFFFFDLL;
      v66 = 1;
      if (sub_10004758C(qword_10009BA58, "Set internal_flags to 0x%llx? ", v94, v95, v96, v97, v98, v99, *(v12 + 48) & 0xFD))
      {
        *(v12 + 48) = v93;
        v62 = v171;
        *v171 = 1;
LABEL_47:
        a2 = v39;
        a1 = v38;
        a3 = v37;
        goto LABEL_48;
      }
    }

    else
    {
      v66 = 1;
    }

    v62 = v171;
    goto LABEL_47;
  }

  if ((v40 & 6) != 2)
  {
    v62 = v171;
    a2 = v39;
    a1 = v38;
    a3 = v37;
LABEL_33:
    if (*(a4 + 5) != 1)
    {
LABEL_41:
      v66 = 0;
LABEL_48:
      v100 = *(v12 + 68);
      if ((v100 & 0x40) != 0 && (*a4 & 1) == 0)
      {
        v101 = v62;
        v102 = v100 & 0xFFFFFFBF;
        v103 = sub_10003EDFC(*a5 >> 60);
        v159 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        v166 = *(v12 + 68);
        sub_10004565C("%s (id %llu): doc_id xf does not exist, despite bsd_flags (0x%x)\n", v104, v105, v106, v107, v108, v109, v110, v103);
        v51 = 92;
        sub_100049C40(0x44E, 92);
        if (!sub_10004758C(qword_10009BA58, "Set bsd_flags to 0x%x? ", v111, v112, v113, v114, v115, v116, v102))
        {
          return v51;
        }

        *(v12 + 68) = v102;
        v62 = v101;
        *v101 = 1;
      }

      if ((*(v12 + 80) & 0xB000 | 0x4000) == 0x6000 && (*(a4 + 1) & 1) == 0)
      {
        v117 = sub_10003EDFC(*a5 >> 60);
        v160 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        v167 = *(v12 + 80);
        sub_100045744("%s (id %llu): no rdev xf on char/block device (mode %u)\n", v118, v119, v120, v121, v122, v123, v124, v117);
      }

      v125 = *(v12 + 48);
      if (*(a4 + 5) != (v125 & 0x10000000) >> 28)
      {
        if ((v125 & 0x10000000) != 0 || !*(a4 + 5))
        {
          v126 = v125 & 0xFFFFFFFFEFFFFFFFLL;
          v127 = 1318;
          v128 = "%s (id %llu): attribution tag xf does not exist, despite internal_flags (0x%llx)\n";
          goto LABEL_66;
        }

        if (v66)
        {
          if (v172)
          {
            return 0;
          }

          goto LABEL_65;
        }

        v51 = sub_10003FD88(a1, a2, *(a3 + 64), *a5 & 0xFFFFFFFFFFFFFFFLL, &v172);
        if (v51)
        {
          return v51;
        }

        if ((v172 & 1) == 0)
        {
          v125 = *(v12 + 48);
LABEL_65:
          v126 = v125 | 0x10000000;
          v127 = 1317;
          v128 = "%s (id %llu): attribution tag xf exists, despite internal_flags (0x%llx)\n";
LABEL_66:
          v129 = sub_10003EDFC(*a5 >> 60);
          v161 = *a5 & 0xFFFFFFFFFFFFFFFLL;
          v168 = *(v12 + 48);
          sub_100045744(v128, v130, v131, v132, v133, v134, v135, v136, v129);
          sub_100049C40(v127, -3);
          if (sub_10004758C(qword_10009BA58, "Set internal_flags to 0x%llx? ", v137, v138, v139, v140, v141, v142, v126))
          {
            v51 = 0;
            *(v12 + 48) = v126;
            *v62 = 1;
            return v51;
          }
        }
      }

      return 0;
    }

    v47 = v44 >= v41;
    v67 = v44 - v41;
    if (v47)
    {
      v49 = v67;
    }

    else
    {
      v49 = 0;
    }

LABEL_37:
    if (*(a4 + 5) == 1)
    {
      sub_100006234(*a5 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 32), v49);
      if (v68)
      {
        v51 = v68;
        v69 = sub_10003EDFC(*a5 >> 60);
        v156 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): failed to register attribution tag: %d\n", v70, v71, v72, v73, v74, v75, v76, v69);
        return v51;
      }
    }

    goto LABEL_41;
  }

  v47 = v44 >= v41;
  v48 = v44 - v41;
  if (v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  sub_100018778(*(a4 + 8), v49, (v40 >> 29) & 1);
  if (!v50)
  {
    if ((*(v12 + 80) & 0xF000) == 0x8000)
    {
      v62 = v171;
      if (*(v12 + 56) == 1)
      {
        a2 = v39;
        if ((*(v12 + 48) & 0x180000) == 0x80000)
        {
          a1 = v38;
          if ((*(v12 + 68) & 0x40000020) != 0x20)
          {
            sub_1000189F8(*(a4 + 8), v49);
            a3 = v37;
            if (v144)
            {
              v51 = v144;
              v145 = sub_10003EDFC(*a5 >> 60);
              v169 = *(a4 + 8);
              v162 = *a5 & 0xFFFFFFFFFFFFFFFLL;
              sub_10004565C("%s (id %llu): failed to register dir-stats (%llu) purgeable_size: %d\n", v146, v147, v148, v149, v150, v151, v152, v145);
              return v51;
            }

            goto LABEL_37;
          }

          goto LABEL_79;
        }

LABEL_78:
        a1 = v38;
LABEL_79:
        a3 = v37;
        goto LABEL_37;
      }
    }

    else
    {
      v62 = v171;
    }

    a2 = v39;
    goto LABEL_78;
  }

  v51 = v50;
  v52 = sub_10003EDFC(*a5 >> 60);
  v164 = *(a4 + 8);
  v155 = *a5 & 0xFFFFFFFFFFFFFFFLL;
  sub_10004565C("%s (id %llu): failed to register dir-stats (%llu) descendant: %d\n", v53, v54, v55, v56, v57, v58, v59, v52);
  return v51;
}

uint64_t sub_1000162BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, _DWORD *a7)
{
  v13 = *(*(a1 + 8) + 36);
  v14 = *(a2 + 40);
  v15 = a5[1];
  v192 = v14;
  if (v15 % v13)
  {
    v16 = a4;
    v17 = sub_10003EDFC(*a3 >> 60);
    v177 = a5[1];
    v167 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): dstream.alloced_size (%llu) is not a multiple of the block size (%u)\n", v18, v19, v20, v21, v22, v23, v24, v17);
    v25 = 92;
    sub_100049C40(0x381, 92);
    if (!sub_10004758C(qword_10009BA58, "Truncate alloced_size to block size? ", v26, v27, v28, v29, v30, v31, v164))
    {
      return v25;
    }

    v15 = a5[1] / v13 * v13;
    a5[1] = v15;
    *a7 = 1;
    v14 = v192;
    a4 = v16;
  }

  v32 = *(a6 + 64);
  v190 = a7;
  v191 = a3;
  v189 = a6;
  if (v32)
  {
    v33 = (*(*(a2 + 40) + 264) & 9) == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = 0;
  v35 = a5[2];
  v36 = *(v14 + 264) & 0x109;
  v37 = *a5;
  if (v36)
  {
    v38 = v35 != -1;
  }

  else
  {
    v38 = 1;
  }

  if (v33 && v35 == -1 && a4 && !v36)
  {
    v34 = (*(a4 + 48) & 0x10) == 0;
  }

  v193 = 0;
  if (v37 <= v15 && v38 && !v34 || (v39 = a4, v40 = sub_10003FD88(a1, a2, v32, *v191 & 0xFFFFFFFFFFFFFFFLL, &v193), a4 = v39, v14 = v192, v25 = v40, !v40))
  {
    if (v37 > v15 && (v193 & 1) == 0)
    {
      if ((v41 = *v191, !a4) && (v41 & 0xF000000000000000) == 0x4000000000000000 || (*(a4 + 48) & 0x80) == 0)
      {
        v42 = a4;
        v43 = sub_10003EDFC(v41 >> 60);
        v178 = *a5;
        v185 = a5[1];
        v168 = *v191 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): dstream.size (%llu) is greater than dstream.alloced_size (%llu)\n", v44, v45, v46, v47, v48, v49, v50, v43);
        v25 = 92;
        sub_100049C40(0xB8, 92);
        if (!sub_10004758C(qword_10009BA58, "Truncate size to alloced size? ", v51, v52, v53, v54, v55, v56, v165))
        {
          return v25;
        }

        *a5 = a5[1];
        *v190 = 1;
        v14 = v192;
        a4 = v42;
      }
    }

    if (!v38 && (v193 & 1) == 0)
    {
      v57 = a4;
      v58 = sub_10003EDFC(*v191 >> 60);
      v169 = *v191 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): found dstream with unassigned default_crypto_id\n", v59, v60, v61, v62, v63, v64, v65, v58);
      v25 = 92;
      sub_100049C40(0x3F5, 92);
      if (!sub_10004758C(qword_10009BA58, "Fix unassigned default_crypto_id? ", v66, v67, v68, v69, v70, v71, v166))
      {
        return v25;
      }

      v14 = v192;
      a5[2] = 4 * ((*(v192 + 264) & 0x108) != 0);
      *v190 = 1;
      a4 = v57;
    }

    if (!v33)
    {
      return 0;
    }

    v72 = *(v14 + 264);
    if (v72)
    {
      v73 = a5[2];
      if (!*(v14 + 976))
      {
        if (v73 + 1 < 2)
        {
          return 0;
        }

        v97 = v14;
        v98 = sub_10003EDFC(*v191 >> 60);
        v181 = a5[2];
        v187 = *(v97 + 264);
        v172 = *v191 & 0xFFFFFFFFFFFFFFFLL;
        sub_10004565C("%s (id %llu): invalid dstream.default_crypto_id (%llu) on unencrypted volume, given apfs_fs_flags (0x%llx)\n", v99, v100, v101, v102, v103, v104, v105, v98);
        v25 = 92;
        sub_100049C40(0xBD, 92);
        if (!sub_10004758C(qword_10009BA58, "Fix default_crypto_id (%llu)? ", v106, v107, v108, v109, v110, v111, a5[2]))
        {
          return v25;
        }

        v25 = 0;
        a5[2] = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v73 = a5[2];
    }

    if (v73 == 1)
    {
      v74 = sub_10003EDFC(*v191 >> 60);
      v170 = *v191 & 0xFFFFFFFFFFFFFFFLL;
      v179 = a5[2];
      sub_10004565C("%s (id %llu): invalid dstream.default_crypto_id (%llu)\n", v75, v76, v77, v78, v79, v80, v81, v74);
      v25 = 92;
      sub_100049C40(0xB9, 92);
      return v25;
    }

    if (v35 != -1)
    {
      if ((*(v14 + 264) & 0x109) == 8)
      {
        v25 = 0;
        if (v73 != 4 && !*(v14 + 976))
        {
          v82 = v14;
          v83 = sub_10003EDFC(*v191 >> 60);
          v180 = a5[2];
          v186 = *(v82 + 264);
          v171 = *v191 & 0xFFFFFFFFFFFFFFFLL;
          sub_10004565C("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume, given apfs_fs_flags (0x%llx)\n", v84, v85, v86, v87, v88, v89, v90, v83);
          v25 = 92;
          sub_100049C40(0xBA, 92);
          if (sub_10004758C(qword_10009BA58, "Fix default_crypto_id (%llu)? ", v91, v92, v93, v94, v95, v96, a5[2]))
          {
            v25 = 0;
            a5[2] = 4;
            goto LABEL_49;
          }
        }

        return v25;
      }

      if ((v72 & 1) != 0 || *(v14 + 976) | v73)
      {
        goto LABEL_60;
      }

      v127 = a4;
      v128 = v14;
      v129 = sub_10003EDFC(*v191 >> 60);
      v183 = a5[2];
      v188 = *(v128 + 264);
      v174 = *v191 & 0xFFFFFFFFFFFFFFFLL;
      sub_10004565C("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume, given apfs_fs_flags (0x%llx)\n", v130, v131, v132, v133, v134, v135, v136, v129);
      sub_100049C40(0x34A, 92);
      if ((*(*(a2 + 40) + 57) & 2) == 0 || (~*(v127 + 68) & 0x40000020) != 0)
      {
        v14 = v192;
        if ((*(v192 + 264) & 0x109) == 0x100)
        {
          v153 = sub_10004758C(qword_10009BA58, "Fix default_crypto_id (%llu)? ", v137, v138, v139, v140, v141, v142, a5[2]);
          v14 = v192;
          if (v153)
          {
            a5[2] = 4;
            *v190 = 1;
            goto LABEL_64;
          }
        }
      }

      else
      {
        v143 = sub_10000B8E0((a2 + 768), *v191, v137, v138, v139, v140, v141, v142);
        v14 = v192;
        if (!v143)
        {
LABEL_60:
          v154 = a5[2];
          if (v154 - 16 < 0xFFFFFFFFFFFFFFF1)
          {
            goto LABEL_70;
          }

          if (v154 - 2 < 2 || v154 == 5)
          {
            goto LABEL_71;
          }

          if (v154 != 4)
          {
            goto LABEL_69;
          }

LABEL_64:
          if ((*(v14 + 264) & 1) == 0)
          {
            if ((*(v14 + 264) & 0x108) == 0x100)
            {
              v154 = 4;
              goto LABEL_71;
            }

            goto LABEL_69;
          }

          v154 = 4;
          if ((*(v14 + 264) & 0x109) != 0x100 && !*(v14 + 976))
          {
LABEL_69:
            v155 = sub_10003EDFC(*v191 >> 60);
            v176 = *v191 & 0xFFFFFFFFFFFFFFFLL;
            v184 = a5[2];
            sub_100045744("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume\n", v156, v157, v158, v159, v160, v161, v162, v155);
            sub_100049C40(0xBC, -2);
            v154 = a5[2];
LABEL_70:
            if (v154 != -1)
            {
              goto LABEL_71;
            }

            return 0;
          }

LABEL_71:
          if (*(v189 + 40) <= v154)
          {
            v25 = 0;
            *(v189 + 40) = v154 + 1;
            return v25;
          }

          return 0;
        }

        v144 = v143;
        v145 = sub_10003EDFC(*v191 >> 60);
        v175 = *v191 & 0xFFFFFFFFFFFFFFFLL;
        sub_100045744("%s (id %llu): unable to remove dstream of inode %llu\n", v146, v147, v148, v149, v150, v151, v152, v145);
        sub_100049C40(0x58F, v144);
        v14 = v192;
      }

      *(a2 + 13) = 1;
      goto LABEL_60;
    }

    if (!v34 || (v193 & 1) != 0)
    {
      return 0;
    }

    v112 = a4;
    v113 = sub_10003EDFC(*v191 >> 60);
    v173 = *v191 & 0xFFFFFFFFFFFFFFFLL;
    v182 = *(v112 + 48);
    sub_10004565C("%s (id %llu): invalid internal_flags (0x%llx) given unassigned default_crypto_id\n", v114, v115, v116, v117, v118, v119, v120, v113);
    v25 = 92;
    sub_100049C40(0x534, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix internal flags (0x%llx)? ", v121, v122, v123, v124, v125, v126, *(v112 + 48)))
    {
      return v25;
    }

    v25 = 0;
    *(v112 + 48) |= 0x10uLL;
LABEL_49:
    *v190 = 1;
  }

  return v25;
}

uint64_t sub_1000169D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  memset(v16, 170, sizeof(v16));
  result = sub_10003F8AC(a1, a2, 8, &v18, a5, a6, a7, a8);
  if (!result)
  {
    v15[0] = a1;
    v15[1] = a2;
    v17[0] = a3 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
    v17[1] = 0;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    result = sub_100039F68(v13, v18, *(a4 + 64), v17, 0x10u, 0x10u, v16, 24);
    if (!result)
    {
      return sub_10002C648(v13, sub_100016A94, v15, 0);
    }
  }

  return result;
}

uint64_t sub_100016A94(void *a1, int a2, void *a3, int a4, uint64_t *a5)
{
  result = 0xFFFFFFFFLL;
  if (a4 == 24 && a2 == 16 && (*a1 & 0xF000000000000000) == 0x8000000000000000)
  {
    v7 = a3[1];
    if (v7)
    {
      return sub_10001F94C(a5[1], v7, (*a3 & 0xFFFFFFFFFFFFFFuLL) / *(*(*a5 + 8) + 36));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100016AEC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  if (v6 <= 1)
  {
    v7 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): invalid hdr.obj_id\n", v8, v9, v10, v11, v12, v13, v14, v7);
    v15 = 92;
    v16 = 627;
LABEL_3:
    v17 = 92;
LABEL_4:
    sub_100049C40(v16, v17);
    return v15;
  }

  v25 = *(*(a1 + 8) + 36);
  if (v6 <= 0xF && v6 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v27 = sub_10003EDFC(8u);
    sub_100045744("%s (id %llu): invalid hdr.obj_id\n", v28, v29, v30, v31, v32, v33, v34, v27);
    sub_100049C40(0x274, -2);
  }

  if (*(a5 + 40) <= v6)
  {
    *(a5 + 40) = v6 + 1;
  }

  if (a3[1] % v25)
  {
    v35 = sub_10003EDFC(8u);
    v146 = a3[1];
    sub_10004565C("%s (id %llu): Logical address %llu of file extent not a multiple of the block size (%u)\n", v36, v37, v38, v39, v40, v41, v42, v35);
    v15 = 92;
    sub_100049C40(0x259, 92);
    if (!sub_10004758C(qword_10009BA58, "Round down logical address (%llu) to block size? ", v43, v44, v45, v46, v47, v48, a3[1]))
    {
      return v15;
    }

    a3[1] = a3[1] / v25 * v25;
    *a6 = 1;
  }

  v150 = a6;
  v151 = a2;
  v49 = *a4;
  v50 = *a4 & 0xFFFFFFFFFFFFFFLL;
  if (v50 % v25)
  {
    v51 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): Length %llu of file extent not a multiple of the block size (%u)\n", v52, v53, v54, v55, v56, v57, v58, v51);
    sub_100049C40(0xD6, 92);
    v159[0] = 0xAAAAAAAAAAAAAAAALL;
    v63 = sub_10003F8AC(a1, a2, 8, v159, v59, v60, v61, v62);
    v70 = a3[1];
    v154 = v6;
    v155 = v70;
    memset(v160, 170, 24);
    LODWORD(v152) = 16;
    v161[0] = 24;
    if (v63 || sub_1000397B8(v159[0], *(a5 + 64), 2u, &v154, &v152, 0x10u, v160, v161) || v152 != 16 || v154 != v6)
    {
      if (sub_10004758C(qword_10009BA58, "Round %s length (%llu) to block size? ", v64, v65, v66, v67, v68, v69, "down"))
      {
LABEL_19:
        v71 = v50 - v50 % v25;
LABEL_20:
        v49 = v71 & 0xFFFFFFFFFFFFFFLL | (*(a4 + 7) << 56);
        *a4 = v49;
        *v150 = 1;
        v50 = v71;
        goto LABEL_21;
      }
    }

    else
    {
      v71 = (v25 + v50 - 1) / v25 * v25;
      v149 = v155 - a3[1] == v71;
      v123 = "up";
      if (v155 - a3[1] != v71)
      {
        v123 = "down";
      }

      if (sub_10004758C(qword_10009BA58, "Round %s length (%llu) to block size? ", v64, v65, v66, v67, v68, v69, v123))
      {
        if (v149)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    return 92;
  }

LABEL_21:
  v72 = HIBYTE(v49);
  if (v49 >> 58)
  {
    v90 = sub_10003EDFC(8u);
    sub_100045744("%s (id %llu): unknown flags: (0x%02x / known flags are: 0x%02x)\n", v91, v92, v93, v94, v95, v96, v97, v90);
    sub_100049C40(0xD7, -3);
    if (*(*(a1 + 8) + 1384) > 0x959D39220F1C2uLL || !sub_10004758C(qword_10009BA58, "Unset unknown flags? (0x%llx) ", v98, v99, v100, v101, v102, v103, HIBYTE(v49) & 0xFC))
    {
      goto LABEL_32;
    }

    v88 = 0x300000000000000;
    v89 = 3;
    goto LABEL_31;
  }

  v73 = v151[6];
  if (!v73)
  {
    v73 = v151[5];
  }

  if ((*(v73 + 56) & 0x20) != 0 && (v49 & 0x100000000000000) != 0)
  {
    v74 = sub_10003EDFC(8u);
    sub_10004565C("%s (id %llu): invalid flags: (0x%02x)\n", v75, v76, v77, v78, v79, v80, v81, v74);
    v15 = 92;
    sub_100049C40(0x396, 92);
    if (!sub_10004758C(qword_10009BA58, "Remove invalid flags (0x%02x)? ", v82, v83, v84, v85, v86, v87, 1))
    {
      return v15;
    }

    v88 = 0x200000000000000;
    v89 = 2;
LABEL_31:
    LOBYTE(v72) = v89 & HIBYTE(v49);
    *a4 = *a4 & 0xFFFFFFFFFFFFFFLL | v49 & v88;
    *v150 = 1;
  }

LABEL_32:
  v104 = v151;
  if ((v72 & 2) != 0)
  {
    v105 = v151[6];
    if (!v105)
    {
      v105 = v151[5];
    }

    if ((*(v105 + 56) & 0x80) == 0)
    {
      v106 = sub_10003EDFC(8u);
      sub_10004565C("%s (id %llu): invalid flag: (0x%02x)\n", v107, v108, v109, v110, v111, v112, v113, v106);
      v15 = 92;
      sub_100049C40(0x3F6, 92);
      if (!sub_10004758C(qword_10009BA58, "Remove invalid flag (0x%02x)? ", v114, v115, v116, v117, v118, v119, 2))
      {
        return v15;
      }

      LOBYTE(v72) = v72 & 0xFD;
      *(a4 + 7) = v72;
      v104 = v151;
      *v150 = 1;
    }
  }

  v120 = *(a4 + 8);
  if ((v72 & 2) != 0)
  {
    if (!v120)
    {
      v136 = sub_10003EDFC(8u);
      v148 = a3[1];
      sub_10004565C("%s (id %llu): expected physical block number for extent at offset %lld\n", v137, v138, v139, v140, v141, v142, v143, v136);
      v15 = 92;
      v16 = 1015;
      goto LABEL_3;
    }
  }

  else if (!v120)
  {
    goto LABEL_46;
  }

  v121 = *(*(a1 + 8) + 40);
  if (v121 - v50 / v25 < v120 || v121 <= v50 / v25 || v120 < 1 || v121 <= v120)
  {
    v124 = sub_10003EDFC(8u);
    v147 = *(a4 + 8);
    sub_10004565C("%s (id %llu): Bad phys_block_num + len (%llu + %llu) for physical file extent record\n", v125, v126, v127, v128, v129, v130, v131, v124);
    v15 = 92;
    v16 = 216;
    goto LABEL_3;
  }

LABEL_46:
  v159[0] = 0;
  v159[1] = 0;
  if (v104)
  {
    v122 = *(*(v104 + 40) + 8);
  }

  else
  {
    v122 = 0;
  }

  v160[0] = v122;
  v160[1] = 0xF000040000000;
  v132 = *(a5 + 64);
  v160[2] = v120;
  v160[3] = v132;
  v157 = 16;
  v158 = 32;
  if (sub_1000397B8(dword_10009BA68, 0, 0, v160, &v158, 0x20u, v159, &v157))
  {
    goto LABEL_72;
  }

  v155 = 0;
  v156 = 0;
  v152 = 0;
  v153 = 0;
  v135 = v104 ? *(*(v104 + 40) + 8) : 0;
  v144 = *(a4 + 8);
  v154 = v135;
  v155 = v144;
  v156 = v6;
  v145 = a3[1];
  v152 = *(a5 + 64);
  v153 = v145;
  v15 = sub_10003B12C(dword_10009BAA8, 0, &v154, 24, &v152, 0x10u);
  if (!v15)
  {
LABEL_72:
    v133 = *(a4 + 8);
    if (!v133)
    {
      return 0;
    }

    v134 = sub_10000BE34(a3);
    v15 = sub_10001F568(v104, v133, v50 / v25, v6, v134);
    if (v15)
    {
      v16 = 828;
      v17 = v15;
      goto LABEL_4;
    }
  }

  return v15;
}

double sub_100017118(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = *a3;
  if ((*a3 & 0x100000000000000) == 0)
  {
    v11 = *(a3 + 16);
    if (v11 <= 0xF)
    {
      v12 = v11 > 5;
      v13 = (1 << v11) & 0x2D;
      if (v12 || v13 == 0)
      {
        v92 = sub_10003EDFC(*a2 >> 60);
        v124 = *a2 & 0xFFFFFFFFFFFFFFFLL;
        v128 = *(a3 + 16);
        sub_100045744("%s (id %llu): invalid crypto_id (%llu)\n", v93, v94, v95, v96, v97, v98, v99, v92);
        sub_100049C40(0xD9, -2);
      }
    }
  }

  if (*(a3 + 8))
  {
    v15 = HIBYTE(v10);
    v16 = *(a1 + 40);
    v17 = *(v16 + 264);
    if (*(a4 + 64))
    {
      v18 = (*(v16 + 264) & 9) == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = *(v16 + 976);
      if (v17)
      {
        if (!v19)
        {
          if (*(a3 + 16))
          {
            v64 = sub_10003EDFC(*a2 >> 60);
            v122 = *a2 & 0xFFFFFFFFFFFFFFFLL;
            v127 = *(a3 + 16);
            sub_10004565C("%s (id %llu): invalid nonzero crypto_id (%llu) on unencrypted volume\n", v65, v66, v67, v68, v69, v70, v71, v64);
            sub_100049C40(0x342, 92);
            if (!sub_10004758C(qword_10009BA58, "Fix crypto_id (%llu)? ", v72, v73, v74, v75, v76, v77, *(a3 + 16)))
            {
              return result;
            }

            *(a3 + 16) = 0;
            *a5 = 1;
          }

          if ((v10 & 0x100000000000000) != 0)
          {
            v78 = sub_10003EDFC(*a2 >> 60);
            v123 = *a2 & 0xFFFFFFFFFFFFFFFLL;
            sub_10004565C("%s (id %llu): extent crypto flag set on unencrypted volume\n", v79, v80, v81, v82, v83, v84, v85, v78);
            sub_100049C40(0x3CF, 92);
            if (!sub_10004758C(qword_10009BA58, "Clear invalid flag? ", v86, v87, v88, v89, v90, v91, v117))
            {
              return result;
            }

            *(a3 + 7) = (v10 & 0xFE00000000000000) >> 56;
            *a5 = 1;
            goto LABEL_32;
          }
        }
      }

      else if (!v19)
      {
        if (!*(a3 + 16))
        {
          v101 = sub_10003EDFC(*a2 >> 60);
          v125 = *a2 & 0xFFFFFFFFFFFFFFFLL;
          sub_10004565C("%s (id %llu): invalid zero crypto_id on encrypted volume\n", v102, v103, v104, v105, v106, v107, v108, v101);
          sub_100049C40(0x343, 92);
          if ((*(*(a1 + 40) + 264) & 0x108) == 0 || !sub_10004758C(qword_10009BA58, "Fix crypto_id? ", v109, v110, v111, v112, v113, v114, v118))
          {
            return result;
          }

          *(a3 + 16) = *(a3 + 8);
          LOBYTE(v15) = HIBYTE(v10) | 1;
          *(a3 + 7) = HIBYTE(v10) | 1;
          *a5 = 1;
          v17 = *(*(a1 + 40) + 264);
        }

        if ((v17 & 0x109) == 8 && (v15 & 1) == 0)
        {
          v21 = sub_10003EDFC(*a2 >> 60);
          v119 = *a2 & 0xFFFFFFFFFFFFFFFLL;
          sub_10004565C("%s (id %llu): extent crypto flag missing on encrypted volume\n", v22, v23, v24, v25, v26, v27, v28, v21);
          sub_100049C40(0x3CE, 92);
          if (!sub_10004758C(qword_10009BA58, "Set missing flag? ", v29, v30, v31, v32, v33, v34, v115))
          {
            return result;
          }

          LOBYTE(v15) = v15 | 1;
          *(a3 + 7) = v15;
          *(a3 + 16) = *(a3 + 8);
          *a5 = 1;
        }
      }
    }

    if (v15)
    {
LABEL_34:

      return sub_100007114(a2, a3);
    }

LABEL_32:
    v49 = *(a3 + 16) + 1;
    if (*(a4 + 40) < v49)
    {
      *(a4 + 40) = v49;
    }

    goto LABEL_34;
  }

  if (*(a3 + 16))
  {
    v35 = sub_10003EDFC(*a2 >> 60);
    v120 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v126 = *(a3 + 16);
    sub_100045744("%s (id %llu): invalid sparse extent with nonzero crypto_id (%llu)\n", v36, v37, v38, v39, v40, v41, v42, v35);
    sub_100049C40(0x341, 92);
    if (sub_10004758C(qword_10009BA58, "Fix crypto_id (%llu)? ", v43, v44, v45, v46, v47, v48, *(a3 + 16)))
    {
      *(a3 + 16) = 0;
      *a5 = 1;
    }
  }

  if ((v10 & 0x100000000000000) != 0 && (*(*(a1 + 40) + 264) & 9) == 0)
  {
    v50 = sub_10003EDFC(*a2 >> 60);
    v121 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): extent crypto flag set on sparse extent\n", v51, v52, v53, v54, v55, v56, v57, v50);
    sub_100049C40(0x3E8, -3);
    if (sub_10004758C(qword_10009BA58, "Clear invalid flag? ", v58, v59, v60, v61, v62, v63, v116))
    {
      *(a3 + 7) = (v10 & 0xFE00000000000000) >> 56;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t sub_100017544(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = off_10009B0E8(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100017584(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, uint64_t *a6, uint64_t a7)
{
  v10 = &a4[2 * a5];
  v13 = *(v10 + 4);
  v12 = (v10 + 2);
  v11 = v13;
  if ((v13 - 1) > 1 || *(v12 + 1) == 8)
  {
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        v14 = *a6;
        if (*a6 <= 0xF && (*a6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = *a3 >> 60;
          if (v16 == 14)
          {
            LODWORD(v16) = *(a3 + 8);
          }

          v17 = sub_10003EDFC(v16);
          v18 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v19 = *a4;
          sub_10003EE2C(a3, *v12);
          sub_100045744("%s (id %llu): xf %u/%u: %s: invalid sibling_id (%llu)\n", v20, v21, v22, v23, v24, v25, v26, v17);
          sub_100049C40(0xC0, -2);
        }

        if (*(a7 + 40) < (v14 + 1))
        {
          v27 = 0;
          *(a7 + 40) = v14 + 1;
          return v27;
        }
      }

      else
      {
        v39 = *a3 >> 60;
        if (v39 == 14)
        {
          LODWORD(v39) = *(a3 + 8);
        }

        v40 = sub_10003EDFC(v39);
        v41 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v42 = *a4;
        sub_10003EE2C(a3, *v12);
        v52 = *v12;
        sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v43, v44, v45, v46, v47, v48, v49, v40);
        sub_100049C40(0xC1, -5);
      }
    }

    return 0;
  }

  v28 = *a3 >> 60;
  if (v28 == 14)
  {
    LODWORD(v28) = *(a3 + 8);
  }

  v29 = sub_10003EDFC(v28);
  v30 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v31 = *a4;
  sub_10003EE2C(a3, *v12);
  v53 = *v12;
  v51 = *(v12 + 1);
  sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %lu\n", v32, v33, v34, v35, v36, v37, v38, v29);
  v27 = 92;
  sub_100049C40(0x3D6, 92);
  return v27;
}

uint64_t sub_10001775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 48);
  if (!v8)
  {
    v8 = *(a2 + 40);
  }

  if ((*(v8 + 56) & 0x20) == 0)
  {
    v9 = sub_10003EDFC(*a3 >> 60);
    v52 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_100045744("%s (id %llu): Found data hash on unsealed volume\n", v10, v11, v12, v13, v14, v15, v16, v9);
    sub_100049C40(0x3A4, -5);
    return sub_100027D7C((a2 + 768), 7, 0, 0, 0, a3, 0x10u, 0, 0);
  }

  if ((*(a3 + 8) & 0x3FFF) != 0)
  {
    v18 = sub_10003EDFC(*a3 >> 60);
    v56 = *(a3 + 8) & 0xFFFFFFFFFFFFFFLL;
    v53 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): Logical address %llu of data hash not a multiple of the hash chunk size (%u)\n", v19, v20, v21, v22, v23, v24, v25, v18);
    v26 = 92;
    v27 = 933;
LABEL_15:
    v43 = 92;
    goto LABEL_16;
  }

  v28 = *(a4 + 2);
  v29 = *(a2 + 20);
  if (v29 != v28 && (v29 > v28 || (*(a2 + 16) & 0xC00) == 0))
  {
    v44 = sub_10003EDFC(*a3 >> 60);
    v58 = *(a4 + 2);
    v59 = *(a2 + 20);
    v55 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): Unexpected hash size (%u != %u)\n", v45, v46, v47, v48, v49, v50, v51, v44);
    v26 = 92;
    v27 = 934;
    goto LABEL_15;
  }

  if (sub_1000082B8(a4 + 3, 0, 8 * *(a4 + 2), *(a4 + 2)))
  {
    v35 = sub_10003EDFC(*a3 >> 60);
    v54 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v57 = *(a3 + 8) & 0xFFFFFFFFFFFFFFLL;
    sub_10004565C("%s (id %llu): Invalid hash at offset %llu\n", v36, v37, v38, v39, v40, v41, v42, v35);
    v26 = 92;
    v27 = 935;
    goto LABEL_15;
  }

  v26 = sub_10000BBDC(a1, a3, a4, v30, v31, v32, v33, v34);
  if (v26)
  {
    v27 = 936;
    v43 = v26;
LABEL_16:
    sub_100049C40(v27, v43);
  }

  return v26;
}

uint64_t sub_100017928(int a1, int a2, uint64_t a3, unsigned __int16 *a4, int a5, void *__src, int a7, int a8, _BYTE *a9)
{
  v11 = &a4[2 * a5];
  v13 = *(v11 + 4);
  v12 = (v11 + 2);
  if (v13 == 1)
  {
    v14 = *(v12 + 1);
    if (v14 < 0x100)
    {
      memcpy(a9 + 1, __src, v14);
      v26 = 0;
      *a9 = 1;
    }

    else
    {
      v15 = *a3 >> 60;
      if (v15 == 14)
      {
        LODWORD(v15) = *(a3 + 8);
      }

      v16 = sub_10003EDFC(v15);
      v17 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v18 = *a4;
      sub_10003EE2C(a3, *v12);
      v39 = *(v12 + 1);
      sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, max %u\n", v19, v20, v21, v22, v23, v24, v25, v16);
      v26 = 92;
      sub_100049C40(0x521, 92);
    }
  }

  else
  {
    v27 = *a3 >> 60;
    if (v27 == 14)
    {
      LODWORD(v27) = *(a3 + 8);
    }

    v28 = sub_10003EDFC(v27);
    v29 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v30 = *a4;
    sub_10003EE2C(a3, *v12);
    v40 = *v12;
    sub_100045744("%s (id %llu): xf %u/%u: %s: invalid x_type (%u)\n", v31, v32, v33, v34, v35, v36, v37, v28);
    sub_100049C40(0x522, -5);
    return 0;
  }

  return v26;
}

uint64_t sub_100017A74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v7 = &a4[2 * a5];
  v9 = *(v7 + 4);
  v8 = (v7 + 2);
  if ((v9 - 1) > 1)
  {
    v22 = *a3 >> 60;
    if (v22 == 14)
    {
      LODWORD(v22) = *(a3 + 8);
    }

    v23 = sub_10003EDFC(v22);
    v24 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v25 = *a4;
    sub_10003EE2C(a3, *v8);
    v35 = *v8;
    sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v26, v27, v28, v29, v30, v31, v32, v23);
    sub_100049C40(0x50A, -5);
    return 0;
  }

  if (*(v8 + 1) == 8)
  {
    return 0;
  }

  v10 = *a3 >> 60;
  if (v10 == 14)
  {
    LODWORD(v10) = *(a3 + 8);
  }

  v11 = sub_10003EDFC(v10);
  v12 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v13 = *a4;
  sub_10003EE2C(a3, *v8);
  v36 = *v8;
  v34 = *(v8 + 1);
  sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %lu\n", v14, v15, v16, v17, v18, v19, v20, v11);
  v21 = 92;
  sub_100049C40(0x509, 92);
  return v21;
}

uint64_t sub_100017BA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = &a4[2 * a5];
  v14 = *(v11 + 4);
  v13 = (v11 + 2);
  v12 = v14;
  if (v14 <= 4 && v12 && word_100076D7C[v12] != *(v13 + 1))
  {
    v29 = *a3 >> 60;
    if (v29 == 14)
    {
      LODWORD(v29) = *(a3 + 8);
    }

    v30 = sub_10003EDFC(v29);
    v31 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v32 = *a4;
    sub_10003EE2C(a3, *v13);
    v52 = *(v13 + 1);
    sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, expected %u\n", v33, v34, v35, v36, v37, v38, v39, v30);
    v28 = 92;
    sub_100049C40(0x4E6, 92);
    return v28;
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v28 = 0;
      *(a9 + 24) = *a6;
      *(a9 + 16) = 1;
      return v28;
    }

    if (v12 == 4)
    {
      v28 = 0;
      *(a9 + 40) = *a6;
      *(a9 + 32) = 1;
      return v28;
    }
  }

  else
  {
    if (v12 == 1)
    {
      v28 = 0;
      *(a9 + 8) = *a6;
      *a9 = 1;
      return v28;
    }

    if (v12 == 2)
    {
      v16 = *a6;
      if ((*a6 - 1) > 0xE || (v16 - 4) > 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*(a7 + 40) < (v16 + 1))
        {
          *(a7 + 40) = v16 + 1;
        }
      }

      else
      {
        v17 = *a3 >> 60;
        if (v17 == 14)
        {
          LODWORD(v17) = *(a3 + 8);
        }

        v18 = sub_10003EDFC(v17);
        v19 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v20 = *a4;
        sub_10003EE2C(a3, *v13);
        sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid shadow_key (%llu)\n", v21, v22, v23, v24, v25, v26, v27, v18);
        sub_100049C40(0x53B, -2);
      }

      v28 = 0;
      *(a9 + 56) = v16;
      *(a9 + 48) = 1;
      return v28;
    }
  }

  v40 = *a3 >> 60;
  if (v40 == 14)
  {
    LODWORD(v40) = *(a3 + 8);
  }

  v41 = sub_10003EDFC(v40);
  v42 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v43 = *a4;
  sub_10003EE2C(a3, *v13);
  v53 = *v13;
  sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v44, v45, v46, v47, v48, v49, v50, v41);
  sub_100049C40(0x4E7, -5);
  return 0;
}

uint64_t sub_100017DFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = &a4[2 * a5];
  v14 = *(v11 + 4);
  v13 = (v11 + 2);
  v12 = v14;
  if (v14 > 2 || (v12 ? (v15 = word_100076D86[v12] == *(v13 + 1)) : (v15 = 1), v15))
  {
    if (v12 == 1)
    {
      if ((*a6 & 0x1FFFFFFFFFFFFFLL) != 0)
      {
        v18 = 0;
        a9[1] = *a6;
        return v18;
      }

      v54 = *a3 >> 60;
      if (v54 == 14)
      {
        LODWORD(v54) = *(a3 + 8);
      }

      v55 = sub_10003EDFC(v54);
      v56 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v57 = *a4;
      sub_10003EE2C(a3, *v13);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid attribution hash (%llu)\n", v58, v59, v60, v61, v62, v63, v64, v55);
      v41 = 1297;
    }

    else
    {
      if (v12 != 2)
      {
        v30 = *a3 >> 60;
        if (v30 == 14)
        {
          LODWORD(v30) = *(a3 + 8);
        }

        v31 = sub_10003EDFC(v30);
        v32 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v33 = *a4;
        sub_10003EE2C(a3, *v13);
        v67 = *v13;
        sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v34, v35, v36, v37, v38, v39, v40, v31);
        v41 = 1298;
        v42 = -5;
        goto LABEL_31;
      }

      v16 = *a6;
      if (*a6 > 0xFuLL || v16 == 2)
      {
        *a9 = v16;
        if (*(a7 + 40) < (v16 + 1))
        {
          v18 = 0;
          *(a7 + 40) = v16 + 1;
          return v18;
        }

        return 0;
      }

      v43 = *a3 >> 60;
      if (v43 == 14)
      {
        LODWORD(v43) = *(a3 + 8);
      }

      v44 = sub_10003EDFC(v43);
      v45 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v46 = *a4;
      sub_10003EE2C(a3, *v13);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v47, v48, v49, v50, v51, v52, v53, v44);
      v41 = 1296;
    }

    v42 = -2;
LABEL_31:
    sub_100049C40(v41, v42);
    return 0;
  }

  v19 = *a3 >> 60;
  if (v19 == 14)
  {
    LODWORD(v19) = *(a3 + 8);
  }

  v20 = sub_10003EDFC(v19);
  v21 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v22 = *a4;
  sub_10003EE2C(a3, *v13);
  v68 = *v13;
  v66 = *(v13 + 1);
  sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %u\n", v23, v24, v25, v26, v27, v28, v29, v20);
  v18 = 92;
  sub_100049C40(0x50F, 92);
  return v18;
}

uint64_t sub_100018048(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = &a4[2 * a5];
  v14 = *(v11 + 4);
  v13 = (v11 + 2);
  v12 = v14;
  if (v14 > 2 || (v12 ? (v15 = word_100076D86[v12] == *(v13 + 1)) : (v15 = 1), v15))
  {
    if (v12 == 1)
    {
      v17 = *a6;
      if (*a6 > 0xF || v17 == 2)
      {
        *a9 = v17;
        if (*(a7 + 40) < (v17 + 1))
        {
          v16 = 0;
          *(a7 + 40) = v17 + 1;
          return v16;
        }

        return 0;
      }

      v43 = *a3 >> 60;
      if (v43 == 14)
      {
        LODWORD(v43) = *(a3 + 8);
      }

      v44 = sub_10003EDFC(v43);
      v45 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v46 = *a4;
      sub_10003EE2C(a3, *v13);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v47, v48, v49, v50, v51, v52, v53, v44);
      v41 = 1534;
    }

    else
    {
      if (v12 != 2)
      {
        v30 = *a3 >> 60;
        if (v30 == 14)
        {
          LODWORD(v30) = *(a3 + 8);
        }

        v31 = sub_10003EDFC(v30);
        v32 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v33 = *a4;
        sub_10003EE2C(a3, *v13);
        v67 = *v13;
        sub_100045744("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v34, v35, v36, v37, v38, v39, v40, v31);
        v41 = 1523;
        v42 = -5;
        goto LABEL_31;
      }

      if (*a6)
      {
        v16 = 0;
        a9[1] = *a6;
        return v16;
      }

      v54 = *a3 >> 60;
      if (v54 == 14)
      {
        LODWORD(v54) = *(a3 + 8);
      }

      v55 = sub_10003EDFC(v54);
      v56 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v57 = *a4;
      sub_10003EE2C(a3, *v13);
      sub_100045744("%s (id %llu): xf %u/%u: %s: invalid attribution hash (%llu)\n", v58, v59, v60, v61, v62, v63, v64, v55);
      v41 = 1522;
    }

    v42 = -2;
LABEL_31:
    sub_100049C40(v41, v42);
    return 0;
  }

  v19 = *a3 >> 60;
  if (v19 == 14)
  {
    LODWORD(v19) = *(a3 + 8);
  }

  v20 = sub_10003EDFC(v19);
  v21 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v22 = *a4;
  sub_10003EE2C(a3, *v13);
  v68 = *v13;
  v66 = *(v13 + 1);
  sub_10004565C("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %u", v23, v24, v25, v26, v27, v28, v29, v20);
  v16 = 92;
  sub_100049C40(0x5F1, 92);
  return v16;
}

uint64_t sub_100018290(uint64_t a1)
{
  qword_100080CF8 = a1;
  if (!sub_100039748(&unk_100080D00, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 160, 0, 0, sub_100030C88))
  {
    sub_10003B84C(&unk_100080D00, 0, 64);
  }

  result = sub_10001C108(&unk_100080D00, "dir stats", sub_10001835C);
  if (result)
  {
    sub_100045744("failed to register the dir stats tree in the fsck memory storage\n", v2, v3, v4, v5, v6, v7, v8, v9);
    result = sub_100049C40(0x57C, 12);
  }

  byte_100080D40 = 0;
  return result;
}

uint64_t sub_10001835C()
{
  if (qword_100080E28)
  {
    result = sub_10003B928(&unk_100080DF0, 0);
  }

  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    result = sub_10001835C();
  }

  if (qword_100080D38)
  {
    result = sub_10003B928(&unk_100080D00, 0);
  }

  qword_100080D48 = 0;
  return result;
}

uint64_t sub_1000183C8()
{
  if (qword_100080E28)
  {
    return sub_10003B928(&unk_100080DF0, 0);
  }

  return result;
}

void sub_10001843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C();
  }

  if (qword_100080D38)
  {
    sub_100018660(a1);
    if (!v23)
    {
      if (a1 == a3)
      {
        v24 = 0;
      }

      else
      {
        v24 = a3;
      }

      qword_100080D60 = v24;
      qword_100080D68 = a2;
      if (a1 == a3)
      {
        v25 = 257;
      }

      else
      {
        v25 = 1;
      }

      if (a14)
      {
        v26 = 128;
      }

      else
      {
        v26 = 0;
      }

      *&xmmword_100080D50 = a15;
      *(&xmmword_100080D50 + 1) = a3;
      qword_100080D78 = a4;
      qword_100080D88 = a5;
      dword_100080DE8 = a7;
      qword_100080D98 = a6;
      if (a8)
      {
        v27 = 8;
      }

      else
      {
        v27 = 0;
      }

      qword_100080DA8 = a9;
      if (a10)
      {
        v28 = 32;
      }

      else
      {
        v28 = 0;
      }

      v29 = v27 | v28;
      qword_100080DB8 = a11;
      if (a12)
      {
        v30 = 64;
      }

      else
      {
        v30 = 0;
      }

      word_100080DEC = word_100080DEC & 0xFF16 | v25 | v26 | v29 | v30;
      qword_100080DC8 = a13;
    }
  }
}

void sub_1000185E4(uint64_t a1, uint64_t a2)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C();
  }

  if (a2 && qword_100080D38)
  {
    sub_100018660(a1);
    if (!v8)
    {
      sub_10001870C(&qword_100080DA0, a2, a1, "resource fork size", v4, v5, v6, v7);
    }
  }
}

double sub_100018660(uint64_t a1)
{
  if (qword_100080D48 != a1 && !sub_10001A45C() && a1)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v3;
    v13 = v3;
    v10 = v3;
    v11 = v3;
    v8 = v3;
    v9 = v3;
    v6 = v3;
    v7 = v3;
    v4 = v3;
    v5 = v3;
    if (!sub_10001B350(a1, &v4))
    {
      qword_100080D48 = a1;
      *&qword_100080DB0 = v10;
      *&qword_100080DC0 = v11;
      xmmword_100080DD0 = v12;
      unk_100080DE0 = v13;
      *&qword_100080D70 = v6;
      *&qword_100080D80 = v7;
      *&qword_100080D90 = v8;
      *&qword_100080DA0 = v9;
      result = *&v4;
      xmmword_100080D50 = v4;
      *&qword_100080D60 = v5;
    }
  }

  return result;
}

char *sub_10001870C(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = __OFADD__(*result, a2);
  *result += a2;
  if (v9)
  {
    v10 = result;
    sub_100045744("dir-stats object (id %llu): %s overflow\n", a2, a3, a4, a5, a6, a7, a8, a3);
    *v10 = 0x7FFFFFFFFFFFFFFFLL;

    return sub_100049C40(0x56D, 84);
  }

  return result;
}

void sub_100018778(uint64_t a1, uint64_t a2, int a3)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C();
  }

  if (qword_100080D38)
  {
    sub_100018660(a1);
    if (!v10)
    {
      if (a3)
      {
        sub_10001870C(&xmmword_100080DD0 + 8, 1, a1, "SAF descendants", v6, v7, v8, v9);
      }

      sub_10001870C(&qword_100080D80, 1, a1, "descendants", v6, v7, v8, v9);
      sub_10001870C(&qword_100080D90, a2, a1, "physical size", v11, v12, v13, v14);
    }
  }
}

void sub_100018834(uint64_t a1, uint64_t a2, int a3)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C();
  }

  if (!qword_100080D38)
  {
    return;
  }

  sub_100018660(a1);
  if (v13)
  {
    return;
  }

  if ((qword_100080D70 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_11:
    qword_100080D70 = a2;
    if ((a3 & 0x20000000) != 0)
    {
      word_100080DEC |= 4u;
    }

    if ((a3 & 0x80000) != 0)
    {
      word_100080DEC |= 0x10u;
    }

    return;
  }

  v14 = qword_100080D68;
  if (!qword_100080D68)
  {
    sub_100045744("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", v6, v7, v8, v9, v10, v11, v12, a1);
    sub_100049C40(0x4DE, -8);
    goto LABEL_11;
  }

  if (qword_100080D68 == qword_100080D70)
  {
    sub_100045744("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", v6, v7, v8, v9, v10, v11, v12, a1);
    sub_100049C40(0x4DE, -8);
    return;
  }

  sub_100045744("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", v6, v7, v8, v9, v10, v11, v12, a1);
  sub_100049C40(0x4DE, -8);
  if (v14 == a2)
  {
    goto LABEL_11;
  }
}

void sub_100018974(uint64_t a1, uint64_t a2)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C();
  }

  if (a2 && qword_100080D38)
  {
    sub_100018660(a1);
    if (!v8)
    {
      sub_10001870C(&qword_100080DB0, a2, a1, "clone size", v4, v5, v6, v7);
    }
  }
}

void sub_1000189F8(uint64_t a1, uint64_t a2)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C();
  }

  if (a2 && qword_100080D38)
  {
    sub_100018660(a1);
    if (!v8)
    {
      sub_10001870C(&qword_100080DC0, a2, a1, "purgeable size", v4, v5, v6, v7);
    }
  }
}

void sub_100018A74(uint64_t a1, uint64_t a2)
{
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C();
  }

  if (a2 && qword_100080D38)
  {
    sub_100018660(a1);
    if (!v8)
    {
      sub_10001870C(&xmmword_100080DD0, a2, a1, "purgeable rsrc size", v4, v5, v6, v7);
    }
  }
}

uint64_t sub_100018AF0(uint64_t a1, void *a2, _DWORD *a3)
{
  v6 = &unk_100080000;
  if (byte_100080D40 == 1)
  {
    byte_100080D40 = 0;
    sub_10001835C();
  }

  v7 = &unk_100080000;
  if (!qword_100080D38)
  {
    return 0;
  }

  v172 = 0;
  v170 = 0;
  v171 = 0;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v8 = a2[6];
  if (!v8)
  {
    v8 = a2[5];
  }

  v9 = *(v8 + 56);
  v10 = sub_1000019A8();
  v11 = sub_10001A45C();
  if (v11)
  {
    goto LABEL_7;
  }

  *&v175 = 0;
  sub_10003B724(dword_100080D00, 0, &v175);
  if (!v175)
  {
    goto LABEL_103;
  }

  v145 = v10;
  v147 = v9;
  v148 = a3;
  v159 = 8;
  v158 = 160;
  if (!sub_100039CDC(dword_100080D00, 0, &v172, &v159, &v160, &v158))
  {
    while (1)
    {
      if ((BYTE9(v169) & 4) != 0 || (WORD6(v169) & 0x100) != 0 || v161 != *(&v160 + 1))
      {
        v11 = sub_10001A730(a1, a2, v172, &v160);
        if (v11)
        {
          break;
        }
      }

      v157 = 8;
      v156 = 160;
      if (sub_1000397B8(dword_100080D00, 0, 2u, &v172, &v157, 8u, &v160, &v156))
      {
        goto LABEL_16;
      }
    }

LABEL_7:
    v12 = v11;
    goto LABEL_104;
  }

LABEL_16:
  v155 = 8;
  v154 = 160;
  v149 = a1;
  if (sub_100039CDC(dword_100080D00, 0, &v172, &v155, &v160, &v154))
  {
LABEL_17:
    *v189 = 0;
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
    if (!sub_100039748(dword_100080DF0, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 0, 0, 0, sub_100030CBC))
    {
      sub_10003B84C(dword_100080DF0, 0, 64);
    }

    if (sub_10001C108(dword_100080DF0, "dir stats repairs", sub_1000183C8))
    {
      sub_100045744("failed to register the dir stats repair tree in the fsck memory storage\n", v17, v18, v19, v20, v21, v22, v23, v143);
      sub_100049C40(0x59C, 12);
    }

    if (qword_100080E28)
    {
      LODWORD(v150) = 8;
      LODWORD(v186) = 160;
      if (sub_100039CDC(dword_100080D00, 0, v189, &v150, &v175, &v186))
      {
LABEL_25:
        v7 = &unk_100080000;
        if (qword_100080E28)
        {
          if (v6[3392] == 1)
          {
            v6[3392] = 0;
            sub_10001835C();
          }

          if (qword_100080D38)
          {
            *&v175 = 0;
            sub_10003B724(dword_100080DF0, 0, &v175);
            v32 = v175;
            *&v175 = 0;
            sub_10003B724(dword_100080D00, 0, &v175);
            if (v32 == v175)
            {
              *&v175 = v171;
              LODWORD(v173) = 16;
              *v189 = 0;
              v33 = sub_1000397B8(dword_100080DF0, 0, 2u, &v170, &v173, 0x10u, &v187, v189);
              if (!v33)
              {
                *&v175 = v171;
                LODWORD(v150) = 8;
                LODWORD(v186) = 160;
                v33 = sub_1000397B8(dword_100080D00, 0, 0, &v175, &v150, 8u, &v160, &v186);
              }

              v34 = 1;
              goto LABEL_99;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v173 = v184;
          v174 = *v189;
          v24 = sub_10003B12C(dword_100080DF0, 0, &v173, 16, &v187, 0);
          if (v24)
          {
            break;
          }

          LODWORD(v185) = 8;
          v188 = 160;
          if (sub_1000397B8(dword_100080D00, 0, 2u, v189, &v185, 8u, &v175, &v188))
          {
            goto LABEL_25;
          }
        }

        v65 = v24;
        sub_100045744("failed to insert dir-stats entry %llu into the repair tree\n", v25, v26, v27, v28, v29, v30, v31, v189[0]);
        sub_100049C40(0x59F, v65);
        sub_10003B928(dword_100080DF0, 0);
        v7 = &unk_100080000;
      }
    }

    else
    {
      sub_100045744("failed to init the dir stats repair tree\n", v17, v18, v19, v20, v21, v22, v23, v143);
      sub_100049C40(0x59E, 12);
    }

    if (v6[3392] == 1)
    {
      v6[3392] = 0;
      sub_10001835C();
    }

    if (v7[423])
    {
      *&v175 = v171;
      LODWORD(v185) = 8;
      v188 = 160;
      v33 = sub_1000397B8(dword_100080D00, 0, 2u, &v175, &v185, 8u, &v160, &v188);
      v34 = 0;
      v170 = v169;
      v171 = v175;
LABEL_99:
      if (v33)
      {
LABEL_100:
        if (v33 == 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = v33;
        }

        goto LABEL_104;
      }

      if ((v147 & 0x200) != 0)
      {
        v67 = &v150;
      }

      else
      {
        v67 = &v185;
      }

      if ((v147 & 0x200) != 0)
      {
        v68 = 12;
      }

      else
      {
        v68 = 8;
      }

      v146 = v145 ^ 1;
      while (1)
      {
        v185 = (v171 & 0xFFFFFFFFFFFFFFFLL | 0xA000000000000000);
        v186 = v171;
        v150 = v171 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
        v151 = 18;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0xAAAAAAAAAAAAAA00;
        v173 = v171;
        sub_10003F6E8(a1, a2, qword_100080CF8, 3, 1u, sub_10001AADC, &v173);
        if (v174)
        {
          goto LABEL_122;
        }

        sub_100045614("\ndir-stats %llu (has dir-stats? %d)%s:\nflags: 0x%x\nchained-key: %llu (computed: %llu)\norigin-id: %llu (computed: %llu)\nshadow-key: %llu (exists? %d)\ndescendants: %llu (computed: %llu)\nSAF descendants: %llu\ndir-stats descendants: %llu\nphysical size: %llu (computed: %llu)\nresource fork size: %llu (computed: %llu)\nclone size: %llu (exists? %d; computed: %llu)\npurgeable size: %llu (exists? %d; computed: %llu)\npurgeable resource fork size: %llu (exists? %d; computed: %llu)\nhas calculating dir-stats? %d\norigin is SAF? %d (parent is SAF? %d)\norigin is purgeable? %d\n\n", *(&v166 + 1), v167, (WORD6(v169) >> 1) & 1, (WORD6(v169) >> 2) & 1, *(&v167 + 1), v168, (WORD6(v169) >> 10) & 1, v186);
        if ((BYTE12(v169) & 1) != 0 && !v162 && !v163)
        {
          sub_100045744("found orphan dir-stats object (id %llu)\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x576, -8);
          v11 = sub_10001BC00(v148, 0, 0, v67, v68, 0, 0, v76);
          if (v11)
          {
            goto LABEL_7;
          }

LABEL_122:
          *&v175 = v171;
          if (v34)
          {
            goto LABEL_123;
          }

          goto LABEL_270;
        }

        v77 = DWORD2(v169);
        if ((~DWORD2(v169) & 0x30) == 0)
        {
          sub_100045744("found dir-stats object (id %llu) that is both shadow and calculating\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x573, 92);
          v77 = DWORD2(v169);
        }

        if ((v77 & 0x120) != 0)
        {
          goto LABEL_122;
        }

        if ((BYTE12(v169) & 1) == 0)
        {
          sub_100045744("missing dir-stats object (id %llu) referenced by %s%llu files / directories\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x4E1, 92);
          if ((v162 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v11 = sub_10001AB68(v149, a2, v148, v67, &v160, v80, v81, v82);
            if (v11)
            {
              goto LABEL_7;
            }
          }

          goto LABEL_266;
        }

        if ((v77 & 0x10) != 0)
        {
          break;
        }

        if ((v77 & 0x80) != 0)
        {
          if (*(&v161 + 1) && v162 == *(&v161 + 1))
          {
            goto LABEL_156;
          }

          if ((v162 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            if (!*(&v161 + 1))
            {
              sub_100045744("dir-stats object (id %llu) unexpectedly marked as having origin-id\n", v69, v70, v71, v72, v73, v74, v75, v186);
              sub_100049C40(0x579, -3);
              DWORD2(v169) &= ~0x80u;
            }

            goto LABEL_156;
          }

          if (v162 == *(&v161 + 1))
          {
            goto LABEL_156;
          }

          sub_100045744("origin_id (%llu) of dir-stats object (id %llu) is not as expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v161));
          v79 = 1400;
        }

        else
        {
          if (v162)
          {
            v78 = *(&v161 + 1) == 0;
          }

          else
          {
            v78 = 0;
          }

          if (v78)
          {
            goto LABEL_156;
          }

          if (!v162)
          {
            goto LABEL_156;
          }

          if (!*(&v161 + 1))
          {
            goto LABEL_156;
          }

          sub_100045744("dir-stats object (id %llu) unexpectedly unmarked as having origin-id\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x57A, -3);
          DWORD2(v169) |= 0x80u;
          if ((v162 - 1) > 0xFFFFFFFFFFFFFFFDLL || *(&v161 + 1) == v162)
          {
            goto LABEL_156;
          }

          sub_100045744("origin_id (%llu) of dir-stats object (id %llu) is not as expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v161));
          v79 = 1407;
        }

        sub_100049C40(v79, -2);
        v11 = sub_10001BC00(v148, 1, 4, v67, v68, &v162, 8, v83);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_156:
        if (((((BYTE8(v169) & 0x10) == 0) ^ ((BYTE12(v169) & 2) >> 1)) & 1) == 0)
        {
          if ((BYTE8(v169) & 0x10) != 0)
          {
            sub_100045744("found shadow dir-stats object (id %llu) but did not find its calculating dir-stats (%llu)\n", v69, v70, v71, v72, v73, v74, v75, v186);
            v85 = 1396;
          }

          else
          {
            sub_100045744("found non-shadow dir-stats object (id %llu) that has calculating dir-stats\n", v69, v70, v71, v72, v73, v74, v75, v186);
            v85 = 1408;
          }

          sub_100049C40(v85, 92);
        }

        if (v160)
        {
          sub_100045744("found shadow key (%llu) on non-calculating dir-stats object (id %llu)\n", v69, v70, v71, v72, v73, v74, v75, v160);
          sub_100049C40(0x575, -2);
          v189[0] = 2;
          v11 = sub_10001BC00(v148, 1, 6, v67, v68, v189, 1, v86);
          if (v11)
          {
            goto LABEL_7;
          }
        }

        v87 = BYTE8(v169);
        if ((BYTE8(v169) & 0x12) == 2 && (BYTE12(v169) & 4) == 0)
        {
          sub_100045744("dir-stats object (id %llu) is SAF, but its origin isn't\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x52F, 92);
          v87 = BYTE8(v169);
        }

        if ((v87 & 2) == 0 && (BYTE12(v169) & 4) == 0)
        {
          if (v169 || !*(&v168 + 1) || (WORD6(v169) & 0x200) != 0)
          {
            goto LABEL_187;
          }

          sub_100045744("SAF descendants (%llu) of dir-stats object (id %llu) is greater than expected (0)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v168));
          sub_100049C40(0x59B, 92);
          v88 = DWORD2(v169);
          if (v163 >= 1 && *(&v168 + 1) == v163)
          {
            DWORD2(v169) |= 2u;
            v69 = v162;
            if ((v162 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_187;
            }

            v11 = sub_100026B74(v148, v162, 0x20000000, v71, v72, v73, v74, v75);
            if (v11)
            {
              goto LABEL_7;
            }

            v89 = 1;
            goto LABEL_185;
          }

LABEL_186:
          DWORD2(v169) = v88 | 0x100;
          goto LABEL_187;
        }

        if (v163 == *(&v168 + 1))
        {
          goto LABEL_187;
        }

        sub_100045744("SAF descendants (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v168));
        sub_100049C40(0x530, 92);
        v88 = DWORD2(v169);
        if (v163 < 1 || *(&v168 + 1))
        {
          goto LABEL_186;
        }

        if ((BYTE8(v169) & 2) != 0)
        {
          DWORD2(v169) &= ~2u;
        }

        if ((BYTE12(v169) & 4) != 0)
        {
          v69 = v162;
          if ((v162 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v11 = sub_100026C04(v148, v162, 0x20000000, v71, v72, v73, v74, v75);
            if (v11)
            {
              goto LABEL_7;
            }

            v89 = -1;
LABEL_185:
            *(&v175 + 1) = v89;
          }
        }

LABEL_187:
        if (v163 != *(&v162 + 1))
        {
          sub_100045744("descendants (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v162));
          sub_100049C40(0x4E2, 92);
          v11 = sub_10001BC00(v148, 1, 2, v67, v68, &v163, 8, v90);
          if (v11)
          {
            goto LABEL_7;
          }
        }

        if (v164 != *(&v163 + 1))
        {
          sub_100045744("physical_size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v163));
          sub_100049C40(0x4E3, 92);
          v11 = sub_10001BC00(v148, 1, 5, v67, v68, &v164, 8, v91);
          if (v11)
          {
            goto LABEL_7;
          }
        }

        if (!(((BYTE12(v169) & 8) == 0) | v146 & 1))
        {
          sub_100045614("skipping dir stats clone sizes repair because the clone mapping repairs were aborted\n", v69, v70, v71, v72, v73, v74, v75, v144);
          goto LABEL_200;
        }

        if ((BYTE12(v169) & 8) != 0 && (*(&v165 + 1) & 0x8000000000000000) != 0)
        {
          sub_100045744("skipping dir stats clone sizes repair: present clone size %llu > %llu\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v165));
          v92 = 1417;
          v93 = 84;
LABEL_199:
          sub_100049C40(v92, v93);
          goto LABEL_200;
        }

        if ((BYTE12(v169) & 8) != 0 && (v166 & 0x8000000000000000) != 0)
        {
          sub_100045614("skipping dir stats clone sizes repair because the computed clone size is negative\n", v69, v70, v71, v72, v73, v74, v75, v144);
          v92 = 1418;
          v93 = 92;
          goto LABEL_199;
        }

        if ((BYTE12(v169) & 8) != 0 && (BYTE8(v169) & 4) != 0)
        {
          goto LABEL_238;
        }

        if (!(BYTE12(v169) & 8 | BYTE8(v169) & 4))
        {
          goto LABEL_200;
        }

        if ((BYTE8(v169) & 4) != 0)
        {
          if ((BYTE12(v169) & 8) != 0)
          {
LABEL_238:
            if (v166 == *(&v165 + 1))
            {
              goto LABEL_200;
            }

            sub_100045744("clone size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v165));
            v116 = 1380;
            v117 = 92;
          }

          else
          {
            sub_100045744("clone size xfield is missing from dir-stats object (id %llu)\n", v69, v70, v71, v72, v73, v74, v75, v186);
            v116 = 1379;
            v117 = -3;
          }

          sub_100049C40(v116, v117);
          *v189 = 524289;
          *&v189[4] = v166;
          v119 = v148;
          v120 = 8;
          v121 = v67;
          v122 = v68;
          v123 = 12;
          goto LABEL_241;
        }

        if ((BYTE12(v169) & 8) == 0)
        {
          goto LABEL_200;
        }

        sub_100045744("clone size xfield of dir-stats object (id %llu) exists unexpectedly\n", v69, v70, v71, v72, v73, v74, v75, v186);
        sub_100049C40(0x562, -3);
        v189[0] = 1;
        v119 = v148;
        v120 = 6;
        v121 = v67;
        v122 = v68;
        v123 = 1;
LABEL_241:
        v11 = sub_10001BC00(v119, 1, v120, v121, v122, v189, v123, v118);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_200:
        v94 = BYTE8(v169);
        if ((WORD4(v169) & 0x800) != 0)
        {
          if ((~DWORD2(v169) & 9) == 0 && (BYTE12(v169) & 0x40) != 0 && v168 == *(&v167 + 1))
          {
            goto LABEL_216;
          }

          if ((BYTE8(v169) & 8) == 0)
          {
            sub_100045744("purgeable resource forks are maintained on dir-stats object (id %llu) but not purgeable data forks\n", v69, v70, v71, v72, v73, v74, v75, v186);
            sub_100049C40(0x5AF, -3);
            v94 = BYTE8(v169) | 8;
            DWORD2(v169) |= 8u;
          }

          if ((v94 & 1) == 0)
          {
            sub_100045744("purgeable resource forks are maintained on dir-stats object (id %llu) but not rsrc forks\n", v69, v70, v71, v72, v73, v74, v75, v186);
            sub_100049C40(0x5B0, -3);
            DWORD2(v169) |= 1u;
          }

          if ((BYTE12(v169) & 0x40) != 0)
          {
            if (v168 == *(&v167 + 1))
            {
              goto LABEL_216;
            }

            sub_100045744("purgeable resource fork size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v167));
            v101 = 1458;
            v102 = 92;
          }

          else
          {
            sub_100045744("purgeable resource fork size xfield is missing from dir-stats object (id %llu)\n", v69, v70, v71, v72, v73, v74, v75, v186);
            v101 = 1457;
            v102 = -3;
          }

          sub_100049C40(v101, v102);
          *v189 = 524292;
          *&v189[4] = v168;
          v96 = v148;
          v97 = 8;
          v98 = v67;
          v99 = v68;
          v100 = 12;
        }

        else
        {
          if ((BYTE12(v169) & 0x40) == 0)
          {
            goto LABEL_216;
          }

          sub_100045744("purgeable resource fork size xfield of dir-stats object (id %llu) exists unexpectedly\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x5B3, -3);
          v189[0] = 4;
          v96 = v148;
          v97 = 6;
          v98 = v67;
          v99 = v68;
          v100 = 1;
        }

        v11 = sub_10001BC00(v96, 1, v97, v98, v99, v189, v100, v95);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_216:
        v103 = BYTE8(v169);
        if ((BYTE8(v169) & 0x50) != 0x40)
        {
          goto LABEL_223;
        }

        if ((BYTE8(v169) & 8) != 0)
        {
          if ((BYTE12(v169) & 0x10) != 0)
          {
LABEL_223:
            LOBYTE(v104) = BYTE8(v169);
            goto LABEL_224;
          }
        }

        else
        {
          sub_100045744("dir-stats object (id %llu) is purgeable, but it doesn't track purgeable size\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x568, 92);
        }

        if ((v162 - 1) > 0xFFFFFFFFFFFFFFFDLL || (BYTE12(v169) & 0x10) != 0)
        {
          v104 = DWORD2(v169);
          if ((v103 & 8) != 0)
          {
            goto LABEL_224;
          }
        }

        else
        {
          sub_100045744("dir-stats object (id %llu) is purgeable, but its origin isn't\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x569, 92);
          v104 = DWORD2(v169);
        }

        v115 = v104;
        v104 &= ~0x40u;
        DWORD2(v169) = v104;
        *&v178 = v167 - v164;
        if ((v115 & 0x800) != 0)
        {
          *(&v178 + 1) = v168 - v165;
        }

LABEL_224:
        if ((v104 & 8) != 0 && (BYTE12(v169) & 0x20) != 0)
        {
          v105 = *(&v166 + 1);
          v106 = v167;
          if (v167 == *(&v166 + 1))
          {
            goto LABEL_247;
          }

          goto LABEL_227;
        }

        if (!(v104 & 8 | BYTE12(v169) & 0x20))
        {
          goto LABEL_247;
        }

        if ((v104 & 8) != 0)
        {
          if ((BYTE12(v169) & 0x20) == 0)
          {
            sub_100045744("purgeable size xfield is missing from dir-stats object (id %llu)\n", v69, v70, v71, v72, v73, v74, v75, v186);
            v107 = 1387;
            v108 = -3;
LABEL_245:
            sub_100049C40(v107, v108);
            *v189 = 524291;
            *&v189[4] = v167;
            v110 = v148;
            v111 = 8;
            v112 = v67;
            v113 = v68;
            v114 = 12;
            goto LABEL_246;
          }

          v105 = *(&v166 + 1);
          v106 = v167;
LABEL_227:
          if (v106 == v105)
          {
            goto LABEL_247;
          }

          sub_100045744("purgeable size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, v105);
          v107 = 1388;
          v108 = 92;
          goto LABEL_245;
        }

        if ((BYTE12(v169) & 0x20) == 0)
        {
          goto LABEL_247;
        }

        sub_100045744("purgeable size xfield of dir-stats object (id %llu) exists unexpectedly\n", v69, v70, v71, v72, v73, v74, v75, v186);
        sub_100049C40(0x56A, -3);
        v189[0] = 3;
        v110 = v148;
        v111 = 6;
        v112 = v67;
        v113 = v68;
        v114 = 1;
LABEL_246:
        v11 = sub_10001BC00(v110, 1, v111, v112, v113, v189, v114, v109);
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_247:
        if (BYTE8(v169))
        {
          if (v165 != *(&v164 + 1))
          {
            sub_100045744("resource fork size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v164));
            sub_100049C40(0x558, 92);
            v125 = &v165;
LABEL_252:
            v11 = sub_10001BC00(v148, 1, 7, v67, v68, v125, 8, v124);
            if (v11)
            {
              goto LABEL_7;
            }
          }
        }

        else if (*(&v164 + 1))
        {
          sub_100045744("resource fork size (%llu) of dir-stats object (id %llu) exists unexpectedly\n", v69, v70, v71, v72, v73, v74, v75, SBYTE8(v164));
          sub_100049C40(0x566, 92);
          *v189 = 0;
          v125 = v189;
          goto LABEL_252;
        }

        v126 = DWORD2(v169);
        if ((WORD4(v169) & 0x400) != 0 || (WORD6(v169) & 0x100) != 0 || v161 != *(&v160 + 1))
        {
          sub_100045744("found dir-stats object (id %llu; flags 0x%x) with bad chained key (%llu/%llu)\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x591, 92);
          if (*(&v160 + 1) != v161)
          {
            v11 = sub_10001BC00(v148, 1, 1, v67, v68, &v161, 8, v75);
            if (v11)
            {
              goto LABEL_7;
            }
          }

          v126 = DWORD2(v169);
          if ((WORD4(v169) & 0x400) != 0)
          {
            v126 = DWORD2(v169) & 0xFFFFFBFF;
            DWORD2(v169) &= ~0x400u;
          }

          if ((v147 & 0x200) != 0)
          {
            DWORD2(v169) = v126 | 0x100;
            v11 = sub_10001B004(v149, a2, v148, v186, v161);
            if (v11)
            {
              goto LABEL_7;
            }

            v126 = DWORD2(v169);
          }
        }

        if (v77 != v126)
        {
          v11 = sub_10001BC00(v148, 1, 3, v67, v68, &v169 + 8, 4, v75);
          if (v11)
          {
            goto LABEL_7;
          }

          v11 = sub_10003B12C(dword_100080D00, 0, &v186, 8, &v160, 0xA0u);
          if (v11)
          {
            goto LABEL_7;
          }
        }

LABEL_266:
        if (v34)
        {
          v11 = sub_10001B2B8(&v160, &v175);
          if (v11)
          {
            goto LABEL_7;
          }

          *&v175 = v171;
LABEL_123:
          LODWORD(v173) = 16;
          *v189 = 0;
          v33 = sub_1000397B8(dword_100080DF0, 0, 2u, &v170, &v173, 0x10u, &v187, v189);
          if (!v33)
          {
            *&v175 = v171;
            LODWORD(v150) = 8;
            LODWORD(v186) = 160;
            v33 = sub_1000397B8(dword_100080D00, 0, 0, &v175, &v150, 8u, &v160, &v186);
          }

          goto LABEL_271;
        }

        *&v175 = v171;
LABEL_270:
        LODWORD(v185) = 8;
        v188 = 160;
        v33 = sub_1000397B8(dword_100080D00, 0, 2u, &v175, &v185, 8u, &v160, &v188);
        v170 = v169;
        v171 = v175;
LABEL_271:
        a1 = v149;
        if (v33)
        {
          goto LABEL_100;
        }
      }

      if ((v77 & 0x80) != 0)
      {
        sub_100045744("shadow dir-stats object (id %llu) unexpectedly marked as having origin-id\n", v69, v70, v71, v72, v73, v74, v75, v186);
        sub_100049C40(0x57D, -3);
        DWORD2(v169) &= ~0x80u;
      }

      else if (!v162)
      {
        if (!*(&v161 + 1))
        {
          goto LABEL_156;
        }

        goto LABEL_153;
      }

      if (!*(&v161 + 1))
      {
LABEL_154:
        if (v162)
        {
          sub_100045744("found shadow dir-stats object (id %llu) with origin (id %llu)\n", v69, v70, v71, v72, v73, v74, v75, v186);
          sub_100049C40(0x572, -2);
        }

        goto LABEL_156;
      }

LABEL_153:
      sub_100045744("shadow dir-stats object (id %llu) unexpectedly has origin-id\n", v69, v70, v71, v72, v73, v74, v75, v186);
      sub_100049C40(0x57E, -2);
      *v189 = 0;
      v11 = sub_10001BC00(v148, 1, 4, v67, v68, v189, 8, v84);
      if (v11)
      {
        goto LABEL_7;
      }

      goto LABEL_154;
    }

LABEL_103:
    v12 = 0;
    goto LABEL_104;
  }

  v35 = dword_100080D00;
  while (1)
  {
    if (BYTE12(v169))
    {
      goto LABEL_91;
    }

    v36 = v35;
    v37 = v172;
    *v189 = v172;
    v38 = a2[6];
    if (!v38)
    {
      v38 = a2[5];
    }

    v39 = *(v38 + 56);
    v150 = v172 & 0xFFFFFFFFFFFFFFFLL | 0xA000000000000000;
    v173 = v172 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    v40 = (v39 & 0x200) != 0 ? 18 : 10;
    LODWORD(v174) = 18;
    v41 = (v39 & 0x200) != 0 ? &v173 : &v150;
    v42 = (v39 & 0x200) != 0 ? 12 : 8;
    v188 = v42;
    v175 = 0u;
    v176 = 0u;
    if ((v39 & 0x200) != 0)
    {
      v45 = 3808;
      v46 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xB471C2A6uLL);
      if (!v46)
      {
        sub_10004565C("failed to allocate memory for dir-stats lookup\n", v47, v48, v49, v13, v14, v15, v16, v142);
        v12 = 12;
        sub_100049C40(0x560, 12);
        v43 = 0;
        goto LABEL_285;
      }

      v44 = v46;
      v43 = v46;
    }

    else
    {
      v43 = 0;
      v44 = &v175;
      v45 = 32;
    }

    v187 = v45;
    v186 = 0xAAAAAAAAAAAAAAAALL;
    v50 = sub_10003F8AC(v149, a2, v40, &v186, v13, v14, v15, v16);
    if (v50)
    {
      break;
    }

    v51 = sub_1000397B8(v186, qword_100080CF8, 0, v41, &v188, v42, v44, &v187);
    if (v51)
    {
      v12 = v51;
      a1 = v149;
      v35 = v36;
      v6 = &unk_100080000;
      if (v51 != 2)
      {
        strerror(v51);
        sub_10004565C("failed to look up dir-stats object (id %llu): %s\n", v134, v135, v136, v137, v138, v139, v140, v37);
        v141 = 1247;
        goto LABEL_284;
      }

      goto LABEL_89;
    }

    WORD6(v169) |= 1u;
    a1 = v149;
    if ((v39 & 0x200) == 0)
    {
      v59 = *(&v175 + 1);
      v60 = __OFADD__(v163, v175);
      *(&v162 + 1) = v175;
      *&v163 = v163 + v175;
      *(&v163 + 1) = *(&v175 + 1);
      if (v60)
      {
        sub_100045744("dir-stats object (id %llu): %s overflow\n", v52, v53, v54, v55, v56, v57, v58, v37);
        *&v163 = 0x7FFFFFFFFFFFFFFFLL;
        sub_100049C40(0x56D, 84);
        v59 = *(&v175 + 1);
      }

      v60 = __OFADD__(v164, v59);
      *&v164 = v164 + v59;
      v35 = v36;
      if (v60)
      {
        sub_100045744("dir-stats object (id %llu): %s overflow\n", v52, v53, v54, v55, v56, v57, v58, v37);
        *&v164 = 0x7FFFFFFFFFFFFFFFLL;
        sub_100049C40(0x56D, 84);
      }

      *&v162 = -1;
      v6 = &unk_100080000;
      goto LABEL_88;
    }

    DWORD2(v169) = *(v43 + 12);
    v61 = ((DWORD2(v169) >> 4) & 1) - 1;
    if (v43[3])
    {
      v61 = v43[3];
    }

    *(&v161 + 1) = v43[3];
    *&v162 = v61;
    v62 = v43[1];
    v60 = __OFADD__(v163, *v43);
    v63 = v163 + *v43;
    *(&v162 + 1) = *v43;
    *&v163 = v63;
    *(&v163 + 1) = v62;
    if (v60)
    {
      sub_100045744("dir-stats object (id %llu): %s overflow\n", v52, v53, v54, v55, v56, v57, v58, v37);
      *&v163 = 0x7FFFFFFFFFFFFFFFLL;
      sub_100049C40(0x56D, 84);
      v62 = v43[1];
    }

    v60 = __OFADD__(v164, v62);
    *&v164 = v164 + v62;
    v35 = v36;
    if (v60)
    {
      sub_100045744("dir-stats object (id %llu): %s overflow\n", v52, v53, v54, v55, v56, v57, v58, v37);
      *&v164 = 0x7FFFFFFFFFFFFFFFLL;
      sub_100049C40(0x56D, 84);
    }

    v64 = WORD4(v169);
    v6 = &unk_100080000;
    if (BYTE8(v169))
    {
      *(&v164 + 1) = v43[2];
      sub_10001870C(&v165, *(&v164 + 1), v37, "resource fork size", v55, v56, v57, v58);
      v64 = WORD4(v169);
      if ((BYTE8(v169) & 4) != 0)
      {
LABEL_75:
        v185 = 0;
        if (!sub_100040474(v43 + 26, v187 - 52, 1, &v185, 0, 0, 0))
        {
          WORD6(v169) |= 8u;
          *(&v165 + 1) = *v185;
          sub_10001870C(&v166, *(&v165 + 1), *v189, "clone size", v55, v56, v57, v58);
        }

        v64 = WORD4(v169);
        if ((BYTE8(v169) & 8) == 0)
        {
          goto LABEL_82;
        }

LABEL_78:
        v185 = 0;
        if (!sub_100040474(v43 + 26, v187 - 52, 3, &v185, 0, 0, 0))
        {
          WORD6(v169) |= 0x20u;
          *(&v166 + 1) = *v185;
          sub_10001870C(&v167, *(&v166 + 1), *v189, "purgeable size", v55, v56, v57, v58);
        }

        v64 = WORD4(v169);
        if ((BYTE8(v169) & 0x40) != 0)
        {
          WORD6(v169) |= 0x10u;
        }

        goto LABEL_82;
      }
    }

    else if ((BYTE8(v169) & 4) != 0)
    {
      goto LABEL_75;
    }

    if ((v64 & 8) != 0)
    {
      goto LABEL_78;
    }

LABEL_82:
    if ((v64 & 0x800) != 0)
    {
      v185 = 0;
      if (!sub_100040474(v43 + 26, v187 - 52, 4, &v185, 0, 0, 0))
      {
        WORD6(v169) |= 0x40u;
        *(&v167 + 1) = *v185;
        sub_10001870C(&v168, *(&v167 + 1), *v189, "purgeable rsrc size", v55, v56, v57, v58);
      }

      LOBYTE(v64) = BYTE8(v169);
    }

    if ((v64 & 2) != 0)
    {
      WORD6(v169) |= 4u;
      sub_10001870C(&v168 + 8, *v43, *v189, "SAF descendants", v55, v56, v57, v58);
    }

LABEL_88:
    WORD6(v169) |= 0x200u;
    v11 = sub_10003B12C(v35, 0, v189, 8, &v160, 0xA0u);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_89:
    free(v43);
    v7 = &unk_100080000;
    if ((BYTE12(v169) & 1) == 0)
    {
      v11 = sub_10001A730(a1, a2, v172, &v160);
      if (v11)
      {
        goto LABEL_7;
      }
    }

LABEL_91:
    v153 = 8;
    v152 = 160;
    if (sub_1000397B8(v35, 0, 2u, &v172, &v153, 8u, &v160, &v152))
    {
      goto LABEL_17;
    }
  }

  v12 = v50;
  strerror(v50);
  sub_10004565C("failed to get fsroot tree for jobj type %d: %s\n", v127, v128, v129, v130, v131, v132, v133, v40);
  v141 = 1447;
LABEL_284:
  sub_100049C40(v141, v12);
LABEL_285:
  free(v43);
LABEL_104:
  sub_10001835C();
  return v12;
}

uint64_t sub_10001A45C()
{
  if (!qword_100080D48)
  {
    return 0;
  }

  v54 = 0;
  v55 = 0;
  v0 = xmmword_100080D50;
  result = sub_10001B3F0(&xmmword_100080D50, &v55, &v54);
  if (result)
  {
    return result;
  }

  v2 = v54;
  v3 = v55;
  if (!v55 && !v0 && v54 == 0)
  {
    v5 = 0;
LABEL_10:
    result = sub_10001BAD8(v2, v5);
    if (!result)
    {
      result = sub_10001B6B4(qword_100080D48, &xmmword_100080D50);
      if (!result)
      {
        qword_100080D48 = 0;
      }
    }

    return result;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v6;
  v53 = v6;
  v50 = v6;
  v51 = v6;
  v48 = v6;
  v49 = v6;
  v46 = v6;
  v47 = v6;
  v44 = v6;
  v45 = v6;
  v42 = 0u;
  v43 = 0u;
  __s2 = 0u;
  v41 = 0u;
  v38 = 160;
  v39 = 8;
  result = sub_1000397B8(dword_100080D00, 0, 0, &qword_100080D48, &v39, 8u, &v44, &v38);
  if (result)
  {
    return result;
  }

  if (qword_100080D60)
  {
    v7 = v45 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = (qword_100080D70 - 1) < 0xFFFFFFFFFFFFFFFELL;
  if (v8 == 1)
  {
    v10 = (word_100080DEC >> 2) & 1;
  }

  else
  {
    v9 = (qword_100080D70 - 1) < 0xFFFFFFFFFFFFFFFELL && (v46 + 1) < 2;
    v10 = ((BYTE12(v53) & 4) == 0) & (word_100080DEC >> 2);
  }

  sub_10001B490(&v44, v8, word_100080DEC & (BYTE12(v53) ^ 1) & 1, v9, v10, &__s2);
  if (!v0)
  {
    goto LABEL_53;
  }

  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v18;
  v37 = v18;
  v34 = v18;
  v35 = v18;
  v32 = v18;
  v33 = v18;
  v30[2] = v18;
  v31 = v18;
  v30[0] = v18;
  v30[1] = v18;
  if (xmmword_100080D50)
  {
    v19 = v44 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  sub_10001B490(&v44, v20, 0, 0, 0, v28);
  result = sub_10001B350(v0, v30);
  if (!result)
  {
    if (v20)
    {
      v29 = v29 - v37 - (BYTE12(v37) & 1);
    }

    sub_10001B5B8(v0, v30, v28, v21, v22, v23, v24, v25);
    if (word_100080DEC)
    {
      WORD6(v37) |= 2u;
    }

    result = sub_10001B6B4(v0, v30);
    v26 = v8 ^ 1;
    if (result)
    {
      v26 = 1;
    }

    if (v26)
    {
      if (result)
      {
        return result;
      }

      goto LABEL_53;
    }

    *&__s2 = v31 + v9;
    *(&__s2 + 1) = *(&v36 + 1) + v10;
    v27 = v33;
    *(&v41 + 1) = v32;
    *&v42 = v33;
    *(&v42 + 1) = v34;
    if ((BYTE8(v37) & 0x40) != 0)
    {
      *&v43 = v32;
      if ((WORD4(v37) & 0x800) != 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      *&v43 = v35;
      if ((WORD4(v37) & 0x800) != 0)
      {
        v27 = v36;
LABEL_52:
        *(&v43 + 1) = v27;
      }
    }

LABEL_53:
    result = sub_10001B920(v3, &__s2, v12, v13, v14, v15, v16, v17);
    if (result)
    {
      return result;
    }

    v5 = v41;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10001A730(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  if ((~*(a4 + 152) & 0x410) == 0 && (*(a4 + 156) & 0x100) == 0)
  {
    LODWORD(v7) = 0;
    v8 = *(a4 + 8);
    v82 = v8;
    goto LABEL_9;
  }

  v9 = *(a4 + 32);
  if ((v9 + 1) <= 1)
  {
    v9 = *(a4 + 24);
  }

  if ((v9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v82 = 0;
  if (v9 == 2)
  {
    v8 = 0;
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v75 = 0xAAAAAAAAAAAAAAAALL;
  v86 = v9 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v85 = 8;
  v33 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x4642D9C4uLL);
  v84 = 3808;
  if (!v33)
  {
    sub_10004565C("unable to allocate memory to repair dir-stats chained key\n", v26, v27, v28, v29, v30, v31, v32, v74);
    v25 = 12;
    v42 = 1430;
    v43 = 12;
    goto LABEL_22;
  }

  v34 = sub_10003F8AC(a1, a2, 3, &v75, v29, v30, v31, v32);
  if (v34)
  {
    v25 = v34;
    sub_10004565C("failed to init fsroot tree to repair dir-stats chained key\n", v35, v36, v37, v38, v39, v40, v41, v74);
    v42 = 1431;
LABEL_20:
    v43 = v25;
LABEL_22:
    sub_100049C40(v42, v43);
    free(v33);
    return v25;
  }

  v44 = sub_1000397B8(v75, qword_100080CF8, 0, &v86, &v85, 8u, v33, &v84);
  if (v44)
  {
    v25 = v44;
    if (v44 == 2)
    {
      free(v33);
      return 0;
    }

    strerror(v44);
    sub_10004565C("unable to load inode (id %llu) to repair dir-stats chained key: %s\n", v59, v60, v61, v62, v63, v64, v65, v9);
    sub_100049C40(0x598, v25);
    LOBYTE(v7) = 0;
    goto LABEL_33;
  }

  v46 = *v33;
  v86 = *v33 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v84 = 3808;
  v47 = sub_1000397B8(v75, qword_100080CF8, 0, &v86, &v85, v85, v33, &v84);
  if (v47)
  {
    v25 = v47;
    strerror(v47);
    sub_10004565C("unable to load inode (id %llu) to repair dir-stats chained key: %s\n", v52, v53, v54, v55, v56, v57, v58, v46);
    v42 = 1433;
    goto LABEL_20;
  }

  v7 = (v33[6] >> 29) & 1;
  v66 = sub_100040B74(v33, v84, 10, &v82, v48, v49, v50, v51);
  if (v66 == 2)
  {
    v8 = 0;
    v82 = 0;
  }

  else
  {
    v25 = v66;
    if (v66)
    {
      strerror(v66);
      sub_10004565C("unable to get dir-stats key of inode (id %llu) to repair dir-stats chained key: %s\n", v67, v68, v69, v70, v71, v72, v73, v46);
      sub_100049C40(0x59A, v25);
LABEL_33:
      free(v33);
      if (v25)
      {
        return v25;
      }

LABEL_10:
      if (v7)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v8 = v82;
  }

  free(v33);
LABEL_9:
  if (v8 == *(a4 + 16))
  {
    goto LABEL_10;
  }

  v11 = -*(a4 + 136) - ((*(a4 + 156) >> 2) & 1);
  v12 = ~*(a4 + 144);
  v13 = -*(a4 + 64);
  v14 = -*(a4 + 80);
  v15 = -*(a4 + 96);
  v16 = -*(a4 + 112);
  v17 = -*(a4 + 128);
  v75 = ~*(a4 + 48);
  v76.i64[0] = v11;
  v76.i64[1] = v12;
  v77 = v13;
  v78 = v14;
  v79 = v15;
  v80 = v16;
  v81 = v17;
  v10 = sub_10001B2B8(a4, &v75);
  if (!v10)
  {
    *(a4 + 16) = v82;
    v18 = (*(a4 + 156) >> 2) & 1;
    v19 = *(a4 + 64);
    v20 = *(a4 + 80);
    v21 = *(a4 + 96);
    v22 = *(a4 + 112);
    v23 = *(a4 + 128);
    v75 = *(a4 + 48) + 1;
    v24 = vdupq_n_s64(1uLL);
    v24.i64[0] = v18;
    v76 = vaddq_s64(*(a4 + 136), v24);
    v77 = v19;
    v78 = v20;
    v79 = v21;
    v80 = v22;
    v81 = v23;
    v10 = sub_10001B2B8(a4, &v75);
    if (!v10)
    {
      if (!v7)
      {
LABEL_12:
        v10 = sub_10003B12C(dword_100080D00, 0, &v83, 8, a4, 0xA0u);
        if (!v10)
        {
          return 0;
        }

        return v10;
      }

LABEL_11:
      *(a4 + 156) |= 0x400u;
      goto LABEL_12;
    }
  }

  return v10;
}

uint64_t sub_10001AADC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 & 0xFFFFFFFC) == 0x5C)
  {
    v10 = 1;
  }

  else
  {
    v10 = (*(a3 + 48) & 2) == 0;
    *(a3 + 48);
  }

  if (v10)
  {
    return 0;
  }

  v13[3] = v8;
  v13[4] = v9;
  v13[0] = 0;
  LODWORD(result) = sub_100040B74(a3, a4, 10, v13, a5, a6, a7, a8);
  if (result)
  {
    if (result == 2)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  else
  {
    v10 = v13[0] == *a5;
    *(a5 + 8) = v10;
    if (v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001AB68(uint64_t a1, void *a2, _DWORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a2[6];
  v13 = v12;
  if (!v12)
  {
    v13 = a2[5];
  }

  if ((*(v13 + 57) & 2) != 0)
  {
    v17 = *(a5 + 16);
    if (!v17)
    {
      goto LABEL_9;
    }

    if (!v12)
    {
      v12 = a2[5];
    }

    if ((*(v12 + 57) & 2) == 0)
    {
LABEL_9:
      v18 = 0;
      goto LABEL_10;
    }

    v95 = 0xAAAAAAAAAAAAAAAALL;
    v96 = v17 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    LODWORD(v97) = 18;
    v93 = 3808;
    v94 = 12;
    v34 = sub_10003F8AC(a1, a2, 18, &v95, a5, a6, a7, a8);
    if (v34)
    {
      v16 = v34;
      strerror(v34);
      sub_10004565C("failed to get fsroot tree to find expanded dir-stats %llu: %s\n", v35, v36, v37, v38, v39, v40, v41, v17);
      sub_100049C40(0x5A1, v16);
      v42 = 0;
    }

    else
    {
      v42 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x184A08F5uLL);
      if (v42)
      {
        v61 = sub_1000397B8(v95, a2[7], 0, &v96, &v94, 0xCu, v42, &v93);
        if (!v61)
        {
          v18 = v42[12];
          free(v42);
          if (v18 > 0xFFF)
          {
            v29 = 0;
            v16 = 0;
            goto LABEL_51;
          }

LABEL_10:
          v19 = ((v18 << 29) >> 31) & 0xC;
          if ((v18 & 8) != 0)
          {
            v19 = (((v18 << 29) >> 31) & 0xC) + 12;
          }

          if (v18 >= 0x800)
          {
            v19 += 12;
          }

          if (v19)
          {
            v20 = (v19 + 4);
          }

          else
          {
            v20 = 0;
          }

          v21 = malloc_type_calloc(1uLL, (v20 + 52), 0x5C640E9CuLL);
          v29 = v21;
          if (v21)
          {
            *v21 = *(a5 + 48);
            v21[1] = *(a5 + 64);
            v21[4] = v17;
            v21[5] = (random() << 32) | 0x80000000;
            v29[3] = *(a5 + 32);
            v32 = *(v29 + 12);
            v33 = v32 | 0x80;
            *(v29 + 12) = v32 | 0x80;
            if ((v18 & 1) != 0 || !*(a5 + 144))
            {
              v29[2] = *(a5 + 80);
              v33 = v32 | 0x81;
              *(v29 + 12) = v32 | 0x81;
              if ((v18 & 4) == 0)
              {
LABEL_21:
                if ((v18 & 8) == 0)
                {
                  goto LABEL_37;
                }

                goto LABEL_34;
              }
            }

            else if ((v18 & 4) == 0)
            {
              goto LABEL_21;
            }

            v43 = sub_10004052C(v29 + 26, v20, 1, (a5 + 96), 8, 0, v30, v31);
            if (!v43)
            {
              v33 = *(v29 + 12) | 4;
              *(v29 + 12) = v33;
              if ((v18 & 8) == 0)
              {
                goto LABEL_37;
              }

LABEL_34:
              v71 = sub_10004052C(v29 + 26, v20, 3, (a5 + 112), 8, 0, v30, v31);
              if (v71)
              {
                v16 = v71;
                v72 = strerror(v71);
                sub_10004565C("can't add purgeable size for dir-stats: %s (%d)\n", v73, v74, v75, v76, v77, v78, v79, v72);
                v80 = 1446;
LABEL_40:
                sub_100049C40(v80, v16);
                goto LABEL_51;
              }

              v33 = *(v29 + 12) | 8;
              *(v29 + 12) = v33;
LABEL_37:
              if (v18 >= 0x800)
              {
                v81 = sub_10004052C(v29 + 26, v20, 4, (a5 + 128), 8, 0, v30, v31);
                if (v81)
                {
                  v16 = v81;
                  v82 = strerror(v81);
                  sub_10004565C("can't add purgeable resource fork size for dir-stats: %s (%d)\n", v83, v84, v85, v86, v87, v88, v89, v82);
                  v80 = 1454;
                  goto LABEL_40;
                }

                v33 = *(v29 + 12) | 0x800;
                *(v29 + 12) = v33;
              }

              v90 = *(a5 + 156) & 0x404;
              if ((v18 & 0x100) != 0 || v90 == 4)
              {
                if (v90 == 4)
                {
                  v33 |= 2u;
                }

                *(v29 + 12) = v33 | v18 & 0x100;
              }

              v16 = sub_10001BC00(a3, 2, 0, a4, 12, v29, (v20 + 52), v31);
              goto LABEL_51;
            }

            v16 = v43;
            v44 = strerror(v43);
            sub_10004565C("can't add clone size for dir-stats: %s (%d)\n", v45, v46, v47, v48, v49, v50, v51, v44);
            v52 = 1445;
            v53 = v16;
          }

          else
          {
            sub_10004565C("failed to allocate memory for insertion of dir-stats\n", v22, v23, v24, v25, v26, v27, v28, v92);
            v16 = 12;
            v52 = 1444;
            v53 = 12;
          }

          sub_100049C40(v52, v53);
LABEL_51:
          free(v29);
          return v16;
        }

        v16 = v61;
        strerror(v61);
        sub_10004565C("unable to load dir-stats %llu to retrieve attributes: %s\n", v62, v63, v64, v65, v66, v67, v68, v17);
        v69 = 1443;
        v70 = v16;
      }

      else
      {
        sub_10004565C("failed to allocate memory to find dir-stats %llu\n", v54, v55, v56, v57, v58, v59, v60, v17);
        v16 = 12;
        v69 = 1442;
        v70 = 12;
      }

      sub_100049C40(v69, v70);
    }

    free(v42);
    v29 = 0;
    goto LABEL_51;
  }

  v14 = *(a5 + 64);
  v96 = *(a5 + 48);
  v97 = v14;
  v98 = *(a5 + 16);
  v99 = (random() << 32) | 0x80000000;
  return sub_10001BC00(a3, 2, 0, a4, 8, &v96, 32, v15);
}