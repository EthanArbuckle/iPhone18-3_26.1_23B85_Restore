BOOL sub_16C0(char a1)
{
  if ((a1 & 4) != 0)
  {
    v1 = 3;
  }

  else
  {
    v1 = a1 & 2;
  }

  v2 = +[ICDeviceInfo currentDeviceInfo];
  v3 = [v2 isWatch];

  if (v1 && (v3 & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v5 = ICBundleIdentifierForSystemApplicationType();
    v6 = [[ICNetworkConstraints alloc] initWithBundleIdentifier:v5];
    v7 = [v6 shouldAllowDataForCellularNetworkTypes];
    v4 = v7;
    if (!v1 && v7)
    {
      v4 = CFPreferencesGetAppBooleanValue(@"AllowsCellularDataDownloads", @"com.apple.Music", 0) != 0;
    }
  }

  v8 = _ATLogCategoryAssetUtils();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromMLMediaType();
    v10 = v9;
    v11 = "not allowed";
    if (v4)
    {
      v11 = "allowed";
    }

    v13 = 138543618;
    v14 = v9;
    v15 = 2080;
    v16 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Downloads for media type %{public}@ are %s on cellular data", &v13, 0x16u);
  }

  return v4;
}

uint64_t sub_186C(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_1ACC(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_1C60(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_1E54(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_1FD4(uint64_t a1)
{
  v1 = *(&off_9DA90 + ((107 * (dword_A7088 ^ 0xF9 ^ qword_A70B8)) ^ byte_7C1B0[byte_88340[(107 * (dword_A7088 ^ 0xF9 ^ qword_A70B8))] ^ 0x3A]) - 13);
  v2 = *(v1 - 4);
  v3 = *(&off_9DA90 + (byte_8135C[(byte_7C0B4[(107 * (v2 ^ qword_A70B8 ^ 0xF9)) - 4] ^ 0xCD) - 12] ^ (107 * (v2 ^ qword_A70B8 ^ 0xF9))) - 49);
  v4 = (*(v3 - 4) ^ v2) - &v6;
  *(v1 - 4) = 1010482283 * (v4 + 0x5450BF49BFD4E907);
  *(v3 - 4) = 1010482283 * (v4 ^ 0xABAF40B6402B16F9);
  v7 = 1104 - 143681137 * (((&v7 | 0x9370951A) - (&v7 & 0x9370951A)) ^ 0x47D78940);
  v8 = a1;
  LOBYTE(v3) = 107 * ((*(v3 - 4) + *(v1 - 4)) ^ 0xF9);
  return (*(*(&off_9DA90 + ((107 * ((qword_A70B8 + dword_A7088) ^ 0xF9)) ^ byte_7C1B0[byte_88340[(107 * ((qword_A70B8 + dword_A7088) ^ 0xF9))] ^ 0x3A]) - 82) + (byte_84CC4[(byte_8125C[v3 - 12] ^ 0xAD) - 4] ^ v3) + 2029))(&v7);
}

uint64_t sub_2308(uint64_t a1)
{
  v1 = *(&off_9DA90 + ((107 * (dword_A7158 ^ 0xF9 ^ qword_A70B8)) ^ byte_81350[byte_7C0B0[(107 * (dword_A7158 ^ 0xF9 ^ qword_A70B8))] ^ 0xD]) - 207);
  v2 = *(&off_9DA90 + (byte_81350[byte_7C0B0[(107 * ((qword_A70B8 - *v1) ^ 0xF9))] ^ 0xD] ^ (107 * ((qword_A70B8 - *v1) ^ 0xF9))) - 224);
  v3 = (*(v2 - 4) - *v1) ^ &v5;
  *v1 = 1010482283 * v3 - 0x5450BF49BFD4E907;
  *(v2 - 4) = 1010482283 * (v3 ^ 0xABAF40B6402B16F9);
  v7 = 1785193651 * ((((2 * (&v6 ^ 0x8B78F7EF)) | 0x59E945FC) - (&v6 ^ 0x8B78F7EF) - 754230014) ^ 0xB450B931) + 421;
  v6 = a1;
  LODWORD(v2) = 1010482283 * (*v1 ^ 0x402B16F9 ^ *(v2 - 4));
  return (*(*(&off_9DA90 + ((107 * ((qword_A70B8 - dword_A7158) ^ 0xF9)) ^ byte_7C1B0[byte_88340[(107 * ((qword_A70B8 - dword_A7158) ^ 0xF9))] ^ 0xF6]) - 55) + (v2 ^ byte_81350[byte_7C0B0[v2] ^ 0xD]) + 2028))(&v6);
}

uint64_t sub_2678(uint64_t a1)
{
  v1 = *(&off_9DA90 + ((107 * ((qword_A70B8 - dword_A7080) ^ 0xF9)) ^ byte_7C1B0[byte_88340[(107 * ((qword_A70B8 - dword_A7080) ^ 0xF9))] ^ 0x79]) - 4);
  v2 = *(&off_9DA90 + (byte_7C1B0[byte_88340[(107 * ((qword_A70B8 - *v1) ^ 0xF9))] ^ 0x79] ^ (107 * ((qword_A70B8 - *v1) ^ 0xF9))) - 22);
  v3 = &v5[*v1 + *(v2 - 4)];
  *v1 = 1010482283 * (v3 + 0x5450BF49BFD4E907);
  *(v2 - 4) = 1010482283 * (v3 ^ 0xABAF40B6402B16F9);
  v6 = a1;
  v7 = (1785193651 * (&v6 ^ 0x13DCEC20)) ^ 0x2C2;
  LOBYTE(v2) = 107 * ((*(v2 - 4) - *v1) ^ 0xF9);
  (*(*(&off_9DA90 + ((107 * (dword_A7080 ^ 0xF9 ^ qword_A70B8)) ^ byte_7C1B0[byte_88340[(107 * (dword_A7080 ^ 0xF9 ^ qword_A70B8))] ^ 0xF6]) - 55) + (v2 ^ byte_7C1B0[byte_88340[v2] ^ 0x8F]) + 2261))(&v6);
  return v8;
}

uint64_t sub_2A48@<X0>(_OWORD *a1@<X8>)
{
  v6 = a1[1];
  v7 = (v5 + v1);
  *v7 = *a1;
  v7[1] = v6;
  LODWORD(v7) = ((v3 + 1049) ^ 0x71FLL) == (v2 & 0x60);
  return (*(v4 + 8 * (((4 * v7) | (16 * v7)) ^ v3)))();
}

uint64_t sub_2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = v14 & 0xFFFFFFF8;
  v18 = *(v16 + 8 * ((774 * (((v15 - 931) | 0x278) - 753 == v17)) ^ (v15 - 8)));
  return v18(a1, a2, a3, v17, 774, v18, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_2B84()
{
  v0 = *(&off_9DA90 + ((107 * ((qword_A70B8 + dword_A7150) ^ 0xF9)) ^ byte_7C1B0[byte_88340[(107 * ((qword_A70B8 + dword_A7150) ^ 0xF9))] ^ 0xF6]) - 15);
  v1 = *(&off_9DA90 + (byte_7C1B0[byte_88340[(107 * (*v0 ^ qword_A70B8 ^ 0xF9))] ^ 0xF6] ^ (107 * (*v0 ^ qword_A70B8 ^ 0xF9))) - 103);
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = 1010482283 * (v2 + 0x5450BF49BFD4E907);
  *(v1 - 4) = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  v5[0] = (1037613739 * ((((2 * v5) | 0xB144690A) - v5 + 660458363) ^ 0x9A019FA)) ^ 0x9617D40F;
  LOBYTE(v1) = 107 * ((*(v1 - 4) - *v0) ^ 0xF9);
  v3 = *(&off_9DA90 + ((107 * (dword_A7150 ^ 0xF9 ^ qword_A70B8)) ^ byte_84CC0[byte_81250[(107 * (dword_A7150 ^ 0xF9 ^ qword_A70B8))] ^ 0xAD]) - 149) - 8;
  (*&v3[8 * (v1 ^ byte_7C1B0[byte_88340[v1] ^ 0x79]) + 17560])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2DB0()
{
  STACK[0x260] = v1 - 112;
  STACK[0x4F8] = v1 - 112;
  return v0();
}

uint64_t sub_2DCC()
{
  v6 = 17 * LODWORD(STACK[0x2F4]);
  v7 = (v5 + 4 * v0);
  v8 = *v7;
  LODWORD(v7) = 833381725 * ((*(*STACK[0x300] + (*STACK[0x308] & 0x5135FB80)) ^ v7) & 0x7FFFFFFF);
  LODWORD(v7) = v7 ^ (v7 >> 16);
  v9 = 833381725 * v7;
  *(v4 + 4 * v0) ^= v8 ^ ((((v3 - 929) ^ v0) & v0) >> (__clz((v3 - 929) ^ v0 | 1) ^ 0x1F)) & 1 ^ *(*(&off_9DA90 + v3 - 841) + HIBYTE(v9)) ^ *(*(&off_9DA90 + SLODWORD(STACK[0x2EC])) + HIBYTE(v9) - 2) ^ *(*(&off_9DA90 + SLODWORD(STACK[0x2F0])) + HIBYTE(v9) + 1) ^ (v7 * (v6 + 1700592729)) ^ v9 ^ (-471850983 * ((833381725 * v7) >> 24));
  return (*(v2 + 8 * (((((v6 + 881763406) & 0xCB715BAE) + 459) * (v1 == 1)) ^ v6)))();
}

void sub_2F50(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_3168(uint64_t a1)
{
  v1 = 1082434553 * ((-2 - ((a1 | 0x87804AFB) + (~a1 | 0x787FB504))) ^ 0xE338438E);
  v2 = *(a1 + 28) ^ v1;
  v3 = *(a1 + 24) + v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1726767306;
  v5 = v4 - 1726767306 < 0;
  v7 = 1726767306 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_9DA90 + v2 - 301) + ((255 * ((((v2 + 1238) ^ ((v3 - 256085926) < (4 * v7))) & 1) == 0)) ^ v2) - 1))();
}

uint64_t sub_32C4@<X0>(uint64_t a1@<X1>, int a2@<W4>, int a3@<W8>)
{
  v9 = v3 - 2;
  v10 = v4 + 2;
  *(v9 + (a3 ^ (a2 + 354) ^ (a1 + 86))) = (v10 ^ v6) * (v10 + 17);
  *(v9 + 90) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v5 == 2) * v7) ^ a3)))();
}

void sub_3740(uint64_t a1)
{
  v2 = *(&off_9DA90 + ((107 * ((qword_A70B8 - dword_A70C8) ^ 0xF9)) ^ byte_7C1B0[byte_88340[(107 * ((qword_A70B8 - dword_A70C8) ^ 0xF9))] ^ 0x8F]) + 69);
  v3 = *(v2 - 4);
  v4 = *(&off_9DA90 + ((107 * (v3 ^ qword_A70B8 ^ 0xF9)) ^ byte_7BEB0[byte_88140[(107 * (v3 ^ qword_A70B8 ^ 0xF9))] ^ 0xB8]) - 9);
  v5 = (*(v4 - 4) + v3) ^ &v9;
  v6 = 1010482283 * v5 - 0x5450BF49BFD4E907;
  v7 = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_9DA90 + ((107 * (dword_A70C8 ^ 0xF9 ^ qword_A70B8)) ^ byte_7C1B0[byte_88340[(107 * (dword_A70C8 ^ 0xF9 ^ qword_A70B8))] ^ 0xA4]) - 68) - 8;
  (*&v8[8 * (byte_7C1B0[byte_88340[(107 * ((v7 + v4) ^ 0xF9))] ^ 0x3A] ^ (107 * ((v7 + v4) ^ 0xF9))) + 16392])(*(&off_9DA90 + ((107 * ((v7 - v4) ^ 0xF9)) ^ byte_7C1B0[byte_88340[(107 * ((v7 - v4) ^ 0xF9))] ^ 0xF6]) + 49), sub_4088);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, _BYTE *a12, int a13, char a14, uint64_t a15, uint64_t a16, _BYTE *a17, char *a18, int a19, unsigned int a20)
{
  a20 = v20 + 1252 + 210068311 * (((&a17 | 0x63E96607) - &a17 + (&a17 & 0x9C1699F8)) ^ 0x9162C9EF);
  a17 = a12;
  a18 = &a11;
  (*(v22 + 8 * (v20 + 1958)))(&a17);
  a17 = a12;
  a18 = &a14;
  a20 = v20 + 1252 + 210068311 * ((((2 * &a17) | 0xD326B718) - &a17 - 1771264908) ^ 0x9B18F464);
  (*(v22 + 8 * (v20 + 1958)))(&a17);
  LODWORD(a17) = v20 - 50899313 * ((((&a17 | 0x421F566A) ^ 0xFFFFFFFE) - (~&a17 | 0xBDE0A995)) ^ 0x75816DC3) + 1156;
  a18 = a12;
  v23 = (*(v22 + 8 * (v20 + 1990)))(&a17);
  return (*(v22 + 8 * ((((((23 * (v20 ^ 0x10E)) ^ (a19 == v21)) & 1) == 0) * (((v20 + 1418989340) | 0xA3032203) + 141086164)) ^ v20)))(v23);
}

uint64_t sub_3AC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X7>, unsigned __int8 *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = &STACK[0x18A0] + v57;
  *v60 = *a5;
  *(v60 + 1) = *(a5 + 1);
  *(v60 + 9) = *(a5 + 9);
  *(v60 + 13) = *(a5 + 13);
  v60[15] = a5[15];
  v62 = *a5;
  v61 = *(a5 + 1);
  *(v60 + 2) = v62;
  *(v60 + 3) = v61;
  v63 = *(v59 + 8 * (v58 ^ 0x1BB)) - 12;
  v64 = *(v59 + 8 * (v58 - 299)) - 4;
  v65 = *(v64 + (v60[15] ^ 0x74));
  v66 = *(v59 + 8 * (v58 - 423)) - 8;
  v67 = *(v66 + (v60[2] ^ 0xA4));
  v68 = v67 ^ (v67 >> 5) ^ (v67 >> 3);
  v69 = *(v59 + 8 * (v58 ^ 0x15C)) - 4;
  v70 = *(v69 + (v60[12] ^ 0x28));
  v71 = (((v70 ^ (v70 >> 3) ^ (v70 >> 2) ^ a3) << 24) ^ 0x9CF9803E) & (v65 ^ 0xFFF9F1A6) | v65 & 0xFFFFFFC1;
  v72 = *(v69 + (*v60 ^ 0xBBLL));
  v73 = *(v63 + (v60[13] ^ 0xCFLL));
  v74 = (((v72 ^ (v72 >> 2) ^ ((v72 >> 3) | 0x20) ^ 0x2A) << 24) ^ 0xDCC146C5) & ((v68 << 8) | 0xFFCD00F5);
  v75 = (v68 << 8) & 0xB900;
  v76 = ((19 * v73 + 46) ^ (76 * v73 - 116)) << 16;
  v77 = *(v64 + (v60[3] ^ 0xF1));
  LODWORD(v62) = ((v74 | v75) ^ 0x9D97A420) & (v77 ^ 0xFFDFFFAE);
  v78 = v77 & 0x1A;
  LOBYTE(v77) = *(v63 + (v60[1] ^ a2));
  v79 = (*(v66 + (v60[14] ^ 0xC9)) ^ (*(v66 + (v60[14] ^ 0xC9)) >> 5) ^ (*(v66 + (v60[14] ^ 0xC9)) >> 3)) << 8;
  LODWORD(STACK[0x288]) = v62 & 0x52409144 ^ 0xC79EAAD5 ^ ((((19 * v77 + 46) ^ (76 * v77 - 116)) << 16) ^ 0xADB66EBB) & ((v78 | v62) ^ 0x2BA93D48);
  LODWORD(STACK[0x2D0]) = v79 & 0xFFFFE1FF ^ 0x367E1120 ^ (v79 ^ 0xFFFF7EFF) & ((v76 & 0xEB0000 | (v71 ^ 0x2EED7759) & (v76 ^ 0xFF2FF7FF)) ^ 0x88A0E9BC);
  return sub_33454(1395934839, 19, 76, 81, a3, 42, 0, a4, a6, a7, a8, a9, a10, a1, a12, a13, a14, a15, a16, STACK[0x590], STACK[0x588], v69, v66, v64, 0x2EFFFFFF8CLL, v63, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

void sub_3B28(uint64_t a1)
{
  v1 = 1388665877 * (((a1 | 0x37BF73D7) - (a1 & 0x37BF73D7)) ^ 0xBA12113B);
  v2 = *(a1 + 48) - v1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5 = 742307843 * ((2 * ((v9 ^ 0x4E936EDF) & 0x2DFAC602) - (v9 ^ 0x4E936EDF) + 1376074237) ^ 0x2B4DA77);
  v6 = (*(a1 + 44) ^ v1) - v5;
  v7 = -1296686805 * (*(a1 + 16) ^ v1);
  v9[1] = *(a1 + 56);
  v9[2] = v3;
  v12 = v4;
  v14 = v6 + 543731998;
  v10 = v7 - v5 - 1084092442;
  v11 = v2 + 1421512341 + v5;
  v9[0] = v4;
  v8 = *(&off_9DA90 + v2 - 101) - 8;
  (*&v8[8 * v2 + 16272])(v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_3CAC@<X0>(int a1@<W8>)
{
  v4 = (v1 - 1035336572) & 0x3DB5F536;
  v5 = v2 + a1;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return (*(v3 + 8 * (((v6 <= 2 * (v4 ^ 0x221) - 1516) * (((v4 + 563) | 0x412) ^ 0x767)) ^ v4)))();
}

uint64_t sub_3D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = STACK[0x460];
  v7 = LODWORD(STACK[0x55C]);
  STACK[0x488] = *(v3 + 8 * (v4 - 907));
  STACK[0x4F8] = ((v4 - 1) ^ 0xFFFFFFFFFFFFFF6FLL) + STACK[0x260] + ((v4 + 1194921987) & 0xB8C6EFFC);
  STACK[0x360] = v6;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(v3 + 8 * ((22 * v9) ^ (v4 - 1))))(a1, a2, a3, v7);
}

uint64_t sub_3D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (v7 <= v8 - v9)
  {
    v11 = v8 - v9;
  }

  else
  {
    v11 = v7;
  }

  return (*(v10 + 8 * ((((((a7 + 421655705) & 0xE6DE0CF4) - 299) ^ 0x2CE) * ((v11 + 1) > 0x23)) ^ a7)))(a1, a2, a3, 0);
}

uint64_t sub_3D94(int8x16_t *a1, int8x16_t a2, double a3, double a4, int8x16_t a5)
{
  v10 = (v7 + v6);
  v11 = vaddq_s8(vsubq_s8(v10[1], vandq_s8(vaddq_s8(v10[1], v10[1]), a5)), a2);
  *a1 = vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a5)), a2);
  a1[1] = v11;
  return (*(v8 + 8 * (((v5 == 1515) * v9) ^ v5)))();
}

uint64_t sub_3E6C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = (v3 ^ 0xCF) + *(a1 + v5) - ((2 * *(a1 + v5)) & 0x64) + 61;
  return (*(v4 + 8 * ((112 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_3F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v23 = (v20 - 562) | 0x450;
  v24 = 1785193651 * ((v22 + 1766605422 - 2 * ((v22 - 136) & 0x694C42F6)) ^ 0x7A90AED6);
  *(v22 - 128) = v20 - v24 + 454;
  *(v22 - 124) = (v21 ^ 0x7FBD1A97) - v24 + ((v23 - 8769486) & (2 * v21)) - 287314055;
  *(v22 - 136) = &a17;
  (*(v19 + 8 * (v20 + 1521)))(v22 - 136);
  *(v22 - 120) = a15;
  *(v22 - 128) = v23 - 143681137 * (((v18 | (v22 - 136)) - ((v22 - 136) & v18)) ^ 0xBB00B646) + 15;
  *(v22 - 136) = a16;
  v25 = (*(v19 + 8 * (v23 ^ 0xC47)))(v22 - 136);
  return (*(v19 + 8 * ((477 * (*(v22 - 112) > ((v17 + 20 * (v23 ^ 0x4F6) - 136) ^ (v23 - 178056710) & 0xA9CE9C9u))) ^ v23)))(v25);
}

uint64_t sub_4088()
{
  v0 = *(&off_9DA90 + ((107 * ((qword_A70B8 + dword_A70C0) ^ 0xF9)) ^ byte_84CC0[byte_81250[(107 * ((qword_A70B8 + dword_A70C0) ^ 0xF9))] ^ 0x1A]) + 30);
  v1 = *(v0 - 4);
  v2 = *(&off_9DA90 + (byte_7BFB0[byte_88240[(107 * (v1 ^ qword_A70B8 ^ 0xF9))] ^ 0x16] ^ (107 * (v1 ^ qword_A70B8 ^ 0xF9))) - 184);
  v3 = &v5[v1 + *(v2 - 4)];
  *(v0 - 4) = 1010482283 * v3 - 0x29E5798DF8B489EDLL;
  *(v2 - 4) = 1010482283 * (v3 ^ 0xABAF40B6402B16F9);
  v7 = (1785193651 * ((-2039063195 - (&v6 | 0x86765D65) + (&v6 | 0x7989A29A)) ^ 0x6A554EBA)) ^ 0x2C2;
  LOBYTE(v3) = 107 * (*(v0 - 4) ^ 0xF9 ^ *(v2 - 4));
  v6 = *(&off_9DA90 + (byte_8135C[(byte_7C0B4[v3 - 4] ^ 0xB3) - 12] ^ v3) - 107);
  LOBYTE(v0) = 107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9);
  return (*(*(&off_9DA90 + ((107 * ((qword_A70B8 + dword_A70C0) ^ 0xF9)) ^ byte_81350[byte_7C0B0[(107 * ((qword_A70B8 + dword_A70C0) ^ 0xF9))] ^ 0xCD]) - 1) + (v0 ^ byte_7BFB0[byte_88240[v0] ^ 0x16]) + 2072))(&v6);
}

void sub_42CC(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_449C()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xB3B)))();
  v4 = (v0 - 224);
  STACK[0x4F8] += v4 ^ 0xFFFFFFFFFFFFFD34;
  return (*(v1 + 8 * (v4 ^ (1761 * (v2 == -1261164275)))))(v3);
}

uint64_t sub_45DC(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v4 + 16);
  *(v6 - 112) = veorq_s8(**(v4 + 8), xmmword_88470);
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = *(v3 + 8 * ((117 * v9) ^ a3));
  *(v6 - 140) = -42900;
  return v10(a1, a2);
}

uint64_t sub_4694()
{
  *(v7 - 112) = v6 + 1082434553 * ((((2 * (v7 - 144)) | 0xBB2F7668) - (v7 - 144) - 1570224948) ^ 0xC6D04DBE) + 187;
  *(v7 - 128) = v1;
  *(v7 - 120) = v2;
  *(v7 - 144) = v3;
  *(v7 - 136) = v1;
  (*(v4 + 8 * (v6 + 505)))(v7 - 144);
  v8 = 2066391179 * ((((v7 - 144) | 0x5C2D82AF) - ((v7 - 144) & 0x5C2D82AF)) ^ 0xF30A00B7);
  *(v7 - 144) = v8 + v6 - 1219;
  *(v7 - 128) = (v6 - 1469 + v5 + 718822813) ^ v8;
  *(v7 - 136) = v0;
  v9 = (*(v4 + 8 * (v6 + 497)))(v7 - 144);
  return (*(v4 + 8 * (v6 ^ (16 * (*(v7 - 140) != 262715241)))))(v9);
}

uint64_t sub_478C()
{
  v4 = (v0 - 1650) | 0x441;
  v5 = v4 ^ 0x7E5;
  (*(v2 + 8 * (v4 ^ 0xC86)))(*STACK[0x280], STACK[0x448], LODWORD(STACK[0x430]));
  v6 = LODWORD(STACK[0x504]);
  v7 = 1564307779 * ((~v1 & 0xD47784044BE05D52 | v1 & 0x2B887BFBB41FA2ADLL) ^ 0xF1B4707EDCED9141);
  *(v3 - 184) = v7;
  *(v3 - 180) = ((v5 - 1668183303) ^ 0x90) + v7;
  *(v3 - 208) = v7 ^ 0x4B2B72D7;
  *(v3 - 192) = v6 + v7;
  *(v3 - 176) = v5 - v7 - 2030745604;
  *(v3 - 216) = v5 - 1668183303 - v7;
  *(v3 - 212) = ((v5 - 1668183303) ^ 0x13) + v7;
  v8 = (*(v2 + 8 * (v5 + 1329)))(v3 - 216);
  return (*(v2 + 8 * *(v3 - 200)))(v8);
}

uint64_t sub_48B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2 - 16);
  *(a1 + a2 - 32) = *(v3 + a2 - 32);
  *(a1 + a2 - 16) = v5;
  return (*(v4 + 8 * ((477 * ((((a2 & 0xFFFFFFE0) == 32) ^ (27 * (v2 ^ 0xB5))) & 1)) ^ (v2 - 180))))();
}

uint64_t sub_4920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = ((v18 & 0xC728A1AE) << SBYTE4(a17)) & (v18 ^ 0xE6229D0E) ^ v18 & 0xC728A1AE;
  v22 = ((2 * (v18 ^ 0x6E339D06)) ^ 0x52367950) & (v18 ^ 0x6E339D06) ^ (2 * (v18 ^ 0x6E339D06)) & 0xA91B3CA8;
  v23 = v22 ^ 0xA90904A8;
  v24 = (v22 ^ 0x800A0800) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xA46CF2A0) & v23 ^ (4 * v23) & 0xA91B3CA8;
  v26 = (v25 ^ 0xA00830A0) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x9130C08)) ^ 0x91B3CA80) & (v25 ^ 0x9130C08) ^ (16 * (v25 ^ 0x9130C08)) & 0xA91B3CA0;
  v28 = v26 ^ 0xA91B3CA8 ^ (v27 ^ 0x81130800) & (v26 << 8);
  HIDWORD(a15) = v18 ^ (2 * ((v28 << 16) & 0x291B0000 ^ v28 ^ ((v28 << 16) ^ 0x3CA80000) & (((v27 ^ 0x28083428) << 8) & 0x291B0000 ^ 0x20030000 ^ (((v27 ^ 0x28083428) << 8) ^ 0x1B3C0000) & (v27 ^ 0x28083428)))) ^ 0xFFFFFFCC;
  return (*(v19 + 8 * ((81 * ((STACK[0x28C] & 0x3F) < 0x3C)) ^ (a4 + 535))))(a1, a2, a3, a4, *(v20 + 8), a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_4AEC()
{
  v2 = (*(v0 + 8 * (v1 ^ 0xB93)))(1576, 0x105004009637391);
  STACK[0x378] = v2;
  return (*(v0 + 8 * (((v2 == 0) * (201 * (v1 ^ 0x3E6) + ((v1 + 1483308059) & 0xA79683A4) - 1305)) ^ v1)))();
}

uint64_t sub_4BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v20 + 76 + 742307843 * ((~((v21 - 136) ^ 0x66D1BF4E | 0xA2B0F45B) + (((v21 - 136) ^ 0x66D1BF4E) & 0xA2B0F45B)) ^ 0x25BC39BF) + 1309;
  *(v21 - 136) = &a17;
  *(v21 - 120) = v19;
  v22 = (*(v17 + 8 * ((v20 + 76) ^ 0x93F)))(v21 - 136);
  return (*(v17 + 8 * (((v18 == ((v20 - 141) ^ 0xC4)) * (v20 + 424)) ^ (v20 + 76))))(v22);
}

uint64_t sub_4CB8@<X0>(uint64_t a1@<X8>)
{
  v6 = (v4 ^ 0x11u) - 641 - 1325;
  *(v1 - 7 + (v6 ^ v3) + v2) = vadd_s8(vsub_s8(*(a1 - 7 + (v6 ^ v3) + v2), vand_s8(vadd_s8(*(a1 - 7 + (v6 ^ v3) + v2), *(a1 - 7 + (v6 ^ v3) + v2)), 0x6464646464646464)), 0x3232323232323232);
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFF8) - 8 != v3) | (16 * ((v2 & 0xFFFFFFF8) - 8 != v3))) ^ v4 ^ 0x11)))();
}

uint64_t sub_4D9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_4DB4(uint64_t a1)
{
  v1 = 2066391179 * ((-2 - ((a1 | 0xDAF47D5D) + (~a1 | 0x250B82A2))) ^ 0x8A2C00BA);
  v2 = *a1 - v1;
  v3 = *(a1 + 16) ^ v1;
  v5 = v3 - 1714952872;
  v4 = v3 - 1714952872 < 0;
  v6 = 1714952872 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 1726767306;
  v4 = v7 - 1726767306 < 0;
  v9 = 1726767306 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_9DA90 + v2 - 406) + ((2478 * ((v6 >> 5) < v9)) ^ v2) - 1))();
}

uint64_t sub_4EBC(uint64_t result)
{
  v1 = 1361651671 * (((result | 0x43FE8A9C55C36F0ALL) - result + (result & 0xBC017563AA3C90F5)) ^ 0x9053F9A586E19F86);
  v2 = *(result + 40) - v1;
  v3 = *result ^ v1;
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = v4 + v1;
  v7 = v5 + v1;
  v8 = *(result + 32) + v1;
  v9 = *(result + 4) + v1;
  v10 = v5 != v4;
  if (v8)
  {
    v10 = v7 >= v6;
  }

  if (v10)
  {
    v2 = v3;
  }

  *(result + 36) = v2 ^ v9;
  return result;
}

uint64_t sub_4F64(uint64_t a1)
{
  v1 = *a1 - 1082434553 * ((994318387 - (a1 | 0x3B441833) + (a1 | 0xC4BBE7CC)) ^ 0x5FFC1146) + 506;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 1726768246;
  v3 = v2 - 1726768246 < 0;
  v5 = 1726768246 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_9DA90 + v1 - 869) + ((67 * (v5 > ((v1 - 506) ^ 0x1B2))) | v1) - 1))();
}

uint64_t sub_50AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  v51 = STACK[0x530];
  STACK[0x458] = *(v50 + 8 * (STACK[0x340] - 846));
  v52 = STACK[0x290];
  STACK[0x5A8] = v51;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v52;
  return (*(v50 + 8 * ((11 * (((((a50 & 0x943EC3BB) + 457) ^ (((((a50 & 0x943EC3BB) + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v51 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ a50 & 0x943EC3BB)))();
}

uint64_t sub_556C(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  a6.i64[0] = *(v11 + 4);
  a6.i32[2] = *(v11 + 12);
  v13 = vextq_s8(a1, a6, 0xCuLL);
  v14 = a6;
  v14.i32[3] = *(v11 + 16);
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, a3), vandq_s8(v13, a2)), 1uLL), *(v11 - 908));
  v13.i32[0] = *(v8 + 4 * (*(v11 + 4) & 1));
  v13.i32[1] = *(v8 + 4 * (*(v11 + 8) & v9));
  v13.i32[2] = *(v8 + 4 * (*(v11 + 12) & 1));
  v13.i32[3] = *(v8 + 4 * (v14.i8[12] & 1));
  *v11 = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a4)), a5), v13);
  return (*(v12 + 8 * (((v7 == 4) * v10) ^ v6)))();
}

void sub_5600(int a1@<W8>)
{
  *v6 = *v2;
  *v5 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x219721AE219721AELL;
  v3 = *(v2 + 24);
  v4 = *(v2 + 20) | (((a1 - 679632203) & 0x28825FB7) - 914);
  *(v2 + 16) = 1941292484;
  *(v2 + 20) = v4;
  *v7 = v3;
}

void sub_5BBC(_DWORD *a1)
{
  v1 = 1082434553 * ((2 * (a1 & 0x312F7059) - a1 - 825192538) ^ 0x5597792C);
  v2 = a1[1] ^ v1;
  v3 = *a1 ^ v1;
  v5 = (v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 637534208;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_5C90@<X0>(unsigned int a1@<W8>)
{
  v5 = a1 + 670899822 < v1 + 239256766;
  if (a1 > ((233 * (v2 ^ 0x381)) ^ (v4 + 164)) != v1 + 239256766 < (v2 + 670898921))
  {
    v5 = v1 + 239256766 < (v2 + 670898921);
  }

  return (*(v3 + 8 * ((1295 * v5) ^ v2)))();
}

uint64_t sub_5D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, int a19, uint64_t a20, char *a21, int a22)
{
  v25 = 742307843 * ((&a17 + 532274142 - 2 * (&a17 & 0x1FB9DBDE)) ^ 0x19B568B);
  a19 = v24 - v25 - 1197042732;
  a17 = v25 - 1023075472;
  a22 = v25 ^ 0x20384770;
  a20 = a12;
  a21 = &a14;
  v26 = (*(v23 + 8 * (v24 + 1934)))(&a17);
  return (*(v23 + 8 * ((39 * (((((v24 ^ 0x1FC) + 330) ^ (a18 == v22)) & 1) == 0)) ^ v24)))(v26);
}

uint64_t sub_5E10@<X0>(uint64_t a1@<X8>)
{
  v7 = STACK[0x4C4];
  v8 = ((-2138549497 - ((v6 - 216) | 0x80885307) + ((v6 - 216) | 0x7F77ACF8)) ^ 0xABD0B0A2) * v5;
  *(v6 - 216) = v1 - v8 - 2013066669;
  *(v6 - 208) = v4;
  *(v6 - 200) = a1;
  *(v6 - 192) = (v1 + 1066531512) * v3 - v8 + 541753075;
  *(v6 - 188) = v8 + 197060377 * v7 + 1275665887;
  v9 = STACK[0x2B8];
  *(v6 - 184) = STACK[0x2C0];
  *(v6 - 176) = v9;
  v10 = (*(v2 + 8 * (v1 ^ 0x859)))(v6 - 216);
  v11 = *(v6 - 212);
  LODWORD(STACK[0x504]) = v11;
  return (*(v2 + 8 * ((1896 * (v11 == -1261164275)) ^ v1)))(v10);
}

uint64_t sub_5FCC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4E8]) = a1;
  v6 = (*(v2 + 8 * (v1 + 1346)))(v3 + 4, 0);
  v7 = v3[4] + 877119384 - ((2 * v3[4]) & 0x688F8F30);
  v3[1] = v3[6] + 877119384 - ((v3[6] << ((v1 ^ 3) + 93)) & 0x688F8F30);
  v3[2] = v7;
  v8 = (*(v2 + 8 * (v1 + 1309)))(v6);
  v3[3] = v8 + 877119384 - ((2 * v8) & 0x688F8F30);
  v9 = (*(v2 + 8 * (v1 ^ 0xB63)))();
  *v3 = v9 + 877119384 - ((2 * v9) & 0x688F8F30);
  v10 = (1664525 * (*v4 ^ (*v4 >> 30))) ^ v4[1];
  v4[1] = (((*v3 ^ 0xC5ACD47C) + 978529156) ^ ((*v3 ^ 0x7EAF2851) - 2125408337) ^ ((*v3 ^ 0x8F443BB5) + 1891353675)) + 1230503938 + (((v10 ^ 0xD31A3EAF) + 972421435) ^ ((v10 ^ 0x242A5BA1) - 825910219) ^ ((v10 ^ 0xF730650E) + 501195420));
  v11 = STACK[0x338];
  v12 = (v1 ^ 3) + 1853523700 - STACK[0x338];
  *(v5 - 216) = (((v1 ^ 3) + 1853523700) ^ 0x6D) - STACK[0x338];
  *(v5 - 188) = ((v1 ^ 3) + 1853523682) ^ v11;
  *(v5 - 184) = v11 + (v1 ^ 3) + 1212454636;
  *(v5 - 196) = v12;
  *(v5 - 192) = -v11;
  *(v5 - 208) = 2 - v11;
  *(v5 - 176) = v11 + 623;
  v13 = (*(v2 + 8 * ((v1 ^ 3) + 1296)))(v5 - 216);
  return (*(v2 + 8 * *(v5 - 200)))(v13);
}

uint64_t sub_621C()
{
  v2 = STACK[0x2F8] & 0x25D4833B;
  *v1 = v1[623] ^ (STACK[0x340] - 309) ^ 0x26E ^ ((((STACK[0x340] - 309) ^ v0) & v0) >> (__clz((STACK[0x340] - 309) ^ v0 | 1) ^ 0x1F)) & 1;
  return sub_21E60(v2);
}

uint64_t sub_627C@<X0>(int a1@<W8>)
{
  v6 = v1 + 2;
  v7 = (v2 - 2);
  *v7 = ((v4 - 121) ^ v6) * (v6 + 17);
  *(v7 - 1) = (v6 ^ 0xBB) * (v6 + 18);
  return (*(v5 + 8 * ((62 * (v3 == 2)) ^ a1)))();
}

uint64_t sub_633C()
{
  v5 = 1785193651 * ((v4 - 216) ^ 0x13DCEC20);
  *(v4 - 216) = (v1 + 618) ^ v5;
  *(v4 - 200) = v0 - v5 + 1437952498;
  *(v4 - 208) = v3;
  v6 = (*(v2 + 8 * (v1 ^ 0xB7F)))(v4 - 216);
  return (STACK[0x458])(v6);
}

uint64_t sub_63AC@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = v3 - 1;
  STACK[0x470] = v8;
  *(a1 + v8) = (v2 + 1 + ((a2 - 124) ^ v5)) * ((v2 + 1) ^ v4);
  return (*(v7 + 8 * (((v8 == 0) * v6) ^ a2)))();
}

uint64_t sub_63B8()
{
  v10.val[1].i64[0] = (v3 + 13) & 0xF;
  v10.val[1].i64[1] = (v3 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + 9) & 0xF;
  v10.val[3].i64[1] = v3 & 0xF ^ 8;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v7 = vqtbl4q_s8(v11, xmmword_88450).u64[0];
  v8.i64[0] = 0x7373737373737373;
  v8.i64[1] = 0x7373737373737373;
  v10.val[0].i64[0] = (v3 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.val[2].i64[0] = vqtbl4q_s8(v10, xmmword_88450).u64[0];
  v11.val[2].i64[1] = v7;
  v11.val[0] = vrev64q_s8(vmulq_s8(v11.val[2], v8));
  *(v6 - 15 + v3 - 1) = veorq_s8(veorq_s8(veorq_s8(*(v0 + v10.val[0].i64[0] - 15), *(v6 - 15 + v3 - 1)), veorq_s8(*(v1 + v10.val[0].i64[0] - 15), *(v10.val[0].i64[0] + v2 - 14))), vextq_s8(v11.val[0], v11.val[0], 8uLL));
  return (*(v5 + 8 * ((1102 * (((v4 + 689) | 0x32Eu) - 2014 == (v3 & 0x10))) ^ v4)))();
}

void sub_6648(uint64_t a1)
{
  v1 = 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_6784@<X0>(int a1@<W4>, unsigned int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v17 = ((a3 | 0x224) + 2138466600) & 0x8089925D;
  v18 = a16 - 1431841876 < (a1 + 1519336754);
  if (a16 - 1431841876 < a2 != a1 + 1519336754 < a2)
  {
    v18 = a1 + 1519336754 < a2;
  }

  return (*(v16 + 8 * ((v18 * (v17 ^ 0x4A7 ^ (v17 - 249) ^ 0x78B)) | v17)))();
}

void sub_67B4(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = ((1815990229 - (&a3 | 0x6C3DCFD5) + (&a3 | 0x93C2302A)) ^ 0x801EDC0A) * a1;
  a3 = 1332270173 - v11;
  a6 = v7 - v11;
  a7 = v8 - v11 - 1251;
  a4 = 0;
  a5 = v9;
  (*(v10 + 8 * (v8 + 677)))(&a3);
  sub_18D30();
}

uint64_t sub_68D8(int a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 & (((a8 + 136347067) | 0x67441433) - 1291370273) ^ (a2 ^ 0x8BF17611) & (v15 ^ v12) ^ 0xFD9EAFEF;
  v17 = *(v8 + 4 * (*(a5 + v10 + v13) - 45));
  v18 = (((a1 ^ 0xB00A3755) + 1341507755) ^ ((a1 ^ 0x7BEE1768) - 2079201128) ^ ((a1 ^ 0x9D817141) + 1652461247)) + *(a4 + 4 * (v10 + v13)) + ((v16 + v12 - ((2 * v16) & 0xACCAA2F8)) ^ v9) + 1136349886 + (((v17 ^ 0x77A1754) - 125441876) ^ ((v17 ^ 0x73840A08) - 1938033160) ^ ((v17 ^ 0xC02A3451) + 1070975919));
  v19 = *(a7 + v10 + v13);
  LOBYTE(v17) = (v19 + 22) ^ 0x2A;
  v20 = v17 & (2 * ((-23 - v19) & 0xD8)) ^ (-23 - v19) & 0xD8;
  v21 = v18 ^ ((v18 ^ 0x18931DA0) - 1644676847) ^ ((v18 ^ 0x4AC2BC1C) - 810968915) ^ ((v18 ^ 0x563A8104) - 749623883) ^ ((v18 ^ 0x7EFFFBF7) - 74129592) ^ 0x7A94DB4F;
  v22 = (((a2 ^ 0x71197385) - 1897493381) ^ ((a2 ^ 0xC83826B5) + 935844171) ^ ((a2 ^ 0xEF44044C) + 280755124)) - 1116590020 + ((v21 << (((v19 + 22) ^ (2 * (((2 * v17) ^ 0xE0) & v17 & (4 * v20) ^ v20))) & 0x1F ^ 8)) | (v21 >> (a3 - v19)));
  return (*(v11 + 8 * ((959 * (v10 + 1 == v14 + 48)) ^ a8)))(v15, v22 ^ ((v22 ^ 0xA2EAFD52) + 974773358) ^ ((v22 ^ 0xC0DF2F72) + 1479282254) ^ ((v22 ^ 0xF85EF31F) + 1622004257) ^ ((v22 ^ 0xFD67FFFF) + 1704255169) ^ 0x31698FBC);
}

uint64_t sub_6C08()
{
  v4 = *(v2 + 8 * (((v0 == 24) * ((v1 + 574) ^ 0x5ED)) | v1));
  STACK[0x308] = *(v3 + 8 * (v1 - 327));
  STACK[0x300] = *(v3 + 8 * (v1 ^ 0x123)) - 4;
  return v4();
}

uint64_t sub_6C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  *(v18 - 120) = &a12;
  *(v18 - 136) = &a14;
  *(v18 - 128) = v17 - ((182870043 - ((v18 - 136) | 0xAE6601B) + ((v18 - 136) | 0xF5199FE4)) ^ 0x21BE83BE) * v16 - 215;
  v19 = (*(v14 + 8 * (v17 ^ 0xD59)))(v18 - 136);
  return (*(v14 + 8 * ((772 * (*(v18 - 112) + v15 < ((19 * (v17 ^ 0x5AD)) ^ ((v17 ^ 0x293u) - 1058487692)))) ^ v17)))(v19);
}

uint64_t sub_6EAC@<X0>(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a3[3] ^ 0x32;
  v6 = (((*a3 ^ 0x32) << (((a1 + 40) | 0xC) ^ 0x14)) + ((a3[1] ^ 0x32) << 16) + ((a3[2] ^ 0x32) << 8)) | v5;
  **(v3 + 8) = v6 + v4 - 2 * (v6 & 0x34D4291D ^ v5 & 0x10);
  return sub_6F20();
}

uint64_t sub_6FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 8 * (v26 ^ (v26 + 2005))))(a19 + a20, 0x100004077774924);
  v30 = (*(v27 + 8 * (v28 + v26 + 1621)))();
  *v29 = v30;
  v29[1] = 1812433253 * (((v30 ^ (v30 >> 30) ^ 0x9C9E93D2) + 1516069995) ^ ((v30 ^ (v30 >> 30) ^ 0xBA9880AD) + 2086369046) ^ ((a17 ^ v30 ^ (v30 >> 30) ^ 0x260610BB) - 523901752)) - 485604604;
  return (*(v27 + 8 * (a18 ^ 9)))(v30, 2627638226, 1516069995, 3130556589, 2086369046, 637931707, 3771065544, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = 1785193651 * ((~(v19 | 0x96B39AB) + (v19 & 0x96B39AB)) ^ 0xE5482A74);
  *(v23 - 128) = v22 - v24 + 1053;
  *(v23 - 124) = 1855785489 - v24;
  *(v23 - 136) = v18;
  (*(v17 + 8 * (v22 + 2120)))(v23 - 136);
  *(v23 - 136) = v20;
  *(v23 - 128) = a17;
  *(v23 - 120) = (v22 + 1651) ^ (1564307779 * a11);
  (*(v17 + 8 * (v22 ^ 0x810)))(v23 - 136);
  *(v23 - 128) = v22 - a10 * v21 + 1156;
  *(v23 - 136) = a17;
  *(v23 - 120) = v18;
  v25 = (*(v17 + 8 * (v22 + 2100)))(v23 - 136);
  return (*(v17 + 8 * (((*(v23 - 112) > 0x43A7A85Fu) * ((v22 ^ 0x4F) + 1261)) ^ v22)))(v25);
}

uint64_t sub_7290@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v7 = *(*a2 + (v4 - 1941292481)) ^ 0x32;
  v8 = (((v6 - 2021593537) & 0x787F0FF1 ^ *(*a2 + (v4 - 1941292484)) ^ 0x23) << 24) | ((*(*a2 + (v6 ^ 0x8C4A3FDD) + v4) ^ 0x32) << 16) | ((*(*a2 + (v4 - 1941292482)) ^ 0x32) << 8) | v7;
  return (*(v3 + 8 * ((26 * (((v8 + v2 - 2 * (v8 & 0x34D4291D ^ v7 & 0x10)) & 0xFFFFFF ^ 0xD4290D) - (*a1 ^ v5) == -69821931)) ^ v6)))();
}

uint64_t sub_740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v11 - 124);
  if (v12 == 2)
  {
    return (*(v10 + 8 * ((1624 * (*(v11 - 128) != 19 * (a5 ^ (a5 + 30)) - 646)) ^ (a5 + v9))))(212649602, 212649603, a9);
  }

  if (v12 != 1)
  {
    JUMPOUT(0x74F4);
  }

  return (*(v10 + 8 * ((76 * (*(v11 - 128) != 0)) ^ (a5 + v9))))(212649602, 212649603, a9);
}

uint64_t sub_7560@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = a1 + 544;
  v6 = (*(v4 + 8 * (v5 ^ 0xF66)))(**(v3 + 8 * (v5 ^ 0x7AC)), va, ((((v2 - 963435087) & 0xFFFFF000 ^ 0xDA086827) + 305218553) ^ (((v2 - 963435087) & 0xFFFFF000 ^ 0xFD62B7C2) + 895196190) ^ (((((a1 - 1518749659) & 0x5A8647DA) - 635) ^ 0xEF53F724) + ((v2 - 963435087) & 0xFFFFF000 ^ 0x276ADFE5))) + 935777312, 1) != 0;
  return (*(v4 + 8 * ((118 * v6) ^ v5)))();
}

uint64_t sub_763C(uint64_t result)
{
  if ((v2 + v3 - 1) >= 0x7FFFFFFF)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v4;
  }

  *(v1 + 4) = v6;
  *(result + 24) = 895728756;
  return result;
}

uint64_t sub_767C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = v6 + 32;
  v10 = ((2 * (v5 ^ (a3 + 1482)) - 1397) ^ v9) + v4;
  v11 = *(a4 + v10 - 15);
  v12 = *(a4 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * ((896 * (v7 == v9)) ^ (a2 + v5 + 1014))))();
}

uint64_t sub_7790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, int a21, char *a22, int a23, int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a21 = 313566482;
  v31 = *(a2 + 8);
  v32 = 1082434553 * ((-1725705386 - (&a22 | 0x9923D356) + (&a22 | 0x66DC2CA9)) ^ 0xFD9BDA23);
  a24 = *(a2 + 4) - 530103060 + v32 + 501;
  a28 = &a21;
  a29 = v31;
  a22 = &a18;
  a25 = &a14;
  a26 = v32 + v29 + 164;
  a27 = &a16;
  v34 = (*(v30 + 8 * (v29 ^ 0x8BBu)))(&a22);
  return (*(v30 + 8 * (((a23 == -1261164275) * (((v29 + 363) ^ 0x170) + ((v29 + 363) | 0xD))) ^ v29)))(v34, a2);
}

uint64_t sub_78F4(uint64_t result)
{
  v1 = 1388665877 * (((result | 0x2916B44FED2ABA0BLL) - (result & 0x2916B44FED2ABA0BLL)) ^ 0x1C6C24006087D8E7);
  v2 = *(result + 8) + v1;
  v3 = *(result + 32) ^ v1;
  v4 = v2 == v3;
  v5 = v2 > v3;
  v6 = v4;
  if (((*(result + 20) - v1) & 1) == 0)
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = result;
  }

  else
  {
    v7 = (result + 16);
  }

  *(result + 24) = *v7 ^ v1 ^ (*(result + 4) - v1);
  return result;
}

uint64_t sub_7988@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v6 = a1 ^ 0x1E8u;
  *(a2 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4) = vadd_s8(vsub_s8(*(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4), vand_s8(vadd_s8(*(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4), *(v3 - 7 + (v5 ^ 0xFFFFFFFFFFFFFF93 ^ v6) + v4)), 0x6464646464646464)), 0x3232323232323232);
  return (*(v2 + 8 * ((1485 * ((v4 & 0xFFFFFFF8) - 8 == v5)) ^ a1)))();
}

uint64_t sub_7AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v64 = *(v63 - 160);
  *(v63 - 128) = *(v63 - 164) ^ 0xCE5920C4;
  *(v63 - 132) = v64 ^ 0x1978C64A;
  *(v63 - 136) = *(v63 - 168) ^ 0x8AA361C;
  *(v63 - 140) = *(v63 - 156) ^ 0xDCB3F494;
  return sub_16208(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_7B64(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v45 = v44[396] ^ ((*v44 & 0x7FFFFFFE | v44[623] & 0x80000000) >> 1);
  v44[623] = (v45 + a4 - ((v45 << (a2 + ((v41 - 116) | 0x50) - 110)) & (((v41 + 1347484827) | 0x9201041) ^ 0x4EB37BDB))) ^ *(v43 + 4 * (*v44 & 1));
  return (*(v42 + 8 * ((212 * (a41 > 0x26F)) ^ v41)))();
}

void sub_7CA4(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0x8DEF8326) + (~a1 | 0x72107CD9))) ^ 0xFFBD1E35);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_7D5C()
{
  v7 = *(v10 + 24);
  v8 = ((((v6 - 144) | 0xD03EDA8A) - (v6 - 144) + ((v6 - 144) & 0x2FC12570)) ^ 0x7F195892) * v5;
  *(v6 - 144) = v11;
  *(v6 - 136) = v8 + v1 + 1665;
  *(v6 - 132) = v8 + 1068377366;
  (*(v4 + 8 * (v1 + 2068)))(v6 - 144);
  *(v6 - 120) = v3;
  *(v6 - 112) = v11;
  *(v6 - 128) = v1 - ((2 * ((v6 - 144) & 0x63063E80) - (v6 - 144) - 1661353608) ^ 0x33DE4360) * v5 + 833;
  *(v6 - 104) = v2;
  *(v6 - 144) = v0;
  *(v6 - 136) = v0;
  (*(v4 + 8 * (v1 ^ 0x84E)))(v6 - 144);
  *(v6 - 128) = (v1 + 1559) ^ (1564307779 * (((v6 - 144) & 0xD90C3F48 | ~((v6 - 144) | 0xD90C3F48)) ^ 0xB1FE0CA4));
  *(v6 - 144) = v7;
  *(v6 - 136) = v0;
  return (*(v4 + 8 * (v1 ^ 0x874)))(v6 - 144);
}

uint64_t sub_8080@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30)
{
  v34 = 1388665877 * ((0x59000D002C7ACF31 - ((v33 - 152) | 0x59000D002C7ACF31) + a29) ^ 0x938562B05E285222);
  v35 = v33 - 176;
  *(v35 + 56) = v34 ^ 3;
  *(v35 + 32) = (v32 + 1) - v34;
  *(v33 - 136) = a30 ^ v34 ^ 0x32;
  *(v33 - 132) = v34 + 1;
  *(v33 - 124) = (v30 - 2042978751) ^ v34;
  *(v33 - 152) = a30 ^ v34;
  *(v33 - 148) = (a1 ^ 0xCE87C7C) + v34;
  v36 = (*(v31 + 8 * (v30 ^ (v30 + 2147))))(v33 - 152);
  return (*(v31 + 8 * *(v33 - 128)))(v36);
}

uint64_t sub_814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v21 - 120) = v17 - ((((v21 - 128) | 0xF0638305) - (v21 - 128) + ((v21 - 128) & 0xF9C7CF8)) ^ 0x24C49F5F) * v19 + 186;
  *(v21 - 128) = &a15;
  *(v21 - 112) = &a17;
  v22 = (*(v18 + 8 * (v17 ^ 0xCEA)))(v21 - 128);
  return (*(v18 + 8 * ((533 * (*(v21 - 104) > (v20 + v17 - 337 - 768))) ^ v17)))(v22);
}

uint64_t sub_81E4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  a6 = (v8 ^ 0x6B) + 210068311 * (((&a3 | 0xE8A0B975) - &a3 + (&a3 & 0x175F4688)) ^ 0x1A2B169D) - 576;
  a3 = a2;
  a4 = a1;
  v9 = (*(v7 + 8 * ((v8 ^ 0x6B) + 130)))(&a3);
  return (*(v7 + 8 * (((((v8 ^ 0x6B ^ (a5 == v6)) & 1) == 0) * ((((v8 ^ 0x6B) - 2116) | 0xA4) ^ 0xBC)) ^ v8 ^ 0x6B)))(v9);
}

uint64_t sub_8290@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v11 = v10;
  if (v5 > 0x12)
  {
    return (*(v7 + 8 * ((1636 * ((*(v6 + 48 * a5 + 40) & 8) == ((((v11 - 644) | 0xD4) + 516) ^ (v11 + 84)))) ^ (v11 - 427))))();
  }

  v11 = v10;
  if (((1 << v5) & 0x50181) == 0)
  {
    return (*(v7 + 8 * ((1636 * ((*(v6 + 48 * a5 + 40) & 8) == ((((v11 - 644) | 0xD4) + 516) ^ (v11 + 84)))) ^ (v11 - 427))))();
  }

  LODWORD(STACK[0x348]) = v9;
  return (*(v7 + 8 * ((23 * ((*(v6 + 48 * a5 + 40) & 1) == ((v10 - 1773427176) & 0x69B456C3) - 128)) ^ (v10 + 234))))(48, a1, a2, a3, a4, 3033803021, 329604862, v8);
}

void sub_8394(uint64_t a1)
{
  v1 = *(a1 + 4) - 843532609 * ((-2 - ((a1 | 0xE4DA0525) + (~a1 | 0x1B25FADA))) ^ 0x4768AE5F);
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (v3 - 1726767306 < 0)
  {
    v4 = 1726767306 - v3;
  }

  else
  {
    v4 = v3 - 1726767306;
  }

  v7 = v1 + 50899313 * ((2 * (&v6 & 0x4A1C24A0) - &v6 - 1243358369) ^ 0x7D821F09) + 828;
  v6 = v2;
  v5 = *(&off_9DA90 + (v1 ^ 0x1CE)) - 8;
  (*&v5[8 * v1 + 15048])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_84C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = v7 + 2;
  v14 = (v10 - 2);
  *v14 = (v13 ^ a7) * (v13 + 17);
  *(v14 - 1) = (v13 ^ 0xBB) * (v13 + 18);
  return (*(v12 + 8 * (((v9 + 106 != v11) * a4) ^ v8)))();
}

uint64_t sub_8870()
{
  v5 = 7 * (v0 ^ 0x23B);
  *v7 = (v2 + v5 - 357) ^ v8;
  v11 = v5 - (&v11 ^ 0x8DAD62EC) * v4 + 1139;
  v12 = v10;
  (*(v3 + 8 * (v5 + 1815)))(&v11);
  v12 = v9;
  v11 = (v5 ^ 0x1DB) - (((&v11 ^ 0x8384400 | 0x20039B97) + (&v11 ^ 0x20021203 | 0xDFFC6468)) ^ 0xA59734EE) * v4 + 1306;
  (*(v3 + 8 * ((v5 ^ 0x1DB) + 1982)))(&v11);
  return v1 ^ v2;
}

uint64_t sub_8A04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = a3 - 28;
  v16 = ((((v15 ^ 0xA5A70C4) + a12) ^ 0x13A2B942) - 1064193133) ^ ((v15 ^ 0xA5A70C4) + a12) ^ ((((v15 ^ 0xA5A70C4) + a12) ^ 0x6C307D72) - 1090291805) ^ ((((v15 ^ 0xA5A70C4) + a12) ^ 0xAC01DEE0) + 2134037553) ^ ((v12 ^ 0xFF5FE984 ^ ((v15 ^ 0xA5A70C4) + a12)) + 745334064);
  v18 = v16 != 751629615 && ((v15 ^ 0x79B) & v16) == 15;
  v19 = *(v13 + 8 * ((v18 * (v15 ^ 0x7A9)) ^ v15));
  *(v14 - 140) = -42899;
  return v19();
}

uint64_t sub_8AF8()
{
  *v4 = 513153;
  v6 = *v3;
  v7 = 143681137 * ((2 * ((v5 - 152) & 0x7907226145A9DC60) - (v5 - 152) + 0x6F8DD9EBA562398) ^ 0x17805F996EF13FC2);
  *(v5 - 120) = 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2) + v0 - 288126657;
  v8 = v5 - 176;
  *(v8 + 64) = v7 + 5119;
  *(v8 + 32) = v6 - v7;
  *(v5 - 128) = -143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  *(v5 - 124) = (v0 - 50079159) ^ (143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2));
  *(v5 - 132) = v0 - 50079173 - 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  *(v5 - 152) = ((v0 - 50079173) ^ 0x6F) - 143681137 * ((2 * ((v5 - 152) & 0x45A9DC60) - (v5 - 152) - 1168759912) ^ 0x6EF13FC2);
  v9 = (*(v2 + 8 * (v0 ^ (v1 + 2196))))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 136)))(v9);
}

uint64_t sub_8C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = v15;
  *(v20 - 120) = v17 - (((((v20 - 128) | 0xB2F517AA) ^ 0xFFFFFFFE) - (~(v20 - 128) | 0x4D0AE855)) ^ 0x99ADF40F) * v18 + 523;
  *(v20 - 112) = &a15;
  v21 = (*(v16 + 8 * (v17 ^ 0xBBB)))(v20 - 128);
  return (*(v16 + 8 * (v17 ^ (2 * (((v17 ^ (*(v20 - 104) > (v17 ^ 2 ^ (v19 + 771)))) & 1) == 0)))))(v21);
}

uint64_t sub_8CA4@<X0>(int a1@<W8>)
{
  v5 = (&STACK[0x248] + v2);
  *v5 = v4;
  v5[1] = v4;
  return (*(v3 + 8 * ((641 * (35 * (a1 ^ 0x5Du) - 229 == (v1 & 0x30))) ^ a1 ^ 0x433)))();
}

uint64_t sub_8DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v23 = 1785193651 * ((((v22 - 136) | 0x2555F3DE) - (v22 - 136) + ((v22 - 136) & 0xDAAA0C20)) ^ 0x36891FFE);
  *(v22 - 128) = v17 - v23 + 991;
  *(v22 - 124) = ((v17 + 227) ^ 0xEEFFAA5B) - v23 + (v21 ^ 0x7F9D5E1D) + ((2 * v21) & 0xFF3ABC3A);
  *(v22 - 136) = &a17;
  (*(v19 + 8 * (v17 + 2058)))(v22 - 136);
  *(v22 - 128) = v17 + 227 - 143681137 * ((~((v22 - 136) | 0xFC9625E1) + ((v22 - 136) & 0xFC9625E1)) ^ 0xD7CEC644) + 867;
  *(v22 - 120) = v20;
  *(v22 - 136) = a16;
  v24 = (*(v19 + 8 * (v17 + 2038)))(v22 - 136);
  return (*(v19 + 8 * (((*(v22 - 112) > ((v17 + 1565826730) & 0xA2AB65BD ^ (v18 + 1299))) * (v17 - 133)) ^ (v17 + 227))))(v24);
}

void sub_9198(uint64_t a1)
{
  v1 = *(a1 + 8) - 742307843 * ((2 * (a1 & 0x4921A181) - a1 + 920542846) ^ 0x28FCD32B);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_9274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *v11 = v7 - 1;
  v13 = &v11[6 * (v7 - 1098146251)];
  v14 = v13[2];
  LODWORD(STACK[0x53C]) = v13[3];
  STACK[0x3A0] = *(v13 + 2);
  LODWORD(STACK[0x524]) = v13[6];
  v15 = *(v9 + 48 * (v12 + ((v8 + 1695) | 0x60) + v14 - 2144) + 36);
  LODWORD(STACK[0x348]) = v15;
  return (*(v10 + 8 * (((v15 == a7) * (((8 * v8) ^ 0x8F0) + 270)) ^ v8)))();
}

uint64_t sub_9324(uint64_t a1, int a2, int a3, int a4)
{
  v8 = *(v5 + 48 * v7 + 36);
  v10 = v8 != a3 && (v8 + a4) < 0x80000003;
  return (*(v6 + 8 * ((v10 * (((158 * (v4 ^ 0x541) + 269485740) | 0x6DA08741) ^ (a2 - 950))) ^ v4)))();
}

void sub_9388(uint64_t a1)
{
  v1 = *(a1 + 12) - 50899313 * ((a1 + 2038787724 - 2 * (a1 & 0x79856E8C)) ^ 0xB1E4AADA);
  v2 = *a1;
  v4[0] = (50899313 * (((v4 | 0x439B0BB4) - v4 + (v4 & 0xBC64F448)) ^ 0x8BFACFE2)) ^ (v1 - 219);
  v5 = v2;
  v3 = *(&off_9DA90 + (v1 ^ 0x482)) - 8;
  (*&v3[8 * (v1 ^ 0xC9B)])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_949C(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 8 * (v3 ^ 0xB85)))(*v6, a2, LODWORD(STACK[0x208]) ^ 0x54FB64AEu, v3 - 1082972259 + v6[13], &STACK[0x5D0], v5, v4, &STACK[0x1888]);
  if (v8 == 268435459)
  {
    return (*(v2 + 8 * ((((((STACK[0x340] - 852) | 0x2A3) - 626) ^ 0xD5) * (LODWORD(STACK[0x26C]) < 3)) ^ (STACK[0x340] + 1178))))(v8, v9);
  }

  if (v8)
  {
    v10 = STACK[0x340];
    v11 = (v8 << (STACK[0x340] + 93)) & 0x69A8521A;
    v12 = 1785193651 * ((((v7 - 216) | 0x512F35CF) - ((v7 - 216) & 0x512F35CF)) ^ 0x42F3D9EF);
    *(v7 - 216) = &STACK[0x504];
    LODWORD(STACK[0x270]) = v8;
    *(v7 - 208) = -1261164275 - v12 + v8 - v11;
    *(v7 - 204) = v10 - v12 - 536;
    v13 = (*(v2 + 8 * (v10 ^ 0xB70)))(v7 - 216);
    return sub_49028(v13, v14, v15, v16, 1261138644, -1261164275);
  }

  else
  {
    v18 = STACK[0x340] + 484;
    v19 = STACK[0x340] + 157;
    v20 = v4;
    v21 = STACK[0x340];
    (*(v2 + 8 * (STACK[0x340] + 1315)))(*STACK[0x280], v5, v20);
    v22 = v6[13];
    v23 = ((STACK[0x208] & 0x7FFFFFFF ^ 0xB6916ED4) - 1671353055) ^ ((STACK[0x208] & 0x7FFFFFFF ^ 0xE48DBA5A) - 830604881) ^ ((v18 ^ 0xAC17F65D) + (STACK[0x208] & 0x7FFFFFFF ^ 0x86E7B020));
    v24 = (LODWORD(STACK[0x430]) ^ 0xBBDCEFFF) + 1606156016 + ((2 * LODWORD(STACK[0x430])) & 0x77B9DFFE);
    v25 = (v7 - 216) | 0x9BFA2ABB;
    v26 = 742307843 * ((-1678103877 - v25 + ((v7 - 216) | 0x6405D544)) ^ 0x7A275811);
    *(v7 - 200) = STACK[0x448];
    *(v7 - 192) = &STACK[0x1888];
    v27 = -742307843 * ((-1678103877 - v25 + ((v7 - 216) | 0x6405D544)) ^ 0x7A275811);
    *(v7 - 208) = v24 ^ v26;
    *(v7 - 204) = v27 + 2129113115 * v22 - 101675350;
    *(v7 - 216) = STACK[0x2B0];
    *(v7 - 180) = (v21 - 894) ^ v26;
    *(v7 - 176) = v27 + 2129113115 * v23 + 2091270256;
    v28 = (*(v2 + 8 * (v21 ^ 0xAA7)))(v7 - 216);
    v29 = *(v7 - 184);
    LODWORD(STACK[0x504]) = v29;
    return (*(v2 + 8 * ((327 * (v29 == -1261164275)) ^ v19)))(v28);
  }
}

uint64_t sub_956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49)
{
  v50 = STACK[0x530];
  STACK[0x3F8] = *(v49 + 8 * (STACK[0x340] - 874));
  STACK[0x4F0] = v50;
  STACK[0x518] = a17;
  v51 = *(v50 + 68) & (((a49 & 0xD60470CF) - 314933776) & 0x12C5875D ^ 0x56B);
  *(v50 + v51) = -78;
  return (*(v49 + 8 * ((1239 * (v51 > 0x37)) ^ a49 & 0xD60470CF)))(a1, 2015, 2037, a4, 1261138644, 2630733904, 50, 100);
}

uint64_t sub_96D4()
{
  STACK[0x220] = v1;
  STACK[0x278] = v0;
  STACK[0x228] = v5;
  LODWORD(STACK[0x274]) = v2;
  v7 = 1082434553 * ((v6 - 216) ^ 0x9B47F68A);
  STACK[0x3A8] = 0;
  *(v6 - 200) = &STACK[0x3A8];
  *(v6 - 208) = &STACK[0x43C];
  *(v6 - 184) = 0;
  *(v6 - 216) = v7 ^ 0xA68CCC3A;
  *(v6 - 212) = (v4 - 67) ^ v7;
  v8 = (*(v3 + 8 * (v4 + 1352)))(v6 - 216);
  return (*(v3 + 8 * ((206 * (*(v6 - 192) == 2 * (((v4 - 887) | 0x61A) ^ 0x7C8) - 1261165207)) ^ v4)))(v8);
}

uint64_t sub_9880@<X0>(int a1@<W8>)
{
  v6 = a1 - 27;
  v7 = (((v4 | 0xD6E866FE) - v4 + (v4 & 0x29179900)) ^ 0x4DAF9074) * v1;
  *(v5 - 184) = 0;
  *(v5 - 200) = &STACK[0x460];
  *(v5 - 208) = &STACK[0x55C];
  *(v5 - 216) = v7 ^ 0xA68CCC3F;
  *(v5 - 212) = (a1 + 407) ^ v7;
  v8 = (*(v2 + 8 * (a1 + 1826)))(v5 - 216);
  return (*(v2 + 8 * (((*(v5 - 192) != ((13 * (v6 ^ 0x187)) ^ (v3 + 63))) * (5 * (v6 ^ 0x18F) - 34)) ^ v6)))(v8);
}

uint64_t sub_9948(int8x16_t a1, int8x16_t a2)
{
  v9 = v3 + 2;
  v10 = v5 + 2;
  v11 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v10[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v10 = v11;
  return (*(v8 + 8 * (((v4 == 32) * v6) ^ (v7 + v2 - 91))))();
}

void sub_A268(uint64_t a1)
{
  v1 = *(a1 + 20) - 210068311 * (a1 ^ 0xF28BAFE8);
  __asm { BRAA            X9, X17 }
}

void sub_A324(int a1@<W8>)
{
  v4 = v2 ^ 0xF5;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  **(v1 + 8) = v3 - ((2 * v3) & 0x8CE65042) + (v4 ^ 0x46732FB0);
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_A3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, unsigned int a28)
{
  v30 = ((a8 + 458) ^ 0xA7B2CD6E) + v29;
  v31 = v30 < 0xA7B2CC5E;
  v32 = v30 > a28;
  if (a28 < 0xA7B2CC5E != v31)
  {
    v32 = v31;
  }

  return (*(v28 + 8 * ((!v32 * a27) ^ (a8 + 2011))))();
}

uint64_t sub_A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 112) = v18 + 965 + 1082434553 * ((((v21 - 144) | 0x99459B04) - ((v21 - 144) & 0x99459B04)) ^ 0x2026D8E);
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  (*(v19 + 8 * (v18 ^ 0xB0F)))(v21 - 144);
  *(v21 - 112) = v18 + 965 + 1082434553 * ((((v21 - 144) | 0x26A45A25) + (~(v21 - 144) | 0xD95BA5DA)) ^ 0xBDE3ACAE);
  *(v21 - 128) = &a18;
  *(v21 - 120) = a11;
  *(v21 - 144) = a12;
  *(v21 - 136) = &a18;
  (*(v19 + 8 * (v18 ^ 0xB0F)))(v21 - 144);
  v22 = 2066391179 * ((-281814440 - ((v21 - 144) | 0xEF33DA58) + ((v21 - 144) | 0x10CC25A7)) ^ 0xBFEBA7BF);
  *(v21 - 128) = (((v20 - 996129833) ^ 0xEFBB9FBC) + ((2 * (v20 - 996129833)) & 0xDF773F78) + 1987868478 + ((v18 + 133863513) & 0xF80567BE)) ^ v22;
  *(v21 - 144) = v22 + v18 - 441;
  *(v21 - 136) = a13;
  v23 = (*(v19 + 8 * (v18 ^ 0xB07)))(v21 - 144);
  return (*(v19 + 8 * ((37 * (*(v21 - 140) == ((v18 - 274) | 0x49) + 262714524)) ^ v18)))(v23);
}

uint64_t sub_A62C@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, unsigned int a6, int a7)
{
  v11 = ((1505657689 - (&a3 | 0x59BE8359) + (&a3 | 0xA6417CA6)) ^ 0xB59D9086) * a1;
  a3 = 1332270185 - v11;
  a6 = 1480580334 - v11;
  a7 = v10 - v11 - 527;
  a4 = &a2;
  a5 = v7;
  v12 = (*(v8 + 8 * (v10 ^ 0xB89)))(&a3);
  return (*(v8 + 8 * ((162 * (*(v7 + 24) == ((v10 + 1255) ^ (v9 + 132)))) ^ v10)))(v12);
}

uint64_t sub_A75C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = (a11 + v11);
  v18 = vaddq_s8(vsubq_s8(v17[1], vandq_s8(vaddq_s8(v17[1], v17[1]), a7)), a8);
  *&STACK[0x248] = vaddq_s8(vsubq_s8(*v17, vandq_s8(vaddq_s8(*v17, *v17), a7)), a8);
  *&STACK[0x258] = v18;
  return (*(v15 + 8 * ((((((v12 ^ 0x4F7u) * v16) ^ v13) == 32) * v14) ^ v12 ^ 0xFC)))(a1, a2, v11 + 64);
}

uint64_t sub_A834()
{
  v4 = v2 ^ 0x2D6;
  v13 = v2 + 210068311 * ((&v10 + 1582083030 - 2 * (&v10 & 0x5E4CABD6)) ^ 0xACC7043E) + 912;
  v10 = v9;
  v11 = &v8;
  (*(v1 + 8 * (v2 ^ 0xAB2u)))(&v10);
  LODWORD(v10) = v2 - 50899313 * (&v10 ^ 0xC861C456) + 816;
  v11 = v9;
  (*(v1 + 8 * (v2 + 1650)))(&v10);
  if (v12 == (v2 ^ 0x2D6 ^ (v3 + 154)))
  {
    v5 = v8;
  }

  else
  {
    v5 = v12;
  }

  LODWORD(v10) = v2 - ((2 * (&v10 & 0x507F5F0) - &v10 + 2063075855) ^ 0xF75568E3) * v0 + 860;
  v11 = v9;
  (*(v1 + 8 * (v2 + 1536)))(&v10);
  v11 = v7;
  LODWORD(v10) = v4 - (((&v10 | 0xD415C51B) - &v10 + (&v10 & 0x2BEA3AE0)) ^ 0x59B8A7F7) * v0 + 1326;
  (*(v1 + 8 * (v4 + 2002)))(&v10);
  return v5 ^ v3;
}

uint64_t sub_AAB4(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int8x16_t a23, int32x4_t a24, int8x16_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = vld1q_dup_f32(v34);
  v36.i64[0] = 0x8000000080000000;
  v36.i64[1] = 0x8000000080000000;
  a2.i32[0] = *(v34 + 4 * (v31 - 1500581780) - 1776);
  a2.i32[1] = *(v34 + 8);
  a2.i32[2] = *(v34 + 12);
  v37 = vextq_s8(v35, a2, 0xCuLL);
  v38 = a2;
  v38.i32[3] = *(v34 + 16);
  v39 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v38, a23), vandq_s8(v37, v36)), 1uLL), *(v34 + 1588));
  v37.i32[0] = *(v33 + 4 * (*(v34 + 4 * (v31 - 1500581780) - 1776) & 1));
  v37.i32[1] = *(v33 + 4 * (*(v34 + 8) & 1));
  v37.i32[2] = *(v33 + 4 * (*(v34 + 12) & 1));
  v37.i32[3] = *(v33 + 4 * (v38.i8[12] & 1));
  *v34 = veorq_s8(vaddq_s32(vsubq_s32(v39, vandq_s8(vaddq_s32(v39, v39), a25)), a24), v37);
  return (*(v32 + 8 * ((v31 - 1500581780) ^ 2)))(1500582225, 2794385694, a31, 2346792261, 398617226, 1751, 2895);
}

uint64_t sub_AB20(uint64_t a1, int a2)
{
  v7 = v2 + a1 - v3;
  v8 = *(v7 - 31);
  v9 = v6 + a1 - v3;
  v10.i64[0] = 0x6464646464646464;
  v10.i64[1] = 0x6464646464646464;
  v11.i64[0] = 0x3232323232323232;
  v11.i64[1] = 0x3232323232323232;
  *(v9 - 15) = vaddq_s8(vsubq_s8(*(v7 - 15), vandq_s8(vaddq_s8(*(v7 - 15), *(v7 - 15)), v10)), v11);
  *(v9 - 31) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v10)), v11);
  return (*(v5 + 8 * (((v3 != 288) * ((a2 ^ (4 * v4)) - 834)) ^ v4)))();
}

uint64_t sub_ABCC(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 107;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_ABEC(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

void sub_AC08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 8) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x3D500);
}

uint64_t sub_ACA4(uint64_t result)
{
  v1 = 1564307779 * ((((2 * result) | 0x3BE076D6021D91FELL) - result - 0x1DF03B6B010EC8FFLL) ^ 0x3833CF11960304ECLL);
  v2 = *(result + 32) ^ v1;
  v3 = *(result + 36) - v1;
  v4 = *(result + 4) - v1;
  v5 = *(result + 8) ^ v1;
  v6 = *result + v1;
  v7 = *(result + 24) - v1;
  v8 = v5 > v7;
  v9 = v5 == v7;
  v10 = v8;
  if (v2)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3;
  }

  *(result + 16) = v11 ^ v4;
  return result;
}

void sub_AD40(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (2066391179 * ((((2 * a1) | 0xC785A6D2) - a1 - 1673712489) ^ 0xCCE55171));
  v2 = *(a1 + 32);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v10[0] = 0x66EC60CA00000082;
  v10[1] = &v12;
  v9[0] = 0x66EC60CA00000082;
  v9[1] = &v11;
  v6 = v4[1];
  v13 = v10;
  v14 = v6;
  v15 = v1 - 2066391179 * ((2013797641 - (&v13 | 0x78081D09) + (&v13 | 0x87F7E2F6)) ^ 0x28D060EE) + 833;
  v17 = v2;
  v18 = v4;
  v16 = v5;
  v7 = *(&off_9DA90 + (v1 ^ 0xA4)) - 8;
  (*&v7[8 * v1 + 15952])(&v13);
  v8 = *v4;
  v13 = v9;
  v14 = v8;
  v15 = (1564307779 * (&v13 ^ 0x970DCC13)) ^ (v1 + 1559);
  (*&v7[8 * v1 + 15776])(&v13);
  LODWORD(v13) = v1 + 1082434553 * (((&v13 | 0x5D0504A1) - (&v13 & 0x5D0504A1)) ^ 0xC642F22B) + 207;
  v14 = v3;
  (*&v7[8 * (v1 ^ 0x826)])(&v13);
  __asm { BRAA            X8, X17 }
}

void sub_AF9C(uint64_t a1)
{
  v1 = *a1 + 143681137 * ((a1 + 242471276 - 2 * (a1 & 0xE73D16C)) ^ 0xDAD4CD36);
  v2 = *(a1 + 8);
  v3 = *(&off_9DA90 + v1 - 1033) - 8;
  (*&v3[8 * v1 + 8784])(*(&off_9DA90 + (v1 ^ 0x4FF)), sub_4088);
  __asm { BRAA            X10, X17 }
}

void sub_B068(uint64_t a1)
{
  v1 = 843532609 * ((a1 + 918077498 - 2 * (a1 & 0x36B8C03A)) ^ 0x6AF594BF);
  v2 = *(a1 + 64) - v1;
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 24) ^ v1;
  v13 = 0x66EC60CA00000040;
  v14 = &v18;
  v9 = 0x66EC60CA00000082;
  v10 = &v19;
  v11 = 0x66EC60CA00000001;
  v12 = &v8;
  v15 = 0x66EC60CA00000082;
  v16 = &v17;
  if (v3 | v4)
  {
    v6 = v5 == 1213870120;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_B200(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (v11 + v9 + v12 - 16);
  v15 = vaddq_s8(vsubq_s8(*(a9 + v9 - 16), vandq_s8(vaddq_s8(*(a9 + v9 - 16), *(a9 + v9 - 16)), a4)), a5);
  v14[-1] = vaddq_s8(vsubq_s8(*(a9 + v9 - 32), vandq_s8(vaddq_s8(*(a9 + v9 - 32), *(a9 + v9 - 32)), a4)), a5);
  *v14 = v15;
  return (*(v13 + 8 * ((((v9 & 0xFFFFFFE0) == 32) * (((v10 + 1955013696) & 0x8B78D7F7) + 397)) ^ v10)))();
}

void sub_B2E4(uint64_t a1)
{
  v1 = 1785193651 * ((2 * (a1 & 0x70CFEB8A) - a1 - 1892674443) ^ 0x9CECF855);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_B418@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 3 + ((v3 - 16) ^ 0xFFFFFFFFFFFFF913) + v2) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((v3 - 16) | (16 * ((v2 & 0xFFFFFFFC) != 4)))))();
}

uint64_t sub_B4BC(void *a1)
{
  if (*a1)
  {
    v3 = (a1[6] | a1[3]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (((((v1 ^ 0x5CB) << 6) - 547054082) & 0x209B634C) - 781)) ^ v1)))();
}

void sub_B5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(v8 + 16);
  **(v8 + 8) = v7;
  *v10 = a7;
  *v8 = *(v9 + 24);
}

uint64_t sub_B798(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17, unsigned int a18)
{
  v19 = a3 + a4 + 1856 + a15 + 26906444;
  v20 = v19 < ((a3 + a4 - 91) | 0x153u) + 26907988;
  v21 = v19 > a18;
  if (a18 < a17 != v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  return (*(v18 + 8 * ((13 * v22) ^ (a3 + a4 + 1034))))();
}

uint64_t sub_B7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v49 = 1361651671 * (((v48 - 216) & 0x903CF2FA | ~((v48 - 216) | 0x903CF2FA)) ^ 0xBCE1FD89);
  *(v48 - 200) = v49 + v46 + 136;
  *(v48 - 152) = v49 + 1934792313;
  *(v48 - 216) = &STACK[0x434];
  *(v48 - 208) = a16;
  *(v48 - 168) = 0;
  *(v48 - 160) = 0;
  *(v48 - 192) = v47;
  *(v48 - 184) = a45;
  v50 = (*(v45 + 8 * (v46 ^ 0xA24)))(v48 - 216);
  v51 = *(v48 - 176);
  LODWORD(STACK[0x5A4]) = v51;
  return (*(v45 + 8 * ((1619 * (v51 == (v46 ^ 0x160) - 1261165207)) ^ v46)))(v50);
}

uint64_t sub_B908()
{
  v2 = (v0 + 1124427618) & 0xBCFA9BF6;
  v3 = STACK[0x3C0];
  v4 = STACK[0x378];
  v5 = (v2 - 6433701) & 0x622967;
  v6 = v2 + 679;
  STACK[0x408] = *(v1 + 8 * v0);
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v1 + 8 * ((v8 * (v5 ^ 0x179)) ^ v6)))();
}

uint64_t sub_B984(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

void sub_B99C(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_BBC4@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x34C]) = v3;
  LODWORD(STACK[0x390]) = a1;
  LODWORD(STACK[0x41C]) = v2;
  LODWORD(STACK[0x42C]) = v6 + 80;
  v7 = STACK[0x5B8];
  v8 = (((v2 ^ 0x57691D37) - 1466506551) ^ ((v2 ^ 0xC680C984) + 964638332) ^ ((((v5 - 2060) | 0x384) ^ 0x38737995) + (v2 ^ 0xC78C85CF))) - 1098546695 + (((*(STACK[0x5B8] + 88) ^ 0x1AF3D9C4) - 452188612) ^ ((*(STACK[0x5B8] + 88) ^ 0xFEE6ED30) + 18420432) ^ ((*(STACK[0x5B8] + 88) ^ 0xB2706588) + 1301256824));
  v9 = (v8 ^ 0xCC2420FF) & (2 * (v8 & 0xEE4520FF)) ^ v8 & 0xEE4520FF;
  v10 = ((2 * (v8 ^ 0x8AE20DB)) ^ 0xCDD60048) & (v8 ^ 0x8AE20DB) ^ (2 * (v8 ^ 0x8AE20DB)) & 0xE6EB0024;
  v11 = v10 ^ 0x22290024;
  v12 = (v10 ^ 0xC0000000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x9BAC0090) & v11 ^ (4 * v11) & 0xE6EB0024;
  v14 = v12 ^ 0xE6EB0024 ^ (v13 ^ 0x82A80000) & (16 * v12);
  v15 = (16 * (v13 ^ 0x64430024)) & 0xE6EB0020 ^ 0x804B0024 ^ ((16 * (v13 ^ 0x64430024)) ^ 0x6EB00240) & (v13 ^ 0x64430024);
  v16 = (v14 << 8) & 0xE6EB0000 ^ v14 ^ ((v14 << 8) ^ 0xEB002400) & v15;
  *(STACK[0x5B8] + 88) = v8 ^ (2 * ((v16 << 16) & 0x66EB0000 ^ v16 ^ ((v16 << 16) ^ 0x240000) & ((v15 << 8) & 0xE6EB0000 ^ 0x4EB0000 ^ ((v15 << 8) ^ 0x6B000000) & v15))) ^ 0xB1B671CB;
  LODWORD(STACK[0x4C0]) = a2;
  LODWORD(STACK[0x438]) = v4;
  v17 = (((a2 ^ 0xDA0B7AE7) + 636781849) ^ ((a2 ^ 0xAB375D7) - 179533271) ^ ((a2 ^ 0x86DD5E4C) + 2032312756)) + (((*(v7 + 72) ^ 0x38E59A8D) - 954571405) ^ ((*(v7 + 72) ^ 0xD350F9C1) + 749667903) ^ ((*(v7 + 72) ^ 0xBDD03230) + 1110429136)) - 11217545;
  v18 = (((v4 ^ 0x414D46FA) - 1095583482) ^ ((v4 ^ 0x3C451D5C) - 1011162460) ^ ((v4 ^ 0x2B6D0ADA) - 728566490)) + (((*(v7 + 76) ^ 0x42903DE3) - 1116749283) ^ ((*(v7 + 76) ^ 0xC3D5C80D) + 1009399795) ^ ((*(v7 + 76) ^ 0xD720A492) + 685726574)) + 603407937;
  v19 = (v18 ^ 0xA68A5E36) & (2 * (v18 & 0x88D35CB7)) ^ v18 & 0x88D35CB7;
  v20 = ((2 * (v18 ^ 0xA7AAE750)) ^ 0x5EF377CE) & (v18 ^ 0xA7AAE750) ^ (2 * (v18 ^ 0xA7AAE750)) & 0x2F79BBE6;
  v21 = v20 ^ 0x21088821;
  v22 = (v20 ^ 0x65133C4) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0xBDE6EF9C) & v21 ^ (4 * v21) & 0x2F79BBE4;
  v24 = (v23 ^ 0x2D60AB80) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x2191063)) ^ 0xF79BBE70) & (v23 ^ 0x2191063) ^ (16 * (v23 ^ 0x2191063)) & 0x2F79BBE0;
  v26 = v24 ^ 0x2F79BBE7 ^ (v25 ^ 0x2719BA00) & (v24 << 8);
  *(v7 + 72) = v17 ^ ((v17 ^ 0x9F805DCE) + 854954063) ^ ((v17 ^ 0xBDD7BA77) + 279083000) ^ ((v17 ^ 0x1F062A21) - 1301026910) ^ ((v17 ^ 0x6FDBFFE7) - 1028771224) ^ 0x4EF6303;
  *(v7 + 76) = v18 ^ (2 * ((v26 << 16) & 0x2F790000 ^ v26 ^ ((v26 << 16) ^ 0x3BE70000) & (((v25 ^ 0x8600187) << 8) & 0x2F790000 ^ 0x6400000 ^ (((v25 ^ 0x8600187) << 8) ^ 0x79BB0000) & (v25 ^ 0x8600187)))) ^ 0xD6877A05;
  v27 = STACK[0x5B8];
  v28 = (((LODWORD(STACK[0x34C]) ^ 0x796D14DF) - 2037191903) ^ ((LODWORD(STACK[0x34C]) ^ 0xD97AE3BC) + 646257732) ^ ((LODWORD(STACK[0x34C]) ^ 0xF672A61F) + 160258529)) + 203661824 + (((*(STACK[0x5B8] + 80) ^ 0x81D631C2) + 2116668990) ^ ((*(STACK[0x5B8] + 80) ^ 0x4A90AF66) - 1250996070) ^ ((*(STACK[0x5B8] + 80) ^ 0x9D23CFD8) + 1658597416));
  v29 = (((LODWORD(STACK[0x390]) ^ 0xF91BBFE7) + 115621913) ^ ((LODWORD(STACK[0x390]) ^ 0x14EE1A1E) - 351148574) ^ ((LODWORD(STACK[0x390]) ^ 0xBB90F485) + 1148128123)) - 1231815175 + (((*(STACK[0x5B8] + 84) ^ 0xE3E50C28) + 471528408) ^ ((*(STACK[0x5B8] + 84) ^ 0x7056F824) - 1884747812) ^ ((*(STACK[0x5B8] + 84) ^ 0xC5D6A570) + 975788688));
  *(v27 + 80) = v28 ^ ((v28 ^ 0x85C4B065) + 627290259) ^ ((v28 ^ 0xB81E5064) + 414797972) ^ ((v28 ^ 0x8D7DE8F6) + 769320962) ^ ((v28 ^ 0xEFFFF7FF) + 1331230473) ^ 0x93DAE74;
  *(v27 + 84) = v29 ^ ((v29 ^ 0x2A75D19) - 191759896) ^ ((v29 ^ 0x7401BAC9) - 2110317000) ^ ((v29 ^ 0x40900328) - 1230592041) ^ ((v29 ^ 0x3FFFBFF9) - 909567224) ^ 0x5FAC0A7D;
  STACK[0x4F8] -= 320;
  return (STACK[0x3D8])();
}

uint64_t sub_C408@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3, unsigned int a4)
{
  v9 = 3 * ((v4 - 1248) ^ 0xB);
  *(v8 - 100) = v9 + 450 + 50899313 * ((v8 - 112) ^ 0xC861C456);
  *(v8 - 112) = a1;
  (*(v6 + 8 * (v9 ^ 0xBE1)))(v8 - 112);
  v10 = *(v8 - 104);
  *(v8 - 100) = v9 + 450 + 50899313 * (((v8 - 112) & 0x44A45AB1 | ~((v8 - 112) | 0x44A45AB1)) ^ 0x733A6118);
  *(v8 - 112) = v5;
  (*(v6 + 8 * (v9 + 1503)))(v8 - 112);
  v11 = ((*(v8 - 104) + v10) * (((v9 - 767) | 0xC0) - 1725545589) + *(v8 - 104) * v10 - 944893855) * v7;
  a4 = (v11 ^ 0x7EFCF7DB) - 403740433 + ((2 * v11) & 0xFDF9EFB6);
  *(v8 - 96) = (v9 + 1015) ^ (1564307779 * ((2 * ((v8 - 112) & 0x643E4990) - (v8 - 112) + 465679980) ^ 0x8CCC7A7F));
  *(v8 - 112) = v5;
  *(v8 - 104) = &a3;
  v12 = (*(v6 + 8 * (v9 + 1428)))(v8 - 112);
  return sub_C564(v12);
}

uint64_t sub_C5A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1 ^ 0x5AA;
  v16 = (a1 + 20139728) & 0xFECCACCA;
  v17 = a1 - 1190;
  *(v14 - 104) = a1 + 1082434553 * ((-603942666 - (v13 | 0xDC0090F6) + a4) ^ 0xB8B89983) + 558;
  *(v14 - 136) = a11;
  *(v14 - 128) = v12;
  *(v14 - 120) = v12;
  *(v14 - 112) = a6;
  v18 = (*(v11 + 8 * (a1 + 876)))(v14 - 136);
  return (*(v11 + 8 * (((((a8 >> 1) & a5) != (v16 ^ 0xC8)) * (v15 - 55)) | v17)))(v18);
}

uint64_t sub_C5A8(uint64_t a1)
{
  v3 = STACK[0x448];
  v4 = (LODWORD(STACK[0x430]) ^ 0x77DBF77EEFDEFF6BLL) + ((2 * LODWORD(STACK[0x430])) & 0x1DFBDFED6) + ((17 * (v1 ^ 0x761u)) ^ 0x882408811021007BLL);
  STACK[0x470] = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 - 814) ^ 0x4A3)) ^ v1)))(a1, v3);
}

uint64_t sub_C67C@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v16 = &STACK[0x248] + v13;
  *v16 = a1;
  v16[1] = v12;
  v16[2] = v14;
  *(&STACK[0x248] + (HIDWORD(a4) ^ 0x11DLL) + v13) = v15;
  return sub_46C48(HIDWORD(a4) ^ 0x102u, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_C6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = 307 * (v13 ^ 0xDE);
  v15 = ((v14 - 1603128684 + (a12 ^ 0x5F8DC507)) ^ ((a12 ^ 0xA6680DDE) + 1503130146) ^ ((a12 ^ 0x4D31E1D4) - (v14 ^ 0x86B) + 16 * (v14 ^ 0x86B) - 1295114918)) + 1247207451;
  v16 = v15 < 0x9582B70E;
  v17 = v15 > 0x9582B70E;
  if (v16)
  {
    v17 = v16;
  }

  return (*(v12 + 8 * ((228 * !v17) ^ v14)))(2999852378, 2791837150, 1503130146, 1247207451);
}

uint64_t sub_C7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v10 = &STACK[0x5E0] + v9;
  *v10 = 1368544279;
  *(v10 + 1) = 0;
  *(v10 + 4) = 572608532;
  *(v10 + 6) = 1657355148;
  *(&STACK[0x5E0] + v9 + 40) = 1657355148;
  *(v10 + 4) = 0;
  STACK[0x4D8] = &STACK[0x5E0] + v9 + 40;
  *(&STACK[0x5E0] + v9 + 48) = 0;
  STACK[0x550] = &STACK[0x5E0] + v9 + 48;
  *(&STACK[0x5E0] + v9 + 56) = 1657355148;
  *(&STACK[0x5E0] + v9 + 64) = 0;
  STACK[0x420] = &STACK[0x5E0] + v9 + 56;
  STACK[0x4A8] = &STACK[0x5E0] + v9 + 64;
  *(&STACK[0x5E0] + v9 + 72) = 1657355148;
  STACK[0x3E0] = &STACK[0x5E0] + v9 + 72;
  *(&STACK[0x5E0] + v9 + 80) = 0;
  STACK[0x380] = &STACK[0x5E0] + v9 + 80;
  v10[88] = 107;
  *v7 = 1368544279;
  memset((v7 + 4), 50, 20);
  *(v7 + 28) = 0;
  STACK[0x290] = v7 + 28;
  *(v7 + 24) = 1657355148;
  *(v7 + 232) = 0;
  STACK[0x288] = v7 + 232;
  memset((v7 + 436), 50, 40);
  memset((v7 + 1128), 50, 40);
  *(v7 + 1168) = 0u;
  *(v7 + 1184) = 0u;
  return (*(v8 + 8 * a7))(a1, a2, a3, a4, a5, a6, 329604862);
}

uint64_t sub_C980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, unsigned int a18)
{
  a18 = v18 + 1090264433 + ((v21 + 908907675) & 0xC9D327DD);
  *(v22 - 112) = (v21 + 730) ^ (1564307779 * ((((v22 - 128) | 0x6844822D) + (~(v22 - 128) | 0x97BB7DD2)) ^ 0xFF494E3F));
  *(v22 - 128) = &a15;
  *(v22 - 120) = v19;
  (*(v20 + 8 * (v21 + 1143)))(v22 - 128);
  *(v22 - 128) = v19;
  *(v22 - 120) = v21 - 143681137 * ((((2 * (v22 - 128)) | 0x646EBC3A) - (v22 - 128) + 1304994275) ^ 0x66904247) + 235;
  *(v22 - 112) = &a17;
  v23 = (*(v20 + 8 * (v21 + 1179)))(v22 - 128);
  return (*(v20 + 8 * ((181 * (*(v22 - 104) <= 0x43A7A85Fu)) ^ v21)))(v23);
}

uint64_t sub_CAF8@<X0>(uint64_t a1@<X8>)
{
  v8 = (v2 - 1249789826) & 0x4A7E4776;
  v9 = (**(v7 + 8) ^ v3) + (**(v4 + 8) ^ v3);
  **(a1 + 8) = v9 + v3 - ((v9 << (v8 - 117)) & (v6 + 1427));
  return (*(v5 + 8 * ((247 * (v1 != 1)) ^ v8)))();
}

uint64_t sub_CB88(uint64_t a1, uint64_t a2)
{
  v6 = **(a2 + 8) - 42;
  v7 = (v3 & (2 * v6)) + (((v4 - 122) | 0x108) ^ (v2 - 350) ^ v6) == v2;
  return (*(v5 + 8 * (((8 * v7) | (32 * v7)) ^ v4)))();
}

void sub_CBD8()
{
  if ((*(v2 + 4) - 1726767307) >= 0x7FFFFFFF)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 + 2;
  }

  *(v0 + 8) = v3;
}

uint64_t sub_CBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, int a17, uint64_t a18, char *a19, int a20)
{
  v23 = v20 + 38;
  v24 = 742307843 * (((&a15 | 0xE567A8BF) + (~&a15 | 0x1A985740)) ^ 0xFB4525EB);
  a20 = v24 ^ 0x233D6C96;
  a15 = v24 - 1023075472;
  a17 = v23 - v24 - 1197042671;
  a18 = a13;
  a19 = &a11;
  v25 = (*(v22 + 8 * (v23 + 1995)))(&a15);
  return (*(v22 + 8 * (((a16 == v21) * ((8 * (((v23 - 129) | 0x223) ^ 0x282)) ^ 0x7AB)) ^ v23)))(v25);
}

uint64_t sub_D01C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  HIDWORD(v14) = a1 ^ 0x665517C;
  LODWORD(v14) = a1 ^ 0x55555555;
  v15 = (a6 ^ 0xA99AAE83) & (v6 ^ 0x600C06E9) ^ a6 & 0x36695795;
  v16 = (v14 >> 27) + (((v8 ^ 0x7F5BFC53) - 2136734803) ^ ((v8 ^ 0x4F252DF7) - 1327836663) ^ ((v8 ^ 0x661B80D8) - 1713078488)) + (v15 & 0xEFDB3BC6 ^ 0x302CC6B9 ^ (v15 ^ 0xDFF7F97E) & (v7 & 0x9890D784 ^ 0x24953D ^ (a6 ^ (a2 - 822770999)) & (v7 ^ v12))) - 1125750377 + (((*(v9 + 4 * (a3 + v11)) ^ 0xCA908619) + 896498151) ^ ((*(v9 + 4 * (a3 + v11)) ^ 0xBAEE0DBB) + 1158804037) ^ ((*(v9 + 4 * (a3 + v11)) ^ 0xC4AAA2AF) + 995450193));
  return (*(v10 + 8 * ((689 * (a3 + 1 == v13 + 20)) ^ a2)))(v16 ^ ((v16 ^ 0x8665F7B3) + 783318330) ^ ((v16 ^ 0x4D5774A7) - 444400082) ^ ((v16 ^ 0xE3F7689A) + 1260577297) ^ ((v16 ^ 0x7FEF9EFB) - 684059534) ^ 0x14F2409);
}

uint64_t sub_D248(unint64_t a1)
{
  STACK[0x4D0] = a1;
  LODWORD(STACK[0x428]) = v3;
  v4 = 7 * ((4 * (v1 ^ 0x680)) ^ 0x325);
  v5 = STACK[0x410];
  v6 = (v4 ^ 0xFFFFFFFFFFFFFC78) + 336;
  STACK[0x368] = v6;
  *(v5 + v6) = (&STACK[0x368] ^ 0xBA) * (&STACK[0x368] + 17);
  return (*(v2 + 8 * ((1277 * (STACK[0x368] == 0)) ^ v4)))();
}

uint64_t sub_D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v27 = ((((v26 - 144) | 0x2A8C4F6F) - (v26 - 144) + ((v26 - 144) & 0xD573B090)) ^ 0x85ABCD77) * v22;
  *(v26 - 144) = &a22;
  *(v26 - 136) = v27 + v25 + 1089;
  *(v26 - 132) = v27 + 1068442902;
  v28 = (*(v23 + 8 * (v25 + 1492)))(v26 - 144);
  return (*(v23 + 8 * ((((((v25 - 419) | 0x220) + 2) ^ (v25 - 618209150) & 0x24D91FFA) * (v24 == 0)) | (v25 + 1209))))(v28);
}

uint64_t sub_D390@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = ((v2 + 874) ^ v5) + a2;
  *(v6 + v8) = *(a1 + v8);
  return (*(v7 + 8 * (((v8 == ((v2 + 874 + v3) & v4) - 58) * (v2 - 13)) ^ (v2 + 996))))();
}

uint64_t sub_D45C(_DWORD *a1)
{
  v2 = *a1 ^ (1037613739 * (a1 ^ 0xD1022D7F));
  result = (*(*(&off_9DA90 + (v2 ^ 0x9617D448)) + (v2 ^ 0x9617DC95) - 1))(*(&off_9DA90 + (v2 ^ 0x9617D452)) - 4, sub_1ED94);
  v4 = **(&off_9DA90 + (v2 ^ 0x9617D474));
  if (result)
  {
    v4 = 1261138867;
  }

  a1[1] = v4;
  return result;
}

uint64_t sub_D518@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, unint64_t a4@<X5>, int a5@<W6>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int8x16_t a9@<Q4>, int8x16_t a10@<Q5>, int32x4_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v17 = v12 + 4;
  v18 = v13 + 16;
  a8.i64[0] = *(v18 + 4);
  a8.i32[2] = *(v18 + 12);
  v19 = vextq_s8(a7, a8, 0xCuLL);
  v20 = a8;
  v20.i32[3] = *(v16 + 4 * (v17 + (((a6 ^ (a1 + 5)) * a3) ^ a4)));
  v21 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v20, a12), vandq_s8(v19, a9)), 1uLL), *(v18 - 908));
  v19.i32[0] = *(v15 + 4 * (*(v18 + 4) & 1));
  v19.i32[1] = *(v15 + 4 * (*(v18 + 8) & 1));
  v19.i32[2] = *(v15 + 4 * (*(v18 + 12) & 1));
  v19.i32[3] = *(v15 + 4 * (v20.i8[12] & 1));
  *v18 = veorq_s8(vaddq_s32(vsubq_s32(v21, vandq_s8(vaddq_s32(v21, v21), a10)), a11), v19);
  return (*(v14 + 8 * (((v17 == 392) * a5) ^ (a2 + a6 + 175))))();
}

uint64_t sub_D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a1 + 24) ^ (1388665877 * (((a1 | 0x3647F9EA) - (a1 | 0xC9B80615) - 910686699) ^ 0xBBEA9B06));
  v19 = 742307843 * ((((2 * &v28) | 0x163644D6) - &v28 - 186327659) ^ 0x1539AF3E);
  v30 = 602092488 - v19;
  v29 = &v27;
  v28 = v18 - v19 - 473373692;
  (*(*(&off_9DA90 + (v18 ^ 0x5B)) + v18 + 2240))(&v28);
  return sub_4920(100, v20, v21, v18, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_D7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, _BYTE *a16, int a17, char a18, __int16 a19, char a20, _BYTE *a21, char *a22, char *a23, _BYTE *a24)
{
  HIDWORD(a21) = v25 + (((~&a21 & 0xA32B3690) - (~&a21 | 0xA32B3691)) ^ 0xBD09BBC4) * v24 + 739;
  a22 = &a20;
  a23 = &a18;
  a24 = a16;
  (*(v27 + 8 * (v25 + 1716)))(&a21);
  HIDWORD(a23) = v25 + 210068311 * (&a21 ^ 0xF28BAFE8) + 1028;
  a21 = a16;
  a22 = &a12;
  (*(v27 + 8 * (v25 + 1734)))(&a21);
  HIDWORD(a23) = v25 + 210068311 * (&a21 ^ 0xF28BAFE8) + 1028;
  a21 = a16;
  a22 = &a15;
  (*(v27 + 8 * (v25 + 1734)))(&a21);
  LODWORD(a21) = v25 - 50899313 * (&a21 ^ 0xC861C456) + 932;
  a22 = a16;
  v28 = (*(v27 + 8 * (v25 ^ 0xAE6)))(&a21);
  return (*(v27 + 8 * ((1067 * (a23 == v26 + 51 * (v25 ^ 0x20F) - 357)) ^ v25)))(v28);
}

uint64_t sub_D948(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 2 * (a4 ^ 0xEF3334FF02300D6ALL);
  v11 = ((a4 ^ 0xEF3334FF02300D6ALL) - (v10 & 0xEF5B77A68B58122ALL) + 0x77ADBBD345AC0915) ^ a3;
  v12 = v11 ^ a1 ^ 0xB1847C999AF7BC6ELL;
  if (((a4 ^ 0xEF3334FF02300D6ALL) & 0x82EE1687ACCADB62) != 0)
  {
    v13 = a4 ^ 0xEF3334FF02300D6ALL;
  }

  else
  {
    v13 = v11 ^ a1 ^ 0xB1847C999AF7BC6ELL;
  }

  v14 = v13 & (a3 ^ 0x39D638B520A44C1ELL);
  v15 = a5 ^ (a7 | (v148 << 32));
  v16 = v8 ^ v15 ^ 0xA0F6A1995EC296E4;
  v17 = ((a4 ^ 0xEF3334FF02300D6ALL) - 0x21AB2F79F13344 - (v10 & 0xFFBCA9A10C1D9978)) ^ v7;
  v18 = v14 ^ v16 ^ 0x3CF986AD46254D3BLL;
  if (v17 == 0x68040451F630332FLL)
  {
    v18 = v16 ^ 0x43067952B9DAB2C4;
  }

  v19 = (v14 ^ v16 ^ 0xED9891E9C940C322) + 2 * (v14 & (v16 ^ 0x6D9891E9C940C322)) - 2 * ((v18 ^ 0x2E9EE8BB709A71E6) & v14);
  v20 = (v16 ^ 0x12676E1636BF3CDDLL) & (a3 ^ 0xD1BCDA9F436F48A2);
  v21 = v16 & 0x17951DD59C34FB43;
  v22 = v16 & 0xD87006A6404BA173 ^ (v16 ^ 0xED9891E9C940C322) & (v15 ^ 0xB3B4E95F649F9A69) ^ v17 ^ 0x4CA8D4CD69877E38;
  v23 = v21 ^ v15 ^ 0xA0F6A1995EC296E4 ^ v20 ^ v22;
  *(&v24 + 1) = v23 ^ 0x85DC954123DBC8CCLL;
  *&v24 = v23;
  v25 = v23 ^ 0x85DC954123DBC8CCLL ^ __ROR8__(v23 ^ 0x85DC954123DBC8CCLL, 61) ^ (v24 >> 39);
  v26 = __ROR8__(__ROR8__(v25 ^ 0x1F8023B6C94E8738 ^ (v19 >> 6) ^ (v19 >> 1) ^ v19 ^ 0x848EAF93308C3BA1 ^ ((v19 ^ 0x848EAF93308C3BA1) << 58) ^ ((v19 ^ 0x848EAF93308C3BA1) << 63) ^ 0xC7B67A763B00CE0FLL, 31) ^ 0x842C347A09874434, 33);
  v27 = a3 ^ 0x8C88747CFC525113 ^ (v12 & 0xFB3E5102089C8525 | (v17 ^ 0x933A5553FEACB60ALL) & (v11 ^ 0x4E7B83666508450BLL));
  v28 = (-v19 ^ (v27 - (v19 ^ v27)) ^ 0x3C1E6AAD233402CBLL ^ (v19 - ((2 * v19) & 0x783CD55A46680596) + 0x3C1E6AAD233402CBLL)) + v27;
  v29 = v28 ^ __ROR8__(v28, 17) ^ (v28 << 54) ^ (v28 >> 10);
  v30 = v15 & 0x3BD047E8AC7C6A7FLL ^ (v17 ^ 0xAC2BBC46A5B3A6AFLL) & (v15 ^ 0x943B1006DB2BC4E5) ^ v12 ^ 0x98DC5FD5E5364DEELL;
  *&v24 = __ROR8__(__ROR8__(v30, 48) ^ 0x2B13308C6A1AAE48, 16);
  v31 = v24 ^ 0x911628FC53A9C027 ^ ((v24 ^ 0x911628FC53A9C027) << 23) ^ (((v24 >> 41) ^ (v24 >> 7) ^ 0xEAEBADAFF0EF964ALL) & (((v24 ^ 0x911628FC53A9C027) << 57) ^ 0x73FFFFFFFFFFFFFFLL) | ((v24 ^ 0x911628FC53A9C027) << 57) & 0x1400000000000000);
  v32 = (v29 & 0x6A2FB5C53305728 | (v31 ^ 0xB6E6DAB3DF8C3C1) & ~v29) ^ v26;
  v33 = v31 ^ 0xEDD231C8B7069357;
  v34 = v29 ^ 0x8401BA65A20C7889 ^ v31 ^ 0xEDD231C8B7069357;
  v35 = v30 ^ v22;
  *(&v24 + 1) = v35 ^ 0x8690FEDFC512279;
  *&v24 = v35;
  v36 = v35 ^ 0x8690FEDFC512279 ^ __ROR8__(v35 ^ 0x8690FEDFC512279, 28) ^ (v24 >> 19) ^ v33;
  *(&v24 + 1) = v34 & 0x19B2BE841E1A7CB1 ^ v29 ^ 0x8401BA65A20C7889 ^ v32 ^ (v34 ^ 0x9BE0E2A5843D80C8) & (v36 ^ 0x5B4028378EBCE62CLL) ^ 0x54F51E67C8C4A5F0;
  *&v24 = v34 & 0x19B2BE841E1A7CB1 ^ v29 ^ 0x8401BA65A20C7889 ^ v32 ^ (v34 ^ 0x9BE0E2A5843D80C8) & (v36 ^ 0x5B4028378EBCE62CLL);
  v37 = v24 >> 17;
  *&v24 = __ROR8__(*(&v24 + 1), 10);
  v38 = ((v37 ^ v24 ^ 0xD6DA16427EB366DALL) - 2 * ((v37 ^ v24 ^ 0xD6DA16427EB366DALL) & 0x3C8CE547BAC5F8ABLL ^ (v37 ^ v24) & 1) + 0x3C8CE547BAC5F8AALL) ^ *(&v24 + 1);
  v39 = v36 & 0x282DBDAEEA7DE4F8 ^ (v36 ^ 0xBD0D694C6F596562) & (v25 ^ 0xD0404A3738C8C3B9) ^ 0x1A3C60AACD98A6AFLL ^ v34;
  v40 = (v39 & 0xF2F0F93CF1701AFDLL ^ 0x9097F5B1C24940B2) & (v39 & 0xD0F06C30E8FE502 ^ 0xF2F9FB3DF77E5EFFLL) | v39 & 0xD0802420C86A500;
  v41 = __ROR8__(v40 ^ 0x807523D053428863, 7);
  *&v24 = __ROR8__(v40 ^ 0x807523D053428863, 41);
  v42 = ((v41 ^ v24 ^ 0xAB5FA1F5FDF76B5DLL) - 2 * ((v41 ^ v24 ^ 0xAB5FA1F5FDF76B5DLL) & 0x5CF2BAE5CC89006ELL ^ (v41 ^ v24) & 2) - 0x230D451A3376FF94) ^ v40 ^ 0x807523D053428863;
  v43 = v25 & 0x5E91F30F2450BD2ELL ^ v36 ^ 0x5F4D8D0123B7DAF1 ^ (v26 ^ 0xAF644E097E3D1FE3) & (v25 ^ 0x79208662D4AD8BELL);
  v44 = v40 ^ v43 ^ ((v40 ^ v43 ^ 0x42E72441891A0B1ALL) >> 19) ^ ((v40 ^ v43 ^ 0x42E72441891A0B1ALL) >> 28) ^ ((v40 ^ v43 ^ 0xD0C8D777ADEEE37CLL) << 36) ^ ((v40 ^ v43 ^ 0xD0C8D777ADEEE37CLL) << 45) ^ 0xBCF6E12E86176E59;
  *(&v24 + 1) = v43 ^ v25 ^ 0x1F8023B6C94E8738;
  *&v24 = v43 ^ v25;
  v45 = (v26 ^ 0xE0A42F9A5925D32) & (v29 ^ 0x11151B40B0209886) ^ v26 & 0x11151B40B0209886 ^ __ROR8__((v24 >> 54) ^ 0x2C8233060D805428, 10);
  LOBYTE(v21) = *(v9 + ((v45 >> 61) ^ 0x52));
  v46 = (v21 ^ ((v21 ^ 0x3C) - ((2 * (v21 ^ 0x3C) + 2) & 0xB8) + 93) ^ ((v21 ^ (57 - (v21 ^ 0xFA)) ^ 0x36 ^ ((v21 ^ 0x3C) - ((2 * (v21 ^ 0x3C) + 2) & 0x14) + 11)) + 1) ^ 0x9F) - 62;
  v47 = v46 ^ (v45 >> 39) ^ v45 ^ 0x9D3851BE94ABEA66 ^ (8 * (v45 ^ 0x9D3851BE94ABEA66)) ^ ((v45 ^ 0x9D3851BE94ABEA66) << 25);
  v48 = (v42 - ((2 * v42) & 0x48E51F629851E4ACLL) - 0x5B8D704EB3D70DAALL) ^ v44;
  v49 = v38 ^ 0x147D2CDEEA4;
  v50 = v38 ^ 0x147D2CDEEA4 ^ v42;
  v51 = (~(2 * v48) + v48) & (v47 ^ 0x45B83ECA51117C24) ^ v50;
  v52 = ((v51 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v51 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v51 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v51 ^ 0x26974B18501E2B14) - (((v51 ^ 0x26974B18501E2B14) << 58) & (2 * (v51 ^ 0x26974B18501E2B14))));
  v53 = v32 ^ (v32 << 58) ^ 0xE41231C5A00235DFLL;
  v54 = (v32 >> 1) ^ 0x4C0918E2D0011AEFLL;
  v55 = v54 & 0x100000000000;
  if ((v54 & 0x100000000000 & v53) != 0)
  {
    v55 = -v55;
  }

  v56 = ((v32 << 63) | 0x14EE3DA2DA8E866ALL) ^ (v32 >> 6) ^ v54 & 0xFFFFEFFFFFFFFFFFLL ^ (v55 + v53);
  v57 = ((v38 ^ 0xFFFFFEB82D32115BLL) & v42) - ((2 * ((v38 ^ 0xFFFFFEB82D32115BLL) & v42)) & 0xC1D6ABE6842A518) - 0x79F14AA0CBDEAD74;
  v58 = (v49 - ((2 * v49) & 0x48E51F629851E4ACLL) - 0x5B8D704EB3D70DAALL) ^ v44;
  if (!v46)
  {
    v58 = v48;
  }

  v59 = v57 ^ v47 ^ v56;
  v60 = v38 ^ v58 & ~v50 ^ 0x153BBA291CEE65C6;
  v61 = v59 ^ 0x3373E9F6372DE041;
  v62 = v60 ^ v59 ^ 0x3373E9F6372DE041;
  v63 = __ROR8__(v62, 10);
  v64 = (v62 ^ v63 ^ (v62 >> 17)) + (v62 << 47) - 2 * ((v62 ^ v63 ^ (v62 >> 17)) & (v62 << 47));
  v65 = v59 ^ 0x2C6D141CE4761819;
  v66 = (((2 * (0x34CDB152F4A04500 - ((v59 ^ 0x2C6D141CE4761819) << 58))) & 0x9000000000000200) + ((0x34CDB152F4A04500 - ((v59 ^ 0x2C6D141CE4761819) << 58)) ^ 0xCB324EAD0B5FBB00)) ^ ((v59 ^ 0x2C6D141CE4761819) << 58) ^ ((v59 ^ 0x2C6D141CE4761819) - ((((v59 ^ 0x2C6D141CE4761819) << 58) & 0xF800000000000000 ^ (v59 ^ 0x2C6D141CE4761819) & 0xF9BFE541A2368FBELL | (v59 ^ 0x2C6D141CE4761819) & 0x6401ABE5DC97041) ^ ((v59 ^ 0x2C6D141CE4761819) << 58) & 0x400000000000000));
  v67 = v47 & 0xE09B73AB3D6C0569 ^ 0xA00341212C6C0149 ^ (v47 ^ 0xBA47C135AEEE83DBLL) & (v56 ^ 0x761506CEF1628BD4);
  v68 = (v48 ^ -v48 ^ (v67 - (v48 ^ v67))) + v67;
  v69 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v47 ^ (((v47 ^ v56 ^ 0x2CC9B45062E00D66) & v49) - ((2 * ((v47 ^ v56 ^ 0x2CC9B45062E00D66) & v49)) & 0xED97AE78CC7938CALL) + 0x76CBD73C663C9C65) ^ v68 ^ 0x10B11CEC96E32FDLL, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v70 = v69 ^ 0x93DD7BE3C3310A2CLL ^ ((v69 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v69 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v69 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v69 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v71 = (v66 + v65) ^ (v61 << 63) ^ __ROR8__((v65 >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v70, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v72 = v71 & 0xA8F512753D8F931ELL ^ (v65 >> 1) & 0x28F512753D8F931ELL | (v71 ^ (v65 >> 1)) & 0x570AED8AC2706CE1;
  v73 = v72 ^ v52 & ~v64;
  *(&v74 + 1) = v73;
  *&v74 = v73 ^ 0xD3DA1E3360BF843ALL;
  v75 = ((v74 >> 1) ^ v73 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v73 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v74 >> 1) ^ v73 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v73 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  *(&v74 + 1) = v73;
  *&v74 = v73 ^ 0xD3DA1E3360BF843ALL;
  v76 = v51 ^ 0x6E04C15915AB860ALL ^ v68 ^ __ROR8__(v51 ^ 0x6E04C15915AB860ALL ^ v68, 19) ^ ((v51 ^ 0x6E04C15915AB860ALL ^ v68) << 36) ^ ((v51 ^ 0x6E04C15915AB860ALL ^ v68) >> 28) ^ v52;
  v77 = ((v72 ^ v70) + (v72 | ~v70) + 1) ^ v76;
  v78 = v70 ^ v64 & ~v72 ^ 0x425764BB5877DA25 ^ v77;
  v79 = v78 ^ (v78 >> 61) ^ (v78 >> 39) ^ (8 * v78) ^ (v78 << 25);
  v80 = v64 ^ v52;
  v81 = v70 & ~v76 ^ v64 ^ v52;
  v82 = v81 ^ 0xFD;
  v83 = v81 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v81 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v81 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v81 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v84 = v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77 ^ __ROR8__(v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77, 19) ^ ((v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77) << 36) ^ ((v81 ^ 0x97F6A7E5F6E8F58ALL ^ v77) >> 28);
  *&v74 = __ROR8__((v74 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v79 ^ v75, 3) ^ 0x55413C453664FDCDLL, 61);
  v85 = ((v84 | v83) ^ v83 & v84) & 0x2D23D578E308995FLL | (v84 ^ v83) & 0xD2DC2A871CF766A0;
  v86 = v76 & ~v80;
  v87 = (v74 ^ 0xAA09E229B327EE6ALL) & ~v79 ^ v85;
  v88 = v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73 ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) >> 10) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) << 47) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) << 54) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v73) >> 17);
  v89 = ((v87 ^ v79) + ((v74 ^ 0x55F61DD64CD81195) & v88) - 2 * ((v87 ^ v79) & (v74 ^ 0x55F61DD64CD81195) & v88)) ^ 0x6005BE354A5BB0B2;
  v90 = v89 >> (v29 & 0x3D) >> (v29 & 0x3D ^ 0x3D);
  v91 = (8 * v89) ^ (v89 >> 39) ^ ((v89 ^ (v89 << 25)) & 0xF21553F3FD140018 ^ v90 & 0x18 | (v89 ^ (v89 << 25)) & 0xDEAAC0C02EBFFE7 ^ v90 & 0xE7);
  v92 = v79 & ~v85 ^ v88 ^ v83;
  v93 = v92 ^ 0x2DB5B6AF87F64351 ^ ((v92 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v92 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v92 ^ 0x2DB5B6AF87F64351) >> 41) | ((v92 ^ 0x2DB5B6AF87F64351) << 57));
  v94 = v92 ^ 0x93C23431B76D41FLL ^ v87;
  v95 = (v94 ^ (v94 >> 28)) + (v94 >> 19) - 2 * ((v94 ^ (v94 >> 28)) & (v94 >> 19));
  v96 = v94 << 36;
  v97 = v95 ^ (v94 << 45);
  v98 = v85 & ~(v88 ^ v83);
  v99 = v97 ^ (v94 << 36);
  v100 = v74 ^ 0xAA09E229B327EE6ALL ^ v83 & ~v88;
  v101 = v99 ^ v93;
  v102 = v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100 ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) >> 10) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) << 47) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) << 54) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v98 ^ v100) >> 17);
  v103 = v102 ^ v93;
  v104 = v91 & ~(v99 ^ v93) ^ v102 ^ v93;
  v105 = v100 ^ 0x6DC4FB0BD4FFFF44;
  *(&v74 + 1) = v100;
  *&v74 = v100 ^ 0x6DC4FB0BD4FFFF44;
  v106 = (v74 >> 1) ^ v100 ^ 0x6DC4FB0BD4FFFF44 ^ ((v100 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v91;
  v107 = v105 >> 6;
  if (v96 == v97)
  {
    v108 = v107;
  }

  else
  {
    v108 = ~(v107 ^ v106);
  }

  v109 = v106 + v107 - 2 * (v108 & v106);
  v110 = v109 ^ (((~v102 | 0xFFFFFFFFEFFFFFFFLL) - (v102 & 0x4000000000)) ^ v102 & 0xFFFFFFBFEFFFFFFFLL) & v103;
  v111 = __ROR8__(((v101 << (v95 & 0x2B) << (v95 & 0x2B ^ 0x2B)) + (v101 >> 21)) ^ __ROR8__(v109 & ~v91, 21) ^ 0x6D12C2B6EED373A6, 43);
  v112 = v102 & ~v109 ^ v91 ^ v111;
  v113 = v104 ^ 0x5035F38BF1002A3ALL ^ v111;
  v114 = v113 ^ (v113 >> 19);
  v115 = v114 & 0xD99EEE0927173347 ^ (v113 << 45) & 0xD99EE00000000000 | v114 & 0x266111F6D8E8CCB8 ^ (v113 << 45) & 0x2661000000000000;
  v116 = (((v113 << 45) ^ (0xFFFFE00000000000 * v113) ^ (v115 + v114 - 2 * v115)) + v114) ^ (v113 >> 28);
  v117 = v116 & 0x78E134634F73AA70 ^ (v113 << 36) & 0x78E1346000000000 | v116 & 0x871ECB9CB08C558FLL ^ (v113 << 36) & 0x871ECB9000000000;
  v118 = v117 - 0x21AB2F79F13344 - ((2 * v117) & 0xFFBCA9A10C1D9978);
  v145[65] = v118 ^ 0xBC;
  v119 = v112 ^ 0xE013161F571CC4C5 ^ ((v112 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v112 ^ 0xE013161F571CC4C5));
  v120 = v119 ^ (((v112 ^ 0xE013161F571CC4C5) >> 61) | (v112 << 25));
  v121 = *(v144 + ((69 * ((v118 ^ 0xFFDE54D0860ECCBCLL) >> (v116 & 8) >> (v116 & 8 ^ 8))) ^ 0x3DLL)) - 18;
  v122 = (((v121 ^ 0x57) + v121 - 2 * (v121 ^ 0x57)) ^ 0xFE) + v121;
  v145[54] = ((v119 ^ (((v112 ^ 0xE013161F571CC4C5) >> 61) | (v112 << 25))) >> 24) ^ 0x8A;
  v145[28] = BYTE2(v118) ^ 0xE;
  v145[41] = (v122 >> 2) | (v122 << 6);
  v123 = (v118 ^ 0xFFDE54D0860ECCBCLL) >> (v82 & 0x20) >> (v82 & 0x20 ^ 0x20u);
  v145[35] = BYTE1(v119);
  v124 = BYTE6(v118) ^ 0xDE;
  v145[21] = BYTE2(v119);
  v125 = v99 ^ v102;
  if (v103 == -1)
  {
    v126 = 0;
  }

  else
  {
    v126 = v125;
  }

  v145[58] = v123;
  v145[17] = BYTE4(v120) ^ 0x89;
  v145[5] = BYTE3(v118) ^ 0x86;
  v145[47] = BYTE5(v118) ^ 0x54;
  v127 = v110 - ((2 * v110) & 0x5A47EBDAAC1EB792);
  v145[14] = ~v118 >> 56;
  v128 = v127 + 0x2D23F5ED560F5BC9;
  v145[48] = v124;
  v145[16] = (v120 ^ 0x3EAE39898A000000) >> (v112 & 0x28) >> (v112 & 0x28 ^ 0x28);
  v129 = v127 - 0x5BDA183C59819C5ELL;
  v130 = 0x88FE0E29AF90F827;
  if (v128 < 0x88FE0E29AF90F827)
  {
    v129 = v128;
    v130 = 0;
  }

  if (v129)
  {
    v131 = v128;
  }

  else
  {
    v131 = v130;
  }

  *(&v132 + 1) = v131;
  *&v132 = v128;
  v133 = (v132 >> 1) ^ v128;
  v145[6] = v120;
  v134 = *(v9 + (BYTE6(v120) ^ 0xF9));
  v135 = v133 ^ (v131 << 58) ^ (v131 >> 6);
  v145[10] = BYTE1(v135);
  v136 = v102 ^ v126 & v101 ^ 0x29E1AB0124FF49E7 ^ v110;
  *&v132 = __ROR8__(v136, 10);
  v137 = (v136 ^ v132 ^ (v136 << 47)) + (v136 >> 17) - 2 * ((v136 ^ v132 ^ (v136 << 47)) & (v136 >> 17));
  v145[18] = BYTE4(v135);
  v145[25] = BYTE2(v135);
  v145[42] = HIBYTE(v120) ^ 0x3E;
  v145[12] = BYTE5(v135);
  v145[23] = BYTE6(v135);
  v145[44] = v135;
  v145[24] = BYTE3(v135);
  v145[30] = (v134 ^ 0xFA) - 119;
  v145[62] = HIBYTE(v135);
  v145[19] = (v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17));
  v138 = *(v147 + ((((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 8) ^ 0x27) + 279);
  v145[8] = ((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 24;
  v145[33] = ((v136 ^ v132) + (v136 >> 17) - 2 * ((v136 ^ v132) & (v136 >> 17))) >> 16;
  v145[4] = (v138 ^ BYTE1(v137) ^ 0x2D ^ ((BYTE1(v137) ^ 0x2D) + 72) ^ 0x41) + 15;
  v139 = v104 ^ __ROR8__(v104 ^ 0x4734313A1F2B2857, 41) ^ ((v104 ^ 0x4734313A1F2B2857) >> 7);
  v140 = *(v146 + (((v137 >> 28) & 0xF0 | (v137 >> 36) & 0xF) ^ 0x5C));
  v145[46] = HIBYTE(v137);
  v145[43] = BYTE6(v137);
  v145[38] = BYTE5(v137);
  v145[31] = ((v140 >> 5) | (8 * v140)) ^ 0xC1;
  result = 58;
  LOBYTE(v137) = *(v9 + ((((((4 * v139) | (v139 >> 6)) ^ 0xA) >> 2) | ((((4 * v139) | (v139 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  v145[55] = BYTE4(v139) ^ 0x3A;
  v145[34] = BYTE3(v139) ^ 0x1F;
  v145[32] = BYTE1(v139) ^ 0x28;
  v145[15] = (v137 ^ 0xFA) - 119;
  v142 = v139 ^ ((v104 ^ 0x4734313A1F2B2857) << 57);
  v145[7] = (v142 ^ 0x4734313A1F2B2857uLL) >> (v34 & 0x10) >> (v34 & 0x10 ^ 0x10);
  v145[61] = BYTE5(v139) ^ 0x31;
  v145[56] = (*(v9 + (BYTE6(v139) ^ 0x63)) ^ 0xFA) - 119;
  v145[51] = HIBYTE(v142) ^ 0x47;
  *v143 = v148 + 1;
  return result;
}

uint64_t sub_EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v24 = v19 ^ 0x720;
  *(v23 - 120) = v24 - (((v20 | (v23 - 128)) - ((v23 - 128) & v20)) ^ 0x5C24A40F) * v21 + 235;
  *(v23 - 128) = v17;
  *(v23 - 112) = &a17;
  v25 = (*(v18 + 8 * (v24 + 1179)))(v23 - 128);
  return (*(v18 + 8 * (((((v24 + 49) ^ (*(v23 - 104) > v22)) & 1) * (((v24 - 698397283) & 0x29A0AEDB) + 28)) ^ v24)))(v25);
}

uint64_t sub_EF44@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W5>, char a5@<W6>, uint64_t a6@<X8>)
{
  v12 = (a6 + 16);
  v13 = v8 + 1 - ((v7 + 2) & a4);
  v11[12] = ((v9 - 40) ^ a1 ^ HIBYTE(v13)) - 2 * (((v9 - 40) ^ a1 ^ HIBYTE(v13)) & a5 ^ HIBYTE(v13) & 4) + 50;
  v11[13] = (BYTE2(v13) ^ 0x31) - (a3 & (2 * (BYTE2(v13) ^ 0x31))) + 50;
  v11[14] = (BYTE1(v13) ^ 0x1E) - (a3 & (2 * (BYTE1(v13) ^ 0x1E))) + 50;
  v11[15] = v13 ^ 0x26;
  *(v12 - 15) ^= *v11 ^ a2;
  *(v12 - 14) ^= v11[1] ^ a2;
  *(v12 - 13) ^= v11[2] ^ a2;
  *(v12 - 12) ^= v11[3] ^ a2;
  *(v12 - 11) ^= v11[4] ^ a2;
  *(v12 - 10) ^= v11[5] ^ a2;
  *(v12 - 9) ^= v11[6] ^ a2;
  *(v12 - 8) ^= v11[7] ^ a2;
  *(v12 - 7) ^= v11[8] ^ a2;
  *(v12 - 6) ^= v11[9] ^ a2;
  *(v12 - 5) ^= v11[10] ^ a2;
  *(v12 - 4) ^= v11[11] ^ a2;
  *(v12 - 3) ^= v11[12] ^ a2;
  *(v12 - 2) ^= v11[13] ^ a2;
  *(v12 - 1) ^= v11[14] ^ a2;
  *v12 ^= v11[15] ^ a2;
  return (*(v10 + 8 * ((((v6 + 16) > 0x13F) | (2 * ((v6 + 16) > 0x13F))) ^ (v9 - 307))))();
}

uint64_t sub_EFA0@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 + 1067) ^ 0xFFFFFFFFFFFFF830) + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v4 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((796 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v2 + 468))))(-2000);
}

uint64_t sub_EFFC()
{
  v5 = 1388665877 * ((0xE90268FA5CBD5689 - ((v4 - 216) | 0xE90268FA5CBD5689) + STACK[0x328]) ^ 0x2387074A2EEFCB9ALL);
  *(v4 - 208) = (v3 + 1) - v5;
  *(v4 - 188) = (v2 - 542397458) ^ v5;
  v6 = STACK[0x334];
  v7 = v5 - (((v1 | ~(v2 - 309)) & (v2 - 309 - v1) | v1 & ~(v2 - 309)) >= 0) + 2 * LODWORD(STACK[0x334]) + 973282764;
  *(v4 - 184) = v5 ^ 3;
  v8 = LODWORD(STACK[0x330]) ^ v5;
  *(v4 - 216) = v6 ^ v5;
  *(v4 - 212) = v7;
  *(v4 - 200) = v8;
  *(v4 - 196) = v5 + 1;
  v9 = (*(v0 + 8 * SLODWORD(STACK[0x324])))(v4 - 216);
  return (*(v0 + 8 * *(v4 - 192)))(v9);
}

uint64_t sub_F0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v29 - 144) = &a18;
  *(v29 - 136) = &a18;
  *(v29 - 112) = &a26;
  *(v29 - 104) = a11;
  *(v29 - 120) = a12;
  *(v29 - 128) = v27 - ((v29 - 1435881714 - 2 * ((v29 - 144) & 0xAA6A2F9E)) ^ 0x54DAD86) * v28 + 118;
  (*(v26 + 8 * (v27 + 1279)))(v29 - 144);
  return sub_284B0();
}

uint64_t sub_F1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v21 = STACK[0x3B0];
  STACK[0x580] -= 32;
  *(v21 + 335) = *(a14 + 335) ^ 0xE1 ^ *(*(&off_9DA90 + (a20 ^ 0x4D7)) + 15) ^ *(*(&off_9DA90 + (a20 ^ 0x44C)) + (((a20 - 681) | 0x140u) ^ 0x362) + 11) ^ *(*(&off_9DA90 + (a20 ^ 0x4B3)) + 6) ^ 0x32;
  return (*(v20 + 8 * a20))();
}

uint64_t sub_F6F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v4 + 56);
  *(v4 + 56) = v5 + ((v3 - 345246885) & 0x5FBF7BD7) - 1261138646;
  return (*(v2 + 8 * ((663 * ((v5 - 1470670869) < 0xFFFFFFFA)) ^ (v3 - 801))))(a1, a2, 0);
}

uint64_t sub_FBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = v9 ^ 1;
  if (a8 != ((v8 - 1955) | 0x226) - 703)
  {
    v11 = 1;
  }

  return (*(v10 + 8 * (v11 | v8)))();
}

uint64_t sub_FBE0(uint64_t a1)
{
  v6 = v2 + (v1 + 709) - 1642;
  *(a1 + v6) = *(v4 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v3) ^ (v1 + 428))))();
}

uint64_t sub_FD6C@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 50;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_FDA0(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_FDBC@<X0>(int a1@<W8>)
{
  v7 = STACK[0x524];
  v8 = STACK[0x3A0];
  v9 = STACK[0x53C];
  v10 = &v6[6 * v3];
  v10[2] = v5;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v6 = v2 + 1;
  LODWORD(STACK[0x348]) = v1;
  v11 = a1 + 209 + ((a1 + 794) ^ 0x8C073DED) + v1;
  v13 = v11 < 531406499 && v11 >= SLODWORD(STACK[0x2D0]);
  return (*(v4 + 8 * ((26 * v13) ^ a1)))();
}

uint64_t sub_FE34(int8x16_t a1, int8x16_t a2)
{
  v8 = (v3 - 32);
  v9 = (v4 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v8 = v10;
  return (*(v7 + 8 * (((v2 == 32) * v6) | v5)))();
}

uint64_t sub_FEC4@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v7 = *(v6 - 220 + a2 + 72);
  v8 = ((2 * a2) & 0xABBFDBF0) + (a2 ^ 0xD5DFEDF9) + v2;
  *(a1 + v8) = (((v3 + 124) | 0x80) - 52) ^ v7;
  *(a1 + v8 + 1) = (BYTE1(v7) ^ 0x51) + ~(2 * ((BYTE1(v7) ^ 0x51) & 0x3A ^ BYTE1(v7) & 8)) + 51;
  *(a1 + v8 + 2) = (BYTE2(v7) ^ 0x65) - ((2 * (BYTE2(v7) ^ 0x65)) & 0x64) + 50;
  *(a1 + v8 + 3) = (HIBYTE(v7) ^ 0x56) - 2 * ((HIBYTE(v7) ^ 0x56) & 0x33 ^ HIBYTE(v7) & 1) + 50;
  return (*(v5 + 8 * (((a2 + 4 < *(v6 - 128)) * v4) ^ v3)))();
}

uint64_t sub_1000C@<X0>(int a1@<W3>, int a2@<W4>, unsigned int a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v24 = (a15 + 24 * v19);
  *v24 = v22;
  v24[1] = a2;
  *&v20[6 * v19 + 4] = v23;
  v24[4] = a17;
  *v20 = a4 + 1;
  return (*(v21 + 8 * ((1209 * (v17 + a1 < (((v18 ^ 0x176) + 862) ^ a3))) ^ v18)))();
}

uint64_t sub_100E4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v39 = *(&a24 + a2 + 72);
  v40 = ((2 * a2) & 0xB7AFEFF8) + (a2 ^ 0x5BD7F7FF) + v36;
  *(a1 + v40) = ((v39 >> ((v37 + 104) ^ 0x3E)) ^ 0x56) - ((2 * ((v39 >> ((v37 + 104) ^ 0x3E)) ^ 0x56)) & 0x64) + 50;
  *(a1 + v40 + 1) = (BYTE2(v39) ^ 0x65) - ((2 * (BYTE2(v39) ^ 0x65)) & 0x64) + 50;
  *(a1 + v40 + 2) = (BYTE1(v39) ^ 0x51) - ((2 * (BYTE1(v39) ^ 0x51)) & 0x64) + 50;
  *(a1 + v40 + 3) = v39 ^ 0x4E;
  return (*(v38 + 8 * ((117 * (a2 + 4 < a36)) ^ v37)))();
}

uint64_t sub_10254@<X0>(int a1@<W8>)
{
  v5 = ((&v7 & 0x52E069D0 | ~(&v7 | 0x52E069D0)) ^ 0xBEC37A0F) * a1;
  v8 = 0;
  v9 = v3;
  v7 = 1332270173 - v5;
  v10 = 2017451246 - v5;
  v11 = v1 + 1468 - v5 - 1782;
  result = (*(v4 + 8 * ((v1 + 1468) ^ 0xAE)))(&v7);
  *(v2 + 16) = *(v3 + 24);
  return result;
}

uint64_t sub_102D4@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v3 + 36 + a2 - 931;
  *(v8 + v2) = *(STACK[0x4C8] + a2);
  v10 = a1 + a2 + 897 < v4;
  if (v4 < v5 != v9 > v7)
  {
    v10 = v4 < v5;
  }

  return (*(v6 + 8 * ((!v10 | (4 * !v10)) ^ v3)))();
}

uint64_t sub_10380@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q1>, int8x16_t a4@<Q4>, uint64_t a5@<D5>, int8x16_t a6@<Q6>)
{
  v17 = v14 - 16;
  v18 = (v17 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a3 - 1), a4).u64[0];
  v20.i64[1] = a5;
  v21 = vrev64q_s8(vmulq_s8(v20, a6));
  *(v15 + v17) = veorq_s8(veorq_s8(veorq_s8(*(v11 + v18 - 15), *(a2 + v17)), veorq_s8(*(v9 + v18 - 15), *(v10 + v18 - 15))), vextq_s8(v21, v21, 8uLL));
  return (*(v16 + 8 * (((a1 == 16) * (v13 + 1901)) ^ v12)))();
}

uint64_t sub_103C4@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  v19 = a1 < v15;
  *(&a12 + v12) = *(v18 + v13) - ((2 * *(v18 + v13)) & 0x64) + 50;
  if (v19 == v13 + 1 > v14)
  {
    v19 = (((v17 - 561) | 0x28) ^ (v15 - 44)) + v13 < a1;
  }

  return (*(v16 + 8 * ((116 * !v19) ^ v17)))();
}

uint64_t sub_10494@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = (&STACK[0x5E0] + STACK[0x260] + (a1 ^ 0xFFFFFFFFFFFFFF7ALL));
  STACK[0x440] = v4;
  *v6 = 0xCDCDCDCDCDCDCDCDLL;
  v6[1] = 0x3232323234323220;
  v7 = 2066391179 * ((1995074501 - ((v5 - 216) | 0x76EA6BC5) + ((v5 - 216) | 0x8915943A)) ^ 0x26321622);
  *(v5 - 216) = (v2 + 68669857) ^ v7;
  *(v5 - 212) = 1525008249 - v7;
  (*(v3 + 8 * (v2 ^ 0xD1)))(v5 - 216);
  LODWORD(STACK[0x528]) = 1657355484;
  v8 = (*(v3 + 8 * (v2 + 91)))(336, 0x100004077774924);
  STACK[0x410] = v8;
  return (*(v3 + 8 * ((v8 == 0) ^ v2)))(v8, v9, v10, v11, v12, v13, v14, v15, a2);
}

uint64_t sub_1060C()
{
  v6 = v2 - 1;
  *(v5 + v6) = (v1 ^ 0x26) + *(v0 + v6) - (v3 & (2 * *(v0 + v6)));
  return (*(v4 + 8 * ((v6 == 0) | (8 * (v6 == 0)) | v1)))();
}

void sub_10688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v12 = ((v10 ^ 0x3F34D2FB) - 1109938949) ^ v10 ^ ((v10 ^ 0xDAF97A1C) + 1478099998) ^ ((v10 ^ 0xF77FEBFF) + 1973196287) ^ ((v10 ^ 0x6FAECAA9 ^ v11) - 313672472);
  *a9 = (HIBYTE(v12) ^ 0x7D) - ((2 * (HIBYTE(v12) ^ 0x7D)) & 0x64) + 50;
  a9[1] = (BYTE2(v12) ^ 0x1C) - ((2 * (BYTE2(v12) ^ 0x1C)) & 0x64) + 50;
  a9[2] = (((((v10 ^ 0xD2FB) - 21253) ^ v10 ^ ((v10 ^ 0x7A1C) + 1054) ^ ((v10 ^ 0xEBFF) - 27137) ^ ((v10 ^ 0xCAA9 ^ v11) - 17176)) >> 8) ^ 0x81) - ((v12 >> 7) & 0x64) + 50;
  a9[3] = ((v10 ^ 0xFB) - 5) ^ v10 ^ ((v10 ^ 0x1C) + 30) ^ (-v10 - 2) ^ ((v10 ^ 0xA9 ^ v11) - 24) ^ 0xCC;
  v13 = v9 - ((2 * v9) & 0xEC48959136FDE122) + 0x76244AC89B7EF091;
  a9[4] = (HIBYTE(v13) ^ 0x76) - 2 * ((HIBYTE(v13) ^ 0x76) & 0x33 ^ HIBYTE(v13) & 1) + 50;
  a9[5] = (BYTE6(v13) ^ 0x24) - ((2 * (BYTE6(v13) ^ 0x24)) & 0x64) + 50;
  a9[6] = (BYTE5(v13) ^ 0x4A) - ((2 * (BYTE5(v13) ^ 0x4A)) & 0x64) + 50;
  a9[7] = (BYTE4(v13) ^ 0xC8) - ((2 * BYTE4(v13)) & 0x64) + 50;
  a9[8] = (((v9 - ((2 * v9) & 0x36FDE122) - 1686179695) >> 24) ^ 0x9B) + (~(2 * (((v9 - ((2 * v9) & 0x36FDE122) - 1686179695) >> 24) ^ 0x9B)) | 0x9B) + 51;
  a9[9] = (BYTE2(v13) ^ 0x7E) - 2 * ((BYTE2(v13) ^ 0x7E) & 0x33 ^ BYTE2(v13) & 1) + 50;
  a9[10] = (BYTE1(v13) ^ 0xF0) - 2 * ((BYTE1(v13) ^ 0xF0) & 0x3A ^ BYTE1(v13) & 8) + 50;
  a9[11] = (v9 - ((2 * v9) & 0x22) - 111) ^ 0xA3;
  JUMPOUT(0x102CCLL);
}

uint64_t sub_108A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 - 1908470786) & 0x71C0F3EF ^ 0xFFFFFFFFFFFFFD10) + v2;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((19 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))();
}

uint64_t sub_1090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v26 - 120) = v23;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v25;
  *(v26 - 128) = v20 - ((2 * ((v26 - 144) & 0x6A16D4D8) - (v26 - 144) + 367602467) ^ 0xBACEA93B) * v24 + 343;
  *(v26 - 144) = v22;
  *(v26 - 136) = v22;
  (*(v21 + 8 * (v20 + 1504)))(v26 - 144);
  return sub_284B0();
}

uint64_t sub_10968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a13;
  a17 = 2066391179 * (((&a15 | 0x9AD2B40) - (&a15 & 0x9AD2B40)) ^ 0xA68AA958) + 668;
  v20 = (*(v19 + 18424))(&a15);
  return (*(v19 + 8 * (((4 * (a15 == v18)) | (16 * (a15 == v18))) ^ v17)))(v20);
}

void sub_10AAC(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = 843532609 * ((((2 * &a3) | 0x49415EF8) - &a3 - 614510460) ^ 0x78EDFBF9);
  a5 = a1;
  a3 = (-467380673 - v6 - ((843044 - (v6 << ((-96 * (v7 ^ 0x5A)) ^ 0xE1))) & 0xBCF5A)) ^ v8;
  a4 = v8 + v7 - 464;
  (*(v5 + 8 * (v7 ^ 0xB20u)))(&a3);
  sub_385C4();
}

uint64_t sub_10CE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t (*a15)(uint64_t, uint64_t, void))
{
  v18 = (((v15 ^ 0xD408C36) - 222334006) ^ ((v15 ^ 0x78F287E) - 126822526) ^ ((v15 ^ 0x5CAAF534) - 1554707764)) + (((*(v17 - 148) ^ 0xE4B2D8A) - 239807882) ^ ((*(v17 - 148) ^ 0xF2AAB43C) + 223693764) ^ ((*(v17 - 148) ^ 0xAA84C8CA) + 1434138422)) - 932548192;
  v19 = (v18 ^ 0xE76C2058) & (2 * (v18 & 0xE4603158)) ^ v18 & 0xE4603158;
  v20 = ((2 * (v18 ^ 0x2FEC0248)) ^ 0x97186620) & (v18 ^ 0x2FEC0248) ^ (2 * (v18 ^ 0x2FEC0248)) & 0xCB8C3310;
  v21 = v20 ^ 0x48841110;
  v22 = (v20 ^ 0x83000200) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x2E30CC40) & v21 ^ (4 * v21) & 0xCB8C3310;
  v24 = (v23 ^ 0xA000000) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC18C3310)) ^ 0xB8C33100) & (v23 ^ 0xC18C3310) ^ (16 * (v23 ^ 0xC18C3310)) & 0xCB8C3310;
  v26 = v24 ^ 0xCB8C3310 ^ (v25 ^ 0x88803100) & (v24 << 8);
  v27 = (((v16 ^ 0x762F9D25) - 1982831909) ^ ((v16 ^ 0xDEC31583) + 557640317) ^ ((v16 ^ 0xFE89D9DA) + 24520230)) + (((*(v17 - 144) ^ 0xCE6B0AE2) + 831845662) ^ ((*(v17 - 144) ^ 0x6FCB324A) - 1875587658) ^ ((*(v17 - 144) ^ 0xF7C569D4) + 138057260)) - 1379710549;
  *(v17 - 148) = v18 ^ (2 * ((v26 << 16) & 0x4B8C0000 ^ v26 ^ ((v26 << 16) ^ 0x33100000) & (((v25 ^ 0x430C0210) << 8) & 0x4B8C0000 ^ 0x438C0000 ^ (((v25 ^ 0x430C0210) << 8) ^ 0xC330000) & (v25 ^ 0x430C0210)))) ^ 0x231D0604;
  *(v17 - 144) = v27 ^ ((v27 ^ 0x20BFC9CC) - 541552511) ^ ((v27 ^ 0xCDBABD4F) + 851305476) ^ ((v27 ^ 0x182A6DCF) - 416467836) ^ ((v27 ^ 0xF5D7BFFF) + 181462708) ^ 0x569DF7CF;
  v28 = (((a7 ^ 0x8EF9CB81) + 1896232063) ^ ((a7 ^ 0xD80DC9B3) + 670185037) ^ ((a7 ^ 0x91534E) - 9524046)) + (((*(v17 - 140) ^ 0x92CA633E) + 1832230082) ^ ((*(v17 - 140) ^ 0xC00079BE) + 1073710658) ^ ((*(v17 - 140) ^ 0x4AF4BFC) - 78597116)) + 395597097;
  v29 = (v28 ^ 0xD1344DCF) & (2 * (v28 & 0x95364DCF)) ^ v28 & 0x95364DCF;
  v30 = ((2 * (v28 ^ 0xD15C5E49)) ^ 0x88D4270C) & (v28 ^ 0xD15C5E49) ^ (2 * (v28 ^ 0xD15C5E49)) & 0x446A1386;
  v31 = v30 ^ 0x442A1082;
  v32 = (v30 ^ 0x400304) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x11A84E18) & v31 ^ (4 * v31) & 0x446A1384;
  v34 = (v33 ^ 0x280200) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x44421186)) ^ 0x46A13860) & (v33 ^ 0x44421186) ^ (16 * (v33 ^ 0x44421186)) & 0x446A1380;
  v36 = v34 ^ 0x446A1386 ^ (v35 ^ 0x44201000) & (v34 << 8);
  v37 = (v36 << 16) & 0x446A0000 ^ v36 ^ ((v36 << 16) ^ 0x13860000) & (((v35 ^ 0x4A0386) << 8) & 0x446A0000 ^ 0x4680000 ^ (((v35 ^ 0x4A0386) << 8) ^ 0x6A130000) & (v35 ^ 0x4A0386));
  v38 = (((a4 ^ 0xC85EA396) + 933321834) ^ ((a4 ^ 0x64798A4C) - 1685686860) ^ ((a4 ^ 0xFA4278A6) + 96307034)) + (((*(v17 - 136) ^ 0xCC7B0383) + 864353405) ^ ((*(v17 - 136) ^ 0x3A548E47) - 978619975) ^ ((*(v17 - 136) ^ 0xA04ADCB8) + 1605706568)) - 1342435896;
  v39 = (v38 ^ 0xF8EE15B5) & (2 * (v38 & 0xFCCE9530)) ^ v38 & 0xFCCE9530;
  v40 = ((2 * (v38 ^ 0x41EE1FB5)) ^ 0x7A41150A) & (v38 ^ 0x41EE1FB5) ^ (2 * (v38 ^ 0x41EE1FB5)) & 0xBD208A84;
  v41 = v40 ^ 0x85208A85;
  v42 = (v40 ^ 0x30000000) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0xF4822A14) & v41 ^ (4 * v41) & 0xBD208A84;
  v44 = (v43 ^ 0xB4000A00) & (16 * v42) ^ v42;
  v45 = ((16 * (v43 ^ 0x9208081)) ^ 0xD208A850) & (v43 ^ 0x9208081) ^ (16 * (v43 ^ 0x9208081)) & 0xBD208A80;
  v46 = v44 ^ 0xBD208A85 ^ (v45 ^ 0x90008800) & (v44 << 8);
  *(v17 - 140) = v28 ^ (2 * v37) ^ 0x4B833BBF;
  *(v17 - 136) = v38 ^ (2 * ((v46 << 16) & 0x3D200000 ^ v46 ^ ((v46 << 16) ^ 0xA850000) & (((v45 ^ 0x2D200285) << 8) & 0x3D200000 ^ 0x1D200000 ^ (((v45 ^ 0x2D200285) << 8) ^ 0x208A0000) & (v45 ^ 0x2D200285)))) ^ 0xC0EAD146;
  return a15(v17 - 220, a2, a14);
}

uint64_t sub_10DA4(uint64_t a1)
{
  v2 = 742307843 * ((2 * (a1 & 0x686566B6) - a1 - 1751475895) ^ 0x89B8141C);
  v3 = *(a1 + 8) + v2;
  v4 = *(a1 + 32) ^ v2;
  v5 = *a1 - v2;
  v6 = *(a1 + 24);
  v7 = 1365817397 * v4 + 1547213640;
  v8 = (v7 ^ 0x2DE62529) & (2 * (v7 & 0xAD84B52C)) ^ v7 & 0xAD84B52C;
  v9 = ((2 * (v7 ^ 0x27E70539)) ^ 0x14C7602A) & (v7 ^ 0x27E70539) ^ (2 * (v7 ^ 0x27E70539)) & 0x8A63B014;
  v10 = v9 ^ 0x8A209015;
  v11 = (v9 ^ 0x32000) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x298EC054) & v10 ^ (4 * v10) & 0x8A63B014;
  v13 = (v12 ^ 0x8028000) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x82613001)) ^ 0xA63B0150) & (v12 ^ 0x82613001) ^ (16 * (v12 ^ 0x82613001)) & 0x8A63B010;
  v15 = v13 ^ 0x8A63B015 ^ (v14 ^ 0x82230000) & (v13 << 8);
  v16 = v7 ^ (2 * ((v15 << 16) & 0xA630000 ^ v15 ^ ((v15 << 16) ^ 0x30150000) & (((v14 ^ 0x840B005) << 8) & 0xA630000 ^ 0x8430000 ^ (((v14 ^ 0x840B005) << 8) ^ 0x63B00000) & (v14 ^ 0x840B005)))) ^ 0xEDBAB1A8;
  v17 = 1564307779 * (((&v19 ^ 0x823EB004) & 0x1692BE1F | ~(&v19 ^ 0x823EB004 | 0x1692BE1F)) ^ 0xFC5E3DF7);
  v20 = *(a1 + 16);
  v19 = v16 + v17;
  v23 = v6;
  v21 = (((v5 ^ 0x4600779F) - 1174435743) ^ ((v5 ^ 0x37AA255A) - 933897562) ^ ((v5 ^ 0xB2AF49B7) + 1297135177)) + v17 - 88065600;
  v22 = v3 - v17 + 1197043342;
  result = (*(*(&off_9DA90 + (v3 ^ 0xB8A69551)) + (v3 ^ 0xB8A69DFC) - 1))(&v19);
  *(a1 + 4) = v24;
  return result;
}

void sub_110A4(uint64_t a1)
{
  v1 = *(a1 + 32) - 1082434553 * (a1 ^ 0x9B47F68A);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_111D4@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - ((2 * *(v1 + v5)) & 0x64) + 50;
  return (*(v4 + 8 * ((3859 * (v5 == ((v2 - 1262890870) & 0x4B462A2D) - 525)) ^ v2)))();
}

uint64_t sub_11280(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (((v3 ^ 0x1DF45B96) - 502553494) ^ ((v3 ^ 0x16E588CB) - 384141515) ^ ((v3 ^ 0x5D748221) - 1567916605 + ((a3 + 1844898631) & 0x92090F3F))) + (((v4 ^ 0x25CCEED8) - 634187480) ^ ((v4 ^ 0x81568F02) + 2125033726) ^ ((v4 ^ 0xF2FF30A6) + 218156890));
  LODWORD(STACK[0x2A0]) = (1396006152 - v5) ^ (v5 - 24590127) ^ (((v5 - 24590127) ^ 0x942F7728) + 980331791) ^ (((v5 - 24590127) ^ 0x2060318B) - 1910379602) ^ (((v5 - 24590127) ^ 0x1A0E9C85) - 1269872988) ^ 0x7DB74A5;
  return sub_113D4();
}

uint64_t sub_113D4@<X0>(int a1@<W0>, int a2@<W7>, uint64_t (*a3)(void)@<X8>)
{
  v8 = (((v5 ^ 0x55601DD4) - 1432362452) ^ ((v5 ^ 0x35DB3517) - 903558423) ^ ((v5 ^ 0x36DE79BF) - 920549823)) + (((a1 ^ 0xC4B40806) + 994834426) ^ ((a1 ^ 0x796A6CB) - 127313611) ^ ((a1 ^ 0x9547FFB1) + 1790443599)) + 735391447;
  v9 = (v8 ^ 0x40F57099) & (2 * (v8 & 0x80F57421)) ^ v8 & 0x80F57421;
  v10 = ((2 * (v8 ^ 0x40BF389B)) ^ 0x80949974) & (v8 ^ 0x40BF389B) ^ (2 * (v8 ^ 0x40BF389B)) & 0xC04A4CBA;
  v11 = v10 ^ 0x404A448A;
  v12 = v10 & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x12932E8) & v11 ^ (4 * v11) & 0xC04A4CB8;
  v14 = (v13 ^ 0x800A0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0xC0424C12)) ^ 0x4A4CBA0) & (v13 ^ 0xC0424C12) ^ (16 * (v13 ^ 0xC0424C12)) & 0xC04A4CB0;
  v16 = v14 ^ 0xC04A4CBA ^ (v15 ^ 0x4800) & (v14 << 8);
  v17 = v8 ^ (2 * ((v16 << 16) & 0x404A0000 ^ v16 ^ ((v16 << 16) ^ 0x4CBA0000) & (((v15 ^ 0xC04A041A) << 8) & 0xC04A0000 ^ (((v15 ^ 0xC04A041A) << 8) ^ 0x4A4C0000) & (v15 ^ 0xC04A041A) ^ 0x20000))) ^ 0xD610BC29;
  v18 = (((v7 ^ 0x99A47EEC) + 1717272852) ^ ((v7 ^ 0x58BAE192) - 1488642450) ^ ((v7 ^ 0x977BCE02) + 1753494014)) + (((v6 ^ 0x8CD9855D) + 1931901603) ^ ((v6 ^ 0xEAE18A7) - 246290599) ^ ((v6 ^ 0xD412CC86) + 736965498)) - 832254577;
  v19 = (v18 ^ 0xDF659165) & (2 * (v18 & 0xDE65D569)) ^ v18 & 0xDE65D569;
  v20 = ((2 * (v18 ^ 0xD7E699F5)) ^ 0x13069938) & (v18 ^ 0xD7E699F5) ^ (2 * (v18 ^ 0xD7E699F5)) & 0x9834C9C;
  v21 = v20 ^ 0x8814484;
  v22 = (v20 ^ 0x1020808) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x260D3270) & v21 ^ (4 * v21) & 0x9834C9C;
  v24 = (v23 ^ 0x10010) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x9824C8C)) ^ 0x9834C9C0) & (v23 ^ 0x9824C8C) ^ (16 * (v23 ^ 0x9824C8C)) & 0x9834C90;
  v26 = v24 ^ 0x9834C9C ^ (v25 ^ 0x8004800) & (v24 << 8);
  LODWORD(STACK[0x290]) = v17;
  LODWORD(STACK[0x294]) = v18 ^ (2 * ((v26 << 16) & 0x9830000 ^ v26 ^ ((v26 << 16) ^ 0x4C9C0000) & (((v25 ^ 0x183041C) << 8) & 0x9830000 ^ 0x8830000 ^ (((v25 ^ 0x183041C) << 8) ^ 0x34C0000) & (v25 ^ 0x183041C)))) ^ 0x8A061D2D;
  v27 = (((v4 ^ 0x93C0EE49) + 1816072631) ^ ((v4 ^ 0x3DB51B45) - 1035279173) ^ ((v4 ^ 0xF810A470) + 133127056)) + (((LODWORD(STACK[0x298]) ^ 0xACCD1FF) - 181195263) ^ ((LODWORD(STACK[0x298]) ^ 0x9C012D58) + 1677644456) ^ ((LODWORD(STACK[0x298]) ^ 0xC0A8ADDB) + 1062687269)) + 442704197;
  v28 = (v27 ^ 0x405729B3) & (2 * (v27 & 0x926781B3)) ^ v27 & 0x926781B3;
  v29 = ((2 * (v27 ^ 0x60DC2BF3)) ^ 0xE5775480) & (v27 ^ 0x60DC2BF3) ^ (2 * (v27 ^ 0x60DC2BF3)) & a2;
  v30 = v29 ^ 0x1288AA40;
  v31 = (v29 ^ 0xC0320000) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0xCAEEA900) & v30 ^ (4 * v30) & a2;
  v33 = v31 ^ a2 ^ (v32 ^ 0xC2AAA800) & (16 * v31);
  v34 = (16 * (v32 ^ 0x30110240)) & a2 ^ 0xD0010A40 ^ ((16 * (v32 ^ 0x30110240)) ^ 0x2BBAA400) & (v32 ^ 0x30110240);
  v35 = (v33 << 8) & (a2 - 64) ^ v33 ^ ((v33 << 8) ^ 0xBBAA4000) & v34;
  v36 = v27 ^ (2 * ((v35 << 16) & 0x72BB0000 ^ v35 ^ ((v35 << 16) ^ 0x2A400000) & ((v34 << 8) & 0x72BB0000 ^ 0x40110000 ^ ((v34 << 8) ^ 0xBBAA0000) & v34))) ^ 0x21844F;
  v37 = (((v3 ^ 0xEC2572C6) + 333090106) ^ ((v3 ^ 0x81C580AB) + 2117762901) ^ ((v3 ^ 0x3B85A311) - 998613777)) + (((LODWORD(STACK[0x29C]) ^ 0x2F737A79) - 796097145) ^ ((LODWORD(STACK[0x29C]) ^ 0x3BA50878) - 1000671352) ^ ((LODWORD(STACK[0x29C]) ^ 0x42B3237D) - 1119036285)) + 742876381;
  v38 = (v37 ^ 0xA8A2BF92) & (2 * (v37 & 0x80833E1B)) ^ v37 & 0x80833E1B;
  v39 = ((2 * (v37 ^ 0xA8A48F92)) ^ 0x504F6312) & (v37 ^ 0xA8A48F92) ^ (2 * (v37 ^ 0xA8A48F92)) & 0x2827B188;
  v40 = v39 ^ 0x28209089;
  v41 = (v39 ^ 0x52000) & (4 * v38) ^ v38;
  v42 = ((4 * v40) ^ 0xA09EC624) & v40 ^ (4 * v40) & 0x2827B188;
  v43 = (v42 ^ 0x20068000) & (16 * v41) ^ v41;
  v44 = ((16 * (v42 ^ 0x8213189)) ^ 0x827B1890) & (v42 ^ 0x8213189) ^ (16 * (v42 ^ 0x8213189)) & 0x2827B180;
  v45 = v43 ^ 0x2827B189 ^ (v44 ^ 0x231000) & (v43 << 8);
  LODWORD(STACK[0x298]) = v36;
  LODWORD(STACK[0x29C]) = v37 ^ (2 * ((v45 << 16) & 0x28270000 ^ v45 ^ ((v45 << 16) ^ 0x31890000) & (((v44 ^ 0x2804A109) << 8) & 0x28270000 ^ 0x8060000 ^ (((v44 ^ 0x2804A109) << 8) ^ 0x27B10000) & (v44 ^ 0x2804A109)))) ^ 0xC6AB0C75;
  return a3();
}

uint64_t sub_11BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, char a43)
{
  if (a43 == 2)
  {
    return (*(v43 + 8 * (((a42 != 0) * ((863 * (a8 ^ 0x24)) ^ 0x6CB)) ^ (a8 + 1688))))(a23);
  }

  if (a43 != 1)
  {
    JUMPOUT(0x11C8CLL);
  }

  return (*(v43 + 8 * ((977 * (a42 != a8 - 38)) ^ (a8 + 469))))(a23);
}

uint64_t sub_11CD8@<X0>(int a1@<W8>, uint64_t a2, char a3, __int16 a4, __int16 a5, char a6, char a7, uint64_t a8, char *a9, char *a10, char a11, uint64_t *a12, int a13, unsigned int a14, int a15)
{
  v18 = 843532609 * ((~&a8 & 0x74270446 | &a8 & 0x8BD8FBB9) ^ 0x286A50C3);
  a8 = *(v15 + 32);
  a9 = &a7;
  a12 = &a2;
  a10 = &a3;
  a13 = (v17 + 1986157456) ^ v18;
  a14 = ((((a1 ^ 0x7D6AB68C) - 2104145548) ^ ((a1 ^ 0x5B43E0EC) - 1531175148) ^ ((a1 ^ 0x81A59A5C) + v17 - 167 + 2119852823)) + 114677510) ^ v18;
  a11 = 65 * ((~&a8 & 0x46 | &a8 & 0xB9) ^ 0xC3) + 60;
  v19 = (*(v16 + 8 * (v17 + 1499)))(&a8);
  return (*(v16 + 8 * ((1077 * (a15 == -1261164275)) ^ v17)))(v19);
}

uint64_t sub_12070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = v20 + 2066391179 * (((&a17 | 0xD88E90BB) - &a17 + (&a17 & 0x27716F40)) ^ 0x77A912A3) + 478;
  a18 = &a12;
  v21 = (*(v19 + 8 * (v20 + 2113)))(&a17);
  return (*(v19 + 8 * (((a17 == ((v20 + 1664859825) & 0x9CC441F5 ^ 0xB4D42868)) * (((v20 + 21927898) | 0x40A12204) - 1106228182)) ^ v20)))(v21);
}

uint64_t sub_121A8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v25 = 742307843 * ((((v24 - 128) | 0xE932CD9F) - (v24 - 128) + ((v24 - 128) & 0x16CD3260)) ^ 0xF71040CA);
  *(v24 - 120) = &a12;
  *(v24 - 128) = v21 - v25 - 473374142;
  *(v24 - 108) = v21 + 1443 - v25 + a1 - (((v21 + 88) ^ 0x47C665E2) & (2 * a1)) + 602090569;
  v26 = (*(v22 + 8 * (v21 ^ 0x903)))(v24 - 128);
  return (*(v22 + 8 * ((938 * (*v23 - 1368544343 + (a21 & 0x3Fu) < 0xFFFFFFC0)) ^ v21)))(v26);
}

uint64_t sub_122EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v19 = (a9 - 671758740) | 0x117;
  v20 = a9 - 671758251;
  v21 = a9 - 671757072;
  v22 = v18 + 1968681738 < (a17 + 624893072);
  if (v18 + 1968681738 < (v20 ^ (a8 + 198) ^ v19) != a17 + 624893072 < a8)
  {
    v22 = a17 + 624893072 < a8;
  }

  return (*(v17 + 8 * ((22 * !v22) ^ v21)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_12388(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v12 = a6 + 1;
  v13 = v12 < a1;
  if (v9 > a3 != v12 < v11)
  {
    v13 = v9 > a3;
  }

  return (*(v8 + 8 * ((v13 * ((a7 ^ a8) * v10 + 3348)) ^ a7)))();
}

uint64_t sub_124AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, __int16 a31, char a32, char a33)
{
  a33 = *(&a30 + v35);
  v37 = ((v33 + 1894287562) & 0x8F1773FF ^ ((v33 - 1164) + 344)) + v34 == 4;
  return (*(v36 + 8 * (((2 * v37) | (8 * v37)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_12504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v11 = v6 + 32;
  v12 = (v11 ^ a1 ^ ((v7 + 426) | v9)) + v5;
  v13 = *(a2 + v12 - 15);
  v14 = *(a2 + v12 - 31);
  v15 = v4 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a3)), a4);
  return (*(v10 + 8 * ((14 * (v8 != v11)) ^ v7)))();
}

uint64_t sub_1250C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = v8 + 1;
  if (v13 == 19)
  {
    v15 = 0;
  }

  else
  {
    v14 = (*(v10 + v13) ^ a3) - (*(v11 + v13) ^ a3);
    v15 = v14 + a4 - (a8 & (2 * v14)) == ((v9 + 194) ^ (a4 + 412));
  }

  v16 = v15;
  return (*(v12 + 8 * ((504 * v16) ^ v9)))();
}

uint64_t sub_12514()
{
  v4 = 1082434553 * (((v3 - 144) & 0xB78A4088 | ~((v3 - 144) | 0xB78A4088)) ^ 0xD33249FD);
  *(v3 - 136) = v9;
  *(v3 - 128) = v2;
  *(v3 - 120) = v7 - v4 + ((v0 - 1680) ^ 0x9BF0F93B);
  *(v3 - 116) = (v0 - 1458) ^ v4;
  (*(v1 + 8 * (v0 ^ 0xFD7)))(v3 - 144);
  *v6 = v7;
  result = v8;
  *(v8 + 40) = -1261164275;
  return result;
}

uint64_t sub_12640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (a9 + v11);
  *(v14 - 1) = v13;
  *v14 = v13;
  return (*(v12 + 8 * (((((((v10 + 1879970782) & 0x8FF1EBF1) - 513) & v9) != 16) * (((((v10 + 1879970782) & 0x8FF1EBF1) - 237) | 0x6B2) - 998)) ^ (v10 + 1879970782) & 0x8FF1EBF1)))();
}

uint64_t sub_126A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v38 = 1785193651 * ((2 * ((v37 - 160) & 0x71CC2098) - (v37 - 160) - 1909203100) ^ 0x9DEF3344);
  STACK[0x2C8] = &a26;
  *(v37 - 144) = a15 - v38 + 212240405;
  *(v37 - 160) = (v35 + 1481) ^ v38;
  v39 = (*(v36 + 8 * (v35 ^ 0x89E)))(v37 - 160);
  v40 = a35 & (((v35 - 69) | 0x400) - 961);
  *(&a26 + v40) = -78;
  return (*(v36 + 8 * ((1351 * (v40 > 0x37)) ^ v35)))(v39);
}

uint64_t sub_12844@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x248] + a2 + 72);
  v6 = (a2 ^ 0x5FF7EFE3 ^ (2 * v3) ^ 0x9A6) + ((2 * a2) & 0xBFEFDFF8) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0x56) - ((2 * (HIBYTE(v5) ^ 0x56)) & 0x64) + 50;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x65) - ((2 * (BYTE2(v5) ^ 0x65)) & 0x64) + 50;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0x51) - ((2 * (BYTE1(v5) ^ 0x51)) & 0x64) + 50;
  *(a1 + v6 + 3) = v5 ^ 0x4E;
  return (*(v4 + 8 * ((52 * (a2 + 4 < LODWORD(STACK[0x2A4]))) ^ v3)))();
}

uint64_t sub_12954@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 + 843532609 * ((((2 * &v5) | 0x55EA1954) - &v5 + 1426781014) ^ 0xF6B8582F) - 771;
  v7 = v3;
  v8 = v1;
  v5 = v3;
  return (*(a1 + 8 * (v2 + 1151)))(&v5);
}

uint64_t sub_12A20@<X0>(int a1@<W8>)
{
  *v2 = STACK[0x4EC];
  v2[85] = STACK[0x544];
  v2[86] = STACK[0x540];
  v2[87] = STACK[0x3CC];
  v2[88] = STACK[0x4A4];
  return (*(v1 + 8 * (((STACK[0x3D0] == 0) * (4 * (a1 ^ 0x48) - 152 + ((4 * (a1 ^ 0x48) - 1289612341) & 0x4CDDECDB) - 1384)) ^ (4 * (a1 ^ 0x48) - 193))))();
}

uint64_t sub_12B84@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned int a10)
{
  a9 = (-117 * (((&a9 | 0x45) - &a9 + (&a9 & 0xB8)) ^ 0x5D)) ^ 0x2B;
  a10 = (a1 + 999) ^ (2066391179 * (((&a9 | 0xB8757545) - &a9 + (&a9 & 0x478A8AB8)) ^ 0x1752F75D));
  v11 = (*(v10 + 8 * (a1 + 1946)))(&a9);
  return sub_12BFC(v11);
}

uint64_t sub_12C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x260] = v65;
  *(v62 + 1424) = 0;
  memset((v62 + 1432), 50, 104);
  *(v63 + 96) = v62;
  STACK[0x400] = v63 + 96;
  *(v62 + 476) = 1;
  v66 = STACK[0x360];
  STACK[0x478] = *(v64 + 8 * v61);
  STACK[0x2C8] = v63;
  v67 = STACK[0x4F8];
  v68 = (v61 + 1887) ^ 0x48E;
  v69 = (&STACK[0x5E0] + STACK[0x4F8]);
  STACK[0x4E0] = v69;
  STACK[0x4F8] = v67 + 432;
  LODWORD(STACK[0x300]) = a4;
  LODWORD(STACK[0x53C]) = a4;
  STACK[0x3A0] = v66;
  LODWORD(STACK[0x394]) = -712618048;
  LODWORD(STACK[0x374]) = 1657355148;
  STACK[0x510] = 0;
  LODWORD(STACK[0x524]) = 313566482;
  LODWORD(STACK[0x348]) = a7 + 1;
  *v69 = 1098146250;
  LODWORD(STACK[0x2E0]) = 61642217;
  LODWORD(STACK[0x308]) = v68 - 440216382;
  LODWORD(STACK[0x2D0]) = -1616077123;
  LODWORD(STACK[0x2D8]) = 257946682;
  v71 = *v69 != 1098146250 || LODWORD(STACK[0x348]) != a7 + 4 * ((v61 + 1887) ^ 0x79F) - 932;
  return (*(v64 + 8 * ((v71 * (v68 + 466)) ^ v68)))(a1, a2, a3, a4, a5, a6, a7, 2699484461, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

void sub_12E00()
{
  v4 = v0;
  v5 = STACK[0x450] + 128;
  STACK[0x530] = v5;
  v6 = 742307843 * ((((v3 - 216) | 0x816BE91D) - ((v3 - 216) & 0x816BE91D)) ^ 0x9F496448);
  *(v3 - 208) = v5;
  *(v3 - 196) = 602092488 - v6;
  *(v3 - 216) = -473373760 - v6 + v0;
  (*(v1 + 8 * (v0 + 2173)))(v3 - 216);
  STACK[0x458] = *(v1 + 8 * v4);
  STACK[0x308] = v2;
  JUMPOUT(0x6DECLL);
}

uint64_t sub_12EC4()
{
  v1 = STACK[0x340] - 872;
  LODWORD(STACK[0x598]) = v0;
  return sub_36978(v1);
}

uint64_t sub_12EE8@<X0>(uint64_t a1@<X8>)
{
  v9 = (*(*(v7 + 8) + 4 * v1) ^ 0xB98CD7DE) + v2;
  *(*(a1 + 8) + 4 * v1) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((609 * (v8 > (v1 + 1))) ^ (v3 - 969568221) & 0x39CA6DBDu)))();
}

uint64_t sub_13020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 128) = v14 - ((((v18 - 136) | 0xDEECC404) - (v18 - 136) + ((v18 - 136) & 0x21133BF8)) ^ 0xA4BD85E) * v17 - 614;
  *(v18 - 136) = a11;
  *(v18 - 120) = &a14;
  v19 = (*(v15 + 8 * (v14 ^ 0xFCA)))(v18 - 136);
  return (*(v15 + 8 * ((((v14 ^ ((v16 + *(v18 - 112) - 1) < 0xE85389C3)) & 1) * ((v14 + 1889433606) & 0x8F6187FB ^ 0x771)) ^ v14)))(v19);
}

uint64_t sub_13190(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a3 ^ 0x7D8;
  v9 = (((a5 ^ 0x6AC7A2BB) - 1791468219) ^ ((a5 ^ 0x622FC16E) - 1647296878) ^ (((394 * (v8 ^ 0x550)) ^ 0xB164B718) + (a5 ^ 0x4E9B4BF4))) + v7;
  v10 = (((a4 ^ 0xCD33790C) + 852264692) ^ ((a4 ^ 0x2712709B) - 655519899) ^ ((a4 ^ 0xAC5221B6) + 1403903562)) + v7;
  v11 = (v10 < v6) ^ (v9 < v6);
  v12 = v9 < v10;
  if (v11)
  {
    v12 = v10 < v6;
  }

  return (*(v5 + 8 * (((4 * v12) | (8 * v12)) ^ v8)))();
}

uint64_t sub_13350(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  HIDWORD(v16) = a1 ^ 0x665517C;
  LODWORD(v16) = a1 ^ 0x55555555;
  v17 = (a2 ^ v12) + (v16 >> 27) + (((v6 ^ v5) + v12 - ((2 * (v6 ^ v5)) & 0xACCAA2F8)) ^ a4) - 14901403 + (((v7 + 774) | 0x180) ^ (v14 + 907) ^ *(v8 + 4 * (a5 + v11)));
  v18 = (v17 ^ 0xA317B061) & (2 * (v17 & 0xCB462271)) ^ v17 & 0xCB462271;
  v19 = ((2 * (v17 ^ 0x271FF0C3)) ^ 0xD8B3A564) & (v17 ^ 0x271FF0C3) ^ (2 * (v17 ^ 0x271FF0C3)) & (v10 + 2);
  v20 = v19 ^ 0x24485292;
  v21 = (v19 ^ 0x48118000) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xB1674AC8) & v20 ^ (4 * v20) & v10;
  v23 = (v22 ^ 0xA0414280) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x4C189032)) ^ 0xC59D2B20) & (v22 ^ 0x4C189032) ^ (16 * (v22 ^ 0x4C189032)) & v10;
  v25 = v24 ^ 0x2840D092;
  v26 = v23 ^ (v10 + 2) ^ (v24 ^ 0xC4190200) & (v23 << 8);
  return (*(v9 + 8 * ((28 * (a5 + 1 != v13 + 80)) ^ v7)))(v17 ^ (2 * ((v26 << 16) & 0x6C590000 ^ v26 ^ ((v26 << 16) ^ 0x52B20000) & ((v25 << 8) & 0x6C590000 ^ 0x24090000 ^ ((v25 << 8) ^ 0x59D20000) & v25))) ^ 0xC5B0D669, a4);
}

void sub_1353C()
{
  STACK[0x288] = 0;
  LODWORD(STACK[0x544]) = 313725005;
  v0 = &STACK[0x5E0] + STACK[0x220];
  v1 = STACK[0x220] + 1712;
  STACK[0x4F8] = v1;
  *v0 = 0x6370646600;
  v0[8] = 1;
  STACK[0x260] = v1;
  STACK[0x290] = (v0 + 9);
  JUMPOUT(0x367ECLL);
}

uint64_t sub_1362C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 563552687;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 50)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 178)
  {
    v12 = -1261164275;
    v13 = *(v2 + 16);
    v14 = *(v2 + 24) ^ v3;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 37)
    {
      v15 = 2008292077;
    }

    else
    {
      v15 = 2008292076;
    }

    *(result + 16) = 1941292484;
    *(result + 20) = v15;
    *(result + 24) = -1261164275;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0x900)))();
    v12 = 1261138644;
  }

  *(v2 + 8) = v12;
  return result;
}

uint64_t sub_13700(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v20 = (v16 + 1727012092) & 0x990FDF3D;
  *v17 = a1;
  *a4 = a16 ^ (v18 + 295) ^ v20;
  return (*(v19 + 8 * (((((v20 + 763229254) & 0xD28209E5 ^ 0xFFFFFFCA) + ((v20 - 817) | 0x200)) * (a9 == 0)) ^ v20)))();
}

uint64_t sub_13788@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xCCBu));

  return v3(v1);
}

uint64_t sub_137BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = STACK[0x340];
  STACK[0x4F8] -= 1616;
  LODWORD(STACK[0x52C]) = a5 - 154;
  return (*(v5 + 8 * (((STACK[0x3D0] == 0) * (v6 - 152 + ((v6 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v6 - 193))))();
}

uint64_t sub_13874()
{
  v13.val[1].i64[0] = (v3 + 13) & 0xF;
  v13.val[1].i64[1] = (v3 + 12) & 0xF;
  v13.val[2].i64[0] = (v3 + 11) & 0xF;
  v13.val[2].i64[1] = (v3 + 10) & 0xF;
  v13.val[3].i64[0] = (v3 + 9) & 0xF;
  v13.val[3].i64[1] = v3 & 0xF ^ 8;
  v8 = (v3 + v6 - 16);
  v14.val[0].i64[0] = (v3 + 7) & 0xF;
  v14.val[0].i64[1] = (v3 + 6) & 0xF;
  v14.val[1].i64[0] = (v3 + 5) & 0xF;
  v14.val[1].i64[1] = (v3 + 4) & 0xF;
  v14.val[2].i64[0] = (v3 + 3) & 0xF;
  v14.val[2].i64[1] = (v3 + 2) & 0xF;
  v14.val[3].i64[0] = (v3 + 1) & 0xF;
  v14.val[3].i64[1] = v3 & 0xF;
  v9.i64[0] = 0x6161616161616161;
  v9.i64[1] = 0x6161616161616161;
  v10.i64[0] = 0x3232323232323232;
  v10.i64[1] = 0x3232323232323232;
  v13.val[0].i64[0] = v4 & 0xF;
  v13.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.i64[0] = vqtbl4q_s8(v13, xmmword_88450).u64[0];
  v11.i64[1] = vqtbl4q_s8(v14, xmmword_88450).u64[0];
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*v8, *(v0 + v13.val[0].i64[0] - 15)), veorq_s8(*(v13.val[0].i64[0] + v1 - 12), *(v13.val[0].i64[0] + v2 - 10))));
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v14.val[0], v14.val[0], 8uLL), v10), vmulq_s8(v11, v9)));
  *v8 = vextq_s8(v14.val[0], v14.val[0], 8uLL);
  return (*(v7 + 8 * (v5 ^ (((v5 + 1020) - (v3 & 0x10) == 1394) << 6))))(v13.val[0].i64[1], 1394 - (v5 + 1020));
}

uint64_t sub_13A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1726767306;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v4 = *(a2 + 8) + (*(a2 + 4) - v3);
  v5 = 50899313 * ((v10 & 0xD24FDAC | ~(v10 | 0xD24FDAC)) ^ 0x3ABAC605);
  v11 = *(a1 + 96) + 528;
  v12 = v4;
  v13 = v5 ^ 0x2D7;
  v10[1] = v5 + v3 + 210866775;
  (*(a3 + 18296))(v10);
  v8 = v10[0];
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v3);
  return v8 ^ 0xB75BE8A7;
}

uint64_t sub_13BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, int a19, int a20, uint64_t a21, int a22)
{
  v28 = &a22 + 6 * v24;
  v28[2] = v25;
  v28[3] = a17;
  *(v28 + 2) = a15;
  v28[6] = a20;
  a22 = (a9 ^ 0x116) + v23;
  return (*(v26 + 8 * ((2323 * (a4 + v22 + 15 * (a9 ^ 0x11Au) - 195 < v27)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

uint64_t sub_13C5C@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v30 - 192) = v31;
  v32 = v28 + 215;
  v33 = (v28 + 215) ^ 0xF2;
  *(v30 - 116) = v33;
  v34 = *(&off_9DA90 + ((v28 + 215) ^ 0x15D)) - 12;
  v35 = v34[a1[5] ^ 0xE2];
  v36 = *(&off_9DA90 + v28 - 229) - 4;
  v37 = v36[a1[15] ^ 0x92];
  *(v30 - 148) = v29;
  v38 = v36[((a1[7] & 0xC0 ^ 0xFEE1A8275804A472) & (a1[7] & 0x3F ^ 0xFEFDFBF7DF67F7D1) | a1[7] & 0xD) ^ 0xFEE1A8275804A4E3];
  v39 = *(&off_9DA90 + v32 - 269) - 8;
  v40 = (v38 ^ 0x9FFF8D26) & ((v35 << 16) ^ 0x9F538D6E) | v38 & 0x91;
  v41 = ((-1459617792 * v39[a1[4] ^ 0x57] + 436207616) ^ 0xC1AEE8FE) & (v40 ^ 0x60E36591);
  v42 = v40 & 0x5510001;
  v43 = -87 * v39[a1[12] ^ 0x68] + 26;
  v44 = *(&off_9DA90 + (v32 ^ 0x154));
  LOBYTE(v38) = *(v44 + (a1[14] ^ 0xD6)) + 19;
  v45 = ((*(v44 + (a1[6] ^ 0x87)) + 19) ^ 0x30) << 8;
  v46 = (v45 & 0x4100 | (v42 ^ 0x8A1F56E2 ^ v41) & ~v45) ^ 0x35E1BE1C;
  v47 = ((((v43 ^ 0x7E) << 24) ^ 0x7896999E) & ~((v38 ^ 0x27) << 8) & 0x7A107100 | ((v38 ^ 0x27) << 8) & 0x6000) ^ 0x8DE75840 ^ (((((v43 ^ 0x7E) << 24) ^ 0x7896999E) & ~((v38 ^ 0x27) << 8) | ((v38 ^ 0x27) << 8) & 0x6666) ^ 0x85690661) & ((((v34[a1[13] ^ 0xB9] << 16) ^ 0xA5D6614A) & (v33 ^ 0xBFFFF63A ^ v37) | v37 & 0xB5) ^ 0x2001EF85);
  v48 = ((v36[a1[3] ^ 0x29] ^ 0xB8) & 0xFFFF00FF | ((v34[a1[1] ^ 8] ^ 0x8F) << 16) | (((-87 * v39[*a1 ^ 0xE1] + 26) ^ 0xDA) << 24) | (((*(v44 + (a1[2] ^ 0x8FLL)) + 19) ^ 0xD8) << 8)) ^ 0x1B;
  v49 = *(&off_9DA90 + (v32 ^ 0x17E));
  v50 = *(&off_9DA90 + v32 - 290) - 8;
  v51 = (((-87 * v39[a1[8] ^ 0xB9] + 26) ^ 0xBC) << 24) | ((v34[a1[9] ^ 0x3BLL] ^ 0x7E) << 16) | (v36[a1[11] ^ 0x62] ^ 0xFB) & 0xFFFF00FF | (((*(v44 + (a1[10] ^ 0xB7)) + 19) ^ 0xE7) << 8);
  v52 = *(&off_9DA90 + (v32 ^ 0x1BB)) - 12;
  LODWORD(v39) = *&v52[4 * (v43 ^ 0x88)];
  v53 = *(v49 + 4 * (BYTE2(v47) ^ 0xBAu)) ^ *&v50[4 * (v38 ^ 0x7E)] ^ 0x9DE514AB;
  v54 = *(&off_9DA90 + v32 - 437) - 8;
  LODWORD(v37) = *&v54[4 * (v37 ^ 0x26)];
  *(v30 - 208) = v48;
  LODWORD(v39) = v37 ^ v48 ^ (((v53 - ((2 * v53) & 0xFD142FCC) + 2122979302) ^ v39) - ((2 * ((v53 - ((2 * v53) & 0xFD142FCC) + 2122979302) ^ v39)) & 0x53472F04) - 1448896638);
  *(v30 - 196) = v46;
  LODWORD(v37) = v39 ^ v46;
  v55 = v39;
  v242 = v39;
  *(v30 - 200) = v51;
  LODWORD(v39) = v39 ^ v46 ^ v51;
  v56 = v37;
  v248 = v37;
  LODWORD(v37) = v39 ^ v47;
  v57 = v39;
  v240 = v39;
  v254 = (v39 ^ v47);
  LODWORD(v39) = *&v54[4 * (v254 ^ 0x35)] ^ 0xDE04F601;
  LODWORD(v37) = v37 ^ 0xF83672DE;
  *(v30 - 156) = BYTE1(v37);
  LODWORD(v39) = v39 ^ *&v50[4 * (BYTE1(v37) ^ 0x9E)];
  v264 = BYTE3(v37);
  LODWORD(v39) = (v39 - ((2 * v39) & 0xFD142FCC) + 2122979302) ^ *&v52[4 * (BYTE3(v37) ^ 0x86)];
  v260 = BYTE2(v37);
  v247 = BYTE2(v56) ^ 0x5B;
  v284 = v55 ^ *(v49 + 4 * (BYTE2(v37) ^ 0xBAu)) ^ (v39 - ((2 * v39) & 0xD484EA50) - 364743384) ^ v56 ^ 0xA25B684D;
  v58 = v55 ^ *(v49 + 4 * (BYTE2(v37) ^ 0xBAu)) ^ (v39 - ((2 * v39) & 0xD484EA50) - 364743384);
  *(v30 - 204) = v47;
  LODWORD(v39) = (v284 ^ 0xF73EC34E ^ v47 ^ 0x7E4FB786) >> 24;
  *(v30 - 232) = v39;
  v283 = ((v284 ^ 0xF73EC34E ^ v47 ^ 0x7E4FB786) >> 16);
  LODWORD(v44) = *&v52[4 * (v39 ^ 0x86)] ^ *(v49 + 4 * (v283 ^ 0xBAu));
  v279 = ((v284 ^ 0xC34E ^ v47 ^ 0xB786) >> 8);
  v59 = ((v44 ^ 0x94C862CE) + 2007458179 + (~(2 * (v44 ^ 0x94C862CE)) | 0x10B13CF9) + 1) ^ *&v50[4 * (v279 ^ 0x9E)];
  v60 = v284 ^ 0x4E ^ v47;
  *(v30 - 152) = v60;
  v61 = v58 ^ *&v54[4 * (v60 ^ 0x6D)] ^ (v59 - ((2 * v59) & 0x53472F04) - 1448896638);
  *(v30 - 124) = v61;
  v61 ^= 0xFEB4AEEu;
  v62 = v61 ^ v57 ^ 0xF83672DE;
  v63 = v61;
  *(v30 - 172) = v62;
  v64 = v62 ^ v284 ^ 0xF73EC34E ^ v47 ^ 0x7E4FB786;
  *(v30 - 212) = BYTE2(v64);
  v65 = *(v49 + 4 * (BYTE2(v64) ^ 0xBAu));
  *(v30 - 164) = BYTE1(v64);
  LODWORD(v36) = v65 ^ *&v50[4 * (BYTE1(v64) ^ 0x9E)] ^ 0x9DE514AB;
  *(v30 - 168) = HIBYTE(v64);
  LODWORD(v36) = (v36 - ((2 * v36) & 0xFD142FCC) + 2122979302) ^ *&v52[4 * (HIBYTE(v64) ^ 0x86)];
  *(v30 - 160) = v64;
  v66 = v63 ^ *&v54[4 * (v64 ^ 0xEB)];
  *(v30 - 248) = v63;
  v275 = v284 ^ 0xF73EC34E ^ v57 ^ 0xF83672DE;
  v67 = v66 ^ (v36 - ((2 * v36) & 0x53472F04) - 1448896638);
  *(v30 - 132) = v67 ^ v275;
  LODWORD(v36) = v67 ^ v275 ^ 0x598844C8;
  v68 = v36 ^ v64;
  v69 = v36;
  v271 = v36 ^ v64;
  v273 = (v36 ^ v64 ^ 0xCD2CB9A0) >> 24;
  LODWORD(v36) = *&v54[4 * ((v36 ^ v64) ^ 0x83)] ^ *&v52[4 * (v273 ^ 0x86)] ^ 0xD7298064;
  v266 = ((v68 ^ 0xCD5DCD68) >> 16);
  v70 = (v36 - ((2 * v36) & 0xD484EA50) - 364743384) ^ *(v49 + 4 * (v266 ^ 0xBAu));
  v268 = ((v68 ^ 0xCD68) >> 8);
  v71 = (v70 - ((2 * v70) & 0xEF4EC306) + 2007458179) ^ *&v50[4 * (v268 ^ 0x9E)];
  v72 = v63 ^ v284 ^ 0xF73EC34E;
  *(v30 - 240) = v72;
  v72 ^= 0x7E4FB786u;
  *(v30 - 136) = v72;
  *(v30 - 256) = v71 ^ v72;
  v73 = v71 ^ v72 ^ 0xF39A3E26;
  v74 = v73 ^ v64;
  v75 = v73;
  v257 = v67;
  v76 = *&v52[4 * ((v74 >> (v67 & 0x18) >> (v67 & 0x18 ^ 0x18)) ^ 0x86)];
  *(v30 - 252) = BYTE2(v74);
  v291 = v74;
  v77 = *(v49 + 4 * (BYTE2(v74) ^ 0xBAu)) ^ v76;
  v290 = BYTE1(v74);
  LODWORD(v39) = ((v77 ^ 0x94C862CE) - 2 * ((v77 ^ 0x94C862CE) & 0x77A761A3 ^ v77 & 0x20) + 2007458179) ^ *&v50[4 * (BYTE1(v74) ^ 0x9E)];
  v288 = v71 ^ v67;
  v289 = BYTE2(v75);
  v286 = v75 ^ v69;
  LODWORD(v34) = v71 ^ v67 ^ *&v54[4 * ((v75 ^ v69 ^ v68 ^ 0x68) ^ 0x83)] ^ (v39 - ((2 * v39) & 0x53472F04) - 1448896638);
  *(v30 - 140) = v34;
  *(v30 - 224) = v34 ^ 0x53DB0D92;
  LODWORD(v37) = v34 ^ 0x53DB0D92 ^ v75 ^ 0xF73EC34E;
  v237 = v34 ^ 0x53DB0D92 ^ v75;
  LODWORD(v39) = v37 ^ v68 ^ 0xCD5DCD68 ^ 0xBF7FF0FA;
  v78 = *(v49 + 4 * (BYTE2(v39) ^ 0xBAu));
  v79 = (v37 ^ v68 ^ 0x68);
  *(v30 - 176) = v79;
  v80 = *&v54[4 * (v79 ^ 0x11)] ^ v78;
  v231 = v39 >> 24;
  v81 = ((v80 ^ 0x43E1E2AA) - 2 * ((v80 ^ 0x43E1E2AA) & 0x7E8A17F7 ^ v80 & 0x11) + 2122979302) ^ *&v52[4 * ((v39 >> 24) ^ 0x86)];
  v235 = BYTE1(v39);
  v82 = v34 ^ 0x53DB0D92 ^ *&v50[4 * (BYTE1(v39) ^ 0x9E)] ^ (v81 - ((2 * v81) & 0xEF4EC306) + 2007458179);
  *(v30 - 128) = v82;
  v287 = v75 ^ v69 ^ 0xCD5DCD68;
  v228 = v37 ^ v287;
  v276 = v82 ^ 0x85DB0D92 ^ v237;
  v83 = v82 ^ 0x85DB0D92;
  v193 = v82 ^ 0x85DB0D92;
  v278 = v276 ^ 0x484133B4 ^ v37 ^ v287;
  v84 = v278 ^ 0xBDE5CEDC ^ v39;
  v281 = (v84 ^ 0x29A3E26) >> 24;
  LODWORD(v36) = *&v52[4 * (v281 ^ 0x86)];
  v285 = ((v84 ^ 0x3E26) >> 8);
  v85 = *&v50[4 * (v285 ^ 0x9E)];
  *(v30 - 120) = 0;
  v209 = ((v84 ^ 0x29A3E26) >> 16);
  LODWORD(v36) = ((v36 ^ v85 ^ 0x92D7665) - ((2 * (v36 ^ v85 ^ 0x92D7665)) & 0xD484EA50) - 364743384) ^ *(v49 + 4 * (v209 ^ 0xBAu));
  v198 = v278 ^ 0xDC ^ v39;
  v196 = (v36 - ((2 * v36) & 0x53472F04) - 1448896638) ^ *&v54[4 * (v198 ^ 0xCD)];
  v86 = v276 ^ 0x484133B4 ^ v196 ^ v83;
  *(v30 - 144) = v196 ^ v83;
  v87 = v278 ^ 0xBDE5CEDC ^ v86 ^ 0x19868409;
  LODWORD(v37) = v87 ^ 0xC130088F ^ v84 ^ 0x29A3E26;
  v190 = (v37 ^ 0x7B68C86) >> 24;
  v195 = ((v37 ^ 0x8C86) >> 8);
  v88 = *&v52[4 * (v190 ^ 0x86)] ^ *&v50[4 * (v195 ^ 0x9E)] ^ 0x92D7665;
  v89 = ((v37 ^ 0x7B68C86) >> 16);
  v90 = (v88 - ((2 * v88) & 0xD484EA50) - 364743384) ^ *(v49 + 4 * (v89 ^ 0xBAu));
  HIDWORD(a28) = v87 ^ 0x8F ^ v84 ^ 0x26;
  v210 = v196 ^ v83 ^ *&v54[4 * (HIDWORD(a28) ^ 0x6D)] ^ (v90 - ((2 * v90) & 0x53472F04) - 1448896638);
  v206 = v210 ^ 0x7B68C86 ^ v86 ^ 0x19868409;
  v91 = v206 ^ v87 ^ 0xC130088F ^ 0xC104CD8D ^ v37 ^ 0x7B68C86;
  v217 = (v206 ^ v87 ^ 0x8F) ^ 0x8D ^ v37 ^ 0x86;
  v215 = (v91 ^ 0xA91877A2) >> 24;
  v218 = ((v91 ^ 0x77A2) >> 8);
  v212 = ((v91 ^ 0xA91877A2) >> 16);
  LODWORD(v39) = v254 ^ 0xEF;
  v92 = *(&off_9DA90 + v32 - 281) - 8;
  LODWORD(v37) = (BYTE2(v57) ^ 0xFD84E2D8) - 1223506397 + *&v92[4 * (BYTE2(v57) ^ 0x48)];
  v93 = *(&off_9DA90 + (v32 ^ 0x146)) - 8;
  v94 = ((v247 ^ 0xFD84E273) - 1223506397 + *&v92[4 * (v247 ^ 0xE3)]) ^ (-1974868763 * *&v93[4 * (HIBYTE(v248) ^ 0xE7)] - 1583929207);
  HIDWORD(v223) = v32;
  v95 = *(&off_9DA90 + v32 - 336) - 8;
  v96 = (v37 - ((2 * v37) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v240 ^ 0x33)];
  v97 = (-1974868763 * *&v93[4 * (HIBYTE(v242) ^ 0xCB)] - 1583929207) ^ ((((v242 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v242 ^ 0x6AB66F6C) >> 16) ^ 0x7B)]);
  v98 = *(&off_9DA90 + v32 - 320) - 12;
  v99 = (v94 - ((2 * v94) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (BYTE1(v248) ^ 0x4B)];
  v100 = (v97 - ((2 * v97) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v242 ^ 0x1C)];
  v255 = v99 - ((2 * v99) & 0x666E95BE);
  v101 = (v260 ^ 0xFD84E215) - 1223506397 + *&v92[4 * (v260 ^ 0x85)];
  v261 = *&v98[4 * (BYTE1(v240) ^ 0xE4)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v240) ^ 0x54)] - 1583929207) ^ (v96 - ((2 * v96) & 0x1F22D66A) + 261188405);
  v102 = (-1974868763 * *&v93[4 * (v264 ^ 0xBE)] - 1583929207) ^ *&v95[4 * v39] ^ (v101 - ((2 * v101) & 0x666E95BE) - 1288221985);
  v243 = v100 - ((2 * v100) & 0x1F22D66A);
  v224 = v102 - ((2 * v102) & 0x1F22D66A);
  v103 = *(v30 - 140) ^ 0xB89A99EC;
  v104 = (BYTE2(v103) ^ 0xFD84E2A4) - 1223506397 + *&v92[4 * (BYTE2(v103) ^ 0x34)];
  v105 = v231 ^ 0xB6;
  v106 = *&v93[4 * (HIBYTE(v228) ^ 0xD2)];
  v222 = BYTE1(v228) ^ 0x50;
  LODWORD(v39) = ((((v228 ^ 0xBFAB50FA) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v228 ^ 0xBFAB50FA) >> 16) ^ 0x7B)]) ^ *&v95[4 * (v228 ^ 0x5F)] ^ (-1974868763 * v106 - ((345229770 * v106 + 1127108882) & 0x666E95BE) + 1422816104);
  v232 = v248 ^ 0x25;
  v107 = *&v93[4 * v105];
  v108 = (-1583929207 - 914915627 * v107 - 1059953136 * v107 - 2 * ((-1583929207 - 914915627 * v107 - 1059953136 * v107) & 0xF916B3F ^ (-1583929207 - 914915627 * v107) & 0xA) + 261188405) ^ *&v98[4 * (v235 ^ 0x25)];
  v249 = v108 - ((2 * v108) & 0x666E95BE);
  v109 = *&v98[4 * BYTE1(v103)] ^ (v104 - ((2 * v104) & 0x1F22D66A) + 261188405);
  LODWORD(v36) = (((v237 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 1223506397 + *&v92[4 * (((v237 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  v236 = v109 - ((2 * v109) & 0x666E95BE);
  v229 = v39 - ((2 * v39) & 0x1F22D66A);
  v214 = BYTE1(v237) ^ 0x2D;
  v110 = (v36 - ((2 * v36) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v237 ^ 0xA4)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v237) ^ 0x40)] - 1583929207);
  v220 = v110 - ((2 * v110) & 0x1F22D66A);
  v111 = (((v257 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 1223506397 + *&v92[4 * (((v257 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  v252 = v67 ^ *(v30 - 136);
  LODWORD(v37) = *&v93[4 * (HIBYTE(v252) ^ 0x39)];
  LODWORD(v37) = (-1583929207 - 914915627 * v37 - 1059953136 * v37 - 2 * ((-1583929207 - 914915627 * v37 - 1059953136 * v37) & 0xF916B37 ^ (-1583929207 - 914915627 * v37) & 2) + 261188405) ^ *&v98[4 * ((v252 ^ 0xDA26) >> 8)];
  LODWORD(v39) = (v266 ^ 0xFD84E284) - 1223506397 + *&v92[4 * (v266 ^ 0x14)];
  v112 = (v111 - ((2 * v111) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v257 ^ 0x7D)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v257) ^ 0x5D)] - 1583929207);
  v201 = *(v30 - 132) ^ 0xAF58D76C;
  v113 = (BYTE2(v201) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (BYTE2(v201) ^ 0x7B)];
  v241 = v37 - 1288221985 + (~(2 * v37) | 0x99916A41);
  LODWORD(v37) = (v113 - ((2 * v113) & 0x666E95BE) - 1288221985) ^ *&v95[4 * ((v67 ^ v275) ^ 0x1C)];
  v204 = v37 - ((2 * v37) & 0x1F22D66A);
  v238 = (((v252 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v252 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  LODWORD(v37) = (v39 - ((2 * v39) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (v268 ^ 0xE5)] ^ (-1974868763 * *&v93[4 * (v273 ^ 0xF0)] - 1583929207);
  v203 = v112 - ((2 * v112) & 0x1F22D66A);
  v258 = v271 ^ 0xC3;
  v274 = v37 - ((2 * v37) & 0x666E95BE);
  LODWORD(v37) = (v283 ^ 0xFD84E219) - 1223506397 + *&v92[4 * (v283 ^ 0x89)];
  v114 = (v37 - ((2 * v37) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (v279 ^ 0x93)];
  v269 = v114 - ((2 * v114) & 0x666E95BE);
  v115 = *&v93[4 * (HIBYTE(v275) ^ 0xDE)];
  LODWORD(v36) = (((v284 ^ 0x47E1030D) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v284 ^ 0x47E1030D) >> 16) ^ 0x7B)];
  LODWORD(v37) = (v36 - ((2 * v36) & 0x1F22D66A) + 261188405) ^ *&v98[4 * ((v284 ^ 0x30D) >> 8)];
  v116 = ((BYTE2(v275) ^ 0xFD84E243) - 1223506397 + *&v92[4 * (BYTE2(v275) ^ 0xD3)]) ^ *&v98[4 * (BYTE1(v275) ^ 0xDB)] ^ (-1974868763 * v115 - ((345229770 * v115 + 53367058) & 0x1F22D66A) - 1322740802);
  v200 = v37 - ((2 * v37) & 0x666E95BE);
  v277 = v116 - ((2 * v116) & 0x666E95BE);
  v117 = (-1974868763 * *&v93[4 * (v190 ^ 0xAC)] - 1583929207) ^ ((v89 ^ 0xFD84E2A8) - 1223506397 + *&v92[4 * (v89 ^ 0x38)]);
  LODWORD(v37) = (v117 - ((2 * v117) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (v195 ^ 0xD9)];
  v118 = (BYTE2(v87) ^ 0xFD84E256) - 1223506397 + *&v92[4 * (BYTE2(v87) ^ 0xC6)];
  LODWORD(v36) = *&v93[4 * ((v196 ^ ~v193) >> 24)];
  v119 = *(v30 - 144) ^ 0xDDA7A6D4;
  LODWORD(v36) = (-1583929207 - 914915627 * v36 - 1059953136 * v36 - 2 * ((-1583929207 - 914915627 * v36 - 1059953136 * v36) & 0xF916B3F ^ (-1583929207 - 914915627 * v36) & 0xA) + 261188405) ^ *&v98[4 * BYTE1(v119)];
  LODWORD(v39) = (v118 - ((2 * v118) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v278 ^ 0xDC ^ v86 ^ 9 ^ 0x67)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v87) ^ 0x3E)] - 1583929207);
  LODWORD(v197) = v37 - ((2 * v37) & 0x666E95BE);
  HIDWORD(v194) = v36 - ((2 * v36) & 0x666E95BE);
  v186 = BYTE1(v86) ^ 0x9E;
  LODWORD(v37) = *&v93[4 * (HIBYTE(v86) ^ 0xCD)];
  LODWORD(v37) = *&v95[4 * (v86 ^ 0xC9)] ^ (-1974868763 * v37 - ((345229770 * v37 + 1127108882) & 0x666E95BE) + 1422816104);
  v191 = v37 - ((2 * v37) & 0x1F22D66A);
  v280 = (BYTE2(v119) ^ 0xFD84E2A5) - 1223506397 + *&v92[4 * (BYTE2(v119) ^ 0x35)];
  v184 = BYTE1(v87) ^ 0x4F;
  v188 = v39 - ((2 * v39) & 0x1F22D66A);
  v272 = (BYTE2(v86) ^ 0xFD84E2FB) - 1223506397 + *&v92[4 * (BYTE2(v86) ^ 0x6B)];
  LODWORD(v36) = *&v93[4 * (HIBYTE(v278) ^ 0x22)];
  LODWORD(v36) = (-1583929207 - 914915627 * v36 - 1059953136 * v36 - 2 * ((-1583929207 - 914915627 * v36 - 1059953136 * v36) & 0xF916B3F ^ (-1583929207 - 914915627 * v36) & 0xA) + 261188405) ^ *&v98[4 * ((v278 ^ 0x4AFA) >> 8)];
  LODWORD(v187) = v278 ^ 0xE4;
  HIDWORD(v197) = v36 - ((2 * v36) & 0x666E95BE);
  v263 = (BYTE2(v278) ^ 0xFD84E223) - 1223506397 + *&v92[4 * (BYTE2(v278) ^ 0xB3)];
  v181 = v281 ^ 0x67;
  v267 = (v209 ^ 0xFD84E291) - 1223506397 + *&v92[4 * (v209 ^ 1)];
  v120 = *(v30 - 128);
  v121 = *&v93[4 * (HIBYTE(v120) ^ 0x82)];
  LODWORD(v37) = ((BYTE2(v193) ^ 0xFD84E2FE) - 1223506397 + *&v92[4 * (BYTE2(v193) ^ 0x6E)]) ^ *&v98[4 * (BYTE1(v120) ^ 5)] ^ (-1583929207 - 914915627 * v121 - 1059953136 * v121 - 2 * ((-1583929207 - 914915627 * v121 - 1059953136 * v121) & 0xF916B3F ^ (-1583929207 - 914915627 * v121) & 0xA) + 261188405);
  v282 = v37 - ((2 * v37) & 0x666E95BE);
  v122 = v206;
  v123 = v206 ^ v87 ^ 0xC130088F;
  v174 = BYTE1(v123) ^ 0x4E;
  LODWORD(v36) = *&v93[4 * (HIBYTE(v123) ^ 0x27)];
  v124 = (-1974868763 * v36 - ((345229770 * v36 + 1127108882) & 0x666E95BE) + 1422816104) ^ *&v95[4 * ((v206 ^ v87 ^ 0x8F) ^ 0x5A)];
  v183 = BYTE1(v210) ^ 0x82;
  LODWORD(v37) = (((v210 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v210 ^ 0xC1698200) >> 16) ^ 0x7B)];
  LODWORD(v37) = (-1974868763 * *&v93[4 * (HIBYTE(v210) ^ 0x60)] - 1583929207) ^ *&v95[4 * (v210 ^ 0x72)] ^ (v37 - ((2 * v37) & 0x666E95BE) - 1288221985);
  v125 = *&v93[4 * (v215 ^ 0x21)];
  v126 = *&v95[4 * (v217 ^ 0x12)] ^ ((v212 ^ 0xFD84E2A2) - 1223506397 + *&v92[4 * (v212 ^ 0x32)]) ^ (-1974868763 * v125 - ((345229770 * v125 + 1127108882) & 0x666E95BE) + 1422816104);
  v207 = v218 ^ 0x7D;
  v178 = v37 - ((2 * v37) & 0x1F22D66A);
  v177 = v126 - ((2 * v126) & 0x1F22D66A);
  v175 = v124 - ((2 * v124) & 0x1F22D66A);
  HIDWORD(v208) = (((v123 ^ 0x68D34E2A) >> 16) ^ 0xFD84E2EB) - 1223506397 + *&v92[4 * (((v123 ^ 0x68D34E2A) >> 16) ^ 0x7B)];
  v127 = *(v30 - 232) ^ 0x32;
  v128 = (BYTE2(v288) ^ 0xFD84E2A2) - 1223506397 + *&v92[4 * (BYTE2(v288) ^ 0x32)];
  v129 = (BYTE2(v287) ^ 0xFD84E216) - 1223506397 + *&v92[4 * (BYTE2(v287) ^ 0x86)];
  v130 = (v129 - ((2 * v129) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v286 ^ 0x15)];
  LODWORD(v39) = (v289 ^ 0xFD84E2B1) - 1223506397 + *&v92[4 * (v289 ^ 0x21)];
  v131 = (v128 - ((2 * v128) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (v288 ^ 0x54)] ^ (-1974868763 * *&v93[4 * (HIBYTE(v288) ^ 0xEA)] - 1583929207);
  HIDWORD(v171) = v131 - ((2 * v131) & 0x1F22D66A);
  HIDWORD(a2) = BYTE1(v286) ^ 0xCC;
  LODWORD(v171) = v130 - ((2 * v130) & 0x1F22D66A);
  LODWORD(v172) = *(v30 - 256) ^ 0xB;
  v132 = (v39 - ((2 * v39) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (BYTE1(*(v30 - 256)) ^ 0x56)] ^ (-1974868763 * *&v93[4 * (HIBYTE(*(v30 - 256)) ^ 0x6D)] - 1583929207);
  *(v30 - 232) = v132 - ((2 * v132) & 0x666E95BE);
  LODWORD(v219) = (*(v30 - 252) ^ 0xFD84E2DC) - 1223506397 + *&v92[4 * (*(v30 - 252) ^ 0x4C)];
  v133 = (*(v30 - 212) ^ 0xFD84E246) - 1223506397 + *&v92[4 * (*(v30 - 212) ^ 0xD6)];
  *(v30 - 252) = v133 - ((2 * v133) & 0x1F22D66A);
  LODWORD(v37) = BYTE2(*(v30 - 248));
  v134 = *(v30 - 124);
  LODWORD(v37) = (-1974868763 * *&v93[4 * (HIBYTE(v134) ^ 0x41)] - 1583929207) ^ ((v37 ^ 0xFD84E273) - 1223506397 + *&v92[4 * (v37 ^ 0xE3)]);
  v135 = (v37 - ((2 * v37) & 0x1F22D66A) + 261188405) ^ *&v98[4 * (BYTE1(v134) ^ 0x6F)];
  LODWORD(v37) = BYTE2(*(v30 - 136));
  LODWORD(v37) = (v37 ^ 0xFD84E2B8) - 1223506397 + *&v92[4 * (v37 ^ 0x28)];
  LODWORD(v37) = (v37 - ((2 * v37) & 0x666E95BE) - 1288221985) ^ *&v95[4 * (*(v30 - 240) ^ 0xCE)];
  v136 = v37 - ((2 * v37) & 0x1F22D66A);
  v137 = *(v30 - 172);
  v138 = *&v93[4 * (HIBYTE(*(v30 - 132)) ^ 0xE)];
  v139 = *&v93[4 * (HIBYTE(v284) ^ 0xE6)];
  v140 = *&v93[4 * v127];
  LODWORD(v39) = *&v93[4 * v181];
  v141 = *&v93[4 * (HIBYTE(v122) ^ 0x82)];
  v142 = *&v93[4 * (HIBYTE(v286) ^ 0x5B)];
  LODWORD(v54) = *&v93[4 * (HIBYTE(v291) ^ 0x17)];
  v143 = *&v93[4 * (HIBYTE(v137) ^ 0x18)];
  v144 = *&v93[4 * (*(v30 - 168) ^ 7)];
  v145 = *(v30 - 240);
  LODWORD(v93) = *&v93[4 * (HIBYTE(v145) ^ 0x2E)];
  *(v30 - 212) = -1974868763 * v138 - 1583929207;
  *(v30 - 168) = -1974868763 * v139 - 1583929207;
  LODWORD(v213) = -1974868763 * v39 - 1583929207;
  LODWORD(v211) = -1974868763 * v141 - 1583929207;
  LODWORD(v216) = -1974868763 * v142 - 1583929207;
  HIDWORD(v216) = -1974868763 * v54 - 1583929207;
  HIDWORD(v221) = -1974868763 * v93 - 1583929207;
  HIDWORD(v180) = *&v98[4 * (*(v30 - 156) ^ 0xD0)];
  v246 = *&v98[4 * v222];
  LODWORD(v36) = (-1974868763 * v143 - ((345229770 * v143 + 1127108882) & 0x666E95BE) + 1422816104) ^ *&v95[4 * (v137 ^ 0xBC)];
  LODWORD(v221) = *&v98[4 * v214];
  *(v30 - 156) = *&v98[4 * BYTE1(v201)];
  HIDWORD(v213) = *&v98[4 * v186];
  LODWORD(v194) = *&v98[4 * v184];
  HIDWORD(v192) = *&v98[4 * (v285 ^ 0x72)];
  LODWORD(v37) = (*(v30 - 252) + 261188405) ^ *&v98[4 * (*(v30 - 164) ^ 0xB0)] ^ (-1974868763 * v144 - 1583929207);
  LODWORD(v185) = *&v98[4 * v183];
  HIDWORD(v185) = *&v98[4 * v207];
  v146 = *&v98[4 * v174];
  HIDWORD(v211) = *&v98[4 * (v290 ^ 0x6E)];
  LODWORD(v93) = v135 - ((2 * v135) & 0x666E95BE);
  LODWORD(v208) = *&v98[4 * (BYTE1(v288) ^ 0x83)];
  LODWORD(v189) = *&v98[4 * HIDWORD(a2)];
  *(v30 - 164) = *&v98[4 * (BYTE1(v145) ^ 0x74)];
  LODWORD(v202) = *&v98[4 * (BYTE1(v137) ^ 0xF4)];
  HIDWORD(v173) = v243 + 261188405;
  LODWORD(v173) = v224 + 261188405;
  v244 = v229 + 261188405;
  HIDWORD(v182) = v220 + 261188405;
  v230 = v204 + 261188405;
  HIDWORD(v172) = v203 + 261188405;
  LODWORD(v182) = v191 + 261188405;
  LODWORD(v192) = v188 + 261188405;
  HIDWORD(v179) = v178 + 261188405;
  HIDWORD(v187) = v177 + 261188405;
  v147 = v175 + 261188405;
  LODWORD(v205) = HIDWORD(v171) + 261188405;
  HIDWORD(v202) = v171 + 261188405;
  LODWORD(v223) = v136 + 261188405;
  HIDWORD(v219) = v36 - ((2 * v36) & 0x1F22D66A) + 261188405;
  LODWORD(v176) = *&v95[4 * v232];
  v233 = *&v95[4 * (v252 ^ 0x3D)];
  *(v30 - 176) = (BYTE2(v137) ^ 0xFD84E264) - 1223506397 + *&v92[4 * (BYTE2(v137) ^ 0xF4)];
  LODWORD(v179) = *&v95[4 * v258];
  v148 = *&v95[4 * (*(v30 - 152) ^ 0xC9)];
  *(v30 - 172) = *&v95[4 * (v284 ^ 0x7D)];
  *(v30 - 152) = *&v95[4 * (v275 ^ 0x6A)];
  LODWORD(v180) = *&v95[4 * (HIDWORD(a28) ^ 0xF9)];
  v149 = *&v95[4 * (*(v30 - 144) ^ 0x1C)];
  HIDWORD(v176) = *&v95[4 * (v198 ^ 0x97)];
  v150 = *&v95[4 * (v276 ^ 0xAE)];
  v259 = *&v95[4 * v187];
  HIDWORD(v189) = *&v95[4 * (*(v30 - 128) ^ 0x33)];
  LODWORD(v199) = *&v95[4 * (v291 ^ 0x81)];
  v253 = *&v95[4 * v172];
  LODWORD(v36) = *(v30 - 160) ^ 0xF2;
  *(v30 - 160) = *&v95[4 * (*(v30 - 124) ^ 0x45)];
  *(v30 - 144) = *&v95[4 * v36];
  v151 = (v255 - 1288221985);
  v152 = (v249 - 1288221985);
  v153 = (v236 - 1288221985);
  HIDWORD(v205) = v200 - 1288221985;
  v250 = *(v30 - 232) - 1288221985;
  HIDWORD(v199) = v93 - 1288221985;
  LODWORD(v92) = v37 - ((2 * v37) & 0x666E95BE) - 1288221985;
  v154 = v147 ^ v146 ^ HIDWORD(v208) ^ 0xC38F08C7;
  LODWORD(v39) = v148 ^ (-1974868763 * v140 - 1583929207) ^ 0xADE18B96 ^ (v269 - 1288221985);
  v155 = *(&off_9DA90 + HIDWORD(v223) - 273) - 12;
  v156 = *(&off_9DA90 + HIDWORD(v223) - 436) - 4;
  v157 = *(&off_9DA90 + (HIDWORD(v223) ^ 0x1D1)) - 4;
  v158 = (((v155[*(v30 - 111) ^ 0xD5] - 62) ^ 0xED) << 16) | ((v157[*(v30 - 112) ^ 1] ^ 0xF6) << 24);
  LODWORD(v93) = ((v156[*(v30 - 102) ^ 0x49] ^ 0xF9) << 8) & 0xFF00FFFF | (((v155[*(v30 - 103) ^ 0xB3] - 62) ^ 0x59) << 16);
  v159 = (((v155[*(v30 - 99) ^ 0xDLL] - 62) ^ 0xA9) << 16) | ((v157[*(v30 - 100) ^ 0xCALL] ^ 0x64) << 24);
  v160 = *(v30 - 107) ^ 0x45;
  v161 = ((v156[*(v30 - 106) ^ 0xD5] ^ 0xDA) << 8) | ((v157[*(v30 - 108) ^ 0xC2] ^ 0x3C) << 24);
  *(v30 - 232) = v156;
  *(v30 - 224) = v155;
  v162 = v161 & 0xFF00FFFF | (((v155[v160] - 62) ^ 0x16) << 16);
  v163 = v159 | ((v156[*(v30 - 98) ^ 0xC6] ^ 0xA4) << 8);
  LODWORD(v160) = v158 | ((v156[*(v30 - 110) ^ 0xE7] ^ 0x40) << 8);
  v164 = *(&off_9DA90 + HIDWORD(v223) - 385) - 12;
  v165 = v163 & 0xFFFFFF00 | (53 * v164[*(v30 - 97) ^ 0xCBLL] - 98) ^ 0x79;
  v166 = v160 & 0xFFFFFF00 | (53 * v164[*(v30 - 109) ^ 0x8ALL] - 98) ^ 0xC9u;
  v167 = v162 & 0xFFFFFF00 | (53 * v164[*(v30 - 105) ^ 0xB9] - 98) ^ 0x3C;
  v168 = *(v30 - 104) ^ 0x8ALL;
  v169 = *(v30 - 101) ^ 6;
  *(v30 - 248) = v164;
  *(v30 - 240) = v157;
  LOBYTE(v169) = v164[v169];
  *(v30 - 252) = -98;
  LODWORD(v93) = v93 & 0xFFFFFF00 | (53 * v169 - 98) ^ 0x87 | ((v157[v168] ^ 0x1B) << 24);
  *(v30 - 136) = v166 ^ 0x37373737;
  *(v30 - 132) = v165 ^ 0x37373737;
  *(v30 - 128) = v167 ^ 0x37373737;
  *(v30 - 140) = v93 ^ 0x37373737;
  *(v30 - 256) = v280 ^ v149 ^ (HIDWORD(v194) - 1288221985);
  LODWORD(v155) = v261 - ((2 * v261) & 0x56676152);
  *(v30 - 124) = (((*(v30 - 148) ^ 0x44333B87) + 1999025154) ^ ((*(v30 - 148) ^ 0xCBEB841D) - 117568612) ^ ((*(v30 - 148) ^ 0xFBC19321) - 925623128)) + 117213772;
  HIDWORD(v270) = HIDWORD(v213) ^ v182 ^ v272;
  LODWORD(v270) = v192 ^ v194;
  HIDWORD(v265) = HIDWORD(v176) ^ HIDWORD(v192) ^ v213 ^ v267;
  LODWORD(v265) = v259 ^ v263 ^ (HIDWORD(v197) - 1288221985);
  HIDWORD(v262) = HIDWORD(v189) ^ (v282 - 1288221985);
  LODWORD(v262) = v244 ^ v246;
  HIDWORD(v256) = v221 ^ HIDWORD(v182);
  LODWORD(v256) = v189 ^ (v171 + 261188405) ^ v216;
  HIDWORD(v251) = v253 ^ v250;
  LODWORD(v251) = HIDWORD(v211) ^ v199 ^ HIDWORD(v216) ^ v219;
  HIDWORD(v245) = v208 ^ (HIDWORD(v171) + 261188405);
  LODWORD(v245) = v179 ^ (v274 - 1288221985);
  HIDWORD(v239) = v233 ^ v238 ^ (v241 + 1);
  LODWORD(v239) = *(v30 - 156) ^ *(v30 - 212) ^ v230;
  HIDWORD(v234) = *(v30 - 160) ^ HIDWORD(v199);
  LODWORD(v234) = v202 ^ *(v30 - 176) ^ HIDWORD(v219);
  HIDWORD(v227) = *(v30 - 144) ^ v92;
  LODWORD(v227) = *(v30 - 164) ^ v223 ^ HIDWORD(v221);
  HIDWORD(v226) = *(v30 - 172) ^ HIDWORD(v205) ^ *(v30 - 168);
  LODWORD(v226) = *(v30 - 152) ^ (v277 - 1288221985);
  *(v30 - 212) = v39;
  LODWORD(v225) = v155 + 724807849;
  HIDWORD(v225) = 46032142 - v39 - v154;
  HIDWORD(a28) = HIDWORD(v225) ^ v154;
  return sub_16208(4294967198, v152, v166, v153, v151, 926365495, v149, v150, a2, v171, v172, v173, v176, v179, v180, v182, v185, v187, v189, v192, v194, v197, v199, v202, v205, v208, v211, v213, v216, v219, v221, v223, a26, a27, a28, v225, v226, v227, v234, v239, v245, v251, v256, v262, v265, v270);
}

uint64_t sub_16208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  *(v76 - 120) = v74;
  *(v76 - 144) = *(v76 - 124) < 0x4E092D8Au;
  v77 = (*(v76 - 184) + v74);
  v78 = *(v76 - 224);
  v79 = *(v78 + (v77[5] ^ 0x87));
  *(v76 - 152) = v75 + 142;
  v80 = v77[4];
  *(v76 - 176) = 0;
  *(v76 - 172) = (v75 + 142) ^ 0x2AA;
  v82 = *(v76 - 240);
  v81 = *(v76 - 232);
  v83 = *(v76 - 248);
  v84 = *(v76 - 252);
  v85 = (((v79 - 62) ^ 0x74) << 16) | ((*(v82 + ((v75 - 114) ^ 0xC6u ^ v80)) ^ 0x2C) << 24) | ((*(v81 + (v77[6] ^ 0xE2)) ^ 0x86) << 8) | (v84 + 53 * *(v83 + (v77[7] ^ 0xBFLL))) ^ 0xFA;
  v86 = ((v84 + 53 * *(v83 + (v77[15] ^ 0x3CLL))) ^ 0x68 | ((*(v81 + (v77[14] ^ 8)) ^ 0xC2) << 8)) & 0xFF00FFFF | ((*(v82 + (v77[12] ^ 0xBDLL)) ^ 4) << 24) | (((*(v78 + (v77[13] ^ 0xCALL)) - 62) ^ 0xFD) << 16);
  v87 = (v84 + 53 * *(v83 + (v77[3] ^ 0x19))) ^ 0x38 | ((*(v82 + (*v77 ^ 0x50)) ^ 0x19) << 24) | (((*(v78 + (v77[1] ^ 0x1ELL)) - 62) ^ 0x68) << 16) | ((*(v81 + (v77[2] ^ 6)) ^ 0xBE) << 8);
  v88 = ((*(v82 + v77[8]) ^ 0x27) << 24) | (((*(v78 + (v77[9] ^ 0xB0)) - 62) ^ 0x86) << 16) | ((*(v81 + (v77[10] ^ 0x42)) ^ 0x43) << 8) | (v84 + 53 * *(v83 + (v77[11] ^ 0x60))) ^ 0xDA;
  if ((((v84 + 53 * *(v83 + (v77[7] ^ 0xBFLL))) ^ 0xFA) & 2) != 0)
  {
    v89 = -2;
  }

  else
  {
    v89 = 2;
  }

  *(v76 - 164) = v85;
  *(v76 - 160) = v86;
  v90 = a66 ^ v86;
  v91 = a65 ^ (v89 + v85);
  *(v76 - 156) = v88;
  *(v76 - 168) = v87;
  v92 = a63 ^ v87;
  v93 = *(&off_9DA90 + v75 - 242) - 12;
  v94 = *&v93[4 * ((a64 ^ v88) >> 8)];
  HIDWORD(v96) = v94 ^ 0x1309;
  LODWORD(v96) = v94 ^ 0x553F0000;
  v95 = v96 >> 14;
  *(v76 - 116) = v75;
  v97 = *(&off_9DA90 + (v75 & 0x96870AF9));
  v98 = *&v93[4 * BYTE1(v92)];
  v99 = HIBYTE(v92);
  HIDWORD(v96) = v98 ^ 0x1309;
  LODWORD(v96) = v98 ^ 0x553F0000;
  v100 = *(&off_9DA90 + (v75 ^ 0x141)) - 12;
  v101 = (-60143190 - 21582785 * *&v100[4 * (a64 ^ v88)]) ^ (*(v97 + 4 * HIBYTE(v91)) - 1120064789);
  v102 = (-60143190 - 21582785 * *&v100[4 * (a65 ^ (v89 + v85))]) ^ v95;
  v103 = *(&off_9DA90 + v75 - 258) - 8;
  v104 = *&v103[4 * BYTE2(v92)];
  v105 = (*(v97 + 4 * ((a64 ^ v88) >> 24)) - 1120064789) ^ (v96 >> 14);
  v106 = *&v103[4 * BYTE2(v91)];
  v107 = *&v93[4 * BYTE1(v91)];
  HIDWORD(v96) = v107 ^ 0x1309;
  LODWORD(v96) = v107 ^ 0x553F0000;
  v108 = (v105 + 724807849 - ((2 * v105) & 0x56676152)) ^ v106 ^ (-60143190 - 21582785 * *&v100[4 * v90]);
  v109 = (*(v97 + 4 * HIBYTE(v90)) - 1120064789) ^ (v96 >> 14);
  v110 = *&v103[4 * BYTE2(v90)];
  v111 = *&v93[4 * BYTE1(v90)];
  HIDWORD(v96) = v111 ^ 0x1309;
  LODWORD(v96) = v111 ^ 0x553F0000;
  v112 = v109 ^ (-60143190 - 21582785 * *&v100[4 * v92]);
  v113 = a36 ^ (v108 + a38 - 2 * (v108 & a38));
  v114 = a62 ^ v110 ^ (*(v97 + 4 * v99) - 1120064789) ^ 0x8E1E9161 ^ (v102 + 724807849 - ((2 * v102) & 0x56676152));
  v115 = a61 ^ v104 ^ (v96 >> 14) ^ (v101 + 724807849 - ((2 * v101) & 0x56676152)) ^ 0x7A8BED94;
  v116 = a60 ^ *&v103[4 * ((a64 ^ v88) >> 16)] ^ 0x342D1067 ^ (v112 + 724807849 - ((2 * v112) & 0x56676152));
  v117 = *&v93[4 * ((v113 ^ 0xAB13) >> 8)];
  HIDWORD(v96) = v117 ^ 0x1309;
  LODWORD(v96) = v117 ^ 0x553F0000;
  v118 = (v96 >> 14) ^ (*(v97 + 4 * HIBYTE(v114)) - 1120064789);
  v119 = *(v97 + 4 * HIBYTE(v115));
  v120 = (2 * v119 + 2054837718) & 0x56676152;
  v121 = v119 - 395256940;
  v122 = *&v93[4 * ((a60 ^ *&v103[4 * ((a64 ^ v88) >> 16)] ^ 0x1067 ^ (v112 - 20311 - ((2 * v112) & 0x6152))) >> 8)];
  HIDWORD(v96) = v122 ^ 0x1309;
  LODWORD(v96) = v122 ^ 0x553F0000;
  v123 = v96 >> 14;
  v124 = v121 - v120;
  v125 = *(v97 + 4 * ((v113 ^ 0xC04AB13u) >> 24));
  v126 = v125 - 395256940 - ((2 * v125 + 2054837718) & 0x56676152);
  v127 = (-60143190 - 21582785 * *&v100[4 * v114]) ^ (*(v97 + 4 * HIBYTE(v116)) - 1120064789);
  v128 = *&v93[4 * BYTE1(v114)];
  HIDWORD(v96) = v128 ^ 0x1309;
  LODWORD(v96) = v128 ^ 0x553F0000;
  v129 = v96 >> 14;
  v130 = *&v93[4 * BYTE1(v115)];
  HIDWORD(v96) = v130 ^ 0x1309;
  LODWORD(v96) = v130 ^ 0x553F0000;
  v131 = -60143190 - 21582785 * *&v100[4 * ((a60 ^ v103[4 * ((a64 ^ v88) >> 16)]) ^ 0x67 ^ (v112 - 87 - ((2 * v112) & 0x52)))];
  v132 = -60143190 - 21582785 * *&v100[4 * (v113 ^ 0x33)];
  v133 = *&v103[4 * ((v113 ^ 0xC04AB13u) >> 16)];
  v134 = *(v76 - 256) ^ *&v103[4 * BYTE2(v116)] ^ (-60143190 - 21582785 * *&v100[4 * v115]) ^ (v118 + 724807849 - ((2 * v118) & 0x56676152));
  v135 = a59 ^ v133 ^ (v96 >> 14) ^ 0xD9D684A ^ (v127 + 724807849 - ((2 * v127) & 0x56676152));
  v136 = a58 ^ *&v103[4 * BYTE2(v114)] ^ v124 ^ v123 ^ 0x87DD46DC ^ v132;
  v137 = a57 ^ *&v103[4 * BYTE2(v115)] ^ v131 ^ v129 ^ 0x96521C3F ^ v126;
  v138 = *&v93[4 * ((v134 ^ 0xB36B) >> 8)];
  HIDWORD(v96) = v138 ^ 0x1309;
  LODWORD(v96) = v138 ^ 0x553F0000;
  v139 = v96 >> 14;
  v140 = *&v93[4 * BYTE1(v135)];
  HIDWORD(v96) = v140 ^ 0x1309;
  LODWORD(v96) = v140 ^ 0x553F0000;
  v141 = *&v93[4 * BYTE1(v136)];
  v142 = -60143190 - 21582785 * *&v100[4 * v136];
  v143 = (*(v97 + 4 * HIBYTE(v136)) - 1120064789) ^ (v96 >> 14);
  HIDWORD(v96) = v141 ^ 0x1309;
  LODWORD(v96) = v141 ^ 0x553F0000;
  v144 = (-60143190 - 21582785 * *&v100[4 * v135]) ^ v139;
  v145 = v143 ^ (-60143190 - 21582785 * *&v100[4 * v137]);
  v146 = (*(v97 + 4 * HIBYTE(v135)) - 1120064789) ^ (v96 >> 14);
  v147 = *&v93[4 * BYTE1(v137)];
  HIDWORD(v96) = v147 ^ 0x1309;
  LODWORD(v96) = v147 ^ 0x553F0000;
  v148 = *&v103[4 * BYTE2(v135)];
  v149 = v146 ^ (-60143190 - 21582785 * *&v100[4 * (v134 ^ 0x6B)]);
  v150 = a74 ^ *&v103[4 * ((v134 ^ 0x2F7BB36B) >> 16)] ^ (v145 + 724807849 - ((2 * v145) & 0x56676152));
  v151 = a56 ^ *&v103[4 * BYTE2(v137)] ^ 0xB6EFE4B7 ^ (v149 + 724807849 - ((2 * v149) & 0x56676152));
  v152 = a55 ^ *&v103[4 * BYTE2(v136)] ^ (*(v97 + 4 * HIBYTE(v137)) - 1120064789) ^ 0xD8A932B2 ^ (v144 + 724807849 - ((2 * v144) & 0x56676152));
  BYTE2(v115) = BYTE2(v150) ^ 0x6F;
  v153 = a54 ^ v148 ^ (*(v97 + 4 * (HIBYTE(v134) ^ 0xEE)) - 1120064789) ^ 0xDBC82169 ^ (((v96 >> 14) ^ v142) + 724807849 - ((2 * ((v96 >> 14) ^ v142)) & 0x56676152));
  v154 = *&v93[4 * ((a74 ^ *&v103[4 * ((v134 ^ 0x2F7BB36B) >> 16)] ^ (v145 - 20311 - ((2 * v145) & 0x6152)) ^ 0x9E59) >> 8)];
  v155 = *&v93[4 * BYTE1(v153)];
  HIDWORD(v96) = v154 ^ 0x1309;
  LODWORD(v96) = v154 ^ 0x553F0000;
  v156 = v96 >> 14;
  HIDWORD(v96) = v155 ^ 0x1309;
  LODWORD(v96) = v155 ^ 0x553F0000;
  v157 = *&v103[4 * BYTE2(v151)];
  v158 = (-60143190 - 21582785 * *&v100[4 * v152]) ^ (*(v97 + 4 * ((v150 ^ 0xD16F9E59) >> 24)) - 1120064789) ^ (*&v93[4 * BYTE1(v151)] >> 14) ^ (*&v93[4 * BYTE1(v151)] << 18) ^ 0x4C2554FC;
  v159 = (*(v97 + 4 * HIBYTE(v151)) - 1120064789) ^ v156 ^ (-60143190 - 21582785 * *&v100[4 * v153]);
  v160 = (v96 >> 14) ^ (*(v97 + 4 * HIBYTE(v152)) - 1120064789) ^ (-60143190 - 21582785 * *&v100[4 * v151]);
  v161 = *&v100[4 * ((a74 ^ v103[4 * ((v134 ^ 0x2F7BB36B) >> 16)] ^ (v145 - 87 - ((2 * v145) & 0x52))) ^ 0x79)];
  v162 = -21582785 * v161 + 664664659 - ((2104318078 * v161 + 2027197268) & 0x56676152);
  v163 = *&v93[4 * BYTE1(v152)];
  HIDWORD(v96) = v163 ^ 0x1309;
  LODWORD(v96) = v163 ^ 0x553F0000;
  v164 = a73 ^ *&v103[4 * BYTE2(v152)] ^ (v159 + 724807849 - ((2 * v159) & 0x56676152));
  v165 = v164 ^ 0xE0349DAE;
  v166 = a53 ^ *&v103[4 * BYTE2(v115)] ^ 0xF4361671 ^ (v160 + 724807849 - ((2 * v160) & 0x56676152));
  v167 = a72 ^ v157 ^ (*(v97 + 4 * HIBYTE(v153)) - 1120064789) ^ (v96 >> 14) ^ v162;
  v168 = a52 ^ *&v103[4 * BYTE2(v153)] ^ 0x7E1E5010 ^ (v158 + 724807849 - ((2 * v158) & 0x56676152));
  v169 = (v164 ^ 0xE0349DAE) >> 24;
  v170 = (-60143190 - 21582785 * *&v100[4 * (v164 ^ 0x8E)]) ^ (*(v97 + 4 * HIBYTE(v166)) - 1120064789);
  v171 = v170 + 724807849 - ((2 * v170) & 0x56676152);
  v172 = *&v93[4 * BYTE1(v165)];
  HIDWORD(v96) = v172 ^ 0x1309;
  LODWORD(v96) = v172 ^ 0x553F0000;
  v173 = v96 >> 14;
  v174 = *&v93[4 * ((a52 ^ *&v103[4 * BYTE2(v153)] ^ 0x5010 ^ (v158 - 20311 - ((2 * v158) & 0x6152))) >> 8)];
  HIDWORD(v96) = v174 ^ 0x1309;
  LODWORD(v96) = v174 ^ 0x553F0000;
  v175 = v96 >> 14;
  v176 = v173 ^ (-60143190 - 21582785 * *&v100[4 * v166]) ^ (*(v97 + 4 * HIBYTE(v168)) - 1120064789);
  v177 = *&v93[4 * ((v167 ^ 0x500A) >> 8)];
  HIDWORD(v96) = v177 ^ 0x1309;
  LODWORD(v96) = v177 ^ 0x553F0000;
  v178 = v96 >> 14;
  v179 = *&v93[4 * BYTE1(v166)];
  HIDWORD(v96) = v179 ^ 0x1309;
  LODWORD(v96) = v179 ^ 0x553F0000;
  v180 = *&v103[4 * BYTE2(v168)];
  v181 = (-60143190 - 21582785 * *&v100[4 * v168]) ^ (*(v97 + 4 * ((v167 ^ 0x6754500Au) >> 24)) - 1120064789) ^ (v96 >> 14);
  v182 = *&v103[4 * BYTE2(v165)];
  v183 = -60143190 - 21582785 * *&v100[4 * (v167 ^ 0x2A)];
  v184 = a51 ^ v180 ^ v178 ^ v171 ^ 0x541774FA;
  v185 = a50 ^ *&v103[4 * ((v167 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v176 + 724807849 - ((2 * v176) & 0x56676152));
  v186 = a49 ^ *&v103[4 * BYTE2(v166)] ^ (*(v97 + 4 * v169) - 395256940 - ((2 * *(v97 + 4 * v169) + 2054837718) & 0x56676152)) ^ v183 ^ 0xEB532C08 ^ v175;
  v187 = a48 ^ v182 ^ 0x8EB61C45 ^ (v181 + 724807849 - ((2 * v181) & 0x56676152));
  v188 = *&v93[4 * BYTE1(v185)];
  HIDWORD(v96) = v188 ^ 0x1309;
  LODWORD(v96) = v188 ^ 0x553F0000;
  v189 = *&v100[4 * (v184 - ((2 * v184) & 0x40)) + 128];
  v190 = *&v93[4 * ((a48 ^ v182 ^ 0x1C45 ^ (v181 - 20311 - ((2 * v181) & 0x6152))) >> 8)];
  v191 = (v96 >> 14) + 724807849 - ((2 * (v96 >> 14)) & 0x56676152);
  HIDWORD(v96) = v190 ^ 0x1309;
  LODWORD(v96) = v190 ^ 0x553F0000;
  v192 = (v96 >> 14) ^ (*(v97 + 4 * HIBYTE(v184)) - 1120064789);
  v193 = *&v93[4 * BYTE1(v184)];
  HIDWORD(v96) = v193 ^ 0x1309;
  LODWORD(v96) = v193 ^ 0x553F0000;
  v194 = v96 >> 14;
  v195 = *&v93[4 * BYTE1(v186)];
  HIDWORD(v96) = v195 ^ 0x1309;
  LODWORD(v96) = v195 ^ 0x553F0000;
  v196 = *(v97 + 4 * HIBYTE(v185)) - 1120064789;
  v197 = *&v103[4 * BYTE2(v185)];
  v198 = a71 ^ *&v103[4 * BYTE2(v186)] ^ v194 ^ (*(v97 + 4 * HIBYTE(v187)) - 1120064789) ^ (-21582785 * *&v100[4 * v185] + 664664659 - ((2104318078 * *&v100[4 * v185] + 2027197268) & 0x56676152));
  v199 = a47 ^ *&v103[4 * BYTE2(v184)] ^ (*(v97 + 4 * HIBYTE(v186)) - 1120064789) ^ v191 ^ (-60143190 - 21582785 * *&v100[4 * v187]) ^ 0x7C892C4A;
  v200 = a46 ^ *&v103[4 * BYTE2(v187)] ^ v196 ^ (v96 >> 14) ^ 0x190B7FE4 ^ (-21582785 * v189 + 664664659 - ((2104318078 * v189 + 2027197268) & 0x56676152));
  v201 = a45 ^ v197 ^ (-60143190 - 21582785 * *&v100[4 * v186]) ^ 0xCFA132BA ^ (v192 + 724807849 - ((2 * v192) & 0x56676152));
  v202 = v198 ^ 0x402CF460;
  v203 = *&v103[4 * BYTE2(v201)];
  v204 = *&v93[4 * BYTE1(v199)];
  HIDWORD(v96) = v204 ^ 0x1309;
  LODWORD(v96) = v204 ^ 0x553F0000;
  v205 = v96 >> 14;
  v206 = *&v93[4 * BYTE1(v201)];
  v207 = HIBYTE(v201);
  HIDWORD(v96) = v206 ^ 0x1309;
  LODWORD(v96) = v206 ^ 0x553F0000;
  v208 = *&v100[4 * (v198 ^ 0x40)];
  v209 = (-60143190 - 21582785 * *&v100[4 * v200]) ^ (*(v97 + 4 * ((v198 ^ 0x402CF460u) >> 24)) - 1120064789) ^ (v96 >> 14);
  v210 = *&v93[4 * BYTE1(v200)];
  HIDWORD(v96) = v210 ^ 0x1309;
  LODWORD(v96) = v210 ^ 0x553F0000;
  v211 = v96 >> 14;
  v212 = (*(v97 + 4 * HIBYTE(v200)) - 1120064789) ^ v205 ^ (-60143190 - 21582785 * *&v100[4 * v201]);
  v213 = (-60143190 - 21582785 * *&v100[4 * v199]) ^ (*(v97 + 4 * v207) - 1120064789);
  v214 = *(v97 + 4 * HIBYTE(v199)) - 1120064789;
  v215 = *&v93[4 * BYTE1(v202)];
  HIDWORD(v96) = v215 ^ 0x1309;
  LODWORD(v96) = v215 ^ 0x553F0000;
  v216 = a44 ^ *&v103[4 * BYTE2(v199)] ^ 0x2655A6B2 ^ (v209 + 724807849 - ((2 * v209) & 0x56676152));
  v217 = a43 ^ *&v103[4 * BYTE2(v200)] ^ (v96 >> 14) ^ 0x354150DE ^ (v213 + 724807849 - ((2 * v213) & 0x56676152));
  v218 = a42 ^ v203 ^ v211 ^ v214 ^ (-21582785 * v208 + 664664659 - ((2104318078 * v208 + 2027197268) & 0x56676152)) ^ 0x6005D395;
  v219 = a41 ^ *&v103[4 * BYTE2(v202)] ^ 0xD6EF510D ^ (v212 + 724807849 - ((2 * v212) & 0x56676152));
  v220 = *&v93[4 * BYTE1(v218)];
  HIDWORD(v96) = v220 ^ 0x1309;
  LODWORD(v96) = v220 ^ 0x553F0000;
  v221 = (v96 >> 14) + 724807849 - ((2 * (v96 >> 14)) & 0x56676152);
  v222 = *(v97 + 4 * HIBYTE(v216));
  v223 = (-60143190 - 21582785 * *&v100[4 * v216]) ^ (*(v97 + 4 * HIBYTE(v218)) - 1120064789);
  v224 = v222 - 395256940 - ((2 * v222 + 2054837718) & 0x56676152);
  v225 = -21582785 * *&v100[4 * v218] + 664664659 - ((2104318078 * *&v100[4 * v218] + 2027197268) & 0x56676152);
  v226 = *&v93[4 * BYTE1(v217)];
  HIDWORD(v96) = v226 ^ 0x1309;
  LODWORD(v96) = v226 ^ 0x553F0000;
  v227 = v96 >> 14;
  v228 = *&v93[4 * BYTE1(v216)];
  HIDWORD(v96) = v228 ^ 0x1309;
  LODWORD(v96) = v228 ^ 0x553F0000;
  v229 = v96 >> 14;
  v230 = *&v93[4 * BYTE1(v219)];
  HIDWORD(v96) = v230 ^ 0x1309;
  LODWORD(v96) = v230 ^ 0x553F0000;
  v231 = *&v103[4 * BYTE2(v216)];
  v232 = *&v103[4 * BYTE2(v217)] ^ *(v76 - 212) ^ (v96 >> 14) ^ (v223 + 724807849 - ((2 * v223) & 0x56676152));
  v233 = *&v103[4 * BYTE2(v219)];
  v234 = *(v97 + 4 * HIBYTE(v219)) - 1120064789;
  v235 = *&v103[4 * BYTE2(v218)];
  v236 = *(v97 + 4 * HIBYTE(v217)) - 1120064789;
  BYTE2(v219) = BYTE2(v232) ^ 0x1C;
  v237 = a70 ^ v235 ^ v227 ^ v224 ^ (-60143190 - 21582785 * *&v100[4 * v219]);
  v238 = a40 ^ v231 ^ v234 ^ v221 ^ (-60143190 - 21582785 * *&v100[4 * v217]) ^ 0xDE12593A;
  v239 = a39 ^ v236 ^ v233 ^ v225 ^ v229 ^ 0x8D19C5A6;
  v240 = *&v93[4 * BYTE1(v239)];
  HIDWORD(v96) = v240 ^ 0x1309;
  LODWORD(v96) = v240 ^ 0x553F0000;
  v241 = *&v100[4 * (v232 ^ 0x30)];
  v242 = *&v100[4 * v238];
  v243 = *&v93[4 * ((v232 ^ 0x5930) >> 8)];
  v244 = (v96 >> 14) + 724807849 - ((2 * (v96 >> 14)) & 0x56676152);
  HIDWORD(v96) = v243 ^ 0x1309;
  LODWORD(v96) = v243 ^ 0x553F0000;
  v245 = (v96 >> 14) + 724807849 - ((2 * (v96 >> 14)) & 0x56676152);
  v246 = *&v93[4 * ((v237 ^ 0x88C) >> 8)];
  v247 = (*(v97 + 4 * (HIBYTE(v232) ^ 0x50)) - 1120064789) ^ (-60143190 - 21582785 * *&v100[4 * (v237 ^ 0x8C)]);
  HIDWORD(v96) = v246 ^ 0x1309;
  LODWORD(v96) = v246 ^ 0x553F0000;
  v248 = v96 >> 14;
  v249 = *&v103[4 * ((v237 ^ 0x857E088C) >> 16)];
  v250 = *(v97 + 4 * HIBYTE(v239)) - 1120064789;
  v251 = *(v97 + 4 * HIBYTE(v238)) - 1120064789;
  LODWORD(v97) = *(v97 + 4 * (HIBYTE(v237) ^ 0x44));
  v252 = *&v93[4 * BYTE1(v238)];
  HIDWORD(v96) = v252 ^ 0x1309;
  LODWORD(v96) = v252 ^ 0x553F0000;
  v253 = a69 ^ v249 ^ v251 ^ (-60143190 - 21582785 * *&v100[4 * v239]) ^ v245;
  LODWORD(v100) = v250 ^ a37 ^ v248 ^ *&v103[4 * BYTE2(v238)] ^ (-60143190 - 21582785 * v241);
  v254 = a68 ^ *&v103[4 * BYTE2(v219)] ^ v244 ^ (-60143190 - 21582785 * v242) ^ (v97 - 1120064789);
  v255 = a67 ^ *&v103[4 * BYTE2(v239)] ^ (v96 >> 14) ^ (v247 + 724807849 - ((2 * v247) & 0x56676152));
  v256 = v255 ^ 0x644667A6;
  LODWORD(v97) = v254 ^ 0x7EC2C88;
  LODWORD(v93) = v253 ^ 0x9A25D878;
  v257 = *(v76 - 116);
  v258 = *(&off_9DA90 + v257 - 152) - 8;
  v259 = *&v258[4 * ((v255 ^ 0x644667A6u) >> 24)];
  HIDWORD(v96) = v259 ^ 0x14;
  LODWORD(v96) = v259 ^ 0xFAE34E80;
  v260 = *(&off_9DA90 + v257 - 143);
  v261 = *(&off_9DA90 + v257 - 203) - 12;
  v262 = ((v254 ^ 0x88) + 1401715492 - ((2 * v254) & 0x48)) ^ *&v261[4 * (v254 ^ 0xDB)] ^ (v96 >> 7);
  v263 = *(v260 + 4 * ((v255 ^ 0x644667A6u) >> 16));
  *(v76 - 148) = ((2 * v263) & 0xBB708860 ^ 0x4EAFFFDF) - 1234739703 + (((v263 ^ 0xDA6A75AF) + 630557265) ^ ((v263 ^ 0xB12E9162) + 1322348190) ^ ((v263 ^ 0x33EBFD15) - 871103765));
  v264 = (v253 ^ 0x78) + 1401715492 - ((2 * (v253 ^ 0x9A25D878)) & 0x48);
  v265 = *(v260 + 4 * BYTE2(v97));
  v266 = *(v260 + 4 * ((v100 ^ 0xAD089B63) >> 16));
  LODWORD(v260) = *(v260 + 4 * ((v253 ^ 0x9A25D878) >> 16));
  v267 = *(&off_9DA90 + (v257 ^ 0x163)) - 8;
  v268 = ((v255 ^ 0xA6) + 1401715492 - 2 * ((v255 ^ 0x644667A6) & 0x2C ^ v255 & 8)) ^ (BYTE1(v97) - 677493334 - ((v97 >> 7) & 0x154)) ^ *&v267[4 * (BYTE1(v97) ^ 0xF5)] ^ *&v261[4 * (v255 ^ 0xF5)];
  v269 = *&v258[4 * ((v253 ^ 0x9A25D878) >> 24)];
  HIDWORD(v96) = v269 ^ 0x14;
  LODWORD(v96) = v269 ^ 0xFAE34E80;
  v270 = ((v100 ^ 0x9B63) >> 8);
  v271 = v270 - 677493334 - (((v100 ^ 0xAD089B63) >> 7) & 0x154);
  v272 = (v96 >> 7) + 1487870424 - ((2 * (v96 >> 7)) & 0xB15E33B0);
  v273 = *&v258[4 * ((v100 >> 24) ^ 0xBD)];
  HIDWORD(v96) = v273 ^ 0x14;
  LODWORD(v96) = v273 ^ 0xFAE34E80;
  v274 = v96 >> 7;
  v275 = *&v261[4 * (v253 ^ 0x2B)];
  v276 = *&v267[4 * (v270 ^ 0xF5)];
  v277 = BYTE1(v93) ^ 0xF5;
  v278 = BYTE1(v93) - 677493334 - ((v93 >> 7) & 0x154);
  LODWORD(v97) = *&v258[4 * BYTE3(v97)];
  HIDWORD(v96) = v97 ^ 0x14;
  LODWORD(v96) = v97 ^ 0xFAE34E80;
  LODWORD(v97) = *(v76 - 140) ^ *(v76 - 200) ^ v260 ^ v274 ^ (v268 + 1487870424 - ((2 * v268) & 0xB15E33B0));
  LODWORD(v93) = *(v76 - 136) ^ *(v76 - 208) ^ v271 ^ v264 ^ v275 ^ v276 ^ (v96 >> 7) ^ *(v76 - 148);
  LODWORD(v258) = *(v76 - 132) ^ *(v76 - 204) ^ v278 ^ v266 ^ *&v267[4 * v277] ^ (v262 + 1487870424 - ((2 * v262) & 0xB15E33B0));
  LODWORD(v100) = *(v76 - 128) ^ *(v76 - 196) ^ v265 ^ ((v100 ^ 0x63) + 1401715492 - 2 * ((v100 ^ 0xAD089B63) & 0x3C ^ v100 & 0x18)) ^ (BYTE1(v256) - 677493334 - ((v256 >> 7) & 0x154)) ^ *&v261[4 * (v100 ^ 0x30)] ^ *&v267[4 * (BYTE1(v256) ^ 0xF5)] ^ v272;
  v279 = *(&off_9DA90 + v257 - 130) - 12;
  v77[3] = v279[(*(v76 - 136) ^ *(v76 - 208) ^ v271 ^ v264 ^ v275 ^ v276 ^ (v96 >> 7) ^ *(v76 - 148)) ^ 0xDFLL] ^ 0xA2;
  v280 = *(&off_9DA90 + v257 - 300) - 4;
  v77[4] = (v280[(v100 >> 24) ^ 0x2CLL] + 121) ^ 0x78;
  *v77 = (v280[(v93 >> 24) ^ 0x57] + 121) ^ 0xC8;
  v281 = *(&off_9DA90 + v257 - 283) - 4;
  v77[13] = (v281[BYTE2(v258) ^ 0x5CLL] + 125) ^ 0xC7;
  v77[11] = v279[v97 ^ 0x46] ^ 0xE6;
  v282 = *(&off_9DA90 + (v257 ^ 0x147)) - 4;
  v77[14] = ((BYTE1(v258) ^ 0xEE) - ((2 * (BYTE1(v258) ^ 0xEE)) & 0x4A) - 91) ^ 0x75 ^ v282[BYTE1(v258)];
  v77[2] = ((BYTE1(v93) ^ 3) - ((2 * (BYTE1(v93) ^ 3)) & 0x4A) - 91) ^ 0x8B ^ v282[BYTE1(v93) ^ 0xE6];
  v77[10] = ((BYTE1(v97) ^ 0xAB) - ((2 * (BYTE1(v97) ^ 0xAB)) & 0x4A) - 91) ^ 0x6D ^ v282[BYTE1(v97) ^ 0x84];
  v77[15] = v279[v258 ^ 0x11] ^ 0x51;
  v77[5] = (v281[BYTE2(v100) ^ 0x44] + 125) ^ 0xE2;
  v77[8] = (v280[BYTE3(v97) ^ 0x26] + 121) ^ 0xA2;
  v77[7] = v279[v100 ^ 0x3DLL] ^ 0x5B;
  v77[12] = (v280[(v258 >> 24) ^ 0x44] + 121) ^ 0x23;
  v77[1] = (v281[BYTE2(v93) ^ 0xA3] + 125) ^ 0x17;
  v283 = *(v76 - 120);
  v77[6] = (BYTE1(v100) - ((v100 >> 7) & 0x4A) - 91) ^ 0xD0 ^ v282[BYTE1(v100) ^ 0x58];
  v77[9] = (v281[BYTE2(v97) ^ 0xF8] + 125) ^ 0x90;
  v284 = (v283 + 1309224346) < *(v76 - 124);
  if (*(v76 - 144) != (v283 + 1309224346) < 0x4E092D8A)
  {
    v284 = *(v76 - 144);
  }

  return (*(*(v76 - 192) + 8 * ((95 * v284) ^ v257)))();
}

uint64_t sub_178C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x8_t a6, int8x8_t a7)
{
  v14 = a2 - 8;
  v16.val[0].i64[0] = (v10 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v10 + v14 + v11 - 60) & 0xF;
  v16.val[1].i64[1] = (v10 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v10 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v10 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + v14) & 0xF ^ 8;
  *(a3 + v14) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + v14), *(v7 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v8 - 4), *(v16.val[0].i64[0] + v9 - 2)))), a7), vmul_s8(*&vqtbl4q_s8(v16, a5), a6)));
  return (*(v13 + 8 * (((a1 == v14) * a4) ^ v12)))();
}

uint64_t sub_17914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v17 = 386 * (v15 ^ 0x118);
  v18 = ((a5 - 1657355370 + v17 - 1705) & 0xFFFFFFFC) - a15 != (((v17 - 1898) | 0xC1) ^ 0x9D36C492);
  return (*(v16 + 8 * (((16 * v18) | (v18 << 6)) ^ v17)))();
}

uint64_t sub_17A0C(uint64_t a1)
{
  v3 = (*(v1 + 18384))();
  if (v3 == 16)
  {
    v4 = -42029;
  }

  else
  {
    v4 = -42030;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  (*(v1 + 17656))(a1);
  return v5;
}

uint64_t sub_17A6C@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v5 = *(v4 + a1);
  v6 = a1 - 1;
  *(a3 + v6) = v5;
  return (*(v3 + 8 * (a2 ^ ((v6 == ((a2 - 22) | 0x18Au) - 1498) << 7))))();
}

uint64_t sub_17AE0(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, _BYTE *a11, uint64_t a12, _BYTE *a13, uint64_t a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, uint64_t a18, _BYTE *a19, _BYTE *a20, _BYTE *a21, uint64_t a22, _BYTE *a23, uint64_t a24, uint64_t a25, uint64_t a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, _BYTE *a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  *a11 = v41;
  *a20 = BYTE3(v41);
  a11[1] = BYTE6(a7);
  a9[1] = (((a34 + 73) & 0xF4) + 64) ^ BYTE4(v41);
  a16[20] = v42;
  *a27 = BYTE5(a7);
  a16[64] = BYTE2(v41);
  a16[50] = BYTE3(a8);
  *a21 = BYTE1(v41);
  *a28 = a8;
  a16[26] = BYTE6(a8);
  *a29 = BYTE4(a8);
  a9[2] = BYTE1(a2);
  a16[45] = BYTE5(a8);
  *a30 = HIBYTE(a8);
  a16[11] = BYTE2(a2);
  *a31 = BYTE1(v42);
  *a9 = HIBYTE(a7);
  *a13 = BYTE2(v42);
  a16[52] = BYTE4(v42);
  *a17 = BYTE3(v42);
  v44 = *(a12 + 526 + (((a6 >> 33) & 0x80 | (v42 >> 41) & 0x7F) ^ 0x1D));
  a16[9] = BYTE6(v42);
  *a15 = (((v44 >> 4) | (16 * v44)) ^ 0xB ^ (((v44 >> 4) | (16 * v44)) >> 1) & 0x55) + 95;
  v45 = (*(a10 + (((v42 >> 51) & 0xE0 | (a6 >> 59)) ^ 0xF3)) ^ 0xBC) + 74;
  a16[39] = v40 ^ 0x53;
  *a23 = v45;
  v46 = *(a10 + (((v40 >> 3) & 0xE0 | (v40 >> 11)) ^ 0xEF));
  v47 = (a1 >> 38) ^ 0xB0;
  a16[49] = BYTE5(v40) ^ 0xBB;
  a16[63] = BYTE3(v40) ^ 0xC1;
  a16[13] = BYTE6(v40) ^ 0x15;
  *a19 = BYTE2(v40) ^ 0x1D;
  *a32 = (v46 ^ 0xBC) + 74;
  a16[36] = BYTE4(v40) ^ 0xF2;
  a16[60] = BYTE1(a1) ^ 0x54;
  a16[27] = BYTE2(a1) ^ 0x11;
  a16[40] = (v40 ^ 0x4F15BBF2C11DE053) >> (a2 & 0x38) >> (a2 & 0x38 ^ 0x38u);
  a16[53] = BYTE3(a1) ^ 5;
  a16[59] = a1 ^ 0x4C;
  a16[22] = BYTE4(a1) ^ 0x2D;
  v48 = *(a14 + ((v47 & 0xFC | (a1 >> 46) & 3) ^ 0x97));
  a16[37] = -35 * ((((v47 & 0xFC | (a1 >> 46) & 3) ^ 0x86) - ((2 * v47) & 0xD0) + (v48 ^ 0xB2) + ((2 * v48) & 0x64) + 79) ^ 0x85);
  v49 = *(a12 + 526 + (((a1 >> 41) & 0x80 | (a1 >> 49) & 0x7F) ^ 0x56));
  a16[29] = HIBYTE(a1) ^ 0x30;
  a16[57] = (((v49 >> 4) | (16 * v49)) ^ 0xB) + ((((v49 >> 4) | (16 * v49)) >> 1) & 0x55) - 2 * ((((v49 >> 4) | (16 * v49)) >> 1) & 0x55 & (((v49 >> 4) | (16 * v49)) ^ 0xB)) + 95;
  **a25 = a18 + 1;
  v51 = *a25;
  v52 = ((*(*a25 + 17) << 32) | (*(*a25 + 16) << 40) | (*(*a25 + 30) << 48)) ^ __ROR8__(((*(*a25 + 21) << 51) | (*(*a25 + 35) << 43) | (*(*a25 + 6) << 35) | __ROR8__(*(*a25 + 54), 5)) ^ 0xE2AE42236AE791A4, 35) ^ (*(*a25 + 42) << 56);
  v53 = *(*a25 + 15) | (*(*a25 + 32) << 8) | (*(*a25 + 7) << 16) | (*(*a25 + 34) << 24) | (*(*a25 + 61) << 40);
  v54 = v52 ^ 0x9811A675F89B50C9;
  v55 = *(&off_9DA90 + (a34 ^ 0x3A0));
  v56 = (*(v55 - 2 + (((((69 * v51[55]) - ((69 * v51[55]) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * v51[55])) ^ 0xD5)) - 18) ^ 0x57;
  v57 = ((*(*a25 + 51) << 56) | (*(*a25 + 56) << 48)) ^ 0xB4A3F0758D989FABLL ^ (((0xFFFFFFFF00000000 * ((v56 >> 2) | (v56 << 6))) ^ (v53 - (v53 & 0xFFFFFF00FFFFFFFFLL | (((v56 >> 2) | (v56 << 6)) << 32))) ^ ((((v56 >> 2) | (v56 << 6)) << 32) - (((v56 >> 2) << 33) & 0xFFFFFFF7FFFFFFFFLL) - 0x524F0AC4D0490303) ^ 0xADB0F53B2FB6FCFDLL) + v53);
  v61 = ((v51[4] >> 4) | (16 * v51[4])) ^ 0x5CLL;
  v62 = (((*(v55 + 529 + v61) >> 5) | (8 * *(v55 + 529 + v61))) << 8) ^ 0x764DA23C495917ALL;
  LOBYTE(v53) = (*(v55 - 2 + ((69 * *(*a25 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v58 = ((v53 >> 2) | (v53 << 6)) << 32;
  v59 = *(*a25 + 8) << 24;
  v60 = *(*a25 + 33) << 16;
  v63 = ((v59 & 0xDE000000 ^ 0x2F18FF5EE10B7CD6 ^ (v60 & 0xFC0000 ^ 0x75202470ACE09C56 ^ ((v62 & (*(*a25 + 19) ^ 0x2FF5FF73F5DDFFFBLL) | *(*a25 + 19) & 0x85) ^ 0x28B2F164996D5C0) & (v60 ^ 0x3FFFFFFFFFFFFFFFLL)) & (v59 ^ 0x7FFFFFFFFFFFFFFFLL)) & ~v58 | v58 & 0xE400000000) ^ ((v51[38] << 40) | (v51[43] << 48));
  return sub_182EC(0xFFFFFF0000000000 * v51[12], 250, ((v63 & 0x4AF54021979D7FCDLL ^ (v51[46] << 56) & 0x4A00000000000000 ^ 0xB50ABFFE78638AF2) & ((v51[46] << 56) & 0xB500000000000000 ^ 0xC956176A306B0FDALL ^ v63 & 0xB50ABFDE68628032) | (v63 & 0x4AF54021979D7FCDLL ^ (v51[46] << 56) & 0x4A00000000000000) & 0x2A1400187947005) ^ 0xDED53971F08B6FE8, v57, v54, v62, a40, *(v43 - 176), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_18390@<X0>(int a1@<W8>)
{
  v7 = (a1 + 209724836) & 0xF37FD88F;
  v8 = STACK[0x350];
  v9 = LODWORD(STACK[0x4C4]) ^ 0xCFCDEBEB;
  v10 = (v7 ^ 0x9F9BD757) & (2 * LODWORD(STACK[0x4C4]));
  v11 = 742307843 * ((-383716899 - (v2 | 0xE920F1DD) + (v2 | 0x16DF0E22)) ^ 0x8FD8377);
  *(v6 - 172) = v1 - v11 + 870003632;
  v12 = v9 - v11 + v10 + 830177151;
  *(v6 - 184) = v5;
  v13 = STACK[0x2B8];
  *(v6 - 208) = v3;
  *(v6 - 200) = v13;
  *(v6 - 192) = v12;
  *(v6 - 188) = v11 + a1 + 1421511924;
  *(v6 - 216) = v8;
  v14 = (*(v4 + 8 * (a1 + 1617)))(v6 - 216);
  v15 = *(v6 - 176);
  LODWORD(STACK[0x504]) = v15;
  return (*(v4 + 8 * ((38 * (v15 == ((35 * (((v7 - 128) | 0x82) ^ 0x94)) ^ 0xB4D42A28))) ^ v7)))(v14);
}

uint64_t sub_184C8()
{
  v6 = 1564307779 * ((2 * ((v1 - 152) & 0x41AC7EF644526C78) - (v1 - 152) + 0x3E538109BBAD9384) ^ 0x1B9075732CA05F97);
  *(v1 - 160) = -1948175035;
  *(v1 - 156) = 317293978;
  v2 = dword_A8290;
  v3 = v1 - 176;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2 + v6;
  *(v1 - 112) = -2030744672 - 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 120) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 116) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97) - 750401412;
  *(v1 - 152) = -750401434 - 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97);
  *(v1 - 148) = 1564307779 * ((2 * ((v1 - 152) & 0x44526C78) - (v1 - 152) - 1146252412) ^ 0x2CA05F97) - 750401524;
  v4 = (*(v0 + 18088))(v1 - 152);
  return (*(v0 + 8 * *(v1 - 136)))(v4);
}

uint64_t sub_18898@<X0>(int a1@<W8>)
{
  v7 = (v1 ^ 0x66F91AA8) + (a1 & 0xCDF23550) - 12648448;
  v8 = ((((v6 - 144) | 0x1EE1D691) - ((v6 - 144) & 0x1EE1D691)) ^ 0xB1C65489) * v4;
  *(v6 - 128) = v7 ^ v8;
  *(v6 - 136) = v5;
  *(v6 - 144) = v8 + v2 - 427;
  v9 = (*(v3 + 8 * (v2 ^ 0xB19)))(v6 - 144);
  return (*(v3 + 8 * (((*(v6 - 140) != 157 * (v2 ^ 0x38E) + 262714299) * ((v2 + 38) ^ 0x3A9)) ^ v2)))(v9);
}

uint64_t sub_189AC(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v45 = v41;
  *v43 = a41 + 513153;
  v46 = *a3;
  v47 = 143681137 * ((v44 - 152) ^ 0x11788207D4A71C5ALL);
  v48 = v45 + 218857968 - v47;
  *(v44 - 128) = -143681137 * ((v44 - 152) ^ 0xD4A71C5A);
  *(v44 - 124) = v47 ^ 0x2B ^ (v45 + 218857968);
  *(v44 - 152) = v48 - 36;
  *(v44 - 132) = v48;
  v49 = v44 - 176;
  *(v49 + 64) = v47 + 5119;
  *(v49 + 32) = v46 - v47;
  *(v44 - 120) = v47 - 288126657 + v45;
  v50 = (*(v42 + 8 * (a2 + v45 + 1605)))(v44 - 152);
  return (*(v42 + 8 * *(v44 - 136)))(v50);
}

uint64_t sub_18B00@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v4 + 32;
  v10 = (v7 ^ v9) + v3;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a3 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * a1) | v6)))();
}

void sub_18BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v34 - 128) = v30 - ((((v34 - 144) | 0x92ACA6BC) - (v34 - 144) + ((v34 - 144) & 0x6D535940)) ^ 0x3D8B24A4) * v32 + 567;
  *(v34 - 112) = &a30;
  *(v34 - 104) = v33;
  *(v34 - 144) = &a18;
  *(v34 - 136) = &a18;
  *(v34 - 120) = a12;
  (*(v31 + 8 * (v30 ^ 0x940)))(v34 - 144);
  JUMPOUT(0xF148);
}

uint64_t sub_18D88@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, unsigned int a39, unsigned int a40, uint64_t a41, char a42)
{
  v49 = *(v44 + 8 * a6);
  if (a42 == 2)
  {
    return sub_18EE8();
  }

  if (a42 != 1)
  {
    return sub_42FEC(a1, a2, a3, a4, a5, v49, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
  }

  v51 = (v42 + v46 + 2077315864);
  v52 = *v51 ^ v43;
  LODWORD(v51) = (((v51[2] ^ v43) << 16) | ((v51[3] ^ v43) << 24)) + ((v51[1] ^ v43) << (a5 - 30)) + v52;
  *(v47 + 4 * (v45 ^ 0x1EF454C6)) = v51 + v48 - 2 * (v51 & 0x34D4291D ^ v52 & 0x10);
  return (*(v44 + 8 * ((87 * ((v46 + 2077315868) < 0x40)) ^ (a5 + 1143))))();
}

uint64_t sub_18EE8()
{
  v10 = (v0 + v2 + v6);
  v11 = ((*v10 ^ v3) << 24) | ((v10[1] ^ v3) << 16) | ((v10[2] ^ v3) << 8);
  *(v8 + 4 * (((((v2 ^ 0xE3DE0744) + 1743825828) ^ v2 ^ ((v2 ^ 0x8DF407BA) + 165325662) ^ ((v2 ^ 0x2A14AC9B) - 1371930499) ^ ((v2 ^ 0x3FEFFF7D) - 1144958053)) >> 2) ^ v5)) = (v11 | v10[3] ^ v3) + v9 - 2 * ((v11 | v10[3] ^ v3) & 0x34D4291D ^ (v10[3] ^ v3) & 0x10);
  return (*(v4 + 8 * ((415 * ((v2 + 4 + v6) < 0x40)) ^ v1)))(v7 + 16);
}

uint64_t sub_18FE4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = vdupq_n_s32(0x46732821u);
  *&STACK[0x258] = v5;
  *&STACK[0x268] = v5;
  return (*(v4 + 8 * ((((a3 & 0xFFFFFFF8) != 8) * ((a4 ^ 0x1D2) - 1559)) ^ (a4 - 1185))))();
}

uint64_t sub_19038(uint64_t a1, unsigned int a2)
{
  v4 = (v3 - 797405627) & 0x2F876F7C;
  if (((v4 ^ 0x19139C22) + a2) < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -841432684 - a2;
  }

  return (*(v2 + 8 * (((v5 - 1726767307 >= 0) * (((v4 - 138) ^ 0x781) + 623)) ^ v4)))(a1, v5 - 1);
}

uint64_t sub_190DC@<X0>(uint64_t a1@<X2>, char a2@<W4>, unsigned int a3@<W8>)
{
  v8 = *(v7 - 220 + a3 + 72);
  v9 = ((a3 << ((a2 + v3 + 122) ^ (a2 + 1))) & 0xB3BFEFD8) + (a3 ^ 0xD9DFF7ED) + v5;
  *(a1 + v9) = (HIBYTE(v8) ^ 0x56) - ((2 * (HIBYTE(v8) ^ 0x56)) & 0x64) + 50;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0x65) - ((2 * (BYTE2(v8) ^ 0x65)) & 0x64) + 50;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 0x51) - ((2 * (BYTE1(v8) ^ 0x51)) & 0x64) + 50;
  *(a1 + v9 + 3) = v8 ^ 0x4E;
  return (*(v6 + 8 * (((a3 + 4 < *(v7 - 128)) * v4) ^ v3)))();
}

uint64_t sub_191B0@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = (v11 + 4 * v9);
  v13 = HIDWORD(a1) + (*v12 ^ v3) + HIDWORD(v5) + v7 * (*(v10 + 4 * v9) ^ v3);
  *(v12 - 1) = v3 + (v4 ^ v6) + v13 - (a2 & (2 * v13)) - 660;
  return (*(v8 + 8 * (((2 * (v9 + 1 == a3)) | (4 * (v9 + 1 == a3))) ^ v4)))();
}

uint64_t sub_19218(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a6 - 32;
  v11 = *(v10 + v8);
  v12 = (a5 - 32 + v8);
  *(v12 - 1) = *(v10 + v8 - 16);
  *v12 = v11;
  return (*(v7 + 8 * ((56 * (((a3 ^ (v9 - 11)) ^ (a4 == 32)) & 1)) ^ a7)))();
}

uint64_t sub_1922C@<X0>(_DWORD *a1@<X8>, uint8x8_t a2@<D2>)
{
  a2.i32[0] = *v2;
  v5 = vmovl_u8(a2).u64[0];
  *a1 = vuzp1_s8(vadd_s16(vsub_s16(v5, vand_s8(vadd_s16(v5, v5), 0x64006400640064)), 0x32003200320032), 0x64006400640064).u32[0];
  return (*(v4 + 8 * ((28 * ((((v3 ^ 0x1Cu) - 674) ^ 0x209) != 4)) ^ v3 ^ 0x1C)))();
}

uint64_t sub_192A8()
{
  v10 = (v5 - v7 - 1) & (v1 ^ 0x8Du);
  v12.val[0].i64[0] = v10;
  v12.val[0].i64[1] = (v5 - v7 + 14) & 0xF;
  v12.val[1].i64[0] = (v5 - v7 + 13) & 0xF;
  v12.val[1].i64[1] = (v5 - v7 + 12) & 0xF;
  v12.val[2].i64[0] = (v5 - v7 + 11) & 0xF;
  v12.val[2].i64[1] = (v5 - v7 + 10) & 0xF;
  v12.val[3].i64[0] = (v5 - v7 + 9) & 0xF;
  v12.val[3].i64[1] = (v5 - v7) & 0xFLL ^ 8;
  *(v9 + -8 - v7 + v5) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v0 + -8 - v7 + v5), *(v2 + v10 - 7)), veor_s8(*(v10 + v3 - 2), *(v10 + v4 - 5)))), 0x3232323232323232), vmul_s8(*&vqtbl4q_s8(v12, xmmword_88460), 0x5959595959595959)));
  return (*(v8 + 8 * ((4 * (8 - (v6 & 0x18) == -v7)) | (8 * (8 - (v6 & 0x18) == -v7)) | v1)))(v5 - (v6 & 0x18), xmmword_88460);
}

uint64_t sub_19450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v25 = 21 * (v24 ^ 0x3CC);
  v26 = (a22 ^ (a5 + v25 - 1995)) + a23;
  v27 = a19 < a18;
  if (v27 == v26 > 0x181F614D)
  {
    v27 = 61 * (v25 ^ 0x7C4u) + v26 - 404710625 < a19;
  }

  return (*(v23 + 8 * ((!v27 * (((v25 - 1897046780) & 0x71129B7D) - 21)) ^ v25)))(a1, v26, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_195B8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = v24 + 1168;
  v31 = &STACK[0x5E0] + STACK[0x260];
  v32 = a1 + 528;
  v33 = a1 + 800;
  LODWORD(STACK[0x308]) = v26;
  switch(v28)
  {
    case 32:
      v34 = 19;
      break;
    case 20:
      v34 = 15;
      break;
    case 16:
      v34 = 18;
      break;
    default:
      LODWORD(STACK[0x300]) = 0;
      goto LABEL_9;
  }

  LODWORD(STACK[0x300]) = v34;
LABEL_9:
  v35 = STACK[0x340] + 643;
  v36 = (v27 ^ 0xCD5B31E8) + 2063531584 + ((v27 << (STACK[0x340] ^ 0xA5)) & 0x9AB663D0);
  v37 = 843532609 * ((v29 - 216) ^ 0x5C4D5485);
  *(v29 - 152) = v37 + STACK[0x340] - 129;
  *(v29 - 144) = 0;
  *(v29 - 168) = v30;
  *(v29 - 160) = v31;
  *(v29 - 184) = &STACK[0x494];
  *(v29 - 176) = 0;
  *(v29 - 192) = v36 ^ v37;
  *(v29 - 216) = v33;
  *(v29 - 200) = v32;
  v38 = (*(v25 + 8 * a24))(v29 - 216);
  return (*(v25 + 8 * ((450 * (*(v29 - 208) == -1261164275)) ^ v35)))(v38);
}

uint64_t sub_19940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 1073) | 0x96) ^ 0x6FB)) | v3)))();
}

void sub_19978()
{
  v4 = STACK[0x530];
  v5 = 742307843 * ((2 * (((v3 - 216) ^ 0xBBE7F91) & 0x505349E8) - ((v3 - 216) ^ 0xBBE7F91) - 1347635691) ^ 0xBA3044D1);
  *(v3 - 216) = -473373760 - v5 + v0 + 13;
  *(v3 - 208) = v4;
  *(v3 - 196) = 602092488 - v5;
  (*(v1 + 8 * (v0 + 2186)))(v3 - 216);
  STACK[0x458] = *(v1 + 8 * v0);
  STACK[0x308] = v2;
  JUMPOUT(0x19A28);
}

void sub_19A34()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x19A48);
}

uint64_t sub_19B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v46 ^ (v45 + 324);
  v51 = (*(v47 + 8 * (v46 + 1317)))(&a45, 0);
  (*(v47 + 8 * (v46 + 1280)))(v51);
  v52 = (*(v47 + 8 * (v46 + 1280)))();
  v53 = *v48;
  v54 = 1664525 * (((v53 ^ (v53 >> 30) ^ 0x323144CF) - 1284451497) ^ ((v53 ^ (v53 >> 30) ^ 0xAA0FA45C) + 726545350) ^ ((v53 ^ (v53 >> 30) ^ 0x983EE093) + 427783947)) - 362575568;
  v48[1] = ((v52 + 880541013 - ((2 * v52) & 0x68F7FAAA)) ^ 0x347BFD55) + ((v48[1] - ((2 * v48[1]) & 0xD09CCBA2) - 397515311) ^ v54 ^ ((v54 ^ 0xA729E73A) + 872382664) ^ ((v54 ^ 0xFDA9DB3A) + 1769979080) ^ ((v54 ^ 0x7E5C5BBD) - 360039359) ^ ((v54 ^ 0x4FF5FFBF) - 618424253) ^ 0x8367FDD3);
  *(v49 - 124) = (v50 - 2042978751) ^ a35;
  v55 = v49 - 176;
  *(v55 + 32) = 2 - a35;
  v56 = (v50 - 447985790) ^ a35;
  *(v49 - 136) = v56 ^ 0x53;
  *(v49 - 132) = a35 + 1;
  *(v49 - 152) = v56;
  *(v49 - 148) = a35 + v50 - 447985790 - 31;
  *(v55 + 56) = a38;
  v57 = (*(v47 + 8 * (v50 - 1500579948)))(v49 - 152);
  return (*(v47 + 8 * *(v49 - 128)))(v57);
}

uint64_t sub_19DA4@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x4E8])++;
  *STACK[0x2D0] = v3 + 513153;
  v4 = *STACK[0x2D8];
  v5 = STACK[0x2A0];
  *(v2 - 188) = (a1 - 542397458) ^ STACK[0x2A0];
  *(v2 - 184) = STACK[0x298];
  *(v2 - 216) = (a1 - 442992481) ^ v5;
  *(v2 - 212) = v5 + a1 - 442992481 + 53;
  *(v2 - 208) = v4 - v5;
  *(v2 - 200) = (a1 - 442992529) ^ v5;
  *(v2 - 196) = v5 | 1;
  v6 = (*(v1 + 8 * (a1 + 1345)))(v2 - 216);
  return (*(v1 + 8 * *(v2 - 192)))(v6);
}

uint64_t sub_19E50(uint64_t a1)
{
  v1 = *a1 + 1361651671 * (((a1 | 0xB6552830) - a1 + (a1 & 0x49AAD7CF)) ^ 0x6577D8BC);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v1 + 143681137 * (((&v5 | 0x9D5253EB) + (~&v5 | 0x62ADAC14)) ^ 0x49F54FB0) + 562359048;
  v6 = v2;
  v7 = v3;
  return (*(*(&off_9DA90 + (v1 ^ 0xDE7B15FB)) + (v1 ^ 0xDE7B1D4A) - 1))(&v5);
}

void sub_19F58(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (v3 + 420716342 >= (v1 ^ 0x188))
  {
    a1 = -a1;
  }

  sub_3EE94(a1 + v3);
}

void sub_1A110(uint64_t a1)
{
  v1 = 1564307779 * (((a1 | 0x7695409B) - (a1 & 0x7695409B)) ^ 0xE1988C88);
  __asm { BRAA            X14, X17 }
}

void sub_1A1D4(uint64_t a1)
{
  if (*(*(a1 + 24) + 4) - 1726767306 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1726767306;
  }

  else
  {
    v2 = 1726767306 - *(*(a1 + 24) + 4);
  }

  v1 = *(a1 + 32) + 843532609 * (((a1 | 0xB1CD8508) - (a1 | 0x4E327AF7) + 1311931127) ^ 0xED80D18D);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1A304@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 32);
  if ((a1 - 1726767307) >= 0x7FFFFFFF)
  {
    v7 = -v3;
  }

  else
  {
    v7 = v1;
  }

  v10[1] = v7;
  *(v5 - 120) = (v2 + 522) ^ (1564307779 * ((((v5 - 136) | 0xC622D8A1) - (v5 - 136) + ((v5 - 136) & 0x39DD2758)) ^ 0x512F14B2));
  *(v5 - 136) = v6;
  *(v5 - 128) = v10;
  return (*(v4 + 8 * (v2 ^ 0xC67)))(v5 - 136);
}

uint64_t sub_1A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, int a14, int a15, char *a16, uint64_t a17, char *a18)
{
  v22 = 50899313 * (&a14 ^ 0xC861C456);
  a16 = &a13;
  a17 = v19;
  a18 = &a10;
  a14 = v22 ^ 0x5247F43;
  a15 = (v21 + 392) ^ v22;
  v23 = (*(v20 + 8 * (v21 + 2043)))(&a14);
  return (*(v20 + 8 * ((31 * (*(v19 + 24) != v18)) ^ v21)))(v23);
}

uint64_t sub_1A628@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + (v2 ^ 0xC59u);
  *(a1 + v5 - 2128) = *(v3 + v5 - 2128) - ((2 * *(v3 + v5 - 2128)) & 0x64) + 50;
  return (*(v4 + 8 * ((650 * (v5 == 2128)) ^ v2)))();
}

uint64_t sub_1A66C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1A694(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v15 = 1564307779 * ((v14 + 493274148 - 2 * ((v14 - 136) & 0x1D66C4AC)) ^ 0x8A6B08BF);
  *(v14 - 136) = v15 + v13 + 1429;
  *(v14 - 128) = &a12;
  *(v14 - 120) = v15 + ((a4 << 6) & 0xCD7CDF80) + ((v13 - 58) ^ (32 * a4) ^ 0xE6BE6DC7) + 2103443132;
  v16 = (*(v12 + 8 * (v13 + 1722)))(v14 - 136);
  return (*(v12 + 8 * ((445 * ((v13 - 1726766985 + *(a9 + 4) - 909) < 0x7FFFFFFF)) ^ v13)))(v16);
}

uint64_t sub_1A7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

void sub_1A850(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1785193651 * (((a1 | 0x3A136D46) - a1 + (a1 & 0xC5EC92B9)) ^ 0x29CF8166));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A974(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v17 = 577 * (a2 ^ 0x6CC);
  *(&a12 + a5) = v12 + v17 + HIDWORD(a1) - (v15 & (2 * HIDWORD(a1))) - 1154;
  return (*(v16 + 8 * ((((v17 ^ 0x485) + 2123 + 38 * (v17 ^ 0x485) + 694) * (v14 + 1 == v13)) ^ v17)))();
}

uint64_t sub_1A9E0(uint64_t a1)
{
  v2 = 143681137 * (a1 ^ 0xD4A71C5A);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 28) - v2;
  v8 = *a1 + 2013066611 + v2;
  v9 = 1037613739 * ((-255044930 - (&v11 | 0xF0CC52BE) + (&v11 | 0xF33AD41)) ^ 0xDE31803E);
  v15 = v9 ^ (v8 + 1568);
  v17 = v6;
  v11 = v9 - 807041751 * v7 + 788322856;
  v13 = v3;
  v14 = v5;
  v12 = v4;
  result = (*(*(&off_9DA90 + v8) + v8 + 2146))(&v11);
  *(a1 + 4) = v16;
  return result;
}

void sub_1AB14(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4) - 1726767306;
  if (v2 < 0)
  {
    v2 = 1726767306 - *(*(a1 + 24) + 4);
  }

  v1 = *a1 - 2066391179 * ((((2 * a1) | 0x48B2A1A) - a1 + 2109369075) ^ 0x2D621715);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, char a16, uint64_t a17, _BYTE *a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22)
{
  a20 = &a13;
  a21 = &a16;
  a22 = a18;
  HIDWORD(a19) = v22 + (((&a19 | 0xC656D417) - (&a19 & 0xC656D417)) ^ 0xD8745942) * v23 + 793;
  (*(v24 + 8 * (v22 ^ 0x96E)))(&a19);
  a19 = a18;
  a20 = &a11;
  HIDWORD(a21) = v22 + 210068311 * ((-1481193942 - (&a19 | 0xA7B6C62A) + (&a19 | 0x584939D5)) ^ 0xAAC2963D) + 1082;
  (*(v24 + 8 * (v22 ^ 0x91C)))(&a19);
  a20 = a18;
  LODWORD(a19) = v22 - 50899313 * (((&a19 | 0x3BD61B01) - &a19 + (&a19 & 0xC429E4F8)) ^ 0xF3B7DF57) + 986;
  v25 = (*(v24 + 8 * (v22 + 1820)))(&a19);
  return (*(v24 + 8 * (((a21 == -1261164275) * (((v22 + 1136) | 0x11) ^ 0x29B)) ^ v22)))(v25);
}

void sub_1ADD8(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  a4 = a1;
  a5 = v7;
  a6 = v8 + 1785193651 * ((((2 * &a3) | 0xE4FFA836) - &a3 + 226503653) ^ 0xE1A3383B) + 584;
  a3 = v7;
  (*(v6 + 8 * (v8 ^ 0x9F7)))(&a3);
  sub_33000();
}

uint64_t sub_1AEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t *a11, uint64_t a12, unsigned int a13, int a14)
{
  v17 = 1785193651 * (((&a10 | 0xBBAB27D7) - &a10 + (&a10 & 0x4454D828)) ^ 0xA877CBF7);
  a11 = &a9;
  a12 = v14;
  a13 = 2023425342 - v17;
  a14 = v15 - v17 - 550;
  a10 = 1332270177 - v17;
  v18 = (*(v16 + 8 * (v15 ^ 0xB9E)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == -1261164275) * (903 * (v15 ^ 0x37D) + 143)) ^ v15)))(v18);
}

uint64_t sub_1AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = &a17;
  *(v22 - 120) = v19;
  *(v22 - 128) = v21 - ((2 * ((v22 - 136) & 0x46156F40) - (v22 - 136) + 971673789) ^ 0xED4D8CE7) * v20 + 953;
  v23 = (*(v18 + 8 * (v21 ^ 0x9E9)))(v22 - 136);
  return (*(v18 + 8 * ((204 * (((v21 - 1) ^ (*(v22 - 112) > v17 + ((v21 + 1056356739) & 0xC10945EF) - 197)) & 1)) ^ v21)))(v23);
}

uint64_t sub_1B1DC@<X0>(char a1@<W1>, char a2@<W7>, uint64_t a3@<X8>)
{
  v8 = *(a3 + v3 + 72);
  v9 = ((v3 << ((v4 + 93) ^ 0xA5)) & 0xB3EFEFF8) + (v3 ^ 0x59F7F7FD) - 1509423101;
  *(v5 + v9) = (a1 ^ HIBYTE(v8)) - (a2 & (2 * (a1 ^ HIBYTE(v8)))) + 50;
  *(v5 + v9 + 1) = (v6 ^ BYTE2(v8)) - (a2 & (2 * (v6 ^ BYTE2(v8)))) + 50;
  *(v5 + v9 + 2) = (BYTE1(v8) ^ 0x51) - (a2 & (2 * (BYTE1(v8) ^ 0x51))) + 50;
  *(v5 + v9 + 3) = v8 ^ 0x4E;
  return (*(v7 + 8 * ((437 * (v3 + 4 < *(a3 + 92))) ^ v4)))();
}

uint64_t sub_1B2A8()
{
  LODWORD(STACK[0x348]) = v0;
  STACK[0x4F8] -= 432;
  return (STACK[0x478])();
}

uint64_t sub_1B334@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x248] + a2 + 72);
  v7 = ((2 * a2) & 0xCEFFFBF0) + ((v3 + 1736440970) ^ a2) + v2;
  *(a1 + v7) = v6 ^ 0x4E;
  *(a1 + v7 + 1) = (BYTE1(v6) ^ 0x51) + ~(2 * ((BYTE1(v6) ^ 0x51) & 0x3A ^ BYTE1(v6) & 8)) + 51;
  *(a1 + v7 + 2) = (BYTE2(v6) ^ 0x65) - ((2 * (BYTE2(v6) ^ 0x65)) & 0x64) + 50;
  *(a1 + v7 + 3) = (HIBYTE(v6) ^ 0x56) - 2 * ((HIBYTE(v6) ^ 0x56) & 0x33 ^ HIBYTE(v6) & 1) + 50;
  return (*(v5 + 8 * (((a2 + 4 >= LODWORD(STACK[0x2A4])) * v4) ^ v3)))();
}

uint64_t sub_1B8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v20 - ((~((v21 - 136) | 0x93D12884) + ((v21 - 136) & 0x93D12884)) ^ 0xB889CB21) * v17 + 557;
  *(v21 - 120) = &a17;
  *(v21 - 136) = a16;
  v22 = (*(v19 + 8 * (v20 + 1501)))(v21 - 136);
  return (*(v19 + 8 * ((1156 * (*(v21 - 112) > ((v20 + 542) ^ (v18 + 1085)))) ^ v20)))(v22);
}

uint64_t sub_1B968(uint64_t a1, uint64_t a2)
{
  *(a2 + v4 - 1) = ((v2 + v3) ^ v6) * (v2 + v3 + 17);
  v9 = *(v8 + 8 * (((v4 != 1) * v7) ^ v5));
  return v9(v9, a2);
}

uint64_t sub_1B9B0(int8x8_t a1, int8x8_t a2)
{
  v9 = v2 + 8;
  *(v5 + v9) = vadd_s8(vsub_s8(*(v8 + v9), vand_s8(vadd_s8(*(v8 + v9), *(v8 + v9)), a1)), a2);
  return (*(v7 + 8 * (((v4 != v9) * v6) ^ v3)))();
}

uint64_t sub_1BA60@<X0>(int a1@<W8>)
{
  *v1 = v9 ^ v4;
  v7 = a1 ^ v3;
  v13 = v10;
  v12 = v2 - 1388665877 * (((&v12 | 0xC0EEBB05) - (&v12 & 0xC0EEBB05)) ^ 0x4D43D9E9) + a1 + 1469;
  (*(v5 + 8 * (a1 ^ (v3 + 2395))))(&v12);
  v12 = v7 - 1388665877 * ((((&v12 | 0x20300AC0) ^ 0xFFFFFFFE) - (~&v12 | 0xDFCFF53F)) ^ 0x526297D3) + 817;
  v13 = v11;
  (*(v5 + 8 * (v7 + 1493)))(&v12);
  return v6 ^ v4;
}

uint64_t sub_1BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v36 = *(&a19 + v31 + 72);
  v37 = (v36 >> (v35 + ((v33 + 66) | 0x12) + 16)) ^ 0x56;
  v38 = ((2 * v31) & 0xF7AFCFD8) + (v31 ^ 0x7BD7E7ED) + v32;
  *(a1 + v38) = v37 - ((2 * v37) & 0x64) + 50;
  *(a1 + v38 + 1) = (BYTE2(v36) ^ 0x65) - ((2 * (BYTE2(v36) ^ 0x65)) & 0x64) + 50;
  *(a1 + v38 + 2) = (BYTE1(v36) ^ 0x51) - ((2 * (BYTE1(v36) ^ 0x51)) & 0x64) + 50;
  *(a1 + v38 + 3) = v36 ^ 0x4E;
  return (*(v34 + 8 * (((2 * (v31 + 4 < a31)) | (32 * (v31 + 4 < a31))) ^ v33)))();
}

uint64_t sub_1BFF0@<X0>(uint64_t a1@<X8>)
{
  v9 = v1 - 1 + (*(*(v7 + 8) + 4 * v2) ^ (v4 + v3 + 509 - 1180));
  *(*(a1 + 8) + 4 * v2) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((50 * (v2 + 1 == v8)) ^ v3)))();
}

uint64_t sub_1C078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = (v19 + 510) ^ (1564307779 * ((((2 * (v21 - 136)) | 0x9D5A8418) - (v21 - 136) - 1319977484) ^ 0xD9A08E1F));
  *(v21 - 136) = &a17;
  *(v21 - 128) = a16;
  (*(v18 + 8 * (v19 ^ 0xC6B)))(v21 - 136);
  v22 = 1785193651 * ((2 * ((v21 - 136) & 0x5A883020) - (v21 - 136) - 1518874662) ^ 0xB6AB23FA);
  *(v21 - 136) = a15;
  *(v21 - 128) = v19 - v22 - 88;
  *(v21 - 124) = 1855785489 - v22;
  (*(v18 + 8 * (v19 ^ 0xC33)))(v21 - 136);
  *(v21 - 120) = a15;
  *(v21 - 128) = v19 - ((((v21 - 136) | 0x9C3391) - ((v21 - 136) & 0x9C3391)) ^ 0xD43B2FCB) * v20 + 15;
  *(v21 - 136) = a16;
  v23 = (*(v18 + 8 * (v19 + 959)))(v21 - 136);
  return (*(v18 + 8 * (((*(v21 - 112) > v17) * ((v19 - 1954432291) & 0x747E40E6 ^ (v19 + 1406693074) & 0xAC278CF9 ^ 0x1D5)) ^ v19)))(v23);
}

uint64_t sub_1C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v25 = 143681137 * (((&a15 | 0x1A05EB13) - &a15 + (&a15 & 0xE5FA14E8)) ^ 0xCEA2F749);
  a16 = a13;
  LODWORD(a15) = (((2 * v21) & 0xE79F6F7C) - 591430660 + (v21 ^ 0x73CFB7BE)) ^ v25;
  LODWORD(a17) = 1806 - v25;
  (*(v23 + 18120))(&a15);
  a18 = 618 - ((((2 * &a15) | 0x5FE5C5D4) - &a15 - 804446954) ^ 0x80D560F2) * v24;
  a16 = v20;
  a17 = a13;
  (*(v23 + 17736))(&a15);
  v26 = 1037613739 * (&a15 ^ 0xD1022D7F);
  HIDWORD(a17) = v26 ^ 0x84F;
  a18 = (v19 ^ 0xFDDCD7FF) + ((2 * v19) & 0xFBB9AFFE) - v26 + 2134878719;
  a15 = v18;
  a16 = a13;
  v27 = (*(v23 + 17928))(&a15);
  return (*(v23 + 8 * ((474 * (a17 != v22)) ^ 0xDFu)))(v27);
}

uint64_t sub_1C3B4()
{
  v1.n128_u64[0] = 0x3232323232323232;
  v1.n128_u64[1] = 0x3232323232323232;
  v2.n128_u64[0] = 0x6464646464646464;
  v2.n128_u64[1] = 0x6464646464646464;
  return sub_31E08(v0 - 220, v1, vdupq_n_s32(0x34D4291Du), vdupq_n_s32(0xB4D4290D), v2);
}

uint64_t sub_1C3C0()
{
  v2 = v0 - 554;
  v3 = STACK[0x4D0];
  v4 = (v0 - 1657355702 + LODWORD(STACK[0x428]) - 378);
  STACK[0x4B0] = v4;
  return (*(v1 + 8 * ((172 * (v4 == 0)) ^ v2)))(v3);
}

uint64_t sub_1C454@<X0>(unsigned int a1@<W8>)
{
  v8 = (v5 + 4 * v1);
  v9 = v2 & 0x80000000;
  v10 = v1 + 1;
  v11 = *(v5 + 4 * v10);
  v12 = v8[397] ^ ((v11 & 0x7FFFFFFE | v9) >> 1);
  *v8 = (v12 + v3 - ((v12 << ((a1 + 83) & 0xD9 ^ 0x91)) & v6)) ^ *(v7 - 168 + 4 * (v11 & 1));
  return (*(v4 + 8 * ((834 * (v10 == 227)) ^ a1)))();
}

void sub_1C5F8()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1C63CLL);
}

uint64_t sub_1C6DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1428);
  STACK[0x4F8] = STACK[0x260] + 256;
  STACK[0x548] = v1 + 1432;
  if (v3 <= 0x20 && ((1 << v3) & 0x100110000) != 0)
  {
    return (*(v2 + 8 * ((167 * (*(a1 + 476) == ((STACK[0x340] + 643) ^ 0x626))) ^ (STACK[0x340] + 643))))();
  }

  v5 = STACK[0x4F8] - 256;
  STACK[0x260] = v5;
  STACK[0x4F8] = v5;
  return (STACK[0x408])();
}

void sub_1C82C()
{
  STACK[0x2C8] = STACK[0x288];
  STACK[0x478] = *(v1 + 8 * v0);
  JUMPOUT(0x12CE0);
}

uint64_t sub_1C88C@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x9AB));

  return v3(v1);
}

void sub_1C8C0(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x4C0]) = a2;
  LODWORD(STACK[0x34C]) = a1;
  LODWORD(STACK[0x438]) = v3;
  LODWORD(STACK[0x390]) = v2;
  LODWORD(STACK[0x42C]) = v4 + 64;
  JUMPOUT(0xBDFCLL);
}

uint64_t sub_1C9C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31)
{
  if (a31 == 2)
  {
    return (*(v31 + 8 * (((2 * (((a30 == 0) ^ (a4 ^ (a4 + 57))) & 1)) & 0xDF | (32 * (((a30 == 0) ^ (a4 ^ (a4 + 57))) & 1))) ^ (v32 + a4 + 1111))))(a9);
  }

  if (a31 == 1)
  {
    return (*(v31 + 8 * (((a30 != 0) * ((a4 + 1953720012) & 0x1C2805DF ^ 0x4D7)) ^ (v32 + a4 + 1111))))(a9);
  }

  return sub_1CABC();
}

uint64_t sub_1CABC@<X0>(int a1@<W8>)
{
  v8 = v5 - v1;
  *(v8 + 91) = ((v1 + v3) ^ v4) * (v1 + v3 + 17);
  *(v8 + 90) = (v2 ^ (v1 + v3) ^ 8) * (v1 + v3 + 18);
  return (*(v7 + 8 * (((v1 == 90) * v6) ^ a1)))(0);
}

uint64_t sub_1CB54@<X0>(int a1@<W2>, int a2@<W3>, unsigned int a3@<W5>, int a4@<W8>)
{
  v7 = *(v5 + 48 * a4 + 36);
  v9 = v7 + a2 < (v4 ^ a3) && v7 != a1 + ((v4 + 882) ^ 5) - 1864;
  return (*(v6 + 8 * ((v4 + 882) ^ (2 * v9))))();
}

uint64_t sub_1CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19)
{
  v25 = 143681137 * ((&a15 - 709854109 - 2 * (&a15 & 0xD5B07C63)) ^ 0x1176039);
  a17 = v24 - v25 + 187;
  LODWORD(a15) = (((2 * v21) & 0xEDBEF7F6) + 1504688063 + (v21 ^ 0xF6DF7F5E ^ (v24 - 513558182) & 0x1E9C44F7)) ^ v25;
  a16 = a13;
  (*(v23 + 8 * (v24 ^ 0xE8A)))(&a15);
  v26 = ((2 * (&a15 & 0x5E054410) - &a15 - 1577403409) ^ 0x70F89690) * v22;
  a18 = (v24 + 508) ^ v26;
  a19 = (v20 ^ 0xFFDFE1FE) + ((2 * v20) & 0xFFBFC3FC) - v26 + 2101125120;
  a15 = v19;
  a16 = a13;
  v27 = (*(v23 + 8 * (v24 + 622)))(&a15);
  return (*(v23 + 8 * ((461 * (a17 == -1261164275)) ^ v24)))(v27);
}

uint64_t sub_1CD0C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((1212 * (v5 == ((136 * (v3 ^ 0x33Cu)) ^ 0x440))) ^ (v3 - 341))))();
}

uint64_t sub_1CD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v13 = *(v11 + v9 * v10 + 36);
  v15 = v13 - 1925087724 > 552000786 || v13 - 1925087724 < a8;
  v16 = v13 != a7 + ((v8 - 488) | 0x20) + 40 - 592 && v15;
  return (*(v12 + 8 * ((2019 * v16) ^ v8)))();
}

uint64_t sub_1CDB0@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, unsigned int a5@<W8>)
{
  v14 = ((v13 >> (6 * (v12 ^ a1) - 60)) ^ (v7 + 509)) + (*(a2 + 4 * v5) ^ a5);
  v15 = v14 - ((5 * (v12 ^ 0x112u) + a3) & (2 * v14)) + a4;
  *(a2 + 4 * v8) = v15 ^ v9;
  *(a2 + 4 * v5) = HIDWORD(v15) ^ v11;
  return (*(v10 + 8 * (v12 ^ (1005 * (v6 + 1 == v5)))))();
}

void sub_1CE8C(uint64_t a1)
{
  v1 = *(a1 + 16) + 143681137 * ((-2 - ((~a1 | 0xA95D22BC) + (a1 | 0x56A2DD43))) ^ 0x7DFA3EE6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1CFB4(uint64_t a1)
{
  v1 = 1785193651 * (a1 ^ 0x13DCEC20);
  v2 = *(a1 + 12) + v1;
  return (*(*(&off_9DA90 + (v2 ^ 0x1CB)) + (v2 ^ (32 * ((((v2 - 1240308176) ^ (((((*(a1 + 8) + v1) ^ 0x29F2AE26) - 703770150) ^ (((*(a1 + 8) + v1) ^ 0xBF8A30DC) + 1081462564) ^ (((*(a1 + 8) + v1) ^ 0x22ACB7F7) - 581744631)) + 886319373 < 0x80000064)) & 1) == 0))) - 1))();
}

uint64_t sub_1D108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28, int a29, unsigned int a30, unsigned int a31, int a32, char a33)
{
  HIDWORD(a14) = HIDWORD(a11) + 935240061;
  v34.i64[0] = 0x3232323232323232;
  v34.i64[1] = 0x3232323232323232;
  return sub_44EEC(vdupq_n_s32(0x34D4291Du), vdupq_n_s32(0xB4D4290D), v34, a1, a2, 50, a4, 1475, a6, 100, 1007, a9, a10, a11, a12, a13, a14, a15, v33 - 16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

void sub_1D23C()
{
  v3 = 742307843 * ((v2 - 216) ^ 0x1E228D55);
  *(v2 - 208) = STACK[0x530];
  *(v2 - 216) = -473373760 - v3 + v0 + 26;
  *(v2 - 196) = 602092488 - v3;
  (*(v1 + 8 * (v0 + 2199)))(v2 - 216);
  JUMPOUT(0x19A0CLL);
}

void sub_1D33C(uint64_t a1)
{
  v1 = *(a1 + 16) - 1361651671 * ((2 * (a1 & 0xA46929BF) - a1 + 1536611904) ^ 0x88B426CC);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D488()
{
  v4 = STACK[0x3A0];
  v5 = 1082434553 * ((~((v3 - 216) | 0x4FDACFB9) + ((v3 - 216) & 0x4FDACFB9)) ^ 0x2B62C6CC);
  *(v3 - 176) = &STACK[0x524];
  *(v3 - 168) = v4;
  *(v3 - 184) = &STACK[0x374];
  *(v3 - 192) = v5 + v2 + 169;
  *(v3 - 204) = v5 + v0 - 530102559;
  *(v3 - 216) = &STACK[0x510];
  *(v3 - 200) = &STACK[0x394];
  v6 = (*(v1 + 8 * (v2 ^ 0x8BE)))(v3 - 216);
  return (*(v1 + 8 * ((1093 * (*(v3 - 208) == (v2 ^ 0xB4D42834 ^ (v2 + 281)))) ^ v2)))(v6);
}

uint64_t sub_1D57C()
{
  STACK[0x218] = v2;
  v3 = *(v0 + 8 * ((290 * (LODWORD(STACK[0x43C]) - 1657357197 < (((v1 - 1400) | 0x405) ^ 0xFFFFFBDD ^ (727 * (v1 ^ 0x619))))) ^ v1));
  STACK[0x210] = &STACK[0x5E0] + STACK[0x278];
  return v3();
}

uint64_t sub_1D63C()
{
  v0 = *(&off_9DA90 + (byte_81350[byte_7C0B0[(107 * ((qword_A70B8 - dword_A7108) ^ 0xF9))] ^ 0xD6] ^ (107 * ((qword_A70B8 - dword_A7108) ^ 0xF9))) + 4);
  v1 = *(v0 - 4);
  v2 = *(&off_9DA90 + ((107 * ((qword_A70B8 - v1) ^ 0xF9)) ^ byte_81350[byte_7C0B0[(107 * ((qword_A70B8 - v1) ^ 0xF9))] ^ 0xD6]) - 157);
  v3 = 1010482283 * ((*(v2 - 4) + v1) ^ &v7 ^ 0xABAF40B6402B16F9);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  LOBYTE(v3) = 107 * ((v3 - *(v0 - 4)) ^ 0xF9);
  v8 = *(&off_9DA90 + (byte_7C1B0[byte_88340[v3] ^ 0xA4] ^ v3) + 48);
  v9 = (1785193651 * ((&v8 & 0x51F9934E | ~(&v8 | 0x51F9934E)) ^ 0xBDDA8091)) ^ 0x2C2;
  v4 = *(&off_9DA90 + ((107 * ((qword_A70B8 - dword_A7108) ^ 0xF9)) ^ byte_81350[byte_7C0B0[(107 * ((qword_A70B8 - dword_A7108) ^ 0xF9))] ^ 0xCD]) - 1) - 8;
  (*&v4[8 * ((107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9)) ^ byte_7C1B0[byte_88340[(107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9))] ^ 0xF6]) + 17232])(&v8);
  v8 = *(&off_9DA90 + (byte_84CC0[byte_81250[(107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9))] ^ 0xAD] ^ (107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9))) - 220);
  v9 = (1785193651 * ((912259484 - (&v8 | 0x365FF99C) + (&v8 | 0xC9A00663)) ^ 0xDA7CEA43)) ^ 0x2C2;
  (*&v4[8 * ((107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9)) ^ byte_84CC0[byte_81250[(107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9))] ^ 0xFC]) + 17448])(&v8);
  v5 = 2066391179 * ((((2 * &v8) | 0x8383177C) - &v8 + 1044280386) ^ 0x6EE609A6);
  LOBYTE(v8) = v5 ^ 0x2A;
  HIDWORD(v8) = v5 ^ 0x507;
  LOBYTE(v5) = 107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9);
  return (*&v4[8 * (byte_7BEB8[(byte_8814C[v5 - 12] ^ 0xB8) - 8] ^ v5) + 17616])(&v8);
}

uint64_t sub_1D9EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v6 < v8;
  if (v11 == v7 + 1 > (a6 + 2))
  {
    v11 = v9 + v7 + 2 < v6;
  }

  return (*(v10 + 8 * ((60 * !v11) ^ a1)))();
}

void sub_1DB3C(uint64_t a1)
{
  v1 = 1785193651 * ((((2 * a1) | 0xE946973A) - a1 + 190624867) ^ 0xE77FA7BD);
  v2 = *(a1 + 8) + v1;
  __asm { BRAA            X14, X17 }
}

void sub_1E404(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) - 56353480;
  v3 = *(a1 + 12) - v1 - 870039588;
  v4 = v2 < 0xF54C249;
  v5 = v2 > v3;
  if (v3 < 0xF54C249 != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1E4E0()
{
  v6 = 1082434553 * ((((v5 - 144) | 0x4B6FCB25) - ((v5 - 144) & 0x4B6FCB25)) ^ 0xD0283DAF);
  *(v5 - 120) = v0 - v6 - 957784556 + ((v3 - 1141) | 0x120);
  *(v5 - 116) = (v3 - 843) ^ v6;
  *(v5 - 136) = v2;
  *(v5 - 128) = v4;
  (*(v1 + 8 * (v3 + 1074)))(v5 - 144);
  result = v10;
  *v9 = v8;
  *(v10 + 8) = -1261164275;
  return result;
}

uint64_t sub_1E5B0@<X0>(int a1@<W8>)
{
  v10 = v5 >= 0x10;
  v8 = ((25 * (a1 ^ 0x630u) - 435) ^ (11 * (a1 ^ 0x6F6u))) & (v4 + 15);
  v9 = -v7 - v4;
  v10 = v10 && (v9 + v1 + v8 + 1) >= 0x10;
  v11 = v10 && (v9 + v2 + v8 + 6) >= 0x10;
  v12 = v9 + v3 + v8 + 3;
  v14 = !v11 || v12 < 0x10;
  return (*(v6 + 8 * ((v14 | (8 * v14)) ^ a1)))(v4);
}

uint64_t sub_1E9E4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X4>, int a4@<W8>)
{
  v8 = a3 + v6 - v4;
  v9 = *(v8 - 31);
  v10 = a2 + v6 - v4;
  v11.i64[0] = 0x6464646464646464;
  v11.i64[1] = 0x6464646464646464;
  v12.i64[0] = 0x3232323232323232;
  v12.i64[1] = 0x3232323232323232;
  *(v10 - 15) = vaddq_s8(vsubq_s8(*(v8 - 15), vandq_s8(vaddq_s8(*(v8 - 15), *(v8 - 15)), v11)), v12);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v11)), v12);
  return (*(v7 + 8 * (((v4 == 96) * (((a4 + 366) | v5) ^ a1)) ^ a4)))();
}

uint64_t sub_1EAAC@<X0>(char a1@<W1>, char a2@<W7>, uint64_t a3@<X8>)
{
  v6 = STACK[0x518];
  v7 = *(a3 + 72);
  *v6 = v7 ^ 0x4E;
  v6[1] = (BYTE1(v7) ^ 0x51) + ~(2 * ((BYTE1(v7) ^ 0x51) & 0x3A ^ BYTE1(v7) & 8)) + 51;
  v6[2] = (v4 ^ BYTE2(v7)) - (a2 & (2 * (v4 ^ BYTE2(v7)))) + 50;
  v6[3] = (HIBYTE(v7) ^ a1) - 2 * ((HIBYTE(v7) ^ a1) & 0x33 ^ HIBYTE(v7) & 1) + 50;
  return (*(v5 + 8 * ((3046 * (*(a3 + 92) > 4u)) ^ (v3 - 1027))))();
}

uint64_t sub_1EBC4@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v12 = (v8 ^ 0x23DC7716) == -1;
  v13 = ((2 * (&a3 & 0x4B36CC30) - &a3 - 1261882417) ^ 0xA715DFEF) * a1;
  a6 = v7 - v13;
  a7 = v11 - v13 - 1234;
  a3 = (((v8 ^ 0x23DC7716) + 1) ^ 0xDF69F4FF) - v13 + (((309 * (v11 ^ 0x629) + 885411093) & 0xCB39B2FB ^ 0xBED3EB84) & (2 * ((v8 ^ 0x23DC7716) + 1))) + 1878974302;
  a4 = &a2;
  a5 = v9;
  v14 = (*(v10 + 8 * (v11 + 694)))(&a3);
  v15 = *(v9 + 24) != -1261164275 || v12;
  return (*(v10 + 8 * ((23 * v15) ^ v11)))(v14);
}

uint64_t sub_1ED04()
{
  v3 = (*(v1 + 8 * (v0 + 1275)))(v2);
  STACK[0x4F8] = STACK[0x260] - 1712;
  LODWORD(STACK[0x52C]) = 1261138649;
  return (*(v1 + 8 * (((STACK[0x3D0] == 0) * (v0 - 152 + ((v0 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v0 - 193))))(v3);
}

void sub_1ED94()
{
  v0 = *(&off_9DA90 + (byte_7C1B8[(byte_8834C[(107 * ((qword_A70B8 + dword_A7110) ^ 0xF9)) - 12] ^ 0x3A) - 8] ^ (107 * ((qword_A70B8 + dword_A7110) ^ 0xF9))) - 116);
  v1 = *(&off_9DA90 + (byte_84CC0[byte_81250[(107 * ((qword_A70B8 - *v0) ^ 0xF9))] ^ 0xFC] ^ (107 * ((qword_A70B8 - *v0) ^ 0xF9))) - 76);
  v2 = *(v1 - 4) - *v0 - &v7;
  v3 = 1010482283 * (v2 + 0x5450BF49BFD4E907);
  v4 = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = 107 * ((v4 + *v0) ^ 0xF9);
  **(&off_9DA90 + (byte_7BEB8[(byte_8814C[v4 - 12] ^ 1) - 8] ^ v4) - 70) = -1261164275;
  LOBYTE(v4) = 107 * ((*(v1 - 4) + *v0) ^ 0xF9);
  v5 = *(&off_9DA90 + ((107 * (dword_A7110 ^ 0xF9 ^ qword_A70B8)) ^ byte_84BC0[byte_81150[(107 * (dword_A7110 ^ 0xF9 ^ qword_A70B8))] ^ 0xBD]) + 66) - 8;
  v6 = (*&v5[8 * (byte_8135C[(byte_7C0B4[v4 - 4] ^ 0xD6) - 12] ^ v4) + 15896])(512, 0x100004077774924);
  *(*(&off_9DA90 + ((107 * ((*(v1 - 4) + *v0) ^ 0xF9)) ^ byte_84CC0[byte_81250[(107 * ((*(v1 - 4) + *v0) ^ 0xF9))] ^ 0x1A]) + 66) - 4) = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1F268(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = LOBYTE(STACK[0x2A8]);
  if (v13 == 2)
  {
    return (*(v12 + 8 * (((LODWORD(STACK[0x2A4]) != 0) * (a4 + 24)) ^ (a4 + 1217))))(a12);
  }

  if (v13 == 1)
  {
    return (*(v12 + 8 * ((234 * (LODWORD(STACK[0x2A4]) == ((a4 + 340) ^ 0x170))) ^ (a4 + 340))))(a12);
  }

  return sub_1F338(a12);
}

uint64_t sub_1F338@<X0>(uint64_t a1@<X8>)
{
  v8 = v5 - v1;
  *(v8 + 91) = ((v1 + v3) ^ v4) * (v1 + v3 + 17);
  *(v8 + 90) = ((v1 + v3) ^ 0xBB) * (v1 + v3 + 18);
  return (*(v7 + 8 * (((v1 + a1 == 118) * v6) ^ v2)))();
}

uint64_t sub_1F3C8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = *(v8 + 48 * v5 + 36);
  v11 = v9 != a3 && v9 + a4 < ((v4 + 138060) | (v7 + 3593)) + 1475724912;
  return (*(v6 + 8 * ((44 * v11) ^ v4)))();
}

uint64_t sub_1F434@<X0>(uint64_t a1@<X8>)
{
  v8 = v5 + ((v3 - 398) | 0x200) - 516;
  *(*(v1 + 8) + 4 * (v5 + v2)) = (v7 + v4) ^ v6;
  *(v1 + 4) = v8;
  v9 = v8 + v2;
  if (v8 + v2 < 0)
  {
    v9 = -v9;
  }

  return (*(a1 + 8 * ((494 * (((v9 ^ 0xEFFFFFDE) + ((v9 << (((v3 + 102) & 0xEF) + 24)) & 0xDFFFFFBC) + 268435489) > ((((v3 - 398) | 0x200) - 820549388) & 0x30E895EF) - 234)) ^ (((v3 - 398) | 0x200) - 820549388) & 0x30E895EFu)))();
}

uint64_t sub_1F788@<X0>(int a1@<W8>)
{
  v6 = 6 * (a1 ^ 0x1A9);
  (*(v1 + 8 * (a1 ^ 0x923)))(*v8, v4);
  *(v5 - 216) = (v3 + v6 + 343) ^ (1564307779 * ((2 * ((v5 - 216) & 0x390604D0) - (v5 - 216) + 1190787885) ^ 0xD1F4373E));
  result = (*(v1 + 8 * (v6 ^ 0x955)))(v5 - 216);
  *(v2 + 32) = v9;
  return result;
}

uint64_t sub_1F86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 != 1 && a42 != 2)
  {
    JUMPOUT(0x1F9D0);
  }

  return sub_1F9C8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1FAA0(uint64_t a1)
{
  v2 = STACK[0x4F0];
  v3 = *(STACK[0x4F0] + 96);
  if (v3 == 2)
  {
    return (*(v1 + 8 * (((*(v2 + 92) == 0) * (((STACK[0x340] - 862) | 0x101) ^ 0x137)) ^ (STACK[0x340] + 147))))(a1, 86);
  }

  if (v3 == 1)
  {
    return (*(v1 + 8 * ((31 * (*(v2 + 92) != ((STACK[0x340] + 965) ^ 0x769))) ^ (STACK[0x340] - 62))))(a1, 86);
  }

  v4 = STACK[0x340] - 27;
  STACK[0x508] = 91;
  *(v2 + 91) = (&STACK[0x508] ^ 0xBA) * (&STACK[0x508] + 17);
  return (*(v1 + 8 * (v4 | (16 * (STACK[0x508] != 0)))))(a1, 86);
}

uint64_t sub_20298@<X0>(uint64_t a1@<X8>)
{
  v4 = vdupq_n_s32(0x46732821u);
  v5 = (&STACK[0x240] + 4 * a1);
  *v5 = v4;
  v5[1] = v4;
  return (*(v3 + 8 * ((3861 * (((v1 - 671360770) & 0x2804269B ^ 0x482) == (v2 & 0xFFFFFFFFFFFFFFF8))) ^ (v1 + 642))))();
}

uint64_t sub_20318@<X0>(uint64_t a1@<X3>, uint64_t a2@<X6>, uint64_t a3@<X7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *(v13 + 8 * a4);
  v18 = LOBYTE(STACK[0x2A8]);
  if (v18 == 2)
  {
    v21 = (v11 + v14 + 385662593);
    v22 = ((*v21 ^ v16) << 24) | ((v21[1] ^ v16) << 16) | ((v21[2] ^ v16) << 8);
    *v12 = (v22 | v21[3] ^ v16) + v15 - 2 * ((v22 | v21[3] ^ v16) & 0x34D4291D ^ (v21[3] ^ v16) & 0x10);
    return (*(v13 + 8 * ((244 * ((v14 + 385662597) < 0x40)) ^ (a1 + 595))))();
  }

  else if (v18 == 1)
  {
    v19 = (v11 + v14 + 385662593);
    v20 = *v19 ^ v16;
    LODWORD(v19) = ((v19[2] ^ (a1 + 22)) << 16) | ((v19[3] ^ v16) << 24) | v20 | ((v19[1] ^ v16) << 8);
    *v12 = v19 + v15 - 2 * (v19 & 0x34D4291D ^ v20 & 0x10);
    return (*(v13 + 8 * ((495 * ((v14 + 385662597) > 0x3F)) ^ (a1 + 212))))(1410334720, (a1 + 259), 1949302784, a1, 385662593, 873474085, a2, a3, a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    return sub_113D4(STACK[0x290], a3, v17);
  }
}

uint64_t sub_206BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  *(*(a13 + 96) + 504) = v35 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v38 = 742307843 * ((v37 - 160) ^ 0x1E228D55);
  *(v37 - 160) = -473373664 - v38;
  *(v37 - 140) = 602092488 - v38;
  STACK[0x2C8] = &a26;
  v39 = (*(v36 + 18152))(v37 - 160);
  return (*(v36 + 8 * ((22 * (a15 - 1657355370 + (a35 & 0x3Fu) + 157 < 0xFFFFFFC0)) ^ 0x306u)))(v39);
}

uint64_t sub_2082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (v8 <= v9)
  {
    v8 = v9;
  }

  return (*(v10 + 8 * (((v8 <= 106 * (a6 ^ 0x2F3u) + a8) * ((a6 + 1215209860) & 0xB7915FA6 ^ 0x423)) ^ a6)))(a1, a2, a3, 0);
}

uint64_t sub_20888@<X0>(char a1@<W3>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5)
{
  v8 = (a5 + a2);
  v9 = vaddq_s8(vaddq_s8(v7[1], a4), vmvnq_s8(vandq_s8(vaddq_s8(v7[1], v7[1]), a3)));
  v8[-1] = vaddq_s8(vaddq_s8(*v7, a4), vmvnq_s8(vandq_s8(vaddq_s8(*v7, *v7), a3)));
  *v8 = v9;
  return (*(v6 + 8 * ((((a1 & 0x60) == 32) * (((v5 - 353) | 0x18) ^ 0x81)) ^ v5)))();
}

uint64_t sub_209B8()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_209E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10.val[0].i64[0] = (v5 - v6 - 1) & 0xF;
  v10.val[0].i64[1] = (v5 - v6 + 14) & 0xF;
  v10.val[1].i64[0] = (v5 - v6 + 13) & 0xF;
  v10.val[1].i64[1] = (v5 - v6 + 12) & 0xF;
  v10.val[2].i64[0] = (v5 - v6 + 11) & 0xF;
  v10.val[2].i64[1] = (v5 - v6 + 10) & 0xF;
  v10.val[3].i64[0] = (v5 - v6 + (((a1 - 83) | 2) ^ 0xAA)) & 0xF;
  v10.val[3].i64[1] = (v5 - v6) & 0xF ^ 8;
  *(v7 + -8 - v6 + v5) = veor_s8(veor_s8(veor_s8(*(v4 + v10.val[0].i64[0] - 7), *(a2 + -8 - v6 + v5)), veor_s8(*(v2 + v10.val[0].i64[0] - 7), *(v3 + v10.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v10, xmmword_88460), 0x7575757575757575)));
  return (*(v8 + 8 * ((82 * (8 - (v5 & 0x18) == -v6)) ^ a1)))(xmmword_88460);
}

uint64_t sub_20C68(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = -18;
  }

  else
  {
    v2 = -20;
  }

  *(a1 + 88) = ((**(a2 + 8) != 0) ^ 0x7F) + v2;
  return 0;
}

uint64_t sub_20CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(a12 + 16) = -v17;
  v23 = 2066391179 * ((v22 - 407170079 - 2 * ((v22 - 136) & 0xE7BB1469)) ^ 0x489C9671);
  *(v22 - 136) = v21;
  *(v22 - 128) = v23 + v20 + 1468;
  *(v22 - 124) = v23 + 1068377366;
  (*(v19 + 8 * (v20 + 1871)))(v22 - 136);
  v24 = 1785193651 * ((v22 - 136) ^ 0x13DCEC20);
  *(v22 - 128) = v20 - v24 + 764;
  *(v22 - 124) = ((v18 << 6) & 0xFF3B16C0) - v24 + ((32 * v18) ^ 0xFF9D8B74) + 1862237852;
  *(v22 - 136) = v21;
  (*(v19 + 8 * (v20 ^ 0x967)))(v22 - 136);
  *(v22 - 136) = &a17;
  *(v22 - 128) = a16;
  *(v22 - 120) = (v20 + 1362) ^ (1564307779 * (((v22 - 136) & 0xAFD64741 | ~((v22 - 136) | 0xAFD64741)) ^ 0xC72474AD));
  (*(v19 + 8 * (v20 ^ 0x93F)))(v22 - 136);
  *(v22 - 120) = v21;
  *(v22 - 136) = a16;
  *(v22 - 128) = v20 - 143681137 * ((v22 - 136) ^ 0xD4A71C5A) + 867;
  v25 = (*(v19 + 8 * (v20 + 1811)))(v22 - 136);
  return (*(v19 + 8 * (((*(v22 - 112) > 0x43A7A85Fu) * (((v20 - 86) ^ 0x47F) - 1261)) ^ v20)))(v25);
}

uint64_t sub_20EF4()
{
  v0.n128_u64[0] = 0x3232323232323232;
  v0.n128_u64[1] = 0x3232323232323232;
  v1.n128_u64[0] = 0x6464646464646464;
  v1.n128_u64[1] = 0x6464646464646464;
  return sub_2F710(vdupq_n_s32(0x34D4291Du), v0, vdupq_n_s32(0xB4D4290D), v1);
}

void sub_211B0(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 563552686;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2127C(_DWORD *a1)
{
  v2 = 843532609 * ((((2 * a1) | 0x7C0848CA) - a1 + 1107024795) ^ 0xE24970E0);
  v3 = a1[10] ^ v2;
  v4 = a1[11] ^ v2;
  v9 = v3 + 1037613739 * ((&v9 & 0xCF13DD99 | ~(&v9 | 0xCF13DD99)) ^ 0xE1EE0F19) + 1084731835;
  v5 = *(&off_9DA90 + (v3 ^ 0x76625E83)) - 8;
  result = (*&v5[8 * (v3 ^ 0x76625615)])(&v9);
  if (v4 > 1615399632)
  {
    if (v4 == 1900612304)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1615399633)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = (*&v5[8 * v3 - 0x3B312B268])(((v3 + 1243828026) & 0x3F7A536Fu) - 1657355514 + *(*(&off_9DA90 + (v3 ^ 0x76625EC2)) + 6 * v7 + 4), 0x100004077774924) != 0;
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1615399629)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1615399632)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[12] = 1261138609;
  return result;
}

uint64_t sub_21510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = &a17;
  *(v21 - 136) = a16;
  *(v21 - 128) = v17 - ((2 * (((v21 - 136) ^ 0x21DDEFBE) & 0x5AC9821C) - ((v21 - 136) ^ 0x21DDEFBE) - 1523155486) ^ 0x504C8E06) * v20 + 1094;
  v22 = (*(v19 + 8 * (v17 + 2038)))(v21 - 136);
  return (*(v19 + 8 * ((476 * (*(v21 - 112) > (v17 ^ 0x16D ^ (v18 + 361)))) ^ v17)))(v22);
}

uint64_t sub_21620@<X0>(int a1@<W8>)
{
  v7 = v2 + 16;
  v8 = (v2 - 1278442705) & 0x4C337FF4;
  v9 = STACK[0x4E0];
  *(v9 + 392) = v1;
  *(v9 + 396) = STACK[0x374];
  *(v9 + 400) = STACK[0x510];
  *(v9 + 408) = 1368544279 - v4 + LODWORD(STACK[0x524]);
  *(v9 + 416) = v6 + ((v2 - 1445166827) & 0x56237EEA ^ 0xED4F5A6E) + v4;
  v10 = (*(v3 + 48 * a1 + 8))(STACK[0x2C8], v9 + 392);
  return (*(v5 + 8 * ((1156 * (v8 - 1261164275 + v10 - ((2 * v10) & 0x69A8521A) == -1261163343)) ^ v7)))();
}

uint64_t sub_21B88(uint64_t a1, int a2, int a3)
{
  v6 = ((2 * a3) ^ 0xB4F1E46A) + v3;
  v7 = a2 + v5 > ((a3 + 1844976559) & 0x9207DD79) + 131958799;
  if (v7 == v6 < 0xF82276B7)
  {
    v7 = a2 + v5 - 131959113 > v6;
  }

  return (*(v4 + 8 * ((84 * !v7) ^ a3)))();
}

uint64_t sub_21CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43, uint64_t a44, int a45, char a46)
{
  v51 = *v49;
  memset((v50 - 192), 50, 16);
  v52 = 1037613739 * (((v50 - 176) & 0xC9E43C28 | ~((v50 - 176) | 0xC9E43C28)) ^ 0xE719EEA8);
  *(v50 - 160) = v51;
  *(v50 - 152) = &a46;
  *(v50 - 176) = v52 + 577928687;
  *(v50 - 136) = &a43;
  *(v50 - 144) = (v46 + 1588) ^ v52;
  *(v50 - 168) = v50 - 192;
  v53 = (*(v47 + 8 * (v46 ^ 0x899)))(v50 - 176);
  return (*(v47 + 8 * ((1830 * (*(v50 - 140) == v48 + ((v46 + 754640457) & 0x13051BCF) - 588)) ^ v46)))(v53);
}

uint64_t sub_21D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x52C]) = v6;
  STACK[0x4F8] = STACK[0x278];
  LODWORD(STACK[0x504]) = v6;
  return sub_49028(a1, a2, a3, a4, 1261138644, a6);
}

uint64_t sub_21EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35, uint64_t a36, uint64_t a37, int a38)
{
  v42 = a8 ^ 0x1DA;
  v43 = __ROR8__((((a6 >> (((a8 ^ 0xDA) - 64) & 0xF7 ^ 0xD3u)) ^ 0xD51CC9FD8FEE033DLL) & ((a6 << 27) ^ 0x5C7938C7F7FFFFFFLL) | (((a8 ^ 0x1DAu) + 125886912) ^ 0x2AE336027780E44CLL) & (a6 << 27)) ^ 0x75B8793A887A889ELL, 27);
  v44 = v43 ^ v38 ^ 0xFC24DE1AF118E910;
  v45 = a2 ^ a36 ^ v41;
  v46 = (v44 & 0xE370D22389E963F8 ^ (v43 ^ v40 ^ 0xBE1809339C11E6CBLL) & (v43 ^ v38 ^ 0x9DB354A2D1EB9C7DLL) ^ 0x9EEF7DDFFF1E9E97) - (v43 ^ v40 ^ 0x3CFF51A8350BF05ELL ^ v44);
  v47 = (v43 ^ v40 ^ 0xE05D1F65A59055A1) & (a2 ^ a36 ^ 0xA018715D8E86E82FLL);
  v48 = (a2 ^ a36) & 0xBD35C475B068D092;
  v49 = v45 & 0xE395E631ECE3821ELL ^ (v45 ^ 0xC28210BF701425CBLL) & (a2 ^ a36 ^ 0xBC7268939D9A95CELL) ^ 0x53CB19A0E1104E6DLL ^ v43 ^ v40;
  v50 = v43 & 0x250DA82BBCFED4D6 ^ v45 ^ (v43 ^ 0x282C5FE8B6EFD3A2) & (v38 ^ 0x6F6D5C9E240564F6);
  v51 = v49 ^ a2 ^ a36;
  v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
  v53 = v44 ^ v48 ^ v47;
  v54 = (v45 ^ 0x3D7DEF408FEBDA34) & (v38 ^ 0x5830F6FEB2631256) ^ v45 & 0xEDAFFDB4D5675D89;
  v55 = v53 ^ v49;
  v56 = v53 ^ v49 ^ 0x79D8A72CA7000810;
  v57 = v51 & 1;
  if ((v57 & v54) + 0x1B15E1F1D6857FA7 - 2 * (v57 & v54) != 0x1B15E1F1D6857FA7)
  {
    v57 = -v57;
  }

  v58 = (v57 + (v54 ^ 0x2D2DED0085635800)) ^ v52;
  v59 = (v58 ^ 0x5E2CE3858ED8BD4DLL ^ (8 * (v58 ^ 0x5E2CE3858ED8BD4DLL))) & 0x809545084A0D0A1ALL ^ (v58 >> 39) ^ (v58 ^ 0x5E2CE3858ED8BD4DLL ^ (8 * (v58 ^ 0x5E2CE3858ED8BD4DLL)) ^ 0x20A12F204B23163) & ((v58 >> 61) ^ 0x7F6ABAF7B5F2F5E5) ^ (((v58 ^ 1) & (v58 >> 61) ^ 0x603B8202C80A8B91) & (((v58 ^ 0x5E2CE3858ED8BD4DLL) << 25) ^ 0x5E3975D510DF9F97) | ((v58 ^ 0x5E2CE3858ED8BD4DLL) << 25) & 0x9FC47DFD36000000);
  v60 = v50 ^ 0xE3DD6ACC6D6A5BEBLL ^ (v50 >> 1) ^ (((v50 >> 6) ^ 0x727DC59BA3549D42) & 0x71FC6A90E5FD3DFBLL ^ (((v50 ^ 0xE3DD6ACC6D6A5BEBLL) << 63) | 0x402800804D0DA9) | ((v50 >> 6) ^ 0x727DC59BA3549D42) & 0x203956F1A02C204) ^ ((v59 ^ 0x8A1178A505C68904) + ((v50 << 58) ^ 0x2800000000000000) - 2 * ((v59 ^ 0x8A1178A505C68904) & ((v50 << 58) ^ 0x2800000000000000)));
  v61 = v53 ^ 0xC630E1018CD70509 ^ (v53 >> 7);
  v62 = ((v50 ^ v38 ^ v46) >> 17) ^ ((v50 ^ v38 ^ v46) >> 10) ^ v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48 ^ ((v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48) << 47) ^ ((v50 ^ v38 ^ v46 ^ 0x4679AC89E9AD0A48) << 54);
  *(&v63 + 1) = ~v61;
  *&v63 = v61;
  v64 = ((v53 ^ 0xC630E1018CD70509) << 57) ^ ((v53 ^ 0xC630E1018CD70509) << 23) ^ __ROR8__(__ROR8__(v53, 44) & 0xE0000000000FFFFFLL ^ 0x77AC5EA2FF32C9D4 ^ (v63 >> 3), 61);
  *(&v63 + 1) = v56;
  *&v63 = v55;
  v65 = v56 ^ __ROR8__(v56, 19) ^ (v63 >> 28) ^ v64;
  v66 = v65 ^ 0xC54D8C9E0EDE4C24;
  v67 = v62 ^ 0xCD29F13A99BFB785 ^ v64;
  v68 = (v67 ^ 0xB0F28FB6696C11EDLL) & (v65 ^ 0xC54D8C9E0EDE4C24);
  v69 = v65 & 0xA3913D86965B49F1;
  v70 = (v60 ^ 0xA7BF4AC0C014BDE0) & (v62 ^ 0x4A90D2F7C04E1159);
  v71 = v60 & 0x439ADF6CA31E1892;
  v72 = (v59 ^ 0x8A1178A505C68904) & (~(2 * v66) + v66);
  v73 = v59 & 0x5B8C5E6928BBBA65 ^ v66 ^ (v60 ^ 0x3CCEB561750F87ALL) & (v59 ^ 0x75EE875AFA3976FBLL);
  v74 = (__ROR8__(__ROR8__(v62 ^ 0xCD29F13A99BFB785, 62) ^ 0x8AB89576054BF462, 2) ^ 0xA90458F574653BD6) & (v67 ^ 0xEC9C4DCF00C8A7E3) ^ v67 & 0x30767EF6F027877FLL ^ v60;
  v75 = ((v73 & 0xE0096EE0D8B2C64DLL ^ 0xE9ED0047F43C3665) & (v73 & 0x1FF6911F274D39B2 ^ 0xEA69FEF7DDB6CECDLL) | v73 & 0x1612911803410992) ^ 0xF528C1664501489DLL;
  if ((v72 & 0x100000000 & (v67 ^ 0xEC9C4DCF00C8A7E3)) != 0)
  {
    v76 = -(v72 & 0x100000000);
  }

  else
  {
    v76 = v72 & 0x100000000;
  }

  v77 = (v76 + (v67 ^ 0xEC9C4DCF00C8A7E3)) ^ v72 & 0xFFFFFFFEFFFFFFFFLL;
  v78 = v71 ^ v59 ^ 0x8A1178A505C68904 ^ v70 ^ v75;
  v79 = v78 ^ 0x452028502E95DD85;
  v80 = v75 ^ v77;
  v81 = v80 ^ 0xE0B1C89DB829195ALL;
  v82 = v62 ^ 0xCD29F13A99BFB785 ^ v69 ^ v68 ^ v74;
  v83 = (v80 & 0x8000) == 0;
  v84 = 0x8000;
  if (!v83)
  {
    v84 = -32768;
  }

  v85 = v84 + v81;
  *(&v86 + 1) = v78 ^ 0x18104C7FDE4DCAEFLL;
  *&v86 = v78;
  v87 = (v86 >> 61) - ((2 * (v86 >> 61)) & 0x23FE4DA55827B64CLL);
  *(&v86 + 1) = v82 ^ 0x3A4;
  *&v86 = v82 ^ 0x3FF9AC451E16E000;
  v88 = (v86 >> 10) - ((2 * (v86 >> 10)) & 0x4E0B133AE1A9BE5ELL);
  *(&v86 + 1) = v78 ^ 0x452028502E95DD85;
  *&v86 = v78;
  v89 = (v86 >> 39) ^ 0xCE1E96FC7823FBBELL ^ (v87 - 0x6E00D92D53EC24DALL);
  v90 = (v89 - ((2 * v89) & 0xBA60C85FE1B02ED4) + 0x5D30642FF0D8176ALL) ^ v79;
  *(&v86 + 1) = v82 ^ 0xE0CF29C5A240019;
  *&v86 = v82;
  v91 = (((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17) ^ 0xD6DB1661A6F65024) + 0x31F55ED94432E3BDLL - 2 * (((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17) ^ 0xD6DB1661A6F65024) & 0x31F55ED94432E3BFLL ^ ((v88 - 0x58FA76628F2B20D1) ^ (v86 >> 17)) & 2)) ^ v82 ^ 0xE0CF29C5A240019;
  v92 = v77 ^ 0x9A383CF881807545 ^ ((v77 ^ 0x9A383CF881807545) >> 7) ^ (((v77 ^ 0x9A383CF881807545) >> 41) | ((v77 ^ 0x9A383CF881807545) << 57)) ^ ((v77 ^ 0x9A383CF881807545) << ((v74 >> 1) & 0x17 ^ 3) << ((v74 >> 1) & 0x17 ^ 0x14));
  v93 = ((v74 & 0x9B6535C14F352826 ^ (v74 << 63) ^ 0xC7C183457EA140F5) & (v74 & 0x649ACA3EB0CAD7D9 ^ 0xDBFF35E3EF356DB7) | v74 & 0x201A483A804A9708) ^ __ROR8__(v74, 6) ^ 0xCD31DCC01C6AEAE6 ^ v90;
  v94 = (v93 - ((2 * v93) & 0x925BB517DB382142) + 0x492DDA8BED9C10A1) ^ (v74 >> 1);
  v95 = v81 ^ v92 ^ (v81 >> 19) ^ (v85 >> 28) ^ ((v85 ^ 0x8000) << 36) ^ ((v85 ^ 0x8000) << 45);
  v96 = v91 ^ v92;
  v97 = v96 - ((2 * v96) & 0x4BCF7563A6B4D67ELL);
  v98 = v94 ^ 0x43180866D8636D02 ^ v92 & ~v91;
  v99 = (v94 ^ 0x43180866D8636D02) & ~v90 ^ v95;
  v100 = v90 & ~v95 ^ v96;
  v101 = v100 ^ 0x6E04C15915AB860ALL ^ v99;
  *(&v86 + 1) = (v101 >> 19) & v101 & 0x1A36E0206AEDLL ^ (v101 >> 28) ^ (((v101 >> 19) | v101) & 0xD8807A36E0206AEDLL | (v101 >> 19) & 0x5C91FDF9512 ^ v101 & 0x277F85C91FDF9512);
  *&v86 = (v101 << 36) ^ (v101 << 45) ^ *(&v86 + 1);
  v102 = (v90 - 2 * (v90 & v95) + v99) ^ (v94 ^ 0xBCE7F799279C92FDLL) & v91;
  v103 = v95 & ((v97 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ v91 ^ v98 ^ 0x7370AC685030CB36;
  v104 = (v102 >> 39) ^ (v102 >> 61) ^ (8 * (v102 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v102 ^ 0x3278F838FE43D2BCLL) - (((v102 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v102 ^ 0x3278F838FE43D2BCLL))));
  v105 = v104 ^ 0x64F1F1;
  v106 = v100 ^ 0x26974B18501E2B14 ^ ((v100 ^ 0x26974B18501E2B14) >> 41) ^ ((v100 ^ 0x26974B18501E2B14) >> 7) ^ ((v100 ^ 0x26974B18501E2B14) << 23) ^ ((v100 ^ 0x26974B18501E2B14) << 57);
  v107 = v98 ^ 0x7955EAEC4D48B80CLL ^ (v98 << 63) ^ __ROR8__(v98 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v98 ^ 0x7955EAEC4D48B80CuLL) >> ((v61 & 8) == 0) >> ((v61 & 8) != 0));
  v108 = v104 ^ 0x64F1F1 ^ v107;
  v109 = (v103 >> 17) ^ __ROR8__(v103, 10) ^ __ROR8__(__ROR8__(v103, 14) & 0xFFFC000000000007 ^ __ROR8__(v103, 61), 3);
  v110 = v109 ^ v106;
  *&v86 = __ROR8__(__ROR8__(v106, 7) ^ __ROR8__(__ROR8__(v86 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v111 = v106 & ~v109 ^ v108;
  v112 = v86 ^ 0xBBDB0FB7A00B9120 ^ (v104 ^ 0xFFFFFFFFFF9B0E0ELL) & v107;
  v113 = v104 ^ (((v108 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v108 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v109 ^ 0x425764BB58132BD4 ^ v112;
  v114 = (v86 ^ 0x4424F0485FF46EDFLL) & v105 ^ v110;
  v115 = (v114 ^ -v114 ^ (0x70C7A8D3F3643DFDLL - (v114 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v116 = v111 ^ 0xD3DA1E3360BF843ALL ^ ((v111 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v111 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v117 = v109 ^ 0x44C9D571A5C4A51CLL ^ v111 ^ (v86 ^ 0xBBDB0FB7A00B9120) & ~v110;
  v119 = __ROR8__(__ROR8__(v113, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v113 ^ (8 * v113) ^ ((v113 >> 61) | (v113 << 25)), 23) ^ 0x735302FC48340548, 41);
  v120 = (v115 >> 7) ^ (v115 >> 41) ^ (v115 << 23) ^ (v115 << 57);
  v121 = v120 ^ v115;
  v122 = v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114 ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) >> 28) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) >> 19) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) << 36) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114) << 45) ^ v120 ^ v115;
  v123 = v116 & 0xFFFFFFF7FFFFFFFFLL ^ (v111 << 63) ^ (v116 & 0x800000000 | ((v111 ^ 0xD3DA1E3360BF843ALL) << ((v101 >> 19) & 0x12) << ((v101 >> 19) & 0x12 ^ 0x3A))) ^ v119;
  if (v120 == v115)
  {
    v124 = 0;
  }

  else
  {
    v124 = v117 << 47;
  }

  v125 = v119 ^ 0x7E241A02A439A981;
  v118 = (v117 ^ (v117 >> 10) | (v117 << 54)) ^ (v117 << 54) & v117;
  v126 = (v124 ^ v118 | (v117 << 47)) ^ (v118 & (v117 << 47) & 0xFFFF800000000000 | (v117 >> 17));
  v127 = v123 ^ 0x7E241A02A439A981;
  v128 = v126 & (v123 ^ 0x81DBE5FD5BC6567ELL);
  v129 = v126 ^ v121 ^ v125 & ~v122;
  v130 = v122 ^ (~(2 * v125) + v125) & (v123 ^ 0x7E241A02A439A981);
  v131 = v129 ^ v130;
  v132 = v129 ^ v130 ^ 0x93C23431B76D41FLL;
  *(&v133 + 1) = v132;
  *&v133 = v129 ^ v130;
  v134 = v125 ^ 0x6005BE354A5BB0B2 ^ v130;
  v135 = v122 & ~(v126 ^ v121) ^ v126 ^ v121 & ~v126 ^ v127;
  v136 = (v133 >> 62) ^ (4 * (v132 >> 28)) ^ 0x406FF36C296024B3;
  *(&v133 + 1) = v132;
  *&v133 = v131;
  v137 = ((v133 >> 19) ^ __ROR8__(v136, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v138 = v129 ^ 0x2DB5B6AF87F64351 ^ ((v129 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v129 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v129 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v129 ^ 0x2DB5B6AF87F64351) >> 41);
  v139 = (((v134 ^ v128) << (v121 & 3) << (v121 & 3 ^ 3)) ^ v134 ^ v128 ^ (((v134 ^ v128) >> 39) ^ ((v134 ^ v128) >> 61) | ((v134 ^ v128) << 25))) & ~(v138 ^ (v132 << 36) ^ (((2 * v137) & 0xFFFFFFFF18D20D4ALL) + (v137 ^ 0xFFFFFFFF8C6906A5))) ^ __ROR8__(v135 ^ 0xF374A001D380BDC2, 17) ^ ((v135 ^ 0xF374A001D380BDC2) >> 10) ^ (((v135 ^ 0xF374A001D380BDC2) << 54) | (v135 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v135 ^ 0xF374A001D380BDC2) << 54) & (v135 ^ 0xF374A001D380BDC2) | v135 & 0x20) ^ v138;
  return (*(v39 + 8 * (v42 ^ (a35 > 2 * (a38 & 1) + (a38 ^ 1u)))))(v139 ^ __ROR8__(v139 ^ 0x3096EC2D0511544CLL, 7) ^ ((v139 ^ 0x3096EC2D0511544CLL) << 23) ^ ((v139 ^ 0x3096EC2D0511544CLL) >> 41));
}

uint64_t sub_22FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39)
{
  v39 = *(a1 + 36) ^ (742307843 * ((~a1 & 0x6EE94400 | a1 & 0x9116BBFF) ^ 0x70CBC955));
  v40 = 742307843 * (((&v48 | 0x7C782FF7) - (&v48 & 0x7C782FF7)) ^ 0x625AA2A2);
  v48 = v39 - v40 - 473373702;
  v49 = v47;
  v50 = 602092488 - v40;
  v41 = (*(*(&off_9DA90 + v39 + 33) + (v39 ^ 0x8FB) - 1))(&v48);
  return sub_2D98C(v41, v47, v42, 100, v43, v44, v45, v39, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

void sub_23248(int a1@<W8>, int a2, __int16 a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53)
{
  v59 = *(v57 + 8 * (a1 - 1255));
  v60 = *v59;
  v61 = *(v57 + 8 * (a1 ^ 0x552));
  v62 = *v61;
  a4 = **v61 - 15;
  a5 = v62[1] - 15;
  a6 = v62[2] - 15;
  a7 = v62[3] - 15;
  a8 = v62[4] - 15;
  a9 = v62[5] - 15;
  a10 = v62[6] - 15;
  a11 = v62[7] - 15;
  a12 = v62[8] - 15;
  a13 = v62[9] - 15;
  a14 = v62[10] - 15;
  a15 = v62[11] - 15;
  a16 = v62[12] - 15;
  a17 = v62[13] - 15;
  a18 = v62[14] - 15;
  a19 = v62[15] - 15;
  a20 = v62[16] - 15;
  a21 = v62[17] - 15;
  a22 = v62[18] - 15;
  a23 = v62[19] - 15;
  v63 = *v61;
  a24 = v63[20] - 15;
  a25 = v63[21] - 15;
  a26 = v63[22] - 15;
  a27 = v63[23] - 15;
  a28 = v63[24] - 15;
  a29 = v63[25] - 15;
  a30 = v63[26] - 15;
  a31 = v63[27] - 15;
  a32 = v63[28] - 15;
  a33 = v63[29] - 15;
  v64 = (*(v55 + 8 * (a1 ^ 0xC7D)))(v60, &a4, v53);
  if (v64 == 1102)
  {
    v65 = *v59;
    v66 = *(v57 + 8 * (v56 ^ 0x50B));
    v67 = *(v66 - 4);
    a34 = 9 * *v67 + 97;
    a35 = 9 * v67[1] + (v56 ^ 0x1C);
    a36 = 9 * v67[2] + 97;
    a37 = 9 * v67[3] + 97;
    a38 = 9 * v67[4] + 97;
    a39 = 9 * v67[5] + 97;
    a40 = 9 * v67[6] + 97;
    a41 = 9 * v67[7] + 97;
    a42 = 9 * v67[8] + 97;
    a43 = 9 * v67[9] + 97;
    a44 = 9 * v67[10] + 97;
    a45 = 9 * v67[11] + 97;
    a46 = 9 * v67[12] + 97;
    a47 = 9 * v67[13] + 97;
    a48 = 9 * v67[14] + 97;
    a49 = 9 * v67[15] + 97;
    a50 = 9 * v67[16] + 97;
    v68 = *(v66 - 4);
    a51 = 9 * v68[17] + 97;
    a52 = 9 * v68[18] + 97;
    a53 = 9 * v68[19] + 97;
    v69 = (*(v55 + 8 * (v56 + 899)))(v65, &a34, v53);
    (*(v55 + 8 * ((102 * (v69 != 0)) ^ (v56 - 968))))(v69, v70, v71, v72, v73, v74, v75);
  }

  else
  {
    if (v64)
    {
      JUMPOUT(0x28B50);
    }

    *(v58 + 352) |= ((v56 - 1386) | 0x1C0) - 457;
    *(v58 + 52) = 1470670864;
    (*(v55 + 8 * (v56 ^ 0xDC5)))(*v53, v58 + 340, v58 + 344, v58 + 348, v54);
    sub_28B10();
  }
}

void sub_23678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v9 + 8);
  v12 = (*(v11 + 4 * (v10 - 1)) ^ v5) >> v7;
  *(v11 + 4 * v8) = v12 + v5 - ((v12 << ((6 * (a5 ^ 0x40)) ^ 0x5D)) & v6);
  JUMPOUT(0x236ECLL);
}

uint64_t sub_2373C@<X0>(int a1@<W1>, unsigned int a2@<W7>, unsigned int a3@<W8>)
{
  v13 = (v11 + 4 * v6);
  v14 = HIDWORD(v7) + a2 * (*(v5 + 4 * v6) ^ a3) + (*v13 ^ (a3 + v9 + 1020 - 1689)) + HIDWORD(v3) + v10 * (*(v12 + 4 * v6) ^ a3);
  *(v13 - 1) = v14 + a3 - (a1 & (2 * v14));
  return (*(v8 + 8 * (((4 * (v6 + 1 != v4)) | (32 * (v6 + 1 != v4))) ^ v9)))();
}

uint64_t sub_23990(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = 1785193651 * ((2 * ((v30 - 128) & 0x61346E78) - (v30 - 128) + 516657541) ^ 0xD177DA5);
  *(v30 - 112) = a12 - v32 + (((a1 ^ 0x25) - v31 - 1367814192) ^ (257 * (a1 ^ 0x25)));
  *(v30 - 128) = (a1 + 1505) ^ v32;
  *(v30 - 120) = &a20;
  v33 = (*(v29 + 8 * (a1 ^ 0x8F6)))(v30 - 128);
  v34 = a29 & 0x3F;
  *(&a20 + v34) = -78;
  return (*(v29 + 8 * ((78 * (v34 > 0x37)) ^ a1)))(v33);
}

uint64_t sub_23B0C()
{
  v3 = v0 + 182;
  v4 = (v1 & 2) != ((v3 - 38) ^ 0x1DE) - 213;
  return (*(v2 + 8 * ((2 * v4) | (4 * v4) | v3)))();
}

uint64_t sub_23B80@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3F0] = -v1;
  v2 = STACK[0x488];
  v3 = a1 - 112;
  STACK[0x260] = v3;
  STACK[0x4F8] = v3;
  return v2();
}

uint64_t sub_23C6C@<X0>(int a1@<W8>)
{
  v7 = v6 + v4;
  v8 = (v4 + ((a1 + 60) | 5) - 88) & 0xF;
  v9 = v8 + 1 - v4;
  v10 = v1 + v9;
  v11 = v1 + v8 + 1;
  v12 = v2 + v9;
  v13 = v2 + v8 + 1;
  v14 = v8 + v3 + 2;
  v16 = v11 > v6 && v10 < v7;
  v18 = v13 > v6 && v12 < v7 || v16;
  if (v14 <= v6 || v14 - v4 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 8 * (a1 ^ (16 * v20))))();
}

uint64_t sub_23CE8@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = (v8 - 1);
  *(a4 + v11) = *(a5 + v11) ^ ((v11 & 0xF) * a2) ^ *(v7 + (v11 & 0xF)) ^ *((v11 & 0xF) + a6 + 5) ^ (v9 + 20) ^ *((v11 & 0xF) + v6 + 1);
  return (*(v10 + 8 * (((v11 == ((6 * ((v9 + 902) ^ a3)) ^ 0x1E)) * a1) ^ (v9 + 494))))();
}

uint64_t sub_23EB8@<X0>(int a1@<W8>)
{
  v6 = v1 + 1321;
  v7 = v1 + 1321 - v5 + 1726765185;
  if (v4 > v7)
  {
    v7 = v4;
  }

  *(*(v2 + 8) + 4 * (((v6 - 151034828) & 0x90097EE ^ 0xFFFFFB93) + v7 + a1)) = *(*(v2 + 8) + 4 * (((v6 - 151034828) & 0x90097EE ^ 0xFFFFFFFFFFFFFB93) + v7));
  return (*(v3 + 8 * ((205 * (v7 > 1)) ^ v6)))();
}

uint64_t sub_23FBC@<X0>(unsigned int a1@<W3>, unsigned int a2@<W4>, unint64_t a3@<X5>, _DWORD *a4@<X7>, uint64_t a5@<X8>)
{
  v13 = (a4[1] ^ v5) + (v8 ^ HIDWORD(a3)) + a2 * (*(*(v9 + 8) + 4) ^ v5);
  *a4 = (v13 + ((a1 - 23) ^ v6) - ((v7 + 1207) & (2 * v13))) ^ v11;
  return (*(v10 + 8 * (((a5 == 2) * v12) ^ a1)))();
}

uint64_t sub_24028()
{
  v7 = ((((v6 - 144) | 0x3B300661) + (~(v6 - 144) | 0xC4CFF99E)) ^ 0x94178478) * v3;
  *(v6 - 128) = (((2 * (v4 - 996129833)) & 0xED74B5FC) - 276971606 + ((v4 - 996129833) ^ 0x76BA5833 ^ (v1 - 1201))) ^ v7;
  *(v6 - 136) = v5;
  *(v6 - 144) = v7 + v1 - 1441;
  v8 = (*(v0 + 8 * (v1 + 275)))(v6 - 144);
  return (*(v0 + 8 * ((((v1 ^ (*(v6 - 140) == v2)) & 1) == 0) | v1)))(v8);
}

uint64_t sub_240F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x53C]) = STACK[0x374];
  STACK[0x3A0] = STACK[0x510];
  LODWORD(STACK[0x524]) = 313566482;
  return sub_21144(a6, -1261164275);
}

uint64_t sub_2411C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_24144()
{
  v2 = v0 - 449;
  v3 = (*(v1 + 8 * ((v0 - 449) ^ 0x8C8)))(1576, 0x105004009637391);
  STACK[0x3C0] = v3;
  return (*(v1 + 8 * ((73 * (((v3 == 0) ^ (v2 + 38)) & 1)) ^ v2)))();
}

uint64_t sub_242A4()
{
  v4 = (*(v1 + 8 * (v0 ^ 0xB3B)))();
  LODWORD(STACK[0x52C]) = v2;
  return (*(v1 + 8 * ((((v0 ^ 0xBF4) - 2113) * v3) ^ (v0 - 317))))(v4);
}

uint64_t sub_242F8()
{
  v4 = v3[1];
  v5 = v3[398] ^ v0 ^ ((v3[2] & 0x7FFFFFFE | v4 & 0x80000000) >> 1) ^ *(&STACK[0x1898] + (v3[2] & 1));
  *v3 = v3[397] ^ v0 ^ ((v4 & 0x7FFFFFFE | *v3 & 0x80000000) >> 1) ^ *(&STACK[0x1898] + (v4 & 1));
  v3[1] = v5;
  return (*(v1 + 8 * (((v2 - 408) | 0x10) ^ 0x21)))(&STACK[0x1898], 1948, 289, 1120, 159);
}

uint64_t sub_24300()
{
  *(v2 - 208) = &STACK[0x46C];
  *(v2 - 200) = &STACK[0x558];
  *(v2 - 212) = v1 - 143681137 * ((((v2 - 216) | 0x894AE35) - (v2 - 216) + ((v2 - 216) & 0xF76B51C8)) ^ 0xDC33B26F) - 362;
  *(v2 - 216) = (113 * ((((v2 + 40) | 0x35) - (v2 + 40) + ((v2 + 40) & 0xC8)) ^ 0x6F)) ^ 0x34;
  v3 = (*(v0 + 8 * (v1 + 476)))(v2 - 216);
  v4 = *(v2 - 192);
  LODWORD(STACK[0x504]) = v4;
  return (*(v0 + 8 * ((357 * (v4 == (((v1 ^ 0x729) + 1095) ^ 0xB4D42F18))) ^ v1)))(v3);
}

uint64_t sub_243F8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char *a10, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v23 = 1785193651 * ((1722119212 - ((v22 - 144) | 0x66A5742C) + ((v22 - 144) | 0x995A8BD3)) ^ 0x8A8667F3);
  *(v22 - 144) = v21;
  *(v22 - 136) = v23 + a1 + 310;
  *(v22 - 132) = v19 + v23 - 986202239 + a1 + 787;
  *(v22 - 128) = &a17;
  v24 = (*(v20 + 8 * (a1 + 1343)))(v22 - 144);
  return sub_3E860(v24, v25, v26, v27, v28, v29, v30, v31, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_244B8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v11 = *(v9 + 48 * v6 + 36);
  v13 = v11 != a3 && v11 + a4 < v10;
  return (*(v7 + 8 * ((v13 * (v8 + ((v4 + 1100) ^ (v5 + 1533)) + 105)) ^ v4)))();
}

void sub_244FC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = v6 - 97;
  a4 = v5;
  a5 = (v6 - 114) ^ (1564307779 * (&a3 ^ 0x970DCC13));
  (*(a1 + 8 * ((v6 - 97) ^ 0xF9C)))(&a3);
  *(v7 + 4) = (v8 ^ 0xCDD8C69F) - *(v7 + 4);
  JUMPOUT(0x129B0);
}

void sub_2478C(uint64_t a1)
{
  v1 = *(a1 + 24) + 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_248E8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = v3 - 1;
  *(a2 + v8) = *(a1 + v8) - (v6 & (2 * *(a1 + v8))) + 50;
  return (*(v5 + 8 * ((27 * (v8 != (v2 ^ v7 ^ v4))) ^ v2)))();
}

uint64_t sub_24A28()
{
  v2 = STACK[0x340] - 771;
  v3 = (((LODWORD(STACK[0x59C]) ^ 0x11E7EAC3) - 300411587) ^ ((LODWORD(STACK[0x59C]) ^ 0x3F7DCC25) - 1065208869) ^ ((LODWORD(STACK[0x59C]) ^ 0x9A4E0FEB) + 1706160149)) + 1772638746 + (((v1 ^ 0xE51C8EF9) + 451113223) ^ ((v1 ^ 0x563EF5E2) - 1446966754) ^ ((v1 ^ ((STACK[0x340] - 899) | 0x80) ^ 0x7F652B7) - 133583382));
  *(STACK[0x228] + 52) = ((v3 % 0x2710) ^ 0xDEEEFD8D) + 1637734272 + ((2 * (v3 % 0x2710)) & 0x7B1A);
  v4 = STACK[0x5A4];
  STACK[0x4F8] -= 1616;
  LODWORD(STACK[0x52C]) = v4;
  return (*(v0 + 8 * ((1514 * (v4 == -1261164275)) ^ v2)))();
}

uint64_t sub_24CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  ++*(v8 + 52);
  LODWORD(STACK[0x3BC]) = *(v8 + 360);
  STACK[0x4F8] += ((v6 + 1002) | 4u) ^ 0xFFFFFFFFFFFFF086;
  LODWORD(STACK[0x504]) = a6;
  return (*(v7 + 8 * ((78 * (STACK[0x350] == 0)) ^ v6)))();
}

void sub_24DA0(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_9DA90 + v1 - 597) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 11992])(32, 0x101004023FF3BD5) == 0) * (((v1 - 92) | 0x89) - 628)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_24E5C()
{
  v3 = LODWORD(STACK[0x524]) - 356556495;
  v4 = ((v0 - 1700345161) < 0xFD700643) ^ (v3 < (((v1 - 503) | 0x10) ^ 0xFD7003CA) + ((v1 + 1713206652) & 0x99E282B3));
  v5 = v3 < v0 - 1700345161;
  if (v4)
  {
    v5 = (v0 - 1700345161) < 0xFD700643;
  }

  return (*(v2 + 8 * (v1 | (2 * v5))))();
}

void sub_24F4C(uint64_t a1)
{
  v1 = *(a1 + 8) - 1785193651 * ((a1 & 0x5CB9D977 | ~(a1 | 0x5CB9D977)) ^ 0xB09ACAA8);
  v2 = *a1;
  v3 = *(&off_9DA90 + v1 - 350) - 8;
  (*&v3[8 * (v1 ^ 0x93F)])(*(&off_9DA90 + v1 - 246), sub_4088);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_25080@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x64) + 50;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((2034 * v4) ^ 0x390u)))(0);
}

uint64_t sub_250D0(uint64_t a1)
{
  v1 = ((*a1 ^ (50899313 * (a1 ^ 0xC861C456))) + 559) | 6;
  v2 = (v1 ^ 0x99139929) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_9DA90 + (v1 ^ 0x658)) + (((v2 > v1 - 1567) * ((v1 ^ 0x3D7) - 1201)) ^ v1) - 1))();
}

uint64_t sub_25180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v20 = 1785193651 * ((((v19 - 136) ^ 0x58986BCA) + 422353094 - 2 * (((v19 - 136) ^ 0x58986BCA) & 0x192C98C6)) ^ 0x52681F2C);
  *(v19 - 136) = &a14;
  *(v19 - 128) = v14 - v20 - 719;
  *(v19 - 124) = ((v14 - 1378) ^ v16 ^ 0x7EBD892A) - v20 + ((2 * v16) & 0xFD7B1676) - 270565675;
  (*(v15 + 8 * (v14 ^ 0xFBC)))(v19 - 136);
  *(v19 - 136) = a11;
  *(v19 - 128) = v14 - 1378 - ((v19 - 136) ^ 0xD4A71C5A) * v18 + 762;
  *(v19 - 120) = &a12;
  v21 = (*(v15 + 8 * (v14 + 328)))(v19 - 136);
  return (*(v15 + 8 * ((90 * ((((v14 - 401) ^ (*(v19 - 112) + v17 < (((v14 - 1639) | 0x280) ^ 0xFA2A17FD))) & 1) == 0)) ^ (v14 - 1378))))(v21);
}

void sub_252C0()
{
  v0 = *(&off_9DA90 + (byte_7C1B8[(byte_8834C[(107 * (dword_A7140 ^ 0xF9 ^ qword_A70B8)) - 12] ^ 0xA4) - 8] ^ (107 * (dword_A7140 ^ 0xF9 ^ qword_A70B8))) + 37);
  v1 = *(&off_9DA90 + (byte_84BC0[byte_81150[(107 * ((qword_A70B8 + *v0) ^ 0xF9))] ^ 0xBD] ^ (107 * ((qword_A70B8 + *v0) ^ 0xF9))) + 18);
  v2 = *v0 - &v4 + *(v1 - 4);
  *v0 = 1010482283 * (v2 + 0x5450BF49BFD4E907);
  *(v1 - 4) = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  v5[0] = (1037613739 * (v5 ^ 0xD1022D7F)) ^ 0x9617D40F;
  LOBYTE(v1) = 107 * ((*(v1 - 4) + *v0) ^ 0xF9);
  v3 = *(&off_9DA90 + ((107 * (dword_A7140 ^ 0xF9 ^ qword_A70B8)) ^ byte_84CC0[byte_81250[(107 * (dword_A7140 ^ 0xF9 ^ qword_A70B8))] ^ 0xAD]) - 149) - 8;
  (*&v3[8 * (v1 ^ byte_84BC0[byte_81150[v1] ^ 0xBD]) + 17880])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_255C0(uint64_t a1)
{
  v2 = *(&off_9DA90 + ((107 * ((qword_A70B8 + dword_A70D0) ^ 0xF9)) ^ byte_7BFB0[byte_88240[(107 * ((qword_A70B8 + dword_A70D0) ^ 0xF9))] ^ 0x16]) - 127);
  v3 = *(v2 - 4);
  v4 = *(&off_9DA90 + (byte_84BC8[(byte_81150[(107 * ((qword_A70B8 + v3) ^ 0xF9))] ^ 0xBD) - 8] ^ (107 * ((qword_A70B8 + v3) ^ 0xF9))) + 18);
  v5 = (*(v4 - 4) ^ v3) - &v9;
  v6 = 1010482283 * v5 - 0x5450BF49BFD4E907;
  v7 = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_9DA90 + ((107 * ((qword_A70B8 - dword_A70D0) ^ 0xF9)) ^ byte_7C1B0[byte_88340[(107 * ((qword_A70B8 - dword_A70D0) ^ 0xF9))] ^ 0x8F]) + 53) - 8;
  (*&v8[8 * (byte_81350[byte_7C0B0[(107 * ((v7 - v4) ^ 0xF9))] ^ 0xCD] ^ (107 * ((v7 - v4) ^ 0xF9))) + 17040])(*(&off_9DA90 + ((107 * ((v7 + v4) ^ 0xF9)) ^ byte_81350[byte_7C0B0[(107 * ((v7 + v4) ^ 0xF9))] ^ 0xCD]) + 103), sub_4088);
  __asm { BRAA            X9, X17 }
}

void sub_257AC(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_25898@<X0>(int a1@<W8>)
{
  v7 = *(v3 + 4 * (v5 - 1));
  *(v3 + 4 * v5) = ((1566083941 * (v7 ^ (v7 >> 30))) ^ *(v3 + 4 * v5)) - v5;
  *(v6 - 120) = v4 + a1 - 288126657;
  v8 = v6 - 176;
  *(v8 + 64) = v4 + 623;
  *(v6 - 152) = ((a1 + 1610053433) ^ 0x61) - v4;
  *(v6 - 132) = a1 + 1610053433 - v4;
  *(v6 - 128) = -v4;
  *(v6 - 124) = (a1 + 1610053457) ^ v4;
  *(v8 + 32) = v5 + 1 - v4;
  v9 = (*(v2 + 8 * (v1 + a1 + 1605)))(v6 - 152);
  return (*(v2 + 8 * *(v6 - 136)))(v9);
}

uint64_t sub_259A8@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v7 = v3 - ((2 * v3) & 0x180) - 712618048;
  v8 = *result;
  v9 = *(result + 32);
  v10 = *(result + 16);
  *a2 = v4;
  *v10 = v7;
  *v9 = v6;
  *v8 = v2 + v5;
  *(result + 8) = -1261164275;
  return result;
}

uint64_t sub_25B5C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 ^ 0x3A9;
  v9 = ((a1 ^ 0x3A9) + 195) | 0xA;
  v10 = v4[3];
  *(v7 - 116) = v5;
  v11 = *(&off_9DA90 + (v8 ^ 0x463)) - 4;
  v12 = *(&off_9DA90 + v8 - 961) - 4;
  v13 = v11[v10 ^ 0xDE] ^ v10;
  v14 = (v12[v4[4] ^ 0xF7] + 68) ^ 0x18;
  v15 = *(&off_9DA90 + v8 - 956) - 8;
  v16 = v15[v4[14] ^ 0x82];
  v17 = v9;
  v18 = *(&off_9DA90 + v8 - 929) - 8;
  v19 = v18[v4[5] ^ 0x6DLL] << 16;
  v20 = ((((v15[v4[6]] << 8) ^ 0x81C16E80) & ((v14 << 24) ^ 0xA3CBFF80) & 0x81FFFFFF | (((v14 >> 1) & 0x3F) << 25)) ^ 0x45570F5D) & (v19 ^ 0xFFCEFFDD);
  v21 = v19 & 0x690000;
  LOBYTE(v19) = (v4[15] - ((2 * v4[15]) & 8) - 124) ^ v11[v4[15] ^ 0xFDLL];
  v22 = ((v12[v4[8] ^ 0x70] + 68) ^ 0x5E) << 24;
  v23 = v18[v4[13] ^ 0xC7];
  v24 = v11[v4[11] ^ 0xD3] ^ v4[11];
  v25 = ((v18[v4[1] ^ 0x40] << 16) ^ 0x2944739B) & (v13 ^ 0xBFFF77FC) | v13 & 0x64;
  v26 = (v12[v4[12] ^ 0xBDLL] + 68) ^ 0x1B;
  v27 = (v12[v4[12] ^ 0xBDLL] + 68) ^ 0x1B;
  v28 = ((v23 << 16) ^ 0xCF2F87B3) & ~(v26 << 24) & 0xCFFFFFFF | (((v26 >> 4) & 3) << 28);
  LODWORD(v18) = (v18[v4[9] ^ 0x7CLL] ^ 0xD0) << 16;
  v29 = v18 & 0x970000 | ((v24 & 0xA2 | (((v22 ^ 0x30A0FF82) & ((v15[(v4[10] ^ (v9 + 62))] << 8) ^ 0x76A00B82) | v22 & 0x89000000) ^ 0xD1FF97DF) & (v24 ^ 0xFFFFFF83)) ^ 0x9D3704D4) & ~v18;
  v30 = ((((v15[v4[2] ^ 0x87] << 8) ^ 0x7550CEFA) & (v25 ^ 0x5E018C41) | v25 & 0x8AF0005) ^ 0x7DD88BFB) + (((v12[*v4 ^ 9] + 68) ^ 0x85) << 24);
  v31 = (v4[7] - ((2 * v4[7]) & 8) - 124) ^ v11[v4[7] ^ 0x2FLL];
  v32 = (v28 ^ 0x30E4784C) & (((v19 ^ 0xF8ADFF04) & ((v16 << 8) ^ 0xF8AD027D) | v19 & 0x82) ^ 0x5F69DD7E) ^ v28 & 0x583B0000;
  v33 = v31 & 0xA6 | (v21 ^ 0x6007D384 ^ v20) & ~v31;
  v34 = *(&off_9DA90 + (v8 ^ 0x411)) - 8;
  LODWORD(v10) = *&v34[4 * (v23 ^ 0xBE)];
  HIDWORD(v35) = v10 ^ 0x1AA93C9;
  LODWORD(v35) = v10 ^ 0x58000000;
  v36 = *(&off_9DA90 + v8 - 931) - 4;
  v37 = *&v36[4 * (v27 ^ 0xB4)];
  v38 = *(&off_9DA90 + v8 - 1006) - 4;
  v39 = 690312999 * *&v38[4 * (v19 ^ 0x78)] - 85913135;
  v40 = v16 ^ 0xF0;
  v41 = *(&off_9DA90 + (v8 ^ 0x4A2)) - 4;
  v42 = *&v41[4 * v40];
  *(v7 - 168) = v30;
  *(v7 - 164) = v29;
  *(v7 - 176) = v33;
  *(v7 - 172) = v32;
  v33 ^= 0x9A90CB0B;
  v43 = v30 ^ (v35 >> 27) ^ v39 ^ (-219980569 * v37 - 371359334) ^ (-36060539 * v42 + 1423491956) ^ 0x1A;
  *(v7 - 184) = v43 ^ v33;
  v44 = v29 ^ 0x3B685709 ^ v43 ^ v33;
  v45 = v44 ^ v32;
  v46 = *&v34[4 * (((v45 ^ 0x8E8C66C8) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v46 ^ 0x1AA93C9;
  LODWORD(v35) = v46 ^ 0x58000000;
  LODWORD(v10) = (690312999 * *&v38[4 * (v45 ^ 0x89)] - 85913135) ^ (v35 >> 27) ^ (-36060539 * *&v41[4 * (((v45 ^ 0x66C8) >> 8) ^ 0xAF)] + 1423491956) ^ (-219980569 * *&v36[4 * (HIBYTE(v45) ^ 0xAF)] - 371359334);
  v198 = v45;
  v47 = v45 ^ 0x7A3E8043;
  v48 = v10 ^ v33;
  *(v7 - 188) = v44;
  v196 = v10 ^ v33 ^ v44;
  v49 = v196 ^ 0xC1D6411F ^ v45 ^ 0x7A3E8043;
  v50 = *&v34[4 * (BYTE2(v49) ^ 0xBF)];
  HIDWORD(v35) = v50 ^ 0x1AA93C9;
  LODWORD(v35) = v50 ^ 0x58000000;
  v51 = (690312999 * *&v38[4 * (v196 ^ 0x1F ^ v45 ^ 0x43 ^ 0xAB)] - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v49) ^ 0x20)] - 371359334);
  v195 = v49;
  v52 = *&v41[4 * (BYTE1(v49) ^ 0xE9)];
  *(v7 - 180) = v43;
  v194 = v10 ^ v43;
  v53 = v51 ^ v10 ^ v43 ^ (-36060539 * v52 + 1423491956) ^ (v35 >> 27);
  v197 = v48;
  v192 = v53 ^ v48;
  LODWORD(v10) = v53 ^ v48 ^ 0xF78131F4;
  v54 = v10 ^ v47 ^ 0x68E79195;
  v55 = *&v34[4 * (BYTE2(v54) ^ 0xD9)];
  HIDWORD(v35) = v55 ^ 0x1AA93C9;
  LODWORD(v35) = v55 ^ 0x58000000;
  v191 = v10 ^ v47;
  v193 = v53;
  v56 = (-36060539 * *&v41[4 * (BYTE1(v54) ^ 0x49)] + 1423491956) ^ (690312999 * *&v38[4 * ((v10 ^ v47) ^ 0x5F)] - 85913135) ^ v53 ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (((v10 ^ v47) >> 24) ^ 0xBD)] - 371359334);
  v188 = v56 ^ v10;
  v189 = v10 ^ v196 ^ 0xC1D6411F;
  LODWORD(v10) = v56 ^ v10 ^ 0x5F64A794;
  v187 = v10 ^ v189;
  v57 = v10 ^ v189 ^ 0xC733F746;
  v58 = v57 ^ v54;
  v59 = v57 ^ v54 ^ 0x81B0C147;
  v60 = *&v34[4 * (BYTE2(v59) ^ 0xD9)];
  HIDWORD(v35) = v60 ^ 0x1AA93C9;
  LODWORD(v35) = v60 ^ 0x58000000;
  v190 = v56;
  v186 = v58;
  v61 = (-36060539 * *&v41[4 * (BYTE1(v58) ^ 0x88)] + 1423491956) ^ (v35 >> 27) ^ v56 ^ (690312999 * *&v38[4 * (v58 ^ 0x8D)] - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v58) ^ 0x54)] - 371359334);
  v184 = v61 ^ v10;
  LODWORD(v10) = v61 ^ v10 ^ 0xD5833601;
  v62 = v10 ^ v57;
  v63 = v10 ^ v57 ^ v59;
  v64 = *&v34[4 * (BYTE2(v63) ^ 0x8C)];
  HIDWORD(v35) = v64 ^ 0x1AA93C9;
  LODWORD(v35) = v64 ^ 0x58000000;
  v185 = v61;
  v65 = (-36060539 * *&v41[4 * (BYTE1(v63) ^ 0x1E)] + 1423491956) ^ (-219980569 * *&v36[4 * (HIBYTE(v63) ^ 0xE7)] - 371359334) ^ v61 ^ (v35 >> 27) ^ (690312999 * *&v38[4 * (v63 ^ 0xED)] - 85913135);
  LODWORD(v181) = v65 ^ v10;
  LODWORD(v10) = v65 ^ v10 ^ 0xE8131F4;
  v182 = v63;
  v183 = v62;
  HIDWORD(v180) = v10 ^ v62;
  v66 = v10 ^ v62 ^ 0xC00207F5;
  v67 = v66 ^ v63;
  v68 = *&v34[4 * (((v67 ^ 0x32555727) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v68 ^ 0x1AA93C9;
  LODWORD(v35) = v68 ^ 0x58000000;
  HIDWORD(v181) = v65;
  HIDWORD(v179) = (-36060539 * *&v41[4 * (((v67 ^ 0x5727) >> 8) ^ 0x8F)] + 1423491956) ^ (690312999 * *&v38[4 * (v67 ^ 0x5F)] - 85913135) ^ v65 ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (HIBYTE(v67) ^ 0x63)] - 371359334);
  LODWORD(v180) = v67;
  v69 = v67 ^ 0xB6E79195;
  LODWORD(v179) = HIDWORD(v179) ^ 0x5F64A794 ^ v10;
  v70 = v179 ^ v66 ^ v67 ^ 0xB6E79195;
  v71 = *&v34[4 * (BYTE2(v70) ^ 0x8E)];
  HIDWORD(v35) = v71 ^ 0x1AA93C9;
  LODWORD(v35) = v71 ^ 0x58000000;
  LODWORD(v178) = v70;
  v72 = (690312999 * *&v38[4 * (v70 ^ 0x18)] - 85913135) ^ (-36060539 * *&v41[4 * (BYTE1(v70) ^ 0x19)] + 1423491956) ^ (v35 >> 27) ^ (-219980569 * *&v36[4 * (HIBYTE(v70) ^ 0x98)] - 371359334);
  v73 = v72 ^ v10;
  v74 = v72 ^ v10 ^ v69;
  v75 = *&v34[4 * (((v74 ^ 0x76E59660) >> 16) ^ 0x3C)];
  HIDWORD(v35) = v75 ^ 0x1AA93C9;
  LODWORD(v35) = v75 ^ 0x58000000;
  HIDWORD(v177) = v72 ^ HIDWORD(v179) ^ 0x5F64A794;
  v76 = (-219980569 * *&v36[4 * (HIBYTE(v74) ^ 0xD8)] - 371359334) ^ HIDWORD(v177) ^ (690312999 * *&v38[4 * (v74 ^ 0xCA)] - 85913135) ^ (-36060539 * *&v41[4 * (((v74 ^ 0x9660) >> 8) ^ 0xDF)] + 1423491956) ^ (v35 >> 27);
  HIDWORD(v178) = v179 ^ v66;
  HIDWORD(v176) = v74;
  HIDWORD(v175) = v76 ^ v179 ^ v66 ^ 0xBFE59660;
  v77 = HIDWORD(v175) ^ v74;
  v78 = *&v38[4 * ((BYTE4(v175) ^ v74) ^ 0x78)];
  LODWORD(v175) = HIDWORD(v175) ^ v74 ^ 0x52B2C6B2;
  v79 = *&v34[4 * (((HIDWORD(v175) ^ v74) >> 16) ^ 0x6B)];
  HIDWORD(v35) = v79 ^ 0x1AA93C9;
  LODWORD(v35) = v79 ^ 0x58000000;
  LODWORD(v11) = (v35 >> 27) ^ (690312999 * v78 - 85913135) ^ (-219980569 * *&v36[4 * (HIBYTE(v77) ^ 0x87)] - 371359334) ^ (-36060539 * *&v41[4 * (BYTE1(v77) ^ 0x8F)] + 1423491956);
  v80 = *(&off_9DA90 + v8 - 1080) - 4;
  v81 = *(&off_9DA90 + v8 - 919);
  v82 = *(&off_9DA90 + (v8 ^ 0x498)) - 12;
  v83 = *(&off_9DA90 + v8 - 1047);
  v174 = v80;
  v84 = (v80[*(v7 - 97) ^ 0xC9] ^ 0xFF | ((*(v81 + (*(v7 - 99) ^ 0x76)) ^ 0xCC) << 16) | (((*(v83 + (*(v7 - 100) ^ 0x17)) - 9) ^ 0x52) << 24) | ((v82[*(v7 - 98) ^ 0xECLL] ^ (*(v7 - 98) - ((2 * *(v7 - 98)) & 0xAE) - 41) ^ 0xBC) << 8)) ^ 0xD2D2D211;
  v85 = (v80[*(v7 - 109) ^ 0x30] ^ 0x8E | ((8 - *(v83 + (*(v7 - 112) ^ 0xF4))) << 24) | ((v82[*(v7 - 110) ^ 0xDELL] ^ (*(v7 - 110) - ((2 * *(v7 - 110)) & 0xAE) - 41) ^ 0x98) << 8) | ((*(v81 + (*(v7 - 111) ^ 0x39)) ^ 0x26) << 16)) ^ 0xD2D2D2D2;
  v86 = (v80[*(v7 - 105) ^ 0xDLL] ^ 0x15 | ((v82[*(v7 - 106) ^ 0x17] ^ (*(v7 - 106) - ((2 * *(v7 - 106)) & 0xAE) - 41) ^ 0xA0) << 8) | ((*(v81 + (*(v7 - 107) ^ 0xEFLL)) ^ 0x7C) << 16) | (((*(v83 + (*(v7 - 108) ^ 0x9CLL)) - 9) ^ 0x1C) << 24)) ^ 0xD2D2D2D2;
  v87 = (v80[*(v7 - 101) ^ 0xCCLL] ^ 0x78 | ((v82[*(v7 - 102) ^ 0x4ELL] ^ (*(v7 - 102) - ((2 * *(v7 - 102)) & 0xAE) - 41) ^ 0x16) << 8) | (((*(v83 + (*(v7 - 104) ^ 9)) - 9) ^ 0xDA) << 24) | ((*(v81 + (*(v7 - 103) ^ 0x1BLL)) ^ 0x70) << 16)) ^ 0xD2D2D2D2;
  HIDWORD(v173) = (((*(v7 - 116) ^ 0xF7FF6FC1) + 506026907) ^ ((*(v7 - 116) ^ 0xF9977F19) + 272714563) ^ ((*(v7 - 116) ^ 0x22A4E5F7) - 881667667)) + 1043720715;
  LODWORD(v177) = v73;
  LODWORD(v173) = v73 ^ 0xD000000 ^ v11;
  HIDWORD(v172) = v76 ^ v179 ^ v66 ^ 0x64000000 ^ v173;
  LODWORD(v176) = v76;
  LODWORD(v172) = v11 ^ v76;
  *(v7 - 160) = v6;
  *(v7 - 116) = 0;
  *(v7 - 140) = 0;
  *(v7 - 136) = v17;
  LODWORD(v11) = (v17 - 207) | 0x240;
  *(v7 - 132) = v11;
  v88 = v6;
  v89 = *(v81 + (v6[13] ^ 0x90));
  v90 = v6[9] ^ 0xD2;
  v91 = (v11 - 1647);
  *(v7 - 128) = v91;
  LODWORD(v10) = ((v89 ^ 0x7F) << 16) | (((*(v83 + (v6[v91] ^ 0x80)) - 9) ^ 0x31) << 24);
  v92 = *(v7 - 176) ^ v86 ^ 0x76E4D1F9 ^ (((v82[v88[6] ^ 8] ^ (v88[6] + (~(2 * v88[6]) | 0x51) - 40) ^ 0x19) << 8) | (((*(v83 + (v88[4] ^ 0xC5)) - 9) ^ 0xFFFFFFFB) << 24) | v80[v88[7] ^ 0xFDLL] ^ 0xFF | ((*(v81 + (v88[5] ^ 0xF5)) ^ 0xCB) << 16));
  v93 = *(v7 - 168) ^ v85 ^ 0x4D036472 ^ (v80[v88[3] ^ 0x75] ^ 0x52 | (((*(v83 + (*v88 ^ 0xB0)) - 9) ^ 0x16) << 24) | ((*(v81 + (v88[1] ^ 0x93)) ^ 1) << 16) | ((v82[v88[2] ^ 0x1CLL] ^ (v88[2] + (~(2 * v88[2]) | 0x51) - 40) ^ 0x5D) << 8));
  LODWORD(v38) = *(v7 - 172) ^ v84 ^ 0xA24B29A ^ (v10 | ((v82[v88[14] ^ 5] ^ (v88[14] - ((2 * v88[14]) & 0xAE) - 41) ^ 0x99) << 8) | v80[v88[15] ^ 8] ^ 0xFF);
  LODWORD(v90) = *(v7 - 164) ^ v87 ^ 0x6769B69B ^ (v80[v88[11] ^ 9] ^ 0xF8 | ((*(v81 + v90) ^ 0xE9) << 16) | ((v82[v88[10] ^ 0xA9] ^ (v88[10] - ((2 * v88[10]) & 0xAE) - 41) ^ 0xC2) << 8) | (((*(v83 + (v88[8] ^ 2)) - 9) ^ 0xE2) << 24));
  v94 = *(&off_9DA90 + v17 - 1281) - 4;
  LODWORD(v10) = *&v94[4 * ((*(v7 - 176) ^ v86 ^ 0xD1F9 ^ (((v82[v88[6] ^ 8] ^ (v88[6] + (~(2 * v88[6]) | 0x51) - 40) ^ 0x19) << 8) | v80[v88[7] ^ 0xFDLL] ^ 0xFF)) >> 8)];
  v95 = *(&off_9DA90 + v17 - 1259) - 4;
  v96 = *(&off_9DA90 + (v17 ^ 0x550)) - 8;
  LODWORD(v10) = *&v96[4 * (v38 >> 24)] ^ v10;
  v97 = *(&off_9DA90 + v17 - 1251) - 4;
  v98 = *&v97[4 * v90] - 190468687;
  LODWORD(v80) = *&v94[4 * BYTE1(v93)] ^ *&v96[4 * BYTE3(v90)];
  LODWORD(v23) = (*&v97[4 * v38] - 541937675 - ((2 * *&v97[4 * v38] - 380937374) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v92)];
  LODWORD(v11) = (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v93)];
  v99 = *&v96[4 * HIBYTE(v92)] ^ *&v95[4 * BYTE2(v90)] ^ (*&v97[4 * v93] - 190468687);
  LODWORD(v11) = *&v94[4 * BYTE1(v90)] ^ *(v7 - 180) ^ (v11 + 1283085937 - ((2 * v11) & 0x98F4ACE2));
  v100 = *&v95[4 * BYTE2(v38)] ^ *(v7 - 188) ^ (*&v97[4 * v92] - 190468687) ^ ((v80 ^ 0x32E473E4) - 351468988 - 2 * ((v80 ^ 0x32E473E4) & 0x6B0D0245 ^ v80 & 1));
  LODWORD(v80) = *&v94[4 * BYTE1(v38)] ^ *(v7 - 184) ^ ((v99 ^ 0x959327D1) + 1283085937 - 2 * ((v99 ^ 0x959327D1) & 0x4C7A5679 ^ v99 & 8));
  LODWORD(v90) = v80 ^ 0xBF80DD5E;
  LODWORD(v38) = (v11 ^ 0xD7674CCB) >> 24;
  v101 = v198 ^ *&v95[4 * BYTE2(v93)] ^ v98 ^ 0x731FA71B ^ ((v10 ^ 0x32E473E4) - 351468988 - 2 * ((v10 ^ 0x32E473E4) & 0x6B0D0257 ^ v10 & 0x13));
  v102 = *&v97[4 * ((v198 ^ v95[4 * BYTE2(v93)] ^ v98) ^ 0x1B ^ ((v10 ^ 0xE4) + 68 - 2 * ((v10 ^ 0xE4) & 0x57 ^ v10 & 0x13)))];
  LODWORD(v91) = (v80 ^ 0xBF80DD5E) >> 24;
  v103 = *&v95[4 * ((v11 ^ 0xD7674CCB) >> 16)] ^ *&v96[4 * HIBYTE(v101)];
  v104 = *&v94[4 * ((v100 ^ 0xDD4) >> 8)] ^ (v102 + 1092617250 - ((2 * v102 - 380937374) & 0x98F4ACE2));
  LODWORD(v80) = *&v97[4 * (v80 ^ 0x48)];
  LODWORD(v80) = (v80 + 1933824838 - ((2 * v80 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * ((v100 ^ 0x16B10DD4) >> 24)];
  LODWORD(v80) = (v80 + 1283085937 - ((2 * v80) & 0x98F4ACE2)) ^ *&v94[4 * ((v11 ^ 0x4CCB) >> 8)];
  LODWORD(v11) = *&v97[4 * (v11 ^ 0xDD)];
  LODWORD(v11) = (v11 + 1092617250 - ((2 * v11 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v198 ^ *&v95[4 * BYTE2(v93)] ^ v98 ^ 0xA71B ^ ((v10 ^ 0x73E4) + 580 - 2 * ((v10 ^ 0x73E4) & 0x257 ^ v10 & 0x13))) >> 8)];
  LODWORD(v38) = *&v96[4 * v38] ^ (v104 + 2124293525 - ((2 * v104) & 0xFD3C4B2A));
  LODWORD(v10) = (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A)) ^ *&v96[4 * v91];
  LODWORD(v11) = *&v95[4 * ((v100 ^ 0x16B10DD4) >> 16)];
  v105 = v10 - 351468988 - ((2 * v10) & 0xD61A0488);
  LODWORD(v80) = *&v95[4 * BYTE2(v101)] ^ v196 ^ (v80 - 351468988 - ((2 * v80) & 0xD61A0488));
  LODWORD(v35) = __ROR4__(__ROR4__(*&v95[4 * BYTE2(v90)] ^ 0xB9AB301 ^ (v38 - 351468988 - ((2 * v38) & 0xD61A0488)), 5) ^ 0x50D2ECF9, 27);
  LODWORD(v10) = v194 ^ v35 ^ 0x6EDAF696;
  v106 = ((v103 ^ 0x959327D1) + 1283085937 - 2 * ((v103 ^ 0x959327D1) & 0x4C7A5675 ^ v103 & 4)) ^ v195 ^ *&v94[4 * BYTE1(v90)] ^ (*&v97[4 * (v100 ^ 0xC2)] - 190468687);
  v107 = v197 ^ v11 ^ 0x2201ECBC ^ v105;
  LODWORD(v38) = BYTE3(v10);
  v108 = *&v97[4 * (v80 ^ 0x37)];
  LODWORD(v23) = (v108 - 541937675 - ((2 * v108 - 380937374) & 0xD61A0488)) ^ *&v95[4 * (((v194 ^ v35) >> 16) ^ 0x45)];
  v109 = *&v96[4 * ((v80 ^ 0xD62C0A37) >> 24)] ^ *&v94[4 * BYTE1(v10)];
  LODWORD(v23) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v107)];
  LODWORD(v11) = *&v94[4 * ((v80 ^ 0xA37) >> 8)] ^ *&v95[4 * BYTE2(v107)];
  v110 = *&v96[4 * ((v106 ^ 0xFC47C039) >> 24)];
  LODWORD(v10) = *&v95[4 * (BYTE2(v80) ^ 0xB3)] ^ (*&v97[4 * ((v194 ^ v35) ^ 0x96)] - 190468687) ^ *&v96[4 * HIBYTE(v107)];
  LODWORD(v90) = *&v97[4 * (v106 ^ 0x39)] - 190468687;
  v111 = *&v94[4 * (BYTE1(v106) ^ 0x87)];
  v112 = ((v109 ^ 0x32E473E4) - 351468988 - 2 * ((v109 ^ 0x32E473E4) & 0x6B0D024C ^ v109 & 8)) ^ v189 ^ *&v95[4 * ((v106 ^ 0xFC47C039) >> 16)] ^ (*&v97[4 * v107] - 190468687);
  v113 = v191 ^ v110 ^ 0x61C6B6CD ^ (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A));
  LODWORD(v90) = ((v11 ^ 0xA7775435) + 2124293525 - 2 * ((v11 ^ 0xA7775435) & 0x7E9E259D ^ v11 & 8)) ^ v193 ^ *&v96[4 * v38] ^ v90;
  LODWORD(v10) = v111 ^ v192 ^ ((v10 ^ 0x959327D1) + 1283085937 - 2 * ((v10 ^ 0x959327D1) & 0x4C7A5673 ^ v10 & 2));
  BYTE2(v38) = BYTE2(v10) ^ 0x65;
  LODWORD(v80) = (v10 ^ 0x7D650C28) >> 24;
  v114 = *&v97[4 * (v90 ^ 0xDD)];
  v115 = *&v97[4 * (v10 ^ 0x28)];
  LODWORD(v23) = (v115 + 1933824838 + ((380937372 - 2 * v115) | 0x2C3B4D5) + 1) ^ *&v96[4 * ((v112 ^ 0x7F82DAABu) >> 24)];
  LODWORD(v23) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * (((v90 ^ 0x35DF) >> 8) ^ 0x79)];
  v116 = (v114 + 1092617250 - ((2 * v114 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v113)];
  LODWORD(v10) = *&v94[4 * (BYTE1(v10) ^ 0x4B)] ^ 0xA7775435 ^ *&v95[4 * (BYTE2(v90) ^ 0x67)];
  LODWORD(v11) = *&v95[4 * ((v112 ^ 0x7F82DAABu) >> 16)] ^ (v116 - 351468988 - ((2 * v116) & 0xD61A0488));
  v117 = v10 + 2124293525 - ((2 * v10) & 0xFD3C4B2A);
  LODWORD(v10) = *&v95[4 * BYTE2(v38)] ^ 0x959327D1 ^ *&v96[4 * (BYTE3(v90) ^ 0xBD)] ^ (*&v97[4 * v113] - 190468687);
  LODWORD(v11) = *&v96[4 * v80] ^ v188 ^ (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A));
  LODWORD(v80) = v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2);
  LODWORD(v10) = *&v95[4 * BYTE2(v113)] ^ v187 ^ (v23 - 351468988 - ((2 * v23) & 0xD61A0488));
  LODWORD(v23) = v11 ^ 0x66654B3E;
  v118 = v117 ^ v186 ^ *&v96[4 * HIBYTE(v113)] ^ (*&v97[4 * (v112 ^ 0xBD)] - 190468687);
  LODWORD(v80) = v190 ^ *&v94[4 * ((v112 ^ 0xDAAB) >> 8)] ^ 0xE82DABD ^ v80;
  v119 = v80 >> 24;
  BYTE2(v112) = BYTE2(v10) ^ 0x80;
  v120 = (v11 ^ 0x66654B3E) >> 24;
  LODWORD(v11) = *&v97[4 * (v11 ^ 0x28)];
  LODWORD(v38) = *&v96[4 * v120];
  v121 = (*&v97[4 * v80] + 1092617250 - ((2 * *&v97[4 * v80] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v118 ^ 0xE61F) >> 8)];
  LODWORD(v38) = (v121 + 2124293525 - ((2 * v121) & 0xFD3C4B2A)) ^ v38;
  v122 = *&v95[4 * BYTE2(v23)];
  LODWORD(v11) = (v11 + 1092617250 - ((2 * v11 - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v80)];
  LODWORD(v11) = (v11 - 351468988 - ((2 * v11) & 0xD61A0488)) ^ *&v95[4 * (BYTE2(v118) ^ 0x91)];
  LODWORD(v23) = *&v96[4 * ((v118 ^ 0x880EE61F) >> 24)] ^ 0xF9992A21 ^ *&v94[4 * BYTE1(v23)];
  LODWORD(v80) = *&v95[4 * BYTE2(v80)] ^ 0x2BEAE880;
  LODWORD(v80) = v80 + v23 - 2 * (v80 & v23);
  LODWORD(v23) = *&v96[4 * ((v10 ^ 0xA480DD5E) >> 24)];
  LODWORD(v90) = *&v97[4 * (v118 ^ 0x1F)];
  LODWORD(v90) = (v90 - 541937675 - ((2 * v90 - 380937374) & 0xD61A0488)) ^ v122;
  LODWORD(v90) = (v90 + 2124293525 - ((2 * v90) & 0xFD3C4B2A)) ^ *&v96[4 * v119];
  v123 = *&v94[4 * ((v10 ^ 0xDD5E) >> 8)];
  v124 = v90 + 1283085937 - ((2 * v90) & 0x98F4ACE2);
  LODWORD(v10) = (*&v97[4 * (v10 ^ 0x48)] - 190468687) ^ v182 ^ v80;
  LODWORD(v90) = v23 ^ v183 ^ (v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A));
  LODWORD(v11) = v123 ^ v185 ^ v124;
  v125 = v184 ^ *&v95[4 * BYTE2(v112)] ^ 0x84654B28 ^ (v38 - 351468988 - ((2 * v38) & 0xD61A0488));
  v126 = *&v97[4 * (v10 ^ 0x7E)];
  v127 = *&v97[4 * ((v123 ^ v185 ^ v124) ^ 0xDD)];
  v128 = *&v95[4 * (BYTE2(v11) ^ 0x67)] ^ *&v96[4 * (BYTE3(v10) ^ 0x30)] ^ (*&v97[4 * (v90 ^ 0x6E)] - 190468687);
  v129 = (v127 + 1933824838 - ((2 * v127 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v125)];
  LODWORD(v80) = (v129 - 351468988 - ((2 * v129) & 0xD61A0488)) ^ *&v95[4 * (((v90 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v130 = *&v95[4 * BYTE2(v125)] ^ (v126 - 541937675 - ((2 * v126 - 380937374) & 0xD61A0488));
  LODWORD(v23) = *&v95[4 * (BYTE2(v10) ^ 0xEE)] ^ (*&v97[4 * v125] - 190468687) ^ *&v96[4 * ((v90 ^ 0xD0C9FB6E) >> 24)];
  v131 = *&v94[4 * (BYTE1(v10) ^ 0xC3)];
  LODWORD(v38) = v80 + 1283085937 - ((2 * v80) & 0x98F4ACE2);
  LODWORD(v10) = (v130 + 2124293525 - ((2 * v130) & 0xFD3C4B2A)) ^ *&v96[4 * ((v11 >> 24) ^ 0x5F)];
  LODWORD(v80) = v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2);
  LODWORD(v10) = *&v94[4 * (BYTE1(v11) ^ 0x4C)] ^ HIDWORD(v180) ^ ((v23 ^ 0x959327D1) + 1283085937 - 2 * ((v23 ^ 0x959327D1) & 0x4C7A5677 ^ v23 & 6));
  v132 = ((v128 ^ 0x959327D1) + 1283085937 - 2 * ((v128 ^ 0x959327D1) & 0x4C7A567F ^ v128 & 0xE)) ^ v180 ^ *&v94[4 * BYTE1(v125)];
  v133 = *&v94[4 * (BYTE1(v90) ^ 0xBC)] ^ HIDWORD(v181) ^ v80;
  v134 = v181 ^ v131 ^ 0x9A674CDD ^ v38;
  LODWORD(v38) = (*&v97[4 * v134] + 1092617250 - ((2 * *&v97[4 * v134] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v133 ^ 0xDAAB) >> 8)];
  LODWORD(v11) = (v38 - 351468988 - ((2 * v38) & 0xD61A0488)) ^ *&v95[4 * ((v132 ^ 0xBFC6B6DB) >> 16)];
  v135 = v11 + 2124293525 - ((2 * v11) & 0xFD3C4B2A);
  LODWORD(v11) = *&v94[4 * BYTE1(v134)] ^ *&v96[4 * ((v132 ^ 0xBFC6B6DB) >> 24)] ^ (*&v97[4 * (v10 ^ 0xE)] - 190468687);
  v136 = *&v96[4 * ((v133 ^ 0x2982DAAB) >> 24)] ^ *&v94[4 * (BYTE1(v10) ^ 0x2A)];
  LODWORD(v80) = *&v96[4 * HIBYTE(v134)] ^ *&v94[4 * ((v132 ^ 0xB6DB) >> 8)];
  v137 = v132 ^ 0xCD;
  v138 = (v136 ^ 0x32E473E4) - 351468988 - 2 * ((v136 ^ 0x32E473E4) & 0x6B0D0256 ^ v136 & 0x12);
  v139 = *&v97[4 * (v133 ^ 0xBD)] - 190468687;
  v140 = *&v95[4 * ((v133 ^ 0x2982DAAB) >> 16)] ^ v178 ^ ((v11 ^ 0x32E473E4) - 351468988 - 2 * ((v11 ^ 0x32E473E4) & 0x6B0D0247 ^ v11 & 3));
  v141 = HIDWORD(v179) ^ *&v95[4 * BYTE2(v134)] ^ (*&v97[4 * v137] - 190468687) ^ 0x2674CDD ^ v138;
  v142 = v179 ^ v66 ^ *&v96[4 * (BYTE3(v10) ^ 0xA6)] ^ 0xAF54BB9B ^ v135;
  LODWORD(v10) = v179 ^ *&v95[4 * (BYTE2(v10) ^ 0xB3)] ^ v139 ^ 0x2BE67D3F ^ ((v80 ^ 0x32E473E4) - 351468988 - 2 * ((v80 ^ 0x32E473E4) & 0x6B0D025F ^ v80 & 0x1B));
  LODWORD(v80) = *&v97[4 * (v140 ^ 0x8A)];
  LODWORD(v23) = (*&v97[4 * v142] - 541937675 - ((2 * *&v97[4 * v142] - 380937374) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v141)];
  LODWORD(v38) = (v23 + 1283085937 - ((2 * v23) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v10)];
  v143 = *&v96[4 * ((v140 ^ 0x44E9778Au) >> 24)];
  LODWORD(v11) = *&v96[4 * BYTE3(v10)] ^ *&v94[4 * ((v140 ^ 0x778A) >> 8)];
  v144 = *&v97[4 * v141];
  LODWORD(v23) = *&v94[4 * BYTE1(v141)] ^ (*&v97[4 * (v10 ^ 0x16)] - 190468687) ^ *&v96[4 * HIBYTE(v142)];
  LODWORD(v80) = *&v96[4 * HIBYTE(v141)] ^ (v80 + 1933824838 - ((2 * v80 - 380937374) & 0xFD3C4B2A));
  v145 = *&v95[4 * (BYTE2(v140) ^ 0x76)];
  LODWORD(v10) = (v80 - 351468988 - ((2 * v80) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v10)];
  v146 = *&v95[4 * BYTE2(v142)] ^ v73 ^ (v144 - 190468687) ^ ((v11 ^ 0x32E473E4) - 351468988 - 2 * ((v11 ^ 0x32E473E4) & 0x6B0D025C ^ v11 & 0x18));
  LODWORD(v90) = v143 ^ HIDWORD(v176) ^ (v38 + 2124293525 - ((2 * v38) & 0xFD3C4B2A));
  v147 = HIDWORD(v177) ^ *&v94[4 * BYTE1(v142)] ^ 0x26E67D29 ^ (v10 + 1283085937 - ((2 * v10) & 0x98F4ACE2));
  LODWORD(v10) = v179 ^ v66 ^ v73 ^ v145 ^ 0xA254BB9B ^ ((v23 ^ 0x32E473E4) - 351468988 - 2 * ((v23 ^ 0x32E473E4) & 0x6B0D0255 ^ v23 & 0x11));
  LODWORD(v80) = (v90 ^ 0x4BE2758) >> 24;
  v148 = *&v97[4 * (v146 ^ 0x49)];
  LODWORD(v23) = (*&v97[4 * v147] + 1092617250 - ((2 * *&v97[4 * v147] - 380937374) & 0x98F4ACE2)) ^ *&v94[4 * ((v90 ^ 0x2758) >> 8)];
  LODWORD(v90) = (v148 - 541937675 - ((2 * v148 - 380937374) & 0xD61A0488)) ^ *&v95[4 * (BYTE2(v90) ^ 0x21)];
  LODWORD(v90) = (v90 + 2124293525 - ((2 * v90) & 0xFD3C4B2A)) ^ *&v96[4 * BYTE3(v10)];
  LODWORD(v23) = (v23 - 351468988 - ((2 * v23) & 0xD61A0488)) ^ *&v95[4 * BYTE2(v10)];
  v149 = *&v96[4 * (HIBYTE(v146) ^ 0xEF)];
  LODWORD(v11) = *&v97[4 * ((v143 ^ BYTE4(v176) ^ (v38 - 107 - ((2 * v38) & 0x2A))) ^ 0x58)];
  LODWORD(v11) = (v11 + 1933824838 - ((2 * v11 - 380937374) & 0xFD3C4B2A)) ^ *&v96[4 * HIBYTE(v147)];
  LODWORD(v11) = (v11 + 1283085937 - ((2 * v11) & 0x98F4ACE2)) ^ *&v94[4 * BYTE1(v10)];
  LODWORD(v10) = *&v94[4 * (BYTE1(v146) ^ 0xEB)] ^ (*&v97[4 * v10] - 190468687) ^ *&v96[4 * v80];
  LODWORD(v97) = *&v95[4 * BYTE2(v147)] ^ v175 ^ ((v10 ^ 0x32E473E4) - 351468988 - 2 * ((v10 ^ 0x32E473E4) & 0x6B0D024F ^ v10 & 0xB));
  LODWORD(v10) = *&v95[4 * (BYTE2(v146) ^ 3)];
  v150 = *&v94[4 * BYTE1(v147)] ^ HIDWORD(v175) ^ (v90 + 1283085937 - ((2 * v90) & 0x98F4ACE2));
  LODWORD(v11) = v10 ^ v76 ^ (v11 - 351468988 - ((2 * v11) & 0xD61A0488));
  LODWORD(v80) = v76 ^ v73 ^ v149 ^ (v23 + 2124293525 - ((2 * v23) & 0xFD3C4B2A));
  LODWORD(v90) = v80 ^ 0xBD9E3C06;
  LODWORD(v96) = v11 ^ 0xB0693C07;
  v151 = *(v7 - 136);
  v152 = *(&off_9DA90 + v151 - 1271) - 12;
  LODWORD(v23) = *&v152[4 * ((v76 ^ v73 ^ v149 ^ (v23 - 107 - ((2 * v23) & 0x2A))) ^ 7)];
  v153 = *(&off_9DA90 + (v151 ^ 0x5BF)) - 4;
  LODWORD(v80) = *&v153[4 * ((v80 >> 24) ^ 0xD2)];
  v154 = 1909043885 * v80 - ((59991386 * v80 + 18354992) & 0x1EE0BD3E);
  v155 = *(&off_9DA90 + (v151 ^ 0x516));
  LODWORD(v80) = *(v155 + 4 * ((v150 ^ 0xFAB5) >> 8));
  HIDWORD(v35) = v80 ^ 0x24E6661;
  LODWORD(v35) = v80 ^ 0xC0000000;
  LODWORD(v11) = (v35 >> 28) ^ (*&v152[4 * (v97 ^ 0x16)] - 927715928) ^ (1909043885 * *&v153[4 * ((v11 >> 24) ^ 0xDF)] - 259257960);
  v156 = *(v155 + 4 * ((v97 ^ 0xF016) >> 8));
  HIDWORD(v35) = v156 ^ 0x24E6661;
  LODWORD(v35) = v156 ^ 0xC0000000;
  v157 = v35 >> 28;
  v158 = *(v155 + 4 * BYTE1(v90));
  LODWORD(v80) = v23 - ((2 * v23 + 292051792) & 0x1EE0BD3E);
  HIDWORD(v35) = v158 ^ 0x24E6661;
  LODWORD(v35) = v158 ^ 0xC0000000;
  v159 = *(&off_9DA90 + v151 - 1208) - 4;
  v160 = *&v159[4 * ((v150 ^ 0x422CFAB5) >> 16)];
  v161 = *&v159[4 * ((v97 ^ 0xF6BCF016) >> 16)];
  LODWORD(v10) = (v35 >> 28) ^ (*&v152[4 * (v150 ^ 0xB5)] - 927715928);
  LODWORD(v152) = *&v152[4 * v96];
  LODWORD(v90) = *&v159[4 * BYTE2(v90)];
  v162 = *&v159[4 * (BYTE2(v96) ^ 0xF7)];
  LODWORD(v96) = *(v155 + 4 * BYTE1(v96));
  v163 = *(v7 - 160);
  v164 = *&v153[4 * (HIBYTE(v150) ^ 0x2D)];
  LODWORD(v159) = *&v153[4 * ((v97 >> 24) ^ 0x99)];
  HIDWORD(v35) = v96 ^ 0x24E6661;
  LODWORD(v35) = v96 ^ 0xC0000000;
  LODWORD(v97) = v172 ^ v90 ^ (v11 + 259022495 - ((2 * v11) & 0x1EE0BD3E));
  LODWORD(v153) = v160 ^ v173 ^ v157 ^ (v152 - 927715928) ^ (v154 - 235465);
  LODWORD(v95) = (v80 - 668693433) ^ HIDWORD(v172) ^ v161 ^ (1909043885 * v164 - 259257960) ^ (v35 >> 28);
  v165 = HIDWORD(v172) ^ v175 ^ v162 ^ (1909043885 * v159 - 259257960) ^ (v10 + 259022495 - ((2 * v10) & 0x1EE0BD3E));
  v166 = *(&off_9DA90 + (v151 ^ 0x58C));
  v88[10] = *(v166 + (BYTE1(v95) ^ 0x79)) ^ 0x1E;
  v167 = *(&off_9DA90 + (v151 ^ 0x56A)) - 12;
  v88[13] = v167[BYTE2(v165) ^ 0xF0] ^ 0xF9;
  v168 = *(&off_9DA90 + v151 - 1247);
  v88[15] = (*(v168 + ((BYTE4(v172) ^ v175 ^ v162 ^ (-83 * v159 - 104) ^ (v10 - 97 - ((2 * v10) & 0x3E))) ^ 0x45)) + 127) ^ 0x8F;
  v88[6] = *(v166 + (BYTE1(v153) ^ 0x1BLL)) ^ 0xE2;
  v88[1] = v167[BYTE2(v97) ^ 0x3ELL] ^ 0x9F;
  v169 = *(&off_9DA90 + v151 - 1273) - 8;
  *(v163 + *(v7 - 128)) = v169[HIBYTE(v165) ^ 0x41] ^ 0x27;
  v88[8] = v169[(v95 >> 24) ^ 0xB6] ^ 0xE1;
  v88[3] = (*(v168 + (v97 ^ 0xDFLL)) + 127) ^ 0x17;
  v88[14] = *(v166 + (BYTE1(v165) ^ 0x5ELL)) ^ 0xA3;
  v88[11] = (*(v168 + (v95 ^ 0x54)) + 127) ^ 0x67;
  v88[2] = *(v166 + (BYTE1(v97) ^ 0x13)) ^ 0xEE;
  LODWORD(v152) = *(v7 - 116);
  v88[7] = (*(v168 + (v153 ^ 0xDELL)) + 127) ^ 0x84;
  v88[5] = v167[BYTE2(v153) ^ 0x7ALL] ^ 0x58;
  *v88 = v169[(v97 >> 24) ^ 0xB5] ^ 1;
  v88[9] = v167[BYTE2(v95) ^ 0x6FLL] ^ 0x2A;
  v88[4] = v169[(v153 >> 24) ^ 0x49] ^ 0x75;
  v170 = (v152 + 55618448) < HIDWORD(v173);
  if (HIDWORD(v173) < 0x350AB80 != (v152 + 55618448) < 0x350AB80)
  {
    v170 = HIDWORD(v173) < 0x350AB80;
  }

  return (*(*(v7 - 152) + 8 * (v151 ^ (4 * !v170))))(HIDWORD(v173), v175, 223, v162, 153, 38692449, v160, &off_9DA90, a2, a3, a4, v172, v173, v83, v82, v81, v174, v175, v176, v177, v178, v179, v180, v181);
}

uint64_t sub_28084@<X0>(unint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  *a26 = v26;
  v33 = v27 ^ v30 ^ (v30 >> (((a2 - 121) | 0x44) ^ 0xC7));
  v34 = (v33 << ((a2 - 121) ^ 0xD9 ^ (v29 + 5))) & 0x9D2C5680 ^ v33;
  *(*a22 + a1) ^= v28 ^ a2 ^ v32 & (v34 << 15) ^ v34 ^ ((v32 & (v34 << 15) ^ v34) >> 18);
  return (*(v31 + 8 * ((116 * (a1 < 0x1FC)) ^ a2 ^ 0x1AE)))();
}

uint64_t sub_28134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 17336))(a19 + a20, 0x100004077774924);
  v29 = (*(v27 + 17952))();
  *v28 = v29;
  v30 = v29 ^ (v29 >> 30);
  v31 = (v30 ^ 0x85F5489E) + 175377777;
  v32 = 1812433253 * (((v30 ^ 0x2469CBC0) - 1410822609) ^ v31 ^ ((v30 ^ 0xA19C835E) + 773703345)) + 1980334518;
  v28[1] = v32;
  return (*(v27 + 8640))(v32, *(v27 + 8640), v31, 1812433253, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v26, a22, a23, a24, a25, a26);
}

uint64_t sub_282B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v22 - 112) = &a17;
  *(v22 - 120) = v18 - ((v22 - 128 + v19 - 2 * ((v22 - 128) & v19)) ^ 0x9F83A128) * v20 - 196;
  *(v22 - 128) = &a15;
  v23 = (*(v17 + 8 * (v18 + 748)))(v22 - 128);
  return (*(v17 + 8 * ((((*(v22 - 104) + v21) < 0xC25D1D16) * ((v18 - 1058483744) & 0x3F172EFD ^ 0x402)) ^ v18)))(v23);
}

uint64_t sub_2834C(int a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v12 = *(v9 + 8);
  v13 = *(v12 + 4 * v11 - 4) ^ (v7 + a2 + 307 - 1307);
  *(v12 + 4 * (a6 - 1)) = ((v13 >> v8) & a4 | (a7 ^ a1) & ~(v13 >> v8)) ^ a1;
  return (*(v10 + 8 * (((v11 > 1) * a5) ^ a2)))();
}

uint64_t sub_28354@<X0>(int a1@<W8>)
{
  v5 = *(v3 + a1 * v2 + 36);
  LODWORD(STACK[0x348]) = v5;
  v6 = v5 - 71658207;
  v8 = v6 > -1889536993 && v6 < SLODWORD(STACK[0x2D8]);
  return (*(v4 + 8 * ((v8 * (((v1 + 864) | 8) + ((v1 - 108) | 0x380) - 1489)) ^ v1)))();
}

uint64_t sub_283BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x2E0]) = a7;
  v12 = v7 ^ 0x69;
  LODWORD(STACK[0x1898]) = v8;
  LODWORD(STACK[0x189C]) = -800765707;
  v13 = *(v10 + 8 * ((v7 ^ 0x69) - 801));
  STACK[0x2D0] = v13;
  LODWORD(STACK[0x4E8]) = *v13 - 513152;
  v14 = *(v10 + 8 * (v7 ^ 0x36E));
  STACK[0x2D8] = v14;
  v15 = *v14;
  v16 = STACK[0x2A8];
  LODWORD(v14) = STACK[0x2A8] + v12 + 1255647160;
  *(v11 - 216) = v12 + 1255647160 - STACK[0x2A8];
  *(v11 - 212) = v14 - 52;
  *(v11 - 184) = v16;
  *(v11 - 180) = v14 - 3;
  *(v11 - 176) = -2030745604 - v16 + v12;
  STACK[0x2C8] = v15;
  *(v11 - 208) = v16;
  *(v11 - 192) = v15 + v16;
  v17 = (*(v9 + 8 * (v12 ^ 0xB71)))(v11 - 216);
  return (*(v9 + 8 * *(v11 - 200)))(v17);
}

void sub_2851C(uint64_t a1)
{
  v1 = *(a1 + 24) - 1785193651 * ((-2 - ((a1 | 0xD15DBABD) + (~a1 | 0x2EA24542))) ^ 0x3D7EA962);
  v2 = *(a1 + 16);
  if (*(v2 + 4) - 1726767306 >= 0)
  {
    v3 = *(v2 + 4) - 1726767306;
  }

  else
  {
    v3 = 1726767306 - *(v2 + 4);
  }

  if (*(*(a1 + 8) + 4) - 1726767306 >= 0)
  {
    v4 = *(*(a1 + 8) + 4) - 1726767306;
  }

  else
  {
    v4 = 1726767306 - *(*(a1 + 8) + 4);
  }

  v8 = v1 + 50899313 * (((&v7 | 0xEF6AF04F) - &v7 + (&v7 & 0x10950FB0)) ^ 0x270B3419) + 383;
  v7 = v2;
  v5 = *(&off_9DA90 + v1 - 767) - 8;
  (*&v5[8 * v1 + 11488])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_2868C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = v3 + 1065;
  v7 = (*(v5 + 8 * ((v3 + 377) ^ 0xA30)))(**(a1 + 8 * (v3 - 360)), *v4, (v3 + 1065 + v2 + *(v4 + 8)));
  *(v4 + 31) = (&a2 ^ 0xBA) * (&a2 + 17);
  *(v4 + 30) = (&a2 ^ 0xBB) * (&a2 + 18);
  return (*(v5 + 8 * ((3531 * (((v6 - 961) | 0x410) == 1556)) ^ v6)))(v7);
}

uint64_t sub_2872C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v36 = *(&a19 + v31 + 72);
  v37 = ((2 * v31) & 0xCABDFBF8) + (v31 ^ 0xE55EFDFC) + v32;
  *(a1 + v37) = v36 ^ 0x4E;
  *(a1 + v37 + 1) = ((v36 >> ((v33 ^ (a4 + 57)) + v35)) ^ 0x51) + ~(2 * (((v36 >> ((v33 ^ (a4 + 57)) + v35)) ^ 0x51) & 0x3A ^ (v36 >> ((v33 ^ (a4 + 57)) + v35)) & 8)) + 51;
  *(a1 + v37 + 2) = (BYTE2(v36) ^ 0x65) - ((2 * (BYTE2(v36) ^ 0x65)) & 0x64) + 50;
  *(a1 + v37 + 3) = (HIBYTE(v36) ^ 0x56) - 2 * ((HIBYTE(v36) ^ 0x56) & 0x33 ^ HIBYTE(v36) & 1) + 50;
  return (*(v34 + 8 * (((8 * (v31 + 4 < a31)) | ((v31 + 4 < a31) << 7)) ^ v33)))();
}

uint64_t sub_28884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v6 - 1;
  *(a2 + v10) = *(a5 + v10) - (v7 & (2 * *(a5 + v10))) + 50;
  return (*(v9 + 8 * (((((v5 + 101) ^ (v10 == 0)) & 1) * v8) ^ (v5 - 165))))();
}

uint64_t sub_2893C@<X0>(int a1@<W8>)
{
  v9.val[0].i64[0] = (v4 - v5 - 1) & 0xF;
  v9.val[0].i64[1] = (v4 - v5 + 14) & 0xF;
  v9.val[1].i64[0] = (v4 - v5 + 13) & 0xF;
  v9.val[1].i64[1] = (v4 - v5 + 12) & 0xF;
  v9.val[2].i64[0] = (v4 + a1 - 117 + 25 - v5) & 0xF;
  v9.val[2].i64[1] = (v4 - v5 + 10) & 0xF;
  v9.val[3].i64[0] = (v4 - v5 + 9) & 0xF;
  v9.val[3].i64[1] = (v4 - v5) & 0xF ^ 8;
  *(v4 + v7 - 8 - v5) = veor_s8(veor_s8(veor_s8(*(v1 + v9.val[0].i64[0] - 7), *(v4 + v7 - 8 - v5)), veor_s8(*(v2 + v9.val[0].i64[0] - 7), *(v9.val[0].i64[0] + v3 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v9, xmmword_88460), 0x7373737373737373)));
  return (*(v6 + 8 * ((435 * (8 - (v4 & 0x18) != -v5)) ^ (a1 - 1408))))(xmmword_88460);
}

void sub_28B10()
{
  v4 = *(v0 + 16);
  **(v0 + 8) = *v1;
  *v4 = *v2 - (((v3 + 938) ^ 0x4EC00A9F) & (2 * *v2)) + 660604913;
  *(v0 + 24) = -1261164275;
}

uint64_t sub_28B90(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 + 1578)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1501)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 12) = v5;
  return result;
}

uint64_t sub_28C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, int a14, int a15, char *a16, uint64_t a17, char *a18)
{
  v22 = 50899313 * ((-355700510 - (&a14 | 0xEACC70E2) + (&a14 | 0x15338F1D)) ^ 0xDD524B4B);
  a17 = v18;
  a18 = &a10;
  a14 = v22 ^ 0x4892673;
  a15 = (v21 + 530) ^ v22;
  a16 = &a13;
  v23 = (*(v19 + 8 * (v21 ^ 0x8FF)))(&a14);
  return (*(v19 + 8 * ((239 * (((v21 - 100) ^ (*(v18 + 24) == v20)) & 1)) ^ v21)))(v23);
}

uint64_t sub_28D44(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v17 = v16 + 4 * v13;
  a6.i64[0] = *(v17 + 4);
  a6.i32[2] = *(v17 + 12);
  v18 = vextq_s8(a1, a6, 0xCuLL);
  v19 = a6;
  v19.i32[3] = *(v16 + 4 * (v13 + 4));
  v20 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v19, a3), vandq_s8(v18, a2)), 1uLL), *(v16 + 4 * (v10 + v13)));
  v18.i32[0] = *(v11 + 4 * (*(v17 + 4) & 1));
  v18.i32[1] = *(v11 + 4 * (*(v17 + 8) & 1));
  v18.i32[2] = *(v11 + 4 * (*(v17 + 12) & 1));
  v18.i32[3] = *(v11 + 4 * (v19.i8[12] & 1));
  *v17 = veorq_s8(vaddq_s32(vsubq_s32(v20, vandq_s8(vaddq_s32(v20, v20), a4)), a5), v18);
  return (*(v15 + 8 * (((v13 == 220) * v12) ^ (a10 + v14 + 454))))();
}

uint64_t sub_291D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t *a13, char a14, uint64_t a15)
{
  v22 = 1361651671 * ((2 * (&a10 & 0x7D199048) - &a10 - 2098827338) ^ 0x51C49F3A);
  a14 = (((((v21 - 116) & 0xEF ^ 0x32) + (*(v15 + 52) ^ v20 ^ 0xEB)) ^ ((*(v15 + 52) ^ v20 ^ 0x9F) + 97) ^ ((v21 ^ *(v15 + 52) ^ v20 ^ 0x90) - 59)) + 116) ^ (-41 * ((2 * (&a10 & 0x48) - &a10 - 74) ^ 0x3A));
  a15 = v18;
  a13 = &a9;
  a10 = v22 - 542128598 + v19;
  a11 = v21 - v22 + 244;
  v23 = (*(v17 + 8 * (v21 + 2117)))(&a10);
  return (*(v17 + 8 * ((7 * (a12 != v16)) ^ v21)))(v23);
}

uint64_t sub_29368(uint64_t a1, int a2)
{
  v5 = v4 ^ ((a2 - 1362) | 0x4A) ^ 0x4B2BD4BD;
  v6 = ((a2 + 1259021863) & 0xB4F4D7EB ^ 0x1E3AAB8C) + v3;
  v7 = v6 < 0x91F074A2;
  v8 = v6 > v5 - 1846512478;
  if (v7 != v5 > 0x6E0F8B5D)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(v2 + 8 * ((211 * !v9) ^ a2)))();
}

uint64_t sub_294B4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 20) - 18429 * ((2 * (result & 0x51F9) - result - 20986) ^ 0x2353);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x1CA;
  v3 = v2 ^ 0xCA;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -1783123828;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xB9A8FAF53120727DLL;
    *(v1 + 80) = 0x4657050ACEDF8D82;
    *(v1 + 92) = v4;
  }

  *(result + 16) = -1797458203;
  return result;
}

uint64_t sub_29574@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  v14 = (a1 - 1022613214) & 0xFB041CFF;
  v15 = a1 + v11;
  a10 = (a1 + 1411914099) ^ (1037613739 * (((&a10 | 0xF6A5DD78) - &a10 + (&a10 & 0x95A2280)) ^ 0x27A7F007));
  v16 = (*(v13 + 8 * (a1 ^ 0x41EFB25Cu)))(&a10);
  return (*(v13 + 8 * ((1488 * (a11 == v12 + v14 - 190)) ^ v15)))(v16);
}

void sub_29628(uint64_t a1)
{
  v1 = *(a1 + 4) - 742307843 * ((2 * (a1 & 0x782C26B9) - a1 + 131324230) ^ 0x19F15413);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_296F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v9 = (v5 - 1034) | 0x102;
  *v6 = a1;
  *a5 = v12 ^ (a4 - 46) ^ v9;
  v10 = (v9 ^ 0x781) - 430;
  v15 = (v9 ^ 0x781) - (((&v15 | 0xA385B145) - &v15 + (&v15 & 0x5C7A4EB8)) ^ 0x2E28D3A9) * v7 - 123;
  v16 = v14;
  (*(v8 + 8 * ((v9 ^ 0x781) + 553)))(&v15);
  v15 = v10 - ((((2 * &v15) | 0xA1D710E8) - &v15 + 789870476) ^ 0x5D46EA98) * v7 + 307;
  v16 = v13;
  (*(v8 + 8 * (v10 + 983)))(&v15);
  return 0;
}

uint64_t sub_298D4@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 50;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_29908@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 622577687;
  v4 = *(a1 + 12) + 2000315973 + ((v2 - 565) | 0x180);
  v5 = v3 < 0x98D18DD3;
  v6 = v3 > v4;
  if (v5 != v4 < 0x98D18DD3)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((!v6 * (((v2 - 1106) | 0xC) - 551)) ^ v2)))();
}

void sub_299C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1785193651 * ((((v18 - 128) | 0xD50291B3) - ((v18 - 128) & 0xD50291B3)) ^ 0xC6DE7D93);
  *(v18 - 128) = &a15;
  *(v18 - 120) = v17 - v19 + 418;
  *(v18 - 116) = ((v17 + 945464124) & 0xC7A55DE1) - v19 + (v15 ^ 0x7F9F5A5B) + ((2 * v15) & 0xFF3EB4B6) - 285365355;
  (*(v16 + 8 * (v17 + 1485)))(v18 - 128);
  JUMPOUT(0x29A74);
}

uint64_t sub_29B08()
{
  v7 = v4 ^ 0x970;
  v8 = v5 + v3;
  v9 = (v3 - 1) & 0xF;
  v10 = v0 - v3 + v9 + 1;
  v11 = v0 + v9 + 1;
  v12 = v1 + ((v7 + 1658827935) & 0x9D204BFE ^ 0x1E6) - v3 + v9;
  v13 = v9 + ((v7 + 204) | 0xC3u) + v1 - 719;
  v14 = v9 + v2 + 6;
  v16 = v11 > v5 && v10 < v8;
  if (v12 < v8 && v13 > v5)
  {
    v16 = 1;
  }

  v19 = v14 > v5 && v14 - v3 < v8 || v16;
  return (*(v6 + 8 * ((13 * v19) ^ v7)))();
}

uint64_t sub_29C40@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((230 * (((v4 == 1726767306) ^ (v3 - 115)) & 1)) ^ v3)))();
}

uint64_t sub_29E00(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v23 = a22 + 1444258570 > a14;
  if (a14 < 0x5615A2CA != a22 + 1444258570 < (((a4 + 1221) | 0x14) ^ 0x5615A459u) + a4 + 514)
  {
    v23 = a22 + 1444258570 < (((a4 + 1221) | 0x14) ^ 0x5615A459u) + a4 + 514;
  }

  return (*(v22 + 8 * ((23 * !v23) ^ (a4 + 1577))))(100, 1263);
}

uint64_t sub_29E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 136) = &a14;
  *(v18 - 128) = v15 + 742307843 * ((v18 - 136) ^ 0x1E228D55) + 222;
  *(v18 - 120) = v16;
  v19 = (*(v14 + 8 * (v15 ^ 0xD7C)))(v18 - 136);
  return (*(v14 + 8 * (((((v15 - 217321054) & 0xCF40FF3) - 1844) * (v17 != 1)) ^ v15)))(v19);
}

void sub_29F00(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a3 = v6;
  a4 = a1;
  a5 = (v7 + 1532) ^ (1564307779 * ((2 * (&a3 & 0x3E624C38) - &a3 + 1100854209) ^ 0xD6907FD2));
  (*(v5 + 8 * (v7 + 1945)))(&a3);
  sub_33000();
}

uint64_t sub_29F64()
{
  result = (*(v2 + 8 * (v3 + 1834)))(*v4);
  *v1 = 0;
  *v0 = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 56) = 1470670864;
  return result;
}

void sub_29FA8(int a1@<W8>)
{
  v4 = a1 - 57;
  if (((STACK[0x2C8] - v4) | (v4 - STACK[0x2C8])) > ((2 * v4) ^ 0x3A4) - 933)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = 0x80000000;
  }

  *v2 = v5 + (v4 ^ 1);
  (*(v1 + 8 * (v4 ^ 0x89F)))(v3);
  JUMPOUT(0x2A018);
}

uint64_t sub_2A308(void *a1)
{
  if (a1[4])
  {
    v4 = (a1[5] | a1[7]) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((((v2 ^ v5) & 1) * (((v1 - 1577540389) & 0x5E0757D7) - 966)) | v1)))();
}

uint64_t sub_2A360(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = (((a5 - 447) | 0x148) ^ (v5 + 1735)) - a2;
  if (v6 > v8)
  {
    v8 = v6;
  }

  return (*(v7 + 8 * (((16 * (v8 > 0x7FFFFFFE)) | (32 * (v8 > 0x7FFFFFFE))) ^ a5)))();
}

void sub_2A3A8(uint64_t a1)
{
  v1 = *(a1 + 8) + 143681137 * ((((2 * a1) | 0x9F3C2B94) - a1 + 811723318) ^ 0x1B390990);
  v2 = *a1;
  v4[0] = (50899313 * (((v4 | 0xA0E9AF53) - v4 + (v4 & 0x5F1650A8)) ^ 0x68886B05)) ^ (v1 - 114);
  v5 = v2;
  v3 = *(&off_9DA90 + (v1 ^ 0x41B)) - 8;
  (*&v3[8 * (v1 ^ 0xC02)])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 128) = &a15;
  *(v20 - 120) = v17 + 742307843 * ((((v20 - 128) | 0xD746F9BB) + (~(v20 - 128) | 0x28B90644)) ^ 0xC96474EF) + 618;
  *(v20 - 112) = &a17;
  v21 = (*(v18 + 8 * (v17 ^ 0xCF0)))(v20 - 128);
  return (*(v18 + 8 * (v17 | (8 * (v19 == (v17 ^ 0x751) - 767)))))(v21);
}

uint64_t sub_2A93C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = (*(v14 + 4 * v13) ^ v9) + v10 + a4 * (*(*(v11 + 8) + a2) ^ v9);
  *(v14 + 4 * v13) = v9 + ((a7 - 1223) ^ v12) - 42 + 4 * ((a7 - 1223) ^ v12) + v15 - ((v8 + 930) & (2 * v15)) - 2088;
  return (*(v7 + 8 * ((a7 - 1223) | (30 * (a5 == 0)))))();
}

uint64_t sub_2A9DC()
{
  v6 = 1388665877 * (((((v5 - 216) | 0xA00D7E8) ^ 0xFFFFFFFE) - (~(v5 - 216) | 0xF5FF2817)) ^ 0x78524AFB);
  v7 = v6 - 129332923 + *(v4 + 52);
  v8 = LODWORD(STACK[0x234]) - v6 - 1915567360;
  *(v5 - 208) = v3;
  *(v5 - 200) = &STACK[0x5D0];
  *(v5 - 216) = ((v2 ^ 0x1AE3AF49) - 409087040 + ((v2 << (((v0 ^ 0xD7) + 45) ^ 0x82)) & 0x35C75E92)) ^ v6;
  *(v5 - 212) = v7;
  *(v5 - 184) = v8;
  *(v5 - 192) = (v0 - 101) ^ v6;
  *(v5 - 176) = STACK[0x2B0];
  v9 = (*(v1 + 8 * (v0 ^ 0x87D)))(v5 - 216);
  v10 = *(v5 - 188);
  LODWORD(STACK[0x504]) = v10;
  return (*(v1 + 8 * ((428 * (v10 == -1261164275)) ^ v0)))(v9);
}

uint64_t sub_2AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v19 - 120) = (v15 + 461) ^ (1564307779 * ((((v19 - 136) | 0x83C8834) - (v19 - 136) + ((v19 - 136) & 0xF7C377C8)) ^ 0x9F314427));
  *(v19 - 136) = a15;
  *(v19 - 128) = v18;
  v20 = (*(v17 + 8 * (v15 ^ 0xDBA)))(v19 - 136);
  return (*(v17 + 8 * (((v16 < 1) * (((v15 - 1125) | 0x434) - 106)) ^ (v15 - 981))))(v20);
}

uint64_t sub_2AFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  v43 = (*(v41 + 8 * (v40 + 652)))(3);
  v44 = *(&off_9DA90 + v40 - 1425);
  *v44 = v43;
  v45 = v44;
  v74 = v44;
  (*(v41 + 8 * (v40 + 627)))();
  v46 = (*(v41 + 8 * (v40 + 652)))(66);
  v47 = *(&off_9DA90 + v40 - 1524);
  *v47 = v46;
  (*(v41 + 8 * (v40 + 627)))();
  v48 = (*(v41 + 8 * (v40 ^ 0xEF4)))(2);
  v49 = *(&off_9DA90 + v40 - 1507);
  *(v49 - 4) = v48;
  *v48 = 7196;
  **v47 = 0;
  **(&off_9DA90 + (v40 & 0xE971F971)) = 0;
  v50 = *(v49 - 4);
  v51 = *v47;
  v52 = *v45;
  v51[64] = 1;
  v53 = *(&off_9DA90 + (v40 ^ 0x689));
  *v53 = 51;
  v51[9] = -15;
  v50[1] = 79;
  v54 = *(&off_9DA90 + v40 - 1435);
  *v54 = 80;
  v72 = *(&off_9DA90 + v40 - 1574);
  *v72 = -77;
  *v50 = -22;
  v51[11] = 73;
  *v52 = 68;
  v51[20] = -44;
  v73 = *(&off_9DA90 + v40 - 1570);
  *v73 = -121;
  v51[36] = -11;
  v51[45] = -113;
  v51[49] = 25;
  *(v52 + 1) = 6695;
  v71 = *(&off_9DA90 + v40 - 1518);
  *v71 = -122;
  v55 = *(&off_9DA90 + (v40 ^ 0x634));
  *v55 = 88;
  v51[26] = -34;
  v51[60] = -5;
  v56 = *(&off_9DA90 + v40 - 1530);
  *v56 = 96;
  v70 = *(&off_9DA90 + v40 - 1491);
  *v70 = 80;
  v57 = *(&off_9DA90 + (v40 ^ 0x6AE));
  *v57 = 17;
  v58 = *(&off_9DA90 + v40 - 1563);
  *v58 = 119;
  v51[52] = 47;
  v51[50] = 102;
  v51[59] = -59;
  v51[22] = -36;
  v51[29] = 59;
  v51[27] = 34;
  v51[40] = -80;
  v51[13] = 23;
  v59 = *(&off_9DA90 + (v40 ^ 0x6AD));
  *v59 = 99;
  v51[53] = 3;
  v60 = *(&off_9DA90 + (v40 ^ 0x695));
  *v60 = -109;
  v51[39] = 54;
  v51[57] = 73;
  v61 = *(&off_9DA90 + (v40 ^ 0x6AA));
  *v61 = 83;
  v51[37] = -52;
  v51[63] = -72;
  v62 = *v47;
  *(v62 + 65) = -85;
  *(v62 + 5) = -14;
  *(v62 + 54) = 32;
  *(v62 + 58) = 113;
  *(v62 + 8) = 16909;
  *(v62 + 28) = -39;
  *(v62 + 47) = -4065;
  *(v62 + 21) = 15;
  *(v62 + 41) = -29527;
  *(v62 + 38) = -121;
  *(v62 + 31) = 8824;
  *(v62 + 10) = -98;
  *(v62 + 7) = 27031;
  *(v62 + 23) = -86;
  *(v62 + 14) = -90;
  *(v62 + 62) = -105;
  *(v62 + 35) = 52;
  *(v62 + 33) = 15089;
  *(v62 + 55) = -30385;
  *(v62 + 4) = -92;
  *(v62 + 30) = 36;
  *(v62 + 25) = 69;
  *(v62 + 46) = -17;
  *(v62 + 15) = 72;
  *(v62 + 51) = -15;
  *(v62 + 12) = -15;
  *(v62 + 61) = 73;
  *(v62 + 9) = -9761;
  *(v62 + 43) = 19744;
  *(v62 + 6) = 45;
  *(v62 + 24) = -72;
  v63 = *(&off_9DA90 + v40 - 1567);
  v69 = v47;
  v64 = *v47;
  v68 = *(v49 - 4);
  if (a40 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = a40;
  }

  v65 = ((((*(v64 + 22) << 32) | (*(v64 + 60) << 8) | (*(v64 + 27) << 16) | *(v64 + 59) | (*(v64 + 53) << 24) | (*(v64 + 37) << 40) | (((*(v63 + 5 + (((*(v64 + 57) >> 3) | (32 * *(v64 + 57))) ^ 0xF3)) ^ 0xBC) + 74) << 48)) ^ 0x93D812DCFFCE36E9) & ~(*(v64 + 29) << 56) | (*(v64 + 29) << 56) & 0x6C00000000000000) ^ 0xD8357849CB3291E6;
  LODWORD(a18) = *v64;
  return (*(v41 + 8 * (((v40 + 17) | 0x1A6) ^ 0x71C)))(0, ((v40 + 17) | 0x1A6) ^ 0x71Cu ^ ((-35 * (((((*v70 >> 6) | (4 * *v70)) ^ 0xED) + *(v63 + 266 + (((*v70 >> 6) | (4 * *v70)) ^ 0x94)) - 103) ^ 0x85)) | (*(*v74 + 2) << 8) | (*(v64 + 11) << 16) | (*(v64 + 50) << 24) | (((*(v63 + 5 + (((*v71 >> 3) | (32 * *v71)) ^ 0xF3)) ^ 0xBC) + 74) << 32) | (*(v64 + 26) << 48)) ^ ((*v72 << 56) | (*(v64 + 45) << 40)) ^ 0x1EA4F2EFA3F5C341, v66 - 1, v63 + 5, *(v42 - 176), v65, 0, ((((v40 + 17) | 0x1A6) ^ 0x71C) - 1886214389) & 0x706D5FEE, *v74, v63 + 5, v68, *(&off_9DA90 + v40 - 1567), v59, v63 + 266, v61, v64, v58, a18, v60, v55, v53, a22, v57, a24, v69, a26, v56, v70, v71, v72, v54, v73);
}

uint64_t sub_2BCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = &a17;
  *(v22 - 120) = v19;
  *(v22 - 128) = v21 - ((2 * ((v22 - 136) & 0x4D83B6D8) - (v22 - 136) + 847005985) ^ 0xE6DB557B) * v20 + 1099;
  v23 = (*(v18 + 8 * (v21 ^ 0x87B)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 112) > v17) * ((v21 + 542) ^ 0x168)) ^ v21)))(v23);
}

uint64_t sub_2BD38@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W8>)
{
  v12 = v10 < v9;
  *(a4 + a6) = *(a5 + v6) - (a1 & (2 * *(a5 + v6))) + 50;
  v13 = v6 + 1;
  if (v12 == v13 > v8 + 22)
  {
    v12 = v13 + v9 < v10;
  }

  return (*(v11 + 8 * ((v12 * ((v7 + a2) & a3 ^ 0x10)) ^ v7)))();
}

void sub_2BDA0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 1657355148)
  {
    v2 = 1346;
  }

  else
  {
    v2 = 1347;
  }

  __asm { BRAA            X8, X17 }
}

void sub_2C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v25 - 128) = v22 - ((((v25 - 144) | 0x75476BBF) - (v25 - 144) + ((v25 - 144) & 0x8AB89440)) ^ 0xDA60E9A7) * v23 + 118;
  *(v25 - 120) = a12;
  *(v25 - 112) = &a22;
  *(v25 - 104) = v24;
  *(v25 - 144) = &a18;
  *(v25 - 136) = &a18;
  JUMPOUT(0xF138);
}

uint64_t sub_2C1A8@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v8 = v3 - 1;
  STACK[0x4B0] = v8;
  *(a1 + v8) = (((v2 + 42) ^ v5) + a2) * (a2 ^ v6);
  return (*(v7 + 8 * (((STACK[0x4B0] == 0) * v4) ^ v2)))();
}

uint64_t sub_2C204@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>)
{
  v10 = (v8 + v7 + a2);
  v11 = vaddq_s8(vsubq_s8(*(a1 + v7 + 16), vandq_s8(vaddq_s8(*(a1 + v7 + 16), *(a1 + v7 + 16)), a3)), a4);
  *v10 = vaddq_s8(vsubq_s8(*(a1 + v7), vandq_s8(vaddq_s8(*(a1 + v7), *(a1 + v7)), a3)), a4);
  v10[1] = v11;
  return (*(v9 + 8 * ((94 * ((v6 ^ 0x3FA) + v7 != v4)) ^ (v5 + 930))))();
}

uint64_t sub_2C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *(v6 - 124);
  if (v7 == 1)
  {
    v11 = *(v6 - 156);
    v10 = *(v6 - 152);
    *(v6 - 164) = (v5 + a5 + 122 + 8 * (v10 - ((2 * v10) & 0x55)) + 80) ^ 0x62;
    *(v6 - 163) = (v10 >> 5) ^ 0x32;
    *(v6 - 162) = (v10 >> 13) ^ 0x32;
    *(v6 - 161) = (v10 >> 21) ^ 0x32;
    *(v6 - 160) = ((__PAIR64__(v11, v10) >> 29) - ((2 * (__PAIR64__(v11, v10) >> 29)) & 0x2A) + 21) ^ 0x27;
    *(v6 - 159) = (v11 >> 5) ^ 0x32;
    *(v6 - 158) = (v11 >> 13) ^ 0x32;
  }

  else
  {
    if (v7 != 2)
    {
      JUMPOUT(0x2C440);
    }

    v8 = *(v6 - 156);
    v9 = *(v6 - 152);
    *(v6 - 164) = (v8 >> 21) - ((v8 >> 21 << (((a5 - 62) & 0xBB) + 1)) & 0x64) + 50;
    *(v6 - 163) = (v8 >> 13) - ((v8 >> 12) & 0x64) + 50;
    *(v6 - 162) = (v8 >> 5) - ((v8 >> 4) & 0x64) + 50;
    *(v6 - 161) = (__PAIR64__(v8, v9) >> 29) - ((2 * (__PAIR64__(v8, v9) >> 29)) & 0x64) + 50;
    *(v6 - 160) = (v9 >> 21) - ((v9 >> 20) & 0x64) + 50;
    *(v6 - 159) = (v9 >> 13) - ((v9 >> 12) & 0x64) + 50;
    *(v6 - 158) = (~(v9 >> 4) | 0x9B) + (v9 >> 5) + 51;
  }

  return sub_2C424();
}

uint64_t sub_2C424()
{
  *(v1 - 157) = v0;
  v2.n128_u64[0] = 0x3232323232323232;
  v2.n128_u64[1] = 0x3232323232323232;
  v3.n128_u64[0] = 0x6464646464646464;
  v3.n128_u64[1] = 0x6464646464646464;
  return sub_31E08(v1 - 220, v2, vdupq_n_s32(0x34D4291Du), vdupq_n_s32(0xB4D4290D), v3);
}

uint64_t sub_2C4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20)
{
  v23 = a20 < a19;
  if (v23 == v20 > 0x1BD9FD0)
  {
    v23 = ((v21 - 372515089) & 0x16341F2F) + v20 - 29204448 < a20;
  }

  return (*(v22 + 8 * ((1014 * v23) ^ v21)))();
}

uint64_t sub_2C82C@<X0>(int a1@<W8>)
{
  v8 = ((2 * (v6 & 0x7D7AB648) - v6 - 2105194059) ^ 0x19C2BF3F) * v1;
  *(v7 - 184) = 0;
  *(v7 - 216) = a1 ^ v8;
  *(v7 - 212) = (v4 + 755) ^ v8;
  *(v7 - 200) = &STACK[0x358];
  *(v7 - 208) = &STACK[0x38C];
  (*(v3 + 8 * (v4 ^ 0x8FE)))(v7 - 216);
  v9 = *(v7 - 192);
  STACK[0x398] = v2;
  return (*(v3 + 8 * (((v9 == (v4 ^ 0x3E5 ^ (v5 + 412))) * (v4 + 225)) | v4)))(37, 4160609902, 420);
}

uint64_t sub_2C974@<X0>(uint64_t a1@<X1>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = (a1 + v8);
  *v11 = v9;
  *(v8 + a1 + ((a7 + 755892084) & 0x52F1FF66) - 37) = a2;
  v11[2] = v7;
  v11[3] = v10;
  return sub_2C9B0();
}

uint64_t sub_2C9B0@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v26 = 1785193651 * ((((v25 - 176) | 0x8172465B) + (~(v25 - 176) | 0x7E8DB9A4)) ^ 0x92AEAA7A);
  *(v25 - 168) = a1;
  *(v25 - 160) = 1869595558 - v26;
  *(v25 - 176) = (a2 + 1512) ^ v26;
  v27 = (*(v24 + 8 * (a2 + 2229)))(v25 - 176);
  return a10(v27, &a24);
}

uint64_t sub_2CA4C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 319;
  v5 = (*(v3 + 8 * (v2 ^ 0xBCB)))(*STACK[0x280], a2, LODWORD(STACK[0x56C]));
  return (*(v3 + 8 * ((((((v4 - 971) | 1) + 407) ^ 0x21E) * (LODWORD(STACK[0x52C]) != -1261164275)) ^ v4)))(v5);
}

uint64_t sub_2CBB4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xBF8));

  return v3(v1);
}

uint64_t sub_2CCE4(__n128 a1)
{
  a1.n128_u16[0] = 12850;
  a1.n128_u8[2] = 50;
  a1.n128_u8[3] = 50;
  a1.n128_u8[4] = 50;
  a1.n128_u8[5] = 50;
  a1.n128_u8[6] = 50;
  a1.n128_u8[7] = 50;
  return sub_2CD0C(19, a1);
}

uint64_t sub_2CD0C@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v9 = (v6 + v4 + a2);
  *v9 = a3;
  v9[1] = a3;
  return (*(v8 + 8 * (((((v5 + 947) ^ v7) + v4 != v3) * a1) ^ v5)))();
}

uint64_t sub_2CDDC@<X0>(int a1@<W8>)
{
  v8 = v2 + 1;
  v9 = v1 < v3;
  *(*(v6 + 8) + 4 * v8) = *(*(v6 + 8) + 4 * (v8 + a1));
  if (v9 == v8 + v5 < v3)
  {
    v9 = v8 + v5 < v1;
  }

  return (*(v7 + 8 * ((240 * v9) ^ v4)))();
}

uint64_t sub_2CE94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((505 * (((v3 + 28) ^ (v5 == 0)) & 1)) ^ (v3 - 1466))))();
}

void sub_2D11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a69 + 1560) = *STACK[0x380];
  *(a69 + 1552) = *STACK[0x3E0];
  v69 = STACK[0x400];
  *(*STACK[0x400] + 488) = *(a68 + 8);
  *(*v69 + 480) = *a68;
  JUMPOUT(0x2D1C8);
}

uint64_t sub_2D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, uint64_t a16, int a17, int a18, uint64_t *a19, int a20, unsigned int a21, char *a22, int a23, int *a24, int *a25, uint64_t a26)
{
  a18 = 313566482;
  v29 = 1082434553 * ((((2 * &a19) | 0x5E86226C) - &a19 - 792924470) ^ 0xB404E7BC);
  a23 = v29 + v27 + 164;
  a19 = &a16;
  a25 = &a18;
  a26 = a16;
  a22 = &a14;
  a24 = &a15;
  a21 = a15 + v29 + ((v27 + 1050) ^ 0xE067424E);
  v30 = (*(v28 + 8 * (v27 ^ 0x8BB)))(&a19);
  return (*(v28 + 8 * ((1202 * (a20 == -1261164275)) ^ v27)))(v30, v26);
}

uint64_t sub_2D300()
{
  v0.n128_u64[0] = 0x6464646464646464;
  v0.n128_u64[1] = 0x6464646464646464;
  v1.n128_u64[0] = 0x3232323232323232;
  v1.n128_u64[1] = 0x3232323232323232;
  return sub_2D320(v0, v1);
}

uint64_t sub_2D320@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v11 = ~v10 + v7;
  v12 = *(v6 + v11 - 15);
  v13 = *(v6 + v11 - 31);
  v14 = a3 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a4)), a5);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a4)), a5);
  return (*(v5 + 8 * (((v10 + v9 - 1319 == v8) * a2) ^ (a1 + 109))))();
}

uint64_t sub_2D4D4@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 ^ 0x4C58F5F8) & (2 * ((((v3 + 173157022) & 0xF5ADD6B5) + v4) & v2)) ^ (((v3 + 173157022) & 0xF5ADD6B5) + v4) & v2;
  v6 = ((2 * (v2 ^ 0x4E997738)) ^ 0xBFF70590) & (v2 ^ 0x4E997738) ^ (2 * (v2 ^ 0x4E997738)) & 0xDFFB82C8;
  v7 = (v6 ^ 0x8F930088) & (4 * v5) ^ v5;
  v8 = ((4 * (v6 ^ 0x40088248)) ^ 0x7FEE0B20) & (v6 ^ 0x40088248) ^ (4 * (v6 ^ 0x40088248)) & 0xDFFB82C8;
  v9 = (v8 ^ 0x5FEA0208) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x801180C8)) ^ 0xFFB82C80) & (v8 ^ 0x801180C8) ^ (16 * (v8 ^ 0x801180C8)) & 0xDFFB82C0;
  v11 = v9 ^ 0xDFFB82C8 ^ (v10 ^ 0xDFB80048) & (v9 << 8);
  v12 = (v11 << 16) & 0x5FFB0000 ^ v11 ^ ((v11 << 16) ^ 0x2C80000) & (((v10 ^ 0x438248) << 8) & 0x5FFB0000 ^ 0x4790000 ^ (((v10 ^ 0x438248) << 8) ^ 0x7B820000) & (v10 ^ 0x438248));
  v13 = 843532609 * (((v15 ^ 0x8310404 | 0xE5CAF05B) + (v15 ^ 0xA080F053 | 0x1A350FA4)) ^ 0xF4FCA0D3);
  v15[0] = v2 ^ v13 ^ (2 * v12) ^ 0xAB0017CD;
  v15[1] = v13 + v3 - 455;
  v16 = a1;
  return (*(v1 + 8 * (v3 + 1321)))(v15);
}

uint64_t sub_2D740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = STACK[0x210] + 2048;
  LODWORD(STACK[0x3EC]) = 2;
  STACK[0x3D0] = 0;
  LODWORD(STACK[0x56C]) = 0;
  LODWORD(STACK[0x4EC]) = 0;
  return (*(v38 + 8 * ((((a8 ^ 0x982) + 507 + 2 * (a8 ^ 0x982) - 1856) * ((v37 & 2) == 0)) ^ a8)))(a1, a2, a3, a4, a5, v39, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_2D794@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x448];
  v69 = 1388665877 * ((2 * ((v67 - 216) & 0x6BE96988) - (v67 - 216) + 337024627) ^ 0x99BBF49F);
  *(v67 - 200) = (((v66 - 1560316752) & 0x5D008FEF) + 1291687299 * LODWORD(STACK[0x430]) + 52142365) ^ v69;
  *(v67 - 208) = v68;
  *(v67 - 216) = a65;
  *(v67 - 164) = (21 * ((2 * ((v67 + 40) & 0x88) - (v67 + 40) + 115) ^ 0x9F)) ^ 0x4E;
  *(v67 - 192) = STACK[0x2B8];
  *(v67 - 184) = &STACK[0x484];
  *(v67 - 172) = ((a1 ^ 0x53FF9297) + (a1 << ((v66 + 106) ^ 0x38)) - 1082986501) ^ v69;
  *(v67 - 168) = v69 + v66 - 547;
  *(v67 - 160) = STACK[0x2C0];
  v70 = (*(v65 + 8 * (v66 + 1544)))(v67 - 216);
  v71 = *(v67 - 176);
  LODWORD(STACK[0x504]) = v71;
  return (*(v65 + 8 * ((1416 * (v71 == -1261164275)) ^ v66)))(v70);
}

uint64_t sub_2D93C()
{
  v6 = (v4 + v0 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v3 + 8 * ((((v1 & 0x30) == 16) * (v2 + 767)) ^ v2)))();
}

uint64_t sub_2DB74(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v5 < v4;
  v8 = v3 + 1;
  if (v7 == v8 > (a3 + 789) - 2780777873u)
  {
    v7 = v8 + v4 < v5;
  }

  return (*(v6 + 8 * ((!v7 * ((5 * (a3 ^ 0xAF)) ^ 0x547)) ^ a3)))();
}

uint64_t sub_2DBDC@<X0>(int a1@<W5>, int a2@<W8>)
{
  v9 = *(v3 + 4 * (a1 + v4 - 8)) ^ *(v3 + 4 * (a1 + v4 - 3)) ^ *(v3 + 4 * (a1 + v4 - 14)) ^ *(v3 + 4 * (a1 + v4 - 16));
  HIDWORD(v10) = v9 ^ v6;
  LODWORD(v10) = v9;
  *(v3 + 4 * (v2 + a1)) = (17 * (a2 ^ v8)) ^ v5 ^ (v10 >> 31);
  return (*(v7 + 8 * ((((v2 + 1 + a1) > 0x4F) | (4 * ((v2 + 1 + a1) > 0x4F))) ^ a2)))();
}

uint64_t sub_2DC58()
{
  v3 = v2 - 10;
  v4 = *(v0 + 16) - 984075518;
  v5 = *(v0 + 12) + (v2 ^ 0x1776D6C9);
  v6 = v5 < 0x390DF8C6;
  v7 = v4 < v5;
  if (v4 < 0x390DF8C6 != v6)
  {
    v7 = v6;
  }

  return (*(v1 + 8 * ((22 * ((v3 ^ v7) & 1)) ^ v3)))();
}

uint64_t sub_2DD04(uint64_t a1, uint64_t a2, int a3)
{
  v9 = v6 + ((v5 - 67305833) & 0x6C67FF36) + 113;
  v11 = (v8 & (2 * (*(a2 + 9) - 1))) + ((*(a2 + 9) - 1) ^ v7) == ((v5 - 58917034) & 0x6BE7FE77) + a3 && v3 + 6 < v9;
  return (*(v4 + 8 * ((1750 * v11) ^ v5)))();
}

uint64_t sub_2DD80()
{
  v2 = STACK[0x340] - 769;
  v3 = STACK[0x530];
  STACK[0x458] = *(v1 + 8 * (STACK[0x340] - 845));
  v4 = STACK[0x2D0];
  STACK[0x5A8] = v3;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v4;
  return (*(v1 + 8 * ((11 * ((((v2 + 457) ^ ((((v2 + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v3 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_2DE9C()
{
  *(v7 - 120) = v2;
  *(v7 - 136) = v4;
  *(v7 - 128) = v0 + 742307843 * (((v3 | 0x7A386143) - (v3 & 0x7A386143)) ^ 0x641AEC16) + 339;
  v8 = (*(v1 + 8 * (v0 + 825)))(v7 - 136);
  return (*(v1 + 8 * (((v5 - 748) * (v6 == 1)) ^ v0)))(v8);
}

uint64_t sub_2DF1C(uint64_t result)
{
  v1 = 143681137 * ((((2 * result) | 0xF321E7EF3978BF1ALL) - result - 0x7990F3F79CBC5F8DLL) ^ 0x68E871F0481B43D7);
  v2 = *(result + 8) + v1;
  v3 = *(result + 40) - v1;
  v4 = *(result + 20) + 143681137 * ((((2 * result) | 0x3978BF1A) - result + 1665376371) ^ 0x481B43D7);
  v5 = v3 < v2;
  v6 = v3 < v2;
  if ((*(result + 24) + 143681137 * ((((2 * result) | 0x3978BF1A) - result + 1665376371) ^ 0x481B43D7)))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    v4 = *(result + 28) ^ (143681137 * ((((2 * result) | 0x3978BF1A) - result + 1665376371) ^ 0x481B43D7));
  }

  *(result + 16) = v4 ^ (*result + 143681137 * ((((2 * result) | 0x3978BF1A) - result + 1665376371) ^ 0x481B43D7));
  return result;
}

uint64_t sub_2DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13, int a14, int a15, uint64_t a16, char *a17, int a18)
{
  v21 = 742307843 * (((&a13 | 0xFF78C668) - &a13 + (&a13 & 0x873990)) ^ 0xE15A4B3D);
  a13 = v21 - 1023075469;
  a15 = v19 - v21 - 1197043046;
  a18 = v21 ^ 0x233D6C96;
  a16 = a9;
  a17 = &a11;
  v22 = (*(v18 + 8 * (v19 ^ 0xAAC)))(&a13);
  return (*(v18 + 8 * (((a14 == v20) * (2 * (v19 ^ 0x229) + 1667)) ^ v19)))(v22);
}

void sub_2E124(uint64_t a1)
{
  v1 = *(a1 + 28) + 1785193651 * ((2 * (a1 & 0xBB308A28) - a1 + 1154446807) ^ 0x571399F7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2E1F8(uint64_t a1, uint64_t a2)
{
  v2 = (qword_A70B8 ^ qword_A7090) - &v8;
  qword_A7090 = 1010482283 * v2 + 0x5450BF49BFD4E907;
  qword_A70B8 = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  v3 = *(a2 + 4);
  v4 = 107 * ((qword_A70B8 - (107 * v2 + 7)) ^ 0xF9);
  v5 = *(&off_9DA90 + (v4 ^ byte_81350[byte_7C0B0[v4] ^ 0xCD]) - 1) - 8;
  if (v3 == 1657355151)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 1657355158)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X2, X17 }
  }

  return 4294925278;
}

uint64_t sub_2E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = *v26;
  v31 = *(v26 + 48);
  *(v28 - 172) = (a1 - 1047) | 0x24A;
  *(v28 - 112) = veorq_s8(*v30, xmmword_88440);
  *(v28 - 184) = v27;
  if (v27)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v32;
  v34 = *(v29 + 8 * ((7 * v33) ^ a1));
  *(v28 - 176) = -42900;
  return v34(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2E7BC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  if (v9)
  {
    v12 = a9 == v10;
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || a3 == 0;
  return (*(v11 + 8 * ((82 * ((v14 ^ (a1 + 58)) & 1)) ^ a1)))();
}

uint64_t sub_2E868(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v41 = *(&a25 + v37 + 72);
  v42 = ((v37 << ((v39 - a3 - 35) ^ (a4 - 1))) & 0xBBBFDFD8) + (v37 ^ 0x5DDFEFEF) + v38;
  *(a1 + v42) = (HIBYTE(v41) ^ 0x56) - ((2 * (HIBYTE(v41) ^ 0x56)) & 0x64) + 50;
  *(a1 + v42 + 1) = (BYTE2(v41) ^ 0x65) - ((2 * (BYTE2(v41) ^ 0x65)) & 0x64) + 50;
  *(a1 + v42 + 2) = (BYTE1(v41) ^ 0x51) - ((2 * (BYTE1(v41) ^ 0x51)) & 0x64) + 50;
  *(a1 + v42 + 3) = v41 ^ 0x4E;
  return (*(v40 + 8 * ((2291 * (v37 + 4 < a37)) ^ v39)))();
}

uint64_t sub_2E9B8(uint64_t a1)
{
  v1 = 1082434553 * (a1 ^ 0x9B47F68A);
  v2 = *(a1 + 16) ^ v1;
  v3 = *a1 + v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1726767306;
  v5 = v4 - 1726767306 < 0;
  v7 = 1726767306 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_9DA90 + v2 - 1803) + ((((v3 - 1610049664) >= (4 * v7)) * (((v2 - 187806071) & 0xB31AFF4) - 1431)) ^ v2) - 1))();
}

void sub_2EAC4(int a1@<W8>)
{
  v3 = *(v2 + 4);
  v4 = ((v1 - 774024175) & 0x2E22AFDC ^ 0x45C) - a1;
  if (v3 + 420716342 >= 0)
  {
    v4 = a1;
  }

  *(v2 + 4) = v4 + v3;
  JUMPOUT(0x2EB28);
}

uint64_t sub_2EC08(uint64_t a1)
{
  v1 = 1785193651 * (((a1 | 0x265792B0) - a1 + (a1 & 0xD9A86D4F)) ^ 0x358B7E90);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) + v1;
  v5 = v4 + *(v3 + 68) - 1869595554;
  *(v3 + 68) = v5;
  v4 += 1304184109;
  v6 = v4 < 0xBD2C08CF;
  v7 = v5 - 1121187633 < v4;
  if (v6 != v5 > 0x42D3F730)
  {
    v7 = v6;
  }

  return (*(*(&off_9DA90 + v2 - 1479) + ((76 * v7) ^ v2) - 1))();
}

uint64_t sub_2ED50@<X0>(int a1@<W8>)
{
  if ((a1 + 712618036) <= 0x12 && ((1 << (a1 + 52)) & 0x50181) != 0)
  {
    return sub_46804();
  }

  else
  {
    return (*(v3 + 8 * ((14 * ((*(v2 + 48 * v4 + 40) & 8) != 0)) ^ (v1 + 2108724001))))(4294925278);
  }
}

void sub_2EDEC(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_9DA90 + (byte_8135C[(byte_7C0B4[(107 * ((qword_A70B8 + dword_A7148) ^ 0xF9)) - 4] ^ 0xD6) - 12] ^ (107 * ((qword_A70B8 + dword_A7148) ^ 0xF9))) - 173);
  v4 = *(v3 - 4);
  v5 = *(&off_9DA90 + (byte_84CC0[byte_81250[(107 * ((qword_A70B8 - v4) ^ 0xF9))] ^ 0x1A] ^ (107 * ((qword_A70B8 - v4) ^ 0xF9))) - 89);
  v6 = &v8[*(v5 - 4) - v4];
  *(v3 - 4) = 1010482283 * v6 + 0x5450BF49BFD4E907;
  *(v5 - 4) = 1010482283 * (v6 ^ 0xABAF40B6402B16F9);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 742307843 * (&v10 ^ 0x1E228D55);
  v12 = 602092488 - v6;
  v11 = v9;
  v10 = -473373664 - v6;
  LODWORD(v5) = 1010482283 * ((*(v5 - 4) - *(v3 - 4)) ^ 0x402B16F9);
  v7 = *(&off_9DA90 + ((107 * (dword_A7148 ^ 0xF9 ^ qword_A70B8)) ^ byte_7BFB0[byte_88240[(107 * (dword_A7148 ^ 0xF9 ^ qword_A70B8))] ^ 0x16]) - 136) - 8;
  (*&v7[8 * (v5 ^ byte_84CC0[byte_81250[v5] ^ 0x48]) + 16280])(&v10);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2F078@<X0>(int a1@<W8>)
{
  v6 = (((v2 - 106) | 0x48) - 1073742170) & v1;
  v7 = *v3;
  v8 = *(v3 + 4) + a1;
  *(*v3 + v8) = (HIBYTE(v6) ^ 0x78) - 2 * ((HIBYTE(v6) ^ 0x78) & 0x36 ^ HIBYTE(v6) & 4) + 50;
  *(v7 + v8 + 1) = (BYTE2(v6) ^ 0x60) - 2 * ((BYTE2(v6) ^ 0x60) & 0x37 ^ BYTE2(v6) & 5) + 50;
  *(v7 + v8 + 2) = (BYTE1(v6) ^ 0x1C) - ((2 * (BYTE1(v6) ^ 0x1C)) & 0x64) + 50;
  *(v7 + v8 + 3) = v6 ^ 0x54;
  v9 = *v3;
  result = 3882538062;
  v11 = ((v5 ^ 0xE165D9AC) + 1374876175) ^ v5 ^ ((v5 ^ 0x9AF8015C) + 711928575) ^ ((v5 ^ 0x6308F342) - 744498975) ^ ((v5 ^ 0x57FDFFEF) - 412429234);
  v12 = ((2 * (a1 + *(v3 + 4) + 4)) & 0xB7FFFFFA) + ((a1 + *(v3 + 4) + 4) ^ 0x5BFFFFFD) - 1543503869;
  *(*v3 + v12) = (HIBYTE(v11) ^ 0x4F) - ((2 * (HIBYTE(v11) ^ 0x4F)) & 0x64) + 50;
  *(v9 + v12 + 1) = (BYTE2(v11) ^ 0x68) - 2 * ((BYTE2(v11) ^ 0x68) & 0x37 ^ BYTE2(v11) & 5) + 50;
  *(v9 + v12 + 2) = (BYTE1(v11) ^ 0xD4) - ((2 * (BYTE1(v11) ^ 0xD4)) & 0x64) + 50;
  *(v9 + v12 + 3) = ((v5 ^ 0xAC) + 15) ^ v5 ^ ((v5 ^ 0x5C) - 1) ^ ((v5 ^ 0x42) - 31) ^ ((v5 ^ 0xEF) + 78) ^ 0x6F;
  *(v3 + 4) = v4;
  return result;
}

uint64_t sub_2F29C@<X0>(uint64_t a1@<X8>)
{
  v11 = (*(*(v9 + 8) + 4 * v2) ^ v6) + v1;
  *(*(a1 + 8) + 4 * v2) = v11 + v6 - (((v3 ^ v4) + v8) & (2 * v11));
  return (*(v7 + 8 * (((v2 + 1 == v10) * v5) ^ v3)))();
}

uint64_t sub_2F2F0@<X0>(int a1@<W8>)
{
  v7 = (a1 & 0xDEF47D7E) + (v1 ^ 0x6F7A3EBF) + ((v3 - 1329) ^ 0xF6BDDA04);
  v8 = ((v6 - 144) ^ 0xAF278218) * v4;
  *(v6 - 144) = v8 + v3 - 1345;
  *(v6 - 136) = v5;
  *(v6 - 128) = v7 ^ v8;
  v9 = (*(v2 + 8 * (v3 + 371)))(v6 - 144);
  return (*(v2 + 8 * ((37 * (*(v6 - 140) != ((17 * (v3 ^ 0x703)) ^ 0xFA8B684))) ^ v3)))(v9);
}

uint64_t sub_2F3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = v9;
  v11 = v9 + 1;
  *(a1 + v3 + 4) = *(*(a2 + 8) + v10);
  v12 = *(a2 + 4) + v6;
  v13 = v12 < v4;
  v14 = v11 + v4 < v12;
  if (v11 > v7 != v13)
  {
    v14 = v13;
  }

  return (*(a3 + 8 * ((!v14 * v8) ^ v5)))();
}

uint64_t sub_2F404()
{
  v4 = ((v1 - 970349216) & 0x9D65BB4 ^ 0xFFFFFFFFFFFFFE6BLL) + v2;
  if (HIDWORD(v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = -2 - v0 >= v4;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((244 * (((v1 + 44) ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_2F4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = 1785193651 * ((1530038460 - ((v13 - 160) | 0x5B3288BC) + ((v13 - 160) | 0xA4CD7743)) ^ 0xB7119B63);
  *(v13 - 144) = a11 - v14;
  *(v13 - 160) = (v12 + 1508) ^ v14;
  *(v13 - 152) = a4;
  v15 = (*(v11 + 8 * (v12 + 2225)))(v13 - 160);
  v16 = STACK[0x28C] & (7 * (v12 ^ 0x2E) + 35);
  *(&STACK[0x248] + v16) = -78;
  return (*(v11 + 8 * ((1787 * (v16 > (v12 ^ 0x2Eu) + 51)) ^ v12)))(v15);
}

uint64_t sub_2F710(int8x16_t a1, int8x16_t a2, int32x4_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v88 = *(v46 + 8 * v41);
  if (BYTE4(a39) == 2)
  {
    v89 = vld4q_s8(v42);
    v82 = veorq_s8(v89.val[1], a2);
    _Q21 = vmovl_high_u8(v82);
    _Q20 = vmovl_u8(*v82.i8);
    v85 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v86 = vmovl_u8(*&veorq_s8(v89.val[2], a2)).u64[0];
    v89.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v89.val[3], a2)));
    v87 = vorrq_s8(vorrq_s8(vorrq_s8(v85, vshll_n_u16(v86, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v89.val[0], a2))), 0x18uLL)), v89.val[2]);
    v89.val[2] = veorq_s8(vandq_s8(v87, a1), (*&v89.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    *v45 = vaddq_s32(vsubq_s32(v87, vaddq_s32(v89.val[2], v89.val[2])), a3).u32[0];
    v45[v49 + 2027230958] = v48 ^ __ROR4__(v45[v49 + 2027230950] ^ v45[v49 + 2027230955] ^ v45[v49 + 2027230942] ^ v45[((a6 + a7 + 936) ^ (v49 + 1045)) + 2027230958], 31);
    return (*(v46 + 8 * (((v44 != 2027230895) | (8 * (v44 != 2027230895))) ^ (a6 + a7 + 2043))))(HIDWORD(a38));
  }

  else
  {
    if (BYTE4(a39) != 1)
    {
      JUMPOUT(0x2FEFCLL);
    }

    v90 = vld4q_s8(v42);
    v50 = a6 + a7 + 378;
    v51 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v90.val[0], a2)));
    v52 = veorq_s8(v90.val[2], a2);
    _Q25 = vmovl_u8(*v52.i8);
    _Q24 = vmovl_high_u8(v52);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v90.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v90.val[3], a2))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v90.val[1], a2)), 8uLL), v51));
    v61 = veorq_s8(vandq_s8(v90.val[2], a1), (*&v51 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    *v45 = vaddq_s32(vsubq_s32(v90.val[2], vaddq_s32(v61, v61)), a3).u32[0];
    v62 = (HIDWORD(a37) & 0x9EB8A64E ^ 0x1620004C ^ (a37 ^ 0xC8DDF732) & (HIDWORD(a37) ^ v47) | a37 & 0xE25192A9 ^ 0xA0108281 ^ (a37 ^ (((v50 - 498) | 0x204) - 1449481092)) & (a38 ^ 0xB434C3D5)) + (HIDWORD(a36) ^ v47) + *(*(&off_9DA90 + v50 - 424) + a22 + v49) + (v45[(*(*(&off_9DA90 + (v50 ^ 0x1AC)) + a22 + v49 - 8) - 45)] ^ v48);
    v63 = (v62 ^ 0xBDEEFEF4) & (2 * (v62 & 0xBDECFCE6)) ^ v62 & 0xBDECFCE6;
    v64 = ((2 * (v62 ^ 0xAC373E34)) ^ 0x23B785A4) & (v62 ^ 0xAC373E34) ^ (2 * (v62 ^ 0xAC373E34)) & 0x11DBC2D2;
    v65 = v64 ^ 0x10484252;
    v66 = (v64 ^ 0x1938080) & (4 * v63) ^ v63;
    v67 = ((4 * v65) ^ 0x476F0B48) & v65 ^ (4 * v65) & 0x11DBC2D0;
    v68 = (v67 ^ 0x14B0240) & (16 * v66) ^ v66;
    v69 = ((16 * (v67 ^ 0x1090C092)) ^ 0x1DBC2D20) & (v67 ^ 0x1090C092) ^ (16 * (v67 ^ 0x1090C092)) & 0x11DBC2D0;
    v70 = v68 ^ 0x11DBC2D2 ^ (v69 ^ 0x11980000) & (v68 << 8);
    v71 = (v70 << 16) & 0x11DB0000 ^ v70 ^ ((v70 << 16) ^ 0x42D20000) & (((v69 ^ 0x43C2D2) << 8) & 0x11DB0000 ^ 0x190000 ^ (((v69 ^ 0x43C2D2) << 8) ^ 0x5BC20000) & (v69 ^ 0x43C2D2));
    v72 = *(*(&off_9DA90 + v50 - 456) + a22 + v49 - 12);
    LOBYTE(v65) = (((v72 - 111) ^ 0x51) + 14) ^ (v72 - 111) ^ (((v72 - 111) ^ 0x4F) + 20) ^ (((v72 - 111) ^ 0x42) + 31) ^ (18 - v72);
    v73 = (((a37 ^ 0x303C68BE) - 809265342) ^ ((a37 ^ 0x179DF962) - 396228962) ^ ((a37 ^ 0x71C4C0A0) - 1908719776)) - 1911178823 + (((v62 ^ (2 * v71) ^ 0x9FFF7942) << (v65 & 0x1E ^ 2) << ((v65 & 1) == 0)) | ((v62 ^ (2 * v71) ^ 0x9FFF7942) >> (v43 - v72)));
    v74 = (v73 ^ 0x8E2F9792) & (2 * (v73 & 0xC84F97C3)) ^ v73 & 0xC84F97C3;
    v75 = ((2 * (v73 ^ 0x8E3F9B14)) ^ 0x8CE019AE) & (v73 ^ 0x8E3F9B14) ^ (2 * (v73 ^ 0x8E3F9B14)) & 0x46700CD6;
    v76 = v75 ^ 0x42100451;
    v77 = (v75 ^ 0x600804) & (4 * v74) ^ v74;
    v78 = ((4 * v76) ^ 0x19C0335C) & v76 ^ (4 * v76) & 0x46700CD4;
    v79 = (((v78 ^ 0x400050) & (16 * v77) ^ v77 ^ 0x46700CD7 ^ (((16 * (v78 ^ 0x46300C83)) ^ 0x6700CD70) & (v78 ^ 0x46300C83) ^ (16 * (v78 ^ 0x46300C83)) & 0x46700CD0 ^ 0x46000C00) & (((v78 ^ 0x400050) & (16 * v77) ^ v77) << 8)) << 16) ^ 0xCD70000u;
    v80 = *(v46 + 8 * ((1010 * (a22 + 1 == v44)) ^ v50));
    return v80(1010, a37, v80, a22 + 1, 2027230958, a9, v79, 1181748432, a12, a13, a14, a15, a16, a17, a18, a19, a20, v88, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
  }
}

uint64_t sub_30700(double a1, double a2, int8x16_t a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v16 = (v14 + (v11 + v9));
  v17 = *v16;
  v18 = v16[1];
  v19 = (v10 + v11);
  *v19 = vaddq_s8(vsubq_s8(v17, vandq_s8(vaddq_s8(v17, v17), a4)), a3);
  v19[1] = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a4)), a3);
  return (*(v13 + 8 * (((v11 == 32) * a9) ^ (v15 + v12 + 814))))();
}

void sub_30814()
{
  v3 = v1[623];
  if (v2 - (v0 + 1500582225) >= ((v0 + 1500581601) ^ (v0 + 1500582225)))
  {
    ++v3;
  }

  *v1 = v3;
  JUMPOUT(0x2E0B4);
}

uint64_t sub_3088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v17 - 136) = &a14;
  *(v17 - 128) = a11;
  *(v17 - 120) = (v14 + 1257) ^ (1564307779 * ((2 * ((v17 - 136) & 0x1FF9FBD8) - (v17 - 136) + 1611007013) ^ 0xF70BC836));
  (*(v15 + 8 * (v14 ^ 0xA86)))(v17 - 136);
  *(v17 - 136) = a11;
  *(v17 - 128) = v14 - 143681137 * ((((2 * (v17 - 136)) | 0x83D3F7BC) - (v17 - 136) + 1041630242) ^ 0x154EE784) + 762;
  *(v17 - 120) = v16;
  v18 = (*(v15 + 8 * (v14 ^ 0xAAA)))(v17 - 136);
  return (*(v15 + 8 * ((90 * (*(v17 - 112) - 1135061088 >= ((v14 - 525) | 0x388) + ((v14 + 977) ^ 0xFA2A1507))) ^ v14)))(v18);
}

uint64_t sub_30A24@<X0>(int a1@<W1>, unsigned int a2@<W7>, unsigned int a3@<W8>)
{
  v15 = (v11 + 4 * v12);
  v16 = HIDWORD(v8) + (*v15 ^ a3) + HIDWORD(v4) + a2 * (*(v6 + 4 * v12) ^ a3);
  *(v15 - 1) = v16 + a3 - ((v16 << (v7 & v13 ^ v14)) & a1);
  return (*(v9 + 8 * (((v12 + 1 != v3) * v5) ^ (v10 - 194))))();
}

uint64_t sub_30A94@<X0>(int a1@<W2>, int a2@<W8>, int8x16_t a3@<Q1>, int8x16_t a4@<Q3>)
{
  v10 = (v9 + (v5 + v4));
  v11 = *v10;
  v12 = v10[1];
  v13 = (v6 + v5);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a4)), a3);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a4)), a3);
  return (*(v8 + 8 * (((v5 == 32) * v7) ^ (a1 + a2 + 672))))();
}

uint64_t sub_30AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, char a19, __int16 a20, char a21, __int16 a22, char a23)
{
  v27 = 1082434553 * ((-1760979050 - ((v26 - 152) | 0x97099796) + ((v26 - 152) | 0x68F66869)) ^ 0xF3B19EE3);
  *(v26 - 140) = (v24 ^ 0xC7) - 530103023 + v27 + v23;
  *(v26 - 136) = &a23;
  *(v26 - 128) = v27 + v24 + 34;
  *(v26 - 152) = &a16;
  *(v26 - 120) = &a21;
  *(v26 - 112) = &a19;
  *(v26 - 104) = a14;
  v28 = (*(v25 + 8 * (v24 + 1815)))(v26 - 152);
  return (*(v25 + 8 * ((1158 * (*(v26 - 144) == -1261164275)) ^ v24)))(v28);
}

uint64_t sub_30E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v25 = ((v24 - 1885941195) ^ 0x8F96D5F9) - 1710669959 + (((a23 ^ 0x22548063) - 575963235) ^ ((a23 ^ 0xAEFE0008) + 1359085560) ^ ((a23 ^ 0x387EA966) - 947826286 + ((v24 - 1885941195) & 0x70692F3F)));
  v26 = (v25 ^ 0x50E0C852) & (2 * (v25 & 0x1ACAE963)) ^ v25 & 0x1ACAE963;
  v27 = ((2 * (v25 ^ 0x54E1CA10)) ^ 0x9C5646E6) & (v25 ^ 0x54E1CA10) ^ (2 * (v25 ^ 0x54E1CA10)) & (a7 + 2);
  v28 = v27 ^ 0x42292111;
  v29 = (v27 ^ 0xC020200) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0x38AC8DCC) & v28 ^ (4 * v28) & a7;
  v31 = (v30 ^ 0x8280140) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x46032233)) ^ 0xE2B23730) & (v30 ^ 0x46032233) ^ (16 * (v30 ^ 0x46032233)) & a7;
  return (*(v23 + 8 * ((1016 * ((v25 ^ (2 * ((((v32 ^ 0xC090043) << 8) & 0x4E2B0000 ^ 0xA230000 ^ (((v32 ^ 0xC090043) << 8) ^ 0x2B230000) & (v32 ^ 0xC090043)) & (((v32 ^ 0x42222300) & (v31 << 8) ^ v31) << 16) ^ (v32 ^ 0x42222300) & (v31 << 8) ^ v31))) == a8)) ^ (v24 + 601))))(a1, a2, 905, a20);
}

uint64_t sub_3116C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = 4 * a4 - 0x19BB1832CLL;
  v10 = (((*(*(v4 + 8) + v9) ^ 0xB0C139F3) + 1329513997) ^ ((*(*(v4 + 8) + v9) ^ 0x5124F827) - 1361377319) ^ ((*(*(v4 + 8) + v9) ^ 0xA796E9F5) + (a3 ^ 0x58691481))) + v8;
  v11 = (((a3 ^ 0x12F4A901 ^ *(*(v5 + 8) + v9)) - 318024587) ^ ((*(*(v5 + 8) + v9) ^ 0x6BFBE882) - 1811671170) ^ ((*(*(v5 + 8) + v9) ^ 0x3F7C6B28) - 1065118504)) + v8;
  v12 = v10 < v7;
  v13 = v10 > v11;
  if (v12 != v11 < v7)
  {
    v13 = v12;
  }

  return (*(v6 + 8 * ((414 * v13) ^ a3)))();
}

uint64_t sub_3127C@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 1018));

  return v3(v1);
}

uint64_t sub_31844(_DWORD *a1)
{
  v1 = *a1 ^ (1564307779 * ((213036865 - (a1 | 0xCB2AF41) + (a1 | 0xF34D50BE)) ^ 0x64409CAD));
  v2 = **(&off_9DA90 + (v1 + 875954275));
  v5 = v1 + 875954159 + 1785193651 * (((&v4 | 0xC658FE9D) + (~&v4 | 0x39A70162)) ^ 0xD58412BC) + 350;
  v4 = v2;
  return (*(*(&off_9DA90 + (v1 + 875954159)) + (v1 ^ 0xCBCA08BC) - 1))(&v4);
}

uint64_t sub_3195C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, unsigned int a8@<W8>, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = v12 + 55126177 < a12 - 1313418102;
  if ((a12 - 1313418102) < 0x34928A1 != v12 > 0xFCB6D75E)
  {
    v14 = (a12 - 1313418102) < 0x34928A1;
  }

  return (*(v13 + 8 * ((235 * (((a8 - 1) ^ v14) & 1)) ^ a8)))(55126177, a1, a2, a3, a4, a5, a6, a7);
}

void sub_319D4()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 24) - 1388665877 * ((-1205643889 - (v0 | 0xB823558F) + (v0 | 0x47DCAA70)) ^ 0xCA71C89C);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_31B80(double a1, double a2, double a3, double a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9)
{
  v15 = (v14 + (v11 + v9));
  v16 = *v15;
  v17 = v15[1];
  v18 = (a9 + v11);
  *v18 = vaddq_s8(vsubq_s8(v16, vandq_s8(vaddq_s8(v16, v16), a5)), a7);
  v18[1] = vaddq_s8(vsubq_s8(v17, vandq_s8(vaddq_s8(v17, v17), a5)), a7);
  return (*(v13 + 8 * (((v11 + v10 - 969 == 85) * v12) ^ v10)))();
}

uint64_t sub_31E08(const char *a1, int8x16_t a2, int8x16_t a3, int32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a18 = *(v26 + 8 * v24);
  v31 = (&a24 + a7);
  a21 = a7 + 320;
  v33 = *(v30 - 140);
  v32 = *(v30 - 136);
  v34 = *(v30 - 124);
  if (v34 == 2)
  {
    v76 = vld4q_s8(a1);
    v59 = veorq_s8(v76.val[0], a2);
    v60 = vmovl_high_u8(v59);
    v61 = vmovl_u8(*v59.i8);
    v62 = veorq_s8(v76.val[1], a2);
    _Q21 = vmovl_high_u8(v62);
    _Q20 = vmovl_u8(*v62.i8);
    v65 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v66 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v67 = veorq_s8(v76.val[2], a2);
    v68 = vmovl_u8(*v67.i8);
    v69 = vmovl_high_u8(v67);
    v76.val[0] = veorq_s8(v76.val[3], a2);
    v76.val[1] = vmovl_u8(*v76.val[0].i8);
    v76.val[2] = vmovl_u16(*v76.val[1].i8);
    v76.val[1] = vmovl_high_u16(v76.val[1]);
    v76.val[0] = vmovl_high_u8(v76.val[0]);
    v76.val[3] = vmovl_u16(*v76.val[0].i8);
    v76.val[0] = vmovl_high_u16(v76.val[0]);
    v70 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v69, 8uLL)), vshlq_n_s32(vmovl_high_u16(v60), 0x18uLL)), v76.val[0]);
    v71 = vorrq_s8(vorrq_s8(vorrq_s8(v66, vshll_n_u16(*v69.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v60.i8), 0x18uLL)), v76.val[3]);
    v72 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v68, 8uLL)), vshlq_n_s32(vmovl_high_u16(v61), 0x18uLL)), v76.val[1]);
    v73 = vorrq_s8(vorrq_s8(vorrq_s8(v65, vshll_n_u16(*v68.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v61.i8), 0x18uLL)), v76.val[2]);
    v76.val[0] = veorq_s8(vandq_s8(v70, a3), (*v76.val & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v76.val[3] = veorq_s8(vandq_s8(v71, a3), (*&v76.val[3] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v76.val[1] = veorq_s8(vandq_s8(v72, a3), (*&v76.val[1] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v76.val[2] = veorq_s8(vandq_s8(v73, a3), (*&v76.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    *v31 = vaddq_s32(vsubq_s32(v73, vaddq_s32(v76.val[2], v76.val[2])), a4);
    v31[1] = vaddq_s32(vsubq_s32(v72, vaddq_s32(v76.val[1], v76.val[1])), a4);
    v31[2] = vaddq_s32(vsubq_s32(v71, vaddq_s32(v76.val[3], v76.val[3])), a4);
    v31[3] = vaddq_s32(vsubq_s32(v70, vaddq_s32(v76.val[0], v76.val[0])), a4);
    v74 = &v31[183174684].i32[v28 + 2];
    v75 = *(v74 - 16);
    *v74 = v27 ^ __ROR4__(*(v74 - 8) ^ *(v74 - 3) ^ v75 ^ v31[183174275].i32[v28 + 2 + v25], 31);
    return (*(v26 + 8 * ((848 * (v29 == 732698675)) ^ a19)))(v75, v32, a6, a7, a8, a9, v33, a11, a12, a13);
  }

  else
  {
    if (v34 != 1)
    {
      JUMPOUT(0x32648);
    }

    v77 = vld4q_s8(a1);
    v35 = veorq_s8(v77.val[0], a2);
    v36 = vmovl_high_u8(v35);
    v37 = vmovl_high_u16(v36);
    v38 = vmovl_u16(*v36.i8);
    v39 = vmovl_u8(*v35.i8);
    v40 = vmovl_high_u16(v39);
    v41 = vmovl_u16(*v39.i8);
    v42 = veorq_s8(v77.val[1], a2);
    v43 = vmovl_u8(*v42.i8);
    v44 = vmovl_high_u8(v42);
    v45 = veorq_s8(v77.val[2], a2);
    _Q25 = vmovl_u8(*v45.i8);
    _Q24 = vmovl_high_u8(v45);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v77.val[0] = veorq_s8(v77.val[3], a2);
    v77.val[1] = vmovl_u8(*v77.val[0].i8);
    v77.val[2] = vmovl_u16(*v77.val[1].i8);
    v77.val[0] = vmovl_high_u8(v77.val[0]);
    v77.val[3] = vmovl_u16(*v77.val[0].i8);
    v77.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v77.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v44, 8uLL), v37));
    v77.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v77.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v44.i8, 8uLL), v38));
    v77.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v77.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v43, 8uLL), v40));
    v77.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v77.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v43.i8, 8uLL), v41));
    v54 = veorq_s8(vandq_s8(v77.val[0], a3), (*&v37 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v55 = veorq_s8(vandq_s8(v77.val[3], a3), (*&v38 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v56 = veorq_s8(vandq_s8(v77.val[1], a3), (*&v40 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v57 = veorq_s8(vandq_s8(v77.val[2], a3), (*&v41 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    *v31 = vaddq_s32(vsubq_s32(v77.val[2], vaddq_s32(v57, v57)), a4);
    v31[1] = vaddq_s32(vsubq_s32(v77.val[1], vaddq_s32(v56, v56)), a4);
    v31[2] = vaddq_s32(vsubq_s32(v77.val[3], vaddq_s32(v55, v55)), a4);
    v31[3] = vaddq_s32(vsubq_s32(v77.val[0], vaddq_s32(v54, v54)), a4);
    return (*(v26 + 8 * ((466 * (a20 + 1 != v29)) ^ (73 * (a8 ^ (a8 - 1))))))(*(&off_9DA90 + ((73 * (a8 ^ (a8 - 1))) ^ 0xF6)) - 12);
  }
}

void sub_324D8(int a1)
{
  v3 = (((*(v2 - 132) ^ 0xDCA942A7) + 592887129) ^ ((*(v2 - 132) ^ 0x3C42646B) - 1010984043) ^ ((*(v2 - 132) ^ 0xB68E77B0) + 1232177232)) + (((v1 ^ 0x8D19D07) - 147954951) ^ ((v1 ^ 0x76EF80B7) - 1995407543) ^ (((((a1 - 1616053703) & 0x6CFFC7AE) + 464422474) ^ v1) - 677072076)) - 718988925;
  *(v2 - 132) = v3 ^ ((v3 ^ 0x89AC8057) + 1577650468) ^ ((v3 ^ 0xA1BC186E) + 1981387035) ^ ((v3 ^ 0x7FB7114D) - 1475176390) ^ ((v3 ^ 0x7FFDFFFF) - 1470597492) ^ 0x7E3F27F7;
  JUMPOUT(0x32640);
}

uint64_t sub_32DB0()
{
  v4 = v0 - 1364881578;
  v5 = (v4 < 0xF1D611C3) ^ ((v3 - 1894984137) < 0xF1D611C3);
  v6 = v3 - 1894984137 > v4;
  if (v5)
  {
    v6 = (v3 - 1894984137) < 0xF1D611C3;
  }

  return (*(v1 + 8 * ((((v2 ^ 0x5C) - 490) * v6) ^ v2)))();
}

uint64_t sub_32E28@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (v7)
  {
    v9 = a6 == v6;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || a2 == 0;
  return (*(v8 + 8 * (((((a1 - 96) ^ v11) & 1) * (a1 - 1466)) ^ a1)))();
}

uint64_t sub_32FBC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a5 = v7;
  a6 = a1;
  a3 = v7;
  a4 = v8 + 843532609 * (&a3 ^ 0x5C4D5485) + 120;
  v9 = (*(v6 + 8 * (v8 ^ 0x806)))(&a3);
  return sub_33000(v9);
}

uint64_t sub_33454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x308]) = a7;
  v71 = a7 | 6;
  STACK[0x260] = v71;
  LOBYTE(v71) = *(a21 + v71);
  v72 = a7 | 0xBLL;
  v73 = a7;
  STACK[0x2C8] = v72;
  HIDWORD(a19) = v70 ^ 0x22A;
  LODWORD(v71) = *(a23 + (v70 ^ 0x30u ^ v71));
  v74 = *(a21 + v72);
  v75 = a7 | 0xELL;
  STACK[0x2D8] = v75;
  HIDWORD(v205) = v70 - 1307;
  LODWORD(v72) = (v70 - 1307) ^ 0x1CB | a7;
  LODWORD(STACK[0x278]) = v72;
  LOBYTE(v74) = *(a24 + (v74 ^ 0x3F));
  LODWORD(v75) = *(a23 + (*(a21 + v75) ^ 0xC3));
  v76 = *(a21 + v72);
  v77 = (v74 ^ 0x31) - 98;
  v78 = ((2 * v74) & 0xC4 ^ 0x84) + v77;
  STACK[0x2E0] = v73 | 7;
  v79 = *(a24 + (v76 ^ 0x87));
  v80 = v75 ^ (v75 >> 5) ^ (v75 >> 3);
  v81 = *(a24 + (*(a21 + (v73 | 7)) ^ 0xEELL));
  STACK[0x300] = v73 | 0xD;
  LODWORD(v74) = (v81 ^ 0xC7E8FF62) & (((v71 ^ (v71 >> 5) ^ (v71 >> 3)) << 8) ^ 0xC7E83A7B);
  LOBYTE(v75) = v77 & 2;
  LODWORD(v71) = *(a26 + (*(a21 + (v73 | 0xD)) ^ 0xFLL));
  v82 = 19 * v71;
  v83 = 19 * v71 + 46;
  v209 = v73 | 8;
  LODWORD(v71) = ((v83 ^ 0xFFFFFFB5) + ((38 * v71 + 92) & 0x6A)) << v75 << (v75 ^ 2);
  LOBYTE(v75) = v82 - ((2 * v83) & 0xC7) - 111;
  v84 = *(a22 + (*(a21 + (v73 | 8)) ^ 0xAALL));
  LOBYTE(v75) = v71 ^ v75;
  v85 = v84 ^ (v84 >> 3) ^ (v84 >> 2);
  STACK[0x290] = v73 | 1;
  v86 = *(a26 + (*(a21 + (v73 | 1)) ^ 0xDLL));
  v210 = v73 | 0xA;
  v87 = (a25 + 76 * v86) ^ (HIDWORD(a25) + 19 * v86);
  v88 = (((v87 >> 4) ^ 0xFFFFFFFFFFFFFFF7) & ((v79 << 12) ^ 0x6CBF206696A6F95CLL) ^ 0x1300D90168440280) & ((v87 << 28) ^ 0x3392F9457E6742DCLL) ^ ((v87 >> 4) | (v79 << 12) ^ 0x6CBF206696A6F95CLL) & 0x4C2D00228088B803;
  LODWORD(v79) = *(a23 + (*(a21 + (v73 | 0xA)) ^ 8));
  v207 = v73 | 4;
  v89 = *(a21 + v207) - ((2 * *(a21 + v207)) & 0x1A4u) + 210;
  v213 = v73 | 0xC;
  LODWORD(v72) = v79 ^ (v79 >> 5) ^ (v79 >> 3);
  LODWORD(v79) = *(a22 + (v89 ^ 0x71)) ^ (*(a22 + (v89 ^ 0x71)) >> 3) ^ (*(a22 + (v89 ^ 0x71)) >> 2);
  v90 = *(a22 + (*(a21 + (v73 | 0xC)) ^ 0x9FLL));
  LODWORD(v89) = v90 ^ a8 ^ ((v90 >> 3) ^ (v90 >> 2) | 0x80);
  v214 = v73 | 2;
  v91 = *(a23 + (*(a21 + (v73 | 2)) ^ 0x3FLL));
  v208 = v73 | 9;
  LOBYTE(v83) = *(a26 + (*(a21 + (v73 | 9)) ^ 0x9DLL));
  v92 = (BYTE4(a25) + 19 * v83) ^ (a25 + 76 * v83);
  v93 = ((v89 << 24) ^ 0xD99B241A) & ((((v75 << 16) ^ 0x3623A6A8) & ((v80 << 8) ^ 0xFEFF46EA) | (v80 << 8) & 0x5900) ^ 0xC9C2C9F6) ^ (((v75 << 16) ^ 0x3623A6A8) & ((v80 << 8) ^ 0xFEFF46EA) & 0x3064DB00 | (v80 << 8) & 0x5900);
  STACK[0x220] = v73 | 0xF;
  v94 = *(a24 + (*(a21 + (v73 | 0xF)) ^ 0x4BLL));
  v211 = v73 | 5;
  v212 = v73;
  LOBYTE(v71) = *(a26 + (*(a21 + (v73 | 5)) ^ 0xF7));
  v95 = (((((BYTE4(a25) + 19 * v71) ^ (a25 + 76 * v71)) << 16) ^ 0xFF9C4DBD) & (((v79 ^ 0xF6) << 24) ^ 0x36FF4DBD) ^ 0x279BFC31) & ((v74 | v81 & 0x84) ^ 0x38175E16) ^ v74 & 0x2E04E73;
  LODWORD(v71) = *(a22 + (*(a21 + v73) ^ 0xD6));
  LODWORD(v71) = ((16 * (v71 ^ (v71 >> 1))) & 0xFC0 ^ 0x6F) & (((v71 ^ (v71 >> 1)) >> 4) ^ 0xFFFFFFFB) ^ (((v71 ^ 0x85) >> 2) | ((v71 ^ 0xFFFFFF85) << 6));
  LODWORD(v89) = (v71 >> 6) | (4 * v71);
  LODWORD(v79) = (v88 << 20) ^ 0x26C00000 | (v88 >> 12) ^ 0x9673B238;
  LODWORD(v71) = v79 ^ ((v91 ^ (v91 >> 5) ^ (v91 >> 3)) << 8);
  HIDWORD(v203) = v71 ^ ((v89 ^ 0xA7) << 24);
  v96 = *(&off_9DA90 + v70 - 1661) - 12;
  v97 = v75 ^ 0x37u;
  HIDWORD(v206) = v70;
  v98 = *(&off_9DA90 + (v70 ^ 0x66C)) - 4;
  v99 = *&v98[4 * v97];
  v100 = *(&off_9DA90 + (v70 ^ 0x65A)) - 12;
  v101 = *&v100[4 * (v81 ^ 0x57)] - (v95 ^ 0x21C17698);
  v102 = *(&off_9DA90 + v70 - 1616) - 12;
  LODWORD(v73) = *&v102[4 * (v72 ^ 0x9F)] ^ (v99 - 1409877230) ^ v101 ^ (*&v96[4 * (HIBYTE(HIDWORD(v203)) ^ 0xE3)] + (HIBYTE(HIDWORD(v203)) ^ 0xA095C548) - 745719458);
  HIDWORD(v202) = v78;
  v103 = *&v102[4 * (v80 ^ 0x81)] ^ (*&v98[4 * (BYTE2(v79) ^ 0x7C)] - 1409877230) ^ (*&v96[4 * (HIBYTE(v95) ^ 0x1E)] + (HIBYTE(v95) ^ 0xA095C5B5) - 745719458) ^ (*&v100[4 * (v78 ^ 0xAE)] - (v78 ^ 0x21C17607));
  LODWORD(v205) = v85;
  LODWORD(v203) = (v93 ^ 0x51126684) & (v94 ^ 0xFFFFFF06) | v94 & 0x61;
  LODWORD(v71) = *&v102[4 * (BYTE1(v71) ^ 0x9B)] ^ ((v85 ^ 0xA095C5B0) - 745719458 + *&v96[4 * (v85 ^ 0x1B)]) ^ (*&v100[4 * (v94 ^ 0xD2)] - (((v93 ^ 0x84) & (v94 ^ 6) | v94 & 0x61) ^ 0x21C1767D)) ^ (*&v98[4 * (BYTE2(v95) ^ 0xCA) + 500 + 4 * ((v95 >> 15) & 0xF8 ^ 0xFFFFFF6F)] - 1409877230);
  LODWORD(v202) = v92;
  v204 = __PAIR64__(v72, v95);
  LODWORD(v74) = (*&v98[4 * (v92 ^ 0xE3)] - 1409877230) ^ *&v102[4 * (BYTE1(v95) ^ 0x9F)] ^ (*&v100[4 * ((v88 >> 12) ^ 0x8ELL)] - ((v88 >> 12) ^ 0x21C17627)) ^ ((HIBYTE(v93) ^ 0x5F6A3AAE) - 745719459 - 2 * (HIBYTE(v93) ^ 0x5F6A3AAE) + *&v96[4 * (HIBYTE(v93) ^ 0xFA)]);
  LODWORD(v72) = *&v98[4 * (BYTE2(v74) ^ 0xC5)];
  LODWORD(v72) = *&v102[4 * (BYTE1(v71) ^ 0xF9)] ^ (*&v100[4 * (v103 ^ 0x68)] - (v103 ^ 0x21C176C1)) ^ ((BYTE3(v73) ^ 0xA095C535) - 745719458 + *&v96[4 * (BYTE3(v73) ^ 0x9E)]) ^ ((__ROR4__(__ROR4__(v72, 7) ^ 0xDC83A63C, 25) ^ 0xEA25E57C) + ((2 * v72) & 0x57EDF624));
  v104 = (*&v98[4 * (BYTE2(v73) ^ 0x96)] - 1409877230) ^ ((HIBYTE(v103) ^ 0xA095C503) - 745719458 + *&v96[4 * (HIBYTE(v103) ^ 0xA8)]) ^ *&v102[4 * (BYTE1(v74) ^ 0x6E)] ^ (*&v100[4 * (v71 ^ 0xFA)] - (v71 ^ 0x21C17653));
  LODWORD(v79) = (*&v98[4 * (((BYTE2(v103) ^ 5) - (BYTE2(v103) ^ 0x79)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v103) ^ 5)] - 1409877230) ^ ((BYTE3(v71) ^ 0xA095C50D) - 745719458 + *&v96[4 * (BYTE3(v71) ^ 0xA6)]) ^ *&v102[4 * (BYTE1(v73) ^ 0xE0)] ^ (*&v100[4 * (v74 ^ 0x40)] - (v74 ^ 0x21C176E9));
  LODWORD(v74) = (*&v98[4 * (BYTE2(v71) ^ 0xA3)] - 1409877230) ^ ((BYTE3(v74) ^ 0xA095C5DF) - 745719458 + *&v96[4 * (BYTE3(v74) ^ 0x74)]) ^ *&v102[4 * (BYTE1(v103) ^ 0x9A)] ^ (*&v100[4 * (v73 ^ 0x9A)] - (v73 ^ 0x21C17633));
  v105 = *&v100[4 * (v104 ^ 0xE0)];
  v104 ^= 0xF7D9A230;
  v106 = *&v102[4 * (BYTE1(v79) ^ 0xBB)];
  LODWORD(v88) = (*&v98[4 * (BYTE2(v74) ^ 0x2C)] - 1409877230) ^ v106 & 0xFFFFFFBF ^ ((((v72 ^ 0xC29E1175) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v72 ^ 0xC29E1175) >> 24) ^ 0x8A)]) ^ (v106 & 0x40 | 0x94F5230B) ^ (v105 - (v104 ^ 0x21C17679));
  v107 = (*&v98[4 * (BYTE2(v72) ^ 0xE2)] - 1409877230) ^ ((HIBYTE(v104) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v104) ^ 0x8A)]) ^ *&v102[4 * (BYTE1(v74) ^ 0x4F)] ^ (*&v100[4 * (v79 ^ 0x80)] - (v79 ^ 0x21C17629));
  v108 = *&v100[4 * (v74 ^ 0xA8)];
  LODWORD(v74) = v74 ^ 0x13501878;
  v109 = (*&v98[4 * (BYTE2(v104) - ((v104 >> 15) & 0xF8)) + 496] - 1409877230) ^ ((((v79 ^ 0xCFECEC50) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v79 ^ 0xCFECEC50) >> 24) ^ 0x8A)]) ^ *&v102[4 * (BYTE1(v72) ^ 0x46)] ^ (v108 - (v74 ^ 0x21C17679));
  LODWORD(v71) = (*&v98[4 * (((v79 ^ 0xCFECEC50) >> 16) ^ 0x7C)] - 1409877230) ^ ((BYTE3(v74) ^ 0xA095C521) - 745719458 + *&v96[4 * (BYTE3(v74) ^ 0x8A)]) ^ *&v102[4 * BYTE1(v104)] ^ (*&v100[4 * (v72 ^ 0xA5)] - (v72 ^ 0x21C1760C));
  v110 = v71 ^ 0x1DF67BEA;
  BYTE2(v79) = BYTE2(v109) ^ 0x7F;
  v111 = (*&v98[4 * ((v71 ^ 0x1DF67BEA) >> 16)] - 1409877230) ^ *&v102[4 * ((v109 ^ 0xC1A2) >> 8)] ^ ((((v88 ^ 0xFB60CFE9) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v88 ^ 0xFB60CFE9) >> 24) ^ 0x8A)]) ^ (*&v100[4 * (v107 ^ 0x57)] - (v107 ^ 0x21C176FE));
  v112 = ((((v107 ^ 0xF40D6B87) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v107 ^ 0xF40D6B87) >> 24) ^ 0x8A)]) ^ 0x94F5230B ^ *&v102[4 * (BYTE1(v71) ^ 0x2C)] ^ (*&v100[4 * (v109 ^ 0x72)] - (v109 ^ 0x21C176DB)) ^ (*&v98[4 * ((((v88 ^ 0xFB60CFE9) >> 16) - (((v88 ^ 0xFB60CFE9) >> 16) ^ 0x7C)) ^ 0xFFFFFFF8) + 4 * ((v88 ^ 0xFB60CFE9) >> 16)] - 1409877230);
  LODWORD(v72) = (v109 ^ 0xF97FC1A2) >> 24;
  v113 = v72 ^ 0x8A;
  v114 = v72 ^ 0x5F6A3ADE;
  v115 = (*&v98[4 * ((v107 ^ 0xF40D6B87) >> 16)] - 1409877230) ^ *&v102[4 * ((v88 ^ 0xCFE9) >> 8)] ^ (*&v100[4 * (v71 ^ 0x3A)] - (v71 ^ 0x21C17693)) ^ (-745719459 - v114 + *&v96[4 * v113]);
  v116 = (*&v98[4 * BYTE2(v79)] - 1409877230) ^ (-745719459 - ((1600797406 - (HIBYTE(v110) & 2)) ^ HIBYTE(v110) & 0xFFFFFFFD) + *&v96[4 * (HIBYTE(v110) ^ 0x8A)]) ^ *&v102[4 * ((((v107 ^ 0x6B87) >> 8) - 1853103297 - (((v107 ^ 0xF40D6B87) >> 7) & 0x7E)) ^ 0x918BE368)] ^ (*&v100[4 * (v88 ^ 0x39)] - (v88 ^ 0x21C17690));
  v117 = v111 ^ 0xFBC8137;
  v118 = v116 ^ 0x25BF358A;
  LODWORD(v120) = __ROR4__(v112, 24) ^ 0xF7A7AFD3;
  HIDWORD(v120) = v120;
  v119 = v120 >> 8;
  v121 = (*&v98[4 * (((v116 ^ 0x25BF358A) >> 16) ^ 0x7C)] - 1409877230) ^ ((HIBYTE(v117) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v117) ^ 0x8A)]) ^ *&v102[4 * (BYTE1(v115) ^ 0x25)] ^ (*&v100[4 * (BYTE1(v120) ^ 0xD3)] - (BYTE1(v120) ^ 0x21C1767A));
  v122 = (v111 ^ 0xFBC8137) >> 16;
  if (((v111 ^ 0xFBC8137) & 0x3F0000) == 0)
  {
    LOBYTE(v122) = v122 & 0xC0;
  }

  v123 = (*&v98[4 * (v122 ^ 0x7C)] - 1409877230) ^ *&v102[4 * BYTE1(v118)] ^ (*&v100[4 * (v115 ^ 0x37)] - (v115 ^ 0x21C1769E)) ^ ((((v119 ^ 0x1DD0DB03u) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v119 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)]);
  v124 = (*&v98[4 * (BYTE2(v119) ^ 0xAC)] - 1409877230) ^ ((((v115 ^ 0xCC4472E7) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v115 ^ 0xCC4472E7) >> 24) ^ 0x8A)]) ^ *&v102[4 * BYTE1(v117)] ^ (*&v100[4 * (v116 ^ 0x5A)] - (v116 ^ 0x21C176F3));
  v125 = (*&v98[4 * (BYTE2(v115) ^ 0x38)] - 1409877230) ^ ((HIBYTE(v118) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v118) ^ 0x8A)]) ^ (*&v100[4 * (v111 ^ 0xE7)] - (v111 ^ 0x21C1764E)) ^ *&v102[4 * (BYTE1(v119) ^ 0x8C)];
  v126 = v125 ^ 0x28B1C8AF;
  v127 = (*&v98[4 * ((v125 ^ 0x28B1C8AF) >> 16)] - 1409877230) ^ *&v102[4 * ((v124 ^ 0xF582) >> 8)] ^ ((((v121 ^ 0x3AB33250) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v121 ^ 0x3AB33250) >> 24) ^ 0x8A)]) ^ (*&v100[4 * (v123 ^ 0x82)] - (v123 ^ 0x21C1762B));
  v128 = (*&v98[4 * (BYTE2(v121) ^ 0xCF)] - 1409877230) ^ *&v102[4 * ((v125 ^ 0xC8AF) >> 8)] ^ (*&v100[4 * (v124 ^ 0x52)] - (v124 ^ 0x21C176FB)) ^ ((((v123 ^ 0x94240652) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v123 ^ 0x94240652) >> 24) ^ 0x8A)]);
  v129 = (*&v98[4 * ((v123 ^ 0x94240652) >> 16)] - 1409877230) ^ ((((v124 ^ 0x57A0F582) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v124 ^ 0x57A0F582) >> 24) ^ 0x8A)]) ^ *&v102[4 * ((v121 ^ 0x3250) >> 8)] ^ (*&v100[4 * (v125 ^ 0x7F)] - (v125 ^ 0x21C176D6));
  v130 = (*&v98[4 * (BYTE2(v124) ^ 0xDC)] - 1409877230) ^ ((HIBYTE(v126) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v126) ^ 0x8A)]) ^ *&v102[4 * (((v123 ^ 0x652) >> 8) ^ 0x57)] ^ (*&v100[4 * (v121 ^ 0x80)] - (v121 ^ 0x21C17629));
  v131 = v130 ^ 0xBE27B2EF;
  v132 = (*&v98[4 * ((v130 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *&v102[4 * ((v129 ^ 0x7C12) >> 8)] ^ ((((v127 ^ 0xDBAE4527) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v127 ^ 0xDBAE4527) >> 24) ^ 0x8A)]) ^ (*&v100[4 * (v128 ^ 0x10)] - (v128 ^ 0x21C176B9));
  v133 = (*&v98[4 * (BYTE2(v127) ^ 0xD2)] - 1409877230) ^ *&v102[4 * (BYTE1(v130) ^ 0xE5)] ^ ((((v128 ^ 0x6FA1BBC0) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v128 ^ 0x6FA1BBC0) >> 24) ^ 0x8A)]) ^ (*&v100[4 * (v129 ^ 0xC2)] - (v129 ^ 0x21C1766B));
  v134 = (*&v98[4 * ((v128 ^ 0x6FA1BBC0) >> 16)] - 1409877230) ^ *&v102[4 * ((v127 ^ 0x4527) >> 8)] ^ ((((v129 ^ 0x2B27C12) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v129 ^ 0x2B27C12) >> 24) ^ 0x8A)]) ^ (*&v100[4 * (v130 ^ 0x3F)] - (v130 ^ 0x21C17696));
  v135 = (*&v98[4 * ((v129 ^ 0x2B27C12) >> 16)] - 1409877230) ^ *&v102[4 * ((v128 ^ 0xBBC0) >> 8)] ^ ((HIBYTE(v131) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v131) ^ 0x8A)]) ^ (*&v100[4 * (v127 ^ 0xF7)] - (v127 ^ 0x21C1765E));
  v136 = (v132 ^ 0x179F0454) >> 24;
  v137 = *&v96[4 * (v136 ^ 0x8A)];
  v138 = (v136 ^ 0xA095C521) - 745719458;
  v139 = v135 ^ 0x7DDF413F;
  v140 = (*&v98[4 * ((v135 ^ 0x7DDF413F) >> 16)] - 1409877230) ^ *&v102[4 * (BYTE1(v134) ^ 0x1F)] ^ (v138 + v137) ^ (*&v100[4 * (v133 ^ 0xF5)] - (v133 ^ 0x21C1765C));
  v141 = (*&v98[4 * ((v132 ^ 0x179F0454) >> 16)] - 1409877230) ^ *&v102[4 * ((v135 ^ 0x413F) >> 8)] ^ ((((v133 ^ 0x75457125) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v133 ^ 0x75457125) >> 24) ^ 0x8A)]) ^ (*&v100[4 * (v134 ^ 0xC0)] - (v134 ^ 0x21C17669));
  v142 = *&v102[4 * (BYTE1(v132) ^ 0x53)];
  v143 = v142 ^ -v142 ^ (-1795874037 - (__ROR4__(__ROR4__(v142, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v144 = (*&v98[4 * (BYTE2(v133) ^ 0x39)] - 1409877230) ^ (*&v100[4 * (v135 ^ 0xEF)] - (v135 ^ 0x21C17646)) ^ ((((v134 ^ 0xAC254810) >> 24) ^ 0xA095C521) - 745719458 + *&v96[4 * (((v134 ^ 0xAC254810) >> 24) ^ 0x8A)]) ^ (((2 * v143) & 0x29EA4616) + (v143 ^ 0x94F5230B));
  v145 = (*&v98[4 * (BYTE2(v134) ^ 0x59)] - 1409877230) ^ *&v102[4 * (BYTE1(v133) ^ 0x26)] ^ ((HIBYTE(v139) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v139) ^ 0x8A)]) ^ (*&v100[4 * (v132 ^ 0x84)] - (v132 ^ 0x21C1762D));
  v146 = v140 ^ 0x8EBD9B97;
  v147 = v145 ^ 0x10CC86ED;
  v148 = v141 ^ 0xA3ECFAB3;
  v149 = *&v100[4 * (v141 ^ 0x63)] - (v141 ^ 0x21C176CA);
  v150 = (*&v98[4 * ((v145 ^ 0x10CC86ED) >> 16)] - 1409877230) ^ ((HIBYTE(v146) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v146) ^ 0x8A)]) ^ 0x94F5230B ^ *&v102[4 * (BYTE1(v144) ^ 0xC2)];
  v151 = (v150 ^ -v150 ^ (v149 - (v150 ^ v149))) + v149;
  v152 = v144 ^ 0x8CA395FC;
  if (((v144 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v153 = -16;
  }

  else
  {
    v153 = 16;
  }

  v154 = (*&v98[4 * (BYTE2(v140) ^ 0xC1)] - 1409877230) ^ *&v102[4 * ((v145 ^ 0x86ED) >> 8)] ^ ((HIBYTE(v148) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v148) ^ 0x8A)]) ^ (*&v100[4 * ((v153 + v152) ^ 0xC0)] - ((v153 + v152) ^ 0x21C17669));
  v155 = ((HIBYTE(v152) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v152) ^ 0x8A)]) ^ (*&v98[4 * BYTE2(v148)] - 1409877230) ^ *&v102[4 * BYTE1(v146)] ^ (*&v100[4 * (v145 ^ 0x3D)] - (v145 ^ 0x21C17694));
  v156 = ((HIBYTE(v147) ^ 0xA095C521) - 745719458 + *&v96[4 * (HIBYTE(v147) ^ 0x8A)]) ^ *&v102[4 * (BYTE1(v141) ^ 0xAD)] ^ (*&v100[4 * (v140 ^ 0x47)] - (v140 ^ 0x21C176EE));
  v157 = *&v98[4 * (BYTE2(v144) ^ 0xDF)] - 1409877230;
  v158 = *(&off_9DA90 + (HIDWORD(v206) ^ 0x6DF)) - 12;
  v159 = *&v158[4 * (HIBYTE(v151) ^ 0xBE)];
  v160 = *&v158[4 * (HIBYTE(v154) ^ 0x43)];
  v161 = *&v158[4 * (HIBYTE(v155) ^ 0xD5)];
  v162 = v157 ^ v156;
  LODWORD(v206) = *&v158[4 * ((v162 ^ 0x66EB169Au) >> 24)];
  v163 = *(&off_9DA90 + HIDWORD(v206) - 1658) - 4;
  v164 = *&v163[4 * ((v162 ^ 0x66EB169Au) >> 16)];
  v165 = *&v163[4 * (BYTE2(v151) ^ 0xBF)];
  v166 = *&v163[4 * (BYTE2(v154) ^ 0x20)];
  v167 = v155 ^ 0xC4;
  v168 = *&v163[4 * ((v155 ^ 0x6CCB3DC4) >> 16)];
  v169 = *(&off_9DA90 + HIDWORD(v206) - 1739);
  v170 = v161 ^ ((v162 ^ 0x9A) - 1352815326) ^ *(v169 + 4 * (v162 ^ 0xAFu));
  v171 = *(&off_9DA90 + (HIDWORD(v206) ^ 0x6DC)) - 4;
  v172 = *&v171[4 * (BYTE1(v155) ^ 0x57)];
  v173 = *&v171[4 * (BYTE1(v162) ^ 0x7C)];
  v174 = ~v151;
  v175 = *&v171[4 * ((v151 ^ 0x84FF) >> 8)];
  v176 = *&v171[4 * (BYTE1(v154) ^ 0x2D)];
  v177 = v154;
  v178 = *(v169 + 4 * (v154 ^ 0x91u));
  v179 = *(v169 + 4 * (v155 ^ 0xF1u));
  v180 = *(v169 + 4 * (v151 ^ 0xCAu));
  LODWORD(v169) = v170 ^ v175 ^ ((v166 ^ 0x4D522762u) >> 2) ^ ((v166 ^ 0x4D522762u) >> 5);
  v181 = v166 ^ 0x4D522762 ^ a65 ^ (v169 - ((2 * v169) & 0xDD3A373C) + 1855789982);
  v182 = *(&off_9DA90 + HIDWORD(v206) - 1687) - 8;
  *(a20 + v209) = (-97 * v182[HIBYTE(v181) ^ 0x4CLL]) ^ ((-97 * v182[HIBYTE(v181) ^ 0x4CLL]) >> 5) ^ ((-97 * v182[HIBYTE(v181) ^ 0x4CLL]) >> 1) ^ 0xD4;
  v183 = v160 ^ (v167 - 1352815326) ^ v173 ^ v165 ^ 0x4D522762 ^ v179 ^ ((v165 ^ 0x4D522762u) >> 2) ^ ((v165 ^ 0x4D522762u) >> 5);
  v184 = (v183 - ((2 * v183) & 0xDAD1C25A) + 1835589933) ^ a69;
  *(a20 + v207) = (-97 * v182[HIBYTE(v184) ^ 0x61]) ^ ((-97 * v182[HIBYTE(v184) ^ 0x61]) >> 5) ^ ((-97 * v182[HIBYTE(v184) ^ 0x61]) >> 1) ^ 0xD8;
  v185 = *(&off_9DA90 + (HIDWORD(v206) & 0xCC235990)) - 12;
  *(a20 + v210) = ((((((v181 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v181 ^ 0xD2C1) >> 8) ^ 0xDA) + v185[((v181 ^ 0xD2C1) >> 8) ^ 0x6CLL]) ^ 0xB3;
  v186 = *(&off_9DA90 + (HIDWORD(v206) ^ 0x6D9)) - 8;
  LOBYTE(v175) = v186[((((v181 ^ 0xA619D2C1) >> 16) ^ -((v181 ^ 0xA619D2C1) >> 16) ^ (510 - ((v181 ^ 0xA619D2C1) >> 16) - ((2 * ((v181 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v187 = ((((v181 ^ 0xA619D2C1) >> 16) ^ -((v181 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v181 ^ 0xA619D2C1) >> 16) - ((2 * ((v181 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v188 = (v187 & 8 & v175) == 0;
  v189 = v187 & 8 ^ v175;
  v190 = v175 - (v187 & 8);
  v191 = LODWORD(STACK[0x308]);
  if (v188)
  {
    v190 = v189;
  }

  *(a20 + v208) = v190 ^ v187 & 0xF7;
  v192 = ((v177 ^ 0xA4) - 1352815326) ^ v172 ^ v159 ^ v178 ^ ((((v164 ^ 0x4D522762u) >> (v114 & 3) >> (v114 & 3 ^ 3)) ^ v164 ^ 0x4D522762) >> 2);
  v193 = v164 ^ 0x4D522762 ^ LODWORD(STACK[0x288]) ^ (v192 - ((2 * v192) & 0x51C2AA68) + 685856052);
  v194 = v206 ^ (v174 - 1352815326) ^ v168 ^ 0x4D522762 ^ v176 ^ ((v168 ^ 0x4D522762u) >> 2) ^ ((v168 ^ 0x4D522762u) >> 5) ^ v180;
  *(a20 + STACK[0x260]) = (v185[BYTE1(v184) ^ 0x94] + (((BYTE1(v184) ^ 0x22) + 99) ^ BYTE1(v184) ^ 0x22)) ^ 0xA8;
  HIDWORD(v195) = ((v194 ^ 0x23A4540) + 4951688 - 2 * ((v194 ^ 0x23A4540) & 0x4B8E99 ^ v194 & 0x11)) ^ LODWORD(STACK[0x2D0]);
  LODWORD(v195) = ((v194 ^ 0x23A4540) + 1682673288 - 2 * ((v194 ^ 0x23A4540) & 0x644B8E9A ^ v194 & 0x12)) ^ LODWORD(STACK[0x2D0]);
  *(a20 + v211) = BYTE2(v184) ^ 0x9E ^ v186[BYTE2(v184) ^ 0xD5];
  v196 = *(&off_9DA90 + HIDWORD(v206) - 1642) - 8;
  v197 = v196[v193 ^ 0xE7] - 24;
  HIDWORD(v195) = (v195 >> 24) ^ 0x8829CA87;
  LODWORD(v195) = HIDWORD(v195);
  v198 = v195 >> 8;
  *(a20 + LODWORD(STACK[0x278])) = v197 ^ 0x5D ^ (v197 >> 1) & 0x1E;
  *(a20 + v213) = (-97 * v182[HIBYTE(v198) ^ 0x60]) ^ ((-97 * v182[HIBYTE(v198) ^ 0x60]) >> 5) ^ ((-97 * v182[HIBYTE(v198) ^ 0x60]) >> 1) ^ 0xFE;
  v199 = v196[((180 - (v181 ^ 0x56) + (v181 ^ 0xE2) - 2 * ((180 - (v181 ^ 0x56)) & (v181 ^ 0xE2))) ^ -(v181 ^ 0xE2)) + 180] - 24;
  *(a20 + STACK[0x2C8]) = v199 ^ 0x62 ^ (v199 >> 1) & 0x1E;
  *(a20 + STACK[0x2D8]) = (v185[((HIDWORD(v195) >> 8) >> 8) ^ 0x4FLL] + (((((HIDWORD(v195) >> 8) >> 8) ^ 0xF9) + 99) ^ ((HIDWORD(v195) >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(a20 + v214) = (v185[BYTE1(v193) ^ 0x1FLL] + (((BYTE1(v193) ^ 0xA9) + 99) ^ BYTE1(v193) ^ 0xA9)) ^ 0x84;
  v200 = v196[v184 ^ 0xDDLL];
  *(a20 + STACK[0x2E0]) = (((v200 + ((v200 - 24) ^ 0xAE) - 23) ^ 0xFE) + v200 - 24) ^ ((v200 - 24) >> 1) & 0x1E;
  LOBYTE(v200) = -97 * v182[HIBYTE(v193) ^ 0x67];
  *(a20 + v212) = v200 ^ (v200 >> 5) ^ (v200 >> 1) ^ 0xE1;
  *(a20 + STACK[0x300]) = BYTE2(v198) ^ 0x8E ^ v186[BYTE2(v198) ^ 0x55];
  *(a20 + STACK[0x290]) = BYTE2(v193) ^ 0xD3 ^ v186[BYTE2(v193) ^ 0x7DLL];
  LOBYTE(v196) = v196[BYTE5(v195) ^ 0xF7] - 24;
  *(a20 + STACK[0x220]) = v196 ^ ((v196 & (v196 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v69 + 8 * ((23 * (v191 > 0x13F)) ^ HIDWORD(v206))))(HIDWORD(v206), 2942151970, v178, &off_9DA90, 249, 164, v191, a20, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v202, v203, v204, v205, v206, v207);
}

uint64_t sub_351BC(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  HIDWORD(v15) = a1 ^ 0x665517C;
  LODWORD(v15) = a1 ^ 0x55555555;
  v16 = (v15 >> 27) + (a5 ^ v13 ^ v7 ^ v9) + (((a4 ^ 0xEC39EC75) + (v8 ^ 0x13C61692)) ^ ((a4 ^ 0xE40752AD) + 469282131) ^ ((a4 ^ 0x5E5BEFA4) - 1583083428)) - 1543282788 + (((*(v10 + 4 * (a7 + v12)) ^ 0xA7BBDDBA) + 1480860230) ^ ((*(v10 + 4 * (a7 + v12)) ^ 0xEBD6348E) + 338283378) ^ ((*(v10 + 4 * (a7 + v12)) ^ 0xF8B9C039) + 122044359));
  return (*(v11 + 8 * ((110 * (a7 + 1 == v14 + 40)) ^ v8)))(v16 ^ ((v16 ^ 0xD8AB9001) + 247174797) ^ ((v16 ^ 0x2F4A5839) - 111518027) ^ ((v16 ^ 0xE1F0CEB5) + 937478201) ^ ((v16 ^ 0x3FFEFFFF) - 370214541) ^ 0x7F8AA80E);
}

void sub_353F4()
{
  LODWORD(STACK[0x578]) = v0;
  STACK[0x3D8] = *(v2 + 8 * v1);
  JUMPOUT(0x35404);
}

uint64_t sub_3540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x5B8] = v8;
  STACK[0x5C0] = v6;
  v9 = STACK[0x4F8];
  v10 = (&STACK[0x5E0] + STACK[0x4F8]);
  STACK[0x5C8] = v10;
  STACK[0x4F8] = v9 + 320;
  LODWORD(STACK[0x4C0]) = *(v8 + 72);
  LODWORD(STACK[0x438]) = *(v8 + 76);
  LODWORD(STACK[0x34C]) = *(v8 + 80);
  LODWORD(STACK[0x390]) = *(v8 + 84);
  v11 = *(v8 + 96);
  if (v11 == 2)
  {
    v16 = (STACK[0x340] + 238) | 9;
    LODWORD(STACK[0x41C]) = *(v8 + 88);
    return sub_B584(a6, v16);
  }

  else
  {
    if (v11 != 1)
    {
      JUMPOUT(0xBDFCLL);
    }

    v12 = STACK[0x340] + 164;
    v13 = (STACK[0x340] - 114) ^ *(v6 + (a6 + 1664233392));
    v14 = ((*(v6 + (a6 + 1664233394)) ^ 0x32) << 16) | ((*(v6 + (a6 + 1664233395)) ^ 0x32) << 24) | v13 | ((*(v6 + (a6 + 1664233393)) ^ 0x32) << 8);
    *v10 = v14 - 1261164275 - 2 * (v14 & 0x34D4291D ^ v13 & 0x10);
    return (*(v7 + 8 * ((22 * ((a6 + 1664233396) < 0x40)) ^ v12)))();
  }
}

uint64_t sub_355D8(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_35634()
{
  v3 = 1082434553 * ((((v2 - 216) | 0x894769BB) - ((v2 - 216) & 0x894769BB)) ^ 0x12009F31);
  *(v2 - 184) = 0;
  *(v2 - 200) = &STACK[0x460];
  *(v2 - 208) = &STACK[0x55C];
  *(v2 - 216) = v3 ^ 0xA68CCC3D;
  *(v2 - 212) = (v1 + 434) ^ v3;
  v4 = (*(v0 + 8 * (v1 ^ 0x93D)))(v2 - 216);
  return (*(v0 + 8 * (((*(v2 - 192) != ((v1 - 321) ^ 0xB4D4294C)) * (((v1 - 386) | 0x41) ^ 0x5E)) ^ v1)))(v4);
}

uint64_t sub_35720@<X0>(uint64_t a1@<X8>)
{
  v8 = 123 * (v2 ^ 0x307) + 1 + (**(v7 + 8) ^ v3) - (**(v6 + 8) ^ v3) - 370;
  **(a1 + 8) = v8 + v3 - (v5 & (2 * v8));
  return (*(v4 + 8 * ((1207 * (v1 == 1)) ^ v2)))();
}

uint64_t sub_3584C@<X0>(int a1@<W8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  memset(v8, 50, sizeof(v8));
  v6 = 1037613739 * ((((v3 - 160) | 0xD4E3D45A) - (v3 - 160) + ((v3 - 160) & 0x2B1C2BA0)) ^ 0x5E1F925);
  *(v3 - 128) = (a1 + 1611) ^ v6;
  *(v3 - 160) = v6 + 577928687;
  *(v3 - 120) = v4;
  *(v3 - 152) = v8;
  *(v3 - 144) = v5;
  *(v3 - 136) = v3 - 180;
  result = (*(v2 + 8 * (a1 + 2190)))(v3 - 160);
  *(v1 + 28) = *(v3 - 124);
  return result;
}

uint64_t sub_35B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, char a51)
{
  v53 = *(v52 + 96);
  if (v53 == 1)
  {
    v59 = *(v52 + 64);
    v58 = *(v52 + 68);
    v56 = (STACK[0x340] - 732) | 0x607;
    *(v52 + 56) = (8 * (v58 - ((2 * v58) & 0x55)) + 80) ^ 0x62;
    *(v52 + 57) = v56 ^ (v58 >> 5) ^ 0xFD;
    *(v52 + 58) = a7 ^ (v58 >> 13);
    *(v52 + 59) = a7 ^ (v58 >> 21);
    *(v52 + 60) = ((__PAIR64__(v59, v58) >> 29) - ((2 * (__PAIR64__(v59, v58) >> 29)) & 0xB0) - 40) ^ 0xEA;
    *(v52 + 61) = a7 ^ (v59 >> 5);
    *(v52 + 62) = a7 ^ (v59 >> 13);
    v57 = a7 ^ (v59 >> 21);
    goto LABEL_5;
  }

  v54 = STACK[0x340];
  if (v53 == 2)
  {
    v57 = *(v52 + 64);
    v55 = *(v52 + 68);
    *(v52 + 56) = (v57 >> a51) - (a8 & (2 * (v57 >> a51))) + 50;
    *(v52 + 57) = (v57 >> 13) - (a8 & (v57 >> 12)) + 50;
    v56 = STACK[0x340] ^ 0x56B;
    *(v52 + 58) = (v57 >> 5) - (a8 & (v57 >> 4)) + 50;
    *(v52 + 59) = (__PAIR64__(v57, v55) >> 29) - (a8 & (2 * (__PAIR64__(v57, v55) >> 29))) + 50;
    *(v52 + 60) = (~(v55 >> 20) | 0x9B) + (v55 >> 21) + 51;
    *(v52 + 61) = (v55 >> 13) - (a8 & (v55 >> 12)) + 50;
    *(v52 + 62) = (v55 >> 5) - (a8 & (v55 >> 4)) + 50;
    LOBYTE(v57) = (8 * (v55 - ((2 * v55) & 0xA)) - 88) ^ 0x9A;
LABEL_5:
    LODWORD(v54) = 2 * (v56 ^ 0x71D);
    *(v52 + 63) = v57;
  }

  STACK[0x3D8] = *(v51 + 8 * (v54 - 886));
  return sub_3540C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_35CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = LOBYTE(STACK[0x2A8]);
  if (v16 == 1)
  {
    v20 = STACK[0x28C];
    v21 = STACK[0x288];
    v19 = (a4 + 1797) | 0x4C;
    LOBYTE(STACK[0x280]) = (8 * ((((a4 + 5) | 0x4C) ^ 6) + LOBYTE(STACK[0x28C]) - ((2 * LOBYTE(STACK[0x28C])) & 0xAA)) - 48) ^ 0x1A;
    LOBYTE(STACK[0x281]) = v15 ^ (v20 >> 5);
    LOBYTE(STACK[0x282]) = v15 ^ (v20 >> 13);
    LOBYTE(STACK[0x283]) = v15 ^ (v20 >> 21);
    LOBYTE(STACK[0x284]) = ((__PAIR64__(v21, v20) >> 29) - ((2 * (__PAIR64__(v21, v20) >> 29)) & 0x28) + 20) ^ 0x26;
    LOBYTE(STACK[0x285]) = v15 ^ (v21 >> 5);
    LOBYTE(STACK[0x286]) = v15 ^ (v21 >> 13);
  }

  else
  {
    if (v16 != 2)
    {
      JUMPOUT(0x35E70);
    }

    v17 = STACK[0x288];
    v18 = STACK[0x28C];
    v19 = a4 + 1873;
    LOBYTE(STACK[0x280]) = (LODWORD(STACK[0x288]) >> 21) - ((LODWORD(STACK[0x288]) >> 20) & 0x64) + 50;
    LOBYTE(STACK[0x281]) = (v17 >> 13) + (~(v17 >> 13 << ((a4 + 81) ^ 0x6C)) | 0x9B) + 51;
    LOBYTE(STACK[0x282]) = (v17 >> 5) - ((v17 >> 4) & 0x64) + 50;
    LOBYTE(STACK[0x283]) = (__PAIR64__(v17, v18) >> 29) - ((2 * (__PAIR64__(v17, v18) >> 29)) & 0x64) + 50;
    LOBYTE(STACK[0x284]) = (v18 >> 21) - ((v18 >> 20) & 0x64) + 50;
    LOBYTE(STACK[0x285]) = (v18 >> 13) - ((v18 >> 12) & 0x64) + 50;
    LOBYTE(STACK[0x286]) = (v18 >> 5) - ((v18 >> 4) & 0x64) + 50;
  }

  return sub_35E68(a4, a7, a8, v19, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_35E94()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xA4D)))();
  LODWORD(STACK[0x5A0]) = v2;
  return (*(v1 + 8 * ((1786 * (v2 == (((v0 - 338) | 0x224) ^ 0xB4D42AA9))) ^ v0)))(v3);
}

uint64_t sub_36014()
{
  v2 = STACK[0x340] - 769;
  v3 = STACK[0x530];
  STACK[0x458] = *(v1 + 8 * (STACK[0x340] - 877));
  v4 = STACK[0x2D8];
  STACK[0x5A8] = v3;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v4;
  return (*(v1 + 8 * ((11 * ((((v2 + 457) ^ ((((v2 + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v3 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ v2)))();
}

void sub_360CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *v37 = (v34 ^ v35) + 646901423 + (((a29 - v34) | (v34 - a29)) >> 31);
  (*(v36 + 8 * (v34 + 2207)))(a34);
  JUMPOUT(0x36118);
}

uint64_t sub_362E4(int a1, unint64_t a2)
{
  v8 = (v5 - 1) & 0xF;
  v9 = 1 - v6;
  v11 = a2 >= 0x10 && (1 - v6 + v4 - v5 + v8) >= 0x10 && v9 + v2 - v5 + v8 >= ((241 * (((a1 - 945) | 0x186) ^ 0x1E4u)) ^ 0x2C3uLL);
  v12 = v9 + v3 - v5 + v8;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * (a1 | (32 * v14))))();
}

uint64_t sub_36384()
{
  v7 = (v4 - 931);
  v8 = STACK[0x2E0];
  v9 = 7 * (v7 ^ 0x8A);
  *v5 = v1 + 1 + v7 + ((((v7 ^ 1) - ((~(v4 + 4187) + v1) ^ (v1 - v7 - 5119))) | (~(v4 + 4187) + v1)) >> 63);
  v10 = (v0 >> ((7 * ((v4 + 93) ^ 0x8A)) ^ 0xC6)) ^ v0;
  LODWORD(v7) = (((v10 << 7) & 0x9D2C5680 ^ v10) << 15) & 0xEFC60000 ^ (v10 << 7) & 0x9D2C5680 ^ v10;
  v11 = (v6 + (v8 - 1));
  v12 = ((*(*STACK[0x300] + (*STACK[0x308] & 0x7876189C)) ^ v11) & 0x7FFFFFFF) * ((v9 ^ 0x242) + 833381326);
  v13 = 833381725 * (v12 ^ HIWORD(v12));
  v14 = v13 >> (((v9 + 51) | 8) ^ 0x10u);
  v15 = *(*(v3 + 8 * (v9 ^ 0x3F4)) + v14 - 4);
  v16 = *(*(v3 + 8 * (v9 ^ 0x36C)) + v14 - 3);
  v17 = *(*(v3 + 8 * (v9 - 876)) + v14 - 3);
  LOBYTE(v14) = -101 * v14;
  *v11 = v14 ^ v15 ^ v7 ^ (v7 >> 18) ^ v16 ^ v17 ^ v13;
  return (*(v2 + 8 * ((1250 * (v8 == ((v15 ^ v7 ^ (v7 >> 18) ^ v16 ^ v17 ^ v13) != v14))) ^ v9)))();
}

uint64_t sub_36688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(STACK[0x228] + 360) = v7;
  v13 = (*(v8 + 8 * (v6 + 1365)))(v10, 2, &STACK[0x3EC], v11, (v9 - 1657355148), a6, &STACK[0x3D0], &STACK[0x56C]);
  v16 = STACK[0x340];
  if (v13 == 268435459)
  {
    LODWORD(STACK[0x52C]) = 1261138485;
    return (*(v8 + 8 * (((STACK[0x3D0] == 0) * (v16 - 152 + ((v16 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v16 - 193))))(v13, STACK[0x3D0], v14, v15);
  }

  else
  {
    if (!v13)
    {
      STACK[0x220] = STACK[0x4F8];
      JUMPOUT(0x36748);
    }

    v18 = 1785193651 * ((v12 - 216) ^ 0x13DCEC20);
    *(v12 - 216) = &STACK[0x52C];
    *(v12 - 208) = -1261164275 - v18 + v13 - ((2 * v13) & 0x69A8521A);
    *(v12 - 204) = v16 - v18 - 536;
    v19 = (*(v8 + 8 * (v16 + 1328)))(v12 - 216);
    return (*(v8 + 8 * (((STACK[0x3D0] == 0) * (v16 - 152 + ((v16 - 1289612341) & 0x4CDDECDB) - 1384)) ^ (v16 - 193))))(v19);
  }
}

uint64_t sub_36E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v24 - 144) = v20;
  *(v24 - 136) = &a18;
  *(v24 - 128) = &a18;
  *(v24 - 120) = v23;
  *(v24 - 112) = v19 + 1082434553 * ((~((v24 - 144) | 0x284CBA82) + ((v24 - 144) & 0x284CBA82)) ^ 0x4CF4B3F7) + 941;
  (*(v18 + 8 * (v19 ^ 0xB37)))(v24 - 144);
  v25 = ((v24 - 144) ^ 0xAF278218) * v21;
  *(v24 - 136) = a13;
  *(v24 - 144) = v25 + v19 - 465;
  *(v24 - 128) = (v22 + 718823040) ^ v25;
  v26 = (*(v18 + 8 * (v19 ^ 0xB3F)))(v24 - 144);
  return (*(v18 + 8 * ((31 * (*(v24 - 140) != 262715241)) ^ v19)))(v26);
}

uint64_t sub_3738C(unint64_t a1)
{
  STACK[0x4F8] = v4 - 64;
  STACK[0x3B0] = a1;
  return (*(v2 + 8 * (((((v1 ^ 0x19F) - 2033253309) & 0x7930FBFF ^ 0x23B) * (v3 <= a1)) ^ v1 ^ 0x19F)))();
}

uint64_t sub_37454@<X0>(int a1@<W8>, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, unsigned int a6, int a7)
{
  v12 = v7 ^ 0x603;
  v13 = (((&a3 ^ 0x7E01F7D5 | 0x63477B2D) - (&a3 ^ 0x7E01F7D5) + ((&a3 ^ 0x7E01F7D5) & 0x9CB884D0)) ^ 0xE9A60D8) * a1;
  a3 = v10 - v13 - 766750113;
  a6 = 2017451246 - v13;
  a7 = (v7 ^ 0x603) - v13 - 823;
  a4 = &a2;
  a5 = v8;
  v14 = (*(v9 + 8 * ((v7 ^ 0x603) + 1105)))(&a3);
  return (*(v9 + 8 * (((*(v8 + 24) == ((v12 - 1193863313) & 0x4728EC4F) + v11) * (((v12 - 1159) | 0x6A0) - 1160)) ^ v12)))(v14);
}

uint64_t sub_3760C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = (v5 ^ 0x67) & (2 * ((((a4 + 57) & 0xB9) + 59) & v5)) ^ (((a4 + 57) & 0xB9) + 59) & v5;
  v7 = ((2 * (((a4 ^ 0x56) - 105) ^ v5)) ^ 0xA6) & (((a4 ^ 0x56) - 105) ^ v5) ^ (2 * (((a4 ^ 0x56) - 105) ^ v5)) & 0xD2;
  v8 = (v5 ^ (2 * (v7 & (4 * v6) ^ v6 ^ 0xD3 ^ (((4 * (v7 ^ 0x51)) ^ 0x40) & (v7 ^ 0x51) ^ (4 * (v7 ^ 0x51)) & 0xD0 ^ 0x10) & (16 * (v7 & (4 * v6) ^ v6))))) & 0x7F;
  v10 = v8 != 82 && (v8 ^ 0x52u) < 5;
  return (*(v4 + 8 * ((1664 * v10) ^ a4)))();
}

uint64_t sub_376FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  v60 = 131 * (v57 ^ 0x774FCCCEu);
  v61 = *a28;
  if ((*a28 & 3) != ((((v57 - 1730071740) | 0x49401141u) - 1500581963) ^ v60) || (v62 = *(&off_9DA90 + v57 - 2001718304), v64 = *(v62 - 4), v63 = (v62 - 4), v64))
  {
    JUMPOUT(0xEDD4);
  }

  *v63 = v61;
  **(&off_9DA90 + (v60 ^ 0x14E)) = 255;
  *v61 |= ~v61[*v61 & 0x3ELL] << 16;
  v61[4] |= ~v61[v61[4] & 0x3ELL] << 16;
  v61[8] |= ~v61[v61[8] & ((524 * (v57 ^ 0x774FCCCE)) ^ 0x426)] << 16;
  v61[12] |= ~v61[v61[12] & 0x3ELL] << 16;
  v61[16] |= ~v61[v61[16] & 0x3ELL] << 16;
  v61[20] |= ~v61[v61[20] & 0x3ELL] << 16;
  v61[24] |= ~v61[v61[24] & 0x3ELL] << 16;
  v61[28] |= ~v61[v61[28] & 0x3ELL] << 16;
  v61[32] |= ~v61[v61[32] & 0x3ELL] << 16;
  v61[36] |= ~v61[v61[36] & 0x3ELL] << 16;
  v61[40] |= ~v61[v61[40] & 0x3ELL] << 16;
  v65 = (524 * (v57 ^ 0x774FCCCE)) ^ 0x7E4;
  v61[44] |= ~v61[v61[44] & 0x3ELL] << 16;
  v61[48] |= ~v61[v61[48] & 0x3ELL] << 16;
  v61[52] |= ~v61[v61[52] & 0x3ELL] << 16;
  v61[56] |= ~v61[v61[56] & 0x3ELL] << 16;
  v61[60] |= ~v61[v61[60] & 0x3ELL] << 16;
  v66 = (*(v58 + 8 * (v60 ^ 0x9B4)))(&a57, 0, 1024);
  *(v59 - 176) = &a57;
  return (*(v58 + 8 * (((((v65 - 1016) | 0x102) == 262) * ((v65 - 1016) ^ 0x7F7)) ^ v65)))(v66);
}

uint64_t sub_37AA8()
{
  (*(v0 + 8 * SLODWORD(STACK[0x238])))(STACK[0x248] + STACK[0x250], 0x100004077774924);
  v3 = (*(v0 + 8 * SLODWORD(STACK[0x240])))();
  *v2 = v3;
  v2[1] = 1812433253 * (v3 ^ (v3 >> 30)) + 1;
  return (*(v0 + 8 * ((v1 + 808) | 0x11)))();
}

void sub_37B6C(uint64_t a1)
{
  v3 = *(*(a1 + 8) + 4) == 1726767306 || *(*(a1 + 16) + 4) == 1726767306;
  v1 = *a1 - 143681137 * ((-2 - ((a1 | 0x88C5EE65) + (~a1 | 0x773A119A))) ^ 0xA39D0DC0);
  __asm { BRAA            X13, X17 }
}

void sub_37D70()
{
  STACK[0x570] = v0;
  STACK[0x498] = v3;
  STACK[0x488] = *(v2 + 8 * v1);
  JUMPOUT(0x37E0CLL);
}

uint64_t sub_37F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _DWORD *a38)
{
  v43 = v38 ^ 0x59711216;
  v44 = (*(v39 + 8 * (v38 + 1442)))(a38 + 4, 0);
  v45 = a38[4];
  a38[1] = a38[6] - 137021560 - ((2 * a38[6]) & 0xEFAA6F10);
  a38[2] = v45 - 137021560 - ((v45 << (v40 + (v38 ^ 0x16) - 110)) & 0xEFAA6F10);
  v46 = v38 + 1405;
  v47 = (*(v39 + 8 * v46))(v44);
  a38[3] = v47 - 137021560 - ((2 * v47) & 0xEFAA6F10);
  v48 = (*(v39 + 8 * v46))();
  *a38 = v48 - 137021560 - ((2 * v48) & 0xEFAA6F10);
  v49 = (1664525 * (*v41 ^ (*v41 >> 30))) ^ v41[1];
  v41[1] = (((*a38 ^ 0x424EC0A6) - 1112457382) ^ ((*a38 ^ 0x630414B9) - 1661211833) ^ ((*a38 ^ 0xD69FE397) + 694164585)) + 1463569522 + (((v49 ^ 0x4DFF9099) - 311985267) ^ ((v49 ^ 0xB83184EA) + 413757440) ^ ((v49 ^ 0xF5CE1473) + 1431764839));
  v50 = 143681137 * ((((v42 - 152) | 0xB809F511CAD0E9AALL) - ((v42 - 152) & 0xB809F511CAD0E9AALL)) ^ 0xA97177161E77F5F0);
  *(v42 - 124) = v50 ^ (v43 - 1085586375) ^ 0x19;
  *(v42 - 120) = v50 + v43 - 288126657;
  *(v42 - 128) = -143681137 * ((((v42 - 152) | 0xCAD0E9AA) - ((v42 - 152) & 0xCAD0E9AA)) ^ 0x1E77F5F0);
  v51 = v42 - 176;
  *(v51 + 64) = v50 + 623;
  *(v51 + 32) = 2 - v50;
  *(v42 - 132) = v43 - 1085586375 - v50;
  *(v42 - 152) = ((v43 - 1085586375) ^ 0x65) - v50;
  v52 = (*(v39 + 8 * (v43 ^ 0x597119E5)))(v42 - 152);
  return (*(v39 + 8 * *(v42 - 136)))(v52);
}

uint64_t sub_3824C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = ((a6 + 210) ^ (v6 - 295)) - a2 + ((a6 + 1835141457) & 0x929DF7F7);
  if (v7 > v9)
  {
    v9 = v7;
  }

  return (*(v8 + 8 * ((35 * ((v9 + 1) > 0x23)) ^ a6)))();
}

uint64_t sub_3840C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = v8 - 1159;
  v10 = ((v6 & (v7 + 1)) << (v8 ^ 0xE1)) & (v6 ^ 0x9BF9154C) ^ v6 & (v7 + 1);
  v11 = ((2 * (v6 ^ 0xAB7A3708)) ^ 0x61374CCC) & (v6 ^ 0xAB7A3708) ^ (2 * (v6 ^ 0xAB7A3708)) & 0x309BA666;
  v12 = (v11 ^ 0x20022442) & (4 * v10) ^ v10;
  v13 = ((4 * (v11 ^ 0x1088A222)) ^ 0xC26E9998) & (v11 ^ 0x1088A222) ^ (4 * (v11 ^ 0x1088A222)) & 0x309BA664;
  v14 = (v13 ^ 0xA8006) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x30912666)) ^ 0x9BA6660) & (v13 ^ 0x30912666) ^ (16 * (v13 ^ 0x30912666)) & 0x309BA660;
  v16 = v14 ^ 0x309BA666 ^ (v15 ^ 0x9A2606) & (v14 << 8);
  v17 = (v16 << 16) & 0x309B0000 ^ v16 ^ ((v16 << 16) ^ 0x26660000) & (((v15 ^ 0x30018006) << 8) & 0x309B0000 ^ 0x20190000 ^ (((v15 ^ 0x30018006) << 8) ^ 0x1BA60000) & (v15 ^ 0x30018006));
  v18 = 143681137 * (((&a3 | 0xB54DF19E) - &a3 + (&a3 & 0x4AB20E60)) ^ 0x61EAEDC4);
  a4 = v9 - v18 + 259;
  a5 = v6 ^ v18 ^ (2 * v17) ^ 0x189A2EBF;
  a3 = a1;
  v19 = (*(v5 + 8 * (v9 + 1468)))(&a3);
  return sub_385C4(v19);
}

void sub_3867C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = v9 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1726767306;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v11 = *(a1 + 96) + 800;
  v12 = *(a2 + 8) + (*(a2 + 4) - v10);
  v13 = 50899313 * (((&a5 | 0x90BB7DB) - &a5 + (&a5 & 0xF6F44820)) ^ 0xC16A738D);
  a6 = v13 + v10 + 210866775;
  a9 = v13 ^ 0x2D7;
  a7 = v11;
  a8 = v12;
  (*(a3 + 18296))(&a5);
  JUMPOUT(0x41178);
}

uint64_t sub_38814@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W3>, char a4@<W5>, uint64_t a5@<X8>)
{
  v11 = v8 - 1;
  *(a1 + v11) = *(v10 + v11) ^ *(v6 + ((v7 ^ 0xEE ^ a2) & v11)) ^ *(((v7 ^ 0xEE ^ a2) & v11) + a5 + 2) ^ *(v5 + ((v7 ^ 0xEE ^ a2) & v11)) ^ (125 * ((v7 ^ 0xEE ^ a2) & v11)) ^ a4;
  return (*(v9 + 8 * (((v11 == 0) * a3) ^ v7)))();
}

uint64_t sub_38958()
{
  v4 = STACK[0x280];
  (*(v0 + 8 * (v1 + 1056)))(*STACK[0x280], v2, 2048);
  v5 = *(v0 + 8 * ((983 * ((*(v0 + 8 * (v1 + 1077)))(*v4, &STACK[0x560], LODWORD(STACK[0x43C]) + ((4 * v1) ^ 0x1138 ^ (v3 + 860)), 1) == ((v1 + 371) ^ 0x61A))) ^ v1));
  return v5();
}

uint64_t sub_38A38@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  v10 = (v9 + 4 * v5);
  v11 = v5 + 1;
  *v10 = v10[397] ^ v6 ^ *(a1 + 4 * (*(v9 + 4 * v11) & 1)) ^ ((*(v9 + 4 * v11) & 0x7FFFFFFE | (v8 + (a2 ^ (2 * a4)) + 2) & v4) >> 1);
  return (*(v7 + 8 * (((v11 == 227) * a3) | a4)))();
}

uint64_t sub_38B50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16)
{
  if (a16 < 0x8950F594 != a13 - 1991182892 < ((283 * (((v17 + a4 + 2052) | 0x23) ^ 0x82D)) ^ 0x8950F7A2))
  {
    v18 = a13 - 1991182892 < ((283 * (((v17 + a4 + 2052) | 0x23) ^ 0x82D)) ^ 0x8950F7A2);
  }

  else
  {
    v18 = a13 - 1991182892 > a16;
  }

  return (*(v16 + 8 * ((28 * !v18) ^ (v17 + a4 + 1636))))();
}

uint64_t sub_38B7C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W8>)
{
  v13 = a1 < a3;
  *(a2 + a7) = *(v12 + v7) - (a4 & (2 * *(v12 + v7))) + 50;
  if (v13 == v7 + 1 > v10)
  {
    v13 = v9 + v7 + 16 < a1;
  }

  return (*(v11 + 8 * ((v13 * ((5 * (v8 ^ a5)) ^ a6)) ^ v8)))();
}

uint64_t sub_38BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, unsigned int a16, int a17, int a18, uint64_t a19, char *a20, int a21)
{
  v24 = 742307843 * ((((&a16 | 0x73D98D6A) ^ 0xFFFFFFFE) - (~&a16 | 0x8C267295)) ^ 0x9204FFC0);
  a19 = a13;
  a20 = &a14;
  a21 = v24 ^ 0x20384770;
  a16 = v24 - 1023075469;
  a18 = v23 - v24 - 1197044029;
  v25 = (*(v22 + 8 * (v23 ^ 0xE83)))(&a16);
  return (*(v22 + 8 * (((a17 == v21 + (v23 ^ 0x651) + 1187 - 1189) * ((233 * (v23 ^ 0x651)) ^ 0x102)) ^ v23)))(v25);
}

uint64_t sub_38CBC()
{
  v6 = (v2 - 32);
  v7 = (v3 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v1 == 32) * v4) ^ v0)))();
}

uint64_t sub_38CCC()
{
  v4 = v0 + 343609241 + (v3 ^ 0x721);
  v5 = (v2 + 1157295663 < ((v3 + 121) ^ 0x57AB95AEu)) ^ (v4 < 0x57AB933F);
  v6 = v2 + 1157295663 > v4;
  if (v5)
  {
    v6 = v2 + 1157295663 < ((v3 + 121) ^ 0x57AB95AEu);
  }

  return (*(v1 + 8 * ((84 * v6) ^ v3)))();
}

uint64_t sub_38D9C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x57C]) = a1 + 64;
  v3 = LODWORD(STACK[0x5B4]) + 1149647750;
  v4 = a1 + 1581290870 > v3;
  if ((a1 + 1581290870) < 0x5E409536 != v3 < (v1 ^ 0x7EAu) + 1581290638)
  {
    v4 = (a1 + 1581290870) < 0x5E409536;
  }

  return (*(v2 + 8 * ((245 * v4) ^ v1)))();
}

uint64_t sub_38E24@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, _BYTE *a59)
{
  STACK[0x460] = 0;
  LODWORD(STACK[0x55C]) = 1657355148;
  STACK[0x358] = 0;
  LODWORD(STACK[0x38C]) = 1657355148;
  return (*(v59 + 8 * ((101 * ((*(*(&off_9DA90 + a1 - 531) - 4) ^ *a59) != (((((a1 - 116) & 0xFE) - 52) | 0x84) + 119))) ^ (a1 + 503622796) & 0xE1FB57FE)))();
}

uint64_t sub_38EDC@<X0>(int a1@<W1>, int a2@<W4>, unsigned int a3@<W8>)
{
  v11 = (v7 >> (((v9 + 117) | 0x3C) ^ 0x5Du)) + HIDWORD(v4) + (*(v10 + 4 * v3) ^ a3);
  *(v10 + 4 * a2) = v11 + a3 - (a1 & (2 * v11));
  *(v10 + 4 * v3) = HIDWORD(v11) + a3 - ((HIDWORD(v11) << ((v9 ^ 0xDC) - 15)) & 2);
  return (*(v8 + 8 * (v9 ^ (1709 * (v6 + 1 == v5)))))();
}

uint64_t sub_3903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a15 = 2066391179 * ((353659347 - (&a13 ^ 0x20FBA84F | 0x151469D3) + (&a13 ^ 0x20FBA84F | 0xEAEB962C)) ^ 0x6537BC7B) + 668;
  a14 = &a9;
  v18 = (*(v15 + 18424))(&a13);
  return (*(v15 + 8 * ((1880 * (a13 == v17)) ^ v16)))(v18);
}

uint64_t sub_391FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  STACK[0x308] = v55;
  v56 = STACK[0x340] + 247;
  v57 = STACK[0x42C];
  v58 = (v57 ^ 0x1C898455) & (2 * (v57 & a6)) ^ v57 & a6;
  v59 = ((2 * (a54 ^ v57)) ^ 0x419FA84A) & (a54 ^ v57) ^ (2 * (a54 ^ v57)) & 0xA0CFD424;
  v60 = v59 ^ 0xA0405425;
  v61 = (v59 ^ 0xF9424) & (4 * v58) ^ v58;
  v62 = ((4 * v60) ^ 0x833F5094) & v60 ^ (4 * v60) & 0xA0CFD424;
  v63 = (v62 ^ 0x800F5000) & (16 * v61) ^ v61;
  v64 = ((16 * (v62 ^ 0x20C08421)) ^ 0xCFD4250) & (v62 ^ 0x20C08421) ^ (16 * (v62 ^ 0x20C08421)) & 0xA0CFD420;
  v65 = v63 ^ 0xA0CFD425 ^ (v64 ^ 0xCD4000) & (v63 << 8);
  *(STACK[0x5C8] + 4 * (((LODWORD(STACK[0x42C]) ^ (2 * ((v65 << 16) & 0x20CF0000 ^ v65 ^ ((v65 << 16) ^ 0x54250000) & (((v64 ^ 0xA0029425) << 8) & 0x20CF0000 ^ 0x200B0000 ^ (((v64 ^ 0xA0029425) << 8) ^ 0x4FD40000) & (v64 ^ 0xA0029425))))) >> 2) ^ 0x37561E06)) = v54;
  return sub_B584(a6, v56);
}

uint64_t sub_397E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50)
{
  v52 = STACK[0x530];
  STACK[0x458] = *(v51 + 8 * (STACK[0x340] - 914));
  v53 = STACK[0x2C8];
  STACK[0x5A8] = v52;
  LODWORD(STACK[0x5B4]) = 431643076;
  STACK[0x4C8] = v53;
  return (*(v51 + 8 * ((11 * (((((a50 & 0x486D30AB) + 457) ^ (((((a50 & 0x486D30AB) + 98) | 0x280) ^ 0xE645A595) + 431643076 + (*(v52 + 68) & 0x3F) < 0xFFFFFFC0)) & 1) == 0)) ^ a50 & 0x486D30AB)))();
}

uint64_t sub_3984C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x210];
  STACK[0x300] = STACK[0x210] + 2353;
  STACK[0x2E0] = v1 + 49;
  STACK[0x2D8] = v2 + 2333;
  STACK[0x2D0] = v1 + 29;
  STACK[0x2C8] = v2 + 2313;
  STACK[0x290] = v1 + 9;
  return sub_36978(a1);
}

uint64_t sub_3988C(uint64_t a1, int a2)
{
  v8 = a1 - 1;
  *(v7 + v8) = *(v2 + v8) ^ *(v3 + (v8 & 0xF)) ^ *((v8 & 0xF) + v4 + 5) ^ (89 * (v8 & 0xF)) ^ *((v8 & 0xF) + v5 + 2) ^ 0x32;
  return (*(v6 + 8 * ((477 * (v8 == ((a2 - 1106790071) & 0x41F847FF) - 1968)) ^ (a2 + 138))))();
}

void sub_39ABC(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = a1 - 858;
  *v29 = v30 ^ v27 ^ 0xD9711151 | (((a14 - v30) | (v30 - a14)) >> 31);
  (*(v28 + 8 * (v30 + 2207)))(a27);
  vld1q_dup_f32(v29);
  JUMPOUT(0x39B78);
}

void sub_3A00C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = ((2 * v5) & 0x148) + 261815264 + ((((a4 - 147) | 0x91) - 75519789) ^ v5);
  v7 = (((v6 ^ 0x899A8F2B) + 2105530961) ^ v6 ^ ((v6 ^ 0xA9E1DD0) + ((a4 - 1047) ^ 0xFE7B4910)) ^ ((v6 ^ 0x77F87300) - 2095241604) ^ ((v6 ^ 0xFFE64B7F) + 184753669)) == 186296964;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_3A1F8@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int8x16_t a32, int8x16_t a33, uint64_t a34, uint64_t a35, int8x16_t a36, int8x16_t a37)
{
  v46 = (v44 + (v41 + a1));
  v47 = veorq_s8(*(v38 + v41), *v46);
  v48 = veorq_s8(*(v38 + v41 + 16), v46[1]);
  return (*(v45 + 8 * ((((v40 ^ v43) + v41 == v39) * v42) ^ v37)))(vorrq_s8(vqtbl1q_s8(v47, a37), a2), vorrq_s8(vqtbl1q_s8(v47, a36), a3), vorrq_s8(vqtbl1q_s8(v47, a33), a4), vorrq_s8(vqtbl1q_s8(v47, a32), a5), vorrq_s8(vqtbl1q_s8(v48, a37), a6), vorrq_s8(vqtbl1q_s8(v48, a33), a7), vorrq_s8(vqtbl1q_s8(v48, a36), a8), vorrq_s8(vqtbl1q_s8(v48, a32), a9));
}

uint64_t sub_3A288()
{
  v3 = v1 & 0x7F345CCF;
  v5 = (v0 - 1) < 0x10 && ((v0 - 1) & 0xFu) >= ((v0 - 1) & 0xFu);
  return (*(v2 + 8 * ((((v3 ^ 0x1EE) + ((v3 - 1368939737) & 0x51985E77) - 2933) * v5) ^ v3)))();
}

uint64_t sub_3A2F0(uint64_t a1)
{
  v2 = 742307843 * ((((2 * a1) | 0x3FF67EDE) - a1 - 536559471) ^ 0x1D9B23A);
  v3 = *(a1 + 28) - v2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *a1;
  v8 = 1564307779 * ((&v10 & 0x7E0B0214 | ~(&v10 | 0x7E0B0214)) ^ 0x16F931F8);
  v13 = (v2 + *(a1 + 24) + 256520413) ^ v8;
  v16 = v5;
  v10 = v4;
  v12 = v7;
  v14 = v6;
  v15 = v3 + v8 - 1421511790;
  result = (*(*(&off_9DA90 + (v3 ^ 0x54BA8F06)) + (v3 ^ 0x54BA8655) - 1))(&v10);
  *(a1 + 40) = v11;
  return result;
}

void sub_3A4A8(uint64_t a1)
{
  v1 = 143681137 * (((a1 | 0x8982A02C) - a1 + (a1 & 0x767D5FD3)) ^ 0x5D25BC76);
  v2 = *(a1 + 4) + v1;
  v3 = (*a1 ^ v1);
  v4 = *(&off_9DA90 + (v2 ^ 0x53A)) - 8;
  (*&v4[8 * (v2 ^ 0xDE7)])(*(&off_9DA90 + v2 - 1322) - 8, sub_1D63C);
  v6 = **(&off_9DA90 + (v2 ^ 0x5C6));
  v5 = v2 - 143681137 * ((((&v5 | 0x4B44E35A) ^ 0xFFFFFFFE) - (~&v5 | 0xB4BB1CA5)) ^ 0x601C00FF) - 301;
  (*&v4[8 * v2 + 6760])(&v5);
  __asm { BRAA            X9, X17 }
}

void sub_3A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int *a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v43 = 4 * (v41 ^ v40);
  v44 = (*(*a33 + (*a35 & 0xFFFFFFFFA5BF9E9CLL)) ^ (a34 + v43)) & 0x7FFFFFFF;
  v45 = 1395531356 * v44 - 562149631 * ((((((~(v38 - 620) + v40) ^ (v42 - (v38 - 620))) - 1) & ((v38 - 620) - v40)) >> 63) + v44);
  v46 = (v45 >> ((a27 & 0xF7) - 55)) ^ v45;
  v47 = 833381725 * v46;
  *(a38 + v43) ^= *(a34 + v43) ^ *(*(&off_9DA90 + (v39 ^ (v39 - 74))) + HIBYTE(v47) - 3) ^ *(*(&off_9DA90 + v38 - 597) + HIBYTE(v47) + 4) ^ *(*(&off_9DA90 + v38 - 572) + HIBYTE(v47) - 2) ^ (1700593664 * v46) ^ v47 ^ (-857024511 * HIBYTE(v47));
  JUMPOUT(0x3A7E4);
}

uint64_t sub_3AA74()
{
  v6 = v0 + v2 + (((v4 ^ 0x9987E24A) + 1719147958) ^ ((v4 ^ 0xB9E4D55) - 194923861) ^ ((v5 ^ 0x43C) - 651003752 + (v4 ^ 0x26CD8612))) - 2135480844;
  v7 = v3 - 757741054;
  v8 = (v7 < 0xF46CEBB0) ^ (v6 < 0xF46CEBB0);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0xF46CEBB0;
  }

  return (*(v1 + 8 * ((242 * v9) ^ v5)))();
}

uint64_t sub_3ADB0@<X0>(uint64_t a1@<X8>)
{
  v8 = ((v5 + 616) ^ 0xFFFFFFFFFFFFFAC4) + v4;
  *(v6 + v8) = *(v3 + (v8 & 0xF)) ^ *(a1 + v8) ^ *(v1 + (v8 & 0xF)) ^ *(v2 + (v8 & 0xF)) ^ (117 * (v8 & 0xF));
  return (*(v7 + 8 * ((1805 * (v8 == 0)) ^ (v5 + 158))))();
}

uint64_t sub_3AE88()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 != 0) * v1) ^ v0)))();
}

uint64_t sub_3AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x544]) = 313724725;
  LODWORD(STACK[0x4BC]) = 128;
  v70 = 843532609 * ((((v69 - 216) ^ 0xD95DCC11) & 0xCFDB54D4 | ~((v69 - 216) ^ 0xD95DCC11 | 0xCFDB54D4)) ^ 0xB53433BF);
  *(v69 - 152) = v70 + v67 + 612;
  *(v69 - 168) = a67;
  *(v69 - 160) = 0;
  *(v69 - 144) = 0;
  *(v69 - 192) = v70 ^ 0x485A30A8;
  *(v69 - 184) = &STACK[0x4BC];
  *(v69 - 176) = a64;
  *(v69 - 216) = a67 + 928;
  *(v69 - 200) = a67 + 656;
  v71 = (*(v68 + 8 * (v67 + 2028)))(v69 - 216);
  return (*(v68 + 8 * ((773 * (*(v69 - 208) == (v67 ^ 0x31B) - 1261165207)) ^ v67)))(v71);
}

uint64_t sub_3B01C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x64) + 50;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((668 * v4) ^ 0x5AEu)))(0);
}

void sub_3B06C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 32) == 0;
  v1 = *(a1 + 24) ^ (1037613739 * ((-2 - ((~a1 | 0xF7452E54) + (a1 | 0x8BAD1AB))) ^ 0x2647032B));
  __asm { BRAA            X9, X17 }
}

void sub_3B164(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x219721AE219721AELL;
  *(a1 + 16) = 0x77B41AEE73B5C5C4;
  *(a1 + 24) = -1261164275;
  *v2 = a1;
  JUMPOUT(0x3B19CLL);
}

void sub_3B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  *a16 = 64;
  *(a18 + 252) = 1726767306;
  *(a18 + 256) = a18 + 264;
  *(a18 + 520) = 0x66EC60CA00000040;
  *(a18 + 528) = a18 + 536;
  STACK[0x2E0] = a18 + 792;
  *(a18 + 792) = 0x66EC60CA00000040;
  *(a18 + 800) = a18 + 808;
  STACK[0x300] = a18 + 1064;
  *(a18 + 1064) = 0x66EC60CA00000040;
  *(a18 + 1072) = a18 + 1080;
  STACK[0x308] = a18 + 1336;
  *(a18 + 1336) = 0x66EC60CA00000040;
  *(a18 + 1344) = a18 + 1352;
  v39 = STACK[0x4D0] + 4;
  v40 = v38 - 216;
  v41 = 1785193651 * (((v38 - 216) & 0xA430EF30 | ~((v38 - 216) | 0xA430EF30)) ^ 0x4813FCEF);
  *(v38 - 200) = a16;
  *(v38 - 216) = v39;
  *(v38 - 208) = a36 + 527 + v41;
  *(v38 - 204) = v41 - 1033494679 + (((v37 ^ 0x4FFFA9EE) - 1342155246) ^ ((v37 ^ 0xD83043B3) + 667925581) ^ ((v37 ^ 0x231BC350) + ((a36 + 217) | 4) - 589022964));
  (*(v36 + 8 * a29))(v38 - 216);
  v42 = v37 ^ 0xB4D4290D;
  v43 = v39 + v42;
  v44 = 1785193651 * ((((2 * v40) | 0x2D1A3352) - v40 + 1769137751) ^ 0x8551F589);
  *(v38 - 200) = a18 + 520;
  *(v38 - 208) = a36 + 527 + v44;
  *(v38 - 204) = v44 - 1033494679 + (((v37 ^ 0xD61E543D) + 702655427) ^ ((v37 ^ 0xE0EF54F0) + 521186064) ^ ((v37 ^ 0x822529C0) + 2111493696));
  *(v38 - 216) = v43;
  (*(v36 + 8 * a29))(v38 - 216);
  v45 = v43 + v42;
  v46 = 1785193651 * ((v40 & 0x7560FE32 | ~(v40 | 0x7560FE32)) ^ 0x9943EDED);
  *(v38 - 200) = STACK[0x2E0];
  *(v38 - 216) = v45;
  *(v38 - 208) = a36 + 527 + v46;
  *(v38 - 204) = v46 - 1033494679 + (((v37 ^ 0x8EB10CDC) + 1900999460) ^ ((v37 ^ 0x7E2E3241) - 2116956737) ^ ((v37 ^ 0x444B1790) - 1145771920));
  (*(v36 + 8 * a29))(v38 - 216);
  v47 = v45 + v42;
  v48 = 1785193651 * (((v38 - 216) & 0x8B922FC4 | ~((v38 - 216) | 0x8B922FC4)) ^ 0x67B13C1B);
  *(v38 - 200) = STACK[0x300];
  *(v38 - 216) = v47;
  *(v38 - 208) = a36 + 527 + v48;
  *(v38 - 204) = v48 - 1033494679 + (((v37 ^ 0xB009552C) + 1341565652) ^ ((v37 ^ 0x755E1CDC) - 1969102044) ^ ((v37 ^ 0x718360FD) - 1904435453));
  (*(v36 + 8 * a29))(v38 - 216);
  v49 = 1785193651 * ((((v38 - 216) | 0x3502E96) - ((v38 - 216) & 0x3502E96)) ^ 0x108CC2B6);
  *(v38 - 200) = STACK[0x308];
  *(v38 - 208) = a36 + 527 + v49;
  *(v38 - 204) = v49 - 1033494679 + (((v37 ^ 0xE5C61363) + 440003741) ^ ((v37 ^ 0xA31BC6FF) + 1558460673) ^ ((v37 ^ 0xF209FC91) + 234226543));
  *(v38 - 216) = v47 + v42;
  (*(v36 + 8 * a29))(v38 - 216);
  JUMPOUT(0x1C3D4);
}

uint64_t sub_3B65C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a2 - 744205031) & 0x2C5BABDF;
  **(a1 + 24) = v6 + v5 + v7 - 583;
  return (*(v4 + 8 * ((1896 * (*(a3 + 24) == v3)) ^ v7)))();
}

uint64_t sub_3B784@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0x64) + 50;
  return (*(v1 + 8 * ((79 * (v6 != v3 + ((v5 - 201) | 0x80u) + 1204 - 2812774125)) ^ ((v5 - 201) | 0x80))))(0);
}

uint64_t sub_3B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x4F8] = STACK[0x260] - 1712;
  LODWORD(STACK[0x52C]) = a6;
  return (*(v7 + 8 * (v6 | (4 * (*(STACK[0x228] + 360) > ((v6 - 613) ^ 0x3A5u))))))();
}

void sub_3B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v33 - 128) = v31 - ((((v33 - 144) | 0x4D6CA9B7) - (v33 - 144) + ((v33 - 144) & 0xB2935648)) ^ 0xE24B2BAF) * v30 + 118;
  *(v33 - 120) = v29;
  *(v33 - 112) = &a28;
  *(v33 - 104) = v32;
  *(v33 - 144) = v28;
  *(v33 - 136) = v28;
  JUMPOUT(0x3B8E0);
}

uint64_t sub_3B8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = (((v6 ^ 0x39F) - 772) | 0x200u) + 351 + STACK[0x4F8] + 1545;
  LODWORD(STACK[0x52C]) = a6;
  v9 = *(&off_9DA90 + (v6 ^ 0x39F) - 726);
  v10 = *(v7 + 8 * ((87 * (*(v9 - 4) == 0)) ^ v6 ^ 0x39F));
  STACK[0x4F8] = v8;
  STACK[0x2B0] = v9 + 32;
  STACK[0x2C0] = v9;
  STACK[0x2B8] = v9 + 16;
  STACK[0x280] = *(&off_9DA90 + (v6 ^ 0x39F) - 774);
  return v10();
}

uint64_t sub_3B970@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = (v11 + 543) | 0x180;
  v14 = (v13 ^ a4) + v10;
  *(a5 + v14) = *(a6 + v14) ^ *(v9 + (v14 & 0xF)) ^ *((v14 & 0xF) + a8 + 5) ^ *((v14 & 0xF) + v8 + 1) ^ ((v14 & 0xF) * a1) ^ a7;
  return (*(v12 + 8 * (((v14 == ((v13 - 862) ^ v13 ^ a2)) * a3) ^ (v13 + 308))))();
}

uint64_t sub_3B9F0(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0xB4D4290D;
}

uint64_t sub_3BC64@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, int a13, int a14, unint64_t a15, int a16, int a17)
{
  v24 = (v17 ^ 0x2D0) - 774;
  *a11 = a1;
  LODWORD(STACK[0x27C]) = a17;
  STACK[0x280] = a15;
  LODWORD(STACK[0x288]) = a14 - v18 + 1368544279;
  STACK[0x290] = v23 + (v18 - 313566482);
  v25 = v17;
  v26 = (*(v19 + 48 * v21 + 8))(a6);
  return (*(v20 + 8 * ((1453 * (v26 + (v24 ^ (v22 + 203)) - ((2 * v26) & 0x69A8521A) == v22)) ^ v25)))();
}

uint64_t sub_3BF48()
{
  v5 = *(*(v4 + 24) + v0) - *(v2 + v0);
  v6 = (v5 ^ 0x2BF9DDF0) - 688424000 + ((2 * v5) & 0x57F3BBE0);
  v8 = v0 == 15 || v6 != v3 + 49370980;
  return (*(v1 + 8 * ((229 * v8) ^ v3)))();
}

uint64_t sub_3C018(uint64_t a1, unint64_t a2, int a3)
{
  v14 = (v13 + 4 * v12);
  v15 = HIDWORD(a2) + v6 * (*(v11 + 4 * v12) ^ v3) + (*v14 ^ v3) + HIDWORD(v5) + v10 * ((v9 - 595) ^ (v3 + 237) ^ *(v4 + 4 * v12));
  *(v14 - 1) = v15 + v3 - (a3 & (2 * v15));
  return (*(v7 + 8 * (v9 ^ (4 * (v12 + 1 == v8)))))();
}

uint64_t sub_3C0D0(int a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = v7 > a1;
  if (v10 == v5 + a4 < a5)
  {
    v10 = v5 + a4 < v8;
  }

  return (*(v6 + 8 * ((!v10 * ((v9 ^ a3) + v9 - 342 - 1202)) ^ v9)))();
}

uint64_t sub_3C20C()
{
  v5 = *(v3 + 4 * (v2 - 1));
  *(v3 + 4 * v2) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v3 + 4 * v2)) - v2;
  v6 = STACK[0x318];
  v7 = STACK[0x318] | 1;
  v8 = STACK[0x318] + v0 + 17165161 + 31;
  *(v4 - 184) = STACK[0x310];
  v9 = (v0 + 17165161) ^ v6;
  *(v4 - 216) = v9;
  *(v4 - 212) = v8;
  *(v4 - 188) = (v0 - 542397458) ^ v6;
  *(v4 - 200) = v9 ^ 0x5F;
  *(v4 - 196) = v7;
  *(v4 - 208) = v2 + 1 - v6;
  v10 = (*(v1 + 8 * (v0 + 1345)))(v4 - 216);
  return (*(v1 + 8 * *(v4 - 192)))(v10);
}

uint64_t sub_3C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28, int a29, unsigned int a30, unsigned int a31, int a32, char a33)
{
  if (a33 == 1)
  {
    BYTE4(a25) = (-8 * a27 + 120) ^ 0x4A;
    BYTE5(a25) = (a27 >> 5) ^ 0x32;
    BYTE6(a25) = ((a4 ^ (a4 - 67)) + 111) ^ (a27 >> 13);
    HIBYTE(a25) = (a27 >> 21) ^ 0x32;
    LOBYTE(a26) = ((__PAIR64__(HIDWORD(a26), a27) >> 29) - 2 * ((__PAIR64__(HIDWORD(a26), a27) >> 29) & 0x3F) - 65) ^ 0x8D;
    BYTE1(a26) = (HIDWORD(a26) >> 5) ^ 0x32;
    BYTE2(a26) = (HIDWORD(a26) >> 13) ^ 0x32;
  }

  else
  {
    if (a33 != 2)
    {
      JUMPOUT(0x3C47CLL);
    }

    BYTE4(a25) = (HIDWORD(a26) >> 21) - ((HIDWORD(a26) >> 20) & 0x64) + 50;
    BYTE5(a25) = v33 + a4 - 69 + (HIDWORD(a26) >> 13) + (~(HIDWORD(a26) >> 12) | 0x9B) + 112;
    BYTE6(a25) = (HIDWORD(a26) >> 5) - ((HIDWORD(a26) >> 4) & 0x64) + 50;
    HIBYTE(a25) = (__PAIR64__(HIDWORD(a26), a27) >> 29) - ((2 * (__PAIR64__(HIDWORD(a26), a27) >> 29)) & 0x64) + 50;
    LOBYTE(a26) = (a27 >> 21) - ((a27 >> 20) & 0x64) + 50;
    BYTE1(a26) = (a27 >> 13) - ((a27 >> 12) & 0x64) + 50;
    BYTE2(a26) = (a27 >> 5) - ((a27 >> 4) & 0x64) + 50;
  }

  return sub_3C460(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_3C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v14 = a11 < 0x7FD21F9E;
  if (v14 == v11 > (v12 ^ 0x802DE27F))
  {
    v14 = v11 + 2144477086 < a11;
  }

  return (*(v13 + 8 * ((58 * v14) ^ v12)))(a1, 2109990224, 2184976571, &STACK[0x248]);
}

uint64_t sub_3C514@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(v5 + v6) = *(a2 + v6);
  return (*(v4 + 8 * (((v6 == 0) * a1) ^ (v2 + 69))))();
}

uint64_t sub_3C598@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W4>, uint64_t a5@<X5>, int a6@<W8>)
{
  v11 = HIDWORD(a2) + HIDWORD(v7) + (*(v10 + 4 * a6) ^ v6);
  *(v10 + 4 * a4) = v11 + (((v9 - 132) | 0x20) ^ (v6 + 496)) - ((v11 << ((v9 ^ 0xE7) - 114)) & a3);
  *(v10 + 4 * a6) = HIDWORD(v11) + v6 - 2 * (BYTE4(v11) & 1);
  return (*(v8 + 8 * (v9 ^ (52 * (a1 + 1 != a5)))))();
}

uint64_t sub_3C618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v23 = v18 - 919;
  v24 = v18 - 919 - v20;
  v25 = v18 - 789;
  v26 = v24 - 2015547688;
  v28 = v19 == 1065558180 || a18 - v22 != v26;
  return (*(v21 + 8 * ((v28 * (v25 ^ 0x1A2)) ^ v23)))();
}

uint64_t sub_3C7A4@<X0>(uint64_t a1@<X8>)
{
  v4 = 1361651671 * ((((v3 - 176) | 0xE9D2F4EEE4A47DACLL) - (v3 - 176) + ((v3 - 176) & 0x162D0B111B5B8250)) ^ 0x3A7F87D737868D20);
  *(v3 - 168) = (v2 + 55969350) ^ v4;
  *(v3 - 176) = (v2 + 336829623) ^ v4;
  *(v3 - 172) = ((v2 + 336829623) ^ 0x33) - v4;
  *(v3 - 160) = a1 - v4;
  *(v3 - 152) = 49371568 - v4;
  *(v3 - 136) = v4 + v2 + 336829623 + 102;
  *(v3 - 144) = -1361651671 * ((((v3 - 176) | 0xE4A47DAC) - (v3 - 176) + ((v3 - 176) & 0x1B5B8250)) ^ 0x37868D20);
  v5 = (*(v1 + 8 * ((v2 - 550) | 0x8C0)))(v3 - 176);
  return (*(v1 + 8 * *(v3 - 140)))(v5);
}

void sub_3C910(_DWORD *a1)
{
  v1 = 843532609 * ((a1 + 1971512249 - 2 * (a1 & 0x7582E3B9)) ^ 0x29CFB73C);
  v2 = *(*a1 + 12) + 1494222779;
  v3 = a1[3] + v1 + 1094336283;
  v4 = (v3 < 0x7AA72969) ^ (v2 < 0x7AA72969);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x7AA72969;
  }

  __asm { BRAA            X12, X17 }
}

void sub_3CA0C()
{
  v4 = *v0 ^ v2;
  v5 = ((((v3 - 667065392) & 0x27C29FBE) - 1367571416) ^ v4) & (2 * (v4 & 0xAF70CC46)) ^ v4 & 0xAF70CC46;
  v6 = ((2 * (v4 ^ 0xE0BC9B32)) ^ 0x9F98AEE8) & (v4 ^ 0xE0BC9B32) ^ (2 * (v4 ^ 0xE0BC9B32)) & 0x4FCC5774;
  v7 = (v6 ^ 0xF800220) & (4 * v5) ^ v5;
  v8 = ((4 * (v6 ^ 0x40445114)) ^ 0x3F315DD0) & (v6 ^ 0x40445114) ^ (4 * (v6 ^ 0x40445114)) & 0x4FCC5774;
  v9 = (v8 ^ 0xF005540) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x40CC0224)) ^ 0xFCC57740) & (v8 ^ 0x40CC0224) ^ (16 * (v8 ^ 0x40CC0224)) & 0x4FCC5770;
  v11 = v9 ^ 0x4FCC5774 ^ (v10 ^ 0x4CC45700) & (v9 << 8);
  v12 = v4 ^ (2 * ((v11 << 16) & 0x4FCC0000 ^ v11 ^ ((v11 << 16) ^ 0x57740000) & (((v10 ^ 0x3080034) << 8) & 0x4FCC0000 ^ 0x3880000 ^ (((v10 ^ 0x3080034) << 8) ^ 0x4C570000) & (v10 ^ 0x3080034))));
  *v13 = (HIBYTE(v12) ^ 0xBE) - ((2 * (HIBYTE(v12) ^ 0xBE)) & 0x64) + 50;
  v13[1] = (BYTE2(v12) ^ 0x60) - 2 * ((BYTE2(v12) ^ 0x60) & 0x37 ^ BYTE2(v12) & 5) + 50;
  v13[2] = (BYTE1(v12) ^ 0x62) - ((2 * (BYTE1(v12) ^ 0x62)) & 0x64) + 50;
  v13[3] = v12 ^ 0x9C;
  v0[1] = *(v1 + 24);
}

uint64_t sub_3CC58@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  *(&a19 + a2) = *(v25 + v19) - ((2 * *(v25 + v19)) & 0x64) + 50;
  v26 = v24 - 302 + v19 - 68;
  v27 = a1 + v19 + 1 < v20;
  if (v20 < a1 != v26 > v22 + 69)
  {
    v27 = v20 < a1;
  }

  return (*(v23 + 8 * ((!v27 * v21) ^ v24)))();
}

uint64_t sub_3CDA8@<X0>(unsigned int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v3 < a2;
  if (v5 == (v2 + 1) > 0xFFFFFFFF709D29C0)
  {
    v5 = a2 + v2 + ((a1 - 568) ^ 0x2D0) - 986 < v3;
  }

  return (*(v4 + 8 * ((59 * v5) ^ a1)))();
}

uint64_t sub_3D460(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int8x16_t a43)
{
  *(&STACK[0x5E0] + v45) = veorq_s8(*v46, a43);
  STACK[0x580] += v43 ^ 0x2B0;
  STACK[0x588] = a1;
  STACK[0x590] = a1;
  return (*(v44 + 8 * (v43 ^ (2806 * ((&STACK[0x5E0] + v45) == a1)))))(a1, a2, a3, 114, a5, a6, a7);
}

void sub_3D5B0()
{
  LODWORD(STACK[0x26C]) = 0;
  LODWORD(STACK[0x270]) = 0;
  LODWORD(STACK[0x20C]) = v3[4] - v0;
  v6 = *v3 - v0;
  v7 = (((2 * &STACK[0x4E8]) & 0xDFFFFED58FF3C7F8) - 0x6FFFFF6AC7F9E3FDLL + (((v2 - 761) + 0x6FFFFF6AC7F9E0E1) ^ &STACK[0x4E8])) % 0x25;
  STACK[0x250] = (2 * v7) & 0x38;
  STACK[0x248] = (v7 ^ 0x7FD7FD35FFF6EB9CLL) - 0x7FD7FD35FFF6EB8CLL;
  LODWORD(STACK[0x208]) = v6;
  LODWORD(STACK[0x234]) = ((v6 ^ 0xE087D519) + 527968999) ^ ((v6 ^ 0xA16A1A76) + 1586881930) ^ ((v6 ^ 0x1516ABC1) - 353807297);
  LODWORD(STACK[0x244]) = v1 + v0 - 931;
  STACK[0x2A8] = 1564307779 * (((v4 | 0xA27A989236BFFDB9) - v4 + (v4 & 0x5D85676DC9400240)) ^ 0x87B96CE8A1B231AALL);
  v8 = STACK[0x340];
  LODWORD(STACK[0x240]) = STACK[0x340] ^ 0xB60;
  STACK[0x338] = ((((2 * v4) | 0xF96AB0C8D9F7CF76) - v4 - 0x7CB558646CFBE7BBLL) ^ 0x6DCDDA63B85CFBE1) * v5;
  LODWORD(STACK[0x334]) = v8 - 973283777;
  LODWORD(STACK[0x330]) = v8 - 973283790;
  STACK[0x328] = v4 | 0x16FD9705A342A976;
  LODWORD(STACK[0x324]) = v8 ^ 0xB41;
  LODWORD(STACK[0x2FC]) = v8 + 1945543691;
  v9 = 1388665877 * ((2 * (v4 & 0x44C2899F68D766B8) - v4 - 0x44C2899F68D766C0) ^ 0x8E47E62F1A85FBACLL);
  STACK[0x318] = v9;
  STACK[0x310] = v9 ^ 0x26F;
  LODWORD(STACK[0x2F8]) = v8 - 634685095;
  LODWORD(STACK[0x2F4]) = v8 ^ 0x393;
  LODWORD(STACK[0x2F0]) = v8 ^ 0x3D9;
  v10 = 1388665877 * ((2 * (v4 & 0x3235971550C51320) - v4 - 0x3235971550C51327) ^ 0xF8B0F8A522978E35);
  STACK[0x2A0] = v10;
  STACK[0x298] = v10 ^ 0x13FF;
  LODWORD(STACK[0x23C]) = (v8 + 4187) ^ 0xFFFFEC01;
  LODWORD(STACK[0x204]) = (2 * v8) ^ 0x2BC;
  LODWORD(STACK[0x238]) = v8 ^ 0xBD3;
  LODWORD(STACK[0x2EC]) = v8 ^ 0x3E5;
  JUMPOUT(0x3DA60);
}

uint64_t sub_3DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v25 = 143681137 * (((&a17 | 0x4562E59D) - &a17 + (&a17 & 0xBA9D1A60)) ^ 0x91C5F9C7);
  LODWORD(a19) = v24 - v25 + 1449;
  a17 = (((v24 - 35) ^ 0xD5CFBABE) + ((2 * v21) & 0xF57EEF7C) + ((5 * (v24 ^ 0x143) + 2059368192) ^ v21)) ^ v25;
  a18 = a12;
  (*(v23 + 8 * (v24 ^ 0x9BC)))(&a17);
  a20 = v24 - 2066391179 * ((&a17 - 444672830 - 2 * (&a17 & 0xE57ED4C2)) ^ 0x4A5956DA) + 261;
  a18 = v20;
  a19 = a12;
  v26 = (*(v23 + 8 * (v24 ^ 0x9CC)))(&a17);
  return (*(v23 + 8 * ((926 * (a17 == v22)) ^ v24)))(v26);
}

uint64_t sub_3DD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = 1785193651 * ((-2 - (((v14 - 120) ^ 0xFC000003 | 0x2B6AF6B3) + ((v14 - 120) ^ 0x212AD6B0 | 0xD495094C))) ^ 0x1909C56F);
  *(v14 - 104) = a12 - v15 + 501051275;
  *(v14 - 120) = (v13 + 1482) ^ v15;
  *(v14 - 112) = v14 - 220;
  v16 = (*(v12 + 8 * (v13 + 2199)))(v14 - 120);
  v17 = *(v14 - 152);
  *(v14 - 220 + (v17 & 0x3F)) = -78;
  return (*(v12 + 8 * ((888 * ((v17 & 0x3Fu) > ((v13 + 753923770) & 0xDFBCCF83 ^ (v13 + 212649585)))) ^ v13)))(v16);
}

uint64_t sub_3DEB0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12)
{
  v17 = *a1 + v15 + *(v12 + 16) - 1332270165;
  v18 = 843532609 * ((&a9 + 1078166256 - 2 * (&a9 & 0x404382F0)) ^ 0x1C0ED675);
  a9 = v12;
  a12 = (v16 + 1372) ^ v18;
  a10 = 921043405 - v18;
  a11 = 947 * (v16 ^ 0x15B) - v18 + v17 - 977855196;
  v19 = (*(v14 + 8 * (v16 ^ 0x852)))(&a9);
  return (*(v14 + 8 * ((1855 * (*(v12 + 24) == v13)) ^ v16)))(v19);
}

uint64_t sub_3DF88()
{
  v4 = v0 - 407;
  v5 = 1037613739 * ((v3 - 592403274 - 2 * ((v3 - 216) & 0xDCB0A58E)) ^ 0xDB288F1);
  *(v3 - 176) = (v2 ^ 0x7DF5BB9D) - v5 + ((2 * v2) & 0xFBEB773A) + ((v0 - 405) ^ 0xABCFF474);
  v6 = v5 + LODWORD(STACK[0x20C]) - 317565364;
  *(v3 - 192) = (v0 + 379) ^ v5;
  *(v3 - 188) = v6;
  *(v3 - 184) = &STACK[0x4C4];
  *(v3 - 208) = &STACK[0x350];
  *(v3 - 200) = STACK[0x258];
  v7 = (*(v1 + 8 * ((v0 - 407) ^ 0x853)))(v3 - 216);
  v8 = *(v3 - 216);
  LODWORD(STACK[0x504]) = v8;
  return (*(v1 + 8 * ((2062 * (v8 == -1261164275)) ^ v4)))(v7);
}

uint64_t sub_3E0A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v41 = *(&a25 + v37 + 72);
  v42 = (((a4 + v39 - 123) ^ 0xB34D553F) & (2 * v37)) + (v37 ^ 0x677EED7F) + v38;
  *(a1 + v42) = v41 ^ 0x4E;
  *(a1 + v42 + 1) = (BYTE1(v41) ^ 0x51) + ~(2 * ((BYTE1(v41) ^ 0x51) & 0x3A ^ BYTE1(v41) & 8)) + 51;
  *(a1 + v42 + 2) = (BYTE2(v41) ^ 0x65) - ((2 * (BYTE2(v41) ^ 0x65)) & 0x64) + 50;
  *(a1 + v42 + 3) = (HIBYTE(v41) ^ 0x56) - 2 * ((HIBYTE(v41) ^ 0x56) & 0x33 ^ HIBYTE(v41) & 1) + 50;
  return (*(v40 + 8 * ((229 * (v37 + 4 >= a37)) ^ v39)))();
}

uint64_t sub_3E188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = (v6 - 224);
  STACK[0x4F8] += v9 ^ 0xFFFFFFFFFFFFFD34;
  return (*(v7 + 8 * (v9 ^ (1761 * (v8 == a6)))))();
}

uint64_t sub_3E1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x2D0]) = a56 ^ 0xD527B0B4;
  LODWORD(STACK[0x288]) = HIDWORD(a56) ^ 0x989B1A03;
  return sub_33454(a1, a2, a3, a4, a5, a6, a7 + ((HIDWORD(a58) + 2059091503) & 0x8544C6EB) - 1747, 22, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_3E3C8()
{
  v5 = *(v2 + 24) + v0 - 2099020351;
  v7 = ((((8 * v1) ^ 0x17F0) - 871) & *(v3 + 20)) != 0 || v5 > 0xFFFFFFBE;
  return (*(v4 + 8 * ((60 * v7) ^ v1)))();
}

uint64_t sub_3E464(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v18) = (v8 - 1128) ^ 0x6655073 ^ a1;
  LODWORD(v18) = a1 ^ 0x55555555;
  v19 = (v9 ^ 0xF8B100CB) & (a8 ^ 0xA99AAE83) ^ a8 & 0x512BAE48;
  v20 = (v9 ^ 0x43257329) & (a8 ^ v14) ^ a8 & 0x15402255;
  v21 = (a6 ^ v14) + (v18 >> 27) + (*(v11 + 4 * (a3 + v13)) ^ v16) - 1650573468 + (v20 & 0xB3170C3 ^ 0xF4CE8F7C ^ (v19 & 0x39CBCFD3 ^ 0xCC0FCEEF ^ (v19 ^ 0xFEF551FF) & (v10 ^ 0x6FAE9EAF)) & (v20 ^ 0xEBBFFFAB));
  v22 = (v21 ^ 0xED7D7D7A) & (2 * (v21 & 0xF17D7D78)) ^ v21 & 0xF17D7D78;
  v23 = ((2 * (v21 ^ 0xF3F87EA)) ^ 0xFC85F524) & (v21 ^ 0xF3F87EA) ^ (2 * (v21 ^ 0xF3F87EA)) & (v17 + 2);
  v24 = v23 ^ 0x2420A92;
  v25 = (v23 ^ 0xCC00F000) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0xF90BEA48) & v24 ^ (4 * v24) & v17;
  v27 = (v26 ^ 0xF802EA00) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x6401092)) ^ 0xE42FA920) & (v26 ^ 0x6401092) ^ (16 * (v26 ^ 0x6401092)) & v17;
  v29 = v27 ^ (v17 + 2) ^ (v28 ^ 0xE402A800) & (v27 << 8);
  return (*(v12 + 8 * ((635 * (a3 + 1 == v15 + 60)) ^ v8)))(v21 ^ (2 * ((v29 << 16) & 0x7E420000 ^ v29 ^ ((v29 << 16) ^ 0x7A920000) & (((v28 ^ 0x1A405292) << 8) & 0x7E420000 ^ (((v28 ^ 0x1A405292) << 8) ^ 0x42FA0000) & (v28 ^ 0x1A405292) ^ 0x3C000000))) ^ 0xAF99D920, a8);
}

uint64_t sub_3E6E4()
{
  v7 = ((-161836433 - ((v6 - 144) ^ 0x7F28E9ED | 0xF65A926F) + ((v6 - 144) ^ 0x7F28E9ED | 0x9A56D90)) ^ 0xD9AA0665) * v2;
  *(v6 - 136) = v5;
  *(v6 - 144) = v7 + v4 - 785;
  *(v6 - 128) = (v3 + 718823038) ^ v7;
  v8 = (*(v0 + 8 * (v4 ^ 0xC7F)))(v6 - 144);
  return (*(v0 + 8 * (((*(v6 - 140) == v1 + (v4 ^ 0x390) - 1918) * (((v4 - 862) | 0x206) - 439)) ^ v4)))(v8);
}

uint64_t sub_3E7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v30 = ((((2 * (v29 - 144)) | 0x854BA5B4) - (v29 - 144) - 1118163674) ^ 0x8AC4168C) * v26;
  *(v29 - 120) = (v24 - 201) ^ v30;
  *(v29 - 140) = v25 + v30 + 654350088 + 245 * (v24 ^ 0x3A7);
  *(v29 - 136) = &a24;
  *(v29 - 128) = v28;
  v31 = (*(v27 + 8 * (v24 + 1359)))(v29 - 144);
  return sub_3E860(v31);
}

uint64_t sub_3E860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, char *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  a17 = &a14;
  a18 = &a26;
  *(v32 - 144) = (v30 - 390) ^ (((2 * ((v32 - 144) & 0x636868F0) - (v32 - 144) - 1667786994) ^ 0x54F65358) * v26);
  *(v32 - 136) = v28;
  *(v32 - 128) = &a17;
  (*(v27 + 8 * (v30 + 507)))(v32 - 144);
  *(v32 - 144) = &a17;
  *(v32 - 136) = v31;
  *(v32 - 128) = v28;
  *(v32 - 120) = &a20;
  *(v32 - 112) = &a24;
  *(v32 - 104) = (v30 - 1488) ^ (2066391179 * ((-688079416 - ((v32 - 144) | 0xD6FCBDC8) + ((v32 - 144) | 0x29034237)) ^ 0x8624C02F));
  v33 = (*(v27 + 8 * (v30 + 596)))(v32 - 144);
  return (*(v27 + 8 * ((((v30 - 500) ^ 0x4B3) * (v29 == 0)) ^ v30)))(v33);
}

uint64_t sub_3E97C(uint64_t a1, int a2)
{
  v7 = v5 + 1530;
  v8 = v3 + v4 + a2 + v5 + 1530;
  v9 = v8 + v6 + 1075336335;
  if (v8 > 0x5D1E6FE4 != v9 < 0xA2E1901B)
  {
    v10 = v8 > 0x5D1E6FE4;
  }

  else
  {
    v10 = v8 - 1562275813 > v9;
  }

  return (*(v2 + 8 * ((!v10 * ((2 * v7) ^ 0xFEC ^ ((v7 ^ 0x7C2) + 681))) ^ v7)))();
}

uint64_t sub_3EA0C(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) + 1807047861;
  v3 = *(*a1 + 4) + 1807047861;
  v4 = (v2 < 1386331519) ^ (v3 < 1386331519);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 1386331519;
  }

  v1 = *(a1 + 8) + 143681137 * ((((2 * a1) | 0xBE9EA8D6) - a1 - 1599034475) ^ 0x8BE84831);
  return (*(*(&off_9DA90 + v1 - 1220) + ((!v5 * (v1 - 1232)) ^ v1) - 1))();
}

uint64_t sub_3EB7C()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v0 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 5) ^ 0x32;
  return (*(v6 + 8 * ((1451 * (v7 == 0)) ^ (v4 - 147))))();
}

uint64_t sub_3EC4C(unint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v13 = HIDWORD(a1) + a3 * (*(a7 + 4 * a4) ^ v8) + (a2 ^ (v8 + 1742) ^ *(a8 + 4 * a5));
  *(a8 + 4 * a5) = v13 + v8 - (v10 & (2 * v13));
  return (*(v11 + 8 * (((a4 + 1 == v9) * v12) ^ a6)))();
}

uint64_t sub_3ED3C@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21)
{
  v24.i64[0] = 0x6464646464646464;
  v24.i64[1] = 0x6464646464646464;
  v25.i64[0] = 0x3232323232323232;
  v25.i64[1] = 0x3232323232323232;
  v26 = vaddq_s8(vsubq_s8(*(a1 + 17), vandq_s8(vaddq_s8(*(a1 + 17), *(a1 + 17)), v24)), v25);
  *(&a21 + a4) = vaddq_s8(vsubq_s8(*(a1 + 1), vandq_s8(vaddq_s8(*(a1 + 1), *(a1 + 1)), v24)), v25);
  *(&a21 + a4 + 16) = v26;
  return (*(v23 + 8 * ((((v22 & 0x60) == 32) * (8 * (v21 ^ (a3 - 149)) - 1958)) | (a2 + v21 + 89))))();
}

uint64_t sub_3EDBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_3EED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 128) = a12;
  *(v19 - 120) = &a17;
  *(v19 - 112) = (v18 + 1508) ^ (1564307779 * ((((v19 - 128) | 0x3C4FCB78) - ((v19 - 128) & 0x3C4FCB78)) ^ 0xAB42076B));
  v20 = (*(v17 + 8 * (v18 + 1921)))(v19 - 128);
  return sub_3EF34(v20);
}